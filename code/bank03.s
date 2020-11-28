
B3_0780:		ldy #$00
B3_0782:		beq B3_07a2 ; f0 1e

B3_0784:		ldy #$02		; a0 02
B3_0786:		bne B3_07a2 ; d0 1a

B3_0788:		ldy #$04		; a0 04
B3_078a:		bne B3_07a2 ; d0 16

B3_078c:		ldy #$06		; a0 06
B3_078e:		bne B3_07a2 ; d0 12

B3_0790:		ldy #$08		; a0 08
B3_0792:		bne B3_07a2 ; d0 0e

B3_0794:		ldy #$0a		; a0 0a
B3_0796:		bne B3_07a2 ; d0 0a

B3_0798:		ldy #$0c		; a0 0c
B3_079a:		bne B3_07a2 ; d0 06

B3_079c:		ldy #$0e		; a0 0e
B3_079e:		bne B3_07a2 ; d0 02

B3_07a0:		ldy #$10		; a0 10
B3_07a2:		lda $a7b1, y	; b9 b1 a7
B3_07a5:		sta $00			; 85 00
B3_07a7:		lda $a7b2, y	; b9 b2 a7
B3_07aa:		sta $01			; 85 01
B3_07ac:		lda #$84		; a9 84
B3_07ae:		jmp $e62f		; 4c 2f e6


B3_07b1:		dex				; ca 
B3_07b2:		ldx $e1, y		; b6 e1
B3_07b4:	.db $b7
B3_07b5:		txs				; 9a 
B3_07b6:		lda $ba77, y	; b9 77 ba
B3_07b9:	.db $7c
B3_07ba:		tsx				; ba 
B3_07bb:		ldy $ddba, x	; bc ba dd
B3_07be:		tsx				; ba 
B3_07bf:		cmp $b8			; c5 b8
B3_07c1:	.db $04
B3_07c2:		.db $ec


func_03_07c3:
	lda $07ec
B3_07c6:		asl a			; 0a
B3_07c7:		tay				; a8 
B3_07c8:		lda $a7e3, y	; b9 e3 a7
B3_07cb:		sta $00			; 85 00
B3_07cd:		lda $a7e4, y	; b9 e4 a7
B3_07d0:		sta $01			; 85 01
B3_07d2:		jsr $a7e0		; 20 e0 a7
B3_07d5:		lda $07ec		; ad ec 07
B3_07d8:		cmp #$10		; c9 10
B3_07da:		bcc B3_07df ; 90 03

B3_07dc:		jsr $a788		; 20 88 a7
B3_07df:		rts				; 60 


B3_07e0:	.db $6c $00 $00
B3_07e3:		and $a8			; 25 a8
B3_07e5:	.db $9f
B3_07e6:		tay				; a8 
B3_07e7:		lda $a8, x		; b5 a8
B3_07e9:		cpy $a8			; c4 a8
B3_07eb:	.db $d2
B3_07ec:		tay				; a8 
B3_07ed:		cmp $eba8, x	; dd a8 eb
B3_07f0:		tay				; a8 
B3_07f1:		sbc $1ba8, y	; f9 a8 1b
B3_07f4:		lda #$45		; a9 45
B3_07f6:		lda #$62		; a9 62
B3_07f8:		lda #$79		; a9 79
B3_07fa:		lda #$84		; a9 84
B3_07fc:		lda #$8f		; a9 8f
B3_07fe:		lda #$ce		; a9 ce
B3_0800:		lda #$d9		; a9 d9
B3_0802:		lda #$0e		; a9 0e
B3_0804:		tax				; aa 
B3_0805:		ora ($aa), y	; 11 aa
B3_0807:		rti				; 40 


B3_0808:		tax				; aa 
B3_0809:		lsr $51aa		; 4e aa 51
B3_080c:		tax				; aa 
B3_080d:	.db $6f
B3_080e:		tax				; aa 
B3_080f:		sty $aa, x		; 94 aa
B3_0811:		dec $aa			; c6 aa
B3_0813:		cmp #$aa		; c9 aa
B3_0815:		sbc $aa			; e5 aa
B3_0817:		sbc ($aa), y	; f1 aa
B3_0819:	.db $fc
B3_081a:		tax				; aa 
B3_081b:	.db $13
B3_081c:	.db $ab
B3_081d:	.db $22
B3_081e:	.db $ab
B3_081f:		rti				; 40 


B3_0820:	.db $ab
B3_0821:	.db $52
B3_0822:	.db $ab
B3_0823:		adc $ab			; 65 ab
B3_0825:		jsr setBank_c000_toRom1eh		; 20 da e2
B3_0828:		ldx #$24		; a2 24
B3_082a:		lda #$00		; a9 00
B3_082c:		sta $0780, x	; 9d 80 07
B3_082f:		dex				; ca 
B3_0830:		bpl B3_082c ; 10 fa

B3_0832:		lda #$1e		; a9 1e
B3_0834:		ldx #$08		; a2 08
B3_0836:		jsr func_1f_05c1		; 20 c1 e5
B3_0839:		lda #$80		; a9 80
B3_083b:		sta $0791		; 8d 91 07
B3_083e:		lda #$01		; a9 01
B3_0840:		sta $0793		; 8d 93 07
B3_0843:		lda #$7f		; a9 7f
B3_0845:		sta wChrBankBG_0000			; 85 4a
B3_0847:		sta wChrBankBG_0400			; 85 4b
B3_0849:		sta wChrBankBG_0800			; 85 4c
B3_084b:		sta wChrBankBG_0c00			; 85 4d
B3_084d:		lda #$00		; a9 00
B3_084f:		sta wChrBankSpr_0000			; 85 46
B3_0851:		lda #$01		; a9 01
B3_0853:		sta wChrBankSpr_0400			; 85 47
B3_0855:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_0858:		jsr $ab73		; 20 73 ab
B3_085b:		jsr func_1f_0bfd		; 20 fd eb
B3_085e:		jsr $ae88		; 20 88 ae
B3_0861:		ldx #$1e		; a2 1e
B3_0863:		lda #$98		; a9 98
B3_0865:		jsr func_1f_0bd5		; 20 d5 eb
B3_0868:		ldx #$00		; a2 00
B3_086a:		jsr $ac7c		; 20 7c ac
B3_086d:		lda #$55		; a9 55
B3_086f:		sta wNametableMapping			; 85 25
B3_0871:		lda $ff			; a5 ff
B3_0873:		ora #$02		; 09 02
B3_0875:		sta $ff			; 85 ff
B3_0877:		lda #$00		; a9 00
B3_0879:		sta $0780		; 8d 80 07
B3_087c:		lda #$02		; a9 02
B3_087e:		sta $0781		; 8d 81 07
B3_0881:		lda #$80		; a9 80
B3_0883:		sta $07ed		; 8d ed 07
B3_0886:		lda #$00		; a9 00
B3_0888:		sta $07ee		; 8d ee 07
B3_088b:		lda #$00		; a9 00
B3_088d:		sta $0783		; 8d 83 07
B3_0890:		sta $0784		; 8d 84 07
B3_0893:		sta $0785		; 8d 85 07
B3_0896:		lda #$66		; a9 66
B3_0898:		jsr playSound		; 20 5f e2
B3_089b:		inc $07ec		; ee ec 07
B3_089e:		rts				; 60 


