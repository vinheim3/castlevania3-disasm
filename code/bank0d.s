
B13_1df5:		ora $1d1e, x	; 1d 1e 1d
B13_1df8:	.db $0f
B13_1df9:	.db $0c
B13_1dfa:	.db $0f
B13_1dfb:	.db $0c
B13_1dfc:	.db $0f
B13_1dfd:	.db $0c
B13_1dfe:	.db $0f
B13_1dff:	.db $52
B13_1e00:		;removed
	.db $50 $52

B13_1e02:		eor ($52), y	; 51 52
B13_1e04:		;removed
	.db $50 $52

B13_1e06:		eor ($52), y	; 51 52
B13_1e08:		bvc B13_1e5c ; 50 52

B13_1e0a:		eor ($52), y	; 51 52
B13_1e0c:		bvc B13_1e60 ; 50 52

B13_1e0e:		eor ($52), y	; 51 52
B13_1e10:		;removed
	.db $50 $52

B13_1e12:		eor ($52), y	; 51 52
B13_1e14:	.db $52
B13_1e15:	.db $04
B13_1e16:		ora #$1b		; 09 1b
B13_1e18:		ora $0b			; 05 0b
B13_1e1a:		eor $0546		; 4d 46 05
B13_1e1d:		ora $47			; 05 47
B13_1e1f:	.db $4b
B13_1e20:	.db $0b


func_0d_1e21:
B13_1e21:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B13_1e24:		ldy $9e			; a4 9e
B13_1e26:		lda $054e, y	; b9 4e 05
B13_1e29:		tay				; a8 
B13_1e2a:		lda $be82, y	; b9 82 be
B13_1e2d:		bne B13_1e31 ; d0 02

B13_1e2f:		clc				; 18 
B13_1e30:		rts				; 60 

B13_1e31:		lda #$01		; a9 01
B13_1e33:		sta wEntityFacingLeft.w, x	; 9d a8 04
B13_1e36:		lda wEntityState.w, x	; bd 70 04
B13_1e39:		ora #$20		; 09 20
B13_1e3b:		sta wEntityState.w, x	; 9d 70 04
B13_1e3e:		ldy $9e			; a4 9e
B13_1e40:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, y	; b9 06 06
B13_1e43:		and #$f0		; 29 f0
B13_1e45:		sta $00			; 85 00
B13_1e47:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, y	; b9 06 06
B13_1e4a:		and #$0f		; 29 0f
B13_1e4c:		clc				; 18 
B13_1e4d:		adc #$01		; 69 01
B13_1e4f:		cmp #$04		; c9 04
B13_1e51:		bcc B13_1e55 ; 90 02

B13_1e53:		lda #$04		; a9 04
B13_1e55:		ora $00			; 05 00
B13_1e57:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B13_1e5a:		and #$0f		; 29 0f
B13_1e5c:		cmp #$01		; c9 01
B13_1e5e:		beq B13_1e2f ; f0 cf

B13_1e60:		asl a			; 0a
B13_1e61:		tay				; a8 
B13_1e62:		lda $be75, y	; b9 75 be
B13_1e65:		sta $054e, x	; 9d 4e 05
B13_1e68:		lda $be76, y	; b9 76 be
B13_1e6b:		sta wEntityAI_idx.w, x	; 9d ef 05
B13_1e6e:		lda #$04		; a9 04
B13_1e70:		sta wEntityPhase.w, x	; 9d c1 05
B13_1e73:		sec				; 38 
B13_1e74:		rts				; 60 


B13_1e75:	.db $a3
B13_1e76:	.db $43
B13_1e77:		ldy $44			; a4 44
B13_1e79:		lda $45			; a5 45
B13_1e7b:		ldx $46			; a6 46
B13_1e7d:	.db $a7
B13_1e7e:	.db $47
B13_1e7f:		tay				; a8 
B13_1e80:		pha				; 48 
B13_1e81:	.db $ff
B13_1e82:		.db $00				; 00
B13_1e83:		ora ($01, x)	; 01 01
B13_1e85:		ora ($01, x)	; 01 01
B13_1e87:		ora ($00, x)	; 01 00
B13_1e89:		.db $00				; 00
B13_1e8a:		.db $00				; 00
B13_1e8b:		ora ($00, x)	; 01 00
B13_1e8d:		.db $00				; 00
B13_1e8e:		lda #$00		; a9 00
B13_1e90:		sta $00			; 85 00
B13_1e92:		lda $04			; a5 04
B13_1e94:		sec				; 38 
B13_1e95:		sbc wEntityBaseX.w, x	; fd 38 04
B13_1e98:		bcs B13_1ea7 ; b0 0d

B13_1e9a:		sta $01			; 85 01
B13_1e9c:		lda #$01		; a9 01
B13_1e9e:		sta $00			; 85 00
B13_1ea0:		lda $01			; a5 01
B13_1ea2:		eor #$ff		; 49 ff
B13_1ea4:		clc				; 18 
B13_1ea5:		adc #$01		; 69 01
B13_1ea7:		lsr a			; 4a
B13_1ea8:		lsr a			; 4a
B13_1ea9:		lsr a			; 4a
B13_1eaa:		lsr a			; 4a
B13_1eab:		sta $01			; 85 01
B13_1ead:		lda $05			; a5 05
B13_1eaf:		sec				; 38 
B13_1eb0:		sbc wEntityBaseY.w, x	; fd 1c 04
B13_1eb3:		bcs B13_1ec4 ; b0 0f

