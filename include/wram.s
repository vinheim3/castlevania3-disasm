;=========================================================================================
; Bank 0
;=========================================================================================

.ramsection "RAM 0" bank 0 slot 0

.union
    wReturnAddr: ; $00
        dw
.nextu
    wPointerBase: ; $00
        dw
.nextu
    wTempJoy1ButtonsPressedPass1: ; $00
        db

    wTempJoy2ButtonsPressedPass1: ; $01
        db
.nextu
    wCurrEntityPhaseFuncAddr: ; $00
        dw
.endu

.union
    wJumpAddr: ; $02
        dw
.nextu
    w002:
        db

    wTempY: ; $03
        db
.nextu
    wTempJoy1ButtonsPressedPass2: ; $02
        db

    wTempJoy2ButtonsPressedPass2: ; $03
        db
.nextu
    wPhaseFuncDataAddr: ; $02
        dw
.nextu
    wCurrEntityScriptAddr: ; $02
        dw
.endu

.union
    wJoy1IsButtonPressed: ; $04
        db

    wJoy2IsButtonPressed: ; $05
        db
.nextu
    wCurrSectionEntityDataAddr: ; $04
        dw

    wCurrRoomGroupEntityDataAddr: ; $06
        dw
.endu

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
.nextu
    wSoundModeTextAddr: ; $08
        dw
.endu

w00c:
    dsb 3

wRoomSectionChrBanksDataOffset: ; $0f
    db

w010:
    dsb 8

wGameState: ; $18
    db

wGameSubstate: ; $19
    db

wGameStateLoopCounter: ; $1a
    db

w01b:
    dsb 2

wVramQueueNextIdxToFill: ; $1d
    db

w01e:
    db

wRandomVal: ; $1f
    db

w020:
    db

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

wJoy1NewButtonsPressed: ; $26
    db

wJoy2NewButtonsPressed: ; $27
    db

wJoy1ButtonsPressed: ; $28
    db

wJoy2ButtonsPressed: ; $29
    db

; todo: could be multi-purpose, could be wrong
wInGameSubstate: ; $2a
    db

wIsPaused: ; $2b
    db

wCinematicsController: ; $2c
    db

w02d:
    dsb $30-$2d

wGenericStateTimer: ; $30
    dw

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

wChrBanks:
    .db

wChrBankSpr_0000: ; $46
    db

wChrBankSpr_0400: ; $47
    db

wChrBankSpr_0800: ; $48
    db

wChrBankSpr_0c00: ; $49
    db

wChrBankBG_0000: ; $4a
    db

wChrBankBG_0400: ; $4b
    db

wChrBankBG_0800: ; $4c
    db

wChrBankBG_0c00: ; $4d
    db

wChrBankSpr_1400: ; $4e
    db

w04f:
    db

wRoomMetaTilesAddr: ; $50
    dw

w052:
    dsb 4

wCurrScrollXWithinRoom: ; $56
    db

wCurrScrollXRoom: ; $57
    db

w058:
    dsb $d-8

wCurrRoomGroupMetaTileTiles: ; $5d
    dw

wCurrRoomGroupMetaTilePalettes: ; $5f
    dw

wVramQueueDest: ; $61
    dw

w063
    dsb $b-3

.union
    wMenuOptionIdxSelected: ; $6b
        db
.nextu
    wSoundModeCtrlState: ; $6b
        db
.endu

w06c:
    db

wIRQFuncIdx: ; $6d
    db

w06e:
    db

wGameplayScrollX: ; $6f
    db

w070:
    dsb 6

wCurrRoomXQuarter: ; $76
    db

w077:
    dsb $85-$77

; 03 - dagger
wCurrSubweapon: ; $85
    db

w086:
    dsb $98-$86

wCurrRoomEntityDataAddr: ; $98
    dw

w09a:
    dsb $e0-$9a

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
.nextu
    wGenericTempVar: ; $e2
        db
.nextu
    wEnvelopeAddr: ; $e2
        dw
.nextu
    wFreqAdjustFromEnvelope: ; $e2
        db
.endu

wSoundBankTempX: ; $e4
    db

wSoundBankTempY: ; $e5
    db

; used just to check 1st byte when loading sound
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
    dsb 8