B3_089f:		jsr $ae8d		; 20 8d ae
B3_08a2:		beq B3_08a8 ; f0 04

B3_08a4:		jsr $ad34		; 20 34 ad
B3_08a7:		rts				; 60 


B3_08a8:		lda #$80		; a9 80
B3_08aa:		sta $07ed		; 8d ed 07
B3_08ad:		lda #$00		; a9 00
B3_08af:		sta $07ee		; 8d ee 07
B3_08b2:		jmp $a89b		; 4c 9b a8


B3_08b5:		jsr $ae8d		; 20 8d ae
B3_08b8:		beq B3_089b ; f0 e1

B3_08ba:		jsr $abdb		; 20 db ab
B3_08bd:		jsr $ad34		; 20 34 ad
B3_08c0:		jsr $ae6f		; 20 6f ae
B3_08c3:		rts				; 60 


B3_08c4:		jsr $abdb		; 20 db ab
B3_08c7:		jsr $ad34		; 20 34 ad
B3_08ca:		jsr $ae6f		; 20 6f ae
B3_08cd:		lda $fc			; a5 fc
B3_08cf:		beq B3_089b ; f0 ca

B3_08d1:		rts				; 60 


B3_08d2:		jsr $ae88		; 20 88 ae
B3_08d5:		lda #$03		; a9 03
B3_08d7:		sta $07ef		; 8d ef 07
B3_08da:		jmp $a89b		; 4c 9b a8


B3_08dd:		jsr $ad34		; 20 34 ad
B3_08e0:		jsr $af22		; 20 22 af
B3_08e3:		lda $fc			; a5 fc
B3_08e5:		beq B3_08e8 ; f0 01

B3_08e7:		rts				; 60 


B3_08e8:		jmp $a89b		; 4c 9b a8


B3_08eb:		jsr $ad34		; 20 34 ad
B3_08ee:		jsr $a78c		; 20 8c a7
B3_08f1:		lda #$00		; a9 00
B3_08f3:		sta $07ee		; 8d ee 07
B3_08f6:		jmp $a89b		; 4c 9b a8


B3_08f9:		jsr $ad34		; 20 34 ad
B3_08fc:		jsr $a790		; 20 90 a7
B3_08ff:		bcc B3_091a ; 90 19

B3_0901:		jsr $a794		; 20 94 a7
B3_0904:		lda #$21		; a9 21
B3_0906:		sta $3f			; 85 3f
B3_0908:		lda #$01		; a9 01
B3_090a:		sta $078f		; 8d 8f 07
B3_090d:		lda #$80		; a9 80
B3_090f:		sta $07ed		; 8d ed 07
B3_0912:		lda #$00		; a9 00
B3_0914:		sta $07ee		; 8d ee 07
B3_0917:		jmp $a89b		; 4c 9b a8


B3_091a:		rts				; 60 


B3_091b:		jsr $ad34		; 20 34 ad
B3_091e:		lda #$00		; a9 00
B3_0920:		sta $08			; 85 08
B3_0922:		jsr $a798		; 20 98 a7
B3_0925:		lda $08			; a5 08
B3_0927:		cmp #$09		; c9 09
B3_0929:		bcs B3_092f ; b0 04

B3_092b:		jsr $a945		; 20 45 a9
B3_092e:		rts				; 60 


B3_092f:		jsr $ae88		; 20 88 ae
B3_0932:		lda #$1e		; a9 1e
B3_0934:		sta $3f			; 85 3f
B3_0936:		lda #$80		; a9 80
B3_0938:		sta $40			; 85 40
B3_093a:		lda #$01		; a9 01
B3_093c:		sta $078f		; 8d 8f 07
B3_093f:		inc $07ec		; ee ec 07
B3_0942:		jmp $a89b		; 4c 9b a8


B3_0945:		jsr $ae8d		; 20 8d ae
B3_0948:		bne B3_0961 ; d0 17

B3_094a:		lda $07ef		; ad ef 07
B3_094d:		bmi B3_0961 ; 30 12

B3_094f:		ldx #$00		; a2 00
B3_0951:		jsr $aea2		; 20 a2 ae
B3_0954:		lda #$08		; a9 08
B3_0956:		sta $07ed		; 8d ed 07
B3_0959:		lda #$00		; a9 00
B3_095b:		sta $07ee		; 8d ee 07
B3_095e:		dec $07ef		; ce ef 07
B3_0961:		rts				; 60 


B3_0962:		jsr $ad34		; 20 34 ad
B3_0965:		lda #$00		; a9 00
B3_0967:		sta $07ef		; 8d ef 07
B3_096a:		sta $07f0		; 8d f0 07
B3_096d:		sta $07f1		; 8d f1 07
B3_0970:		sta $07f2		; 8d f2 07
B3_0973:		sta $07f3		; 8d f3 07
B3_0976:		jmp $a89b		; 4c 9b a8


B3_0979:		jsr $ad34		; 20 34 ad
B3_097c:		ldx #$02		; a2 02
B3_097e:		jsr $a780		; 20 80 a7
B3_0981:		bcs B3_0965 ; b0 e2

B3_0983:		rts				; 60 


B3_0984:		jsr $ad34		; 20 34 ad
B3_0987:		ldx #$00		; a2 00
B3_0989:		jsr $a780		; 20 80 a7
B3_098c:		bcs B3_0965 ; b0 d7

B3_098e:		rts				; 60 


B3_098f:		jsr $ad34		; 20 34 ad
B3_0992:		lda $ff			; a5 ff
B3_0994:		ora #$02		; 09 02
B3_0996:		sta $ff			; 85 ff
B3_0998:		ldx #$10		; a2 10
B3_099a:		lda #$02		; a9 02
B3_099c:		sta $054e, x	; 9d 4e 05
B3_099f:		lda #$80		; a9 80
B3_09a1:		sta $0470, x	; 9d 70 04
B3_09a4:		lda #$00		; a9 00
B3_09a6:		sta $07ef		; 8d ef 07
B3_09a9:		sta $07f0		; 8d f0 07
B3_09ac:		lda #$7b		; a9 7b
B3_09ae:		sta wChrBankSpr_0c00			; 85 49
B3_09b0:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_09b3:		lda #$0c		; a9 0c
B3_09b5:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_09b8:		lda #$da		; a9 da
B3_09ba:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_09bd:		lda #$00		; a9 00
B3_09bf:		sta $0786		; 8d 86 07
B3_09c2:		sta $0793		; 8d 93 07
B3_09c5:		sta $0787		; 8d 87 07
B3_09c8:		sta $0788		; 8d 88 07
B3_09cb:		jmp $a89b		; 4c 9b a8


B3_09ce:		jsr $ad34		; 20 34 ad
B3_09d1:		lda $10			; a5 10
B3_09d3:		bne B3_09d6 ; d0 01

