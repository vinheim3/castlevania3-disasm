
staticLayoutsAddresses:
	.dw $9b43
	.dw $9b33
	.dw $9b33
	.dw $9b58
	.dw staticLayout_internalPaletteDummyWrite ; 04
	.dw $9b87
	.dw $9b25
	.dw $9b2c
	.dw $9b7a
	.dw roomGroupInternalPalettes@staticLayout_baseRoomInternalPalettes ; 09
	.dw staticLayout_trevorInternalPalettes ; 0a
	.dw staticLayout_syphaInternalPalettes ; 0b
	.dw staticLayout_grantInternalPalettes ; 0c
	.dw staticLayout_alucardInternalPalettes ; 0d
	.dw $99b4
	.dw $99fe
	.dw $9a1c
	.dw $9a0d
	.dw $9a2b
	.dw $9bc3
	.dw $9bc3
	.dw $9bd6
	.dw $9be9
	.dw $9bfc
	.dw $9bb0
	.dw $9c11
	.dw $9c24
	.dw $9c37
	.dw $9c4a
	.dw $9c5d
	.dw $9c70
	.dw $9c93
	.dw $9a99
	.dw $9d74
	.dw $9d74
	.dw $9d8f
	.dw $9d74
	.dw $9d74
	.dw $9b4d
	.dw $9b64
	.dw $9b6f
	.dw $07a0
	.dw $9cb6
	.dw $9cc9
	.dw $9cef
	.dw $9cdc
	.dw $9d02
	.dw $9d15
	.dw $9d3b
	.dw $9d28
	.dw data_11_1bef
	.dw data_11_1c16
	.dw data_11_1c31
	.dw data_11_1c50
	.dw data_11_1c84
	.dw data_11_1cb6
	.dw data_11_1cff
	.dw data_15_1ac0 ; 39
	.dw data_15_1aef ; 3a
	.dw data_15_1b0d ; 3b
	.dw data_15_1b29
	.dw data_15_1b4b
	.dw data_15_1b6b ; 3e
	.dw data_15_1b8c
	.dw data_15_1bae
	.dw data_15_1bce
	.dw data_15_1be8
	.dw data_15_1bf7
	.dw data_15_1c10
	.dw data_15_1c2e
	.dw data_15_1c4e ; 46
	.dw $9b13
	.dw $9aac
	.dw $9ae6
	.dw $9a60
	.dw $9a73
	.dw $9a86
	.dw data_15_1c6c ; 4d
	.dw data_15_1c6c
	.dw data_15_1c77 ; 4f
	.dw data_15_1c95
	.dw data_15_1cb0
	.dw data_15_1ccf
	.dw data_15_1cec
	.dw data_15_1dc0 ; 54
	.dw data_15_1d17
	.dw data_15_1d38
	.dw data_15_1d52
	.dw data_15_1d6f
	.dw data_15_1d8e
	.dw data_15_1da6
	.dw data_11_1db1 ; 5b
	.dw data_11_1dd5
	.dw $9a4d
	.dw $9d4e
	.dw $9a3a
	.dw data_15_1b29 ; 60
	.dw data_15_1b4b ; 61
	.dw $9d61
	.dw $bcb6
	.dw $bcff
	.dw data_11_1d2e
	.dw data_11_1d5c
	.dw staticLayout_soundModeBox

B0_19b4:		rti				; 40 


B0_19b5:		jsr $5262		; 20 62 52
B0_19b8:		lsr $5461, x	; 5e 61 54
B0_19bb:		eor $4dfe		; 4d fe 4d
B0_19be:		jsr $5863		; 20 63 58
B0_19c1:	.db $5c
B0_19c2:	.db $54
B0_19c3:		inc $2057, x	; fe 57 20
B0_19c6:		eor ($5b), y	; 51 5b
B0_19c8:	.db $5a
B0_19c9:		.db $00				; 00
B0_19ca:		.db $00				; 00
B0_19cb:		eor $fe41		; 4d 41 fe
B0_19ce:		rts				; 60 


B0_19cf:		jsr $5b5f		; 20 5f 5b
B0_19d2:		bvc B0_1a3c ; 50 68

B0_19d4:	.db $54
B0_19d5:		adc ($fe, x)	; 61 fe
B0_19d7:	.db $80
B0_19d8:		jsr $5d54		; 20 54 5d
B0_19db:	.db $54
B0_19dc:	.db $5c
B0_19dd:		pla				; 68 
B0_19de:		inc $2075, x	; fe 75 20
B0_19e1:		sta ($4c), y	; 91 4c
B0_19e3:		inc $2095, x	; fe 95 20
B0_19e6:	.db $5f
B0_19e7:		jmp $70fe		; 4c fe 70


