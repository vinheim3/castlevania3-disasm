
gameStateD_body:
B21_1631:		lda wGameSubstate			; a5 19
B21_1633:		jsr jumpTablePreserveY		; 20 6d e8

	.dw gameStateD_substate0
	.dw gameStateD_substate1
	.dw gameStateD_substate2
	.dw gameStateD_substate3
	.dw gameStateD_substate4
	.dw gameStateD_substate5
	.dw gameStateD_substate6
	.dw gameStateD_substate7
	.dw gameStateD_substate8
	.dw gameStateD_substate9
	.dw gameStateD_substateA
	.dw gameStateD_substateB

gameStateD_set6bTo0:
B21_164e:		lda #$00		; a9 00
B21_1650:		sta $6b			; 85 6b
B21_1652:		rts				; 60 


func_15_1653:
B21_1653:		lda #$08		; a9 08
B21_1655:		sta $64			; 85 64
B21_1657:		lda $59			; a5 59
B21_1659:		clc				; 18 
B21_165a:		adc #$02		; 69 02
B21_165c:		sta $5a			; 85 5a
B21_165e:		rts				; 60 


gameStateD_setB4wordTo100h:
B21_165f:		ldy #$00		; a0 00
B21_1661:		sty $b4			; 84 b4
B21_1663:		iny				; c8 
B21_1664:		sty $b5			; 84 b5
B21_1666:		rts				; 60 


func_15_1667:
B21_1667:		lda $07a1		; ad a1 07
B21_166a:		beq B21_1679 ; f0 0d

B21_166c:		lda #$ff		; a9 ff
B21_166e:		sta $12			; 85 12
B21_1670:		lda #$ff		; a9 ff
B21_1672:		sta $11			; 85 11
B21_1674:		lda #$00		; a9 00
B21_1676:		sta $10			; 85 10
B21_1678:		rts				; 60 


B21_1679:		lda #$00		; a9 00
B21_167b:		sta $12			; 85 12
B21_167d:		lda #$01		; a9 01
B21_167f:		sta $11			; 85 11
B21_1681:		lda #$00		; a9 00
B21_1683:		sta $10			; 85 10
B21_1685:		rts				; 60 


func_15_1686:
B21_1686:		lda $07a2		; ad a2 07
B21_1689:		clc				; 18 
B21_168a:		adc $10			; 65 10
B21_168c:		sta $07a2		; 8d a2 07
B21_168f:		lda $07a3		; ad a3 07
B21_1692:		adc $11			; 65 11
B21_1694:		sta $07a3		; 8d a3 07
B21_1697:		lda $07a4		; ad a4 07
B21_169a:		adc $12			; 65 12
B21_169c:		sta $07a4		; 8d a4 07
B21_169f:		rts				; 60 


func_15_16a0:
B21_16a0:		ldx #$01		; a2 01
B21_16a2:		lda $054e, x	; bd 4e 05
B21_16a5:		bne B21_16ad ; d0 06

B21_16a7:		inx				; e8 
B21_16a8:		cpx #$17		; e0 17
B21_16aa:		bcc B21_16a2 ; 90 f6

B21_16ac:		rts				; 60 

B21_16ad:		sec				; 38 
B21_16ae:		lda $04c4, x	; bd c4 04
B21_16b1:		sbc $10			; e5 10
B21_16b3:		sta $04c4, x	; 9d c4 04
B21_16b6:		lda wEntityBaseX.w, x	; bd 38 04
B21_16b9:		sbc $11			; e5 11
B21_16bb:		sta wEntityBaseX.w, x	; 9d 38 04
B21_16be:		bcs B21_16c6 ; b0 06

B21_16c0:		lda $12			; a5 12
B21_16c2:		bmi B21_16a7 ; 30 e3

B21_16c4:		bpl B21_16ca ; 10 04

B21_16c6:		lda $12			; a5 12
B21_16c8:		bpl B21_16a7 ; 10 dd

B21_16ca:		lda #$00		; a9 00
B21_16cc:		sta wOamSpecIdx.w, x	; 9d 00 04
B21_16cf:		sta $054e, x	; 9d 4e 05
B21_16d2:		jmp $b6a7		; 4c a7 b6


