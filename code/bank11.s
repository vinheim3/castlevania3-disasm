
B17_1bef:		lda ($25), y	; b1 25
B17_1bf1:		cmp $c0, x		; d5 c0
B17_1bf3:		cpy $c8cf		; cc cf c8
B17_1bf6:		cmp ($c4), y	; d1 c4
B17_1bf8:		inc $25d6, x	; fe d6 25
B17_1bfb:	.db $c7
B17_1bfc:	.db $d4
B17_1bfd:		cmp $c4d3		; cd d3 c4
B17_1c00:		cmp ($f8), y	; d1 f8
B17_1c02:		inc $2651, x	; fe 51 26
B17_1c05:	.db $d2
B17_1c06:		cld				; d8 
B17_1c07:		cmp $c0			; c5 c0
B17_1c09:		inc $2674, x	; fe 74 26
B17_1c0c:		cmp $c4, x		; d5 c4
B17_1c0e:	.db $cb
B17_1c0f:		cmp $ccd4		; cd d4 cc
B17_1c12:	.db $c3
B17_1c13:		cpy $d2			; c4 d2
B17_1c15:	.db $ff
B17_1c16:		lda ($25, x)	; a1 25
B17_1c18:		cpy #$c2		; c0 c2
B17_1c1a:		cmp ($ce), y	; d1 ce
B17_1c1c:		cmp ($c0, x)	; c1 c0
B17_1c1e:	.db $d3
B17_1c1f:		sed				; f8 
B17_1c20:		inc $2641, x	; fe 41 26
B17_1c23:		dec $d1			; c6 d1
B17_1c25:		cpy #$cd		; c0 cd
B17_1c27:	.db $d3
B17_1c28:		.db $00				; 00
B17_1c29:	.db $c3
B17_1c2a:		cpy #$cd		; c0 cd
B17_1c2c:	.db $d4
B17_1c2d:	.db $d2
B17_1c2e:	.db $d3
B17_1c2f:		cld				; d8 
B17_1c30:	.db $ff
B17_1c31:		lda ($25), y	; b1 25
B17_1c33:		inc $c0, x		; f6 c0
B17_1c35:	.db $cb
B17_1c36:	.db $d4
B17_1c37:	.db $c2
B17_1c38:		cpy #$d1		; c0 d1
B17_1c3a:	.db $c3
B17_1c3b:	.db $f7
B17_1c3c:		inc $2651, x	; fe 51 26
B17_1c3f:		cpy #$c3		; c0 c3
B17_1c41:		cmp ($c8), y	; d1 c8
B17_1c43:		cpy #$cd		; c0 cd
B17_1c45:		inc $2675, x	; fe 75 26
B17_1c48:		cmp $f9			; c5 f9
B17_1c4a:	.db $d3
B17_1c4b:		cpy $cf			; c4 cf
B17_1c4d:		cpy $d2			; c4 d2
B17_1c4f:	.db $ff
B17_1c50:		adc ($25, x)	; 61 25
B17_1c52:	.db $cf
B17_1c53:		cmp ($ce), y	; d1 ce
B17_1c55:	.db $c3
B17_1c56:	.db $d4
B17_1c57:	.db $c2
B17_1c58:		cpy $c3			; c4 c3
B17_1c5a:		.db $00				; 00
B17_1c5b:		cmp ($d8, x)	; c1 d8
B17_1c5d:		inc $25a3, x	; fe a3 25
B17_1c60:		dex				; ca 
B17_1c61:		dec $c0cd		; ce cd c0
B17_1c64:		cpy $fec8		; cc c8 fe
B17_1c67:		sbc ($25, x)	; e1 25
B17_1c69:		inc $c3, x		; f6 c3
B17_1c6b:		cmp ($c0), y	; d1 c0
B17_1c6d:	.db $c2
B17_1c6e:	.db $d4
B17_1c6f:	.db $cb
B17_1c70:		cpy #$e4		; c0 e4
B17_1c72:		sbc $f7			; e5 f7
B17_1c74:		inc $2621, x	; fe 21 26
B17_1c77:	.db $cf
B17_1c78:		cmp ($ce), y	; d1 ce
B17_1c7a:		cmp #$c4		; c9 c4
B17_1c7c:	.db $c2
B17_1c7d:	.db $d3
B17_1c7e:		.db $00				; 00
B17_1c7f:	.db $d3
B17_1c80:		cpy $c0			; c4 c0
B17_1c82:		cpy $a1ff		; cc ff a1
B17_1c85:		and $c0			; 25 c0
B17_1c87:	.db $cd $c3 $00
B17_1c8a:	.db $d2
B17_1c8b:	.db $d3
B17_1c8c:		cpy #$d1		; c0 d1
B17_1c8e:		cmp ($c8), y	; d1 c8
B17_1c90:		cmp $f8c6		; cd c6 f8
B17_1c93:		inc $25e1, x	; fe e1 25
B17_1c96:	.db $d3
B17_1c97:		cmp ($c4), y	; d1 c4
B17_1c99:		cmp $ce, x		; d5 ce
B17_1c9b:		cmp ($fe), y	; d1 fe
B17_1c9d:		ora $26			; 05 26
B17_1c9f:	.db $c2
B17_1ca0:		sbc $c4c1, y	; f9 c1 c4
B17_1ca3:	.db $cb
B17_1ca4:		cpy $cdce		; cc ce cd
B17_1ca7:	.db $d3
B17_1ca8:		inc $26a1, x	; fe a1 26
B17_1cab:		inc $00, x		; f6 00
B17_1cad:		.db $00				; 00
B17_1cae:		.db $00				; 00
B17_1caf:		.db $00				; 00
B17_1cb0:		.db $00				; 00
B17_1cb1:		.db $00				; 00
B17_1cb2:		.db $00				; 00
B17_1cb3:		.db $00				; 00
B17_1cb4:	.db $f7
B17_1cb5:	.db $ff
B17_1cb6:		eor ($25), y	; 51 25
B17_1cb8:	.db $cf
B17_1cb9:	.db $df
B17_1cba:	.db $fb
B17_1cbb:		nop				; ea 
B17_1cbc:	.db $df
B17_1cbd:	.db $eb
B17_1cbe:		cpx $deec		; ec ec de
B17_1cc1:	.db $df
B17_1cc2:		sed				; f8 
B17_1cc3:		inc $2592, x	; fe 92 25
B17_1cc6:	.db $c7
B17_1cc7:		sbc $cac0, y	; f9 c0 ca
B17_1cca:		cpy #$cc		; c0 cc
B17_1ccc:		cpy #$d3		; c0 d3
B17_1cce:	.db $d2
B17_1ccf:	.db $d4
B17_1cd0:		inc $25d2, x	; fe d2 25
B17_1cd3:		cld				; d8 
B17_1cd4:		sbc $cace, y	; f9 ce ca
B17_1cd7:	.db $d4
B17_1cd8:	.db $c3
B17_1cd9:		cpy #$fe		; c0 fe
B17_1cdb:		and ($26), y	; 31 26
B17_1cdd:	.db $c2
B17_1cde:	.db $ef
B17_1cdf:	.db $eb
B17_1ce0:	.db $df
B17_1ce1:	.db $eb
B17_1ce2:	.db $dc
B17_1ce3:		cmp $dfde, x	; dd de df
B17_1ce6:		sed				; f8 
B17_1ce7:		inc $2672, x	; fe 72 26
B17_1cea:		iny				; c8 
B17_1ceb:		sbc $d1d4, y	; f9 d4 d1
B17_1cee:		cpy #$d3		; c0 d3
B17_1cf0:		cpy #$fe		; c0 fe
B17_1cf2:	.db $b2
B17_1cf3:		rol $d3			; 26 d3
B17_1cf5:		sbc $d4c5, y	; f9 c5 d4
B17_1cf8:		cmp #$c8		; c9 c8
B17_1cfa:		cpy $d3ce		; cc ce d3
B17_1cfd:		dec $a1ff		; ce ff a1
B17_1d00:		and $d2			; 25 d2
B17_1d02:	.db $fb
B17_1d03:	.db $fc
B17_1d04:		sbc $f8e7, x	; fd e7 f8
B17_1d07:		inc $25e2, x	; fe e2 25
B17_1d0a:		cld				; d8 
B17_1d0b:		sbc $c0d2, y	; f9 d2 c0
B17_1d0e:	.db $d2
B17_1d0f:		cpy #$ca		; c0 ca
B17_1d11:		iny				; c8 
B17_1d12:		inc $2622, x	; fe 22 26
B17_1d15:		cmp #$f9		; c9 f9
B17_1d17:		cmp $d4			; c5 d4
B17_1d19:		cmp $c7c0		; cd c0 c7
B17_1d1c:		cpy #$d2		; c0 d2
B17_1d1e:	.db $c7
B17_1d1f:		iny				; c8 
B17_1d20:		inc $2662, x	; fe 62 26
B17_1d23:		cld				; d8 
B17_1d24:		sbc $cecc, y	; f9 cc ce
B17_1d27:		cmp ($c8), y	; d1 c8
B17_1d29:		cpy $d3ce		; cc ce d3
B17_1d2c:		dec $71ff		; ce ff 71
B17_1d2f:		and $cf			; 25 cf
B17_1d31:		inc $fdeb		; ee eb fd
B17_1d34:		sbc $dfde, x	; fd de df
B17_1d37:		sed				; f8 
B17_1d38:		inc $25b2, x	; fe b2 25
B17_1d3b:		iny				; c8 
B17_1d3c:		sbc $d1d4, y	; f9 d4 d1
B17_1d3f:		cpy #$d3		; c0 d3
B17_1d41:		cpy #$fe		; c0 fe
B17_1d43:		ora ($26), y	; 11 26
B17_1d45:	.db $c3
B17_1d46:		sbc $dedf		; eddf de
B17_1d49:	.db $dc
B17_1d4a:		cmp $dffb, x	; dd fb df
B17_1d4d:		sed				; f8 
B17_1d4e:		inc $2652, x	; fe 52 26
B17_1d51:	.db $c7
B17_1d52:		sbc $cac0, y	; f9 c0 ca
B17_1d55:		cpy #$cc		; c0 cc
B17_1d57:		cpy #$d3		; c0 d3
B17_1d59:	.db $d2
B17_1d5a:	.db $d4
B17_1d5b:	.db $ff
B17_1d5c:		eor ($25, x)	; 41 25
B17_1d5e:	.db $d2
B17_1d5f:	.db $f4
B17_1d60:		dec $eddc, x	; de dc ed
B17_1d63:	.db $eb
B17_1d64:		inc $64fe		; ee fe 64
B17_1d67:		and $dd			; 25 dd
B17_1d69:	.db $ef
B17_1d6a:	.db $eb
B17_1d6b:		sbc $e6f5, x	; fd f5 e6
B17_1d6e:		.db $00				; 00
B17_1d6f:		cmp $f8fb, x	; dd fb f8
B17_1d72:		inc $25a2, x	; fe a2 25
B17_1d75:	.db $c7
B17_1d76:		sbc $c0cc, y	; f9 cc c0
B17_1d79:		cpy $d9			; c4 d9
B17_1d7b:		cpy #$d6		; c0 d6
B17_1d7d:		cpy #$fe		; c0 fe
B17_1d7f:	.db $e2
B17_1d80:		and $cc			; 25 cc
B17_1d82:		sbc $c0d3, y	; f9 d3 c0
B17_1d85:		dex				; ca 
B17_1d86:		cpy $cc			; c4 cc
B17_1d88:		dec $ced3		; ce d3 ce
B17_1d8b:		inc $2622, x	; fe 22 26
B17_1d8e:	.db $d2
B17_1d8f:		sbc $c8ca, y	; f9 ca c8
B17_1d92:	.db $d3
B17_1d93:		cpy #$cc		; c0 cc
B17_1d95:		dec $ced3		; ce d3 ce
B17_1d98:		inc $2662, x	; fe 62 26
B17_1d9b:		cmp $d3f9		; cd f9 d3
B17_1d9e:		dec $c0c6		; ce c6 c0
B17_1da1:		dex				; ca 
B17_1da2:	.db $d4
B17_1da3:	.db $d2
B17_1da4:	.db $c7
B17_1da5:		iny				; c8 
B17_1da6:		inc $26a2, x	; fe a2 26
B17_1da9:		dex				; ca 
B17_1daa:		sbc $c6ce, y	; f9 ce c6
B17_1dad:		cpy #$d6		; c0 d6
B17_1daf:		cpy #$ff		; c0 ff
B17_1db1:		lsr $25			; 46 25
B17_1db3:	.db $d3
B17_1db4:	.db $c7
B17_1db5:		cpy #$cd		; c0 cd
B17_1db7:		dex				; ca 
B17_1db8:		.db $00				; 00
B17_1db9:		cld				; d8 
B17_1dba:	.db $ce $d4 $00
B17_1dbd:		cmp $c4, x		; d5 c4
B17_1dbf:		cmp ($d8), y	; d1 d8
B17_1dc1:		.db $00				; 00
B17_1dc2:		cpy $c2d4		; cc d4 c2
B17_1dc5:	.db $c7
B17_1dc6:		inc $25ca, x	; fe ca 25
B17_1dc9:		cmp $ce			; c5 ce
B17_1dcb:		cmp ($00), y	; d1 00
B17_1dcd:	.db $cf
B17_1dce:	.db $cb
B17_1dcf:		cpy #$d8		; c0 d8
B17_1dd1:		iny				; c8 
B17_1dd2:		cmp $ffc6		; cd c6 ff
B17_1dd5:		lsr a			; 4a
B17_1dd6:		and $cf			; 25 cf
B17_1dd8:		cmp ($c4), y	; d1 c4
B17_1dda:	.db $d2
B17_1ddb:		cpy $cd			; c4 cd
B17_1ddd:	.db $d3
B17_1dde:		cpy $c3			; c4 c3
B17_1de0:		.db $00				; 00
B17_1de1:		cmp ($d8, x)	; c1 d8
B17_1de3:		inc $25af, x	; fe af 25
B17_1de6:		sty $8e8d		; 8c 8d 8e
B17_1de9:		inc $25cf, x	; fe cf 25
B17_1dec:	.db $9c
B17_1ded:		sta $fe9e, x	; 9d 9e fe
B17_1df0:		sbc $a925		; ed25 a9
B17_1df3:		tax				; aa 
B17_1df4:	.db $ab
B17_1df5:		ldy $a5a4		; ac a4 a5
B17_1df8:		inc $260d, x	; fe 0d 26
B17_1dfb:		lda $97ba, y	; b9 ba 97
B17_1dfe:	.db $b3
B17_1dff:		ldy $b5, x		; b4 b5
B17_1e01:		inc $262e, x	; fe 2e 26
B17_1e04:		ldx $a7			; a6 a7
B17_1e06:		tay				; a8 
B17_1e07:		inc $264e, x	; fe 4e 26
B17_1e0a:		ldx $b7, y		; b6 b7
B17_1e0c:		clv				; b8 
B17_1e0d:		inc $266d, x	; fe 6d 26
B17_1e10:		bcc B17_1da3 ; 90 91