B3_09d5:		rts				; 60 


B3_09d6:		jmp $a89b		; 4c 9b a8


B3_09d9:		jsr $ad34		; 20 34 ad
B3_09dc:		lda $ff			; a5 ff
B3_09de:		and #$fd		; 29 fd
B3_09e0:		sta $ff			; 85 ff
B3_09e2:		jsr $ae8d		; 20 8d ae
B3_09e5:		bne B3_0a00 ; d0 19

B3_09e7:		ldx #$02		; a2 02
B3_09e9:		jsr $aea2		; 20 a2 ae
B3_09ec:		lda #$08		; a9 08
B3_09ee:		sta $07ed		; 8d ed 07
B3_09f1:		lda #$00		; a9 00
B3_09f3:		sta $07ee		; 8d ee 07
B3_09f6:		inc $07ef		; ee ef 07
B3_09f9:		lda $07ef		; ad ef 07
B3_09fc:		cmp #$04		; c9 04
B3_09fe:		beq B3_0a01 ; f0 01

B3_0a00:		rts				; 60 


B3_0a01:		lda #$48		; a9 48
B3_0a03:		sta $0780		; 8d 80 07
B3_0a06:		lda #$00		; a9 00
B3_0a08:		sta $0781		; 8d 81 07
B3_0a0b:		jmp $a89b		; 4c 9b a8


B3_0a0e:		jmp $aa7a		; 4c 7a aa


B3_0a11:		jsr $ad34		; 20 34 ad
B3_0a14:		ldx #$06		; a2 06
B3_0a16:		lda $07f0		; ad f0 07
B3_0a19:		and #$01		; 29 01
B3_0a1b:		bne B3_0a23 ; d0 06

B3_0a1d:		jsr $a784		; 20 84 a7
B3_0a20:		jmp $aa3c		; 4c 3c aa


B3_0a23:		jsr $a79c		; 20 9c a7
B3_0a26:		inc $07ef		; ee ef 07
B3_0a29:		lda $07ef		; ad ef 07
B3_0a2c:		cmp #$20		; c9 20
B3_0a2e:		bne B3_0a3c ; d0 0c

B3_0a30:		lda #$00		; a9 00
B3_0a32:		sta $0783		; 8d 83 07
B3_0a35:		lda #$01		; a9 01
B3_0a37:		sta wScrollY			; 85 fc
B3_0a39:		jmp $aa83		; 4c 83 aa


B3_0a3c:		inc $07f0		; ee f0 07
B3_0a3f:		rts				; 60 


B3_0a40:		jsr $ad34		; 20 34 ad
B3_0a43:		jsr $af22		; 20 22 af
B3_0a46:		lda $fc			; a5 fc
B3_0a48:		bne B3_0a4d ; d0 03

B3_0a4a:		jmp $a89b		; 4c 9b a8


B3_0a4d:		rts				; 60 


B3_0a4e:		jsr $aa7a		; 20 7a aa
B3_0a51:		jsr $ad34		; 20 34 ad
B3_0a54:		jsr $af22		; 20 22 af
B3_0a57:		ldx #$08		; a2 08
B3_0a59:		lda $0783		; ad 83 07
B3_0a5c:		sta $00			; 85 00
B3_0a5e:		lda $fc			; a5 fc
B3_0a60:		beq B3_0a30 ; f0 ce

B3_0a62:		and #$fc		; 29 fc
B3_0a64:		cmp $00			; c5 00
B3_0a66:		sta $0783		; 8d 83 07
B3_0a69:		beq B3_0a6e ; f0 03

B3_0a6b:		jmp $aa16		; 4c 16 aa


B3_0a6e:		rts				; 60 


B3_0a6f:		ldx #$00		; a2 00
B3_0a71:		jsr $ac7c		; 20 7c ac
B3_0a74:		jsr $aa7a		; 20 7a aa
B3_0a77:		jmp $aa94		; 4c 94 aa


B3_0a7a:		lda #$00		; a9 00
B3_0a7c:		sta $0783		; 8d 83 07
B3_0a7f:		lda #$01		; a9 01
B3_0a81:		sta wScrollY			; 85 fc
B3_0a83:		lda #$00		; a9 00
B3_0a85:		sta $07ef		; 8d ef 07
B3_0a88:		sta $07f0		; 8d f0 07
B3_0a8b:		sta $07f1		; 8d f1 07
B3_0a8e:		sta $07f2		; 8d f2 07
B3_0a91:		jmp $a89b		; 4c 9b a8


B3_0a94:		jsr $ad34		; 20 34 ad
B3_0a97:		jsr $af22		; 20 22 af
B3_0a9a:		ldx #$00		; a2 00
B3_0a9c:		jmp $aad1		; 4c d1 aa


B3_0a9f:		lda $07f0		; ad f0 07
B3_0aa2:		and #$01		; 29 01
B3_0aa4:		bne B3_0aac ; d0 06

B3_0aa6:		jsr $a784		; 20 84 a7
B3_0aa9:		jmp $aac2		; 4c c2 aa


B3_0aac:		jsr $a79c		; 20 9c a7
B3_0aaf:		inc $07ef		; ee ef 07
B3_0ab2:		lda $fc			; a5 fc
B3_0ab4:		bne B3_0ac2 ; d0 0c

B3_0ab6:		lda #$00		; a9 00
B3_0ab8:		sta $0783		; 8d 83 07
B3_0abb:		lda #$01		; a9 01
B3_0abd:		sta wScrollY			; 85 fc
B3_0abf:		jmp $aa83		; 4c 83 aa


B3_0ac2:		inc $07f0		; ee f0 07
B3_0ac5:		rts				; 60 


B3_0ac6:		jsr $aa7a		; 20 7a aa
B3_0ac9:		jsr $ad34		; 20 34 ad
B3_0acc:		jsr $af22		; 20 22 af
B3_0acf:		ldx #$02		; a2 02
B3_0ad1:		lda $0783		; ad 83 07
B3_0ad4:		sta $00			; 85 00
B3_0ad6:		lda $fc			; a5 fc
B3_0ad8:		and #$fc		; 29 fc
B3_0ada:		cmp $00			; c5 00
B3_0adc:		sta $0783		; 8d 83 07
B3_0adf:		beq B3_0ae4 ; f0 03

B3_0ae1:		jmp $aa9f		; 4c 9f aa


B3_0ae4:		rts				; 60 


B3_0ae5:		lda #$00		; a9 00
B3_0ae7:		sta $0783		; 8d 83 07
B3_0aea:		lda #$01		; a9 01
B3_0aec:		sta wScrollY			; 85 fc
B3_0aee:		jmp $a89b		; 4c 9b a8


B3_0af1:		jsr $ad34		; 20 34 ad
B3_0af4:		jsr $af22		; 20 22 af
B3_0af7:		ldx #$04		; a2 04
B3_0af9:		jmp $aad1		; 4c d1 aa