gameStateD_substate0:
B21_16d5:		jsr setBank_c000_toRom1eh		; 20 da e2
B21_16d8:		jsr func_1f_0666		; 20 66 e6
B21_16db:		lda $25			; a5 25
B21_16dd:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B21_16e0:		lda $0781		; ad 81 07
B21_16e3:		pha				; 48 
B21_16e4:		jsr func_1f_0828		; 20 28 e8
B21_16e7:		pla				; 68 
B21_16e8:		sta $0781		; 8d 81 07
B21_16eb:		jsr func_1f_0bfd		; 20 fd eb
B21_16ee:		inc wGameSubstate			; e6 19
B21_16f0:		rts				; 60 


gameStateD_substate1:
B21_16f1:		lda #$69		; a9 69
B21_16f3:		jsr playSound		; 20 5f e2
B21_16f6:		jsr gameStateD_set6bTo0		; 20 4e b6
B21_16f9:		inc wGameSubstate			; e6 19
B21_16fb:		rts				; 60 


gameStateD_substate2:
B21_16fc:		jsr func_15_17ee		; 20 ee b7
B21_16ff:		lda $6b			; a5 6b
B21_1701:		cmp #$ff		; c9 ff
B21_1703:		bne B21_1707 ; d0 02

B21_1705:		inc wGameSubstate			; e6 19

B21_1707:		rts				; 60 


gameStateD_substate3:
B21_1708:		lda #$02		; a9 02
B21_170a:		sta $1c			; 85 1c
B21_170c:		jsr func_15_19d8		; 20 d8 b9
B21_170f:		bcs B21_1712 ; b0 01

B21_1711:		rts				; 60 

B21_1712:		jsr func_1f_07f7		; 20 f7 e7
B21_1715:		lda #$6e		; a9 6e
B21_1717:		sta wChrBankBG_0800			; 85 4c
B21_1719:		lda #$30		; a9 30
B21_171b:		sta wGenericStateTimer			; 85 30
B21_171d:		lda #$00		; a9 00
B21_171f:		sta wScrollY			; 85 fc
B21_1721:		sta wScrollX			; 85 fd
B21_1723:		lda #$b1		; a9 b1
B21_1725:		sta $ff			; 85 ff
B21_1727:		ldx #$90		; a2 90
B21_1729:		lda #$5b		; a9 5b
B21_172b:		jsr displayStaticLayoutAbankX		; 20 dc ec
B21_172e:		inc wGameSubstate			; e6 19

B21_1730:		rts				; 60 


gameStateD_substate4:
gameStateD_substate9:
B21_1731:		dec wGenericStateTimer			; c6 30
B21_1733:		bne B21_1730 ; d0 fb

B21_1735:		jsr gameStateD_setB4wordTo100h		; 20 5f b6
B21_1738:		lda #$78		; a9 78
B21_173a:		sta wGenericStateTimer			; 85 30
B21_173c:		inc wGameSubstate			; e6 19
B21_173e:		rts				; 60 


gameStateD_substate5:
gameStateD_substateA:
B21_173f:		dec wGenericStateTimer			; c6 30
B21_1741:		bne B21_174a ; d0 07

B21_1743:		lda #$78		; a9 78
B21_1745:		sta wGenericStateTimer			; 85 30
B21_1747:		inc wGameSubstate			; e6 19
B21_1749:		rts				; 60 

B21_174a:		lda $b4			; a5 b4
B21_174c:		cmp #$ff		; c9 ff
B21_174e:		beq B21_1749 ; f0 f9

B21_1750:		lda $1d			; a5 1d
B21_1752:		pha				; 48 
B21_1753:		lda #$5d		; a9 5d
B21_1755:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1758:		lda #$0a		; a9 0a
B21_175a:		jsr displayStaticLayoutA		; 20 e9 ec
B21_175d:		lda #$04		; a9 04
B21_175f:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1762:		pla				; 68 
B21_1763:		sta $15			; 85 15
B21_1765:		lda #$07		; a9 07
B21_1767:		jsr func_15_15ff		; 20 ff b5
B21_176a:		lda $b4			; a5 b4
B21_176c:		cmp #$ff		; c9 ff
B21_176e:		bne B21_1749 ; d0 d9

B21_1770:		lda $15			; a5 15
B21_1772:		sta $1d			; 85 1d
B21_1774:		lda #$5d		; a9 5d
B21_1776:		jmp displayStaticLayoutA		; 4c e9 ec


