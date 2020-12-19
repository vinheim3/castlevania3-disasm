
func_1f_0001:
-	dex				; ca 
	bne -

B31_0004:		rts				; 60 


func_1f_0005:
B31_0005:		ldx #$0f		; a2 0f
-	dex				; ca 
	bne -

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
.ifdef EXTENDED_RAM
	jsr initExtRamAndMMC5Regs
.else
	jsr initMMC5Regs
.endif
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

B31_0070:		jsr disableNMI_hideSpritesBg		; 20 82 e1
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

B31_0098:		lda wCurrScrollXWithinRoom			; a5 56
B31_009a:		sta wGameplayScrollXWithinRoom			; 85 6f
B31_009c:		lda wCurrScrollXRoom			; a5 57
B31_009e:		sta wGameplayScrollXRoom			; 85 70
	jsr updateSound
	jsr pollInputs
	jsr processGameState
	jsr_8000Func update_wOam
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

B31_00d1:		lda wCurrScrollXWithinRoom			; a5 56
B31_00d3:		sta wGameplayScrollXWithinRoom			; 85 6f
B31_00d5:		lda wCurrScrollXRoom			; a5 57
B31_00d7:		sta wGameplayScrollXRoom			; 85 70

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

irqFunc_resetLowerBank_vectorEnd:
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
B31_0172:		lda #PPUCTRL_NMI_ON|PPUCTRL_SPR_16|PPUCTRL_BG_1000		; a9 b0
B31_0174:		sta wPPUCtrl			; 85 ff
B31_0176:		sta PPUCTRL.w		; 8d 00 20

B31_0179:		lda #PPUMASK_SHOW_SPR|PPUMASK_SHOW_BG|PPUMASK_SPR_LEFT_8PX|PPUMASK_BG_LEFT_8PX		; a9 1e
B31_017b:		sta wPPUMask			; 85 fe

B31_017d:		lda #$05		; a9 05
B31_017f:		sta $1c			; 85 1c
B31_0181:		rts				; 60 


disableNMI_hideSpritesBg:
; update ppuctrl with NMI off
	lda wPPUCtrl
	and #$ff-PPUCTRL_NMI_ON
	sta PPUCTRL.w

; reset ppu addr
	lda #$00
	sta PPUADDR.w
	sta PPUADDR.w

; update ppumask, not showing sprites/bg
	lda wPPUMask
	and #$ff-(PPUMASK_SHOW_SPR|PPUMASK_SHOW_BG)
	sta PPUMASK.w
	rts


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
.ifdef WEAPON_SWAPPING
	rts
	rts
.else
	lda #PRG_ROM_SWITCH|$07
.endif
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
	.dw gameState2_preNamePwInput
	.dw gameState3_preInGame
	.dw gameState4_inGame
	.dw gameState5
	.dw gameState6 ; goes to state B
	.dw gameState7_debugMode
	.dw gameState8_betweenLevels
	.dw gameState9_introCutscene
	.dw gameStateA_namePwInput
	.dw gameStateB
	.dw gameStateC ; ending?
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
	beq +

B31_03c4:		inc wGameSubstate			; e6 19
+	rts				; 60 

@gtSubstate1:
B31_03c7:		dex				; ca 
B31_03c8:		bne B31_03e7 ; @gtSubstate2

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

@gtSubstate2:
B31_03e7:		dex				; ca 
B31_03e8:		bne B31_03fc ; @gtSubstate3

; substate 3 - between scrolling and start menu 2
B31_03ea:		jsr func_1f_0bb9		; 20 b9 eb
B31_03ed:		jsr setGenericTimerTo100h		; 20 8a e5
B31_03f0:		inc wGameSubstate			; e6 19
B31_03f2:		rts				; 60 

@restartGameState:
B31_03f3:		lda #GS_INTRO		; a9 00
	beq +

@toSoundMode:
B31_03f7:		lda #GS_SOUND_MODE		; a9 0f
+	jmp setNewGameState		; 4c 74 e5

@gtSubstate3:
B31_03fc:		dex				; ca 
B31_03fd:		bne B31_0422 ; @gtSubstate4

; substate 4 - start/password screen
B31_03ff:		jsr decGenericTimer		; 20 79 e5
B31_0402:		beq B31_03f3 ; @restartGameState

	jsr_8000Func func_00_0b55

B31_040c:		jsr func_1f_055b		; 20 5b e5
B31_040f:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_0411:		and #PADF_START		; 29 10
B31_0413:		beq B31_0421 ; f0 0c

; 
B31_0415:		lda wJoy1ButtonsPressed			; a5 28
B31_0417:		and #PADF_A|PADF_B		; 29 c0
B31_0419:		bne B31_03f7 ; @toSoundMode

B31_041b:		lda #$80		; a9 80
B31_041d:		sta wGenericStateTimer			; 85 30
B31_041f:		inc wGameSubstate			; e6 19

gameState1_stub:
B31_0421:		rts				; 60 

@gtSubstate4:
; substate 5 - after selecting start/password
B31_0422:		ldy wMenuOptionIdxSelected			; a4 6b
B31_0424:		lda wGenericStateTimer			; a5 30
B31_0426:		and #$08		; 29 08
B31_0428:		beq B31_0431 ; f0 07

B31_042a:		lda data_1f_0440.w, y	; b9 40 e4
B31_042d:		ora #$80		; 09 80
B31_042f:		bne B31_0434 ; d0 03

B31_0431:		lda data_1f_0440.w, y	; b9 40 e4
B31_0434:		jsr displayStaticLayoutA		; 20 e9 ec
B31_0437:		dec wGenericStateTimer			; c6 30
B31_0439:		bne B31_0421 ; d0 e6

