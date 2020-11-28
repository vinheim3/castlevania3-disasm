
data_11_1bef:
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


data_11_1c16:
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


data_11_1c31:
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


data_11_1c50:
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
B17_1c82:		.db $cc $ff


data_11_1c84:
.db $a1
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


data_11_1cb6:
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
B17_1cfd:		.db $ce $ff 


data_11_1cff:
.db $a1
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
B17_1d2c:		.db $ce $ff


data_11_1d2e:
B17_1d2e:       .db $71
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


data_11_1d5c:
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


data_11_1db1:
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


data_11_1dd5:
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
