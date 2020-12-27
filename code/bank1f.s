
wait3xPlus5cycles:
-	dex ; 1 cycle
	bne - ; 1/2/3 cycles
	rts ; 6 cycles


wait50cycles:
	ldx #$0f ; 2 cycles
-	dex ; 1 cycle
	bne - ; 1/2/3 cycles
	rts ; 6 cycles


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

; jump to smaller version of nmi vector if not done with last one
	ldy wIsExecutingNMIVector
	bne smallNMIVector
	inc wIsExecutingNMIVector

; oam dma transfer
	lda #$00
	sta OAMADDR.w
	ldy #>wOam
	sty OAMDMA.w

	jsr disableNMI_hideSpritesBg
	jsr processVramQueue

; if 1c non-zero, even after decrement
	lda wPPUMask
	ldx wCounterUntilCanShowSprBg
	beq +

	dec wCounterUntilCanShowSprBg
	beq +

	and #$ff-(PPUMASK_SHOW_SPR|PPUMASK_SHOW_BG)
+	sta PPUMASK.w

; small nmi are below funcs up to and including updateSound
B31_0085:		jsr setBaseIRQDetails_todo		; 20 03 e1
	jsr resetPPUAddr_updateScrollAndCtrl
	jsr setFrameStartingDefaultChrBanks

B31_008e:		lda $75			; a5 75
	bpl +

B31_0092:		lsr a			; 4a
B31_0093:		lsr a			; 4a
B31_0094:		lsr a			; 4a
B31_0095:		lsr a			; 4a
B31_0096:		sta $75			; 85 75

; update gameplay scroll vars
+	lda wCurrScrollOffsetIntoRoomScreen
	sta wGameplayScrollXWithinRoom
	lda wCurrScrollRoomScreen
	sta wGameplayScrollXRoom

	jsr updateSound

; once per actionable frame, update state and oam
	jsr pollInputs
	jsr processGameState
	jsr_8000Func update_wOam

; control byte 0 - dont process more codes
	lda #$00
	jsr storeByteInVramQueue

; can safely do all funcs next nmi
	sta wIsExecutingNMIVector

vectorEnd:
	pla
	tay
	pla
	tax
	pla
	rti

smallNMIVector:
B31_00be:		jsr setBaseIRQDetails_todo		; 20 03 e1
	jsr resetPPUAddr_updateScrollAndCtrl
	jsr setFrameStartingDefaultChrBanks

B31_00c7:		lda $75			; a5 75
	bpl +

B31_00cb:		lsr a			; 4a
B31_00cc:		lsr a			; 4a
B31_00cd:		lsr a			; 4a
B31_00ce:		lsr a			; 4a
B31_00cf:		sta $75			; 85 75

; update gameplay scroll vars
+	lda wCurrScrollOffsetIntoRoomScreen
	sta wGameplayScrollXWithinRoom
	lda wCurrScrollRoomScreen
	sta wGameplayScrollXRoom

; then sound
	jsr updateSoundIfNotExecutingSoundFunc
	jmp vectorEnd


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
	lda #PPUCTRL_NMI_ON|PPUCTRL_SPR_16|PPUCTRL_BG_1000
	sta wPPUCtrl
	sta PPUCTRL.w

	lda #PPUMASK_SHOW_SPR|PPUMASK_SHOW_BG|PPUMASK_SPR_LEFT_8PX|PPUMASK_BG_LEFT_8PX
	sta wPPUMask

; show all in 5 frames
	lda #$05
	sta wCounterUntilCanShowSprBg
	rts


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


.include "code/soundEngineHooks.s"


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


; scanline irq funcs will change chr banks
; these are the ones that need to be set per frame
setFrameStartingDefaultChrBanks:
	ldy wFrameStartChrBankOverrideIdx
	beq @idxEqu0

	dey
	beq @idxGte1

	dey
	bne @idxEqu1

; >= 2
	jsr setClearedSprChrBank_800_c00
	jmp @idxGte1

@idxEqu0:
	jsr updateSprChrBanks_0_to_c00_1400
	jmp updateSprChrBank_1000_1800_1c00_bgChrBanks_0_to_c00

@idxEqu1:
	jsr updateSprChrBanks_0_to_c00_1400

@idxGte1:
	lda #CB_ASCII_ROUND_RECTANGLE
	sta CHR_BANK_0400_1400.w
	lda #CB_STATUS_BAR_CHAR_FACES
	sta CHR_BANK_1800.w
	sta CHR_BANK_0800_1800.w
	rts


setClearedSprChrBank_0_to_c00:
	jsr setClearedSprChrBank_800_c00
	jmp setClearedSprChrBank_0_400


setClearedSprChrBank_800_c00:
	lda #CB_EMPTY
	sta CHR_BANK_0800.w
	sta CHR_BANK_0c00.w
	rts


setClearedSprChrBank_0_400:
	lda #CB_EMPTY
	sta CHR_BANK_0000.w
	lda #CB_EMPTY
	sta CHR_BANK_0400.w
	rts


setClearedBGPatternTable:
	lda #CB_EMPTY
	sta CHR_BANK_0000_1000.w
	sta CHR_BANK_0400_1400.w
	sta CHR_BANK_0800_1800.w
	sta CHR_BANK_0c00_1c00.w
	rts


updateSprChrBanks_0_to_c00_1400:
	jsr updateSprChrBanks_800_c00_1400
	jmp updateSprChrBanks_0_400


updateSprChrBanks_800_c00_1400:
	lda wChrBankSpr_0800
	sta CHR_BANK_0800.w
	lda wChrBankSpr_0c00
	sta CHR_BANK_0c00.w
	lda wChrBankSpr_1400
	sta CHR_BANK_1400.w
	rts