B31_043b:		lda #GS_02		; a9 02
B31_043d:		jmp setNewGameState		; 4c 74 e5

data_1f_0440:
	.db $00 $26


gameState2_preNamePwInput:
	lda $6b
B31_0444:		pha				; 48 
B31_0445:		jsr func_1f_0824		; 20 24 e8
B31_0448:		lda #$00		; a9 00
B31_044a:		sta $1e			; 85 1e
B31_044c:		pla				; 68 
B31_044d:		sta $6b			; 85 6b
B31_044f:		lda #GS_NAME_PW_INPUT		; a9 0a
B31_0451:		jmp setNewGameState		; 4c 74 e5


gameState3_preInGame:
B31_0454:		lda #$00		; a9 00
B31_0456:		sta wInGameSubstate			; 85 2a
B31_0458:		jsr func_1f_0828		; 20 28 e8
B31_045b:		jsr func_1f_0782		; 20 82 e7
B31_045e:		jsr func_1f_068f		; 20 8f e6
; GS_IN_GAME
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

B31_0472:		jsr func_1f_0819		; 20 19 e8
B31_0475:		lda wCurrRoomGroup		; a5 32
B31_0477:		cmp #$0e		; c9 0e
B31_0479:		bne B31_0485 ; d0 0a

B31_047b:		lda wCurrRoomSection			; a5 33
B31_047d:		cmp #$02		; c9 02
B31_047f:		bne B31_0485 ; d0 04

B31_0481:		lda #$01		; a9 01
B31_0483:		sta wCurrRoomSection			; 85 33
B31_0485:		jsr func_1f_068f		; 20 8f e6
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

func_1f_04a8:
B31_04a8:		lda #$00		; a9 00
B31_04aa:		sta wInGameSubstate			; 85 2a
B31_04ac:		lda #GS_IN_GAME		; a9 04
B31_04ae:		sta wGameState			; 85 18
B31_04b0:		rts				; 60 

B31_04b1:		lda #GS_06		; a9 06
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
B31_04dc:		jsr displayStaticLayoutA		; 20 e9 ec
B31_04df:		lda #$27		; a9 27
B31_04e1:		jsr displayStaticLayoutA		; 20 e9 ec
B31_04e4:		lda #$28		; a9 28
B31_04e6:		jsr displayStaticLayoutA		; 20 e9 ec
B31_04e9:		lda #$00		; a9 00
B31_04eb:		sta $6b			; 85 6b
B31_04ed:		inc wGameSubstate			; e6 19
B31_04ef:		rts				; 60 

@gameSubstate1:
B31_04f0:		jsr_8000Func func_00_0b29
B31_04f8:		jsr func_1f_055b		; 20 5b e5
B31_04fb:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_04fd:		and #PADF_START		; 29 10
B31_04ff:		beq B31_04ef ; f0 ee

B31_0501:		lda $6b			; a5 6b
B31_0503:		beq B31_050a ; f0 05

B31_0505:		lda #GS_0b		; a9 0b
B31_0507:		jmp setNewGameState		; 4c 74 e5


gameStateE:
B31_050a:		jsr func_1f_0819		; 20 19 e8
	jsr_8000Func func_00_1f80
B31_0515:		jsr func_1f_068f		; 20 8f e6
B31_0518:		jmp func_1f_04a8		; 4c a8 e4


gameState8_betweenLevels:
	jmp_a000Func gameState8_body


gameState9_introCutscene:
	jmp_a000Func gameState9_introCutscene_body


gameStateC:
	jmp_a000Func gameStateC_body


gameStateD:
	jmp_a000Func gameStateD_body


gameStateF_soundMode:
	jmp_a000Func gameStateF_soundMode_body


gameState7_debugMode:
	jmp_8000Func gameState7_debugMode_body


gameStateA_namePwInput:
	jmp_a000Func gameStateA_namePwInput_body


gameStateB:
	jmp_a000Func gameStateB_body


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

setGenericTimerToYA:
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
B31_05dc:		jsr loadCurrRoomsInternalPalettes		; 20 2c 85
B31_05df:		jsr $8001		; 20 01 80
B31_05e2:		jsr getCurrRoomsChrBanks		; 20 13 80
B31_05e5:		jsr $83ee		; 20 ee 83
B31_05e8:		pla				; 68 
B31_05e9:		jmp setAndSaveLowerBank		; 4c e6 e2


func_1f_05ec:
	jsr_8000Func loadRoomEntities
B31_05f4:		lda #$96		; a9 96
B31_05f6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05f9:		jsr func_1f_1de3		; 20 e3 fd
	jmp_8000Func func_04_1d30


B31_0604:		lda #$90		; a9 90
B31_0606:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_0609:		jsr $be21		; 20 21 be
B31_060c:		lda #$92		; a9 92
B31_060e:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0611:	
	jsr_a000Func func_09_19ac
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


func_1f_0666:
B31_0666:		lda #$44		; a9 44
B31_0668:		sta wNametableMapping			; 85 25
B31_066a:		lda #$00		; a9 00
B31_066c:		sta wIRQFuncIdx			; 85 6d
B31_066e:		sta wBaseIRQStatus			; 85 40
B31_0670:		sta $72			; 85 72
B31_0672:		lda #$80		; a9 80
B31_0674:		sta wBaseIRQFuncIdx			; 85 3f
B31_0676:		rts				; 60 


B31_0677:		lda #$88		; a9 88
B31_0679:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_067c:		jsr $b1fb		; 20 fb b1

setBackup8000PrgBank:
	lda wPrgBankBkup_8000
	jmp setAndSaveLowerBank


