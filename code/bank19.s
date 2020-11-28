
func_19_03fe:
B25_03fe:		lda #$00		; a9 00
B25_0400:		sta $00			; 85 00
B25_0402:		sta $01			; 85 01
B25_0404:		tay				; a8 
B25_0405:		lda $00			; a5 00
B25_0407:		clc				; 18 
B25_0408:		adc #$04		; 69 04
B25_040a:		sta $00			; 85 00
B25_040c:		lda $01			; a5 01
B25_040e:		adc #$00		; 69 00
B25_0410:		sta $01			; 85 01
B25_0412:		lda $0782, y	; b9 82 07
B25_0415:		clc				; 18 
B25_0416:		adc $00			; 65 00
B25_0418:		sta $0782, y	; 99 82 07
B25_041b:		lda $0783, y	; b9 83 07
B25_041e:		adc $01			; 65 01
B25_0420:		sta $0783, y	; 99 83 07
B25_0423:		tya				; 98 
B25_0424:		clc				; 18 
B25_0425:		adc #$12		; 69 12
B25_0427:		and #$3f		; 29 3f
B25_0429:		beq B25_042e ; f0 03

B25_042b:		tay				; a8 
B25_042c:		bne B25_0405 ; d0 d7

B25_042e:		rts				; 60 


B25_042f:		sty $00			; 84 00
B25_0431:		asl a			; 0a
B25_0432:		tay				; a8 
B25_0433:		lda $a452, y	; b9 52 a4
B25_0436:		sta $16			; 85 16
B25_0438:		lda $a453, y	; b9 53 a4
B25_043b:		sta $17			; 85 17
B25_043d:		ldy $00			; a4 00
B25_043f:		rts				; 60 


B25_0440:		pha				; 48 
B25_0441:		txa				; 8a 
B25_0442:		jsr $a42f		; 20 2f a4
B25_0445:		ldx $6c			; a6 6c
B25_0447:		pla				; 68 
B25_0448:		tay				; a8 
B25_0449:		jmp $fbcf		; 4c cf fb


B25_044c:		jsr $a42f		; 20 2f a4
B25_044f:		jmp $fbd3		; 4c d3 fb


B25_0452:		plp				; 28 
B25_0453:		stx $c8, y		; 96 c8
B25_0455:		tya				; 98 
B25_0456:	.db $4f
B25_0457:	.db $97
B25_0458:		ora $ba, x		; 15 ba
B25_045a:	.db $3f
B25_045b:		ldx $baf4		; ae f4 ba
B25_045e:	.db $6b
B25_045f:		tsx				; ba 
B25_0460:		sta ($bc, x)	; 81 bc
B25_0462:	.db $df
B25_0463:		dey				; 88 
B25_0464:		lda $0645, x	; bd 45 06
B25_0467:		beq B25_0499 ; f0 30

B25_0469:		cmp #$01		; c9 01
B25_046b:		beq B25_0499 ; f0 2c

B25_046d:		lda #$00		; a9 00
B25_046f:		sta $0669, x	; 9d 69 06
B25_0472:		lda $0633, x	; bd 33 06
B25_0475:		sta $054e, x	; 9d 4e 05
B25_0478:		lda #$04		; a9 04
B25_047a:		jsr $a44c		; 20 4c a4
B25_047d:		lda $054e, x	; bd 4e 05
B25_0480:		beq B25_0499 ; f0 17

B25_0482:		cmp #$08		; c9 08
B25_0484:		beq B25_048a ; f0 04

B25_0486:		cmp #$09		; c9 09
B25_0488:		bne B25_048e ; d0 04

B25_048a:		lda #$16		; a9 16
B25_048c:		bne B25_0491 ; d0 03

B25_048e:		lda $048d		; ad 8d 04
B25_0491:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B25_0494:		lda #$0f		; a9 0f
B25_0496:		sta $054e, x	; 9d 4e 05
B25_0499:		rts				; 60 


B25_049a:		rts				; 60 


B25_049b:		lda wEntityBaseX.w		; ad 38 04
B25_049e:		sec				; 38 
B25_049f:		sbc wEntityBaseX.w, x	; fd 38 04
B25_04a2:		bcs B25_04a6 ; b0 02

B25_04a4:		eor #$ff		; 49 ff
B25_04a6:		cmp #$08		; c9 08
B25_04a8:		bcs B25_04ae ; b0 04

B25_04aa:		lda #$04		; a9 04
B25_04ac:		bne B25_04b9 ; d0 0b

B25_04ae:		lda #$02		; a9 02
B25_04b0:		bne B25_04b9 ; d0 07

B25_04b2:		lda $0633, x	; bd 33 06
B25_04b5:		cmp #$02		; c9 02
B25_04b7:		beq B25_049b ; f0 e2

B25_04b9:		sta $00			; 85 00
B25_04bb:		asl a			; 0a
B25_04bc:		clc				; 18 
B25_04bd:		adc $00			; 65 00
B25_04bf:		tay				; a8 
B25_04c0:		lda $a565, y	; b9 65 a5
B25_04c3:		cmp #$0a		; c9 0a
B25_04c5:		beq B25_0523 ; f0 5c

B25_04c7:		sta $08			; 85 08
B25_04c9:		lda $a566, y	; b9 66 a5
B25_04cc:		pha				; 48 
B25_04cd:		lda $a567, y	; b9 67 a5
B25_04d0:		pha				; 48 
B25_04d1:		ldy $3b			; a4 3b
B25_04d3:		ldx #$02		; a2 02
B25_04d5:		lda #$03		; a9 03
B25_04d7:		jsr $a44c		; 20 4c a4
B25_04da:		pla				; 68 
B25_04db:		tay				; a8 
B25_04dc:		pla				; 68 
B25_04dd:		bcs B25_04e2 ; b0 03

B25_04df:		ldx $6c			; a6 6c
B25_04e1:		rts				; 60 


B25_04e2:		sta $0645, x	; 9d 45 06
B25_04e5:		tya				; 98 
B25_04e6:		sta $0657, x	; 9d 57 06
B25_04e9:		lda $054e, x	; bd 4e 05
B25_04ec:		sta $0633, x	; 9d 33 06
B25_04ef:		cmp #$05		; c9 05
B25_04f1:		beq B25_04fb ; f0 08

B25_04f3:		cmp #$0a		; c9 0a
B25_04f5:		beq B25_04fb ; f0 04

B25_04f7:		lda #$03		; a9 03
B25_04f9:		bne B25_04fd ; d0 02

B25_04fb:		lda #$00		; a9 00
B25_04fd:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B25_0500:		lda #$0f		; a9 0f
B25_0502:		sta $054e, x	; 9d 4e 05
B25_0505:		jsr $a8c0		; 20 c0 a8
B25_0508:		lda $0645, x	; bd 45 06
B25_050b:		sta $bc			; 85 bc
B25_050d:		lda #$20		; a9 20
B25_050f:		sta $ba			; 85 ba
B25_0511:		lda #$00		; a9 00
B25_0513:		sta $bb			; 85 bb
B25_0515:		ldx $6c			; a6 6c
B25_0517:		lda #$00		; a9 00
B25_0519:		sta wEntityAnimationIdxes.w, x	; 9d 93 05
B25_051c:		lda #$01		; a9 01
B25_051e:		sta wEntityTimeUntilNextAnimation.w, x	; 9d 7c 05
B25_0521:		sec				; 38 
B25_0522:		rts				; 60 


B25_0523:		lda $a566, y	; b9 66 a5
B25_0526:		pha				; 48 
B25_0527:		ldx #$02		; a2 02
B25_0529:		lda #$06		; a9 06
B25_052b:		jsr $a44c		; 20 4c a4
B25_052e:		pla				; 68 
B25_052f:		bcc B25_0562 ; 90 31

B25_0531:		sta $01			; 85 01
B25_0533:		ldx #$02		; a2 02
B25_0535:		lda $054e, x	; bd 4e 05
B25_0538:		cmp #$0a		; c9 0a
B25_053a:		beq B25_0543 ; f0 07

B25_053c:		inx				; e8 
B25_053d:		cpx #$05		; e0 05
B25_053f:		bcc B25_0535 ; 90 f4

B25_0541:		bcs B25_0515 ; b0 d2

B25_0543:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_0546:		bne B25_053c ; d0 f4

B25_0548:		lda $01			; a5 01
B25_054a:		sta $0645, x	; 9d 45 06
B25_054d:		lda $054e, x	; bd 4e 05
B25_0550:		sta $0633, x	; 9d 33 06
B25_0553:		lda #$0f		; a9 0f
B25_0555:		sta $054e, x	; 9d 4e 05
B25_0558:		jsr $a8c0		; 20 c0 a8
B25_055b:		lda #$30		; a9 30
B25_055d:		sta $0657, x	; 9d 57 06
B25_0560:		bne B25_053c ; d0 da

B25_0562:		ldx $6c			; a6 6c
B25_0564:		rts				; 60 


B25_0565:	.db $02
B25_0566:	.db $03
B25_0567:		;removed
	.db $30 $05

B25_0569:	.db $02
B25_056a:		;removed
	.db $30 $09

B25_056c:	.db $04
B25_056d:		bmi B25_0579 ; 30 0a

B25_056f:		asl $30			; 06 30
B25_0571:		php				; 08 
B25_0572:		ora $30			; 05 30
B25_0574:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_0577:		pha				; 48 
B25_0578:		sec				; 38 
B25_0579:		sbc #$10		; e9 10
B25_057b:		tay				; a8 
B25_057c:		lda $a599, y	; b9 99 a5
B25_057f:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0582:		lda $0633, x	; bd 33 06
B25_0585:		sta $054e, x	; 9d 4e 05
B25_0588:		lda #$05		; a9 05
B25_058a:		jsr $a44c		; 20 4c a4
B25_058d:		ldx $6c			; a6 6c
B25_058f:		pla				; 68 
B25_0590:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0593:		lda #$0b		; a9 0b
B25_0595:		sta $054e, x	; 9d 4e 05
B25_0598:		rts				; 60 


B25_0599:		jsr $a922		; 20 22 a9
B25_059c:		.db $00				; 00
B25_059d:		sta $0657, x	; 9d 57 06
B25_05a0:		sta wEntityAI_idx.w, x	; 9d ef 05
B25_05a3:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_05a6:		jsr $a8b8		; 20 b8 a8
B25_05a9:		lda #$01		; a9 01
B25_05ab:		sta wEntityXFlipped.w, x	; 9d a8 04
B25_05ae:		lda #$00		; a9 00
B25_05b0:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_05b3:		lda #$01		; a9 01
B25_05b5:		sta $b0			; 85 b0
B25_05b7:		lda $78			; a5 78
B25_05b9:		beq B25_05c0 ; f0 05

B25_05bb:		ldy #$00		; a0 00
B25_05bd:		sty $07f3		; 8c f3 07
B25_05c0:		rts				; 60 


B25_05c1:		ldx $6c			; a6 6c
B25_05c3:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_05c6:		cmp #$19		; c9 19
B25_05c8:		bcc B25_05cd ; 90 03

B25_05ca:		jmp $a62a		; 4c 2a a6


B25_05cd:		jsr $a8b4		; 20 b4 a8
B25_05d0:		lda #$19		; a9 19
B25_05d2:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_05d5:		jmp $a62a		; 4c 2a a6


B25_05d8:		dec $0606, x	; de 06 06
B25_05db:		beq B25_05de ; f0 01

B25_05dd:		rts				; 60 


B25_05de:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_05e1:		and #$7f		; 29 7f
B25_05e3:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_05e6:		lda $07ee		; ad ee 07
B25_05e9:		sta $0470, x	; 9d 70 04
B25_05ec:		lda #$01		; a9 01
B25_05ee:		sta $07ef		; 8d ef 07
B25_05f1:		rts				; 60 


B25_05f2:		lda #$00		; a9 00
B25_05f4:		sta $0669, x	; 9d 69 06
B25_05f7:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_05fa:		ora #$80		; 09 80
B25_05fc:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_05ff:		lda #$0c		; a9 0c
B25_0601:		sta $0606, x	; 9d 06 06
B25_0604:		lda $0470, x	; bd 70 04
B25_0607:		sta $07ee		; 8d ee 07
B25_060a:		jsr $a8ac		; 20 ac a8
B25_060d:		jmp $a620		; 4c 20 a6


B25_0610:		lda #$03		; a9 03
B25_0612:		ldx #$08		; a2 08
B25_0614:		jsr $a440		; 20 40 a4
B25_0617:		lda $3d			; a5 3d
B25_0619:		beq B25_05c1 ; f0 a6

B25_061b:		lda $0669, x	; bd 69 06
B25_061e:		bne B25_05f2 ; d0 d2

B25_0620:		jsr $a66e		; 20 6e a6
B25_0623:		bcc B25_062a ; 90 05

B25_0625:		lda #$05		; a9 05
B25_0627:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_062a:		ldx $6c			; a6 6c
B25_062c:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_062f:		bmi B25_05d8 ; 30 a7

B25_0631:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $a78b
	.dw $a79d
	.dw $a7aa
	.dw $a79d
	.dw $a7c0
	.dw $a76c
	.dw $a77d
	.dw $a79d
	.dw $a7aa
	.dw $a79d
	.dw $a7c0
	.dw $a9e2
	.dw $a9f1
	.dw $aa78
	.dw $ab04
	.dw $ab22
	.dw $ab7f
	.dw $ab22
	.dw $ab93
	.dw $ab94
	.dw $aba8
	.dw $aba8
	.dw $a9e2
	.dw $a9e2
	.dw $a9e2
	.dw $a6e7
	.dw $a719
	.dw $a739
	.dw $a76b
B25_066e:		ldx $6c			; a6 6c
B25_0670:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_0673:		cmp #$0b		; c9 0b
B25_0675:		bcc B25_0685 ; 90 0e

B25_0677:		cmp #$19		; c9 19
B25_0679:		bcs B25_0685 ; b0 0a

B25_067b:		lda wCurrPlayer.w		; ad 4e 05
B25_067e:		cmp $0633, x	; dd 33 06
B25_0681:		beq B25_0685 ; f0 02

B25_0683:		sec				; 38 
B25_0684:		rts				; 60 


B25_0685:		clc				; 18 
B25_0686:		rts				; 60 


B25_0687:		ldx #$02		; a2 02
B25_0689:		lda #$00		; a9 00
B25_068b:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_068e:		sta $054e, x	; 9d 4e 05
B25_0691:		sta wEntityBaseX.w, x	; 9d 38 04
B25_0694:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_0697:		sta $0470, x	; 9d 70 04
B25_069a:		inx				; e8 
B25_069b:		cpx #$06		; e0 06
B25_069d:		bcc B25_068b ; 90 ec

B25_069f:		ldx $6c			; a6 6c
B25_06a1:		rts				; 60 


