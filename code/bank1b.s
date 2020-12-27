
B27_1765:		lda #$10		; a9 10
B27_1767:		ldy wCurrPlayer.w		; ac 4e 05
B27_176a:		cpy #$02		; c0 02
B27_176c:		bne B27_1770 ; d0 02

B27_176e:		lda #$0c		; a9 0c
B27_1770:		clc				; 18 
B27_1771:		adc wEntityBaseY.w		; 6d 1c 04
B27_1774:		bcs B27_177a ; b0 04

B27_1776:		cmp #$f0		; c9 f0
B27_1778:		bcc B27_177c ; 90 02

B27_177a:		adc #$0f		; 69 0f
B27_177c:		tay				; a8 
B27_177d:		lda $0e			; a5 0e
B27_177f:		jmp $b788		; 4c 88 b7


B27_1782:		lda wEntityBaseX.w, x	; bd 38 04
B27_1785:		ldy wEntityBaseY.w, x	; bc 1c 04
B27_1788:		and #$f0		; 29 f0
B27_178a:		lsr a			; 4a
B27_178b:		lsr a			; 4a
B27_178c:		lsr a			; 4a
B27_178d:		sta $12			; 85 12
B27_178f:		tya				; 98 
B27_1790:		ldy wCurrScrollRoomScreen			; a4 57
B27_1792:		sec				; 38 
B27_1793:		sbc #$30		; e9 30
B27_1795:		bcs B27_179a ; b0 03

B27_1797:		sbc #$0f		; e9 0f
B27_1799:		dey				; 88 
B27_179a:		clc				; 18 
B27_179b:		adc wCurrScrollOffsetIntoRoomScreen			; 65 56
B27_179d:		bcs B27_17a3 ; b0 04

B27_179f:		cmp #$f0		; c9 f0
B27_17a1:		bcc B27_17a6 ; 90 03

B27_17a3:		adc #$0f		; 69 0f
B27_17a5:		iny				; c8 
B27_17a6:		and #$f0		; 29 f0
B27_17a8:		sta $00			; 85 00
B27_17aa:		sta $0b			; 85 0b
B27_17ac:		sty $0f			; 84 0f
B27_17ae:		lda #$0a		; a9 0a
B27_17b0:		asl $00			; 06 00
B27_17b2:		rol a			; 2a
B27_17b3:		asl $00			; 06 00
B27_17b5:		rol a			; 2a
B27_17b6:		sta $13			; 85 13
B27_17b8:		lda $12			; a5 12
B27_17ba:		ora $00			; 05 00
B27_17bc:		sta $12			; 85 12
B27_17be:		rts				; 60 


func_1b_17bf:
B27_17bf:		sty $09			; 84 09
B27_17c1:		lda wCurrRoomMetadataByte			; a5 68
B27_17c3:		bpl B27_17fb ; 10 36

B27_17c5:		lda $10			; a5 10
B27_17c7:		sta $0e			; 85 0e
B27_17c9:		jsr $b765		; 20 65 b7
B27_17cc:		jsr $b8b8		; 20 b8 b8
B27_17cf:		bne B27_17be ; d0 ed

B27_17d1:		jsr $ba05		; 20 05 ba
B27_17d4:		bmi B27_17e1 ; 30 0b

B27_17d6:		lda #$10		; a9 10
B27_17d8:		jsr playSound		; 20 5f e2
B27_17db:		jsr $b9a3		; 20 a3 b9
B27_17de:		jmp $b982		; 4c 82 b9

B27_17e1:		jsr $bae1		; 20 e1 ba
B27_17e4:		bcs B27_17be ; b0 d8

B27_17e6:		lda wEntityBaseY.w		; ad 1c 04
B27_17e9:		clc				; 18 
B27_17ea:		adc #$08		; 69 08
B27_17ec:		sta $14			; 85 14
B27_17ee:		lda $0e			; a5 0e
B27_17f0:		sta $15			; 85 15
B27_17f2:		jsr $e935		; 20 35 e9
B27_17f5:		jsr $b831		; 20 31 b8
B27_17f8:		jmp $b83f		; 4c 3f b8

B27_17fb:		lda $13			; a5 13
B27_17fd:		sta $0e			; 85 0e
B27_17ff:		lda $14			; a5 14
B27_1801:		sta $0f			; 85 0f
B27_1803:		jsr $b8b8		; 20 b8 b8
B27_1806:		bne B27_17be ; d0 b6

B27_1808:		jsr $ba05		; 20 05 ba
B27_180b:		bmi B27_181b ; 30 0e

B27_180d:		lda #$10		; a9 10
B27_180f:		jsr playSound		; 20 5f e2
B27_1812:		jsr $b9b2		; 20 b2 b9
B27_1815:		jsr $b9a3		; 20 a3 b9
B27_1818:		jmp $b982		; 4c 82 b9

B27_181b:		jsr $bae7		; 20 e7 ba
B27_181e:		bcs B27_185d ; b0 3d

B27_1820:		jsr $b9b2		; 20 b2 b9
B27_1823:		ldy wCurrRoomGroup			; a4 32
B27_1825:		lda $c94b, y	; b9 4b c9
B27_1828:		jsr $e9b3		; 20 b3 e9
B27_182b:		jsr $b831		; 20 31 b8
B27_182e:		jmp $b85e		; 4c 5e b8


B27_1831:		jsr $b9e4		; 20 e4 b9
B27_1834:		jsr $b8de		; 20 de b8
B27_1837:		jsr $b94b		; 20 4b b9
B27_183a:		lda #$11		; a9 11
B27_183c:		jmp playSound		; 4c 5f e2


B27_183f:		jsr $b883		; 20 83 b8
B27_1842:		bne B27_1882 ; d0 3e

B27_1844:		jsr $b891		; 20 91 b8
B27_1847:		lda $0e			; a5 0e
B27_1849:		and #$e0		; 29 e0
B27_184b:		ldy wCollisionValIsForRightHalfOf32x16block			; a4 a5
B27_184d:		beq B27_1851 ; f0 02

B27_184f:		ora #$10		; 09 10
B27_1851:		sta wEntityBaseX.w, x	; 9d 38 04
B27_1854:		lda wEntityBaseY.w		; ad 1c 04
B27_1857:		clc				; 18 
B27_1858:		adc #$1d		; 69 1d
B27_185a:		sta wEntityBaseY.w, x	; 9d 1c 04
B27_185d:		rts				; 60 


B27_185e:		jsr $b883		; 20 83 b8
B27_1861:		bne B27_1882 ; d0 1f

