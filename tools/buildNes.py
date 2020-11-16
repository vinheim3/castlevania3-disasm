
import sys

header = [
    0x4e, 0x45, 0x53, 0x1a, 0x10, 0x10, 0x50, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]

isExtended = len(sys.argv) > 1
if isExtended:
    header[4] = 0x40
    header[5] = 0x80

with open('castlevania3.bin', 'rb') as f:
    prgData = f.read()

with open('original/OR.chr', 'rb') as f:
    chrData = f.read()

if isExtended:
    chrData += bytearray(0x100000-len(chrData))

with open('castlevania3build.nes', 'wb') as f:
    f.write(bytearray(header) + prgData + chrData)