B25_06a2:		lda wEntityBaseX.w, x	; bd 38 04
B25_06a5:		sta $00			; 85 00
B25_06a7:		lda wEntityBaseY.w, x	; bd 1c 04
B25_06aa:		sta $01			; 85 01
B25_06ac:		ldx #$03		; a2 03
B25_06ae:		lda #$00		; a9 00
B25_06b0:		sta $02			; 85 02
B25_06b2:		ldy $02			; a4 02
B25_06b4:		clc				; 18 
B25_06b5:		lda $00			; a5 00
B25_06b7:		adc $a6df, y	; 79 df a6
B25_06ba:		sta wEntityBaseX.w, x	; 9d 38 04
B25_06bd:		clc				; 18 
B25_06be:		lda $01			; a5 01
B25_06c0:		adc $a6e0, y	; 79 e0 a6
B25_06c3:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_06c6:		jsr $a8b4		; 20 b4 a8
B25_06c9:		lda #$0e		; a9 0e
B25_06cb:		ldy #$08		; a0 08
B25_06cd:		jsr func_1f_0f5c		; 20 5c ef
B25_06d0:		lda #$00		; a9 00
B25_06d2:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B25_06d5:		inc $02			; e6 02
B25_06d7:		inc $02			; e6 02
B25_06d9:		inx				; e8 
B25_06da:		cpx #$07		; e0 07
B25_06dc:		bcc B25_06b2 ; 90 d4

B25_06de:		rts				; 60 


B25_06df:		.db $00				; 00
B25_06e0:		.db $00				; 00
B25_06e1:		.db $00				; 00
B25_06e2:		inx				; e8 
B25_06e3:		sed				; f8 
B25_06e4:	.db $f4
B25_06e5:		php				; 08 
B25_06e6:	.db $f4
B25_06e7:		lda #$7b		; a9 7b
B25_06e9:		jsr playSound		; 20 5f e2
B25_06ec:		jsr set_2c_to_01h		; 20 ce e5
B25_06ef:		lda #$00		; a9 00
B25_06f1:		sta $03			; 85 03
B25_06f3:		sta $01			; 85 01
B25_06f5:		lda #$50		; a9 50
B25_06f7:		sta $02			; 85 02
B25_06f9:		jsr $e777		; 20 77 e7
B25_06fc:		jsr $a687		; 20 87 a6
B25_06ff:		jsr $a6a2		; 20 a2 a6
B25_0702:		ldx $6c			; a6 6c
B25_0704:		jsr $a8ac		; 20 ac a8
B25_0707:		lda #$00		; a9 00
B25_0709:		tay				; a8 
B25_070a:		jsr $a89c		; 20 9c a8
B25_070d:		jsr $a8a4		; 20 a4 a8
B25_0710:		lda #$b4		; a9 b4
B25_0712:		sta $0606, x	; 9d 06 06
B25_0715:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_0718:		rts				; 60 


B25_0719:		dec $0606, x	; de 06 06
B25_071c:		bne B25_0721 ; d0 03

B25_071e:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_0721:		ldx #$03		; a2 03
B25_0723:		jsr updateEntityXanimationFrame		; 20 75 ef
B25_0726:		inx				; e8 
B25_0727:		cpx #$07		; e0 07
B25_0729:		bcc B25_0723 ; 90 f8

B25_072b:		ldx $6c			; a6 6c
B25_072d:		lda $1a			; a5 1a
B25_072f:		lsr a			; 4a
B25_0730:		lsr a			; 4a
B25_0731:		and #$03		; 29 03
B25_0733:		sta $0633, x	; 9d 33 06
B25_0736:		jmp $a7fc		; 4c fc a7


B25_0739:		lda #$00		; a9 00
B25_073b:		sta $0401		; 8d 01 04
B25_073e:		sta $0403		; 8d 03 04
B25_0741:		sta $0404		; 8d 04 04
B25_0744:		sta $0405		; 8d 05 04
B25_0747:		sta $0406		; 8d 06 04
B25_074a:		lda #$02		; a9 02
B25_074c:		sta $07f3		; 8d f3 07
B25_074f:		lda $a769		; ad 69 a7
B25_0752:		sta $00			; 85 00
B25_0754:		lda $a76a		; ad 6a a7
B25_0757:		sta $01			; 85 01
B25_0759:		lda #$92		; a9 92
B25_075b:		jsr $e62f		; 20 2f e6
B25_075e:		ldx $6c			; a6 6c
B25_0760:		lda #$00		; a9 00
B25_0762:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_0765:		sta $054e, x	; 9d 4e 05
B25_0768:		rts				; 60 


B25_0769:	.db $f4
B25_076a:	.db $87
B25_076b:		rts				; 60 


B25_076c:		jsr $a687		; 20 87 a6
B25_076f:		ldx $6c			; a6 6c
B25_0771:		lda #$18		; a9 18
B25_0773:		sta $0606, x	; 9d 06 06
B25_0776:		jsr $a8ac		; 20 ac a8
B25_0779:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_077c:		rts				; 60 


B25_077d:		dec $0606, x	; de 06 06
B25_0780:		bne B25_077c ; d0 fa

B25_0782:		lda #$2f		; a9 2f
B25_0784:		sta wChrBankSpr_0c00			; 85 49
B25_0786:		lda #$45		; a9 45
B25_0788:		jsr playSound		; 20 5f e2
B25_078b:		jsr $a8b4		; 20 b4 a8
B25_078e:		lda #$20		; a9 20
B25_0790:		sta $0606, x	; 9d 06 06
B25_0793:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_0796:		lda #$00		; a9 00
B25_0798:		ldy #$0e		; a0 0e
B25_079a:		jmp func_1f_0f5c		; 4c 5c ef


B25_079d:		dec $0606, x	; de 06 06
B25_07a0:		beq B25_07a3 ; f0 01

B25_07a2:		rts				; 60 


B25_07a3:		jsr $a8b0		; 20 b0 a8
B25_07a6:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_07a9:		rts				; 60 


B25_07aa:		lda #$2f		; a9 2f
B25_07ac:		sta wChrBankSpr_0c00			; 85 49
B25_07ae:		jsr $a8b4		; 20 b4 a8
B25_07b1:		lda #$10		; a9 10
B25_07b3:		sta $0606, x	; 9d 06 06
B25_07b6:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_07b9:		lda #$00		; a9 00
B25_07bb:		ldy #$0f		; a0 0f
B25_07bd:		jmp func_1f_0f5c		; 4c 5c ef


B25_07c0:		lda wCurrPlayer.w		; ad 4e 05
B25_07c3:		jsr $a7da		; 20 da a7
B25_07c6:		lda $00			; a5 00
B25_07c8:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_07cb:		lda #$04		; a9 04
B25_07cd:		sta $0606, x	; 9d 06 06
B25_07d0:		ldy $0633, x	; bc 33 06
B25_07d3:		lda $a830, y	; b9 30 a8
B25_07d6:		sta $0657, x	; 9d 57 06
B25_07d9:		rts				; 60 


B25_07da:		pha				; 48 
B25_07db:		lda $0633, x	; bd 33 06
B25_07de:		cmp #$02		; c9 02
B25_07e0:		bne B25_07eb ; d0 09

B25_07e2:		lda wEntityBaseY.w, x	; bd 1c 04
B25_07e5:		sec				; 38 
B25_07e6:		sbc #$04		; e9 04
B25_07e8:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_07eb:		pla				; 68 
B25_07ec:		sta $0633, x	; 9d 33 06
B25_07ef:		cmp #$02		; c9 02
B25_07f1:		bne B25_07fc ; d0 09

B25_07f3:		lda wEntityBaseY.w, x	; bd 1c 04
B25_07f6:		clc				; 18 
B25_07f7:		adc #$04		; 69 04
B25_07f9:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_07fc:		lda $0633, x	; bd 33 06
B25_07ff:		asl a			; 0a
B25_0800:		clc				; 18 
B25_0801:		adc $0633, x	; 7d 33 06
B25_0804:		tay				; a8 
B25_0805:		lda $a824, y	; b9 24 a8
B25_0808:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B25_080b:		lda $a825, y	; b9 25 a8
B25_080e:		sta $00			; 85 00
B25_0810:		lda $a826, y	; b9 26 a8
B25_0813:		sta wChrBankSpr_0800			; 85 48
B25_0815:		tay				; a8 
B25_0816:		iny				; c8 
B25_0817:		sty $49			; 84 49
B25_0819:		lda #$02		; a9 02
B25_081b:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_081e:		lda #$02		; a9 02
B25_0820:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B25_0823:		rts				; 60 


B25_0824:		asl $0c, x		; 16 0c
B25_0826:		.db $00				; 00
B25_0827:		clc				; 18 
B25_0828:	.db $0c
B25_0829:	.db $04
B25_082a:	.db $1a
B25_082b:	.db $0c
B25_082c:	.db $02
B25_082d:	.db $1c
B25_082e:	.db $0c
B25_082f:		asl $30			; 06 30
B25_0831:		;removed
	.db $30 $30

B25_0833:		;removed
	.db $30 $bd

B25_0835:		sec				; 38 
B25_0836:	.db $04
B25_0837:		cmp #$e8		; c9 e8
B25_0839:		bcs B25_0845 ; b0 0a

B25_083b:		cmp #$18		; c9 18
B25_083d:		bcc B25_0841 ; 90 02

B25_083f:		clc				; 18 
B25_0840:		rts				; 60 


B25_0841:		ldy #$00		; a0 00
B25_0843:		sec				; 38 
B25_0844:		rts				; 60 


B25_0845:		ldy #$01		; a0 01
B25_0847:		sec				; 38 
B25_0848:		rts				; 60 


B25_0849:		lda wEntityBaseX.w		; ad 38 04
B25_084c:		sec				; 38 
B25_084d:		sbc wEntityBaseX.w, x	; fd 38 04
B25_0850:		bcs B25_0855 ; b0 03

B25_0852:		eor #$ff		; 49 ff
B25_0854:		clc				; 18 
B25_0855:		rts				; 60 


B25_0856:		jsr $a849		; 20 49 a8
B25_0859:		pha				; 48 
B25_085a:		bcs B25_0860 ; b0 04

B25_085c:		lda #$01		; a9 01
B25_085e:		bne B25_0862 ; d0 02

B25_0860:		lda #$00		; a9 00
B25_0862:		sta wEntityXFlipped.w, x	; 9d a8 04
B25_0865:		pla				; 68 
B25_0866:		rts				; 60 


B25_0867:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_086a:		bpl B25_0870 ; 10 04

B25_086c:		lda #$f8		; a9 f8
B25_086e:		bne B25_0872 ; d0 02

B25_0870:		lda #$08		; a9 08
B25_0872:		sta $07			; 85 07
B25_0874:		ldy #$f8		; a0 f8
B25_0876:		jsr func_1f_1c1e		; 20 1e fc
B25_0879:		bne B25_089a ; d0 1f

B25_087b:		lda $07			; a5 07
B25_087d:		ldy #$00		; a0 00
B25_087f:		jsr func_1f_1c1e		; 20 1e fc
B25_0882:		bne B25_089a ; d0 16

B25_0884:		clc				; 18 
B25_0885:		rts				; 60 


B25_0886:		lda #$05		; a9 05
B25_0888:		ldy #$10		; a0 10
B25_088a:		jsr func_1f_1c1e		; 20 1e fc
B25_088d:		bne B25_089a ; d0 0b

B25_088f:		lda #$fb		; a9 fb
B25_0891:		ldy #$10		; a0 10
B25_0893:		jsr func_1f_1c1e		; 20 1e fc
B25_0896:		bne B25_089a ; d0 02

B25_0898:		clc				; 18 
B25_0899:		rts				; 60 


B25_089a:		sec				; 38 
B25_089b:		rts				; 60 


B25_089c:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_089f:		tya				; 98 
B25_08a0:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_08a3:		rts				; 60 


B25_08a4:		sta $0520, x	; 9d 20 05
B25_08a7:		tya				; 98 
B25_08a8:		sta $0537, x	; 9d 37 05
B25_08ab:		rts				; 60 


B25_08ac:		lda #$30		; a9 30
B25_08ae:		bne B25_08c2 ; d0 12

B25_08b0:		lda #$50		; a9 50
B25_08b2:		bne B25_08c2 ; d0 0e

B25_08b4:		lda #$10		; a9 10
B25_08b6:		bne B25_08c2 ; d0 0a

B25_08b8:		lda #$60		; a9 60
B25_08ba:		bne B25_08c2 ; d0 06

B25_08bc:		lda #$40		; a9 40
B25_08be:		bne B25_08c2 ; d0 02

B25_08c0:		lda #$20		; a9 20
B25_08c2:		sta $0470, x	; 9d 70 04
B25_08c5:		rts				; 60 


B25_08c6:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_08c9:		cmp #$11		; c9 11
B25_08cb:		beq B25_08d1 ; f0 04

B25_08cd:		cmp #$12		; c9 12
B25_08cf:		bne B25_08d9 ; d0 08

B25_08d1:		lda $0633, x	; bd 33 06
B25_08d4:		clc				; 18 
B25_08d5:		adc #$04		; 69 04
B25_08d7:		bne B25_08dc ; d0 03

B25_08d9:		lda wCurrPlayer.w		; ad 4e 05
B25_08dc:		sta $07ec		; 8d ec 07
B25_08df:		rts				; 60 


B25_08e0:		lda $0633, x	; bd 33 06
B25_08e3:		asl a			; 0a
B25_08e4:		asl a			; 0a
B25_08e5:		asl a			; 0a
B25_08e6:		sta $00			; 85 00
B25_08e8:		lda $1a			; a5 1a
B25_08ea:		and #$07		; 29 07
B25_08ec:		clc				; 18 
B25_08ed:		adc $00			; 65 00
B25_08ef:		tay				; a8 
B25_08f0:		lda $a8f7, y	; b9 f7 a8
B25_08f3:		sta $0606, x	; 9d 06 06
B25_08f6:		rts				; 60 


