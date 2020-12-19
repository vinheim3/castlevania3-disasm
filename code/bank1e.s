
.org $900

setBankOfRoomGroupMetatilesPointers:
	ldy wCurrRoomGroup
	jmp setBankOfRoomGroupLayoutPalettesData@setStandardRoomGroupBanks


; metatiles, tiles and palettes
setBankOfRoomGroupLayoutPalettesData:
	ldy wCurrRoomGroup
	cpy #$0e
	beq @group0e

	cpy #$0d
	beq @group0d

@setStandardRoomGroupBanks:
	lda @roomGroupMetatileBanks.w, y
	jmp setAndSaveLowerBank

@group0d:
	lda wCurrRoomSection
	beq @group0dSection0

	cmp #$02
	beq @group0dSection2

	cmp #$03
	bne @setStandardRoomGroupBanks

; section 3
	lda wCurrRoomIdx
	bne @setStandardRoomGroupBanks

; group 0d, section 3, room 0 in bank 0e
	beq +

@group0dSection2:
	lda wCurrRoomIdx
	cmp #$02
	bne @setStandardRoomGroupBanks

; group 0d, section 2, room 2 data in bank 0e
+	ldy #$05
	bne @setStandardRoomGroupBanks

@group0dSection0:
	lda wCurrRoomIdx
	beq +

	cmp #$01
	bne @setStandardRoomGroupBanks

; group 0d, section 0, room 0/1 data in bank 0x10
+	ldy #$02
	bne @setStandardRoomGroupBanks

@group0e:
	lda wCurrRoomSection
	bne @setStandardRoomGroupBanks

; section 0
	lda wCurrRoomIdx
	cmp #$01
	bne @setStandardRoomGroupBanks

; group 0e, section 0, room 1 data in bank 1
	ldy #$01
	bne @setStandardRoomGroupBanks

@roomGroupMetatileBanks:
	.db $90 $90 $90 $90 $90
	.db $8e $8e $8e $8e $8c
	.db $8c $8e $8c $8c $8c


func_1e_095a:
B30_095a:		lda #$00		; a9 00
B30_095c:		sta $17			; 85 17
B30_095e:		lda wCurrRoomMetadataByte			; a5 68
B30_0960:		cmp #$82		; c9 82
B30_0962:		bcs B30_096f ; b0 0b

B30_0964:		lda wEntityVertSubSpeed.w		; ad 37 05
B30_0967:		sta $0a			; 85 0a
B30_0969:		lda wEntityVertSpeed.w		; ad 20 05
B30_096c:		sta $0b			; 85 0b
B30_096e:		rts				; 60 

B30_096f:		cmp #$84		; c9 84
B30_0971:		beq B30_09a3 ; f0 30

B30_0973:		lda wCurrScrollXRoom			; a5 57
B30_0975:		cmp wCurrRoomNumScreens			; c5 71
B30_0977:		bne B30_097f ; d0 06

B30_0979:		lda wCurrScrollXWithinRoom			; a5 56
B30_097b:		cmp #$30		; c9 30
B30_097d:		beq B30_0964 ; f0 e5

B30_097f:		ldy #$00		; a0 00
B30_0981:		lda wCurrRoomMetadataByte			; a5 68
B30_0983:		sec				; 38 
B30_0984:		sbc #$82		; e9 82
B30_0986:		beq B30_098a ; f0 02

B30_0988:		ldy #$03		; a0 03
B30_098a:		lda $ca30, y	; b9 30 ca
B30_098d:		sta $0a			; 85 0a
B30_098f:		lda $ca31, y	; b9 31 ca
B30_0992:		sta $0b			; 85 0b
B30_0994:		lda $ca32, y	; b9 32 ca
B30_0997:		sta $65			; 85 65
B30_0999:		rts				; 60 


B30_099a:		lda #$02		; a9 02
B30_099c:		sta $65			; 85 65
B30_099e:		lda #$00		; a9 00
B30_09a0:		sta $0b			; 85 0b
B30_09a2:		rts				; 60 


B30_09a3:		lda wCurrScrollXRoom			; a5 57
B30_09a5:		ora wCurrScrollXWithinRoom			; 05 56
B30_09a7:		beq B30_099a ; f0 f1

B30_09a9:		lda wCurrScrollXRoom			; a5 57
B30_09ab:		cmp wCurrRoomNumScreens			; c5 71
B30_09ad:		bne B30_09b5 ; d0 06

B30_09af:		lda wCurrScrollXWithinRoom			; a5 56
B30_09b1:		cmp #$30		; c9 30
B30_09b3:		beq B30_0964 ; f0 af

B30_09b5:		ldy $07a4		; ac a4 07
B30_09b8:		bne B30_09d3 ; d0 19

B30_09ba:		lda #$00		; a9 00
B30_09bc:		sta $0a			; 85 0a
B30_09be:		sta $0b			; 85 0b
B30_09c0:		inc $07a3		; ee a3 07
B30_09c3:		lda $07a3		; ad a3 07
B30_09c6:		cmp #$80		; c9 80
B30_09c8:		bcc B30_09d2 ; 90 08

B30_09ca:		lda #$08		; a9 08
B30_09cc:		sta $07a3		; 8d a3 07
B30_09cf:		inc $07a4		; ee a4 07
B30_09d2:		rts				; 60 


B30_09d3:		dey				; 88 
B30_09d4:		bne B30_09f7 ; d0 21

B30_09d6:		dec $07a3		; ce a3 07
B30_09d9:		bne B30_09e5 ; d0 0a

B30_09db:		lda #$04		; a9 04
B30_09dd:		jsr $c9cc		; 20 cc c9
B30_09e0:		lda #$37		; a9 37
B30_09e2:		jsr playSound		; 20 5f e2
B30_09e5:		inc $17			; e6 17
B30_09e7:		lda $07a3		; ad a3 07
B30_09ea:		and #$01		; 29 01
B30_09ec:		asl a			; 0a
B30_09ed:		tay				; a8 
B30_09ee:		lda $ca36, y	; b9 36 ca
B30_09f1:		ldx $ca37, y	; be 37 ca
B30_09f4:		jmp $ca08		; 4c 08 ca


B30_09f7:		dey				; 88 
B30_09f8:		bne B30_0a11 ; d0 17

B30_09fa:		dec $07a3		; ce a3 07
B30_09fd:		bne B30_0a04 ; d0 05

B30_09ff:		lda #$10		; a9 10
B30_0a01:		jsr $c9cc		; 20 cc c9
B30_0a04:		ldx #$00		; a2 00
B30_0a06:		lda #$f8		; a9 f8
B30_0a08:		stx $65			; 86 65
B30_0a0a:		sta $0b			; 85 0b
B30_0a0c:		lda #$00		; a9 00
B30_0a0e:		sta $0a			; 85 0a
B30_0a10:		rts				; 60 


B30_0a11:		dec $07a3		; ce a3 07
B30_0a14:		bne B30_0a1e ; d0 08

B30_0a16:		lda #$00		; a9 00
B30_0a18:		sta $07a4		; 8d a4 07
B30_0a1b:		sta $07a3		; 8d a3 07
B30_0a1e:		inc $17			; e6 17
B30_0a20:		lda $07a3		; ad a3 07
B30_0a23:		and #$01		; 29 01
B30_0a25:		asl a			; 0a
B30_0a26:		tay				; a8 
B30_0a27:		lda $ca3a, y	; b9 3a ca
B30_0a2a:		ldx $ca3b, y	; be 3b ca
B30_0a2d:		jmp $ca08		; 4c 08 ca


B30_0a30:		cpy #$ff		; c0 ff
B30_0a32:		.db $00				; 00
B30_0a33:		rti				; 40 


B30_0a34:		.db $00				; 00
B30_0a35:		ora ($01, x)	; 01 01
B30_0a37:		ora ($ff, x)	; 01 ff
B30_0a39:		.db $00				; 00
B30_0a3a:	.db $02
B30_0a3b:		ora ($fe, x)	; 01 fe
B30_0a3d:		.db $00				; 00
B30_0a3e:		jsr func_1e_095a		; 20 5a c9
B30_0a41:		lda wCurrScrollXWithinRoom			; a5 56
B30_0a43:		sta $08			; 85 08
B30_0a45:		ldy $65			; a4 65
B30_0a47:		beq B30_0a92 ; f0 49

B30_0a49:		dey				; 88 
B30_0a4a:		beq B30_0a55 ; f0 09

B30_0a4c:		sec				; 38 
B30_0a4d:		lda $08			; a5 08
B30_0a4f:		sbc wCurrScrollXWithinRoom			; e5 56
B30_0a51:		sta $6e			; 85 6e
B30_0a53:		clc				; 18 
B30_0a54:		rts				; 60 


B30_0a55:		clc				; 18 
B30_0a56:		lda $58			; a5 58
B30_0a58:		adc $0a			; 65 0a
B30_0a5a:		sta $58			; 85 58
B30_0a5c:		lda wCurrScrollXWithinRoom			; a5 56
B30_0a5e:		adc $0b			; 65 0b
B30_0a60:		sta wCurrScrollXWithinRoom			; 85 56
B30_0a62:		cmp #$f0		; c9 f0
B30_0a64:		bcc B30_0a74 ; 90 0e

B30_0a66:		clc				; 18 
B30_0a67:		adc #$10		; 69 10
B30_0a69:		sta wCurrScrollXWithinRoom			; 85 56
B30_0a6b:		inc $57			; e6 57
B30_0a6d:		lda $08			; a5 08
B30_0a6f:		clc				; 18 
B30_0a70:		adc #$10		; 69 10
B30_0a72:		sta $08			; 85 08
B30_0a74:		lda wCurrRoomNumScreens			; a5 71
B30_0a76:		cmp wCurrScrollXRoom			; c5 57
B30_0a78:		bne B30_0a84 ; d0 0a

B30_0a7a:		lda wCurrScrollXWithinRoom			; a5 56
B30_0a7c:		cmp #$30		; c9 30
B30_0a7e:		bcc B30_0a84 ; 90 04

B30_0a80:		lda #$30		; a9 30
B30_0a82:		sta wCurrScrollXWithinRoom			; 85 56
B30_0a84:		jmp $cab3		; 4c b3 ca


B30_0a87:		lda #$00		; a9 00
B30_0a89:		sta wCurrScrollXWithinRoom			; 85 56
B30_0a8b:		sta wCurrScrollXRoom			; 85 57
B30_0a8d:		sta $58			; 85 58
B30_0a8f:		jmp $cab3		; 4c b3 ca


B30_0a92:		clc				; 18 
B30_0a93:		lda $58			; a5 58
B30_0a95:		adc $0a			; 65 0a
B30_0a97:		sta $58			; 85 58
B30_0a99:		lda wCurrScrollXWithinRoom			; a5 56
B30_0a9b:		adc $0b			; 65 0b
B30_0a9d:		sta wCurrScrollXWithinRoom			; 85 56
B30_0a9f:		bcs B30_0ab3 ; b0 12

B30_0aa1:		ldy $57			; a4 57
B30_0aa3:		beq B30_0a87 ; f0 e2

B30_0aa5:		sec				; 38 
B30_0aa6:		sbc #$10		; e9 10
B30_0aa8:		sta wCurrScrollXWithinRoom			; 85 56
B30_0aaa:		dec $57			; c6 57
B30_0aac:		lda $08			; a5 08
B30_0aae:		sec				; 38 
B30_0aaf:		sbc #$10		; e9 10
B30_0ab1:		sta $08			; 85 08
B30_0ab3:		lda $17			; a5 17
B30_0ab5:		bne B30_0a4c ; d0 95

B30_0ab7:		lda wCurrScrollXWithinRoom			; a5 56
B30_0ab9:		and #$f8		; 29 f8
B30_0abb:		cmp $66			; c5 66
B30_0abd:		beq B30_0a4c ; f0 8d

B30_0abf:		sta $66			; 85 66
B30_0ac1:		ldy $65			; a4 65
B30_0ac3:		beq B30_0af8 ; f0 33

B30_0ac5:		ldy $5c			; a4 5c
B30_0ac7:		iny				; c8 
B30_0ac8:		cpy #$1e		; c0 1e
B30_0aca:		bne B30_0ad5 ; d0 09

B30_0acc:		lda $5a			; a5 5a
B30_0ace:		clc				; 18 
B30_0acf:		adc #$08		; 69 08
B30_0ad1:		sta $5a			; 85 5a
B30_0ad3:		ldy #$00		; a0 00
B30_0ad5:		sty $5c			; 84 5c
B30_0ad7:		ldy $65			; a4 65
B30_0ad9:	.db $b9 $59 $00
B30_0adc:		and #$f8		; 29 f8
B30_0ade:	.db $99 $59 $00
B30_0ae1:	.db $b9 $5b $00
B30_0ae4:		lsr a			; 4a
B30_0ae5:		lsr a			; 4a
B30_0ae6:	.db $19 $59 $00
B30_0ae9:	.db $99 $59 $00
B30_0aec:		jsr $cfcb		; 20 cb cf
B30_0aef:		lda $08			; a5 08
B30_0af1:		sec				; 38 
B30_0af2:		sbc wCurrScrollXWithinRoom			; e5 56
B30_0af4:		sta $6e			; 85 6e
B30_0af6:		sec				; 38 
B30_0af7:		rts				; 60 


B30_0af8:		ldy $5b			; a4 5b
B30_0afa:		dey				; 88 
B30_0afb:		bpl B30_0b06 ; 10 09

B30_0afd:		lda $59			; a5 59
B30_0aff:		sec				; 38 
B30_0b00:		sbc #$08		; e9 08
B30_0b02:		sta $59			; 85 59
B30_0b04:		ldy #$1d		; a0 1d
B30_0b06:		sty $5b			; 84 5b
B30_0b08:		jmp $cad7		; 4c d7 ca


func_1e_0b0b:
B30_0b0b:		jsr $ca3e		; 20 3e ca
B30_0b0e:		bcc B30_0b1a ; 90 0a

B30_0b10:		jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
B30_0b13:		ldy $65			; a4 65
B30_0b15:	.db $b9 $59 $00
B30_0b18:		bpl B30_0b1b ; 10 01

B30_0b1a:		rts				; 60 


B30_0b1b:		tya				; 98 
B30_0b1c:		asl a			; 0a
B30_0b1d:		tax				; aa 
B30_0b1e:		lda $52, x		; b5 52
B30_0b20:		sta $10			; 85 10
B30_0b22:		lda $53, x		; b5 53
B30_0b24:		sta $11			; 85 11
B30_0b26:		ldx #$ff		; a2 ff
B30_0b28:		ldy $65			; a4 65
B30_0b2a:	.db $b9 $5b $00
B30_0b2d:		and #$01		; 29 01
B30_0b2f:		bne B30_0b39 ; d0 08

B30_0b31:	.db $b9 $5b $00
B30_0b34:		and #$fe		; 29 fe
B30_0b36:		asl a			; 0a
B30_0b37:		asl a			; 0a
B30_0b38:		tax				; aa 
B30_0b39:		stx $04			; 86 04
B30_0b3b:	.db $b9 $5b $00
B30_0b3e:		and #$03		; 29 03
B30_0b40:		asl a			; 0a
B30_0b41:		asl a			; 0a
B30_0b42:		sta $12			; 85 12
B30_0b44:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_0b46:	.db $b9 $5b $00
B30_0b49:		and #$03		; 29 03
B30_0b4b:		cmp #$01		; c9 01
B30_0b4d:		bne B30_0b53 ; d0 04

B30_0b4f:		lda #$07		; a9 07
B30_0b51:		bne B30_0b55 ; d0 02

B30_0b53:		lda #$06		; a9 06
B30_0b55:		sta wVramQueue.w, x	; 9d 00 03
B30_0b58:		sta $06			; 85 06
B30_0b5a:		inx				; e8 
B30_0b5b:		lda #$00		; a9 00
B30_0b5d:		sta wVramQueueDest			; 85 61
B30_0b5f:		ldy $65			; a4 65
B30_0b61:	.db $b9 $59 $00
B30_0b64:		and #$07		; 29 07
B30_0b66:		lsr a			; 4a
B30_0b67:		ror wVramQueueDest			; 66 61
B30_0b69:		clc				; 18 
B30_0b6a:		adc #$28		; 69 28
B30_0b6c:		sta $0301, x	; 9d 01 03
B30_0b6f:	.db $b9 $5b $00
B30_0b72:		and #$03		; 29 03
B30_0b74:		asl a			; 0a
B30_0b75:		asl a			; 0a
B30_0b76:		asl a			; 0a
B30_0b77:		asl a			; 0a
B30_0b78:		asl a			; 0a
B30_0b79:		clc				; 18 
B30_0b7a:		adc wVramQueueDest			; 65 61
B30_0b7c:		sta wVramQueue.w, x	; 9d 00 03
B30_0b7f:		inx				; e8 
B30_0b80:		inx				; e8 
B30_0b81:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0b83:		lda $06			; a5 06
B30_0b85:		cmp #$07		; c9 07
B30_0b87:		bne B30_0b9c ; d0 13

