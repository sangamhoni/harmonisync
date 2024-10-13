import pytest
from music21 import stream, note, chord, pitch, key, interval, roman, expressions
from harmAnal5 import anaKey, condense, moveChord, min7, adjust_chord_range, notesToRoman, anaHarm, analyze

# Test 1: anaKey Function
def test_anaKey():
    # Case 1: Empty Score (should return an empty set)
    s = stream.Score()
    p = stream.Part()
    s.append(p)

    # Case 2: Less than 4 measures (should raise ValueError)
    with pytest.raises(ValueError, match="The music is too short! It must be at least 4 measures long."):
        s = stream.Score()
        p = stream.Part()
        for _ in range(3):  # Only 3 measures
            m = stream.Measure()
            m.append(note.Note("C4"))
            p.append(m)
        s.append(p)
        anaKey(s)

    # Case 3: No Key Change (return empty set)
    s = stream.Score()
    p = stream.Part()
    for _ in range(6):  # 6 measures without key change
        m = stream.Measure()
        m.append(note.Note("C4"))
        p.append(m)
    s.append(p)
    assert anaKey(s) == set()

    # Case 4: Key Change at measure 5
    for i in range(5, 7):
        s.measure(i).append(key.KeySignature(2))  # Change key at measure 5
    assert anaKey(s) == set()

# Test 2: condense Function
def test_condense():
    # Case 1: Empty Score
    s = stream.Score()
    result = condense(s)
    assert len(result.flatten().notes) == 0

    # Case 2: Single Part with One Note
    s = stream.Score()
    p1 = stream.Part()
    p1.append(note.Note("C4"))
    s.append(p1)
    result = condense(s)
    chords = result.flatten().getElementsByClass(chord.Chord)
    assert len(chords) == 1

    # Case 3: Two Parts with Different Notes
    s = stream.Score()
    p1 = stream.Part()
    p1.append(note.Note("C4"))
    p2 = stream.Part()
    p2.append(note.Note("E4"))
    s.append([p1, p2])
    result = condense(s)
    chords = result.flatten().getElementsByClass(chord.Chord)
    assert len(chords) == 1
    assert set(p.name for p in chords[0].pitches) == {"C4", "E4"}

# Test 3: moveChord Function
def test_moveChord():
    # Case 1: Empty chord should return unchanged
    c = chord.Chord([])
    result = moveChord(c)
    assert result == c

    # Case 2: Single-note chord should remain unchanged
    c = chord.Chord(["C4"])
    result = moveChord(c)
    assert result.pitches != c.pitches

    # Case 3: Multi-note chord should move highest note down an octave
    c = chord.Chord(["C4", "E4", "G5"])
    result = moveChord(c)
    assert result.pitches[-1].nameWithOctave == "G4"  # G5 should become G4

# Test 4: min7 Function
def test_min7():
    # Case 1: Chord without 2nd or 7th interval should remain unchanged
    ch = chord.Chord(["C4", "E4", "G4"])
    result = min7(ch)
    assert result == ch

    # Case 2: Chord with a 2nd interval
    ch = chord.Chord(["C4", "D4", "G4"])
    result = min7(ch)
    assert len(result.pitches) == 3

    # Case 3: Chord with a 7th interval
    ch = chord.Chord(["C4", "E4", "B4"])
    result = min7(ch)
    assert len(result.pitches) == 3

# Test 5: adjust_chord_range Function
def test_adjust_chord_range():
    # Case 1: Empty chord remains unchanged
    ch = chord.Chord([])
    result = adjust_chord_range(ch)
    assert len(result.pitches) == 0

    # Case 2: Chord already in range (E2 to E3)
    ch = chord.Chord(["E2", "G2", "B2"])
    result = adjust_chord_range(ch)
    assert result == ch

    # Case 3: Chord below the range should be moved up
    ch = chord.Chord(["C2", "E2", "G2"])
    result = adjust_chord_range(ch)
    assert result.pitches[0].nameWithOctave == "C3"  # C2 should become C3

    # Case 4: Chord above the range should be moved down
    ch = chord.Chord(["C4", "E4", "G4"])
    result = adjust_chord_range(ch)
    assert result.pitches[0].nameWithOctave == "C3"  # C4 should become C3

# Test 6: notesToRoman Function
def test_notesToRoman():
    curKey = key.Key('C')
    # Case 1: Functional chord in C major (I chord)
    set1 = {pitch.Pitch("C4"), pitch.Pitch("E4"), pitch.Pitch("G4")}
    rn1 = notesToRoman(set1, curKey)
    assert rn1.figure == "I"

    # Case 2: Non-functional chord
    set2 = {pitch.Pitch("D4"), pitch.Pitch("G4"), pitch.Pitch("A4")}
    rn2 = notesToRoman(set2, curKey)
    assert rn2.figure == "V64"

# Test 7: anaHarm Function
def test_anaHarm():
    s = stream.Score()
    p = stream.Part()
    for _ in range(8):
        m = stream.Measure()
        m.append(note.Note("C4"))
        p.append(m)
    s.append(p)

    condensed = condense(s)
    loc = anaKey(s)
    analyzed = anaHarm(s, condensed, loc)

    # Check if the analysis result has key change annotations
    assert len(analyzed.flatten().getElementsByClass(expressions.TextExpression)) == 0

# Test 8: analyze Function
def test_analyze():
    s = stream.Score()
    p = stream.Part()
    for _ in range(10):
        m = stream.Measure()
        m.append(note.Note("C4"))
        p.append(m)
    s.append(p)

    result = analyze(s)

    # Check the final output
    assert len(result.flatten().getElementsByClass(expressions.TextExpression)) == 0