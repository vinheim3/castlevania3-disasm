	.db $9e

B31_0001:		dex				; ca 
B31_0002:		bne B31_0001 ; d0 fd

B31_0004:		rts				; 60 


B31_0005:		ldx #$0f		; a2 0f
B31_0007:		dex				; ca 
B31_0008:		bne B31_0007 ; d0 fd

B31_000a:		rts				; 60 


resetVector:
; usual init
	cld
	sei

; hide all
	lda #$00
	sta PPUCTRL.w
	sta PPUMASK.w

; init stack
	ldx #$ff
	txs

; wait 2 vblanks
	waitForVBlank
	waitForVBlank

	jsr initSndChnAndFrameCtr

; clear wram, X = 0
	inx
	txa
	sta wPointerBase
	sta wPointerBase+1
	ldy #$00
	ldx #>wramEnd
-	sta (wPointerBase), y
	iny
	bne -
	inc wPointerBase+1
	cpx wPointerBase+1
	bne -

; init regs
	jsr initMMC5Regs
	jsr setBank_c000_toRom1eh
	jsr initSound
	jsr initDisplayRegs
	cli
@mainLoop:
; random val += game state loop ctr+1
	inc wRandomVal
	clc
	lda wRandomVal
	adc wGameStateLoopCounter
	sta wRandomVal
	jmp @mainLoop


nmiVector:
	pha
	txa
	pha
	tya
	pha
; reset latch and udpate nt mapping
	lda PPUSTATUS.w
	lda wNametableMapping
	sta NAMETABLE_MAPPING.w

B31_0060:		ldy $1b			; a4 1b
B31_0062:		bne B31_00be ; d0 5a

B31_0064:		inc $1b			; e6 1b

; oam dma transfer
	lda #$00
	sta OAMADDR.w
	ldy #>wOam
	sty OAMDMA.w

B31_0070:		jsr func_1f_0182		; 20 82 e1
B31_0073:		jsr processVramQueue_todo		; 20 27 ed
B31_0076:		lda wPPUMask			; a5 fe
B31_0078:		ldx $1c			; a6 1c
B31_007a:		beq B31_0082 ; f0 06

B31_007c:		dec $1c			; c6 1c
B31_007e:		beq B31_0082 ; f0 02

B31_0080:		and #$e7		; 29 e7
B31_0082:		sta PPUMASK.w		; 8d 01 20

B31_0085:		jsr setBaseIRQDetails_todo		; 20 03 e1
B31_0088:		jsr resetPPUAddr_updateScrollAndCtrl		; 20 47 e1
B31_008b:		jsr func_1f_02ec		; 20 ec e2
B31_008e:		lda $75			; a5 75
B31_0090:		bpl B31_0098 ; 10 06

B31_0092:		lsr a			; 4a
B31_0093:		lsr a			; 4a
B31_0094:		lsr a			; 4a
B31_0095:		lsr a			; 4a
B31_0096:		sta $75			; 85 75

B31_0098:		lda $56			; a5 56
B31_009a:		sta wGameplayScrollX			; 85 6f
B31_009c:		lda $57			; a5 57
B31_009e:		sta $70			; 85 70
	jsr updateSound
	jsr pollInputs
	jsr processGameState
	jsr_8000Func func_1a_0001
B31_00b1:		lda #$00		; a9 00
B31_00b3:		jsr storeByteInVramQueue		; 20 14 ed
B31_00b6:		sta $1b			; 85 1b

vectorEnd:
	pla
	tay
	pla
	tax
	pla
	rti

B31_00be:		jsr setBaseIRQDetails_todo		; 20 03 e1
B31_00c1:		jsr resetPPUAddr_updateScrollAndCtrl		; 20 47 e1
B31_00c4:		jsr func_1f_02ec		; 20 ec e2
B31_00c7:		lda $75			; a5 75
B31_00c9:		bpl B31_00d1 ; 10 06

B31_00cb:		lsr a			; 4a
B31_00cc:		lsr a			; 4a
B31_00cd:		lsr a			; 4a
B31_00ce:		lsr a			; 4a
B31_00cf:		sta $75			; 85 75

B31_00d1:		lda $56			; a5 56
B31_00d3:		sta $6f			; 85 6f
B31_00d5:		lda $57			; a5 57
B31_00d7:		sta $70			; 85 70
B31_00d9:		jsr func_1f_023a		; 20 3a e2
B31_00dc:		jmp vectorEnd		; 4c b8 e0


initMMC5Regs:
	lda #$00

; disabled
	sta PCM_MODE.w

; use as extra nametable (unused)
	sta EXTENDED_RAM_MODE.w

; start with vertical mirroring
	lda #NT_VERTICAL_MIRROR
	sta wNametableMapping
	sta NAMETABLE_MAPPING.w

	lda #$00

; disable vertical split mode
	sta VERTICAL_SPLIT_MODE.w

; default tile/colour (unused)
	sta FILL_MODE_TILE.w
	sta FILL_MODE_COLOUR.w

; 8000 - 16kb, c000/e000 - 8kb
	ldy #PRG_MODE_16_8_8
	sty PRG_MODE.w

; 1kb CHR pages
	iny
	sty CHR_MODE.w
	rts


setBaseIRQDetails_todo:
	lda SCANLINE_IRQ_STATUS.w

	lda wBaseIRQStatus
	sta SCANLINE_IRQ_STATUS.w

	lda wBaseIRQCmpVal
	sta SCANLINE_CMP_VALUE.w

	lda wBaseIRQFuncIdx
	sta wIRQFuncIdx

B31_0114:		lda $42			; a5 42
B31_0116:		sta $89			; 85 89
B31_0118:		cli				; 58 
B31_0119:		rts				; 60 


irqVector:
	pha
	txa
	pha
	tya
	pha

; reset latch and set bank
	lda SCANLINE_IRQ_STATUS.w
	lda #PRG_ROM_SWITCH|:irqFuncs
	jsr setLowerBank

; if bit 7 set, invalid irq func idx
	lda wIRQFuncIdx
	asl a
	bcs irqFunc_end

; jumptable
	tay
	lda irqFuncs.w, y
	sta wIRQFuncAddr
	lda irqFuncs.w+1, y
	sta wIRQFuncAddr+1
	jmp (wIRQFuncAddr)


irqFunc_end:
	lda #$00
	sta SCANLINE_IRQ_STATUS.w

	lda wPrgBank_8000
	jsr setAndSaveLowerBank
	jmp vectorEnd


resetPPUAddr_updateScrollAndCtrl:
	lda PPUSTATUS.w
	lda #>NAMETABLE0
	sta PPUADDR.w
	lda #<NAMETABLE0
	sta PPUADDR.w

	lda PPUSTATUS.w
	lda wScrollX
	sta PPUSCROLL.w
	lda wScrollY
	sta PPUSCROLL.w

	lda wPPUCtrl
	sta PPUCTRL.w
	rts


initSndChnAndFrameCtr:
; disable dmc, enable the other channels
	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w

; 5-step sequence, inhibit irq
	lda #$c0
	sta APU_FRAME_CTR.w
	rts


initDisplayRegs:
B31_0172:		lda #$b0		; a9 b0
B31_0174:		sta wPPUCtrl			; 85 ff
B31_0176:		sta PPUCTRL.w		; 8d 00 20
B31_0179:		lda #$1e		; a9 1e
B31_017b:		sta wPPUMask			; 85 fe
B31_017d:		lda #$05		; a9 05
B31_017f:		sta $1c			; 85 1c
B31_0181:		rts				; 60 


func_1f_0182:
B31_0182:		lda wPPUCtrl			; a5 ff
B31_0184:		and #$7f		; 29 7f
B31_0186:		sta PPUCTRL.w		; 8d 00 20
B31_0189:		lda #$00		; a9 00
B31_018b:		sta PPUADDR.w		; 8d 06 20
B31_018e:		sta PPUADDR.w		; 8d 06 20
B31_0191:		lda wPPUMask			; a5 fe
B31_0193:		and #$e7		; 29 e7
B31_0195:		sta PPUMASK.w		; 8d 01 20
B31_0198:		rts				; 60 


; start of bank 18 funcs (sound engine?)
B31_0199:		lda #PRG_ROM_SWITCH|:func_18_07e2		; a9 98
B31_019b:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_019e:		jsr func_18_07e2		; 20 e2 87
B31_01a1:		lda wPrgBankBkup_8000			; a5 22
B31_01a3:		jmp setAndSaveLowerBank		; 4c e6 e2


setAndSaveLowerBank18h:
	lda #SOUND_ENGINE_BANK
	jmp setAndSaveLowerBank


playDMCSound:
	pha
	lda #PRG_ROM_SWITCH|:b18_playDMCSound
	jsr setAndSaveLowerBank
	pla
	jmp b18_playDMCSound


getCurrInstrument1stDataByte:
	lda wInstrumentDataBanks.w, x
	jsr setAndSaveLowerBank
	lda (wTempCurrInstrumentDataAddr), y

	pha
	lda #SOUND_ENGINE_BANK
	jsr setAndSaveLowerBank
	pla

	rts


processNextSoundByteAtInstrumentsDataBank:
	lda wInstrumentDataBanks.w, x
	jsr setAndSaveLowerBank
	jmp b18_soundCommon.processNextSoundByte


func_1f_01ce:
B31_01ce:		pha				; 48 
B31_01cf:		lda #PRG_ROM_SWITCH|:func_18_0b91		; a9 98
B31_01d1:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_01d4:		pla				; 68 
B31_01d5:		jsr func_18_0b91		; 20 91 8b
B31_01d8:		lda wInstrumentDataBanks.w, x	; bd 95 01
B31_01db:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_01de:
	jsr_8000Func func_18_0b55
B31_01e6:		lda wInstrumentDataBanks.w, x	; bd 95 01
B31_01e9:		jmp setAndSaveLowerBank		; 4c e6 e2


processNextEnvelopeByte:
	jsr_8000Func b18_processNextEnvelopeByte
	lda wInstrumentDataBanks.w, x
	jmp setAndSaveLowerBank


func_1f_01fa:
B31_01fa:		pha				; 48 
B31_01fb:		lda #PRG_ROM_SWITCH|:func_18_0dc1		; a9 98
B31_01fd:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0200:		pla				; 68 
B31_0201:		jmp func_18_0dc1		; 4c c1 8d


func_1f_0204:
B31_0204:		lda #PRG_ROM_SWITCH|:func_18_0dde		; a9 98
B31_0206:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0209:		jmp func_18_0dde		; 4c de 8d


func_1f_020c:
	jsr_8000Func func_18_0986
B31_0214:		ldx wCurrInstrumentIdx			; a6 ee
B31_0216:		lda wInstrumentDataBanks.w, x	; bd 95 01
B31_0219:		jmp setAndSaveLowerBank		; 4c e6 e2


; unused?
setAndSaveInstrumentsDataBank:
	lda wInstrumentDataBanks.w, x
	jmp setAndSaveLowerBank


; unused?
setLowerBankTo18h:
	lda #PRG_ROM_SWITCH|SOUND_ENGINE_BANK
	jmp setAndSaveLowerBank


initSound:
B31_0227:		lda #$ff		; a9 ff
B31_0229:		sta wIsExecutingSoundFunc			; 85 24

B31_022b:		lda wPrgBank_8000			; a5 21
B31_022d:		sta wPrgBankBkup2_8000			; 85 23
	jsr_8000Func b18_initSound
B31_0237:		jmp B31_0271		; 4c 71 e2


func_1f_023a:
B31_023a:		lda wIsExecutingSoundFunc			; a5 24
B31_023c:		bne B31_024d ; @done

B31_023e:		lda wPrgBank_8000			; a5 21
B31_0240:		pha				; 48 
	jsr_8000Func b18_updateSound
B31_0249:		pla				; 68 
B31_024a:		jmp setAndSaveLowerBank		; 4c e6 e2

B31_024d:		rts				; 60 


updateSound:
	lda #$ff
	sta wIsExecutingSoundFunc

	jsr_8000Func b18_updateSound
	
	lda #$00
	sta wIsExecutingSoundFunc
	rts


playSound:
B31_025f:		pha				; 48 

B31_0260:		lda #$ff		; a9 ff
B31_0262:		sta wIsExecutingSoundFunc			; 85 24

B31_0264:		lda wPrgBank_8000			; a5 21
B31_0266:		sta wPrgBankBkup2_8000			; 85 23
B31_0268:		lda #PRG_ROM_SWITCH|:b18_playSound		; a9 98
B31_026a:		jsr setAndSaveLowerBank		; 20 e6 e2

B31_026d:		pla				; 68 
B31_026e:		jsr b18_playSound		; 20 37 88

B31_0271:		lda #$00		; a9 00
B31_0273:		sta wIsExecutingSoundFunc			; 85 24
B31_0275:		lda wPrgBankBkup2_8000			; a5 23
B31_0277:		jmp setAndSaveLowerBank		; 4c e6 e2
; end of sound engine funcs


pollInputs:
; poll inputs twice
	ldx #wTempJoy1ButtonsPressedPass1
	jsr pollInputs_noBounceCheck

	ldx #wTempJoy1ButtonsPressedPass2
	jsr pollInputs_noBounceCheck

; bounce check
	lda wTempJoy1ButtonsPressedPass1
	cmp wTempJoy1ButtonsPressedPass2
	bne @bounceFail

	lda wTempJoy2ButtonsPressedPass1
	cmp wTempJoy2ButtonsPressedPass2
	bne @bounceFail

	ldx #$00
	jsr @setButtonVars
	inx

@setButtonVars:
	lda wTempJoy1ButtonsPressedPass1, x
	tay
	
; new buttons is diff that exist in this frame
	eor wJoy1ButtonsPressed2, x
	and wTempJoy1ButtonsPressedPass1, x
	sta wJoy1NewButtonsPressed, x
	sta wJoy1NewButtonsPressed2, x

	sty wJoy1ButtonsPressed, x
	sty wJoy1ButtonsPressed2, x
	rts

@bounceFail:
	lda #$00
	sta wJoy1NewButtonsPressed
	sta wJoy1NewButtonsPressed2
	sta wJoy2NewButtonsPressed
	sta wJoy2NewButtonsPressed2
	rts


pollInputs_noBounceCheck:
; ready input regs
	ldy #$01
	sty JOY1.w
	dey
	sty JOY1.w

	ldy #$08
@nextButton:
; button press check in low 2 bits
	lda JOY1.w
	sta wJoy1IsButtonPressed
	lsr a
	ora wJoy1IsButtonPressed
	lsr a
	rol wTempJoy1ButtonsPressedPass1, x

	lda JOY2.w
	sta wJoy2IsButtonPressed
	lsr a
	ora wJoy2IsButtonPressed
	lsr a
	rol wTempJoy2ButtonsPressedPass1, x
	dey
	bne @nextButton

	rts


setBank_c000_toRom07h:
	lda #PRG_ROM_SWITCH|$07
	bne +

setBank_c000_toRom1eh:
	lda #PRG_ROM_SWITCH|$1e
+	sta PRG_BANK_c000.w
	rts


saveAndSetNewLowerBank:
	pha
	lda wPrgBank_8000
	sta wPrgBankBkup_8000
	pla

setAndSaveLowerBank:
	sta wPrgBank_8000

setLowerBank:
	sta PRG_BANK_8000.w
	rts


func_1f_02ec:
B31_02ec:		ldy $72			; a4 72
B31_02ee:		beq B31_02fc ; f0 0c

B31_02f0:		dey				; 88 
B31_02f1:		beq B31_0305 ; f0 12

B31_02f3:		dey				; 88 
B31_02f4:		bne B31_0302 ; d0 0c

; 72 >= 2
B31_02f6:		jsr setClearedChrBank_800_c00		; 20 19 e3
B31_02f9:		jmp B31_0305		; 4c 05 e3

; 72 == 0
B31_02fc:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B31_02ff:		jmp chrSwitchAllMirrored		; 4c 5d e3

; 72 == 1
B31_0302:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3

; 72 == 1
B31_0305:		lda #$41		; a9 41
B31_0307:		sta CHR_BANK_0400_1400.w		; 8d 29 51
B31_030a:		lda #$42		; a9 42
B31_030c:		sta CHR_BANK_1800.w		; 8d 26 51
B31_030f:		sta CHR_BANK_0800_1800.w		; 8d 2a 51
B31_0312:		rts				; 60 


setClearedChrBank_0_to_c00:
	jsr setClearedChrBank_800_c00
	jmp setClearedChrBank_0_400


setClearedChrBank_800_c00:
	lda #CB_EMPTY
	sta CHR_BANK_0800.w
	sta CHR_BANK_0c00.w
	rts


setClearedChrBank_0_400:
	lda #CB_EMPTY
	sta CHR_BANK_0000.w
	lda #CB_EMPTY
	sta CHR_BANK_0400.w
	rts


setClearedPatternTable:
	lda #CB_EMPTY
	sta CHR_BANK_0000_1000.w
	sta CHR_BANK_0400_1400.w
	sta CHR_BANK_0800_1800.w
	sta CHR_BANK_0c00_1c00.w
	rts


chrSwitch_0_to_c00_1400:
	jsr chrSwitch_800_c00_1400
	jmp chrSwitch_0_400


chrSwitch_800_c00_1400:
	lda wChrBankSpr_0800
	sta CHR_BANK_0800.w
	lda wChrBankSpr_0c00
	sta CHR_BANK_0c00.w
	lda wChrBankSpr_1400
	sta CHR_BANK_1400.w
	rts


chrSwitch_0_400:
	lda wChrBankSpr_0000
	sta CHR_BANK_0000.w
	lda wChrBankSpr_0400
	sta CHR_BANK_0400.w
	rts


chrSwitchAllMirrored:
	lda wChrBankBG_0000
	sta CHR_BANK_1000.w
	sta CHR_BANK_0000_1000.w

	lda wChrBankBG_0c00
	sta CHR_BANK_1c00.w
	sta CHR_BANK_0c00_1c00.w

chrSwitchMirrored_400_800:
	lda wChrBankBG_0400
	sta CHR_BANK_0400_1400.w

	lda wChrBankBG_0800
	sta CHR_BANK_1800.w
	sta CHR_BANK_0800_1800.w
	rts


processGameState:
	inc wGameStateLoopCounter
	lda wGameState
	jsr jumpTablePreserveY

	.dw gameState0_intro
	.dw gameState1_stub
	.dw gameState2
	.dw gameState3
	.dw gameState4_inGame
	.dw gameState5
	.dw gameState6
	.dw gameState7
	.dw gameState8
	.dw gameState9_introCutscene ; todo: is it other cutscenes?
	.dw gameStateA_namePwInput
	.dw gameStateB
	.dw gameStateC
	.dw gameStateD
	.dw gameStateE
	.dw gameStateF_soundMode

gameState0_intro:
	ldx wGameSubstate
	bne B31_03b3 ; @gtSubstate0

; substate0 - init
B31_03a6:		stx $1e			; 86 1e
B31_03a8:		jsr func_1f_0824		; 20 24 e8
B31_03ab:		lda #$00		; a9 00
B31_03ad:		sta $07ec		; 8d ec 07
B31_03b0:		inc wGameSubstate			; e6 19
B31_03b2:		rts				; 60 

@gtSubstate0:
B31_03b3:		dex				; ca 
B31_03b4:		bne B31_03c7 ; @gtSubstate1

; substate 1 - intro scrolling screen
	jsr_a000Func func_03_07c3
B31_03be:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_03c0:		and #PADF_SELECT|PADF_START		; 29 30
B31_03c2:		beq B31_03c6 ; f0 02

B31_03c4:		inc wGameSubstate			; e6 19
B31_03c6:		rts				; 60 

@gtSubstate1:
B31_03c7:		dex				; ca 
B31_03c8:		bne B31_03e7 ; d0 1d

; substate 2 - between scrolling and start menu 1
B31_03ca:		jsr func_1f_0824		; 20 24 e8
B31_03cd:		ldy #$00		; a0 00
B31_03cf:		sty wChrBankSpr_0000			; 84 46
B31_03d1:		iny				; c8 
B31_03d2:		sty wChrBankSpr_0400			; 84 47
B31_03d4:		lda #$41		; a9 41
B31_03d6:		sta wChrBankBG_0000			; 85 4a
B31_03d8:		ldy #$70		; a0 70
B31_03da:		sty wChrBankBG_0400			; 84 4b
B31_03dc:		iny				; c8 
B31_03dd:		sty wChrBankBG_0800			; 84 4c
B31_03df:		iny				; c8 
B31_03e0:		sty wChrBankBG_0c00			; 84 4d
B31_03e2:		inc wGameSubstate			; e6 19
B31_03e4:		jmp setNametableVerticalMirroring		; 4c 5f f7

B31_03e7:		dex				; ca 
B31_03e8:		bne B31_03fc ; d0 12

; substate 3 - between scrolling and start menu 2
B31_03ea:		jsr func_1f_0bb9		; 20 b9 eb
B31_03ed:		jsr setGenericTimerTo100h		; 20 8a e5
B31_03f0:		inc wGameSubstate			; e6 19
B31_03f2:		rts				; 60 

B31_03f3:		lda #$00		; a9 00
B31_03f5:		beq B31_03f9 ; f0 02

B31_03f7:		lda #GS_SOUND_MODE		; a9 0f
B31_03f9:		jmp setNewGameState		; 4c 74 e5

B31_03fc:		dex				; ca 
B31_03fd:		bne B31_0422 ; d0 23

; substate 4 - start/password screen
B31_03ff:		jsr decGenericTimer		; 20 79 e5
B31_0402:		beq B31_03f3 ; f0 ef

	jsr_8000Func func_00_0b55

B31_040c:		jsr func_1f_055b		; 20 5b e5
B31_040f:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_0411:		and #PADF_START		; 29 10
B31_0413:		beq B31_0421 ; f0 0c

; 
B31_0415:		lda wJoy1ButtonsPressed			; a5 28
B31_0417:		and #PADF_A|PADF_B		; 29 c0
B31_0419:		bne B31_03f7 ; d0 dc

B31_041b:		lda #$80		; a9 80
B31_041d:		sta $30			; 85 30
B31_041f:		inc wGameSubstate			; e6 19

gameState1_stub:
B31_0421:		rts				; 60 

; substate 5 - after selecting start/password
B31_0422:		ldy wMenuOptionIdxSelected			; a4 6b
B31_0424:		lda $30			; a5 30
B31_0426:		and #$08		; 29 08
B31_0428:		beq B31_0431 ; f0 07

B31_042a:		lda data_1f_0440.w, y	; b9 40 e4
B31_042d:		ora #$80		; 09 80
B31_042f:		bne B31_0434 ; d0 03