B30_0b89:	.db $b9 $59 $00
B30_0b8c:		and #$07		; 29 07
B30_0b8e:		tay				; a8 
B30_0b8f:		lda $cd5c, y	; b9 5c cd
B30_0b92:		sta $0320, x	; 9d 20 03
B30_0b95:		lda #$2b		; a9 2b
B30_0b97:		sta $0321, x	; 9d 21 03
B30_0b9a:		stx $07			; 86 07
B30_0b9c:		jsr func_1e_0f6c		; 20 6c cf
B30_0b9f:		ldy $12			; a4 12
B30_0ba1:		jsr $cbea		; 20 ea cb
B30_0ba4:		jsr func_1e_0f6c		; 20 6c cf
B30_0ba7:		ldy $12			; a4 12
B30_0ba9:		jsr $cbea		; 20 ea cb
B30_0bac:		jsr func_1e_0f6c		; 20 6c cf
B30_0baf:		ldy $12			; a4 12
B30_0bb1:		jsr $cbea		; 20 ea cb
B30_0bb4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bb7:		ldy $12			; a4 12
B30_0bb9:		jsr $cbea		; 20 ea cb
B30_0bbc:		jsr func_1e_0f6c		; 20 6c cf
B30_0bbf:		ldy $12			; a4 12
B30_0bc1:		jsr $cbea		; 20 ea cb
B30_0bc4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bc7:		ldy $12			; a4 12
B30_0bc9:		jsr $cbea		; 20 ea cb
B30_0bcc:		jsr func_1e_0f6c		; 20 6c cf
B30_0bcf:		ldy $12			; a4 12
B30_0bd1:		jsr $cbea		; 20 ea cb
B30_0bd4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bd7:		ldy $12			; a4 12
B30_0bd9:		jsr $cbea		; 20 ea cb
B30_0bdc:		lda $06			; a5 06
B30_0bde:		cmp #$06		; c9 06
B30_0be0:		beq B30_0be9 ; f0 07

B30_0be2:		lda $1d			; a5 1d
B30_0be4:		clc				; 18 
B30_0be5:		adc #$0a		; 69 0a
B30_0be7:		sta $1d			; 85 1d
B30_0be9:		rts				; 60 


B30_0bea:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_0bec:		lda ($02), y	; b1 02
B30_0bee:		sta wVramQueue.w, x	; 9d 00 03
B30_0bf1:		inx				; e8 
B30_0bf2:		iny				; c8 
B30_0bf3:		lda ($02), y	; b1 02
B30_0bf5:		sta wVramQueue.w, x	; 9d 00 03
B30_0bf8:		inx				; e8 
B30_0bf9:		iny				; c8 
B30_0bfa:		lda ($02), y	; b1 02
B30_0bfc:		sta wVramQueue.w, x	; 9d 00 03
B30_0bff:		inx				; e8 
B30_0c00:		iny				; c8 
B30_0c01:		lda ($02), y	; b1 02
B30_0c03:		sta wVramQueue.w, x	; 9d 00 03
B30_0c06:		inx				; e8 
B30_0c07:		iny				; c8 
B30_0c08:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0c0a:		lda $06			; a5 06
B30_0c0c:		cmp #$06		; c9 06
B30_0c0e:		beq B30_0c1d ; f0 0d

B30_0c10:		ldx $07			; a6 07
B30_0c12:		ldy $63			; a4 63
B30_0c14:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_0c16:		sta $0322, x	; 9d 22 03
B30_0c19:		inc $07			; e6 07
B30_0c1b:		bne B30_0c40 ; d0 23

B30_0c1d:		ldy $04			; a4 04
B30_0c1f:		cpy #$ff		; c0 ff
B30_0c21:		beq B30_0c40 ; f0 1d

B30_0c23:		lda $02fc, x	; bd fc 02
B30_0c26:		jsr $d3b9		; 20 b9 d3
B30_0c29:		tya				; 98 
B30_0c2a:		asl a			; 0a
B30_0c2b:		asl a			; 0a
B30_0c2c:		asl a			; 0a
B30_0c2d:		asl a			; 0a
B30_0c2e:		sta $05			; 85 05
B30_0c30:		lda $02fe, x	; bd fe 02
B30_0c33:		jsr $d3b9		; 20 b9 d3
B30_0c36:		tya				; 98 
B30_0c37:		ora $05			; 05 05
B30_0c39:		ldy $04			; a4 04
B30_0c3b:		sta $06e0, y	; 99 e0 06
B30_0c3e:		inc $04			; e6 04
B30_0c40:		inc $10			; e6 10
B30_0c42:		bne B30_0c46 ; d0 02

B30_0c44:		inc $11			; e6 11
B30_0c46:		rts				; 60 


func_1e_0c47:
B30_0c47:		jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
B30_0c4a:		lda $5a			; a5 5a
B30_0c4c:		bpl B30_0c51 ; 10 03

B30_0c4e:		jmp $cd4e		; 4c 4e cd


B30_0c51:		asl a			; 0a
B30_0c52:		asl a			; 0a
B30_0c53:		rol $11			; 26 11
B30_0c55:		asl a			; 0a
B30_0c56:		rol $11			; 26 11
B30_0c58:		sta $10			; 85 10
B30_0c5a:		lda $11			; a5 11
B30_0c5c:		and #$03		; 29 03
B30_0c5e:		sta $11			; 85 11
B30_0c60:		lda $b6			; a5 b6
B30_0c62:		ldx #$10		; a2 10
B30_0c64:		jsr incPointerXByA		; 20 99 e8
B30_0c67:		lda #$01		; a9 01
B30_0c69:		ldx #$10		; a2 10
B30_0c6b:		jsr incPointerXByA		; 20 99 e8
B30_0c6e:		lda $50			; a5 50
B30_0c70:		clc				; 18 
B30_0c71:		adc $10			; 65 10
B30_0c73:		sta $10			; 85 10
B30_0c75:		lda $51			; a5 51
B30_0c77:		adc $11			; 65 11
B30_0c79:		sta $11			; 85 11
B30_0c7b:		lda #$00		; a9 00
B30_0c7d:		sta wVramQueueDest			; 85 61
B30_0c7f:		lda $5a			; a5 5a
B30_0c81:		lsr a			; 4a
B30_0c82:		ror wVramQueueDest			; 66 61
B30_0c84:		and #$03		; 29 03
B30_0c86:		clc				; 18 
B30_0c87:		adc #$28		; 69 28
B30_0c89:		sta wVramQueueDest+1			; 85 62
B30_0c8b:		lda $b6			; a5 b6
B30_0c8d:		asl a			; 0a
B30_0c8e:		asl a			; 0a
B30_0c8f:		ldx #wVramQueueDest		; a2 61
B30_0c91:		jsr incPointerXByA		; 20 99 e8
B30_0c94:		lda $5a			; a5 5a
B30_0c96:		and #$07		; 29 07
B30_0c98:		asl a			; 0a
B30_0c99:		asl a			; 0a
B30_0c9a:		asl a			; 0a
B30_0c9b:		asl a			; 0a
B30_0c9c:		sta $12			; 85 12
B30_0c9e:		jsr func_1e_0f6c		; 20 6c cf
B30_0ca1:		lda $5a			; a5 5a
B30_0ca3:		and #$07		; 29 07
B30_0ca5:		cmp #$07		; c9 07
B30_0ca7:		bne B30_0cb3 ; d0 0a

B30_0ca9:		lda #$02		; a9 02
B30_0cab:		sta $06			; 85 06
B30_0cad:		jsr vramQueueSet5bytesDestToCopy_noData		; 20 c0 e8
B30_0cb0:		jmp $ccc0		; 4c c0 cc


B30_0cb3:		lda #$04		; a9 04
B30_0cb5:		sta $06			; 85 06
B30_0cb7:		jsr vramQueueSet4bytesDestToCopy_noData		; 20 c6 e8
B30_0cba:		jmp $ccc0		; 4c c0 cc


B30_0cbd:		jsr vramQueueSetDestToCopy_noData		; 20 bb e8
B30_0cc0:		ldy #$00		; a0 00
B30_0cc2:		lda ($02), y	; b1 02
B30_0cc4:		sta wVramQueue.w, x	; 9d 00 03
B30_0cc7:		inx				; e8 
B30_0cc8:		iny				; c8 
B30_0cc9:		cpy #$04		; c0 04
B30_0ccb:		bne B30_0cc2 ; d0 f5

B30_0ccd:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0ccf:		lda $06			; a5 06
B30_0cd1:		and #$01		; 29 01
B30_0cd3:		bne B30_0cff ; d0 2a

B30_0cd5:		lda $02fc, x	; bd fc 02
B30_0cd8:		jsr $d3b9		; 20 b9 d3
B30_0cdb:		tya				; 98 
B30_0cdc:		asl a			; 0a
B30_0cdd:		asl a			; 0a
B30_0cde:		asl a			; 0a
B30_0cdf:		asl a			; 0a
B30_0ce0:		sta $13			; 85 13
B30_0ce2:		lda $02fe, x	; bd fe 02
B30_0ce5:		jsr $d3b9		; 20 b9 d3
B30_0ce8:		tya				; 98 
B30_0ce9:		ora $13			; 05 13
B30_0ceb:		sta $13			; 85 13
B30_0ced:		lda $12			; a5 12
B30_0cef:		clc				; 18 
B30_0cf0:		adc $b6			; 65 b6
B30_0cf2:		tay				; a8 
B30_0cf3:		lda $13			; a5 13
B30_0cf5:		sta $06e0, y	; 99 e0 06
B30_0cf8:		lda $12			; a5 12
B30_0cfa:		clc				; 18 
B30_0cfb:		adc #$08		; 69 08
B30_0cfd:		sta $12			; 85 12
B30_0cff:		lda #$04		; a9 04
B30_0d01:		ldx #$02		; a2 02
B30_0d03:		jsr incPointerXByA		; 20 99 e8
B30_0d06:		lda #$20		; a9 20
B30_0d08:		ldx #wVramQueueDest		; a2 61
B30_0d0a:		jsr incPointerXByA		; 20 99 e8
B30_0d0d:		dec $06			; c6 06
B30_0d0f:		bne B30_0cbd ; d0 ac

B30_0d11:		lda $5a			; a5 5a
B30_0d13:		and #$07		; 29 07
B30_0d15:		tay				; a8 
B30_0d16:		lda $cd5c, y	; b9 5c cd
B30_0d19:		clc				; 18 
B30_0d1a:		adc $b6			; 65 b6
B30_0d1c:		sta $04			; 85 04
B30_0d1e:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_0d20:		lda $04			; a5 04
B30_0d22:		sta wVramQueue.w, x	; 9d 00 03
B30_0d25:		inx				; e8 
B30_0d26:		lda #$2b		; a9 2b
B30_0d28:		sta wVramQueue.w, x	; 9d 00 03
B30_0d2b:		inx				; e8 
B30_0d2c:		ldy $63			; a4 63
B30_0d2e:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_0d30:		sta wVramQueue.w, x	; 9d 00 03
B30_0d33:		inx				; e8 
B30_0d34:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0d36:		lda #$01		; a9 01
B30_0d38:		ldx #$10		; a2 10
B30_0d3a:		jsr incPointerXByA		; 20 99 e8
B30_0d3d:		inc $b6			; e6 b6
B30_0d3f:		lda $b6			; a5 b6
B30_0d41:		and #$03		; 29 03
B30_0d43:		beq B30_0d48 ; f0 03

B30_0d45:		jmp $cc7b		; 4c 7b cc


B30_0d48:		lda $b6			; a5 b6
B30_0d4a:		cmp #$08		; c9 08
B30_0d4c:		bne B30_0d54 ; d0 06

B30_0d4e:		lda #$00		; a9 00
B30_0d50:		sta $b6			; 85 b6
B30_0d52:		inc $5a			; e6 5a
B30_0d54:		dec $64			; c6 64
B30_0d56:		bne B30_0d5a ; d0 02

B30_0d58:		sec				; 38 
B30_0d59:		rts				; 60 


B30_0d5a:		clc				; 18 
B30_0d5b:		rts				; 60 


B30_0d5c:		cpy #$c8		; c0 c8
B30_0d5e:		bne B30_0d38 ; d0 d8

B30_0d60:		cpx #$e8		; e0 e8
B30_0d62:		beq B30_0d5c ; f0 f8

B30_0d64:		lda $65			; a5 65
B30_0d66:		bne B30_0d72 ; d0 0a

B30_0d68:		lda wCurrRoomNumScreens			; a5 71
B30_0d6a:		asl a			; 0a
B30_0d6b:		asl a			; 0a
B30_0d6c:		asl a			; 0a
B30_0d6d:		clc				; 18 
B30_0d6e:		adc #$07		; 69 07
B30_0d70:		bne B30_0d74 ; d0 02

B30_0d72:		lda #$00		; a9 00
B30_0d74:		sta $5a			; 85 5a
B30_0d76:		lda #$0a		; a9 0a
B30_0d78:		sta $64			; 85 64
B30_0d7a:		rts				; 60 


func_1e_0d7b:
B30_0d7b:		lda #$00		; a9 00
B30_0d7d:		sta $b6			; 85 b6
B30_0d7f:		lda #$10		; a9 10
B30_0d81:		bne B30_0d85 ; d0 02

func_1e_0d83:
B30_0d83:		lda #$0c		; a9 0c
B30_0d85:		sta $64			; 85 64
B30_0d87:		lda $59			; a5 59
B30_0d89:		sta $5a			; 85 5a
B30_0d8b:		rts				; 60 


B30_0d8c:		lda #$03		; a9 03
B30_0d8e:		sta $07			; 85 07
B30_0d90:		ldy #$00		; a0 00
B30_0d92:		lda $64			; a5 64
B30_0d94:		and #$01		; 29 01
B30_0d96:		beq B30_0d9a ; f0 02

B30_0d98:		ldy #$03		; a0 03
B30_0d9a:		sty $5c			; 84 5c
B30_0d9c:		lda $65			; a5 65
B30_0d9e:		bne B30_0da8 ; d0 08

B30_0da0:		lda wCurrRoomNumScreens			; a5 71
B30_0da2:		and #$01		; 29 01
B30_0da4:		bne B30_0dc0 ; d0 1a

B30_0da6:		beq B30_0dae ; f0 06

B30_0da8:		lda wCurrScrollXRoom			; a5 57
B30_0daa:		and #$01		; 29 01
B30_0dac:		bne B30_0dc0 ; d0 12

B30_0dae:		lda $75			; a5 75
B30_0db0:		and #$01		; 29 01
B30_0db2:		bne B30_0dd0 ; d0 1c

B30_0db4:		ldx #$08		; a2 08
B30_0db6:		bne B30_0dd2 ; d0 1a

func_1e_0db8:
B30_0db8:		lda #$00		; a9 00
B30_0dba:		sta $5c			; 85 5c
B30_0dbc:		lda #$06		; a9 06
B30_0dbe:		sta $07			; 85 07
B30_0dc0:		lda $75			; a5 75
B30_0dc2:		and #$01		; 29 01
B30_0dc4:		bne B30_0db4 ; d0 ee

B30_0dc6:		beq B30_0dd0 ; f0 08

func_1e_0dc8:
B30_0dc8:		lda #$00		; a9 00
B30_0dca:		sta $5c			; 85 5c
B30_0dcc:		lda #$06		; a9 06
B30_0dce:		sta $07			; 85 07
B30_0dd0:		ldx #$00		; a2 00
B30_0dd2:		stx $08			; 86 08

B30_0dd4:		jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
B30_0dd7:		lda $5a			; a5 5a
B30_0dd9:		bpl B30_0dde ; 10 03

B30_0ddb:		jmp B30_0f27		; 4c 27 cf

B30_0dde:		cmp $7b			; c5 7b
B30_0de0:		bcc B30_0de5 ; 90 03

B30_0de2:		jmp B30_0f27		; 4c 27 cf

