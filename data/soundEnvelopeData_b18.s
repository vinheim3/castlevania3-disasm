envelopeData1:
	.dw $9ebb
	.dw $9ebd
	.dw $9ec8
	.dw $9ed9
	.dw $9edd
	.dw $9ee2
	.dw $9ee9
	.dw $9ef0
	.dw $9f05
	.dw $9f0e
	.dw $9f15
	.dw $9f20
	.dw $9f30
	.dw $9f3e
	.dw $9f47
	.dw $9f4f
	.dw $9f57
	.dw $9f5d
	.dw $9f63
	.dw $9f69
	.dw $9f6e
	.dw $9f7f
	.dw $9f83
	.dw $9f89
	.dw $9f8d
	.dw $9f93
	.dw $9f98
	.dw $9f9d
	.dw $9fa3
	.dw $9fa8
	.dw $9fad
	.dw $9fb4
	.dw $9fba
	.dw $9fc3
	.dw $9fc7
	.dw $9fcb
	.dw $9fcf
	.dw $9fd5
	.dw $9fdc
	.dw $9fe5
	.dw $9ff9
	.dw $9ffd
	.dw $a004

envelopeData2:
	.dw $a015
	.dw $a024
	.dw $a02f
	.dw $a036
	.dw $a045
	.dw $a050
	.dw $a057
	.dw $a062
	.dw $a06d
	.dw $a074
	.dw $a07b
	.dw $a080
	.dw $a088
	.dw $a094
	.dw $a0a0
	.dw $a0a8
	.dw $a0b3
	.dw $a0bb
	.dw $a0c8
	.dw $a0d3
	.dw $a0da
	.dw $a0e6
	.dw $a0f1
	.dw $a0f9
	.dw $a105
	.dw $a110
	.dw $a11b
	.dw $a128
	.dw $a134
	.dw $a140
	.dw $a147
	.dw $a14f


B24_1ebb:		.db $11
B24_1ebc:	.db $ff
B24_1ebd:		ora $1718, x	; 1d 18 17
B24_1ec0:		asl $15, x		; 16 15
B24_1ec2:	.db $14
B24_1ec3:	.db $13
B24_1ec4:	.db $12
B24_1ec5:		ora ($10), y	; 11 10
B24_1ec7:	.db $ff
B24_1ec8:		clc				; 18 
B24_1ec9:		asl $15, x		; 16 15
B24_1ecb:	.db $14
B24_1ecc:	.db $13
B24_1ecd:	.db $12
B24_1ece:		bpl B24_1ee5 ; 10 15

B24_1ed0:	.db $14
B24_1ed1:	.db $13
B24_1ed2:	.db $12
B24_1ed3:		and ($10, x)	; 21 10
B24_1ed5:	.db $14
B24_1ed6:	.db $13
B24_1ed7:	.db $12
B24_1ed8:	.db $ff
B24_1ed9:	.db $14
B24_1eda:		ora $16, x		; 15 16
B24_1edc:	.db $ff
B24_1edd:		ora ($12), y	; 11 12
B24_1edf:	.db $13
B24_1ee0:	.db $14
B24_1ee1:	.db $ff
B24_1ee2:		and ($32, x)	; 21 32
B24_1ee4:	.db $43
B24_1ee5:	.db $54
B24_1ee6:		adc $76			; 65 76
B24_1ee8:	.db $ff
B24_1ee9:		ora $1718, x	; 1d 18 17
B24_1eec:		asl $15, x		; 16 15
B24_1eee:	.db $14
B24_1eef:	.db $ff
B24_1ef0:	.db $17
B24_1ef1:		asl $15, x		; 16 15
B24_1ef3:	.db $14
B24_1ef4:	.db $13
B24_1ef5:	.db $12
B24_1ef6:		ora ($11), y	; 11 11
B24_1ef8:		bpl B24_1f10 ; 10 16

