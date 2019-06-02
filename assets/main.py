from PIL import Image, ImageDraw
import os

f, e = os.path.splitext('vgo_logo.png') #<name><.ext>

im = Image.open('logo.png')
im = im.convert('RGBA')
pixels = im.getdata()

newPixels = []
for p in pixels:
  if p[3] > 0:
    newPixels.append((0, 0, 0, 255))
  else:
    newPixels.append(p)

im.putdata(newPixels)
im.save(f + '_clear.png', 'PNG')