B0_19ea:		jsr $8180		; 20 80 81
B0_19ed:		sta ($82, x)	; 81 82
B0_19ef:		inc $2090, x	; fe 90 20
B0_19f2:		bcc B0_19f4 ; 90 00

B0_19f4:		.db $00				; 00
B0_19f5:	.db $92
B0_19f6:		inc $20b0, x	; fe b0 20
B0_19f9:		ldy #$a1		; a0 a1
B0_19fb:		lda ($a2, x)	; a1 a2
B0_19fd:	.db $ff
B0_19fe:		adc $8820, x	; 7d 20 88
B0_1a01:	.db $89
B0_1a02:		inc $209d, x	; fe 9d 20
B0_1a05:		tya				; 98 
B0_1a06:		sta $bdfe, y	; 99 fe bd
B0_1a09:		jsr $a9a8		; 20 a8 a9
B0_1a0c:	.db $ff
B0_1a0d:		adc $8a20, x	; 7d 20 8a
B0_1a10:	.db $8b
B0_1a11:		inc $209d, x	; fe 9d 20
B0_1a14:		txs				; 9a 
B0_1a15:	.db $9b
B0_1a16:		inc $20bd, x	; fe bd 20
B0_1a19:		tax				; aa 
B0_1a1a:	.db $ab
B0_1a1b:	.db $ff
B0_1a1c:		adc $8c20, x	; 7d 20 8c
B0_1a1f:		sta $9dfe		; 8d fe 9d
B0_1a22:		jsr $9d9c		; 20 9c 9d
B0_1a25:		inc $20bd, x	; fe bd 20
B0_1a28:		ldy $ffad		; ac ad ff
B0_1a2b:		adc $8e20, x	; 7d 20 8e
B0_1a2e:	.db $8f
B0_1a2f:		inc $209d, x	; fe 9d 20
B0_1a32:	.db $9e
B0_1a33:	.db $9f
B0_1a34:		inc $20bd, x	; fe bd 20
B0_1a37:		ldx $ffaf		; ae af ff



B0_1a3a:		.db $00				; 00
B0_1a3b:	.db $3f
B0_1a3c:	.db $0f
B0_1a3d:		asl $26, x		; 16 26
B0_1a3f:	.db $20 $0f $00
B0_1a42:	.db $04
B0_1a43:		;removed
	.db $10 $0f

B0_1a45:	.db $02
B0_1a46:	.db $14
B0_1a47:	.db $27
B0_1a48:	.db $0f
B0_1a49:	.db $02
B0_1a4a:	.db $04
B0_1a4b:	.db $14
B0_1a4c:	.db $ff
B0_1a4d:		.db $00				; 00
B0_1a4e:	.db $3f
B0_1a4f:	.db $0f
B0_1a50:		asl $26, x		; 16 26
B0_1a52:		jsr $160f		; 20 0f 16
B0_1a55:	.db $27
B0_1a56:		;removed
	.db $10 $0f

