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
.nextu
    wIdxIntoRoomTransitionBytes: ; $00
        db
.nextu
    wCurrDrawnEntityPaletteOverride: ; $00
        db

    wCurrDrawnEntityBaseY: ; $01
        db
.nextu
    wCurrRoomBGInternalPalettesSpecOffset: ; $00
        db
.nextu
    wCurrStaticLayoutAddr: ; $00
        dw
.nextu
    wCoreLoadingFuncIdx: ; $00
        db
.nextu
    wCurrLargeLayoutAddr: ; $00
        dw
.nextu
    wTempSpawnerXCoord: ; $00
        db

    wTempSpawnerYCoord: ; $01
        db
.nextu
    w000:
        db

    wLivesLeftLowNybble: ; $01
        db
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
.nextu
    wCurrDrawnEntityBaseX: ; $02
        db
        
    wCurrDrawnEntityNumSprites: ; $03
        db
.nextu
    wCurrStaticLayoutTileMask: ; $02
        db
.nextu
    wCurrLargeLayoutCountByte: ; $02
        db
.nextu
    wLivesLeftHighNybble: ; $02
        db
.nextu
    wCurrMetatileTilesAddr: ; $02
        dw
.nextu
    wTempSpawnerAI_Idx: ; $02
        db

    wTempSpawnerObjectIdx: ; $03
        db
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
.nextu
    wCurrOamOffsetToFill: ; $04
        db

    wCurrDrawnEntityIdx: ; $05
        db

    wCurrDrawnEntityIdx_stateC: ; $06
        db

    wNumOamSpotsLeftThisFrame: ; $07
        db
.nextu
    w004_3:
        dsb 3

    wCurrRoomUses2ndBGInternalPalettesSpecsGroup: ; $07
        db
.endu

.union
    wCurrRoomGroupMetatilesAddress: ; $08
        dw

    .union
        wCurrRoomSectionMetatilesAddress: ; $0a
            dw
    .nextu
        wRoomTransitionDataAddr_dx: ; $0a
            dw
    .endu
.nextu
    wCurrRoomGroupMetadataAddr: ; $08
        dw

    wCurrRoomSectionMetadataAddr: ; $0a
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
.nextu
    wCurrEntitySpecGroupAnimationDataAddr: ; $08
        dw
.nextu
    wCurrEntityOamSpecGroupAddr: ; $08
        dw

    wCurrEntityOamSpecIdxAddr: ; $0a
        dw
.nextu
    wRoomGroupInternalPalettesAddr: ; $08
        dw

    .union
        wRoomSectionInternalBGPalettesAddr: ; $0a
            dw
    .nextu
        wRoomSectionInternalSprPalettesAddr: ; $0a
            dw
    .endu
.nextu
    wCurrRoomGroupStairsDataAddr: ; $08
        dw

    wCurrRoomSectionStairsDataAddr: ; $0a
        dw
.nextu
    wMenuCursorXorYoffsetsAddr: ; $08
        dw
.nextu
    wCurrNumToVramQueue: ; $08
        db
.nextu
    wCurrRoomGroupRespawnTimeLeftAddr: ; $08
        dw
.nextu
    wCurrRoomGroupPlayerPosAndScreenAddr: ; $08
        dw

    wCurrRoomSectionPlayerPosAndScreenAddr: ; $0a
        dw
.endu

.union
    wDoubleCurrGroup: ; $0c
        db

    wDoubleCurrSection: ; $0d
        db

    wDoubleCurrRoomIdx: ; $0e
        db
.nextu
    wNumColoursLeftForCurrPalette: ; $0c
        db

    wNumInternalPalettesLeft: ; $0d
        db

    wRoomSectionSprPalettesAddrOffset: ; $0e
        db
.endu

.union
    wRoomSectionChrBanksDataOffset: ; $0f
        db
.nextu
    wCurrEntitySpecGroupDoubled: ; $0f
        db
.endu

.union
    wCurrDrawnEntityCachedAttr: ; $10
        db
.nextu
    wCollisionPointXinScreen: ; $10
        db

    .union
        wCollisionPointYinScreen: ; $11
            db
    .nextu
        wCollisionPointYinScreenDiv16: ; $11
            db
    .endu

    wCollisionPointXvalDiv32: ; $12
        db

    .union
        wCollisionPointAbsoluteXInRoom: ; $13
            db
    .nextu
        wCollisionPointIsInVertRoomStatusBarRegion: ; $13
            db
    .endu

    wCollisionPointAbsoluteXRoom: ; $14
        db