gameStateD_substate6:
B21_1779:		dec wGenericStateTimer			; c6 30
B21_177b:		bne B21_1786 ; d0 09

B21_177d:		jsr gameStateD_setB4wordTo100h		; 20 5f b6
B21_1780:		lda #$78		; a9 78
B21_1782:		sta wGenericStateTimer			; 85 30
B21_1784:		inc wGameSubstate			; e6 19
B21_1786:		rts				; 60 


gameStateD_substate7:
B21_1787:		dec wGenericStateTimer			; c6 30
B21_1789:		bne B21_1793 ; d0 08

B21_178b:		lda #$00		; a9 00
B21_178d:		sta $07a6		; 8d a6 07
B21_1790:		inc wGameSubstate			; e6 19
B21_1792:		rts				; 60 

B21_1793:		lda $b4			; a5 b4
B21_1795:		cmp #$ff		; c9 ff
B21_1797:		beq B21_1792 ; f0 f9

B21_1799:		lda $1d			; a5 1d
B21_179b:		pha				; 48 
B21_179c:		lda #$5d		; a9 5d
B21_179e:		jsr displayStaticLayoutA		; 20 e9 ec
B21_17a1:		lda #$0a		; a9 0a
B21_17a3:		jsr displayStaticLayoutA		; 20 e9 ec
B21_17a6:		lda #$04		; a9 04
B21_17a8:		jsr displayStaticLayoutA		; 20 e9 ec
B21_17ab:		pla				; 68 
B21_17ac:		sta $15			; 85 15
B21_17ae:		lda #$08		; a9 08
B21_17b0:		jmp func_15_15ff		; 4c ff b5


gameStateD_substate8:
B21_17b3:		jsr func_15_19d8		; 20 d8 b9
B21_17b6:		bcs B21_17b9 ; b0 01

B21_17b8:		rts				; 60 

B21_17b9:		lda #$08		; a9 08
B21_17bb:		sta wGenericStateTimer			; 85 30
B21_17bd:		ldx #$90		; a2 90
B21_17bf:		lda #$5c		; a9 5c
B21_17c1:		jsr displayStaticLayoutAbankX		; 20 dc ec
B21_17c4:		inc wGameSubstate			; e6 19
B21_17c6:		rts				; 60 


gameStateD_substateB:
B21_17c7:		lda wJoy1NewButtonsPressed			; a5 26
B21_17c9:		and #PADF_START		; 29 10
B21_17cb:		bne B21_17ce ; d0 01

B21_17cd:		rts				; 60 

B21_17ce:		lda #$01		; a9 01
B21_17d0:		sta $07f6		; 8d f6 07
B21_17d3:		lda #$00		; a9 00
B21_17d5:		sta wCurrRoomGroup			; 85 32
B21_17d7:		sta wCurrRoomSection			; 85 33
B21_17d9:		sta wCurrRoomIdx			; 85 34
B21_17db:		sta $2f			; 85 2f
B21_17dd:		ldy $3b			; a4 3b
B21_17df:		lda $39.w, y
B21_17e2:		sta wCurrPlayer.w		; 8d 4e 05
B21_17e5:		lda #GS_IN_GAME		; a9 04
B21_17e7:		sta wGameState			; 85 18
B21_17e9:		lda #$1f		; a9 1f
B21_17eb:		sta wInGameSubstate			; 85 2a
B21_17ed:		rts				; 60 


func_15_17ee:
B21_17ee:		lda $6b			; a5 6b
B21_17f0:		jsr jumpTablePreserveY		; 20 6d e8
	.dw gameStateD_6b_0
	.dw gameStateD_6b_1
	.dw gameStateD_6b_2
	.dw gameStateD_6b_3
	.dw gameStateD_6b_4
	.dw gameStateD_6b_5
	.dw gameStateD_6b_6
	.dw gameStateD_6b_7
	.dw gameStateD_6b_8
	.dw gameStateD_6b_9
	.dw gameStateD_6b_A

gameStateD_6b_0:
B21_1809:		lda #$02		; a9 02
B21_180b:		sta $1c			; 85 1c
B21_180d:		jsr func_15_19d8		; 20 d8 b9
B21_1810:		bcs B21_1813 ; b0 01

B21_1812:		rts				; 60 