updateSprChrBanks_0_400:
	lda wChrBankSpr_0000
	sta CHR_BANK_0000.w
	lda wChrBankSpr_0400
	sta CHR_BANK_0400.w
	rts


updateSprChrBank_1000_1800_1c00_bgChrBanks_0_to_c00:
	lda wChrBankBG_0000
	sta CHR_BANK_1000.w
	sta CHR_BANK_0000_1000.w

	lda wChrBankBG_0c00
	sta CHR_BANK_1c00.w
	sta CHR_BANK_0c00_1c00.w

updateSprChrBank_1800_bgChrBanks_400_800:
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
	.dw B31_03b3@done
	.dw gameState2_preNamePwInput
	.dw gameState3_preInGame
	.dw gameState4_inGame
	.dw gameState5_died
	.dw gameState6_gameOver
	.dw gameState7_debugMode
	.dw gameState8_betweenLevels
	.dw gameState9_introCutscene
	.dw gameStateA_namePwInput
	.dw gameStateB_showPassword
	.dw gameStateC_endingCutscene
	.dw gameStateD_credits
	.dw gameStateE_afterPwEnter
	.dw gameStateF_soundMode

gameState0_intro:
	ldx wGameSubstate
	bne B31_03b3 ; @gtSubstate0

; substate0 - init
B31_03a6:		stx $1e			; 86 1e
	jsr clearAlargePartOfWram_26hUp_todo

B31_03ab:		lda #$00		; a9 00
B31_03ad:		sta $07ec		; 8d ec 07

	inc wGameSubstate
	rts

@gtSubstate0:
B31_03b3:		dex				; ca 
	bne @gtSubstate1

; substate 1 - intro scrolling screen
	jsr_a000Func handleGameIntroScrollingStoryScreen

; go to title screen on select/start pressed
	lda wJoy1NewButtonsPressed2
	and #PADF_SELECT|PADF_START
	beq +
	inc wGameSubstate
+	rts

@gtSubstate1:
	dex
	bne @gtSubstate2

; substate 2 - between scrolling and start menu 1
	jsr clearAlargePartOfWram_26hUp_todo

; set chr banks
	ldy #CB_TREVOR_1
	sty wChrBankSpr_0000
; CB_TREVOR_2
	iny
	sty wChrBankSpr_0400
	lda #CB_ASCII_ROUND_RECTANGLE
	sta wChrBankBG_0000
	ldy #CB_TITLE_SCREEN_1
	sty wChrBankBG_0400
; CB_TITLE_SCREEN_2
	iny
	sty wChrBankBG_0800
; CB_TITLE_SCREEN_3
	iny
	sty wChrBankBG_0c00

	inc wGameSubstate
	jmp setNametableVerticalMirroring

@gtSubstate2:
	dex	
	bne @gtSubstate3

; substate 3 - between scrolling and start menu 2
	jsr initSoundAndTitleScreenLayout

	jsr setGenericTimerTo100h
	inc wGameSubstate
	rts

@restartGameState:
	lda #GS_INTRO
	beq +

@toSoundMode:
	lda #GS_SOUND_MODE
+	jmp setNewGameState

@gtSubstate3:
	dex
	bne @gtSubstate4

; substate 4 - start/password screen
	jsr decGenericTimer
	beq @restartGameState

	jsr_8000Func setTitleScreenMenuCursorEntityDetails

	jsr checkSelectPressedIn2OptionMenu

; check start pressed
	lda wJoy1NewButtonsPressed2
	and #PADF_START
	beq @done

; if start+a/b pressed, go to sound mode
	lda wJoy1ButtonsPressed
	and #PADF_A|PADF_B
	bne @toSoundMode

; else set timer, and go to next substate
	lda #$80
	sta wGenericStateTimer
	inc wGameSubstate

@done:
	rts

@gtSubstate4:
; substate 5 - after selecting start/password
	ldy wMenuOptionIdxSelected

; every 8 frames, toggle between hiding and showing
; the selected text
	lda wGenericStateTimer
	and #$08
	beq +

; bit 7 set to hide
	lda @selectedStaticLayoutToFlash.w, y
	ora #$80
	bne @flashLayout

+	lda @selectedStaticLayoutToFlash.w, y

@flashLayout:
	jsr displayStaticLayoutA
	dec wGenericStateTimer
	bne @done

	lda #GS_PRE_NAME_PW_INPUT
	jmp setNewGameState

@selectedStaticLayoutToFlash:
	.db SL_TITLE_SCREEN_OPENING_TEXT
	.db SL_TITLE_SCREEN_PASSWORD_TEXT


gameState2_preNamePwInput:
	lda $6b
B31_0444:		pha				; 48 
B31_0445:		jsr clearAlargePartOfWram_26hUp_todo		; 20 24 e8
B31_0448:		lda #$00		; a9 00
B31_044a:		sta $1e			; 85 1e
B31_044c:		pla				; 68 
B31_044d:		sta $6b			; 85 6b
B31_044f:		lda #GS_NAME_PW_INPUT		; a9 0a
B31_0451:		jmp setNewGameState		; 4c 74 e5


gameState3_preInGame:
B31_0454:		lda #$00		; a9 00
B31_0456:		sta wInGameSubstate			; 85 2a
B31_0458:		jsr clearAlargePartOfWram_50hUp_todo		; 20 28 e8
B31_045b:		jsr func_1f_0782		; 20 82 e7
B31_045e:		jsr respawnSetTimeLeftPlayerPosAndDir		; 20 8f e6
; GS_IN_GAME
B31_0461:		jmp incToNewGameState		; 4c 6d e5


