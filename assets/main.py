from PIL import Image, ImageDraw
import os

orig = Image.open('charsheetOriginal.png')
pod = Image.open('bookpodium.png')
augmented = Image.new('RGBA', (504, 72))
augmented.paste(orig, (0, 0))
augmented.paste(pod, (432, 0))

augmented.save('charsheet.png', 'PNG')