B31_0684:		lda #$88		; a9 88
B31_0686:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0689:		jsr $b348		; 20 48 b3
B31_068c:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_068f:
	jmp_a000FuncNested func_09_1354


func_1f_069a:
	jmp_a000FuncNested func_0f_14ae


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


B31_06c5:		lda wPrgBank_8000			; a5 21
B31_06c7:		pha				; 48 
	jsr_8000Func func_1c_0a21
B31_06d0:		pla				; 68 
B31_06d1:		jmp setAndSaveLowerBank		; 4c e6 e2


secIfcanClimbDownStairs:
	jmp_a000FuncNested b0f_secIfCanClimbDownStairs


secIfcanClimbUpStairs:
	jmp_a000FuncNested b0f_secIfCanClimbUpStairs


B31_06ea:		lda #$9c		; a9 9c
B31_06ec:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_06ef:		jsr $9ab0		; 20 b0 9a
B31_06f2:		jmp setBackup8000PrgBank		; 4c 7f e6


setPlayerDetailsWalkingStairsDownRight:	
	jmp_8000FuncNested b1c_setPlayerDetailsWalkingStairsDownRight


setPlayerDetailsWalkingStairsUpRight:	
	jmp_8000FuncNested b1c_setPlayerDetailsWalkingStairsUpRight


B31_070b:		lda #$9c		; a9 9c
B31_070d:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0710:		jsr $9baf		; 20 af 9b
B31_0713:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_0716:
B31_0716:		lda wPrgBank_8000			; a5 21
B31_0718:		pha				; 48 
	jsr_8000Func loadCurrPlayerInternalPalettes
B31_0721:		pla				; 68 
B31_0722:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0725:		lda #$80		; a9 80
B31_0727:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_072a:		jsr $8574		; 20 74 85
B31_072d:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_0730:
	jsr_8000Func loadCurrRoomsInternalSprPalettes
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


func_1f_0782:
	jmp_8000Func func_00_107f


B31_078a:		lda #$80		; a9 80
B31_078c:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_078f:		jsr $90e2		; 20 e2 90
B31_0792:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_0795:		lda #$80		; a9 80
B31_0797:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_079a:		jsr $9107		; 20 07 91
B31_079d:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_07a0:
B31_07a0:		lda #$80		; a9 80
B31_07a2:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07a5:		jsr $9117		; 20 17 91
B31_07a8:		jmp setBackup8000PrgBank		; 4c 7f e6


B31_07ab:		lda #$88		; a9 88
B31_07ad:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07b0:		jsr $b5b7		; 20 b7 b5
B31_07b3:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_07b6:
	jmp_a000FuncNested func_09_160c


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
	jsr_a000Func func_0d_1e21
B31_07e8:		pla				; 68 
B31_07e9:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_07ec:		lda #$96		; a9 96
B31_07ee:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_07f1:		jsr $9fc9		; 20 c9 9f
B31_07f4:		jmp setBackup8000PrgBank		; 4c 7f e6


func_1f_07f7:
B31_07f7:		ldx #$01		; a2 01
B31_07f9:		lda #$00		; a9 00
B31_07fb:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B31_07fe:		sta wEntityBaseY.w, x	; 9d 1c 04
B31_0801:		sta wEntityBaseX.w, x	; 9d 38 04
B31_0804:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_0807:		sta wEntityState.w, x	; 9d 70 04
B31_080a:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B31_080d:		sta wEntityFacingLeft.w, x	; 9d a8 04
B31_0810:		sta $054e, x	; 9d 4e 05
B31_0813:		inx				; e8 
B31_0814:		cpx #$17		; e0 17
B31_0816:		bcc B31_07fb ; 90 e3

B31_0818:		rts				; 60 


func_1f_0819:
	jmp_8000FuncNested func_00_118b


func_1f_0824:
B31_0824:		ldx #$26		; a2 26
	bne +

func_1f_0828:
B31_0828:		ldx #$50		; a2 50

+	lda #$00		; a9 00
B31_082c:		sta $00, x		; 95 00
B31_082e:		inx				; e8 
B31_082f:		cpx #$e0		; e0 e0
B31_0831:		bne B31_082c ; d0 f9

B31_0833:		ldx #$00		; a2 00
B31_0835:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
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


vramQueueSet2bytesDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$02
	bne _vramQueueSetBytesDestToCopy_noData ; d0 15


vramQueueSet1byteDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$01
	bne _vramQueueSetBytesDestToCopy_noData ; d0 0f


vramQueueSetDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	jmp _vramQueueSetDestToCopyTo_noData


vramQueueSet5bytesDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$05
	bne _vramQueueSetBytesDestToCopy_noData ; d0 04

vramQueueSet4bytesDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$04

_vramQueueSetBytesDestToCopy_noData:
	sta wVramQueue.w, x
	inx

_vramQueueSetDestToCopyTo_noData:
	lda wVramQueueDest
	sta wVramQueue.w, x
	inx
	lda wVramQueueDest+1
	sta wVramQueue.w, x
	inx
	stx wVramQueueNextIdxToFill
	rts


setVramQueueNextFillIdxAndTerminate:
	inx

setVramQueueFillIdxAndTerminate:
	stx wVramQueueNextIdxToFill
	jmp terminateVramQueue


func_1f_08e3:
B31_08e3:		lda #$80		; a9 80
B31_08e5:		sta wVramQueueDest			; 85 61
B31_08e7:		lda #$27		; a9 27
B31_08e9:		sta wVramQueueDest+1			; 85 62
B31_08eb:		jsr vramQueueSet1byteDestToCopy_noData		; 20 b5 e8
B31_08ee:		ldy #$40		; a0 40
B31_08f0:		lda #$00		; a9 00
B31_08f2:		sta wVramQueue.w, x	; 9d 00 03
B31_08f5:		inx				; e8 
B31_08f6:		dey				; 88 
B31_08f7:		bne B31_08f2 ; d0 f9