gameState5_died:
B31_0464:		lda #$02		; a9 02
B31_0466:		sta wCounterUntilCanShowSprBg			; 85 1c

	ldy wGameSubstate
	bne @gtSubstate0

; substate 0 - nothing
	inc wGameSubstate
	rts

@gtSubstate0:
	dey
	bne B31_049a ; @gtSubstate1

; substate 1
B31_0472:		jsr func_1f_0819		; 20 19 e8

; if died at Dracula, respawn near him
	lda wCurrRoomGroup
	cmp #RG_CASTLE_KEEP
	bne @afterDraculaDeathCheck

	lda wCurrRoomSection
	cmp #$02
	bne @afterDraculaDeathCheck

	lda #$01
	sta wCurrRoomSection

@afterDraculaDeathCheck:
	jsr respawnSetTimeLeftPlayerPosAndDir
	jsr fillFirst3NametablesWith0

; game over when past 0 lives left
	lda wCurrLivesLeft
	beq setStateGameOver

	jsr_8000Func b1c_sub1fromCurrLivesLeft
	inc wGameSubstate
	rts

@gtSubstate1:
B31_049a:		dey				; 88 
	bne @gtSubstate2

; substate 2 - set timer
	lda #$01
	sta wGenericStateTimer
	inc wGameSubstate
-	rts

@gtSubstate2:
; substate 3 - set in game state when timer done
	dec wGenericStateTimer
	bne -

setStateInGameClearInGameSubstate:
	lda #$00
	sta wInGameSubstate
	lda #GS_IN_GAME
	sta wGameState
	rts

setStateGameOver:
	lda #GS_GAME_OVER
	jmp setNewGameState


gameState6_gameOver:
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
B31_04f0:		jsr_8000Func setGameOverScreenMenuCursorEntityDetails
B31_04f8:		jsr checkSelectPressedIn2OptionMenu		; 20 5b e5
B31_04fb:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_04fd:		and #PADF_START		; 29 10
B31_04ff:		beq B31_04ef ; f0 ee

B31_0501:		lda $6b			; a5 6b
B31_0503:		beq B31_050a ; f0 05

B31_0505:		lda #GS_SHOW_PASSWORD		; a9 0b
B31_0507:		jmp setNewGameState		; 4c 74 e5


gameStateE_afterPwEnter:
B31_050a:		jsr func_1f_0819		; 20 19 e8
	jsr_8000Func func_00_1f80
	jsr respawnSetTimeLeftPlayerPosAndDir
	jmp setStateInGameClearInGameSubstate


gameState8_betweenLevels:
	jmp_a000Func gameState8_betweenLevels_body


gameState9_introCutscene:
	jmp_a000Func gameState9_introCutscene_body


gameStateC_endingCutscene:
	jmp_a000Func gameStateC_endingCutscene_body


gameStateD_credits:
	jmp_a000Func gameStateD_credits_body


gameStateF_soundMode:
	jmp_a000Func gameStateF_soundMode_body


gameState7_debugMode:
	jmp_8000Func gameState7_debugMode_body


gameStateA_namePwInput:
	jmp_a000Func gameStateA_namePwInput_body


gameStateB_showPassword:
	jmp_a000Func gameStateB_showPassword_body


checkSelectPressedIn2OptionMenu:
	lda wJoy1NewButtonsPressed2
	and #PADF_SELECT
	beq +

	lda #SND_ATTACK_OR_MAIN_MENU_SELECT
	jsr playSound

; flip between 2 options
	lda wMenuOptionIdxSelected
	eor #$01
	sta wMenuOptionIdxSelected
+	rts


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


set_2c_to_00h:
B31_05ca:		lda #$00		; a9 00
B31_05cc:		beq B31_05d0 ; f0 02

set_2c_to_01h:
B31_05ce:		lda #$01		; a9 01
B31_05d0:		sta $2c			; 85 2c
B31_05d2:		rts				; 60 


getCurrRoomInternalPalettesChrBanksAndCollisionTypeOffsets:
	lda CURR_LOWER_BANK.w
	pha
	lda #$80
	jsr setAndSaveLowerBank
	jsr loadCurrRoomsInternalPalettes
	jsr b0_loadCurrPlayerSprChrBanks
	jsr getCurrRoomsChrBanks
	jsr getCurrChrBankTileCollisionTypeOffsets
	pla
	jmp setAndSaveLowerBank


func_1f_05ec:
	jsr_8000Func loadRoomEntities
B31_05f4:		lda #$96		; a9 96
B31_05f6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_05f9:		jsr func_1f_1de3		; 20 e3 fd
	jmp_8000Func func_04_1d30


func_1f_0604:
	jsr_a000Func func_11_1e21
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


setVerticalMirroringAndNoIRQsetup:
	lda #NT_VERTICAL_MIRROR
	sta wNametableMapping

; no irq setup
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


respawnSetTimeLeftPlayerPosDir_forceRoomIdx:
	jmp_a000FuncNested b9_respawnSetTimeLeftPlayerPosDir_forceRoomIdx


respawnSetTimeLeftPlayerPosAndDir:
	jmp_a000FuncNested b9_respawnSetTimeLeftPlayerPosAndDir


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


loadCurrPlayerInternalPalettes:
	lda wPrgBank_8000
	pha
	jsr_8000Func b0_loadCurrPlayerInternalPalettes
	pla
	jmp setAndSaveLowerBank


B31_0725:		lda #$80		; a9 80
B31_0727:		jsr saveAndSetNewLowerBank		; 20 e0 e2
B31_072a:		jsr $8574		; 20 74 85
B31_072d:		jmp setBackup8000PrgBank		; 4c 7f e6


