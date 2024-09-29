# from inputToXml import parse, audi, xmlToAudio
# from harmAnalyze import harmAnal7
# from harmToTab import lily4

from audi import convert_pdf_to_png, convert_image_to_musicxml
from parse import parsetoxml
from xmlToAudio import convert_to_audio
from harmAnal import analyze, guitarScore
from lily4 import staff2tab

from music21 import converter


i = 0


def readInput(input):
    try:
        output = parsetoxml(input)
        i = 1
    except Exception as e:
        try:
            output = convert_image_to_musicxml(input, "/test")
            i = 2
        except Exception as e:
            print("cannot process file")
            return

    return convert_to_audio(output, "/test")


def toHarm(input):
    if i == 1:
        output = parsetoxml(input)
    elif i == 2:
        output = convert_image_to_musicxml(input, "/test")
    mus = converter.parse(output)
    ha = analyze(mus)
    return ha


def toTab(ha):
    guitar = guitarScore(ha)
    tabs = staff2tab(guitar)
    return tabs
