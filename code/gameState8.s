
gameState8_body:
B1_05b7:		lda wGameSubstate			; a5 19
B1_05b9:		jsr jumpTablePreserveY		; 20 6d e8
	.dw gameState8_substate0
	.dw gameState8_substate1
	.dw gameState8_substate2
	.dw gameState8_substate3
	.dw gameState8_substate4
	.dw gameState8_substate5
	.dw gameState8_substate6
	.dw gameState8_substate7
	.dw gameState8_substate8
	.dw gameState8_substate9
	.dw gameState8_substateA
	.dw gameState8_substateStub
	.dw gameState8_substateStub

gameState8_substate0:
B1_05d6:		jsr initSound		; 20 27 e2
B1_05d9:		jsr func_1f_0bfd		; 20 fd eb
B1_05dc:		jsr $e78a		; 20 8a e7
B1_05df:		ldy #$00		; a0 00
B1_05e1:		lda wCurrRoomGroup		; a5 32
B1_05e3:		cmp #$00		; c9 00
B1_05e5:		beq B1_05ed ; f0 06

B1_05e7:		iny				; c8 
B1_05e8:		cmp #$02		; c9 02
B1_05ea:		beq B1_05ed ; f0 01

B1_05ec:		iny				; c8 
B1_05ed:		sty $0780		; 8c 80 07
B1_05f0:		inc wGameSubstate			; e6 19
B1_05f2:		rts				; 60 

gameState8_substate1:
B1_05f3:		jsr $e73d		; 20 3d e7
B1_05f6:		ldy #$00		; a0 00
B1_05f8:		lda $a63f, y	; b9 3f a6
B1_05fb:	.db $99 $48 $00
B1_05fe:		iny				; c8 
B1_05ff:		cpy #$06		; c0 06
B1_0601:		bne B1_05f8 ; d0 f5

B1_0603:		lda #$18		; a9 18
B1_0605:		jsr displayStaticLayoutA		; 20 e9 ec
B1_0608:		lda #$04		; a9 04
B1_060a:		jsr displayStaticLayoutA		; 20 e9 ec
B1_060d:		ldx #$0c		; a2 0c
B1_060f:		lda #$98		; a9 98
B1_0611:		jsr func_1f_0bd5		; 20 d5 eb
B1_0614:		lda $0780		; ad 80 07
B1_0617:		beq B1_061e ; f0 05

B1_0619:		lda #$17		; a9 17
B1_061b:		jsr displayStaticLayoutA		; 20 e9 ec
B1_061e:		lda $0780		; ad 80 07
B1_0621:		asl a			; 0a
B1_0622:		tay				; a8 
B1_0623:		lda data_01_0e1f.w, y	; b9 1f ae
B1_0626:		sta $08			; 85 08
B1_0628:		lda data_01_0e1f.w+1, y	; b9 20 ae
B1_062b:		sta $09			; 85 09
B1_062d:		jsr func_01_0d48		; 20 48 ad
B1_0630:		lda #$78		; a9 78
B1_0632:		ldy #$00		; a0 00
B1_0634:		jsr setGenericTimerToYA		; 20 8e e5
B1_0637:		lda #$6c		; a9 6c
B1_0639:		jsr playSound		; 20 5f e2
B1_063c:		inc wGameSubstate			; e6 19
B1_063e:		rts				; 60 


B1_063f:		ror $747b, x	; 7e 7b 74
B1_0642:		adc $76, x		; 75 76
B1_0644:	.db $77

gameState8_substate2:
B1_0645:		jsr decGenericTimer		; 20 79 e5
B1_0648:		beq B1_064b ; f0 01

B1_064a:		rts				; 60 


B1_064b:		ldy #$00		; a0 00
B1_064d:		sty $0781		; 8c 81 07
B1_0650:		iny				; c8 
B1_0651:		sty $0782		; 8c 82 07
B1_0654:		inc wGameSubstate			; e6 19
B1_0656:		rts				; 60 


gameState8_substate3:
B1_0657:		dec $0782		; ce 82 07
B1_065a:		beq B1_065d ; f0 01

B1_065c:		rts				; 60 


B1_065d:		lda $0781		; ad 81 07
B1_0660:		asl a			; 0a
B1_0661:		asl a			; 0a
B1_0662:		tay				; a8 
B1_0663:		lda $a69c, y	; b9 9c a6
B1_0666:		cmp #$ff		; c9 ff
B1_0668:		beq B1_0694 ; f0 2a

B1_066a:		sty $07			; 84 07
B1_066c:		lda #$18		; a9 18
B1_066e:		jsr displayStaticLayoutA		; 20 e9 ec
B1_0671:		ldy $07			; a4 07
B1_0673:		lda $a69c, y	; b9 9c a6
B1_0676:		sta $02f4, x	; 9d f4 02
B1_0679:		lda $a69d, y	; b9 9d a6
B1_067c:		sta $02f5, x	; 9d f5 02
B1_067f:		lda $a69e, y	; b9 9e a6
B1_0682:		sta $02f6, x	; 9d f6 02
B1_0685:		lda $a69f, y	; b9 9f a6
B1_0688:		sta $0782		; 8d 82 07
B1_068b:		lda #$04		; a9 04
B1_068d:		jsr displayStaticLayoutA		; 20 e9 ec
B1_0690:		inc $0781		; ee 81 07
B1_0693:		rts				; 60 


B1_0694:		lda #$00		; a9 00
B1_0696:		sta $0781		; 8d 81 07
B1_0699:		inc wGameSubstate			; e6 19
B1_069b:		rts				; 60 


B1_069c:	.db $07
B1_069d:	.db $17
B1_069e:		jsr $0704		; 20 04 07
B1_06a1:	.db $07
B1_06a2:		bpl B1_06a8 ; 10 04

B1_06a4:	.db $0f
B1_06a5:	.db $07
B1_06a6:		bpl B1_06ac ; 10 04

B1_06a8:	.db $0f
B1_06a9:	.db $0f
B1_06aa:		bpl B1_06b0 ; 10 04

B1_06ac:	.db $0f
B1_06ad:	.db $0f
B1_06ae:	.db $0f
B1_06af:	.db $04
B1_06b0:	.db $ff


gameState8_substate4:
B1_06b1:		lda $0780		; ad 80 07
B1_06b4:		asl a			; 0a
B1_06b5:		tay				; a8 
B1_06b6:		lda $ae25, y	; b9 25 ae
B1_06b9:		sta $0a			; 85 0a
B1_06bb:		lda $ae26, y	; b9 26 ae
B1_06be:		sta $0b			; 85 0b
B1_06c0:		lda $0781		; ad 81 07
B1_06c3:		asl a			; 0a
B1_06c4:		tay				; a8 
B1_06c5:		lda ($0a), y	; b1 0a
B1_06c7:		sta $08			; 85 08
B1_06c9:		iny				; c8 
B1_06ca:		cmp #$ff		; c9 ff
B1_06cc:		beq B1_06d9 ; f0 0b

B1_06ce:		lda ($0a), y	; b1 0a
B1_06d0:		sta $09			; 85 09
B1_06d2:		jsr func_01_0d48		; 20 48 ad
B1_06d5:		inc $0781		; ee 81 07
B1_06d8:		rts				; 60 


B1_06d9:		lda ($0a), y	; b1 0a
B1_06db:		cmp #$ff		; c9 ff
B1_06dd:		bne B1_06d0 ; d0 f1

B1_06df:		lda $0780		; ad 80 07
B1_06e2:		asl a			; 0a
B1_06e3:		asl a			; 0a
B1_06e4:		clc				; 18 
B1_06e5:		adc $0780		; 6d 80 07
B1_06e8:		tay				; a8 
B1_06e9:		lda $a715, y	; b9 15 a7
B1_06ec:		sta $0783		; 8d 83 07
B1_06ef:		lda $a716, y	; b9 16 a7
B1_06f2:		sta $0784		; 8d 84 07
B1_06f5:		lda $a717, y	; b9 17 a7
B1_06f8:		sta $0785		; 8d 85 07
B1_06fb:		lda $a718, y	; b9 18 a7
B1_06fe:		sta $0786		; 8d 86 07
B1_0701:		lda $a719, y	; b9 19 a7
B1_0704:		sta $0787		; 8d 87 07
B1_0707:		lda #$00		; a9 00
B1_0709:		sta $0788		; 8d 88 07
B1_070c:		sta $0789		; 8d 89 07
B1_070f:		sta $0789		; 8d 89 07
B1_0712:		inc wGameSubstate			; e6 19
B1_0714:		rts				; 60 


B1_0715:		.db $00				; 00
B1_0716:		ora ($00, x)	; 01 00
B1_0718:		ora ($28, x)	; 01 28
B1_071a:		.db $00				; 00
B1_071b:		ora ($80, x)	; 01 80
B1_071d:		ora ($30, x)	; 01 30
B1_071f:	.db $80
B1_0720:	.db $ff
B1_0721:		jsr $4001		; 20 01 40


gameState8_substate5:
B1_0724:		lda #$00		; a9 00
B1_0726:		ldy $0784		; ac 84 07
B1_0729:		bpl B1_072d ; 10 02

B1_072b:		lda #$ff		; a9 ff
B1_072d:		sta $01			; 85 01
B1_072f:		lda $0788		; ad 88 07
B1_0732:		sec				; 38 
B1_0733:		sbc $0783		; ed83 07
B1_0736:		sta $0788		; 8d 88 07
B1_0739:		lda $fd			; a5 fd
B1_073b:		sbc $0784		; ed84 07
B1_073e:		sta wScrollX			; 85 fd
B1_0740:		lda $0789		; ad 89 07
B1_0743:		sbc $01			; e5 01
B1_0745:		sta $0789		; 8d 89 07
B1_0748:		and #$01		; 29 01
B1_074a:		sta $00			; 85 00
B1_074c:		lda wPPUCtrl			; a5 ff
B1_074e:		and #$fe		; 29 fe
B1_0750:		ora $00			; 05 00
B1_0752:		sta wPPUCtrl			; 85 ff
B1_0754:		lda $0789		; ad 89 07
B1_0757:		clc				; 18 
B1_0758:		adc $0785		; 6d 85 07
B1_075b:		sta $0789		; 8d 89 07
B1_075e:		lda $fc			; a5 fc
B1_0760:		adc $0786		; 6d 86 07
B1_0763:		sta wScrollY			; 85 fc
B1_0765:		dec $0787		; ce 87 07
B1_0768:		bne B1_07a9 ; d0 3f

B1_076a:		jsr $a871		; 20 71 a8
B1_076d:		jsr $a8ad		; 20 ad a8
B1_0770:		ldy $0780		; ac 80 07
B1_0773:		lda $a7aa, y	; b9 aa a7
B1_0776:		jsr displayStaticLayoutA		; 20 e9 ec
B1_0779:		lda #$04		; a9 04
B1_077b:		jsr displayStaticLayoutA		; 20 e9 ec
B1_077e:		ldx #$59		; a2 59
B1_0780:		lda #$19		; a9 19
B1_0782:		jsr func_1f_05c1		; 20 c1 e5
B1_0785:		lda $0780		; ad 80 07
B1_0788:		asl a			; 0a
B1_0789:		tay				; a8 
B1_078a:		lda $a7ad, y	; b9 ad a7
B1_078d:		sta $078d		; 8d 8d 07
B1_0790:		lda $a7ae, y	; b9 ae a7
B1_0793:		sta $078c		; 8d 8c 07
B1_0796:		lda #$00		; a9 00
B1_0798:		sta $078a		; 8d 8a 07
B1_079b:		lda wPPUCtrl			; a5 ff
B1_079d:		ora #$01		; 09 01
B1_079f:		sta $078b		; 8d 8b 07
B1_07a2:		lda #$00		; a9 00
B1_07a4:		sta $0781		; 8d 81 07
B1_07a7:		inc wGameSubstate			; e6 19
B1_07a9:		rts				; 60 