B0_1a58:	.db $07
B0_1a59:	.db $0f
B0_1a5a:	.db $0f
B0_1a5b:	.db $0f
B0_1a5c:	.db $07
B0_1a5d:	.db $0f
B0_1a5e:	.db $27
B0_1a5f:	.db $ff
B0_1a60:		.db $00				; 00
B0_1a61:	.db $3f
B0_1a62:	.db $0f
B0_1a63:		asl $26, x		; 16 26
B0_1a65:		jsr $070f		; 20 0f 07
B0_1a68:	.db $17
B0_1a69:	.db $27
B0_1a6a:	.db $0f
B0_1a6b:	.db $07
B0_1a6c:	.db $0f
B0_1a6d:	.db $0f
B0_1a6e:	.db $0f
B0_1a6f:	.db $07
B0_1a70:	.db $0f
B0_1a71:	.db $27
B0_1a72:	.db $ff
B0_1a73:		.db $00				; 00
B0_1a74:	.db $3f
B0_1a75:	.db $0f
B0_1a76:		asl $26, x		; 16 26
B0_1a78:		jsr $070f		; 20 0f 07
B0_1a7b:	.db $27
B0_1a7c:	.db $37
B0_1a7d:	.db $0f
B0_1a7e:	.db $07
B0_1a7f:	.db $0f
B0_1a80:		ora ($0f), y	; 11 0f
B0_1a82:	.db $07
B0_1a83:		ora ($27), y	; 11 27
B0_1a85:	.db $ff
B0_1a86:		.db $00				; 00
B0_1a87:	.db $3f
B0_1a88:	.db $0f
B0_1a89:		asl $26, x		; 16 26
B0_1a8b:		jsr $170f		; 20 0f 17
B0_1a8e:	.db $27
B0_1a8f:	.db $37
B0_1a90:	.db $0f
B0_1a91:	.db $17
B0_1a92:		and ($31, x)	; 21 31
B0_1a94:	.db $0f
B0_1a95:	.db $07
B0_1a96:		and ($37), y	; 31 37
B0_1a98:	.db $ff
B0_1a99:		.db $00				; 00
B0_1a9a:	.db $3f
B0_1a9b:	.db $0f
B0_1a9c:		asl $26, x		; 16 26
B0_1a9e:		jsr $220f		; 20 0f 22
B0_1aa1:	.db $12
B0_1aa2:		jsr $220f		; 20 0f 22
B0_1aa5:	.db $0f
B0_1aa6:	.db $0f
B0_1aa7:	.db $0f
B0_1aa8:	.db $22
B0_1aa9:	.db $0f
B0_1aaa:		jsr $0fff		; 20 ff 0f
B0_1aad:		and $4e			; 25 4e
B0_1aaf:		adc $4f7d, x	; 7d 7d 4f
B0_1ab2:		inc $252e, x	; fe 2e 25
B0_1ab5:		lsr $7878, x	; 5e 78 78
B0_1ab8:		sei				; 78 
B0_1ab9:		sei				; 78 
B0_1aba:	.db $5f
B0_1abb:		inc $254e, x	; fe 4e 25
B0_1abe:		ror $787e		; 6e 7e 78
B0_1ac1:		sei				; 78 
B0_1ac2:	.db $7f
B0_1ac3:	.db $6f
B0_1ac4:		inc $256d, x	; fe 6d 25
B0_1ac7:		rti				; 40 


B0_1ac8:		eor ($42, x)	; 41 42
B0_1aca:	.db $43
B0_1acb:	.db $44
B0_1acc:		eor $46			; 45 46
B0_1ace:	.db $47
B0_1acf:		inc $258d, x	; fe 8d 25
B0_1ad2:		bvc B0_1b25 ; 50 51

B0_1ad4:	.db $52
B0_1ad5:	.db $53
B0_1ad6:	.db $54
B0_1ad7:		eor $56, x		; 55 56
B0_1ad9:	.db $57
B0_1ada:		inc $25ad, x	; fe ad 25
B0_1add:		rts				; 60 


B0_1ade:		adc ($62, x)	; 61 62
B0_1ae0:	.db $63
B0_1ae1:	.db $64
B0_1ae2:		adc $66			; 65 66
B0_1ae4:	.db $67
B0_1ae5:	.db $ff
B0_1ae6:		cmp $7025		; cd 25 70
B0_1ae9:		adc ($72), y	; 71 72
B0_1aeb:	.db $73
B0_1aec:	.db $74
B0_1aed:		adc $76, x		; 75 76
B0_1aef:	.db $77
B0_1af0:		inc $25ee, x	; fe ee 25
B0_1af3:		pha				; 48 
B0_1af4:		eor #$4a		; 49 4a
B0_1af6:	.db $4b
B0_1af7:		jmp $fe4d		; 4c 4d fe


B0_1afa:		asl $5826		; 0e 26 58
B0_1afd:		eor $5b5a, y	; 59 5a 5b
B0_1b00:	.db $5c
B0_1b01:		eor $2efe, x	; 5d fe 2e
B0_1b04:		rol $68			; 26 68
B0_1b06:		adc #$6a		; 69 6a
B0_1b08:	.db $6b
B0_1b09:		jmp ($fe6d)		; 6c 6d fe