B31_0431:		lda data_1f_0440.w, y	; b9 40 e4
B31_0434:		jsr func_1f_0ce9		; 20 e9 ec
B31_0437:		dec $30			; c6 30
B31_0439:		bne B31_0421 ; d0 e6

B31_043b:		lda #$02		; a9 02
B31_043d:		jmp setNewGameState		; 4c 74 e5

data_1f_0440:
	.db $00 $26


gameState2:
	lda $6b
B31_0444:		pha				; 48 
B31_0445:		jsr func_1f_0824		; 20 24 e8
B31_0448:		lda #$00		; a9 00
B31_044a:		sta $1e			; 85 1e
B31_044c:		pla				; 68 
B31_044d:		sta $6b			; 85 6b
B31_044f:		lda #$0a		; a9 0a
B31_0451:		jmp setNewGameState		; 4c 74 e5


gameState3:
B31_0454:		lda #$00		; a9 00
B31_0456:		sta $2a			; 85 2a
B31_0458:		jsr $e828		; 20 28 e8
B31_045b:		jsr $e782		; 20 82 e7
B31_045e:		jsr $e68f		; 20 8f e6
B31_0461:		jmp incToNewGameState		; 4c 6d e5


gameState5:
B31_0464:		lda #$02		; a9 02
B31_0466:		sta $1c			; 85 1c
B31_0468:		ldy wGameSubstate			; a4 19
B31_046a:		bne B31_046f ; d0 03

B31_046c:		inc wGameSubstate			; e6 19
B31_046e:		rts				; 60 


B31_046f:		dey				; 88 
B31_0470:		bne B31_049a ; d0 28

B31_0472:		jsr $e819		; 20 19 e8
B31_0475:		lda $32			; a5 32
B31_0477:		cmp #$0e		; c9 0e
B31_0479:		bne B31_0485 ; d0 0a

B31_047b:		lda $33			; a5 33
B31_047d:		cmp #$02		; c9 02
B31_047f:		bne B31_0485 ; d0 04

B31_0481:		lda #$01		; a9 01
B31_0483:		sta $33			; 85 33
B31_0485:		jsr $e68f		; 20 8f e6
B31_0488:		jsr func_1f_0bfd		; 20 fd eb
B31_048b:		lda $35			; a5 35
B31_048d:		beq B31_04b1 ; f0 22

	jsr_8000Func func_1c_096e
B31_0497:		inc wGameSubstate			; e6 19
B31_0499:		rts				; 60 


B31_049a:		dey				; 88 
B31_049b:		bne B31_04a4 ; d0 07

B31_049d:		lda #$01		; a9 01
B31_049f:		sta wGenericStateTimer			; 85 30
B31_04a1:		inc wGameSubstate			; e6 19
B31_04a3:		rts				; 60 


B31_04a4:		dec wGenericStateTimer			; c6 30
B31_04a6:		bne B31_04a3 ; d0 fb

B31_04a8:		lda #$00		; a9 00
B31_04aa:		sta $2a			; 85 2a
B31_04ac:		lda #$04		; a9 04
B31_04ae:		sta $18			; 85 18
B31_04b0:		rts				; 60 


B31_04b1:		lda #$06		; a9 06
B31_04b3:		jmp setNewGameState		; 4c 74 e5


gameState6:
B31_04b6:		ldy wGameSubstate			; a4 19
B31_04b8:		bne B31_04f0 ; d0 36

B31_04ba:		lda #$65		; a9 65
B31_04bc:		jsr playSound		; 20 5f e2

	jsr_8000Func func_00_0fb0

B31_04c7:		ldy #$00		; a0 00
B31_04c9:		sty wChrBankSpr_0000			; 84 46
B31_04cb:		iny				; c8 
B31_04cc:		sty wChrBankSpr_0400			; 84 47
B31_04ce:		lda #$40		; a9 40
B31_04d0:		sta wChrBankBG_0000			; 85 4a
B31_04d2:		lda #$41		; a9 41
B31_04d4:		sta wChrBankBG_0400			; 85 4b
B31_04d6:		lda #$43		; a9 43
B31_04d8:		sta wChrBankBG_0c00			; 85 4d
B31_04da:		lda #$03		; a9 03
B31_04dc:		jsr func_1f_0ce9		; 20 e9 ec
B31_04df:		lda #$27		; a9 27
B31_04e1:		jsr func_1f_0ce9		; 20 e9 ec
B31_04e4:		lda #$28		; a9 28
B31_04e6:		jsr func_1f_0ce9		; 20 e9 ec
B31_04e9:		lda #$00		; a9 00
B31_04eb:		sta $6b			; 85 6b
B31_04ed:		inc wGameSubstate			; e6 19
B31_04ef:		rts				; 60 


B31_04f0:		lda #$80		; a9 80
B31_04f2:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_04f5:		jsr $8b29		; 20 29 8b
B31_04f8:		jsr func_1f_055b		; 20 5b e5
B31_04fb:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_04fd:		and #PADF_START		; 29 10
B31_04ff:		beq B31_04ef ; f0 ee

B31_0501:		lda $6b			; a5 6b
B31_0503:		beq B31_050a ; f0 05

B31_0505:		lda #$0b		; a9 0b
B31_0507:		jmp setNewGameState		; 4c 74 e5


gameStateE:
B31_050a:		jsr $e819		; 20 19 e8
B31_050d:		lda #$80		; a9 80
B31_050f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0512:		jsr $8f80		; 20 80 8f
B31_0515:		jsr $e68f		; 20 8f e6
B31_0518:		jmp $e4a8		; 4c a8 e4


gameState8:
B31_051b:		lda #$80		; a9 80
B31_051d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0520:		jmp $a5b7		; 4c b7 a5


gameState9_introCutscene:
B31_0523:		lda #$82		; a9 82
B31_0525:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0528:		jmp func_03_060c		; 4c 0c a6


gameStateC:
B31_052b:		lda #$94		; a9 94
B31_052d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0530:		jmp $b0ea		; 4c ea b0


gameStateD:
B31_0533:		lda #$94		; a9 94
B31_0535:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0538:		jmp $b631		; 4c 31 b6


gameStateF_soundMode:
	jmp_a000Func gameStateF_soundMode_body


gameState7:
B31_0543:		lda #$80		; a9 80
B31_0545:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0548:		jmp $8a1c		; 4c 1c 8a


gameStateA_namePwInput:
	jmp_a000Func gameStateA_namePwInput_body


gameStateB:
B31_0553:		lda #$82		; a9 82
B31_0555:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0558:		jmp $b5a2		; 4c a2 b5


func_1f_055b:
B31_055b:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_055d:		and #PADF_SELECT		; 29 20
B31_055f:		beq B31_056c ; f0 0b

B31_0561:		lda #$72		; a9 72
B31_0563:		jsr playSound		; 20 5f e2
B31_0566:		lda $6b			; a5 6b
B31_0568:		eor #$01		; 49 01
B31_056a:		sta $6b			; 85 6b
B31_056c:		rts				; 60 


incToNewGameState:
	inc wGameState

resetGameSubstate:
	lda #$00
	sta wGameSubstate
	rts


setNewGameState:
	sta wGameState
	jmp resetGameSubstate


decGenericTimer:
	lda wGenericStateTimer
	ora wGenericStateTimer+1
	beq @done

; if timer non-0, and low byte 0, dec high byte, then low byet
	lda wGenericStateTimer
	bne +

	dec wGenericStateTimer+1
+	dec wGenericStateTimer
	lda #$01
@done:
	rts


setGenericTimerTo100h:
	lda #<$0100
	ldy #>$0100
	sta wGenericStateTimer
	sty wGenericStateTimer+1
	rts


B31_0593:		lda #$80		; a9 80
B31_0595:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0598:		jsr $9005		; 20 05 90
B31_059b:		lda #$82		; a9 82
B31_059d:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_05a0:		pha				; 48 
B31_05a1:		lda #$8a		; a9 8a
B31_05a3:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05a6:		pla				; 68 
B31_05a7:		jsr $beb6		; 20 b6 be
B31_05aa:		lda #$92		; a9 92
B31_05ac:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_05af:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_05b2:		pha				; 48 
B31_05b3:		lda #$9c		; a9 9c
B31_05b5:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05b8:		jsr $8c58		; 20 58 8c
B31_05bb:		pla				; 68 
B31_05bc:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_05bf:
B31_05bf:		sty $42			; 84 42

func_1f_05c1:
B31_05c1:		sta wBaseIRQFuncIdx			; 85 3f
B31_05c3:		stx wBaseIRQCmpVal			; 86 41
B31_05c5:		lda #$80		; a9 80
B31_05c7:		sta wBaseIRQStatus			; 85 40
B31_05c9:		rts				; 60 


B31_05ca:		lda #$00		; a9 00
B31_05cc:		beq B31_05d0 ; f0 02

set_2c_to_01h:
B31_05ce:		lda #$01		; a9 01
B31_05d0:		sta $2c			; 85 2c
B31_05d2:		rts				; 60 


func_1f_05d3:
B31_05d3:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_05d6:		pha				; 48 
B31_05d7:		lda #$80		; a9 80
B31_05d9:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05dc:		jsr func_00_052c		; 20 2c 85
B31_05df:		jsr $8001		; 20 01 80
B31_05e2:		jsr getCurrRoomsChrBanks		; 20 13 80
B31_05e5:		jsr $83ee		; 20 ee 83
B31_05e8:		pla				; 68 
B31_05e9:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_05ec:
	jsr_8000Func func_14_0047
B31_05f4:		lda #$96		; a9 96
B31_05f6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05f9:		jsr func_1f_1de3		; 20 e3 fd
	jmp_8000Func func_04_1d30


B31_0604:		lda #$90		; a9 90
B31_0606:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0609:		jsr $be21		; 20 21 be
B31_060c:		lda #$92		; a9 92
B31_060e:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0611:		lda #$88		; a9 88
B31_0613:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0616:		jsr $b9ac		; 20 ac b9
B31_0619:		lda #$96		; a9 96
B31_061b:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_061e:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0621:		pha				; 48 
B31_0622:		lda #$94		; a9 94
B31_0624:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0627:		jsr $8f7d		; 20 7d 8f
B31_062a:		jmp $e63d		; 4c 3d e6


B31_062d:		lda #$92		; a9 92
B31_062f:		sta $0e			; 85 0e
B31_0631:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0634:		pha				; 48 
B31_0635:		lda $0e			; a5 0e
B31_0637:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_063a:		jsr $e653		; 20 53 e6
B31_063d:		pla				; 68 
B31_063e:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0641:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0644:		pha				; 48 
B31_0645:		lda #$92		; a9 92
B31_0647:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_064a:		lda $0e			; a5 0e
B31_064c:		jsr $e653		; 20 53 e6
B31_064f:		pla				; 68 
B31_0650:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0653:	.db $6c $00 $00
B31_0656:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0659:		pha				; 48 
B31_065a:		lda #$9c		; a9 9c
B31_065c:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_065f:		jsr $89a3		; 20 a3 89
B31_0662:		pla				; 68 
B31_0663:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0666:		lda #$44		; a9 44
B31_0668:		sta wNametableMapping			; 85 25
B31_066a:		lda #$00		; a9 00
B31_066c:		sta wIRQFuncIdx			; 85 6d
B31_066e:		sta $40			; 85 40
B31_0670:		sta $72			; 85 72
B31_0672:		lda #$80		; a9 80
B31_0674:		sta $3f			; 85 3f
B31_0676:		rts				; 60 


B31_0677:		lda #$88		; a9 88
B31_0679:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_067c:		jsr $b1fb		; 20 fb b1

setBackup8000PrgBank:
B31_067f:		lda wPrgBankBkup_8000			; a5 22
B31_0681:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0684:		lda #$88		; a9 88
B31_0686:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0689:		jsr $b348		; 20 48 b3
B31_068c:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_068f:		lda #$88		; a9 88
B31_0691:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0694:		jsr $b354		; 20 54 b3
B31_0697:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_069a:		lda #$8e		; a9 8e
B31_069c:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_069f:		jsr $b4ae		; 20 ae b4
B31_06a2:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_06a5:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_06a8:		pha				; 48 
B31_06a9:		lda #$88		; a9 88
B31_06ab:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_06ae:		jsr $ba96		; 20 96 ba
B31_06b1:		pla				; 68 
B31_06b2:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_06b5:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_06b8:		pha				; 48 
B31_06b9:		lda #$92		; a9 92
B31_06bb:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_06be:		jsr $ab98		; 20 98 ab
B31_06c1:		pla				; 68 
B31_06c2:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_06c5:		lda $21			; a5 21
B31_06c7:		pha				; 48 
B31_06c8:		lda #$9c		; a9 9c
B31_06ca:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_06cd:		jsr $8a21		; 20 21 8a
B31_06d0:		pla				; 68 
B31_06d1:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_06d4:		lda #$8e		; a9 8e
B31_06d6:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_06d9:		jsr $b5f2		; 20 f2 b5
B31_06dc:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_06df:		lda #$8e		; a9 8e
B31_06e1:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_06e4:		jsr $b5f6		; 20 f6 b5
B31_06e7:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_06ea:		lda #$9c		; a9 9c
B31_06ec:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_06ef:		jsr $9ab0		; 20 b0 9a
B31_06f2:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_06f5:		lda #$9c		; a9 9c
B31_06f7:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_06fa:		jsr $9b8e		; 20 8e 9b
B31_06fd:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0700:		lda #$9c		; a9 9c
B31_0702:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0705:		jsr $9b9a		; 20 9a 9b
B31_0708:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_070b:		lda #$9c		; a9 9c
B31_070d:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0710:		jsr $9baf		; 20 af 9b
B31_0713:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0716:		lda $21			; a5 21
B31_0718:		pha				; 48 
B31_0719:		lda #$80		; a9 80
B31_071b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_071e:		jsr $85bb		; 20 bb 85
B31_0721:		pla				; 68 
B31_0722:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0725:		lda #$80		; a9 80
B31_0727:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_072a:		jsr $8574		; 20 74 85
B31_072d:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0730:		lda #$80		; a9 80
B31_0732:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0735:		jsr $859e		; 20 9e 85
B31_0738:		lda #$94		; a9 94
B31_073a:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_073d:		lda #$80		; a9 80
B31_073f:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0742:		jsr $8001		; 20 01 80
B31_0745:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0748:		lda #$80		; a9 80
B31_074a:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_074d:		jsr $8c1a		; 20 1a 8c
B31_0750:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0753:		pha				; 48 
B31_0754:		lda #$80		; a9 80
B31_0756:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0759:		pla				; 68 
B31_075a:		jsr $8c2f		; 20 2f 8c
B31_075d:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0760:		tax				; aa 
B31_0761:		lda #$80		; a9 80
B31_0763:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0766:		jsr $8c59		; 20 59 8c
B31_0769:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_076c:		lda #$80		; a9 80
B31_076e:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0771:		jsr $8e61		; 20 61 8e
B31_0774:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0777:		lda #$80		; a9 80
B31_0779:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_077c:		jsr $8be3		; 20 e3 8b
B31_077f:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0782:		lda #$80		; a9 80
B31_0784:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0787:		jmp $907f		; 4c 7f 90


B31_078a:		lda #$80		; a9 80
B31_078c:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_078f:		jsr $90e2		; 20 e2 90
B31_0792:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0795:		lda #$80		; a9 80
B31_0797:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_079a:		jsr $9107		; 20 07 91
B31_079d:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07a0:		lda #$80		; a9 80
B31_07a2:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07a5:		jsr $9117		; 20 17 91
B31_07a8:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07ab:		lda #$88		; a9 88
B31_07ad:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07b0:		jsr $b5b7		; 20 b7 b5
B31_07b3:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07b6:		lda #$88		; a9 88
B31_07b8:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07bb:		jsr $b60c		; 20 0c b6
B31_07be:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07c1:		lda #$88		; a9 88
B31_07c3:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07c6:		jsr $b68e		; 20 8e b6
B31_07c9:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07cc:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_07cf:		pha				; 48 
B31_07d0:		lda #$88		; a9 88
B31_07d2:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_07d5:		jsr $b711		; 20 11 b7
B31_07d8:		pla				; 68 
B31_07d9:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_07dc:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_07df:		pha				; 48 
B31_07e0:		lda #$8c		; a9 8c
B31_07e2:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_07e5:		jsr $be21		; 20 21 be
B31_07e8:		pla				; 68 
B31_07e9:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_07ec:		lda #$96		; a9 96
B31_07ee:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07f1:		jsr $9fc9		; 20 c9 9f
B31_07f4:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_07f7:
B31_07f7:		ldx #$01		; a2 01
B31_07f9:		lda #$00		; a9 00
B31_07fb:		sta $0400, x	; 9d 00 04
B31_07fe:		sta $041c, x	; 9d 1c 04
B31_0801:		sta $0438, x	; 9d 38 04
B31_0804:		sta $0454, x	; 9d 54 04
B31_0807:		sta $0470, x	; 9d 70 04
B31_080a:		sta $048c, x	; 9d 8c 04
B31_080d:		sta $04a8, x	; 9d a8 04
B31_0810:		sta $054e, x	; 9d 4e 05
B31_0813:		inx				; e8 
B31_0814:		cpx #$17		; e0 17
B31_0816:		bcc B31_07fb ; 90 e3

B31_0818:		rts				; 60 


B31_0819:		lda #$80		; a9 80
B31_081b:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_081e:		jsr $918b		; 20 8b 91
B31_0821:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_0824:
B31_0824:		ldx #$26		; a2 26
B31_0826:		bne B31_082a ; d0 02

B31_0828:		ldx #$50		; a2 50
B31_082a:		lda #$00		; a9 00
B31_082c:		sta $00, x		; 95 00
B31_082e:		inx				; e8 
B31_082f:		cpx #$e0		; e0 e0
B31_0831:		bne B31_082c ; d0 f9

B31_0833:		ldx #$00		; a2 00
B31_0835:		sta $0400, x	; 9d 00 04
B31_0838:		sta $0500, x	; 9d 00 05
B31_083b:		cpx #$f6		; e0 f6
B31_083d:		bcs B31_0842 ; b0 03

B31_083f:		sta $0700, x	; 9d 00 07
B31_0842:		inx				; e8 
B31_0843:		bne B31_0835 ; d0 f0

B31_0845:		lda #$00		; a9 00
B31_0847:		tax				; aa 
B31_0848:		sta $0600, x	; 9d 00 06
B31_084b:		inx				; e8 
B31_084c:		cpx #$a0		; e0 a0
B31_084e:		bcc B31_0848 ; 90 f8

B31_0850:		ldx #$e0		; a2 e0
B31_0852:		sta $0600, x	; 9d 00 06
B31_0855:		inx				; e8 
B31_0856:		bne B31_0852 ; d0 fa

B31_0858:		ldx #$00		; a2 00
B31_085a:		sta wVramQueue.w, x	; 9d 00 03
B31_085d:		inx				; e8 
B31_085e:		cpx #$c0		; e0 c0
B31_0860:		bne B31_085a ; d0 f8

B31_0862:		lda #$00		; a9 00
B31_0864:		tax				; aa 
B31_0865:		sta $f0, x		; 95 f0
B31_0867:		inx				; e8 
B31_0868:		cpx #$08		; e0 08
B31_086a:		bcc B31_0865 ; 90 f9

B31_086c:		rts				; 60 


jumpTablePreserveY:
	asl a
	sty wTempY
	tay
	iny
	pla
	sta wReturnAddr
	pla
	sta wReturnAddr+1
	lda (wReturnAddr), y
	sta wJumpAddr
	iny
	lda (wReturnAddr), y
	ldy wTempY
	sta wJumpAddr+1
	jmp (wJumpAddr)


jumpTableNoPreserveY:
	iny
	pla
	sta wReturnAddr
	pla
	sta wReturnAddr+1
	lda (wReturnAddr), y
	sta wJumpAddr
	iny
	lda (wReturnAddr), y
	sta wJumpAddr+1
	jmp (wJumpAddr)


incPointerXByA:
	clc
	adc wPointerBase, x
	sta wPointerBase, x
	bcc +
	inc wPointerBase+1, x
+	rts


; unused
subPointerXByA:
	sec
	eor #$ff
	adc wPointerBase, x
	sta wPointerBase, x
	bcs +
	dec wPointerBase+1, x
+	rts


B31_08af:		ldx wVramQueueNextIdxToFill			; a6 1d
B31_08b1:		lda #$02		; a9 02
B31_08b3:		bne B31_08ca ; d0 15

func_1f_08b5:
B31_08b5:		ldx wVramQueueNextIdxToFill			; a6 1d
B31_08b7:		lda #$01		; a9 01
B31_08b9:		bne B31_08ca ; d0 0f

func_1f_08bb:
B31_08bb:		ldx wVramQueueNextIdxToFill			; a6 1d
B31_08bd:		jmp B31_08ce		; 4c ce e8


func_1f_08c0:
B31_08c0:		ldx wVramQueueNextIdxToFill			; a6 1d
B31_08c2:		lda #$05		; a9 05
B31_08c4:		bne B31_08ca ; d0 04

func_1f_08c6:
B31_08c6:		ldx wVramQueueNextIdxToFill			; a6 1d
B31_08c8:		lda #$04		; a9 04

B31_08ca:		sta wVramQueue.w, x	; 9d 00 03
B31_08cd:		inx				; e8 

B31_08ce:		lda wVramQueueDest			; a5 61
B31_08d0:		sta wVramQueue.w, x	; 9d 00 03
B31_08d3:		inx				; e8 
B31_08d4:		lda wVramQueueDest+1			; a5 62
B31_08d6:		sta wVramQueue.w, x	; 9d 00 03
B31_08d9:		inx				; e8 
B31_08da:		stx wVramQueueNextIdxToFill			; 86 1d
B31_08dc:		rts				; 60 


B31_08dd:		inx				; e8 

setVramQueueNextFillIdxAndTerminate:
B31_08de:		stx wVramQueueNextIdxToFill			; 86 1d
B31_08e0:		jmp terminateVramQueue		; 4c 12 ed


B31_08e3:		lda #$80		; a9 80
B31_08e5:		sta wVramQueueDest			; 85 61
B31_08e7:		lda #$27		; a9 27
B31_08e9:		sta wVramQueueDest+1			; 85 62
B31_08eb:		jsr func_1f_08b5		; 20 b5 e8
B31_08ee:		ldy #$40		; a0 40
B31_08f0:		lda #$00		; a9 00
B31_08f2:		sta wVramQueue.w, x	; 9d 00 03
B31_08f5:		inx				; e8 
B31_08f6:		dey				; 88 
B31_08f7:		bne B31_08f2 ; d0 f9