B1_07aa:	.db $14
B1_07ab:		ora $16, x		; 15 16
B1_07ad:	.db $22
B1_07ae:		jsr $e022		; 20 22 e0
B1_07b1:	.db $22
B1_07b2:		ldy #$a5		; a0 a5
B1_07b4:	.db $1a
B1_07b5:		and #$10		; 29 10
B1_07b7:		beq B1_07d1 ; f0 18

B1_07b9:		lda #$00		; a9 00
B1_07bb:		sta $07			; 85 07
B1_07bd:		ldy #$00		; a0 00
B1_07bf:		lda $0791, y	; b9 91 07
B1_07c2:		clc				; 18 
B1_07c3:		adc #$01		; 69 01
B1_07c5:		tax				; aa 
B1_07c6:		lda $07			; a5 07
B1_07c8:		sta wEntityState.w, x	; 9d 70 04
B1_07cb:		iny				; c8 
B1_07cc:		cpy #$04		; c0 04
B1_07ce:		bne B1_07bf ; d0 ef

B1_07d0:		rts				; 60 


B1_07d1:		lda #$80		; a9 80
B1_07d3:		bne B1_07bb ; d0 e6

B1_07d5:		lda $0780		; ad 80 07
B1_07d8:		asl a			; 0a
B1_07d9:		asl a			; 0a
B1_07da:		sta $07			; 85 07
B1_07dc:		tay				; a8 
B1_07dd:		lda $a826, y	; b9 26 a8
B1_07e0:		sta $08			; 85 08
B1_07e2:		lda $a827, y	; b9 27 a8
B1_07e5:		sta $09			; 85 09
B1_07e7:		ldx #$01		; a2 01
B1_07e9:		ldy #$00		; a0 00
B1_07eb:		lda ($08), y	; b1 08
B1_07ed:		cmp #$ff		; c9 ff
B1_07ef:		beq B1_07f8 ; f0 07

B1_07f1:		sta wEntityState.w, x	; 9d 70 04
B1_07f4:		inx				; e8 
B1_07f5:		iny				; c8 
B1_07f6:		bne B1_07eb ; d0 f3

B1_07f8:		ldy $07			; a4 07
B1_07fa:		lda $a828, y	; b9 28 a8
B1_07fd:		sta $08			; 85 08
B1_07ff:		lda $a829, y	; b9 29 a8
B1_0802:		sta $09			; 85 09
B1_0804:		ldy #$00		; a0 00
B1_0806:		lda wEntityBaseY.w		; ad 1c 04
B1_0809:		cmp ($08), y	; d1 08
B1_080b:		bcc B1_080f ; 90 02

B1_080d:		iny				; c8 
B1_080e:		iny				; c8 
B1_080f:		iny				; c8 
B1_0810:		lda ($08), y	; b1 08
B1_0812:		sta $0a			; 85 0a
B1_0814:		iny				; c8 
B1_0815:		lda ($08), y	; b1 08
B1_0817:		sta $0b			; 85 0b
B1_0819:		ldy #$00		; a0 00
B1_081b:		lda ($0a), y	; b1 0a
B1_081d:		sta $0791, y	; 99 91 07
B1_0820:		iny				; c8 
B1_0821:		cpy #$04		; c0 04
B1_0823:		bne B1_081b ; d0 f6

B1_0825:		rts				; 60 


B1_0826:	.db $32
B1_0827:		tay				; a8 
B1_0828:		lsr a			; 4a
B1_0829:		tay				; a8 
B1_082a:	.db $3a
B1_082b:		tay				; a8 
B1_082c:	.db $4f
B1_082d:		tay				; a8 
B1_082e:	.db $42
B1_082f:		tay				; a8 
B1_0830:	.db $54
B1_0831:		tay				; a8 
B1_0832:		.db $00				; 00
B1_0833:	.db $80
B1_0834:	.db $80
B1_0835:	.db $80
B1_0836:	.db $80
B1_0837:	.db $80
B1_0838:	.db $80
B1_0839:	.db $ff
B1_083a:		.db $00				; 00
B1_083b:	.db $80
B1_083c:	.db $80
B1_083d:	.db $80
B1_083e:	.db $80
B1_083f:	.db $80
B1_0840:	.db $80
B1_0841:	.db $ff
B1_0842:		.db $00				; 00
B1_0843:	.db $80
B1_0844:	.db $80
B1_0845:	.db $80
B1_0846:	.db $80
B1_0847:	.db $80
B1_0848:	.db $80
B1_0849:	.db $ff
B1_084a:		ldy #$61		; a0 61
B1_084c:		tay				; a8 
B1_084d:		adc $a8			; 65 a8
B1_084f:		ldy #$59		; a0 59
B1_0851:		tay				; a8 
B1_0852:		eor $a0a8, x	; 5d a8 a0
B1_0855:		adc #$a8		; 69 a8
B1_0857:		adc $01a8		; 6d a8 01
B1_085a:	.db $02
B1_085b:	.db $03
B1_085c:		php				; 08 
B1_085d:	.db $04
B1_085e:		ora $06			; 05 06
B1_0860:		php				; 08 
B1_0861:		ora ($02, x)	; 01 02
B1_0863:	.db $03
B1_0864:		php				; 08 
B1_0865:	.db $04
B1_0866:		ora $06			; 05 06
B1_0868:		php				; 08 
B1_0869:		ora ($02, x)	; 01 02
B1_086b:	.db $03
B1_086c:		php				; 08 
B1_086d:	.db $04
B1_086e:		ora $06			; 05 06
B1_0870:		php				; 08 
B1_0871:		lda $0780		; ad 80 07
B1_0874:		asl a			; 0a
B1_0875:		tay				; a8 
B1_0876:		lda data_01_0dd7.w, y	; b9 d7 ad
B1_0879:		sta $08			; 85 08
B1_087b:		lda data_01_0dd7.w+1, y	; b9 d8 ad
B1_087e:		sta $09			; 85 09
B1_0880:		ldx #$01		; a2 01
B1_0882:		ldy #$00		; a0 00
B1_0884:		lda ($08), y	; b1 08
B1_0886:		cmp #$ff		; c9 ff
B1_0888:		beq B1_08ac ; f0 22

B1_088a:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B1_088d:		lda #$0c		; a9 0c
B1_088f:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B1_0892:		lda #$01		; a9 01
B1_0894:		sta wEntityFacingLeft.w, x	; 9d a8 04
B1_0897:		lda #$80		; a9 80
B1_0899:		sta wEntityState.w, x	; 9d 70 04
B1_089c:		iny				; c8 
B1_089d:		lda ($08), y	; b1 08
B1_089f:		sta wEntityBaseX.w, x	; 9d 38 04
B1_08a2:		iny				; c8 
B1_08a3:		lda ($08), y	; b1 08
B1_08a5:		sta wEntityBaseY.w, x	; 9d 1c 04
B1_08a8:		iny				; c8 
B1_08a9:		inx				; e8 
B1_08aa:		bne B1_0884 ; d0 d8

B1_08ac:		rts				; 60 


B1_08ad:		jsr func_1f_0716		; 20 16 e7
B1_08b0:		ldy #$00		; a0 00
B1_08b2:		lda #$08		; a9 08
B1_08b4:		sta $0c			; 85 0c
B1_08b6:		lda $a8c3, y	; b9 c3 a8
B1_08b9:		sta $02ef, x	; 9d ef 02
B1_08bc:		iny				; c8 
B1_08bd:		inx				; e8 
B1_08be:		dec $0c			; c6 0c
B1_08c0:		bne B1_08b6 ; d0 f4

B1_08c2:		rts				; 60 


B1_08c3:	.db $0f
B1_08c4:	.db $0f
B1_08c5:		and ($20, x)	; 21 20
B1_08c7:	.db $0f
B1_08c8:	.db $0f
B1_08c9:	.db $07
B1_08ca:		.db $20


gameState8_substate6:
	jsr $a7b3
B1_08ce:		lda $0780		; ad 80 07
B1_08d1:		asl a			; 0a
B1_08d2:		tay				; a8 
B1_08d3:		lda $ae2b, y	; b9 2b ae
B1_08d6:		sta $0a			; 85 0a
B1_08d8:		lda $ae2c, y	; b9 2c ae
B1_08db:		sta $0b			; 85 0b
B1_08dd:		lda $0781		; ad 81 07
B1_08e0:		asl a			; 0a
B1_08e1:		tay				; a8 
B1_08e2:		lda ($0a), y	; b1 0a
B1_08e4:		sta $08			; 85 08
B1_08e6:		iny				; c8 
B1_08e7:		cmp #$ff		; c9 ff
B1_08e9:		beq B1_08f6 ; f0 0b

B1_08eb:		lda ($0a), y	; b1 0a
B1_08ed:		sta $09			; 85 09
B1_08ef:		jsr func_01_0d48		; 20 48 ad
B1_08f2:		inc $0781		; ee 81 07
B1_08f5:		rts				; 60 


B1_08f6:		lda ($0a), y	; b1 0a
B1_08f8:		cmp #$ff		; c9 ff
B1_08fa:		bne B1_08ed ; d0 f1

B1_08fc:		ldy $0780		; ac 80 07
B1_08ff:		lda $a90d, y	; b9 0d a9
B1_0902:		sta $0784		; 8d 84 07
B1_0905:		lda #$01		; a9 01
B1_0907:		sta $0782		; 8d 82 07
B1_090a:		inc wGameSubstate			; e6 19
B1_090c:		rts				; 60 


B1_090d:	.db $02
B1_090e:	.db $02
B1_090f:		.db $fe


gameState8_substate7:
	jsr $a7d5
B1_0913:		lda #$00		; a9 00
B1_0915:		ldy $0784		; ac 84 07
B1_0918:		bpl B1_091c ; 10 02

B1_091a:		lda #$ff		; a9 ff
B1_091c:		sta $01			; 85 01
B1_091e:		sec				; 38 
B1_091f:		lda $078a		; ad 8a 07
B1_0922:		sbc $0784		; ed84 07
B1_0925:		sta $078a		; 8d 8a 07
B1_0928:		lda $0782		; ad 82 07
B1_092b:		sbc $01			; e5 01
B1_092d:		sta $0782		; 8d 82 07
B1_0930:		and #$01		; 29 01
B1_0932:		sta $00			; 85 00
B1_0934:		lda $078b		; ad 8b 07
B1_0937:		and #$fe		; 29 fe
B1_0939:		ora $00			; 05 00
B1_093b:		sta $078b		; 8d 8b 07
B1_093e:		lda $078a		; ad 8a 07
B1_0941:		bne B1_094a ; d0 07

B1_0943:		lda #$00		; a9 00
B1_0945:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0948:		inc wGameSubstate			; e6 19
B1_094a:		rts				; 60 


gameState8_substate8:
B1_094b:		jsr $a7d5		; 20 d5 a7
B1_094e:		lda wPlayerStateDoubled.w		; ad 65 05
B1_0951:		cmp #$10		; c9 10
B1_0953:		beq B1_095f ; f0 0a

B1_0955:		cmp #$12		; c9 12
B1_0957:		beq B1_095f ; f0 06

B1_0959:		jsr $a7b3		; 20 b3 a7
B1_095c:		jmp $a962		; 4c 62 a9


B1_095f:		jsr $a7b9		; 20 b9 a7
B1_0962:		jsr func_01_0a05		; 20 05 aa
B1_0965:		lda wPlayerStateDoubled.w		; ad 65 05
B1_0968:		cmp #$12		; c9 12
B1_096a:		bne B1_09a4 ; d0 38

