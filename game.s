
.include "include/rominfo.s"
.include "include/constants.s"
.include "include/macros.s"
.include "include/scriptMacros.s"
.include "include/hardware.s"
.include "include/structs.s"
.include "include/wram.s"

.bank $00 slot 1
.org 0

    .db $80
    .include "code/bank00.s"

.bank $01 slot 2
.org 0

    .include "code/bank01.s"

.bank $02 slot 1
.org 0

    .db $82
    .include "code/bank02.s"
    .include "code/irqFuncs_b02.s"

.bank $03 slot 2
.org 0

    .include "code/irqFuncs_b03.s"
    .include "code/gameState9_introCutscene.s"
    .include "code/bank03.s"

.bank $04 slot 1
.org 0

    .db $84
    .include "code/bank04.s"

.bank $05 slot 2
.org 0

    .include "code/bank05.s"

.bank $06 slot 1
.org 0

    .db $86
    .include "code/bank06.s"

.bank $07 slot 3
.org 0

    .include "data/commonDPCMdata.s"
    .include "data/b7_dpcmData.s"

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

.bank $0c slot 1
.org 0

    .db $8c
    .include "data/roomMetatilesPalettesData_b0c.s"

.bank $0d slot 2
.org 0

    .include "data/roomMetatilesPalettesData_b0d.s"
    .include "code/bank0d.s"

.bank $0e slot 1
.org 0

    .db $8e
    .include "data/roomMetatilesPalettesData_b0e.s"

.bank $0f slot 2
.org 0

    .include "data/roomMetatilesPalettesData_b0f.s"
    .include "code/bank0f.s"

.bank $10 slot 1
.org 0

    .db $90
    .include "data/roomMetatilesPalettesData_b10.s"

.bank $11 slot 2
.org 0

    .include "data/roomMetatilesPalettesData_b11.s"
    .include "data/staticLayouts_b11.s"
    .include "code/bank11.s"

.bank $12 slot 1
.org 0

    .db $92
    .include "code/bank12.s"

.bank $13 slot 2
.org 0

    .include "code/bank13.s"

.bank $14 slot 1
.org 0

    .db $94
    .include "code/bank14.s"
    .include "data/roomEntities_b14.s"

.bank $15 slot 2
.org 0

    .include "data/roomEntities_b15.s"
    .include "data/enemyMetadata.s"
    ; todo: possibly contains junk at the end
    .include "data/luminaryMetadata.s"
    .include "code/gameStateC.s"
    .include "code/gameStateD.s"
    ; todo: possibly contains junk at the end
    .include "data/staticLayouts_b15.s"

.bank $16 slot 1
.org 0

    .db $96

func_16_0001:
	lda $0470, x
B22_0004:		and #$fe		; 29 fe
B22_0006:		sta $00			; 85 00
B22_0008:		ldy #$00		; a0 00
B22_000a:		lda wEntityHorizSpeed.w, x	; bd f2 04
B22_000d:		bpl B22_0010 ; 10 01

B22_000f:		dey				; 88 
B22_0010:		sty $01			; 84 01
B22_0012:		jsr func_16_0037		; 20 37 80
B22_0015:		lda $0470, x	; bd 70 04
B22_0018:		and #$01		; 29 01
B22_001a:		adc $01			; 65 01
B22_001c:		and #$01		; 29 01
B22_001e:		ora $00			; 05 00
B22_0020:		sta $0470, x	; 9d 70 04
B22_0023:		clc				; 18 
B22_0024:		lda $04db, x	; bd db 04
B22_0027:		adc $0537, x	; 7d 37 05
B22_002a:		sta $04db, x	; 9d db 04
B22_002d:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0030:		adc $0520, x	; 7d 20 05
B22_0033:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0036:		rts				; 60 

func_16_0037:
B22_0037:		clc				; 18 
B22_0038:		lda $04c4, x	; bd c4 04
B22_003b:		adc wEntityHorizSubSpeed.w, x	; 7d 09 05
B22_003e:		sta $04c4, x	; 9d c4 04
B22_0041:		lda wEntityBaseX.w, x	; bd 38 04
B22_0044:		adc wEntityHorizSpeed.w, x	; 7d f2 04
B22_0047:		sta wEntityBaseX.w, x	; 9d 38 04
B22_004a:		rts				; 60 

    .include "code/entityPhaseFuncs_b16.s"

.bank $17 slot 2
.org 0

    .include "code/entityPhaseFuncs_b17.s"
    .include "data/entityScripts.s"
    .include "code/bank17.s"
    .include "data/entityPhaseFuncsAndScripts.s"

.bank $18 slot 1
.org 0

    .db $98
    .include "code/soundCommon.s" namespace "b18_soundCommon"
    .include "code/soundEngine.s"
    .include "data/soundPointers.s"
    .include "data/soundData_b18.s"
    .include "data/soundEnvelopeData_b18.s"

.bank $19 slot 2
.org 0

    .include "data/soundEnvelopeData_b19.s"
    .include "data/dpcmSpecData.s"
    .include "code/gameStateF_soundMode.s"
    .include "code/bank19.s"

.bank $1a slot 1
.org 0

    .db $9a
    .include "code/updateEntityOam.s"
    .include "data/oamSpecData_1a.s"

.bank $1b slot 2
.org 0

    .include "data/oamSpecData_1b.s"
    .include "code/bank1b.s"

.bank $1c slot 1
.org 0

    .db $9c
    .include "code/playerStateProcessing_b1c.s"

.bank $1d slot 2
.org 0

    ; todo: possibly contains junk at the end
    .include "code/playerStateProcessing_b1d.s"

.bank $1e slot 3
.org 0

    .include "data/commonDPCMdata.s"
    .include "code/bank1e.s"

.ifdef IS_EXTENDED_ROM
    .bank $7f slot 4
.else
    .bank $1f slot 4
.endif
.org 0

    .db $9e
    .include "code/bank1f.s"