B27_1863:		jsr $b891		; 20 91 b8
B27_1866:		lda $12			; a5 12
B27_1868:		asl a			; 0a
B27_1869:		asl a			; 0a
B27_186a:		asl a			; 0a
B27_186b:		and #$e0		; 29 e0
B27_186d:		ldy wCollisionValIsForRightHalfOf32x16block			; a4 a5
B27_186f:		beq B27_1873 ; f0 02

B27_1871:		ora #$10		; 09 10
B27_1873:		sec				; 38 
B27_1874:		sbc wCurrScrollOffsetIntoRoomScreen			; e5 56
B27_1876:		sta wEntityBaseX.w, x	; 9d 38 04
B27_1879:		lda wEntityBaseY.w		; ad 1c 04
B27_187c:		clc				; 18 
B27_187d:		adc #$1e		; 69 1e
B27_187f:		sta wEntityBaseY.w, x	; 9d 1c 04
B27_1882:		rts				; 60 


B27_1883:		ldx #$01		; a2 01
B27_1885:		lda wEntityObjectIdxes.w, x	; bd 4e 05
B27_1888:		beq B27_1890 ; f0 06

B27_188a:		inx				; e8 
B27_188b:		cpx #$12		; e0 12
B27_188d:		bcc B27_1885 ; 90 f6

B27_188f:		inx				; e8 
B27_1890:		rts				; 60 


B27_1891:		jsr clearAllEntityVars_todo		; 20 d7 fe
B27_1894:		lda #$89		; a9 89
B27_1896:		sta wEntityObjectIdxes.w, x	; 9d 4e 05
B27_1899:		lda #$0c		; a9 0c
B27_189b:		ldy #$00		; a0 00
B27_189d:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B27_18a0:		lda #$e8		; a9 e8
B27_18a2:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B27_18a5:		lda #$01		; a9 01
B27_18a7:		sta $0657, x	; 9d 57 06
B27_18aa:		sta wEntityFacingLeft.w, x	; 9d a8 04
B27_18ad:		lda #$60		; a9 60
B27_18af:		sta wEntityState.w, x	; 9d 70 04
B27_18b2:		lda #$03		; a9 03
B27_18b4:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B27_18b7:		rts				; 60 


B27_18b8:		ldy #$01		; a0 01
B27_18ba:		lda wCurrRoomGroup		; a5 32
B27_18bc:		cmp #$07		; c9 07
B27_18be:		beq B27_18cb ; f0 0b

B27_18c0:		cmp #$0a		; c9 0a
B27_18c2:		bne B27_18ca ; d0 06

B27_18c4:		lda wCurrRoomSection			; a5 33
B27_18c6:		cmp #$01		; c9 01
B27_18c8:		beq B27_18cb ; f0 01

B27_18ca:		dey				; 88 
B27_18cb:		lda $0e			; a5 0e
B27_18cd:		lsr a			; 4a
B27_18ce:		lsr a			; 4a
B27_18cf:		lsr a			; 4a
B27_18d0:		lsr a			; 4a
B27_18d1:		tax				; aa 
B27_18d2:		inc $03b0, x	; fe b0 03
B27_18d5:		lda $03b0, x	; bd b0 03
B27_18d8:		and $b8dc, y	; 39 dc b8
B27_18db:		rts				; 60 


B27_18dc:	.db $0f
B27_18dd:	.db $07
B27_18de:		lda #$00		; a9 00
B27_18e0:		sta $04			; 85 04
B27_18e2:		lda $12			; a5 12
B27_18e4:		asl a			; 0a
B27_18e5:		asl a			; 0a
B27_18e6:		rol $04			; 26 04
B27_18e8:		asl a			; 0a
B27_18e9:		asl a			; 0a
B27_18ea:		asl a			; 0a
B27_18eb:		asl a			; 0a
B27_18ec:		asl a			; 0a
B27_18ed:		rol $04			; 26 04
B27_18ef:		ldx $04			; a6 04
B27_18f1:		lda $11			; a5 11
B27_18f3:		jsr $b932		; 20 32 b9
B27_18f6:		ldx wCollisionValIsForRightHalfOf32x16block			; a6 a5
B27_18f8:		lda $0d			; a5 0d
B27_18fa:		and $ba50, x	; 3d 50 ba
B27_18fd:		cmp $ba50, x	; dd 50 ba
B27_1900:		beq B27_1942 ; f0 40

B27_1902:		cpx #$00		; e0 00
B27_1904:		beq B27_190a ; f0 04

B27_1906:		lsr a			; 4a
B27_1907:		lsr a			; 4a
B27_1908:		lsr a			; 4a
B27_1909:		lsr a			; 4a
B27_190a:		sta $00			; 85 00
B27_190c:		ldy $09			; a4 09
B27_190e:		lda wCurrCollisionValues.w, y	; b9 e0 06
B27_1911:		and $ba50, x	; 3d 50 ba
B27_1914:		bne B27_1942 ; d0 2c

B27_1916:		lda $16			; a5 16
B27_1918:		pha				; 48 
B27_1919:		lda $17			; a5 17
B27_191b:		pha				; 48 
B27_191c:		lda $00			; a5 00
B27_191e:		jsr $bb14		; 20 14 bb
B27_1921:		lda $04			; a5 04
B27_1923:		eor #$01		; 49 01
B27_1925:		tax				; aa 
B27_1926:		lda $0c			; a5 0c
B27_1928:		jsr $b932		; 20 32 b9
B27_192b:		pla				; 68 
B27_192c:		sta $17			; 85 17
B27_192e:		pla				; 68 
B27_192f:		sta $16			; 85 16
B27_1931:		rts				; 60 


B27_1932:		and $b943, x	; 3d 43 b9
B27_1935:		sta $01			; 85 01
B27_1937:		ldy #$04		; a0 04
B27_1939:		lda ($16), y	; b1 16
B27_193b:		and $b947, x	; 3d 47 b9
B27_193e:		ora $01			; 05 01
B27_1940:		sta $0c			; 85 0c
B27_1942:		rts				; 60 


B27_1943:	.db $fc
B27_1944:	.db $f3
B27_1945:	.db $cf
B27_1946:	.db $3f
B27_1947:	.db $03
B27_1948:	.db $0c
B27_1949:		;removed
	.db $30 $c0

