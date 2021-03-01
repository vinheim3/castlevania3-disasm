from utils import groupBytes
import clipboard

def lineComps(line):
    return [c for c in line.split() if c]

def join(_bytes):
    return " ".join(f'${b:02x}' for b in _bytes)

def ftTextParser():
    with open('AoC_Demo(1).txt') as f:
        ftData = f.read().splitlines()

    dpcmBytesData = []
    grooves = []
    comps = []
    phrases = []
    instrPhaseLocations = []

    currPattern = 0
    currRow = 0
    numEffects = [4, 4, 4, 1, 4, 3, 3]
    # keyed by pattern idx, dicts keyed by row, dicts keyed by instr idx
    patternData = {}

    for line in ftData:
        lc = lineComps(line)

        if line.startswith('DPCM : '):
            dpcmBytes = lc[2:]
            dpcmBytesData.extend(map(lambda b: int(b, 16), dpcmBytes))
        
        elif line.startswith('GROOVE'):
            grooveIdx = int(lc[1])
            assert grooveIdx == len(grooves)
            grooves.append(lc[4:])

        elif line.startswith('ORDER'):
            phrases.append(list(map(lambda b: int(b, 16), lc[3:])))

        elif line.startswith('PATTERN'):
            currPattern = int(lc[1], 16)
            patternData[currPattern] = {}

        elif line.startswith('ROW'):
            currRow = int(lc[1], 16)
            patternData[currPattern][currRow] = {}

            currLCIdx = 3
            for instrIdx in range(7):
                numInstrEffects = numEffects[instrIdx]
                instrData = lc[currLCIdx:currLCIdx+numInstrEffects+3]
                currLCIdx += numInstrEffects + 4

                patternData[currPattern][currRow][instrIdx] = {
                    "note": instrData[0],
                    "instr": instrData[1],
                    "vol": instrData[2],
                    "effects": instrData[3:],
                }

    # get 1 pattern idx for every instr phase
    if phrases:
        for instrData in zip(*phrases):
            instrPhases = {}
            for i, num in enumerate(instrData):
                if num not in instrPhases:
                    instrPhases[num] = i
            instrPhaseLocations.append(instrPhases)

    # keyed by phrase
    sq1Data = {}
    sq2Data = {}
    triData = {}
    noiseData = {}
    dpcmData = {}
    pulse1Data = {}
    pulse2Data = {}
    conductorData = {}

    #############################
    # Building export
    #############################

    comps.append('grooves:')
    for i, groove in enumerate(grooves):
        comps.append(f'\t.dw @groove{i:02x}')
    for i, groove in enumerate(grooves):
        comps.append(f'@groove{i:02x}')
        grooveBytes = list(map(int, groove))
        grooveBytes.append(0)
        comps.append(f'\t.db {join(grooveBytes)}')
    comps.append('')

    # TODO: numFramesAndLoopPoint

    comps.append('framePhrases:')
    for line in phrases:
        comps.append(f'\t.db {join([*line, line[4]])}')
    comps.append('')

    comps.append("phraseAddrs:")
    comps.append("\t.dw @instrSQ1")
    comps.append("\t.dw @instrSQ2")
    comps.append("\t.dw @instrTRI")
    comps.append("\t.dw @instrNOISE")
    comps.append("\t.dw @instrDPCM")
    comps.append("\t.dw @instrPULSE1")
    comps.append("\t.dw @instrPULSE2")
    comps.append("\t.dw @instrConductor")

    with open('sndData_export.txt', 'w') as f:
        f.write("\n".join(comps))

    with open('dpcm_export.txt', 'w') as f:
        f.write(groupBytes(dpcmBytesData, 16))

ftTextParser()
