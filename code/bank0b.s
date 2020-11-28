
B11_1839:	.db $80
B11_183a:	.db $2c $03 $00
B11_183d:		txs				; 9a 
B11_183e:		;removed
	.db $30 $02

B11_1840:	.db $04
B11_1841:		ora $4c			; 05 4c
B11_1843:	.db $ab
B11_1844:		sty $00, x		; 94 00
B11_1846:		sbc $d6fc		; edfc d6
B11_1849:	.db $d7
B11_184a:	.db $8f
B11_184b:		cmp #$85		; c9 85
B11_184d:		cmp $db12		; cd 12 db
B11_1850:		cmp ($57), y	; d1 57
B11_1852:		tax				; aa 
B11_1853:	.db $67
B11_1854:		lsr $41, x		; 56 41
B11_1856:	.db $02
B11_1857:	.db $2e $06 $00
B11_185a:		txs				; 9a 
B11_185b:		lda ($13, x)	; a1 13
B11_185d:	.db $14
B11_185e:		ora $b8, x		; 15 b8
B11_1860:		cmp #$52		; c9 52
B11_1862:		.db $00				; 00
B11_1863:		beq B11_1865 ; f0 00

B11_1865:		cmp $6766		; cd 66 67
B11_1868:		sbc $6675, y	; f9 75 66
B11_186b:	.db $62
B11_186c:		cmp $6266		; cd 66 62
B11_186f:		bvs B11_18c1 ; 70 50

B11_1871:	.db $77
B11_1872:		and #$02		; 29 02
B11_1874:	.db $1e $06 $00
B11_1877:	.db $89
B11_1878:	.db $22
B11_1879:	.db $23
B11_187a:		bit $25			; 24 25
B11_187c:	.db $02
B11_187d:	.db $4c $00 $00
B11_1880:		beq B11_1885 ; f0 03

B11_1882:		.db $00				; 00
B11_1883:	.db $89
B11_1884:	.db $42
B11_1885:		eor ($d1), y	; 51 d1
B11_1887:	.db $57
B11_1888:		lsr $67, x		; 56 67
B11_188a:		sbc $41db, y	; f9 db 41
B11_188d:	.db $03
B11_188e:	.db $02
B11_188f:	.db $82
B11_1890:	.db $fa
B11_1891:	.db $2e $06 $00
B11_1894:		txs				; 9a 
B11_1895:		bmi B11_18ca ; 30 33

B11_1897:	.db $34
B11_1898:		and $02, x		; 35 02
B11_189a:	.db $1f
B11_189b:		.db $00				; 00
B11_189c:		.db $00				; 00
B11_189d:		sbc $e9e8		; ede8 e9
B11_18a0:		sbc #$00		; e9 00
B11_18a2:		.db $00				; 00
B11_18a3:		adc $66, x		; 75 66
B11_18a5:	.db $67
B11_18a6:		;removed
	.db $50 $93

B11_18a8:		bvs B11_18d3 ; 70 29

B11_18aa:	.db $02
B11_18ab:	.db $fa
B11_18ac:	.db $fb
B11_18ad:		.db $00				; 00
B11_18ae:		bcc B11_18b6 ; 90 06

B11_18b0:		.db $00				; 00
B11_18b1:		stx $32, y		; 96 32
B11_18b3:		ror $78, x		; 76 78
B11_18b5:	.db $03
B11_18b6:	.db $02
B11_18b7:	.db $4b
B11_18b8:	.db $1f
B11_18b9:		.db $00				; 00
B11_18ba:		.db $00				; 00
B11_18bb:		inc $e6			; e6 e6
B11_18bd:		sed				; f8 
B11_18be:		sbc #$e9		; e9 e9
B11_18c0:		.db $00				; 00
B11_18c1:		cmp ($26), y	; d1 26
B11_18c3:	.db $02
B11_18c4:	.db $02
B11_18c5:		and #$fa		; 29 fa
B11_18c7:	.db $fb
B11_18c8:	.db $03
B11_18c9:		.db $00				; 00
B11_18ca:		sta ($0f, x)	; 81 0f
B11_18cc:		asl $00			; 06 00
B11_18ce:	.db $87
B11_18cf:		lda ($78, x)	; a1 78
B11_18d1:		rti				; 40 


B11_18d2:		clv				; b8 
B11_18d3:		adc $8f3f, x	; 7d 3f 8f
B11_18d6:		ora $00			; 05 00
B11_18d8:		stx $f3ed		; 8e ed f3
B11_18db:		.db $00				; 00
B11_18dc:	.db $ef
B11_18dd:	.db $e2
B11_18de:	.db $e3
B11_18df:	.db $e3
B11_18e0:	.db $e2
B11_18e1:	.db $e3
B11_18e2:	.db $e2
B11_18e3:		cpx $f2			; e4 f2
B11_18e5:		cpx #$0f		; e0 0f
B11_18e7:		asl $00			; 06 00
B11_18e9:		sta ($91, x)	; 81 91
B11_18eb:	.db $03
B11_18ec:	.db $02
B11_18ed:		sty $a7			; 84 a7
B11_18ef:		adc $1f00, x	; 7d 00 1f
B11_18f2:	.db $04
B11_18f3:		.db $00				; 00
B11_18f4:	.db $8e $ed $00
B11_18f7:		.db $00				; 00
B11_18f8:	.db $cf
B11_18f9:		cpx $f2			; e4 f2
B11_18fb:		cpx $e4			; e4 e4
B11_18fd:	.db $f2
B11_18fe:		ora ($e0, x)	; 01 e0
B11_1900:		cpx #$c3		; e0 c3
B11_1902:	.db $1e $06 $00
B11_1905:	.db $93
B11_1906:		jsr $b88e		; 20 8e b8
B11_1909:	.db $4b
B11_190a:	.db $3f
B11_190b:		adc $8f00, x	; 7d 00 8f
B11_190e:		cmp #$00		; c9 00
B11_1910:		inx				; e8 
B11_1911:		sbc #$ea		; e9 ea
B11_1913:		.db $00				; 00
B11_1914:		.db $00				; 00
B11_1915:	.db $e7
B11_1916:	.db $df
B11_1917:	.db $cf
B11_1918:		cpx #$03		; e0 03
B11_191a:	.db $c3
B11_191b:		sty $02			; 84 02
B11_191d:	.db $02
B11_191e:	.db $db
B11_191f:	.db $2e $06 $00
B11_1922:		txs				; 9a 
B11_1923:		lda ($02, x)	; a1 02
B11_1925:	.db $4b
B11_1926:	.db $a7
B11_1927:	.db $3f
B11_1928:		rts				; 60 