B17_1e12:		ldy #$a1		; a0 a1
B17_1e14:		ldx #$a3		; a2 a3
B17_1e16:		inc $27db, x	; fe db 27
B17_1e19:		eor $55, x		; 55 55
B17_1e1b:		inc $27e3, x	; fe e3 27
B17_1e1e:		eor $55, x		; 55 55
B17_1e20:	.db $ff
B17_1e21:		lda $054e, x	; bd 4e 05
B17_1e24:		asl a			; 0a
B17_1e25:		asl a			; 0a
B17_1e26:		tay				; a8 
B17_1e27:		lda $be4c, y	; b9 4c be
B17_1e2a:		sta $0454, x	; 9d 54 04
B17_1e2d:		lda $be49, y	; b9 49 be
B17_1e30:		sta $0470, x	; 9d 70 04
B17_1e33:		lda $be4a, y	; b9 4a be
B17_1e36:		sta $01			; 85 01
B17_1e38:		lda $be4b, y	; b9 4b be
B17_1e3b:		ldy $01			; a4 01
B17_1e3d:		jsr func_1f_0f5c		; 20 5c ef
B17_1e40:		lda #$80		; a9 80
B17_1e42:		ora $05ef, x	; 1d ef 05
B17_1e45:		sta $05ef, x	; 9d ef 05
B17_1e48:		rts				; 60 