B0_1b0c:	.db $4f
B0_1b0d:		rol $79			; 26 79
B0_1b0f:	.db $7a
B0_1b10:	.db $7b
B0_1b11:	.db $7c
B0_1b12:	.db $ff
B0_1b13:	.db $d3
B0_1b14:	.db $27
B0_1b15:		eor $55, x		; 55 55
B0_1b17:		eor $fe, x		; 55 fe
B0_1b19:	.db $db
B0_1b1a:	.db $27
B0_1b1b:		eor $557b, y	; 59 7b 55
B0_1b1e:		inc $27e3, x	; fe e3 27
B0_1b21:		eor $55, x		; 55 55
B0_1b23:		eor $ff, x		; 55 ff
B0_1b25:		asl $4722		; 0e 22 47
B0_1b28:		eor ($4d, x)	; 41 4d
B0_1b2a:		eor $ff			; 45 ff
B0_1b2c:		asl $4422		; 0e 22 44
B0_1b2f:		eor $4d			; 45 4d
B0_1b31:	.db $4f
B0_1b32:	.db $ff


B0_1b33:		dex				; ca 
B0_1b34:	.db $22
B0_1b35:		and ($00, x)	; 21 00
B0_1b37:	.db $5a
B0_1b38:		lsr $505d, x	; 5e 5d 50
B0_1b3b:	.db $5c
B0_1b3c:		cli				; 58 
B0_1b3d:		.db $00				; 00
B0_1b3e:	.db $42
B0_1b3f:		lsr a			; 4a
B0_1b40:		lsr a			; 4a
B0_1b41:		eor ($ff, x)	; 41 ff


B0_1b43:	.db $27
B0_1b44:	.db $23
B0_1b45:		asl $141f, x	; 1e 1f 14
B0_1b48:		ora $1d18, x	; 1d 18 1d
B0_1b4b:		asl $ff, x		; 16 ff
B0_1b4d:	.db $32
B0_1b4e:	.db $23
B0_1b4f:	.db $1f
B0_1b50:		bpl B0_1b74 ; 10 22

B0_1b52:	.db $22
B0_1b53:		rol $1e			; 26 1e
B0_1b55:		and ($13, x)	; 21 13
B0_1b57:	.db $ff
B0_1b58:		cpx $5621		; ec 21 56
B0_1b5b:		bvc B0_1bb9 ; 50 5c

B0_1b5d:	.db $54
B0_1b5e:		.db $00				; 00
B0_1b5f:		lsr $5465, x	; 5e 65 54
B0_1b62:		adc ($ff, x)	; 61 ff
B0_1b64:		sty $5222		; 8c 22 52
B0_1b67:		lsr $635d, x	; 5e 5d 63
B0_1b6a:		cli				; 58 
B0_1b6b:		eor $5464, x	; 5d 64 54
B0_1b6e:	.db $ff
B0_1b6f:		cpx $5f22		; ec 22 5f
B0_1b72:		bvc B0_1bd6 ; 50 62

B0_1b74:	.db $62
B0_1b75:		ror $5e			; 66 5e
B0_1b77:		adc ($53, x)	; 61 53
B0_1b79:	.db $ff
B0_1b7a:		cmp $5622		; cd 22 56
B0_1b7d:		bvc B0_1bdb ; 50 5c

B0_1b7f:	.db $54
B0_1b80:		.db $00				; 00
B0_1b81:	.db $62
B0_1b82:	.db $63
B0_1b83:		bvc B0_1be6 ; 50 61

B0_1b85:	.db $63
B0_1b86:	.db $ff
B0_1b87:		.db $00				; 00
B0_1b88:	.db $3f
B0_1b89:	.db $0f
B0_1b8a:		asl $05, x		; 16 05
B0_1b8c:		jsr $130f		; 20 0f 13
B0_1b8f:	.db $02
B0_1b90:		jsr $140f		; 20 0f 14
B0_1b93:	.db $03
B0_1b94:	.db $3b
B0_1b95:	.db $0f
B0_1b96:		asl $27, x		; 16 27
B0_1b98:		;removed
	.db $10 $0f

B0_1b9a:	.db $0c
B0_1b9b:		rol $30			; 26 30
B0_1b9d:	.db $0f
B0_1b9e:	.db $0c
B0_1b9f:		bit $0f30		; 2c 30 0f
B0_1ba2:	.db $12
B0_1ba3:		rol $30			; 26 30
B0_1ba5:	.db $0f
B0_1ba6:		asl $30			; 06 30
B0_1ba8:		bmi B0_1ba8 ; 30 fe