B31_08f9:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


B31_08fc:		jsr vramQueueSet1byteDestToCopy_noData		; 20 b5 e8
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
B31_0918:		jmp setVramQueueNextFillIdxAndTerminate		; 4c dd e8


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
B31_0930:		ldy wEntityBaseX.w, x	; bc 38 04
B31_0933:		sty $15			; 84 15
B31_0935:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_0938:		pha				; 48 
B31_0939:		jsr setBankOfRoomGroupMetatilesPointers		; 20 00 c9
B31_093c:		lda $14			; a5 14
B31_093e:		sec				; 38 
B31_093f:		sbc #$28		; e9 28
B31_0941:		sta $14			; 85 14
B31_0943:		jsr $ea3d		; 20 3d ea
B31_0946:		ldy $57			; a4 57
B31_0948:		clc				; 18 
B31_0949:		lda wCurrScrollXWithinRoom			; a5 56
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
B31_097b:		jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
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
B31_0994:		lda wCurrRoomGroup		; a5 32
B31_0996:		cmp #$0e		; c9 0e
B31_0998:		bne B31_09a6 ; d0 0c

B31_099a:		ldy $33			; a4 33
B31_099c:		bne B31_09a6 ; d0 08

B31_099e:		ldy wCurrRoomIdx			; a4 34
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
B31_09c9:		lda wEntityBaseY.w		; ad 1c 04
B31_09cc:		sec				; 38 
B31_09cd:		sbc #$10		; e9 10
B31_09cf:		jsr $e9fb		; 20 fb e9
B31_09d2:		pla				; 68 
B31_09d3:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_09d6:		jsr $eb50		; 20 50 eb
B31_09d9:		jsr $ea3d		; 20 3d ea
B31_09dc:		lda wEntityBaseX.w, x	; bd 38 04
B31_09df:		clc				; 18 
B31_09e0:		adc wCurrScrollXWithinRoom			; 65 56
B31_09e2:		sta $11			; 85 11
B31_09e4:		lda wCurrScrollXRoom			; a5 57
B31_09e6:		adc #$00		; 69 00
B31_09e8:		sta $10			; 85 10
B31_09ea:		jsr $ea20		; 20 20 ea
B31_09ed:		lda wEntityBaseY.w, x	; bd 1c 04
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
B31_0a0b:		lda wCurrRoomGroup		; a5 32
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


B31_0a3d:		lda wCurrRoomGroup		; a5 32
B31_0a3f:		asl a			; 0a
B31_0a40:		tay				; a8 
B31_0a41:		lda $d5d4, y	; b9 d4 d5
B31_0a44:		sta $00			; 85 00
B31_0a46:		lda $d5d5, y	; b9 d5 d5
B31_0a49:		sta $01			; 85 01
B31_0a4b:		lda wCurrRoomSection			; a5 33
B31_0a4d:		asl a			; 0a
B31_0a4e:		tay				; a8 
B31_0a4f:		lda ($00), y	; b1 00
B31_0a51:		sta $10			; 85 10
B31_0a53:		iny				; c8 
B31_0a54:		lda ($00), y	; b1 00
B31_0a56:		sta $11			; 85 11
B31_0a58:		lda wCurrRoomIdx			; a5 34
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
B31_0a95:		lda wCurrRoomGroup		; a5 32
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
B31_0ada:		lda wCurrRoomGroup		; a5 32
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
B31_0b2d:		adc wCurrScrollXWithinRoom			; 65 56
B31_0b2f:		sta $11			; 85 11
B31_0b31:		lda wCurrScrollXRoom			; a5 57
B31_0b33:		adc #$00		; 69 00
B31_0b35:		sta $10			; 85 10
B31_0b37:		lda $11			; a5 11
B31_0b39:		lsr a			; 4a
B31_0b3a:		lsr a			; 4a
B31_0b3b:		lsr a			; 4a
B31_0b3c:		lsr a			; 4a
B31_0b3d:		lsr a			; 4a
B31_0b3e:		sta $11			; 85 11
B31_0b40:		lda wEntityBaseY.w, x	; bd 1c 04
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
B31_0b52:		ldy wCurrRoomGroup			; a4 32
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


B31_0baa:		lda wCurrRoomGroup		; a5 32
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
B31_0bc3:		jsr func_1f_0bd5		; 20 d5 eb
B31_0bc6:		lda #$05		; a9 05
B31_0bc8:		jsr displayStaticLayoutA		; 20 e9 ec
B31_0bcb:		lda #$00		; a9 00
B31_0bcd:		jsr displayStaticLayoutA		; 20 e9 ec
B31_0bd0:		lda #$26		; a9 26
B31_0bd2:		jmp displayStaticLayoutA		; 4c e9 ec


func_1f_0bd5:
B31_0bd5:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0bd8:		jsr func_1f_0c04		; 20 04 ec
B31_0bdb:		lda wPrgBankBkup_8000			; a5 22
B31_0bdd:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_0be0:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0be3:		jsr disableNMI_hideSpritesBg		; 20 82 e1
B31_0be6:		lda #$00		; a9 00
B31_0be8:		sta wScrollY			; 85 fc
B31_0bea:		sta wScrollX			; 85 fd
B31_0bec:		lda PPUSTATUS.w		; ad 02 20
B31_0bef:		sty PPUADDR.w		; 8c 06 20
B31_0bf2:		stx PPUADDR.w		; 8e 06 20
B31_0bf5:		ldx #$00		; a2 00
B31_0bf7:		jsr $ec2e		; 20 2e ec
B31_0bfa:		jmp $ebdb		; 4c db eb