B27_194b:		ldy #$00		; a0 00
B27_194d:		jsr $b970		; 20 70 b9
B27_1950:		lda #$20		; a9 20
B27_1952:		ora $12			; 05 12
B27_1954:		sta $12			; 85 12
B27_1956:		jsr $b970		; 20 70 b9
B27_1959:		lda #$01		; a9 01
B27_195b:		jsr storeByteInVramQueue		; 20 14 ed
B27_195e:		lda $14			; a5 14
B27_1960:		jsr storeByteInVramQueue		; 20 14 ed
B27_1963:		lda $15			; a5 15
B27_1965:		jsr storeByteInVramQueue		; 20 14 ed
B27_1968:		lda $0c			; a5 0c
B27_196a:		jsr storeByteInVramQueue		; 20 14 ed
B27_196d:		jmp terminateVramQueue		; 4c 12 ed


B27_1970:		jsr $b994		; 20 94 b9
B27_1973:		lda ($16), y	; b1 16
B27_1975:		jsr storeByteInVramQueue		; 20 14 ed
B27_1978:		iny				; c8 
B27_1979:		lda ($16), y	; b1 16
B27_197b:		jsr storeByteInVramQueue		; 20 14 ed
B27_197e:		iny				; c8 
B27_197f:		jmp terminateVramQueue		; 4c 12 ed


B27_1982:		jsr $b994		; 20 94 b9
B27_1985:		ldy $0a			; a4 0a
B27_1987:		lda $b990, y	; b9 90 b9
B27_198a:		jsr storeByteInVramQueue		; 20 14 ed
B27_198d:		jmp terminateVramQueue		; 4c 12 ed


B27_1990:		bit $2f2e		; 2c 2e 2f
B27_1993:		and $01a9		; 2d a9 01
B27_1996:		jsr storeByteInVramQueue		; 20 14 ed
B27_1999:		lda $12			; a5 12
B27_199b:		jsr storeByteInVramQueue		; 20 14 ed
B27_199e:		lda $13			; a5 13
B27_19a0:		jmp storeByteInVramQueue		; 4c 14 ed


B27_19a3:		ldy $0a			; a4 0a
B27_19a5:		lda $b9ae, y	; b9 ae b9
B27_19a8:		clc				; 18 
B27_19a9:		adc $12			; 65 12
B27_19ab:		sta $12			; 85 12
B27_19ad:		rts				; 60 


B27_19ae:		.db $00				; 00
B27_19af:		ora ($21, x)	; 01 21
B27_19b1:		jsr $13a5		; 20 a5 13
B27_19b4:		and #$f0		; 29 f0
B27_19b6:		sta $12			; 85 12
B27_19b8:		lda $14			; a5 14
B27_19ba:		eor $75			; 45 75
B27_19bc:		lsr a			; 4a
B27_19bd:		lda #$20		; a9 20
B27_19bf:		bcc B27_19c3 ; 90 02

B27_19c1:		lda #$24		; a9 24
B27_19c3:		sta $13			; 85 13
B27_19c5:		lda wEntityBaseY.w		; ad 1c 04
B27_19c8:		lsr a			; 4a
B27_19c9:		lsr a			; 4a
B27_19ca:		lsr a			; 4a
B27_19cb:		lsr a			; 4a
B27_19cc:		ror $12			; 66 12
B27_19ce:		lsr a			; 4a
B27_19cf:		ror $12			; 66 12
B27_19d1:		lsr a			; 4a
B27_19d2:		ror $12			; 66 12
B27_19d4:		ora $13			; 05 13
B27_19d6:		sta $13			; 85 13
B27_19d8:		clc				; 18 
B27_19d9:		lda #$40		; a9 40
B27_19db:		adc $12			; 65 12
B27_19dd:		sta $12			; 85 12
B27_19df:		bcc B27_19e3 ; 90 02

B27_19e1:		inc $13			; e6 13
B27_19e3:		rts				; 60 


B27_19e4:		lda $13			; a5 13
B27_19e6:		and #$fc		; 29 fc
B27_19e8:		ora #$03		; 09 03
B27_19ea:		sta $15			; 85 15
B27_19ec:		lda $13			; a5 13
B27_19ee:		and #$03		; 29 03
B27_19f0:		ora #$0c		; 09 0c
B27_19f2:		sta $14			; 85 14
B27_19f4:		lda $12			; a5 12
B27_19f6:		asl a			; 0a
B27_19f7:		rol $14			; 26 14
B27_19f9:		asl a			; 0a
B27_19fa:		asl a			; 0a
B27_19fb:		asl a			; 0a
B27_19fc:		rol $14			; 26 14
B27_19fe:		asl a			; 0a
B27_19ff:		rol $14			; 26 14
B27_1a01:		asl a			; 0a
B27_1a02:		rol $14			; 26 14
B27_1a04:		rts				; 60 


B27_1a05:		lda wCollisionValIsForRightHalfOf32x16block			; a5 a5
B27_1a07:		tax				; aa 
B27_1a08:		ldy $09			; a4 09
B27_1a0a:		lda wCurrCollisionValues.w, y	; b9 e0 06
B27_1a0d:		and $ba50, x	; 3d 50 ba
B27_1a10:		sta $00			; 85 00
B27_1a12:		lda wCurrCollisionValues.w, y	; b9 e0 06
B27_1a15:		and $ba4e, x	; 3d 4e ba
B27_1a18:		cmp $ba48, x	; dd 48 ba
B27_1a1b:		bne B27_1a27 ; d0 0a

B27_1a1d:		clc				; 18 
B27_1a1e:		adc $ba4a, x	; 7d 4a ba
B27_1a21:		jsr $ba52		; 20 52 ba
B27_1a24:		jmp $ba2e		; 4c 2e ba


B27_1a27:		clc				; 18 
B27_1a28:		adc $ba4c, x	; 7d 4c ba
B27_1a2b:		jsr $ba52		; 20 52 ba
B27_1a2e:		and $ba4e, x	; 3d 4e ba
B27_1a31:		sta $0a			; 85 0a
B27_1a33:		ora $00			; 05 00
B27_1a35:		sta wCurrCollisionValues.w, y	; 99 e0 06
B27_1a38:		lda $0a			; a5 0a
B27_1a3a:		cmp #$10		; c9 10
B27_1a3c:		bcc B27_1a42 ; 90 04

B27_1a3e:		lsr a			; 4a
B27_1a3f:		lsr a			; 4a
B27_1a40:		lsr a			; 4a
B27_1a41:		lsr a			; 4a
B27_1a42:		sec				; 38 
B27_1a43:		sbc #$0c		; e9 0c
B27_1a45:		sta $0a			; 85 0a
B27_1a47:		rts				; 60 


