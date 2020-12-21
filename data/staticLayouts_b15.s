
largeLayout24:
	.dw $2bc0
	.db $0a $ff
	.db $82 $3f $cf
	.db $06 $ff
	.db $84 $13 $44 $99 $aa
	.db $04 $ff
	.db $84 $55 $22 $88 $55
	.db $04 $ff
	.db $84 $55 $22 $88 $55
	.db $04 $ff
	.db $82 $f5 $f5
	.db $0c $ff
	.db $08 $0f
	.db $ff


data_15_1ac0:
B21_1ac0:	.db $d3
B21_1ac1:		sbc ($e4), y	; f1 e4
B21_1ac3:		sbc $ee, x		; f5 ee
B21_1ac5:		sbc ($00), y	; f1 00
B21_1ac7:		cpx $e3e0		; ec e0 e3
B21_1aca:		cpx $00			; e4 00
B21_1acc:		cpx $ede0		; ec e0 ed
B21_1acf:		sed				; f8 
B21_1ad0:		inc $e0f2, x	; fe f2 e0
B21_1ad3:	.db $e2
B21_1ad4:		sbc ($e8), y	; f1 e8
B21_1ad6:		sbc $e8			; e5 e8
B21_1ad8:	.db $e2
B21_1ad9:		cpx $f2			; e4 f2
B21_1adb:	.db $db
B21_1adc:		.db $00				; 00
B21_1add:	.db $d3
B21_1ade:	.db $e7
B21_1adf:		cpx $fe			; e4 fe
B21_1ae1:	.db $eb
B21_1ae2:		inc $e6ed		; ee ed e6
B21_1ae5:		.db $00				; 00
B21_1ae6:		sbc $e8			; e5 e8
B21_1ae8:		inc $e7			; e6 e7
B21_1aea:	.db $f3
B21_1aeb:		.db $00				; 00
B21_1aec:		inx				; e8 
B21_1aed:	.db $f2
B21_1aee:	.db $ff


data_15_1aef:
B21_1aef:		inc $e4f5		; ee f5 e4
B21_1af2:		sbc ($db), y	; f1 db
B21_1af4:		.db $00				; 00
B21_1af5:	.db $c3
B21_1af6:		sbc ($e0), y	; f1 e0
B21_1af8:	.db $e2
B21_1af9:	.db $f4
B21_1afa:	.db $eb
B21_1afb:		cpx #$00		; e0 00
B21_1afd:		inx				; e8 
B21_1afe:	.db $f2
B21_1aff:		inc $e4e3, x	; fe e3 e4
B21_1b02:		cpx #$e3		; e0 e3
B21_1b04:		.db $00				; 00
B21_1b05:		cpx #$ed		; e0 ed
B21_1b07:	.db $e3
B21_1b08:		.db $00				; 00
B21_1b09:		cpx #$eb		; e0 eb
B21_1b0b:	.db $eb
B21_1b0c:	.db $ff


data_15_1b0d:
B21_1b0d:		inc $e7f3		; ee f3 e7
B21_1b10:		cpx $f1			; e4 f1
B21_1b12:		.db $00				; 00
B21_1b13:	.db $f2
B21_1b14:	.db $ef
B21_1b15:		inx				; e8 
B21_1b16:		sbc ($e8), y	; f1 e8
B21_1b18:	.db $f3
B21_1b19:	.db $f2
B21_1b1a:		inc $f1e0, x	; fe e0 f1
B21_1b1d:		cpx $00			; e4 00
B21_1b1f:		cpx #$f2		; e0 f2
B21_1b21:	.db $eb
B21_1b22:		cpx $e4			; e4 e4
B21_1b24:	.db $ef
B21_1b25:	.db $db
B21_1b26:		inc $ff00, x	; fe 00 ff