B1_096c:		lda $0780		; ad 80 07
B1_096f:		asl a			; 0a
B1_0970:		tay				; a8 
B1_0971:		lda $a9a5, y	; b9 a5 a9
B1_0974:		sta $08			; 85 08
B1_0976:		lda $a9a6, y	; b9 a6 a9
B1_0979:		sta $09			; 85 09
B1_097b:		lda $0790		; ad 90 07
B1_097e:		asl a			; 0a
B1_097f:		clc				; 18 
B1_0980:		adc $0790		; 6d 90 07
B1_0983:		tay				; a8 
B1_0984:		lda ($08), y	; b1 08
B1_0986:		sta wCurrRoomGroup			; 85 32
B1_0988:		iny				; c8 
B1_0989:		lda ($08), y	; b1 08
B1_098b:		sta wCurrRoomSection			; 85 33
B1_098d:		iny				; c8 
B1_098e:		lda ($08), y	; b1 08
B1_0990:		sta wCurrRoomIdx			; 85 34
B1_0992:		lda #$07		; a9 07
B1_0994:		sta $0160		; 8d 60 01
B1_0997:		lda #$b4		; a9 b4
B1_0999:		sta wGenericStateTimer			; 85 30
B1_099b:		ldy #$00		; a0 00
B1_099d:		sty $b4			; 84 b4
B1_099f:		iny				; c8 
B1_09a0:		sty $b5			; 84 b5
B1_09a2:		inc wGameSubstate			; e6 19
B1_09a4:		rts				; 60 


B1_09a5:	.db $ab
B1_09a6:		lda #$b4		; a9 b4
B1_09a8:		lda #$ba		; a9 ba
B1_09aa:		lda #$01		; a9 01
B1_09ac:		.db $00				; 00
B1_09ad:		.db $00				; 00
B1_09ae:		.db $00				; 00
B1_09af:		.db $00				; 00
B1_09b0:		.db $00				; 00
B1_09b1:	.db $02
B1_09b2:		.db $00				; 00
B1_09b3:		.db $00				; 00
B1_09b4:	.db $02
B1_09b5:	.db $03
B1_09b6:	.db $02
B1_09b7:		asl $00			; 06 00
B1_09b9:		ora ($07, x)	; 01 07
B1_09bb:		asl $00			; 06 00
B1_09bd:		php				; 08 
B1_09be:		.db $00				; 00
B1_09bf:		.db $00				; 00


gameState8_substate9:
B1_09c0:		dec wGenericStateTimer			; c6 30
B1_09c2:		beq B1_09cc ; f0 08

B1_09c4:		lda wGenericStateTimer			; a5 30
B1_09c6:		cmp #$30		; c9 30
B1_09c8:		bcs B1_09ce ; b0 04

B1_09ca:		bcc B1_09cf ; 90 03

B1_09cc:		inc wGameSubstate			; e6 19
B1_09ce:		rts				; 60 


B1_09cf:		lda $b4			; a5 b4
B1_09d1:		cmp #$ff		; c9 ff
B1_09d3:		beq B1_09ce ; f0 f9

B1_09d5:		lda $1d			; a5 1d
B1_09d7:		pha				; 48 
B1_09d8:		ldy $0780		; ac 80 07
B1_09db:		lda $a7aa, y	; b9 aa a7
B1_09de:		jsr displayStaticLayoutA		; 20 e9 ec
B1_09e1:		jsr $a8ad		; 20 ad a8
B1_09e4:		pla				; 68 
B1_09e5:		sta $15			; 85 15
B1_09e7:		jmp func_1f_1baf		; 4c af fb


gameState8_substateA:
B1_09ea:		jsr func_1f_0bfd		; 20 fd eb
B1_09ed:		lda $0780		; ad 80 07
B1_09f0:		bne B1_09f5 ; d0 03

B1_09f2:		jsr $90c0		; 20 c0 90
B1_09f5:		jsr $e78a		; 20 8a e7
B1_09f8:		jsr func_1f_068f		; 20 8f e6
B1_09fb:		lda #GS_IN_GAME		; a9 04
B1_09fd:		sta wGameState			; 85 18
B1_09ff:		lda #$00		; a9 00
B1_0a01:		sta wInGameSubstate			; 85 2a
B1_0a03:		rts				; 60 

gameState8_substateStub:
B1_0a04:		rts				; 60 


func_01_0a05:
B1_0a05:		lda wPlayerStateDoubled.w		; ad 65 05
B1_0a08:		cmp #$00		; c9 00
B1_0a0a:		beq B1_0a46 ; f0 3a

B1_0a0c:		cmp #$02		; c9 02
B1_0a0e:		beq B1_0a46 ; f0 36

B1_0a10:		cmp #$10		; c9 10
B1_0a12:		beq B1_0a46 ; f0 32

B1_0a14:		lda $0780		; ad 80 07
B1_0a17:		asl a			; 0a
B1_0a18:		tay				; a8 
B1_0a19:		lda wEntityBaseX.w		; ad 38 04
B1_0a1c:		cmp $aa61, y	; d9 61 aa
B1_0a1f:		bcc B1_0a26 ; 90 05

B1_0a21:		cmp $aa62, y	; d9 62 aa
B1_0a24:		bcc B1_0a46 ; 90 20

B1_0a26:		lda wEntityFacingLeft.w		; ad a8 04
B1_0a29:		asl a			; 0a
B1_0a2a:		tay				; a8 
B1_0a2b:		lda $aa67, y	; b9 67 aa
B1_0a2e:		sta wEntityHorizSpeed.w		; 8d f2 04
B1_0a31:		lda $aa68, y	; b9 68 aa
B1_0a34:		sta wEntityHorizSubSpeed.w		; 8d 09 05
B1_0a37:		lda #$10		; a9 10
B1_0a39:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0a3c:		lda #$58		; a9 58
B1_0a3e:		sta $0787		; 8d 87 07
B1_0a41:		lda #$00		; a9 00
B1_0a43:		jsr $ef57		; 20 57 ef
B1_0a46:		ldy wPlayerStateDoubled.w		; ac 65 05
B1_0a49:		jsr jumpTableNoPreserveY		; 20 86 e8
	.dw $aa6b
	.dw $aaf0
	.dw $ab2a
	.dw $abbb
	.dw $ac89
	.dw $ac9d
	.dw $aca8
	.dw func_01_0cea
	.dw $aaf0
	.dw func_01_0a60

func_01_0a60:
B1_0a60:		rts				; 60 


B1_0a61:		.db $00				; 00
B1_0a62:		cpy #$00		; c0 00
B1_0a64:		cpy #$40		; c0 40
B1_0a66:	.db $ff
B1_0a67:		.db $00				; 00
B1_0a68:		cpy #$ff		; c0 ff
B1_0a6a:		rti				; 40 


B1_0a6b:		ldy wCurrPlayer.w		; ac 4e 05
B1_0a6e:		lda $aada, y	; b9 da aa
B1_0a71:		sta wEntityOamSpecGroupDoubled.w		; 8d 8c 04
B1_0a74:		lda #$02		; a9 02
B1_0a76:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B1_0a79:		lda $0780		; ad 80 07
B1_0a7c:		asl a			; 0a
B1_0a7d:		sta $00			; 85 00
B1_0a7f:		asl a			; 0a
B1_0a80:		clc				; 18 
B1_0a81:		adc $00			; 65 00
B1_0a83:		tay				; a8 
B1_0a84:		lda $aade, y	; b9 de aa
B1_0a87:		sta wEntityBaseX.w		; 8d 38 04
B1_0a8a:		lda $aadf, y	; b9 df aa
B1_0a8d:		ldx wCurrPlayer.w		; ae 4e 05
B1_0a90:		cpx #$02		; e0 02
B1_0a92:		bne B1_0a97 ; d0 03

B1_0a94:		clc				; 18 
B1_0a95:		adc #$04		; 69 04
B1_0a97:		sta wEntityBaseY.w		; 8d 1c 04
B1_0a9a:		lda $aae0, y	; b9 e0 aa
B1_0a9d:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0aa0:		lda $aae1, y	; b9 e1 aa
B1_0aa3:		sta wEntityHorizSpeed.w		; 8d f2 04
B1_0aa6:		lda $aae2, y	; b9 e2 aa
B1_0aa9:		sta wEntityHorizSubSpeed.w		; 8d 09 05
B1_0aac:		lda $aae3, y	; b9 e3 aa
B1_0aaf:		sta $0790		; 8d 90 07
B1_0ab2:		lda #$44		; a9 44
B1_0ab4:		sta $0787		; 8d 87 07
B1_0ab7:		lda #$00		; a9 00
B1_0ab9:		sta $68			; 85 68
B1_0abb:		sta wCurrScrollXWithinRoom			; 85 56
B1_0abd:		sta wCurrScrollXRoom			; 85 57
B1_0abf:		lda $0780		; ad 80 07
B1_0ac2:		asl a			; 0a
B1_0ac3:		tay				; a8 
B1_0ac4:		lda data_01_0d96.w, y	; b9 96 ad
B1_0ac7:		sta $69			; 85 69
B1_0ac9:		lda data_01_0d96.w+1, y	; b9 97 ad
B1_0acc:		sta $6a			; 85 6a
B1_0ace:		lda #$00		; a9 00
B1_0ad0:		jsr $ef57		; 20 57 ef
B1_0ad3:		inc wPlayerStateDoubled.w		; ee 65 05
B1_0ad6:		inc wPlayerStateDoubled.w		; ee 65 05
B1_0ad9:		rts				; 60 


B1_0ada:		.db $00				; 00
B1_0adb:	.db $02
B1_0adc:	.db $04
B1_0add:		asl $08			; 06 08
B1_0adf:		ldy #$00		; a0 00
B1_0ae1:		.db $00				; 00
B1_0ae2:		cpy #$01		; c0 01
B1_0ae4:		php				; 08 
B1_0ae5:	.db $80
B1_0ae6:		.db $00				; 00
B1_0ae7:		.db $00				; 00
B1_0ae8:		cpy #$00		; c0 00
B1_0aea:		sed				; f8 
B1_0aeb:	.db $80
B1_0aec:		ora ($ff, x)	; 01 ff
B1_0aee:		rti				; 40 


B1_0aef:		.db $00				; 00
B1_0af0:		lda wGameStateLoopCounter			; a5 1a
B1_0af2:		and #$0f		; 29 0f
B1_0af4:		bne B1_0afb ; d0 05

B1_0af6:		lda #$09		; a9 09
B1_0af8:		jsr playSound		; 20 5f e2
B1_0afb:		jsr updatePlayerAnimationFrame		; 20 73 ef
B1_0afe:		lda $04c4		; ad c4 04
B1_0b01:		clc				; 18 
B1_0b02:		adc wEntityHorizSubSpeed.w		; 6d 09 05
B1_0b05:		sta $04c4		; 8d c4 04
B1_0b08:		lda wEntityBaseX.w		; ad 38 04
B1_0b0b:		adc wEntityHorizSpeed.w		; 6d f2 04
B1_0b0e:		sta wEntityBaseX.w		; 8d 38 04
B1_0b11:		cmp #$fe		; c9 fe
B1_0b13:		bcs B1_0b1e ; b0 09

B1_0b15:		cmp #$02		; c9 02
B1_0b17:		bcc B1_0b1e ; 90 05

B1_0b19:		dec $0787		; ce 87 07
B1_0b1c:		bne B1_0b29 ; d0 0b

B1_0b1e:		lda #$00		; a9 00
B1_0b20:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B1_0b23:		inc wPlayerStateDoubled.w		; ee 65 05
B1_0b26:		inc wPlayerStateDoubled.w		; ee 65 05
B1_0b29:		rts				; 60 


B1_0b2a:		lda wJoy1ButtonsPressed			; a5 28
B1_0b2c:		lsr a			; 4a
B1_0b2d:		bcs B1_0ba0 ; b0 71

B1_0b2f:		lsr a			; 4a
B1_0b30:		bcs B1_0ba4 ; b0 72

B1_0b32:		lsr a			; 4a
B1_0b33:		bcs B1_0b3e ; b0 09

B1_0b35:		lsr a			; 4a
B1_0b36:		bcs B1_0b4c ; b0 14

B1_0b38:		lda #$02		; a9 02
B1_0b3a:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B1_0b3d:		rts				; 60 


B1_0b3e:		jsr secIfcanClimbDownStairs		; 20 d4 e6
B1_0b41:		bcc B1_0b38 ; 90 f5

B1_0b43:		lda #$00		; a9 00
B1_0b45:		sta wEntityPhase.w		; 8d c1 05
B1_0b48:		ldx #$01		; a2 01
B1_0b4a:		bne B1_0b58 ; d0 0c

B1_0b4c:		jsr secIfcanClimbUpStairs		; 20 df e6
B1_0b4f:		bcc B1_0b38 ; 90 e7