B25_08f7:		ora #$13		; 09 13
B25_08f9:	.db $03
B25_08fa:	.db $14
B25_08fb:	.db $0c
B25_08fc:	.db $1f
B25_08fd:		ora ($0f), y	; 11 0f
B25_08ff:		ora #$13		; 09 13
B25_0901:	.db $03
B25_0902:	.db $14
B25_0903:	.db $0c
B25_0904:	.db $1f
B25_0905:		ora ($0f), y	; 11 0f
B25_0907:		ora #$13		; 09 13
B25_0909:	.db $03
B25_090a:	.db $14
B25_090b:	.db $0c
B25_090c:	.db $1f
B25_090d:		ora ($0f), y	; 11 0f
B25_090f:		ora #$13		; 09 13
B25_0911:	.db $03
B25_0912:	.db $14
B25_0913:	.db $0c
B25_0914:	.db $1f
B25_0915:		ora ($0f), y	; 11 0f
B25_0917:		lda #$13		; a9 13
B25_0919:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_091c:		lda $0633, x	; bd 33 06
B25_091f:		tay				; a8 
B25_0920:		ldx #$05		; a2 05
B25_0922:		lda $a93b, y	; b9 3b a9
B25_0925:		sta $0645, x	; 9d 45 06
B25_0928:		lda #$0f		; a9 0f
B25_092a:		sta $054e, x	; 9d 4e 05
B25_092d:		lda #$00		; a9 00
B25_092f:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0932:		sta $0657, x	; 9d 57 06
B25_0935:		jsr $a8c0		; 20 c0 a8
B25_0938:		ldx $6c			; a6 6c
B25_093a:		rts				; 60 


B25_093b:		.db $00				; 00
B25_093c:		ora ($a2, x)	; 01 a2
B25_093e:	.db $02
B25_093f:		lda $054e, x	; bd 4e 05
B25_0942:		bne B25_094d ; d0 09

B25_0944:		inx				; e8 
B25_0945:		cpx #$05		; e0 05
B25_0947:		bcc B25_093f ; 90 f6

B25_0949:		ldx $6c			; a6 6c
B25_094b:		clc				; 18 
B25_094c:		rts				; 60 


B25_094d:		ldx $6c			; a6 6c
B25_094f:		sec				; 38 
B25_0950:		rts				; 60 


B25_0951:		jsr $a849		; 20 49 a8
B25_0954:		cmp #$30		; c9 30
B25_0956:		bcs B25_096d ; b0 15

B25_0958:		lda $0633, x	; bd 33 06
B25_095b:		cmp #$02		; c9 02
B25_095d:		bcs B25_096d ; b0 0e

B25_095f:		jsr $a93d		; 20 3d a9
B25_0962:		bcs B25_096b ; b0 07

B25_0964:		jsr $a917		; 20 17 a9
B25_0967:		ldy #$00		; a0 00
B25_0969:		sec				; 38 
B25_096a:		rts				; 60 


B25_096b:		clc				; 18 
B25_096c:		rts				; 60 


B25_096d:		jsr $a4b2		; 20 b2 a4
B25_0970:		bcc B25_096b ; 90 f9

B25_0972:		ldy #$01		; a0 01
B25_0974:		sec				; 38 
B25_0975:		rts				; 60 


B25_0976:		lda $0633, x	; bd 33 06
B25_0979:		sta $054e, x	; 9d 4e 05
B25_097c:		lda wPlayerStateDoubled.w, x	; bd 65 05
B25_097f:		pha				; 48 
B25_0980:		lda #$18		; a9 18
B25_0982:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0985:		ldx #$05		; a2 05
B25_0987:		lda $0633, x	; bd 33 06
B25_098a:		sta $054e, x	; 9d 4e 05
B25_098d:		lda #$07		; a9 07
B25_098f:		jsr $a44c		; 20 4c a4
B25_0992:		bcs B25_0998 ; b0 04

B25_0994:		lda #$00		; a9 00
B25_0996:		beq B25_099a ; f0 02

B25_0998:		lda #$01		; a9 01
B25_099a:		sta $01			; 85 01
B25_099c:		lda $054e, x	; bd 4e 05
B25_099f:		sta $0633, x	; 9d 33 06
B25_09a2:		lda #$0f		; a9 0f
B25_09a4:		sta $054e, x	; 9d 4e 05
B25_09a7:		lda $061d, x	; bd 1d 06
B25_09aa:		beq B25_09c6 ; f0 1a

B25_09ac:		ldy $0633, x	; bc 33 06
B25_09af:		lda $a9d4, y	; b9 d4 a9
B25_09b2:		sta $0657, x	; 9d 57 06
B25_09b5:		lda #$40		; a9 40
B25_09b7:		sta $ba			; 85 ba
B25_09b9:		ldy $0633, x	; bc 33 06
B25_09bc:		lda $a9d8, y	; b9 d8 a9
B25_09bf:		sta $bc			; 85 bc
B25_09c1:		lda $a9dc, y	; b9 dc a9
B25_09c4:		sta $bb			; 85 bb
B25_09c6:		ldx $6c			; a6 6c
B25_09c8:		pla				; 68 
B25_09c9:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_09cc:		lda #$0b		; a9 0b
B25_09ce:		sta $054e, x	; 9d 4e 05
B25_09d1:		lsr $01			; 46 01
B25_09d3:		rts				; 60 


B25_09d4:		jsr $3030		; 20 30 30
B25_09d7:		jsr $0100		; 20 00 01
B25_09da:	.db $02
B25_09db:		.db $00				; 00
B25_09dc:		ora ($02, x)	; 01 02
B25_09de:	.db $03
B25_09df:	.db $04
B25_09e0:		clc				; 18 
B25_09e1:		rts				; 60 


B25_09e2:		jsr $a8c6		; 20 c6 a8
B25_09e5:		jsr $a856		; 20 56 a8
B25_09e8:		jsr $a8e0		; 20 e0 a8
B25_09eb:		lda #$0c		; a9 0c
B25_09ed:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_09f0:		rts				; 60 


B25_09f1:		jsr $a8c6		; 20 c6 a8
B25_09f4:		jsr $a856		; 20 56 a8
B25_09f7:		jsr $a8c0		; 20 c0 a8
B25_09fa:		jsr $a886		; 20 86 a8
B25_09fd:		bcs B25_0a0d ; b0 0e

B25_09ff:		jsr $a8b8		; 20 b8 a8
B25_0a02:		lda #$02		; a9 02
B25_0a04:		jsr $a44c		; 20 4c a4
B25_0a07:		lda #$0f		; a9 0f
B25_0a09:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0a0c:		rts				; 60 


B25_0a0d:		lda #$02		; a9 02
B25_0a0f:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_0a12:		lda $0606, x	; bd 06 06
B25_0a15:		beq B25_0a1c ; f0 05

B25_0a17:		dec $0606, x	; de 06 06
B25_0a1a:		bne B25_0a60 ; d0 44

B25_0a1c:		jsr $a8e0		; 20 e0 a8
B25_0a1f:		jsr $a9e0		; 20 e0 a9
B25_0a22:		bcs B25_0a2f ; b0 0b

B25_0a24:		lda $07ef		; ad ef 07
B25_0a27:		bne B25_0a61 ; d0 38

B25_0a29:		lda $1a			; a5 1a
B25_0a2b:		and #$01		; 29 01
B25_0a2d:		bne B25_0a61 ; d0 32

B25_0a2f:		ldy $0633, x	; bc 33 06
B25_0a32:		lda #$00		; a9 00
B25_0a34:		jsr $ef60		; 20 60 ef
B25_0a37:		jsr $a8bc		; 20 bc a8
B25_0a3a:		jsr $a834		; 20 34 a8
B25_0a3d:		bcc B25_0a4b ; 90 0c

B25_0a3f:		sty $00			; 84 00
B25_0a41:		eor wEntityXFlipped.w, x	; 5d a8 04
B25_0a44:		beq B25_0a4b ; f0 05

B25_0a46:		lda $00			; a5 00
B25_0a48:		sta wEntityXFlipped.w, x	; 9d a8 04
B25_0a4b:		lda wEntityXFlipped.w, x	; bd a8 04
B25_0a4e:		beq B25_0a54 ; f0 04

B25_0a50:		lda #$ff		; a9 ff
B25_0a52:		bne B25_0a56 ; d0 02

B25_0a54:		lda #$01		; a9 01
B25_0a56:		ldy #$00		; a0 00
B25_0a58:		jsr $a89c		; 20 9c a8
B25_0a5b:		lda #$0d		; a9 0d
B25_0a5d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0a60:		rts				; 60 


B25_0a61:		lda #$00		; a9 00
B25_0a63:		sta $07ef		; 8d ef 07
B25_0a66:		jsr $a951		; 20 51 a9
B25_0a69:		bcc B25_0a2f ; 90 c4

B25_0a6b:		dey				; 88 
B25_0a6c:		beq B25_0a6f ; f0 01

B25_0a6e:		rts				; 60 


B25_0a6f:		lda #$10		; a9 10
B25_0a71:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0a74:		jsr $a8c0		; 20 c0 a8
B25_0a77:		rts				; 60 


B25_0a78:		jsr $a8c6		; 20 c6 a8
B25_0a7b:		jsr $a886		; 20 86 a8
B25_0a7e:		bcs B25_0aad ; b0 2d

B25_0a80:		lda wEntityBaseY.w		; ad 1c 04
B25_0a83:		cmp wEntityBaseY.w, x	; dd 1c 04
B25_0a86:		bcs B25_0a8b ; b0 03

B25_0a88:		jmp $aae7		; 4c e7 aa


B25_0a8b:		lda #$02		; a9 02
B25_0a8d:		jsr $a44c		; 20 4c a4
B25_0a90:		lda #$0f		; a9 0f
B25_0a92:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0a95:		rts				; 60 


B25_0a96:		dey				; 88 
B25_0a97:		beq B25_0a9d ; f0 04

B25_0a99:		lda #$18		; a9 18
B25_0a9b:		bne B25_0a9f ; d0 02

B25_0a9d:		lda #$e8		; a9 e8
B25_0a9f:		sta wEntityBaseX.w, x	; 9d 38 04
B25_0aa2:		lda #$10		; a9 10
B25_0aa4:		sta $0606, x	; 9d 06 06
B25_0aa7:		lda #$0c		; a9 0c
B25_0aa9:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0aac:		rts				; 60 


B25_0aad:		jsr $a834		; 20 34 a8
B25_0ab0:		bcs B25_0a96 ; b0 e4

B25_0ab2:		jsr $a867		; 20 67 a8
B25_0ab5:		bcs B25_0ae7 ; b0 30

B25_0ab7:		dec $0606, x	; de 06 06
B25_0aba:		bne B25_0ae6 ; d0 2a

B25_0abc:		jsr $a9e0		; 20 e0 a9
B25_0abf:		bcs B25_0ae1 ; b0 20

B25_0ac1:		lda $1a			; a5 1a
B25_0ac3:		and #$07		; 29 07
B25_0ac5:		tay				; a8 
B25_0ac6:		lda $aafc, y	; b9 fc aa
B25_0ac9:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0acc:		cmp #$10		; c9 10
B25_0ace:		beq B25_0af1 ; f0 21

B25_0ad0:		cmp #$0c		; c9 0c
B25_0ad2:		beq B25_0ae6 ; f0 12

B25_0ad4:		jsr $a856		; 20 56 a8
B25_0ad7:		cmp #$40		; c9 40
B25_0ad9:		bcs B25_0ae7 ; b0 0c

B25_0adb:		lda #$00		; a9 00
B25_0add:		sta $07ed		; 8d ed 07
B25_0ae0:		rts				; 60 


B25_0ae1:		lda #$0e		; a9 0e
B25_0ae3:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0ae6:		rts				; 60 


B25_0ae7:		lda wEntityXFlipped.w, x	; bd a8 04
B25_0aea:		tay				; a8 
B25_0aeb:		iny				; c8 
B25_0aec:		sty $07ed		; 8c ed 07
B25_0aef:		bne B25_0ae1 ; d0 f0

B25_0af1:		jsr $a951		; 20 51 a9
B25_0af4:		bcc B25_0ae7 ; 90 f1

B25_0af6:		dey				; 88 
B25_0af7:		bne B25_0ae6 ; d0 ed

B25_0af9:		jmp $a8c0		; 4c c0 a8


B25_0afc:	.db $0c
B25_0afd:		bpl B25_0b0d ; 10 0e

B25_0aff:		bpl B25_0b0d ; 10 0c

B25_0b01:		;removed
	.db $10 $0e

B25_0b03:	.db $0c
B25_0b04:		jsr $a8c6		; 20 c6 a8
B25_0b07:		jsr $a8b8		; 20 b8 a8
B25_0b0a:		ldy $07ed		; ac ed 07
B25_0b0d:		lda $ab1b, y	; b9 1b ab
B25_0b10:		sta $10			; 85 10
B25_0b12:		lda #$00		; a9 00
B25_0b14:		jsr $a44c		; 20 4c a4
B25_0b17:		inc wPlayerStateDoubled.w, x	; fe 65 05
B25_0b1a:		rts				; 60 


B25_0b1b:		.db $00				; 00
B25_0b1c:		ora ($02, x)	; 01 02
B25_0b1e:	.db $04
B25_0b1f:		php				; 08 
B25_0b20:		rti				; 40 


B25_0b21:	.db $80
B25_0b22:		jsr $a8c6		; 20 c6 a8
B25_0b25:		jsr $a834		; 20 34 a8
B25_0b28:		bcc B25_0b36 ; 90 0c

B25_0b2a:		dey				; 88 
B25_0b2b:		beq B25_0b31 ; f0 04

B25_0b2d:		lda #$18		; a9 18
B25_0b2f:		bne B25_0b33 ; d0 02

B25_0b31:		lda #$e8		; a9 e8
B25_0b33:		sta wEntityBaseX.w, x	; 9d 38 04
B25_0b36:		lda #$01		; a9 01
B25_0b38:		jsr $a44c		; 20 4c a4
B25_0b3b:		lda wEntityPhase.w, x	; bd c1 05
B25_0b3e:		beq B25_0b57 ; f0 17

B25_0b40:		lda wEntityBaseY.w, x	; bd 1c 04
B25_0b43:		cmp #$b4		; c9 b4
B25_0b45:		bcc B25_0b4e ; 90 07

B25_0b47:		lda #$b4		; a9 b4
B25_0b49:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_0b4c:		bne B25_0b58 ; d0 0a

B25_0b4e:		lda #$00		; a9 00
B25_0b50:		ldy #$10		; a0 10
B25_0b52:		jsr func_1f_1c1e		; 20 1e fc
B25_0b55:		bne B25_0b58 ; d0 01

B25_0b57:		rts				; 60 


B25_0b58:		lda #$00		; a9 00
B25_0b5a:		tay				; a8 
B25_0b5b:		jsr $a8a4		; 20 a4 a8
B25_0b5e:		jsr $a89c		; 20 9c a8
B25_0b61:		lda wEntityBaseY.w, x	; bd 1c 04
B25_0b64:		and #$f0		; 29 f0
B25_0b66:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_0b69:		lda $0633, x	; bd 33 06
B25_0b6c:		cmp #$02		; c9 02
B25_0b6e:		bne B25_0b79 ; d0 09

B25_0b70:		lda wEntityBaseY.w, x	; bd 1c 04
B25_0b73:		clc				; 18 
B25_0b74:		adc #$04		; 69 04
B25_0b76:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_0b79:		lda #$0b		; a9 0b
B25_0b7b:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0b7e:		rts				; 60 