func_1f_0bfd:
B31_0bfd:		lda #NT_ALL_MODES		; a9 e4
B31_0bff:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B31_0c02:		ldx #$00		; a2 00

func_1f_0c04:
B31_0c04:		lda data_1f_0c77.w, x	; bd 77 ec
B31_0c07:		sta $00			; 85 00
B31_0c09:		lda data_1f_0c77.w+1, x	; bd 78 ec
B31_0c0c:		sta $01			; 85 01

B31_0c0e:		jsr disableNMI_hideSpritesBg		; 20 82 e1

B31_0c11:		lda #$00		; a9 00
B31_0c13:		sta wScrollX			; 85 fd
B31_0c15:		sta wScrollY			; 85 fc

; reset latch
@bigLoop:
B31_0c17:		lda PPUSTATUS.w		; ad 02 20

; 2nd byte is high byte of ppu addr
B31_0c1a:		ldy #$01		; a0 01
B31_0c1c:		lda ($00), y	; b1 00
B31_0c1e:		sta PPUADDR.w		; 8d 06 20

; 1st byte is low byte
B31_0c21:		dey				; 88 
B31_0c22:		lda ($00), y	; b1 00
B31_0c24:		sta PPUADDR.w		; 8d 06 20

; skip to bytes after ppu addr
B31_0c27:		ldx #$00		; a2 00
B31_0c29:		lda #$02		; a9 02
B31_0c2b:		jsr incPointerXByA		; 20 99 e8

@loop:
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
B31_0c57:		jmp B31_0c2e		; 4c 2e ec

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
B31_0c71:		jmp B31_0c17		; @bigLoop

B31_0c74:		jmp updatePPUCtrl		; 4c 66 ed


data_1f_0c77:
	.dw data_1f_0c9d
	.dw $b570
	.dw data_1f_0c9d
	.dw data_1f_0c9d
	.dw data_1f_0c9d
	.dw data_1f_0c9d
	.dw $aba8
	.dw $ba68
	.dw $b9fa
	.dw $ba5c
	.dw $bbbc
	.dw $bad4
	.dw $b9a6
	.dw $b327
	.dw $b839
	.dw $ad7c
	.dw $bdfa
	.dw data_1e_0772
	.dw $ba9a

data_1f_0c9d:
	.dw $2000
B31_0c9f:	.db $78 $00
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


displayStaticLayoutAbankX:
	pha
	lda #PRG_ROM_SWITCH|:displayStaticLayoutAbankX_body
	jsr saveAndSetNewLowerBank
	pla
	jsr displayStaticLayoutAbankX_body
	jmp setBackup8000PrgBank


displayStaticLayoutA:
	pha
	lda #PRG_ROM_SWITCH|:displayStaticLayoutA_body
	jsr saveAndSetNewLowerBank
	pla
	jsr displayStaticLayoutA_body
	jmp setBackup8000PrgBank


func_1f_0cf6:
B31_0cf6:		pha				; 48 
B31_0cf7:		lda #PRG_ROM_SWITCH|:func_00_1873		; a9 80
B31_0cf9:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_0cfc:		pla				; 68 
B31_0cfd:		jsr func_00_1873		; 20 73 98
B31_0d00:		jmp setBackup8000PrgBank		; 4c 7f e6


getNextStaticLayoutByte:
	lda wStaticLayoutBank
	jsr setAndSaveLowerBank
	lda (wCurrStaticLayoutAddr), y
	pha
	lda #PRG_ROM_SWITCH|:displayStaticLayoutA_body
	jsr setAndSaveLowerBank
	pla
	rts


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
	ldy #$00

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

updatePPUCtrl:
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


func_1f_0f4a:
B31_0f4a:		sta wEntityAnimationDefIdxInSpecGroup.w		; 8d aa 05
B31_0f4d:		ldy #$02		; a0 02
B31_0f4f:		sty wEntityOamSpecIdxBaseOffset.w		; 8c 93 05
B31_0f52:		dey				; 88 
B31_0f53:		sty wEntityTimeUntilNextAnimation.w		; 8c 7c 05
B31_0f56:		rts				; 60 


B31_0f57:		ldx #$00		; a2 00
	jmp +


setEntitySpecGroupA_animationDefIdxY_startAnimate:
B31_0f5c:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B31_0f5f:		tya				; 98 

+	sta wEntityAnimationDefIdxInSpecGroup.w, x	; 9d aa 05
B31_0f63:		lda #$00		; a9 00
B31_0f65:		sta wEntityOamSpecIdxBaseOffset.w, x	; 9d 93 05
B31_0f68:		lda #$01		; a9 01
B31_0f6a:		sta wEntityTimeUntilNextAnimation.w, x	; 9d 7c 05
B31_0f6d:		rts				; 60 


B31_0f6e:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B31_0f71:		bne updateEntityXanimationFrame

updatePlayerAnimationFrame:
	ldx #$00

updateEntityXanimationFrame:
	dec wEntityTimeUntilNextAnimation.w, x
	beq +

	rts

+
; get address of animation data
	ldy wEntityOamSpecGroupDoubled.w, x
	lda entitySpecGroupAnimationData.w, y
	sta wCurrEntitySpecGroupAnimationDataAddr
	lda entitySpecGroupAnimationData.w+1, y
	sta wCurrEntitySpecGroupAnimationDataAddr+1

; animation definition idx * 3
	lda wEntityAnimationDefIdxInSpecGroup.w, x
	asl a
	clc
	adc wEntityAnimationDefIdxInSpecGroup.w, x
	tay

