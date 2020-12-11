import sys

with open('original/OR.bin', 'rb') as f:
    prgData = f.read()

def word(idx):
    return (prgData[idx+1]<<8)|prgData[idx]

def conv(hexstr):
    return int(f"0x{hexstr}", 16)

def bankConv(hexstr):
    if ':' in hexstr:
        bank, addr = hexstr.split(':')
    else:
        bank = 0
        addr = hexstr
    bank = conv(bank)
    addr = conv(addr)
    return bank * 0x2000 + addr

def address(_bank, _addr):
    return _bank*0x2000+_addr

def getMetatileBank(group, section, room, special_cases=False):
    if special_cases:
        if group == 0x0d:
            if section == 0x00 and room in [0, 1]:
                return 0x10
            if section == 0x02 and room == 0x02:
                return 0x0e
            if section == 0x03 and room == 0x00:
                return 0x0e
        if group == 0x0e and section == 0x00 and room == 0x01:
            return 0x10
    return [
        0x10, 0x10, 0x10, 0x10, 0x10,
        0x0e, 0x0e, 0x0e, 0x0e, 0x0c,
        0x0c, 0x0e, 0x0c, 0x0c, 0x0c,
    ][group]

def isRoomVertical(group, section, room):
    metaByteGroupAddress = word(bankConv('1e:162e')+group*2)-0xc000
    metaByteSectionAddress = word(address(0x1e, metaByteGroupAddress)+section*2)-0xc000
    metaByte = prgData[address(0x1e, metaByteSectionAddress)+room]
    return metaByte & 0xf0 != 0

def getOutstandingLines():
    import os
    fnames = os.listdir('code')
    total = 0
    for fname in fnames:
        if '1' in sys.argv and 'bank' not in fname:
            continue
        with open(f'code/{fname}') as f:
            data = f.read().split('\n')
    
        for line in data:
            if line.startswith('B'):
                total += 1
    print(total)

if __name__ == '__main__':
    getOutstandingLines()