B25_0b7f:		jsr $a8c6		; 20 c6 a8
B25_0b82:		jsr $a574		; 20 74 a5
B25_0b85:		bcs B25_0b88 ; b0 01

B25_0b87:		rts				; 60 


B25_0b88:		lda #$0c		; a9 0c
B25_0b8a:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0b8d:		lda #$02		; a9 02
B25_0b8f:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_0b92:		rts				; 60 


B25_0b93:		rts				; 60 


B25_0b94:		jsr $a8c0		; 20 c0 a8
B25_0b97:		jsr $a976		; 20 76 a9
B25_0b9a:		bcs B25_0b9d ; b0 01

B25_0b9c:		rts				; 60 


B25_0b9d:		lda #$0b		; a9 0b
B25_0b9f:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B25_0ba2:		lda #$02		; a9 02
B25_0ba4:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_0ba7:		rts				; 60 


B25_0ba8:		.db $00				; 00
B25_0ba9:	.db $20 $7e $00
B25_0bac:		ora $00			; 05 00
B25_0bae:		sta $01f0, y	; 99 f0 01
B25_0bb1:	.db $02
B25_0bb2:	.db $03
B25_0bb3:	.db $04
B25_0bb4:		ora $06			; 05 06
B25_0bb6:	.db $07
B25_0bb7:		php				; 08 
B25_0bb8:		lsr $0a			; 46 0a
B25_0bba:	.db $0b
B25_0bbb:	.db $0c
B25_0bbc:		ora $0f0e		; 0d 0e 0f
B25_0bbf:		ora #$0a		; 09 0a
B25_0bc1:		and #$05		; 29 05
B25_0bc3:		asl $06			; 06 06
B25_0bc5:		ora $1a07, y	; 19 07 1a
B25_0bc8:	.db $07
B25_0bc9:		.db $00				; 00
B25_0bca:		sta $1110, y	; 99 10 11
B25_0bcd:	.db $12
B25_0bce:	.db $13
B25_0bcf:	.db $14
B25_0bd0:		ora $16, x		; 15 16
B25_0bd2:	.db $17
B25_0bd3:		clc				; 18 
B25_0bd4:		ldy $1bcb		; ac cb 1b
B25_0bd7:	.db $1c
B25_0bd8:		ora $1f1e, x	; 1d 1e 1f
B25_0bdb:	.db $9b
B25_0bdc:		cpy $9bcc		; cc cc 9b
B25_0bdf:	.db $9b
B25_0be0:	.db $cb
B25_0be1:	.db $cb
B25_0be2:	.db $8b
B25_0be3:		rol a			; 2a
B25_0be4:	.db $07
B25_0be5:		.db $00				; 00
B25_0be6:	.db $93
B25_0be7:		jsr $2221		; 20 21 22
B25_0bea:	.db $23
B25_0beb:		bit $25			; 24 25
B25_0bed:		rol $27			; 26 27
B25_0bef:		plp				; 28 
B25_0bf0:	.db $9b
B25_0bf1:	.db $9b
B25_0bf2:	.db $2b
B25_0bf3:		bit $2e2d		; 2c 2d 2e
B25_0bf6:	.db $2f
B25_0bf7:	.db $9b
B25_0bf8:	.db $9b
B25_0bf9:		ldy $cb04		; ac 04 cb
B25_0bfc:	.db $82
B25_0bfd:	.db $7b
B25_0bfe:	.db $cf
B25_0bff:	.db $07
B25_0c00:		.db $00				; 00
B25_0c01:	.db $92
B25_0c02:		bmi B25_0c35 ; 30 31

B25_0c04:	.db $32
B25_0c05:	.db $33
B25_0c06:	.db $34
B25_0c07:		and $36, x		; 35 36
B25_0c09:	.db $37
B25_0c0a:		ldy $9b9b		; ac 9b 9b
B25_0c0d:	.db $3b
B25_0c0e:	.db $3c
B25_0c0f:		and $3f3e, x	; 3d 3e 3f
B25_0c12:	.db $9b
B25_0c13:		cpy $9b03		; cc 03 9b
B25_0c16:		sty $cc			; 84 cc
B25_0c18:	.db $9b
B25_0c19:	.db $8b
B25_0c1a:	.db $8c $07 $00
B25_0c1d:		sta ($40), y	; 91 40
B25_0c1f:		eor ($42, x)	; 41 42
B25_0c21:	.db $43
B25_0c22:	.db $44
B25_0c23:		eor $46			; 45 46
B25_0c25:	.db $47
B25_0c26:		pha				; 48 
B25_0c27:		eor #$4a		; 49 4a
B25_0c29:	.db $4b
B25_0c2a:		jmp $4e4d		; 4c 4d 4e


B25_0c2d:	.db $4f
B25_0c2e:		ldy $cb03		; ac 03 cb
B25_0c31:		sta $ac			; 85 ac
B25_0c33:	.db $cb
B25_0c34:	.db $9b
B25_0c35:	.db $8b
B25_0c36:	.db $9c
B25_0c37:	.db $07
B25_0c38:		.db $00				; 00
B25_0c39:		sta $5150, y	; 99 50 51
B25_0c3c:	.db $52
B25_0c3d:	.db $53
B25_0c3e:	.db $54
B25_0c3f:		plp				; 28 
B25_0c40:		cmp ($57), y	; d1 57
B25_0c42:		cli				; 58 
B25_0c43:		eor $5b5a, y	; 59 5a 5b
B25_0c46:	.db $5c
B25_0c47:		eor $5f5e, x	; 5d 5e 5f
B25_0c4a:		sta $86			; 85 86
B25_0c4c:		cpy $8988		; cc 88 89
B25_0c4f:	.db $9b
B25_0c50:	.db $cb
B25_0c51:		cpy $07df		; cc df 07
B25_0c54:		.db $00				; 00
B25_0c55:		txs				; 9a 
B25_0c56:		rts				; 60 


B25_0c57:		eor ($62), y	; 51 62
B25_0c59:	.db $63
B25_0c5a:	.db $64
B25_0c5b:		adc $66			; 65 66
B25_0c5d:	.db $67
B25_0c5e:		pla				; 68 
B25_0c5f:		adc #$6a		; 69 6a
B25_0c61:	.db $6b
B25_0c62:		jmp ($6e6d)		; 6c 6d 6e


B25_0c65:	.db $6f
B25_0c66:		sta $96, x		; 95 96
B25_0c68:	.db $97
B25_0c69:		tya				; 98 
B25_0c6a:		sta $9bcb, y	; 99 cb 9b
B25_0c6d:	.db $8b
B25_0c6e:		.db $00				; 00
B25_0c6f:	.db $9d $06 $00
B25_0c72:		sta $5170, y	; 99 70 51
B25_0c75:		rts				; 60 


B25_0c76:	.db $73
B25_0c77:	.db $5a
B25_0c78:	.db $74
B25_0c79:	.db $5a
B25_0c7a:	.db $77
B25_0c7b:		sei				; 78 
B25_0c7c:		adc $b17a, y	; 79 7a b1
B25_0c7f:	.db $7c
B25_0c80:		adc $7f7e, x	; 7d 7e 7f
B25_0c83:		lda $a6			; a5 a6
B25_0c85:	.db $a7
B25_0c86:		tay				; a8 
B25_0c87:		lda $9bcb, y	; b9 cb 9b
B25_0c8a:	.db $7b
B25_0c8b:	.db $ad $07 $00
B25_0c8e:		sta $6251, y	; 99 51 62
B25_0c91:	.db $72
B25_0c92:	.db $62
B25_0c93:		eor ($84), y	; 51 84
B25_0c95:		adc #$6a		; 69 6a
B25_0c97:		.db $00				; 00
B25_0c98:		.db $00				; 00
B25_0c99:		txa				; 8a 
B25_0c9a:		ldy $8dcb		; ac cb 8d
B25_0c9d:		stx $b58f		; 8e 8f b5
B25_0ca0:		ldx $b7, y		; b6 b7
B25_0ca2:		clv				; b8 
B25_0ca3:		lda $8b9b, y	; b9 9b 8b
B25_0ca6:	.db $ef
B25_0ca7:	.db $9c
B25_0ca8:	.db $07
B25_0ca9:		.db $00				; 00
B25_0caa:	.db $8f
B25_0cab:		eor $8281, y	; 59 81 82
B25_0cae:	.db $83
B25_0caf:		adc ($00, x)	; 61 00
B25_0cb1:	.db $80
B25_0cb2:		lda $b1, x		; b5 b1
B25_0cb4:	.db $7c
B25_0cb5:		txs				; 9a 
B25_0cb6:		cpy $ac9b		; cc 9b ac
B25_0cb9:	.db $9b
B25_0cba:	.db $03
B25_0cbb:		cpy $b188		; cc 88 b1
B25_0cbe:		cmp $7bda, y	; d9 da 7b
B25_0cc1:	.db $df
B25_0cc2:	.db $ab
B25_0cc3:	.db $ef
B25_0cc4:	.db $cf
B25_0cc5:		asl $00			; 06 00
B25_0cc7:		sta $5151, y	; 99 51 51
B25_0cca:		rts				; 60 


B25_0ccb:	.db $5a
B25_0ccc:		sta ($90, x)	; 81 90
B25_0cce:		eor ($94), y	; 51 94
B25_0cd0:	.db $cb
B25_0cd1:	.db $cb
B25_0cd2:		cpy $cb9b		; cc 9b cb
B25_0cd5:	.db $9b
B25_0cd6:	.db $cb
B25_0cd7:	.db $9b
B25_0cd8:	.db $9b
B25_0cd9:	.db $8b
B25_0cda:		lda #$aa		; a9 aa
B25_0cdc:	.db $ab
B25_0cdd:	.db $ab
B25_0cde:	.db $ef
B25_0cdf:	.db $ef
B25_0ce0:	.db $9e
B25_0ce1:	.db $07
B25_0ce2:		.db $00				; 00
B25_0ce3:		sta $9061, y	; 99 61 90
B25_0ce6:		sta ($69, x)	; 81 69
B25_0ce8:		eor ($60), y	; 51 60
B25_0cea:		sta ($60, x)	; 81 60
B25_0cec:		sty $cb, x		; 94 cb
B25_0cee:		cpy $9bcc		; cc cc 9b
B25_0cf1:		cpy $7bcb		; cc cb 7b
B25_0cf4:	.db $df
B25_0cf5:	.db $ef
B25_0cf6:	.db $ab
B25_0cf7:		tsx				; ba 
B25_0cf8:	.db $bb
B25_0cf9:		ldy $efbd, x	; bc bd ef
B25_0cfc:	.db $ae $07 $00
B25_0cff:		txs				; 9a 
B25_0d00:		stx $9291		; 8e 91 92
B25_0d03:	.db $93
B25_0d04:	.db $83
B25_0d05:		sta ($51, x)	; 81 51
B25_0d07:		rts				; 60 


B25_0d08:	.db $3c
B25_0d09:		bne B25_0cd7 ; d0 cc

B25_0d0b:	.db $9b
B25_0d0c:		ldy $9b9b		; ac 9b 9b
B25_0d0f:		dec $c7			; c6 c7
B25_0d11:		iny				; c8 
B25_0d12:		cmp #$ca		; c9 ca
B25_0d14:		cpx $7e			; e4 7e
B25_0d16:		cmp $abce		; cd ce ab
B25_0d19:	.db $cf
B25_0d1a:		asl $00			; 06 00
B25_0d1c:		txs				; 9a 
B25_0d1d:		ldy #$a1		; a0 a1
B25_0d1f:		ldx #$a3		; a2 a3
B25_0d21:		ldy $a6			; a4 a6
B25_0d23:		bcc B25_0d96 ; 90 71

B25_0d25:		adc ($7d), y	; 71 7d
B25_0d27:		cmp ($cc), y	; d1 cc
B25_0d29:	.db $9b
B25_0d2a:		cpy $d67b		; cc 7b d6
B25_0d2d:	.db $d7
B25_0d2e:		cld				; d8 
B25_0d2f:	.db $ef
B25_0d30:	.db $ab
B25_0d31:	.db $db
B25_0d32:	.db $dc
B25_0d33:		cmp $abde, x	; dd de ab
B25_0d36:	.db $9f
B25_0d37:		asl $00			; 06 00
B25_0d39:		txs				; 9a 
B25_0d3a:		bcs B25_0d08 ; b0 cc

