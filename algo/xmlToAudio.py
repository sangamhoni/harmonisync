from music21 import converter, midi
from midi2audio import FluidSynth
from pydub import AudioSegment
import os


def convert_to_audio(xml_file: str, output_file: str = "output.mp3"):
    """
    Convert a MusicXML file to an audio file (.mp3).

    Parameters:
    - xml_file: str, Path to the MusicXML file.
    - output_file: str, Path to save the output MP3 file.

    Returns:
    - str: The path to the generated audio file.
    """

    # Step 1: Load the MusicXML file into a music21 stream object
    try:
        score = converter.parse(xml_file)  # Parse the MusicXML file
    except Exception as e:
        raise ValueError(f"Error parsing the MusicXML file: {e}")

    # Step 2: Create a temporary MIDI file
    midi_file = "temp_output.mid"
    mf = midi.translate.music21ObjectToMidiFile(score)
    mf.open(midi_file, "wb")
    mf.write()
    mf.close()

    # Step 3: Convert the MIDI file to WAV using FluidSynth
    wav_file = "temp_output.wav"
    fs = FluidSynth()  # Using default sound font
    fs.midi_to_audio(midi_file, wav_file)

    # Step 4: Load the WAV file using pydub and convert to MP3, keeping only the first 10 seconds
    audio = AudioSegment.from_wav(wav_file)
    duration_ms = min(10000, len(audio))  # 10000 ms = 10 seconds
    trimmed_audio = audio[:duration_ms]

    # Step 5: Export the trimmed audio to an MP3 file
    trimmed_audio.export(output_file, format="mp3")

    # Step 6: Clean up temporary files
    os.remove(midi_file)
    os.remove(wav_file)

    return output_file