; 1st byte is oam spec idx, offset from base
	lda (wCurrEntitySpecGroupAnimationDataAddr), y
	clc
	adc wEntityOamSpecIdxBaseOffset.w, x
	sta wOamSpecIdxDoubled.w, x

; 2nd byte is time until next animation
	iny
	lda (wCurrEntitySpecGroupAnimationDataAddr), y
	sta wEntityTimeUntilNextAnimation.w, x

; 3rd byte is final base offset at which to loop around
	iny
	inc wEntityOamSpecIdxBaseOffset.w, x
	inc wEntityOamSpecIdxBaseOffset.w, x
	lda wEntityOamSpecIdxBaseOffset.w, x
	cmp (wCurrEntitySpecGroupAnimationDataAddr), y
	bcc +

	lda #$00
	sta wEntityOamSpecIdxBaseOffset.w, x

+	rts

.include "data/entityAnimationData.s"
.include "code/gameState4_inGame.s"

B31_1b85:		lda #$80		; a9 80
B31_1b87:		bne B31_1b8b ; d0 02

func_1f_1b89:
B31_1b89:		lda #$00		; a9 00
B31_1b8b:		sta wEntityState.w		; 8d 70 04
B31_1b8e:		sta $0488		; 8d 88 04
B31_1b91:		sta $0489		; 8d 89 04
B31_1b94:		rts				; 60 


func_1f_1b95:
B31_1b95:		lda #$9c		; a9 9c
B31_1b97:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1b9a:		lda ($08), y	; b1 08
B31_1b9c:		pha				; 48 
B31_1b9d:		lda #$94		; a9 94
B31_1b9f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1ba2:		pla				; 68 
B31_1ba3:		rts				; 60 


func_1f_1ba4:
	jmp_8000FuncNested func_00_0b70


func_1f_1baf:
	jmp_8000FuncNested func_00_0b74


func_1f_1bba:
B31_1bba:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1bbd:		lda B31_1bcd.w+1		; ad ce fb
B31_1bc0:		pha				; 48 
B31_1bc1:		lda B31_1bcd.w		; ad cd fb
B31_1bc4:		pha				; 48 
B31_1bc5:		jmp ($16)

B31_1bc8:		lda #$94		; a9 94
B31_1bca:		jmp setAndSaveLowerBank		; 4c e6 e2

B31_1bcd:		.dw B31_1bc8-1


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


func_1f_1be8:
B31_1be8:	
	jsr_a000Func func_1b_17bf
B31_1bf0:		lda #$9c		; a9 9c
B31_1bf2:		jmp setAndSaveLowerBank		; 4c e6 e2


; from below - vert rooms
B31_1bf5:		lda $10			; a5 10
B31_1bf7:		clc				; 18 
B31_1bf8:		adc wEntityBaseX.w, x	; 7d 38 04
B31_1bfb:		sta $10			; 85 10
B31_1bfd:		tya				; 98 
B31_1bfe:		clc				; 18 
B31_1bff:		adc wEntityBaseY.w, x	; 7d 1c 04
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


func_1f_1c1e:
B31_1c1e:		sta $10			; 85 10
B31_1c20:		lda wCurrRoomMetadataByte			; a5 68
B31_1c22:		bmi B31_1bf5 ; 30 d1

; horiz room
B31_1c24:		lda $10			; a5 10
B31_1c26:		cmp #$80		; c9 80
B31_1c28:		bcc B31_1c2e ; 90 04

; 80h+ turns into $ff
B31_1c2a:		lda #$ff		; a9 ff
B31_1c2c:		bne B31_1c30 ; d0 02

B31_1c2e:		lda #$00		; a9 00
B31_1c30:		sta $05			; 85 05
B31_1c32:		lda wEntityState.w, x	; bd 70 04
B31_1c35:		and #$01		; 29 01
B31_1c37:		beq B31_1c46 ; f0 0d

B31_1c39:		lda wEntityBaseX.w, x	; bd 38 04
B31_1c3c:		cmp #$21		; c9 21
B31_1c3e:		bcc B31_1c44 ; 90 04

B31_1c40:		lda #$ff		; a9 ff
B31_1c42:		bne B31_1c46 ; d0 02

B31_1c44:		lda #$01		; a9 01
B31_1c46:		sta $11			; 85 11
B31_1c48:		lda $10			; a5 10
B31_1c4a:		clc				; 18 
B31_1c4b:		adc wEntityBaseX.w, x	; 7d 38 04
B31_1c4e:		sta $10			; 85 10
B31_1c50:		lda $11			; a5 11
B31_1c52:		adc $05			; 65 05
B31_1c54:		sta $14			; 85 14
B31_1c56:		tya				; 98 
B31_1c57:		clc				; 18 
B31_1c58:		adc wEntityBaseY.w, x	; 7d 1c 04
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
B31_1c6e:		lda wCurrScrollXWithinRoom			; a5 56
B31_1c70:		clc				; 18 
B31_1c71:		adc $10			; 65 10
B31_1c73:		sta $13			; 85 13
B31_1c75:		lda wCurrScrollXRoom			; a5 57
B31_1c77:		adc $14			; 65 14
B31_1c79:		jmp func_1f_1d0d		; 4c 0d fd

B31_1c7c:		lda #$00		; a9 00
B31_1c7e:		rts				; 60 


; from below
B31_1c7f:		pla				; 68 
B31_1c80:		clc				; 18 
B31_1c81:		adc wEntityBaseX.w		; 6d 38 04
B31_1c84:		tay				; a8 
B31_1c85:		sta $13			; 85 13
B31_1c87:		txa				; 8a 
B31_1c88:		clc				; 18 
B31_1c89:		adc wEntityBaseY.w		; 6d 1c 04
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
B31_1cae:		lda wCurrScrollXWithinRoom			; a5 56
B31_1cb0:		adc $11			; 65 11
B31_1cb2:		bcc B31_1cc7 ; 90 13