staticLayout_internalPaletteDummyWrite:
B0_1baa:		.db $00				; 00
B0_1bab:	.db $3f
B0_1bac:	.db $fe $00 $00
B0_1baf:	.db $ff
B0_1bb0:		.db $00				; 00
B0_1bb1:	.db $3f
B0_1bb2:	.db $0f
B0_1bb3:	.db $07
B0_1bb4:	.db $17
B0_1bb5:		jsr $070f		; 20 0f 07
B0_1bb8:	.db $17
B0_1bb9:		jsr $010f		; 20 0f 01
B0_1bbc:		ora #$08		; 09 08
B0_1bbe:	.db $0f
B0_1bbf:		ora ($0b, x)	; 01 0b
B0_1bc1:		;removed
	.db $10 $ff

B0_1bc3:		.db $00				; 00
B0_1bc4:	.db $3f
B0_1bc5:	.db $0f
B0_1bc6:	.db $07
B0_1bc7:	.db $17
B0_1bc8:		jsr $010f		; 20 0f 01
B0_1bcb:	.db $12
B0_1bcc:		jsr $010f		; 20 0f 01
B0_1bcf:		ora #$08		; 09 08
B0_1bd1:	.db $0f
B0_1bd2:		ora ($0b, x)	; 01 0b
B0_1bd4:		;removed
	.db $10 $ff

B0_1bd6:		.db $00				; 00
B0_1bd7:	.db $3f
B0_1bd8:	.db $0f
B0_1bd9:	.db $07
B0_1bda:	.db $17
B0_1bdb:		jsr $010f		; 20 0f 01
B0_1bde:		and ($31, x)	; 21 31
B0_1be0:	.db $0f
B0_1be1:		ora ($08, x)	; 01 08
B0_1be3:		plp				; 28 
B0_1be4:	.db $0f
B0_1be5:		php				; 08 
B0_1be6:		clc				; 18 
B0_1be7:	.db $17
B0_1be8:	.db $ff
B0_1be9:		.db $00				; 00
B0_1bea:	.db $3f
B0_1beb:	.db $0f
B0_1bec:	.db $07
B0_1bed:	.db $17
B0_1bee:		jsr $060f		; 20 0f 06
B0_1bf1:	.db $0b
B0_1bf2:		;removed
	.db $10 $0f

B0_1bf4:		ora ($03, x)	; 01 03
B0_1bf6:		bpl B0_1c07 ; 10 0f

B0_1bf8:		ora ($1b, x)	; 01 1b
B0_1bfa:	.db $3c
B0_1bfb:	.db $ff
B0_1bfc:		bit $3821		; 2c 21 38
B0_1bff:		and $fe3a, y	; 39 3a fe
B0_1c02:		jmp $5521		; 4c 21 55


B0_1c05:		lsr $fe, x		; 56 fe
B0_1c07:		jmp ($7521)		; 6c 21 75


B0_1c0a:		ror $b1, x		; 76 b1
B0_1c0c:		inc $218d, x	; fe 8d 21
B0_1c0f:	.db $87
B0_1c10:	.db $ff
B0_1c11:		.db $00				; 00
B0_1c12:	.db $3f
B0_1c13:	.db $0f
B0_1c14:		asl $26, x		; 16 26
B0_1c16:		jsr $0b0f		; 20 0f 0b
B0_1c19:	.db $1b
B0_1c1a:		ora ($0f, x)	; 01 0f
B0_1c1c:		ora ($11, x)	; 01 11
B0_1c1e:		jsr $310f		; 20 0f 31
B0_1c21:		ora ($21), y	; 11 21
B0_1c23:	.db $ff
B0_1c24:		.db $00				; 00
B0_1c25:	.db $3f
B0_1c26:	.db $0f
B0_1c27:		asl $26, x		; 16 26
B0_1c29:		jsr $0b0f		; 20 0f 0b
B0_1c2c:	.db $1b
B0_1c2d:		ora ($0f, x)	; 01 0f
B0_1c2f:		ora ($11), y	; 11 11
B0_1c31:		and ($0f), y	; 31 0f
B0_1c33:		and ($11), y	; 31 11
B0_1c35:		and ($ff, x)	; 21 ff
B0_1c37:		.db $00				; 00
B0_1c38:	.db $3f
B0_1c39:	.db $0f
B0_1c3a:		asl $26, x		; 16 26
B0_1c3c:		jsr $0b0f		; 20 0f 0b
B0_1c3f:	.db $1b
B0_1c40:		ora ($0f, x)	; 01 0f
B0_1c42:		and ($11, x)	; 21 11
B0_1c44:		and ($0f, x)	; 21 0f
B0_1c46:		and ($11), y	; 31 11
B0_1c48:		and ($ff, x)	; 21 ff
B0_1c4a:		.db $00				; 00
B0_1c4b:	.db $3f
B0_1c4c:	.db $0f
B0_1c4d:		asl $26, x		; 16 26
B0_1c4f:		jsr $0b0f		; 20 0f 0b
B0_1c52:	.db $1b
B0_1c53:		ora ($0f, x)	; 01 0f
B0_1c55:		and ($11), y	; 31 11
B0_1c57:		and ($0f, x)	; 21 0f
B0_1c59:		and ($11), y	; 31 11
B0_1c5b:		and ($ff, x)	; 21 ff
B0_1c5d:		.db $00				; 00
B0_1c5e:	.db $3f
B0_1c5f:	.db $0f
B0_1c60:		asl $16			; 06 16
B0_1c62:		jsr $0f0f		; 20 0f 0f
B0_1c65:		.db $00				; 00
B0_1c66:		asl a			; 0a
B0_1c67:	.db $0f
B0_1c68:	.db $0f
B0_1c69:	.db $0b
B0_1c6a:	.db $2c $0f $00
B0_1c6d:	.db $2b
B0_1c6e:	.db $3c
B0_1c6f:	.db $ff
B0_1c70:		.db $00				; 00
B0_1c71:	.db $3f
B0_1c72:	.db $0f
B0_1c73:		php				; 08 
B0_1c74:		clc				; 18 
B0_1c75:		sec				; 38 
B0_1c76:	.db $0f
B0_1c77:		ora #$0c		; 09 0c
B0_1c79:		bit $090f		; 2c 0f 09
B0_1c7c:		.db $00				; 00
B0_1c7d:		bpl B0_1c8e ; 10 0f