wJoy1NewButtonsPressed2: ; $f8
    db

wJoy2NewButtonsPressed2: ; $f9
    db

wJoy1ButtonsPressed2: ; $fa
    db

wJoy2ButtonsPressed2: ; $fb
    db

wScrollY: ; $fc
    db

wScrollX: ; $fd
    db

wPPUMask: ; $fe
    db

wPPUCtrl: ; $ff
    db

wInstrumentsFramesUntilNextByteProcessed:
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
    dsb $67-$54

wPauseSoundPlayed: ; $167
    db

w168:
    db

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
    dsb 3

wCurrInstrumentHwRegOffset: ; $18c
    db

wSoundCounterForGlobalDelayFrames: ; $18d
    db

; all instruments skipped once everytime this many frames passed
wSoundGlobalDelayFrames: ; 18e
    db

; todo: specifically for noise??
wSoundShouldSkipDecreasingDelayBytes: ; $18f
    db

w190:
    dsb 2

wCurrentlyPlayingDMCSoundIdx: ; $192
    db

w193:
    dsb 2

; todo: unknown size
wInstrumentDataBanks: ; $195
    db

w196:
    dsb $200-$196

wStackEnd:
    .db

wOam: ; $200
    instanceof Oam
wOamCont:
    dsb $100-Oam.size

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

w3d2:
    dsb $e1-$d2

wInstrumentEnvelopeMultiplier: ; $3e1
    dsb 3

w3e4:
    dsb $400-$3e4

wOamSpecIdx: ; $400
    dsb NUM_ENTITIES

wEntityBaseY: ; $41c
    dsb NUM_ENTITIES

wEntityBaseX: ; $438
    dsb NUM_ENTITIES

wEntityPaletteOverride: ; $454
    dsb NUM_ENTITIES

w470:
    dsb NUM_ENTITIES

wEntityOamSpecGroupDoubled: ; $48c
    dsb NUM_ENTITIES

; 1 is facing left
wEntityXFlipped: ; $4a8
    dsb NUM_ENTITIES

w4c4:
    dsb $f2-$c4

wEntityHorizSpeed: ; $4f2
    dsb $17

wEntityHorizSubSpeed: ; $509
    dsb $17

w520:
    dsb $4e-$20

; trevor, sypha, grant, alucard 
; todo: also used by other entities
wCurrPlayer: ; $54e
    db

w54f:
    dsb $65-$4f

wPlayerStateDoubled: ; $565
    db

w566:
    dsb $7c-$66

; todo: unknown size
wEntityTimeUntilNextAnimation: ; $57c
    db

w57d:
    dsb $93-$7d

; todo: unknown size
wEntityAnimationIdxes: ; $593
    db

w594:
    dsb $c1-$94

; which step in their AI to perform
; todo: trevor fall switch
wEntityPhase: ; $5c1
    dsb NUM_ENTITIES

w5dd:
    dsb $ef-$dd

wEntityAI_idx: ; $5ef
    dsb NUM_ENTITIES

w60b:
    dsb $a0-$b

wInstrumentEnvelopeLoopToIdx: ; $6a0
    dsb 3

wInstrumentsCurrEnvelopeInUse: ; $6a3
    dsb 3

wInstrumentsEnvelopeIdx: ; $6a6
    dsb 3

w6a9:
    dsb $c8-$a9

; eg ominous laugh, boss scream, flying heads scream
wTimeSpecialDMCSoundPlayed: ; $6c8
    db

w6c9:
    dsb $780-$6c9

wSoundModeSongSelected: ; $780
    db

w781:
    dsb $800-$781

wramEnd:
    .db

.ends

.ifdef EXTENDED_RAM
;=========================================================================================
; Bank 1
;=========================================================================================

.ramsection "RAM 1" bank 1 slot 5
.ifdef WEAPON_SWAPPING
    wTrevorNumSubweapons: ; $6000
        .db

    wTrevorSubweapons: ; $6000
        dsb $10

    wP2NumSubweapons: ; $6010
        .db

    wP2Subweapons: ; $6010
        dsb $10

    wNumWeaponsOffset: ; $6020
        db

    wCurrSubweaponOffset: ; $6021
        db
.endif
.ends

.endif