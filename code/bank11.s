
func_11_1e21:
B17_1e21:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B17_1e24:		asl a			; 0a
B17_1e25:		asl a			; 0a
B17_1e26:		tay				; a8 
B17_1e27:		lda data_11_1e49.w+3, y	; b9 4c be
B17_1e2a:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B17_1e2d:		lda data_11_1e49.w, y	; b9 49 be
B17_1e30:		sta wEntityState.w, x	; 9d 70 04
B17_1e33:		lda data_11_1e49.w+1, y	; b9 4a be
B17_1e36:		sta $01			; 85 01
B17_1e38:		lda data_11_1e49.w+2, y	; b9 4b be
B17_1e3b:		ldy $01			; a4 01
B17_1e3d:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B17_1e40:		lda #$80		; a9 80
B17_1e42:		ora wEntityAI_idx.w, x	; 1d ef 05
B17_1e45:		sta wEntityAI_idx.w, x	; 9d ef 05
B17_1e48:		rts				; 60 

; entity state - animation def idx - spec group - palette override
data_11_1e49:
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $12 $0a $00
	.db $40 $20 $0a $01
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $49 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $00 $0a $00
	.db $40 $05 $0a $00
	.db $c8 $0a $0a $00
	.db $c8 $0c $0a $00
	.db $40 $17 $0a $00
	.db $40 $16 $0a $00
	.db $40 $0b $0e $00
	.db $40 $25 $0a $00
	.db $40 $02 $10 $00
	.db $40 $02 $10 $00
	.db $40 $08 $0e $00
	.db $40 $0e $10 $00
	.db $00 $43 $0a $00
	.db $40 $21 $10 $00
	.db $40 $22 $10 $00
	.db $c8 $00 $10 $00
	.db $c8 $00 $10 $00
	.db $c8 $00 $10 $00
	.db $c8 $00 $10 $00
	.db $40 $14 $0e $00


B17_1ed9:		lda #$00		; a9
B17_1edb:		sta $0657, x	; 9d 57 06
B17_1ede:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B17_1ee1:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B17_1ee4:		lda wEntityPhase.w, x	; bd c1 05
B17_1ee7:		cmp #$01		; c9 01
B17_1ee9:		bne B17_1efa ; d0 0f

B17_1eeb:		lda #$00		; a9 00
B17_1eed:		ldy #$08		; a0 08
B17_1eef:		jsr func_1f_1c1e		; 20 1e fc
B17_1ef2:		beq B17_1efa ; f0 06

B17_1ef4:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B17_1ef7:		inc wEntityPhase.w, x	; fe c1 05
B17_1efa:		lda wEntityAI_idx.w, x	; bd ef 05
B17_1efd:		and #$7f		; 29 7f
B17_1eff:		cmp #$63		; c9 63
B17_1f01:		bne B17_1f0b ; d0 08

B17_1f03:		lda wEntityPhase.w, x	; bd c1 05
B17_1f06:		cmp #$02		; c9 02
B17_1f08:		bcs B17_1f0b ; b0 01

B17_1f0a:		rts				; 60 


B17_1f0b:		lda wEntityBaseY.w		; ad 1c 04
B17_1f0e:		sec				; 38 
B17_1f0f:		sbc wEntityBaseY.w, x	; fd 1c 04
B17_1f12:		bcs B17_1f19 ; b0 05

B17_1f14:		eor #$ff		; 49 ff
B17_1f16:		clc				; 18 
B17_1f17:		adc #$01		; 69 01
B17_1f19:		cmp #$10		; c9 10
B17_1f1b:		bcs B17_1f57 ; b0 3a

B17_1f1d:		jsr $bf58		; 20 58 bf
B17_1f20:		lda $00			; a5 00
B17_1f22:		cmp #$08		; c9 08
B17_1f24:		bcs B17_1f57 ; b0 31

B17_1f26:		jsr set_2c_to_01h		; 20 ce e5
B17_1f29:		lda wCurrRoomGroup		; a5 32
B17_1f2b:		cmp #$0e		; c9 0e
B17_1f2d:		bne B17_1f33 ; d0 04

B17_1f2f:		lda #$64		; a9 64
B17_1f31:		bne B17_1f35 ; d0 02

B17_1f33:		lda #$63		; a9 63
B17_1f35:		jsr playSound		; 20 5f e2
B17_1f38:		lda #$00		; a9 00
B17_1f3a:		sta $c1			; 85 c1
B17_1f3c:		sta wEntityObjectIdxes.w, x	; 9d 4e 05
B17_1f3f:		sta wEntityState.w, x	; 9d 70 04
B17_1f42:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B17_1f45:		ldy #$07		; a0 07
B17_1f47:		lda #$00		; a9 00
B17_1f49:		sta $07ec, y	; 99 ec 07
B17_1f4c:		dey				; 88 
B17_1f4d:		bne B17_1f49 ; d0 fa

B17_1f4f:		sta $07ec		; 8d ec 07
B17_1f52:		lda #$11		; a9 11
B17_1f54:		sta wInGameSubstate			; 85 2a
B17_1f56:		rts				; 60 


B17_1f57:		rts				; 60 


B17_1f58:		lda #$00		; a9 00
B17_1f5a:		sta $17			; 85 17
B17_1f5c:		lda wEntityBaseX.w		; ad 38 04
B17_1f5f:		sec				; 38 
B17_1f60:		sbc wEntityBaseX.w, x	; fd 38 04
B17_1f63:		sta $00			; 85 00
B17_1f65:		bcs B17_1f74 ; b0 0d

B17_1f67:		lda #$01		; a9 01
B17_1f69:		sta $17			; 85 17
B17_1f6b:		lda $00			; a5 00
B17_1f6d:		eor #$ff		; 49 ff
B17_1f6f:		clc				; 18 
B17_1f70:		adc #$01		; 69 01
B17_1f72:		sta $00			; 85 00
B17_1f74:		lda wEntityBaseY.w		; ad 1c 04
B17_1f77:		sec				; 38 
B17_1f78:		sbc wEntityBaseY.w, x	; fd 1c 04
B17_1f7b:		bcs B17_1f82 ; b0 05

B17_1f7d:		eor #$ff		; 49 ff
B17_1f7f:		clc				; 18 
B17_1f80:		adc #$01		; 69 01
B17_1f82:		cmp #$28		; c9 28
B17_1f84:		bcc B17_1f92 ; 90 0c

B17_1f86:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B17_1f89:		cmp #$01		; c9 01
B17_1f8b:		bne B17_1f92 ; d0 05

B17_1f8d:		lda wEntityFacingLeft.w, x	; bd a8 04
B17_1f90:		sta $17			; 85 17
B17_1f92:		rts				; 60 
