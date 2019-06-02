from PIL import Image, ImageDraw
import os


im = Image.open('grass.png')
newim = Image.new('RGBA', (3200,600))
newim.paste(im, (0, 0))
newim.paste(im, (1600, 0))

newim.save('grs2.png', 'PNG')