.endu

w015:
    db

wCoreLoadingFuncAddr: ; $16
    dw

wGameState: ; $18
    db

wGameSubstate: ; $19
    db

wGameStateLoopCounter: ; $1a
    db

wIsExecutingNMIVector: ; $1b
    db

wCounterUntilCanShowSprBg: ; $1c
    db

wVramQueueNextIdxToFill: ; $1d
    db

w01e:
    db

wRandomVal: ; $1f
    db

wCurrFrameStartingOamOffset: ; $20
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

; bcd
wCurrLivesLeft: ; $35
    db

wCurrScore: ; $36
    dsb 3

wUsableChars: ; $39
    dsb 2

wCurrCharacterIdx: ; $3b
    db

; health goes up to 40h, single life bars are 4 health each
wPlayerHealth: ; $3c
    db

wBossHealth: ; $3d
    db

w03e:
    db

wBaseIRQFuncIdx: ; $3f
    db

wBaseIRQStatus: ; $40
    db

wBaseIRQCmpVal: ; $41
    db

w042:
    db

wBaseIRQScanlineCmpVal: ; $43
    db

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

wCurrScrollOffsetIntoRoomScreen: ; $56
    db

wCurrScrollRoomScreen: ; $57
    db

w058:
    dsb $d-8

wCurrRoomGroupMetaTileTiles: ; $5d
    dw

wCurrRoomGroupMetaTilePalettes: ; $5f
    dw

wVramQueueDest: ; $61
    dw

wCurrMetatile: ; $63
    db

w064:
    dsb 4

; if bit 7 set, it's a vertical-scrolling room
wCurrRoomMetadataByte: ; $68
    db

wCurrRoomStairsDataAddr: ; $69
    dw

.union
    wMenuOptionIdxSelected: ; $6b
        db
.nextu
    wSoundModeCtrlState: ; $6b
        db
.endu

; 1 to 12 (todo: enemies?)
wCurrEntityIdxBeingProcessed: ; $6c
    db

wIRQFuncIdx: ; $6d
    db

w06e:
    db

wGameplayScrollXWithinRoom: ; $6f
    db

wGameplayScrollXRoom: ; $70
    db

wCurrRoomNumScreens: ; $71
    db

wFrameStartChrBankOverrideIdx: ; $72
    db

wPrevRoomMetadataByte: ; $73
    db

w074:
    dsb 2

wCurrRoomXQuarter: ; $76
    db

w077:
    dsb $e-7

; bcd
wCurrTimeLeft: ; $7e
    dw

w080:
    dsb 4

; bcd
wNumHearts: ; $84
    db

; 03 - dagger
wCurrSubweapon: ; $85
    db

w086:
    dsb $98-$86

wCurrRoomEntityDataAddr: ; $98
    dw

w09a:
    ds $a5-$9a

wCollisionValIsForRightHalfOf32x16block: ; $a5
    db

; b0 - related to stopwatch?

w0a6:
    dsb $b1-$a6

wStaticLayoutBank: ; $b1
    db

w0b2:
    dsb $d0-$b2

wHighestTileToCheckForCollisionsInVertRoom: ; $d0
    db

w0d1:
    ds $e0-$d1

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

wSoundBankTempVar1: ; $e4
    db

wSoundBankTempVar2: ; $e5
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

wInstrumentsFramesUntilNextByteProcessed: ; $100
    dsb 7

wInstrumentsSoundIdxes: ; $107
    dsb 7

; multiplied by time for a note to give actual frames
; until next sound byte processed, ie higher = slower
wInstrumentsSpeedCtrler_todo: ; $10e
    dsb 7

; 115 - set to 1 if not 2nd square channels
; and 1st instrument metadata byte >= $10
; when bit 0 set, data bytes are processed in soundEngine
; otherwise it is processed in soundCommon
; bit 0 - are codes processed in soundEngine?
; bit 3 - is looping
wSoundControlByte: ; $115
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
; when bit 4 set, envelope restarted
w16e:
    dsb 5

wInstrumentFrequencyAdjust: ; $173
    dsb 5

wInstrumentLastFreq_lo: ; $178
    dsb 5