B1_0b51:		lda #$01		; a9 01
B1_0b53:		sta wEntityPhase.w		; 8d c1 05
B1_0b56:		ldx #$00		; a2 00
B1_0b58:		ldy #$00		; a0 00
B1_0b5a:		lda $0a			; a5 0a
B1_0b5c:		asl a			; 0a
B1_0b5d:		bcc B1_0b64 ; 90 05

B1_0b5f:		txa				; 8a 
B1_0b60:		eor #$01		; 49 01
B1_0b62:		tax				; aa 
B1_0b63:		iny				; c8 
B1_0b64:		sty wEntityAI_idx.w		; 8c ef 05
B1_0b67:		stx wEntityFacingLeft.w		; 8e a8 04
B1_0b6a:		lda $0b			; a5 0b
B1_0b6c:		sta wPixelsToWalkToStairs.w		; 8d 1d 06
B1_0b6f:		ldy #$00		; a0 00
B1_0b71:		asl a			; 0a
B1_0b72:		bcc B1_0b75 ; 90 01

B1_0b74:		iny				; c8 
B1_0b75:		sty $0606		; 8c 06 06
B1_0b78:		lda $0d			; a5 0d
B1_0b7a:		beq B1_0b82 ; f0 06

B1_0b7c:		lda #$ff		; a9 ff
B1_0b7e:		ldy #$00		; a0 00
B1_0b80:		beq B1_0b86 ; f0 04

B1_0b82:		lda #$01		; a9 01
B1_0b84:		ldy #$00		; a0 00
B1_0b86:		sty wEntityHorizSubSpeed.w		; 8c 09 05
B1_0b89:		sta wEntityHorizSpeed.w		; 8d f2 04
B1_0b8c:		lda #$08		; a9 08
B1_0b8e:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0b91:		lda #$00		; a9 00
B1_0b93:		sta wEntityAnimationDefIdxInSpecGroup.w		; 8d aa 05
B1_0b96:		ldy #$02		; a0 02
B1_0b98:		sty wEntityOamSpecIdxBaseOffset.w		; 8c 93 05
B1_0b9b:		dey				; 88 
B1_0b9c:		sty wEntityTimeUntilNextAnimation.w		; 8c 7c 05
B1_0b9f:		rts				; 60 


B1_0ba0:		lda #$00		; a9 00
B1_0ba2:		beq B1_0ba6 ; f0 02

B1_0ba4:		lda #$01		; a9 01
B1_0ba6:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0ba9:		lda #$00		; a9 00
B1_0bab:		sta wEntityHorizSpeed.w		; 8d f2 04
B1_0bae:		sta wEntityHorizSubSpeed.w		; 8d 09 05
B1_0bb1:		lda #$06		; a9 06
B1_0bb3:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0bb6:		lda #$00		; a9 00
B1_0bb8:		jmp $ab93		; 4c 93 ab


B1_0bbb:		lda wJoy1ButtonsPressed			; a5 28
B1_0bbd:		lsr a			; 4a
B1_0bbe:		bcs B1_0bdf ; b0 1f

B1_0bc0:		lsr a			; 4a
B1_0bc1:		bcs B1_0bfc ; b0 39

B1_0bc3:		lda #$04		; a9 04
B1_0bc5:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0bc8:		jsr updatePlayerAnimationFrame		; 20 73 ef
B1_0bcb:		lda $04c4		; ad c4 04
B1_0bce:		clc				; 18 
B1_0bcf:		adc wEntityHorizSubSpeed.w		; 6d 09 05
B1_0bd2:		sta $04c4		; 8d c4 04
B1_0bd5:		lda wEntityBaseX.w		; ad 38 04
B1_0bd8:		adc wEntityHorizSpeed.w		; 6d f2 04
B1_0bdb:		sta wEntityBaseX.w		; 8d 38 04
B1_0bde:		rts				; 60 


B1_0bdf:		lda #$00		; a9 00
B1_0be1:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0be4:		jsr $ac28		; 20 28 ac
B1_0be7:		ldy #$02		; a0 02
B1_0be9:		lda ($0a), y	; b1 0a
B1_0beb:		cmp wEntityBaseX.w		; cd 38 04
B1_0bee:		bcc B1_0bf7 ; 90 07

B1_0bf0:		lda #$01		; a9 01
B1_0bf2:		ldy #$00		; a0 00
B1_0bf4:		jmp $ac11		; 4c 11 ac


B1_0bf7:		lda #$00		; a9 00
B1_0bf9:		tay				; a8 
B1_0bfa:		beq B1_0c11 ; f0 15

B1_0bfc:		lda #$01		; a9 01
B1_0bfe:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0c01:		jsr $ac28		; 20 28 ac
B1_0c04:		ldy #$01		; a0 01
B1_0c06:		lda ($0a), y	; b1 0a
B1_0c08:		cmp wEntityBaseX.w		; cd 38 04
B1_0c0b:		bcs B1_0bf7 ; b0 ea

B1_0c0d:		lda #$ff		; a9 ff
B1_0c0f:		ldy #$00		; a0 00
B1_0c11:		sty wEntityHorizSubSpeed.w		; 8c 09 05
B1_0c14:		sta wEntityHorizSpeed.w		; 8d f2 04
B1_0c17:		lda #$00		; a9 00
B1_0c19:		sta wEntityVertSpeed.w		; 8d 20 05
B1_0c1c:		sta wEntityVertSubSpeed.w		; 8d 37 05
B1_0c1f:		jmp $abc8		; 4c c8 ab


B1_0c22:		lda #$ff		; a9 ff
B1_0c24:		ldy #$e0		; a0 e0
B1_0c26:		bne B1_0c11 ; d0 e9

B1_0c28:		lda $0780		; ad 80 07
B1_0c2b:		asl a			; 0a
B1_0c2c:		tay				; a8 
B1_0c2d:		lda data_01_0dae.w, y	; b9 ae ad
B1_0c30:		sta $08			; 85 08
B1_0c32:		lda data_01_0dae.w+1, y	; b9 af ad
B1_0c35:		sta $09			; 85 09
B1_0c37:		lda $0790		; ad 90 07
B1_0c3a:		asl a			; 0a
B1_0c3b:		tay				; a8 
B1_0c3c:		lda ($08), y	; b1 08
B1_0c3e:		sta $0a			; 85 0a
B1_0c40:		iny				; c8 
B1_0c41:		lda ($08), y	; b1 08
B1_0c43:		sta $0b			; 85 0b
B1_0c45:		rts				; 60 


B1_0c46:		lda $0780		; ad 80 07
B1_0c49:		asl a			; 0a
B1_0c4a:		tay				; a8 
B1_0c4b:		lda $ad9c, y	; b9 9c ad
B1_0c4e:		sta $08			; 85 08
B1_0c50:		lda $ad9d, y	; b9 9d ad
B1_0c53:		sta $09			; 85 09
B1_0c55:		ldy #$00		; a0 00
B1_0c57:		lda ($08), y	; b1 08
B1_0c59:		cmp #$ff		; c9 ff
B1_0c5b:		beq B1_0c7f ; f0 22

B1_0c5d:		sta $00			; 85 00
B1_0c5f:		ldx wCurrPlayer.w		; ae 4e 05
B1_0c62:		cpx #$02		; e0 02
B1_0c64:		bne B1_0c6b ; d0 05

B1_0c66:		clc				; 18 
B1_0c67:		adc #$04		; 69 04
B1_0c69:		sta $00			; 85 00
B1_0c6b:		lda $00			; a5 00
B1_0c6d:		sec				; 38 
B1_0c6e:		sbc wEntityBaseY.w		; ed1c 04
B1_0c71:		bcs B1_0c77 ; b0 04

B1_0c73:		eor #$ff		; 49 ff
B1_0c75:		adc #$01		; 69 01
B1_0c77:		cmp #$04		; c9 04
B1_0c79:		bcc B1_0c81 ; 90 06

B1_0c7b:		iny				; c8 
B1_0c7c:		iny				; c8 
B1_0c7d:		bne B1_0c57 ; d0 d8

B1_0c7f:		clc				; 18 
B1_0c80:		rts				; 60 


B1_0c81:		lda $00			; a5 00
B1_0c83:		tax				; aa 
B1_0c84:		iny				; c8 
B1_0c85:		lda ($08), y	; b1 08
B1_0c87:		sec				; 38 
B1_0c88:		rts				; 60 


B1_0c89:		lda wPixelsToWalkToStairs.w		; ad 1d 06
B1_0c8c:		beq B1_0c97 ; f0 09

B1_0c8e:		dec wPixelsToWalkToStairs.w		; ce 1d 06
B1_0c91:		jsr updatePlayerAnimationFrame		; 20 73 ef
B1_0c94:		jmp $abcb		; 4c cb ab


B1_0c97:		lda #$0a		; a9 0a
B1_0c99:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0c9c:		rts				; 60 


B1_0c9d:		lda wEntityPhase.w		; ad c1 05
B1_0ca0:		bne B1_0ca5 ; d0 03

B1_0ca2:		jmp func_01_0d3c		; 4c 3c ad

B1_0ca5:		jmp func_01_0d33		; 4c 33 ad


B1_0ca8:		lda wJoy1ButtonsPressed			; a5 28
B1_0caa:		lsr a			; 4a
B1_0cab:		bcs B1_0cba ; b0 0d

B1_0cad:		lsr a			; 4a
B1_0cae:		bcs B1_0cd2 ; b0 22

B1_0cb0:		lsr a			; 4a
B1_0cb1:		bcc B1_0cb6 ; 90 03

B1_0cb3:		jmp func_01_0d3c		; 4c 3c ad

B1_0cb6:		lsr a			; 4a
B1_0cb7:		bcs B1_0d33 ; b0 7a

B1_0cb9:		rts				; 60 

B1_0cba:		lda #$00		; a9 00
B1_0cbc:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0cbf:		lda wEntityAI_idx.w		; ad ef 05
B1_0cc2:		beq B1_0ccb ; f0 07

B1_0cc4:		ldx #$00		; a2 00
B1_0cc6:		ldy #$00		; a0 00
B1_0cc8:		jmp func_01_0d42		; 4c 42 ad

B1_0ccb:		ldx #$02		; a2 02
B1_0ccd:		ldy #$08		; a0 08
B1_0ccf:		jmp func_01_0d42		; 4c 42 ad

B1_0cd2:		lda #$01		; a9 01
B1_0cd4:		sta wEntityFacingLeft.w		; 8d a8 04
B1_0cd7:		lda wEntityAI_idx.w		; ad ef 05
B1_0cda:		beq B1_0ce3 ; f0 07

B1_0cdc:		ldx #$02		; a2 02
B1_0cde:		ldy #$0c		; a0 0c
B1_0ce0:		jmp func_01_0d42		; 4c 42 ad

B1_0ce3:		ldx #$00		; a2 00
B1_0ce5:		ldy #$04		; a0 04
B1_0ce7:		jmp func_01_0d42		; 4c 42 ad


func_01_0cea:
B1_0cea:		jsr $abcb		; 20 cb ab
B1_0ced:		lda $04db		; ad db 04
B1_0cf0:		clc				; 18 
B1_0cf1:		adc wEntityVertSubSpeed.w		; 6d 37 05
B1_0cf4:		sta $04db		; 8d db 04
B1_0cf7:		lda wEntityBaseY.w		; ad 1c 04
B1_0cfa:		adc wEntityVertSpeed.w		; 6d 20 05
B1_0cfd:		sta wEntityBaseY.w		; 8d 1c 04
B1_0d00:		lda wPixelsToWalkToStairs.w		; ad 1d 06
B1_0d03:		beq B1_0d14 ; f0 0f

B1_0d05:		dec wPixelsToWalkToStairs.w		; ce 1d 06
B1_0d08:		lda wEntityTimeUntilNextAnimation.w		; ad 7c 05
B1_0d0b:		beq B1_0d11 ; f0 04

B1_0d0d:		dec wEntityTimeUntilNextAnimation.w		; ce 7c 05
B1_0d10:		rts				; 60 