loadCurrRoomsInternalSprPalettes:
	jsr_8000Func b0_loadCurrRoomsInternalSprPalettes
	lda #PRG_ROM_SWITCH|:func_14_0f73
	jmp setAndSaveLowerBank


loadCurrPlayerSprChrBanks:
	jmp_8000FuncNested b0_loadCurrPlayerSprChrBanks


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
-	sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B31_07fe:		sta wEntityBaseY.w, x	; 9d 1c 04
B31_0801:		sta wEntityBaseX.w, x	; 9d 38 04
B31_0804:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_0807:		sta wEntityState.w, x	; 9d 70 04
B31_080a:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B31_080d:		sta wEntityFacingLeft.w, x	; 9d a8 04
B31_0810:		sta wEntityObjectIdxes.w, x	; 9d 4e 05
B31_0813:		inx				; e8 
B31_0814:		cpx #$17		; e0 17
	bcc -

B31_0818:		rts				; 60 


func_1f_0819:
	jmp_8000FuncNested func_00_118b


clearAlargePartOfWram_26hUp_todo:
B31_0824:		ldx #$26		; a2 26
	bne +

clearAlargePartOfWram_50hUp_todo:
B31_0828:		ldx #$50		; a2 50

+
; clear zero-page from X to $e0
	lda #$00		; a9 00
-	sta $00, x		; 95 00
B31_082e:		inx				; e8 
B31_082f:		cpx #$e0		; e0 e0
	bne -

; clear 400 & 500 page, and 700-7f5
B31_0833:		ldx #$00		; a2 00
-	sta $0400.w, x	; 9d 00 04
B31_0838:		sta $0500, x	; 9d 00 05
B31_083b:		cpx #$f6		; e0 f6
	bcs +

B31_083f:		sta $0700, x	; 9d 00 07
+	inx				; e8 
	bne -

; clear 600 to 69f
B31_0845:		lda #$00		; a9 00
B31_0847:		tax				; aa 
-	sta $0600, x	; 9d 00 06
B31_084b:		inx				; e8 
B31_084c:		cpx #$a0		; e0 a0
	bcc -

; clear 6e0 to 6ff
B31_0850:		ldx #$e0		; a2 e0
-	sta $0600, x	; 9d 00 06
B31_0855:		inx				; e8 
	bne -

; clear 300 to 3bf
B31_0858:		ldx #$00		; a2 00
-	sta $0300.w, x	; 9d 00 03
B31_085d:		inx				; e8 
B31_085e:		cpx #$c0		; e0 c0
	bne -

; clear f0 to f7
B31_0862:		lda #$00		; a9 00
B31_0864:		tax				; aa 
-	sta $f0, x		; 95 f0
B31_0867:		inx				; e8 
B31_0868:		cpx #$08		; e0 08
	bcc -

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


vramQueueSetControlByte2_destToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$02
	bne _vramQueueSetBytesDestToCopy_noData


vramQueueSetControlByte1_destToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$01
	bne _vramQueueSetBytesDestToCopy_noData


vramQueueSetDestToCopy_noData:
	ldx wVramQueueNextIdxToFill
	jmp _vramQueueSetDestToCopyTo_noData


; 2 rows of 4 bytes
vramQueueSetControlByte5_destToCopy_noData:
	ldx wVramQueueNextIdxToFill
	lda #$05
	bne _vramQueueSetBytesDestToCopy_noData

; 4 rows of 4 bytes
vramQueueSetControlByte4_destToCopy_noData:
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
B31_08e3:		lda #<$2780		; a9 80
B31_08e5:		sta wVramQueueDest			; 85 61
B31_08e7:		lda #>$2780		; a9 27
B31_08e9:		sta wVramQueueDest+1			; 85 62
B31_08eb:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8
B31_08ee:		ldy #$40		; a0 40
B31_08f0:		lda #$00		; a9 00
-	sta wVramQueue.w, x	; 9d 00 03
B31_08f5:		inx				; e8 
B31_08f6:		dey				; 88 
	bne -

B31_08f9:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


; 2 digits for num
vramQueueControlByte1AndNumsDigitTiles:
	jsr vramQueueSetControlByte1_destToCopy_noData

; tens digit
	lda wCurrNumToVramQueue
	lsr a
	lsr a
	lsr a
	lsr a
	tay
	lda @numsDigitTiles.w, y
	sta wVramQueue.w, x

; ones digit
	inx
	lda wCurrNumToVramQueue
	and #$0f
	tay
	lda @numsDigitTiles.w, y
	sta wVramQueue.w, x

	jmp setVramQueueNextFillIdxAndTerminate

@numsDigitTiles:
	.db $41 $42 $43 $44 $45 $46 $47 $48
	.db $49 $4a $50 $51 $52 $53 $54 $55


B31_092a:		ldy wEntityBaseY.w, x ; bc 1c 04
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
B31_0946:		ldy wCurrScrollRoomScreen			; a4 57
B31_0948:		clc				; 18 
B31_0949:		lda wCurrScrollOffsetIntoRoomScreen			; a5 56
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

B31_099a:		ldy wCurrRoomSection			; a4 33
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
B31_09e0:		adc wCurrScrollOffsetIntoRoomScreen			; 65 56
B31_09e2:		sta $11			; 85 11
B31_09e4:		lda wCurrScrollRoomScreen			; a5 57
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
B31_0b2d:		adc wCurrScrollOffsetIntoRoomScreen			; 65 56
B31_0b2f:		sta $11			; 85 11
B31_0b31:		lda wCurrScrollRoomScreen			; a5 57
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


