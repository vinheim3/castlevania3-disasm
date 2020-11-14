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

        sectionAddressLabelMap[sectionAddress] = label

        offset += 2
    groupSectionAddresses.append(sectionAddresses)
    comps.append('')

allSectionAddresses.append(0x3ee)
sectionBytesMap = {}
s_addresses = sorted(allSectionAddresses)
for i, address in enumerate(s_addresses[:-1]):
    nextAddress = s_addresses[i+1]
    sectionBytes = data[address:nextAddress]
    joinedBytes = " ".join(f"${byte:02x}" for byte in sectionBytes)
    if not joinedBytes:
        continue
    comps.append(f"{sectionAddressLabelMap[address]}:")
    comps.append(f"\t.db {joinedBytes}\n")
    sectionBytesMap[address] = data[address:nextAddress]

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)