B17_1e49:		rti				; 40 


B17_1e4a:		.db $00				; 00
B17_1e4b:		asl a			; 0a
B17_1e4c:		.db $00				; 00
B17_1e4d:		rti				; 40 


B17_1e4e:		.db $00				; 00
B17_1e4f:		asl a			; 0a
B17_1e50:		.db $00				; 00
B17_1e51:		rti				; 40 


B17_1e52:		.db $00				; 00
B17_1e53:		asl a			; 0a
B17_1e54:		.db $00				; 00
B17_1e55:		rti				; 40 


B17_1e56:	.db $12
B17_1e57:		asl a			; 0a
B17_1e58:		.db $00				; 00
B17_1e59:		rti				; 40 


B17_1e5a:		jsr $010a		; 20 0a 01
B17_1e5d:		rti				; 40 


B17_1e5e:		.db $00				; 00
B17_1e5f:		asl a			; 0a
B17_1e60:		.db $00				; 00
B17_1e61:		rti				; 40 


B17_1e62:		.db $00				; 00
B17_1e63:		asl a			; 0a
B17_1e64:		.db $00				; 00
B17_1e65:		rti				; 40 


B17_1e66:		eor #$0a		; 49 0a
B17_1e68:		.db $00				; 00
B17_1e69:		rti				; 40 