B1_0d11:		jmp $e6ea		; 4c ea e6

B1_0d14:		lda #$00		; a9 00
B1_0d16:		sta $04c4		; 8d c4 04
B1_0d19:		sta $04db		; 8d db 04
B1_0d1c:		jsr $ac46		; 20 46 ac
B1_0d1f:		bcc B1_0d2d ; 90 0c

B1_0d21:		sta $0790		; 8d 90 07
B1_0d24:		stx wEntityBaseY.w		; 8e 1c 04
B1_0d27:		lda #$04		; a9 04
B1_0d29:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0d2c:		rts				; 60 

B1_0d2d:		lda #$0c		; a9 0c
B1_0d2f:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0d32:		rts				; 60 


func_01_0d33:
B1_0d33:		jsr setPlayerDetailsWalkingStairsDownRight		; 20 f5 e6
B1_0d36:		lda #$0e		; a9 0e
B1_0d38:		sta wPlayerStateDoubled.w		; 8d 65 05
B1_0d3b:		rts				; 60 


func_01_0d3c:
B1_0d3c:		jsr setPlayerDetailsWalkingStairsUpRight		; 20 00 e7
B1_0d3f:		jmp $ad36		; 4c 36 ad


func_01_0d42:
B1_0d42:		jsr $e70b		; 20 0b e7
B1_0d45:		jmp $ad36		; 4c 36 ad


func_01_0d48:
B1_0d48:		ldy #$00		; a0 00
B1_0d4a:		lda ($08), y	; b1 08
B1_0d4c:		sta wVramQueueDest+1			; 85 62
B1_0d4e:		iny				; c8 
B1_0d4f:		lda ($08), y	; b1 08
B1_0d51:		sta wVramQueueDest			; 85 61
B1_0d53:		iny				; c8 
B1_0d54:		jsr vramQueueSet1byteDestToCopy_noData		; 20 b5 e8
B1_0d57:		lda ($08), y	; b1 08
B1_0d59:		beq B1_0d76 ; f0 1b

B1_0d5b:		cmp #$ff		; c9 ff
B1_0d5d:		beq B1_0d91 ; f0 32

B1_0d5f:		cmp #$fe		; c9 fe
B1_0d61:		beq B1_0d89 ; f0 26

B1_0d63:		iny				; c8 
B1_0d64:		lda ($08), y	; b1 08
B1_0d66:		sta $0a			; 85 0a
B1_0d68:		iny				; c8 
B1_0d69:		lda ($08), y	; b1 08
B1_0d6b:		sta wVramQueue.w, x	; 9d 00 03
B1_0d6e:		iny				; c8 
B1_0d6f:		inx				; e8 
B1_0d70:		dec $0a			; c6 0a
B1_0d72:		bne B1_0d69 ; d0 f5

B1_0d74:		beq B1_0d57 ; f0 e1

B1_0d76:		iny				; c8 
B1_0d77:		lda ($08), y	; b1 08
B1_0d79:		sta $0a			; 85 0a
B1_0d7b:		iny				; c8 
B1_0d7c:		lda ($08), y	; b1 08
B1_0d7e:		iny				; c8 
B1_0d7f:		sta wVramQueue.w, x	; 9d 00 03
B1_0d82:		inx				; e8 
B1_0d83:		dec $0a			; c6 0a
B1_0d85:		bne B1_0d7f ; d0 f8

B1_0d87:		beq B1_0d57 ; f0 ce

B1_0d89:		stx wVramQueueNextIdxToFill			; 86 1d
B1_0d8b:		jsr terminateVramQueue		; 20 12 ed
B1_0d8e:		iny				; c8 
B1_0d8f:		bne B1_0d4a ; d0 b9

B1_0d91:		stx wVramQueueNextIdxToFill			; 86 1d
B1_0d93:		jmp terminateVramQueue		; 4c 12 ed


data_01_0d96:
	.dw $b864
	.dw $b871
	.dw $b878
	.dw $ada2
	.dw $ada9
	.dw $ada9

B1_0da2:	.db $80
B1_0da3:		.db $00				; 00
B1_0da4:		ldy #$01		; a0 01
B1_0da6:		cpy #$02		; c0 02
B1_0da8:	.db $ff
B1_0da9:	.db $80
B1_0daa:		.db $00				; 00
B1_0dab:		cpy #$01		; c0 01
B1_0dad:	.db $ff


data_01_0dae:
	.dw data_01_0db4
	.dw data_01_0dba
	.dw data_01_0dbe

data_01_0db4:
	.dw $adc2
	.dw $adc5
	.dw $adc8

data_01_0dba:
	.dw $adcb
	.dw $adce

data_01_0dbe:
	.dw $add1
	.dw $add4

B1_0dc2:	.db $80
B1_0dc3:	.db $80
B1_0dc4:		sed				; f8 
B1_0dc5:		ldy #$08		; a0 08
B1_0dc7:	.db $80
B1_0dc8:		cpy #$70		; c0 70
B1_0dca:		sed				; f8 
B1_0dcb:	.db $80
B1_0dcc:		php				; 08 
B1_0dcd:		sed				; f8 
B1_0dce:		cpy #$88		; c0 88
B1_0dd0:		sed				; f8 
B1_0dd1:	.db $80
B1_0dd2:		php				; 08 
B1_0dd3:		sed				; f8 
B1_0dd4:		cpy #$08		; c0 08
B1_0dd6:	.db $80


data_01_0dd7:
	.dw $addd
	.dw $adf3
	.dw $ae09

B1_0ddd:		ldy #$59		; a0 59
B1_0ddf:		and ($a2, x)	; 21 a2
B1_0de1:	.db $80
B1_0de2:		and #$d6		; 29 d6
B1_0de4:		bvs B1_0e0e ; 70 28

B1_0de6:		cld				; d8 
B1_0de7:	.db $72
B1_0de8:		ora $6aa4		; 0d a4 6a
B1_0deb:		bmi B1_0d93 ; 30 a6

B1_0ded:		adc ($4d, x)	; 61 4d
B1_0def:		dec $6e, x		; d6 6e
B1_0df1:		bit $ff			; 24 ff
B1_0df3:		ldx $65			; a6 65
B1_0df5:		and $7fa8		; 2d a8 7f
B1_0df8:	.db $3f
B1_0df9:		dec $71, x		; d6 71
B1_0dfb:		and $89d8		; 2d d8 89
B1_0dfe:	.db $3b
B1_0dff:	.db $b2
B1_0e00:		ror $d648		; 6e 48 d6
B1_0e03:		adc ($2d), y	; 71 2d
B1_0e05:		cld				; d8 
B1_0e06:		sei				; 78 
B1_0e07:		eor $b4ff		; 4d ff b4
B1_0e0a:	.db $64
B1_0e0b:		jmp $8ab6		; 4c b6 8a


B1_0e0e:		and $7bd6, x	; 3d d6 7b
B1_0e11:		bmi B1_0deb ; 30 d8

B1_0e13:	.db $8b
B1_0e14:	.db $22
B1_0e15:		clv				; b8 
B1_0e16:		sta $d64c, x	; 9d 4c d6
B1_0e19:	.db $80
B1_0e1a:	.db $32
B1_0e1b:		cld				; d8 
B1_0e1c:		lda #$37		; a9 37
B1_0e1e:	.db $ff


data_01_0e1f:
	.dw data_01_0ea3
	.dw data_01_0eaf
	.dw data_01_0ebb

	.dw data_01_0e31
	.dw data_01_0e43
	.dw data_01_0e55
	.dw data_01_0e67
	.dw data_01_0e7b
	.dw data_01_0e8f

data_01_0e31:
	.dw $aec7
	.dw $aed3
	.dw $aeeb
	.dw $af03
	.dw $af1b
	.dw $af4b
	.dw $af7b
	.dw $afab
	.dw $ffff

data_01_0e43:
	.dw $aec7
	.dw $aedf
	.dw $aef7
	.dw $af0f
	.dw $af3f
	.dw $af6f
	.dw $af9f
	.dw $afcf
	.dw $ffff

data_01_0e55:
	.dw $aec7
	.dw $aedf
	.dw $aef7
	.dw $af0f
	.dw $af27
	.dw $af57
	.dw $af87
	.dw $afb7
	.dw $ffff

data_01_0e67:
	.dw $b12d
	.dw $b142
	.dw $b169
	.dw $b18c
	.dw $b1c2
	.dw $b1ec
	.dw $b222
	.dw $b23c
	.dw $b24e
	.dw $ffff

data_01_0e7b:
	.dw $afdb
	.dw $aff7
	.dw $b03c
	.dw $b061
	.dw $b082
	.dw $b0a1
	.dw $b0c6
	.dw $b0ec
	.dw $b0fb
	.dw $ffff

data_01_0e8f:
	.dw $b288
	.dw $b2ad
	.dw $b2f2
	.dw $b317
	.dw $b333
	.dw $b353
	.dw $b37d
	.dw $b3a2
	.dw $b3b1
	.dw $ffff

data_01_0ea3:
B1_0ea3:	.db $23
B1_0ea4:		bne B1_0ea6 ; d0 00

B1_0ea6:		ora $00			; 05 00
B1_0ea8:		inc $d823, x	; fe 23 d8
B1_0eab:		.db $00				; 00
B1_0eac:		ora $00			; 05 00
B1_0eae:	.db $ff


data_01_0eaf:
B1_0eaf:	.db $23
B1_0eb0:		cld				; d8 
B1_0eb1:		.db $00				; 00
B1_0eb2:	.db $04
B1_0eb3:		.db $00				; 00
B1_0eb4:		inc $e023, x	; fe 23 e0
B1_0eb7:		.db $00				; 00
B1_0eb8:	.db $04
B1_0eb9:		.db $00				; 00
B1_0eba:	.db $ff


data_01_0ebb:
B1_0ebb:	.db $23
B1_0ebc:	.db $db
B1_0ebd:		.db $00				; 00
B1_0ebe:	.db $04
B1_0ebf:		.db $00				; 00
B1_0ec0:		inc $e323, x	; fe 23 e3
B1_0ec3:		.db $00				; 00
B1_0ec4:	.db $04
B1_0ec5:		.db $00				; 00
B1_0ec6:	.db $ff