B25_0d3c:	.db $cb
B25_0d3d:	.db $9b
B25_0d3e:		ldy $b3, x		; b4 b3
B25_0d40:		clc				; 18 
B25_0d41:		clc				; 18 
B25_0d42:		rol $e0, x		; 36 e0
B25_0d44:		sbc ($e2, x)	; e1 e2
B25_0d46:	.db $e3
B25_0d47:		cpx $e5			; e4 e5
B25_0d49:		inc $e7			; e6 e7
B25_0d4b:		inx				; e8 
B25_0d4c:		sbc #$ea		; e9 ea
B25_0d4e:	.db $eb
B25_0d4f:		cpx $eeed		; ec ed ee
B25_0d52:	.db $df
B25_0d53:	.db $af
B25_0d54:		asl $00			; 06 00
B25_0d56:		txs				; 9a 
B25_0d57:		cpy #$c1		; c0 c1
B25_0d59:	.db $c2
B25_0d5a:	.db $c3
B25_0d5b:	.db $b3
B25_0d5c:		clc				; 18 
B25_0d5d:		lda $e0, x		; b5 e0
B25_0d5f:	.db $7b
B25_0d60:		inc $f1, x		; f6 f1
B25_0d62:		sbc $f3			; e5 f3
B25_0d64:	.db $f4
B25_0d65:		sbc $f6, x		; f5 f6
B25_0d67:	.db $f7
B25_0d68:		sed				; f8 
B25_0d69:		sbc $fbfa, y	; f9 fa fb
B25_0d6c:	.db $fc
B25_0d6d:		sbc $befe, x	; fd fe be
B25_0d70:	.db $bf
B25_0d71:		ror $7e00, x	; 7e 00 7e
B25_0d74:		.db $00				; 00
B25_0d75:	.db $47
B25_0d76:		.db $00				; 00
B25_0d77:		sec				; 38 
B25_0d78:		eor $08, x		; 55 08
B25_0d7a:		ora $ff			; 05 ff
B25_0d7c:		.db $00				; 00
B25_0d7d:	.db $20 $44 $00
B25_0d80:	.db $14
B25_0d81:		rol $6781, x	; 3e 81 67
B25_0d84:	.db $07
B25_0d85:	.db $3d $04 $00
B25_0d88:	.db $13
B25_0d89:		rol $7682, x	; 3e 82 76
B25_0d8c:	.db $77
B25_0d8d:	.db $07
B25_0d8e:	.db $3d $04 $00
B25_0d91:		ora $3e, x		; 15 3e
B25_0d93:	.db $82
B25_0d94:		ror $77, x		; 76 77
B25_0d96:		ora $3d			; 05 3d
B25_0d98:	.db $04
B25_0d99:		.db $00				; 00
B25_0d9a:		asl $3e, x		; 16 3e
B25_0d9c:		sta ($67, x)	; 81 67
B25_0d9e:		ora $3d			; 05 3d
B25_0da0:	.db $04
B25_0da1:		.db $00				; 00
B25_0da2:	.db $83
B25_0da3:		rol $453e, x	; 3e 3e 45
B25_0da6:	.db $12
B25_0da7:		rol $7682, x	; 3e 82 76
B25_0daa:	.db $77
B25_0dab:		ora $3d			; 05 3d
B25_0dad:	.db $04
B25_0dae:		.db $00				; 00
B25_0daf:		txa				; 8a 
B25_0db0:		rol $3e45, x	; 3e 45 3e
B25_0db3:		eor $45			; 45 45
B25_0db5:		rol $453e, x	; 3e 3e 45
B25_0db8:		eor $3e			; 45 3e
B25_0dba:	.db $03
B25_0dbb:		eor $8b			; 45 8b
B25_0dbd:		rol $453e, x	; 3e 3e 45
B25_0dc0:		rol $3e45, x	; 3e 45 3e
B25_0dc3:		rol $3e45, x	; 3e 45 3e
B25_0dc6:		rol $0467, x	; 3e 67 04
B25_0dc9:	.db $3d $04 $00
B25_0dcc:		txa				; 8a 
B25_0dcd:		eor $55			; 45 55
B25_0dcf:		eor $55			; 45 55
B25_0dd1:		eor $55			; 45 55
B25_0dd3:		eor $55			; 45 55
B25_0dd5:		eor $45			; 45 45
B25_0dd7:	.db $04
B25_0dd8:		eor $04, x		; 55 04
B25_0dda:		eor $86			; 45 86
B25_0ddc:		eor $55, x		; 55 55
B25_0dde:		eor $45			; 45 45
B25_0de0:		ror $77, x		; 76 77
B25_0de2:	.db $04
B25_0de3:	.db $3d $04 $00
B25_0de6:		sty $55			; 84 55
B25_0de8:		eor $00, x		; 55 00
B25_0dea:		.db $00				; 00
B25_0deb:		ora $55			; 05 55
B25_0ded:		asl $00			; 06 00
B25_0def:	.db $82
B25_0df0:		eor $55, x		; 55 55
B25_0df2:	.db $03
B25_0df3:		.db $00				; 00
B25_0df4:		sty $55			; 84 55
B25_0df6:		eor $45			; 45 45
B25_0df8:		eor $04, x		; 55 04
B25_0dfa:	.db $3d $03 $00
B25_0dfd:		sta ($6d, x)	; 81 6d
B25_0dff:	.db $04
B25_0e00:		.db $00				; 00
B25_0e01:	.db $82
B25_0e02:	.db $5a
B25_0e03:		lsr a			; 4a
B25_0e04:		ora $00			; 05 00
B25_0e06:		sta ($40, x)	; 81 40
B25_0e08:		asl $00			; 06 00
B25_0e0a:	.db $82
B25_0e0b:	.db $5a
B25_0e0c:		lsr a			; 4a
B25_0e0d:	.db $03
B25_0e0e:		.db $00				; 00
B25_0e0f:		sta ($6d, x)	; 81 6d
B25_0e11:	.db $07
B25_0e12:		.db $00				; 00
B25_0e13:	.db $89
B25_0e14:		adc $4900		; 6d 00 49
B25_0e17:		lsr a			; 4a
B25_0e18:		adc #$6a		; 69 6a
B25_0e1a:	.db $7a
B25_0e1b:		eor #$4a		; 49 4a
B25_0e1d:	.db $03
B25_0e1e:		.db $00				; 00
B25_0e1f:		sta ($50, x)	; 81 50
B25_0e21:	.db $03
B25_0e22:		.db $00				; 00
B25_0e23:	.db $89
B25_0e24:		eor #$4a		; 49 4a
B25_0e26:		adc #$6a		; 69 6a
B25_0e28:	.db $7a
B25_0e29:		lsr a			; 4a
B25_0e2a:		.db $00				; 00
B25_0e2b:		.db $00				; 00
B25_0e2c:	.db $6d $07 $00
B25_0e2f:		sta ($6d, x)	; 81 6d
B25_0e31:	.db $03
B25_0e32:		.db $00				; 00
B25_0e33:		sta $55, x		; 95 55
B25_0e35:	.db $5a
B25_0e36:		lsr a			; 4a
B25_0e37:		.db $00				; 00
B25_0e38:		.db $00				; 00
B25_0e39:		rti				; 40 


B25_0e3a:		.db $00				; 00
B25_0e3b:		.db $00				; 00
B25_0e3c:		rts				; 60 


B25_0e3d:	.db $62
B25_0e3e:		eor ($00, x)	; 41 00
B25_0e40:		.db $00				; 00
B25_0e41:	.db $7b
B25_0e42:		adc $7a55, y	; 79 55 7a
B25_0e45:	.db $5a
B25_0e46:		lsr a			; 4a
B25_0e47:		.db $00				; 00
B25_0e48:	.db $6d $07 $00
B25_0e4b:	.db $99 $6d $00
B25_0e4e:		eor #$4a		; 49 4a
B25_0e50:		adc #$6a		; 69 6a
B25_0e52:	.db $7a
B25_0e53:		lsr a			; 4a
B25_0e54:		.db $00				; 00
B25_0e55:		bvc B25_0e57 ; 50 00

B25_0e57:		.db $00				; 00
B25_0e58:		eor ($62, x)	; 41 62
B25_0e5a:		eor ($40), y	; 51 40
B25_0e5c:		.db $00				; 00
B25_0e5d:		.db $00				; 00
B25_0e5e:	.db $5a
B25_0e5f:		lsr a			; 4a
B25_0e60:		adc #$6a		; 69 6a
B25_0e62:	.db $7a
B25_0e63:		lsr a			; 4a
B25_0e64:	.db $6d $07 $00
B25_0e67:	.db $99 $6d $00
B25_0e6a:		lsr $49			; 46 49
B25_0e6c:		lsr $45			; 46 45
B25_0e6e:		lsr $56, x		; 56 56
B25_0e70:		.db $00				; 00
B25_0e71:		rts				; 60 


B25_0e72:	.db $62
B25_0e73:		eor ($51, x)	; 41 51
B25_0e75:	.db $74
B25_0e76:	.db $62
B25_0e77:		bvc B25_0e79 ; 50 00

B25_0e79:		adc #$7a		; 69 7a
B25_0e7b:		sei				; 78 
B25_0e7c:	.db $7b
B25_0e7d:		lsr $7b			; 46 7b
B25_0e7f:	.db $7a
B25_0e80:	.db $6d $07 $00
B25_0e83:		sty $6d			; 84 6d
B25_0e85:		.db $00				; 00
B25_0e86:		adc #$7b		; 69 7b
B25_0e88:		ora $00			; 05 00
B25_0e8a:		txa				; 8a 
B25_0e8b:	.db $42
B25_0e8c:		;removed
	.db $70 $63

B25_0e8e:	.db $42
B25_0e8f:		eor ($64), y	; 51 64
B25_0e91:		rts				; 60 


B25_0e92:	.db $64
B25_0e93:		.db $00				; 00
B25_0e94:		ror $03			; 66 03
B25_0e96:		.db $00				; 00
B25_0e97:	.db $83
B25_0e98:		adc $6d00, y	; 79 00 6d
B25_0e9b:	.db $07
B25_0e9c:		.db $00				; 00
B25_0e9d:		sta ($6d, x)	; 81 6d
B25_0e9f:		php				; 08 
B25_0ea0:		.db $00				; 00
B25_0ea1:		sty $7052		; 8c 52 70
B25_0ea4:		adc ($75, x)	; 61 75
B25_0ea6:		adc ($74), y	; 71 74
B25_0ea8:	.db $7b
B25_0ea9:	.db $74
B25_0eaa:		.db $00				; 00
B25_0eab:		.db $00				; 00
B25_0eac:	.db $43
B25_0ead:	.db $44
B25_0eae:	.db $03
B25_0eaf:		.db $00				; 00
B25_0eb0:		sta ($6d, x)	; 81 6d
B25_0eb2:	.db $07
B25_0eb3:		.db $00				; 00
B25_0eb4:		sta ($6d, x)	; 81 6d
B25_0eb6:		ora #$00		; 09 00
B25_0eb8:	.db $8b
B25_0eb9:		eor ($71), y	; 51 71
B25_0ebb:		eor ($00), y	; 51 00
B25_0ebd:		adc $71, x		; 75 71
B25_0ebf:		eor ($00), y	; 51 00
B25_0ec1:		.db $00				; 00
B25_0ec2:	.db $53
B25_0ec3:	.db $54
B25_0ec4:	.db $03
B25_0ec5:		.db $00				; 00
B25_0ec6:		sta ($6d, x)	; 81 6d
B25_0ec8:	.db $07
B25_0ec9:		.db $00				; 00
B25_0eca:		sta ($6d, x)	; 81 6d
B25_0ecc:	.db $04
B25_0ecd:		.db $00				; 00
B25_0ece:		sta ($40, x)	; 81 40
B25_0ed0:	.db $03
B25_0ed1:		.db $00				; 00
B25_0ed2:		sty $5868		; 8c 68 58
B25_0ed5:	.db $4b
B25_0ed6:	.db $73
B25_0ed7:	.db $63
B25_0ed8:		eor ($5b), y	; 51 5b
B25_0eda:		cli				; 58 
B25_0edb:		bvs B25_0f4d ; 70 70

B25_0edd:	.db $42
B25_0ede:	.db $54
B25_0edf:	.db $03
B25_0ee0:		.db $00				; 00
B25_0ee1:		sta ($6d, x)	; 81 6d
B25_0ee3:	.db $07
B25_0ee4:		.db $00				; 00
B25_0ee5:		sta ($6d, x)	; 81 6d
B25_0ee7:	.db $04
B25_0ee8:		.db $00				; 00
B25_0ee9:		sta ($50, x)	; 81 50
B25_0eeb:	.db $03
B25_0eec:		.db $00				; 00
B25_0eed:		sty $5973		; 8c 73 59
B25_0ef0:		ror $73			; 66 73
B25_0ef2:		adc ($00), y	; 71 00
B25_0ef4:	.db $4b
B25_0ef5:	.db $7a
B25_0ef6:		;removed
	.db $70 $70

B25_0ef8:		adc ($62, x)	; 61 62
B25_0efa:	.db $03
B25_0efb:		.db $00				; 00
B25_0efc:		sta ($6d, x)	; 81 6d
B25_0efe:	.db $07
B25_0eff:		.db $00				; 00
B25_0f00:		sta ($6d, x)	; 81 6d
B25_0f02:	.db $04
B25_0f03:		.db $00				; 00
B25_0f04:		;removed
	.db $90 $60

B25_0f06:		.db $00				; 00
B25_0f07:		.db $00				; 00
B25_0f08:	.db $4b
B25_0f09:		cli				; 58 
B25_0f0a:	.db $73
B25_0f0b:		eor $4b65, y	; 59 65 4b
B25_0f0e:	.db $5b
B25_0f0f:		adc $00			; 65 00
B25_0f11:	.db $73
B25_0f12:	.db $5b
B25_0f13:		adc ($62, x)	; 61 62
B25_0f15:	.db $03
B25_0f16:		.db $00				; 00
B25_0f17:		sta ($6d, x)	; 81 6d
B25_0f19:	.db $07
B25_0f1a:		.db $00				; 00
B25_0f1b:		sta ($6d, x)	; 81 6d
B25_0f1d:	.db $04
B25_0f1e:		.db $00				; 00
B25_0f1f:		;removed
	.db $90 $42

B25_0f21:		;removed
	.db $70 $66

B25_0f23:		ror $73			; 66 73
B25_0f25:		ror $59			; 66 59
B25_0f27:		ror $59			; 66 59
B25_0f29:	.db $4b
B25_0f2a:	.db $73
B25_0f2b:	.db $5b
B25_0f2c:		.db $00				; 00
B25_0f2d:	.db $4b
B25_0f2e:	.db $5b
B25_0f2f:	.db $4b
B25_0f30:	.db $03
B25_0f31:		.db $00				; 00
B25_0f32:		sta ($6d, x)	; 81 6d
B25_0f34:	.db $07
B25_0f35:		.db $00				; 00
B25_0f36:	.db $87
B25_0f37:		adc $4600		; 6d 00 46
B25_0f3a:		lsr $47			; 46 47
B25_0f3c:	.db $47
B25_0f3d:		pha				; 48 
B25_0f3e:		ora $00			; 05 00
B25_0f40:	.db $83
B25_0f41:		eor $5b00, y	; 59 00 5b
B25_0f44:		ora $00			; 05 00
B25_0f46:		sta wChrBankSpr_0000			; 85 46
B25_0f48:	.db $57
B25_0f49:	.db $57
B25_0f4a:		lsr $6d, x		; 56 6d
B25_0f4c:	.db $07
B25_0f4d:		.db $00				; 00
B25_0f4e:	.db $83
B25_0f4f:	.db $6d $00 $00
B25_0f52:	.db $03
B25_0f53:		lsr $83			; 46 83
B25_0f55:	.db $47
B25_0f56:	.db $47
B25_0f57:	.db $57
B25_0f58:		php				; 08 
B25_0f59:		.db $00				; 00
B25_0f5a:		dey				; 88 
B25_0f5b:		lsr $47			; 46 47
B25_0f5d:	.db $47
B25_0f5e:		pha				; 48 
B25_0f5f:		lsr $00, x		; 56 00
B25_0f61:		.db $00				; 00
B25_0f62:	.db $6d $07 $00
B25_0f65:		sta ($6d, x)	; 81 6d
B25_0f67:		ora $00			; 05 00
B25_0f69:		sty $46			; 84 46
B25_0f6b:		lsr $47			; 46 47
B25_0f6d:	.db $57
B25_0f6e:		asl $00			; 06 00
B25_0f70:		sta ($46, x)	; 81 46
B25_0f72:	.db $04
B25_0f73:		lsr $03, x		; 56 03
B25_0f75:		.db $00				; 00
B25_0f76:		sta ($6d, x)	; 81 6d
B25_0f78:	.db $07
B25_0f79:		.db $00				; 00
B25_0f7a:		sta $6d			; 85 6d
B25_0f7c:		.db $00				; 00
B25_0f7d:		.db $00				; 00
B25_0f7e:		lsr $56			; 46 56
B25_0f80:	.db $03
B25_0f81:		.db $00				; 00
B25_0f82:	.db $03
B25_0f83:		lsr $85			; 46 85
B25_0f85:		lsr $00, x		; 56 00
B25_0f87:		.db $00				; 00
B25_0f88:		lsr $56			; 46 56
B25_0f8a:		php				; 08 
B25_0f8b:		.db $00				; 00
B25_0f8c:		sta ($6d, x)	; 81 6d
B25_0f8e:	.db $07
B25_0f8f:		.db $00				; 00
B25_0f90:		sta ($6d, x)	; 81 6d
B25_0f92:		asl $00			; 06 00
B25_0f94:	.db $82
B25_0f95:		lsr $56			; 46 56
B25_0f97:		asl a			; 0a
B25_0f98:		.db $00				; 00
B25_0f99:		stx $46			; 86 46
B25_0f9b:		lsr $56, x		; 56 56
B25_0f9d:		.db $00				; 00
B25_0f9e:		.db $00				; 00
B25_0f9f:	.db $6d $07 $00
B25_0fa2:		sta ($6d, x)	; 81 6d
B25_0fa4:	.db $17
B25_0fa5:		ror $6f81		; 6e 81 6f
B25_0fa8:	.db $44
B25_0fa9:		.db $00				; 00
B25_0faa:		;removed
	.db $10 $ff