B21_1813:		jsr func_1f_07f7		; 20 f7 e7
B21_1816:		jsr func_15_195c		; 20 5c b9
B21_1819:		lda #$b0		; a9 b0
B21_181b:		sta $ff			; 85 ff
B21_181d:		lda #$00		; a9 00
B21_181f:		sta wScrollX			; 85 fd
B21_1821:		lda #$10		; a9 10
B21_1823:		sta wScrollY			; 85 fc
B21_1825:		lda #$00		; a9 00
B21_1827:		jsr func_15_15ff		; 20 ff b5
B21_182a:		lda #$01		; a9 01
B21_182c:		jsr func_15_15ff		; 20 ff b5
B21_182f:		lda #$02		; a9 02
B21_1831:		jsr func_15_15ff		; 20 ff b5
B21_1834:		lda #$06		; a9 06
B21_1836:		jsr func_15_15ff		; 20 ff b5
B21_1839:		lda #$37		; a9 37
B21_183b:		sta wChrBankBG_0c00			; 85 4d
B21_183d:		lda #$03		; a9 03
B21_183f:		jsr func_15_15ff		; 20 ff b5
B21_1842:		lda #$04		; a9 04
B21_1844:		jsr func_15_15ff		; 20 ff b5
B21_1847:		jsr func_15_1653		; 20 53 b6
B21_184a:		inc $6b			; e6 6b
B21_184c:		rts				; 60 


gameStateD_6b_1:
B21_184d:		lda #$02		; a9 02
B21_184f:		sta $1c			; 85 1c
B21_1851:		lda #$05		; a9 05
B21_1853:		jsr func_15_15ff		; 20 ff b5
B21_1856:		bcs B21_1859 ; b0 01

B21_1858:		rts				; 60 

B21_1859:		jsr gameStateD_setB4wordTo100h		; 20 5f b6
B21_185c:		lda #$78		; a9 78
B21_185e:		sta wGenericStateTimer			; 85 30
B21_1860:		inc $6b			; e6 6b
B21_1862:		rts				; 60 


gameStateD_6b_2:
B21_1863:		dec wGenericStateTimer			; c6 30
B21_1865:		bne B21_186e ; d0 07

B21_1867:		lda #$78		; a9 78
B21_1869:		sta wGenericStateTimer			; 85 30
B21_186b:		inc $6b			; e6 6b
B21_186d:		rts				; 60 

B21_186e:		lda $b4			; a5 b4
B21_1870:		cmp #$ff		; c9 ff
B21_1872:		beq B21_186d ; f0 f9

B21_1874:		lda $1d			; a5 1d
B21_1876:		pha				; 48 
B21_1877:		lda #$00		; a9 00
B21_1879:		jsr func_15_15ff		; 20 ff b5
B21_187c:		pla				; 68 
B21_187d:		sta $15			; 85 15
B21_187f:		lda #$07		; a9 07
B21_1881:		jsr func_15_15ff		; 20 ff b5
B21_1884:		lda $b4			; a5 b4
B21_1886:		cmp #$ff		; c9 ff
B21_1888:		bne B21_186d ; d0 e3

B21_188a:		lda $15			; a5 15
B21_188c:		sta $1d			; 85 1d
B21_188e:		lda #$00		; a9 00
B21_1890:		jmp func_15_15ff		; 4c ff b5


gameStateD_6b_3:
B21_1893:		dec wGenericStateTimer			; c6 30
B21_1895:		beq B21_1898 ; f0 01

B21_1897:		rts				; 60 

B21_1898:		lda #$00		; a9 00
B21_189a:		sta $07a5		; 8d a5 07
B21_189d:		inc $6b			; e6 6b
B21_189f:		rts				; 60 


gameStateD_6b_4:
B21_18a0:		jsr func_15_1a31		; 20 31 ba
B21_18a3:		bcs B21_18a6 ; b0 01

B21_18a5:		rts				; 60 

B21_18a6:		lda $07a0		; ad a0 07
B21_18a9:		cmp #$04		; c9 04
B21_18ab:		bne B21_18b0 ; d0 03

B21_18ad:		jsr func_15_18c2		; 20 c2 b8
B21_18b0:		lda #$00		; a9 00
B21_18b2:		sta $07a2		; 8d a2 07
B21_18b5:		sta $07a3		; 8d a3 07
B21_18b8:		sta $07a4		; 8d a4 07
B21_18bb:		lda #$80		; a9 80
B21_18bd:		sta wGenericStateTimer			; 85 30
B21_18bf:		inc $6b			; e6 6b
B21_18c1:		rts				; 60 