B11_1929:		.db $00				; 00
B11_192a:	.db $cc $51 $00
B11_192d:		sbc $e6			; e5 e6
B11_192f:	.db $f4
B11_1930:		inc $f5, x		; f6 f5
B11_1932:		inc $ce, x		; f6 ce
B11_1934:		.db $00				; 00
B11_1935:	.db $a7
B11_1936:	.db $02
B11_1937:	.db $02
B11_1938:		ldy $99a7, x	; bc a7 99
B11_193b:	.db $cb
B11_193c:	.db $3e $06 $00
B11_193f:		dey				; 88 
B11_1940:		;removed
	.db $30 $02

B11_1942:		clv				; b8 
B11_1943:		cmp #$00		; c9 00
B11_1945:	.db $1f
B11_1946:	.db $8f
B11_1947:		eor ($08), y	; 51 08
B11_1949:		.db $00				; 00
B11_194a:		sta $e5			; 85 e5
B11_194c:		.db $00				; 00
B11_194d:		rol $99, x		; 36 99
B11_194f:	.db $cb
B11_1950:	.db $04
B11_1951:		.db $00				; 00
B11_1952:		sta ($90, x)	; 81 90
B11_1954:		asl $00			; 06 00
B11_1956:	.db $03
B11_1957:	.db $02
B11_1958:	.db $83
B11_1959:		adc $52cc, x	; 7d cc 52
B11_195c:	.db $07
B11_195d:		.db $00				; 00
B11_195e:		sty $e8			; 84 e8
B11_1960:		iny				; c8 
B11_1961:		ora ($ca, x)	; 01 ca
B11_1963:		php				; 08 
B11_1964:		.db $00				; 00
B11_1965:		sta ($2e, x)	; 81 2e
B11_1967:		asl $00			; 06 00
B11_1969:		sta ($02), y	; 91 02
B11_196b:	.db $02
B11_196c:		clv				; b8 
B11_196d:	.db $7d $2f $00
B11_1970:	.db $cc $cc $00
B11_1973:		.db $00				; 00
B11_1974:		sbc #$e9		; e9 e9
B11_1976:		sbc $e6, x		; f5 e6
B11_1978:		cld				; d8 
B11_1979:		cmp $07da, y	; d9 da 07
B11_197c:		.db $00				; 00
B11_197d:	.db $82
B11_197e:	.db $12
B11_197f:	.db $3e $06 $00
B11_1982:	.db $8f
B11_1983:		lda ($02, x)	; a1 02
B11_1985:		stx $7d4c		; 8e 4c 7d
B11_1988:		.db $00				; 00
B11_1989:		.db $00				; 00
B11_198a:	.db $2f
B11_198b:	.db $1f
B11_198c:		.db $00				; 00
B11_198d:		inc $f4			; e6 f4
B11_198f:		sbc $f5, x		; f5 f5
B11_1991:		sbc #$06		; e9 06
B11_1993:		.db $00				; 00
B11_1994:		sta $cc			; 85 cc
B11_1996:		.db $00				; 00
B11_1997:	.db $12
B11_1998:	.db $82
B11_1999:	.db $0f
B11_199a:		asl $00			; 06 00
B11_199c:	.db $89
B11_199d:		sta ($02), y	; 91 02
B11_199f:	.db $02
B11_19a0:		stx $6803		; 8e 03 68
B11_19a3:		cmp #$00		; c9 00
B11_19a5:	.db $7d $04 $00
B11_19a8:	.db $83
B11_19a9:		sbc $f5			; e5 f5
B11_19ab:		sed				; f8 
B11_19ac:	.db $03
B11_19ad:		.db $00				; 00
B11_19ae:	.db $87
B11_19af:		cpy $128f		; cc 8f 12
B11_19b2:	.db $03
B11_19b3:	.db $02
B11_19b4:	.db $9e
B11_19b5:	.db $9f
B11_19b6:		asl $00			; 06 00
B11_19b8:		php				; 08 
B11_19b9:	.db $02
B11_19ba:	.db $83
B11_19bb:		pla				; 68 
B11_19bc:		adc $0346, x	; 7d 46 03
B11_19bf:		.db $00				; 00
B11_19c0:		stx $46			; 86 46
B11_19c2:		lsr $00			; 46 00
B11_19c4:		lsr $12			; 46 12
B11_19c6:	.db $03
B11_19c7:	.db $03
B11_19c8:	.db $02
B11_19c9:	.db $83
B11_19ca:		lda $beae		; ad ae be
B11_19cd:		asl $00			; 06 00
B11_19cf:		sta $bcbb, y	; 99 bb bc
B11_19d2:		lda $bcbb, y	; b9 bb bc
B11_19d5:		lda $bcba, y	; b9 ba bc
B11_19d8:		ldy $bcbb, x	; bc bb bc
B11_19db:		lda $babc, y	; b9 bc ba
B11_19de:		tsx				; ba 
B11_19df:	.db $bb
B11_19e0:		ldy $b9bc, x	; bc bc b9
B11_19e3:	.db $bb
B11_19e4:		lda $bbba, y	; b9 ba bb
B11_19e7:		lda $04be, x	; bd be 04
B11_19ea:		.db $00				; 00
B11_19eb:	.db $7f
B11_19ec:		iny				; c8 
B11_19ed:	.db $2f
B11_19ee:	.db $0c
B11_19ef:		tax				; aa 
B11_19f0:		sty $ee			; 84 ee
B11_19f2:	.db $ff
B11_19f3:	.db $ff
B11_19f4:	.db $bb
B11_19f5:		jsr $08aa		; 20 aa 08
B11_19f8:		asl a			; 0a
B11_19f9:	.db $ff
B11_19fa:		.db $00				; 00
B11_19fb:	.db $2c $03 $00
B11_19fe:		sta $90			; 85 90
B11_1a00:	.db $f7
B11_1a01:		sbc $e6, x		; f5 e6
B11_1a03:		sed				; f8 
B11_1a04:	.db $03
B11_1a05:		.db $00				; 00
B11_1a06:		sta $eeed		; 8d ed ee
B11_1a09:		dec $c7			; c6 c7
B11_1a0b:		txa				; 8a 
B11_1a0c:		lda #$00		; a9 00
B11_1a0e:		.db $00				; 00
B11_1a0f:		sbc #$ea		; e9 ea
B11_1a11:		.db $00				; 00
B11_1a12:		.db $00				; 00
B11_1a13:		php				; 08 
B11_1a14:	.db $04
B11_1a15:		.db $00				; 00
B11_1a16:		sta ($90, x)	; 81 90
B11_1a18:		asl $00			; 06 00
B11_1a1a:		sta ($a0, x)	; 81 a0
B11_1a1c:	.db $07
B11_1a1d:		.db $00				; 00
B11_1a1e:		txa				; 8a 
B11_1a1f:		sbc $d6fe, x	; fd fe d6
B11_1a22:	.db $d7
B11_1a23:		.db $00				; 00
B11_1a24:		.db $00				; 00
B11_1a25:		inx				; e8 
B11_1a26:		nop				; ea 
B11_1a27:		inc $f8			; e6 f8
B11_1a29:	.db $07
B11_1a2a:		.db $00				; 00
B11_1a2b:		sta ($90, x)	; 81 90
B11_1a2d:		asl $00			; 06 00
B11_1a2f:	.db $82
B11_1a30:		;removed
	.db $30 $93