B30_0de5:		lsr a			; 4a
B30_0de6:		lsr a			; 4a
B30_0de7:		lsr a			; 4a
B30_0de8:		tay				; a8 
B30_0de9:		lda #$00		; a9 00
B30_0deb:		sta $10			; 85 10
B30_0ded:		sta $11			; 85 11

B30_0def:		dey				; 88 
B30_0df0:		bmi B30_0dfc ; 30 0a

B30_0df2:		lda #$30		; a9 30
B30_0df4:		ldx #$10		; a2 10
B30_0df6:		jsr incPointerXByA		; 20 99 e8
B30_0df9:		jmp B30_0def		; 4c ef cd

B30_0dfc:		lda $5c			; a5 5c
B30_0dfe:		asl a			; 0a
B30_0dff:		asl a			; 0a
B30_0e00:		asl a			; 0a
B30_0e01:		ldx #$10		; a2 10
B30_0e03:		jsr incPointerXByA		; 20 99 e8

B30_0e06:		lda $5a			; a5 5a
B30_0e08:		and #$07		; 29 07
B30_0e0a:		tay				; a8 
B30_0e0b:		iny				; c8 
B30_0e0c:		tya				; 98 
B30_0e0d:		ldx #$10		; a2 10
B30_0e0f:		jsr incPointerXByA		; 20 99 e8

B30_0e12:		ldx #$20		; a2 20
B30_0e14:		lda $5a			; a5 5a
B30_0e16:		and #$08		; 29 08
B30_0e18:		eor $08			; 45 08
B30_0e1a:		beq B30_0e1e ; f0 02

B30_0e1c:		ldx #$24		; a2 24
B30_0e1e:		stx $62			; 86 62

B30_0e20:		lda $5a			; a5 5a
B30_0e22:		and #$07		; 29 07
B30_0e24:		asl a			; 0a
B30_0e25:		asl a			; 0a
B30_0e26:		clc				; 18 
B30_0e27:		adc #$c0		; 69 c0
B30_0e29:		sta wVramQueueDest			; 85 61

B30_0e2b:		lda $5c			; a5 5c
B30_0e2d:		beq B30_0e3c ; f0 0d

B30_0e2f:		lda wVramQueueDest			; a5 61
B30_0e31:		clc				; 18 
B30_0e32:		adc #$40		; 69 40
B30_0e34:		sta wVramQueueDest			; 85 61
B30_0e36:		lda wVramQueueDest+1			; a5 62
B30_0e38:		adc #$01		; 69 01
B30_0e3a:		sta wVramQueueDest+1			; 85 62

B30_0e3c:		lda $50			; a5 50
B30_0e3e:		clc				; 18 
B30_0e3f:		adc $10			; 65 10
B30_0e41:		sta $10			; 85 10
B30_0e43:		lda $51			; a5 51
B30_0e45:		adc $11			; 65 11
B30_0e47:		sta $11			; 85 11

B30_0e49:		jsr func_1e_0f6c		; 20 6c cf
B30_0e4c:		lda $5c			; a5 5c
B30_0e4e:		asl a			; 0a
B30_0e4f:		sta $00			; 85 00
B30_0e51:		lda $5a			; a5 5a

B30_0e53:		cmp #$0c		; c9 0c
B30_0e55:		bcc B30_0e5c ; 90 05

B30_0e57:		sbc #$0c		; e9 0c
B30_0e59:		jmp B30_0e53		; 4c 53 ce

B30_0e5c:		tay				; a8 
B30_0e5d:		lda data_1f_1d4c.w, y	; b9 4c fd
B30_0e60:		clc				; 18 
B30_0e61:		adc $00			; 65 00
B30_0e63:		sta $12			; 85 12
B30_0e65:		lda $5c			; a5 5c
B30_0e67:		bne B30_0e83 ; d0 1a

B30_0e69:		lda #$00		; a9 00
B30_0e6b:		ldy $12			; a4 12
B30_0e6d:		sta $06e0, y	; 99 e0 06
B30_0e70:		inc $12			; e6 12
B30_0e72:		ldx #$02		; a2 02
B30_0e74:		lda #$08		; a9 08
B30_0e76:		jsr incPointerXByA		; 20 99 e8

B30_0e79:		lda #$02		; a9 02
B30_0e7b:		sta $06			; 85 06
B30_0e7d:		jsr vramQueueSet5bytesDestToCopy_noData		; control code 5 and dest
B30_0e80:		jmp B30_0e90		; 4c 90 ce

B30_0e83:		lda #$04		; a9 04
B30_0e85:		sta $06			; 85 06
B30_0e87:		jsr vramQueueSet4bytesDestToCopy_noData		; control code 4 and dest
B30_0e8a:		jmp B30_0e90		; 4c 90 ce

B30_0e8d:		jsr vramQueueSetDestToCopy_noData		; copy more bytes

B30_0e90:		ldy #$00		; a0 00
-	lda ($02), y	; b1 02
B30_0e94:		sta wVramQueue.w, x	; 9d 00 03
B30_0e97:		inx				; e8 
B30_0e98:		iny				; c8 
B30_0e99:		cpy #$04		; c0 04
	bne -

B30_0e9d:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0e9f:		lda $06			; a5 06
B30_0ea1:		and #$01		; 29 01
B30_0ea3:		bne B30_0ec2 ; d0 1d

B30_0ea5:		lda $02fc, x	; bd fc 02
B30_0ea8:		jsr $d3b9		; 20 b9 d3
B30_0eab:		tya				; 98 
B30_0eac:		asl a			; 0a
B30_0ead:		asl a			; 0a
B30_0eae:		asl a			; 0a
B30_0eaf:		asl a			; 0a
B30_0eb0:		sta $13			; 85 13
B30_0eb2:		lda $02fe, x	; bd fe 02
B30_0eb5:		jsr $d3b9		; 20 b9 d3
B30_0eb8:		tya				; 98 
B30_0eb9:		ora $13			; 05 13
B30_0ebb:		ldy $12			; a4 12
B30_0ebd:		sta $06e0, y	; 99 e0 06
B30_0ec0:		inc $12			; e6 12
B30_0ec2:		lda #$04		; a9 04
B30_0ec4:		ldx #$02		; a2 02
B30_0ec6:		jsr incPointerXByA		; 20 99 e8
B30_0ec9:		lda #$20		; a9 20
B30_0ecb:		ldx #wVramQueueDest		; a2 61
B30_0ecd:		jsr incPointerXByA		; 20 99 e8
B30_0ed0:		dec $06			; c6 06
B30_0ed2:		bne B30_0e8d ; d0 b9

B30_0ed4:		ldx $5c			; a6 5c
B30_0ed6:		lda $5a			; a5 5a
B30_0ed8:		and #$07		; 29 07
B30_0eda:		clc				; 18 
B30_0edb:		adc $d31f, x	; 7d 1f d3
B30_0ede:		sta $04			; 85 04
B30_0ee0:		lda $5a			; a5 5a
B30_0ee2:		and #$08		; 29 08
B30_0ee4:		eor $08			; 45 08
B30_0ee6:		beq B30_0eec ; f0 04

B30_0ee8:		lda #$27		; a9 27
B30_0eea:		bne B30_0eee ; d0 02

; palette addr
B30_0eec:		lda #$23		; a9 23
B30_0eee:		sta $05			; 85 05
B30_0ef0:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_0ef2:		lda $04			; a5 04
B30_0ef4:		sta wVramQueue.w, x	; 9d 00 03
B30_0ef7:		inx				; e8 
B30_0ef8:		lda $05			; a5 05
B30_0efa:		sta wVramQueue.w, x	; 9d 00 03
B30_0efd:		inx				; e8 
B30_0efe:		ldy $63			; a4 63
B30_0f00:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_0f02:		ldy $5c			; a4 5c
B30_0f04:		beq B30_0f22 ; f0 1c

; palette
B30_0f06:		sta wVramQueue.w, x	; 9d 00 03
B30_0f09:		inx				; e8 
B30_0f0a:		stx wVramQueueNextIdxToFill			; 86 1d
B30_0f0c:		lda #$08		; a9 08
B30_0f0e:		ldx #$10		; a2 10
B30_0f10:		jsr incPointerXByA		; 20 99 e8
B30_0f13:		inc $5c			; e6 5c
B30_0f15:		lda $5c			; a5 5c
B30_0f17:		cmp #$06		; c9 06
B30_0f19:		beq B30_0f27 ; f0 0c

B30_0f1b:		dec $07			; c6 07
B30_0f1d:		beq B30_0f29 ; f0 0a

B30_0f1f:		jmp B30_0e49		; 4c 49 ce

B30_0f22:		and #$f0		; 29 f0
B30_0f24:		jmp B30_0f06		; 4c 06 cf

B30_0f27:		inc $5a			; e6 5a
B30_0f29:		dec $64			; c6 64
B30_0f2b:		bne B30_0f2f ; d0 02

B30_0f2d:		sec				; 38 
B30_0f2e:		rts				; 60 

B30_0f2f:		clc				; 18 
B30_0f30:		rts				; 60 


; gets a metatile
B30_0f31:		ldy $b3			; a4 b3
B30_0f33:		beq B30_0f6c ; f0 37

B30_0f35:		lda $7d			; a5 7d
B30_0f37:		and #$f0		; 29 f0
B30_0f39:		cmp #$80		; c9 80
B30_0f3b:		bne B30_0f6c ; d0 2f

B30_0f3d:		ldy #$00		; a0 00
B30_0f3f:		sty $03			; 84 03
B30_0f41:		ldy $a1			; a4 a1
B30_0f43:	.db $b9 $5b $00
B30_0f46:		cmp #$03		; c9 03
B30_0f48:		bne B30_0f6c ; d0 22

B30_0f4a:	.db $b9 $59 $00
B30_0f4d:		tay				; a8 
B30_0f4e:		lda $7d			; a5 7d
B30_0f50:		cmp #$81		; c9 81
B30_0f52:		beq B30_0f5a ; f0 06

B30_0f54:		lda $b48e, y	; b9 8e b4
B30_0f57:		jmp func_1e_0f72		; 4c 72 cf


B30_0f5a:		lda $bdf1, y	; b9 f1 bd
B30_0f5d:		jmp func_1e_0f72		; 4c 72 cf


B30_0f60:		lda #$00		; a9 00
B30_0f62:		sta $03			; 85 03
B30_0f64:		beq B30_0f70 ; f0 0a

func_1e_0f66:
B30_0f66:		ldy #$00		; a0 00
B30_0f68:		sty $03			; 84 03
B30_0f6a:		beq func_1e_0f72 ; f0 06

func_1e_0f6c:
B30_0f6c:		ldy #$00		; a0 00
B30_0f6e:		sty $03			; 84 03
B30_0f70:		lda ($10), y	; b1 10

func_1e_0f72:
	sta $63			; 85 63
; 02/03 = 16A + 5d/5e
B30_0f74:		asl a			; 0a
B30_0f75:		rol $03			; 26 03
B30_0f77:		asl a			; 0a
B30_0f78:		rol $03			; 26 03
B30_0f7a:		asl a			; 0a
B30_0f7b:		rol $03			; 26 03
B30_0f7d:		asl a			; 0a
B30_0f7e:		rol $03			; 26 03
B30_0f80:		clc				; 18 
B30_0f81:		adc wCurrRoomGroupMetaTileTiles			; 65 5d
B30_0f83:		sta $02			; 85 02
B30_0f85:		lda $03			; a5 03
B30_0f87:		adc wCurrRoomGroupMetaTileTiles+1			; 65 5e
B30_0f89:		sta $03			; 85 03
B30_0f8b:		rts				; 60 


func_1e_0f8c:
B30_0f8c:		lda #$1e		; a9 1e
B30_0f8e:		sta $fe			; 85 fe
B30_0f90:		lda #$00		; a9 00
B30_0f92:		sta $07a3		; 8d a3 07
B30_0f95:		sta $07a4		; 8d a4 07
B30_0f98:		lda #$02		; a9 02
B30_0f9a:		sta $72			; 85 72
B30_0f9c:		lda #$05		; a9 05
B30_0f9e:		ldx #$29		; a2 29
B30_0fa0:		ldy #$2a		; a0 2a
B30_0fa2:		jsr func_1f_05bf		; 20 bf e5
B30_0fa5:		lda #$b0		; a9 b0
B30_0fa7:		sta wPPUCtrl			; 85 ff
B30_0fa9:		lda #$04		; a9 04
B30_0fab:		sta wScrollY			; 85 fc
B30_0fad:		lda wCurrScrollXWithinRoom			; a5 56
B30_0faf:		and #$f8		; 29 f8
B30_0fb1:		sta $66			; 85 66
B30_0fb3:		jsr $d121		; 20 21 d1
B30_0fb6:		lda $59			; a5 59
B30_0fb8:		and #$07		; 29 07
B30_0fba:		asl a			; 0a
B30_0fbb:		asl a			; 0a
B30_0fbc:		sta $5b			; 85 5b
B30_0fbe:		inc $5b			; e6 5b
B30_0fc0:		lda $5a			; a5 5a
B30_0fc2:		and #$07		; 29 07
B30_0fc4:		asl a			; 0a
B30_0fc5:		asl a			; 0a
B30_0fc6:		clc				; 18 
B30_0fc7:		adc #$03		; 69 03
B30_0fc9:		sta $5c			; 85 5c
B30_0fcb:		ldx #$00		; a2 00
B30_0fcd:		ldy #$00		; a0 00
B30_0fcf:		lda wCurrRoomMetadataByte			; a5 68
B30_0fd1:		and #$01		; 29 01
B30_0fd3:		beq B30_0fd9 ; f0 04

B30_0fd5:		ldy #$01		; a0 01
B30_0fd7:		ldx #$02		; a2 02
B30_0fd9:		lda #$00		; a9 00
B30_0fdb:		sta $05			; 85 05
B30_0fdd:	.db $b9 $59 $00
B30_0fe0:		asl a			; 0a
B30_0fe1:		asl a			; 0a
B30_0fe2:		rol $05			; 26 05
B30_0fe4:		asl a			; 0a
B30_0fe5:		rol $05			; 26 05
B30_0fe7:		clc				; 18 
B30_0fe8:		adc $50			; 65 50
B30_0fea:		sta $52, x		; 95 52
B30_0fec:		lda $05			; a5 05
B30_0fee:		adc $51			; 65 51
B30_0ff0:		sta $53, x		; 95 53
B30_0ff2:		inc $52, x		; f6 52
B30_0ff4:		bne B30_0ff8 ; d0 02

B30_0ff6:		inc $53, x		; f6 53
B30_0ff8:		rts				; 60 


func_1e_0ff9:
B30_0ff9:		lda #$01		; a9 01
B30_0ffb:		ldx #$2e		; a2 2e
B30_0ffd:		jsr func_1f_05c1		; 20 c1 e5
B30_1000:		lda #$01		; a9 01
B30_1002:		sta $72			; 85 72
B30_1004:		lda #$00		; a9 00
B30_1006:		sta $67			; 85 67
B30_1008:		sta wScrollY			; 85 fc
B30_100a:		lda #$02		; a9 02
B30_100c:		sta $a1			; 85 a1
B30_100e:		lda wCurrScrollXWithinRoom			; a5 56
B30_1010:		and #$e0		; 29 e0
B30_1012:		sta $66			; 85 66
B30_1014:		jsr $d13b		; 20 3b d1
B30_1017:		lda #$00		; a9 00
B30_1019:		sta $5b			; 85 5b
B30_101b:		sta $5c			; 85 5c
B30_101d:		ldx #$00		; a2 00
B30_101f:		ldy #$00		; a0 00
B30_1021:		lda $59, x		; b5 59
B30_1023:		bmi B30_1028 ; 30 03

B30_1025:		jsr B30_102c		; 20 2c d0
B30_1028:		ldx #$01		; a2 01
B30_102a:		ldy #$02		; a0 02

B30_102c:		lda #$00		; a9 00
B30_102e:		sta $05			; 85 05
B30_1030:		lda $59, x		; b5 59
B30_1032:		and #$f8		; 29 f8
B30_1034:		asl a			; 0a
B30_1035:		sta $04			; 85 04
B30_1037:		clc				; 18 
B30_1038:		adc $04			; 65 04
B30_103a:		bcc B30_103f ; 90 03

B30_103c:		inc $05			; e6 05
B30_103e:		clc				; 18 
B30_103f:		adc $04			; 65 04
B30_1041:		bcc B30_1045 ; 90 02

