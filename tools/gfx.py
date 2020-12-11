import png
from palettes import palettes
import sys

colour = sys.argv[1] == 'x'
tiles_wide = int(sys.argv[2])

with open('original/OR.chr', 'rb') as f:
# with open('gfx_layout.chr', 'rb') as f:
    data = f.read()

# bank switching
bank = int(sys.argv[1])
if bank is not None:
    data = data[bank*0x400:(bank+1)*0x400]

# 2bpp, 64 pixels per tile = 128 bits = 16 bytes
tiles_high = len(data) // 16 // tiles_wide

if colour:
    palette = [
        palettes[0x0f],
        palettes[0x16],
        palettes[0x26],
        palettes[0x20],

        # insert other 3 palettes
    ]
    otherRoomPalettes = list(map(int, sys.argv[3:]))
    for i in range(3):
        palette.append(palettes[0xf])
        palette.append(palettes[otherRoomPalettes[i*3]])
        palette.append(palettes[otherRoomPalettes[i*3+1]])
        palette.append(palettes[otherRoomPalettes[i*3+2]])

    with open('gfx_palette.bin', 'rb') as f:
        paletteData = f.read()
else:
    palette = [(0, 0, 0), (0x55, 0x55, 0x55), (0xaa, 0xaa, 0xaa), (0xff, 0xff, 0xff)]

all_data = []
for i in range(tiles_high*8):
    # array in every row
    all_data.append([0]*(tiles_wide*8))

# for i in range(tiles_high):
#     for j in range(tiles_wide):
#         array_y_tile_offset = 8*i
#         array_x_tile_offset = 8*j
#         data_offset = (i*0x10*tiles_wide)+(j*0x10)

#         # get palette
#         if colour:
#             paletteVal = paletteData[i * tiles_wide + j]

#         for k in range(8):
#             row_y_offset = array_y_tile_offset+k
#             data_byte_1 = data[data_offset+k]
#             data_byte_2 = data[data_offset+k+8]
#             for l in range(8):
#                 val = ((data_byte_1>>(7-l))&1)+((data_byte_2>>(7-l))&1)*2
#                 if colour:
#                     val += paletteVal * 4
#                 all_data[row_y_offset][array_x_tile_offset+l] = val

for i in range(tiles_high//2):
    for j in range(tiles_wide):
        array_y_tile_offset = 16*i
        array_x_tile_offset = 8*j
        data_offset = (i*0x20*tiles_wide)+(j*0x20)
        for k in range(8):
            row_y_offset = array_y_tile_offset+k
            data_byte_1 = data[data_offset+k]
            data_byte_2 = data[data_offset+k+8]
            for l in range(8):
                all_data[row_y_offset][array_x_tile_offset+l] = ((data_byte_1>>(7-l))&1)*2+((data_byte_2>>(7-l))&1)
        for k in range(8):
            row_y_offset = array_y_tile_offset+k+8
            data_byte_1 = data[data_offset+k+0x10]
            data_byte_2 = data[data_offset+k+8+0x10]
            for l in range(8):
                all_data[row_y_offset][array_x_tile_offset+l] = ((data_byte_1>>(7-l))&1)*2+((data_byte_2>>(7-l))&1)

# 00 08 | 10 18 | ... | 1f0 1f8
# 01 09 |
# ...   |
# 07 0f | 17 1f | ... " 1f7 1ff
# -----
# 200 208

# 00 08 | 20 28 | ... | 3f0 3f8
# 01 09 |
# ...   |
# 07 0f | 27 2f | ... " 3f7 3ff
# 10 18
# ...
# 17 1f
# -----
# 400 208

bitdepth = 2
if colour:
    bitdepth = 4
w = png.Writer(len(all_data[0]), len(all_data), palette=palette, bitdepth=bitdepth)

with open('spr_new.png', 'wb') as f:
    w.write(f, all_data)

import os
os.system(f'mv spr_new.png gfx/gfx_{bank:02x}_8x16.png')