B11_1a32:		asl a			; 0a
B11_1a33:		.db $00				; 00
B11_1a34:	.db $04
B11_1a35:		inc $04			; e6 04
B11_1a37:		.db $00				; 00
B11_1a38:		stx $85			; 86 85
B11_1a3a:	.db $12
B11_1a3b:		.db $00				; 00
B11_1a3c:	.db $db
B11_1a3d:		.db $00				; 00
B11_1a3e:		bcc B11_1a46 ; 90 06

B11_1a40:		.db $00				; 00
B11_1a41:		stx $91			; 86 91
B11_1a43:	.db $02
B11_1a44:	.db $12
B11_1a45:	.db $03
B11_1a46:	.db $07
B11_1a47:		sty $03, x		; 94 03
B11_1a49:		.db $00				; 00
B11_1a4a:	.db $83
B11_1a4b:		sbc ($c6, x)	; e1 c6
B11_1a4d:	.db $c7
B11_1a4e:		asl $00			; 06 00
B11_1a50:		dey				; 88 
B11_1a51:		lda $00			; a5 00
B11_1a53:		adc $66, x		; 75 66
B11_1a55:	.db $62
B11_1a56:		cmp $80a4		; cd a4 80
B11_1a59:	.db $03
B11_1a5a:		.db $00				; 00
B11_1a5b:	.db $ff
B11_1a5c:		cpy #$2f		; c0 2f
B11_1a5e:		dey				; 88 
B11_1a5f:	.db $80
B11_1a60:		ldy #$20		; a0 20
B11_1a62:		.db $00				; 00
B11_1a63:		.db $00				; 00
B11_1a64:		ldy #$a0		; a0 a0
B11_1a66:		tax				; aa 
B11_1a67:	.db $ff
B11_1a68:		rti				; 40 


B11_1a69:	.db $22
B11_1a6a:	.db $03
B11_1a6b:		.db $00				; 00
B11_1a6c:		txs				; 9a 
B11_1a6d:		bpl B11_1a1f ; 10 b0

B11_1a6f:		lda ($b2), y	; b1 b2
B11_1a71:		bcs B11_1a26 ; b0 b3

B11_1a73:		lda ($b4), y	; b1 b4
B11_1a75:	.db $b3
B11_1a76:		lda ($b1), y	; b1 b1
B11_1a78:	.db $b3
B11_1a79:		lda ($b4), y	; b1 b4
B11_1a7b:	.db $07
B11_1a7c:		php				; 08 
B11_1a7d:		ora #$b0		; 09 b0
B11_1a7f:	.db $02
B11_1a80:		lda ($b3), y	; b1 b3
B11_1a82:	.db $b2
B11_1a83:		lda ($b4), y	; b1 b4
B11_1a85:	.db $b3
B11_1a86:	.db $0e $06 $00
B11_1a89:	.db $82
B11_1a8a:		jsr $06b0		; 20 b0 06
B11_1a8d:	.db $02
B11_1a8e:	.db $92
B11_1a8f:	.db $82
B11_1a90:	.db $83
B11_1a91:		sty $87			; 84 87
B11_1a93:	.db $02
B11_1a94:		asl $17, x		; 16 17
B11_1a96:		clc				; 18 
B11_1a97:		ora $8382, y	; 19 82 83
B11_1a9a:		sty $02			; 84 02
B11_1a9c:	.db $02
B11_1a9d:	.db $0b
B11_1a9e:	.db $0c
B11_1a9f:		ora $061e		; 0d 1e 06
B11_1aa2:		.db $00				; 00
B11_1aa3:		sta ($91, x)	; 81 91
B11_1aa5:	.db $07
B11_1aa6:	.db $02
B11_1aa7:	.db $92
B11_1aa8:	.db $92
B11_1aa9:		cpy #$c1		; c0 c1
B11_1aab:	.db $c2
B11_1aac:		sta $26, x		; 95 26
B11_1aae:	.db $27
B11_1aaf:		lda #$c4		; a9 c4
B11_1ab1:		cmp $c6			; c5 c6
B11_1ab3:	.db $c7
B11_1ab4:		sta $1b1a		; 8d 1a 1b
B11_1ab7:		.db $00				; 00
B11_1ab8:		ora $062e, x	; 1d 2e 06
B11_1abb:		.db $00				; 00
B11_1abc:		sta ($81, x)	; 81 81
B11_1abe:	.db $03
B11_1abf:	.db $02
B11_1ac0:		sta ($fa, x)	; 81 fa
B11_1ac2:	.db $03
B11_1ac3:	.db $02
B11_1ac4:	.db $92
B11_1ac5:		ldx #$d0		; a2 d0
B11_1ac7:		dec $d2, x		; d6 d2
B11_1ac9:	.db $d4
B11_1aca:		rol $37, x		; 36 37
B11_1acc:		.db $00				; 00
B11_1acd:	.db $d4
B11_1ace:		cmp $d6, x		; d5 d6
B11_1ad0:	.db $d7
B11_1ad1:		sbc #$ea		; e9 ea
B11_1ad3:		.db $00				; 00
B11_1ad4:		bit $3e2d		; 2c 2d 3e
B11_1ad7:		asl $00			; 06 00
B11_1ad9:		txs				; 9a 
B11_1ada:	.db $80
B11_1adb:		sta $fa, x		; 95 fa
B11_1add:	.db $fb
B11_1ade:		.db $00				; 00
B11_1adf:		plp				; 28 
B11_1ae0:	.db $1c
B11_1ae1:	.db $02
B11_1ae2:	.db $02
B11_1ae3:	.db $93
B11_1ae4:		sty $00, x		; 94 00
B11_1ae6:		sed				; f8 
B11_1ae7:		sbc #$e9		; e9 e9
B11_1ae9:		.db $00				; 00
B11_1aea:	.db $d4
B11_1aeb:		ldy $00			; a4 00
B11_1aed:		inc $e6			; e6 e6
B11_1aef:		sed				; f8 
B11_1af0:		nop				; ea 
B11_1af1:		bit $3e2d		; 2c 2d 3e
B11_1af4:		asl $00			; 06 00
B11_1af6:		txs				; 9a 
B11_1af7:		;removed
	.db $90 $8f