B25_0fac:		sty $3f			; 84 3f
B25_0fae:	.db $ff
B25_0faf:	.db $ff
B25_0fb0:	.db $bf
B25_0fb1:	.db $04
B25_0fb2:	.db $ff
B25_0fb3:		sta wCurrRoomSection			; 85 33
B25_0fb5:	.db $ff
B25_0fb6:	.db $ff
B25_0fb7:		lsr $9a, x		; 56 9a
B25_0fb9:	.db $03
B25_0fba:	.db $ff
B25_0fbb:	.db $97
B25_0fbc:	.db $33
B25_0fbd:	.db $ff
B25_0fbe:	.db $ef
B25_0fbf:		lda $a9			; a5 a9
B25_0fc1:	.db $22
B25_0fc2:		.db $00				; 00
B25_0fc3:	.db $0f
B25_0fc4:	.db $ff
B25_0fc5:	.db $ff
B25_0fc6:	.db $fa
B25_0fc7:		tsx				; ba 
B25_0fc8:		tax				; aa 
B25_0fc9:	.db $f2
B25_0fca:	.db $ff
B25_0fcb:		.db $00				; 00
B25_0fcc:	.db $03
B25_0fcd:	.db $0f
B25_0fce:	.db $cf
B25_0fcf:	.db $0f
B25_0fd0:	.db $0f
B25_0fd1:	.db $cf
B25_0fd2:	.db $33
B25_0fd3:		asl $00			; 06 00
B25_0fd5:	.db $83
B25_0fd6:	.db $0f
B25_0fd7:	.db $0f
B25_0fd8:		.db $00				; 00
B25_0fd9:	.db $ff
B25_0fda:		lda #$00		; a9 00
B25_0fdc:		sta $0669, x	; 9d 69 06
B25_0fdf:		lda $0606, x	; bd 06 06
B25_0fe2:		tay				; a8 
B25_0fe3:		bne B25_102c ; d0 47

B25_0fe5:		lda #$01		; a9 01
B25_0fe7:		sta $0657, x	; 9d 57 06
B25_0fea:		lda #$00		; a9 00
B25_0fec:		sta $0645, x	; 9d 45 06
B25_0fef:		ldy $0633, x	; bc 33 06
B25_0ff2:		lda $b2c1, y	; b9 c1 b2
B25_0ff5:		sta wEntityBaseX.w, x	; 9d 38 04
B25_0ff8:		bmi B25_0ffd ; 30 03

B25_0ffa:		inc $0645, x	; fe 45 06
B25_0ffd:		ldy #$00		; a0 00
B25_0fff:		jsr $b211		; 20 11 b2
B25_1002:		ldy #$00		; a0 00
B25_1004:		jsr $b263		; 20 63 b2
B25_1007:		lda #$c8		; a9 c8
B25_1009:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_100c:		lda #$20		; a9 20
B25_100e:		sta $0537, x	; 9d 37 05
B25_1011:		lda #$ff		; a9 ff
B25_1013:		sta $0520, x	; 9d 20 05
B25_1016:		lda #$00		; a9 00
B25_1018:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_101b:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_101e:		inc $0606, x	; fe 06 06
B25_1021:		lda #$6e		; a9 6e
B25_1023:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_1026:		lda #$0e		; a9 0e
B25_1028:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B25_102b:		rts				; 60 


B25_102c:		dey				; 88 
B25_102d:		bne B25_1059 ; d0 2a

B25_102f:		lda #$b0		; a9 b0
B25_1031:		cmp wEntityBaseY.w, x	; dd 1c 04
B25_1034:		bcc B25_1058 ; 90 22

B25_1036:		lda #$e0		; a9 e0
B25_1038:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_103b:		lda #$00		; a9 00
B25_103d:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_1040:		lda $0645, x	; bd 45 06
B25_1043:		bne B25_104f ; d0 0a

B25_1045:		lda #$20		; a9 20
B25_1047:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_104a:		lda #$ff		; a9 ff
B25_104c:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_104f:		inc $0606, x	; fe 06 06
B25_1052:		lda $0645, x	; bd 45 06
B25_1055:		sta $061d, x	; 9d 1d 06
B25_1058:		rts				; 60 


B25_1059:		dey				; 88 
B25_105a:		bne B25_1073 ; d0 17

B25_105c:		jsr $b114		; 20 14 b1
B25_105f:		lda $11			; a5 11
B25_1061:		eor #$ff		; 49 ff
B25_1063:		clc				; 18 
B25_1064:		adc #$01		; 69 01
B25_1066:		sta $11			; 85 11
B25_1068:		lda $10			; a5 10
B25_106a:		eor #$ff		; 49 ff
B25_106c:		adc #$00		; 69 00
B25_106e:		sta $10			; 85 10
B25_1070:		jmp $b126		; 4c 26 b1


B25_1073:		dey				; 88 
B25_1074:		bne B25_1081 ; d0 0b

B25_1076:		lda $0645, x	; bd 45 06
B25_1079:		beq B25_107e ; f0 03

B25_107b:		jmp $b17d		; 4c 7d b1


B25_107e:		jmp $b151		; 4c 51 b1


B25_1081:		dey				; 88 
B25_1082:		bne B25_108a ; d0 06

B25_1084:		jsr $b114		; 20 14 b1
B25_1087:		jmp $b126		; 4c 26 b1


B25_108a:		dey				; 88 
B25_108b:		bne B25_1098 ; d0 0b

B25_108d:		lda $0645, x	; bd 45 06
B25_1090:		bne B25_1095 ; d0 03

B25_1092:		jmp $b17d		; 4c 7d b1


B25_1095:		jmp $b151		; 4c 51 b1


B25_1098:		dey				; 88 
B25_1099:		bne B25_10c2 ; d0 27

B25_109b:		lda #$00		; a9 00
B25_109d:		sta $0520, x	; 9d 20 05
B25_10a0:		sta $0537, x	; 9d 37 05
B25_10a3:		ldy $0633, x	; bc 33 06
B25_10a6:		lda $b2c1, y	; b9 c1 b2
B25_10a9:		sec				; 38 
B25_10aa:		sbc wEntityBaseX.w, x	; fd 38 04
B25_10ad:		bcs B25_10b4 ; b0 05

B25_10af:		eor #$ff		; 49 ff
B25_10b1:		clc				; 18 
B25_10b2:		adc #$01		; 69 01
B25_10b4:		cmp #$02		; c9 02
B25_10b6:		bcs B25_10c1 ; b0 09

B25_10b8:		lda $b2c1, y	; b9 c1 b2
B25_10bb:		sta wEntityBaseX.w, x	; 9d 38 04
B25_10be:		inc $0606, x	; fe 06 06
B25_10c1:		rts				; 60 


B25_10c2:		dey				; 88 
B25_10c3:		bne B25_10d9 ; d0 14

B25_10c5:		lda #$e0		; a9 e0
B25_10c7:		sta $0537, x	; 9d 37 05
B25_10ca:		lda #$00		; a9 00
B25_10cc:		sta $0520, x	; 9d 20 05
B25_10cf:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_10d2:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_10d5:		inc $0606, x	; fe 06 06
B25_10d8:		rts				; 60 


B25_10d9:		lda wEntityBaseY.w, x	; bd 1c 04
B25_10dc:		cmp #$c8		; c9 c8
B25_10de:		bcc B25_10f2 ; 90 12

B25_10e0:		lda #$c8		; a9 c8
B25_10e2:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_10e5:		ldy #$02		; a0 02
B25_10e7:		jsr $b211		; 20 11 b2
B25_10ea:		ldy #$02		; a0 02
B25_10ec:		jsr $b263		; 20 63 b2
B25_10ef:		jmp $b0f3		; 4c f3 b0


B25_10f2:		rts				; 60 


B25_10f3:		lda #$00		; a9 00
B25_10f5:		sta $0606, x	; 9d 06 06
B25_10f8:		sta $061d, x	; 9d 1d 06
B25_10fb:		inc $0633, x	; fe 33 06
B25_10fe:		lda $0633, x	; bd 33 06
B25_1101:		and #$07		; 29 07
B25_1103:		sta $0633, x	; 9d 33 06
B25_1106:		lda $07f3		; ad f3 07
B25_1109:		cmp #$01		; c9 01
B25_110b:		beq B25_110e ; f0 01

B25_110d:		rts				; 60 


B25_110e:		inc $07f0		; ee f0 07
B25_1111:		jmp $b2a9		; 4c a9 b2


B25_1114:		lda $0633, x	; bd 33 06
B25_1117:		and #$01		; 29 01
B25_1119:		asl a			; 0a
B25_111a:		tay				; a8 
B25_111b:		lda $b2e1, y	; b9 e1 b2
B25_111e:		sta $11			; 85 11
B25_1120:		lda $b2e2, y	; b9 e2 b2
B25_1123:		sta $10			; 85 10
B25_1125:		rts				; 60 


B25_1126:		lda #$00		; a9 00
B25_1128:		sta $0520, x	; 9d 20 05
B25_112b:		sta $0537, x	; 9d 37 05
B25_112e:		lda $061d, x	; bd 1d 06
B25_1131:		beq B25_1148 ; f0 15

B25_1133:		lda wEntityBaseX.w, x	; bd 38 04
B25_1136:		cmp #$c8		; c9 c8
B25_1138:		bcc B25_1147 ; 90 0d

B25_113a:		inc $0606, x	; fe 06 06
B25_113d:		lda $10			; a5 10
B25_113f:		sta $0520, x	; 9d 20 05
B25_1142:		lda $11			; a5 11
B25_1144:		sta $0537, x	; 9d 37 05
B25_1147:		rts				; 60 


B25_1148:		lda wEntityBaseX.w, x	; bd 38 04
B25_114b:		cmp #$38		; c9 38
B25_114d:		bcs B25_1147 ; b0 f8

B25_114f:		bcc B25_113a ; 90 e9

B25_1151:		lda $061d, x	; bd 1d 06
B25_1154:		beq B25_1164 ; f0 0e

B25_1156:		lda #$04		; a9 04
B25_1158:		jsr $b1a9		; 20 a9 b1
B25_115b:		jsr $b1f5		; 20 f5 b1
B25_115e:		bcc B25_1163 ; 90 03

B25_1160:		inc $0606, x	; fe 06 06
B25_1163:		rts				; 60 


B25_1164:		lda #$04		; a9 04
B25_1166:		jsr $b1a9		; 20 a9 b1
B25_1169:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_116c:		ora wEntityHorizSubSpeed.w, x	; 1d 09 05
B25_116f:		bne B25_1163 ; d0 f2

B25_1171:		inc $061d, x	; fe 1d 06
B25_1174:		lda $061d, x	; bd 1d 06
B25_1177:		and #$01		; 29 01
B25_1179:		sta $061d, x	; 9d 1d 06
B25_117c:		rts				; 60 


B25_117d:		lda $061d, x	; bd 1d 06
B25_1180:		bne B25_1190 ; d0 0e

B25_1182:		lda #$04		; a9 04
B25_1184:		jsr $b1c3		; 20 c3 b1
B25_1187:		jsr $b1d7		; 20 d7 b1
B25_118a:		bcc B25_118f ; 90 03

B25_118c:		inc $0606, x	; fe 06 06
B25_118f:		rts				; 60 


B25_1190:		lda #$04		; a9 04
B25_1192:		jsr $b1c3		; 20 c3 b1
B25_1195:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_1198:		ora wEntityHorizSubSpeed.w, x	; 1d 09 05
B25_119b:		bne B25_1163 ; d0 c6

B25_119d:		inc $061d, x	; fe 1d 06
B25_11a0:		lda $061d, x	; bd 1d 06
B25_11a3:		and #$01		; 29 01
B25_11a5:		sta $061d, x	; 9d 1d 06
B25_11a8:		rts				; 60 


B25_11a9:		clc				; 18 
B25_11aa:		adc wEntityHorizSubSpeed.w, x	; 7d 09 05
B25_11ad:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_11b0:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_11b3:		adc #$00		; 69 00
B25_11b5:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_11b8:		bcc B25_11c2 ; 90 08

B25_11ba:		lda #$00		; a9 00
B25_11bc:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_11bf:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_11c2:		rts				; 60 


B25_11c3:		sta $00			; 85 00
B25_11c5:		lda wEntityHorizSubSpeed.w, x	; bd 09 05
B25_11c8:		sec				; 38 
B25_11c9:		sbc $00			; e5 00
B25_11cb:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_11ce:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_11d1:		sbc #$00		; e9 00
B25_11d3:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_11d6:		rts				; 60 


B25_11d7:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_11da:		bpl B25_11f3 ; 10 17

B25_11dc:		cmp #$ff		; c9 ff
B25_11de:		bne B25_11e7 ; d0 07

B25_11e0:		lda wEntityHorizSubSpeed.w, x	; bd 09 05
B25_11e3:		cmp #$80		; c9 80
B25_11e5:		bcs B25_11f3 ; b0 0c

B25_11e7:		lda #$ff		; a9 ff
B25_11e9:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_11ec:		lda #$80		; a9 80
B25_11ee:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_11f1:		sec				; 38 
B25_11f2:		rts				; 60 


B25_11f3:		clc				; 18 
B25_11f4:		rts				; 60 


B25_11f5:		lda wEntityHorizSpeed.w, x	; bd f2 04
B25_11f8:		bmi B25_120f ; 30 15

B25_11fa:		bne B25_1203 ; d0 07

B25_11fc:		lda wEntityHorizSubSpeed.w, x	; bd 09 05
B25_11ff:		cmp #$80		; c9 80
B25_1201:		bcc B25_120f ; 90 0c