B1_0ec7:	.db $20 $83 $00
B1_0eca:	.db $1a
B1_0ecb:		.db $00				; 00
B1_0ecc:		inc $a320, x	; fe 20 a3
B1_0ecf:		.db $00				; 00
B1_0ed0:	.db $1a
B1_0ed1:		.db $00				; 00
B1_0ed2:	.db $ff
B1_0ed3:	.db $20 $c3 $00
B1_0ed6:	.db $1a
B1_0ed7:		.db $00				; 00
B1_0ed8:		inc $e320, x	; fe 20 e3
B1_0edb:		.db $00				; 00
B1_0edc:	.db $1a
B1_0edd:		.db $00				; 00
B1_0ede:	.db $ff
B1_0edf:	.db $20 $c3 $00
B1_0ee2:	.db $1a
B1_0ee3:		.db $00				; 00
B1_0ee4:		inc $e320, x	; fe 20 e3
B1_0ee7:		.db $00				; 00
B1_0ee8:	.db $1a
B1_0ee9:		.db $00				; 00
B1_0eea:	.db $ff
B1_0eeb:		and ($14, x)	; 21 14
B1_0eed:		.db $00				; 00
B1_0eee:		ora #$00		; 09 00
B1_0ef0:		inc $3421, x	; fe 21 34
B1_0ef3:		.db $00				; 00
B1_0ef4:		ora #$00		; 09 00
B1_0ef6:	.db $ff
B1_0ef7:		and ($03, x)	; 21 03
B1_0ef9:		.db $00				; 00
B1_0efa:	.db $1a
B1_0efb:		.db $00				; 00
B1_0efc:		inc $2321, x	; fe 21 23
B1_0eff:		.db $00				; 00
B1_0f00:	.db $1a
B1_0f01:		.db $00				; 00
B1_0f02:	.db $ff
B1_0f03:		and ($54, x)	; 21 54
B1_0f05:		.db $00				; 00
B1_0f06:		ora #$00		; 09 00
B1_0f08:		inc $7421, x	; fe 21 74
B1_0f0b:		.db $00				; 00
B1_0f0c:		ora #$00		; 09 00
B1_0f0e:	.db $ff
B1_0f0f:		and ($43, x)	; 21 43
B1_0f11:		.db $00				; 00
B1_0f12:	.db $1a
B1_0f13:		.db $00				; 00
B1_0f14:		inc $6321, x	; fe 21 63
B1_0f17:		.db $00				; 00
B1_0f18:	.db $1a
B1_0f19:		.db $00				; 00
B1_0f1a:	.db $ff
B1_0f1b:		and ($94, x)	; 21 94
B1_0f1d:		.db $00				; 00
B1_0f1e:		ora #$00		; 09 00
B1_0f20:		inc $b421, x	; fe 21 b4
B1_0f23:		.db $00				; 00
B1_0f24:		ora #$00		; 09 00
B1_0f26:	.db $ff
B1_0f27:		and ($83, x)	; 21 83
B1_0f29:		.db $00				; 00
B1_0f2a:		ora #$00		; 09 00
B1_0f2c:		inc $9c21, x	; fe 21 9c
B1_0f2f:		.db $00				; 00
B1_0f30:		ora ($00, x)	; 01 00
B1_0f32:		inc $a321, x	; fe 21 a3
B1_0f35:		.db $00				; 00
B1_0f36:		ora #$00		; 09 00
B1_0f38:		inc $bc21, x	; fe 21 bc
B1_0f3b:		.db $00				; 00
B1_0f3c:		ora ($00, x)	; 01 00
B1_0f3e:	.db $ff
B1_0f3f:		and ($90, x)	; 21 90
B1_0f41:		.db $00				; 00
B1_0f42:		ora $fe00		; 0d 00 fe
B1_0f45:		and ($b0, x)	; 21 b0
B1_0f47:		.db $00				; 00
B1_0f48:		ora $ff00		; 0d 00 ff
B1_0f4b:		and ($d4, x)	; 21 d4
B1_0f4d:		.db $00				; 00
B1_0f4e:		ora #$00		; 09 00
B1_0f50:		inc $f421, x	; fe 21 f4
B1_0f53:		.db $00				; 00
B1_0f54:		ora #$00		; 09 00
B1_0f56:	.db $ff
B1_0f57:		and ($c3, x)	; 21 c3
B1_0f59:		.db $00				; 00
B1_0f5a:		ora #$00		; 09 00
B1_0f5c:		inc $dc21, x	; fe 21 dc
B1_0f5f:		.db $00				; 00
B1_0f60:		ora ($00, x)	; 01 00
B1_0f62:		inc $e321, x	; fe 21 e3
B1_0f65:		.db $00				; 00
B1_0f66:		ora #$00		; 09 00
B1_0f68:		inc $fc21, x	; fe 21 fc
B1_0f6b:		.db $00				; 00
B1_0f6c:		ora ($00, x)	; 01 00
B1_0f6e:	.db $ff
B1_0f6f:		and ($d0, x)	; 21 d0
B1_0f71:		.db $00				; 00
B1_0f72:		ora $fe00		; 0d 00 fe
B1_0f75:		and ($f0, x)	; 21 f0
B1_0f77:		.db $00				; 00
B1_0f78:		ora $ff00		; 0d 00 ff
B1_0f7b:	.db $22
B1_0f7c:	.db $03
B1_0f7d:		.db $00				; 00
B1_0f7e:	.db $1a
B1_0f7f:		.db $00				; 00
B1_0f80:		inc $2322, x	; fe 22 23
B1_0f83:		.db $00				; 00
B1_0f84:	.db $1a
B1_0f85:		.db $00				; 00
B1_0f86:	.db $ff
B1_0f87:	.db $22
B1_0f88:	.db $03
B1_0f89:		.db $00				; 00
B1_0f8a:		ora #$00		; 09 00
B1_0f8c:		inc $1c22, x	; fe 22 1c
B1_0f8f:		.db $00				; 00
B1_0f90:		ora ($00, x)	; 01 00
B1_0f92:		inc $2322, x	; fe 22 23
B1_0f95:		.db $00				; 00
B1_0f96:		ora #$00		; 09 00
B1_0f98:		inc $3c22, x	; fe 22 3c
B1_0f9b:		.db $00				; 00
B1_0f9c:		ora ($00, x)	; 01 00
B1_0f9e:	.db $ff
B1_0f9f:	.db $22
B1_0fa0:		bpl B1_0fa2 ; 10 00

B1_0fa2:		ora $fe00		; 0d 00 fe
B1_0fa5:	.db $22
B1_0fa6:		bmi B1_0fa8 ; 30 00

B1_0fa8:		ora $ff00		; 0d 00 ff
B1_0fab:	.db $22
B1_0fac:	.db $43
B1_0fad:		.db $00				; 00
B1_0fae:	.db $1a
B1_0faf:		.db $00				; 00
B1_0fb0:		inc $6322, x	; fe 22 63
B1_0fb3:		.db $00				; 00
B1_0fb4:	.db $1a
B1_0fb5:		.db $00				; 00
B1_0fb6:	.db $ff
B1_0fb7:	.db $22
B1_0fb8:	.db $43
B1_0fb9:		.db $00				; 00
B1_0fba:		ora #$00		; 09 00
B1_0fbc:		inc $5c22, x	; fe 22 5c
B1_0fbf:		.db $00				; 00
B1_0fc0:		ora ($00, x)	; 01 00
B1_0fc2:		inc $6322, x	; fe 22 63
B1_0fc5:		.db $00				; 00
B1_0fc6:		ora #$00		; 09 00
B1_0fc8:		inc $7c22, x	; fe 22 7c
B1_0fcb:		.db $00				; 00
B1_0fcc:		ora ($00, x)	; 01 00
B1_0fce:	.db $ff
B1_0fcf:	.db $22
B1_0fd0:		bvc B1_0fd2 ; 50 00

B1_0fd2:		ora $fe00		; 0d 00 fe
B1_0fd5:	.db $22
B1_0fd6:		bvs B1_0fd8 ; 70 00

B1_0fd8:		ora $ff00		; 0d 00 ff
B1_0fdb:	.db $23
B1_0fdc:		jsr $0c00		; 20 00 0c
B1_0fdf:		.db $00				; 00
B1_0fe0:	.db $80
B1_0fe1:	.db $14
B1_0fe2:	.db $7a
B1_0fe3:		.db $00				; 00
B1_0fe4:		eor $82			; 45 82
B1_0fe6:		eor $82			; 45 82
B1_0fe8:		.db $00				; 00
B1_0fe9:		.db $00				; 00
B1_0fea:		eor $44			; 45 44
B1_0fec:		eor $46			; 45 46
B1_0fee:		lsr $46, x		; 56 46
B1_0ff0:		.db $00				; 00
B1_0ff1:		lsr $56			; 46 56
B1_0ff3:		.db $00				; 00
B1_0ff4:		.db $00				; 00
B1_0ff5:		.db $00				; 00
B1_0ff6:	.db $ff
B1_0ff7:	.db $23
B1_0ff8:		rti				; 40 


B1_0ff9:	.db $80
B1_0ffa:		rti				; 40 


B1_0ffb:		.db $00				; 00
B1_0ffc:		.db $00				; 00
B1_0ffd:	.db $7a
B1_0ffe:	.db $7a
B1_0fff:	.db $5f
B1_1000:	.db $5f
B1_1001:	.db $6f
B1_1002:	.db $5f
B1_1003:		.db $00				; 00
B1_1004:		.db $00				; 00
B1_1005:		sta ($82, x)	; 81 82
B1_1007:	.db $82
B1_1008:		.db $00				; 00
B1_1009:	.db $8b
B1_100a:	.db $64
B1_100b:	.db $80
B1_100c:	.db $80
B1_100d:	.db $82
B1_100e:		.db $00				; 00
B1_100f:	.db $8b
B1_1010:	.db $80
B1_1011:		;removed
	.db $90 $91

B1_1013:		eor $79			; 45 79
B1_1015:	.db $9b
B1_1016:	.db $7a
B1_1017:		.db $00				; 00
B1_1018:		lsr $00			; 46 00
B1_101a:		.db $00				; 00
B1_101b:		.db $00				; 00
B1_101c:		.db $00				; 00
B1_101d:	.db $5f
B1_101e:	.db $6f
B1_101f:	.db $5f
B1_1020:	.db $7a
B1_1021:	.db $7a
B1_1022:	.db $6f
B1_1023:	.db $5f
B1_1024:		.db $00				; 00
B1_1025:		sta ($8b), y	; 91 8b
B1_1027:		bcc B1_1029 ; 90 00

B1_1029:		.db $00				; 00
B1_102a:		.db $00				; 00
B1_102b:		sta ($8b), y	; 91 8b
B1_102d:		bcc B1_102f ; 90 00

B1_102f:		.db $00				; 00
B1_1030:	.db $64
B1_1031:		.db $00				; 00
B1_1032:		.db $00				; 00
B1_1033:		.db $00				; 00
B1_1034:		.db $00				; 00
B1_1035:	.db $ab
B1_1036:		.db $00				; 00
B1_1037:	.db $ac $00 $00
B1_103a:		.db $00				; 00
B1_103b:	.db $ff
B1_103c:	.db $23
B1_103d:	.db $80
B1_103e:	.db $80
B1_103f:	.db $20 $00 $00
B1_1042:	.db $7a
B1_1043:	.db $7a
B1_1044:	.db $6f
B1_1045:	.db $5f
B1_1046:	.db $6f
B1_1047:	.db $5f
B1_1048:	.db $7a
B1_1049:	.db $6f
B1_104a:	.db $5f
B1_104b:	.db $7a
B1_104c:	.db $5f
B1_104d:	.db $7a
B1_104e:	.db $7a
B1_104f:		txa				; 8a 
B1_1050:	.db $89
B1_1051:		txa				; 8a 
B1_1052:	.db $89
B1_1053:	.db $89
B1_1054:		txa				; 8a 
B1_1055:		txa				; 8a 
B1_1056:	.db $7a
B1_1057:		adc $7a8e, y	; 79 8e 7a
B1_105a:		stx $8e79		; 8e 79 8e
B1_105d:	.db $7a
B1_105e:		.db $00				; 00
B1_105f:		.db $00				; 00
B1_1060:	.db $ff
B1_1061:		jsr $8000		; 20 00 80
B1_1064:		asl $7c7c		; 0e 7c 7c
B1_1067:	.db $7f
B1_1068:	.db $7f
B1_1069:	.db $7f
B1_106a:	.db $7f
B1_106b:	.db $7f
B1_106c:	.db $7f
B1_106d:	.db $7f
B1_106e:	.db $7f
B1_106f:	.db $7f
B1_1070:	.db $7f
B1_1071:	.db $7e $7d $00
B1_1074:		bpl B1_10f5 ; 10 7f

B1_1076:		.db $00				; 00
B1_1077:	.db $02
B1_1078:	.db $7c
B1_1079:		.db $00				; 00
B1_107a:		ora $8000		; 0d 00 80
B1_107d:	.db $03
B1_107e:	.db $bf
B1_107f:		.db $00				; 00
B1_1080:		.db $00				; 00
B1_1081:	.db $ff
B1_1082:	.db $20 $40 $00
B1_1085:		asl $8000		; 0e 00 80
B1_1088:		ora ($bf, x)	; 01 bf
B1_108a:		.db $00				; 00
B1_108b:		jsr $8000		; 20 00 80
B1_108e:		ora ($bf), y	; 11 bf
B1_1090:		.db $00				; 00
B1_1091:		sta ($81, x)	; 81 81
B1_1093:		adc $4445, y	; 79 45 44
B1_1096:	.db $7a
B1_1097:		.db $00				; 00
B1_1098:		.db $00				; 00
B1_1099:		adc $4445, y	; 79 45 44
B1_109c:	.db $79 $7a $00
B1_109f:		.db $00				; 00
B1_10a0:	.db $ff
B1_10a1:		jsr $8090		; 20 90 80
B1_10a4:	.db $0c
B1_10a5:	.db $bf
B1_10a6:		.db $00				; 00
B1_10a7:	.db $64
B1_10a8:		bcc B1_103b ; 90 91