B11_1af9:	.db $12
B11_1afa:	.db $1f
B11_1afb:		adc $a72b, x	; 7d 2b a7
B11_1afe:		and $0202, y	; 39 02 02
B11_1b01:	.db $a3
B11_1b02:		ldy $a5			; a4 a5
B11_1b04:	.db $d3
B11_1b05:		sed				; f8 
B11_1b06:		sbc #$d4		; e9 d4
B11_1b08:	.db $02
B11_1b09:		sec				; 38 
B11_1b0a:		.db $00				; 00
B11_1b0b:		rol a			; 2a
B11_1b0c:		sec				; 38 
B11_1b0d:		beq B11_1b0f ; f0 00

B11_1b0f:		and $061e		; 2d 1e 06
B11_1b12:		.db $00				; 00
B11_1b13:		txa				; 8a 
B11_1b14:		ldy #$02		; a0 02
B11_1b16:		stx $3940		; 8e 40 39
B11_1b19:		and $8e87, y	; 39 87 8e
B11_1b1c:		and $031c, y	; 39 1c 03
B11_1b1f:	.db $02
B11_1b20:	.db $8d $93 $00
B11_1b23:		.db $00				; 00
B11_1b24:		rol a			; 2a
B11_1b25:	.db $02
B11_1b26:		dey				; 88 
B11_1b27:		.db $00				; 00
B11_1b28:	.db $3a
B11_1b29:	.db $3b
B11_1b2a:		beq B11_1b2c ; f0 00

B11_1b2c:		and $062e, x	; 3d 2e 06
B11_1b2f:		.db $00				; 00
B11_1b30:		sta ($a1, x)	; 81 a1
B11_1b32:	.db $04
B11_1b33:	.db $02
B11_1b34:		stx $b6			; 86 b6
B11_1b36:	.db $02
B11_1b37:		stx $87			; 86 87
B11_1b39:	.db $12
B11_1b3a:		and $0203, y	; 39 03 02
B11_1b3d:	.db $8c $00 $00
B11_1b40:		sta $ab06		; 8d 06 ab
B11_1b43:		txa				; 8a 
B11_1b44:		.db $00				; 00
B11_1b45:		.db $00				; 00
B11_1b46:		sbc $a8f8		; edf8 a8
B11_1b49:	.db $0f
B11_1b4a:		asl $00			; 06 00
B11_1b4c:	.db $89
B11_1b4d:		bmi B11_1b51 ; 30 02

B11_1b4f:	.db $02
B11_1b50:	.db $fb
B11_1b51:		ora ($b5), y	; 11 b5
B11_1b53:	.db $b7
B11_1b54:		stx $97, y		; 96 97
B11_1b56:		ora $02			; 05 02
B11_1b58:		stx $3c			; 86 3c
B11_1b5a:		.db $00				; 00
B11_1b5b:		.db $00				; 00
B11_1b5c:		txa				; 8a 
B11_1b5d:		.db $00				; 00
B11_1b5e:		.db $00				; 00
B11_1b5f:	.db $03
B11_1b60:		dec $de83		; ce 83 de
B11_1b63:		.db $00				; 00
B11_1b64:	.db $0f
B11_1b65:		asl $00			; 06 00
B11_1b67:		txa				; 8a 
B11_1b68:		bmi B11_1b6c ; 30 02

B11_1b6a:		asl $bf			; 06 bf
B11_1b6c:		and ($89, x)	; 21 89
B11_1b6e:		.db $00				; 00
B11_1b6f:		ldx $00			; a6 00
B11_1b71:		tya				; 98 
B11_1b72:	.db $03
B11_1b73:	.db $02
B11_1b74:	.db $82
B11_1b75:	.db $8b
B11_1b76:	.db $8c $05 $00
B11_1b79:		sta ($de, x)	; 81 de
B11_1b7b:	.db $04
B11_1b7c:		.db $00				; 00
B11_1b7d:		sta ($90, x)	; 81 90
B11_1b7f:		asl $00			; 06 00
B11_1b81:		bcc B11_1b24 ; 90 a1

