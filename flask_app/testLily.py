import pytest
import os
from music21 import stream, note
from Lily import musicxml2ly, staff2tab, LilypondFile


# Test 1: Test the musicxml2ly Function
def test_musicxml2ly(tmp_path):
    """
    Test the musicxml2ly function to verify it generates and modifies LilyPond content correctly.
    """
    # Create a temporary MusicXML score
    score = stream.Score()
    part = stream.Part()
    part.append(note.Note("C4"))
    score.append(part)

    # Convert to LilyPond format
    ly_content = musicxml2ly(score)

    # Verify specific lines are commented out
    assert "% \\include \"lilypond-book-preamble.ly\"" in ly_content
    assert "% color = #(define-music-function (parser location color) (string?) #{" in ly_content

# Test 2: Test LilypondFile Class
def test_lilypond_file(tmp_path):
    """
    Test the LilypondFile class for file loading and content display.
    """
    # Create a temporary LilyPond file
    sample_ly_content = "\\version \"2.18.2\" \\header { title = \"Test\" }"
    ly_file = tmp_path / "test.ly"
    ly_file.write_text(sample_ly_content)

    # Load the file using LilypondFile class
    lily_file = LilypondFile()
    lily_file.load_from_file(str(ly_file))

    # Verify content is correctly loaded and displayed
    assert lily_file.display_content() == sample_ly_content

# Test 3: Test staff2tab Function
def test_staff2tab():
    """
    Test the staff2tab function to verify it correctly converts Staff to TabStaff.
    """
    # Define sample LilyPond content with Staff
    sample_ly_content = r"""
    <<
    \new Staff = ViolingI {
        \clef "treble"
        c'4 d'4 e'4 f'4
    }
    >>
    """

    # Expected content after conversion to TabStaff
    expected_content = r"""
    <<
    \new TabStaff = "Guitar Tab" {
    \clef "tab" % Clef for tab staff
        c'4 d'4 e'4 f'4
    >>
    """

    # Call the staff2tab function and verify the result
    result = staff2tab(sample_ly_content)
    assert "Guitar Tab" in result
    assert "\\clef \"tab\"" in result

# Test 4: Test File Writing
def test_file_writing(tmp_path):
    """
    Test that the modified LilyPond content is correctly written to a new file.
    """
    # Create a sample LilyPond content
    sample_ly_content = r"""
    <<
    \new Staff = ViolingI {
        \clef "treble"
        c'4 d'4 e'4 f'4
    }
    >>
    """
    output_file = tmp_path / "mosesTab4.ly"

    # Convert staff to tab and write to the file
    result_content = staff2tab(sample_ly_content)
    with open(output_file, 'w') as file:
        file.write(result_content)

    # Verify the content is correctly written to the file
    with open(output_file, 'r') as file:
        written_content = file.read()
        assert "Guitar Tab" in written_content
        assert "\\clef \"tab\"" in written_content