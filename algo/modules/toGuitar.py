from music21 import chord, note, interval, harmony, stream
import re

def rootVal(root):
    E = note.Note('E2')
    inter = interval.Interval(E, root)
    n = inter.semitones % 12
    f = n
    if n > 9:
        f -= 10
    elif n > 4:
        f -= 5
    return f

def samePitch(noteOne, noteTwo):
    dist = interval.Interval(noteOne, noteTwo) 
    if dist.semitones % 12 == 0:
        return True
    else:
        return False

def findPitch(empty, f, chordPitches):
    i = f
    j = 0
    empty = empty.transpose(f)
    if len(chordPitches) == 1:
        lone = chordPitches[0]
        fifth = lone.transpose(7)
        chordPitches.append(fifth)

    # Check if the input_note matches any pitch in the chordPitches
    while j < 7:
        k = 0
        while k < len(chordPitches):
            if samePitch(chordPitches[k], empty):
                return empty  # Return the matched note
            else:
                k += 1
        empty = empty.transpose(1)  # Transpose up 1 half-step
        j += 1
            
    return empty

def voicing(chorD):
    voiced = []
    root = chorD.root()
    f = rootVal(root)
    chordPitches = list(chorD.pitches)

    voiced.append(findPitch(note.Note('E2'), f, chordPitches))
    voiced.append(findPitch(note.Note('A2'), f, chordPitches))
    voiced.append(findPitch(note.Note('D3'), f, chordPitches))
    voiced.append(findPitch(note.Note('G3'), f, chordPitches))
    voiced.append(findPitch(note.Note('B3'), f, chordPitches))
    voiced.append(findPitch(note.Note('E4'), f, chordPitches))

    newChord = chord.Chord(voiced)

    return newChord

def guitarScore(outPart):
    for i in range(sum(1 for _ in outPart.getElementsByClass('Measure'))):
        measures = outPart.getElementsByClass('Measure')
        
        for measure in measures:
            for chord_item in measure.getElementsByClass(chord.Chord):
                newChord = voicing(chord_item)
                # Use root and quality to form a chord symbol
                quality = harmony.chordSymbolFigureFromChord(chord_item)  # Get quality (e.g., "maj", "m7")
                
                # Combine root and quality to form a chord symbol
                chord_symbol = f"{quality}"
                if chord_symbol == "Chord Symbol Cannot Be Identified":
                    chord_symbol = "N/A"
                
                # Replace the lyric with the chord symbol (like C, Dm7, etc.)
                newChord.lyric = chord_symbol

                measure.replace(chord_item, newChord)

    return outPart

# Function to replace Staff with TabStaff and remove clef/key
def replace_staff_with_tabstaff(lilypond_text):
    # Replace any occurrence of \new Staff with \new TabStaff
    lilypond_text = re.sub(r'\\new Staff\s*=\s*\w+\s*{', r'\\new TabStaff = "Guitar Tab" {', lilypond_text)
    
    # Replace any clef line with \clef "tab"
    lilypond_text = re.sub(r'\\clef\s*".+"', r'\\clef "tab"', lilypond_text)
    
    # Remove key signature line
    lilypond_text = re.sub(r'\\key\s*.+', '', lilypond_text)
    
    return lilypond_text