B11_1b83:	.db $99 $0a $00
B11_1b86:		and ($e9), y	; 31 e9
B11_1b88:		sbc #$dc		; e9 dc
B11_1b8a:		cmp $8ea8, x	; dd a8 8e
B11_1b8d:		sta $9b9a, y	; 99 9a 9b
B11_1b90:	.db $9c
B11_1b91:	.db $9d $03 $00
B11_1b94:	.db $83
B11_1b95:		sbc ($c6, x)	; e1 c6
B11_1b97:	.db $c7
B11_1b98:	.db $03
B11_1b99:		.db $00				; 00
B11_1b9a:		sta ($90, x)	; 81 90
B11_1b9c:		asl $00			; 06 00
B11_1b9e:		stx $80, y		; 96 80
B11_1ba0:	.db $ab
B11_1ba1:		lda #$e8		; a9 e8
B11_1ba3:		nop				; ea 
B11_1ba4:	.db $eb
B11_1ba5:	.db $eb
B11_1ba6:	.db $ec $ed $00
B11_1ba9:		rol $a9, x		; 36 a9
B11_1bab:		tax				; aa 
B11_1bac:	.db $ab
B11_1bad:		ldy $e900		; ac 00 e9
B11_1bb0:		sbc $f5, x		; f5 f5
B11_1bb2:		sbc ($d6), y	; f1 d6
B11_1bb4:	.db $d7
B11_1bb5:	.db $03
B11_1bb6:		.db $00				; 00
B11_1bb7:		sta ($80, x)	; 81 80
B11_1bb9:	.db $03
B11_1bba:		.db $00				; 00
B11_1bbb:	.db $ff
B11_1bbc:		cpy #$23		; c0 23
B11_1bbe:		clc				; 18 
B11_1bbf:		.db $00				; 00
B11_1bc0:	.db $ff
B11_1bc1:		lda #$38		; a9 38
B11_1bc3:		jsr playSound		; 20 5f e2
B11_1bc6:		lda $054e, x	; bd 4e 05
B11_1bc9:		cmp #$59		; c9 59
B11_1bcb:		beq B11_1c2c ; f0 5f

B11_1bcd:		cmp #$5d		; c9 5d
B11_1bcf:		beq B11_1c1a ; f0 49

B11_1bd1:		jsr $bc0b		; 20 0b bc
B11_1bd4:		sta $054e, x	; 9d 4e 05
B11_1bd7:		lda wEntityBaseX.w, x	; bd 38 04
B11_1bda:		sta $00			; 85 00
B11_1bdc:		sec				; 38 
B11_1bdd:		lda wEntityBaseY.w, x	; bd 1c 04
B11_1be0:		sbc #$08		; e9 08
B11_1be2:		sta $01			; 85 01
B11_1be4:		jsr $bc66		; 20 66 bc
B11_1be7:		bne B11_1c08 ; d0 1f

B11_1be9:		lda $00			; a5 00
B11_1beb:		sta wEntityBaseX.w, x	; 9d 38 04
B11_1bee:		lda $01			; a5 01
B11_1bf0:		sta wEntityBaseY.w, x	; 9d 1c 04
B11_1bf3:		lda #$6c		; a9 6c
B11_1bf5:		sta $054e, x	; 9d 4e 05
B11_1bf8:		lda #$1b		; a9 1b
B11_1bfa:		sta wEntityAI_idx.w, x	; 9d ef 05
B11_1bfd:		lda #$60		; a9 60
B11_1bff:		sta $0470, x	; 9d 70 04
B11_1c02:		jsr $bc0b		; 20 0b bc
B11_1c05:		jmp $bbe4		; 4c e4 bb


B11_1c08:		ldx $6c			; a6 6c
B11_1c0a:		rts				; 60 


B11_1c0b:		lda #$00		; a9 00
B11_1c0d:		sta wEntityPhase.w, x	; 9d c1 05
B11_1c10:		sta wOamSpecIdx.w, x	; 9d 00 04
B11_1c13:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B11_1c16:		sta $0657, x	; 9d 57 06
B11_1c19:		rts				; 60 


B11_1c1a:		lda $061d, x	; bd 1d 06
B11_1c1d:		tax				; aa 
B11_1c1e:		jsr $bc0b		; 20 0b bc
B11_1c21:		sta $054e, x	; 9d 4e 05
B11_1c24:		sta wEntityAI_idx.w, x	; 9d ef 05
B11_1c27:		ldx $6c			; a6 6c
B11_1c29:		jmp $bbd1		; 4c d1 bb


B11_1c2c:		ldx #$01		; a2 01
B11_1c2e:		ldy #$00		; a0 00
B11_1c30:		lda $bc5e, y	; b9 5e bc
B11_1c33:		sta $0606, x	; 9d 06 06
B11_1c36:		lda $0470, x	; bd 70 04
B11_1c39:		and #$fd		; 29 fd
B11_1c3b:		ora #$40		; 09 40
B11_1c3d:		sta $0470, x	; 9d 70 04
B11_1c40:		jsr func_1f_1ec8		; 20 c8 fe
B11_1c43:		lda #$6c		; a9 6c
B11_1c45:		sta $054e, x	; 9d 4e 05
B11_1c48:		lda #$6b		; a9 6b
B11_1c4a:		sta wEntityAI_idx.w, x	; 9d ef 05
B11_1c4d:		lda #$00		; a9 00
B11_1c4f:		sta $0657, x	; 9d 57 06
B11_1c52:		sta wEntityPhase.w, x	; 9d c1 05
B11_1c55:		inx				; e8 
B11_1c56:		iny				; c8 
B11_1c57:		cpx #$09		; e0 09
B11_1c59:		bcc B11_1c30 ; 90 d5

B11_1c5b:		ldx $6c			; a6 6c
B11_1c5d:		rts				; 60 


B11_1c5e:		rti				; 40 


B11_1c5f:		sec				; 38 
B11_1c60:		bmi B11_1c8a ; 30 28

B11_1c62:		jsr $1018		; 20 18 10
B11_1c65:		php				; 08 
B11_1c66:		ldx #$09		; a2 09
B11_1c68:		lda $054e, x	; bd 4e 05
B11_1c6b:		beq B11_1c74 ; f0 07

B11_1c6d:		inx				; e8 
B11_1c6e:		cpx #$0d		; e0 0d
B11_1c70:		bcc B11_1c68 ; 90 f6

B11_1c72:		lda #$01		; a9 01
B11_1c74:		rts				; 60 


B11_1c75:		lda wEntityPhase.w, x	; bd c1 05
B11_1c78:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $bc85
	.dw $bcda
	.dw $bcde
	.dw $bd8f
	.dw $bde9
