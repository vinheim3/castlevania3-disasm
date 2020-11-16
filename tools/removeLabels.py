import sys
import re

bank, start, end = sys.argv[1:]
start = int(start)
end = int(end)

if len(bank) == 2:
    _fname = f"code/bank{bank}.s"
else:
    _fname = f"code/{bank}.s"

with open(_fname) as f:
    code = f.read()

with open('temp.s', 'w') as f:
    f.write(code)

lines = code.split('\n')

relevantLines = lines[start-1:end]

comps = lines[:start-1]
for line in relevantLines:
    _line = re.sub(r'^B[^\n	]+:	', '', line)
    _line = re.sub(r'	+;.*', '', _line)
    comps.append(_line)
comps.extend(lines[end:])
with open(_fname, 'w') as f:
    f.write('\n'.join(comps))