B31_08f9:		jmp setVramQueueNextFillIdxAndTerminate		; 4c de e8


B31_08fc:		jsr func_1f_08b5		; 20 b5 e8
B31_08ff:		lda $08			; a5 08
B31_0901:		lsr a			; 4a
B31_0902:		lsr a			; 4a
B31_0903:		lsr a			; 4a
B31_0904:		lsr a			; 4a
B31_0905:		tay				; a8 
B31_0906:		lda $e91b, y	; b9 1b e9
B31_0909:		sta wVramQueue.w, x	; 9d 00 03
B31_090c:		inx				; e8 
B31_090d:		lda $08			; a5 08
B31_090f:		and #$0f		; 29 0f
B31_0911:		tay				; a8 
B31_0912:		lda $e91b, y	; b9 1b e9
B31_0915:		sta wVramQueue.w, x	; 9d 00 03
B31_0918:		jmp $e8dd		; 4c dd e8


B31_091b:		eor ($42, x)	; 41 42
B31_091d:	.db $43
B31_091e:	.db $44
B31_091f:		eor $46			; 45 46
B31_0921:	.db $47
B31_0922:		pha				; 48 
B31_0923:		eor #$4a		; 49 4a
B31_0925:		;removed
	.db $50 $51

B31_0927:	.db $52
B31_0928:	.db $53
B31_0929:	.db $54
B31_092a:		eor $bc, x		; 55 bc
B31_092c:	.db $1c
B31_092d:	.db $04
B31_092e:		sty $14			; 84 14
B31_0930:		ldy $0438, x	; bc 38 04
B31_0933:		sty $15			; 84 15
B31_0935:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0938:		pha				; 48 
B31_0939:		jsr setBankOfRoomGroupMetaData_todo		; 20 00 c9
B31_093c:		lda $14			; a5 14
B31_093e:		sec				; 38 
B31_093f:		sbc #$28		; e9 28
B31_0941:		sta $14			; 85 14
B31_0943:		jsr $ea3d		; 20 3d ea
B31_0946:		ldy $57			; a4 57
B31_0948:		clc				; 18 
B31_0949:		lda $56			; a5 56
B31_094b:		adc $14			; 65 14
B31_094d:		bcs B31_0953 ; b0 04

B31_094f:		cmp #$f0		; c9 f0
B31_0951:		bcc B31_0956 ; 90 03

B31_0953:		adc #$0f		; 69 0f
B31_0955:		iny				; c8 
B31_0956:		sta $10			; 85 10
B31_0958:		sty $11			; 84 11
B31_095a:		lda #$00		; a9 00
B31_095c:		asl $11			; 06 11
B31_095e:		rol a			; 2a
B31_095f:		asl $11			; 06 11
B31_0961:		rol a			; 2a
B31_0962:		asl $11			; 06 11
B31_0964:		rol a			; 2a
B31_0965:		asl $11			; 06 11
B31_0967:		rol a			; 2a
B31_0968:		asl $11			; 06 11
B31_096a:		rol a			; 2a
B31_096b:		asl $11			; 06 11
B31_096d:		rol a			; 2a
B31_096e:		pha				; 48 
B31_096f:		sec				; 38 
B31_0970:		lda $11			; a5 11
B31_0972:		adc $00			; 65 00
B31_0974:		sta $00			; 85 00
B31_0976:		pla				; 68 
B31_0977:		adc $01			; 65 01
B31_0979:		sta $01			; 85 01
B31_097b:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B31_097e:		lda $15			; a5 15
B31_0980:		lsr a			; 4a
B31_0981:		lsr a			; 4a
B31_0982:		lsr a			; 4a
B31_0983:		lsr a			; 4a
B31_0984:		lsr a			; 4a
B31_0985:		sta $11			; 85 11
B31_0987:		lda $10			; a5 10
B31_0989:		and #$e0		; 29 e0
B31_098b:		lsr a			; 4a
B31_098c:		lsr a			; 4a
B31_098d:		ora $11			; 05 11
B31_098f:		tay				; a8 
B31_0990:		lda ($00), y	; b1 00
B31_0992:		sta $11			; 85 11
B31_0994:		lda $32			; a5 32
B31_0996:		cmp #$0e		; c9 0e
B31_0998:		bne B31_09a6 ; d0 0c

B31_099a:		ldy $33			; a4 33
B31_099c:		bne B31_09a6 ; d0 08

B31_099e:		ldy $34			; a4 34
B31_09a0:		cpy #$01		; c0 01
B31_09a2:		bne B31_09a6 ; d0 02

B31_09a4:		lda #$01		; a9 01
B31_09a6:		pha				; 48 
B31_09a7:		tay				; a8 
B31_09a8:		jsr $c902		; 20 02 c9
B31_09ab:		pla				; 68 
B31_09ac:		jsr $ea0d		; 20 0d ea
B31_09af:		pla				; 68 
B31_09b0:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_09b3:		ldy CURR_LOWER_BANK.w		; ac 00 80
B31_09b6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_09b9:		tya				; 98 
B31_09ba:		pha				; 48 
B31_09bb:		jsr $ea3d		; 20 3d ea
B31_09be:		lda $0e			; a5 0e
B31_09c0:		sta $11			; 85 11
B31_09c2:		lda $0f			; a5 0f
B31_09c4:		sta $10			; 85 10
B31_09c6:		jsr $ea20		; 20 20 ea
B31_09c9:		lda $041c		; ad 1c 04
B31_09cc:		sec				; 38 
B31_09cd:		sbc #$10		; e9 10
B31_09cf:		jsr $e9fb		; 20 fb e9
B31_09d2:		pla				; 68 
B31_09d3:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_09d6:		jsr $eb50		; 20 50 eb
B31_09d9:		jsr $ea3d		; 20 3d ea
B31_09dc:		lda $0438, x	; bd 38 04
B31_09df:		clc				; 18 
B31_09e0:		adc $56			; 65 56
B31_09e2:		sta $11			; 85 11
B31_09e4:		lda $57			; a5 57
B31_09e6:		adc #$00		; 69 00
B31_09e8:		sta $10			; 85 10
B31_09ea:		jsr $ea20		; 20 20 ea
B31_09ed:		lda $041c, x	; bd 1c 04
B31_09f0:		sec				; 38 
B31_09f1:		sbc #$20		; e9 20
B31_09f3:		jsr $e9fb		; 20 fb e9
B31_09f6:		lda #$84		; a9 84
B31_09f8:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_09fb:		and #$e0		; 29 e0
B31_09fd:		lsr a			; 4a
B31_09fe:		lsr a			; 4a
B31_09ff:		clc				; 18 
B31_0a00:		adc $11			; 65 11
B31_0a02:		sta $11			; 85 11
B31_0a04:		ldy $11			; a4 11
B31_0a06:		iny				; c8 
B31_0a07:		lda ($00), y	; b1 00
B31_0a09:		sta $11			; 85 11
B31_0a0b:		lda $32			; a5 32
B31_0a0d:		asl a			; 0a
B31_0a0e:		tay				; a8 
B31_0a0f:		lda $d610, y	; b9 10 d6
B31_0a12:		sta $00			; 85 00
B31_0a14:		lda $d611, y	; b9 11 d6
B31_0a17:		sta $01			; 85 01
B31_0a19:		ldy $11			; a4 11
B31_0a1b:		lda ($00), y	; b1 00
B31_0a1d:		sta $11			; 85 11
B31_0a1f:		rts				; 60 


B31_0a20:		lda $10			; a5 10
B31_0a22:		asl a			; 0a
B31_0a23:		tay				; a8 
B31_0a24:		lda $ea67, y	; b9 67 ea
B31_0a27:		clc				; 18 
B31_0a28:		adc $00			; 65 00
B31_0a2a:		sta $00			; 85 00
B31_0a2c:		lda $ea68, y	; b9 68 ea
B31_0a2f:		adc $01			; 65 01
B31_0a31:		sta $01			; 85 01
B31_0a33:		lda $11			; a5 11
B31_0a35:		lsr a			; 4a
B31_0a36:		lsr a			; 4a
B31_0a37:		lsr a			; 4a
B31_0a38:		lsr a			; 4a
B31_0a39:		lsr a			; 4a
B31_0a3a:		sta $11			; 85 11
B31_0a3c:		rts				; 60 


B31_0a3d:		lda $32			; a5 32
B31_0a3f:		asl a			; 0a
B31_0a40:		tay				; a8 
B31_0a41:		lda $d5d4, y	; b9 d4 d5
B31_0a44:		sta $00			; 85 00
B31_0a46:		lda $d5d5, y	; b9 d5 d5
B31_0a49:		sta $01			; 85 01
B31_0a4b:		lda $33			; a5 33
B31_0a4d:		asl a			; 0a
B31_0a4e:		tay				; a8 
B31_0a4f:		lda ($00), y	; b1 00
B31_0a51:		sta $10			; 85 10
B31_0a53:		iny				; c8 
B31_0a54:		lda ($00), y	; b1 00
B31_0a56:		sta $11			; 85 11
B31_0a58:		lda $34			; a5 34
B31_0a5a:		asl a			; 0a
B31_0a5b:		tay				; a8 
B31_0a5c:		iny				; c8 
B31_0a5d:		lda ($10), y	; b1 10
B31_0a5f:		sta $00			; 85 00
B31_0a61:		iny				; c8 
B31_0a62:		lda ($10), y	; b1 10
B31_0a64:		sta $01			; 85 01
B31_0a66:		rts				; 60 


B31_0a67:		.db $00				; 00
B31_0a68:		.db $00				; 00
B31_0a69:		bmi B31_0a6b ; 30 00

B31_0a6b:		rts				; 60 


B31_0a6c:		.db $00				; 00
B31_0a6d:		bcc B31_0a6f ; 90 00

B31_0a6f:		cpy #$00		; c0 00
B31_0a71:		beq B31_0a73 ; f0 00

B31_0a73:		jsr $5001		; 20 01 50
B31_0a76:		ora ($80, x)	; 01 80
B31_0a78:		ora ($b0, x)	; 01 b0
B31_0a7a:		ora ($e0, x)	; 01 e0
B31_0a7c:		ora ($10, x)	; 01 10
B31_0a7e:	.db $02
B31_0a7f:		rti				; 40 


B31_0a80:	.db $02
B31_0a81:		bvs B31_0a85 ; 70 02

B31_0a83:		ldy #$02		; a0 02
B31_0a85:		bne B31_0a89 ; d0 02

B31_0a87:		.db $00				; 00
B31_0a88:	.db $03
B31_0a89:		jsr $eb50		; 20 50 eb
B31_0a8c:		jsr $eb29		; 20 29 eb
B31_0a8f:		ldy $11			; a4 11
B31_0a91:		lda ($00), y	; b1 00
B31_0a93:		sta $11			; 85 11
B31_0a95:		lda $32			; a5 32
B31_0a97:		asl a			; 0a
B31_0a98:		tay				; a8 
B31_0a99:		lda $d610, y	; b9 10 d6
B31_0a9c:		sta $00			; 85 00
B31_0a9e:		lda $d611, y	; b9 11 d6
B31_0aa1:		sta $01			; 85 01
B31_0aa3:		ldy $11			; a4 11
B31_0aa5:		lda ($00), y	; b1 00
B31_0aa7:		sta $11			; 85 11
B31_0aa9:		lda #$84		; a9 84
B31_0aab:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0aae:		rts				; 60 


B31_0aaf:		lda #$8c		; a9 8c
B31_0ab1:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0ab4:		lda $bdf1, y	; b9 f1 bd
B31_0ab7:		sta $11			; 85 11
B31_0ab9:		sta $0f			; 85 0f
B31_0abb:		jmp $eaca		; 4c ca ea


B31_0abe:		jsr $eb50		; 20 50 eb
B31_0ac1:		jsr $eb29		; 20 29 eb
B31_0ac4:		ldy $11			; a4 11
B31_0ac6:		lda ($00), y	; b1 00
B31_0ac8:		sta $11			; 85 11
B31_0aca:		lda #$00		; a9 00
B31_0acc:		asl $11			; 06 11
B31_0ace:		rol a			; 2a
B31_0acf:		asl $11			; 06 11
B31_0ad1:		rol a			; 2a
B31_0ad2:		asl $11			; 06 11
B31_0ad4:		rol a			; 2a
B31_0ad5:		asl $11			; 06 11
B31_0ad7:		rol a			; 2a
B31_0ad8:		sta $10			; 85 10
B31_0ada:		lda $32			; a5 32
B31_0adc:		asl a			; 0a
B31_0add:		tay				; a8 
B31_0ade:		lda $d5f2, y	; b9 f2 d5
B31_0ae1:		sta $00			; 85 00
B31_0ae3:		lda $d5f3, y	; b9 f3 d5
B31_0ae6:		sta $01			; 85 01
B31_0ae8:		ldy $09			; a4 09
B31_0aea:		lda $eb21, y	; b9 21 eb
B31_0aed:		sta $09			; 85 09
B31_0aef:		lda $11			; a5 11
B31_0af1:		clc				; 18 
B31_0af2:		adc $09			; 65 09
B31_0af4:		sta $11			; 85 11
B31_0af6:		lda $10			; a5 10
B31_0af8:		adc #$00		; 69 00
B31_0afa:		sta $10			; 85 10
B31_0afc:		lda $00			; a5 00
B31_0afe:		clc				; 18 
B31_0aff:		adc $11			; 65 11
B31_0b01:		sta $00			; 85 00
B31_0b03:		lda $01			; a5 01
B31_0b05:		adc $10			; 65 10
B31_0b07:		sta $01			; 85 01
B31_0b09:		ldx #$00		; a2 00
B31_0b0b:		lda #$04		; a9 04
B31_0b0d:		sta $09			; 85 09
B31_0b0f:		ldy $eb25, x	; bc 25 eb
B31_0b12:		lda ($00), y	; b1 00
B31_0b14:		sta $10, x		; 95 10
B31_0b16:		inx				; e8 
B31_0b17:		dec $09			; c6 09
B31_0b19:		bne B31_0b0f ; d0 f4

B31_0b1b:		lda #$84		; a9 84
B31_0b1d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0b20:		rts				; 60 


B31_0b21:		.db $00				; 00
B31_0b22:	.db $02
B31_0b23:		php				; 08 
B31_0b24:		asl a			; 0a
B31_0b25:		.db $00				; 00
B31_0b26:		ora ($04, x)	; 01 04
B31_0b28:		ora $bd			; 05 bd
B31_0b2a:		sec				; 38 
B31_0b2b:	.db $04
B31_0b2c:		clc				; 18 
B31_0b2d:		adc $56			; 65 56
B31_0b2f:		sta $11			; 85 11
B31_0b31:		lda $57			; a5 57
B31_0b33:		adc #$00		; 69 00
B31_0b35:		sta $10			; 85 10
B31_0b37:		lda $11			; a5 11
B31_0b39:		lsr a			; 4a
B31_0b3a:		lsr a			; 4a
B31_0b3b:		lsr a			; 4a
B31_0b3c:		lsr a			; 4a
B31_0b3d:		lsr a			; 4a
B31_0b3e:		sta $11			; 85 11
B31_0b40:		lda $041c, x	; bd 1c 04
B31_0b43:		sec				; 38 
B31_0b44:		sbc #$20		; e9 20
B31_0b46:		and #$e0		; 29 e0
B31_0b48:		lsr a			; 4a
B31_0b49:		lsr a			; 4a
B31_0b4a:		clc				; 18 
B31_0b4b:		adc $11			; 65 11
B31_0b4d:		sta $11			; 85 11
B31_0b4f:		rts				; 60 


B31_0b50:		lda #$8e		; a9 8e
B31_0b52:		ldy $32			; a4 32
B31_0b54:		cpy #$07		; c0 07
B31_0b56:		beq B31_0b5a ; f0 02

B31_0b58:		lda #$8c		; a9 8c
B31_0b5a:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0b5d:		jsr $ebaa		; 20 aa eb
B31_0b60:		jsr $ea3d		; 20 3d ea
B31_0b63:		jmp $eba5		; 4c a5 eb


B31_0b66:		jsr $ebaa		; 20 aa eb
B31_0b69:		lda $d5f2, y	; b9 f2 d5
B31_0b6c:		sta $02			; 85 02
B31_0b6e:		lda $d5f3, y	; b9 f3 d5
B31_0b71:		sta $03			; 85 03
B31_0b73:		jmp $eba5		; 4c a5 eb


B31_0b76:		jsr $ebaa		; 20 aa eb
B31_0b79:		lda $d610, y	; b9 10 d6
B31_0b7c:		sta $02			; 85 02
B31_0b7e:		lda $d611, y	; b9 11 d6
B31_0b81:		sta $03			; 85 03
B31_0b83:		jmp $eba5		; 4c a5 eb


B31_0b86:		jsr $ebaa		; 20 aa eb
B31_0b89:		lda ($00), y	; b1 00
B31_0b8b:		sta $00			; 85 00
B31_0b8d:		jmp $eba5		; 4c a5 eb


B31_0b90:		jsr $ebaa		; 20 aa eb
B31_0b93:		ldy $00			; a4 00
B31_0b95:		lda ($02), y	; b1 02
B31_0b97:		sta $16			; 85 16
B31_0b99:		jmp $eba5		; 4c a5 eb


B31_0b9c:		jsr $ebaa		; 20 aa eb
B31_0b9f:		ldy $02			; a4 02
B31_0ba1:		lda ($00), y	; b1 00
B31_0ba3:		sta $02			; 85 02
B31_0ba5:		lda #$82		; a9 82
B31_0ba7:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0baa:		lda $32			; a5 32
B31_0bac:		cmp #$04		; c9 04
B31_0bae:		bcc B31_0bb4 ; 90 04

B31_0bb0:		lda #$8e		; a9 8e
B31_0bb2:		bne B31_0bb6 ; d0 02

B31_0bb4:		lda #$90		; a9 90
B31_0bb6:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_0bb9:
B31_0bb9:		jsr initSound		; 20 27 e2
B31_0bbc:		jsr func_1f_0bfd		; 20 fd eb
B31_0bbf:		ldx #$02		; a2 02
B31_0bc1:		lda #$84		; a9 84
B31_0bc3:		jsr $ebd5		; 20 d5 eb
B31_0bc6:		lda #$05		; a9 05
B31_0bc8:		jsr func_1f_0ce9		; 20 e9 ec
B31_0bcb:		lda #$00		; a9 00
B31_0bcd:		jsr func_1f_0ce9		; 20 e9 ec
B31_0bd0:		lda #$26		; a9 26
B31_0bd2:		jmp func_1f_0ce9		; 4c e9 ec


B31_0bd5:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0bd8:		jsr $ec04		; 20 04 ec
B31_0bdb:		lda $22			; a5 22
B31_0bdd:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0be0:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0be3:		jsr func_1f_0182		; 20 82 e1
B31_0be6:		lda #$00		; a9 00
B31_0be8:		sta $fc			; 85 fc
B31_0bea:		sta $fd			; 85 fd
B31_0bec:		lda PPUSTATUS.w		; ad 02 20
B31_0bef:		sty $2006		; 8c 06 20
B31_0bf2:		stx $2006		; 8e 06 20
B31_0bf5:		ldx #$00		; a2 00
B31_0bf7:		jsr $ec2e		; 20 2e ec
B31_0bfa:		jmp $ebdb		; 4c db eb


func_1f_0bfd:
B31_0bfd:		lda #$e4		; a9 e4
B31_0bff:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B31_0c02:		ldx #$00		; a2 00
B31_0c04:		lda $ec77, x	; bd 77 ec
B31_0c07:		sta $00			; 85 00
B31_0c09:		lda $ec78, x	; bd 78 ec
B31_0c0c:		sta $01			; 85 01
B31_0c0e:		jsr func_1f_0182		; 20 82 e1
B31_0c11:		lda #$00		; a9 00
B31_0c13:		sta $fd			; 85 fd
B31_0c15:		sta $fc			; 85 fc
B31_0c17:		lda PPUSTATUS.w		; ad 02 20
B31_0c1a:		ldy #$01		; a0 01
B31_0c1c:		lda ($00), y	; b1 00
B31_0c1e:		sta PPUADDR.w		; 8d 06 20
B31_0c21:		dey				; 88 
B31_0c22:		lda ($00), y	; b1 00
B31_0c24:		sta PPUADDR.w		; 8d 06 20
B31_0c27:		ldx #$00		; a2 00
B31_0c29:		lda #$02		; a9 02
B31_0c2b:		jsr incPointerXByA		; 20 99 e8
B31_0c2e:		ldy #$00		; a0 00
B31_0c30:		lda ($00), y	; b1 00
B31_0c32:		cmp #$ff		; c9 ff
B31_0c34:		beq B31_0c74 ; f0 3e

B31_0c36:		cmp #$7f		; c9 7f
B31_0c38:		beq B31_0c6c ; f0 32

B31_0c3a:		tay				; a8 
B31_0c3b:		bpl B31_0c5a ; 10 1d

B31_0c3d:		and #$7f		; 29 7f
B31_0c3f:		sta $02			; 85 02
B31_0c41:		ldy #$01		; a0 01
B31_0c43:		lda ($00), y	; b1 00
B31_0c45:		sta PPUDATA.w		; 8d 07 20
B31_0c48:		cpy $02			; c4 02
B31_0c4a:		beq B31_0c4f ; f0 03

B31_0c4c:		iny				; c8 
B31_0c4d:		bne B31_0c43 ; d0 f4

B31_0c4f:		lda #$01		; a9 01
B31_0c51:		clc				; 18 
B31_0c52:		adc $02			; 65 02
B31_0c54:		jsr incPointerXByA		; 20 99 e8
B31_0c57:		jmp $ec2e		; 4c 2e ec


B31_0c5a:		ldy #$01		; a0 01
B31_0c5c:		sta $02			; 85 02
B31_0c5e:		lda ($00), y	; b1 00
B31_0c60:		ldy $02			; a4 02
B31_0c62:		sta PPUDATA.w		; 8d 07 20
B31_0c65:		dey				; 88 
B31_0c66:		bne B31_0c62 ; d0 fa

B31_0c68:		lda #$02		; a9 02
B31_0c6a:		bne B31_0c54 ; d0 e8

B31_0c6c:		lda #$01		; a9 01
B31_0c6e:		jsr incPointerXByA		; 20 99 e8
B31_0c71:		jmp $ec17		; 4c 17 ec


B31_0c74:		jmp $ed66		; 4c 66 ed