B0_1c7f:		ora #$13		; 09 13
B0_1c81:		bpl B0_1c92 ; 10 0f

B0_1c83:	.db $0f
B0_1c84:		bpl B0_1ca6 ; 10 20

B0_1c86:	.db $0f
B0_1c87:	.db $0f
B0_1c88:		and ($38, x)	; 21 38
B0_1c8a:	.db $0f
B0_1c8b:	.db $0f
B0_1c8c:	.db $0f
B0_1c8d:	.db $0f
B0_1c8e:	.db $0f
B0_1c8f:	.db $0f
B0_1c90:		asl $25, x		; 16 25
B0_1c92:	.db $ff
B0_1c93:		.db $00				; 00
B0_1c94:	.db $3f
B0_1c95:	.db $0f
B0_1c96:		asl $26, x		; 16 26
B0_1c98:	.db $20 $0f $00
B0_1c9b:		bpl B0_1cb7 ; 10 1a

B0_1c9d:	.db $0f
B0_1c9e:		.db $00				; 00
B0_1c9f:	.db $0b
B0_1ca0:		bit $020f		; 2c 0f 02
B0_1ca3:		.db $00				; 00
B0_1ca4:		bpl B0_1cb5 ; 10 0f

B0_1ca6:		php				; 08 
B0_1ca7:		rol $37			; 26 37
B0_1ca9:	.db $0f
B0_1caa:	.db $0f
B0_1cab:	.db $22
B0_1cac:	.db $34
B0_1cad:	.db $0f
B0_1cae:	.db $0f
B0_1caf:	.db $0f
B0_1cb0:	.db $0f
B0_1cb1:	.db $0f
B0_1cb2:	.db $0f
B0_1cb3:		asl $25, x		; 16 25
B0_1cb5:	.db $ff
B0_1cb6:		.db $00				; 00
B0_1cb7:	.db $3f
B0_1cb8:	.db $0f
B0_1cb9:	.db $0f
B0_1cba:		rol $16			; 26 16
B0_1cbc:	.db $0f
B0_1cbd:	.db $0f
B0_1cbe:	.db $07
B0_1cbf:	.db $27
B0_1cc0:	.db $0f
B0_1cc1:	.db $0f
B0_1cc2:	.db $02
B0_1cc3:	.db $23
B0_1cc4:	.db $0f
B0_1cc5:	.db $0f
B0_1cc6:		ora $ff39, y	; 19 39 ff
B0_1cc9:		bpl B0_1d0a ; 10 3f

