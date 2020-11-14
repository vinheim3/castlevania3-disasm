
header = [
    0x4e, 0x45, 0x53, 0x1a, 0x10, 0x10, 0x50, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
]

with open('castlevania3.bin', 'rb') as f:
    prgData = f.read()

with open('original/OR.chr', 'rb') as f:
    chrData = f.read()

with open('castlevania3.nes', 'wb') as f:
    f.write(header + prgData + chrData)
