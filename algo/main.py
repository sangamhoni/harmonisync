from modules import convert
from modules import anaHarm
from modules import toGuitar

def readInput(input):
    if input.endswith((".xml", ".mxl", ".musicxml", ".mid", ".midi", ".mei")):
        output = convert.parsetoxml(input)
    if input.endswith((".png", ".jpeg", ".jpg", ".tiff", ".pdf")):
        output = convert.convert_image_to_musicxml(input)
    
    convert.play_score(output)
    
    return output

def toHarm(input):
    ha = anaHarm.analyze(input)
    return ha

def toTab(ha):
    guitar = toGuitar.guitarScore(ha)
    lily1 = convert.musicxml2ly(guitar)
    tabs = toGuitar.replace_staff_with_tabstaff(lily1)
    return tabs

a = readInput("/Users/tao-taohe/Desktop/harmoniSync/algorithm/data/test2.musicxml")
print("a is done")
b = toHarm(a)
print("b is done")
c = toTab(b)
print("c is done")
d = convert.export_lilypond_to_pdf(c)
print("d is done")
convert.export_pdf_to_desktop(d, "/Users/tao-taohe/Desktop/test2.pdf")