data_15_1b29:
B21_1b29:		cpy #$e5		; c0 e5
B21_1b2b:	.db $f3
B21_1b2c:		cpx $f1			; e4 f1
B21_1b2e:		.db $00				; 00
B21_1b2f:	.db $f3
B21_1b30:	.db $e7
B21_1b31:		inx				; e8 
B21_1b32:	.db $f2
B21_1b33:		.db $00				; 00
B21_1b34:		sbc $e8			; e5 e8
B21_1b36:		inc $e7			; e6 e7
B21_1b38:	.db $f3
B21_1b39:		inc $e7f3, x	; fe f3 e7
B21_1b3c:		cpx $00			; e4 00
B21_1b3e:		cmp ($e4, x)	; c1 e4
B21_1b40:	.db $eb
B21_1b41:		cpx $edee		; ec ee ed
B21_1b44:	.db $f3
B21_1b45:		.db $00				; 00
B21_1b46:		sbc $ece0		; ede0 ec
B21_1b49:		cpx $ff			; e4 ff


data_15_1b4b:
B21_1b4b:	.db $f2
B21_1b4c:	.db $e7
B21_1b4d:		cpx #$eb		; e0 eb
B21_1b4f:	.db $eb
B21_1b50:		.db $00				; 00
B21_1b51:		sbc ($e4, x)	; e1 e4
B21_1b53:		.db $00				; 00
B21_1b54:	.db $e7
B21_1b55:		inc $eeed		; ee ed ee
B21_1b58:		sbc ($e4), y	; f1 e4
B21_1b5a:	.db $e3
B21_1b5b:		inc $f8e1, x	; fe e1 f8
B21_1b5e:		.db $00				; 00
B21_1b5f:		cpx #$eb		; e0 eb
B21_1b61:	.db $eb
B21_1b62:		.db $00				; 00
B21_1b63:	.db $ef
B21_1b64:		cpx $ee			; e4 ee
B21_1b66:	.db $ef
B21_1b67:	.db $eb
B21_1b68:		cpx $db			; e4 db
B21_1b6a:	.db $ff


data_15_1b6b:
B21_1b6b:		iny				; c8 
B21_1b6c:		sbc $f300		; ed00 f3
B21_1b6f:	.db $e7
B21_1b70:		cpx $00			; e4 00
B21_1b72:	.db $f2
B21_1b73:	.db $e7
B21_1b74:		cpx #$e3		; e0 e3
B21_1b76:		inc $f2f6		; ee f6 f2
B21_1b79:	.db $dc
B21_1b7a:	.db $fe $e0 $00
B21_1b7d:	.db $ef
B21_1b7e:		cpx $f1			; e4 f1
B21_1b80:	.db $f2
B21_1b81:	.db $ee $ed $00
B21_1b84:		inc $e0, x		; f6 e0
B21_1b86:	.db $f3
B21_1b87:	.db $e2
B21_1b88:	.db $e7
B21_1b89:		cpx $f2			; e4 f2
B21_1b8b:	.db $ff


data_15_1b8c:
B21_1b8c:	.db $f3
B21_1b8d:	.db $e7
B21_1b8e:		cpx $00			; e4 00
B21_1b90:	.db $e2
B21_1b91:		cpx #$f2		; e0 f2
B21_1b93:	.db $f3
B21_1b94:	.db $eb
B21_1b95:		cpx $00			; e4 00
B21_1b97:		sbc $e0			; e5 e0
B21_1b99:	.db $eb
B21_1b9a:	.db $eb
B21_1b9b:	.db $db
B21_1b9c:		inc $fe00, x	; fe 00 fe
B21_1b9f:	.db $d3
B21_1ba0:		sbc ($e4), y	; f1 e4
B21_1ba2:		sbc $ee, x		; f5 ee
B21_1ba4:		sbc ($00), y	; f1 00
B21_1ba6:		cpx $f2f4		; ec f4 f2
B21_1ba9:	.db $f3
B21_1baa:		.db $00				; 00
B21_1bab:		inc $ee			; e6 ee
B21_1bad:	.db $ff