B30_1043:		inc $05			; e6 05
B30_1045:		sta $04			; 85 04
B30_1047:		lda $59, x		; b5 59
B30_1049:		and #$07		; 29 07
B30_104b:		tax				; aa 
B30_104c:		inx				; e8 
B30_104d:		txa				; 8a 
B30_104e:		clc				; 18 
B30_104f:		adc $04			; 65 04
B30_1051:		sta $04			; 85 04
B30_1053:		bcc B30_1057 ; 90 02

B30_1055:		inc $05			; e6 05
B30_1057:		lda $04			; a5 04
B30_1059:		clc				; 18 
B30_105a:		adc wRoomMetaTilesAddr			; 65 50
B30_105c:		sta $52.w, y
B30_105f:		lda $05			; a5 05
B30_1061:		adc wRoomMetaTilesAddr+1			; 65 51
B30_1063:		sta $53.w, y
B30_1066:		rts				; 60 


getCurrRoomMetatileTilesPalettesAndMetadataByte:
	jsr setBankOfRoomGroupMetatilesPointers
	lda wCurrRoomMetadataByte
	sta wPrevRoomMetadataByte

; get addr for group
	lda wCurrRoomGroup
	asl a
	sta wDoubleCurrGroup
	tay
	lda roomMetadata.w, y
	sta wCurrRoomGroupMetadataAddr
	lda roomMetadata.w+1, y
	sta wCurrRoomGroupMetadataAddr+1

; get addr for section
	lda wCurrRoomSection
	asl a
	sta wDoubleCurrSection
	tay
	lda (wCurrRoomGroupMetadataAddr), y
	sta wCurrRoomSectionMetadataAddr
	iny
	lda (wCurrRoomGroupMetadataAddr), y
	sta wCurrRoomSectionMetadataAddr+1

; get 1 metadata byte for room
	ldy wCurrRoomIdx
	lda (wCurrRoomSectionMetadataAddr), y
	sta wCurrRoomMetadataByte

; set num screens
	jsr getCurrRoomsMetatiles
	jsr setBankOfRoomGroupLayoutPalettesData

	ldy #$00
	lda (wRoomMetaTilesAddr), y
	sta wCurrRoomNumScreens

; special location for metatile tiles and palettes for these groups
	lda wCurrRoomGroup
	cmp #$0d
	beq @groupD

	cmp #$0e
	beq @groupE

; group * 2 - metatiles and palettes are shared for the group
@setMetatileTilesAndPalettesAddr:
	ldy wDoubleCurrGroup

@setMetatileTilesAndPalettesAddrForDoubleGroupY:
	lda roomGroupTileAddresses.w, y
	sta wCurrRoomGroupMetaTileTiles
	lda roomGroupTileAddresses.w+1, y
	sta wCurrRoomGroupMetaTileTiles+1

	lda roomGroupMetatilePalettes.w, y
	sta wCurrRoomGroupMetaTilePalettes
	lda roomGroupMetatilePalettes.w+1, y
	sta wCurrRoomGroupMetaTilePalettes+1
	rts

@groupD:
	lda wCurrRoomSection
	beq @groupDsection0

	cmp #$02
	beq @groupDsection2

	cmp #$03
	bne @setMetatileTilesAndPalettesAddr

; group D section 3
	lda wCurrRoomIdx
	bne @setMetatileTilesAndPalettesAddr

; group D section 3 room 0
	ldy #$0a
	bne @setMetatileTilesAndPalettesAddrForDoubleGroupY

@groupDsection2:
	lda wCurrRoomIdx
	cmp #$02
	bne @setMetatileTilesAndPalettesAddr

; group D section 2 room 2
	ldy #$0a
	bne @setMetatileTilesAndPalettesAddrForDoubleGroupY

@groupDsection0:
	lda wCurrRoomIdx
	beq +

	cmp #$01
	bne @setMetatileTilesAndPalettesAddr

; group D section 0 room 0/1
+	ldy #$04
	bne @setMetatileTilesAndPalettesAddrForDoubleGroupY

@groupE:
	lda wCurrRoomSection
	bne @setMetatileTilesAndPalettesAddr

; group E section 0
	lda wCurrRoomIdx
	cmp #$01
	bne @setMetatileTilesAndPalettesAddr

; group E section 0 room 1
	ldy #$02
	bne @setMetatileTilesAndPalettesAddrForDoubleGroupY


func_1e_10f8:
B30_10f8:		lda wCurrRoomMetadataByte			; a5 68
B30_10fa:		bpl B30_113b ; 10 3f

; vertical room
B30_10fc:		lda wEntityVertSpeed.w		; ad 20 05
B30_10ff:		ora wEntityVertSubSpeed.w		; 0d 37 05
B30_1102:		beq B30_1111 ; f0 0d

B30_1104:		lda wEntityVertSpeed.w		; ad 20 05
B30_1107:		bpl B30_1117 ; 10 0e

B30_1109:		lda wCurrRoomNumScreens			; a5 71
B30_110b:		sta wCurrScrollXRoom			; 85 57
B30_110d:		lda #$30		; a9 30
B30_110f:		bne B30_111b ; d0 0a

B30_1111:		lda wCurrRoomMetadataByte			; a5 68
B30_1113:		and #$01		; 29 01
B30_1115:		beq B30_1109 ; f0 f2

B30_1117:		lda #$00		; a9 00
B30_1119:		sta wCurrScrollXRoom			; 85 57
B30_111b:		sta wCurrScrollXWithinRoom			; 85 56
B30_111d:		lda #$00		; a9 00
B30_111f:		sta $58			; 85 58
B30_1121:		lda wCurrScrollXWithinRoom			; a5 56
B30_1123:		sta $00			; 85 00
B30_1125:		lda wCurrScrollXRoom			; a5 57
B30_1127:		asl $00			; 06 00
B30_1129:		rol a			; 2a
B30_112a:		asl $00			; 06 00
B30_112c:		rol a			; 2a
B30_112d:		asl $00			; 06 00
B30_112f:		rol a			; 2a
B30_1130:		sec				; 38 
B30_1131:		sbc #$01		; e9 01
B30_1133:		sta $59			; 85 59
B30_1135:		clc				; 18 
B30_1136:		adc #$07		; 69 07
B30_1138:		sta $5a			; 85 5a
B30_113a:		rts				; 60 

; horizontal room
B30_113b:		lda wCurrScrollXRoom			; a5 57
B30_113d:		bmi B30_1169 ; 30 2a

B30_113f:		cmp wCurrRoomNumScreens			; c5 71
B30_1141:		beq B30_116d ; f0 2a

B30_1143:		lda wCurrScrollXRoom			; a5 57
B30_1145:		sta $00			; 85 00
B30_1147:		lda wCurrScrollXWithinRoom			; a5 56
B30_1149:		lsr $00			; 46 00
B30_114b:		ror a			; 6a
B30_114c:		lsr $00			; 46 00
B30_114e:		ror a			; 6a
B30_114f:		lsr $00			; 46 00
B30_1151:		ror a			; 6a
B30_1152:		lsr a			; 4a
B30_1153:		lsr a			; 4a

B30_1154:		sec				; 38 
B30_1155:		sbc #$02		; e9 02
B30_1157:		sta $59			; 85 59
B30_1159:		clc				; 18 
B30_115a:		adc #$0b		; 69 0b
B30_115c:		sta $5a			; 85 5a
B30_115e:		lda wCurrRoomNumScreens			; a5 71
B30_1160:		asl a			; 0a
B30_1161:		asl a			; 0a
B30_1162:		asl a			; 0a
B30_1163:		clc				; 18 
B30_1164:		adc #$08		; 69 08
B30_1166:		sta $7b			; 85 7b
B30_1168:		rts				; 60 

B30_1169:		lda #$00		; a9 00
B30_116b:		beq B30_1154 ; f0 e7

B30_116d:		lda wCurrRoomNumScreens			; a5 71
B30_116f:		asl a			; 0a
B30_1170:		asl a			; 0a
B30_1171:		asl a			; 0a
B30_1172:		jmp B30_1154		; 4c 54 d1


func_1e_1175:
B30_1175:		lda $65			; a5 65
B30_1177:		cmp #$02		; c9 02
	bne +

B30_117b:		lda $a1			; a5 a1
+	sta $a0			; 85 a0
B30_117f:		lda $65			; a5 65
B30_1181:		sta $a1			; 85 a1
B30_1183:		jsr $d325		; 20 25 d3
B30_1186:		lda $a0			; a5 a0
B30_1188:		cmp #$02		; c9 02
B30_118a:		beq B30_1199 ; @done

B30_118c:		lda $67			; a5 67
	beq +

B30_1190:		dec $67			; c6 67
B30_1192:		rts				; 60 

+	lda wGameStateLoopCounter			; a5 1a
B30_1195:		and #$01		; 29 01
	bne +

@done:
B30_1199:		rts				; 60 

+	jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
B30_119d:		ldy $a0			; a4 a0
B30_119f:		lda $59.w, y
B30_11a2:		bmi B30_1199 ; @done

B30_11a4:		cmp $7b			; c5 7b
B30_11a6:		bcs B30_1199 ; @done

B30_11a8:		lda $5b.w, y
B30_11ab:		cmp #$06		; c9 06
	bcc +

B30_11af:		rts				; 60 

+	tya				; 98 
B30_11b1:		asl a			; 0a
B30_11b2:		tax				; aa 
B30_11b3:		lda $52, x		; b5 52
B30_11b5:		sta $10			; 85 10
B30_11b7:		lda $53, x		; b5 53
B30_11b9:		sta $11			; 85 11
B30_11bb:		jsr $cf31		; 20 31 cf
B30_11be:		ldx #$00		; a2 00
B30_11c0:		lda $75			; a5 75
B30_11c2:		and #$01		; 29 01
	beq +

B30_11c6:		ldx #$08		; a2 08
+	stx $00			; 86 00
B30_11ca:		ldy $a0			; a4 a0
B30_11cc:		ldx #$20		; a2 20
B30_11ce:		lda $59.w, y
B30_11d1:		and #$08		; 29 08
B30_11d3:		eor $00			; 45 00
	beq +

B30_11d7:		ldx #$24		; a2 24
+	stx $00			; 86 00
B30_11db:		lda #$00		; a9 00
B30_11dd:		sta wVramQueueDest			; 85 61
B30_11df:		ldy $a0			; a4 a0
B30_11e1:		lda $5b.w, y
B30_11e4:		lsr a			; 4a
B30_11e5:		ror wVramQueueDest			; 66 61
B30_11e7:		clc				; 18 
B30_11e8:		adc $00			; 65 00
B30_11ea:		sta wVramQueueDest+1			; 85 62
B30_11ec:		lda $59.w, y
B30_11ef:		and #$07		; 29 07
B30_11f1:		asl a			; 0a
B30_11f2:		asl a			; 0a
B30_11f3:		clc				; 18 
B30_11f4:		adc #$80		; 69 80
B30_11f6:		adc wVramQueueDest			; 65 61
B30_11f8:		sta wVramQueueDest			; 85 61
	bcc +

B30_11fc:		inc $62			; e6 62
+	lda $5b.w, y
B30_1201:		asl a			; 0a
B30_1202:		sta $00			; 85 00
B30_1204:		lda $59.w, y
-	cmp #$0c		; c9 0c
B30_1209:		bcc B30_1210 ; 90 05

B30_120b:		sbc #$0c		; e9 0c
	jmp -

B30_1210:		tay				; a8 
B30_1211:		lda data_1f_1d4c.w, y	; b9 4c fd
B30_1214:		clc				; 18 
B30_1215:		adc $00			; 65 00
B30_1217:		sta $10			; 85 10
B30_1219:		ldy $a0			; a4 a0
B30_121b:		lda $5b.w, y
B30_121e:		bne B30_1242 ; d0 22

B30_1220:		ldy $10			; a4 10
B30_1222:		lda #$00		; a9 00
B30_1224:		sta $06e0, y	; 99 e0 06
B30_1227:		inc $10			; e6 10
B30_1229:		lda wVramQueueDest			; a5 61
B30_122b:		clc				; 18 
B30_122c:		adc #$40		; 69 40
B30_122e:		sta wVramQueueDest			; 85 61
B30_1230:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_1232:		lda #$02		; a9 02
B30_1234:		sta $06			; 85 06
B30_1236:		lda #$05		; a9 05
B30_1238:		sta wVramQueue.w, x	; 9d 00 03
B30_123b:		inx				; e8 
B30_123c:		stx wVramQueueNextIdxToFill			; 86 1d
B30_123e:		ldy #$08		; a0 08
B30_1240:		bne B30_1252 ; d0 10

B30_1242:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_1244:		lda #$04		; a9 04
B30_1246:		sta $06			; 85 06
B30_1248:		lda #$04		; a9 04
B30_124a:		sta wVramQueue.w, x	; 9d 00 03
B30_124d:		inx				; e8 
B30_124e:		stx wVramQueueNextIdxToFill			; 86 1d
B30_1250:		ldy #$00		; a0 00
B30_1252:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_1254:		lda wVramQueueDest			; a5 61
B30_1256:		sta wVramQueue.w, x	; 9d 00 03
B30_1259:		inx				; e8 
B30_125a:		lda wVramQueueDest+1			; a5 62
B30_125c:		sta wVramQueue.w, x	; 9d 00 03
B30_125f:		inx				; e8 

.rept 4
	lda ($02), y	; b1 02
	sta wVramQueue.w, x	; 9d 00 03
	inx				; e8 
	iny				; c8 
.endr

B30_127c:		stx wVramQueueNextIdxToFill			; 86 1d
B30_127e:		sty $07			; 84 07
B30_1280:		lda $06			; a5 06
B30_1282:		and #$01		; 29 01
B30_1284:		bne B30_12a3 ; d0 1d

B30_1286:		lda $02fc, x	; bd fc 02
B30_1289:		jsr $d3b9		; 20 b9 d3
B30_128c:		tya				; 98 
B30_128d:		asl a			; 0a
B30_128e:		asl a			; 0a
B30_128f:		asl a			; 0a
B30_1290:		asl a			; 0a
B30_1291:		sta $11			; 85 11
B30_1293:		lda $02fe, x	; bd fe 02
B30_1296:		jsr $d3b9		; 20 b9 d3
B30_1299:		tya				; 98 
B30_129a:		ora $11			; 05 11
B30_129c:		ldy $10			; a4 10
B30_129e:		sta $06e0, y	; 99 e0 06
B30_12a1:		inc $10			; e6 10
B30_12a3:		ldy $07			; a4 07
B30_12a5:		lda wVramQueueDest			; a5 61
B30_12a7:		clc				; 18 
B30_12a8:		adc #$20		; 69 20
B30_12aa:		sta wVramQueueDest			; 85 61
B30_12ac:		bcc B30_12b0 ; 90 02

B30_12ae:		inc $62			; e6 62
B30_12b0:		dec $06			; c6 06
B30_12b2:		bne B30_1252 ; d0 9e

B30_12b4:		ldy $a0			; a4 a0
B30_12b6:	.db $b9 $5b $00
B30_12b9:		tax				; aa 
B30_12ba:	.db $b9 $59 $00
B30_12bd:		and #$07		; 29 07
B30_12bf:		clc				; 18 
B30_12c0:		adc $d31f, x	; 7d 1f d3
B30_12c3:		sta wVramQueueDest			; 85 61
B30_12c5:		ldx #$00		; a2 00
B30_12c7:		lda $75			; a5 75
B30_12c9:		and #$01		; 29 01
B30_12cb:		beq B30_12cf ; f0 02

B30_12cd:		ldx #$08		; a2 08
B30_12cf:		stx $00			; 86 00
B30_12d1:	.db $b9 $59 $00
B30_12d4:		and #$08		; 29 08
B30_12d6:		eor $00			; 45 00
B30_12d8:		beq B30_12de ; f0 04

B30_12da:		lda #$27		; a9 27
B30_12dc:		bne B30_12e0 ; d0 02

B30_12de:		lda #$23		; a9 23
B30_12e0:		sta wVramQueueDest+1			; 85 62
B30_12e2:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_12e4:		lda wVramQueueDest			; a5 61
B30_12e6:		sta wVramQueue.w, x	; 9d 00 03
B30_12e9:		inx				; e8 
B30_12ea:		lda wVramQueueDest+1			; a5 62
B30_12ec:		sta wVramQueue.w, x	; 9d 00 03
B30_12ef:		inx				; e8 
B30_12f0:		ldy $63			; a4 63
B30_12f2:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_12f4:		sta $00			; 85 00
B30_12f6:		ldy $a0			; a4 a0
B30_12f8:	.db $b9 $5b $00
B30_12fb:		beq B30_1318 ; f0 1b