initSoundAndTitleScreenLayout:
	jsr initSound
	jsr fillFirst3NametablesWith0

; including nt palettes
	ldx #LL_TITLE_SCREEN
	lda #PRG_ROM_SWITCH|:largeLayout02-1
	jsr loadLargeLayoutDoubledXbankA

	lda #SL_TITLE_SCREEN_INTERNAL_PALETTES
	jsr displayStaticLayoutA
	lda #SL_TITLE_SCREEN_OPENING_TEXT
	jsr displayStaticLayoutA
	lda #SL_TITLE_SCREEN_PASSWORD_TEXT
	jmp displayStaticLayoutA


loadLargeLayoutDoubledXbankA:
	jsr saveAndSetNewLowerBank
	jsr loadLargeLayoutDoubledX
-	lda wPrgBankBkup_8000
	jmp setAndSaveLowerBank


loadLargeLayoutPPUAddrYXBankAfromCustomAddr:
	jsr saveAndSetNewLowerBank
	jsr disableNMI_hideSpritesBg

; clear scroll
	lda #$00
	sta wScrollY
	sta wScrollX

; reset latch, initial ppu addr at YX
	lda PPUSTATUS.w
	sty PPUADDR.w
	stx PPUADDR.w

	ldx #wCurrLargeLayoutAddr
	jsr loadLargeLayoutDoubledX@nextCountByte
	jmp -


fillFirst3NametablesWith0:
; vram pages 0 and 1
	lda #NT_ALL_MODES_VERTICAL_MIRROR
	sta NAMETABLE_MAPPING.w
	ldx #$00

loadLargeLayoutDoubledX:
	lda largeLayoutAddresses.w, x
	sta wCurrLargeLayoutAddr
	lda largeLayoutAddresses.w+1, x
	sta wCurrLargeLayoutAddr+1

	jsr disableNMI_hideSpritesBg

; clear scroll
	lda #$00
	sta wScrollX
	sta wScrollY

; reset latch
@nextCopyDest:
	lda PPUSTATUS.w

; 1st word is small-endian ppu dest
	ldy #$01
	lda (wCurrLargeLayoutAddr), y
	sta PPUADDR.w
	dey
	lda (wCurrLargeLayoutAddr), y
	sta PPUADDR.w

; skip to bytes after ppu addr
	ldx #wCurrLargeLayoutAddr
	lda #$02
	jsr incPointerXByA

@nextCountByte:
; get byte from data, ending at $ff
	ldy #$00
	lda (wCurrLargeLayoutAddr), y
	cmp #$ff
	beq @done

	cmp #$7f
	beq @byte7fh

	tay
	bpl @byteBit7NotSet

; byte bit 7 set, store count
	and #$7f
	sta wCurrLargeLayoutCountByte

; copy a string of different bytes
	ldy #$01
-	lda (wCurrLargeLayoutAddr), y
	sta PPUDATA.w
	cpy wCurrLargeLayoutCountByte
	beq +

	iny
	bne -

+	lda #$01
	clc
	adc wCurrLargeLayoutCountByte

@toNextByte:
	jsr incPointerXByA
	jmp @nextCountByte

@byteBit7NotSet:
; copy the next byte multiple times
	ldy #$01
	sta wCurrLargeLayoutCountByte
	lda (wCurrLargeLayoutAddr), y
	ldy wCurrLargeLayoutCountByte
-	sta PPUDATA.w
	dey
	bne -

	lda #$02
	bne @toNextByte

@byte7fh:
; process from new dest
	lda #$01
	jsr incPointerXByA
	jmp @nextCopyDest

@done:
	jmp processVramQueue@updatePPUCtrl


largeLayoutAddresses:
	.dw largeLayout_clearFirst3Nametables
	.dw largeLayout02
	.dw largeLayout_clearFirst3Nametables
	.dw largeLayout_clearFirst3Nametables
	.dw largeLayout_clearFirst3Nametables
	.dw largeLayout_clearFirst3Nametables
	.dw largeLayout0c
	.dw largeLayout0e
	.dw largeLayout10
	.dw largeLayout12
	.dw largeLayout14
	.dw largeLayout16
	.dw largeLayout18
	.dw largeLayout1a
	.dw largeLayout1c
	.dw largeLayout1e
	.dw largeLayout20
	.dw largeLayout22 ; specifies bank 4?
	.dw largeLayout24

largeLayout_clearFirst3Nametables:
	.dw $2000
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $40 $00
	.db $7f

	.dw $2400
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $40 $00
	.db $7f

	.dw $2800
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $78 $00
	.db $40 $00
	.db $ff


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


; 1-indexed
vramQueueControlByteIncCopyDir:
	.db PPUCTRL_PPUDATA_INC_RIGHT
	.db PPUCTRL_PPUDATA_INC_DOWN
	.db PPUCTRL_PPUDATA_INC_DOWN
	.db PPUCTRL_PPUDATA_INC_RIGHT
	.db PPUCTRL_PPUDATA_INC_RIGHT
	.db PPUCTRL_PPUDATA_INC_RIGHT
	.db PPUCTRL_PPUDATA_INC_RIGHT
	.db PPUCTRL_PPUDATA_INC_DOWN
	.db PPUCTRL_PPUDATA_INC_DOWN
	.db PPUCTRL_PPUDATA_INC_RIGHT


;1 (right), 2 (down)
;- sets dest
;- copy endless bytes from queue
;- ff then $b+ copies ff into ppudata
;- ff then <$b denotes end

;3 (down)
;- sets dest
;- next byte is count byte
;- next byte is byte to copy that many times