data_15_1bae:
B21_1bae:		sbc $ee			; e5 ee
B21_1bb0:		sbc ($00), y	; f1 00
B21_1bb2:		sbc $f6ee		; edee f6
B21_1bb5:		.db $00				; 00
B21_1bb6:		sbc ($f4, x)	; e1 f4
B21_1bb8:	.db $f3
B21_1bb9:		.db $00				; 00
B21_1bba:	.db $e7
B21_1bbb:		cpx $fe			; e4 fe
B21_1bbd:	.db $e7
B21_1bbe:		inc $e4ef		; ee ef e4
B21_1bc1:	.db $f2
B21_1bc2:		.db $00				; 00
B21_1bc3:	.db $f2
B21_1bc4:		inc $e4ec		; ee ec e4
B21_1bc7:	.db $e3
B21_1bc8:		cpx #$f8		; e0 f8
B21_1bca:		.db $00				; 00
B21_1bcb:	.db $e7
B21_1bcc:		cpx $ff			; e4 ff


data_15_1bce:
B21_1bce:		inc $e8, x		; f6 e8
B21_1bd0:	.db $eb
B21_1bd1:	.db $eb
B21_1bd2:		.db $00				; 00
B21_1bd3:		inc $e4			; e6 e4
B21_1bd5:	.db $f3
B21_1bd6:		.db $00				; 00
B21_1bd7:	.db $f3
B21_1bd8:	.db $e7
B21_1bd9:		cpx $fe			; e4 fe
B21_1bdb:		sbc ($e4), y	; f1 e4
B21_1bdd:	.db $f2
B21_1bde:	.db $ef
B21_1bdf:		cpx $e2			; e4 e2
B21_1be1:	.db $f3
B21_1be2:		.db $00				; 00
B21_1be3:	.db $f3
B21_1be4:	.db $e7
B21_1be5:		cpx #$f3		; e0 f3
B21_1be7:	.db $ff


data_15_1be8:
B21_1be8:	.db $e7
B21_1be9:		cpx $00			; e4 00
B21_1beb:	.db $e3
B21_1bec:		cpx $f2			; e4 f2
B21_1bee:		cpx $f1			; e4 f1
B21_1bf0:		sbc $e4, x		; f5 e4
B21_1bf2:	.db $f2
B21_1bf3:	.db $db
B21_1bf4:		inc $ff00, x	; fe 00 ff


data_15_1bf7:
B21_1bf7:	.db $d2
B21_1bf8:		sed				; f8 
B21_1bf9:		sbc $e0			; e5 e0
B21_1bfb:	.db $dc
B21_1bfc:		.db $00				; 00
B21_1bfd:	.db $f3
B21_1bfe:	.db $e7
B21_1bff:		cpx $fe			; e4 fe
B21_1c01:		cmp $e0, x		; d5 e0
B21_1c03:		cpx $e8ef		; ec ef e8
B21_1c06:		sbc ($e4), y	; f1 e4
B21_1c08:		.db $00				; 00
B21_1c09:		dex				; ca 
B21_1c0a:		inx				; e8 
B21_1c0b:	.db $eb
B21_1c0c:	.db $eb
B21_1c0d:		cpx $f1			; e4 f1
B21_1c0f:	.db $ff


data_15_1c10:
B21_1c10:	.db $e7
B21_1c11:		cpx #$f2		; e0 f2
B21_1c13:		.db $00				; 00
B21_1c14:	.db $e7
B21_1c15:		cpx #$e3		; e0 e3
B21_1c17:		.db $00				; 00
B21_1c18:		cpx #$00		; e0 00
B21_1c1a:		sbc ($e0, x)	; e1 e0
B21_1c1c:	.db $e3
B21_1c1d:		inc $e8eb, x	; fe eb e8
B21_1c20:		sbc $e4			; e5 e4
B21_1c22:	.db $dc
B21_1c23:		.db $00				; 00
B21_1c24:		sbc ($f4, x)	; e1 f4
B21_1c26:	.db $f3
B21_1c27:		.db $00				; 00
B21_1c28:	.db $f2
B21_1c29:		inx				; e8 
B21_1c2a:		sbc $e4e2		; ede2 e4
B21_1c2d:	.db $ff