B1_10aa:		bcc B1_10ac ; 90 00

B1_10ac:		.db $00				; 00
B1_10ad:	.db $87
B1_10ae:		dey				; 88 
B1_10af:		sta ($90), y	; 91 90
B1_10b1:		.db $00				; 00
B1_10b2:		ora $00, x		; 15 00
B1_10b4:	.db $80
B1_10b5:	.db $0f
B1_10b6:	.db $bf
B1_10b7:		.db $00				; 00
B1_10b8:		.db $00				; 00
B1_10b9:		.db $00				; 00
B1_10ba:		.db $00				; 00
B1_10bb:	.db $87
B1_10bc:		dey				; 88 
B1_10bd:	.db $97
B1_10be:		tya				; 98 
B1_10bf:		.db $00				; 00
B1_10c0:	.db $99 $9a $00
B1_10c3:		.db $00				; 00
B1_10c4:		.db $00				; 00
B1_10c5:	.db $ff
B1_10c6:	.db $20 $c0 $00
B1_10c9:		asl $8000		; 0e 00 80
B1_10cc:		;removed
	.db $10 $7c

B1_10ce:	.db $7c
B1_10cf:		.db $00				; 00
B1_10d0:		.db $00				; 00
B1_10d1:	.db $bf
B1_10d2:		.db $00				; 00
B1_10d3:		tax				; aa 
B1_10d4:		lda #$a7		; a9 a7
B1_10d6:		tay				; a8 
B1_10d7:	.db $a7
B1_10d8:		tay				; a8 
B1_10d9:		lda $a9			; a5 a9
B1_10db:		tax				; aa 
B1_10dc:		lda $00			; a5 00
B1_10de:		bpl B1_10e0 ; 10 00

B1_10e0:	.db $80
B1_10e1:		asl $7c			; 06 7c
B1_10e3:	.db $7c
B1_10e4:		.db $00				; 00
B1_10e5:		.db $00				; 00
B1_10e6:		.db $00				; 00
B1_10e7:	.db $bf
B1_10e8:		.db $00				; 00
B1_10e9:	.db $0c
B1_10ea:		.db $00				; 00
B1_10eb:	.db $ff
B1_10ec:		and ($00, x)	; 21 00
B1_10ee:		.db $00				; 00
B1_10ef:	.db $0e $00 $00
B1_10f2:	.db $02
B1_10f3:	.db $7c
B1_10f4:		.db $00				; 00
B1_10f5:	.db $0e $7f $00
B1_10f8:	.db $02
B1_10f9:	.db $7c
B1_10fa:	.db $ff
B1_10fb:	.db $23
B1_10fc:		beq B1_107e ; f0 80

B1_10fe:		bpl B1_1155 ; 10 55

B1_1100:		eor $55, x		; 55 55
B1_1102:		eor $55, x		; 55 55
B1_1104:		eor $55, x		; 55 55
B1_1106:		ora ($05), y	; 11 05
B1_1108:		ora $05			; 05 05
B1_110a:		ora #$0a		; 09 0a
B1_110c:		asl $05			; 06 05
B1_110e:		ora ($fe, x)	; 01 fe
B1_1110:	.db $23
B1_1111:		cpy #$80		; c0 80
B1_1113:		clc				; 18 
B1_1114:		.db $00				; 00
B1_1115:		.db $00				; 00
B1_1116:		.db $00				; 00
B1_1117:		.db $00				; 00
B1_1118:		bvc B1_116a ; 50 50

B1_111a:		bvc B1_112c ; 50 10

B1_111c:		.db $00				; 00
B1_111d:		.db $00				; 00
B1_111e:		.db $00				; 00
B1_111f:		.db $00				; 00
B1_1120:		php				; 08 
B1_1121:		inc $32fb, x	; fe fb 32
B1_1124:		.db $00				; 00
B1_1125:		.db $00				; 00
B1_1126:		.db $00				; 00
B1_1127:		.db $00				; 00
B1_1128:		.db $00				; 00
B1_1129:		.db $00				; 00
B1_112a:		.db $00				; 00
B1_112b:		.db $00				; 00
B1_112c:	.db $ff
B1_112d:	.db $22
B1_112e:		rts				; 60 


B1_112f:		.db $00				; 00
B1_1130:	.db $13
B1_1131:		.db $00				; 00
B1_1132:	.db $80
B1_1133:		ora $4581		; 0d 81 45
B1_1136:	.db $44
B1_1137:		ldx #$a3		; a2 a3
B1_1139:		.db $00				; 00
B1_113a:	.db $83
B1_113b:		sty $85			; 84 85
B1_113d:		stx $a3			; 86 a3
B1_113f:		.db $00				; 00
B1_1140:		.db $00				; 00
B1_1141:	.db $ff
B1_1142:	.db $22
B1_1143:	.db $80
B1_1144:		.db $00				; 00
B1_1145:	.db $12
B1_1146:		.db $00				; 00
B1_1147:	.db $80
B1_1148:	.db $0c
B1_1149:		sta ($65, x)	; 81 65
B1_114b:	.db $80
B1_114c:	.db $80
B1_114d:		ldx #$a3		; a2 a3
B1_114f:		.db $00				; 00
B1_1150:		stx $94, y		; 96 94
B1_1152:		sta $96, x		; 95 96
B1_1154:	.db $a3
B1_1155:		.db $00				; 00
B1_1156:	.db $14
B1_1157:		.db $00				; 00
B1_1158:	.db $80
B1_1159:		asl $8065		; 0e 65 80
B1_115c:	.db $80
B1_115d:	.db $80
B1_115e:		ldx #$a3		; a2 a3
B1_1160:		ldy $a6			; a4 a6
B1_1162:		ldy $94			; a4 94
B1_1164:		ldx $b3			; a6 b3
B1_1166:		.db $00				; 00
B1_1167:		.db $00				; 00
B1_1168:	.db $ff
B1_1169:	.db $22
B1_116a:		cpy #$00		; c0 00
B1_116c:	.db $12
B1_116d:		.db $00				; 00
B1_116e:	.db $80
B1_116f:	.db $0c
B1_1170:	.db $92
B1_1171:		tsx				; ba 
B1_1172:	.db $bb
B1_1173:		ldy $b3b2, x	; bc b2 b3
B1_1176:		ldy $a6			; a4 a6
B1_1178:		ldy $b5, x		; b4 b5
B1_117a:		ldx $a3			; a6 a3
B1_117c:		.db $00				; 00
B1_117d:		ora $00			; 05 00
B1_117f:	.db $80
B1_1180:	.db $07
B1_1181:		sta ($45, x)	; 81 45
B1_1183:	.db $44
B1_1184:		eor $44			; 45 44
B1_1186:		eor $81			; 45 81
B1_1188:		.db $00				; 00
B1_1189:		asl $00, x		; 16 00
B1_118b:	.db $ff
B1_118c:	.db $23
B1_118d:		.db $00				; 00
B1_118e:		.db $00				; 00
B1_118f:	.db $03
B1_1190:		.db $00				; 00
B1_1191:	.db $80
B1_1192:		php				; 08 
B1_1193:		sta ($90), y	; 91 90
B1_1195:		sta ($92), y	; 91 92
B1_1197:	.db $80
B1_1198:	.db $80
B1_1199:	.db $82
B1_119a:		adc $0500, y	; 79 00 05
B1_119d:		.db $00				; 00
B1_119e:	.db $80
B1_119f:		ora $7f			; 05 7f
B1_11a1:	.db $7f
B1_11a2:	.db $7f
B1_11a3:	.db $7e $7d $00
B1_11a6:		ora #$7f		; 09 7f
B1_11a8:	.db $80
B1_11a9:		asl $7c7c		; 0e 7c 7c
B1_11ac:		.db $00				; 00
B1_11ad:		.db $00				; 00
B1_11ae:		.db $00				; 00
B1_11af:		lda ($00, x)	; a1 00
B1_11b1:		lda ($00, x)	; a1 00
B1_11b3:		.db $00				; 00
B1_11b4:		sta ($80), y	; 91 80
B1_11b6:	.db $8b
B1_11b7:	.db $7a
B1_11b8:		.db $00				; 00
B1_11b9:		asl $00			; 06 00
B1_11bb:	.db $80
B1_11bc:		ora ($7e, x)	; 01 7e
B1_11be:		.db $00				; 00
B1_11bf:		ora $ff00		; 0d 00 ff
B1_11c2:	.db $23
B1_11c3:		rti				; 40 


B1_11c4:	.db $80
B1_11c5:	.db $0c
B1_11c6:		.db $00				; 00
B1_11c7:		.db $00				; 00
B1_11c8:		.db $00				; 00
B1_11c9:		lda ($b0), y	; b1 b0
B1_11cb:		lda ($a0), y	; b1 a0
B1_11cd:		ldy #$00		; a0 00
B1_11cf:		bcs B1_11d1 ; b0 00

B1_11d1:		ldy #$00		; a0 00
B1_11d3:		ora $00			; 05 00
B1_11d5:	.db $80
B1_11d6:		ora ($bf, x)	; 01 bf
B1_11d8:		.db $00				; 00
B1_11d9:		asl $8000, x	; 1e 00 80
B1_11dc:		ora ($bf, x)	; 01 bf
B1_11de:		.db $00				; 00
B1_11df:	.db $07
B1_11e0:		.db $00				; 00
B1_11e1:	.db $80
B1_11e2:		php				; 08 
B1_11e3:		sty $8d8d		; 8c 8d 8d
B1_11e6:	.db $8f
B1_11e7:	.db $8c $00 $00
B1_11ea:		.db $00				; 00
B1_11eb:	.db $ff
B1_11ec:	.db $23
B1_11ed:	.db $80
B1_11ee:		.db $00				; 00
B1_11ef:	.db $02
B1_11f0:	.db $7c
B1_11f1:		.db $00				; 00
B1_11f2:		asl a			; 0a
B1_11f3:	.db $7f
B1_11f4:	.db $80
B1_11f5:		ora ($7e), y	; 11 7e
B1_11f7:		adc $7f7f, x	; 7d 7f 7f
B1_11fa:		.db $00				; 00
B1_11fb:		sta ($44, x)	; 81 44
B1_11fd:	.db $b7
B1_11fe:		clv				; b8 
B1_11ff:	.db $b7
B1_1200:		eor $81			; 45 81
B1_1202:	.db $9c
B1_1203:		sta $9f9e, x	; 9d 9e 9f
B1_1206:	.db $9c
B1_1207:		.db $00				; 00
B1_1208:		bpl B1_120a ; 10 00

B1_120a:	.db $80
B1_120b:		ora ($bf, x)	; 01 bf
B1_120d:		.db $00				; 00
B1_120e:	.db $03
B1_120f:		.db $00				; 00
B1_1210:	.db $80
B1_1211:	.db $0f
B1_1212:	.db $64
B1_1213:	.db $8b
B1_1214:	.db $b7
B1_1215:		lda $8bb7, y	; b9 b7 8b
B1_1218:	.db $64
B1_1219:		sta ($ad, x)	; 81 ad
B1_121b:		ldx $adaf		; ae af ad
B1_121e:		.db $00				; 00
B1_121f:		.db $00				; 00
B1_1220:		.db $00				; 00
B1_1221:	.db $ff
B1_1222:	.db $20 $00 $00
B1_1225:		asl $8000		; 0e 00 80
B1_1228:	.db $12
B1_1229:	.db $bf
B1_122a:		.db $00				; 00
B1_122b:		.db $00				; 00
B1_122c:		.db $00				; 00
B1_122d:		.db $00				; 00
B1_122e:	.db $b7
B1_122f:		.db $00				; 00
B1_1230:	.db $b7
B1_1231:		sta ($bd, x)	; 81 bd
B1_1233:		lda $be00, x	; bd 00 be
B1_1236:		adc $bd, x		; 75 bd
B1_1238:		.db $00				; 00
B1_1239:		.db $00				; 00
B1_123a:		.db $00				; 00
B1_123b:	.db $ff
B1_123c:	.db $20 $20 $00
B1_123f:	.db $0f
B1_1240:		.db $00				; 00
B1_1241:	.db $80
B1_1242:		ora ($bf, x)	; 01 bf
B1_1244:		.db $00				; 00
B1_1245:	.db $1e $00 $00
B1_1248:		bpl B1_12c9 ; 10 7f

