
gameState9_introCutscene_body:
	lda wGameSubstate
	cmp #$02
	bcc +

; from substate 2 onwards, allow skipping intro
	lda wJoy1NewButtonsPressed
	and #PADF_START
	beq +

	jmp setToPreInGameState

+	lda wGameSubstate
	jsr jumpTablePreserveY

	.dw cutsceneSubstate0
	.dw cutsceneSubstate1
	.dw cutsceneSubstate2
	.dw cutsceneSubstate3
	.dw cutsceneSubstate4
	.dw cutsceneSubstate5
	; updates animation, and sets timer
	.dw cutsceneSubstate6
	; go to pre-in-game on timer 0
	.dw cutsceneSubstate7


cutsceneSubstate0:
B3_0630:		lda #$02		; a9 02
B3_0632:		sta $1c			; 85 1c
B3_0634:		lda #$67		; a9 67
B3_0636:		jsr playSound		; 20 5f e2
B3_0639:		lda #$00		; a9 00
B3_063b:		sta wChrBankSpr_0000			; 85 46
B3_063d:		lda #$01		; a9 01
B3_063f:		sta wChrBankSpr_0400			; 85 47
B3_0641:		lda #$16		; a9 16
B3_0643:		sta wChrBankSpr_0800			; 85 48
B3_0645:		lda #$7b		; a9 7b
B3_0647:		sta wChrBankSpr_0c00			; 85 49
B3_0649:		lda #$44		; a9 44
B3_064b:		sta wChrBankBG_0000			; 85 4a
B3_064d:		lda #$45		; a9 45
B3_064f:		sta wChrBankBG_0400			; 85 4b
B3_0651:		lda #$47		; a9 47
B3_0653:		sta wChrBankBG_0800			; 85 4c
B3_0655:		lda #$43		; a9 43
B3_0657:		sta wChrBankBG_0c00			; 85 4d
B3_0659:		jsr func_1f_0666		; 20 66 e6
B3_065c:		jsr func_1f_07f7		; 20 f7 e7
B3_065f:		inc wGameSubstate			; e6 19

func_03_0661:
B3_0661:		lda #$1f		; a9 1f
B3_0663:		jsr displayStaticLayoutA		; 20 e9 ec
B3_0666:		lda #$04		; a9 04
B3_0668:		jmp displayStaticLayoutA		; 4c e9 ec


cutsceneSubstate1:
B3_066b:		ldx #$16		; a2 16
B3_066d:		lda #$88		; a9 88
B3_066f:		jsr func_1f_0bd5		; 20 d5 eb
B3_0672:		ldy #$00		; a0 00
B3_0674:		jsr func_03_076d		; 20 6d a7
B3_0677:		lda #$01		; a9 01
B3_0679:		sta wEntityFacingLeft.w		; 8d a8 04
B3_067c:		lda #$80		; a9 80
B3_067e:		sta wEntityBaseX.w		; 8d 38 04
B3_0681:		lda #$b0		; a9 b0
B3_0683:		sta wEntityBaseY.w		; 8d 1c 04
B3_0686:		inc wGameSubstate			; e6 19
B3_0688:		lda #$08		; a9 08
B3_068a:		sta $05c2		; 8d c2 05
B3_068d:		ldy #$01		; a0 01
B3_068f:		lda #$00		; a9 00
B3_0691:		jmp setGenericTimerToYA		; 4c 8e e5


cutsceneSubstate2:
B3_0694:		jsr decGenericTimer		; 20 79 e5
B3_0697:		bne B3_06b2 ; d0 19

B3_0699:		lda #$1d		; a9 1d
B3_069b:		jsr displayStaticLayoutA		; 20 e9 ec
B3_069e:		lda #$04		; a9 04
B3_06a0:		jsr displayStaticLayoutA		; 20 e9 ec
B3_06a3:		inc wGameSubstate			; e6 19
B3_06a5:		lda $05c2		; ad c2 05
B3_06a8:		jsr func_03_072f		; 20 2f a7
B3_06ab:		ldy #$00		; a0 00
B3_06ad:		lda #$02		; a9 02
B3_06af:		jmp setGenericTimerToYA		; 4c 8e e5


cutsceneRts:
B3_06b2:		rts				; 60 


cutsceneSubstate3:
B3_06b3:		jsr decGenericTimer		; 20 79 e5
B3_06b6:		bne cutsceneRts

