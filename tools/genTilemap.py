import sys
import os

group, section, room = map(int, sys.argv[1:])

with open('original/OR.bin', 'rb') as f:
    prgData = f.read()

with open('original/OR.chr', 'rb') as f:
    chrData = f.read()

def word(idx):
    return (prgData[idx+1]<<8)|prgData[idx]

def conv(hexstr):
    return int(f"0x{hexstr}", 16)

def bankConv(hexstr):
    if ':' in hexstr:
        bank, addr = hexstr.split(':')
    else:
        bank = 0
        addr = hexstr
    bank = conv(bank)
    addr = conv(addr)
    return bank * 0x2000 + addr

def address(_bank, _addr):
    return _bank*0x2000+_addr

# find out if horizontal (6-high) or vertical (8-high)
metaByteGroupAddress = word(bankConv('1e:162e')+group*2)-0xc000
metaByteSectionAddress = word(address(0x1e, metaByteGroupAddress)+section*2)-0xc000
metaByte = prgData[address(0x1e, metaByteSectionAddress)+room]
if metaByte & 0xf0 != 0:
    is_vertical = True
    numRows = 8
else:
    is_vertical = False
    numRows = 6
print('is vertical:', is_vertical)

# Chr banks used
roomChrData = list(chrData[0x40*0x400:0x41*0x400])
chrDataGroupAddress = word(0x66+group*2)-0x8000
chrDataSectionAddress = word(chrDataGroupAddress+section*4)-0x8000
chrBank1 = prgData[chrDataSectionAddress]
roomChrData.extend(chrData[chrBank1*0x400:(chrBank1+1)*0x400])
chrBank2 = prgData[chrDataSectionAddress+1]
roomChrData.extend(chrData[chrBank2*0x400:(chrBank2+1)*0x400])
roomChrData.extend([0] * 0x400)
# with open('gfx_layout.chr', 'wb') as f:
    # f.write(bytearray(roomChrData))
print('chr banks:', hex(chrBank1), hex(chrBank2))

# metatile bank - todo: has special conditions
metaTileBank = prgData[bankConv('1e:94b')+group]-0x80
metaTileBankOffset = metaTileBank*0x2000
print('metatile bank:', hex(metaTileBank))

# Room Metatiles - get num screens
metaTilesGroupAddress = word(bankConv('1e:15d4')+group*2)-0x8000
metaTilesSectionAddress = word(metaTileBankOffset + metaTilesGroupAddress + section*2)-0x8000
metaTilesRoomAddress = word(metaTileBankOffset + metaTilesSectionAddress + room*2+1)-0x8000
numScreens = prgData[metaTileBankOffset + metaTilesRoomAddress] + 1
print('num screens:', numScreens)

# store metatiles in order
# if horizontal, num rows = 4*6 (include hidden top half of top metatiles), cols = 4*8*numScreens
# if vertical, num rows = 4*8*numScreens, cols = 4*8
metatilemap = []

# fill metatilemap
if is_vertical:
    for i in range(numScreens*numRows):
        rowOffset = metaTileBankOffset+metaTilesRoomAddress+1 + (i*8)
        rowBytes = prgData[rowOffset:rowOffset+8]
        metatilemap.append(rowBytes)
else:
    for i in range(numRows):
        metatilemap.append([])

    for i in range(numScreens):
        for j in range(numRows):
            rowOffset = metaTileBankOffset+metaTilesRoomAddress+1 + (i*6*8) + (j*8)
            rowBytes = prgData[rowOffset:rowOffset+8]
            metatilemap[j].extend(rowBytes)
print('rows, cols:', len(metatilemap), len(metatilemap[0]))
# for row in metatilemap:
    # print(' '.join(f'{byte:02x}' for byte in row))

# Room tiles - same conditional metatile bank
roomTileAddress = word(bankConv('1e:15f2')+group*2)-0x8000
roomTileOffset = address(metaTileBank, roomTileAddress)
print('room tile address:', hex(roomTileAddress))
# palettes - same conditional metatile bank
paletteAddress = word(bankConv('1e:1610')+group*2)-0x8000
paletteOffset = address(metaTileBank, paletteAddress)
print('palette address:', hex(paletteAddress))

# gen tilemap and palettes
tilemap = []
palettes = []
for i in range(len(metatilemap)*4):
    tilemap.append([])
    palettes.append([])
for i, row in enumerate(metatilemap):
    for metatile in row:
        # tilemap
        metatileBytes = prgData[roomTileOffset+metatile*16:roomTileOffset+(metatile+1)*16]
        tilemap[i*4].extend(metatileBytes[:4])
        tilemap[i*4+1].extend(metatileBytes[4:8])
        tilemap[i*4+2].extend(metatileBytes[8:12])
        tilemap[i*4+3].extend(metatileBytes[12:])

        # palettes
        metatilePalette = prgData[paletteOffset+metatile]
        tl = metatilePalette & 0x3
        tr = (metatilePalette & 0xc)>>2
        bl = (metatilePalette & 0x30)>>4
        br = (metatilePalette & 0xc0)>>6
        palettes[i*4].extend([tl, tl, tr, tr])
        palettes[i*4+1].extend([tl, tl, tr, tr])
        palettes[i*4+2].extend([bl, bl, br, br])
        palettes[i*4+3].extend([bl, bl, br, br])

# for row in tilemap:
    # print(' '.join(f'{byte:02x}' for byte in row[:32]))

wholeTileMap = []
for row in tilemap:
    for byte in row:
        wholeTileMap.extend(roomChrData[byte*0x10:(byte+1)*0x10])

wholePalettes = []
for row in palettes:
    wholePalettes.extend(row)

# Internal palettes
internalPaletteIdxGroupAddress = word(0x5cd+group*2)-0x8000
internalPaletteIdxSectionAddress = word(internalPaletteIdxGroupAddress+section*4)-0x8000
internalPaletteIdx = prgData[internalPaletteIdxSectionAddress+room]
internalPalettes = prgData[0x779+internalPaletteIdx*9:0x779+(internalPaletteIdx+1)*9]
joinedPalettes = ' '.join(str(col) for col in internalPalettes)
print('internal palettes:', ' '.join(f'{byte:02x}' for byte in internalPalettes))

# Gen gfx_layout.chr and gfx_palette.bin
with open('gfx_layout.chr', 'wb') as f:
    f.write(bytearray(wholeTileMap))
with open('gfx_palette.bin', 'wb') as f:
    f.write(bytearray(wholePalettes))

if is_vertical:
    screensWide = 1
else:
    screensWide = numScreens
os.system(f'python tools/gfx.py 1 {screensWide*32} {joinedPalettes}')