B1_124a:		.db $00				; 00
B1_124b:	.db $02
B1_124c:	.db $7c
B1_124d:	.db $ff
B1_124e:	.db $23
B1_124f:		cpx #$80		; e0 80
B1_1251:	.db $20 $00 $00
B1_1254:		.db $00				; 00
B1_1255:		.db $00				; 00
B1_1256:		cpy #$f0		; c0 f0
B1_1258:		;removed
	.db $f0 $30

B1_125a:		bvc B1_12ac ; 50 50

B1_125c:		bvc B1_126e ; 50 10

B1_125e:		cpy $ffff		; cc ff ff
B1_1261:	.db $33
B1_1262:		eor $d5, x		; 55 d5
B1_1264:		cmp $11, x		; d5 11
B1_1266:	.db $80
B1_1267:		ldy #$a0		; a0 a0
B1_1269:	.db $20 $00 $00
B1_126c:		.db $00				; 00
B1_126d:		.db $00				; 00
B1_126e:	.db $0f
B1_126f:	.db $0b
B1_1270:		asl a			; 0a
B1_1271:	.db $02
B1_1272:		inc $c023, x	; fe 23 c0
B1_1275:	.db $80
B1_1276:		bpl B1_1278 ; 10 00

B1_1278:		.db $00				; 00
B1_1279:		.db $00				; 00
B1_127a:		.db $00				; 00
B1_127b:	.db $0f
B1_127c:	.db $0b
B1_127d:		asl a			; 0a
B1_127e:	.db $02
B1_127f:		.db $00				; 00
B1_1280:		.db $00				; 00
B1_1281:		.db $00				; 00
B1_1282:		.db $00				; 00
B1_1283:		.db $00				; 00
B1_1284:		.db $00				; 00
B1_1285:		.db $00				; 00
B1_1286:		.db $00				; 00
B1_1287:	.db $ff
B1_1288:	.db $22
B1_1289:		cpx #$80		; e0 80
B1_128b:	.db $20 $00 $00
B1_128e:	.db $7a
B1_128f:	.db $4b
B1_1290:	.db $4f
B1_1291:		.db $00				; 00
B1_1292:		lsr $4f4c		; 4e 4c 4f
B1_1295:		eor $494a		; 4d 4a 49
B1_1298:	.db $4f
B1_1299:	.db $7a
B1_129a:		.db $00				; 00
B1_129b:		lsr a			; 4a
B1_129c:	.db $67
B1_129d:		jmp $4f4e		; 4c 4e 4f


B1_12a0:	.db $4f
B1_12a1:	.db $47
B1_12a2:		lsr $b84c		; 4e 4c b8
B1_12a5:		clv				; b8 
B1_12a6:	.db $83
B1_12a7:	.db $93
B1_12a8:		stx $b8			; 86 b8
B1_12aa:		.db $00				; 00
B1_12ab:		.db $00				; 00
B1_12ac:	.db $ff
B1_12ad:	.db $23
B1_12ae:		.db $00				; 00
B1_12af:	.db $80
B1_12b0:		rti				; 40 


B1_12b1:		.db $00				; 00
B1_12b2:		.db $00				; 00
B1_12b3:	.db $4b
B1_12b4:	.db $4b
B1_12b5:	.db $57
B1_12b6:	.db $5d $5e $00
B1_12b9:		cli				; 58 
B1_12ba:		eor $5b5a, y	; 59 5a 5b
B1_12bd:		cli				; 58 
B1_12be:		.db $00				; 00
B1_12bf:		.db $00				; 00
B1_12c0:		.db $00				; 00
B1_12c1:		adc #$58		; 69 58
B1_12c3:		lsr $5769, x	; 5e 69 57
B1_12c6:		ror $574a		; 6e 4a 57
B1_12c9:	.db $93
B1_12ca:		clv				; b8 
B1_12cb:	.db $4b
B1_12cc:		lda ($4b, x)	; a1 4b
B1_12ce:	.db $93
B1_12cf:		.db $00				; 00
B1_12d0:		.db $00				; 00
B1_12d1:		.db $00				; 00
B1_12d2:		.db $00				; 00
B1_12d3:		ror a			; 6a
B1_12d4:		ror $68			; 66 68
B1_12d6:		adc $6c6e, y	; 79 6e 6c
B1_12d9:		adc #$6a		; 69 6a
B1_12db:		ror a			; 6a
B1_12dc:		ror $4b			; 66 4b
B1_12de:	.db $7a
B1_12df:		.db $00				; 00
B1_12e0:		.db $00				; 00
B1_12e1:		adc $7a, x		; 75 7a
B1_12e3:		ror $6875		; 6e 75 68
B1_12e6:		eor $5b5a, y	; 59 5a 5b
B1_12e9:		.db $00				; 00
B1_12ea:	.db $4b
B1_12eb:	.db $4b
B1_12ec:		lda ($4b), y	; b1 4b
B1_12ee:	.db $4b
B1_12ef:		.db $00				; 00
B1_12f0:		.db $00				; 00
B1_12f1:	.db $ff
B1_12f2:	.db $23
B1_12f3:		rti				; 40 


B1_12f4:	.db $80
B1_12f5:	.db $20 $00 $00
B1_12f8:		jmp $6d49		; 4c 49 6d


B1_12fb:	.db $5c
B1_12fc:	.db $6b
B1_12fd:	.db $7b
B1_12fe:		eor #$48		; 49 48
B1_1300:		eor $4b58		; 4d 58 4b
B1_1303:	.db $4b
B1_1304:		.db $00				; 00
B1_1305:		.db $00				; 00
B1_1306:		.db $00				; 00
B1_1307:	.db $4f
B1_1308:		eor #$5c		; 49 5c
B1_130a:		adc $6a69		; 6d 69 6a
B1_130d:	.db $6b
B1_130e:		.db $00				; 00
B1_130f:	.db $4b
B1_1310:		ror $77, x		; 76 77
B1_1312:		sei				; 78 
B1_1313:		.db $00				; 00
B1_1314:		.db $00				; 00
B1_1315:		.db $00				; 00
B1_1316:	.db $ff
B1_1317:	.db $23
B1_1318:	.db $80
B1_1319:		.db $00				; 00
B1_131a:	.db $02
B1_131b:	.db $7c
B1_131c:		.db $00				; 00
B1_131d:		ora ($7f), y	; 11 7f
B1_131f:	.db $80
B1_1320:	.db $02
B1_1321:	.db $7e $7d $00
B1_1324:		ora #$7f		; 09 7f
B1_1326:		.db $00				; 00
B1_1327:	.db $02
B1_1328:	.db $7c
B1_1329:		.db $00				; 00
B1_132a:	.db $12
B1_132b:		.db $00				; 00
B1_132c:	.db $80
B1_132d:		ora ($7e, x)	; 01 7e
B1_132f:		.db $00				; 00
B1_1330:		ora $ff00		; 0d 00 ff
B1_1333:	.db $20 $00 $00
B1_1336:		ora ($00), y	; 11 00
B1_1338:	.db $80
B1_1339:		ora ($bf, x)	; 01 bf
B1_133b:		.db $00				; 00
B1_133c:		bpl B1_133e ; 10 00

B1_133e:	.db $80
B1_133f:		ora #$41		; 09 41
B1_1341:	.db $42
B1_1342:		eor ($42, x)	; 41 42
B1_1344:	.db $42
B1_1345:	.db $43
B1_1346:	.db $44
B1_1347:		eor $7a			; 45 7a
B1_1349:		.db $00				; 00
B1_134a:		ora $00			; 05 00
B1_134c:	.db $80
B1_134d:		ora ($bf, x)	; 01 bf
B1_134f:		.db $00				; 00
B1_1350:	.db $0f
B1_1351:		.db $00				; 00
B1_1352:	.db $ff
B1_1353:		jsr $8040		; 20 40 80
B1_1356:		bpl B1_1358 ; 10 00

B1_1358:		.db $00				; 00
B1_1359:		rti				; 40 


B1_135a:		eor $63, x		; 55 63
B1_135c:	.db $54
B1_135d:		rti				; 40 


B1_135e:	.db $52
B1_135f:	.db $53
B1_1360:	.db $54
B1_1361:		eor $82, x		; 55 82
B1_1363:	.db $7a
B1_1364:		.db $00				; 00
B1_1365:		.db $00				; 00
B1_1366:	.db $bf
B1_1367:		.db $00				; 00
B1_1368:	.db $12
B1_1369:		.db $00				; 00
B1_136a:	.db $80
B1_136b:		ora $5150		; 0d 50 51
B1_136e:		bvc B1_13d0 ; 50 60

B1_1370:		bvc B1_1372 ; 50 00

B1_1372:		adc ($00, x)	; 61 00
B1_1374:	.db $62
B1_1375:	.db $64
B1_1376:		.db $00				; 00
B1_1377:		.db $00				; 00
B1_1378:	.db $bf
B1_1379:		.db $00				; 00
B1_137a:		ora ($00), y	; 11 00
B1_137c:	.db $ff
B1_137d:		jsr $8080		; 20 80 80
B1_1380:	.db $12
B1_1381:		.db $00				; 00
B1_1382:		.db $00				; 00
B1_1383:	.db $72
B1_1384:	.db $74
B1_1385:	.db $72
B1_1386:	.db $74
B1_1387:	.db $72
B1_1388:		;removed
	.db $70 $71

B1_138a:	.db $74
B1_138b:	.db $72
B1_138c:	.db $74
B1_138d:		.db $00				; 00
B1_138e:	.db $bf
B1_138f:		.db $00				; 00
B1_1390:		.db $00				; 00
B1_1391:	.db $7c
B1_1392:	.db $7c
B1_1393:		.db $00				; 00
B1_1394:	.db $1a
B1_1395:		.db $00				; 00
B1_1396:	.db $80
B1_1397:		asl $bf			; 06 bf
B1_1399:		.db $00				; 00
B1_139a:		.db $00				; 00
B1_139b:		.db $00				; 00
B1_139c:	.db $7c
B1_139d:	.db $7c
B1_139e:		.db $00				; 00
B1_139f:		asl $ff00		; 0e 00 ff
B1_13a2:	.db $20 $c0 $00
B1_13a5:	.db $02
B1_13a6:	.db $7c
B1_13a7:		.db $00				; 00
B1_13a8:	.db $0e $7f $00
B1_13ab:	.db $02
B1_13ac:	.db $7c
B1_13ad:		.db $00				; 00
B1_13ae:		asl $ff00		; 0e 00 ff
B1_13b1:	.db $23
B1_13b2:		inx				; e8 
B1_13b3:	.db $80
B1_13b4:		clc				; 18 
B1_13b5:		;removed
	.db $d0 $50

B1_13b7:		bvc B1_1349 ; 50 90

B1_13b9:		ldy #$a0		; a0 a0
B1_13bb:		;removed
	.db $f0 $b0

B1_13bd:		eor $5555		; 4d 55 55
B1_13c0:	.db $bb
B1_13c1:		tax				; aa 
B1_13c2:		tax				; aa 
B1_13c3:	.db $3f
B1_13c4:	.db $8b
B1_13c5:		.db $00				; 00
B1_13c6:		.db $00				; 00
B1_13c7:		.db $00				; 00
B1_13c8:		.db $00				; 00
B1_13c9:		.db $00				; 00
B1_13ca:		.db $00				; 00
B1_13cb:		.db $00				; 00
B1_13cc:		.db $00				; 00
B1_13cd:		inc $c023, x	; fe 23 c0
B1_13d0:	.db $80
B1_13d1:		;removed
	.db $10 $ff