B24_1efa:	.db $14
B24_1efb:	.db $13
B24_1efc:	.db $12
B24_1efd:		ora ($21), y	; 11 21
B24_1eff:		bpl B24_1f15 ; 10 14

B24_1f01:	.db $13
B24_1f02:		and ($31, x)	; 21 31
B24_1f04:	.db $ff
B24_1f05:		rol a			; 2a
B24_1f06:		asl $29, x		; 16 29
B24_1f08:		asl $18, x		; 16 18
B24_1f0a:	.db $17
B24_1f0b:		asl $15, x		; 16 15
B24_1f0d:	.db $ff
B24_1f0e:		clc				; 18 
B24_1f0f:	.db $37
B24_1f10:		asl $15, x		; 16 15
B24_1f12:	.db $14
B24_1f13:	.db $13
B24_1f14:	.db $ff
B24_1f15:	.db $37
B24_1f16:		lsr $45, x		; 56 45
B24_1f18:	.db $44
B24_1f19:	.db $43
B24_1f1a:	.db $72
B24_1f1b:		ora ($e2), y	; 11 e2
B24_1f1d:	.db $e3
B24_1f1e:		cpx $ff			; e4 ff
B24_1f20:	.db $17
B24_1f21:		asl $15, x		; 16 15
B24_1f23:	.db $f4
B24_1f24:	.db $f3
B24_1f25:	.db $f3
B24_1f26:	.db $f2
B24_1f27:	.db $f2
B24_1f28:	.db $f2
B24_1f29:		ldx #$b3		; a2 b3
B24_1f2b:		ldy $b5, x		; b4 b5
B24_1f2d:		ldx $17, y		; b6 17
B24_1f2f:	.db $ff
B24_1f30:	.db $17
B24_1f31:		asl $15, x		; 16 15
B24_1f33:		cpx $e3			; e4 e3
B24_1f35:	.db $e3
B24_1f36:	.db $e2
B24_1f37:	.db $e2
B24_1f38:	.db $e3
B24_1f39:		cpx $e5			; e4 e5
B24_1f3b:		inc $17			; e6 17
B24_1f3d:	.db $ff
B24_1f3e:		clc				; 18 
B24_1f3f:	.db $47
B24_1f40:		inc $f5, x		; f6 f5
B24_1f42:		cpx $d3			; e4 d3
B24_1f44:	.db $82
B24_1f45:		adc ($ff), y	; 71 ff
B24_1f47:		asl $37, x		; 16 37
B24_1f49:		and $44, x		; 35 44
B24_1f4b:	.db $43
B24_1f4c:	.db $62
B24_1f4d:		adc ($ff), y	; 71 ff
B24_1f4f:		asl $17, x		; 16 17
B24_1f51:		plp				; 28 
B24_1f52:		rol $25			; 26 25
B24_1f54:	.db $14
B24_1f55:	.db $13
B24_1f56:	.db $ff
B24_1f57:		clc				; 18 
B24_1f58:	.db $47
B24_1f59:		lsr $44, x		; 56 44
B24_1f5b:	.db $43
B24_1f5c:	.db $ff
B24_1f5d:		sec				; 38 
B24_1f5e:		rol $34, x		; 36 34
B24_1f60:	.db $23
B24_1f61:		and ($ff, x)	; 21 ff
B24_1f63:		clc				; 18 
B24_1f64:	.db $37
B24_1f65:		rol $15			; 26 15
B24_1f67:	.db $14
B24_1f68:	.db $ff
B24_1f69:		plp				; 28 
B24_1f6a:	.db $37
B24_1f6b:		and $23			; 25 23
B24_1f6d:	.db $ff
B24_1f6e:		clc				; 18 
B24_1f6f:	.db $37
B24_1f70:		ror $65			; 66 65
B24_1f72:	.db $64
B24_1f73:	.db $63
B24_1f74:	.db $52
B24_1f75:	.db $63
B24_1f76:	.db $64
B24_1f77:		adc $76, x		; 75 76
B24_1f79:		adc $74, x		; 75 74
B24_1f7b:	.db $73
B24_1f7c:	.db $72
B24_1f7d:	.db $72
B24_1f7e:	.db $ff
B24_1f7f:	.db $27
B24_1f80:		ora $12, x		; 15 12
B24_1f82:	.db $ff
B24_1f83:		clc				; 18 
B24_1f84:		rol $34			; 26 34
B24_1f86:	.db $23
B24_1f87:		and ($ff, x)	; 21 ff
B24_1f89:	.db $27
B24_1f8a:		and $14			; 25 14
B24_1f8c:	.db $ff
B24_1f8d:		asl $25, x		; 16 25
B24_1f8f:	.db $14
B24_1f90:	.db $13
B24_1f91:	.db $12
B24_1f92:	.db $ff
B24_1f93:		clc				; 18 
B24_1f94:		asl $25, x		; 16 25
B24_1f96:	.db $13
B24_1f97:	.db $ff
B24_1f98:		sec				; 38 
B24_1f99:	.db $27
B24_1f9a:		and $24			; 25 24
B24_1f9c:	.db $ff
B24_1f9d:		asl $27, x		; 16 27
B24_1f9f:		plp				; 28 
B24_1fa0:		asl $14, x		; 16 14
B24_1fa2:	.db $ff
B24_1fa3:		sec				; 38 
B24_1fa4:		rol $34			; 26 34
B24_1fa6:	.db $23
B24_1fa7:	.db $ff
B24_1fa8:		and #$25		; 29 25
B24_1faa:		bit $33			; 24 33
B24_1fac:	.db $ff
B24_1fad:		sec				; 38 
B24_1fae:		asl $14, x		; 16 14
B24_1fb0:	.db $13
B24_1fb1:	.db $12
B24_1fb2:		ora ($ff), y	; 11 ff
B24_1fb4:		asl $37, x		; 16 37
B24_1fb6:		and $33, x		; 35 33
B24_1fb8:	.db $22
B24_1fb9:	.db $ff
B24_1fba:		clc				; 18 
B24_1fbb:	.db $47
B24_1fbc:		inc $f5, x		; f6 f5
B24_1fbe:		cpx $d3			; e4 d3
B24_1fc0:	.db $82
B24_1fc1:		adc ($ff), y	; 71 ff
B24_1fc3:		and $2528, y	; 39 28 25
B24_1fc6:	.db $ff
B24_1fc7:		clc				; 18 
B24_1fc8:		and $24			; 25 24
B24_1fca:	.db $ff
B24_1fcb:	.db $14
B24_1fcc:		and $36			; 25 36
B24_1fce:	.db $ff
B24_1fcf:		eor #$48		; 49 48
B24_1fd1:	.db $47
B24_1fd2:		rol $25, x		; 36 25
B24_1fd4:	.db $ff
B24_1fd5:	.db $14
B24_1fd6:		ora $2528, y	; 19 28 25
B24_1fd9:		rol $14			; 26 14
B24_1fdb:	.db $ff
B24_1fdc:	.db $23
B24_1fdd:		ora $3728, y	; 19 28 37
B24_1fe0:		and $34, x		; 35 34
B24_1fe2:	.db $23
B24_1fe3:	.db $22
B24_1fe4:	.db $ff
B24_1fe5:		bit $75			; 24 75
B24_1fe7:		stx $77			; 86 77
B24_1fe9:		tya				; 98 
B24_1fea:		and #$98		; 29 98
B24_1fec:		tya				; 98 
B24_1fed:	.db $97
B24_1fee:	.db $27
B24_1fef:		stx $76			; 86 76
B24_1ff1:		sta $75			; 85 75
B24_1ff3:	.db $44
B24_1ff4:		sty $33			; 84 33
B24_1ff6:	.db $32
B24_1ff7:		and ($ff, x)	; 21 ff
B24_1ff9:		bit $25			; 24 25
B24_1ffb:		rol $ff, x		; 36 ff
B24_1ffd:		asl $18, x		; 16 18
		.db $17
