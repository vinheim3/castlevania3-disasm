from utils import *
import clipboard

addresses = []
start = address(0x17, 0x1ea1)
end = address(0x17, 0x1f87)
offset = 0

while start+offset < end:
    addr = word(start+offset)
    addresses.append(addr & 0x1fff)
    offset += 2

mapping = {0x10dc: []}
for i, addr in enumerate(addresses):
    mapping.setdefault(addr, []).append(i)

addrToCheck = set(addresses) - {0x1f87, 0x40b}
addrToCheck = sorted(addrToCheck)
addrToCheck.append(0x10dc)

formats = {
    0x00: ['sc_setEntityAIIdxTo0', ''],
    0x01: ['sc_setStateNotMoving', ''],
    0x04: ['sc_setPhase', 'b'],
    0x05: ['sc_facePlayer', ''],
    0x13: ['sc_animateGroupAndDefIdx', 'bb'],
    0x18: ['sc_setPhase0', ''],
    0x19: ['sc_stub', ''],
    0x1e: ['sc_moveToPlayerSetHorizSpeeds', 'r'],
    0x1f: ['sc_setAlarmOrStartYforSinusoidalMovement', 'b'],
    0x20: ['sc_incPhaseWhenAlarm0', ''],
    0x27: ['sc_end', ''],
    0x2a: ['sc_setStateMoving', ''],
    0x2b: ['sc_reverseHorizontally', ''],
    0x39: ['sc_setVertSpeedStartMoving', 'r'],
    0x53: ['sc_setStateNotIllusion', ''],
    0x54: ['sc_setStateIllusion', ''],
    0x62: ['sc_addOffsetsToXY', 'bb'],
    0x6c: ['sc_playSound', 'b'],
    0x6d: ['sc_tryToFall', ''],
    0x72: ['sc_stub2', ''],
    0x75: ['sc_stub3', ''],
    0x7b: ['sc_setGenericCounter', 'b'],
    0x97: ['sc_clearSpeeds', ''],
}

def decodeIns(opcode, params):
    if opcode not in formats:
        return ".db " + " ".join(f'${b:02x}' for b in [opcode, *params])
    
    # special case
    if opcode == 0 and params[0] != 0:
        return f'sc_setEntityAIIdxTo0 ${params[0]:02x}'
    ins, pFormat = formats[opcode]
    insComps = [ins]
    pIdx = 0
    for letter in pFormat:
        if letter == 'b':
            insComps.append(f'${params[pIdx]:02x}')
            pIdx += 1
        elif letter == 'w':
            insComps.append(f'${params[pIdx+1]:02x}{params[pIdx]:02x}')
            pIdx += 2
        elif letter == 'r':
            insComps.append(f'${params[pIdx]:02x}{params[pIdx+1]:02x}')
            pIdx += 2
        else:
            raise Exception(f'letter {letter}')
    return " ".join(insComps)

comps = []

for i, addr in enumerate(addrToCheck[:-1]):
    scriptIdxes = mapping[addr]

    for idx in scriptIdxes:
        comps.append(f'entityScripts_{idx:02x}:')

    start = address(0x17, addr)
    next_addr = addrToCheck[i+1]
    offset = 0
    while addr + offset < next_addr:
        opcode = prgData[start+offset]
        params = prgData[start+offset+1:start+offset+4]
        comps.append("\t" + decodeIns(opcode, params))
        offset += 4

    comps.append('')

final_str = '\n'.join(comps)
print(final_str)
clipboard.copy(final_str)