B27_1a48:		rti				; 40 


B27_1a49:	.db $04
B27_1a4a:	.db $80
B27_1a4b:		php				; 08 
B27_1a4c:		;removed
	.db $10 $01

B27_1a4e:		;removed
	.db $f0 $0f

B27_1a50:	.db $0f
B27_1a51:		beq B27_1a9b ; f0 48

B27_1a53:		sty $02			; 84 02
B27_1a55:		lda $0e			; a5 0e
B27_1a57:		lsr a			; 4a
B27_1a58:		lsr a			; 4a
B27_1a59:		lsr a			; 4a
B27_1a5a:		lsr a			; 4a
B27_1a5b:		tay				; a8 
B27_1a5c:		lda #$00		; a9 00
B27_1a5e:		sta $03b0, y	; 99 b0 03
B27_1a61:		ldy $02			; a4 02
B27_1a63:		pla				; 68 
B27_1a64:		rts				; 60 


B27_1a65:	.db $03
B27_1a66:		ora ($00, x)	; 01 00
B27_1a68:		.db $00				; 00
B27_1a69:	.db $03
B27_1a6a:		ora ($00, x)	; 01 00
B27_1a6c:		ora ($03, x)	; 01 03
B27_1a6e:		ora ($00, x)	; 01 00
B27_1a70:	.db $02
B27_1a71:	.db $03
B27_1a72:	.db $03
B27_1a73:		.db $00				; 00
B27_1a74:		.db $00				; 00
B27_1a75:	.db $03
B27_1a76:	.db $03
B27_1a77:		.db $00				; 00
B27_1a78:		ora ($03, x)	; 01 03
B27_1a7a:	.db $03
B27_1a7b:		.db $00				; 00
B27_1a7c:	.db $02
B27_1a7d:	.db $07
B27_1a7e:		.db $00				; 00
B27_1a7f:		.db $00				; 00
B27_1a80:		.db $00				; 00
B27_1a81:	.db $07
B27_1a82:		ora $00			; 05 00
B27_1a84:		.db $00				; 00
B27_1a85:	.db $07
B27_1a86:		ora $00			; 05 00
B27_1a88:		ora ($07, x)	; 01 07
B27_1a8a:		ora $00			; 05 00
B27_1a8c:	.db $02
B27_1a8d:	.db $07
B27_1a8e:		ora $01			; 05 01
B27_1a90:		.db $00				; 00
B27_1a91:		php				; 08 
B27_1a92:	.db $03
B27_1a93:		.db $00				; 00
B27_1a94:		ora ($08, x)	; 01 08
B27_1a96:	.db $03
B27_1a97:		.db $00				; 00
B27_1a98:	.db $02
B27_1a99:		php				; 08 
B27_1a9a:	.db $04
B27_1a9b:		.db $00				; 00
B27_1a9c:		ora ($08, x)	; 01 08
B27_1a9e:	.db $04
B27_1a9f:		.db $00				; 00
B27_1aa0:	.db $02
B27_1aa1:		php				; 08 
B27_1aa2:	.db $04
B27_1aa3:		.db $00				; 00
B27_1aa4:	.db $04
B27_1aa5:		asl a			; 0a
B27_1aa6:		ora ($00, x)	; 01 00
B27_1aa8:		.db $00				; 00
B27_1aa9:		asl a			; 0a
B27_1aaa:		ora ($00, x)	; 01 00
B27_1aac:		ora ($0a, x)	; 01 0a
B27_1aae:		ora $00			; 05 00
B27_1ab0:		ora ($0a, x)	; 01 0a
B27_1ab2:		ora $00			; 05 00
B27_1ab4:	.db $02
B27_1ab5:		asl a			; 0a
B27_1ab6:		asl $01			; 06 01
B27_1ab8:		.db $00				; 00
B27_1ab9:		asl a			; 0a
B27_1aba:		asl $01			; 06 01
B27_1abc:		ora ($0a, x)	; 01 0a
B27_1abe:		asl $01			; 06 01
B27_1ac0:	.db $02
B27_1ac1:		asl a			; 0a
B27_1ac2:		asl $01			; 06 01
B27_1ac4:	.db $03
B27_1ac5:	.db $0b
B27_1ac6:	.db $02
B27_1ac7:		ora ($00, x)	; 01 00
B27_1ac9:	.db $0b
B27_1aca:	.db $02
B27_1acb:		ora ($01, x)	; 01 01
B27_1acd:		asl $0100		; 0e 00 01
B27_1ad0:		.db $00				; 00
B27_1ad1:		asl $0100		; 0e 00 01
B27_1ad4:		ora ($0e, x)	; 01 0e
B27_1ad6:		.db $00				; 00
B27_1ad7:		ora ($02, x)	; 01 02
B27_1ad9:	.db $0e $00 $00
B27_1adc:		.db $00				; 00
B27_1add:	.db $0e $00 $00
B27_1ae0:		ora ($20, x)	; 01 20
B27_1ae2:		rol $90bb, x	; 3e bb 90
B27_1ae5:		asl $60			; 06 60
B27_1ae7:		jsr $bb5b		; 20 5b bb
B27_1aea:		;removed
	.db $b0 $fa

B27_1aec:		lda $03			; a5 03
B27_1aee:		asl a			; 0a
B27_1aef:		asl a			; 0a
B27_1af0:		asl a			; 0a
B27_1af1:		sta $00			; 85 00
B27_1af3:		lda $0e			; a5 0e
B27_1af5:		lsr a			; 4a
B27_1af6:		lsr a			; 4a
B27_1af7:		lsr a			; 4a
B27_1af8:		lsr a			; 4a
B27_1af9:		lsr a			; 4a
B27_1afa:		php				; 08 
B27_1afb:		clc				; 18 
B27_1afc:		adc $00			; 65 00
B27_1afe:		tay				; a8 
B27_1aff:		lda #$00		; a9 00
B27_1b01:		plp				; 28 
B27_1b02:		rol a			; 2a
B27_1b03:		tax				; aa 
B27_1b04:		lda $bbca, y	; b9 ca bb
B27_1b07:		sta $0d			; 85 0d
B27_1b09:		and $ba4e, x	; 3d 4e ba
B27_1b0c:		cpx #$00		; e0 00
B27_1b0e:		bne B27_1b14 ; d0 04

