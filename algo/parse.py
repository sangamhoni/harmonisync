from pathlib import Path
import music21


def parsetoxml(input):
    try:
        output = music21.converter.parse(input)
        return output
    except Exception as e:
        print("Cannot parse file")
        return None


def imagetoxml(input):
    pass