B17_1e6a:		.db $00				; 00
B17_1e6b:		asl a			; 0a
B17_1e6c:		.db $00				; 00
B17_1e6d:		rti				; 40 


B17_1e6e:		.db $00				; 00
B17_1e6f:		asl a			; 0a
B17_1e70:		.db $00				; 00
B17_1e71:		rti				; 40 


B17_1e72:		.db $00				; 00
B17_1e73:		asl a			; 0a
B17_1e74:		.db $00				; 00
B17_1e75:		rti				; 40 


B17_1e76:		.db $00				; 00
B17_1e77:		asl a			; 0a
B17_1e78:		.db $00				; 00
B17_1e79:		rti				; 40 


B17_1e7a:		.db $00				; 00
B17_1e7b:		asl a			; 0a
B17_1e7c:		.db $00				; 00
B17_1e7d:		rti				; 40 


B17_1e7e:		.db $00				; 00
B17_1e7f:		asl a			; 0a
B17_1e80:		.db $00				; 00
B17_1e81:		rti				; 40 


B17_1e82:		.db $00				; 00
B17_1e83:		asl a			; 0a
B17_1e84:		.db $00				; 00
B17_1e85:		rti				; 40 


B17_1e86:		.db $00				; 00
B17_1e87:		asl a			; 0a
B17_1e88:		.db $00				; 00
B17_1e89:		rti				; 40 