B25_1203:		lda #$00		; a9 00
B25_1205:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B25_1208:		lda #$80		; a9 80
B25_120a:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B25_120d:		sec				; 38 
B25_120e:		rts				; 60 


B25_120f:		clc				; 18 
B25_1210:		rts				; 60 


B25_1211:		lda $0633, x	; bd 33 06
B25_1214:		sta $0f			; 85 0f
B25_1216:		stx $17			; 86 17
B25_1218:		sty $16			; 84 16
B25_121a:		lda #$00		; a9 00
B25_121c:		sta $14			; 85 14
B25_121e:		sta $15			; 85 15
B25_1220:		ldx $1d			; a6 1d
B25_1222:		lda #$01		; a9 01
B25_1224:		jsr $b2bc		; 20 bc b2
B25_1227:		lda $15			; a5 15
B25_1229:		beq B25_122d ; f0 02

B25_122b:		lda #$20		; a9 20
B25_122d:		ldy $0f			; a4 0f
B25_122f:		clc				; 18 
B25_1230:		adc $b2d1, y	; 79 d1 b2
B25_1233:		jsr $b2bc		; 20 bc b2
B25_1236:		lda #$23		; a9 23
B25_1238:		jsr $b2bc		; 20 bc b2
B25_123b:		lda #$04		; a9 04
B25_123d:		sta $12			; 85 12
B25_123f:		lda $16			; a5 16
B25_1241:		beq B25_124a ; f0 07

B25_1243:		ldy $14			; a4 14
B25_1245:		lda $b2d9, y	; b9 d9 b2
B25_1248:		inc $14			; e6 14
B25_124a:		jsr $b2bc		; 20 bc b2
B25_124d:		dec $12			; c6 12
B25_124f:		bne B25_123f ; d0 ee

B25_1251:		lda #$ff		; a9 ff
B25_1253:		jsr $b2bc		; 20 bc b2
B25_1256:		inc $15			; e6 15
B25_1258:		lda $15			; a5 15
B25_125a:		cmp #$02		; c9 02
B25_125c:		bne B25_1222 ; d0 c4

B25_125e:		stx $1d			; 86 1d
B25_1260:		ldx $17			; a6 17
B25_1262:		rts				; 60 


B25_1263:		sty $12			; 84 12
B25_1265:		ldy $0f			; a4 0f
B25_1267:		lda $b2c9, y	; b9 c9 b2
B25_126a:		tay				; a8 
B25_126b:		lda $12			; a5 12
B25_126d:		beq B25_1271 ; f0 02

B25_126f:		lda #$66		; a9 66
B25_1271:		sta $10			; 85 10
B25_1273:		lda wEntityBaseX.w, x	; bd 38 04
B25_1276:		sec				; 38 
B25_1277:		sbc #$10		; e9 10
B25_1279:		and #$10		; 29 10
B25_127b:		bne B25_1283 ; d0 06

B25_127d:		lda $10			; a5 10
B25_127f:		sta $06e0, y	; 99 e0 06
B25_1282:		rts				; 60 


B25_1283:		lda $10			; a5 10
B25_1285:		and #$0f		; 29 0f
B25_1287:		sta $11			; 85 11
B25_1289:		lda $06e0, y	; b9 e0 06
B25_128c:		and #$f0		; 29 f0
B25_128e:		ora $11			; 05 11
B25_1290:		sta $06e0, y	; 99 e0 06
B25_1293:		tya				; 98 
B25_1294:		clc				; 18 
B25_1295:		adc #$0c		; 69 0c
B25_1297:		tay				; a8 
B25_1298:		lda $10			; a5 10
B25_129a:		and #$f0		; 29 f0
B25_129c:		sta $11			; 85 11
B25_129e:		lda $06e0, y	; b9 e0 06
B25_12a1:		and #$0f		; 29 0f
B25_12a3:		ora $11			; 05 11
B25_12a5:		sta $06e0, y	; 99 e0 06
B25_12a8:		rts				; 60 


B25_12a9:		ldy #$00		; a0 00
B25_12ab:		lda $b2ba, y	; b9 ba b2
B25_12ae:		sta $00			; 85 00
B25_12b0:		lda $b2bb, y	; b9 bb b2
B25_12b3:		sta $01			; 85 01
B25_12b5:		lda #$92		; a9 92
B25_12b7:		jmp $e62f		; 4c 2f e6


B25_12ba:	.db $3a
B25_12bb:	.db $87
B25_12bc:		sta wVramQueue.w, x	; 9d 00 03
B25_12bf:		inx				; e8 
B25_12c0:		rts				; 60 


B25_12c1:	.db $80
B25_12c2:		ldy #$40		; a0 40
B25_12c4:		bcc B25_1276 ; 90 b0

B25_12c6:		rts				; 60 


B25_12c7:		;removed
	.db $50 $70

B25_12c9:		rol $163a		; 2e 3a 16
B25_12cc:	.db $3a
B25_12cd:		lsr $22			; 46 22
B25_12cf:	.db $22
B25_12d0:		rol $120e		; 2e 0e 12
B25_12d3:		asl $10			; 06 10
B25_12d5:	.db $14
B25_12d6:		asl a			; 0a
B25_12d7:		php				; 08 
B25_12d8:	.db $0c
B25_12d9:		ldy $bcbe, x	; bc be bc
B25_12dc:		ldx $bfbd, y	; be bd bf
B25_12df:		lda $e0bf, x	; bd bf e0
B25_12e2:		.db $00				; 00
B25_12e3:		rti				; 40 


B25_12e4:		.db $00				; 00
B25_12e5:		ldy #$05		; a0 05
B25_12e7:		jsr $feb9		; 20 b9 fe
B25_12ea:		jsr func_1f_1ed7		; 20 d7 fe
B25_12ed:		lda #$8b		; a9 8b
B25_12ef:		sta $054e, x	; 9d 4e 05
B25_12f2:		lda #$0e		; a9 0e
B25_12f4:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B25_12f7:		lda #$50		; a9 50
B25_12f9:		sta wOamSpecIdx.w, x	; 9d 00 04
B25_12fc:		lda #$70		; a9 70
B25_12fe:		sta $0470, x	; 9d 70 04
B25_1301:		lda #$02		; a9 02
B25_1303:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B25_1306:		lda #$80		; a9 80
B25_1308:		sta wEntityAI_idx.w, x	; 9d ef 05
B25_130b:		lda $b31b, y	; b9 1b b3
B25_130e:		sta wEntityBaseY.w, x	; 9d 1c 04
B25_1311:		lda $b321, y	; b9 21 b3
B25_1314:		sta wEntityBaseX.w, x	; 9d 38 04
B25_1317:		dey				; 88 
B25_1318:		bpl B25_12e7 ; 10 cd

B25_131a:		rts				; 60 


B25_131b:		adc $b5, x		; 75 b5
B25_131d:		sta $85, x		; 95 85
B25_131f:		adc $a5			; 65 a5
B25_1321:		sec				; 38 
B25_1322:		sec				; 38 
B25_1323:		cli				; 58 
B25_1324:		clv				; b8 
B25_1325:		cld				; d8 
B25_1326:		cld				; d8 
B25_1327:		.db $00				; 00
B25_1328:		jsr $cdc6		; 20 c6 cd
B25_132b:		dec $cecd		; ce cd ce
B25_132e:	.db $cb
B25_132f:		cpy $cecd		; cc cd ce
B25_1332:		cmp $cdce		; cd ce cd
B25_1335:		dec $cecd		; ce cd ce
B25_1338:		cmp $cdce		; cd ce cd
B25_133b:		dec $cecd		; ce cd ce
B25_133e:		cmp $cdce		; cd ce cd
B25_1341:		dec $cecd		; ce cd ce
B25_1344:	.db $cb
B25_1345:		cpy $cecd		; cc cd ce
B25_1348:		cmp $ddce		; cd ce dd
B25_134b:		dec $dedd, x	; de dd de
B25_134e:	.db $db
B25_134f:	.db $dc
B25_1350:		cmp $ddde, x	; dd de dd
B25_1353:		dec $dedd, x	; de dd de
B25_1356:		cmp $ddde, x	; dd de dd
B25_1359:		dec $dedd, x	; de dd de
B25_135c:		cmp $ddde, x	; dd de dd
B25_135f:		dec $dedd, x	; de dd de
B25_1362:		cmp $dbde, x	; dd de db
B25_1365:	.db $dc
B25_1366:		cmp $ddde, x	; dd de dd
B25_1369:		dec $c8ca, x	; de ca c8
B25_136c:		cmp #$fa		; c9 fa
B25_136e:		cpy #$c1		; c0 c1
B25_1370:	.db $14
B25_1371:		.db $00				; 00
B25_1372:		sty $c5c4		; 8c c4 c5
B25_1375:		iny				; c8 
B25_1376:		cmp #$ca		; c9 ca
B25_1378:		iny				; c8 
B25_1379:	.db $da
B25_137a:		cld				; d8 
B25_137b:		cmp $d0da, y	; d9 da d0
B25_137e:		cmp ($14), y	; d1 14
B25_1380:		.db $00				; 00
B25_1381:		sty $d5d4		; 8c d4 d5
B25_1384:		cld				; d8 
B25_1385:		cmp $d8da, y	; d9 da d8
B25_1388:		nop				; ea 
B25_1389:		inx				; e8 
B25_138a:		sbc #$ea		; e9 ea
B25_138c:		cpx #$e1		; e0 e1
B25_138e:		ora $00			; 05 00
B25_1390:		sta ($80, x)	; 81 80
B25_1392:		php				; 08 
B25_1393:		sta ($81, x)	; 81 81
B25_1395:	.db $82
B25_1396:		ora $00			; 05 00
B25_1398:		sty $e5e4		; 8c e4 e5
B25_139b:		inx				; e8 
B25_139c:		sbc #$ea		; e9 ea
B25_139e:		inx				; e8 
B25_139f:	.db $fa
B25_13a0:		sed				; f8 
B25_13a1:		sbc $f0fa, y	; f9 fa f0
B25_13a4:		sbc ($05), y	; f1 05
B25_13a6:		.db $00				; 00
B25_13a7:		sta ($90, x)	; 81 90
B25_13a9:		php				; 08 
B25_13aa:		.db $00				; 00
B25_13ab:		sta ($92, x)	; 81 92
B25_13ad:		ora $00			; 05 00
B25_13af:		sty $f5f4		; 8c f4 f5
B25_13b2:		sed				; f8 
B25_13b3:		sbc $f8da, y	; f9 da f8
B25_13b6:		dex				; ca 
B25_13b7:		iny				; c8 
B25_13b8:		cmp #$fa		; c9 fa
B25_13ba:	.db $c2
B25_13bb:	.db $c3
B25_13bc:		ora $00			; 05 00
B25_13be:		sta ($a0, x)	; 81 a0
B25_13c0:		php				; 08 
B25_13c1:		lda ($81, x)	; a1 81
B25_13c3:		ldx #$05		; a2 05
B25_13c5:		.db $00				; 00
B25_13c6:		sty $c7c6		; 8c c6 c7
B25_13c9:		inx				; e8 
B25_13ca:		sbc #$ea		; e9 ea
B25_13cc:		iny				; c8 
B25_13cd:	.db $da
B25_13ce:		cld				; d8 
B25_13cf:		cmp $d2da, y	; d9 da d2
B25_13d2:	.db $d3
B25_13d3:	.db $14
B25_13d4:		.db $00				; 00
B25_13d5:		inc $d7d6, x	; fe d6 d7
B25_13d8:		sed				; f8 
B25_13d9:		sbc $d8fa, y	; f9 fa d8
B25_13dc:		nop				; ea 
B25_13dd:		inx				; e8 
B25_13de:		sbc #$ea		; e9 ea
B25_13e0:	.db $e2
B25_13e1:	.db $e3
B25_13e2:		.db $00				; 00
B25_13e3:		.db $00				; 00
B25_13e4:	.db $80
B25_13e5:		sta ($81, x)	; 81 81
B25_13e7:	.db $82
B25_13e8:	.db $80
B25_13e9:		sta ($81, x)	; 81 81
B25_13eb:	.db $82
B25_13ec:	.db $80
B25_13ed:		sta ($81, x)	; 81 81
B25_13ef:	.db $82
B25_13f0:	.db $80
B25_13f1:		sta ($81, x)	; 81 81
B25_13f3:	.db $82
B25_13f4:		.db $00				; 00
B25_13f5:		.db $00				; 00
B25_13f6:		inc $e7			; e6 e7
B25_13f8:		iny				; c8 
B25_13f9:		cmp #$ca		; c9 ca
B25_13fb:		iny				; c8 
B25_13fc:	.db $fa
B25_13fd:		sed				; f8 
B25_13fe:		sbc $f2fa, y	; f9 fa f2
B25_1401:	.db $f3
B25_1402:		.db $00				; 00
B25_1403:		.db $00				; 00
B25_1404:		bcc B25_1406 ; 90 00

B25_1406:		.db $00				; 00
B25_1407:	.db $92
B25_1408:		bcc B25_140a ; 90 00

B25_140a:		.db $00				; 00
B25_140b:	.db $92
B25_140c:		bcc B25_140e ; 90 00

B25_140e:		.db $00				; 00
B25_140f:	.db $92
B25_1410:		bcc B25_1412 ; 90 00

B25_1412:		.db $00				; 00
B25_1413:	.db $92
B25_1414:		.db $00				; 00
B25_1415:		.db $00				; 00
B25_1416:	.db $f2
B25_1417:	.db $f3
B25_1418:		cld				; d8 
B25_1419:		cmp $d8da, y	; d9 da d8
B25_141c:		cmp $cdce		; cd ce cd
B25_141f:		dec $cccb		; ce cb cc
B25_1422:		.db $00				; 00
B25_1423:		.db $00				; 00
B25_1424:		bcc B25_1426 ; 90 00

B25_1426:		.db $00				; 00
B25_1427:	.db $92
B25_1428:		bcc B25_142a ; 90 00

B25_142a:		.db $00				; 00
B25_142b:	.db $92
B25_142c:		bcc B25_142e ; 90 00

B25_142e:		.db $00				; 00
B25_142f:	.db $92
B25_1430:		bcc B25_1432 ; 90 00