B31_0c77:		sta $70ec, x	; 9d ec 70
B31_0c7a:		lda $9d, x		; b5 9d
B31_0c7c:		cpx $ec9d		; ec 9d ec
B31_0c7f:		sta $9dec, x	; 9d ec 9d
B31_0c82:		cpx $aba8		; ec a8 ab
B31_0c85:		pla				; 68 
B31_0c86:		tsx				; ba 
B31_0c87:	.db $fa
B31_0c88:		lda $ba5c, y	; b9 5c ba
B31_0c8b:		ldy $d4bb, x	; bc bb d4
B31_0c8e:		tsx				; ba 
B31_0c8f:		ldx $b9			; a6 b9
B31_0c91:	.db $27
B31_0c92:	.db $b3
B31_0c93:		and $7cb8, y	; 39 b8 7c
B31_0c96:		lda $bdfa		; ad fa bd
B31_0c99:	.db $72
B31_0c9a:	.db $d7
B31_0c9b:		txs				; 9a 
B31_0c9c:		tsx				; ba 
B31_0c9d:		.db $00				; 00
B31_0c9e:	.db $20 $78 $00
B31_0ca1:		sei				; 78 
B31_0ca2:		.db $00				; 00
B31_0ca3:		sei				; 78 
B31_0ca4:		.db $00				; 00
B31_0ca5:		sei				; 78 
B31_0ca6:		.db $00				; 00
B31_0ca7:		sei				; 78 
B31_0ca8:		.db $00				; 00
B31_0ca9:		sei				; 78 
B31_0caa:		.db $00				; 00
B31_0cab:		sei				; 78 
B31_0cac:		.db $00				; 00
B31_0cad:		sei				; 78 
B31_0cae:		.db $00				; 00
B31_0caf:		rti				; 40 


B31_0cb0:		.db $00				; 00
B31_0cb1:	.db $7f
B31_0cb2:		.db $00				; 00
B31_0cb3:		bit $78			; 24 78
B31_0cb5:		.db $00				; 00
B31_0cb6:		sei				; 78 
B31_0cb7:		.db $00				; 00
B31_0cb8:		sei				; 78 
B31_0cb9:		.db $00				; 00
B31_0cba:		sei				; 78 
B31_0cbb:		.db $00				; 00
B31_0cbc:		sei				; 78 
B31_0cbd:		.db $00				; 00
B31_0cbe:		sei				; 78 
B31_0cbf:		.db $00				; 00
B31_0cc0:		sei				; 78 
B31_0cc1:		.db $00				; 00
B31_0cc2:		sei				; 78 
B31_0cc3:		.db $00				; 00
B31_0cc4:		rti				; 40 


B31_0cc5:		.db $00				; 00
B31_0cc6:	.db $7f
B31_0cc7:		.db $00				; 00
B31_0cc8:		plp				; 28 
B31_0cc9:		sei				; 78 
B31_0cca:		.db $00				; 00
B31_0ccb:		sei				; 78 
B31_0ccc:		.db $00				; 00
B31_0ccd:		sei				; 78 
B31_0cce:		.db $00				; 00
B31_0ccf:		sei				; 78 
B31_0cd0:		.db $00				; 00
B31_0cd1:		sei				; 78 
B31_0cd2:		.db $00				; 00
B31_0cd3:		sei				; 78 
B31_0cd4:		.db $00				; 00
B31_0cd5:		sei				; 78 
B31_0cd6:		.db $00				; 00
B31_0cd7:		sei				; 78 
B31_0cd8:		.db $00				; 00
B31_0cd9:		rti				; 40 


B31_0cda:		.db $00				; 00
B31_0cdb:	.db $ff


func_1f_0cdc:
B31_0cdc:		pha				; 48 
B31_0cdd:		lda #PRG_ROM_SWITCH|:func_00_1820		; a9 80
B31_0cdf:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0ce2:		pla				; 68 
B31_0ce3:		jsr func_00_1820		; 20 20 98
B31_0ce6:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_0ce9:
B31_0ce9:		pha				; 48 
B31_0cea:		lda #PRG_ROM_SWITCH|:func_00_1825		; a9 80
B31_0cec:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0cef:		pla				; 68 
B31_0cf0:		jsr func_00_1825		; 20 25 98
B31_0cf3:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0cf6:		pha				; 48 
B31_0cf7:		lda #$80		; a9 80
B31_0cf9:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0cfc:		pla				; 68 
B31_0cfd:		jsr $9873		; 20 73 98
B31_0d00:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_0d03:
B31_0d03:		lda $b1			; a5 b1
B31_0d05:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0d08:		lda ($00), y	; b1 00
B31_0d0a:		pha				; 48 
B31_0d0b:		lda #$80		; a9 80
B31_0d0d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0d10:		pla				; 68 
B31_0d11:		rts				; 60 


terminateVramQueue:
	lda #$ff

storeByteInVramQueue:
	ldx wVramQueueNextIdxToFill

storeByteInVramQueueIdxedX:
	sta wVramQueue.w, x
	inx
	stx wVramQueueNextIdxToFill
	rts


data_1f_0d1d:
B31_0d1d:		.db $00				; 00
B31_0d1e:	.db $04
B31_0d1f:	.db $04
B31_0d20:		.db $00				; 00
B31_0d21:		.db $00				; 00
B31_0d22:		.db $00				; 00
B31_0d23:		.db $00				; 00
B31_0d24:	.db $04
B31_0d25:	.db $04
B31_0d26:		.db $00				; 00


processVramQueue_todo:
B31_0d27:		ldy #$00		; a0 00

@nextControlByte:
B31_0d29:		ldx wVramQueue.w, y	; be 00 03
B31_0d2c:		beq B31_0d5f ; @done

B31_0d2e:		lda wPPUCtrl			; a5 ff
B31_0d30:		and #$18		; 29 18
B31_0d32:		ora data_1f_0d1d.w-1, x	; 1d 1c ed
B31_0d35:		sta PPUCTRL.w		; 8d 00 20

B31_0d38:		iny				; c8 
B31_0d39:		cpx #$0a		; e0 0a
B31_0d3b:		beq B31_0d41 ; f0 04

B31_0d3d:		cpx #$04		; e0 04
B31_0d3f:		bcs B31_0d92 ; b0 51

; control byte 10, or <4
; reset latch, and set dest addr
B31_0d41:		lda PPUSTATUS.w		; ad 02 20
B31_0d44:		lda wVramQueue.w+1, y	; b9 01 03
B31_0d47:		sta PPUADDR.w		; 8d 06 20
B31_0d4a:		lda wVramQueue.w, y	; b9 00 03
B31_0d4d:		sta PPUADDR.w		; 8d 06 20
B31_0d50:		iny				; c8 
B31_0d51:		iny				; c8 
B31_0d52:		cpx #$0a		; e0 0a
B31_0d54:		beq B31_0d5c ; f0 06

B31_0d56:		cpx #$03		; e0 03
B31_0d58:		beq B31_0d82 ; f0 28

B31_0d5a:		bne B31_0d71 ; d0 15

; control byte 10
B31_0d5c:		jmp B31_0f39		; 4c 39 ef

@done:
B31_0d5f:		lda #$00		; a9 00
B31_0d61:		sta wVramQueue.w		; 8d 00 03
B31_0d64:		sta $1d			; 85 1d
B31_0d66:		lda wPPUCtrl			; a5 ff
B31_0d68:		sta PPUCTRL.w		; 8d 00 20
B31_0d6b:		rts				; 60 

@loop_0d6c:
B31_0d6c:		lda #$ff		; a9 ff

@loop_0d6e:
B31_0d6e:		sta PPUDATA.w		; 8d 07 20

; control byte 0,1,2
B31_0d71:		lda wVramQueue.w, y	; b9 00 03
B31_0d74:		iny				; c8 
B31_0d75:		cmp #$ff		; c9 ff
B31_0d77:		bne B31_0d6e ; @loop_0d6e

B31_0d79:		lda wVramQueue.w, y	; b9 00 03
B31_0d7c:		cmp #$0b		; c9 0b
B31_0d7e:		bcs B31_0d6c ; @loop_0d6c

B31_0d80:		bcc B31_0d29 ; @nextControlByte

; control byte 3
B31_0d82:		ldx wVramQueue.w, y	; be 00 03
B31_0d85:		iny				; c8 
B31_0d86:		lda wVramQueue.w, y	; b9 00 03
B31_0d89:		sta PPUDATA.w		; 8d 07 20
B31_0d8c:		dex				; ca 
B31_0d8d:		bne B31_0d89 ; d0 fa

B31_0d8f:		iny				; c8 
B31_0d90:		bne B31_0d29 ; @nextControlByte

; control byte 4+
B31_0d92:		cpx #$06		; e0 06
B31_0d94:		beq B31_0def ; f0 59

B31_0d96:		cpx #$07		; e0 07
B31_0d98:		beq B31_0df3 ; f0 59

B31_0d9a:		cpx #$05		; e0 05
B31_0d9c:		bne B31_0da2 ; d0 04

; control byte 5, copy 2*4 times
B31_0d9e:		ldx #$02		; a2 02
B31_0da0:		bne B31_0da4 ; d0 02

; non-control byte 5, copy 4*4 times
B31_0da2:		ldx #$04		; a2 04

@loop_0da4:
; set dest address
B31_0da4:		lda PPUSTATUS.w		; ad 02 20
B31_0da7:		lda wVramQueue.w+1, y	; b9 01 03
B31_0daa:		sta PPUADDR.w		; 8d 06 20
B31_0dad:		lda wVramQueue.w, y	; b9 00 03
B31_0db0:		sta PPUADDR.w		; 8d 06 20
B31_0db3:		iny				; c8 
B31_0db4:		iny				; c8 

.rept 4
	lda wVramQueue.w, y	; b9 00 03
	sta PPUDATA.w		; 8d 07 20
	iny				; c8 
.endr
B31_0dd1:		dex				; ca 
B31_0dd2:		bne B31_0da4 ; @loop_0da4

; set new dest address
B31_0dd4:		lda PPUSTATUS.w		; ad 02 20
B31_0dd7:		lda wVramQueue.w+1, y	; b9 01 03
B31_0dda:		sta PPUADDR.w		; 8d 06 20
B31_0ddd:		lda wVramQueue.w, y	; b9 00 03
B31_0de0:		sta PPUADDR.w		; 8d 06 20
B31_0de3:		iny				; c8 
B31_0de4:		iny				; c8 

; store 1 byte for the last address (eg palette for above 8 tiles)
B31_0de5:		lda wVramQueue.w, y	; b9 00 03
B31_0de8:		sta PPUDATA.w		; 8d 07 20
B31_0deb:		iny				; c8 
B31_0dec:		jmp B31_0d29		; @nextControlByte

; control byte 6
B31_0def:		ldx #$00		; a2 00
B31_0df1:		beq B31_0df5 ; f0 02

; control byte 7
B31_0df3:		ldx #$01		; a2 01
B31_0df5:		lda PPUSTATUS.w		; ad 02 20
B31_0df8:		lda $0301, y	; b9 01 03
B31_0dfb:		sta PPUADDR.w		; 8d 06 20
B31_0dfe:		lda wVramQueue.w, y	; b9 00 03
B31_0e01:		sta PPUADDR.w		; 8d 06 20
B31_0e04:		iny				; c8 
B31_0e05:		iny				; c8 

.rept 32
	lda wVramQueue.w, y	; b9 00 03
	sta PPUDATA.w		; 8d 07 20
	iny				; c8 
.endr

B31_0ee6:		cpx #$00		; e0 00
B31_0ee8:		bne B31_0eed ; d0 03

B31_0eea:		jmp B31_0d29		; @nextControlByte

B31_0eed:		lda PPUSTATUS.w		; ad 02 20
B31_0ef0:		lda $0301, y	; b9 01 03
B31_0ef3:		sta PPUADDR.w		; 8d 06 20
B31_0ef6:		lda wVramQueue.w, y	; b9 00 03
B31_0ef9:		sta PPUADDR.w		; 8d 06 20
B31_0efc:		iny				; c8 
B31_0efd:		iny				; c8 

.rept 8
	lda wVramQueue.w, y	; b9 00 03
	sta PPUDATA.w		; 8d 07 20
	iny				; c8 
.endr

B31_0f36:		jmp B31_0d29		; @nextControlByte

B31_0f39:		ldx wVramQueue.w, y	; be 00 03
B31_0f3c:		iny				; c8 
B31_0f3d:		lda wVramQueue.w, y	; b9 00 03
B31_0f40:		sta PPUDATA.w		; 8d 07 20
B31_0f43:		iny				; c8 
B31_0f44:		dex				; ca 
B31_0f45:		bne B31_0f3d ; d0 f6

B31_0f47:		jmp B31_0d29		; @nextControlByte


B31_0f4a:		sta $05aa		; 8d aa 05
B31_0f4d:		ldy #$02		; a0 02
B31_0f4f:		sty $0593		; 8c 93 05
B31_0f52:		dey				; 88 
B31_0f53:		sty $057c		; 8c 7c 05
B31_0f56:		rts				; 60 


B31_0f57:		ldx #$00		; a2 00
B31_0f59:		jmp $ef60		; 4c 60 ef


func_1f_0f5c:
B31_0f5c:		sta $048c, x	; 9d 8c 04
B31_0f5f:		tya				; 98 
B31_0f60:		sta $05aa, x	; 9d aa 05
B31_0f63:		lda #$00		; a9 00
B31_0f65:		sta $0593, x	; 9d 93 05
B31_0f68:		lda #$01		; a9 01
B31_0f6a:		sta $057c, x	; 9d 7c 05
B31_0f6d:		rts				; 60 


B31_0f6e:		jsr func_1f_0f5c		; 20 5c ef
B31_0f71:		bne B31_0f75 ; d0 02

B31_0f73:		ldx #$00		; a2 00

func_1f_0f75:
B31_0f75:		dec $057c, x	; de 7c 05
B31_0f78:		beq B31_0f7b ; f0 01

B31_0f7a:		rts				; 60 

B31_0f7b:		ldy $048c, x	; bc 8c 04
B31_0f7e:		lda $efb4, y	; b9 b4 ef
B31_0f81:		sta $08			; 85 08
B31_0f83:		lda $efb5, y	; b9 b5 ef
B31_0f86:		sta $09			; 85 09
B31_0f88:		lda $05aa, x	; bd aa 05
B31_0f8b:		asl a			; 0a
B31_0f8c:		clc				; 18 
B31_0f8d:		adc $05aa, x	; 7d aa 05
B31_0f90:		tay				; a8 
B31_0f91:		lda ($08), y	; b1 08
B31_0f93:		clc				; 18 
B31_0f94:		adc $0593, x	; 7d 93 05
B31_0f97:		sta $0400, x	; 9d 00 04
B31_0f9a:		iny				; c8 
B31_0f9b:		lda ($08), y	; b1 08
B31_0f9d:		sta $057c, x	; 9d 7c 05
B31_0fa0:		iny				; c8 
B31_0fa1:		inc $0593, x	; fe 93 05
B31_0fa4:		inc $0593, x	; fe 93 05
B31_0fa7:		lda $0593, x	; bd 93 05
B31_0faa:		cmp ($08), y	; d1 08
B31_0fac:		bcc B31_0fb3 ; 90 05

B31_0fae:		lda #$00		; a9 00
B31_0fb0:		sta $0593, x	; 9d 93 05
B31_0fb3:		rts				; 60 


B31_0fb4:	.db $d2
B31_0fb5:	.db $ef
B31_0fb6:	.db $d2
B31_0fb7:	.db $ef
B31_0fb8:	.db $d2
B31_0fb9:	.db $ef
B31_0fba:	.db $d2
B31_0fbb:	.db $ef
B31_0fbc:		lda $58f0, y	; b9 f0 58
B31_0fbf:		sbc ($02), y	; f1 02
B31_0fc1:		beq B31_1001 ; f0 3e

B31_0fc3:	.db $f3
B31_0fc4:	.db $57
B31_0fc5:	.db $f2
B31_0fc6:		and ($f1), y	; 31 f1
B31_0fc8:	.db $62
B31_0fc9:	.db $f3
B31_0fca:	.db $d2
B31_0fcb:	.db $ef
B31_0fcc:	.db $d2
B31_0fcd:	.db $ef
B31_0fce:	.db $d2
B31_0fcf:	.db $ef
B31_0fd0:	.db $d2
B31_0fd1:	.db $ef
B31_0fd2:	.db $02
B31_0fd3:		php				; 08 
B31_0fd4:		php				; 08 
B31_0fd5:		clc				; 18 
B31_0fd6:		php				; 08 
B31_0fd7:	.db $04
B31_0fd8:		asl $0408, x	; 1e 08 04
B31_0fdb:		bit $08			; 24 08
B31_0fdd:		asl $24			; 06 24
B31_0fdf:	.db $04
B31_0fe0:		asl $2a			; 06 2a
B31_0fe2:		asl $0c			; 06 0c
B31_0fe4:	.db $34
B31_0fe5:		asl $0c			; 06 0c
B31_0fe7:		rti				; 40 


B31_0fe8:		asl $06			; 06 06
B31_0fea:		lsr $06			; 46 06
B31_0fec:		php				; 08 
B31_0fed:		lsr $06			; 46 06
B31_0fef:		php				; 08 
B31_0ff0:		lsr $0406		; 4e 06 04
B31_0ff3:		rti				; 40 


B31_0ff4:	.db $04
B31_0ff5:	.db $04
B31_0ff6:		lsr $04, x		; 56 04
B31_0ff8:	.db $0c
B31_0ff9:		rol $08, x		; 36 08
B31_0ffb:	.db $04
B31_0ffc:		ror $08			; 66 08
B31_0ffe:		asl $6c			; 06 6c
B31_1000:		php				; 08 
B31_1001:	.db $04
B31_1002:	.db $02
B31_1003:		asl a			; 0a
B31_1004:	.db $04
B31_1005:	.db $04
B31_1006:		asl a			; 0a
B31_1007:	.db $04
B31_1008:		php				; 08 
B31_1009:		php				; 08 
B31_100a:	.db $02
B31_100b:		asl a			; 0a
B31_100c:		php				; 08 
B31_100d:	.db $02
B31_100e:	.db $0c
B31_100f:		php				; 08 
B31_1010:	.db $02
B31_1011:		asl $0208		; 0e 08 02
B31_1014:		;removed
	.db $10 $08

B31_1016:	.db $02
B31_1017:	.db $12
B31_1018:		php				; 08 
B31_1019:	.db $02
B31_101a:	.db $14
B31_101b:		php				; 08 
B31_101c:	.db $02
B31_101d:		asl $08, x		; 16 08
B31_101f:	.db $02
B31_1020:		clc				; 18 
B31_1021:		php				; 08 
B31_1022:	.db $02
B31_1023:	.db $1a
B31_1024:		php				; 08 
B31_1025:	.db $02
B31_1026:	.db $1c
B31_1027:		php				; 08 
B31_1028:	.db $02
B31_1029:		asl $0208, x	; 1e 08 02
B31_102c:		jsr $0208		; 20 08 02
B31_102f:	.db $22
B31_1030:		php				; 08 
B31_1031:	.db $02
B31_1032:		bit $08			; 24 08
B31_1034:	.db $02
B31_1035:		rol $08			; 26 08
B31_1037:	.db $02
B31_1038:		plp				; 28 
B31_1039:		php				; 08 
B31_103a:	.db $02
B31_103b:		rol a			; 2a
B31_103c:		php				; 08 
B31_103d:	.db $02
B31_103e:		bit $0208		; 2c 08 02
B31_1041:		rol $0208		; 2e 08 02
B31_1044:		;removed
	.db $30 $08

B31_1046:	.db $02
B31_1047:	.db $32
B31_1048:		php				; 08 
B31_1049:	.db $02
B31_104a:		bit $08			; 24 08
B31_104c:	.db $02
B31_104d:		rol $08, x		; 36 08
B31_104f:	.db $02
B31_1050:		sec				; 38 
B31_1051:		php				; 08 
B31_1052:	.db $02
B31_1053:	.db $3a
B31_1054:		php				; 08 
B31_1055:	.db $02
B31_1056:	.db $3c
B31_1057:		php				; 08 
B31_1058:	.db $02
B31_1059:		rol $0208, x	; 3e 08 02
B31_105c:		rti				; 40 


B31_105d:		php				; 08 
B31_105e:	.db $02
B31_105f:	.db $42
B31_1060:		php				; 08 
B31_1061:	.db $02
B31_1062:	.db $44
B31_1063:		php				; 08 
B31_1064:	.db $02
B31_1065:		lsr $08			; 46 08
B31_1067:	.db $02
B31_1068:		bvc B31_1072 ; 50 08

B31_106a:	.db $02
B31_106b:		lsr $0208		; 4e 08 02
B31_106e:		jmp $0208		; 4c 08 02


B31_1071:		lsr a			; 4a
B31_1072:		php				; 08 
B31_1073:	.db $02
B31_1074:		pha				; 48 
B31_1075:		php				; 08 
B31_1076:	.db $02
B31_1077:	.db $52
B31_1078:		php				; 08 
B31_1079:	.db $02
B31_107a:	.db $54
B31_107b:		php				; 08 
B31_107c:	.db $02
B31_107d:		lsr $08, x		; 56 08
B31_107f:	.db $02
B31_1080:		cli				; 58 
B31_1081:		php				; 08 
B31_1082:	.db $02
B31_1083:	.db $5a
B31_1084:		php				; 08 
B31_1085:	.db $02
B31_1086:	.db $5c
B31_1087:		php				; 08 
B31_1088:	.db $02
B31_1089:		lsr $0208, x	; 5e 08 02
B31_108c:		rts				; 60 


B31_108d:		php				; 08 
B31_108e:	.db $02
B31_108f:	.db $62
B31_1090:		php				; 08 
B31_1091:	.db $02
B31_1092:	.db $64
B31_1093:		php				; 08 
B31_1094:	.db $02
B31_1095:		ror $08			; 66 08
B31_1097:	.db $02
B31_1098:		pla				; 68 
B31_1099:		php				; 08 
B31_109a:	.db $02
B31_109b:		ror a			; 6a
B31_109c:		php				; 08 
B31_109d:	.db $02
B31_109e:		jmp ($0208)		; 6c 08 02


B31_10a1:		ror $0208		; 6e 08 02
B31_10a4:		tsx				; ba 
B31_10a5:		php				; 08 
B31_10a6:		php				; 08 
B31_10a7:	.db $c2
B31_10a8:		php				; 08 
B31_10a9:		php				; 08 
B31_10aa:		dex				; ca 
B31_10ab:		php				; 08 
B31_10ac:		php				; 08 
B31_10ad:		cpx #$09		; e0 09
B31_10af:		php				; 08 
B31_10b0:		cpx $0407		; ec 07 04
B31_10b3:		beq B31_10be ; f0 09

