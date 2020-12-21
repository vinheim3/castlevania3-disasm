from utils import *
import clipboard

start = address(0xb, 0x1bbc)
offset = 0

isAddress = True
comps = []
while True:
    if isAddress:
        dest = word(start+offset)
        offset += 2
        comps.append(f'\t.dw ${dest:04x}')
        isAddress = False
        continue

    countByte = prgData[start+offset]

    if countByte == 0x7f:
        isAddress = True
        comps.append('\t.db $7f')
        offset += 1
    elif countByte == 0xff:
        comps.append('\t.db $ff')
        break
    elif countByte & 0x80:
        count = countByte & 0x7f
        allBytes = prgData[start+offset:start+offset+count+1]
        offset += count + 1
        joined = " ".join(f'${b:02x}' for b in allBytes)
        comps.append(f'\t.db {joined}')
    else:
        comps.append(f'\t.db ${countByte:02x} ${prgData[start+offset+1]:02x}')
        offset += 2

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)
print(hex(start+offset))