B25_1432:		.db $00				; 00
B25_1433:	.db $92
B25_1434:		.db $00				; 00
B25_1435:		.db $00				; 00
B25_1436:	.db $cb
B25_1437:		cpy $cecd		; cc cd ce
B25_143a:		cmp $ddce		; cd ce dd
B25_143d:		dec $dedd, x	; de dd de
B25_1440:	.db $db
B25_1441:	.db $dc
B25_1442:		.db $00				; 00
B25_1443:		.db $00				; 00
B25_1444:		ldy #$a1		; a0 a1
B25_1446:		lda ($a2, x)	; a1 a2
B25_1448:		ldy #$a1		; a0 a1
B25_144a:		lda ($a2, x)	; a1 a2
B25_144c:		ldy #$a1		; a0 a1
B25_144e:		lda ($a2, x)	; a1 a2
B25_1450:		ldy #$a1		; a0 a1
B25_1452:		lda ($a2, x)	; a1 a2
B25_1454:	.db $8e $00 $00
B25_1457:	.db $db
B25_1458:	.db $dc
B25_1459:		cmp $ddde, x	; dd de dd
B25_145c:		dec $e9e8, x	; de e8 e9
B25_145f:		sbc #$ea		; e9 ea
B25_1461:		cpy $c5			; c4 c5
B25_1463:	.db $14
B25_1464:		.db $00				; 00
B25_1465:		sty $c1c0		; 8c c0 c1
B25_1468:		inx				; e8 
B25_1469:		sbc #$ca		; e9 ca
B25_146b:		inx				; e8 
B25_146c:		sed				; f8 
B25_146d:		sbc $faf9, y	; f9 f9 fa
B25_1470:	.db $d4
B25_1471:		cmp $14, x		; d5 14
B25_1473:		.db $00				; 00
B25_1474:		sty $d1d0		; 8c d0 d1
B25_1477:		sed				; f8 
B25_1478:		sbc $f8fa, y	; f9 fa f8
B25_147b:		cpx #$c8		; e0 c8
B25_147d:		cmp #$ca		; c9 ca
B25_147f:		cpx $e5			; e4 e5
B25_1481:	.db $04
B25_1482:		.db $00				; 00
B25_1483:		sty $8180		; 8c 80 81
B25_1486:	.db $82
B25_1487:	.db $80
B25_1488:		sta ($82, x)	; 81 82
B25_148a:	.db $80
B25_148b:		sta ($82, x)	; 81 82
B25_148d:	.db $80
B25_148e:		sta ($82, x)	; 81 82
B25_1490:	.db $04
B25_1491:		.db $00				; 00
B25_1492:		sty $e1e0		; 8c e0 e1
B25_1495:		iny				; c8 
B25_1496:		cmp #$ca		; c9 ca
B25_1498:		iny				; c8 
B25_1499:		inx				; e8 
B25_149a:		cld				; d8 
B25_149b:		cmp $f4da, y	; d9 da f4
B25_149e:		sbc $04, x		; f5 04
B25_14a0:		.db $00				; 00
B25_14a1:	.db $8c $90 $00
B25_14a4:	.db $92
B25_14a5:		bcc B25_14a7 ; 90 00

B25_14a7:	.db $92
B25_14a8:		bcc B25_14aa ; 90 00

B25_14aa:	.db $92
B25_14ab:		bcc B25_14ad ; 90 00

B25_14ad:	.db $92
B25_14ae:	.db $04
B25_14af:		.db $00				; 00
B25_14b0:		sty $f1f0		; 8c f0 f1
B25_14b3:		cld				; d8 
B25_14b4:		cmp $d8da, y	; d9 da d8
B25_14b7:		iny				; c8 
B25_14b8:		cmp #$e9		; c9 e9
B25_14ba:		nop				; ea 
B25_14bb:		dec $c7			; c6 c7
B25_14bd:	.db $04
B25_14be:		.db $00				; 00
B25_14bf:		sty $a1a0		; 8c a0 a1
B25_14c2:		ldx #$a0		; a2 a0
B25_14c4:		lda ($a2, x)	; a1 a2
B25_14c6:		ldy #$a1		; a0 a1
B25_14c8:		ldx #$a0		; a2 a0
B25_14ca:		lda ($a2, x)	; a1 a2
B25_14cc:	.db $04
B25_14cd:		.db $00				; 00
B25_14ce:		sty $c3c2		; 8c c2 c3
B25_14d1:		inx				; e8 
B25_14d2:		sbc #$ea		; e9 ea
B25_14d4:		inx				; e8 
B25_14d5:		cld				; d8 
B25_14d6:		cmp $faf9, y	; d9 f9 fa
B25_14d9:		dec $d7, x		; d6 d7
B25_14db:	.db $04
B25_14dc:		.db $00				; 00
B25_14dd:		sty $8180		; 8c 80 81
B25_14e0:	.db $82
B25_14e1:	.db $80
B25_14e2:		sta ($82, x)	; 81 82
B25_14e4:	.db $80
B25_14e5:		sta ($82, x)	; 81 82
B25_14e7:	.db $80
B25_14e8:		sta ($82, x)	; 81 82
B25_14ea:	.db $04
B25_14eb:		.db $00				; 00
B25_14ec:		sty $d3d2		; 8c d2 d3
B25_14ef:		sed				; f8 
B25_14f0:		iny				; c8 
B25_14f1:		cmp #$f8		; c9 f8
B25_14f3:		inx				; e8 
B25_14f4:		iny				; c8 
B25_14f5:		sbc #$ea		; e9 ea
B25_14f7:		inc $e7			; e6 e7
B25_14f9:	.db $04
B25_14fa:		.db $00				; 00
B25_14fb:	.db $8c $90 $00
B25_14fe:	.db $92
B25_14ff:		bcc B25_1501 ; 90 00

B25_1501:	.db $92
B25_1502:		bcc B25_1504 ; 90 00

B25_1504:	.db $92
B25_1505:		bcc B25_1507 ; 90 00

B25_1507:	.db $92
B25_1508:	.db $04
B25_1509:		.db $00				; 00
B25_150a:		sty $e3e2		; 8c e2 e3
B25_150d:		iny				; c8 
B25_150e:		cld				; d8 
B25_150f:		cmp $f8c8, y	; d9 c8 f8
B25_1512:		cld				; d8 
B25_1513:		sbc $f2fa, y	; f9 fa f2
B25_1516:	.db $f3
B25_1517:	.db $04
B25_1518:		.db $00				; 00
B25_1519:		sty $a1a0		; 8c a0 a1
B25_151c:		ldx #$a0		; a2 a0
B25_151e:		lda ($a2, x)	; a1 a2
B25_1520:		ldy #$a1		; a0 a1
B25_1522:		ldx #$a0		; a2 a0
B25_1524:		lda ($a2, x)	; a1 a2
B25_1526:	.db $04
B25_1527:		.db $00				; 00
B25_1528:		sty $f3f2		; 8c f2 f3
B25_152b:		cld				; d8 
B25_152c:		cmp $d8da, y	; d9 da d8
B25_152f:		cmp $cdce		; cd ce cd
B25_1532:		dec $cccb		; ce cb cc
B25_1535:	.db $04
B25_1536:		.db $00				; 00
B25_1537:		sty $8180		; 8c 80 81
B25_153a:	.db $82
B25_153b:	.db $80
B25_153c:		sta ($82, x)	; 81 82
B25_153e:	.db $80
B25_153f:		sta ($82, x)	; 81 82
B25_1541:	.db $80
B25_1542:		sta ($82, x)	; 81 82
B25_1544:	.db $04
B25_1545:		.db $00				; 00
B25_1546:		sty $cccb		; 8c cb cc
B25_1549:		cmp $cdce		; cd ce cd
B25_154c:		dec $dedd		; ce dd de
B25_154f:		cmp $dbde, x	; dd de db
B25_1552:	.db $dc
B25_1553:	.db $04
B25_1554:		.db $00				; 00
B25_1555:	.db $8c $90 $00
B25_1558:	.db $92
B25_1559:		bcc B25_155b ; 90 00

B25_155b:	.db $92
B25_155c:		bcc B25_155e ; 90 00

B25_155e:	.db $92
B25_155f:		bcc B25_1561 ; 90 00

B25_1561:	.db $92
B25_1562:	.db $04
B25_1563:		.db $00				; 00
B25_1564:		sty $dcdb		; 8c db dc
B25_1567:		cmp $ddde, x	; dd de dd
B25_156a:		dec $e8c8, x	; de c8 e8
B25_156d:		sbc #$ca		; e9 ca
B25_156f:		cpy #$c1		; c0 c1
B25_1571:	.db $04
B25_1572:		.db $00				; 00
B25_1573:		sty $a1a0		; 8c a0 a1
B25_1576:		ldx #$a0		; a2 a0
B25_1578:		lda ($a2, x)	; a1 a2
B25_157a:		ldy #$a1		; a0 a1
B25_157c:		ldx #$a0		; a2 a0
B25_157e:		lda ($a2, x)	; a1 a2
B25_1580:	.db $04
B25_1581:		.db $00				; 00
B25_1582:		sty $c5c4		; 8c c4 c5
B25_1585:		inx				; e8 
B25_1586:		sbc #$ea		; e9 ea
B25_1588:		inx				; e8 
B25_1589:		cld				; d8 
B25_158a:		sed				; f8 
B25_158b:		sbc $d0da, y	; f9 da d0
B25_158e:		cmp ($04), y	; d1 04
B25_1590:		.db $00				; 00
B25_1591:		sty $8180		; 8c 80 81
B25_1594:	.db $82
B25_1595:	.db $80
B25_1596:		sta ($82, x)	; 81 82
B25_1598:	.db $80
B25_1599:		sta ($82, x)	; 81 82
B25_159b:	.db $80
B25_159c:		sta ($82, x)	; 81 82
B25_159e:	.db $04
B25_159f:		.db $00				; 00
B25_15a0:		sty $d5d4		; 8c d4 d5
B25_15a3:		sed				; f8 
B25_15a4:		sbc $f8fa, y	; f9 fa f8
B25_15a7:		iny				; c8 
B25_15a8:		cmp #$c8		; c9 c8
B25_15aa:		cmp #$e0		; c9 e0
B25_15ac:		sbc ($04, x)	; e1 04
B25_15ae:		.db $00				; 00
B25_15af:	.db $8c $90 $00
B25_15b2:	.db $92
B25_15b3:		bcc B25_15b5 ; 90 00

B25_15b5:	.db $92
B25_15b6:		bcc B25_15b8 ; 90 00

B25_15b8:	.db $92
B25_15b9:		bcc B25_15bb ; 90 00

B25_15bb:	.db $92
B25_15bc:	.db $04
B25_15bd:		.db $00				; 00
B25_15be:		sty $e5e4		; 8c e4 e5
B25_15c1:		iny				; c8 
B25_15c2:		cmp #$ca		; c9 ca
B25_15c4:		iny				; c8 
B25_15c5:		cld				; d8 
B25_15c6:		cmp $d9d8, y	; d9 d8 d9
B25_15c9:		beq B25_15bc ; f0 f1

B25_15cb:	.db $04
B25_15cc:		.db $00				; 00
B25_15cd:		sty $a1a0		; 8c a0 a1
B25_15d0:		ldx #$a0		; a2 a0
B25_15d2:		lda ($a2, x)	; a1 a2
B25_15d4:		ldy #$a1		; a0 a1
B25_15d6:		ldx #$a0		; a2 a0
B25_15d8:		lda ($a2, x)	; a1 a2
B25_15da:	.db $04
B25_15db:		.db $00				; 00
B25_15dc:		sty $f5f4		; 8c f4 f5
B25_15df:		cld				; d8 
B25_15e0:		cmp $d8da, y	; d9 da d8
B25_15e3:		inx				; e8 
B25_15e4:		iny				; c8 
B25_15e5:		sbc #$ea		; e9 ea
B25_15e7:	.db $c2
B25_15e8:	.db $c3
B25_15e9:	.db $14
B25_15ea:		.db $00				; 00
B25_15eb:		sty $c7c6		; 8c c6 c7
B25_15ee:		inx				; e8 
B25_15ef:		sbc #$ea		; e9 ea
B25_15f1:		iny				; c8 
B25_15f2:		sed				; f8 
B25_15f3:		cld				; d8 
B25_15f4:		sbc $d2fa, y	; f9 fa d2
B25_15f7:	.db $d3
B25_15f8:	.db $14
B25_15f9:		.db $00				; 00
B25_15fa:		iny				; c8 
B25_15fb:		dec $d7, x		; d6 d7
B25_15fd:		sed				; f8 
B25_15fe:		sbc $d8fa, y	; f9 fa d8
B25_1601:		inx				; e8 
B25_1602:		iny				; c8 
B25_1603:		cmp #$ea		; c9 ea
B25_1605:	.db $e2
B25_1606:	.db $e3
B25_1607:		cmp $cdce		; cd ce cd
B25_160a:		dec $cecd		; ce cd ce
B25_160d:		cmp $cdce		; cd ce cd
B25_1610:		dec $cecd		; ce cd ce
B25_1613:		cmp $cdce		; cd ce cd
B25_1616:		dec $cecd		; ce cd ce
B25_1619:		cmp $e6ce		; cd ce e6
B25_161c:	.db $e7
B25_161d:		iny				; c8 
B25_161e:		cmp #$ca		; c9 ca
B25_1620:		iny				; c8 
B25_1621:		sed				; f8 
B25_1622:		cld				; d8 
B25_1623:		cmp $f2fa, y	; d9 fa f2
B25_1626:	.db $f3
B25_1627:		cmp $ddde, x	; dd de dd
B25_162a:		dec $dedd, x	; de dd de
B25_162d:		cmp $ddde, x	; dd de dd
B25_1630:		dec $dedd, x	; de dd de
B25_1633:		cmp $ddde, x	; dd de dd
B25_1636:		dec $dedd, x	; de dd de
B25_1639:		cmp $f2de, x	; dd de f2
B25_163c:	.db $f3
B25_163d:		cld				; d8 
B25_163e:		cmp $d8da, y	; d9 da d8
B25_1641:		asl a			; 0a
B25_1642:		adc #$04		; 69 04
B25_1644:	.db $5a
B25_1645:		sty $96			; 84 96
B25_1647:		asl a			; 0a
B25_1648:		.db $00				; 00
B25_1649:		ror $04			; 66 04
B25_164b:		eor $84, x		; 55 84
B25_164d:		sta $a000, y	; 99 00 a0
B25_1650:		lsr $04, x		; 56 04
B25_1652:		eor $84, x		; 55 84
B25_1654:	.db $59 $a0 $00
B25_1657:		ror $04			; 66 04
B25_1659:		eor $84, x		; 55 84
B25_165b:	.db $99 $00 $00
B25_165e:		ror $04			; 66 04
B25_1660:		eor $84, x		; 55 84
B25_1662:		sta $0a00, y	; 99 00 0a
B25_1665:		adc $04			; 65 04
B25_1667:		eor $84, x		; 55 84
B25_1669:		sta $0a, x		; 95 0a
B25_166b:		.db $00				; 00
B25_166c:		ror $04			; 66 04
B25_166e:		eor $83, x		; 55 83
B25_1670:	.db $99 $00 $00
B25_1673:		asl $0a			; 06 0a