B11_1c85:		lda #$44		; a9 44
B11_1c87:		jsr playSound		; 20 5f e2
B11_1c8a:		txa				; 8a 
B11_1c8b:		tay				; a8 
B11_1c8c:		lda #$00		; a9 00
B11_1c8e:		sta $00			; 85 00
B11_1c90:		lda $1a			; a5 1a
B11_1c92:		and #$03		; 29 03
B11_1c94:		clc				; 18 
B11_1c95:		adc #$05		; 69 05
B11_1c97:		sta $01			; 85 01
B11_1c99:		lda #$80		; a9 80
B11_1c9b:		sta wEntityAI_idx.w, y	; 99 ef 05
B11_1c9e:		lda #$00		; a9 00
B11_1ca0:		sta wOamSpecIdx.w, y	; 99 00 04
B11_1ca3:		lda #$2c		; a9 2c
B11_1ca5:		sta $054e, y	; 99 4e 05
B11_1ca8:		lda #$01		; a9 01
B11_1caa:		sta wEntityPhase.w, y	; 99 c1 05
B11_1cad:		lda $00			; a5 00
B11_1caf:		sta $0606, y	; 99 06 06
B11_1cb2:		txa				; 8a 
B11_1cb3:		sta $061d, y	; 99 1d 06
B11_1cb6:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1cb9:		and #$1f		; 29 1f
B11_1cbb:		sta wPlayerStateDoubled.w, y	; 99 65 05
B11_1cbe:		lda wEntityBaseX.w, x	; bd 38 04
B11_1cc1:		sta wEntityBaseX.w, y	; 99 38 04
B11_1cc4:		lda wEntityBaseY.w, x	; bd 1c 04
B11_1cc7:		sta wEntityBaseY.w, y	; 99 1c 04
B11_1cca:		lda #$20		; a9 20
B11_1ccc:		sta $0470, y	; 99 70 04
B11_1ccf:		iny				; c8 
B11_1cd0:		inc $00			; e6 00
B11_1cd2:		lda $00			; a5 00
B11_1cd4:		cmp $01			; c5 01
B11_1cd6:		bne B11_1c99 ; d0 c1

B11_1cd8:		ldx $6c			; a6 6c
B11_1cda:		inc wEntityPhase.w, x	; fe c1 05
B11_1cdd:		rts				; 60 


B11_1cde:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1ce1:		and #$fe		; 29 fe
B11_1ce3:		tay				; a8 
B11_1ce4:		lda $bd3d, y	; b9 3d bd
B11_1ce7:		sta wOamSpecIdx.w, x	; 9d 00 04
B11_1cea:		cmp #$de		; c9 de
B11_1cec:		beq B11_1cf6 ; f0 08

B11_1cee:		cmp #$dc		; c9 dc
B11_1cf0:		beq B11_1cf6 ; f0 04

B11_1cf2:		lda #$10		; a9 10
B11_1cf4:		bne B11_1cf8 ; d0 02

B11_1cf6:		lda #$0a		; a9 0a
B11_1cf8:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B11_1cfb:		lda $bd3e, y	; b9 3e bd
B11_1cfe:		sta wEntityXFlipped.w, x	; 9d a8 04
B11_1d01:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1d04:		lsr a			; 4a
B11_1d05:		sta $02			; 85 02
B11_1d07:		tay				; a8 
B11_1d08:		lda $bd6d, y	; b9 6d bd
B11_1d0b:		tay				; a8 
B11_1d0c:		lda $bd7d, y	; b9 7d bd
B11_1d0f:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B11_1d12:		lda $bd7e, y	; b9 7e bd
B11_1d15:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B11_1d18:		ldy $02			; a4 02
B11_1d1a:		lda $bd5d, y	; b9 5d bd
B11_1d1d:		tay				; a8 
B11_1d1e:		lda $bd7d, y	; b9 7d bd
B11_1d21:		sta $0537, x	; 9d 37 05
B11_1d24:		lda $bd7e, y	; b9 7e bd
B11_1d27:		sta $0520, x	; 9d 20 05
B11_1d2a:		lda $0606, x	; bd 06 06
B11_1d2d:		bne B11_1d34 ; d0 05

B11_1d2f:		lda #$60		; a9 60
B11_1d31:		sta $0470, x	; 9d 70 04
B11_1d34:		lda #$30		; a9 30
B11_1d36:		sta $0657, x	; 9d 57 06
B11_1d39:		inc wEntityPhase.w, x	; fe c1 05
B11_1d3c:		rts				; 60 


B11_1d3d:		dec $2001, x	; de 01 20
B11_1d40:		ora ($22, x)	; 01 22
B11_1d42:		ora ($dc, x)	; 01 dc
B11_1d44:		ora ($1e, x)	; 01 1e
B11_1d46:		ora ($ee, x)	; 01 ee
B11_1d48:		ora ($ec, x)	; 01 ec
B11_1d4a:		ora ($ea, x)	; 01 ea
B11_1d4c:		ora ($e8, x)	; 01 e8
B11_1d4e:		ora ($ea, x)	; 01 ea
B11_1d50:		.db $00				; 00
B11_1d51:		cpx $ee00		; ec 00 ee
B11_1d54:		.db $00				; 00
B11_1d55:		asl $dc00, x	; 1e 00 dc
B11_1d58:		.db $00				; 00
B11_1d59:	.db $22
B11_1d5a:		.db $00				; 00
B11_1d5b:		jsr $1000		; 20 00 10
B11_1d5e:		asl $0a0c		; 0e 0c 0a
B11_1d61:		php				; 08 
B11_1d62:		asl $04			; 06 04
B11_1d64:	.db $02
B11_1d65:		.db $00				; 00
B11_1d66:	.db $02
B11_1d67:	.db $04
B11_1d68:		asl $08			; 06 08
B11_1d6a:		asl a			; 0a
B11_1d6b:	.db $0c
B11_1d6c:		asl $0608		; 0e 08 06
B11_1d6f:	.db $04
B11_1d70:	.db $02
B11_1d71:		.db $00				; 00
B11_1d72:	.db $02
B11_1d73:	.db $04
B11_1d74:		asl $08			; 06 08
B11_1d76:		asl a			; 0a
B11_1d77:	.db $0c
B11_1d78:		asl $0e10		; 0e 10 0e
B11_1d7b:	.db $0c
B11_1d7c:		asl a			; 0a
B11_1d7d:		.db $00				; 00
B11_1d7e:	.db $02
B11_1d7f:		cld				; d8 
B11_1d80:		ora ($6a, x)	; 01 6a
B11_1d82:		ora ($c2, x)	; 01 c2
B11_1d84:		.db $00				; 00
B11_1d85:		.db $00				; 00
B11_1d86:		.db $00				; 00
B11_1d87:		rol $96ff, x	; 3e ff 96
B11_1d8a:		inc $fe28, x	; fe 28 fe
B11_1d8d:		.db $00				; 00
B11_1d8e:	.db $fe $a0 $00
B11_1d91:		lda $1a			; a5 1a
B11_1d93:		and #$01		; 29 01
B11_1d95:		beq B11_1d99 ; f0 02