B27_1b10:		lsr a			; 4a
B27_1b11:		lsr a			; 4a
B27_1b12:		lsr a			; 4a
B27_1b13:		lsr a			; 4a
B27_1b14:		sta $00			; 85 00
B27_1b16:		jsr $bb91		; 20 91 bb
B27_1b19:		lda wCurrRoomGroup		; a5 32
B27_1b1b:		asl a			; 0a
B27_1b1c:		tay				; a8 
B27_1b1d:		lda $bcc2, y	; b9 c2 bc
B27_1b20:		sta $02			; 85 02
B27_1b22:		lda $bcc3, y	; b9 c3 bc
B27_1b25:		sta $03			; 85 03
B27_1b27:		lda $00			; a5 00
B27_1b29:		asl a			; 0a
B27_1b2a:		asl a			; 0a
B27_1b2b:		clc				; 18 
B27_1b2c:		adc $00			; 65 00
B27_1b2e:		sta $00			; 85 00
B27_1b30:		clc				; 18 
B27_1b31:		lda $00			; a5 00
B27_1b33:		adc $02			; 65 02
B27_1b35:		sta $16			; 85 16
B27_1b37:		lda $03			; a5 03
B27_1b39:		adc #$00		; 69 00
B27_1b3b:		sta $17			; 85 17
B27_1b3d:		rts				; 60 


B27_1b3e:		lda wEntityBaseY.w		; ad 1c 04
B27_1b41:		sec				; 38 
B27_1b42:		sbc #$20		; e9 20
B27_1b44:		clc				; 18 
B27_1b45:		adc wCurrScrollOffsetIntoRoomScreen			; 65 56
B27_1b47:		bcs B27_1b4d ; b0 04

B27_1b49:		cmp #$f0		; c9 f0
B27_1b4b:		bcc B27_1b50 ; 90 03

B27_1b4d:		adc #$0f		; 69 0f
B27_1b4f:		sec				; 38 
B27_1b50:		sta $0b			; 85 0b
B27_1b52:		lda wCurrScrollRoomScreen			; a5 57
B27_1b54:		adc #$00		; 69 00
B27_1b56:		sta $07			; 85 07
B27_1b58:		jmp $bb5f		; 4c 5f bb


B27_1b5b:		lda $0f			; a5 0f
B27_1b5d:		sta $07			; 85 07
B27_1b5f:		lda #$1f		; a9 1f
B27_1b61:		sta $02			; 85 02
B27_1b63:		lda wCurrRoomGroup		; a5 32
B27_1b65:		sta $04			; 85 04
B27_1b67:		lda wCurrRoomSection			; a5 33
B27_1b69:		sta $05			; 85 05
B27_1b6b:		lda wCurrRoomIdx			; a5 34
B27_1b6d:		sta $06			; 85 06
B27_1b6f:		lda #$00		; a9 00
B27_1b71:		sta $03			; 85 03
B27_1b73:		lda $03			; a5 03
B27_1b75:		asl a			; 0a
B27_1b76:		asl a			; 0a
B27_1b77:		tay				; a8 
B27_1b78:		ldx #$00		; a2 00
B27_1b7a:		lda $04, x		; b5 04
B27_1b7c:		cmp $ba65, y	; d9 65 ba
B27_1b7f:		bne B27_1b89 ; d0 08

B27_1b81:		iny				; c8 
B27_1b82:		inx				; e8 
B27_1b83:		cpx #$04		; e0 04
B27_1b85:		bne B27_1b7a ; d0 f3

B27_1b87:		clc				; 18 
B27_1b88:		rts				; 60 


B27_1b89:		inc $03			; e6 03
B27_1b8b:		dec $02			; c6 02
B27_1b8d:		bne B27_1b73 ; d0 e4

B27_1b8f:		sec				; 38 
B27_1b90:		rts				; 60 


B27_1b91:		lda $00			; a5 00
B27_1b93:		ldy wCurrRoomGroup			; a4 32
B27_1b95:		cpy #$0a		; c0 0a
B27_1b97:		bne B27_1baa ; d0 11

B27_1b99:		cmp #$0e		; c9 0e
B27_1b9b:		bne B27_1bc5 ; d0 28

B27_1b9d:		lda #$0d		; a9 0d
B27_1b9f:		ldy $0b			; a4 0b
B27_1ba1:		cpy #$a0		; c0 a0
B27_1ba3:		bcc B27_1ba7 ; 90 02

B27_1ba5:		lda #$0b		; a9 0b
B27_1ba7:		sta $00			; 85 00
B27_1ba9:		rts				; 60 


B27_1baa:		cpy #$0b		; c0 0b
B27_1bac:		bne B27_1bc5 ; d0 17

B27_1bae:		ldy $0f			; a4 0f
B27_1bb0:		bne B27_1bc5 ; d0 13

B27_1bb2:		sec				; 38 
B27_1bb3:		sbc #$0d		; e9 0d
B27_1bb5:		bcc B27_1bc5 ; 90 0e

B27_1bb7:		asl a			; 0a
B27_1bb8:		tay				; a8 
B27_1bb9:		lda $0b			; a5 0b
B27_1bbb:		cmp #$a0		; c9 a0
B27_1bbd:		bcc B27_1bc0 ; 90 01

B27_1bbf:		iny				; c8 
B27_1bc0:		lda $bbc6, y	; b9 c6 bb
B27_1bc3:		sta $00			; 85 00
B27_1bc5:		rts				; 60 