B30_12fd:		lda $00			; a5 00
B30_12ff:		sta wVramQueue.w, x	; 9d 00 03
B30_1302:		inx				; e8 
B30_1303:		stx wVramQueueNextIdxToFill			; 86 1d
B30_1305:		ldx $a0			; a6 a0
B30_1307:		inc $5b, x		; f6 5b
B30_1309:		txa				; 8a 
B30_130a:		asl a			; 0a
B30_130b:		tax				; aa 
B30_130c:		lda $52, x		; b5 52
B30_130e:		clc				; 18 
B30_130f:		adc #$08		; 69 08
B30_1311:		sta $52, x		; 95 52
B30_1313:		bcc B30_1317 ; 90 02

B30_1315:		inc $53, x		; f6 53
B30_1317:		rts				; 60 

B30_1318:		lda $00			; a5 00
B30_131a:		and #$f0		; 29 f0
B30_131c:		jmp $d2ff		; 4c ff d2


B30_131f:		iny				; c8 
B30_1320:		;removed
	.db $d0 $d8

B30_1322:		cpx #$e8		; e0 e8
B30_1324:		beq B30_12cb ; f0 a5

B30_1326:		lsr $85, x		; 56 85
B30_1328:		php				; 08 
B30_1329:		ldy $65			; a4 65
B30_132b:		beq B30_133c ; f0 0f

B30_132d:		dey				; 88 
B30_132e:		beq B30_1338 ; f0 08

B30_1330:		lda wCurrScrollXWithinRoom			; a5 56
B30_1332:		sec				; 38 
B30_1333:		sbc $08			; e5 08
B30_1335:		sta $6e			; 85 6e
B30_1337:		rts				; 60 

B30_1338:		lda #$00		; a9 00
B30_133a:		beq B30_133e ; f0 02

B30_133c:		lda #$ff		; a9 ff
B30_133e:		sta $00			; 85 00
B30_1340:		lda $58			; a5 58
B30_1342:		clc				; 18 
B30_1343:		adc wEntityHorizSubSpeed.w		; 6d 09 05
B30_1346:		sta $58			; 85 58
B30_1348:		lda wCurrScrollXWithinRoom			; a5 56
B30_134a:		adc wEntityHorizSpeed.w		; 6d f2 04
B30_134d:		sta wCurrScrollXWithinRoom			; 85 56
B30_134f:		lda wCurrScrollXRoom			; a5 57
B30_1351:		adc $00			; 65 00
B30_1353:		sta wCurrScrollXRoom			; 85 57
B30_1355:		bpl B30_1361 ; 10 0a

B30_1357:		lda #$00		; a9 00
B30_1359:		sta wCurrScrollXWithinRoom			; 85 56
B30_135b:		sta wCurrScrollXRoom			; 85 57
B30_135d:		sta $58			; 85 58
B30_135f:		beq B30_136b ; f0 0a

B30_1361:		cmp wCurrRoomNumScreens			; c5 71
B30_1363:		bne B30_136b ; d0 06

B30_1365:		lda #$00		; a9 00
B30_1367:		sta wCurrScrollXWithinRoom			; 85 56
B30_1369:		sta $58			; 85 58
B30_136b:		lda wCurrScrollXWithinRoom			; a5 56
B30_136d:		and #$e0		; 29 e0
B30_136f:		cmp $66			; c5 66
B30_1371:		beq B30_1330 ; f0 bd

B30_1373:		sta $66			; 85 66
B30_1375:		ldy $65			; a4 65
B30_1377:		beq B30_137f ; f0 06

B30_1379:		inc $59			; e6 59
B30_137b:		inc $5a			; e6 5a
B30_137d:		bpl B30_1383 ; 10 04

B30_137f:		dec $59			; c6 59
B30_1381:		dec $5a			; c6 5a
B30_1383:		ldy #$00		; a0 00
B30_1385:		sty $5b			; 84 5b
B30_1387:		sty $5c			; 84 5c
B30_1389:		iny				; c8 
B30_138a:		sty $67			; 84 67
B30_138c:		jsr $d01d		; 20 1d d0
B30_138f:		jmp $d330		; 4c 30 d3


inGameSubstate09:
B30_1392:		lda $64			; a5 64
B30_1394:		cmp #$08		; c9 08
B30_1396:		beq B30_13a5 ; f0 0d

B30_1398:		lda #$02		; a9 02
B30_139a:		sta $1c			; 85 1c
B30_139c:		jsr func_1e_14c7		; 20 c7 d4
B30_139f:		beq B30_13a2 ; f0 01

B30_13a1:		rts				; 60 

B30_13a2:		jmp func_1e_157e		; 4c 7e d5

B30_13a5:		lda #$00		; a9 00
B30_13a7:		sta $1c			; 85 1c
B30_13a9:		jsr func_1f_1753		; 20 53 f7
B30_13ac:		lda #$0c		; a9 0c
B30_13ae:		sta $64			; 85 64
B30_13b0:		lda #$00		; a9 00
B30_13b2:		sta $8d			; 85 8d
B30_13b4:		lda #$02		; a9 02
B30_13b6:		sta wInGameSubstate			; 85 2a
B30_13b8:		rts				; 60 


B30_13b9:		bmi B30_13c8 ; 30 0d

B30_13bb:		ldy #$00		; a0 00
B30_13bd:		cmp $0770, y	; d9 70 07
B30_13c0:		bcc B30_13c7 ; 90 05

B30_13c2:		iny				; c8 
B30_13c3:		cpy #$08		; c0 08
B30_13c5:		bne B30_13bd ; d0 f6

B30_13c7:		rts				; 60 


B30_13c8:		cmp #$c0		; c9 c0
B30_13ca:		bcs B30_13d9 ; b0 0d

B30_13cc:		ldy #$00		; a0 00
B30_13ce:		cmp $0778, y	; d9 78 07
B30_13d1:		bcc B30_13c7 ; 90 f4

B30_13d3:		iny				; c8 
B30_13d4:		cpy #$08		; c0 08
B30_13d6:		bne B30_13ce ; d0 f6

B30_13d8:		rts				; 60 


B30_13d9:		cmp #$dc		; c9 dc
B30_13db:		beq B30_13f5 ; f0 18

B30_13dd:		cmp #$dd		; c9 dd
B30_13df:		beq B30_13f5 ; f0 14

B30_13e1:		cmp #$de		; c9 de
B30_13e3:		beq B30_13f2 ; f0 0d

B30_13e5:		cmp #$df		; c9 df
B30_13e7:		beq B30_13f2 ; f0 09

B30_13e9:		cmp #$e4		; c9 e4
B30_13eb:		beq B30_13f8 ; f0 0b

B30_13ed:		cmp #$e5		; c9 e5
B30_13ef:		beq B30_13f8 ; f0 07

B30_13f1:		rts				; 60 


B30_13f2:		ldy #$07		; a0 07
B30_13f4:		rts				; 60 


B30_13f5:		ldy #$05		; a0 05
B30_13f7:		rts				; 60 


B30_13f8:		ldy #$00		; a0 00
B30_13fa:		rts				; 60 


stairsSetSectionRoomAndScreen:
	jsr setBankOfRoomGroupMetatilesPointers
	jsr getCurrRoomsMetatiles

; get num screens
	ldy #$00
	lda (wCurrRoomSectionMetatilesAddress), y
	clc
	adc #$01

; add 2*num to curr offset to get idx into transition bytes
	iny
	sty wIdxIntoRoomTransitionBytes
	asl a
	clc
	adc wIdxIntoRoomTransitionBytes
	sta wIdxIntoRoomTransitionBytes

; add 2*room idx to get curr room's transition bytes
	lda wCurrRoomIdx
	asl a
	clc
	adc wIdxIntoRoomTransitionBytes
	tay

@process2transitionBytes:
B30_1418:		ldx #$00		; a2 00
B30_141a:		lda wEntityVertSpeed.w		; ad 20 05
	bpl +

; if bit 7 set, we're ascending, use 2nd byte
	inx
	iny

+
; get transition byte
	lda (wCurrRoomSectionMetatilesAddress), y
	and #$f0
	cmp #$d0
	beq B30_1460 ; @transitionByte_dx

	cmp #$80
	beq B30_1457 ; @transitionByte_8x

; non-dx/8x transitions
	lda wCurrRoomMetadataByte
	bmi B30_1442 ; @verticalRoom

; horizontal room, the byte read is what to add to screen idx
	lda wCurrScrollXRoom
	clc
	adc (wCurrRoomSectionMetatilesAddress), y
	sta wCurrScrollXRoom

; if ascending, jump and inc room idx
	dex
	beq +

; descending, dec room idx, not going below 0
	dec wCurrRoomIdx
	bpl B30_1441

+	inc wCurrRoomIdx

B30_1441:	rts

@verticalRoom:
; high nybble is next section
B30_1442:		lda (wCurrRoomSectionMetatilesAddress), y	; b1 0a
	lsr a
	lsr a
	lsr a
	lsr a
	sta wCurrRoomIdx

; low nybble is which screen
	lda (wCurrRoomSectionMetatilesAddress), y
	and #$0f
	sta wCurrScrollXRoom

	lda #$00
	sta wCurrScrollXWithinRoom

;
B30_1454:		sta $58			; 85 58
B30_1456:		rts				; 60 

@transitionByte_8x:
; transition byte 8x - next room idx is low nybble
B30_1457:		lda (wCurrRoomSectionMetatilesAddress), y	; b1 0a
	and #$0f
	sta wCurrRoomIdx
	jmp B30_1441

@transitionByte_dx:
; get num section rooms
B30_1460:		lda (wCurrRoomSectionMetatilesAddress), y	; b1 0a
	and #$0f
	asl a
	tay
	lda roomTransitionData_dx.w, y
	sta wRoomTransitionDataAddr_dx
	lda roomTransitionData_dx.w+1, y
	sta wRoomTransitionDataAddr_dx+1

; 1st byte of data in A
	ldy #$00
	lda (wRoomTransitionDataAddr_dx), y

; check 1st byte
	iny
	cmp #$f0
	beq @dx_f0

	cmp #$f1
	beq @dx_f1

	jmp B30_1441

@dx_f1:
; go to next section, 2nd byte is curr screen in 1st room
	inc wCurrRoomSection
	lda (wRoomTransitionDataAddr_dx), y
	sta wCurrScrollXRoom
	lda #$00
	sta wCurrScrollXWithinRoom
	sta wCurrRoomIdx
	jmp B30_1441

@dx_f0:
; if curr scroll x is less than 2nd byte
; process next 2 transition bytes
; else process 2 transition byets after that
	lda wCurrScrollXRoom
	cmp (wRoomTransitionDataAddr_dx), y
	bcc +

	iny
	iny
+	iny
	jmp B30_1418		; @process2transitionBytes


getCurrRoomsMetatiles:
; get room group offset
	lda wCurrRoomGroup
	asl a
	tay
	lda roomGroupMetaTileAddresses.w, y
	sta wCurrRoomGroupMetatilesAddress
	lda roomGroupMetaTileAddresses.w+1, y
	sta wCurrRoomGroupMetatilesAddress+1

; get room section offset
	lda wCurrRoomSection
	asl a
	tay
	lda (wCurrRoomGroupMetatilesAddress), y
	sta wCurrRoomSectionMetatilesAddress
	iny
	lda (wCurrRoomGroupMetatilesAddress), y
	sta wCurrRoomSectionMetatilesAddress+1

; set double room idx
	lda wCurrRoomIdx
	asl a
	sta wDoubleCurrRoomIdx

; get room metatiles addr
	tay
	iny
	lda (wCurrRoomSectionMetatilesAddress), y
	sta wRoomMetaTilesAddr
	iny
	lda (wCurrRoomSectionMetatilesAddress), y
	sta wRoomMetaTilesAddr+1
	rts


func_1e_14c7:
B30_14c7:		jsr setBankOfRoomGroupLayoutPalettesData		; 20 05 c9
B30_14ca:		lda $7d			; a5 7d
B30_14cc:		and #$0f		; 29 0f
B30_14ce:		asl a			; 0a
B30_14cf:		asl a			; 0a
B30_14d0:		asl a			; 0a
B30_14d1:		tay				; a8 

; 1st 2 bytes are vram dest
B30_14d2:		lda data_1e_155e.w, y	; b9 5e d5
B30_14d5:		sta wVramQueueDest+1			; 85 62
B30_14d7:		lda data_1e_155e.w+1, y	; b9 5f d5
B30_14da:		sta wVramQueueDest			; 85 61

;
B30_14dc:		lda data_1e_155e.w+2, y	; b9 60 d5
B30_14df:		sta $0f			; 85 0f
B30_14e1:		lda data_1e_155e.w+3, y	; b9 61 d5
B30_14e4:		sta $0e			; 85 0e

;
B30_14e6:		lda data_1e_155e.w+4, y	; b9 62 d5
B30_14e9:		sta $08			; 85 08
B30_14eb:		lda $64			; a5 64
B30_14ed:		asl a			; 0a
B30_14ee:		asl a			; 0a
B30_14ef:		clc				; 18 
B30_14f0:		adc wVramQueueDest			; 65 61
B30_14f2:		sta wVramQueueDest			; 85 61
B30_14f4:		lda $64			; a5 64
B30_14f6:		clc				; 18 
B30_14f7:		adc $0e			; 65 0e
B30_14f9:		sta $0e			; 85 0e

;
B30_14fb:		lda data_1e_155e.w+5, y	; b9 63 d5
B30_14fe:		iny				; c8 
B30_14ff:		sty $09			; 84 09
B30_1501:		jsr func_1e_0f66		; 20 66 cf

; number of below loops
B30_1504:		lda #$04		; a9 04
B30_1506:		sta $06			; 85 06
B30_1508:		jsr vramQueueSet4bytesDestToCopy_noData		; 20 c6 e8
	jmp +

@nextDestAndBytes:
B30_150e:		jsr vramQueueSetDestToCopy_noData		; 20 bb e8
+
; copy the 4 bytes to vram queue
	ldy #$00
-	lda ($02), y	; b1 02
	sta wVramQueue.w, x
	inx
	iny
	cpy #$04
	bne -

B30_151e:		stx wVramQueueNextIdxToFill			; 86 1d
B30_1520:		lda #$04		; a9 04
B30_1522:		ldx #$02		; a2 02
B30_1524:		jsr incPointerXByA		; 20 99 e8
B30_1527:		lda #$20		; a9 20
B30_1529:		ldx #wVramQueueDest		; a2 61
B30_152b:		jsr incPointerXByA		; 20 99 e8
B30_152e:		dec $06			; c6 06
B30_1530:		bne B30_150e ; @nextDestAndBytes

;
B30_1532:		ldx wVramQueueNextIdxToFill			; a6 1d
B30_1534:		lda $0e			; a5 0e
B30_1536:		sta wVramQueue.w, x	; 9d 00 03
B30_1539:		inx				; e8 
B30_153a:		lda $0f			; a5 0f
B30_153c:		sta wVramQueue.w, x	; 9d 00 03
B30_153f:		inx				; e8 
B30_1540:		ldy $63			; a4 63
B30_1542:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_1544:		sta wVramQueue.w, x	; 9d 00 03
B30_1547:		inx				; e8 
B30_1548:		stx wVramQueueNextIdxToFill			; 86 1d
B30_154a:		lda #$08		; a9 08
B30_154c:		ldx #$0e		; a2 0e
B30_154e:		jsr incPointerXByA		; 20 99 e8
B30_1551:		ldy $09			; a4 09
B30_1553:		dec $08			; c6 08
B30_1555:		bne B30_14fb ; d0 a4

B30_1557:		inc $64			; e6 64
B30_1559:		lda $64			; a5 64
B30_155b:		cmp #$08		; c9 08
B30_155d:		rts				; 60 


data_1e_155e:
	.db $21 $00 $23 $d0 $03 $30 $31 $33
	.db $22 $00 $23 $e0 $02 $30 $32 $00
	.db $20 $80 $23 $c8 $02 $32 $33 $00
	.db $22 $80 $23 $e8 $02 $32 $33 $00


func_1e_157e:
B30_157e:		lda $7d			; a5 7d
B30_1580:		and #$0f		; 29 0f
B30_1582:		cmp #$02		; c9 02
B30_1584:		beq B30_1587 ; f0 01

B30_1586:		rts				; 60 