;4 (right), 8 (down), 9 (down)
;- sets dest and copies 4 bytes, 4 times

;5 (right)
;- sets dest and copies 4 bytes, 2 times
;- then sets dest for 1 more byte

;6 (right)
;- sets dest
;- copies $20 bytes from queue

;7 (right)
;- sets dest
;- copies $20 bytes from queue
;- sets next dest
;- then stores 8 more bytes from queue

;10 (right)
;- sets dest
;- next byte is count byte
;- copy that many bytes to ppudata
processVramQueue:
	ldy #$00

@nextControlByte:
; control byte 0 is invalid
	ldx wVramQueue.w, y
	beq @done

; set ppu ctrl for copying
	lda wPPUCtrl
	and #PPUCTRL_BG_1000|PPUCTRL_SPR_1000
	ora vramQueueControlByteIncCopyDir.w-1, x
	sta PPUCTRL.w

	iny
	cpx #$0a
	beq +

	cpx #$04
	bcs @controlBytes4to9

; control byte 1, 2, 3, $0a
; reset latch, and set dest addr
+	lda PPUSTATUS.w
	lda wVramQueue.w+1, y
	sta PPUADDR.w
	lda wVramQueue.w, y
	sta PPUADDR.w
	iny
	iny
	cpx #$0a
	beq +

	cpx #$03
	beq @controlByte3

	bne @controlByte1or2

+	jmp @controlByteA

@done:
	lda #$00
	sta wVramQueue.w
	sta wVramQueueNextIdxToFill

@updatePPUCtrl:
	lda wPPUCtrl
	sta PPUCTRL.w
	rts

@storeffhInPPUData:
	lda #$ff

@staPPUData:
	sta PPUDATA.w

@controlByte1or2:
; difference between the 2 is the inc copy method
	lda wVramQueue.w, y
	iny
	cmp #$ff
	bne @staPPUData

; if ff read, then $0b+ read, store $ff in ppudata
; else, go to next control byte
	lda wVramQueue.w, y
	cmp #$0b
	bcs @storeffhInPPUData

	bcc @nextControlByte

@controlByte3:
; get count byte, then set the next byte that many times
	ldx wVramQueue.w, y
	iny
	lda wVramQueue.w, y
-	sta PPUDATA.w
	dex
	bne -

	iny
	bne @nextControlByte

@controlBytes4to9:
	cpx #$06
	beq @controlByte6

	cpx #$07
	beq @controlByte7

	cpx #$05
	bne @controlByte4_8_9

; control byte 5, copy 2*4 times
	ldx #$02
	bne @setDestAndCopy4bytes_xTimes

@controlByte4_8_9:
; 8 and 9 are the same?
	ldx #$04

@setDestAndCopy4bytes_xTimes:
; set dest address and copy row/col of 4 bytes
	lda PPUSTATUS.w
	lda wVramQueue.w+1, y
	sta PPUADDR.w
	lda wVramQueue.w, y
	sta PPUADDR.w
	iny
	iny

.rept 4
	lda wVramQueue.w, y
	sta PPUDATA.w
	iny
.endr
	dex
	bne @setDestAndCopy4bytes_xTimes

; set new dest address
	lda PPUSTATUS.w
	lda wVramQueue.w+1, y
	sta PPUADDR.w
	lda wVramQueue.w, y
	sta PPUADDR.w
	iny
	iny

; store 1 byte for the last address (eg palette for above 8 tiles)
	lda wVramQueue.w, y
	sta PPUDATA.w
	iny
	jmp @nextControlByte

@controlByte6:
	ldx #$00
	beq +

@controlByte7:
	ldx #$01
+
; set dest and copy 32 bytes
	lda PPUSTATUS.w
	lda wVramQueue.w+1, y
	sta PPUADDR.w
	lda wVramQueue.w, y
	sta PPUADDR.w
	iny
	iny

.rept 32
	lda wVramQueue.w, y
	sta PPUDATA.w
	iny
.endr

	cpx #$00
	bne +

; if control byte 6, we're done
	jmp @nextControlByte

; else control byte 7, set new address and copy 8 bytes
+	lda PPUSTATUS.w
	lda wVramQueue.w+1, y
	sta PPUADDR.w
	lda wVramQueue.w, y
	sta PPUADDR.w
	iny
	iny

.rept 8
	lda wVramQueue.w, y
	sta PPUDATA.w
	iny
.endr

	jmp @nextControlByte

@controlByteA:
; copy 1st byte number of bytes
	ldx wVramQueue.w, y
	iny
-	lda wVramQueue.w, y
	sta PPUDATA.w
	iny
	dex
	bne -

	jmp @nextControlByte


setPlayerAnimationDefIdxA_oamSpecBase02:
	sta wEntityAnimationDefIdxInSpecGroup.w

	ldy #$02
	sty wEntityOamSpecIdxBaseOffset.w

; animate from next frame
	dey
	sty wEntityTimeUntilNextAnimation.w
	rts


setPlayerAnimationDefIdxA_animateNextFrame:
	ldx #$00
	jmp +


setEntitySpecGroupA_animationDefIdxY_animateNextFrame:
	sta wEntityOamSpecGroupDoubled.w, x
	tya

+	sta wEntityAnimationDefIdxInSpecGroup.w, x
	lda #$00
	sta wEntityOamSpecIdxBaseOffset.w, x
	lda #$01
	sta wEntityTimeUntilNextAnimation.w, x
	rts


setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate:
; always jump
	jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame
	bne updateEntityXanimationFrame

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