B3_0afc:		lda #$55		; a9 55
B3_0afe:		sta wNametableMapping			; 85 25
B3_0b00:		lda #$80		; a9 80
B3_0b02:		sta $07ed		; 8d ed 07
B3_0b05:		lda #$00		; a9 00
B3_0b07:		sta $07ee		; 8d ee 07
B3_0b0a:		sta $0784		; 8d 84 07
B3_0b0d:		sta $0785		; 8d 85 07
B3_0b10:		jmp $a89b		; 4c 9b a8


B3_0b13:		jsr $ae8d		; 20 8d ae
B3_0b16:		beq B3_0b10 ; f0 f8

B3_0b18:		jsr $abd5		; 20 d5 ab
B3_0b1b:		jsr $ad34		; 20 34 ad
B3_0b1e:		jsr $af22		; 20 22 af
B3_0b21:		rts				; 60 


B3_0b22:		jsr $ab18		; 20 18 ab
B3_0b25:		lda $fc			; a5 fc
B3_0b27:		bne B3_0b21 ; d0 f8

B3_0b29:		lda #$00		; a9 00
B3_0b2b:		sta $0780		; 8d 80 07
B3_0b2e:		lda #$02		; a9 02
B3_0b30:		sta $0781		; 8d 81 07
B3_0b33:		lda #$00		; a9 00
B3_0b35:		sta $0784		; 8d 84 07
B3_0b38:		sta $0785		; 8d 85 07
B3_0b3b:		inc $fc			; e6 fc
B3_0b3d:		jmp $a89b		; 4c 9b a8


B3_0b40:		jsr $abcb		; 20 cb ab
B3_0b43:		jsr $ad34		; 20 34 ad
B3_0b46:		jsr $af22		; 20 22 af
B3_0b49:		lda $fc			; a5 fc
B3_0b4b:		and #$fe		; 29 fe
B3_0b4d:		bne B3_0b21 ; d0 d2

B3_0b4f:		jmp $a89b		; 4c 9b a8


B3_0b52:		lda #$00		; a9 00
B3_0b54:		sta $16			; 85 16
B3_0b56:		jsr $ad34		; 20 34 ad
B3_0b59:		lda $16			; a5 16
B3_0b5b:		beq B3_0b5e ; f0 01

B3_0b5d:		rts				; 60 


B3_0b5e:		lda #$44		; a9 44
B3_0b60:		sta wNametableMapping			; 85 25
B3_0b62:		jmp $a89b		; 4c 9b a8


B3_0b65:		lda #$00		; a9 00
B3_0b67:		sta $19			; 85 19
B3_0b69:		lda $ff			; a5 ff
B3_0b6b:		and #$f0		; 29 f0
B3_0b6d:		sta $ff			; 85 ff
B3_0b6f:		jsr func_1f_0bfd		; 20 fd eb
B3_0b72:		rts				; 60 


B3_0b73:		ldx #$00		; a2 00
B3_0b75:		lda #$01		; a9 01
B3_0b77:		sta $054e, x	; 9d 4e 05
B3_0b7a:		lda #$14		; a9 14
B3_0b7c:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_0b7f:		lda #$10		; a9 10
B3_0b81:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_0b84:		txa				; 8a 
B3_0b85:		asl a			; 0a
B3_0b86:		tay				; a8 
B3_0b87:		lda $abab, y	; b9 ab ab
B3_0b8a:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_0b8d:		lda $abac, y	; b9 ac ab
B3_0b90:		ora #$80		; 09 80
B3_0b92:		sta $0470, x	; 9d 70 04
B3_0b95:		cpx #$08		; e0 08
B3_0b97:		bcc B3_0ba0 ; 90 07

B3_0b99:		lda #$f0		; a9 f0
B3_0b9b:		sta wEntityBaseX.w, x	; 9d 38 04
B3_0b9e:		bne B3_0ba5 ; d0 05

B3_0ba0:		lda #$10		; a9 10
B3_0ba2:		sta wEntityBaseX.w, x	; 9d 38 04
B3_0ba5:		inx				; e8 
B3_0ba6:		cpx #$10		; e0 10
B3_0ba8:		bne B3_0b75 ; d0 cb

B3_0baa:		rts				; 60 


B3_0bab:		.db $00				; 00
B3_0bac:		ora ($20, x)	; 01 20
B3_0bae:		ora ($40, x)	; 01 40
B3_0bb0:		ora ($60, x)	; 01 60
B3_0bb2:		ora ($80, x)	; 01 80
B3_0bb4:		ora ($a0, x)	; 01 a0
B3_0bb6:		ora ($c0, x)	; 01 c0
B3_0bb8:		ora ($e0, x)	; 01 e0
B3_0bba:		ora ($00, x)	; 01 00
B3_0bbc:		ora ($20, x)	; 01 20
B3_0bbe:		ora ($40, x)	; 01 40
B3_0bc0:		ora ($60, x)	; 01 60
B3_0bc2:		ora ($80, x)	; 01 80
B3_0bc4:		ora ($a0, x)	; 01 a0
B3_0bc6:		ora ($c0, x)	; 01 c0
B3_0bc8:		ora ($e0, x)	; 01 e0
B3_0bca:		ora ($a9, x)	; 01 a9
B3_0bcc:		.db $00				; 00
B3_0bcd:		sta $17			; 85 17
B3_0bcf:		lda #$20		; a9 20
B3_0bd1:		sta $08			; 85 08
B3_0bd3:		bne B3_0be3 ; d0 0e

B3_0bd5:		lda #$20		; a9 20
B3_0bd7:		sta $08			; 85 08
B3_0bd9:		bne B3_0bdf ; d0 04

B3_0bdb:		lda #$28		; a9 28
B3_0bdd:		sta $08			; 85 08
B3_0bdf:		lda #$01		; a9 01
B3_0be1:		sta $17			; 85 17
B3_0be3:		lda $0783		; ad 83 07
B3_0be6:		sta $00			; 85 00
B3_0be8:		lda $fc			; a5 fc
B3_0bea:		and #$f8		; 29 f8
B3_0bec:		cmp $00			; c5 00
B3_0bee:		sta $0783		; 8d 83 07
B3_0bf1:		beq B3_0c4d ; f0 5a

B3_0bf3:		ldy $0784		; ac 84 07
B3_0bf6:		lda $0785		; ad 85 07
B3_0bf9:		bne B3_0c05 ; d0 0a

B3_0bfb:		lda $ac53, y	; b9 53 ac
B3_0bfe:		cmp #$fe		; c9 fe
B3_0c00:		beq B3_0c4d ; f0 4b

B3_0c02:		sta $0785		; 8d 85 07
B3_0c05:		ldx $1d			; a6 1d
B3_0c07:		lda #$01		; a9 01
B3_0c09:		jsr $ac4e		; 20 4e ac
B3_0c0c:		lda #$00		; a9 00
B3_0c0e:		sta $01			; 85 01
B3_0c10:		lda $fc			; a5 fc
B3_0c12:		and #$f8		; 29 f8
B3_0c14:		asl a			; 0a
B3_0c15:		rol $01			; 26 01
B3_0c17:		asl a			; 0a
B3_0c18:		rol $01			; 26 01
B3_0c1a:		jsr $ac4e		; 20 4e ac
B3_0c1d:		lda $01			; a5 01
B3_0c1f:		ora $08			; 05 08
B3_0c21:		jsr $ac4e		; 20 4e ac
B3_0c24:		iny				; c8 
B3_0c25:		lda $ac53, y	; b9 53 ac
B3_0c28:		cmp #$ff		; c9 ff
B3_0c2a:		beq B3_0c3f ; f0 13