B17_1e8a:		.db $00				; 00
B17_1e8b:		asl a			; 0a
B17_1e8c:		.db $00				; 00
B17_1e8d:		rti				; 40 


B17_1e8e:		ora $0a			; 05 0a
B17_1e90:		.db $00				; 00
B17_1e91:		iny				; c8 
B17_1e92:		asl a			; 0a
B17_1e93:		asl a			; 0a
B17_1e94:		.db $00				; 00
B17_1e95:		iny				; c8 
B17_1e96:	.db $0c
B17_1e97:		asl a			; 0a
B17_1e98:		.db $00				; 00
B17_1e99:		rti				; 40 


B17_1e9a:	.db $17
B17_1e9b:		asl a			; 0a
B17_1e9c:		.db $00				; 00
B17_1e9d:		rti				; 40 


B17_1e9e:		asl $0a, x		; 16 0a
B17_1ea0:		.db $00				; 00
B17_1ea1:		rti				; 40 


B17_1ea2:	.db $0b
B17_1ea3:		asl $4000		; 0e 00 40
B17_1ea6:		and $0a			; 25 0a
B17_1ea8:		.db $00				; 00
B17_1ea9:		rti				; 40 


B17_1eaa:	.db $02
B17_1eab:		bpl B17_1ead ; 10 00

B17_1ead:		rti				; 40 


B17_1eae:	.db $02
B17_1eaf:		bpl B17_1eb1 ; 10 00

B17_1eb1:		rti				; 40 


B17_1eb2:		php				; 08 
B17_1eb3:		asl $4000		; 0e 00 40
B17_1eb6:	.db $0e $10 $00
B17_1eb9:		.db $00				; 00
B17_1eba:	.db $43
B17_1ebb:		asl a			; 0a
B17_1ebc:		.db $00				; 00
B17_1ebd:		rti				; 40 


B17_1ebe:		and ($10, x)	; 21 10
B17_1ec0:		.db $00				; 00
B17_1ec1:		rti				; 40 


B17_1ec2:	.db $22
B17_1ec3:		bpl B17_1ec5 ; 10 00

B17_1ec5:		iny				; c8 
B17_1ec6:		.db $00				; 00
B17_1ec7:		bpl B17_1ec9 ; 10 00

B17_1ec9:		iny				; c8 
B17_1eca:		.db $00				; 00
B17_1ecb:		bpl B17_1ecd ; 10 00

B17_1ecd:		iny				; c8 
B17_1ece:		.db $00				; 00
B17_1ecf:		bpl B17_1ed1 ; 10 00

