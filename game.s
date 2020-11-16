
.include "include/rominfo.s"
.include "include/constants.s"
.include "include/macros.s"
.include "include/hardware.s"
.include "include/structs.s"
.include "include/wram.s"

.bank $00 slot 1
.org 0
.include "code/bank00.s"

.bank $01 slot 2
.org 0
.include "code/bank01.s"

.bank $02 slot 1
.org 0
.include "code/bank02.s"

.bank $03 slot 2
.org 0
.include "code/bank03.s"

.bank $04
.org 0
.include "code/bank04.s"

.bank $05
.org 0
.include "code/bank05.s"

.bank $06
.org 0
.include "code/bank06.s"

.bank $07 slot 3
.org 0
.include "code/bank07.s"

.bank $08 slot 1
.org 0

.db $88
.include "code/soundCommon.s" namespace "b08_soundCommon"
.include "data/soundData_b08.s"

.bank $09 slot 2
.org 0

.include "data/soundData_b09.s"
.include "code/bank09.s"

.bank $0a slot 1
.org 0

.db $8a
.include "code/soundCommon.s" namespace "b0a_soundCommon"
.include "data/soundData_b0a.s"

.bank $0b slot 2
.org 0

.include "data/soundData_b0b.s"
.include "code/bank0b.s"

.bank $0c
.org 0
.include "code/bank0c.s"

.bank $0d
.org 0
.include "code/bank0d.s"

.bank $0e
.org 0
.include "code/bank0e.s"

.bank $0f
.org 0
.include "code/bank0f.s"

.bank $10 slot 1
.org 0
.include "code/bank10.s"

.bank $11 slot 2
.org 0
.include "code/bank11.s"

.bank $12
.org 0
.include "code/bank12.s"

.bank $13
.org 0
.include "code/bank13.s"

.bank $14 slot 1
.org 0
.include "code/bank14.s"

.bank $15 slot 2
.org 0
.include "code/bank15.s"

.bank $16
.org 0
.include "code/bank16.s"

.bank $17
.org 0
.include "code/bank17.s"

.bank $18 slot 1
.org 0

.include "code/bank18.s"
.include "data/soundPointers.s"
.include "data/soundData_b18.s"
.include "data/miscSoundData_b18.s"

.bank $19 slot 2
.org 0
.include "code/bank19.s"

.bank $1a slot 1
.org 0
.include "code/bank1a.s"

.bank $1b slot 2
.org 0
.include "code/bank1b.s"

.bank $1c
.org 0
.include "code/bank1c.s"

.bank $1d
.org 0
.include "code/bank1d.s"

.bank $1e slot 3
.org 0
.include "code/bank1e.s"

.ifdef IS_EXTENDED_ROM
    .bank $7f slot 4
.else
    .bank $1f slot 4
.endif
.org 0
.include "code/bank1f.s"