B30_1587:		lda #$20		; a9 20
B30_1589:		sta wVramQueueDest+1			; 85 62
B30_158b:		lda #$80		; a9 80
B30_158d:		sta wVramQueueDest			; 85 61
B30_158f:		jsr vramQueueSet1byteDestToCopy_noData		; 20 b5 e8
B30_1592:		ldy #$40		; a0 40
B30_1594:		lda #$00		; a9 00
B30_1596:		sta wVramQueue.w, x	; 9d 00 03
B30_1599:		inx				; e8 
B30_159a:		dey				; 88 
B30_159b:		bne B30_1596 ; d0 f9

B30_159d:		jsr setVramQueueFillIdxAndTerminate		; 20 de e8
B30_15a0:		lda #$23		; a9 23
B30_15a2:		sta wVramQueueDest+1			; 85 62
B30_15a4:		lda #$c8		; a9 c8
B30_15a6:		sta wVramQueueDest			; 85 61
B30_15a8:		jsr vramQueueSet1byteDestToCopy_noData		; 20 b5 e8
B30_15ab:		ldy #$08		; a0 08
B30_15ad:		lda #$f0		; a9 f0
-	sta wVramQueue.w, x	; 9d 00 03
B30_15b2:		inx				; e8 
B30_15b3:		dey				; 88 
	bne -

B30_15b6:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


func_1e_15b9:
B30_15b9:		lda #$03		; a9 03
B30_15bb:		sta $72			; 85 72
B30_15bd:		jsr $d5c3		; 20 c3 d5
B30_15c0:		jmp $d004		; 4c 04 d0


B30_15c3:		lda #$e0		; a9 e0
B30_15c5:		sta $ca			; 85 ca
B30_15c7:		lda #$00		; a9 00
B30_15c9:		sta $cb			; 85 cb
B30_15cb:		ldy #$e0		; a0 e0
B30_15cd:		ldx #$2e		; a2 2e
B30_15cf:		lda #$17		; a9 17
B30_15d1:		jmp func_1f_05bf		; 4c bf e5


roomGroupMetaTileAddresses:
; bank 10
	.dw roomGroupMetadata0
	.dw roomGroupMetadata1
	.dw roomGroupMetadata2
	.dw roomGroupMetadata3
	.dw roomGroupMetadata4

; bank 0e
	.dw roomGroupMetadata5
	.dw roomGroupMetadata6
	.dw roomGroupMetadata7
	.dw roomGroupMetadata8

; bank 0c
	.dw roomGroupMetadata9
	.dw roomGroupMetadataA

; bank 0e
	.dw roomGroupMetadataB
	
; bank 0c
	.dw roomGroupMetadataC
	.dw roomGroupMetadataD
	.dw roomGroupMetadataE


roomGroupTileAddresses:
	.dw roomGroupTiles0
	.dw roomGroupTiles1
	.dw roomGroupTiles2
	.dw roomGroupTiles3
	.dw roomGroupTiles4

	.dw roomGroupTiles5
	.dw roomGroupTiles6
	.dw roomGroupTiles7
	.dw roomGroupTiles8

	.dw roomGroupTiles9
	.dw roomGroupTilesA

	.dw roomGroupTilesB

	.dw roomGroupTilesC
	.dw roomGroupTilesD
	.dw roomGroupTilesE


roomGroupMetatilePalettes:
	.dw roomGroupPalettes0
	.dw roomGroupPalettes1
	.dw roomGroupPalettes2
	.dw roomGroupPalettes3
	.dw roomGroupPalettes4

	.dw roomGroupPalettes5
	.dw roomGroupPalettes6
	.dw roomGroupPalettes7
	.dw roomGroupPalettes8

	.dw roomGroupPalettes9
	.dw roomGroupPalettesA

	.dw roomGroupPalettesB

	.dw roomGroupPalettesC
	.dw roomGroupPalettesD
	.dw roomGroupPalettesE


.include "data/roomMetadataBits.s"


roomTransitionData_dx:
	.dw data_1e_1762
	.dw data_1e_1768
	.dw data_1e_176a
	.dw data_1e_1770

data_1e_1762:
	.db $f0 $01
	.db $81 $e0
	.db $ff $e0

data_1e_1768:
	.db $f1 $00
	
data_1e_176a:
	.db $f0 $01
	.db $81 $e0
	.db $ff $e0

data_1e_1770:
	.db $f1 $03


data_1e_0772:
	.dw $2800
B30_1774:		bit $00			; 24 00
B30_1776:		clc				; 18 
B30_1777:	.db $2e $07 $00
B30_177a:		sta ($2d, x)	; 81 2d
B30_177c:		clc				; 18 
B30_177d:		.db $00				; 00
B30_177e:		sta ($2c, x)	; 81 2c
B30_1780:		asl $00			; 06 00
B30_1782:		sta ($2d, x)	; 81 2d
B30_1784:		clc				; 18 
B30_1785:		.db $00				; 00
B30_1786:		sta ($2c, x)	; 81 2c
B30_1788:		asl $00			; 06 00
B30_178a:		sta ($2d, x)	; 81 2d
B30_178c:		clc				; 18 
B30_178d:		.db $00				; 00
B30_178e:		sta ($2c, x)	; 81 2c
B30_1790:		asl $00			; 06 00
B30_1792:		sta ($2d, x)	; 81 2d
B30_1794:		clc				; 18 
B30_1795:		.db $00				; 00
B30_1796:		sta ($2c, x)	; 81 2c
B30_1798:		asl $00			; 06 00
B30_179a:		sta ($2d, x)	; 81 2d
B30_179c:		clc				; 18 
B30_179d:		.db $00				; 00
B30_179e:		sta ($2c, x)	; 81 2c
B30_17a0:		asl $00			; 06 00
B30_17a2:		sta ($2d, x)	; 81 2d
B30_17a4:	.db $07
B30_17a5:		.db $00				; 00
B30_17a6:	.db $82
B30_17a7:		pla				; 68 
B30_17a8:		adc #$0f		; 69 0f
B30_17aa:		.db $00				; 00
B30_17ab:		sta ($2c, x)	; 81 2c
B30_17ad:		asl $00			; 06 00
B30_17af:		sta ($2d, x)	; 81 2d
B30_17b1:	.db $07
B30_17b2:		.db $00				; 00
B30_17b3:		txa				; 8a 
B30_17b4:		lsr $47			; 46 47
B30_17b6:		pha				; 48 
B30_17b7:		eor #$4a		; 49 4a
B30_17b9:	.db $4b
B30_17ba:		jmp $4e4d		; 4c 4d 4e


B30_17bd:	.db $4f
B30_17be:	.db $07
B30_17bf:		.db $00				; 00
B30_17c0:		sta ($2c, x)	; 81 2c
B30_17c2:		asl $00			; 06 00
B30_17c4:		sta ($2d, x)	; 81 2d
B30_17c6:	.db $07
B30_17c7:		.db $00				; 00
B30_17c8:		txa				; 8a 
B30_17c9:		lsr $57, x		; 56 57
B30_17cb:		cli				; 58 
B30_17cc:		eor $5b5a, y	; 59 5a 5b
B30_17cf:	.db $5c
B30_17d0:		eor $5f5e, x	; 5d 5e 5f
B30_17d3:	.db $07
B30_17d4:		.db $00				; 00
B30_17d5:		sta ($2c, x)	; 81 2c
B30_17d7:		asl $00			; 06 00
B30_17d9:		sta ($2d, x)	; 81 2d
B30_17db:	.db $07
B30_17dc:		.db $00				; 00
B30_17dd:		txa				; 8a 
B30_17de:		ror $67			; 66 67
B30_17e0:		.db $00				; 00
B30_17e1:		.db $00				; 00
B30_17e2:		ror a			; 6a
B30_17e3:		.db $00				; 00
B30_17e4:		.db $00				; 00
B30_17e5:		adc $6f6e		; 6d 6e 6f
B30_17e8:	.db $07
B30_17e9:		.db $00				; 00
B30_17ea:		sta ($2c, x)	; 81 2c
B30_17ec:		asl $00			; 06 00
B30_17ee:		sta ($2d, x)	; 81 2d
B30_17f0:	.db $04
B30_17f1:		.db $00				; 00
B30_17f2:		sta $60			; 85 60
B30_17f4:		.db $00				; 00
B30_17f5:		.db $00				; 00
B30_17f6:		.db $00				; 00
B30_17f7:		adc ($0f, x)	; 61 0f
B30_17f9:		.db $00				; 00
B30_17fa:		sta ($2c, x)	; 81 2c
B30_17fc:		asl $00			; 06 00
B30_17fe:		sta ($2d, x)	; 81 2d
B30_1800:	.db $04
B30_1801:		.db $00				; 00
B30_1802:		;removed
	.db $90 $70

B30_1804:		adc ($72), y	; 71 72
B30_1806:	.db $73
B30_1807:	.db $74
B30_1808:		adc $76, x		; 75 76
B30_180a:	.db $77
B30_180b:		sei				; 78 
B30_180c:		adc $7b7a, y	; 79 7a 7b
B30_180f:	.db $7c
B30_1810:		adc $7f7e, x	; 7d 7e 7f
B30_1813:	.db $04
B30_1814:		.db $00				; 00
B30_1815:		sta ($2c, x)	; 81 2c
B30_1817:		asl $00			; 06 00
B30_1819:		sta ($2d, x)	; 81 2d
B30_181b:	.db $04
B30_181c:		.db $00				; 00
B30_181d:		;removed
	.db $90 $80

B30_181f:		sta ($82, x)	; 81 82
B30_1821:	.db $83
B30_1822:		sty $85			; 84 85
B30_1824:		stx $87			; 86 87
B30_1826:		dey				; 88 
B30_1827:	.db $89
B30_1828:		txa				; 8a 
B30_1829:	.db $8b
B30_182a:		sty $8e8d		; 8c 8d 8e
B30_182d:	.db $8f
B30_182e:	.db $04
B30_182f:		.db $00				; 00
B30_1830:		sta ($2c, x)	; 81 2c
B30_1832:		asl $00			; 06 00
B30_1834:		sta ($2d, x)	; 81 2d
B30_1836:	.db $04
B30_1837:		.db $00				; 00
B30_1838:		;removed
	.db $90 $90

B30_183a:		sta ($92), y	; 91 92
B30_183c:	.db $93
B30_183d:		sty $95, x		; 94 95
B30_183f:		stx $97, y		; 96 97
B30_1841:		tya				; 98 
B30_1842:		sta $9b9a, y	; 99 9a 9b
B30_1845:	.db $9c
B30_1846:		sta $9f9e, x	; 9d 9e 9f
B30_1849:	.db $04
B30_184a:		.db $00				; 00
B30_184b:		sta ($2c, x)	; 81 2c
B30_184d:		asl $00			; 06 00
B30_184f:		sta ($2d, x)	; 81 2d
B30_1851:	.db $04
B30_1852:		.db $00				; 00
B30_1853:		bcc B30_17f5 ; 90 a0

B30_1855:		lda ($a2, x)	; a1 a2
B30_1857:	.db $a3
B30_1858:		ldy $a5			; a4 a5
B30_185a:		ldx $a7			; a6 a7
B30_185c:		tay				; a8 
B30_185d:		lda #$aa		; a9 aa
B30_185f:	.db $ab
B30_1860:		ldy $aead		; ac ad ae
B30_1863:	.db $af
B30_1864:	.db $04
B30_1865:		.db $00				; 00
B30_1866:		sta ($2c, x)	; 81 2c
B30_1868:		asl $00			; 06 00
B30_186a:		sta ($2d, x)	; 81 2d
B30_186c:	.db $04
B30_186d:		.db $00				; 00
B30_186e:	.db $8f
B30_186f:		bcs B30_1822 ; b0 b1

B30_1871:		.db $00				; 00
B30_1872:	.db $b3
B30_1873:		ldy $b5, x		; b4 b5
B30_1875:		ldx $b7, y		; b6 b7
B30_1877:		clv				; b8 
B30_1878:		lda $bbba, y	; b9 ba bb
B30_187b:		ldy $fc00, x	; bc 00 fc
B30_187e:		ora $00			; 05 00
B30_1880:		sta ($2c, x)	; 81 2c
B30_1882:		asl $00			; 06 00
B30_1884:		sta ($2d, x)	; 81 2d
B30_1886:	.db $07
B30_1887:		.db $00				; 00
B30_1888:		txa				; 8a 
B30_1889:	.db $c3
B30_188a:		cpy $c5			; c4 c5
B30_188c:		dec $c7			; c6 c7
B30_188e:		iny				; c8 
B30_188f:		cmp #$ca		; c9 ca
B30_1891:	.db $cb
B30_1892:	.db $cc $07 $00
B30_1895:		sta ($2c, x)	; 81 2c
B30_1897:		asl $00			; 06 00
B30_1899:		sta ($2d, x)	; 81 2d
B30_189b:	.db $07
B30_189c:		.db $00				; 00
B30_189d:		txa				; 8a 
B30_189e:	.db $d3
B30_189f:	.db $d4
B30_18a0:		cmp $d6, x		; d5 d6
B30_18a2:	.db $d7
B30_18a3:		cld				; d8 
B30_18a4:		cmp $dbda, y	; d9 da db
B30_18a7:	.db $dc
B30_18a8:	.db $07
B30_18a9:		.db $00				; 00
B30_18aa:		sta ($2c, x)	; 81 2c
B30_18ac:		asl $00			; 06 00
B30_18ae:		sta ($2d, x)	; 81 2d
B30_18b0:	.db $07
B30_18b1:		.db $00				; 00
B30_18b2:		txa				; 8a 
B30_18b3:	.db $e3
B30_18b4:		cpx $e5			; e4 e5
B30_18b6:		inc $e7			; e6 e7
B30_18b8:		inx				; e8 
B30_18b9:		sbc #$ea		; e9 ea
B30_18bb:	.db $eb
B30_18bc:	.db $ec $07 $00
B30_18bf:		sta ($2c, x)	; 81 2c
B30_18c1:		asl $00			; 06 00
B30_18c3:		sta ($2d, x)	; 81 2d
B30_18c5:	.db $07
B30_18c6:		.db $00				; 00
B30_18c7:	.db $83
B30_18c8:	.db $f3
B30_18c9:	.db $f4
B30_18ca:		sbc $0e, x		; f5 0e
B30_18cc:		.db $00				; 00
B30_18cd:		sta ($2c, x)	; 81 2c
B30_18cf:		asl $00			; 06 00
B30_18d1:		sta ($2d, x)	; 81 2d
B30_18d3:		clc				; 18 
B30_18d4:		.db $00				; 00
B30_18d5:		sta ($2c, x)	; 81 2c
B30_18d7:		asl $00			; 06 00
B30_18d9:		sta ($2d, x)	; 81 2d
B30_18db:		clc				; 18 
B30_18dc:		.db $00				; 00
B30_18dd:		sta ($2c, x)	; 81 2c
B30_18df:		asl $00			; 06 00
B30_18e1:		sta ($2d, x)	; 81 2d
B30_18e3:		clc				; 18 
B30_18e4:		.db $00				; 00
B30_18e5:		sta ($2c, x)	; 81 2c
B30_18e7:		asl $00			; 06 00
B30_18e9:		sta ($2d, x)	; 81 2d
B30_18eb:		clc				; 18 
B30_18ec:		.db $00				; 00
B30_18ed:		sta ($2c, x)	; 81 2c
B30_18ef:		asl $00			; 06 00
B30_18f1:		sta ($2d, x)	; 81 2d
B30_18f3:		clc				; 18 
B30_18f4:		.db $00				; 00
B30_18f5:		sta ($2c, x)	; 81 2c
B30_18f7:		asl $00			; 06 00
B30_18f9:		sta ($2d, x)	; 81 2d
B30_18fb:		clc				; 18 
B30_18fc:		.db $00				; 00
B30_18fd:		sta ($2c, x)	; 81 2c
B30_18ff:		asl $00			; 06 00
B30_1901:		sta ($2d, x)	; 81 2d
B30_1903:		clc				; 18 
B30_1904:		rol $2c81		; 2e 81 2c
B30_1907:		eor $8200		; 4d 00 82
B30_190a:	.db $80
B30_190b:	.db $20 $06 $00
B30_190e:		sty $98			; 84 98
B30_1910:		tax				; aa 
B30_1911:		inc $0433		; ee 33 04
B30_1914:		.db $00				; 00
B30_1915:		sty $55			; 84 55
B30_1917:		sta $ffee, y	; 99 ee ff


