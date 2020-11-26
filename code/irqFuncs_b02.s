irqFuncs:
	.dw irqFunc_end
	.dw func_03_00bc
	.dw $a0ef
	.dw $a12f
	.dw $a13c
	.dw $a179
	.dw func_03_0190
	.dw $a1bf
	.dw $a1e8
	.dw $a274
	.dw $a2a1
	.dw $a179
	.dw func_03_0190
	.dw $a21e
	.dw $a24b
	.dw $a2a1
	.dw $a2dc
	.dw $a2f2
	.dw $a2f8
	.dw $a345
	.dw $a39b
	.dw $a3ee
	.dw $a05a
	.dw $a00d
	.dw $a023
	.dw irqFunc_19
	.dw $a3f4
	.dw $a41d
	.dw $a434
	.dw $a458
	.dw $a488
	.dw $a4c8
	.dw $a4e6
	.dw $a488
	.dw $a501
	.dw irqFunc_23
	.dw $a345
	.dw $a39b
	.dw $a3da
	.dw $a3c1
	.dw $a3ee
	.dw $a578
	.dw $a5a0
	.dw $a5d2
	.dw irqFunc_2c
	.dw $a16a

	
B2_1f8d:		dec $0781
B2_1f90:		bne B2_1fb8 ; d0 26

B2_1f92:		lda $7d			; a5 7d
B2_1f94:		and #$0f		; 29 0f
B2_1f96:		asl a			; 0a
B2_1f97:		tay				; a8 
B2_1f98:		lda $9fbd, y	; b9 bd 9f
B2_1f9b:		sta $44			; 85 44
B2_1f9d:		lda $9fbe, y	; b9 be 9f
B2_1fa0:		sta $45			; 85 45
B2_1fa2:		ldy #$00		; a0 00
B2_1fa4:		lda ($44), y	; b1 44
B2_1fa6:		sta $0781		; 8d 81 07
B2_1fa9:		ldy $0780		; ac 80 07
B2_1fac:		iny				; c8 

B2_1fad:		lda ($44), y	; b1 44
B2_1faf:		cmp #$ff		; c9 ff
B2_1fb1:		beq B2_1fb9 ; f0 06

B2_1fb3:		sta wChrBankBG_0400			; 85 4b
B2_1fb5:		sty $0780		; 8c 80 07
B2_1fb8:		rts				; 60 

B2_1fb9:		ldy #$01		; a0 01
B2_1fbb:		bne B2_1fad ; d0 f0


B2_1fbd:		cmp ($9f, x)	; c1 9f
B2_1fbf:		dec $9f			; c6 9f
B2_1fc1:		asl a			; 0a
B2_1fc2:	.db $54
B2_1fc3:		eor $56, x		; 55 56
B2_1fc5:	.db $ff
B2_1fc6:		asl $54			; 06 54
B2_1fc8:		eor $56, x		; 55 56
B2_1fca:	.db $ff


b2_setNametableVerticalMirroring:
	lda #NT_VERTICAL_MIRROR
	sta NAMETABLE_MAPPING.w
	rts


irqFunc_23:
B2_1fd1:		lda #$7f		; a9 7f
B2_1fd3:		sta CHR_BANK_0800.w		; 8d 22 51
B2_1fd6:		jmp irqFunc_end		; 4c 3a e1


irqFunc_19:
B2_1fd9:		lda PPUSTATUS.w		; ad 02 20
B2_1fdc:		ldx $078c		; ae 8c 07
B2_1fdf:		lda $078d		; ad 8d 07
B2_1fe2:		sta PPUADDR.w		; 8d 06 20
B2_1fe5:		stx $2006		; 8e 06 20
B2_1fe8:		lda $078a		; ad 8a 07
B2_1feb:		sta PPUSCROLL.w		; 8d 05 20
B2_1fee:		lda #$00		; a9 00
B2_1ff0:		sta PPUSCROLL.w		; 8d 05 20
B2_1ff3:		lda $078b		; ad 8b 07
B2_1ff6:		sta PPUCTRL.w		; 8d 00 20
B2_1ff9:		ldy #$7c		; a0 7c
B2_1ffb:		sty $4b			; 84 4b
B2_1ffd:		iny				; c8 
		.db $84
		.db $4c
