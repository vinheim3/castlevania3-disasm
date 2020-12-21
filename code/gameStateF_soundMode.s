
gameStateF_soundMode_body:
	lda wGameSubstate
	jsr jumpTablePreserveY

	.dw soundModeSubstate0
	.dw soundModeSubstate1
	.dw soundModeSubstate2
	.dw soundModeSubstate3

soundModeSubstate0:
; to play dpcm data
B25_019d:		jsr setBank_c000_toRom07h
B25_01a0:		lda #$80		; a9 80
B25_01a2:		jsr displayStaticLayoutA		; 20 e9 ec
B25_01a5:		lda #$a6		; a9 a6
B25_01a7:		jsr displayStaticLayoutA		; 20 e9 ec
B25_01aa:		lda #$82		; a9 82
B25_01ac:		jsr displayStaticLayoutA		; 20 e9 ec
B25_01af:		lda #$00		; a9 00
B25_01b1:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B25_01b4:		sta wSoundModeCtrlState			; 85 6b
B25_01b6:		sta wSoundModeSongSelected.w		; 8d 80 07
B25_01b9:		inc wGameSubstate			; e6 19
B25_01bb:		rts				; 60 

soundModeSubstate1:
B25_01bc:		ldx #$98		; a2 98
B25_01be:		lda #$67		; a9 67
B25_01c0:		jsr displayStaticLayoutAbankX		; 20 dc ec
B25_01c3:		inc wGameSubstate			; e6 19
B25_01c5:		rts				; 60 

; main control state
soundModeSubstate2:
	jsr soundModeCtrlHandler
	lda wSoundModeCtrlState
; exit func sets state to ff
	bpl +
	inc wGameSubstate
+	rts

; exiting sound mode
soundModeSubstate3:
	jsr setBank_c000_toRom1eh
	lda #$00
	sta wSoundModeCtrlState
; GS_INTRO
B25_01d7:		sta wGameState			; 85 18
B25_01d9:		lda #$03		; a9 03
B25_01db:		sta wGameSubstate			; 85 19
B25_01dd:		rts				; 60 


soundModeCtrlHandler:
	lda wSoundModeCtrlState
	jsr jumpTablePreserveY

	.dw soundModeCtrlState_init
	.dw soundModeCtrlState_stub
	.dw soundModeCtrlState_processInput

soundModeCtrlState_init:
	jsr displaySoundModeSongText

soundModeCtrlState_stub:
	inc wSoundModeCtrlState
	rts

startExitSoundMode:
	jsr initSound
; ff set so that substate code goes back to main menu
	lda #$ff
	sta wSoundModeCtrlState
	rts

soundModeCtrlState_processInput:
	lda wJoy1NewButtonsPressed
	and #PADF_START
	bne startExitSoundMode

	lda wJoy1NewButtonsPressed
	and #PADF_UP
	bne @pressedUp

	lda wJoy1NewButtonsPressed
	and #PADF_DOWN
	bne @pressedDown

	lda wJoy1NewButtonsPressed
	and #PADF_A
	bne @pressedA

	lda wJoy1NewButtonsPressed
	and #PADF_B
	bne @pressedB

	rts

@pressedA:
; A clears sound
	jmp initSound

@pressedDown:
	inc wSoundModeSongSelected.w
	lda wSoundModeSongSelected.w
	cmp #LAST_SOUND_MODE_SONG_IDX
	bcc @displayNewText

	lda #LAST_SOUND_MODE_SONG_IDX
	bne @setSongSelected_displayItsText

@pressedUp:
; 0 is lowest idx
	dec wSoundModeSongSelected.w
	bpl @displayNewText

	lda #$00

@setSongSelected_displayItsText:
	sta wSoundModeSongSelected.w

@displayNewText:
	jsr clearSoundModeSongText
	jmp displaySoundModeSongText

@pressedB:
; B plays sound
	ldy wSoundModeSongSelected.w
	lda soundModeSongIdxes.w, y
	jmp playSound


clearSoundModeSongText:
; where song name text shows up
B25_0240:		lda #<$232b		; a9 2b
B25_0242:		sta wVramQueueDest			; 85 61
B25_0244:		lda #>$232b		; a9 23
B25_0246:		sta wVramQueueDest+1			; 85 62
B25_0248:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8

; clear 10 bytes during vblank
B25_024b:		ldy #$0a		; a0 0a
B25_024d:		lda #$00		; a9 00

-	sta wVramQueue.w, x	; 9d 00 03
B25_0252:		inx				; e8 
B25_0253:		dey				; 88 
	bne -

B25_0256:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


displaySoundModeSongText:
B25_0259:		lda wSoundModeSongSelected.w		; ad 80 07
B25_025c:		asl a			; 0a
B25_025d:		tay				; a8 
B25_025e:		lda soundModeTextAddresses.w, y	; b9 db a2
B25_0261:		sta wSoundModeTextAddr			; 85 08
B25_0263:		lda soundModeTextAddresses.w+1, y	; b9 dc a2
B25_0266:		sta wSoundModeTextAddr+1			; 85 09

