from music21 import converter, midi
import subprocess
import os
import re
import sys
import tempfile
import pygame

def parsetoxml(input):
    try:
        output = converter.parse(input)

        #output.write('musicxml', fp=out)
        return output

    except Exception as e:
        print("Cannot parse file")
        return None

def save_audiveris_path(path):
    # Save the path in a configuration file (or update an environment variable)
    with open("audiveris_config.txt", "w") as file:
        file.write(f"AUDIVERIS_PATH={path}")

    # Optionally, you can make it available in the current session
    os.environ["AUDIVERIS_PATH"] = path

def convert_image_to_musicxml(image_path): 
    audiveris_path = ""
    #audiveris_path = getPath(user)
    if not audiveris_path:
        audiveris_path = input("Please enter the path to your Audiveris installation: ")
        audiveris_executable = os.path.join(audiveris_path, 'audiveris')

            # Ask the user if they want to save the path for future use
        save_path = input("Do you want to save this path for future use? (yes/no): ").strip().lower()

        if save_path in ['yes', 'y']:
            save_audiveris_path(audiveris_path)
            print(f"Audiveris path saved for future use.")
        else:
            print("Audiveris path will not be saved.")

    #audiveris_path = "/Users/tao-taohe/audiveris/audiveris/build/distributions/Audiveris-5.3.1/bin"
    #audiveris_path = os.getenv("AUDIVERIS_PATH")
    if not os.path.exists(audiveris_executable):
        sys.exit(f"Error: Audiveris executable not found at {audiveris_executable}. Please ensure the path is correct.")

    # Create the command with the output directory specified
    # Create a temporary directory to hold the output
    with tempfile.TemporaryDirectory() as output_dir:
        command = [
            os.path.join(audiveris_path, 'audiveris'),
            '-export', 
            image_path,
            '-output', 
            output_dir
        ]

    try:
        # Run the command
        subprocess.run(command, check=True)
        print(f"Audiveris has successfully processed the file: {image_path}")

        # Check for the output file
        # Find the generated MusicXML file
        for file_name in os.listdir(output_dir):
            musicxml_path = os.path.join(output_dir, file_name)
            break

        # Step 2: Read the MusicXML file into a Python object using music21
        score = converter.parse(musicxml_path)
        return score
                
    except subprocess.CalledProcessError as e:
        print(f"An error occurred while processing {image_path}: {e}")

def play_score(score):
    play = input("We have processed your file. Would you like to hear it? (yes/no): ").strip().lower()
    if play not in ['yes', 'y']:
        return
    
    # Convert the score to MIDI and save to a temporary file
    temp_midi_path = "temp.mid"  # Temporary file to save the MIDI data
    mf = midi.translate.music21ObjectToMidiFile(score)
    mf.open(temp_midi_path, 'wb')
    mf.write()
    mf.close()

    # Initialize Pygame mixer and play the MIDI
    pygame.init()
    pygame.mixer.init()
    pygame.mixer.music.load(temp_midi_path)
    pygame.mixer.music.play()

    # Wait until the music finishes playing
    while pygame.mixer.music.get_busy():
        pygame.time.Clock().tick(10)

def delete_lines_between(ly_content, start_pattern, end_pattern):
    """
    Deletes all lines between two patterns (but not including the lines that match the patterns themselves).
    """
    lines = ly_content.splitlines()  # Split the content into lines
    new_lines = []  # Store the resulting lines
    in_block = False  # Flag to know when we are between the start and end patterns
    
    for line in lines:
        if re.search(re.escape(start_pattern), line):
            new_lines.append(line)  # Add the start line (do not delete it)
            in_block = True  # Start skipping lines
        elif re.search(re.escape(end_pattern), line):
            in_block = False  # Stop skipping lines
            new_lines.append(line)  # Add the end line (do not delete it)
        elif not in_block:
            new_lines.append(line)  # Only add lines that are outside the block
    
    return '\n'.join(new_lines)  # Join the remaining lines back into a string

def musicxml2ly(score):
    file_path = '/Users/tao-taohe/Desktop/harmoniSync/algorithm/harmToTab/output.ly'
    # Write the score to a LilyPond file at the specified output path
    score.write('lilypond', fp=file_path)

    # Read the content of the written file as a string
    with open(file_path, 'r', encoding='utf-8') as f:
        ly_content = f.read()

    ly_content = delete_lines_between(ly_content, r'version "2.24"', r'header ')
    ly_content = delete_lines_between(ly_content, r'context ', r' }')
    
    return ly_content

class LilypondFile:
    def __init__(self):
        # Initialize an empty content attribute
        self.content = ""

    # Method to load content from a file
    def load_from_file(self, filename):
        with open(filename, 'r') as file:
            # Store the file content in the instance's 'content' variable
            self.content = file.read()

    # Method to display the loaded content
    def display_content(self):
        return self.content
    
def export_lilypond_to_pdf(lilypond_string):
    """
    Takes a LilyPond-formatted string, compiles it into a PDF using LilyPond, 
    and returns the PDF content as bytes.
    """
    # Step 1: Create a temporary directory to store the .ly file and the output PDF
    with tempfile.TemporaryDirectory() as temp_dir:
        # Step 2: Write the LilyPond string to a .ly file
        lilypond_file_path = os.path.join(temp_dir, 'tempfile.ly')
        with open(lilypond_file_path, 'w') as ly_file:
            ly_file.write(lilypond_string)

        # Step 3: Define the path to the output PDF (without .pdf extension)
        output_pdf_base = os.path.join(os.path.expanduser("~"), 'Desktop', 'output')

        # Step 4: Run the LilyPond command to generate the PDF
        try:
            result = subprocess.run(
                ['lilypond', '--output', output_pdf_base, lilypond_file_path], 
                check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
            )
            print("LilyPond output:", result.stdout)
            print("LilyPond error:", result.stderr)
        except subprocess.CalledProcessError as e:
            # Print LilyPond error output
            print(f"LilyPond failed with error:\n{e.stderr}")
            return None

        # Step 5: The correct path to the PDF will have `.pdf` appended
        output_pdf_path = output_pdf_base + ".pdf"

        # Step 6: Check if the PDF was created
        if not os.path.exists(output_pdf_path):
            print(f"PDF file not found: {output_pdf_path}")
            return None

        # Step 7: Read the generated PDF content and return it as bytes
        with open(output_pdf_path, 'rb') as pdf_file:
            pdf_content = pdf_file.read()

        return pdf_content  # Return the PDF content as bytes
    
def export_pdf_to_desktop(pdf_content, file_name="output.pdf"):
    # Step 1: Get the path to the user's desktop
    desktop_path = os.path.join(os.path.expanduser("~"), "Desktop")
    
    # Step 2: Create the full path to the output PDF file on the desktop
    output_path = os.path.join(desktop_path, file_name)
    
    # Step 3: Write the binary content to a PDF file
    with open(output_path, 'wb') as pdf_file:
        pdf_file.write(pdf_content)
    
    print(f"PDF successfully saved to {output_path}")
    return output_path