callCoreLoadingDataFuncFromEndingGameStatesBank:
	jsr setAndSaveLowerBank
	lda @returnAddr.w+1
	pha
	lda @returnAddr.w
	pha
	jmp (wCoreLoadingFuncAddr)

@return:
	lda #(PRG_ROM_SWITCH|:callCoreLoadingFunc)-1
	jmp setAndSaveLowerBank

@returnAddr:
	.dw @return-1


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
B31_1c13:		jmp getCollisionTileValueAtPointYA_vertRoom		; 4c a1 fc


B31_1c16:		sty $10			; 84 10
B31_1c18:		tay				; a8 
B31_1c19:		lda $10			; a5 10
B31_1c1b:		jmp getCollisionTileValueAtPointYA_horizRoom		; 4c ed fc


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
B31_1c5e:		bcc returnCollisionVal0_vert ; 90 1c

B31_1c60:		cmp #$c0		; c9 c0
B31_1c62:		bcs returnCollisionVal0_vert ; b0 18

B31_1c64:		sta $11			; 85 11
B31_1c66:		lsr $11			; 46 11
B31_1c68:		lsr $11			; 46 11
B31_1c6a:		lsr $11			; 46 11
B31_1c6c:		lsr $11			; 46 11
B31_1c6e:		lda wCurrScrollOffsetIntoRoomScreen			; a5 56
B31_1c70:		clc				; 18 
B31_1c71:		adc $10			; 65 10
B31_1c73:		sta $13			; 85 13
B31_1c75:		lda wCurrScrollRoomScreen			; a5 57
B31_1c77:		adc $14			; 65 14
B31_1c79:		jmp getCollisionTileValueAfterGettingAbsolutePointXY		; 4c 0d fd


returnCollisionVal0_vert:
	lda #$00
	rts


getCollisionTileValueAtPlayerXYOffsetAX_verticalRoom:
; Y = A + player X
	pla
	clc
	adc wEntityBaseX.w
	tay
; unused? overwritten below
	sta $13

; check X + player Y, ret if too high
	txa
	clc
	adc wEntityBaseY.w
	cmp wHighestTileToCheckForCollisionsInVertRoom
	bcc returnCollisionVal0_vert ; 90 ec

; Y point in screen-$33 is offset within actual game screen
	sec
	sbc #$33
	sta wCollisionPointYinScreen
	bcs +

; check if Y point < $33 (status bar region?)
	lda #$ff
	bne ++

+	lda #$00
++	sta wCollisionPointIsInVertRoomStatusBarRegion

; store collision point X
	sty wCollisionPointXinScreen

getCollisionTileValueAtPointYA_vertRoom:
; X val / 32 into $12
	tya
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta wCollisionPointXvalDiv32

; jump if Y point was <$33
	lda wCollisionPointIsInVertRoomStatusBarRegion
	bmi @collisionPointYwasInStatusBarRegion

; jump if scroll offset + Y point - $33 < $100
	clc
	lda wCurrScrollOffsetIntoRoomScreen
	adc wCollisionPointYinScreen
	bcc @pointNotOutOfBounds

; eg if $100 (ie 0), add $10, as it is $10 past $f0
	clc
	adc #$10
	jmp @finalYoffsetGotten

@collisionPointYwasInStatusBarRegion:
	clc
	lda wCurrScrollOffsetIntoRoomScreen
	adc wCollisionPointYinScreen
	bcs @pointNotOutOfBounds

; if still in status bar region, -$10 to keep <$f0
	sec
	sbc #$10
	jmp @finalYoffsetGotten

@pointNotOutOfBounds:
; re-check if Y now too big, if so wrap it around to 0
	cmp #$f0
	bcc @finalYoffsetGotten

	clc
	adc #$10

@finalYoffsetGotten:
; offset using Y is 0 to $70, 32x16 block Y idx * 8
; add X/32 (0 to 7)
	and #$f0
	lsr a
	clc
	adc wCollisionPointXvalDiv32
	tay

; jump depending on if collision point is on left/right side of 32x16 block
	lda wCollisionPointXinScreen
	and #$10

; Y is idx into collision vals
	bne returnCollisionValForRightHalfOf32x16block
	beq returnCollisionValForLeftHalfOf32x16block


; A - x offset to check
; X - y offset to check
getCollisionTileValueAtPlayerXYOffsetAX:
	pha
	lda wCurrRoomMetadataByte
	bmi getCollisionTileValueAtPlayerXYOffsetAX_verticalRoom

	pla

; y = A + player X
	clc
	adc wEntityBaseX.w
	tay

; check x + player Y
	txa
	clc
	adc wEntityBaseY.w

getCollisionTileValueAtPointYA_horizRoom:
; jump if less than $20, or > $e0
	sec
	sbc #$20
	bcc returnCollisionVal0

	cmp #$c0
	bcs returnCollisionVal0

; store Y point-$20 and X point
	sta wCollisionPointYinScreen
	sty wCollisionPointXinScreen

; Y point /= 16
	lsr wCollisionPointYinScreenDiv16
	lsr wCollisionPointYinScreenDiv16
	lsr wCollisionPointYinScreenDiv16
	lsr wCollisionPointYinScreenDiv16

; set X point + scroll x in room
	lda wCurrScrollOffsetIntoRoomScreen
	clc
	adc wCollisionPointXinScreen
	sta wCollisionPointAbsoluteXInRoom

; set absolute X point room/scroll x in room
	lda wCurrScrollRoomScreen
	adc #$00

getCollisionTileValueAfterGettingAbsolutePointXY:
	sta wCollisionPointAbsoluteXRoom
	tay
	lda wCollisionPointAbsoluteXInRoom