B25_0268:		lda #<$232b		; a9 2b
B25_026a:		sta wVramQueueDest			; 85 61
B25_026c:		lda #>$232b		; a9 23
B25_026e:		sta wVramQueueDest+1			; 85 62
B25_0270:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8
B25_0273:		ldy #$00		; a0 00
B25_0275:		lda (wSoundModeTextAddr), y	; b1 08
B25_0277:		cmp #$ff		; c9 ff
B25_0279:		bne B25_027e ; d0 03

B25_027b:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8

B25_027e:		sta wVramQueue.w, x	; 9d 00 03
B25_0281:		inx				; e8 
B25_0282:		iny				; c8 
B25_0283:		bne B25_0275 ; d0 f0


staticLayout_soundModeBox:
	.dw $22cb ; sound mode
	.db $22 $1e $24 $1d $13 $00 $1c $1e $13 $14 $fe
	.dw $22ea
	.db $2e $2e $2e $2e $2e $2e $2e $2e $2e $2e $2e $2e $fe
	.dw $2309
	.db $2d $fe
	.dw $2315
	.db $2d $fe
	.dw $2329
	.db $2d $fe
	.dw $2335
	.db $2d $fe
	.dw $2349
	.db $2d $2e $2e $2e $2e $2e $2e $2e $2e $2e $2e $2e $2f
	.db $ff


soundModeSongIdxes:
	.db MUS_BEGINNING
	.db MUS_CLOCKWORK
	.db MUS_MAD_FOREST
	.db MUS_ANXIETY
	.db MUS_RISING
	.db MUS_STREAM
	.db MUS_DEAD_BEAT
	.db MUS_NIGHTMARE
	.db MUS_AQUARIUS
	.db MUS_DEMON_SEED
	.db MUS_DEJAVU
	.db MUS_RIDDLE
	.db MUS_PRESSURE
	.db MUS_OVERTURE
	.db MUS_BOSS_FIGHT
	.db MUS_BLK_CLEAR
	.db MUS_BIG_BATTLE
	.db MUS_ALL_CLEAR
	.db MUS_DESTINY
	.db MUS_ENCOUNTER
	.db MUS_PRELUDE
	.db MUS_PRAYER
	.db MUS_EPITAPH
	.db MUS_EVERGREEN
	.db MUS_FLASH_BACK
	.db MUS_GAME_OVER

soundModeTextAddresses:
	.dw $a30f
	.dw $a319
	.dw $a323
	.dw $a32e
	.dw $a336
	.dw $a33d
	.dw $a344
	.dw $a34e
	.dw $a358
	.dw $a361
	.dw $a36c
	.dw $a373
	.dw $a37a
	.dw $a383
	.dw $a38c
	.dw $a397
	.dw $a3a1
	.dw $a3ac
	.dw $a3b6
	.dw $a3be
	.dw $a3c8
	.dw $a3d0
	.dw $a3d7
	.dw $a3df
	.dw $a3e9
	.dw $a3f4


B25_030f:		ora ($14), y	; 11 14
B25_0311:		asl $18, x		; 16 18
B25_0313:		ora $181d, x	; 1d 1d 18
B25_0316:		ora $ff16, x	; 1d 16 ff
B25_0319:	.db $12
B25_031a:	.db $1b
B25_031b:		asl $1a12, x	; 1e 12 1a
B25_031e:		rol $1e			; 26 1e
B25_0320:		and ($1a, x)	; 21 1a
B25_0322:	.db $ff
B25_0323:	.db $1c
B25_0324:		bpl B25_0339 ; 10 13

B25_0326:		.db $00				; 00
B25_0327:		ora $1e, x		; 15 1e
B25_0329:		and ($14, x)	; 21 14
B25_032b:	.db $22
B25_032c:	.db $23
B25_032d:	.db $ff
B25_032e:		bpl B25_034d ; 10 1d

B25_0330:	.db $27
B25_0331:		clc				; 18 
B25_0332:	.db $14
B25_0333:	.db $23
B25_0334:		plp				; 28 
B25_0335:	.db $ff
B25_0336:		and ($18, x)	; 21 18
B25_0338:	.db $22
B25_0339:		clc				; 18 
B25_033a:		ora $ff16, x	; 1d 16 ff
B25_033d:	.db $22
B25_033e:	.db $23
B25_033f:		and ($14, x)	; 21 14
B25_0341:		;removed
	.db $10 $1c

B25_0343:	.db $ff
B25_0344:	.db $13
B25_0345:	.db $14
B25_0346:		;removed
	.db $10 $13

B25_0348:		.db $00				; 00
B25_0349:		ora ($14), y	; 11 14
B25_034b:		;removed
	.db $10 $23

B25_034d:	.db $ff
B25_034e:		ora $1618, x	; 1d 18 16
B25_0351:	.db $17
B25_0352:	.db $23
B25_0353:	.db $1c
B25_0354:		bpl B25_0377 ; 10 21

