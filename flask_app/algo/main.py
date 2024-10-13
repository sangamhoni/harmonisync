from algo.modules.convert import (
    parsetoxml,
    convert_image_to_musicxml,
    play_score,
    musicxml2ly,
)
from algo.modules import anaHarm
from algo.modules import toGuitar


def readInput(input):
    if input.endswith((".xml", ".mxl", ".musicxml", ".mid", ".midi", ".mei")):
        output = parsetoxml(input)
    if input.endswith((".png", ".jpeg", ".jpg", ".tiff", ".pdf")):
        output = convert_image_to_musicxml(input)

    play_score(output)
    print("a is done")

    return output


def toHarm(input):
    ha = anaHarm.analyze(input)
    print("b is done")
    return ha


def toTab(ha):
    guitar = toGuitar.guitarScore(ha)
    lily1 = musicxml2ly(guitar)
    tabs = toGuitar.replace_staff_with_tabstaff(lily1)
    print("c is done")
    return tabs


# a = readInput("/Users/tao-taohe/Desktop/harmoniSync/algorithm/data/test2.musicxml")
# print("a is done")
# b = toHarm(a)
# print("b is done")
# c = toTab(b)
# print("c is done")
# d = convert.export_lilypond_to_pdf(c)
# print("d is done")
# convert.export_pdf_to_desktop(d, "/Users/tao-taohe/Desktop/test2.pdf")