B31_1cb4:		clc				; 18 
B31_1cb5:		adc #$10		; 69 10
B31_1cb7:		jmp B31_1cce		; 4c ce fc

B31_1cba:		clc				; 18 
B31_1cbb:		lda wCurrScrollXWithinRoom			; a5 56
B31_1cbd:		adc $11			; 65 11
B31_1cbf:		bcs B31_1cc7 ; b0 06

B31_1cc1:		sec				; 38 
B31_1cc2:		sbc #$10		; e9 10
B31_1cc4:		jmp B31_1cce		; 4c ce fc

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


; A - x offset to check
; X - y offset to check
func_1f_1cdd:
B31_1cdd:		pha				; 48 
B31_1cde:		lda wCurrRoomMetadataByte			; a5 68
B31_1ce0:		bmi B31_1c7f ; @verticalRoom

B31_1ce2:		pla				; 68 

; y = A + player X
B31_1ce3:		clc				; 18 
B31_1ce4:		adc wEntityBaseX.w		; 6d 38 04
B31_1ce7:		tay				; a8 

; check x + player Y
B31_1ce8:		txa				; 8a 
B31_1ce9:		clc				; 18 
B31_1cea:		adc wEntityBaseY.w		; 6d 1c 04

; jump if less than $20, or > $e0
B31_1ced:		sec				; 38 
B31_1cee:		sbc #$20		; e9 20
B31_1cf0:		bcc B31_1d49 ; 90 57

B31_1cf2:		cmp #$c0		; c9 c0
B31_1cf4:		bcs B31_1d49 ; b0 53

; store x+player Y-$20 in $11
; store A+player X in $10
B31_1cf6:		sta $11			; 85 11
B31_1cf8:		sty $10			; 84 10

; Y /= 16
B31_1cfa:		lsr $11			; 46 11
B31_1cfc:		lsr $11			; 46 11
B31_1cfe:		lsr $11			; 46 11
B31_1d00:		lsr $11			; 46 11

; $13 = X + scroll x in room
B31_1d02:		lda wCurrScrollXWithinRoom			; a5 56
B31_1d04:		clc				; 18 
B31_1d05:		adc $10			; 65 10
B31_1d07:		sta $13			; 85 13

; 13/14 = absolute player X
B31_1d09:		lda wCurrScrollXRoom			; a5 57
B31_1d0b:		adc #$00		; 69 00

func_1f_1d0d:
B31_1d0d:		sta $14			; 85 14
B31_1d0f:		tay				; a8 
B31_1d10:		lda $13			; a5 13

; low byte upper 3 bits in low 3 bits
; high byte *= 8
; ie word /= 32
B31_1d12:		lsr a			; 4a
B31_1d13:		lsr a			; 4a
B31_1d14:		lsr a			; 4a
B31_1d15:		lsr a			; 4a
B31_1d16:		lsr a			; 4a
B31_1d17:		ora data_1f_1d61.w, y	; 19 61 fd

; A %= $0c
B31_1d1a:		cmp #$0c		; c9 0c
B31_1d1c:		bcc B31_1d23 ; 90 05

B31_1d1e:		sbc #$0c		; e9 0c
B31_1d20:		jmp B31_1d1a		; 4c 1a fd

; remainder *= $0c, + abs Y/16, into Y
B31_1d23:		tay				; a8 
B31_1d24:		lda data_1f_1d4c.w, y	; b9 4c fd
B31_1d27:		clc				; 18 
B31_1d28:		adc $11			; 65 11
B31_1d2a:		tay				; a8 

;
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


data_1f_1d4c:
	.db $00 $0c $18 $24
	.db $30 $3c $48 $54
	.db $60 $6c $78 $84


B31_1d58:		.db $00				; 00
B31_1d59:		php				; 08 
B31_1d5a:	.db $04
B31_1d5b:		.db $00				; 00
B31_1d5c:		php				; 08 
B31_1d5d:	.db $04
B31_1d5e:		.db $00				; 00
B31_1d5f:		php				; 08 
B31_1d60:	.db $04


data_1f_1d61:
	.db $00 $08 $10 $18 $20 $28 $30 $38
	.db $40 $48 $50 $58 $60 $68 $70 $78


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

@bigLoop:
B31_1deb:		lda $054e, x	; bd 4e 05
B31_1dee:		bne B31_1df3 ; d0 03

B31_1df0:		jmp B31_1e7e		; 4c 7e fe

B31_1df3:		stx $6c			; 86 6c
B31_1df5:		lda #$96		; a9 96
B31_1df7:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1dfa:		lda $78			; a5 78
B31_1dfc:		bne B31_1e0b ; d0 0d

	jsr_a000Func func_09_1906
	lda #PRG_ROM_SWITCH|:func_17_11fb-1
	jsr setAndSaveLowerBank

B31_1e0b:	jsr func_17_11fb
B31_1e0e:		ldx $6c			; a6 6c
B31_1e10:		lda $054e, x	; bd 4e 05
B31_1e13:		beq B31_1e7e ; f0 69

B31_1e15:		cmp #$40		; c9 40
B31_1e17:		bcs B31_1e24 ; b0 0b

	jsr_8000Func func_12_0001
B31_1e21:		jmp B31_1e44		; 4c 44 fe

B31_1e24:		lda wEntityState.w, x	; bd 70 04
B31_1e27:		and #$02		; 29 02
B31_1e29:		beq B31_1e31 ; f0 06

B31_1e2b:		jsr func_1f_1f9a		; 20 9a ff
B31_1e2e:		jmp B31_1e73		; 4c 73 fe