B3_0c2c:		sta $00			; 85 00
B3_0c2e:		iny				; c8 
B3_0c2f:		lda $17			; a5 17
B3_0c31:		beq B3_0c36 ; f0 03

B3_0c33:		lda $ac53, y	; b9 53 ac
B3_0c36:		jsr $ac4e		; 20 4e ac
B3_0c39:		dec $00			; c6 00
B3_0c3b:		bne B3_0c36 ; d0 f9

B3_0c3d:		beq B3_0c24 ; f0 e5

B3_0c3f:		jsr $ac4e		; 20 4e ac
B3_0c42:		stx $1d			; 86 1d
B3_0c44:		dec $0785		; ce 85 07
B3_0c47:		bne B3_0c4d ; d0 04

B3_0c49:		iny				; c8 
B3_0c4a:		sty $0784		; 8c 84 07
B3_0c4d:		rts				; 60 


B3_0c4e:		sta wVramQueue.w, x	; 9d 00 03
B3_0c51:		inx				; e8 
B3_0c52:		rts				; 60 


B3_0c53:		ora ($20, x)	; 01 20
B3_0c55:		.db $00				; 00
B3_0c56:	.db $ff
B3_0c57:		ora ($04, x)	; 01 04
B3_0c59:		.db $00				; 00
B3_0c5a:		clc				; 18 
B3_0c5b:	.db $6e $04 $00
B3_0c5e:	.db $ff
B3_0c5f:	.db $19 $03 $00
B3_0c62:		ora ($6d, x)	; 01 6d
B3_0c64:	.db $17
B3_0c65:		.db $00				; 00
B3_0c66:		ora ($6d, x)	; 01 6d
B3_0c68:	.db $04
B3_0c69:		.db $00				; 00
B3_0c6a:	.db $ff
B3_0c6b:		ora ($03, x)	; 01 03
B3_0c6d:		.db $00				; 00
B3_0c6e:		ora ($6d, x)	; 01 6d
B3_0c70:	.db $17
B3_0c71:		ror $6f01		; 6e 01 6f
B3_0c74:	.db $04
B3_0c75:		.db $00				; 00
B3_0c76:	.db $ff
B3_0c77:	.db $02
B3_0c78:		jsr $ff00		; 20 00 ff
B3_0c7b:	.db $fe $a0 $00
B3_0c7e:		lda $acd3, x	; bd d3 ac
B3_0c81:		sta $00			; 85 00
B3_0c83:		lda $acd4, x	; bd d4 ac
B3_0c86:		sta $01			; 85 01
B3_0c88:		ldx $1d			; a6 1d
B3_0c8a:		lda #$01		; a9 01
B3_0c8c:		jsr $acce		; 20 ce ac
B3_0c8f:		jsr $acc6		; 20 c6 ac
B3_0c92:		jsr $acc6		; 20 c6 ac
B3_0c95:		lda #$0f		; a9 0f
B3_0c97:		jsr $acce		; 20 ce ac
B3_0c9a:		lda #$03		; a9 03
B3_0c9c:		sta $02			; 85 02
B3_0c9e:		jsr $acc6		; 20 c6 ac
B3_0ca1:		dec $02			; c6 02
B3_0ca3:		bne B3_0c9e ; d0 f9

B3_0ca5:		lda ($00), y	; b1 00
B3_0ca7:		cmp #$fe		; c9 fe
B3_0ca9:		beq B3_0cb9 ; f0 0e

B3_0cab:		cmp #$ff		; c9 ff
B3_0cad:		beq B3_0cb2 ; f0 03

B3_0caf:		jmp $ac95		; 4c 95 ac


B3_0cb2:		jsr $acce		; 20 ce ac
B3_0cb5:		iny				; c8 
B3_0cb6:		jmp $ac8a		; 4c 8a ac


B3_0cb9:		lda #$ff		; a9 ff
B3_0cbb:		jsr $acce		; 20 ce ac
B3_0cbe:		stx $1d			; 86 1d
B3_0cc0:		lda #$04		; a9 04
B3_0cc2:		jsr displayStaticLayoutA		; 20 e9 ec
B3_0cc5:		rts				; 60 


B3_0cc6:		lda ($00), y	; b1 00
B3_0cc8:		sta wVramQueue.w, x	; 9d 00 03
B3_0ccb:		inx				; e8 
B3_0ccc:		iny				; c8 
B3_0ccd:		rts				; 60 


B3_0cce:		sta wVramQueue.w, x	; 9d 00 03
B3_0cd1:		inx				; e8 
B3_0cd2:		rts				; 60 


B3_0cd3:		cmp $16ac, x	; dd ac 16
B3_0cd6:		lda $acf8		; ad f8 ac
B3_0cd9:	.db $07
B3_0cda:		lda $ad25		; ad 25 ad
B3_0cdd:		.db $00				; 00
B3_0cde:	.db $3f
B3_0cdf:		php				; 08 
B3_0ce0:	.db $17
B3_0ce1:		jsr $2504		; 20 04 25
B3_0ce4:		jsr $2808		; 20 08 28
B3_0ce7:		jsr $010f		; 20 0f 01
B3_0cea:		jsr $170f		; 20 0f 17
B3_0ced:		sec				; 38 
B3_0cee:	.db $04
B3_0cef:		and $38			; 25 38
B3_0cf1:		php				; 08 
B3_0cf2:		plp				; 28 
B3_0cf3:		sec				; 38 
B3_0cf4:	.db $0f
B3_0cf5:		ora ($38, x)	; 01 38
B3_0cf7:		inc $3f00, x	; fe 00 3f
B3_0cfa:	.db $0f
B3_0cfb:	.db $0f
B3_0cfc:	.db $0f
B3_0cfd:		bit $301b		; 2c 1b 30
B3_0d00:	.db $0f
B3_0d01:	.db $0f
B3_0d02:	.db $0f
B3_0d03:	.db $0f
B3_0d04:	.db $0f
B3_0d05:	.db $0f
B3_0d06:		inc $3f00, x	; fe 00 3f
B3_0d09:	.db $0f
B3_0d0a:	.db $0f
B3_0d0b:	.db $0f
B3_0d0c:	.db $0f
B3_0d0d:	.db $0f
B3_0d0e:	.db $0f
B3_0d0f:		bit $301b		; 2c 1b 30
B3_0d12:	.db $0f
B3_0d13:	.db $0f
B3_0d14:	.db $0f
B3_0d15:		inc $3f00, x	; fe 00 3f
B3_0d18:	.db $0f
B3_0d19:	.db $0f
B3_0d1a:	.db $0f
B3_0d1b:	.db $0f
B3_0d1c:	.db $0f
B3_0d1d:	.db $0f
B3_0d1e:	.db $0f
B3_0d1f:	.db $0f
B3_0d20:	.db $0f
B3_0d21:		bit $301b		; 2c 1b 30
B3_0d24:		inc $3f00, x	; fe 00 3f
B3_0d27:	.db $0f
B3_0d28:	.db $0f
B3_0d29:	.db $0f
B3_0d2a:	.db $0f
B3_0d2b:	.db $0f
B3_0d2c:	.db $0f
B3_0d2d:	.db $0f
B3_0d2e:	.db $0f
B3_0d2f:	.db $0f
B3_0d30:	.db $0f
B3_0d31:	.db $0f
B3_0d32:	.db $0f
B3_0d33:	.db $fe $a2 $00
B3_0d36:		lda $054e, x	; bd 4e 05
B3_0d39:		beq B3_0d4a ; f0 0f

