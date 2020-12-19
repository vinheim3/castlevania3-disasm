; called as part of the IRQ vector, indexed wIRQFuncIdx
irqFuncs:
	.dw irqFunc_end
	.dw irqFunc_01
	.dw irqFunc_02
	.dw irqFunc_03
	.dw irqFunc_04
	.dw irqFunc_05
	.dw irqFunc_06
	.dw irqFunc_07
	.dw irqFunc_08
	.dw irqFunc_09
	.dw irqFunc_0a
	.dw irqFunc_0b
	.dw irqFunc_0c
	.dw irqFunc_0d
	.dw irqFunc_0e
	.dw irqFunc_0f
	.dw irqFunc_10
	.dw irqFunc_11
	.dw irqFunc_12
	.dw irqFunc_13
	.dw irqFunc_14
	.dw irqFunc_15
	.dw irqFunc_16
	.dw irqFunc_17
	.dw irqFunc_18
	.dw irqFunc_19
	.dw irqFunc_1a
	.dw irqFunc_1b
	.dw irqFunc_1c
	.dw irqFunc_1d
	.dw irqFunc_1e
	.dw irqFunc_1f
	.dw irqFunc_20
	.dw irqFunc_21
	.dw irqFunc_22
	.dw irqFunc_23
	.dw irqFunc_24
	.dw irqFunc_25
	.dw irqFunc_26
	.dw irqFunc_27
	.dw irqFunc_28
	.dw irqFunc_29
	.dw irqFunc_2a
	.dw irqFunc_2b
	.dw irqFunc_2c
	.dw irqFunc_2d

	
func_02_1f8d:
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
B2_1fe5:		stx PPUADDR.w		; 8e 06 20
B2_1fe8:		lda $078a		; ad 8a 07
B2_1feb:		sta PPUSCROLL.w		; 8d 05 20
B2_1fee:		lda #$00		; a9 00
B2_1ff0:		sta PPUSCROLL.w		; 8d 05 20
B2_1ff3:		lda $078b		; ad 8b 07
B2_1ff6:		sta PPUCTRL.w		; 8d 00 20
B2_1ff9:		ldy #$7c		; a0 7c
B2_1ffb:		sty wChrBankBG_0400			; 84 4b
B2_1ffd:		iny				; c8 
	sty wChrBankBG_0800

; cont