B11_1d97:		ldy #$03		; a0 03
B11_1d99:		tya				; 98 
B11_1d9a:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B11_1d9d:		lda $0606, x	; bd 06 06
B11_1da0:		beq B11_1da5 ; f0 03

B11_1da2:		jmp $bdea		; 4c ea bd


B11_1da5:		lda #$00		; a9 00
B11_1da7:		tay				; a8 
B11_1da8:		jsr func_1f_1c1e		; 20 1e fc
B11_1dab:		bne B11_1dc4 ; d0 17

B11_1dad:		lda wEntityBaseX.w, x	; bd 38 04
B11_1db0:		cmp #$04		; c9 04
B11_1db2:		bcc B11_1dc4 ; 90 10

B11_1db4:		cmp #$fc		; c9 fc
B11_1db6:		bcs B11_1dc4 ; b0 0c

B11_1db8:		lda wEntityBaseY.w, x	; bd 1c 04
B11_1dbb:		cmp #$20		; c9 20
B11_1dbd:		bcc B11_1dc4 ; 90 05

B11_1dbf:		cmp #$ec		; c9 ec
B11_1dc1:		bcs B11_1dc4 ; b0 01

B11_1dc3:		rts				; 60 


B11_1dc4:		lda #$00		; a9 00
B11_1dc6:		sta $054e, x	; 9d 4e 05
B11_1dc9:		sta wOamSpecIdx.w, x	; 9d 00 04
B11_1dcc:		inx				; e8 
B11_1dcd:		lda $054e, x	; bd 4e 05
B11_1dd0:		cmp #$2c		; c9 2c
B11_1dd2:		beq B11_1dd7 ; f0 03

B11_1dd4:		ldx $6c			; a6 6c
B11_1dd6:		rts				; 60 


B11_1dd7:		dec $0606, x	; de 06 06
B11_1dda:		bne B11_1de3 ; d0 07

B11_1ddc:		lda #$60		; a9 60
B11_1dde:		sta $0470, x	; 9d 70 04
B11_1de1:		bne B11_1de6 ; d0 03

B11_1de3:		inc $061d, x	; fe 1d 06
B11_1de6:		inx				; e8 
B11_1de7:		bne B11_1dcd ; d0 e4

B11_1de9:		rts				; 60 


B11_1dea:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1ded:		lsr a			; 4a
B11_1dee:		sta $02			; 85 02
B11_1df0:		tay				; a8 
B11_1df1:		lda $be96, y	; b9 96 be
B11_1df4:		sta $5205		; 8d 05 52
B11_1df7:		lda $0606, x	; bd 06 06
B11_1dfa:		sta $5206		; 8d 06 52
B11_1dfd:		lda $5205		; ad 05 52
B11_1e00:		sta $00			; 85 00
B11_1e02:		lda $bea6, y	; b9 a6 be
B11_1e05:		sta $5205		; 8d 05 52
B11_1e08:		lda $0606, x	; bd 06 06
B11_1e0b:		sta $5206		; 8d 06 52
B11_1e0e:		lda $5205		; ad 05 52
B11_1e11:		sta $01			; 85 01
B11_1e13:		jsr $be56		; 20 56 be
B11_1e16:		bcc B11_1e4b ; 90 33

B11_1e18:		ldy $061d, x	; bc 1d 06
B11_1e1b:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1e1e:		cmp #$18		; c9 18
B11_1e20:		bcs B11_1e32 ; b0 10

B11_1e22:		cmp #$08		; c9 08
B11_1e24:		bcc B11_1e32 ; 90 0c

B11_1e26:		lda wEntityBaseY.w, y	; b9 1c 04
B11_1e29:		sec				; 38 
B11_1e2a:		sbc $01			; e5 01
B11_1e2c:		sta wEntityBaseY.w, x	; 9d 1c 04
B11_1e2f:		jmp $be3b		; 4c 3b be


B11_1e32:		lda wEntityBaseY.w, y	; b9 1c 04
B11_1e35:		clc				; 18 
B11_1e36:		adc $01			; 65 01
B11_1e38:		sta wEntityBaseY.w, x	; 9d 1c 04
B11_1e3b:		lda wPlayerStateDoubled.w, x	; bd 65 05
B11_1e3e:		cmp #$10		; c9 10
B11_1e40:		bcs B11_1e4c ; b0 0a

B11_1e42:		lda wEntityBaseX.w, y	; b9 38 04
B11_1e45:		sec				; 38 
B11_1e46:		sbc $00			; e5 00
B11_1e48:		sta wEntityBaseX.w, x	; 9d 38 04
B11_1e4b:		rts				; 60 


B11_1e4c:		lda wEntityBaseX.w, y	; b9 38 04
B11_1e4f:		clc				; 18 
B11_1e50:		adc $00			; 65 00
B11_1e52:		sta wEntityBaseX.w, x	; 9d 38 04
B11_1e55:		rts				; 60 


B11_1e56:		ldy $02			; a4 02
B11_1e58:		lda $be85, y	; b9 85 be
B11_1e5b:		beq B11_1e71 ; f0 14

B11_1e5d:		ldy $061d, x	; bc 1d 06
B11_1e60:		lda wEntityBaseY.w, y	; b9 1c 04
B11_1e63:		sec				; 38 
B11_1e64:		sbc wEntityBaseY.w, x	; fd 1c 04
B11_1e67:		bcs B11_1e6e ; b0 05

