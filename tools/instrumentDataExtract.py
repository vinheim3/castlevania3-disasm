import clipboard
import json

with open('original/OR.bin', 'rb') as f:
    data = f.read()

with open('json/instrumentData.json') as f:
    instrumentData = json.loads(f.read())

def b(bank, offset):
    return bank*0x2000+offset

bank = 0xa
ends = {
    0x08: 0x31b4,
    0x0a: 0x3839,
    0x18: 0x1e25,
}

bankData = instrumentData[str(bank)]
address_map = {}
for datum in bankData:
    address_map.setdefault(datum['address'], []).append(datum)

s_addresses = sorted(address_map.keys())
if bank in ends:
    s_addresses.append(ends[bank])

comps = []
for i, address in enumerate(s_addresses[:-1]):
    nextAddress = s_addresses[i+1]
    addrData = address_map[address]
    for datum in addrData:
        soundIdx = datum['soundIdx']
        instrumentIdx = datum['instrumentIdx']
        comps.append(f"sound{soundIdx:02x}_instrument{instrumentIdx:02x}:")

    if address < 0x2000 and nextAddress >= 0x2000:
        print(f"crosses banks, sound: {soundIdx:02x}, instr: {instrumentIdx:02x}")

    instrumentBytes = data[b(bank, address):b(bank, nextAddress)]

    for j in range(len(instrumentBytes[::8])):
        rowBytes = instrumentBytes[j*8:(j+1)*8]
        joined = " ".join(f"${byte:02x}" for byte in rowBytes)
        comps.append(f"\t.db {joined}")

    comps.append("")

print(hex(s_addresses[0]))
print(hex(s_addresses[-1]))
final_str = "\n".join(comps)
with open("text.txt", "w") as f:
    f.write(final_str)
clipboard.copy(final_str)