B30_191a:	.db $04
B30_191b:		.db $00				; 00
B30_191c:		sty $55			; 84 55
B30_191e:		eor $ffee, y	; 59 ee ff
B30_1921:	.db $04
B30_1922:		.db $00				; 00
B30_1923:	.db $82
B30_1924:		ora $05			; 05 05
B30_1926:	.db $14
B30_1927:		.db $00				; 00
B30_1928:	.db $ff
B30_1929:		.db $00				; 00
B30_192a:	.db $80
B30_192b:		.db $00				; 00
B30_192c:	.db $80
B30_192d:		asl $c3			; 06 c3
B30_192f:	.db $f4
B30_1930:		sbc ($e8), y	; f1 e8
B30_1932:	.db $ed $e6 $00
B30_1935:		dec $f3df, x	; de df f3
B30_1938:	.db $e7
B30_1939:		.db $00				; 00
B30_193a:	.db $c2
B30_193b:		cpx $ed			; e4 ed
B30_193d:	.db $f3
B30_193e:	.db $f4
B30_193f:		sbc ($f8), y	; f1 f8
B30_1941:	.db $80
B30_1942:		asl $c4			; 06 c4
B30_1944:	.db $f4
B30_1945:		sbc ($ee), y	; f1 ee
B30_1947:	.db $ef
B30_1948:		cpx $dc			; e4 dc
B30_194a:		.db $00				; 00
B30_194b:	.db $f3
B30_194c:	.db $e7
B30_194d:		cpx $f1			; e4 f1
B30_194f:		cpx $00			; e4 00
B30_1951:	.db $eb
B30_1952:		inx				; e8 
B30_1953:		sbc $e4, x		; f5 e4
B30_1955:	.db $e3
B30_1956:	.db $80
B30_1957:		asl $e0			; 06 e0
B30_1959:		.db $00				; 00
B30_195a:	.db $ef
B30_195b:		cpx $f1			; e4 f1
B30_195d:	.db $f2
B30_195e:	.db $ee $ed $00
B30_1961:		sbc $ece0		; ede0 ec
B30_1964:		cpx $e3			; e4 e3
B30_1966:	.db $80
B30_1967:		asl $c3			; 06 c3
B30_1969:		sbc ($e0), y	; f1 e0
B30_196b:	.db $e2
B30_196c:	.db $f4
B30_196d:	.db $eb
B30_196e:		cpx #$db		; e0 db
B30_1970:	.db $80
B30_1971:		asl $c7			; 06 c7
B30_1973:		cpx $00			; e4 00
B30_1975:	.db $ef
B30_1976:		sbc ($e0), y	; f1 e0
B30_1978:	.db $e2
B30_1979:	.db $f3
B30_197a:		inx				; e8 
B30_197b:	.db $e2
B30_197c:		cpx $e3			; e4 e3
B30_197e:		.db $00				; 00
B30_197f:	.db $f2
B30_1980:		inc $e2f1		; ee f1 e2
B30_1983:		cpx $f1			; e4 f1
B30_1985:		sed				; f8 
B30_1986:	.db $80
B30_1987:		asl $e8			; 06 e8
B30_1989:		sbc $ee00		; ed00 ee
B30_198c:		sbc ($e3), y	; f1 e3
B30_198e:		cpx $f1			; e4 f1
B30_1990:		.db $00				; 00
B30_1991:	.db $f3
B30_1992:		inc $e200		; ee 00 e2
B30_1995:		sbc ($e4), y	; f1 e4
B30_1997:		cpx #$f3		; e0 f3
B30_1999:		cpx $80			; e4 80
B30_199b:		asl $e0			; 06 e0
B30_199d:		.db $00				; 00
B30_199e:		sbc ($e0, x)	; e1 e0
B30_19a0:	.db $e3
B30_19a1:		.db $00				; 00
B30_19a2:		inc $ee, x		; f6 ee
B30_19a4:		sbc ($eb), y	; f1 eb
B30_19a6:	.db $e3
B30_19a7:		.db $00				; 00
B30_19a8:		sbc $e8			; e5 e8
B30_19aa:	.db $eb
B30_19ab:	.db $eb
B30_19ac:		cpx $e3			; e4 e3
B30_19ae:	.db $80
B30_19af:		asl $f6			; 06 f6
B30_19b1:		inx				; e8 
B30_19b2:	.db $f3
B30_19b3:	.db $e7
B30_19b4:		.db $00				; 00
B30_19b5:		cpx $f5			; e4 f5
B30_19b7:		inx				; e8 
B30_19b8:	.db $eb
B30_19b9:	.db $db
B30_19ba:	.db $80
B30_19bb:		sta ($00, x)	; 81 00
B30_19bd:	.db $80
B30_19be:		.db $00				; 00
B30_19bf:	.db $80
B30_19c0:		asl $c7			; 06 c7
B30_19c2:		cpx $00			; e4 00
B30_19c4:		sbc ($e4, x)	; e1 e4
B30_19c6:		inc $e0			; e6 e0
B30_19c8:		sbc $f300		; ed00 f3
B30_19cb:		cpx #$ea		; e0 ea
B30_19cd:		inx				; e8 
B30_19ce:	.db $ed $e6 $00
B30_19d1:		inc $e4f5		; ee f5 e4
B30_19d4:		sbc ($80), y	; f1 80
B30_19d6:		asl $f3			; 06 f3
B30_19d8:	.db $e7
B30_19d9:		cpx $00			; e4 00
B30_19db:	.db $c2
B30_19dc:		inc $f3ed		; ee ed f3
B30_19df:		inx				; e8 
B30_19e0:		sbc $ede4		; ede4 ed
B30_19e3:	.db $f3
B30_19e4:		.db $00				; 00
B30_19e5:		inc $80e5		; ee e5 80
B30_19e8:		asl $c4			; 06 c4
B30_19ea:	.db $f4
B30_19eb:		sbc ($ee), y	; f1 ee
B30_19ed:	.db $ef
B30_19ee:		cpx $dc			; e4 dc
B30_19f0:		.db $00				; 00
B30_19f1:	.db $e2
B30_19f2:	.db $e7
B30_19f3:		cpx #$ed		; e0 ed
B30_19f5:		inc $e8			; e6 e8
B30_19f7:		sbc $80e6		; ede6 80
B30_19fa:		asl $e2			; 06 e2
B30_19fc:		inc $edf4		; ee f4 ed
B30_19ff:	.db $f3
B30_1a00:		sbc ($e8), y	; f1 e8
B30_1a02:		cpx $f2			; e4 f2
B30_1a04:		.db $00				; 00
B30_1a05:		sbc $f1			; e5 f1
B30_1a07:	.db $ee $ec $00
B30_1a0a:		inc $ee			; e6 ee
B30_1a0c:		inc $80e3		; ee e3 80
B30_1a0f:		asl $f3			; 06 f3
B30_1a11:		inc $e100		; ee 00 e1
B30_1a14:		cpx #$e3		; e0 e3
B30_1a16:	.db $db
B30_1a17:	.db $80
B30_1a18:		asl $d3			; 06 d3
B30_1a1a:	.db $e7
B30_1a1b:		cpx $00			; e4 00
B30_1a1d:		inc $ee			; e6 ee
B30_1a1f:	.db $ee $e3 $00
B30_1a22:	.db $ef
B30_1a23:		cpx $ee			; e4 ee
B30_1a25:	.db $ef
B30_1a26:	.db $eb
B30_1a27:		cpx $00			; e4 00
B30_1a29:		inc $80e5		; ee e5 80
B30_1a2c:		asl $c4			; 06 c4
B30_1a2e:	.db $f4
B30_1a2f:		sbc ($ee), y	; f1 ee
B30_1a31:	.db $ef
B30_1a32:		cpx $00			; e4 00
B30_1a34:	.db $f3
B30_1a35:		sbc ($e8), y	; f1 e8
B30_1a37:		cpx $e3			; e4 e3
B30_1a39:		.db $00				; 00
B30_1a3a:	.db $f3
B30_1a3b:		inc $0680		; ee 80 06
B30_1a3e:		sbc $e8			; e5 e8
B30_1a40:		inc $e7			; e6 e7
B30_1a42:	.db $f3
B30_1a43:		.db $00				; 00
B30_1a44:		inc $e5e5		; ee e5 e5
B30_1a47:		.db $00				; 00
B30_1a48:	.db $c3
B30_1a49:		sbc ($e0), y	; f1 e0
B30_1a4b:	.db $e2
B30_1a4c:	.db $f4
B30_1a4d:	.db $eb
B30_1a4e:		cpx #$dc		; e0 dc
B30_1a50:	.db $80
B30_1a51:		asl $e1			; 06 e1
B30_1a53:	.db $f4
B30_1a54:	.db $f3
B30_1a55:		.db $00				; 00
B30_1a56:	.db $ed $ee $00
B30_1a59:		inc $e4ed		; ee ed e4
B30_1a5c:		.db $00				; 00
B30_1a5d:		inc $e0, x		; f6 e0
B30_1a5f:	.db $f2
B30_1a60:		.db $00				; 00
B30_1a61:		cpx #$e1		; e0 e1
B30_1a63:	.db $eb
B30_1a64:		cpx $80			; e4 80
B30_1a66:		asl $f3			; 06 f3
B30_1a68:		inc $f200		; ee 00 f2
B30_1a6b:	.db $f4
B30_1a6c:		sbc ($f5), y	; f1 f5
B30_1a6e:		inx				; e8 
B30_1a6f:		sbc $e4, x		; f5 e4
B30_1a71:	.db $db
B30_1a72:	.db $80
B30_1a73:		sta ($00, x)	; 81 00
B30_1a75:	.db $80
B30_1a76:		.db $00				; 00
B30_1a77:	.db $80
B30_1a78:		asl $c5			; 06 c5
B30_1a7a:		inx				; e8 
B30_1a7b:		sbc $ebe0		; ede0 eb
B30_1a7e:	.db $eb
B30_1a7f:		sed				; f8 
B30_1a80:	.db $dc
B30_1a81:		.db $00				; 00
B30_1a82:	.db $f3
B30_1a83:	.db $e7
B30_1a84:		cpx $00			; e4 00
B30_1a86:		cmp ($e4, x)	; c1 e4
B30_1a88:	.db $eb
B30_1a89:		cpx $edee		; ec ee ed
B30_1a8c:	.db $f3
B30_1a8d:	.db $80
B30_1a8e:		asl $e5			; 06 e5
B30_1a90:		cpx #$ec		; e0 ec
B30_1a92:		inx				; e8 
B30_1a93:	.db $eb
B30_1a94:		sed				; f8 
B30_1a95:		.db $00				; 00
B30_1a96:		inc $e0, x		; f6 e0
B30_1a98:	.db $f2
B30_1a99:		.db $00				; 00
B30_1a9a:	.db $f2
B30_1a9b:	.db $f4
B30_1a9c:		cpx $eeec		; ec ec ee
B30_1a9f:		sbc $e3e4		; ede4 e3
B30_1aa2:	.db $80
B30_1aa3:		asl $f3			; 06 f3
B30_1aa5:		inc $e100		; ee 00 e1
B30_1aa8:		cpx #$f3		; e0 f3
B30_1aaa:	.db $f3
B30_1aab:	.db $eb
B30_1aac:		cpx $00			; e4 00
B30_1aae:	.db $c3
B30_1aaf:		sbc ($e0), y	; f1 e0
B30_1ab1:	.db $e2
B30_1ab2:	.db $f4
B30_1ab3:	.db $eb
B30_1ab4:		cpx #$da		; e0 da
B30_1ab6:	.db $f2
B30_1ab7:	.db $80
B30_1ab8:		asl $f5			; 06 f5
B30_1aba:		inx				; e8 
B30_1abb:	.db $eb
B30_1abc:		cpx $00			; e4 00
B30_1abe:		sbc $ee			; e5 ee
B30_1ac0:		sbc ($e2), y	; f1 e2
B30_1ac2:		cpx $f2			; e4 f2
B30_1ac4:	.db $db
B30_1ac5:	.db $80
B30_1ac6:		bpl B30_1a9b ; 10 d3

B30_1ac8:	.db $e7
B30_1ac9:		cpx $00			; e4 00
B30_1acb:		cmp ($e4, x)	; c1 e4
B30_1acd:	.db $eb
B30_1ace:		cpx $edee		; ec ee ed
B30_1ad1:	.db $f3
B30_1ad2:	.db $80
B30_1ad3:		bpl B30_1aba ; 10 e5

B30_1ad5:		cpx #$ec		; e0 ec
B30_1ad7:		inx				; e8 
B30_1ad8:	.db $eb
B30_1ad9:		sed				; f8 
B30_1ada:		.db $00				; 00
B30_1adb:	.db $e7
B30_1adc:		cpx #$f2		; e0 f2
B30_1ade:	.db $80
B30_1adf:		;removed
	.db $10 $e0

B30_1ae1:		.db $00				; 00
B30_1ae2:	.db $eb
B30_1ae3:		inc $e6ed		; ee ed e6
B30_1ae6:	.db $80
B30_1ae7:		;removed
	.db $10 $e7

B30_1ae9:		inx				; e8 
B30_1aea:	.db $f2
B30_1aeb:	.db $f3
B30_1aec:		inc $f8f1		; ee f1 f8
B30_1aef:		.db $00				; 00
B30_1af0:		inc $80e5		; ee e5 80
B30_1af3:		bpl B30_1ada ; 10 e5

B30_1af5:		inx				; e8 
B30_1af6:		inc $e7			; e6 e7
B30_1af8:	.db $f3
B30_1af9:		inx				; e8 
B30_1afa:		sbc $80e6		; ede6 80
B30_1afd:		bpl B30_1ae3 ; 10 e4

