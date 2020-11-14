;=========================================================================================
; Bank 0
;=========================================================================================

.ramsection "RAM 0" bank 0 slot 0

.union
    wReturnAddr: ; $00
        dw
.nextu
.endu

.union
    wJumpAddr: ; $02
        dw
.nextu
    w002:
        db

    wTempY: ; $03
        db
.endu

w004:
    dsb 4

.union
    wCurrRoomGroupMetaDataAddress: ; $08
        dw

    wCurrRoomSectionMetaDataAddress: ; $0a
        dw
.nextu
    wCurrRoomGroupChrBanks: ; $08
        dw

    .union
        wCurrRoomSectionChrBanks1: ; $0a
            dw
    .nextu
        wCurrRoomSectionChrBanks2: ; $0a
            dw
    .endu
.endu

w00c:
    dsb 3

wRoomSectionChrBanksDataOffset: ; $0f
    db

w010:
    dsb $21-$10

wPrgBank_8000: ; $21
    db

wPrgBankBkup_8000: ; $22
    db

wPrgBankBkup2_8000: ; $23
    db

wIsExecutingSoundFunc: ; $24
    db

wNametableMapping: ; $25
    db

w026:
    dsb $32-$26

wCurrRoomGroup: ; $32
    db

wCurrRoomSection: ; $33
    db

wCurrRoomIdx: ; $34
    db

w035:
    dsb $f-5

wBaseIRQFuncIdx: ; $3f
    db

wBaseIRQStatus: ; $40
    db

wBaseIRQCmpVal: ; $41
    db

w042:
    dsb 2

wIRQFuncAddr: ; $44
    dw

wChrBank_0000: ; $46
    db

wChrBank_0400: ; $47
    db

wChrBank_0800: ; $48
    db

wChrBank_0c00: ; $49
    db

wChrBank_0000_1000: ; $4a
    db

wChrBank_0400_1400: ; $4b
    db

wChrBank_0800_1800: ; $4c
    db

wChrBank_0c00_1c00: ; $4d
    db

wChrBank_1400: ; $4e
    db

w04f:
    db

wRoomMetaTilesAddr: ; $50
    dw

w052:
    dsb $f-2

wCurrRoomGroupMetaTilePalettes: ; $5f
    dw

w061:
    dsb $d-1

wIRQFuncIdx: ; $6d
    db

w06e:
    db

wGameplayScrollX: ; $6f
    db

w070:
    dsb $e0-$70

wCurrInstrumentDataAddr: ; $e0
    dw

.union
    wSoundBankJumpAddr: ; $e2
        dw
.nextu
    wSoundBankTempInstMetadataOffset: ; $e2
        db
.nextu
    wSoundTempDataBytesOffset: ; $e2
        db
.nextu
    wCurrFrequencyAdjust: ; $e2
        db
.nextu
    wNextInstrumentDataAddr_lo: ; $e2
        db
.endu

wSoundBankTempX: ; $e4
    db

wSoundBankTempY: ; $e5
    db

; used just to check 1st byte when loading sond
wTempCurrInstrumentDataAddr: ; $e6
    dw

wSoundMetadataAddr: ; $e8
    dw

wSoundNumInstrumentsMinus1: ; $ea
    db

wSoundDataBank: ; $eb
    db

wSoundFrequency: ; $ec
    dw

wCurrInstrumentIdx: ; $ee
    db

.union
    wSoundToPlay: ; $ef
        db
.nextu
    wDMCToPlay: ; $ef
        db
.endu

w0f0:
    dsb $c

wScrollY: ; $fc
    db

wScrollX: ; $fd
    db

wPPUMask: ; $fe
    db

wPPUCtrl: ; $ff
    db

; delay until next byte?
w100:
    dsb 7

wInstrumentsSoundIdxes: ; $107
    dsb 7

w10e:
    dsb 7

; 115 - set to 1 if not 2nd square channels
; and 1st instrument metadata byte >= $10
w115:
    dsb 7

wSoundCtrsForLastLoop: ; $11c
    dsb 7

wInstrumentData_lo: ; $123
    dsb 7

wInstrumentData_hi: ; $12a
    dsb 7

wLoopToAddr_lo: ; $131
    dsb 7

wLoopToAddr_hi: ; $138
    dsb 7

w13f:
    dsb $4d-$3f

; todo: unknown size
wInstrumentLastFreq_hi: ; $14d
    dsb 7

w154:
    dsb $69-$54

w169:
    dsb 5

; control bits?
w16e:
    dsb 5

wInstrumentFrequencyAdjust: ; $173
    dsb 3

w176:
    dsb 2

; todo: unknown size
wInstrumentLastFreq_lo: ; $178
    dsb 7

w17f:
    dsb $83-$7f

wInstrumentFrequency_lo: ; $183
    dsb 3

wInstrumentFrequency_hi: ; $186
    dsb 3

; todo: unknown size
w189:
    dsb 7

w190:
    dsb 5

; todo: unknown size
wInstrumentDataBanks: ; $195
    db

w196:
    dsb $200-$196

wStackEnd:
    .db

wOam: ; $200
    dsb $100

; todo: unknown size
wVramQueue: ; $300
    dsb $cc

w3cc:
    dsb 3

; todo: unknown size
; low nybble from da 3rd param
; num times to multiply $100,x to itself, 
w3cf:
    dsb 3

.ends