B0_1ccb:		sec				; 38 
B0_1ccc:		php				; 08 
B0_1ccd:	.db $27
B0_1cce:		sec				; 38 
B0_1ccf:		sec				; 38 
B0_1cd0:	.db $0f
B0_1cd1:	.db $0c
B0_1cd2:	.db $33
B0_1cd3:		sec				; 38 
B0_1cd4:		and ($11, x)	; 21 11
B0_1cd6:		jsr $0838		; 20 38 08
B0_1cd9:		clc				; 18 
B0_1cda:		plp				; 28 
B0_1cdb:	.db $ff
B0_1cdc:		bpl B0_1d1d ; 10 3f

B0_1cde:		sec				; 38 
B0_1cdf:		php				; 08 
B0_1ce0:	.db $27
B0_1ce1:		sec				; 38 
B0_1ce2:		sec				; 38 
B0_1ce3:	.db $0f
B0_1ce4:	.db $0c
B0_1ce5:	.db $33
B0_1ce6:		sec				; 38 
B0_1ce7:	.db $0f
B0_1ce8:		ora $36, x		; 15 36
B0_1cea:		sec				; 38 
B0_1ceb:		php				; 08 
B0_1cec:		clc				; 18 
B0_1ced:		plp				; 28 
B0_1cee:	.db $ff
B0_1cef:		bpl B0_1d30 ; 10 3f

B0_1cf1:		sec				; 38 
B0_1cf2:		php				; 08 
B0_1cf3:	.db $27
B0_1cf4:		sec				; 38 
B0_1cf5:		sec				; 38 
B0_1cf6:	.db $0f
B0_1cf7:	.db $0c
B0_1cf8:	.db $33
B0_1cf9:		sec				; 38 
B0_1cfa:		php				; 08 
B0_1cfb:		ora $38, x		; 15 38
B0_1cfd:		sec				; 38 
B0_1cfe:		php				; 08 
B0_1cff:		clc				; 18 
B0_1d00:		plp				; 28 
B0_1d01:	.db $ff
B0_1d02:		.db $00				; 00
B0_1d03:	.db $3f
B0_1d04:	.db $0f
B0_1d05:	.db $0f
B0_1d06:	.db $0f
B0_1d07:		jsr $0f0f		; 20 0f 0f
B0_1d0a:	.db $0f
B0_1d0b:	.db $0f
B0_1d0c:	.db $0f
B0_1d0d:	.db $0f
B0_1d0e:	.db $0f
B0_1d0f:	.db $0f
B0_1d10:	.db $0f
B0_1d11:	.db $0f
B0_1d12:	.db $0f
B0_1d13:	.db $0f
B0_1d14:	.db $ff
B0_1d15:		bpl B0_1d56 ; 10 3f

B0_1d17:	.db $0f
B0_1d18:		php				; 08 
B0_1d19:	.db $27
B0_1d1a:		sec				; 38 
B0_1d1b:	.db $0f
B0_1d1c:	.db $0f
B0_1d1d:	.db $0c
B0_1d1e:	.db $33
B0_1d1f:	.db $0f
B0_1d20:		and ($11, x)	; 21 11
B0_1d22:		jsr $080f		; 20 0f 08
B0_1d25:		clc				; 18 
B0_1d26:		plp				; 28 
B0_1d27:	.db $ff
B0_1d28:		;removed
	.db $10 $3f

B0_1d2a:	.db $0f
B0_1d2b:		php				; 08 
B0_1d2c:	.db $27
B0_1d2d:		sec				; 38 
B0_1d2e:	.db $0f
B0_1d2f:	.db $0f
B0_1d30:	.db $0c
B0_1d31:	.db $33
B0_1d32:	.db $0f
B0_1d33:	.db $0f
B0_1d34:		ora $36, x		; 15 36
B0_1d36:	.db $0f
B0_1d37:		php				; 08 
B0_1d38:		clc				; 18 
B0_1d39:		plp				; 28 
B0_1d3a:	.db $ff
B0_1d3b:		;removed
	.db $10 $3f