func_15_18c2:
B21_18c2:		lda #$a2		; a9 a2
B21_18c4:		sta $61			; 85 61
B21_18c6:		lda #$26		; a9 26
B21_18c8:		sta $62			; 85 62
B21_18ca:		jsr func_1f_08b5		; 20 b5 e8
B21_18cd:		ldy #$00		; a0 00
B21_18cf:		lda $07f8, y	; b9 f8 07
B21_18d2:		beq B21_18db ; f0 07

B21_18d4:		cmp #$4b		; c9 4b
B21_18d6:		beq B21_18e7 ; f0 0f

B21_18d8:		clc				; 18 
B21_18d9:		adc #$70		; 69 70
B21_18db:		sta wVramQueue.w, x	; 9d 00 03
B21_18de:		inx				; e8 
B21_18df:		iny				; c8 
B21_18e0:		cpy #$08		; c0 08
B21_18e2:		bcc B21_18cf ; 90 eb

B21_18e4:		jmp setVramQueueNextFillIdxAndTerminate		; 4c de e8

B21_18e7:		lda #$f9		; a9 f9
B21_18e9:		bne B21_18db ; d0 f0

gameStateD_6b_5:
B21_18eb:		dec wGenericStateTimer			; c6 30
B21_18ed:		bne B21_18f2 ; d0 03

B21_18ef:		inc $6b			; e6 6b
B21_18f1:		rts				; 60 

B21_18f2:		jsr func_15_1667		; 20 67 b6
B21_18f5:		jsr func_15_1686		; 20 86 b6
B21_18f8:		jsr func_15_16a0		; 20 a0 b6
B21_18fb:		lda $07a3		; ad a3 07
B21_18fe:		sta wScrollX			; 85 fd
B21_1900:		lda $07a4		; ad a4 07
B21_1903:		and #$01		; 29 01
B21_1905:		sta $00			; 85 00
B21_1907:		lda $ff			; a5 ff
B21_1909:		and #$fe		; 29 fe
B21_190b:		ora $00			; 05 00
B21_190d:		sta $ff			; 85 ff
B21_190f:		rts				; 60 


gameStateD_6b_6:
B21_1910:		lda #$e0		; a9 e0
B21_1912:		sta wGenericStateTimer			; 85 30
B21_1914:		inc $6b			; e6 6b
B21_1916:		rts				; 60 


gameStateD_6b_7:
B21_1917:		dec wGenericStateTimer			; c6 30
B21_1919:		beq B21_191c ; f0 01

B21_191b:		rts				; 60 

B21_191c:		jsr gameStateD_setB4wordTo100h		; 20 5f b6
B21_191f:		lda #$78		; a9 78
B21_1921:		sta wGenericStateTimer			; 85 30
B21_1923:		inc $6b			; e6 6b
B21_1925:		rts				; 60 


gameStateD_6b_8:
B21_1926:		dec wGenericStateTimer			; c6 30
B21_1928:		bne B21_192d ; d0 03

B21_192a:		inc $6b			; e6 6b
B21_192c:		rts				; 60 

B21_192d:		lda $b4			; a5 b4
B21_192f:		cmp #$ff		; c9 ff
B21_1931:		beq B21_192c ; f0 f9

B21_1933:		lda $1d			; a5 1d
B21_1935:		pha				; 48 
B21_1936:		lda #$00		; a9 00
B21_1938:		jsr func_15_15ff		; 20 ff b5
B21_193b:		pla				; 68 
B21_193c:		sta $15			; 85 15
B21_193e:		lda #$08		; a9 08
B21_1940:		jmp func_15_15ff		; 4c ff b5


gameStateD_6b_9:
B21_1943:		lda #$00		; a9 00
B21_1945:		sta $07a6		; 8d a6 07
B21_1948:		inc $07a0		; ee a0 07
B21_194b:		lda $07a0		; ad a0 07
B21_194e:		cmp #$05		; c9 05
B21_1950:		bne B21_1956 ; d0 04

B21_1952:		lda #$ff		; a9 ff
B21_1954:		bne B21_1958 ; d0 02

B21_1956:		lda #$00		; a9 00
B21_1958:		sta $6b			; 85 6b
B21_195a:		rts				; 60 


