import json

with open('original/OR.bin', 'rb') as f:
    data = f.read()

def word(idx):
    return (data[idx+1]<<8)|data[idx]

start = 0x5cd

groupAddresses = []
for i in range(16):
    groupAddresses.append(word(start+i*2)-0x8000)

roomDataStart = 0x6f9
groupAddresses.append(roomDataStart)

groupSectionAddresses = []
allSectionAddresses = []
for i in range(len(groupAddresses)-1):
    startAddr = groupAddresses[i]
    endAddr = groupAddresses[i+1]

    sectionAddresses = []
    for j in range((endAddr-startAddr)//4):
        sectionAddress = word(startAddr+j*4)-0x8000
        sectionAddresses.append(sectionAddress)
        allSectionAddresses.append(sectionAddress)
    groupSectionAddresses.append(sectionAddresses)

sectionAddressEnd = 0x766
allSectionAddresses.append(sectionAddressEnd)
sectionAddressMap = {}
s_addresses = sorted(allSectionAddresses)
for i, address in enumerate(s_addresses[:-1]):
    sectionAddressMap[address] = data[address:s_addresses[i+1]]

"""
"0": [1, 4, 2, 1],
...
"""
final_json = {}
for i, group in enumerate(groupSectionAddresses):
    sectionRoomCount = []
    for section in group:
        sectionRoomCount.append(len(sectionAddressMap[section]))
    
    final_json[i] = sectionRoomCount

print(final_json)
with open('json/roomList.json', 'w') as f:
    f.write(json.dumps(final_json, indent=2))