B25_0356:	.db $14
B25_0357:	.db $ff
B25_0358:		bpl B25_037a ; 10 20

B25_035a:		bit $10			; 24 10
B25_035c:		and ($18, x)	; 21 18
B25_035e:		bit $22			; 24 22
B25_0360:	.db $ff
B25_0361:	.db $13
B25_0362:	.db $14
B25_0363:	.db $1c
B25_0364:	.db $1e $1d $00
B25_0367:	.db $22
B25_0368:	.db $14
B25_0369:	.db $14
B25_036a:	.db $13
B25_036b:	.db $ff
B25_036c:	.db $13
B25_036d:	.db $14
B25_036e:		ora $2510, y	; 19 10 25
B25_0371:		bit $ff			; 24 ff
B25_0373:		and ($18, x)	; 21 18
B25_0375:	.db $13
B25_0376:	.db $13
B25_0377:	.db $1b
B25_0378:	.db $14
B25_0379:	.db $ff
B25_037a:	.db $1f
B25_037b:		and ($14, x)	; 21 14
B25_037d:	.db $22
B25_037e:	.db $22
B25_037f:		bit $21			; 24 21
B25_0381:	.db $14
B25_0382:	.db $ff
B25_0383:		asl $1425, x	; 1e 25 14
B25_0386:		and ($23, x)	; 21 23
B25_0388:		bit $21			; 24 21
B25_038a:	.db $14
B25_038b:	.db $ff
B25_038c:		ora ($1e), y	; 11 1e
B25_038e:	.db $22
B25_038f:	.db $22
B25_0390:		.db $00				; 00
B25_0391:		ora $18, x		; 15 18
B25_0393:		asl $17, x		; 16 17
B25_0395:	.db $23
B25_0396:	.db $ff
B25_0397:		ora ($1b), y	; 11 1b
B25_0399:	.db $1a
B25_039a:		.db $00				; 00
B25_039b:	.db $12
B25_039c:	.db $1b
B25_039d:	.db $14
B25_039e:		;removed
	.db $10 $21

B25_03a0:	.db $ff
B25_03a1:		ora ($18), y	; 11 18
B25_03a3:		asl $00, x		; 16 00
B25_03a5:		ora ($10), y	; 11 10
B25_03a7:	.db $23
B25_03a8:	.db $23
B25_03a9:	.db $1b
B25_03aa:	.db $14
B25_03ab:	.db $ff
B25_03ac:		bpl B25_03c9 ; 10 1b

B25_03ae:	.db $1b
B25_03af:		.db $00				; 00
B25_03b0:	.db $12
B25_03b1:	.db $1b
B25_03b2:	.db $14
B25_03b3:		;removed
	.db $10 $21

B25_03b5:	.db $ff
B25_03b6:	.db $13
B25_03b7:	.db $14
B25_03b8:	.db $22
B25_03b9:	.db $23
B25_03ba:		clc				; 18 
B25_03bb:		ora $ff28, x	; 1d 28 ff
B25_03be:	.db $14
B25_03bf:		ora $1e12, x	; 1d 12 1e
B25_03c2:		bit $1d			; 24 1d
B25_03c4:	.db $23
B25_03c5:	.db $14
B25_03c6:		and ($ff, x)	; 21 ff
B25_03c8:	.db $1f
B25_03c9:		and ($14, x)	; 21 14
B25_03cb:	.db $1b
B25_03cc:		bit $13			; 24 13
B25_03ce:	.db $14
B25_03cf:	.db $ff
B25_03d0:	.db $1f
B25_03d1:		and ($10, x)	; 21 10
B25_03d3:		plp				; 28 
B25_03d4:	.db $14
B25_03d5:		and ($ff, x)	; 21 ff
B25_03d7:	.db $14
B25_03d8:	.db $1f
B25_03d9:		clc				; 18 
B25_03da:	.db $23
B25_03db:		bpl B25_03fc ; 10 1f

B25_03dd:	.db $17
B25_03de:	.db $ff
B25_03df:	.db $14
B25_03e0:		and $14			; 25 14
B25_03e2:		and ($16, x)	; 21 16
B25_03e4:		and ($14, x)	; 21 14
B25_03e6:	.db $14
B25_03e7:		ora $15ff, x	; 1d ff 15
B25_03ea:	.db $1b
B25_03eb:		;removed
	.db $10 $22

B25_03ed:	.db $17
B25_03ee:		.db $00				; 00
B25_03ef:		ora ($10), y	; 11 10
B25_03f1:	.db $12
B25_03f2:	.db $1a
B25_03f3:	.db $ff
B25_03f4:		asl $10, x		; 16 10
B25_03f6:	.db $1c
B25_03f7:	.db $14
B25_03f8:		.db $00				; 00
B25_03f9:		asl $1425, x	; 1e 25 14
B25_03fc:		and ($ff, x)	; 21 ff