B3_06b8:		lda #$00		; a9 00
B3_06ba:		sta $0401		; 8d 01 04
B3_06bd:		sta $048d		; 8d 8d 04
B3_06c0:		jsr func_03_0661		; 20 61 a6
B3_06c3:		dec $05c2		; ce c2 05
B3_06c6:		beq B3_06d5 ; f0 0d

B3_06c8:		dec wGameSubstate			; c6 19
B3_06ca:		ldy $05c2		; ac c2 05
B3_06cd:		lda data_03_06de.w, y	; b9 de a6
B3_06d0:		ldy #$00		; a0 00
B3_06d2:		jmp setGenericTimerToYA		; 4c 8e e5

B3_06d5:		inc wGameSubstate			; e6 19
B3_06d7:		ldy #$00		; a0 00
B3_06d9:		lda #$40		; a9 40
B3_06db:		jmp setGenericTimerToYA		; 4c 8e e5

data_03_06de:
	.db $03 $03 $06 $06
	.db $0c $10 $10 $18


cutsceneSubstate4:
B3_06e6:		jsr decGenericTimer		; 20 79 e5
B3_06e9:		bne cutsceneRts

B3_06eb:		ldy #$01		; a0 01
B3_06ed:		jsr func_03_076d		; 20 6d a7
B3_06f0:		inc wGameSubstate			; e6 19
B3_06f2:		ldy #>$0040		; a0 00
B3_06f4:		lda #<$0040		; a9 40
B3_06f6:		jmp setGenericTimerToYA		; 4c 8e e5


cutsceneSubstate5:
B3_06f9:		jsr decGenericTimer		; 20 79 e5
B3_06fc:		bne cutsceneRts

B3_06fe:		ldy #$39		; a0 39
B3_0700:		lda #$0c		; a9 0c
B3_0702:		ldx #$00		; a2 00
B3_0704:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B3_0707:		ldy #>$0020		; a0 00
B3_0709:		lda #<$0020		; a9 20
B3_070b:		jsr setGenericTimerToYA		; 20 8e e5

cutsceneIncSubstate:
	inc wGameSubstate
-	rts


cutsceneSubstate6:
	ldx #$00
	jsr updateEntityXanimationFrame
	jsr decGenericTimer
	bne -

	ldy #>$002c
	lda #<$002c
	jsr setGenericTimerToYA
	jmp cutsceneIncSubstate


cutsceneSubstate7:
	jsr decGenericTimer
	bne -

setToPreInGameState:
	lda #GS_PRE_IN_GAME
	sta wGameState
	rts


func_03_072f:
B3_072f:		tay				; a8 
B3_0730:		lda $a764, y	; b9 64 a7
B3_0733:		sta $04a9		; 8d a9 04
B3_0736:		lda #$da		; a9 da
B3_0738:		sta $0401		; 8d 01 04
B3_073b:		lda #$0c		; a9 0c
B3_073d:		sta $048d		; 8d 8d 04
B3_0740:		lda $a752, y	; b9 52 a7
B3_0743:		sta $0439		; 8d 39 04
B3_0746:		lda $a75b, y	; b9 5b a7
B3_0749:		sta $041d		; 8d 1d 04
B3_074c:		lda #$3e		; a9 3e
B3_074e:		jsr playSound		; 20 5f e2
B3_0751:		rts				; 60 


B3_0752:		.db $00				; 00
B3_0753:		plp				; 28 
B3_0754:		clc				; 18 
B3_0755:		cpy #$30		; c0 30
B3_0757:		;removed
	.db $d0 $d0

B3_0759:	.db $20 $e0 $00
B3_075c:		rti				; 40 


B3_075d:		rti				; 40 


B3_075e:		rti				; 40 


B3_075f:		rti				; 40 


B3_0760:		rti				; 40 


B3_0761:		rti				; 40 


B3_0762:		rti				; 40 


B3_0763:		rti				; 40 


B3_0764:		.db $00				; 00
B3_0765:		.db $00				; 00
B3_0766:		.db $00				; 00
B3_0767:		ora ($00, x)	; 01 00
B3_0769:		ora ($01, x)	; 01 01
B3_076b:		.db $00				; 00
B3_076c:		.db $01


func_03_076d:
	lda $a77e, y		; b9 7e a7
B3_0770:	sta wOamSpecIdxDoubled.w	; 8d 00 04
B3_0773:		lda #$0c		; a9 0c
B3_0775:		sta wEntityOamSpecGroupDoubled.w		; 8d 8c 04
B3_0778:		lda #$00		; a9 00
B3_077a:		sta wEntityPaletteOverride.w		; 8d 54 04
B3_077d:		rts				; 60 

B3_077e:	.db $dc $de