B27_1bc6:	.db $02
B27_1bc7:		ora ($03, x)	; 01 03
B27_1bc9:	.db $04
B27_1bca:	.db $ff
B27_1bcb:	.db $ff
B27_1bcc:		.db $00				; 00
B27_1bcd:	.db $ff
B27_1bce:		.db $00				; 00
B27_1bcf:	.db $ff
B27_1bd0:	.db $ff
B27_1bd1:	.db $ff
B27_1bd2:	.db $ff
B27_1bd3:	.db $ff
B27_1bd4:	.db $12
B27_1bd5:		.db $00				; 00
B27_1bd6:	.db $ff
B27_1bd7:	.db $ff
B27_1bd8:		.db $00				; 00
B27_1bd9:	.db $ff
B27_1bda:	.db $ff
B27_1bdb:	.db $ff
B27_1bdc:	.db $ff
B27_1bdd:		.db $00				; 00
B27_1bde:	.db $ff
B27_1bdf:		.db $00				; 00
B27_1be0:	.db $ff
B27_1be1:		.db $00				; 00
B27_1be2:	.db $ff
B27_1be3:	.db $ff
B27_1be4:	.db $ff
B27_1be5:	.db $ff
B27_1be6:		.db $00				; 00
B27_1be7:	.db $ff
B27_1be8:	.db $ff
B27_1be9:	.db $ff
B27_1bea:	.db $ff
B27_1beb:		.db $00				; 00
B27_1bec:	.db $ff
B27_1bed:	.db $ff
B27_1bee:	.db $ff
B27_1bef:	.db $ff
B27_1bf0:	.db $ff
B27_1bf1:	.db $ff
B27_1bf2:		.db $00				; 00
B27_1bf3:	.db $ff
B27_1bf4:	.db $ff
B27_1bf5:	.db $ff
B27_1bf6:	.db $ff
B27_1bf7:	.db $ff
B27_1bf8:	.db $ff
B27_1bf9:	.db $ff
B27_1bfa:	.db $ff
B27_1bfb:	.db $ff
B27_1bfc:	.db $ff
B27_1bfd:	.db $ff
B27_1bfe:	.db $ff
B27_1bff:		.db $00				; 00
B27_1c00:	.db $ff
B27_1c01:	.db $ff
B27_1c02:	.db $ff
B27_1c03:	.db $ff
B27_1c04:	.db $ff
B27_1c05:	.db $ff
B27_1c06:	.db $ff
B27_1c07:	.db $ff
B27_1c08:	.db $12
B27_1c09:	.db $f3
B27_1c0a:	.db $0f
B27_1c0b:		.db $00				; 00
B27_1c0c:	.db $ff
B27_1c0d:	.db $ff
B27_1c0e:	.db $ff
B27_1c0f:	.db $ff
B27_1c10:	.db $ff
B27_1c11:	.db $ff
B27_1c12:		.db $00				; 00
B27_1c13:		beq B27_1c45 ; f0 30

B27_1c15:	.db $12
B27_1c16:	.db $ff
B27_1c17:		.db $00				; 00
B27_1c18:	.db $ff
B27_1c19:	.db $ff
B27_1c1a:	.db $ff
B27_1c1b:	.db $ff
B27_1c1c:	.db $ff
B27_1c1d:	.db $ff
B27_1c1e:	.db $ff
B27_1c1f:	.db $ff
B27_1c20:		.db $00				; 00
B27_1c21:	.db $ff
B27_1c22:	.db $ff
B27_1c23:	.db $ff
B27_1c24:	.db $ff
B27_1c25:	.db $ff
B27_1c26:	.db $ff
B27_1c27:	.db $34
B27_1c28:	.db $ff
B27_1c29:	.db $34
B27_1c2a:	.db $ff
B27_1c2b:	.db $34
B27_1c2c:	.db $ff
B27_1c2d:	.db $12
B27_1c2e:	.db $ff
B27_1c2f:	.db $12
B27_1c30:	.db $ff
B27_1c31:	.db $ff
B27_1c32:		.db $00				; 00
B27_1c33:	.db $ff
B27_1c34:	.db $12
B27_1c35:	.db $12
B27_1c36:	.db $12
B27_1c37:	.db $12
B27_1c38:	.db $12
B27_1c39:	.db $12
B27_1c3a:		ora wPPUCtrl			; 05 ff
B27_1c3c:	.db $ff
B27_1c3d:	.db $12
B27_1c3e:	.db $ff
B27_1c3f:	.db $12
B27_1c40:	.db $ff
B27_1c41:	.db $ff
B27_1c42:	.db $ff
B27_1c43:		;removed
	.db $50 $ff

B27_1c45:	.db $ff
B27_1c46:	.db $ff
B27_1c47:	.db $ff
B27_1c48:	.db $ff
B27_1c49:	.db $ff
B27_1c4a:	.db $ff
B27_1c4b:	.db $ff
B27_1c4c:	.db $ff
B27_1c4d:	.db $ff
B27_1c4e:		.db $00				; 00
B27_1c4f:	.db $ff
B27_1c50:	.db $12
B27_1c51:	.db $ff
B27_1c52:	.db $34
B27_1c53:	.db $ff
B27_1c54:	.db $12
B27_1c55:	.db $ff
B27_1c56:		.db $00				; 00
B27_1c57:	.db $ff
B27_1c58:	.db $ff
B27_1c59:	.db $ff
B27_1c5a:	.db $ff
B27_1c5b:	.db $ff
B27_1c5c:		lsr $78, x		; 56 78
B27_1c5e:		lsr $ff, x		; 56 ff
B27_1c60:	.db $ff
B27_1c61:	.db $ff
B27_1c62:	.db $ff
B27_1c63:	.db $ff
B27_1c64:	.db $ff
B27_1c65:	.db $ff
B27_1c66:	.db $ff
B27_1c67:		lsr $ff, x		; 56 ff
B27_1c69:	.db $ff
B27_1c6a:	.db $ff
B27_1c6b:		txs				; 9a 
B27_1c6c:	.db $ff
B27_1c6d:	.db $ff
B27_1c6e:	.db $ff
B27_1c6f:	.db $ff
B27_1c70:	.db $ff
B27_1c71:	.db $ff
B27_1c72:	.db $ff
B27_1c73:	.db $ff
B27_1c74:	.db $ff
B27_1c75:	.db $ff
B27_1c76:	.db $ff
B27_1c77:		ldy $ffbc, x	; bc bc ff
B27_1c7a:	.db $ff
B27_1c7b:	.db $ff
B27_1c7c:	.db $dc
B27_1c7d:		ldy $fffc, x	; bc fc ff
B27_1c80:		ldy $ffff, x	; bc ff ff
B27_1c83:	.db $dc
B27_1c84:		cpx $bcbc		; ec bc bc
B27_1c87:		ldy $ffff, x	; bc ff ff
B27_1c8a:	.db $23
B27_1c8b:		ora ($23), y	; 11 23
B27_1c8d:		dec $2311, x	; de 11 23
B27_1c90:		ora ($ff), y	; 11 ff
B27_1c92:	.db $ff
B27_1c93:		ora ($23), y	; 11 23
B27_1c95:		ora ($11), y	; 11 11
B27_1c97:	.db $23
B27_1c98:	.db $ff
B27_1c99:	.db $ff
B27_1c9a:	.db $ff
B27_1c9b:	.db $ff
B27_1c9c:	.db $ff
B27_1c9d:	.db $ff
B27_1c9e:	.db $ff
B27_1c9f:	.db $fb
B27_1ca0:	.db $ff
B27_1ca1:	.db $ff
B27_1ca2:		ora ($12, x)	; 01 12
B27_1ca4:	.db $ff
B27_1ca5:	.db $ff
B27_1ca6:	.db $34
B27_1ca7:	.db $ff
B27_1ca8:	.db $34
B27_1ca9:		lsr $01, x		; 56 01
B27_1cab:	.db $ff
B27_1cac:	.db $ff
B27_1cad:	.db $ff
B27_1cae:	.db $ff
B27_1caf:		sei				; 78 
B27_1cb0:	.db $34
B27_1cb1:		txs				; 9a 
B27_1cb2:	.db $ff
B27_1cb3:	.db $ff
B27_1cb4:		.db $00				; 00
B27_1cb5:		.db $00				; 00
B27_1cb6:		.db $00				; 00
B27_1cb7:	.db $ff
B27_1cb8:	.db $ff
B27_1cb9:	.db $ff
B27_1cba:		.db $00				; 00
B27_1cbb:		.db $00				; 00
B27_1cbc:	.db $ff
B27_1cbd:		.db $00				; 00
B27_1cbe:	.db $ff
B27_1cbf:	.db $ff
B27_1cc0:	.db $ff
B27_1cc1:	.db $ff
B27_1cc2:		cpx #$bc		; e0 bc
B27_1cc4:		cpx #$bc		; e0 bc
B27_1cc6:		cpx #$bc		; e0 bc
B27_1cc8:		cpx #$bc		; e0 bc
B27_1cca:		cpx #$bc		; e0 bc
B27_1ccc:		cpx #$bc		; e0 bc
B27_1cce:		cpx #$bc		; e0 bc
B27_1cd0:	.db $ef
B27_1cd1:		ldy $bd03, x	; bc 03 bd
B27_1cd4:		cpx #$bc		; e0 bc
B27_1cd6:		and ($bd, x)	; 21 bd
B27_1cd8:	.db $67
B27_1cd9:		lda $bce0, x	; bd e0 bc
B27_1cdc:		cpx #$bc		; e0 bc
B27_1cde:	.db $80
B27_1cdf:	.db $bd $00 $00
B27_1ce2:		.db $00				; 00
B27_1ce3:		.db $00				; 00
B27_1ce4:		.db $00				; 00
B27_1ce5:	.db $7c
B27_1ce6:		rol $3e7c, x	; 3e 7c 3e
B27_1ce9:		eor $7f, x		; 55 7f
B27_1ceb:		.db $00				; 00
B27_1cec:		ror $5500, x	; 7e 00 55
B27_1cef:		.db $00				; 00
B27_1cf0:		.db $00				; 00
B27_1cf1:		.db $00				; 00
B27_1cf2:		.db $00				; 00
B27_1cf3:		.db $00				; 00
B27_1cf4:	.db $80
B27_1cf5:		sta ($94, x)	; 81 94
B27_1cf7:		sta ($aa), y	; 91 aa
B27_1cf9:		ldy #$a1		; a0 a1
B27_1cfb:		bcs B27_1cae ; b0 b1