data_15_1c2e:
B21_1c2e:	.db $f2
B21_1c2f:	.db $e7
B21_1c30:		cpx $00			; e4 00
B21_1c32:		cpx $f3e4		; ec e4 f3
B21_1c35:		.db $00				; 00
B21_1c36:	.db $d3
B21_1c37:		sbc ($e4), y	; f1 e4
B21_1c39:		sbc $ee, x		; f5 ee
B21_1c3b:		sbc ($fe), y	; f1 fe
B21_1c3d:	.db $f2
B21_1c3e:	.db $e7
B21_1c3f:		cpx $00			; e4 00
B21_1c41:		inx				; e8 
B21_1c42:	.db $f2
B21_1c43:		.db $00				; 00
B21_1c44:		sbc ($e4, x)	; e1 e4
B21_1c46:		inc $e8			; e6 e8
B21_1c48:		sbc $e8ed		; eded e8
B21_1c4b:		sbc $ffe6		; ede6 ff


data_15_1c4e:
B21_1c4e:	.db $f3
B21_1c4f:		inc $e500		; ee 00 e5
B21_1c52:		cpx $e4			; e4 e4
B21_1c54:	.db $eb
B21_1c55:		.db $00				; 00
B21_1c56:		cpx $f1ee		; ec ee f1
B21_1c59:		cpx $fe			; e4 fe
B21_1c5b:	.db $e2
B21_1c5c:		inc $e5ec		; ee ec e5
B21_1c5f:		inc $f3f1		; ee f1 f3
B21_1c62:		cpx #$e1		; e0 e1
B21_1c64:	.db $eb
B21_1c65:		cpx $00			; e4 00
B21_1c67:		inc $e8, x		; f6 e8
B21_1c69:	.db $f3
B21_1c6a:	.db $e7
B21_1c6b:	.db $ff


data_15_1c6c:
B21_1c6c:	.db $e7
B21_1c6d:		cpx $f1			; e4 f1
B21_1c6f:	.db $f2
B21_1c70:		cpx $eb			; e4 eb
B21_1c72:		sbc $db			; e5 db
B21_1c74:		inc $ff00, x	; fe 00 ff


data_15_1c77:
B21_1c77:		cmp ($ee, x)	; c1 ee
B21_1c79:	.db $f3
B21_1c7a:	.db $e7
B21_1c7b:		.db $00				; 00
B21_1c7c:		sbc $e4			; e5 e4
B21_1c7e:		cpx $eb			; e4 eb
B21_1c80:		.db $00				; 00
B21_1c81:	.db $f3
B21_1c82:	.db $e7
B21_1c83:		cpx $e8			; e4 e8
B21_1c85:		sbc ($fe), y	; f1 fe
B21_1c87:		sbc $f1			; e5 f1
B21_1c89:		inx				; e8 
B21_1c8a:		cpx $ed			; e4 ed
B21_1c8c:	.db $e3
B21_1c8d:	.db $f2
B21_1c8e:	.db $e7
B21_1c8f:		inx				; e8 
B21_1c90:	.db $ef
B21_1c91:		.db $00				; 00
B21_1c92:		inx				; e8 
B21_1c93:	.db $f2
B21_1c94:	.db $ff


data_15_1c95:
B21_1c95:	.db $f2
B21_1c96:	.db $f3
B21_1c97:		sbc ($ee), y	; f1 ee
B21_1c99:		sbc $e4e6		; ede6 e4
B21_1c9c:		sbc ($00), y	; f1 00
B21_1c9e:	.db $f2
B21_1c9f:		inx				; e8 
B21_1ca0:		sbc $e4e2		; ede2 e4
B21_1ca3:		inc $e7f3, x	; fe f3 e7
B21_1ca6:		cpx $f8			; e4 f8
B21_1ca8:		.db $00				; 00
B21_1ca9:		inc $ee, x		; f6 ee
B21_1cab:		sbc ($ea), y	; f1 ea
B21_1cad:		cpx $e3			; e4 e3
B21_1caf:	.db $ff