B11_1e69:		eor #$ff		; 49 ff
B11_1e6b:		clc				; 18 
B11_1e6c:		adc #$01		; 69 01
B11_1e6e:		cmp $01			; c5 01
B11_1e70:		rts				; 60 


B11_1e71:		ldy $061d, x	; bc 1d 06
B11_1e74:		lda wEntityBaseX.w, y	; b9 38 04
B11_1e77:		sec				; 38 
B11_1e78:		sbc wEntityBaseX.w, x	; fd 38 04
B11_1e7b:		bcs B11_1e82 ; b0 05

B11_1e7d:		eor #$ff		; 49 ff
B11_1e7f:		clc				; 18 
B11_1e80:		adc #$01		; 69 01
B11_1e82:		cmp $00			; c5 00
B11_1e84:		rts				; 60 


B11_1e85:		ora ($01, x)	; 01 01
B11_1e87:		.db $00				; 00
B11_1e88:		.db $00				; 00
B11_1e89:		.db $00				; 00
B11_1e8a:		.db $00				; 00
B11_1e8b:		.db $00				; 00
B11_1e8c:		ora ($01, x)	; 01 01
B11_1e8e:		ora ($00, x)	; 01 00
B11_1e90:		.db $00				; 00
B11_1e91:		.db $00				; 00
B11_1e92:		.db $00				; 00
B11_1e93:		.db $00				; 00
B11_1e94:		.db $00				; 00
B11_1e95:		ora ($00, x)	; 01 00
B11_1e97:	.db $03
B11_1e98:		asl $07			; 06 07
B11_1e9a:		php				; 08 
B11_1e9b:	.db $07
B11_1e9c:		asl $03			; 06 03
B11_1e9e:		.db $00				; 00
B11_1e9f:	.db $03
B11_1ea0:		asl $07			; 06 07
B11_1ea2:		php				; 08 
B11_1ea3:	.db $07
B11_1ea4:		asl $03			; 06 03
B11_1ea6:		php				; 08 
B11_1ea7:	.db $07
B11_1ea8:		asl $03			; 06 03
B11_1eaa:		.db $00				; 00
B11_1eab:	.db $03
B11_1eac:		asl $07			; 06 07
B11_1eae:		php				; 08 
B11_1eaf:	.db $07
B11_1eb0:		asl $03			; 06 03
B11_1eb2:		.db $00				; 00
B11_1eb3:	.db $03
B11_1eb4:		asl $07			; 06 07
B11_1eb6:		pha				; 48 
B11_1eb7:		stx $16			; 86 16
B11_1eb9:		ldx $1d			; a6 1d
B11_1ebb:		ldy #$00		; a0 00
B11_1ebd:		lda $beed, y	; b9 ed be
B11_1ec0:		sta wVramQueue.w, x	; 9d 00 03
B11_1ec3:		inx				; e8 
B11_1ec4:		cmp #$ff		; c9 ff
B11_1ec6:		beq B11_1ecc ; f0 04

B11_1ec8:		iny				; c8 
B11_1ec9:		jmp $bebd		; 4c bd be


B11_1ecc:		pla				; 68 
B11_1ecd:		tay				; a8 
B11_1ece:		stx $1d			; 86 1d
B11_1ed0:		txa				; 8a 
B11_1ed1:		sec				; 38 
B11_1ed2:		sbc #$09		; e9 09
B11_1ed4:		tax				; aa 
B11_1ed5:		lda #$08		; a9 08
B11_1ed7:		sta $00			; 85 00
B11_1ed9:		lda $bf01, y	; b9 01 bf
B11_1edc:		sta wVramQueue.w, x	; 9d 00 03
B11_1edf:		inx				; e8 
B11_1ee0:		iny				; c8 
B11_1ee1:		dec $00			; c6 00
B11_1ee3:		bne B11_1ed9 ; d0 f4

B11_1ee5:		lda #$04		; a9 04
B11_1ee7:		jsr displayStaticLayoutA		; 20 e9 ec
B11_1eea:		ldx $16			; a6 16
B11_1eec:		rts				; 60 


B11_1eed:		ora ($00, x)	; 01 00
B11_1eef:	.db $3f
B11_1ef0:	.db $0f
B11_1ef1:		asl $26, x		; 16 26
B11_1ef3:		jsr $100f		; 20 0f 10
B11_1ef6:		ora $01			; 05 01
B11_1ef8:	.db $0f
B11_1ef9:	.db $0c
B11_1efa:		;removed
	.db $10 $27

B11_1efc:	.db $0f
B11_1efd:		.db $00				; 00
B11_1efe:		ora $1a			; 05 1a
B11_1f00:	.db $ff
B11_1f01:	.db $0f
B11_1f02:	.db $0f
B11_1f03:	.db $0f
B11_1f04:	.db $0f
B11_1f05:	.db $0f
B11_1f06:	.db $0f
B11_1f07:	.db $0f
B11_1f08:	.db $0f
B11_1f09:	.db $0f
B11_1f0a:	.db $0f
B11_1f0b:	.db $0f
B11_1f0c:		ora $0f			; 05 0f
B11_1f0e:	.db $0f
B11_1f0f:	.db $0f
B11_1f10:		ora $0f			; 05 0f
B11_1f12:	.db $0f
B11_1f13:		ora $24			; 05 24
B11_1f15:	.db $0f
B11_1f16:	.db $0f
B11_1f17:		asl $05, x		; 16 05
B11_1f19:	.db $0f
B11_1f1a:	.db $02
B11_1f1b:		ora $24			; 05 24
B11_1f1d:	.db $0f
B11_1f1e:		.db $00				; 00
B11_1f1f:		asl $05, x		; 16 05
B11_1f21:	.db $0f
B11_1f22:		rol $26, x		; 36 26
B11_1f24:		asl $0f, x		; 16 0f
B11_1f26:		rol $26, x		; 36 26
B11_1f28:		asl $0f, x		; 16 0f
B11_1f2a:		rol $36, x		; 36 36
B11_1f2c:		rol $0f, x		; 36 0f
B11_1f2e:		rol $36, x		; 36 36
B11_1f30:		.db $36