B3_0d3b:		asl a			; 0a
B3_0d3c:		tay				; a8 
B3_0d3d:		lda $ad50, y	; b9 50 ad
B3_0d40:		sta $00			; 85 00
B3_0d42:		lda $ad51, y	; b9 51 ad
B3_0d45:		sta $01			; 85 01
B3_0d47:		jsr $a7e0		; 20 e0 a7
B3_0d4a:		inx				; e8 
B3_0d4b:		cpx #$12		; e0 12
B3_0d4d:		bne B3_0d36 ; d0 e7

B3_0d4f:		rts				; 60 


B3_0d50:		lsr $ad, x		; 56 ad
B3_0d52:		ora $ae			; 05 ae
B3_0d54:	.db $57
B3_0d55:		lda $a960		; ad 60 a9
B3_0d58:		.db $00				; 00
B3_0d59:		sta $10			; 85 10
B3_0d5b:		lda $05d8, x	; bd d8 05
B3_0d5e:		beq B3_0d64 ; f0 04

B3_0d60:		dec $05d8, x	; de d8 05
B3_0d63:		rts				; 60 


B3_0d64:		lda $07f0		; ad f0 07
B3_0d67:		asl a			; 0a
B3_0d68:		tay				; a8 
B3_0d69:		lda $add8, y	; b9 d8 ad
B3_0d6c:		beq B3_0dbb ; f0 4d

B3_0d6e:		cmp #$ff		; c9 ff
B3_0d70:		bne B3_0d82 ; d0 10

B3_0d72:		lda #$01		; a9 01
B3_0d74:		sta $10			; 85 10
B3_0d76:		lda #$00		; a9 00
B3_0d78:		sta $054e, x	; 9d 4e 05
B3_0d7b:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_0d7e:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_0d81:		rts				; 60 


B3_0d82:		cmp #$04		; c9 04
B3_0d84:		bcc B3_0d9b ; 90 15

B3_0d86:		sec				; 38 
B3_0d87:		sbc #$04		; e9 04
B3_0d89:		pha				; 48 
B3_0d8a:		jsr $adc9		; 20 c9 ad
B3_0d8d:		pla				; 68 
B3_0d8e:		stx $12			; 86 12
B3_0d90:		tax				; aa 
B3_0d91:		inx				; e8 
B3_0d92:		txa				; 8a 
B3_0d93:		asl a			; 0a
B3_0d94:		tax				; aa 
B3_0d95:		jsr $ac7c		; 20 7c ac
B3_0d98:		ldx $12			; a6 12
B3_0d9a:		rts				; 60 


B3_0d9b:		sec				; 38 
B3_0d9c:		sbc #$01		; e9 01
B3_0d9e:		pha				; 48 
B3_0d9f:		jsr $adc9		; 20 c9 ad
B3_0da2:		pla				; 68 
B3_0da3:		tay				; a8 
B3_0da4:		lda $adff, y	; b9 ff ad
B3_0da7:		sta wEntityBaseX.w, x	; 9d 38 04
B3_0daa:		lda $ae02, y	; b9 02 ae
B3_0dad:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_0db0:		and #$40		; 29 40
B3_0db2:		sta $0470, x	; 9d 70 04
B3_0db5:		lda #$2e		; a9 2e
B3_0db7:		jsr playSound		; 20 5f e2
B3_0dba:		rts				; 60 


B3_0dbb:		stx $12			; 86 12
B3_0dbd:		ldx #$08		; a2 08
B3_0dbf:		jsr $ac7c		; 20 7c ac
B3_0dc2:		ldx $12			; a6 12
B3_0dc4:		lda #$80		; a9 80
B3_0dc6:		sta $0470, x	; 9d 70 04
B3_0dc9:		lda $07f0		; ad f0 07
B3_0dcc:		asl a			; 0a
B3_0dcd:		tay				; a8 
B3_0dce:		lda $add9, y	; b9 d9 ad
B3_0dd1:		sta $05d8, x	; 9d d8 05
B3_0dd4:		inc $07f0		; ee f0 07
B3_0dd7:		rts				; 60 


B3_0dd8:		.db $00				; 00
B3_0dd9:		bpl B3_0ddc ; 10 01

B3_0ddb:	.db $02
B3_0ddc:		.db $00				; 00
B3_0ddd:	.db $02
B3_0dde:	.db $04
B3_0ddf:	.db $02
B3_0de0:		ora ($02, x)	; 01 02
B3_0de2:		.db $00				; 00
B3_0de3:	.db $02
B3_0de4:		.db $00				; 00
B3_0de5:		jsr $0202		; 20 02 02
B3_0de8:		.db $00				; 00
B3_0de9:	.db $02
B3_0dea:		ora $02			; 05 02
B3_0dec:	.db $02
B3_0ded:	.db $02
B3_0dee:		.db $00				; 00
B3_0def:	.db $02
B3_0df0:		.db $00				; 00
B3_0df1:		jsr $0203		; 20 03 02
B3_0df4:		.db $00				; 00
B3_0df5:	.db $02
B3_0df6:		asl $02			; 06 02
B3_0df8:	.db $03
B3_0df9:	.db $02
B3_0dfa:		.db $00				; 00
B3_0dfb:	.db $02
B3_0dfc:		.db $00				; 00
B3_0dfd:		;removed
	.db $30 $ff

B3_0dff:		cpy #$40		; c0 40
B3_0e01:	.db $80
B3_0e02:		rts				; 60 


B3_0e03:		pla				; 68 
B3_0e04:		;removed
	.db $50 $bd

B3_0e06:	.db $db
B3_0e07:	.db $04
B3_0e08:		sec				; 38 
B3_0e09:		sbc #$00		; e9 00
B3_0e0b:		sta $04db, x	; 9d db 04
B3_0e0e:		lda wEntityBaseY.w, x	; bd 1c 04
B3_0e11:		sbc #$04		; e9 04
B3_0e13:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_0e16:		bcs B3_0e24 ; b0 0c

B3_0e18:		lda $0470, x	; bd 70 04
B3_0e1b:		and #$01		; 29 01
B3_0e1d:		beq B3_0e24 ; f0 05