; Y = point's scroll X room
; ie A = absolute point X / 32
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	ora collisionPointScrollXRoomTimes8.w, y

; A %= $0c
-	cmp #$0c
	bcc +

	sbc #$0c
	jmp -

; remainder *= $0c (collision is done per 12-tile columns)
; add collision point Y / 16, into Y
; ie collision is stored per 32x16 block
+	tay
	lda mult0chTable.w, y
	clc
	adc wCollisionPointYinScreenDiv16
	tay

; A = absolute point scroll X in room
	lda wCollisionPointAbsoluteXInRoom
	and #$10
	bne returnCollisionValForRightHalfOf32x16block ; d0 0e

returnCollisionValForLeftHalfOf32x16block:
; if on left part of 32x16 block
; use upper nybble of collision byte
	lda #$00
	sta wCollisionValIsForRightHalfOf32x16block
	lda wCurrCollisionValues.w, y
	lsr a
	lsr a
	lsr a
	lsr a
	cmp #$00
	rts

returnCollisionValForRightHalfOf32x16block:
; if on right part of 32x16 block
; use lower nybble of collision byte
	lda #$01
	sta wCollisionValIsForRightHalfOf32x16block
	lda wCurrCollisionValues.w, y
	and #$0f
	rts

returnCollisionVal0:
	lda #$00
	rts


mult0chTable:
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


collisionPointScrollXRoomTimes8:
	.db $00 $08 $10 $18 $20 $28 $30 $38
	.db $40 $48 $50 $58 $60 $68 $70 $78


B31_1d71:		.db $00				; 00
B31_1d72:		;removed
	.db $10 $20

B31_1d74:		bmi B31_1db6 ; 30 40

B31_1d76:		;removed
	.db $50 $60

B31_1d78:		.db $70 $80

B31_1d7a:		.db $90 $a0

B31_1d7c:		.db $b0 $c0

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
B31_1deb:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B31_1dee:		bne B31_1df3 ; d0 03

B31_1df0:		jmp B31_1e7e		; 4c 7e fe

B31_1df3:		stx wCurrEntityIdxBeingProcessed			; 86 6c
B31_1df5:		lda #$96		; a9 96
B31_1df7:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1dfa:		lda $78			; a5 78
B31_1dfc:		bne B31_1e0b ; d0 0d

	jsr_a000Func func_09_1906
	lda #PRG_ROM_SWITCH|:func_17_11fb-1
	jsr setAndSaveLowerBank

B31_1e0b:	jsr func_17_11fb
B31_1e0e:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B31_1e10:		lda wEntityObjectIdxes.w, x	; bd 4e 05
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

B31_1e31:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B31_1e34:		cmp #$90		; c9 90
B31_1e36:		bcs B31_1e41 ; b0 09

B31_1e38:		cmp #$79		; c9 79
B31_1e3a:		bcs B31_1e46 ; b0 0a

B31_1e3c:		jsr func_1f_1f0c		; 20 0c ff
B31_1e3f:		bcs B31_1e73 ; b0 32

B31_1e41:		jsr execEntityXNextPhaseFunc		; 20 f9 bc

B31_1e44:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B31_1e46:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B31_1e49:		cmp #$68		; c9 68
B31_1e4b:		bcs B31_1e55 ; b0 08

B31_1e4d:		cmp #$40		; c9 40
B31_1e4f:		bcc B31_1e55 ; 90 04

B31_1e51:		lda $ab			; a5 ab
B31_1e53:		bne B31_1e73 ; d0 1e

B31_1e55:		lda wEntityState.w, x	; bd 70 04
B31_1e58:		and #ES_MOVING		; 29 40
B31_1e5a:		beq B31_1e64 ; f0 08

	jsr_8000Func func_16_0001
B31_1e64:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B31_1e67:		beq B31_1e7e ; f0 15

B31_1e69:		lda wEntityState.w, x	; bd 70 04
B31_1e6c:		and #ES_UNANIMATED		; 29 20
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
B31_1ebb:		lda wEntityObjectIdxes.w, x	; bd 4e 05
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


clearAllEntityVars_todo:
B31_1ed7:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B31_1eda:		lda #$00		; a9 00
B31_1edc:		sta $067b, x	; 9d 7b 06
B31_1edf:		sta $068d, x	; 9d 8d 06
B31_1ee2:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_1ee5:		sta wEntityState.w, x	; 9d 70 04
B31_1ee8:		sta $0669, x	; 9d 69 06
B31_1eeb:		lda #$00		; a9 00
B31_1eed:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B31_1ef0:		sta wEntityFractionalX.w, x	; 9d c4 04
B31_1ef3:		sta wEntityFractionalY.w, x	; 9d db 04
B31_1ef6:		sta wEntityPhase.w, x	; 9d c1 05
B31_1ef9:		sta $05d8, x	; 9d d8 05
B31_1efc:		sta wEntityAI_idx.w, x	; 9d ef 05
B31_1eff:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B31_1f02:		sta $061d, x	; 9d 1d 06
B31_1f05:		sta wEntityGenericCounter.w, x	; 9d 33 06
B31_1f08:		sta $0645, x	; 9d 45 06
B31_1f0b:		rts				; 60 


func_1f_1f0c:
B31_1f0c:		lda wEntityObjectIdxes.w, x	; bd 4e 05
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
	jsr_a000Func func_03_1d12
B31_1fb6:		pla				; 68 
B31_1fb7:		jmp setAndSaveLowerBank		; 4c e6 e2


B31_1fba:		lda CURR_LOWER_BANK.w		; ad 00 80
B31_1fbd:		pha				; 48 
	jsr_8000Func func_14_0f29
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