data_15_1cb0:
B21_1cb0:	.db $f3
B21_1cb1:		inc $e4e6		; ee e6 e4
B21_1cb4:	.db $f3
B21_1cb5:	.db $e7
B21_1cb6:		cpx $f1			; e4 f1
B21_1cb8:		.db $00				; 00
B21_1cb9:	.db $f3
B21_1cba:		inc $f100		; ee 00 f1
B21_1cbd:		inx				; e8 
B21_1cbe:	.db $e3
B21_1cbf:		inc $e0d6, x	; fe d6 e0
B21_1cc2:	.db $eb
B21_1cc3:	.db $eb
B21_1cc4:		cpx #$e2		; e0 e2
B21_1cc6:	.db $e7
B21_1cc7:		inx				; e8 
B21_1cc8:		cpx #$00		; e0 00
B21_1cca:	.db $e2
B21_1ccb:		inx				; e8 
B21_1ccc:	.db $f3
B21_1ccd:		sed				; f8 
B21_1cce:	.db $ff


data_15_1ccf:
B21_1ccf:	.db $ee $e5 $00
B21_1cd2:		cpx $f5			; e4 f5
B21_1cd4:		inx				; e8 
B21_1cd5:	.db $eb
B21_1cd6:	.db $db
B21_1cd7:		.db $00				; 00
B21_1cd8:		dec $f1			; c6 f1
B21_1cda:		cpx #$ed		; e0 ed
B21_1cdc:	.db $f3
B21_1cdd:		inc $e8f6, x	; fe f6 e8
B21_1ce0:	.db $eb
B21_1ce1:	.db $eb
B21_1ce2:		.db $00				; 00
B21_1ce3:	.db $f2
B21_1ce4:	.db $f3
B21_1ce5:		cpx #$f1		; e0 f1
B21_1ce7:	.db $f3
B21_1ce8:		.db $00				; 00
B21_1ce9:	.db $f3
B21_1cea:		.db $ee $ff


data_15_1cec:
.db $f1
B21_1ced:		cpx $e1			; e4 e1
B21_1cef:	.db $f4
B21_1cf0:		inx				; e8 
B21_1cf1:	.db $eb
B21_1cf2:	.db $e3
B21_1cf3:		.db $00				; 00
B21_1cf4:	.db $f3
B21_1cf5:	.db $e7
B21_1cf6:		cpx $fe			; e4 fe
B21_1cf8:	.db $e3
B21_1cf9:		cpx $f2			; e4 f2
B21_1cfb:	.db $f3
B21_1cfc:		sbc ($ee), y	; f1 ee
B21_1cfe:		sed				; f8 
B21_1cff:		cpx $e3			; e4 e3
B21_1d01:		.db $00				; 00
B21_1d02:		cpx #$f1		; e0 f1
B21_1d04:		cpx $e0			; e4 e0
B21_1d06:	.db $f2
B21_1d07:		inc $e5ee, x	; fe ee e5
B21_1d0a:		.db $00				; 00
B21_1d0b:	.db $f3
B21_1d0c:	.db $e7
B21_1d0d:		cpx $00			; e4 00
B21_1d0f:	.db $e2
B21_1d10:		inx				; e8 
B21_1d11:	.db $f3
B21_1d12:		sed				; f8 
B21_1d13:	.db $db
B21_1d14:		inc $ff00, x	; fe 00 ff


