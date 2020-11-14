import sys
import clipboard

args = 4

if len(sys.argv) < args:
    print('Usage: ' + sys.argv[0] + ' startAddress endAddress groups [fname]')
    sys.exit()

with open('original/OR.bin', 'rb') as f:
    data = f.read()

start, end, groups = sys.argv[1:args]

def conv(hexstr):
    return int(f"0x{hexstr}", 16)

if ':' in start:
    bank, addr = start.split(':')
    bank = conv(bank)
    addr = conv(addr)
    start = bank*0x2000+addr
else:
    start = conv(start)

if ':' in end:
    bank, addr = end.split(':')
    bank = conv(bank)
    addr = conv(addr)
    if bank == 0:
        end = addr
    else:
        end = bank*0x2000+addr
    bytes = data[start:end+1]
else:
    end = conv(end)
    bytes = data[start:start+end]

groups = int(groups)

if len(sys.argv) == args+1:
    with open(f"layouts/{sys.argv[args]}.bin", 'wb') as f:
        f.write(bytes)
    exit(0)

comps = []
if groups != 0:
    curr_comp = []
    for i, byte in enumerate(bytes):
        if i != 0 and i%groups == 0:
            full_str = "	.db "+" ".join(f"${byte:02x}" for byte in curr_comp)
            comps.append(full_str)
            curr_comp = []
        curr_comp.append(byte)
    if curr_comp:
        full_str = "	.db "+" ".join(f"${byte:02x}" for byte in curr_comp)
        comps.append(full_str)
else:
    curr_comp = []
    for i, byte in enumerate(bytes):
        if i != 0 and i%2 == 0:
            full_str = f"	.dw ${curr_comp[1]:02x}{curr_comp[0]:02x}"
            comps.append(full_str)
            curr_comp = []
        curr_comp.append(byte)
    if curr_comp:
        if len(curr_comp) == 2:
            full_str = f"	.dw ${curr_comp[1]:02x}{curr_comp[0]:02x}"
        else:
            full_str = f"	.db ${curr_comp[0]:02x}"
        comps.append(full_str)

final_str = "\n".join(comps)
clipboard.copy(final_str)
print(final_str)