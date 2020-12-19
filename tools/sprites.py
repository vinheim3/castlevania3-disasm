from utils import *
import os
from PIL import Image

# 1st skeleton - entityScripts_13

chrBank = 0x13
chrBankTiles = chrData[chrBank*0x400:(chrBank+1)*0x400]

group = 0x08
specIdx = 0x94
specData = address(0x1a, 0x23e)
specGroupData = word(specData+group)-0x8000
specDetails = word(address(0x1a, specGroupData+specIdx))-0x8000
start = address(0x1a, specDetails)

sprites = []
numSprites = prgData[start]
start += 1
cachedAttr = 0

def signed(val):
    if val >= 0x80:
        return val-0x100
    return val

for _ in range(numSprites):
    spriteData = {}
    yData = prgData[start]
    start += 1

    newYdata = yData // 2
    if newYdata & 0x40:
        newYdata += 0x80
    spriteData['y'] = signed(newYdata)

    spriteData['tile'] = prgData[start] & 0x3f
    start += 1

    if (yData & 1) == 0:
        cachedAttr = prgData[start]
        start += 1

    spriteData['attr'] = cachedAttr

    spriteData['x'] = signed(prgData[start])
    start += 1

    sprites.append(spriteData)

for spr in sprites:
    print(spr)

minY = min(spr['y'] for spr in sprites)
minX = min(spr['x'] for spr in sprites)
maxY = max(spr['y'] for spr in sprites)
maxX = max(spr['x'] for spr in sprites)
width = maxX-minX+0x8
height = maxY-minY+0x10

for i, spr in enumerate(sprites):
    tile = spr['tile']
    with open('gfx_layout.chr', 'wb') as f:
        f.write(chrBankTiles[tile*0x10:(tile+2)*0x10])
    os.system('python tools/gfx.py 0 1')
    os.system(f'mv spr_new.png pieces/{i}.png')

mapping = {}
for piece in os.listdir('pieces'):
    mapping[piece] = Image.open(f'pieces/{piece}')

new_im = Image.new('RGBA', (width, height))
for i, spr in enumerate(sprites):
    yOffset = spr['y'] - minY
    xOffset = spr['x'] - minX
    new_im.paste(mapping[f'{i}.png'], (xOffset, yOffset))

new_im.save('spr_new.png')
os.system('rm pieces/*')