B17_1ed1:		iny				; c8 
B17_1ed2:		.db $00				; 00
B17_1ed3:		bpl B17_1ed5 ; 10 00

B17_1ed5:		rti				; 40 


B17_1ed6:	.db $14
B17_1ed7:		asl $a900		; 0e 00 a9
B17_1eda:		.db $00				; 00
B17_1edb:		sta $0657, x	; 9d 57 06
B17_1ede:		sta $04f2, x	; 9d f2 04
B17_1ee1:		sta $0509, x	; 9d 09 05
B17_1ee4:		lda $05c1, x	; bd c1 05
B17_1ee7:		cmp #$01		; c9 01
B17_1ee9:		bne B17_1efa ; d0 0f

B17_1eeb:		lda #$00		; a9 00
B17_1eed:		ldy #$08		; a0 08
B17_1eef:		jsr $fc1e		; 20 1e fc
B17_1ef2:		beq B17_1efa ; f0 06

B17_1ef4:		jsr func_1f_1ec8		; 20 c8 fe
B17_1ef7:		inc $05c1, x	; fe c1 05
B17_1efa:		lda $05ef, x	; bd ef 05
B17_1efd:		and #$7f		; 29 7f
B17_1eff:		cmp #$63		; c9 63
B17_1f01:		bne B17_1f0b ; d0 08

B17_1f03:		lda $05c1, x	; bd c1 05
B17_1f06:		cmp #$02		; c9 02
B17_1f08:		bcs B17_1f0b ; b0 01

B17_1f0a:		rts				; 60 


B17_1f0b:		lda $041c		; ad 1c 04
B17_1f0e:		sec				; 38 
B17_1f0f:		sbc $041c, x	; fd 1c 04
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
B17_1f29:		lda $32			; a5 32
B17_1f2b:		cmp #$0e		; c9 0e
B17_1f2d:		bne B17_1f33 ; d0 04

B17_1f2f:		lda #$64		; a9 64
B17_1f31:		bne B17_1f35 ; d0 02

B17_1f33:		lda #$63		; a9 63
B17_1f35:		jsr playSound		; 20 5f e2
B17_1f38:		lda #$00		; a9 00
B17_1f3a:		sta $c1			; 85 c1
B17_1f3c:		sta $054e, x	; 9d 4e 05
B17_1f3f:		sta $0470, x	; 9d 70 04
B17_1f42:		sta $0400, x	; 9d 00 04
B17_1f45:		ldy #$07		; a0 07
B17_1f47:		lda #$00		; a9 00
B17_1f49:		sta $07ec, y	; 99 ec 07
B17_1f4c:		dey				; 88 
B17_1f4d:		bne B17_1f49 ; d0 fa

B17_1f4f:		sta $07ec		; 8d ec 07
B17_1f52:		lda #$11		; a9 11
B17_1f54:		sta $2a			; 85 2a
B17_1f56:		rts				; 60 


B17_1f57:		rts				; 60 


B17_1f58:		lda #$00		; a9 00
B17_1f5a:		sta $17			; 85 17
B17_1f5c:		lda $0438		; ad 38 04
B17_1f5f:		sec				; 38 
B17_1f60:		sbc $0438, x	; fd 38 04
B17_1f63:		sta $00			; 85 00
B17_1f65:		bcs B17_1f74 ; b0 0d

B17_1f67:		lda #$01		; a9 01
B17_1f69:		sta $17			; 85 17
B17_1f6b:		lda $00			; a5 00
B17_1f6d:		eor #$ff		; 49 ff
B17_1f6f:		clc				; 18 
B17_1f70:		adc #$01		; 69 01
B17_1f72:		sta $00			; 85 00
B17_1f74:		lda $041c		; ad 1c 04
B17_1f77:		sec				; 38 
B17_1f78:		sbc $041c, x	; fd 1c 04
B17_1f7b:		bcs B17_1f82 ; b0 05

B17_1f7d:		eor #$ff		; 49 ff
B17_1f7f:		clc				; 18 
B17_1f80:		adc #$01		; 69 01
B17_1f82:		cmp #$28		; c9 28
B17_1f84:		bcc B17_1f92 ; 90 0c

B17_1f86:		lda $054e, x	; bd 4e 05
B17_1f89:		cmp #$01		; c9 01
B17_1f8b:		bne B17_1f92 ; d0 05

B17_1f8d:		lda $04a8, x	; bd a8 04
B17_1f90:		sta $17			; 85 17
B17_1f92:		rts				; 60 