B31_10b5:	.db $04
B31_10b6:		inc $0208, x	; fe 08 02
B31_10b9:	.db $02
B31_10ba:		bpl B31_10c0 ; 10 04

B31_10bc:		asl a			; 0a
B31_10bd:		php				; 08 
B31_10be:		php				; 08 
B31_10bf:	.db $1a
B31_10c0:		asl a			; 0a
B31_10c1:	.db $04
B31_10c2:		jsr $080a		; 20 0a 08
B31_10c5:		plp				; 28 
B31_10c6:		asl a			; 0a
B31_10c7:	.db $04
B31_10c8:	.db $92
B31_10c9:		;removed
	.db $10 $04

B31_10cb:		tay				; a8 
B31_10cc:		asl a			; 0a
B31_10cd:	.db $04
B31_10ce:		dec $0418, x	; de 18 04
B31_10d1:		sty $040c		; 8c 0c 04
B31_10d4:		jmp $040a		; 4c 0a 04


B31_10d7:	.db $62
B31_10d8:		asl a			; 0a
B31_10d9:	.db $04
B31_10da:	.db $34
B31_10db:		;removed
	.db $10 $04

B31_10dd:		ldy $040c, x	; bc 0c 04
B31_10e0:		bit $040e		; 2c 0e 04
B31_10e3:		bmi B31_10f3 ; 30 0e

B31_10e5:	.db $04
B31_10e6:	.db $42
B31_10e7:		bpl B31_10ed ; 10 04

B31_10e9:		cli				; 58 
B31_10ea:		asl a			; 0a
B31_10eb:	.db $04
B31_10ec:	.db $62
B31_10ed:		asl a			; 0a
B31_10ee:	.db $04
B31_10ef:		pla				; 68 
B31_10f0:	.db $0c
B31_10f1:		php				; 08 
B31_10f2:		dey				; 88 
B31_10f3:	.db $0c
B31_10f4:	.db $04
B31_10f5:	.db $74
B31_10f6:	.db $0c
B31_10f7:		asl a			; 0a
B31_10f8:		ldy $060a		; ac 0a 06
B31_10fb:		ldx #$0c		; a2 0c
B31_10fd:		asl $96			; 06 96
B31_10ff:		php				; 08 
B31_1100:		asl $b0			; 06 b0
B31_1102:	.db $0c
B31_1103:	.db $04
B31_1104:		bvs B31_1110 ; 70 0a

B31_1106:	.db $04
B31_1107:	.db $9c
B31_1108:	.db $0c
B31_1109:		asl $b8			; 06 b8
B31_110b:		asl a			; 0a
B31_110c:	.db $04
B31_110d:		ldy $040c, x	; bc 0c 04
B31_1110:		dex				; ca 
B31_1111:		clc				; 18 
B31_1112:	.db $04
B31_1113:		dec $080c, x	; de 0c 08
B31_1116:	.db $da
B31_1117:	.db $0c
B31_1118:	.db $04
B31_1119:		inc $18			; e6 18
B31_111b:	.db $04
B31_111c:		inc $0c			; e6 0c
B31_111e:		php				; 08 
B31_111f:	.db $9c
B31_1120:		clc				; 18 
B31_1121:		asl $14			; 06 14
B31_1123:		php				; 08 
B31_1124:		asl $d0			; 06 d0
B31_1126:		asl a			; 0a
B31_1127:		php				; 08 
B31_1128:	.db $14
B31_1129:		php				; 08 
B31_112a:	.db $04
B31_112b:	.db $92
B31_112c:	.db $14
B31_112d:	.db $04
B31_112e:		ror $040a, x	; 7e 0a 04
B31_1131:	.db $1a
B31_1132:		php				; 08 
B31_1133:		asl $20			; 06 20
B31_1135:	.db $14
B31_1136:	.db $04
B31_1137:		bit $0c			; 24 0c
B31_1139:	.db $04
B31_113a:		plp				; 28 
B31_113b:		;removed
	.db $10 $06

B31_113d:		rol $0406		; 2e 06 04
B31_1140:	.db $34
B31_1141:		asl a			; 0a
B31_1142:		asl $0c			; 06 0c
B31_1144:		php				; 08 
B31_1145:	.db $04
B31_1146:		lsr $04, x		; 56 04
B31_1148:	.db $04
B31_1149:	.db $72
B31_114a:	.db $0c
B31_114b:	.db $04
B31_114c:		ror $0c, x		; 76 0c
B31_114e:	.db $04
B31_114f:	.db $64
B31_1150:	.db $04
B31_1151:	.db $04
B31_1152:		pla				; 68 
B31_1153:		php				; 08 
B31_1154:		php				; 08 
B31_1155:	.db $7a
B31_1156:		asl a			; 0a
B31_1157:	.db $04
B31_1158:	.db $02
B31_1159:		php				; 08 
B31_115a:		asl $0a			; 06 0a
B31_115c:	.db $04
B31_115d:	.db $02
B31_115e:	.db $0c
B31_115f:		clc				; 18 
B31_1160:	.db $02
B31_1161:		asl $0218		; 0e 18 02
B31_1164:		bpl B31_116e ; 10 08

B31_1166:	.db $02
B31_1167:	.db $12
B31_1168:		php				; 08 
B31_1169:		asl $18			; 06 18
B31_116b:		;removed
	.db $10 $08

B31_116d:		clc				; 18 
B31_116e:		php				; 08 
B31_116f:		php				; 08 
B31_1170:		jsr $0210		; 20 10 02
B31_1173:	.db $22
B31_1174:		bpl B31_1178 ; 10 02

B31_1176:		rol $08			; 26 08
B31_1178:	.db $02
B31_1179:		plp				; 28 
B31_117a:		php				; 08 
B31_117b:	.db $02
B31_117c:		rol $0208		; 2e 08 02
B31_117f:	.db $02
B31_1180:		php				; 08 
B31_1181:	.db $02
B31_1182:	.db $04
B31_1183:		php				; 08 
B31_1184:	.db $02
B31_1185:		asl $08			; 06 08
B31_1187:	.db $02
B31_1188:	.db $04
B31_1189:		php				; 08 
B31_118a:	.db $02
B31_118b:		sec				; 38 
B31_118c:		php				; 08 
B31_118d:	.db $02
B31_118e:	.db $3a
B31_118f:		php				; 08 
B31_1190:	.db $04
B31_1191:		rol $0408, x	; 3e 08 04
B31_1194:	.db $42
B31_1195:		php				; 08 
B31_1196:	.db $04
B31_1197:		lsr $08			; 46 08
B31_1199:	.db $04
B31_119a:		lsr $0808		; 4e 08 08
B31_119d:		jmp $0208		; 4c 08 02


B31_11a0:		lsr a			; 4a
B31_11a1:		php				; 08 
B31_11a2:	.db $02
B31_11a3:	.db $3a
B31_11a4:		php				; 08 
B31_11a5:	.db $02
B31_11a6:	.db $3c
B31_11a7:		php				; 08 
B31_11a8:	.db $02
B31_11a9:		lsr $08, x		; 56 08
B31_11ab:	.db $04
B31_11ac:	.db $5a
B31_11ad:		php				; 08 
B31_11ae:	.db $04
B31_11af:		lsr $0408, x	; 5e 08 04
B31_11b2:	.db $62
B31_11b3:		php				; 08 
B31_11b4:	.db $04
B31_11b5:		ror $08			; 66 08
B31_11b7:	.db $02
B31_11b8:		ror $08			; 66 08
B31_11ba:		asl $74			; 06 74
B31_11bc:		php				; 08 
B31_11bd:	.db $02
B31_11be:		ror $08, x		; 76 08
B31_11c0:	.db $02
B31_11c1:		sei				; 78 
B31_11c2:		php				; 08 
B31_11c3:	.db $02
B31_11c4:	.db $7a
B31_11c5:		php				; 08 
B31_11c6:	.db $04
B31_11c7:		ror $0408, x	; 7e 08 04
B31_11ca:	.db $80
B31_11cb:		php				; 08 
B31_11cc:	.db $04
B31_11cd:	.db $82
B31_11ce:		php				; 08 
B31_11cf:	.db $04
B31_11d0:	.db $72
B31_11d1:		php				; 08 
B31_11d2:	.db $02
B31_11d3:		;removed
	.db $70 $08

B31_11d5:	.db $02
B31_11d6:		ror $0208		; 6e 08 02
B31_11d9:		jmp ($0208)		; 6c 08 02


B31_11dc:		jmp ($0208)		; 6c 08 02


B31_11df:		ror $0208		; 6e 08 02
B31_11e2:		;removed
	.db $70 $08

B31_11e4:	.db $02
B31_11e5:	.db $72
B31_11e6:		php				; 08 
B31_11e7:	.db $02
B31_11e8:		sty $08			; 84 08
B31_11ea:	.db $02
B31_11eb:		stx $08			; 86 08
B31_11ed:	.db $02
B31_11ee:		dey				; 88 
B31_11ef:		php				; 08 
B31_11f0:	.db $02
B31_11f1:		txa				; 8a 
B31_11f2:		php				; 08 
B31_11f3:		asl a			; 0a
B31_11f4:		txs				; 9a 
B31_11f5:		php				; 08 
B31_11f6:	.db $02
B31_11f7:	.db $9c
B31_11f8:		php				; 08 
B31_11f9:	.db $02
B31_11fa:	.db $9e
B31_11fb:		php				; 08 
B31_11fc:	.db $02
B31_11fd:		ldy #$08		; a0 08
B31_11ff:	.db $02
B31_1200:		ldx #$08		; a2 08
B31_1202:	.db $02
B31_1203:		ldy $08			; a4 08
B31_1205:	.db $02
B31_1206:		ldx $08			; a6 08
B31_1208:	.db $02
B31_1209:		tay				; a8 
B31_120a:		php				; 08 
B31_120b:	.db $02
B31_120c:		tax				; aa 
B31_120d:		php				; 08 
B31_120e:	.db $02
B31_120f:		ldy $0208		; ac 08 02
B31_1212:		ldx $0208		; ae 08 02
B31_1215:		;removed
	.db $b0 $08

B31_1217:	.db $02
B31_1218:	.db $b2
B31_1219:		php				; 08 
B31_121a:	.db $02
B31_121b:		ldy $08, x		; b4 08
B31_121d:	.db $02
B31_121e:		ldx $08, y		; b6 08
B31_1220:	.db $02
B31_1221:		clv				; b8 
B31_1222:		php				; 08 
B31_1223:	.db $02
B31_1224:		tsx				; ba 
B31_1225:		php				; 08 
B31_1226:	.db $02
B31_1227:		ldy $0208, x	; bc 08 02
B31_122a:		ldx $0208, y	; be 08 02
B31_122d:		cpy #$08		; c0 08
B31_122f:	.db $02
B31_1230:	.db $c2
B31_1231:		php				; 08 
B31_1232:	.db $02
B31_1233:		cpy $08			; c4 08
B31_1235:	.db $02
B31_1236:		dec $08			; c6 08
B31_1238:	.db $02
B31_1239:		iny				; c8 
B31_123a:		php				; 08 
B31_123b:	.db $02
B31_123c:		dex				; ca 
B31_123d:		php				; 08 
B31_123e:	.db $02
B31_123f:		cpy $0208		; cc 08 02
B31_1242:		dec $0208		; ce 08 02
B31_1245:		;removed
	.db $d0 $08

B31_1247:	.db $02
B31_1248:	.db $d2
B31_1249:		php				; 08 
B31_124a:	.db $02
B31_124b:	.db $d4
B31_124c:		php				; 08 
B31_124d:	.db $02
B31_124e:		dec $08, x		; d6 08
B31_1250:	.db $02
B31_1251:		cld				; d8 
B31_1252:		php				; 08 
B31_1253:	.db $02
B31_1254:	.db $da
B31_1255:		php				; 08 
B31_1256:	.db $02
B31_1257:	.db $02
B31_1258:		php				; 08 
B31_1259:	.db $02
B31_125a:	.db $04
B31_125b:		php				; 08 
B31_125c:	.db $02
B31_125d:		asl $08			; 06 08
B31_125f:	.db $02
B31_1260:		php				; 08 
B31_1261:		php				; 08 
B31_1262:	.db $02
B31_1263:		asl a			; 0a
B31_1264:		php				; 08 
B31_1265:	.db $02
B31_1266:	.db $0c
B31_1267:		php				; 08 
B31_1268:	.db $02
B31_1269:		asl $0218		; 0e 18 02
B31_126c:		bpl B31_1286 ; 10 18

B31_126e:	.db $02
B31_126f:	.db $12
B31_1270:		php				; 08 
B31_1271:	.db $02
B31_1272:	.db $14
B31_1273:		php				; 08 
B31_1274:	.db $02
B31_1275:		asl $08, x		; 16 08
B31_1277:	.db $02
B31_1278:		clc				; 18 
B31_1279:		php				; 08 
B31_127a:	.db $02
B31_127b:	.db $1a
B31_127c:		php				; 08 
B31_127d:	.db $02
B31_127e:	.db $1c
B31_127f:		php				; 08 
B31_1280:	.db $02
B31_1281:		asl $0608, x	; 1e 08 06
B31_1284:		bit $08			; 24 08
B31_1286:	.db $02
B31_1287:		rol $08			; 26 08
B31_1289:	.db $02
B31_128a:		plp				; 28 
B31_128b:		php				; 08 
B31_128c:	.db $02
B31_128d:		rol a			; 2a
B31_128e:		php				; 08 
B31_128f:	.db $02
B31_1290:		bit $0608		; 2c 08 06
B31_1293:	.db $32
B31_1294:		php				; 08 
B31_1295:	.db $02
B31_1296:	.db $34
B31_1297:		php				; 08 
B31_1298:	.db $02
B31_1299:		rol $08, x		; 36 08
B31_129b:	.db $02
B31_129c:		sec				; 38 
B31_129d:		php				; 08 
B31_129e:	.db $02
B31_129f:	.db $3a
B31_12a0:		php				; 08 
B31_12a1:	.db $02
B31_12a2:	.db $3c
B31_12a3:		php				; 08 
B31_12a4:	.db $02
B31_12a5:		rol $0208, x	; 3e 08 02
B31_12a8:		rti				; 40 


B31_12a9:		php				; 08 
B31_12aa:	.db $04
B31_12ab:	.db $42
B31_12ac:		php				; 08 
B31_12ad:	.db $02
B31_12ae:	.db $44
B31_12af:		php				; 08 
B31_12b0:	.db $02
B31_12b1:		lsr $08			; 46 08
B31_12b3:	.db $02
B31_12b4:		pha				; 48 
B31_12b5:		php				; 08 
B31_12b6:	.db $02
B31_12b7:		bit $0208		; 2c 08 02
B31_12ba:		lsr a			; 4a
B31_12bb:		php				; 08 
B31_12bc:	.db $02
B31_12bd:		jmp $0208		; 4c 08 02


B31_12c0:		lsr $0208		; 4e 08 02
B31_12c3:		;removed
	.db $50 $08

B31_12c5:	.db $02
B31_12c6:	.db $52
B31_12c7:		php				; 08 
B31_12c8:	.db $02
B31_12c9:	.db $54
B31_12ca:		php				; 08 
B31_12cb:	.db $02
B31_12cc:		lsr $08, x		; 56 08
B31_12ce:	.db $02
B31_12cf:		cli				; 58 
B31_12d0:		php				; 08 
B31_12d1:	.db $02
B31_12d2:	.db $5a
B31_12d3:		php				; 08 
B31_12d4:	.db $02
B31_12d5:	.db $5c
B31_12d6:		php				; 08 
B31_12d7:	.db $02
B31_12d8:	.db $62
B31_12d9:		php				; 08 
B31_12da:	.db $02
B31_12db:	.db $64
B31_12dc:		php				; 08 
B31_12dd:	.db $02
B31_12de:		ror $08			; 66 08
B31_12e0:	.db $02
B31_12e1:		bvs B31_12eb ; 70 08

B31_12e3:	.db $02
B31_12e4:		pla				; 68 
B31_12e5:		php				; 08 
B31_12e6:	.db $02
B31_12e7:		pla				; 68 
B31_12e8:		php				; 08 
B31_12e9:		php				; 08 
B31_12ea:		pla				; 68 
B31_12eb:		php				; 08 
B31_12ec:	.db $02
B31_12ed:		bvs B31_12f7 ; 70 08

B31_12ef:	.db $02
B31_12f0:		jmp ($0208)		; 6c 08 02


B31_12f3:		ror a			; 6a
B31_12f4:		php				; 08 
B31_12f5:	.db $02
B31_12f6:		pla				; 68 
B31_12f7:		php				; 08 
B31_12f8:	.db $02
B31_12f9:		jmp ($0208)		; 6c 08 02


B31_12fc:		bvs B31_1306 ; 70 08

B31_12fe:	.db $02
B31_12ff:		pla				; 68 
B31_1300:		php				; 08 
B31_1301:	.db $02
B31_1302:	.db $72
B31_1303:		php				; 08 
B31_1304:		asl $78			; 06 78
B31_1306:		php				; 08 
B31_1307:	.db $02
B31_1308:	.db $7a
B31_1309:		php				; 08 
B31_130a:	.db $02
B31_130b:	.db $7c
B31_130c:		php				; 08 
B31_130d:	.db $02
B31_130e:		ror $0208, x	; 7e 08 02
B31_1311:	.db $7c
B31_1312:		php				; 08 
B31_1313:	.db $02
B31_1314:	.db $80
B31_1315:		php				; 08 
B31_1316:	.db $02
B31_1317:	.db $82
B31_1318:		php				; 08 
B31_1319:	.db $02
B31_131a:		sty $08			; 84 08
B31_131c:	.db $02
B31_131d:		stx $08			; 86 08
B31_131f:	.db $02
B31_1320:		dey				; 88 
B31_1321:		php				; 08 
B31_1322:	.db $04
B31_1323:		sty $0208		; 8c 08 02
B31_1326:		jmp ($0208)		; 6c 08 02


B31_1329:		tax				; aa 
B31_132a:		php				; 08 
B31_132b:	.db $02
B31_132c:		ldy $0208		; ac 08 02
B31_132f:		ldx $0608		; ae 08 06
B31_1332:	.db $b2
B31_1333:	.db $14
B31_1334:		asl $b8			; 06 b8
B31_1336:	.db $03
B31_1337:		php				; 08 
B31_1338:		lsr $0208, x	; 5e 08 02
B31_133b:		rts				; 60 


B31_133c:		php				; 08 
B31_133d:	.db $02
B31_133e:	.db $02
B31_133f:		php				; 08 
B31_1340:	.db $04
B31_1341:		rts				; 60 


B31_1342:		php				; 08 
B31_1343:		php				; 08 
B31_1344:		asl a			; 0a
B31_1345:		php				; 08 
B31_1346:	.db $04
B31_1347:		rol $04, x		; 36 04
B31_1349:		php				; 08 
B31_134a:		rol $0806, x	; 3e 06 08
B31_134d:		lsr $04			; 46 04
B31_134f:		asl a			; 0a
B31_1350:		pha				; 48 
B31_1351:		php				; 08 
B31_1352:	.db $02
B31_1353:		lsr a			; 4a
B31_1354:		php				; 08 
B31_1355:	.db $02
B31_1356:		jmp $0408		; 4c 08 04


B31_1359:		bvc B31_1363 ; 50 08

B31_135b:	.db $02
B31_135c:		clc				; 18 
B31_135d:		php				; 08 
B31_135e:	.db $02
B31_135f:	.db $5c
B31_1360:	.db $04
B31_1361:	.db $04
B31_1362:	.db $1c
B31_1363:		asl a			; 0a
B31_1364:		asl $22			; 06 22
B31_1366:		asl a			; 0a
B31_1367:		asl $28			; 06 28
B31_1369:		bpl B31_1371 ; 10 06

B31_136b:		rol $0808		; 2e 08 08
B31_136e:		rol $0a, x		; 36 0a
B31_1370:		php				; 08 
B31_1371:		rol $0460, x	; 3e 60 04
B31_1374:	.db $52
B31_1375:		asl a			; 0a
B31_1376:		php				; 08 
B31_1377:	.db $5a
B31_1378:	.db $04
B31_1379:	.db $04
B31_137a:		lsr $040c, x	; 5e 0c 04
B31_137d:	.db $62
B31_137e:		asl a			; 0a
B31_137f:		asl $68			; 06 68
B31_1381:	.db $04
B31_1382:	.db $04
B31_1383:		rts				; 60 


gameState4_inGame:
	jsr inGameCommonFunc
	lda wIsPaused
	beq +
	rts
+	lda wInGameSubstate
	jsr jumpTablePreserveY
	.dw inGameSubstate00
	.dw inGameSubstate01
	.dw inGameSubstate02
	.dw inGameSubstate03
	.dw inGameSubstate04
	.dw inGameSubstate05
	.dw inGameSubstate06
	.dw inGameSubstate07
	.dw inGameSubstate08
	.dw inGameSubstate09
	.dw inGameSubstate0a
	.dw inGameSubstate0b
	.dw inGameSubstate0c
	.dw inGameSubstate0d
	.dw inGameSubstate0e
	.dw inGameSubstate0f
	.dw inGameSubstate10
	.dw inGameSubstate11
	.dw inGameSubstate12_stub
	.dw inGameSubstate13
	.dw inGameSubstate14
	.dw inGameSubstate15
	.dw inGameSubstate16
	.dw inGameSubstate17
	.dw inGameSubstate18
	.dw inGameSubstate19
	.dw inGameSubstate1a
	.dw inGameSubstate1b
	.dw inGameSubstate1c
	.dw inGameSubstate1d
	.dw inGameSubstate1e
	.dw inGameSubstate1f


inGameSubstate1f:
B31_13d1:		lda #$02		; a9 02
B31_13d3:		sta $1c			; 85 1c

	jsr_8000Func func_00_11d5

B31_13dd:		jmp $e68f		; 4c 8f e6


inGameSubstate1e:
B31_13e0:		lda #$80		; a9 80
B31_13e2:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_13e5:		jmp $9215		; 4c 15 92


inGameSubstate19:
B31_13e8:		lda #$80		; a9 80
B31_13ea:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_13ed:		jmp $91b2		; 4c b2 91


inGameSubstate00:
B31_13f0:		jsr func_1f_0bfd		; 20 fd eb
B31_13f3:		inc wInGameSubstate			; e6 2a
B31_13f5:		rts				; 60 