B3_0e1f:		lda #$40		; a9 40
B3_0e21:		sta $0470, x	; 9d 70 04
B3_0e24:		lda $07ec		; ad ec 07
B3_0e27:		cmp #$1f		; c9 1f
B3_0e29:		beq B3_0e55 ; f0 2a

B3_0e2b:		cmp #$08		; c9 08
B3_0e2d:		bne B3_0e4a ; d0 1b

B3_0e2f:		lda wEntityBaseX.w, x	; bd 38 04
B3_0e32:		bmi B3_0e4a ; 30 16

B3_0e34:		lda wEntityBaseY.w, x	; bd 1c 04
B3_0e37:		cmp #$08		; c9 08
B3_0e39:		bcc B3_0e4a ; 90 0f

B3_0e3b:		cmp #$68		; c9 68
B3_0e3d:		bcs B3_0e4a ; b0 0b

B3_0e3f:		lda #$14		; a9 14
B3_0e41:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_0e44:		lda #$12		; a9 12
B3_0e46:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_0e49:		rts				; 60 


B3_0e4a:		lda #$14		; a9 14
B3_0e4c:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_0e4f:		lda #$10		; a9 10
B3_0e51:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_0e54:		rts				; 60 


B3_0e55:		inc $16			; e6 16
B3_0e57:		lda wEntityBaseY.w, x	; bd 1c 04
B3_0e5a:		cmp #$04		; c9 04
B3_0e5c:		bcc B3_0e63 ; 90 05

B3_0e5e:		cmp #$fc		; c9 fc
B3_0e60:		bcs B3_0e63 ; b0 01

B3_0e62:		rts				; 60 


B3_0e63:		lda #$00		; a9 00
B3_0e65:		sta $054e, x	; 9d 4e 05
B3_0e68:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_0e6b:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_0e6e:		rts				; 60 


B3_0e6f:		lda $0780		; ad 80 07
B3_0e72:		clc				; 18 
B3_0e73:		adc $0782		; 6d 82 07
B3_0e76:		sta $0782		; 8d 82 07
B3_0e79:		lda $0781		; ad 81 07
B3_0e7c:		adc $fc			; 65 fc
B3_0e7e:		cmp #$f0		; c9 f0
B3_0e80:		bcc B3_0e85 ; 90 03

B3_0e82:		clc				; 18 
B3_0e83:		adc #$10		; 69 10
B3_0e85:		sta wScrollY			; 85 fc
B3_0e87:		rts				; 60 


B3_0e88:		lda #$50		; a9 50
B3_0e8a:		sta wNametableMapping			; 85 25
B3_0e8c:		rts				; 60 


B3_0e8d:		lda $07ed		; ad ed 07
B3_0e90:		ora $07ee		; 0d ee 07
B3_0e93:		beq B3_0ea1 ; f0 0c

B3_0e95:		dec $07ed		; ce ed 07
B3_0e98:		ldy $07ed		; ac ed 07
B3_0e9b:		iny				; c8 
B3_0e9c:		bne B3_0ea1 ; d0 03

B3_0e9e:		dec $07ee		; ce ee 07
B3_0ea1:		rts				; 60 


B3_0ea2:		lda $07ef		; ad ef 07
B3_0ea5:		asl a			; 0a
B3_0ea6:		asl a			; 0a
B3_0ea7:		asl a			; 0a
B3_0ea8:		asl a			; 0a
B3_0ea9:		sta $04			; 85 04
B3_0eab:		lda $af00, x	; bd 00 af
B3_0eae:		sta $00			; 85 00
B3_0eb0:		lda $af01, x	; bd 01 af
B3_0eb3:		sta $01			; 85 01
B3_0eb5:		ldx $1d			; a6 1d
B3_0eb7:		ldy #$00		; a0 00
B3_0eb9:		lda #$01		; a9 01
B3_0ebb:		jsr $acce		; 20 ce ac
B3_0ebe:		jsr $acc6		; 20 c6 ac
B3_0ec1:		jsr $acc6		; 20 c6 ac
B3_0ec4:		lda #$0f		; a9 0f
B3_0ec6:		jsr $acce		; 20 ce ac
B3_0ec9:		lda #$03		; a9 03
B3_0ecb:		sta $02			; 85 02
B3_0ecd:		lda $04			; a5 04
B3_0ecf:		bne B3_0ed5 ; d0 04

B3_0ed1:		lda #$0f		; a9 0f
B3_0ed3:		bne B3_0ee7 ; d0 12

B3_0ed5:		lda ($00), y	; b1 00
B3_0ed7:		and #$0f		; 29 0f
B3_0ed9:		sta $03			; 85 03
B3_0edb:		lda ($00), y	; b1 00
B3_0edd:		and #$f0		; 29 f0
B3_0edf:		cmp $04			; c5 04
B3_0ee1:		bcc B3_0ee5 ; 90 02

B3_0ee3:		lda $04			; a5 04
B3_0ee5:		ora $03			; 05 03
B3_0ee7:		jsr $acce		; 20 ce ac
B3_0eea:		iny				; c8 
B3_0eeb:		dec $02			; c6 02
B3_0eed:		bne B3_0ecd ; d0 de

B3_0eef:		lda ($00), y	; b1 00
B3_0ef1:		cmp #$ff		; c9 ff
B3_0ef3:		bne B3_0ec4 ; d0 cf

B3_0ef5:		jsr $acce		; 20 ce ac
B3_0ef8:		stx $1d			; 86 1d
B3_0efa:		lda #$04		; a9 04
B3_0efc:		jsr displayStaticLayoutA		; 20 e9 ec
B3_0eff:		rts				; 60 


B3_0f00:	.db $04
B3_0f01:	.db $af
B3_0f02:	.db $13
B3_0f03:	.db $af
B3_0f04:		.db $00				; 00
B3_0f05:	.db $3f
B3_0f06:		php				; 08 
B3_0f07:	.db $17
B3_0f08:		jsr $2504		; 20 04 25
B3_0f0b:		jsr $2808		; 20 08 28
B3_0f0e:		jsr $010f		; 20 0f 01
B3_0f11:	.db $20 $ff $00
B3_0f14:	.db $3f
B3_0f15:		asl $05, x		; 16 05
B3_0f17:		jsr $0213		; 20 13 02
B3_0f1a:		jsr $0314		; 20 14 03
B3_0f1d:	.db $3b
B3_0f1e:		asl $27, x		; 16 27
B3_0f20:		;removed
	.db $10 $ff

B3_0f22:		lda #$00		; a9 00
B3_0f24:		sta $00			; 85 00
B3_0f26:		lda $0780		; ad 80 07
B3_0f29:		clc				; 18 
B3_0f2a:		adc $0782		; 6d 82 07
B3_0f2d:		sta $0782		; 8d 82 07
B3_0f30:		bcc B3_0f36 ; 90 04