wOctaveIncreasedBy5minusThis: ; $17d
    dsb 6

wInstrumentFrequency_lo: ; $183
    dsb 3

wInstrumentFrequency_hi: ; $186
    dsb 3

wInstrumentEnvelope1Idx: ; $189
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
    dsb $e-2

wCurrEnvelopeByteTimeUntilNext: ; $3de
    dsb 3

wInstrumentEnvelopeMultiplier: ; $3e1
    dsb 3

w3e4:
    dsb $400-$3e4

wOamSpecIdxDoubled: ; $400
    dsb NUM_ENTITIES

wEntityBaseY: ; $41c
    dsb NUM_ENTITIES

wEntityBaseX: ; $438
    dsb NUM_ENTITIES

wEntityPaletteOverride: ; $454
    dsb NUM_ENTITIES

; bit 7 - invisible
wEntityState: ; $470
    dsb NUM_ENTITIES

wEntityOamSpecGroupDoubled: ; $48c
    dsb NUM_ENTITIES

; 1 is facing left
wEntityFacingLeft: ; $4a8
    dsb NUM_ENTITIES

wEntityFractionalX: ; $4c4
    dsb $17

wEntityFractionalY: ; $4db
    dsb $17

wEntityHorizSpeed: ; $4f2
    dsb $17

wEntityHorizSubSpeed: ; $509
    dsb $17

wEntityVertSpeed: ; $520
    dsb $17

wEntityVertSubSpeed: ; $537
    dsb $17

; trevor, sypha, grant, alucard 
wCurrPlayer: ; $54e
    .db

; todo: better name?
wEntityObjectIdxes: ; $54e
    dsb $17

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
wEntityOamSpecIdxBaseOffset: ; $593
    db

w594:
    dsb $aa-$94

wEntityAnimationDefIdxInSpecGroup: ; $5aa
    dsb $17

; which step in their AI to perform
; todo: trevor fall switch
wEntityPhase: ; $5c1
    dsb $17

w5d8:
    dsb $17

wEntityAI_idx: ; $5ef
    dsb $17

wEntityAlarmOrStartYforSinusoidalMovement: ; $606
    dsb $17

wPixelsToWalkToStairs: ; $61d
    db

w61e:
    dsb $33-$1e

wEntityGenericCounter: ; $633
    dsb $17

w64a:
    dsb $a0-$4a

wInstrumentEnvelopeLoopToIdx: ; $6a0
    dsb 3

wInstrumentsCurrEnvelopeInUse: ; $6a3
    dsb 3

wInstrumentsEnvelopeIdx: ; $6a6
    dsb 3

wInstrumentsCurrEnvelopeLoops: ; $6a9
    dsb 3

w6ac:
    dsb $c8-$ac

; eg ominous laugh, boss scream, flying heads scream
wTimeSpecialDMCSoundPlayed: ; $6c8
    db

w6c9:
    dsb $e0-$c9

wCurrCollisionValues: ; $6e0
    dsb $90

wCurrChrBanksTileCollisionTypeOffsets: ; $770
    dsb $10

wSoundModeSongSelected: ; $780
    db

w781:
    dsb $c2-$81

wSpawnerID: ; $7c2
    dsb NUM_SPAWNERS

wSpawner_var7c8: ; $7c8
    dsb NUM_SPAWNERS

wSpawner_var7ce: ; $7ce
    dsb NUM_SPAWNERS

wSpawnerYCoord: ; $7d4
    dsb NUM_SPAWNERS

wSpawnerXCoord: ; $7da
    dsb NUM_SPAWNERS

wSpawnerOffScreenStatus: ; $7e0
    dsb NUM_SPAWNERS

wSpawner_var7e6: ; $7e6
    dsb NUM_SPAWNERS

w7ec:
    dsb $f6-$ec

wHardMode: ; $7f6
    db

w7f7:
    dsb $800-$7f7

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

.ifdef MID_STAGE_PALETTE_SWAP
    wBackupInternalBGPalettes: ; $6022
        dsb 9

    wDimmerInternalBGPalettes: ; $602b
        dsb 9

    wBrighterInternalBGPalettes: ; $6034
        dsb 9
.endif

.ifdef SCREEN_SHAKE
    wOrigScreenShakeX: ; $603d
        db

    wIsShaking: ; $603e
        db
.endif
.ends

.endif