inGameSubstate01:
B31_13f6:		jsr $f753		; 20 53 f7
B31_13f9:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_13fc:		jsr func_1f_05d3		; 20 d3 e5
B31_13ff:		jsr func_1e_1067		; 20 67 d0
B31_1402:		lda #$9c		; a9 9c
B31_1404:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1407:		jsr $8588		; 20 88 85
B31_140a:		jsr $85b8		; 20 b8 85
B31_140d:		jsr $8642		; 20 42 86
B31_1410:		jsr $d0f8		; 20 f8 d0
B31_1413:		lda #$8e		; a9 8e
B31_1415:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1418:		jsr $b53f		; 20 3f b5
B31_141b:		lda #$80		; a9 80
B31_141d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1420:		jsr $9702		; 20 02 97
B31_1423:		bcs B31_143e ; b0 19

B31_1425:		lda $68			; a5 68
B31_1427:		bmi B31_1433 ; 30 0a

B31_1429:		jsr $cd83		; 20 83 cd
B31_142c:		lda #$00		; a9 00
B31_142e:		sta $8d			; 85 8d
B31_1430:		inc $2a			; e6 2a
B31_1432:		rts				; 60 

B31_1433:		jsr $cd7b		; 20 7b cd
B31_1436:		lda #$00		; a9 00
B31_1438:		sta $8d			; 85 8d
B31_143a:		lda #$04		; a9 04
B31_143c:		bne B31_1474 ; d0 36

B31_143e:		lda $7d			; a5 7d
B31_1440:		and #$f0		; 29 f0
B31_1442:		cmp #$10		; c9 10
B31_1444:		beq B31_1464 ; f0 1e

B31_1446:		cmp #$20		; c9 20
B31_1448:		beq B31_1425 ; f0 db

B31_144a:		cmp #$30		; c9 30
B31_144c:		beq B31_1425 ; f0 d7

B31_144e:		cmp #$40		; c9 40
B31_1450:		beq B31_1459 ; f0 07

B31_1452:		cmp #$70		; c9 70
B31_1454:		beq B31_1477 ; f0 21

B31_1456:		jmp $f425		; 4c 25 f4


B31_1459:		ldy #$00		; a0 00
B31_145b:		sty $0780		; 8c 80 07
B31_145e:		iny				; c8 
B31_145f:		sty $0781		; 8c 81 07
B31_1462:		bne B31_1425 ; d0 c1

B31_1464:		lda #$02		; a9 02
B31_1466:		sta $1c			; 85 1c
B31_1468:		jsr $cd83		; 20 83 cd
B31_146b:		jsr $f757		; 20 57 f7
B31_146e:		lda #$00		; a9 00
B31_1470:		sta $64			; 85 64
B31_1472:		lda #$09		; a9 09

B31_1474:		sta $2a			; 85 2a
B31_1476:		rts				; 60 


B31_1477:		lda #$13		; a9 13
B31_1479:		bne B31_1474 ; d0 f9

inGameSubstate02:
B31_147b:		lda #$02		; a9 02
B31_147d:		sta $1c			; 85 1c
B31_147f:		lda $8d			; a5 8d
B31_1481:		bne B31_1491 ; d0 0e

B31_1483:		jsr $f757		; 20 57 f7
B31_1486:		lda #$80		; a9 80
B31_1488:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_148b:		jsr $8d66		; 20 66 8d
B31_148e:		inc $8d			; e6 8d
B31_1490:		rts				; 60 

B31_1491:		jsr func_1e_0dc8		; 20 c8 cd
B31_1494:		bcs B31_1497 ; b0 01

B31_1496:		rts				; 60 

B31_1497:		lda #$00		; a9 00
B31_1499:		sta $1c			; 85 1c
B31_149b:		jsr func_1e_0ff9		; 20 f9 cf
B31_149e:		jsr func_1f_05ec		; 20 ec e5
B31_14a1:		jsr $f4d4		; 20 d4 f4
B31_14a4:		lda $7d			; a5 7d
B31_14a6:		and #$f0		; 29 f0
B31_14a8:		cmp #$10		; c9 10
B31_14aa:		beq B31_14c7 ; f0 1b

B31_14ac:		cmp #$20		; c9 20
B31_14ae:		beq B31_14c2 ; f0 12

B31_14b0:		cmp #$30		; c9 30
B31_14b2:		beq B31_14b7 ; f0 03

B31_14b4:		inc $2a			; e6 2a
B31_14b6:		rts				; 60 

B31_14b7:		lda #$80		; a9 80
B31_14b9:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_14bc:		jsr $97e1		; 20 e1 97
B31_14bf:		jmp $f4b4		; 4c b4 f4

B31_14c2:		lda #$0f		; a9 0f
B31_14c4:		sta $2a			; 85 2a
B31_14c6:		rts				; 60 

B31_14c7:		lda #$80		; a9 80
B31_14c9:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_14cc:		jsr $9802		; 20 02 98
B31_14cf:		lda #$0a		; a9 0a
B31_14d1:		sta $2a			; 85 2a
B31_14d3:		rts				; 60 


B31_14d4:		lda #$9c		; a9 9c
B31_14d6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_14d9:		jmp $bc29		; 4c 29 bc


inGameSubstate0f:
B31_14dc:		lda #$80		; a9 80
B31_14de:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_14e1:		jsr $96d0		; 20 d0 96
B31_14e4:		bcc B31_1516 ; 90 30

B31_14e6:		lda #$10		; a9 10
B31_14e8:		sta $2a			; 85 2a
B31_14ea:		lda #$00		; a9 00
B31_14ec:		sta $6b			; 85 6b
B31_14ee:		rts				; 60 


inGameSubstate1b:
B31_14ef:		lda $c7			; a5 c7
B31_14f1:		beq B31_14fb ; f0 08

B31_14f3:		dec $c7			; c6 c7
B31_14f5:		bne B31_1516 ; d0 1f

B31_14f7:		lda #$00		; a9 00
B31_14f9:		sta $6b			; 85 6b
B31_14fb:		lda #$80		; a9 80
B31_14fd:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1500:		jsr $ba46		; 20 46 ba
B31_1503:		jmp inGameSubstate03		; 4c 16 f5


inGameSubstate0a:
	jsr_a000Func func_19_03fe
B31_150e:		lda #$9c		; a9 9c
B31_1510:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1513:		jsr $8529		; 20 29 85

inGameSubstate03:
B31_1516:		jsr $f55d		; 20 5d f5
B31_1519:		bcs B31_155c ; b0 41

B31_151b:		lda #$80		; a9 80
B31_151d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1520:		jsr $8f0b		; 20 0b 8f
B31_1523:		lda #$9c		; a9 9c
B31_1525:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1528:		jsr $8a21		; 20 21 8a
B31_152b:		lda $bf			; a5 bf
B31_152d:		ora $0565		; 0d 65 05
B31_1530:		bmi B31_155c ; 30 2a

B31_1532:		lda $78			; a5 78
B31_1534:		bne B31_1539 ; d0 03

B31_1536:		jsr func_1e_1175		; 20 75 d1
B31_1539:		lda #$84		; a9 84
B31_153b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_153e:		jsr $af9d		; 20 9d af

	jsr_8000Func func_14_008a

B31_1549:		lda #$96		; a9 96
B31_154b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_154e:		jsr func_1f_1de3		; 20 e3 fd
B31_1551:		lda #$84		; a9 84
B31_1553:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1556:		jsr $9faa		; 20 aa 9f
B31_1559:		jmp $800c		; 4c 0c 80

B31_155c:		rts				; 60 


B31_155d:		lda $2c			; a5 2c
B31_155f:		bne B31_158b ; d0 2a

B31_1561:		lda $26			; a5 26
B31_1563:		and #$20		; 29 20
B31_1565:		beq B31_158b ; f0 24

B31_1567:		lda #$88		; a9 88
B31_1569:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_156c:		jsr $b8eb		; 20 eb b8
B31_156f:		bcs B31_158b ; b0 1a

B31_1571:		lda $2a			; a5 2a
B31_1573:		cmp #$1b		; c9 1b
B31_1575:		beq B31_158b ; f0 14

B31_1577:		lda #$88		; a9 88
B31_1579:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_157c:		jsr $b1b4		; 20 b4 b1
B31_157f:		bcc B31_158b ; 90 0a

B31_1581:		lda #$94		; a9 94
B31_1583:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1586:		jsr $849e		; 20 9e 84
B31_1589:		sec				; 38 
B31_158a:		rts				; 60 


B31_158b:		clc				; 18 
B31_158c:		rts				; 60 


inGameSubstate04:
B31_158d:		lda #$02		; a9 02
B31_158f:		sta $1c			; 85 1c
B31_1591:		lda $8d			; a5 8d
B31_1593:		bne B31_159b ; d0 06

B31_1595:		jsr $f75b		; 20 5b f7
B31_1598:		jmp $f486		; 4c 86 f4

B31_159b:		jsr $cc47		; 20 47 cc
B31_159e:		bcs B31_15a1 ; b0 01

B31_15a0:		rts				; 60 

B31_15a1:		lda #$00		; a9 00
B31_15a3:		sta $1c			; 85 1c
B31_15a5:		jsr $f4d4		; 20 d4 f4
B31_15a8:		jsr func_1e_0f8c		; 20 8c cf
B31_15ab:		lda #$94		; a9 94
B31_15ad:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15b0:		jsr $81f8		; 20 f8 81
B31_15b3:		lda #$84		; a9 84
B31_15b5:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15b8:		jsr $9d17		; 20 17 9d
B31_15bb:		inc $2a			; e6 2a
B31_15bd:		rts				; 60 


inGameSubstate05:
B31_15be:		jsr $f55d		; 20 5d f5
B31_15c1:		bcs B31_1608 ; b0 45

B31_15c3:		lda #$80		; a9 80
B31_15c5:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15c8:		jsr $8f0b		; 20 0b 8f
B31_15cb:		lda #$9c		; a9 9c
B31_15cd:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15d0:		jsr $8a21		; 20 21 8a
B31_15d3:		lda $0565		; ad 65 05
B31_15d6:		ora $bf			; 05 bf
B31_15d8:		bmi B31_1608 ; 30 2e

B31_15da:		jsr $cb0b		; 20 0b cb
B31_15dd:		lda #$9c		; a9 9c
B31_15df:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15e2:		jsr $8570		; 20 70 85
B31_15e5:		lda #$84		; a9 84
B31_15e7:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15ea:		jsr $af9d		; 20 9d af
B31_15ed:		lda #$96		; a9 96
B31_15ef:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15f2:		jsr func_1f_1de3		; 20 e3 fd
B31_15f5:		lda #$94		; a9 94
B31_15f7:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15fa:		jsr $8262		; 20 62 82
B31_15fd:		lda #$84		; a9 84
B31_15ff:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1602:		jsr $9ed6		; 20 d6 9e
B31_1605:		jsr $800c		; 20 0c 80
B31_1608:		rts				; 60 


inGameSubstate06:
B31_1609:		lda #$02		; a9 02
B31_160b:		sta $1c			; 85 1c
B31_160d:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_1610:		jsr func_1e_13fb		; 20 fb d3
B31_1613:		lda #$07		; a9 07
B31_1615:		sta $2a			; 85 2a
B31_1617:		rts				; 60 


inGameSubstate07:
B31_1618:		lda #$02		; a9 02
B31_161a:		sta $1c			; 85 1c
B31_161c:		jsr $e7a0		; 20 a0 e7
B31_161f:		jsr setNametableVerticalMirroring		; 20 5f f7
B31_1622:		jsr $e8e3		; 20 e3 e8
B31_1625:		lda #$01		; a9 01
B31_1627:		sta $2a			; 85 2a
B31_1629:		rts				; 60 


inGameSubstate12_stub:
B31_162a:		rts				; 60 


inGameSubstate17:
B31_162b:		lda #$80		; a9 80
B31_162d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1630:		jmp $9ddb		; 4c db 9d


inGameSubstate11:
B31_1633:		lda #$82		; a9 82
B31_1635:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1638:		ldx $07ec		; ae ec 07
B31_163b:		bne B31_1657 ; d0 1a

B31_163d:		jsr $8001		; 20 01 80
B31_1640:		lda $07ec		; ad ec 07
B31_1643:		bne B31_1656 ; d0 11

B31_1645:		lda $07ed		; ad ed 07
B31_1648:		and #$7f		; 29 7f
B31_164a:		cmp #$0c		; c9 0c
B31_164c:		bcs B31_1656 ; b0 08

B31_164e:		lda #$80		; a9 80
B31_1650:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1653:		jsr $8f0b		; 20 0b 8f
B31_1656:		rts				; 60 


B31_1657:		dex				; ca 
B31_1658:		bne B31_1660 ; d0 06

B31_165a:		jsr $828e		; 20 8e 82
B31_165d:		jmp $f66f		; 4c 6f f6


B31_1660:		dex				; ca 
B31_1661:		bne B31_1669 ; d0 06

B31_1663:		jsr $83cf		; 20 cf 83
B31_1666:		jmp $f66f		; 4c 6f f6


B31_1669:		dex				; ca 
B31_166a:		bne B31_166f ; d0 03

B31_166c:		jsr $845e		; 20 5e 84
B31_166f:		lda $07ee		; ad ee 07
B31_1672:		beq B31_1680 ; f0 0c

B31_1674:		lda #$00		; a9 00
B31_1676:		sta $07ed		; 8d ed 07
B31_1679:		sta $07ee		; 8d ee 07
B31_167c:		inc $07ec		; ee ec 07
B31_167f:		rts				; 60 


B31_1680:		jmp $94b8		; 4c b8 94


inGameCommonFunc:
B31_1683:		lda wNametableMapping			; a5 25
B31_1685:		cmp #$ff		; c9 ff
B31_1687:		beq B31_16be ; f0 35

B31_1689:		lda $1e			; a5 1e
B31_168b:		ora $2c			; 05 2c
B31_168d:		ora $1c			; 05 1c
B31_168f:		ora $ab			; 05 ab
B31_1691:		bne B31_16be ; @done

B31_1693:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_1695:		ldy wIsPaused			; a4 2b
B31_1697:		bne B31_16a6 ; @currentlyPaused

; not paused
B31_1699:		and #PADF_START		; 29 10
B31_169b:		beq B31_16be ; @done

; pressing start pauses, and plays sound
B31_169d:		lda #$01		; a9 01
B31_169f:		sta wIsPaused			; 85 2b
B31_16a1:		lda #SND_PAUSE		; a9 4d
B31_16a3:		jmp playSound		; 4c 5f e2

@currentlyPaused:
B31_16a6:		lda wInGameSubstate			; a5 2a
B31_16a8:		cmp #$0a		; c9 0a
B31_16aa:		bne B31_16b4 ; d0 08

	jsr_8000Func func_00_052c

B31_16b4:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_16b6:		and #PADF_START		; 29 10
B31_16b8:		beq B31_16be ; @done

B31_16ba:		lda #$00		; a9 00
B31_16bc:		sta wIsPaused			; 85 2b
B31_16be:		rts				; 60 


inGameSubstate1a:
B31_16bf:		lda #$80		; a9 80
B31_16c1:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_16c4:		jmp $bb1a		; 4c 1a bb


inGameSubstate18:
B31_16c7:		lda #$80		; a9 80
B31_16c9:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_16cc:		jmp $9288		; 4c 88 92


inGameSubstate1c:
B31_16cf:		lda #$00		; a9 00
B31_16d1:		sta $6b			; 85 6b
B31_16d3:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_16d6:		inc $2a			; e6 2a
B31_16d8:		rts				; 60 


inGameSubstate1d:
B31_16d9:		lda #$80		; a9 80
B31_16db:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_16de:		jmp $b3ea		; 4c ea b3


B31_16e1:		inc $6b			; e6 6b
B31_16e3:		lda #$03		; a9 03
B31_16e5:		sta $57			; 85 57
B31_16e7:		lda #$00		; a9 00
B31_16e9:		sta $56			; 85 56
B31_16eb:		jmp $f6f7		; 4c f7 f6


inGameSubstate13:
B31_16ee:		lda #$03		; a9 03
B31_16f0:		sta $33			; 85 33
B31_16f2:		jsr $e68f		; 20 8f e6
B31_16f5:		inc $2a			; e6 2a
B31_16f7:		jsr $f757		; 20 57 f7
B31_16fa:		lda #$00		; a9 00
B31_16fc:		sta $c9			; 85 c9
B31_16fe:		lda #$02		; a9 02
B31_1700:		sta $1c			; 85 1c
B31_1702:		rts				; 60 


B31_1703:		lda $2a			; a5 2a
B31_1705:		pha				; 48 
B31_1706:		jsr $f718		; 20 18 f7
B31_1709:		pla				; 68 
B31_170a:		cmp $2a			; c5 2a
B31_170c:		beq B31_1715 ; f0 07

B31_170e:		inc $6b			; e6 6b
B31_1710:		ldy #$80		; a0 80
B31_1712:		sty $0438		; 8c 38 04
B31_1715:		sta $2a			; 85 2a
B31_1717:		rts				; 60 


inGameSubstate14:
B31_1718:		lda #$80		; a9 80
B31_171a:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_171d:		jsr $b63e		; 20 3e b6
B31_1720:		bcc B31_16fe ; 90 dc

B31_1722:		jsr $f753		; 20 53 f7
B31_1725:		jsr func_1f_05d3		; 20 d3 e5
B31_1728:		jsr func_1e_1067		; 20 67 d0
B31_172b:		lda #$9c		; a9 9c
B31_172d:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1730:		jsr $8588		; 20 88 85
B31_1733:		jsr $85b8		; 20 b8 85
B31_1736:		jsr $d0f8		; 20 f8 d0
B31_1739:		lda #$8e		; a9 8e
B31_173b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_173e:		jsr $b53f		; 20 3f b5
B31_1741:		lda #$80		; a9 80
B31_1743:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1746:		jsr $9702		; 20 02 97
B31_1749:		jsr $cd83		; 20 83 cd
B31_174c:		lda #$00		; a9 00
B31_174e:		sta $8d			; 85 8d
B31_1750:		inc $2a			; e6 2a
B31_1752:		rts				; 60 


B31_1753:		lda #$ff		; a9 ff
B31_1755:		bne B31_1765 ; d0 0e

B31_1757:		lda #$e4		; a9 e4
B31_1759:		bne B31_1765 ; d0 0a

B31_175b:		lda #$d8		; a9 d8
B31_175d:		bne B31_1765 ; d0 06

setNametableVerticalMirroring:
B31_175f:		lda #NT_VERTICAL_MIRROR		; a9 44
B31_1761:		bne B31_1765 ; d0 02

B31_1763:		lda #$50		; a9 50

B31_1765:		sta wNametableMapping			; 85 25
B31_1767:		rts				; 60 


B31_1768:		lda $2a			; a5 2a
B31_176a:		pha				; 48 
B31_176b:		jsr $f778		; 20 78 f7
B31_176e:		pla				; 68 
B31_176f:		cmp $2a			; c5 2a
B31_1771:		beq B31_1775 ; f0 02

B31_1773:		inc $6b			; e6 6b
B31_1775:		sta $2a			; 85 2a
B31_1777:		rts				; 60 


inGameSubstate15:
B31_1778:		lda #$02		; a9 02
B31_177a:		sta $1c			; 85 1c
B31_177c:		lda $8d			; a5 8d
B31_177e:		bne B31_1783 ; d0 03

B31_1780:		jmp $f483		; 4c 83 f4


B31_1783:		jsr func_1e_0dc8		; 20 c8 cd
B31_1786:		bcs B31_1789 ; b0 01

B31_1788:		rts				; 60 


B31_1789:		lda #$00		; a9 00
B31_178b:		sta $1c			; 85 1c
B31_178d:		jsr $d5b9		; 20 b9 d5
B31_1790:		jsr func_1f_05ec		; 20 ec e5
B31_1793:		jsr $fb89		; 20 89 fb
B31_1796:		lda $74			; a5 74
B31_1798:		bne B31_17a1 ; d0 07

B31_179a:		inc $74			; e6 74
B31_179c:		lda #$6a		; a9 6a
B31_179e:		jsr playSound		; 20 5f e2
B31_17a1:		inc $2a			; e6 2a
B31_17a3:		rts				; 60 


B31_17a4:		lda #$08		; a9 08
B31_17a6:		sta $28			; 85 28
B31_17a8:		sta $26			; 85 26
B31_17aa:		jsr $e6c5		; 20 c5 e6
B31_17ad:		lda $0565		; ad 65 05
B31_17b0:		cmp #$02		; c9 02
B31_17b2:		bne B31_17e4 ; d0 30

B31_17b4:		jsr $e5ca		; 20 ca e5
B31_17b7:		lda #$16		; a9 16
B31_17b9:		sta $2a			; 85 2a
B31_17bb:		rts				; 60 


inGameSubstate16:
B31_17bc:		lda #$80		; a9 80
B31_17be:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_17c1:		jsr $96d0		; 20 d0 96
B31_17c4:		bcc B31_17cf ; 90 09

B31_17c6:		lda #$10		; a9 10
B31_17c8:		sta $2a			; 85 2a
B31_17ca:		lda #$08		; a9 08
B31_17cc:		sta $6b			; 85 6b
B31_17ce:		rts				; 60 


B31_17cf:		jsr $f55d		; 20 5d f5
B31_17d2:		bcs B31_181d ; b0 49

B31_17d4:		lda #$80		; a9 80
B31_17d6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_17d9:		jsr $8f0b		; 20 0b 8f
B31_17dc:		lda #$9c		; a9 9c
B31_17de:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_17e1:		jsr $8a21		; 20 21 8a
B31_17e4:		lda $0565		; ad 65 05
B31_17e7:		ora $bf			; 05 bf
B31_17e9:		bmi B31_181d ; 30 32

B31_17eb:		lda $78			; a5 78
B31_17ed:		bne B31_17f2 ; d0 03

B31_17ef:		jsr func_1e_1175		; 20 75 d1
B31_17f2:		lda #$80		; a9 80
B31_17f4:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_17f7:		jsr $b583		; 20 83 b5
B31_17fa:		lda #$84		; a9 84
B31_17fc:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_17ff:		jsr $af9d		; 20 9d af
B31_1802:		lda #$94		; a9 94
B31_1804:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1807:		jsr $808a		; 20 8a 80
B31_180a:		lda #$96		; a9 96
B31_180c:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_180f:		jsr func_1f_1de3		; 20 e3 fd
B31_1812:		lda #$84		; a9 84
B31_1814:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1817:		jsr $9faa		; 20 aa 9f
B31_181a:		jsr $800c		; 20 0c 80
B31_181d:		rts				; 60 


inGameSubstate0b:
B31_181e:		lda #$80		; a9 80
B31_1820:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1823:		jmp func_00_148b		; 4c 8b 94


inGameSubstate0c:
B31_1826:		lda #$80		; a9 80
B31_1828:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_182b:		jmp $946a		; 4c 6a 94


