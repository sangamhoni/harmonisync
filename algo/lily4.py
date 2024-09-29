import re
import os
from music21 import *


def musicxml2ly(score):
    file_path = "/new/output.ly"
    # Write the score to a LilyPond file at the specified output path
    score.write("lilypond", fp=file_path)

    # Read the content of the written file as a string
    with open(file_path, "r", encoding="utf-8") as f:
        ly_content = f.read()

    # Define the lines to comment out
    lines_to_comment = [
        r'\include "lilypond-book-preamble.ly"',
        r"color = #(define-music-function (parser location color) (string?) #{",
        r"    \once \override NoteHead #\'color = #(x11-color color)",
        r"    \once \override Stem #\'color = #(x11-color color)",
        r"    \once \override Rest #\'color = #(x11-color color)",
        r"    \once \override Beam #\'color = #(x11-color color)",
        r"#{",
    ]

    # Comment out the specified lines
    for line in lines_to_comment:
        ly_content = ly_content.replace(line, f"% {line}")

    return ly_content


class LilypondFile:
    def __init__(self):
        # Initialize an empty content attribute
        self.content = ""

    # Method to load content from a file
    def load_from_file(self, filename):
        with open(filename, "r") as file:
            # Store the file content in the instance's 'content' variable
            self.content = file.read()

    # Method to display the loaded content
    def display_content(self):
        return self.content


def staff2tab(ly_content):
    # Define a regex pattern to match the staff declaration
    staff_pattern = r"<<\s*\\new Staff\s*=\s*ViolingI\s*{([^}]*)"

    # Define the replacement string
    replacement = (
        r'<<\\new TabStaff = "Guitar Tab" {\n\\clef "tab" % Clef for tab staff\n'
    )

    # Replace using regex
    ly_content = re.sub(staff_pattern, replacement, ly_content, flags=re.DOTALL)

    # There is an extra '}', so...

    # Function to remove the third occurrence of '}'
    def remove_third_brace(s):
        # Find all occurrences and keep track of how many we’ve seen
        def replace_third(match):
            nonlocal count
            count += 1
            return "" if count == 3 else match.group(0)

        count = 0
        modified_string = re.sub(r"}", replace_third, s)
        return modified_string

    ly_content = remove_third_brace(ly_content)

    return ly_content


moses = LilypondFile()
moses.load_from_file("harmToTab/moses.ly")
mosesTab = staff2tab(moses.content)

output_file_path = "harmToTab/mosesTab4.ly"
with open(output_file_path, "w") as ly_file:
    ly_file.write(mosesTab)