B0_1d3d:	.db $0f
B0_1d3e:		php				; 08 
B0_1d3f:	.db $27
B0_1d40:		sec				; 38 
B0_1d41:	.db $0f
B0_1d42:	.db $0f
B0_1d43:	.db $0c
B0_1d44:	.db $33
B0_1d45:	.db $0f
B0_1d46:		php				; 08 
B0_1d47:		ora $38, x		; 15 38
B0_1d49:	.db $0f
B0_1d4a:		php				; 08 
B0_1d4b:		clc				; 18 
B0_1d4c:		plp				; 28 
B0_1d4d:	.db $ff
B0_1d4e:		.db $00				; 00
B0_1d4f:	.db $3f
B0_1d50:	.db $0f
B0_1d51:		asl $05, x		; 16 05
B0_1d53:		jsr $130f		; 20 0f 13
B0_1d56:	.db $02
B0_1d57:		jsr $140f		; 20 0f 14
B0_1d5a:	.db $03
B0_1d5b:	.db $3b
B0_1d5c:	.db $0f
B0_1d5d:	.db $0f
B0_1d5e:	.db $0f
B0_1d5f:	.db $0f
B0_1d60:	.db $ff
B0_1d61:		.db $00				; 00
B0_1d62:	.db $3f
B0_1d63:	.db $0f
B0_1d64:	.db $0f
B0_1d65:	.db $0f
B0_1d66:	.db $0f
B0_1d67:	.db $0f
B0_1d68:		bpl B0_1d6f ; 10 05

B0_1d6a:		ora ($0f, x)	; 01 0f
B0_1d6c:	.db $0f
B0_1d6d:	.db $0f
B0_1d6e:	.db $0f
B0_1d6f:	.db $0f
B0_1d70:	.db $0f
B0_1d71:	.db $0f
B0_1d72:	.db $0f
B0_1d73:	.db $ff
B0_1d74:		rol a			; 2a
B0_1d75:	.db $22
B0_1d76:		eor $635e, x	; 5d 5e 63
B0_1d79:		.db $00				; 00
B0_1d7a:	.db $52
B0_1d7b:		lsr $5f5c, x	; 5e 5c 5f
B0_1d7e:	.db $5b
B0_1d7f:	.db $54
B0_1d80:	.db $63
B0_1d81:	.db $54
B0_1d82:		inc $224b, x	; fe 4b 22
B0_1d85:	.db $63
B0_1d86:		adc ($68, x)	; 61 68
B0_1d88:		.db $00				; 00
B0_1d89:		.db $50 $56

B0_1d8b:		.db $50 $58

B0_1d8d:		eor $08ff, x	; 5d ff 08
B0_1d90:	.db $22
B0_1d91:		stx $a4			; 86 a4
B0_1d93:		ldy $a4			; a4 a4
B0_1d95:		ldy $a4			; a4 a4
B0_1d97:		ldy $a4			; a4 a4
B0_1d99:		ldy $a4			; a4 a4
B0_1d9b:		ldy $a4			; a4 a4
B0_1d9d:		ldy $a4			; a4 a4
B0_1d9f:		ldy $87			; a4 87
B0_1da1:		inc $2228, x	; fe 28 22
B0_1da4:		stx $00, y		; 96 00
B0_1da6:		.db $00				; 00
B0_1da7:		.db $00				; 00
B0_1da8:		.db $00				; 00
B0_1da9:		.db $00				; 00
B0_1daa:		.db $00				; 00
B0_1dab:		.db $00				; 00
B0_1dac:		.db $00				; 00
B0_1dad:		.db $00				; 00
B0_1dae:		.db $00				; 00
B0_1daf:		.db $00				; 00
B0_1db0:		.db $00				; 00
B0_1db1:		.db $00				; 00
B0_1db2:		.db $00				; 00
B0_1db3:	.db $97
B0_1db4:		inc $2248, x	; fe 48 22
B0_1db7:		stx $00, y		; 96 00
B0_1db9:		.db $00				; 00
B0_1dba:		.db $00				; 00
B0_1dbb:		.db $00				; 00
B0_1dbc:		.db $00				; 00
B0_1dbd:		.db $00				; 00
B0_1dbe:		.db $00				; 00
B0_1dbf:		.db $00				; 00
B0_1dc0:		.db $00				; 00
B0_1dc1:		.db $00				; 00
B0_1dc2:		.db $00				; 00
B0_1dc3:		.db $00				; 00
B0_1dc4:		.db $00				; 00
B0_1dc5:		.db $00				; 00
B0_1dc6:	.db $97
B0_1dc7:		inc $2268, x	; fe 68 22
B0_1dca:		ldx $a5			; a6 a5
B0_1dcc:		lda $a5			; a5 a5
B0_1dce:		lda $a5			; a5 a5
B0_1dd0:		lda $a5			; a5 a5
B0_1dd2:		lda $a5			; a5 a5
B0_1dd4:		lda $a5			; a5 a5
B0_1dd6:		lda $a5			; a5 a5
B0_1dd8:		lda $a7			; a5 a7
B0_1dda:	.db $ff