data_15_1d17:
B21_1d17:	.db $d3
B21_1d18:	.db $e7
B21_1d19:		cpx $00			; e4 00
B21_1d1b:		sbc ($e0, x)	; e1 e0
B21_1d1d:	.db $f3
B21_1d1e:	.db $f3
B21_1d1f:	.db $eb
B21_1d20:		cpx $00			; e4 00
B21_1d22:		inc $e0, x		; f6 e0
B21_1d24:	.db $f2
B21_1d25:		inc $eef6, x	; fe f6 ee
B21_1d28:		sbc $e100		; ed00 e1
B21_1d2b:		sed				; f8 
B21_1d2c:		.db $00				; 00
B21_1d2d:	.db $d3
B21_1d2e:		sbc ($e4), y	; f1 e4
B21_1d30:		sbc $ee, x		; f5 ee
B21_1d32:		sbc ($00), y	; f1 00
B21_1d34:		cpx #$ed		; e0 ed
B21_1d36:	.db $e3
B21_1d37:	.db $ff


data_15_1d38:
B21_1d38:		cpy #$eb		; c0 eb
B21_1d3a:	.db $f4
B21_1d3b:	.db $e2
B21_1d3c:		cpx #$f1		; e0 f1
B21_1d3e:	.db $e3
B21_1d3f:		.db $00				; 00
B21_1d40:		sbc ($f4, x)	; e1 f4
B21_1d42:	.db $f3
B21_1d43:		inc $ebc0, x	; fe c0 eb
B21_1d46:	.db $f4
B21_1d47:	.db $e2
B21_1d48:		cpx #$f1		; e0 f1
B21_1d4a:	.db $e3
B21_1d4b:		.db $00				; 00
B21_1d4c:		sbc $e4			; e5 e4
B21_1d4e:		cpx $eb			; e4 eb
B21_1d50:	.db $f2
B21_1d51:	.db $ff


data_15_1d52:
B21_1d52:		beq B21_1d48 ; f0 f4

B21_1d54:		inx				; e8 
B21_1d55:	.db $eb
B21_1d56:	.db $f3
B21_1d57:		sed				; f8 
B21_1d58:		.db $00				; 00
B21_1d59:		sbc ($e4, x)	; e1 e4
B21_1d5b:	.db $e2
B21_1d5c:		cpx #$f4		; e0 f4
B21_1d5e:	.db $f2
B21_1d5f:		cpx $fe			; e4 fe
B21_1d61:	.db $e7
B21_1d62:		cpx $00			; e4 00
B21_1d64:		nop				; ea 
B21_1d65:		inx				; e8 
B21_1d66:	.db $eb
B21_1d67:	.db $eb
B21_1d68:		cpx $e3			; e4 e3
B21_1d6a:		.db $00				; 00
B21_1d6b:	.db $e7
B21_1d6c:		inx				; e8 
B21_1d6d:	.db $f2
B21_1d6e:	.db $ff


data_15_1d6f:
B21_1d6f:		sbc ($e4), y	; f1 e4
B21_1d71:		cpx #$eb		; e0 eb
B21_1d73:		.db $00				; 00
B21_1d74:		sbc $e0			; e5 e0
B21_1d76:	.db $f3
B21_1d77:	.db $e7
B21_1d78:		cpx $f1			; e4 f1
B21_1d7a:	.db $db
B21_1d7b:		inc $fe00, x	; fe 00 fe
B21_1d7e:	.db $d3
B21_1d7f:		sbc ($e4), y	; f1 e4
B21_1d81:		sbc $ee, x		; f5 ee
B21_1d83:		sbc ($00), y	; f1 00
B21_1d85:		sbc ($e4), y	; f1 e4
B21_1d87:		cpx #$eb		; e0 eb
B21_1d89:		inx				; e8 
B21_1d8a:		sbc $f2e4, y	; f9 e4 f2
B21_1d8d:	.db $ff


data_15_1d8e:
B21_1d8e:	.db $f3
B21_1d8f:	.db $e7
B21_1d90:		inx				; e8 
B21_1d91:	.db $f2
B21_1d92:		.db $00				; 00
B21_1d93:		cpx #$f2		; e0 f2
B21_1d95:		.db $00				; 00
B21_1d96:	.db $e7
B21_1d97:		cpx $fe			; e4 fe
B21_1d99:	.db $f2
B21_1d9a:	.db $f3
B21_1d9b:		cpx #$ed		; e0 ed
B21_1d9d:	.db $e3
B21_1d9e:	.db $f2
B21_1d9f:		.db $00				; 00
B21_1da0:	.db $f3
B21_1da1:	.db $e7
B21_1da2:		cpx $f1			; e4 f1
B21_1da4:		cpx $ff			; e4 ff


