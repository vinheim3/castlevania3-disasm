from utils import *
import clipboard

addrRanges = [
    [bankConv('1a:25c'), bankConv('1a:3be')],
    [bankConv('1a:be9'), bankConv('1a:d67')],
    [bankConv('1a:16a2'), bankConv('1a:1782')],
    [bankConv('1a:1fd6'), bankConv('1b:d6')],
    [bankConv('1b:be7'), bankConv('1b:dc5')],
]
addresses = []
for low, high in addrRanges:
    offset = 0
    while low + offset < high:
        addresses.append(word(low + offset)-0x8000)
        offset += 2

fill_lo = 0x2dc5
fill_hi = 0x375d
addresses = [a for a in addresses if fill_lo <= a <= fill_hi]
s_addresses = sorted(set(addresses))
s_addresses.append(fill_hi)

comps = []
for i, addr in enumerate(s_addresses[:-1]):
    if addr >= 0x2000:
        bank = 0x1b
        addr -= 0x2000
    else:
        bank = 0x1a
    next_addr = s_addresses[i+1]

    comps.append(f'data_{bank:02x}_{addr:04x}:')

    b = prgData[address(bank, addr):address(0x1a, next_addr)]
    joined = " ".join(f"${byte:02x}" for byte in b)
    comps.append(f'\t.db {joined}\n')

final_str = "\n".join(comps)
clipboard.copy(final_str)
print(final_str)