B31_1e31:		lda $054e, x	; bd 4e 05
B31_1e34:		cmp #$90		; c9 90
B31_1e36:		bcs B31_1e41 ; b0 09

B31_1e38:		cmp #$79		; c9 79
B31_1e3a:		bcs B31_1e46 ; b0 0a

B31_1e3c:		jsr func_1f_1f0c		; 20 0c ff
B31_1e3f:		bcs B31_1e73 ; b0 32

B31_1e41:		jsr execEntityXNextPhaseFunc		; 20 f9 bc

B31_1e44:		ldx $6c			; a6 6c
B31_1e46:		lda $054e, x	; bd 4e 05
B31_1e49:		cmp #$68		; c9 68
B31_1e4b:		bcs B31_1e55 ; b0 08

B31_1e4d:		cmp #$40		; c9 40
B31_1e4f:		bcc B31_1e55 ; 90 04

B31_1e51:		lda $ab			; a5 ab
B31_1e53:		bne B31_1e73 ; d0 1e

B31_1e55:		lda wEntityState.w, x	; bd 70 04
B31_1e58:		and #$40		; 29 40
B31_1e5a:		beq B31_1e64 ; f0 08

	jsr_8000Func func_16_0001
B31_1e64:		lda $054e, x	; bd 4e 05
B31_1e67:		beq B31_1e7e ; f0 15

B31_1e69:		lda wEntityState.w, x	; bd 70 04
B31_1e6c:		and #$20		; 29 20
B31_1e6e:		bne B31_1e73 ; d0 03

B31_1e70:		jsr updateEntityXanimationFrame		; 20 75 ef

B31_1e73:	
	jsr_a000Func func_09_1730
B31_1e7b:		jsr func_09_1857		; 20 57 b8

B31_1e7e:		inx				; e8 
B31_1e7f:		cpx #$13		; e0 13
B31_1e81:		bcs B31_1e86 ; b0 03

B31_1e83:		jmp B31_1deb		; @bigLoop

B31_1e86:	
	jsr_8000Func func_14_04ea
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
B31_1ea6:		lda wEntityBaseY.w, x	; bd 1c 04
B31_1ea9:		sbc $b883, y	; f9 83 b8
B31_1eac:		ldy $82			; a4 82
B31_1eae:		sbc $b8d1, y	; f9 d1 b8
B31_1eb1:		sta wEntityBaseY.w		; 8d 1c 04
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


clearEntityHorizVertSpeeds:
	lda #$00
	sta wEntityHorizSpeed.w, x
	sta wEntityHorizSubSpeed.w, x
	sta wEntityVertSpeed.w, x
	sta wEntityVertSubSpeed.w, x
	rts


func_1f_1ed7:
B31_1ed7:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B31_1eda:		lda #$00		; a9 00
B31_1edc:		sta $067b, x	; 9d 7b 06
B31_1edf:		sta $068d, x	; 9d 8d 06
B31_1ee2:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_1ee5:		sta wEntityState.w, x	; 9d 70 04
B31_1ee8:		sta $0669, x	; 9d 69 06
B31_1eeb:		lda #$00		; a9 00
B31_1eed:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B31_1ef0:		sta $04c4, x	; 9d c4 04
B31_1ef3:		sta $04db, x	; 9d db 04
B31_1ef6:		sta wEntityPhase.w, x	; 9d c1 05
B31_1ef9:		sta $05d8, x	; 9d d8 05
B31_1efc:		sta wEntityAI_idx.w, x	; 9d ef 05
B31_1eff:		sta $0606, x	; 9d 06 06
B31_1f02:		sta $061d, x	; 9d 1d 06
B31_1f05:		sta $0633, x	; 9d 33 06
B31_1f08:		sta $0645, x	; 9d 45 06
B31_1f0b:		rts				; 60 


func_1f_1f0c:
B31_1f0c:		lda $054e, x	; bd 4e 05
B31_1f0f:		cmp #$48		; c9 48
B31_1f11:		bcc B31_1f2f ; 90 1c

B31_1f13:		cmp #$68		; c9 68
B31_1f15:		bcs B31_1f2e ; b0 17

B31_1f17:		lda wPlayerStateDoubled.w, x	; bd 65 05
B31_1f1a:		and #$3f		; 29 3f
B31_1f1c:		beq B31_1f2e ; f0 10

B31_1f1e:		sta $17			; 85 17
B31_1f20:		dec $17			; c6 17
B31_1f22:		lda wPlayerStateDoubled.w, x	; bd 65 05
B31_1f25:		and #$c0		; 29 c0
B31_1f27:		ora $17			; 05 17
B31_1f29:		sta wPlayerStateDoubled.w, x	; 9d 65 05
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
B31_1f8c:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_1f8f:		lda wPlayerStateDoubled.w, x	; bd 65 05
B31_1f92:		and #$3f		; 29 3f
B31_1f94:		ora #$40		; 09 40
B31_1f96:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B31_1f99:		rts				; 60 


func_1f_1f9a:
B31_1f9a:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1f9d:		pha				; 48 
	jsr_a000Func func_03_1c8d
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

.ifdef EXTENDED_RAM
initExtRamAndMMC5Regs:
	lda #2
	sta $5102
	lda #1
	sta $5103

; clear extended ram
	ldx #$80
	ldy #$00
	lda #$60
	sta $01
	lda #$00
	sta $00
-	sta ($00), y
	iny
	bne -
	inc $01
	cpx $01
	bne -

	jmp initMMC5Regs
.endif

.org $1ff0
	.asc "MAST900000"
	

	.dw nmiVector
	.dw resetVector
	.dw irqVector