B13_1eb5:		sta $0a			; 85 0a
B13_1eb7:		lda $00			; a5 00
B13_1eb9:		ora #$02		; 09 02
B13_1ebb:		sta $00			; 85 00
B13_1ebd:		lda $0a			; a5 0a
B13_1ebf:		eor #$ff		; 49 ff
B13_1ec1:		clc				; 18 
B13_1ec2:		adc #$01		; 69 01
B13_1ec4:		and #$f0		; 29 f0
B13_1ec6:		clc				; 18 
B13_1ec7:		adc $01			; 65 01
B13_1ec9:		tay				; a8 
B13_1eca:		lda $beea, y	; b9 ea be
B13_1ecd:		sta $01			; 85 01
B13_1ecf:		ldy $00			; a4 00
B13_1ed1:		lda $bfea, y	; b9 ea bf
B13_1ed4:		sta $00			; 85 00
B13_1ed6:		lda $bfee, y	; b9 ee bf
B13_1ed9:		beq B13_1ee2 ; f0 07

B13_1edb:		lda #$08		; a9 08
B13_1edd:		sec				; 38 
B13_1ede:		sbc $01			; e5 01
B13_1ee0:		sta $01			; 85 01
B13_1ee2:		lda $00			; a5 00
B13_1ee4:		clc				; 18 
B13_1ee5:		adc $01			; 65 01
B13_1ee7:		sta $00			; 85 00
B13_1ee9:		rts				; 60 