inGameSubstate0d:
inGameSubstate0e:
B31_182e:		lda #$80		; a9 80
B31_1830:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1833:		jmp $96cf		; 4c cf 96


inGameSubstate10:
B31_1836:		lda $6b			; a5 6b
B31_1838:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $f85b
	.dw $f870
	.dw $f87c
	.dw $f886
	.dw $f89e
	.dw $f8d2
	.dw $f903
	.dw $f940
	.dw $f85b
	.dw $f864
	.dw $f87c
	.dw $f886
	.dw $f6e1
	.dw $f703
	.dw $f768
	.dw $f7a4
B31_185b:		jsr set_2c_to_01h		; 20 ce e5
B31_185e:		jsr func_1f_07f7		; 20 f7 e7
B31_1861:		inc $6b			; e6 6b
B31_1863:		rts				; 60 


B31_1864:		lda #$08		; a9 08
B31_1866:		sta $28			; 85 28
B31_1868:		sta $26			; 85 26
B31_186a:		jsr $e6c5		; 20 c5 e6
B31_186d:		jmp func_1e_1175		; 4c 75 d1


B31_1870:		lda #$08		; a9 08
B31_1872:		sta $28			; 85 28
B31_1874:		sta $26			; 85 26
B31_1876:		jsr $e6c5		; 20 c5 e6
B31_1879:		jmp func_1e_1175		; 4c 75 d1


B31_187c:		lda #$02		; a9 02
B31_187e:		sta $1c			; 85 1c
B31_1880:		jsr $d3fb		; 20 fb d3
B31_1883:		inc $6b			; e6 6b
B31_1885:		rts				; 60 


B31_1886:		lda #$02		; a9 02
B31_1888:		sta $1c			; 85 1c
B31_188a:		jsr $e862		; 20 62 e8
B31_188d:		lda #$80		; a9 80
B31_188f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1892:		jsr $90d6		; 20 d6 90
B31_1895:		jsr $e7a0		; 20 a0 e7
B31_1898:		jsr set_2c_to_01h		; 20 ce e5
B31_189b:		inc $6b			; e6 6b
B31_189d:		rts				; 60 


B31_189e:		jsr $f753		; 20 53 f7
B31_18a1:		jsr func_1f_05d3		; 20 d3 e5
B31_18a4:		jsr func_1e_1067		; 20 67 d0
B31_18a7:		lda #$9c		; a9 9c
B31_18a9:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_18ac:		jsr $8588		; 20 88 85
B31_18af:		jsr $85b8		; 20 b8 85
B31_18b2:		jsr $8642		; 20 42 86
B31_18b5:		jsr $d0f8		; 20 f8 d0
B31_18b8:		lda #$8e		; a9 8e
B31_18ba:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_18bd:		jsr $b53f		; 20 3f b5
B31_18c0:		lda #$80		; a9 80
B31_18c2:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_18c5:		jsr $9702		; 20 02 97
B31_18c8:		jsr $cd83		; 20 83 cd
B31_18cb:		lda #$00		; a9 00
B31_18cd:		sta $8d			; 85 8d
B31_18cf:		inc $6b			; e6 6b
B31_18d1:		rts				; 60 


B31_18d2:		lda #$02		; a9 02
B31_18d4:		sta $1c			; 85 1c
B31_18d6:		lda $8d			; a5 8d
B31_18d8:		bne B31_18dd ; d0 03

B31_18da:		jmp $f483		; 4c 83 f4


B31_18dd:		jsr func_1e_0dc8		; 20 c8 cd
B31_18e0:		bcs B31_18e3 ; b0 01

B31_18e2:		rts				; 60 


B31_18e3:		lda #$00		; a9 00
B31_18e5:		sta $1c			; 85 1c
B31_18e7:		jsr func_1e_0ff9		; 20 f9 cf
B31_18ea:		lda $32			; a5 32
B31_18ec:		cmp #$0c		; c9 0c
B31_18ee:		bne B31_18f4 ; d0 04

B31_18f0:		ldy #$ce		; a0 ce
B31_18f2:		bne B31_18f6 ; d0 02

B31_18f4:		ldy #$be		; a0 be
B31_18f6:		ldx #$2e		; a2 2e
B31_18f8:		lda #$10		; a9 10
B31_18fa:		jsr func_1f_05bf		; 20 bf e5
B31_18fd:		jsr func_1f_05ec		; 20 ec e5
B31_1900:		inc $6b			; e6 6b
B31_1902:		rts				; 60 


B31_1903:		lda #$08		; a9 08
B31_1905:		sta $28			; 85 28
B31_1907:		sta $26			; 85 26
B31_1909:		jsr $e6c5		; 20 c5 e6
B31_190c:		jsr func_1e_1175		; 20 75 d1
B31_190f:		lda #$84		; a9 84
B31_1911:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1914:		jsr $af9d		; 20 9d af
B31_1917:		lda #$94		; a9 94
B31_1919:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_191c:		jsr $808a		; 20 8a 80
B31_191f:		lda #$96		; a9 96
B31_1921:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1924:		jsr func_1f_1de3		; 20 e3 fd
B31_1927:		lda #$84		; a9 84
B31_1929:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_192c:		jsr $9faa		; 20 aa 9f
B31_192f:		jsr $800c		; 20 0c 80
B31_1932:		lda $0565		; ad 65 05
B31_1935:		cmp #$02		; c9 02
B31_1937:		bne B31_193f ; d0 06

B31_1939:		lda #$12		; a9 12
B31_193b:		sta $3f			; 85 3f
B31_193d:		inc $6b			; e6 6b
B31_193f:		rts				; 60 


B31_1940:		jsr $e5ca		; 20 ca e5
B31_1943:		jsr func_1e_0ff9		; 20 f9 cf
B31_1946:		lda #$03		; a9 03
B31_1948:		sta $2a			; 85 2a
B31_194a:		rts				; 60 


inGameSubstate08:
B31_194b:		lda $6b			; a5 6b
B31_194d:		jsr jumpTablePreserveY		; 20 6d e8
	.dw func_1f_1964
	.dw $f9a8
	.dw $f9c3
	.dw $f9eb
	.dw $fa99
	.dw $fab9
	.dw $fae1
	.dw $f9a8
	.dw $f9c3
	.dw $fb26

func_1f_1964:
B31_1964:		inc wCurrRoomSection			; e6 33
B31_1966:		jsr $e795		; 20 95 e7
B31_1969:		jsr set_2c_to_01h		; 20 ce e5
B31_196c:		lda #$80		; a9 80
B31_196e:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1971:		jsr $8d96		; 20 96 8d
B31_1974:		lda #$00		; a9 00
B31_1976:		sta $0470		; 8d 70 04
B31_1979:		jsr func_1e_1067		; 20 67 d0
B31_197c:		jsr $d0f8		; 20 f8 d0
B31_197f:		lda #$8e		; a9 8e
B31_1981:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1984:		jsr $b53f		; 20 3f b5
B31_1987:		jsr $cd64		; 20 64 cd
B31_198a:		lda #$80		; a9 80
B31_198c:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_198f:		jsr $9702		; 20 02 97
B31_1992:		lda $7d			; a5 7d
B31_1994:		and #$f0		; 29 f0
B31_1996:		cmp #$30		; c9 30
B31_1998:		beq B31_199d ; f0 03

B31_199a:		inc $6b			; e6 6b
B31_199c:		rts				; 60 

B31_199d:		lda #$80		; a9 80
B31_199f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_19a2:		jsr $97e1		; 20 e1 97
B31_19a5:		jmp $f99a		; 4c 9a f9


B31_19a8:		jsr $cd8c		; 20 8c cd
B31_19ab:		bcs B31_19bc ; b0 0f

B31_19ad:		lda $65			; a5 65
B31_19af:		bne B31_19bb ; d0 0a

B31_19b1:		lda $5c			; a5 5c
B31_19b3:		cmp #$06		; c9 06
B31_19b5:		bne B31_19bb ; d0 04

B31_19b7:		dec $5a			; c6 5a
B31_19b9:		dec $5a			; c6 5a
B31_19bb:		rts				; 60 


B31_19bc:		inc $6b			; e6 6b
B31_19be:		lda $65			; a5 65
B31_19c0:		beq B31_19b1 ; f0 ef

B31_19c2:		rts				; 60 


B31_19c3:		lda $65			; a5 65
B31_19c5:		beq B31_19d6 ; f0 0f

B31_19c7:		lda $0438		; ad 38 04
B31_19ca:		sec				; 38 
B31_19cb:		sbc #$01		; e9 01
B31_19cd:		sta $0438		; 8d 38 04
B31_19d0:		jsr $fb69		; 20 69 fb
B31_19d3:		jmp $f9e2		; 4c e2 f9


B31_19d6:		lda $0438		; ad 38 04
B31_19d9:		clc				; 18 
B31_19da:		adc #$01		; 69 01
B31_19dc:		sta $0438		; 8d 38 04
B31_19df:		jsr $fb77		; 20 77 fb
B31_19e2:		lda $56			; a5 56
B31_19e4:		and #$7f		; 29 7f
B31_19e6:		bne B31_19ea ; d0 02

B31_19e8:		inc $6b			; e6 6b
B31_19ea:		rts				; 60 


B31_19eb:		inc $6b			; e6 6b
B31_19ed:		lda #$80		; a9 80
B31_19ef:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_19f2:		jsr $852c		; 20 2c 85
B31_19f5:		jsr $8013		; 20 13 80
B31_19f8:		jsr $83ee		; 20 ee 83
B31_19fb:		lda #$0c		; a9 0c
B31_19fd:		jsr playSound		; 20 5f e2
B31_1a00:		lda #$3c		; a9 3c
B31_1a02:		sta $30			; 85 30
B31_1a04:		lda #$0c		; a9 0c
B31_1a06:		ldy #$00		; a0 00
B31_1a08:		ldx #$13		; a2 13
B31_1a0a:		jsr func_1f_0f5c		; 20 5c ef
B31_1a0d:		lda #$00		; a9 00
B31_1a0f:		sta $0400, x	; 9d 00 04
B31_1a12:		sta $0454, x	; 9d 54 04
B31_1a15:		sta $0470, x	; 9d 70 04
B31_1a18:		lda $041c		; ad 1c 04
B31_1a1b:		adc #$08		; 69 08
B31_1a1d:		and #$f0		; 29 f0
B31_1a1f:		sta $041c, x	; 9d 1c 04
B31_1a22:		lda $65			; a5 65
B31_1a24:		asl a			; 0a
B31_1a25:		tay				; a8 
B31_1a26:		lda $fa95, y	; b9 95 fa
B31_1a29:		sta $0438, x	; 9d 38 04
B31_1a2c:		lda $fa96, y	; b9 96 fa
B31_1a2f:		sta $04a8, x	; 9d a8 04
B31_1a32:		lda #$00		; a9 00
B31_1a34:		sta $62			; 85 62
B31_1a36:		ldy $054e		; ac 4e 05
B31_1a39:		lda $041c		; ad 1c 04
B31_1a3c:		sec				; 38 
B31_1a3d:		sbc $fa91, y	; f9 91 fa
B31_1a40:		asl a			; 0a
B31_1a41:		rol $62			; 26 62
B31_1a43:		asl a			; 0a
B31_1a44:		rol $62			; 26 62
B31_1a46:		and #$e0		; 29 e0
B31_1a48:		sta $61			; 85 61
B31_1a4a:		ldy $65			; a4 65
B31_1a4c:		lda $fa8f, y	; b9 8f fa
B31_1a4f:		clc				; 18 
B31_1a50:		adc $61			; 65 61
B31_1a52:		sta $61			; 85 61
B31_1a54:		lda $75			; a5 75
B31_1a56:		and #$01		; 29 01
B31_1a58:		sta $00			; 85 00
B31_1a5a:		lda $65			; a5 65
B31_1a5c:		bne B31_1a62 ; d0 04

B31_1a5e:		ldx #$24		; a2 24
B31_1a60:		bne B31_1a64 ; d0 02

B31_1a62:		ldx #$20		; a2 20
B31_1a64:		lda $57			; a5 57
B31_1a66:		and #$01		; 29 01
B31_1a68:		eor $00			; 45 00
B31_1a6a:		beq B31_1a70 ; f0 04

B31_1a6c:		txa				; 8a 
B31_1a6d:		eor #$04		; 49 04
B31_1a6f:		tax				; aa 
B31_1a70:		txa				; 8a 
B31_1a71:		clc				; 18 
B31_1a72:		adc $62			; 65 62
B31_1a74:		sta $62			; 85 62
B31_1a76:		sta $05eb		; 8d eb 05
B31_1a79:		lda $61			; a5 61
B31_1a7b:		sta $05d4		; 8d d4 05
B31_1a7e:		jsr $e8af		; 20 af e8
B31_1a81:		ldy #$06		; a0 06
B31_1a83:		lda #$00		; a9 00
B31_1a85:		sta wVramQueue.w, x	; 9d 00 03
B31_1a88:		inx				; e8 
B31_1a89:		dey				; 88 
B31_1a8a:		bne B31_1a85 ; d0 f9

B31_1a8c:		jmp setVramQueueNextFillIdxAndTerminate		; 4c de e8


B31_1a8f:		ora ($1e, x)	; 01 1e
B31_1a91:		jsr $2420		; 20 20 24
B31_1a94:		jsr $018c		; 20 8c 01
B31_1a97:	.db $74
B31_1a98:		.db $00				; 00
B31_1a99:		dec $30			; c6 30
B31_1a9b:		bne B31_1aa9 ; d0 0c

B31_1a9d:		lda #$00		; a9 00
B31_1a9f:		jsr $ef57		; 20 57 ef
B31_1aa2:		lda #$30		; a9 30
B31_1aa4:		sta $30			; 85 30
B31_1aa6:		inc $6b			; e6 6b
B31_1aa8:		rts				; 60 


B31_1aa9:		ldx #$13		; a2 13
B31_1aab:		jsr func_1f_0f75		; 20 75 ef
B31_1aae:		lda $0593, x	; bd 93 05
B31_1ab1:		bne B31_1aa8 ; d0 f5

B31_1ab3:		lda #$80		; a9 80
B31_1ab5:		sta $057c, x	; 9d 7c 05
B31_1ab8:		rts				; 60 


B31_1ab9:		dec $30			; c6 30
B31_1abb:		bne B31_1ac9 ; d0 0c

B31_1abd:		lda #$0c		; a9 0c
B31_1abf:		ldy #$01		; a0 01
B31_1ac1:		ldx #$13		; a2 13
B31_1ac3:		jsr func_1f_0f5c		; 20 5c ef
B31_1ac6:		inc $6b			; e6 6b
B31_1ac8:		rts				; 60 


B31_1ac9:		lda $65			; a5 65
B31_1acb:		beq B31_1ad5 ; f0 08

B31_1acd:		lda $0438		; ad 38 04
B31_1ad0:		clc				; 18 
B31_1ad1:		adc #$01		; 69 01
B31_1ad3:		bne B31_1adb ; d0 06

B31_1ad5:		lda $0438		; ad 38 04
B31_1ad8:		sec				; 38 
B31_1ad9:		sbc #$01		; e9 01
B31_1adb:		sta $0438		; 8d 38 04
B31_1ade:		jmp $ef73		; 4c 73 ef


B31_1ae1:		ldx #$13		; a2 13
B31_1ae3:		jsr func_1f_0f75		; 20 75 ef
B31_1ae6:		lda $0593, x	; bd 93 05
B31_1ae9:		bne B31_1af2 ; d0 07

B31_1aeb:		lda $057c, x	; bd 7c 05
B31_1aee:		cmp #$01		; c9 01
B31_1af0:		beq B31_1af3 ; f0 01

B31_1af2:		rts				; 60 


B31_1af3:		inc $6b			; e6 6b
B31_1af5:		lda #$0c		; a9 0c
B31_1af7:		jsr playSound		; 20 5f e2
B31_1afa:		lda #$00		; a9 00
B31_1afc:		sta $0400, x	; 9d 00 04
B31_1aff:		jsr $cd76		; 20 76 cd
B31_1b02:		lda $05d4		; ad d4 05
B31_1b05:		sta $61			; 85 61
B31_1b07:		lda $05eb		; ad eb 05
B31_1b0a:		sta $62			; 85 62
B31_1b0c:		jsr $e8af		; 20 af e8
B31_1b0f:		ldy #$00		; a0 00
B31_1b11:		lda $fb20, y	; b9 20 fb
B31_1b14:		sta wVramQueue.w, x	; 9d 00 03
B31_1b17:		inx				; e8 
B31_1b18:		iny				; c8 
B31_1b19:		cpy #$06		; c0 06
B31_1b1b:		bne B31_1b11 ; d0 f4

B31_1b1d:		jmp setVramQueueNextFillIdxAndTerminate		; 4c de e8


B31_1b20:	.db $3c
B31_1b21:	.db $3a
B31_1b22:	.db $3c
B31_1b23:	.db $3b
B31_1b24:	.db $3a
B31_1b25:	.db $3c
B31_1b26:		lda $57			; a5 57
B31_1b28:		eor $75			; 45 75
B31_1b2a:		sta $02			; 85 02
B31_1b2c:		lda #$00		; a9 00
B31_1b2e:		sta $56			; 85 56
B31_1b30:		sta $58			; 85 58
B31_1b32:		ldy $04a8		; ac a8 04
B31_1b35:		beq B31_1b39 ; f0 02

B31_1b37:		lda $71			; a5 71
B31_1b39:		sta $57			; 85 57
B31_1b3b:		eor $02			; 45 02
B31_1b3d:		and #$01		; 29 01
B31_1b3f:		beq B31_1b45 ; f0 04

B31_1b41:		lda #$90		; a9 90
B31_1b43:		bne B31_1b47 ; d0 02

B31_1b45:		lda #$80		; a9 80
B31_1b47:		ora $75			; 05 75
B31_1b49:		sta $75			; 85 75
B31_1b4b:		jsr func_1e_0ff9		; 20 f9 cf
B31_1b4e:		lda $7d			; a5 7d
B31_1b50:		and #$f0		; 29 f0
B31_1b52:		cmp #$30		; c9 30
B31_1b54:		bne B31_1b5e ; d0 08

B31_1b56:		lda #$80		; a9 80
B31_1b58:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1b5b:		jsr $97e1		; 20 e1 97
B31_1b5e:		jsr func_1f_05ec		; 20 ec e5
B31_1b61:		jsr $e5ca		; 20 ca e5
B31_1b64:		lda #$03		; a9 03
B31_1b66:		sta $2a			; 85 2a
B31_1b68:		rts				; 60 


B31_1b69:		lda $56			; a5 56
B31_1b6b:		clc				; 18 
B31_1b6c:		adc #$01		; 69 01
B31_1b6e:		sta $56			; 85 56
B31_1b70:		lda $57			; a5 57
B31_1b72:		adc #$00		; 69 00
B31_1b74:		sta $57			; 85 57
B31_1b76:		rts				; 60 


B31_1b77:		lda $56			; a5 56
B31_1b79:		sec				; 38 
B31_1b7a:		sbc #$01		; e9 01
B31_1b7c:		sta $56			; 85 56
B31_1b7e:		lda $57			; a5 57
B31_1b80:		sbc #$00		; e9 00
B31_1b82:		sta $57			; 85 57
B31_1b84:		rts				; 60 


B31_1b85:		lda #$80		; a9 80
B31_1b87:		bne B31_1b8b ; d0 02

B31_1b89:		lda #$00		; a9 00
B31_1b8b:		sta $0470		; 8d 70 04
B31_1b8e:		sta $0488		; 8d 88 04
B31_1b91:		sta $0489		; 8d 89 04
B31_1b94:		rts				; 60 


B31_1b95:		lda #$9c		; a9 9c
B31_1b97:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1b9a:		lda ($08), y	; b1 08
B31_1b9c:		pha				; 48 
B31_1b9d:		lda #$94		; a9 94
B31_1b9f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1ba2:		pla				; 68 
B31_1ba3:		rts				; 60 


B31_1ba4:		lda #$80		; a9 80
B31_1ba6:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_1ba9:		jsr $8b70		; 20 70 8b
B31_1bac:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_1baf:		lda #$80		; a9 80
B31_1bb1:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_1bb4:		jsr $8b74		; 20 74 8b
B31_1bb7:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_1bba:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1bbd:		lda $fbce		; ad ce fb
B31_1bc0:		pha				; 48 
B31_1bc1:		lda $fbcd		; ad cd fb
B31_1bc4:		pha				; 48 
B31_1bc5:	.db $6c $16 $00
B31_1bc8:		lda #$94		; a9 94
B31_1bca:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1bcd:	.db $c7
B31_1bce:	.db $fb
B31_1bcf:		lda #$92		; a9 92
B31_1bd1:		bne B31_1bd5 ; d0 02

B31_1bd3:		lda #$9c		; a9 9c
B31_1bd5:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_1bd8:		lda $fbe7		; ad e7 fb
B31_1bdb:		pha				; 48 
B31_1bdc:		lda $fbe6		; ad e6 fb
B31_1bdf:		pha				; 48 
B31_1be0:	.db $6c $16 $00
B31_1be3:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_1be6:	.db $e2
B31_1be7:	.db $fb
B31_1be8:		lda #$9a		; a9 9a
B31_1bea:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1bed:		jsr $b7bf		; 20 bf b7
B31_1bf0:		lda #$9c		; a9 9c
B31_1bf2:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1bf5:		lda $10			; a5 10
B31_1bf7:		clc				; 18 
B31_1bf8:		adc $0438, x	; 7d 38 04
B31_1bfb:		sta $10			; 85 10
B31_1bfd:		tya				; 98 
B31_1bfe:		clc				; 18 
B31_1bff:		adc $041c, x	; 7d 1c 04
B31_1c02:		sec				; 38 
B31_1c03:		sbc #$33		; e9 33
B31_1c05:		sta $11			; 85 11
B31_1c07:		bcs B31_1c0d ; b0 04

B31_1c09:		lda #$ff		; a9 ff
B31_1c0b:		bne B31_1c0f ; d0 02

B31_1c0d:		lda #$00		; a9 00
B31_1c0f:		sta $13			; 85 13
B31_1c11:		ldy $10			; a4 10
B31_1c13:		jmp $fca1		; 4c a1 fc


B31_1c16:		sty $10			; 84 10
B31_1c18:		tay				; a8 
B31_1c19:		lda $10			; a5 10
B31_1c1b:		jmp $fced		; 4c ed fc


B31_1c1e:		sta $10			; 85 10
B31_1c20:		lda $68			; a5 68
B31_1c22:		bmi B31_1bf5 ; 30 d1