B27_1cfd:		tax				; aa 
B27_1cfe:	.db $77
B27_1cff:		.db $00				; 00
B27_1d00:		sty $95			; 84 95
B27_1d02:		tax				; aa 
B27_1d03:		.db $00				; 00
B27_1d04:		.db $00				; 00
B27_1d05:		.db $00				; 00
B27_1d06:		.db $00				; 00
B27_1d07:		.db $00				; 00
B27_1d08:		.db $00				; 00
B27_1d09:		.db $00				; 00
B27_1d0a:		sty $85			; 84 85
B27_1d0c:		tax				; aa 
B27_1d0d:		ldy $b400		; ac 00 b4
B27_1d10:		ldy $84ff		; ac ff 84
B27_1d13:		sta $94			; 85 94
B27_1d15:		sta $aa, x		; 95 aa
B27_1d17:		stx $3f			; 86 3f
B27_1d19:		stx $ac, y		; 96 ac
B27_1d1b:	.db $ff
B27_1d1c:		.db $00				; 00
B27_1d1d:	.db $ac $ac $00
B27_1d20:	.db $ff
B27_1d21:		.db $00				; 00
B27_1d22:		.db $00				; 00
B27_1d23:		.db $00				; 00
B27_1d24:		.db $00				; 00
B27_1d25:		.db $00				; 00
B27_1d26:		eor $5d4c		; 4d 4c 5d
B27_1d29:	.db $5f
B27_1d2a:	.db $ff
B27_1d2b:		.db $00				; 00
B27_1d2c:		.db $00				; 00
B27_1d2d:		lsr $ff00, x	; 5e 00 ff
B27_1d30:		eor $4c5f, x	; 5d 5f 4c
B27_1d33:	.db $4f
B27_1d34:	.db $ff
B27_1d35:	.db $4f
B27_1d36:		jmp $5d5f		; 4c 5f 5d


B27_1d39:	.db $ff
B27_1d3a:	.db $5d $00 $00
B27_1d3d:		eor $5d55		; 4d 55 5d
B27_1d40:		.db $00				; 00
B27_1d41:		jmp $555c		; 4c 5c 55


B27_1d44:		eor $5d4c		; 4d 4c 5d
B27_1d47:	.db $5f
B27_1d48:		eor $4f, x		; 55 4f
B27_1d4a:	.db $5f
B27_1d4b:		lsr $555d, x	; 5e 5d 55
B27_1d4e:	.db $6b
B27_1d4f:		dey				; 88 
B27_1d50:	.db $7c
B27_1d51:		ror a			; 6a
B27_1d52:		eor $7e, x		; 55 7e
B27_1d54:	.db $7f
B27_1d55:	.db $89
B27_1d56:		ror $8055, x	; 7e 55 80
B27_1d59:		sta ($90, x)	; 81 90
B27_1d5b:		sta ($aa), y	; 91 aa
B27_1d5d:		sta ($82, x)	; 81 82
B27_1d5f:		sta ($92), y	; 91 92
B27_1d61:		tax				; aa 
B27_1d62:	.db $80
B27_1d63:		sta ($84, x)	; 81 84
B27_1d65:		sta ($aa), y	; 91 aa
B27_1d67:		.db $00				; 00
B27_1d68:		.db $00				; 00
B27_1d69:		.db $00				; 00
B27_1d6a:		.db $00				; 00
B27_1d6b:		.db $00				; 00
B27_1d6c:		rti				; 40 