B3_0f32:		lda #$01		; a9 01
B3_0f34:		sta $00			; 85 00
B3_0f36:		lda $0781		; ad 81 07
B3_0f39:		adc $fc			; 65 fc
B3_0f3b:		cmp #$f0		; c9 f0
B3_0f3d:		bcc B3_0f4b ; 90 0c

B3_0f3f:		clc				; 18 
B3_0f40:		adc #$10		; 69 10
B3_0f42:		sta wScrollY			; 85 fc
B3_0f44:		lda $ff			; a5 ff
B3_0f46:		eor #$02		; 49 02
B3_0f48:		sta $ff			; 85 ff
B3_0f4a:		rts				; 60 

B3_0f4b:		sta wScrollY			; 85 fc
B3_0f4d:		clc				; 18 
B3_0f4e:		lda $00			; a5 00
B3_0f50:		beq B3_0f53 ; f0 01

B3_0f52:		sec				; 38 
B3_0f53:		lda $0781		; ad 81 07
B3_0f56:		adc $0788		; 6d 88 07
B3_0f59:		sta $0788		; 8d 88 07
B3_0f5c:		lda $0787		; ad 87 07
B3_0f5f:		adc #$00		; 69 00
B3_0f61:		sta $0787		; 8d 87 07
B3_0f64:		rts				; 60 

.include "code/gameStateAB.s"

func_03_1c8d:
B3_1c8d:		lda wPlayerStateDoubled.w, x	; bd 65 05
B3_1c90:		lsr a			; 4a
B3_1c91:		lsr a			; 4a
B3_1c92:		lsr a			; 4a
B3_1c93:		lsr a			; 4a
B3_1c94:		lsr a			; 4a
B3_1c95:		lsr a			; 4a
B3_1c96:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $bc9f
	.dw $bca7
	.dw $bcbc
B3_1c9f:	lda #$80
B3_1ca1:		sta $05d8, x	; 9d d8 05
B3_1ca4:		jmp func_1f_1f8a		; 4c 8a ff


B3_1ca7:		dec $05d8, x	; de d8 05
B3_1caa:		bne B3_1cbb ; d0 0f

B3_1cac:		lda #$08		; a9 08
B3_1cae:		sta $05d8, x	; 9d d8 05
B3_1cb1:		lda wPlayerStateDoubled.w, x	; bd 65 05
B3_1cb4:		and #$bf		; 29 bf
B3_1cb6:		ora #$80		; 09 80
B3_1cb8:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B3_1cbb:		rts				; 60 


B3_1cbc:		lda $1a			; a5 1a
B3_1cbe:		and #$03		; 29 03
B3_1cc0:		bne B3_1cbb ; d0 f9

B3_1cc2:		lda $054e, x	; bd 4e 05
B3_1cc5:		cmp #$57		; c9 57
B3_1cc7:		beq B3_1cf0 ; f0 27

B3_1cc9:		cmp #$5b		; c9 5b
B3_1ccb:		beq B3_1cf0 ; f0 23

B3_1ccd:		lda wEntityPaletteOverride.w, x	; bd 54 04
B3_1cd0:		eor #$04		; 49 04
B3_1cd2:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_1cd5:		lda $05d8, x	; bd d8 05
B3_1cd8:		beq B3_1cdf ; f0 05

B3_1cda:		dec $05d8, x	; de d8 05
B3_1cdd:		bne B3_1cbb ; d0 dc

B3_1cdf:		lda wEntityPaletteOverride.w, x	; bd 54 04
B3_1ce2:		and #$fb		; 29 fb
B3_1ce4:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_1ce7:		lda $0470, x	; bd 70 04
B3_1cea:		and #$fd		; 29 fd
B3_1cec:		sta $0470, x	; 9d 70 04
B3_1cef:		rts				; 60 


B3_1cf0:		lda wEntityPaletteOverride.w, x	; bd 54 04
B3_1cf3:		and #$04		; 29 04
B3_1cf5:		bne B3_1d0e ; d0 17

B3_1cf7:		lda #$04		; a9 04
B3_1cf9:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_1cfc:		lda $05d8, x	; bd d8 05
B3_1cff:		beq B3_1d06 ; f0 05

B3_1d01:		dec $05d8, x	; de d8 05
B3_1d04:		bne B3_1cef ; d0 e9

B3_1d06:		lda #$03		; a9 03
B3_1d08:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_1d0b:		jmp $bce7		; 4c e7 bc


B3_1d0e:		lda #$03		; a9 03
B3_1d10:		bne B3_1cf9 ; d0 e7

B3_1d12:		ldy $0645, x	; bc 45 06
B3_1d15:		lda $bd27, y	; b9 27 bd
B3_1d18:		sta $0f			; 85 0f
B3_1d1a:		lda $bd47, y	; b9 47 bd
B3_1d1d:		tay				; a8 
B3_1d1e:	.db $b9 $f0 $00
B3_1d21:		ora $0f			; 05 0f
B3_1d23:	.db $99 $f0 $00
B3_1d26:		rts				; 60 


B3_1d27:		ora ($02, x)	; 01 02
B3_1d29:	.db $04
B3_1d2a:		php				; 08 
B3_1d2b:		bpl B3_1d4d ; 10 20

B3_1d2d:		rti				; 40 


B3_1d2e:	.db $80
B3_1d2f:		ora ($02, x)	; 01 02
B3_1d31:	.db $04
B3_1d32:		php				; 08 
B3_1d33:		bpl B3_1d55 ; 10 20

B3_1d35:		rti				; 40 


B3_1d36:	.db $80
B3_1d37:		ora ($02, x)	; 01 02
B3_1d39:	.db $04
B3_1d3a:		php				; 08 
B3_1d3b:		bpl B3_1d5d ; 10 20

B3_1d3d:		rti				; 40 


B3_1d3e:	.db $80
B3_1d3f:		ora ($02, x)	; 01 02
B3_1d41:	.db $04
B3_1d42:		php				; 08 
B3_1d43:		bpl B3_1d65 ; 10 20

B3_1d45:		rti				; 40 


B3_1d46:	.db $80
B3_1d47:		.db $00				; 00
B3_1d48:		.db $00				; 00
B3_1d49:		.db $00				; 00
B3_1d4a:		.db $00				; 00
B3_1d4b:		.db $00				; 00
B3_1d4c:		.db $00				; 00
B3_1d4d:		.db $00				; 00
B3_1d4e:		.db $00				; 00
B3_1d4f:		ora ($01, x)	; 01 01
B3_1d51:		ora ($01, x)	; 01 01
B3_1d53:		ora ($01, x)	; 01 01
B3_1d55:		ora ($01, x)	; 01 01
B3_1d57:	.db $02
B3_1d58:	.db $02
B3_1d59:	.db $02
B3_1d5a:	.db $02
B3_1d5b:	.db $02
B3_1d5c:	.db $02
B3_1d5d:	.db $02
B3_1d5e:	.db $02
B3_1d5f:	.db $03
B3_1d60:	.db $03
B3_1d61:	.db $03
B3_1d62:	.db $03
B3_1d63:	.db $03
B3_1d64:	.db $03
B3_1d65:	.db $03
B3_1d66:	.db $03