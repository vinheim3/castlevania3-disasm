import clipboard

with open('original/OR.bin', 'rb') as f:
    data = f.read()

def word(idx):
    return (data[idx+1]<<8)|data[idx]

def hb(val):
    return f"{val:01x}".upper()

comps = ["@roomChrBanks:"]

groupAddresses = []
for i in range(15):
    groupAddresses.append(word(0x66+i*2)-0x8000)
    comps.append(f"\t.dw @group{hb(i)}")
groupAddresses.append(0x184)

comps.append('')

groupSectionAddresses = []
allSectionAddresses = []
sectionAddressLabelMap = {}
for i, address in enumerate(groupAddresses[:-1]):
    comps.append(f"@group{hb(i)}:")
    sectionAddresses = []
    nextAddress = groupAddresses[i+1]
    offset = 0

    isBGChr = True
    section = 0
    while address + offset != nextAddress:
        sectionAddress = word(address+offset)-0x8000
        sectionAddresses.append(sectionAddress)
        allSectionAddresses.append(sectionAddress)

        if isBGChr:
            label = f"@group{hb(i)}section{hb(section)}_bg"
            comps.append(f"\t.dw {label}")
            isBGChr = False
        else:
            label = f"@group{hb(i)}section{hb(section)}_spr"
            comps.append(f"\t.dw {label}")
            isBGChr = True
            section += 1

        sectionAddressLabelMap.setdefault(sectionAddress, []).append(label)

        offset += 2
    groupSectionAddresses.append(sectionAddresses)
    comps.append('')

allSectionAddresses.append(0x3ee)
sectionBytesMap = {}
s_addresses = sorted(allSectionAddresses)
for i, address in enumerate(s_addresses[:-1]):
    nextAddress = s_addresses[i+1]
    sectionBytes = data[address:nextAddress]
    if not sectionBytes:
        continue

    if "bg" in sectionAddressLabelMap[address][0]:
        byteGroup = 3
    else:
        byteGroup = 2
    
    for label in sectionAddressLabelMap[address]:
        comps.append(f"{label}:")

    for j in range(len(sectionBytes[::byteGroup])):
        joinedBytes = " ".join(f"${byte:02x}" for byte in sectionBytes[j*byteGroup:(j+1)*byteGroup])
        comps.append(f"\t.db {joinedBytes}")
    comps.append('')
    # sectionBytesMap[address] = data[address:nextAddress]

final_str = '\n'.join(comps)
clipboard.copy(final_str)
with open('test.txt', 'w') as f:
    f.write(final_str)