import clipboard
import json

with open('original/OR.bin', 'rb') as f:
    data = f.read()

def word(idx):
    return (data[idx+1]<<8)|data[idx]

def b(bank, offset):
    return bank*0x2000+offset

start = 0x18*0x2000+0xf2e
addresses = []
address_map = {}
offset = 0

comps = []
while offset < 0x1026-0xf2e:
    curr_address = word(start+offset)-0x8000
    addresses.append(curr_address)
    soundIdx = (offset//2) + 1
    address_map[curr_address] = soundIdx
    comps.append(f"\t.dw soundData_{soundIdx:02x}")
    offset += 2
comps.append("")

# bank -> [addresses, sound idx, instrument idx]
soundMetadata = {}

addresses.append(0x13ff)
s_addresses = sorted(addresses)
for i, address in enumerate(s_addresses[:-1]):
    comps.append(f"soundData_{address_map[address]:02x}:")
    next_address = s_addresses[i+1]
    soundBytes = data[b(0x18, address):b(0x18, next_address)]

    bank = soundBytes[0]
    comps.append(f"\t.db ${bank:02x}")

    if bank == 0:  # dpcm
        instrument = soundBytes[1]
        comps.append(f"\t.db ${instrument:02x}")
        dpcmAddress = word(b(0x18, address+2))
        # comps.append(f"\t.dw ${dpcmAddress:04x}")
        comps.append(f"\t.dw dpcmSpecData_{address_map[address]:02x}")
    else:
        soundMetadata.setdefault(bank-0x80, [])

        numInstrumentsMin1 = soundBytes[1]
        comps.append(f"\t.db ${numInstrumentsMin1:02x}")
        offset = 2
        for j in range(numInstrumentsMin1+1):
            instrumentNum = soundBytes[offset]
            comps.append(f"\t.db ${instrumentNum:02x}")
            offset += 1
            instrumentAddr = word(b(0x18, address+offset))
            offset += 2
            # comps.append(f"\t.dw ${instrumentAddr:04x}")
            comps.append(f"\t.dw sound{address_map[address]:02x}_instrument{instrumentNum:02x}")

            soundMetadata[bank-0x80].append({
                "address": instrumentAddr-0x8000,
                "soundIdx": address_map[address],
                "instrumentIdx": instrumentNum,
            })
    comps.append("")

final_str = "\n".join(comps)
with open("text.txt", "w") as f:
    f.write(final_str)
clipboard.copy(final_str)
print(set(soundMetadata.keys()))

with open('json/instrumentData.json', 'w') as f:
    f.write(json.dumps(soundMetadata, indent=2))