B13_1eea:	.db $04
B13_1eeb:		php				; 08 
B13_1eec:		php				; 08 
B13_1eed:		php				; 08 
B13_1eee:		php				; 08 
B13_1eef:		php				; 08 
B13_1ef0:		php				; 08 
B13_1ef1:		php				; 08 
B13_1ef2:		php				; 08 
B13_1ef3:		php				; 08 
B13_1ef4:		php				; 08 
B13_1ef5:		php				; 08 
B13_1ef6:		php				; 08 
B13_1ef7:		php				; 08 
B13_1ef8:		php				; 08 
B13_1ef9:		php				; 08 
B13_1efa:		.db $00				; 00
B13_1efb:	.db $04
B13_1efc:		asl $06			; 06 06
B13_1efe:	.db $07
B13_1eff:	.db $07
B13_1f00:	.db $07
B13_1f01:	.db $07
B13_1f02:	.db $07
B13_1f03:	.db $07
B13_1f04:	.db $07
B13_1f05:		php				; 08 
B13_1f06:		php				; 08 
B13_1f07:		php				; 08 
B13_1f08:		php				; 08 
B13_1f09:		php				; 08 
B13_1f0a:		.db $00				; 00
B13_1f0b:	.db $02
B13_1f0c:	.db $04
B13_1f0d:		ora $06			; 05 06
B13_1f0f:		asl $06			; 06 06
B13_1f11:	.db $07
B13_1f12:	.db $07
B13_1f13:	.db $07
B13_1f14:	.db $07
B13_1f15:	.db $07
B13_1f16:	.db $07
B13_1f17:	.db $07
B13_1f18:	.db $07
B13_1f19:	.db $07
B13_1f1a:		.db $00				; 00
B13_1f1b:	.db $02
B13_1f1c:	.db $03
B13_1f1d:	.db $04
B13_1f1e:		ora $05			; 05 05
B13_1f20:		asl $06			; 06 06
B13_1f22:		asl $06			; 06 06
B13_1f24:	.db $07
B13_1f25:	.db $07
B13_1f26:	.db $07
B13_1f27:	.db $07
B13_1f28:	.db $07
B13_1f29:	.db $07
B13_1f2a:		.db $00				; 00
B13_1f2b:		ora ($02, x)	; 01 02
B13_1f2d:	.db $03
B13_1f2e:	.db $04
B13_1f2f:		ora $05			; 05 05
B13_1f31:		ora $06			; 05 06
B13_1f33:		asl $06			; 06 06
B13_1f35:		asl $06			; 06 06
B13_1f37:		asl $07			; 06 07
B13_1f39:	.db $07
B13_1f3a:		.db $00				; 00
B13_1f3b:		ora ($02, x)	; 01 02
B13_1f3d:	.db $03
B13_1f3e:	.db $03
B13_1f3f:	.db $04
B13_1f40:	.db $04
B13_1f41:		ora $05			; 05 05
B13_1f43:		ora $06			; 05 06
B13_1f45:		asl $06			; 06 06
B13_1f47:		asl $06			; 06 06
B13_1f49:		asl $00			; 06 00
B13_1f4b:		ora ($02, x)	; 01 02
B13_1f4d:	.db $02
B13_1f4e:	.db $03
B13_1f4f:	.db $04
B13_1f50:	.db $04
B13_1f51:	.db $04
B13_1f52:		ora $05			; 05 05
B13_1f54:		ora $05			; 05 05
B13_1f56:		asl $06			; 06 06
B13_1f58:		asl $06			; 06 06
B13_1f5a:		.db $00				; 00
B13_1f5b:		ora ($01, x)	; 01 01
B13_1f5d:	.db $02
B13_1f5e:	.db $03
B13_1f5f:	.db $03
B13_1f60:	.db $04
B13_1f61:	.db $04
B13_1f62:	.db $04
B13_1f63:		ora $05			; 05 05
B13_1f65:		ora $05			; 05 05
B13_1f67:		ora $06			; 05 06
B13_1f69:		asl $00			; 06 00
B13_1f6b:		ora ($01, x)	; 01 01
B13_1f6d:	.db $02
B13_1f6e:	.db $02
B13_1f6f:	.db $03
B13_1f70:	.db $03
B13_1f71:	.db $04
B13_1f72:	.db $04
B13_1f73:	.db $04
B13_1f74:		ora $05			; 05 05
B13_1f76:		ora $05			; 05 05
B13_1f78:		ora $06			; 05 06
B13_1f7a:		.db $00				; 00
B13_1f7b:		ora ($01, x)	; 01 01
B13_1f7d:	.db $02
B13_1f7e:	.db $02
B13_1f7f:	.db $03
B13_1f80:	.db $03
B13_1f81:	.db $03
B13_1f82:	.db $04
B13_1f83:	.db $04
B13_1f84:	.db $04
B13_1f85:		ora $05			; 05 05
B13_1f87:		ora $05			; 05 05
B13_1f89:		ora $00			; 05 00
B13_1f8b:		ora ($01, x)	; 01 01
B13_1f8d:		ora ($02, x)	; 01 02
B13_1f8f:	.db $02
B13_1f90:	.db $03
B13_1f91:	.db $03
B13_1f92:	.db $03
B13_1f93:	.db $04
B13_1f94:	.db $04
B13_1f95:	.db $04
B13_1f96:	.db $04
B13_1f97:		ora $05			; 05 05
B13_1f99:		ora $00			; 05 00
B13_1f9b:		.db $00				; 00
B13_1f9c:		ora ($01, x)	; 01 01
B13_1f9e:	.db $02
B13_1f9f:	.db $02
B13_1fa0:	.db $03
B13_1fa1:	.db $03
B13_1fa2:	.db $03
B13_1fa3:	.db $03
B13_1fa4:	.db $04
B13_1fa5:	.db $04
B13_1fa6:	.db $04
B13_1fa7:	.db $04
B13_1fa8:		ora $05			; 05 05
B13_1faa:		.db $00				; 00
B13_1fab:		.db $00				; 00
B13_1fac:		ora ($01, x)	; 01 01
B13_1fae:	.db $02
B13_1faf:	.db $02
B13_1fb0:	.db $02
B13_1fb1:	.db $03
B13_1fb2:	.db $03
B13_1fb3:	.db $03
B13_1fb4:	.db $04
B13_1fb5:	.db $04
B13_1fb6:	.db $04
B13_1fb7:	.db $04
B13_1fb8:	.db $04
B13_1fb9:		ora $00			; 05 00
B13_1fbb:		.db $00				; 00
B13_1fbc:		ora ($01, x)	; 01 01
B13_1fbe:	.db $02
B13_1fbf:	.db $02
B13_1fc0:	.db $02
B13_1fc1:	.db $03
B13_1fc2:	.db $03
B13_1fc3:	.db $03
B13_1fc4:	.db $03
B13_1fc5:	.db $04
B13_1fc6:	.db $04
B13_1fc7:	.db $04
B13_1fc8:	.db $04
B13_1fc9:	.db $04
B13_1fca:		.db $00				; 00
B13_1fcb:		.db $00				; 00
B13_1fcc:		ora ($01, x)	; 01 01
B13_1fce:		ora ($02, x)	; 01 02
B13_1fd0:	.db $02
B13_1fd1:	.db $02
B13_1fd2:	.db $03
B13_1fd3:	.db $03
B13_1fd4:	.db $03
B13_1fd5:	.db $03
B13_1fd6:	.db $04
B13_1fd7:	.db $04
B13_1fd8:	.db $04
B13_1fd9:	.db $04
B13_1fda:		.db $00				; 00
B13_1fdb:		.db $00				; 00
B13_1fdc:		ora ($01, x)	; 01 01
B13_1fde:		ora ($02, x)	; 01 02
B13_1fe0:	.db $02
B13_1fe1:	.db $02
B13_1fe2:	.db $02
B13_1fe3:	.db $03
B13_1fe4:	.db $03
B13_1fe5:	.db $03
B13_1fe6:	.db $03
B13_1fe7:	.db $04
B13_1fe8:	.db $04
B13_1fe9:	.db $04
B13_1fea:		php				; 08 
B13_1feb:		bpl B13_1fed ; 10 00

B13_1fed:		clc				; 18 
B13_1fee:		ora ($00, x)	; 01 00
B13_1ff0:		.db $00				; 00
B13_1ff1:		.db $01