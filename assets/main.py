from PIL import Image, ImageDraw
import os

def resz(fname, dim):
  f, e = os.path.splitext(fname)
  im = Image.open(fname)
  out = im.resize((dim, dim))
  name = str(dim) + 'x' + str(dim)
  out.save(f + '_' + name + '.png', 'PNG')

resz('portraits/neme1.jpg', 180)
resz('portraits/tera1.jpg', 180)