data_15_1da6:
B21_1da6:	.db $f3
B21_1da7:	.db $e7
B21_1da8:		inx				; e8 
B21_1da9:		sbc $e8ea		; edea e8
B21_1dac:	.db $ed $e6 $00
B21_1daf:		cpx #$e1		; e0 e1
B21_1db1:		inc $f3f4		; ee f4 f3
B21_1db4:		inc $ebc0, x	; fe c0 eb
B21_1db7:	.db $f4
B21_1db8:	.db $e2
B21_1db9:		cpx #$f1		; e0 f1
B21_1dbb:	.db $e3
B21_1dbc:	.db $db
B21_1dbd:		inc $ff00, x	; fe 00 ff


data_15_1dc0:
B21_1dc0:		.db $00				; 00
B21_1dc1:		.db $00				; 00
B21_1dc2:		.db $00				; 00
B21_1dc3:		.db $00				; 00
B21_1dc4:		.db $00				; 00
B21_1dc5:		.db $00				; 00
B21_1dc6:		.db $00				; 00
B21_1dc7:		.db $00				; 00
B21_1dc8:		.db $00				; 00
B21_1dc9:		.db $00				; 00
B21_1dca:		.db $00				; 00
B21_1dcb:		.db $00				; 00
B21_1dcc:		.db $00				; 00
B21_1dcd:		.db $00				; 00
B21_1dce:		.db $00				; 00
B21_1dcf:		.db $00				; 00
B21_1dd0:		.db $00				; 00
B21_1dd1:		.db $00				; 00
B21_1dd2:	.db $fe $00 $00
B21_1dd5:		.db $00				; 00
B21_1dd6:		.db $00				; 00
B21_1dd7:		.db $00				; 00
B21_1dd8:		.db $00				; 00
B21_1dd9:		.db $00				; 00
B21_1dda:		.db $00				; 00
B21_1ddb:		.db $00				; 00
B21_1ddc:		.db $00				; 00
B21_1ddd:		.db $00				; 00
B21_1dde:		.db $00				; 00
B21_1ddf:		.db $00				; 00
B21_1de0:		.db $00				; 00
B21_1de1:		.db $00				; 00
B21_1de2:		.db $00				; 00
B21_1de3:		.db $00				; 00
B21_1de4:		.db $00				; 00
B21_1de5:	.db $fe $00 $00
B21_1de8:		.db $00				; 00
B21_1de9:		.db $00				; 00
B21_1dea:		.db $00				; 00
B21_1deb:		.db $00				; 00
B21_1dec:		.db $00				; 00
B21_1ded:		.db $00				; 00
B21_1dee:		.db $00				; 00
B21_1def:		.db $00				; 00
B21_1df0:		.db $00				; 00
B21_1df1:		.db $00				; 00
B21_1df2:		.db $00				; 00
B21_1df3:		.db $00				; 00
B21_1df4:		.db $00				; 00
B21_1df5:		.db $00				; 00
B21_1df6:		.db $00				; 00
B21_1df7:		.db $00				; 00
B21_1df8:	.db $ff


;
B21_1df9:		rts				; 60 