gameStateD_6b_A:
B21_195b:		rts				; 60 


func_15_195c:
B21_195c:		lda $07a0		; ad a0 07
B21_195f:		asl a			; 0a
B21_1960:		tay				; a8 
B21_1961:		lda $ba27, y	; b9 27 ba
B21_1964:		sta $08			; 85 08
B21_1966:		lda $ba28, y	; b9 28 ba
B21_1969:		sta $09			; 85 09
B21_196b:		ldy #$00		; a0 00
B21_196d:		jsr func_1f_1b95		; 20 95 fb
B21_1970:		lsr a			; 4a
B21_1971:		lsr a			; 4a
B21_1972:		lsr a			; 4a
B21_1973:		lsr a			; 4a
B21_1974:		sta wCurrRoomGroup			; 85 32
B21_1976:		jsr func_1f_1b95		; 20 95 fb
B21_1979:		and #$0f		; 29 0f
B21_197b:		sta wCurrRoomSection			; 85 33
B21_197d:		iny				; c8 
B21_197e:		jsr func_1f_1b95		; 20 95 fb
B21_1981:		lsr a			; 4a
B21_1982:		lsr a			; 4a
B21_1983:		lsr a			; 4a
B21_1984:		lsr a			; 4a
B21_1985:		sta wCurrRoomIdx			; 85 34
B21_1987:		jsr func_1f_1b95		; 20 95 fb
B21_198a:		and #$0f		; 29 0f
B21_198c:		sta $57			; 85 57
B21_198e:		and #$01		; 29 01
B21_1990:		sta $75			; 85 75
B21_1992:		lda #$00		; a9 00
B21_1994:		sta $56			; 85 56
B21_1996:		iny				; c8 
B21_1997:		jsr func_1f_1b95		; 20 95 fb
B21_199a:		sta $07a1		; 8d a1 07
B21_199d:		iny				; c8 
B21_199e:		jsr func_1f_1b95		; 20 95 fb
B21_19a1:		sta wCurrPlayer.w		; 8d 4e 05
B21_19a4:		iny				; c8 
B21_19a5:		ldx #$01		; a2 01

@loop:
B21_19a7:		jsr func_1f_1b95		; 20 95 fb
B21_19aa:		cmp #$ff		; c9 ff
B21_19ac:		beq B21_19d7 ; f0 29

B21_19ae:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B21_19b1:		iny				; c8 
B21_19b2:		jsr func_1f_1b95		; 20 95 fb
B21_19b5:		sta wOamSpecIdx.w, x	; 9d 00 04
B21_19b8:		iny				; c8 
B21_19b9:		jsr func_1f_1b95		; 20 95 fb
B21_19bc:		sta wEntityBaseX.w, x	; 9d 38 04
B21_19bf:		iny				; c8 
B21_19c0:		jsr func_1f_1b95		; 20 95 fb
B21_19c3:		sta wEntityBaseY.w, x	; 9d 1c 04
B21_19c6:		iny				; c8 
B21_19c7:		jsr func_1f_1b95		; 20 95 fb
B21_19ca:		sta wEntityXFlipped.w, x	; 9d a8 04
B21_19cd:		iny				; c8 
B21_19ce:		lda #$01		; a9 01
B21_19d0:		sta $054e, x	; 9d 4e 05
B21_19d3:		inx				; e8 
B21_19d4:		jmp B21_19a7		; @loop


B21_19d7:		rts				; 60 


func_15_19d8:
B21_19d8:		lda $07a6		; ad a6 07
B21_19db:		asl a			; 0a
B21_19dc:		clc				; 18 
B21_19dd:		adc $07a6		; 6d a6 07
B21_19e0:		tay				; a8 
B21_19e1:		lda $ba0b, y	; b9 0b ba
B21_19e4:		cmp #$ff		; c9 ff
B21_19e6:		beq B21_1a09 ; f0 21

B21_19e8:		sta $62			; 85 62
B21_19ea:		lda $ba0c, y	; b9 0c ba
B21_19ed:		sta $61			; 85 61
B21_19ef:		lda $ba0d, y	; b9 0d ba
B21_19f2:		sta $10			; 85 10
B21_19f4:		jsr func_1f_08b5		; 20 b5 e8
B21_19f7:		lda #$00		; a9 00
B21_19f9:		sta wVramQueue.w, x	; 9d 00 03
B21_19fc:		inx				; e8 
B21_19fd:		dec $10			; c6 10
B21_19ff:		bne B21_19f9 ; d0 f8