B30_1aff:		sbc $e8, x		; f5 e8
B30_1b01:	.db $eb
B30_1b02:	.db $db
B30_1b03:	.db $80
B30_1b04:		sta ($00, x)	; 81 00
B30_1b06:	.db $80
B30_1b07:		.db $00				; 00
B30_1b08:	.db $80
B30_1b09:		asl $d3			; 06 d3
B30_1b0b:	.db $e7
B30_1b0c:		cpx $00			; e4 00
B30_1b0e:	.db $f3
B30_1b0f:		inc $edf6		; ee f6 ed
B30_1b12:	.db $f2
B30_1b13:	.db $ef
B30_1b14:		cpx $ee			; e4 ee
B30_1b16:	.db $ef
B30_1b17:	.db $eb
B30_1b18:		cpx $00			; e4 00
B30_1b1a:		sbc ($e4, x)	; e1 e4
B30_1b1c:	.db $fc
B30_1b1d:	.db $80
B30_1b1e:		asl $e2			; 06 e2
B30_1b20:		cpx #$ec		; e0 ec
B30_1b22:		cpx $00			; e4 00
B30_1b24:		cpx #$e5		; e0 e5
B30_1b26:		sbc ($e0), y	; f1 e0
B30_1b28:		inx				; e8 
B30_1b29:	.db $e3
B30_1b2a:		.db $00				; 00
B30_1b2b:	.db $ee $e5 $00
B30_1b2e:	.db $f3
B30_1b2f:	.db $e7
B30_1b30:		cpx $80			; e4 80
B30_1b32:		asl $c1			; 06 c1
B30_1b34:		cpx $eb			; e4 eb
B30_1b36:		cpx $edee		; ec ee ed
B30_1b39:	.db $f3
B30_1b3a:	.db $f2
B30_1b3b:		.db $00				; 00
B30_1b3c:	.db $f2
B30_1b3d:	.db $f4
B30_1b3e:	.db $ef
B30_1b3f:		cpx $f1			; e4 f1
B30_1b41:	.db $fc
B30_1b42:	.db $e7
B30_1b43:	.db $f4
B30_1b44:		cpx $ede0		; ec e0 ed
B30_1b47:	.db $80
B30_1b48:		asl $ef			; 06 ef
B30_1b4a:		inc $e4f6		; ee f6 e4
B30_1b4d:		sbc ($00), y	; f1 00
B30_1b4f:		cpx #$ed		; e0 ed
B30_1b51:	.db $e3
B30_1b52:		.db $00				; 00
B30_1b53:		cpx #$f2		; e0 f2
B30_1b55:		nop				; ea 
B30_1b56:		cpx $e3			; e4 e3
B30_1b58:		.db $00				; 00
B30_1b59:	.db $f3
B30_1b5a:	.db $e7
B30_1b5b:		cpx $ec			; e4 ec
B30_1b5d:	.db $80
B30_1b5e:		asl $f3			; 06 f3
B30_1b60:		inc $eb00		; ee 00 eb
B30_1b63:		cpx $e0			; e4 e0
B30_1b65:		sbc $e4, x		; f5 e4
B30_1b67:		.db $00				; 00
B30_1b68:	.db $f3
B30_1b69:	.db $e7
B30_1b6a:		cpx $00			; e4 00
B30_1b6c:	.db $e2
B30_1b6d:		inc $edf4		; ee f4 ed
B30_1b70:	.db $f3
B30_1b71:		sbc ($f8), y	; f1 f8
B30_1b73:	.db $db
B30_1b74:	.db $80
B30_1b75:		asl $c5			; 06 c5
B30_1b77:		inc $f3f1		; ee f1 f3
B30_1b7a:	.db $f4
B30_1b7b:		sbc $f3e0		; ede0 f3
B30_1b7e:		cpx $eb			; e4 eb
B30_1b80:		sed				; f8 
B30_1b81:	.db $80
B30_1b82:		asl $f3			; 06 f3
B30_1b84:	.db $e7
B30_1b85:		cpx $00			; e4 00
B30_1b87:	.db $ef
B30_1b88:		cpx $ee			; e4 ee
B30_1b8a:	.db $ef
B30_1b8b:	.db $eb
B30_1b8c:		cpx $80			; e4 80
B30_1b8e:		asl $e5			; 06 e5
B30_1b90:		inc $edf4		; ee f4 ed
B30_1b93:	.db $e3
B30_1b94:		.db $00				; 00
B30_1b95:		cpx #$80		; e0 80
B30_1b97:		asl $ec			; 06 ec
B30_1b99:		inx				; e8 
B30_1b9a:		inc $e7			; e6 e7
B30_1b9c:	.db $f3
B30_1b9d:		sed				; f8 
B30_1b9e:	.db $80
B30_1b9f:		asl $c1			; 06 c1
B30_1ba1:		cpx $eb			; e4 eb
B30_1ba3:		cpx $edee		; ec ee ed
B30_1ba6:	.db $f3
B30_1ba7:	.db $dc
B30_1ba8:		.db $00				; 00
B30_1ba9:	.db $e2
B30_1baa:		cpx #$fc		; e0 fc
B30_1bac:	.db $80
B30_1bad:		asl $eb			; 06 eb
B30_1baf:	.db $eb
B30_1bb0:		cpx $e3			; e4 e3
B30_1bb2:		.db $00				; 00
B30_1bb3:	.db $d3
B30_1bb4:		sbc ($e4), y	; f1 e4
B30_1bb6:		sbc $ee, x		; f5 ee
B30_1bb8:		sbc ($db), y	; f1 db
B30_1bba:	.db $80
B30_1bbb:		sta ($00, x)	; 81 00
B30_1bbd:	.db $80
B30_1bbe:		.db $00				; 00
B30_1bbf:	.db $80
B30_1bc0:		.db $00				; 00
B30_1bc1:	.db $80
B30_1bc2:		.db $00				; 00
B30_1bc3:	.db $80
B30_1bc4:		.db $00				; 00
B30_1bc5:	.db $80
B30_1bc6:		.db $00				; 00
B30_1bc7:	.db $80
B30_1bc8:		.db $00				; 00
B30_1bc9:	.db $80
B30_1bca:		.db $00				; 00
B30_1bcb:	.db $80
B30_1bcc:		.db $00				; 00
B30_1bcd:	.db $80
B30_1bce:		asl $d3			; 06 d3
B30_1bd0:	.db $e7
B30_1bd1:		cpx $00			; e4 00
B30_1bd3:	.db $e2
B30_1bd4:	.db $f4
B30_1bd5:		sbc ($f2), y	; f1 f2
B30_1bd7:		cpx $00			; e4 00
B30_1bd9:		inc $80e5		; ee e5 80
B30_1bdc:		asl $c3			; 06 c3
B30_1bde:		sbc ($e0), y	; f1 e0
B30_1be0:	.db $e2
B30_1be1:	.db $f4
B30_1be2:	.db $eb
B30_1be3:		cpx #$00		; e0 00
B30_1be5:	.db $e7
B30_1be6:		cpx #$f2		; e0 f2
B30_1be8:		.db $00				; 00
B30_1be9:		sbc ($e4, x)	; e1 e4
B30_1beb:		inc $f4			; e6 f4
B30_1bed:		sbc $80db		; eddb 80
B30_1bf0:		asl $d3			; 06 d3
B30_1bf2:	.db $e7
B30_1bf3:		cpx $00			; e4 00
B30_1bf5:		sbc $e0			; e5 e0
B30_1bf7:	.db $f3
B30_1bf8:		cpx $00			; e4 00
B30_1bfa:	.db $ee $e5 $00
B30_1bfd:		cpy $f4			; c4 f4
B30_1bff:		sbc ($ee), y	; f1 ee
B30_1c01:	.db $ef
B30_1c02:		cpx $80			; e4 80
B30_1c04:		asl $eb			; 06 eb
B30_1c06:		inx				; e8 
B30_1c07:		cpx $f2			; e4 f2
B30_1c09:		.db $00				; 00
B30_1c0a:		inc $e8, x		; f6 e8
B30_1c0c:	.db $f3
B30_1c0d:	.db $e7
B30_1c0e:		.db $00				; 00
B30_1c0f:	.db $d3
B30_1c10:		sbc ($e4), y	; f1 e4
B30_1c12:		sbc $ee, x		; f5 ee
B30_1c14:		sbc ($db), y	; f1 db
B30_1c16:	.db $80
B30_1c17:		.db $81


.ifdef IMPROVED_CONTROLS_TEST

; unused?
A29_1f39:		lda #$01
	sta wEntityHorizSpeed.w

playerState08_exceptGrant:
A29_1f3e:		lda #>(B28_1770-1)		; a9 97
A29_1f40:		pha				; 48 
A29_1f41:		lda #<(B28_1770-1)		; a9 76
A29_1f43:		pha				; 48 

A29_1f44:		jsr B28_175e		; 20 65 97
A29_1f47:		lda wJoy1ButtonsPressed			; a5 2a
A29_1f49:		and #$03		; 29 03
A29_1f4b:		beq A29_1fc0 ; f0 73

A29_1f4d:		lsr a			; 4a
A29_1f4e:		bcc A29_1f5c ; 90 0c

A29_1f50:		ldy #$00		; a0 00
A29_1f52:		ldx #$01		; a2 01
A29_1f54:		stx wEntityHorizSpeed.w		; 8e f2 04
A29_1f57:		bpl A29_1f99 ; 10 40

A29_1f59:		lsr a			; 4a
A29_1f5a:		bcc A29_1faa ; 90 4e

A29_1f5c:		ldy #$01		; a0 01
A29_1f5e:		ldx #$ff		; a2 ff
A29_1f60:		stx wEntityHorizSpeed.w		; 8e f2 04
A29_1f63:		jmp A29_1f99		; 4c 99 bf


func2:
A29_1f66:		lda $4a			; a5 4a
A29_1f68:		beq A29_1f93 ; f0 29

A29_1f6a:		lda wEntityVertSpeed.w		; ad 20 05
A29_1f6d:		bmi A29_1f88 ; 30 19

A29_1f6f:		lda #PS_JUMPING		; a9 08
A29_1f71:		sta wPlayerStateDoubled.w		; 8d 65 05
A29_1f74:		lda $49			; a5 49
A29_1f76:		beq A29_1f8b ; f0 13

A29_1f78:		lda wChrBankSpr_0800			; a5 48
A29_1f7a:		cmp #$02		; c9 02
A29_1f7c:		bne A29_1f8b ; d0 0d

A29_1f7e:		lda #$38		; a9 38
A29_1f80:		sta $05d8		; 8d d8 05
A29_1f83:		lda #$16		; a9 16
A29_1f85:		sta wOamSpecIdxDoubled.w		; 8d 00 04
A29_1f88:		jmp A29_1f93		; 4c 93 bf


A29_1f8b:		lda #$1c		; a9 1c
A29_1f8d:		sta $05d8		; 8d d8 05
A29_1f90:		lda $a6a2, y	; b9 89 a6
A29_1f93:		lda #$08		; a9 08
A29_1f95:		ldy wEntityHorizSpeed.w		; ac f2 04
A29_1f98:		rts				; 60 


A29_1f99:		lda wPlayerStateDoubled.w		; ad 65 05
A29_1f9c:		cmp #$08		; c9 08
A29_1f9e:		bne A29_1faa ; d0 0a

A29_1fa0:		lda wOamSpecIdxDoubled.w		; ad 00 04
A29_1fa3:		cmp #$10		; c9 10
A29_1fa5:		beq A29_1faa ; f0 03

A29_1fa7:		sty wEntityFacingLeft.w		; 8c a8 04

A29_1faa:		lda wJoy1ButtonsPressed			; a5 2a
A29_1fac:		and #$80		; 29 80
A29_1fae:		bne A29_1fbf ; d0 0f

A29_1fb0:		lda wEntityVertSpeed.w		; ad 20 05
A29_1fb3:		bpl A29_1fbf ; 10 0a

A29_1fb5:		lda #$1c		; a9 1c
A29_1fb7:		sta $05d8		; 8d d8 05
A29_1fba:		lda #$00		; a9 00
A29_1fbc:		sta wEntityVertSpeed.w		; 8d 20 05
A29_1fbf:		rts				; 60 


A29_1fc0:		sta wEntityHorizSpeed.w		; 8d f2 04
A29_1fc3:		jmp A29_1faa		; 4c aa bf


playerState1a_11_body:
A29_1fc6:		jsr A29_1f44		; 20 44 bf
A29_1fc9:		jmp B28_179c		; 4c a3 97


playerState12_14_body:
	jsr shuffleSubweapon

A29_1fcc:		lda wJoy1NewButtonsPressed			; a5 28
A29_1fce:		and #PADF_A		; 29 80
A29_1fd0:		beq A29_1fda ; f0 08

A29_1fd2:		lda #PS_JUMP_START		; a9 06
A29_1fd4:		sta wPlayerStateDoubled.w		; 8d 65 05
A29_1fd7:		pla				; 68 
A29_1fd8:		pla				; 68 
A29_1fd9:		rts				; 60 

A29_1fda:		lda wPlayerStateDoubled.w		; ad 65 05
A29_1fdd:		cmp #$14		; c9 14
A29_1fdf:		beq A29_1fe6 ; f0 05

A29_1fe1:		lda wJoy1ButtonsPressed			; a5 2a
A29_1fe3:		and #$40		; 29 40
A29_1fe5:		rts				; 60 


A29_1fe6:		jmp B28_1a2d		; 4c 43 9a

playerState0a_exceptGrant_body:
	jsr screenShake

A29_1fe9:		lda wJoy1ButtonsPressed			; a5 2a
A29_1feb:		lsr a			; 4a
A29_1fec:		bcc A29_1ff3 ; 90 05

; pressing right
A29_1fee:		ldx #$00		; a2 00
A29_1ff0:		stx wEntityFacingLeft.w		; 8e a8 04
A29_1ff3:		lsr a			; 4a
A29_1ff4:		bcc A29_1ffb ; 90 05

A29_1ff6:		ldx #$01		; a2 01
A29_1ff8:		stx wEntityFacingLeft.w		; 8e a8 04
A29_1ffb:		jmp func_1c_0421		; 4c 0c 84
.endif

.ifdef WEAPON_SWAPPING
checkSubweaponIntegrity:
	ldy $3b
	lda wCurrSubweapon.w, y
	beq +
	rts
+
	sta wTrevorNumSubweapons.w, y
	sta wP2NumSubweapons.w, y
	rts

shuffleSubweapon:
; todo - separate shuffle and palette swap funcs
; MID_STAGE_PALETTE_SWAP req start
	lda wJoy1ButtonsPressed
	and #PADF_SELECT
	beq @afterPaletteSwap
	lda wJoy1NewButtonsPressed
	and #PADF_RIGHT
	beq +
	ldx #$02
	jsr setAlteredBGPalettes
	jmp @afterPaletteSwap
+	lda wJoy1NewButtonsPressed
	and #PADF_LEFT
	beq +
	ldx #$01
	jsr setAlteredBGPalettes
	jmp @afterPaletteSwap
+	lda wJoy1NewButtonsPressed
	and #PADF_UP
	beq @afterPaletteSwap
	ldx #$00
	jsr setAlteredBGPalettes
@afterPaletteSwap:
; MID_STAGE_PALETTE_SWAP req end

	lda wJoy1ButtonsPressed
	and #PADF_B
	beq @done
	lda wJoy1NewButtonsPressed
	and #PADF_RIGHT
	bne @selectPressed
@done:
	lda wJoy1NewButtonsPressed
	asl a
	rts
@selectPressed:
	jsr checkSubweaponIntegrity

	lda $3b
	asl a
	asl a
	asl a
	asl a
	tay
	sta wNumWeaponsOffset.w
	lda wTrevorNumSubweapons.w, y
	tax
	beq @done
	dex
	beq @done
; x = num subweapons-1
; find idx of current subweapon
	inx
	ldy $3b
	lda wCurrSubweapon.w, y
	ldy wNumWeaponsOffset.w
	iny
-	cmp wTrevorSubweapons.w, y
	beq +
	iny
	jmp -
+
	sty wCurrSubweaponOffset.w
	cpx wCurrSubweaponOffset.w
	bne +
	ldy wNumWeaponsOffset.w
+	iny
	lda wTrevorSubweapons.w, y
	ldy $3b
	sta wCurrSubweapon.w, y
	jmp @done

shuffleSubweapon_1c_041d:
	jsr shuffleSubweapon
	jmp func_1c_041d

shuffleSubweapon_1c_0421:
	jsr shuffleSubweapon
	jmp func_1c_0421

shuffleSubweapon_1d_1c89:
	jsr shuffleSubweapon
	jmp $bc89
.endif

.ifdef MID_STAGE_PALETTE_SWAP
populate2ndInternalBGPalettes:
	tya
	pha

	ldx #$00
-	lda $07
	beq +
	lda roomGroupInternalPalettes@bgSpecs2.w, y
	jmp ++
+	lda roomGroupInternalPalettes@bgSpecs.w, y
++	sta wBackupInternalBGPalettes.w, x

	sec
	sbc #$10
	bcs +
	clc
	adc #$10
+	sta wDimmerInternalBGPalettes.w, x

	lda $07
	beq +
	lda roomGroupInternalPalettes@bgSpecs2.w, y
	jmp ++
+	lda roomGroupInternalPalettes@bgSpecs.w, y
++	clc
	adc #$10
	cmp #$40
	bcc +
	sec
	sbc #$10
+	sta wBrighterInternalBGPalettes.w, x

	inx
	iny
	cpx #$09
	bne -

	pla
	tay
	
	ldx wVramQueueNextIdxToFill
	lda #$03
	rts

setAlteredBGPalettes:
	bne +
	ldy #$00
	beq @afterY
+	dex
	bne +
	ldy #(wDimmerInternalBGPalettes-wBackupInternalBGPalettes)
	bne @afterY
+	ldy #(wBrighterInternalBGPalettes-wBackupInternalBGPalettes)

@afterY:
	ldx wVramQueueNextIdxToFill
	lda #$01
	sta wVramQueue.w, x
	inx

	lda #$05
	sta wVramQueue.w, x
	inx

	lda #$3f
	sta wVramQueue.w, x
	inx

	lda #$03
	sta $0d

--	lda #03
	sta $0c

-	lda wBackupInternalBGPalettes.w, y
	sta wVramQueue.w, x
	inx
	iny
	dec $0c
	bne -

	lda #$0f
	sta wVramQueue.w, x
	inx

	dec $0d
	bne --

	jmp setVramQueueFillIdxAndTerminate
.endif

.ifdef SCREEN_SHAKE
screenShake:
	lda wJoy1ButtonsPressed
	and #PADF_SELECT
	beq @noShake
	lda wJoy1ButtonsPressed
	and #PADF_DOWN
	beq @noShake

	lda wIsShaking.w
	bne +
	lda wGameplayScrollXWithinRoom
	sta wOrigScreenShakeX.w
	lda #$01
	sta wIsShaking.w

+
	lda wOrigScreenShakeX.w
	sec
	sbc #$03
	bcs +
	lda wRandomVal
	and #$03
	jmp ++
+	lda wRandomVal
	and #$07
++	tay
	lda randomOffsets.w, y
	clc
	adc wOrigScreenShakeX.w
	bcs +
	sta wGameplayScrollXWithinRoom
	lda #SND_RUMBLE
	jsr playSound
+	rts

@noShake:
	lda wOrigScreenShakeX.w
	sta wGameplayScrollXWithinRoom
	lda #$00
	sta wIsShaking.w
	rts

randomOffsets:
	.db $00 $01 $02 $03 $fd $fe $ff

.endif