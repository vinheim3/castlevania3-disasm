import clipboard
import json
from utils import *

group = 0xe
bank = 0x0c
start = 0x32ea

# list of num rooms per section
with open('json/roomList.json') as f:
    groupRoomList = json.loads(f.read())[str(group)]

comps = [f'roomGroupMetadata{group:01x}:']
sectionAddresses = []
for i in range(len(groupRoomList)):
    sectionAddresses.append(word(address(bank, start+i*2))-0x8000)
    comps.append(f'\t.dw roomSectionMetadata_{group:01x}_{i:01x}')
comps.append('')

start += len(groupRoomList)*2

roomAddresses = {}

for i in range(len(groupRoomList)):
    numRooms = groupRoomList[i]
    print(hex(start), hex(sectionAddresses[i]))
    assert start == sectionAddresses[i]
    assert numRooms == prgData[address(bank, sectionAddresses[i])]+1
    
    comps.append(f'roomSectionMetadata_{group:01x}_{i:01x}:')
    comps.append(f'\t.db ${numRooms-1:02x}')
    for j in range(numRooms):
        roomAddresses.setdefault(word(address(bank, start+1+j*2))-0x8000, []).append([i, j])
        comps.append(f'\t.dw roomMetadata_{group:01x}_{i:01x}_{j:01x}')
    
    start += numRooms*2+1

    if numRooms > 1:
        for j in range(numRooms):
            comps.append(f'\t.db ${prgData[address(bank, start)]:02x} ${prgData[address(bank, start+1)]:02x}')
            start += 2

    comps.append('')

while start in roomAddresses:
    for i, j in roomAddresses[start]:
        section, room = i, j
        comps.append(f'roomMetadata_{group:01x}_{section:01x}_{room:01x}:')

    del roomAddresses[start]
    numScreens = prgData[address(bank, start)]+1
    comps.append(f'\t.db ${numScreens-1:02x}')
    start += 1

    is_vertical = isRoomVertical(group, section, room)
    if is_vertical:
        numRows = 8
    else:
        numRows = 6

    for i in range(numScreens):
        for j in range(numRows):
            rowBytes = prgData[address(bank, start):address(bank, start+8)]
            joined = " ".join(f'${b:02x}' for b in rowBytes)
            comps.append(f'\t.db {joined}')
            start += 8
        comps.append('')

    comps.append('')

print(roomAddresses)

print(hex(start))
final_str = "\n".join(comps)
clipboard.copy(final_str)