B21_1a01:		jsr setVramQueueNextFillIdxAndTerminate		; 20 de e8
B21_1a04:		inc $07a6		; ee a6 07
B21_1a07:		clc				; 18 
B21_1a08:		rts				; 60 


B21_1a09:		sec				; 38 
B21_1a0a:		rts				; 60 


B21_1a0b:		bit $c0			; 24 c0
B21_1a0d:		rti				; 40 


B21_1a0e:		and $00			; 25 00
B21_1a10:		rti				; 40 


B21_1a11:		and $40			; 25 40
B21_1a13:		rti				; 40 


B21_1a14:		and $80			; 25 80
B21_1a16:		rti				; 40 


B21_1a17:		and $c0			; 25 c0
B21_1a19:		rti				; 40 


B21_1a1a:		rol $00			; 26 00
B21_1a1c:		rti				; 40 


B21_1a1d:		rol $40			; 26 40
B21_1a1f:		rti				; 40 


B21_1a20:		rol $80			; 26 80
B21_1a22:		rti				; 40 


B21_1a23:		rol $c0			; 26 c0
B21_1a25:		rti				; 40 


B21_1a26:	.db $ff
B21_1a27:		asl $bf, x		; 16 bf
B21_1a29:		eor $75bf		; 4d bf 75
B21_1a2c:	.db $bf
B21_1a2d:		sbc $8ebe, x	; fd be 8e
B21_1a30:	.db $bf


func_15_1a31:
B21_1a31:		lda $07f6		; ad f6 07
B21_1a34:		bne B21_1a3f ; d0 09

B21_1a36:		lda $0781		; ad 81 07
B21_1a39:		bne B21_1a3f ; d0 04

B21_1a3b:		ldy #$00		; a0 00
B21_1a3d:		beq B21_1a41 ; f0 02

B21_1a3f:		ldy #$02		; a0 02
B21_1a41:		lda data_15_1a6e.w, y	; b9 6e ba
B21_1a44:		sta $08			; 85 08
B21_1a46:		lda data_15_1a6e.w+1, y	; b9 6f ba
B21_1a49:		sta $09			; 85 09
B21_1a4b:		lda $07a0		; ad a0 07
B21_1a4e:		asl a			; 0a
B21_1a4f:		tay				; a8 
B21_1a50:		lda ($08), y	; b1 08
B21_1a52:		sta $0a			; 85 0a
B21_1a54:		iny				; c8 
B21_1a55:		lda ($08), y	; b1 08
B21_1a57:		sta $0b			; 85 0b
B21_1a59:		ldy $07a5		; ac a5 07
B21_1a5c:		lda ($0a), y	; b1 0a
B21_1a5e:		cmp #$ff		; c9 ff
B21_1a60:		beq B21_1a6c ; f0 0a

B21_1a62:		ldx #$90		; a2 90
B21_1a64:		jsr displayStaticLayoutAbankX		; 20 dc ec
B21_1a67:		inc $07a5		; ee a5 07
B21_1a6a:		clc				; 18 
B21_1a6b:		rts				; 60 

B21_1a6c:		sec				; 38 
B21_1a6d:		rts				; 60 

data_15_1a6e:
	.dw data_15_1a72
	.dw data_15_1a7c

data_15_1a72:
	.dw $ba86
	.dw $ba88
	.dw $ba8a
	.dw $ba8c
	.dw $ba8e

data_15_1a7c:
	.dw $ba90
	.dw $ba92
	.dw $ba94
	.dw $ba96
	.dw $ba98


B21_1a86:	.db $32
B21_1a87:	.db $ff
B21_1a88:	.db $33
B21_1a89:	.db $ff
B21_1a8a:	.db $34
B21_1a8b:	.db $ff
B21_1a8c:		and $ff, x		; 35 ff
B21_1a8e:		rol $ff, x		; 36 ff
B21_1a90:	.db $37
B21_1a91:	.db $ff
B21_1a92:		sec				; 38 
B21_1a93:	.db $ff
B21_1a94:		adc $ff			; 65 ff
B21_1a96:		ror $ff			; 66 ff
B21_1a98:		rol $ff, x		; 36 ff