B31_1c24:		lda $10			; a5 10
B31_1c26:		cmp #$80		; c9 80
B31_1c28:		bcc B31_1c2e ; 90 04

B31_1c2a:		lda #$ff		; a9 ff
B31_1c2c:		bne B31_1c30 ; d0 02

B31_1c2e:		lda #$00		; a9 00
B31_1c30:		sta $05			; 85 05
B31_1c32:		lda $0470, x	; bd 70 04
B31_1c35:		and #$01		; 29 01
B31_1c37:		beq B31_1c46 ; f0 0d

B31_1c39:		lda $0438, x	; bd 38 04
B31_1c3c:		cmp #$21		; c9 21
B31_1c3e:		bcc B31_1c44 ; 90 04

B31_1c40:		lda #$ff		; a9 ff
B31_1c42:		bne B31_1c46 ; d0 02

B31_1c44:		lda #$01		; a9 01
B31_1c46:		sta $11			; 85 11
B31_1c48:		lda $10			; a5 10
B31_1c4a:		clc				; 18 
B31_1c4b:		adc $0438, x	; 7d 38 04
B31_1c4e:		sta $10			; 85 10
B31_1c50:		lda $11			; a5 11
B31_1c52:		adc $05			; 65 05
B31_1c54:		sta $14			; 85 14
B31_1c56:		tya				; 98 
B31_1c57:		clc				; 18 
B31_1c58:		adc $041c, x	; 7d 1c 04
B31_1c5b:		sec				; 38 
B31_1c5c:		sbc #$20		; e9 20
B31_1c5e:		bcc B31_1c7c ; 90 1c

B31_1c60:		cmp #$c0		; c9 c0
B31_1c62:		bcs B31_1c7c ; b0 18

B31_1c64:		sta $11			; 85 11
B31_1c66:		lsr $11			; 46 11
B31_1c68:		lsr $11			; 46 11
B31_1c6a:		lsr $11			; 46 11
B31_1c6c:		lsr $11			; 46 11
B31_1c6e:		lda $56			; a5 56
B31_1c70:		clc				; 18 
B31_1c71:		adc $10			; 65 10
B31_1c73:		sta $13			; 85 13
B31_1c75:		lda $57			; a5 57
B31_1c77:		adc $14			; 65 14
B31_1c79:		jmp $fd0d		; 4c 0d fd


B31_1c7c:		lda #$00		; a9 00
B31_1c7e:		rts				; 60 


B31_1c7f:		pla				; 68 
B31_1c80:		clc				; 18 
B31_1c81:		adc $0438		; 6d 38 04
B31_1c84:		tay				; a8 
B31_1c85:		sta $13			; 85 13
B31_1c87:		txa				; 8a 
B31_1c88:		clc				; 18 
B31_1c89:		adc $041c		; 6d 1c 04
B31_1c8c:		cmp $d0			; c5 d0
B31_1c8e:		bcc B31_1c7c ; 90 ec

B31_1c90:		sec				; 38 
B31_1c91:		sbc #$33		; e9 33
B31_1c93:		sta $11			; 85 11
B31_1c95:		bcs B31_1c9b ; b0 04

B31_1c97:		lda #$ff		; a9 ff
B31_1c99:		bne B31_1c9d ; d0 02

B31_1c9b:		lda #$00		; a9 00
B31_1c9d:		sta $13			; 85 13
B31_1c9f:		sty $10			; 84 10
B31_1ca1:		tya				; 98 
B31_1ca2:		lsr a			; 4a
B31_1ca3:		lsr a			; 4a
B31_1ca4:		lsr a			; 4a
B31_1ca5:		lsr a			; 4a
B31_1ca6:		lsr a			; 4a
B31_1ca7:		sta $12			; 85 12
B31_1ca9:		lda $13			; a5 13
B31_1cab:		bmi B31_1cba ; 30 0d

B31_1cad:		clc				; 18 
B31_1cae:		lda $56			; a5 56
B31_1cb0:		adc $11			; 65 11
B31_1cb2:		bcc B31_1cc7 ; 90 13

B31_1cb4:		clc				; 18 
B31_1cb5:		adc #$10		; 69 10
B31_1cb7:		jmp $fcce		; 4c ce fc


B31_1cba:		clc				; 18 
B31_1cbb:		lda $56			; a5 56
B31_1cbd:		adc $11			; 65 11
B31_1cbf:		bcs B31_1cc7 ; b0 06

B31_1cc1:		sec				; 38 
B31_1cc2:		sbc #$10		; e9 10
B31_1cc4:		jmp $fcce		; 4c ce fc


B31_1cc7:		cmp #$f0		; c9 f0
B31_1cc9:		bcc B31_1cce ; 90 03

B31_1ccb:		clc				; 18 
B31_1ccc:		adc #$10		; 69 10
B31_1cce:		and #$f0		; 29 f0
B31_1cd0:		lsr a			; 4a
B31_1cd1:		clc				; 18 
B31_1cd2:		adc $12			; 65 12
B31_1cd4:		tay				; a8 
B31_1cd5:		lda $10			; a5 10
B31_1cd7:		and #$10		; 29 10
B31_1cd9:		bne B31_1d3f ; d0 64

B31_1cdb:		beq B31_1d31 ; f0 54

func_1f_1cdd:
B31_1cdd:		pha				; 48 
B31_1cde:		lda $68			; a5 68
B31_1ce0:		bmi B31_1c7f ; 30 9d

B31_1ce2:		pla				; 68 
B31_1ce3:		clc				; 18 
B31_1ce4:		adc $0438		; 6d 38 04
B31_1ce7:		tay				; a8 
B31_1ce8:		txa				; 8a 
B31_1ce9:		clc				; 18 
B31_1cea:		adc $041c		; 6d 1c 04
B31_1ced:		sec				; 38 
B31_1cee:		sbc #$20		; e9 20
B31_1cf0:		bcc B31_1d49 ; 90 57

B31_1cf2:		cmp #$c0		; c9 c0
B31_1cf4:		bcs B31_1d49 ; b0 53

B31_1cf6:		sta $11			; 85 11
B31_1cf8:		sty $10			; 84 10
B31_1cfa:		lsr $11			; 46 11
B31_1cfc:		lsr $11			; 46 11
B31_1cfe:		lsr $11			; 46 11
B31_1d00:		lsr $11			; 46 11
B31_1d02:		lda $56			; a5 56
B31_1d04:		clc				; 18 
B31_1d05:		adc $10			; 65 10
B31_1d07:		sta $13			; 85 13
B31_1d09:		lda $57			; a5 57
B31_1d0b:		adc #$00		; 69 00
B31_1d0d:		sta $14			; 85 14
B31_1d0f:		tay				; a8 
B31_1d10:		lda $13			; a5 13
B31_1d12:		lsr a			; 4a
B31_1d13:		lsr a			; 4a
B31_1d14:		lsr a			; 4a
B31_1d15:		lsr a			; 4a
B31_1d16:		lsr a			; 4a
B31_1d17:		ora $fd61, y	; 19 61 fd

B31_1d1a:		cmp #$0c		; c9 0c
B31_1d1c:		bcc B31_1d23 ; 90 05

B31_1d1e:		sbc #$0c		; e9 0c
B31_1d20:		jmp $fd1a		; 4c 1a fd

B31_1d23:		tay				; a8 
B31_1d24:		lda $fd4c, y	; b9 4c fd
B31_1d27:		clc				; 18 
B31_1d28:		adc $11			; 65 11
B31_1d2a:		tay				; a8 
B31_1d2b:		lda $13			; a5 13
B31_1d2d:		and #$10		; 29 10
B31_1d2f:		bne B31_1d3f ; d0 0e

B31_1d31:		lda #$00		; a9 00
B31_1d33:		sta $a5			; 85 a5
B31_1d35:		lda $06e0, y	; b9 e0 06
B31_1d38:		lsr a			; 4a
B31_1d39:		lsr a			; 4a
B31_1d3a:		lsr a			; 4a
B31_1d3b:		lsr a			; 4a
B31_1d3c:		cmp #$00		; c9 00
B31_1d3e:		rts				; 60 

B31_1d3f:		lda #$01		; a9 01
B31_1d41:		sta $a5			; 85 a5
B31_1d43:		lda $06e0, y	; b9 e0 06
B31_1d46:		and #$0f		; 29 0f
B31_1d48:		rts				; 60 

B31_1d49:		lda #$00		; a9 00
B31_1d4b:		rts				; 60 


B31_1d4c:		.db $00				; 00
B31_1d4d:	.db $0c
B31_1d4e:		clc				; 18 
B31_1d4f:		bit $30			; 24 30
B31_1d51:	.db $3c
B31_1d52:		pha				; 48 
B31_1d53:	.db $54
B31_1d54:		rts				; 60 


B31_1d55:		jmp ($8478)		; 6c 78 84


B31_1d58:		.db $00				; 00
B31_1d59:		php				; 08 
B31_1d5a:	.db $04
B31_1d5b:		.db $00				; 00
B31_1d5c:		php				; 08 
B31_1d5d:	.db $04
B31_1d5e:		.db $00				; 00
B31_1d5f:		php				; 08 
B31_1d60:	.db $04
B31_1d61:		.db $00				; 00
B31_1d62:		php				; 08 
B31_1d63:		;removed
	.db $10 $18

B31_1d65:		jsr $3028		; 20 28 30
B31_1d68:		sec				; 38 
B31_1d69:		rti				; 40 


B31_1d6a:		pha				; 48 
B31_1d6b:		bvc B31_1dc5 ; 50 58

B31_1d6d:		rts				; 60 


B31_1d6e:		pla				; 68 
B31_1d6f:		bvs B31_1de9 ; 70 78

B31_1d71:		.db $00				; 00
B31_1d72:		;removed
	.db $10 $20

B31_1d74:		bmi B31_1db6 ; 30 40

B31_1d76:		;removed
	.db $50 $60

B31_1d78:		bvs B31_1cfa ; 70 80

B31_1d7a:		bcc B31_1d1c ; 90 a0

B31_1d7c:		bcs B31_1d3e ; b0 c0

B31_1d7e:		bne B31_1d60 ; d0 e0

B31_1d80:		beq B31_1d82 ; f0 00

B31_1d82:		asl $0d			; 06 0d
B31_1d84:	.db $13
B31_1d85:		ora $251f, y	; 19 1f 25
B31_1d88:		bit $3832		; 2c 32 38
B31_1d8b:		rol $4a44, x	; 3e 44 4a
B31_1d8e:		;removed
	.db $50 $56

B31_1d90:	.db $5c
B31_1d91:	.db $62
B31_1d92:	.db $67
B31_1d93:		adc $7873		; 6d 73 78
B31_1d96:		ror $8883, x	; 7e 83 88
B31_1d99:		stx $9893		; 8e 93 98
B31_1d9c:		sta $a7a2, x	; 9d a2 a7
B31_1d9f:	.db $ab
B31_1da0:		;removed
	.db $b0 $b4

B31_1da2:		lda $c1bd, y	; b9 bd c1
B31_1da5:		cmp $c9			; c5 c9
B31_1da7:		cmp $d4d0		; cd d0 d4
B31_1daa:	.db $d7
B31_1dab:	.db $db
B31_1dac:		dec $e4e1, x	; de e1 e4
B31_1daf:	.db $e7
B31_1db0:		sbc #$ec		; e9 ec
B31_1db2:		inc $f2f0		; ee f0 f2
B31_1db5:	.db $f4
B31_1db6:		inc $f7, x		; f6 f7
B31_1db8:		sbc $fbfa, y	; f9 fa fb
B31_1dbb:	.db $fc
B31_1dbc:		sbc $fefe, x	; fd fe fe
B31_1dbf:	.db $ff
B31_1dc0:	.db $ff
B31_1dc1:	.db $ff
B31_1dc2:		.db $00				; 00
B31_1dc3:		asl $0d			; 06 0d
B31_1dc5:	.db $13
B31_1dc6:		ora $251f, y	; 19 1f 25
B31_1dc9:		and $3933		; 2d 33 39
B31_1dcc:		rti				; 40 


B31_1dcd:		lsr $4d			; 46 4d
B31_1dcf:	.db $54
B31_1dd0:	.db $5b
B31_1dd1:	.db $63
B31_1dd2:		ror a			; 6a
B31_1dd3:		adc ($78), y	; 71 78
B31_1dd5:		sta ($88, x)	; 81 88
B31_1dd7:		sta ($99), y	; 91 99
B31_1dd9:		lda ($ab, x)	; a1 ab
B31_1ddb:		ldy $bd, x		; b4 bd
B31_1ddd:	.db $c7
B31_1dde:	.db $d2
B31_1ddf:		cmp $f3e7, x	; dd e7 f3
B31_1de2:	.db $ff


func_1f_1de3:
B31_1de3:		inc $a3			; e6 a3
B31_1de5:		lda #$ff		; a9 ff
B31_1de7:		sta $92			; 85 92
B31_1de9:		ldx #$01		; a2 01
B31_1deb:		lda $054e, x	; bd 4e 05
B31_1dee:		bne B31_1df3 ; d0 03

B31_1df0:		jmp $fe7e		; 4c 7e fe

B31_1df3:		stx $6c			; 86 6c
B31_1df5:		lda #$96		; a9 96
B31_1df7:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1dfa:		lda $78			; a5 78
B31_1dfc:		bne B31_1e0b ; d0 0d

B31_1dfe:		lda #$88		; a9 88
B31_1e00:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e03:		jsr $b906		; 20 06 b9
B31_1e06:		lda #$96		; a9 96
B31_1e08:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e0b:		jsr $b1fb		; 20 fb b1
B31_1e0e:		ldx $6c			; a6 6c
B31_1e10:		lda $054e, x	; bd 4e 05
B31_1e13:		beq B31_1e7e ; f0 69

B31_1e15:		cmp #$40		; c9 40
B31_1e17:		bcs B31_1e24 ; b0 0b

B31_1e19:		lda #$92		; a9 92
B31_1e1b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e1e:		jsr $8001		; 20 01 80
B31_1e21:		jmp $fe44		; 4c 44 fe

B31_1e24:		lda $0470, x	; bd 70 04
B31_1e27:		and #$02		; 29 02
B31_1e29:		beq B31_1e31 ; f0 06

B31_1e2b:		jsr $ff9a		; 20 9a ff
B31_1e2e:		jmp $fe73		; 4c 73 fe

B31_1e31:		lda $054e, x	; bd 4e 05
B31_1e34:		cmp #$90		; c9 90
B31_1e36:		bcs B31_1e41 ; b0 09

B31_1e38:		cmp #$79		; c9 79
B31_1e3a:		bcs B31_1e46 ; b0 0a

B31_1e3c:		jsr $ff0c		; 20 0c ff
B31_1e3f:		bcs B31_1e73 ; b0 32

B31_1e41:		jsr func_17_1cf9		; 20 f9 bc
B31_1e44:		ldx $6c			; a6 6c
B31_1e46:		lda $054e, x	; bd 4e 05
B31_1e49:		cmp #$68		; c9 68
B31_1e4b:		bcs B31_1e55 ; b0 08

B31_1e4d:		cmp #$40		; c9 40
B31_1e4f:		bcc B31_1e55 ; 90 04

B31_1e51:		lda $ab			; a5 ab
B31_1e53:		bne B31_1e73 ; d0 1e

B31_1e55:		lda $0470, x	; bd 70 04
B31_1e58:		and #$40		; 29 40
B31_1e5a:		beq B31_1e64 ; f0 08

B31_1e5c:		lda #$96		; a9 96
B31_1e5e:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e61:		jsr $8001		; 20 01 80
B31_1e64:		lda $054e, x	; bd 4e 05
B31_1e67:		beq B31_1e7e ; f0 15

B31_1e69:		lda $0470, x	; bd 70 04
B31_1e6c:		and #$20		; 29 20
B31_1e6e:		bne B31_1e73 ; d0 03

B31_1e70:		jsr func_1f_0f75		; 20 75 ef
B31_1e73:		lda #$88		; a9 88
B31_1e75:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e78:		jsr $b730		; 20 30 b7
B31_1e7b:		jsr $b857		; 20 57 b8
B31_1e7e:		inx				; e8 
B31_1e7f:		cpx #$13		; e0 13
B31_1e81:		bcs B31_1e86 ; b0 03

B31_1e83:		jmp $fdeb		; 4c eb fd

B31_1e86:		lda #$94		; a9 94
B31_1e88:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1e8b:		jsr $84ea		; 20 ea 84
B31_1e8e:		lda $8c			; a5 8c
B31_1e90:		bmi B31_1e9b ; 30 09

B31_1e92:		dec $8c			; c6 8c
B31_1e94:		bpl B31_1e9b ; 10 05

B31_1e96:		lda #$00		; a9 00
B31_1e98:		sta $0417		; 8d 17 04
B31_1e9b:		rts				; 60 


B31_1e9c:		lda #$88		; a9 88
B31_1e9e:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1ea1:		jsr $b86d		; 20 6d b8
B31_1ea4:		tay				; a8 
B31_1ea5:		sec				; 38 
B31_1ea6:		lda $041c, x	; bd 1c 04
B31_1ea9:		sbc $b883, y	; f9 83 b8
B31_1eac:		ldy $82			; a4 82
B31_1eae:		sbc $b8d1, y	; f9 d1 b8
B31_1eb1:		sta $041c		; 8d 1c 04
B31_1eb4:		lda #$9c		; a9 9c
B31_1eb6:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1eb9:		ldx #$01		; a2 01
B31_1ebb:		lda $054e, x	; bd 4e 05
B31_1ebe:		beq B31_1ec7 ; f0 07

B31_1ec0:		inx				; e8 
B31_1ec1:		cpx #$0d		; e0 0d
B31_1ec3:		bcc B31_1ebb ; 90 f6

B31_1ec5:		lda #$01		; a9 01
B31_1ec7:		rts				; 60 


func_1f_1ec8:
B31_1ec8:		lda #$00		; a9 00
B31_1eca:		sta $04f2, x	; 9d f2 04
B31_1ecd:		sta $0509, x	; 9d 09 05
B31_1ed0:		sta $0520, x	; 9d 20 05
B31_1ed3:		sta $0537, x	; 9d 37 05
B31_1ed6:		rts				; 60 


func_1f_1ed7:
B31_1ed7:		jsr func_1f_1ec8		; 20 c8 fe
B31_1eda:		lda #$00		; a9 00
B31_1edc:		sta $067b, x	; 9d 7b 06
B31_1edf:		sta $068d, x	; 9d 8d 06
B31_1ee2:		sta $0454, x	; 9d 54 04
B31_1ee5:		sta $0470, x	; 9d 70 04
B31_1ee8:		sta $0669, x	; 9d 69 06
B31_1eeb:		lda #$00		; a9 00
B31_1eed:		sta $0565, x	; 9d 65 05
B31_1ef0:		sta $04c4, x	; 9d c4 04
B31_1ef3:		sta $04db, x	; 9d db 04
B31_1ef6:		sta $05c1, x	; 9d c1 05
B31_1ef9:		sta $05d8, x	; 9d d8 05
B31_1efc:		sta $05ef, x	; 9d ef 05
B31_1eff:		sta $0606, x	; 9d 06 06
B31_1f02:		sta $061d, x	; 9d 1d 06
B31_1f05:		sta $0633, x	; 9d 33 06
B31_1f08:		sta $0645, x	; 9d 45 06
B31_1f0b:		rts				; 60 


B31_1f0c:		lda $054e, x	; bd 4e 05
B31_1f0f:		cmp #$48		; c9 48
B31_1f11:		bcc B31_1f2f ; 90 1c

B31_1f13:		cmp #$68		; c9 68
B31_1f15:		bcs B31_1f2e ; b0 17

B31_1f17:		lda $0565, x	; bd 65 05
B31_1f1a:		and #$3f		; 29 3f
B31_1f1c:		beq B31_1f2e ; f0 10

B31_1f1e:		sta $17			; 85 17
B31_1f20:		dec $17			; c6 17
B31_1f22:		lda $0565, x	; bd 65 05
B31_1f25:		and #$c0		; 29 c0
B31_1f27:		ora $17			; 05 17
B31_1f29:		sta $0565, x	; 9d 65 05
B31_1f2c:		sec				; 38 
B31_1f2d:		rts				; 60 

B31_1f2e:		clc				; 18 
B31_1f2f:		rts				; 60 


B31_1f30:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f33:		pha				; 48 
B31_1f34:		lda #$8c		; a9 8c
B31_1f36:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f39:		jsr $be8e		; 20 8e be
B31_1f3c:		pla				; 68 
B31_1f3d:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1f40:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f43:		pha				; 48 
B31_1f44:		lda #$92		; a9 92
B31_1f46:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f49:		jsr $996d		; 20 6d 99
B31_1f4c:		pla				; 68 
B31_1f4d:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1f50:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f53:		pha				; 48 
B31_1f54:		lda #$98		; a9 98
B31_1f56:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f59:		jsr $b2e5		; 20 e5 b2
B31_1f5c:		pla				; 68 
B31_1f5d:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1f60:		lda #$9a		; a9 9a
B31_1f62:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f65:		jsr $bdef		; 20 ef bd
B31_1f68:		lda #$86		; a9 86
B31_1f6a:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1f6d:		lda #$9a		; a9 9a
B31_1f6f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f72:		jsr $bdbc		; 20 bc bd
B31_1f75:		lda #$86		; a9 86
B31_1f77:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1f7a:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f7d:		pha				; 48 
B31_1f7e:		lda #$8a		; a9 8a
B31_1f80:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1f83:		jsr $bbc1		; 20 c1 bb
B31_1f86:		pla				; 68 
B31_1f87:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_1f8a:
B31_1f8a:		lda #$04		; a9 04
B31_1f8c:		sta $0454, x	; 9d 54 04
B31_1f8f:		lda $0565, x	; bd 65 05
B31_1f92:		and #$3f		; 29 3f
B31_1f94:		ora #$40		; 09 40
B31_1f96:		sta $0565, x	; 9d 65 05
B31_1f99:		rts				; 60 


B31_1f9a:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f9d:		pha				; 48 
	jsr_a000Func $03 $bc8d
B31_1fa6:		pla				; 68 
B31_1fa7:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1faa:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1fad:		pha				; 48 
	jsr_a000Func $03 $bd12
B31_1fb6:		pla				; 68 
B31_1fb7:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1fba:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1fbd:		pha				; 48 
	jsr_8000Func $14 $8f29
B31_1fc6:		pla				; 68 
B31_1fc7:		jmp setAndSaveLowerBank		; 4c e6 e2


.org $1ff0
	.asc "MAST900000"
	

	.dw nmiVector
	.dw resetVector
	.dw irqVector