largeLayout20:
	.dw $2000
	.db $7e $7d
	.db $82 $7d $7d
	.db $10 $7f
	.db $84 $64 $66 $67 $67
	.db $06 $7e
	.db $83 $67 $66 $66
	.db $05 $7f
	.db $03 $65
	.db $0a $7f
	.db $92 $65 $67 $7e $67 $7e $7e $77 $74 $75 $77 $77 $76 $7e $7e $67 $67 $65 $64
	.db $04 $67
	.db $9b $66 $65 $64 $65 $67 $66 $7f $7f $7f $65 $65 $67 $7e $7e $7e $74 $00 $77 $00 $00 $00 $76 $7e $67 $7e $7e $67
	.db $06 $7e
	.db $89 $67 $7e $7e $7e $67 $66 $65 $67 $67
	.db $04 $7e
	.db $81 $77
	.db $07 $00
	.db $93 $76 $75 $75 $7e $7e $7e $74 $75 $75 $76 $7e $77 $76 $7e $75 $7e $7e $67 $67
	.db $04 $7e
	.db $82 $75 $77
	.db $07 $00
	.db $03 $77
	.db $86 $76 $75 $77 $77 $77 $00
	.db $06 $77
	.db $88 $75 $7e $7e $74 $76 $7e $7e $74
	.db $0c $00
	.db $84 $77 $77 $41 $42
	.db $08 $00
	.db $87 $77 $76 $75 $75 $77 $75 $75
	.db $0f $00
	.db $8c $51 $52 $42 $56 $57 $41 $42 $00 $41 $42 $00 $77
	.db $08 $00
	.db $81 $40
	.db $09 $00
	.db $d8 $41 $42 $60 $62 $63 $54 $46 $51 $52 $42 $51 $52 $42 $00 $41 $42 $00 $00 $00 $41 $42 $00 $43 $78 $4f $00 $7a $5f $00 $56 $57 $50 $51 $52 $7d $46 $71 $46 $51 $52 $52 $7d $47 $73 $7d $53 $51 $52 $57 $00 $41 $51 $52 $42 $43 $7d $7d $4f $79 $7d $4f $7d $63 $44 $45 $7d $55 $52 $63 $51 $60 $45 $62 $7d $7d $7d $55 $44 $45 $72 $73 $53 $51 $54 $7d $4c $4d $4e
	.db $0b $7d
	.db $95 $55 $44 $60 $7d $61 $7d $7d $7d $63 $44 $62 $7d $62 $63 $60 $62 $72 $7d $5c $7d $5e
	.db $13 $7d
	.db $83 $60 $61 $62
	.db $06 $7d
	.db $85 $6b $6c $6b $5d $4e
	.db $1a $7d
	.db $86 $4e $7b $7c $7b $7d $5e
	.db $1a $7d
	.db $84 $5e $6c $6e $6f
	.db $0d $7d
	.db $81 $5b
	.db $06 $7d
	.db $85 $5b $7d $7d $7d $5b
	.db $04 $7d
	.db $82 $6f $5a
	.db $09 $7d
	.db $03 $68
	.db $0c $7d
	.db $84 $4a $48 $48 $68
	.db $09 $7d
	.db $87 $5b $7d $7d $68 $48 $68 $68
	.db $09 $7d
	.db $88 $49 $48 $4a $7e $58 $58 $7e $49
	.db $0c $7d
	.db $83 $68 $48 $4a
	.db $09 $7d
	.db $04 $7e
	.db $04 $58
	.db $81 $48
	.db $0b $7d
	.db $83 $68 $4a $69
	.db $09 $7d
	.db $8c $58 $7e $7e $6a $7e $58 $7e $58 $58 $48 $48 $49
	.db $04 $7d
	.db $87 $68 $5b $5b $48 $48 $48 $4a
	.db $08 $7d
	.db $98 $4b $4b $58 $4b $4b $69 $69 $4b $4b $7e $4b $6a $7e $49 $48 $68 $7d $4a $48 $4a $58 $69 $6a $7e
	.db $08 $7d
	.db $98 $4b $58 $7e $58 $7e $58 $7e $7e $7e $6a $4b $7e $6a $7e $7e $49 $4a $49 $4a $7e $4b $7e $4b $58
	.db $7e $7d
	.db $82 $7d $7d
	.db $08 $aa
	.db $08 $00
	.db $96 $e0 $f0 $20 $00 $00 $ef $f3 $e0 $ff $ff $fe $ff $7f $9a $aa $af $aa $aa $af $aa $55 $95
	.db $12 $aa
	.db $08 $0a
	.db $ff