B27_1d6d:		eor ($50, x)	; 41 50
B27_1d6f:		eor ($55), y	; 51 55
B27_1d71:		sty $85			; 84 85
B27_1d73:		sty $95, x		; 94 95
B27_1d75:		eor $86, x		; 55 86
B27_1d77:	.db $87
B27_1d78:		stx $97, y		; 96 97
B27_1d7a:		eor $49, x		; 55 49
B27_1d7c:		eor #$48		; 49 48
B27_1d7e:		pha				; 48 
B27_1d7f:		eor $00, x		; 55 00
B27_1d81:		.db $00				; 00
B27_1d82:		.db $00				; 00
B27_1d83:		.db $00				; 00
B27_1d84:		.db $00				; 00
B27_1d85:		.db $00				; 00
B27_1d86:		jmp $4c00		; 4c 00 4c


B27_1d89:		tax				; aa 
B27_1d8a:	.db $4f
B27_1d8b:		.db $00				; 00
B27_1d8c:	.db $4f
B27_1d8d:		.db $00				; 00
B27_1d8e:		tax				; aa 
B27_1d8f:		tay				; a8 
B27_1d90:		lda #$92		; a9 92
B27_1d92:		;removed
	.db $b0 $ff

B27_1d94:		stx $00, y		; 96 00
B27_1d96:		ldx $00			; a6 00
B27_1d98:	.db $ff
B27_1d99:		.db $00				; 00
B27_1d9a:	.db $a3
B27_1d9b:		.db $00				; 00
B27_1d9c:		sta ($55), y	; 91 55
B27_1d9e:	.db $b7
B27_1d9f:		.db $00				; 00
B27_1da0:		rol $5500, x	; 3e 00 55
B27_1da3:		.db $00				; 00
B27_1da4:		.db $00				; 00
B27_1da5:	.db $9b
B27_1da6:		tax				; aa 
B27_1da7:	.db $ff
B27_1da8:		stx $ab9c		; 8e 9c ab
B27_1dab:	.db $9c
B27_1dac:	.db $ff
B27_1dad:	.db $9c
B27_1dae:		plp				; 28 
B27_1daf:	.db $9b
B27_1db0:	.db $39 $ff $00
B27_1db3:		tax				; aa 
B27_1db4:	.db $8f
B27_1db5:		plp				; 28 
B27_1db6:	.db $ff
B27_1db7:		rol $3e00, x	; 3e 00 3e
B27_1dba:		.db $00				; 00
B27_1dbb:		eor $a9, x		; 55 a9
B27_1dbd:		ora ($20, x)	; 01 20
B27_1dbf:	.db $14
B27_1dc0:	.db $ed $a9 $00
B27_1dc3:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dc6:		lda #$23		; a9 23
B27_1dc8:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dcb:		lda #$bc		; a9 bc
B27_1dcd:		sta $03			; 85 03
B27_1dcf:		ldy #$00		; a0 00
B27_1dd1:		lda $03			; a5 03
B27_1dd3:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dd6:		clc				; 18 
B27_1dd7:		adc #$02		; 69 02
B27_1dd9:		jsr storeByteInVramQueue		; 20 14 ed
B27_1ddc:		iny				; c8 
B27_1ddd:		cpy #$20		; c0 20
B27_1ddf:		bcs B27_1dec ; b0 0b

B27_1de1:		cpy #$10		; c0 10
B27_1de3:		bne B27_1dd1 ; d0 ec

B27_1de5:		lda #$bd		; a9 bd
B27_1de7:		sta $03			; 85 03
B27_1de9:		jmp $bdd1		; 4c d1 bd


B27_1dec:		jmp terminateVramQueue		; 4c 12 ed


B27_1def:		lda $07f0		; ad f0 07
B27_1df2:		bmi B27_1dfe ; 30 0a

B27_1df4:		ora #$80		; 09 80
B27_1df6:		sta $07f0		; 8d f0 07
B27_1df9:		lda #$00		; a9 00
B27_1dfb:		sta $07f1		; 8d f1 07
B27_1dfe:		lda $07f0		; ad f0 07
B27_1e01:		asl a			; 0a
B27_1e02:		tay				; a8 
B27_1e03:		lda #$00		; a9 00
B27_1e05:		sta $01			; 85 01
B27_1e07:		lda $07f1		; ad f1 07
B27_1e0a:		asl a			; 0a
B27_1e0b:		rol $01			; 26 01
B27_1e0d:		asl a			; 0a
B27_1e0e:		rol $01			; 26 01
B27_1e10:		asl a			; 0a
B27_1e11:		rol $01			; 26 01
B27_1e13:		asl a			; 0a
B27_1e14:		rol $01			; 26 01
B27_1e16:		asl a			; 0a
B27_1e17:		rol $01			; 26 01
B27_1e19:		sta $00			; 85 00
B27_1e1b:		clc				; 18 
B27_1e1c:		lda $be5d, y	; b9 5d be
B27_1e1f:		adc $00			; 65 00
B27_1e21:		sta $00			; 85 00
B27_1e23:		lda $be5e, y	; b9 5e be
B27_1e26:		adc $01			; 65 01
B27_1e28:		sta $01			; 85 01
B27_1e2a:		lda #$01		; a9 01
B27_1e2c:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e2f:		lda $00			; a5 00
B27_1e31:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e34:		lda $01			; a5 01
B27_1e36:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e39:		ldy #$20		; a0 20
B27_1e3b:		lda #$00		; a9 00
B27_1e3d:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e40:		dey				; 88 
B27_1e41:		bne B27_1e3d ; d0 fa

B27_1e43:		jsr terminateVramQueue		; 20 12 ed
B27_1e46:		lda $07f0		; ad f0 07
B27_1e49:		and #$7f		; 29 7f
B27_1e4b:		tay				; a8 
B27_1e4c:		inc $07f1		; ee f1 07
B27_1e4f:		lda $07f1		; ad f1 07
B27_1e52:		cmp $be61, y	; d9 61 be
B27_1e55:		bcc B27_1e5c ; 90 05

B27_1e57:		lda #$ff		; a9 ff
B27_1e59:		sta $07f1		; 8d f1 07
B27_1e5c:		rts				; 60 


B27_1e5d:		cpy #$20		; c0 20
B27_1e5f:		.db $00				; 00
B27_1e60:		bit $1e			; 24 1e
B27_1e62:		.db $20


.ifdef SEPARATED_LAMP_GFX
changeLampGfx:
	cmp #$f1
	beq +
	cmp #$f3
	bne @done
+
	pha
	txa
	pha

	ldx $05
	lda $5d8, x
	sbc #$9f ; last weapon contents is 9e
	bcc +
	pla
	tax
	pla
	sbc #$04
	bne @done
+
	pla
	tax
	pla
@done:
	sta wOam.tile.w, x
	rts
.endif