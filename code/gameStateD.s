

func_15_15ff:
B21_15ff:		sta $00			; 85 00
B21_1601:		asl a			; 0a
B21_1602:		clc				; 18 
B21_1603:		adc $00			; 65 00
B21_1605:		tay				; a8 
B21_1606:		lda data_15_1616.w, y	; b9 16 b6
B21_1609:		sta $16			; 85 16
B21_160b:		lda data_15_1616.w+1, y	; b9 17 b6
B21_160e:		sta $17			; 85 17
B21_1610:		lda data_15_1616.w+2, y	; b9 18 b6
B21_1613:		jmp func_1f_1bba		; 4c ba fb

data_15_1616:
	.table word byte
	.row func_00_052c $80
	.row func_00_0001 $80
	.row getCurrRoomsChrBanks $80
	.row func_1e_1067 $00
	.row func_1e_10f8 $00
	.row func_1e_0db8 $00
	.row func_00_10cd $80
	.row func_1f_1ba4 $80
	.row func_1f_1baf $80


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
B21_16cc:		sta $0400, x	; 9d 00 04
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
B21_172b:		jsr func_1f_0cdc		; 20 dc ec
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
B21_17c1:		jsr func_1f_0cdc		; 20 dc ec
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
B21_17e2:		sta $054e		; 8d 4e 05
B21_17e5:		lda #GS_IN_GAME		; a9 04
B21_17e7:		sta wGameState			; 85 18
B21_17e9:		lda #$1f		; a9 1f
B21_17eb:		sta $2a			; 85 2a
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
B21_19a1:		sta $054e		; 8d 4e 05
B21_19a4:		iny				; c8 
B21_19a5:		ldx #$01		; a2 01

@loop:
B21_19a7:		jsr func_1f_1b95		; 20 95 fb
B21_19aa:		cmp #$ff		; c9 ff
B21_19ac:		beq B21_19d7 ; f0 29

B21_19ae:		sta $048c, x	; 9d 8c 04
B21_19b1:		iny				; c8 
B21_19b2:		jsr func_1f_1b95		; 20 95 fb
B21_19b5:		sta $0400, x	; 9d 00 04
B21_19b8:		iny				; c8 
B21_19b9:		jsr func_1f_1b95		; 20 95 fb
B21_19bc:		sta wEntityBaseX.w, x	; 9d 38 04
B21_19bf:		iny				; c8 
B21_19c0:		jsr func_1f_1b95		; 20 95 fb
B21_19c3:		sta wEntityBaseY.w, x	; 9d 1c 04
B21_19c6:		iny				; c8 
B21_19c7:		jsr func_1f_1b95		; 20 95 fb
B21_19ca:		sta $04a8, x	; 9d a8 04
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
B21_1a64:		jsr func_1f_0cdc		; 20 dc ec
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
B21_1a9a:		cpy #$2b		; c0 2b
B21_1a9c:		asl a			; 0a
B21_1a9d:	.db $ff
B21_1a9e:	.db $82
B21_1a9f:	.db $3f
B21_1aa0:	.db $cf
B21_1aa1:		asl $ff			; 06 ff
B21_1aa3:		sty $13			; 84 13
B21_1aa5:	.db $44
B21_1aa6:		sta $04aa, y	; 99 aa 04
B21_1aa9:	.db $ff
B21_1aaa:		sty $55			; 84 55
B21_1aac:	.db $22
B21_1aad:		dey				; 88 
B21_1aae:		eor $04, x		; 55 04
B21_1ab0:	.db $ff
B21_1ab1:		sty $55			; 84 55
B21_1ab3:	.db $22
B21_1ab4:		dey				; 88 
B21_1ab5:		eor $04, x		; 55 04
B21_1ab7:	.db $ff
B21_1ab8:	.db $82
B21_1ab9:		sbc $f5, x		; f5 f5
B21_1abb:	.db $0c
B21_1abc:	.db $ff
B21_1abd:		php				; 08 
B21_1abe:	.db $0f
B21_1abf:	.db $ff
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
B21_1be8:	.db $e7
B21_1be9:		cpx $00			; e4 00
B21_1beb:	.db $e3
B21_1bec:		cpx $f2			; e4 f2
B21_1bee:		cpx $f1			; e4 f1
B21_1bf0:		sbc $e4, x		; f5 e4
B21_1bf2:	.db $f2
B21_1bf3:	.db $db
B21_1bf4:		inc $ff00, x	; fe 00 ff
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
B21_1c6c:	.db $e7
B21_1c6d:		cpx $f1			; e4 f1
B21_1c6f:	.db $f2
B21_1c70:		cpx $eb			; e4 eb
B21_1c72:		sbc $db			; e5 db
B21_1c74:		inc $ff00, x	; fe 00 ff
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
B21_1cea:		inc $f1ff		; ee ff f1
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
B21_1df9:		rts				; 60 


B21_1dfa:		.db $00				; 00
B21_1dfb:		jsr $7d7e		; 20 7e 7d
B21_1dfe:	.db $82
B21_1dff:		adc $107d, x	; 7d 7d 10
B21_1e02:	.db $7f
B21_1e03:		sty $64			; 84 64
B21_1e05:		ror $67			; 66 67
B21_1e07:	.db $67
B21_1e08:		asl $7e			; 06 7e
B21_1e0a:	.db $83
B21_1e0b:	.db $67
B21_1e0c:		ror $66			; 66 66
B21_1e0e:		ora $7f			; 05 7f
B21_1e10:	.db $03
B21_1e11:		adc $0a			; 65 0a
B21_1e13:	.db $7f
B21_1e14:	.db $92
B21_1e15:		adc $67			; 65 67
B21_1e17:		ror $7e67, x	; 7e 67 7e
B21_1e1a:		ror $7477, x	; 7e 77 74
B21_1e1d:		adc $77, x		; 75 77
B21_1e1f:	.db $77
B21_1e20:		ror $7e, x		; 76 7e
B21_1e22:		ror $6767, x	; 7e 67 67
B21_1e25:		adc $64			; 65 64
B21_1e27:	.db $04
B21_1e28:	.db $67
B21_1e29:	.db $9b
B21_1e2a:		ror $65			; 66 65
B21_1e2c:	.db $64
B21_1e2d:		adc $67			; 65 67
B21_1e2f:		ror $7f			; 66 7f
B21_1e31:	.db $7f
B21_1e32:	.db $7f
B21_1e33:		adc $65			; 65 65
B21_1e35:	.db $67
B21_1e36:		ror $7e7e, x	; 7e 7e 7e
B21_1e39:	.db $74
B21_1e3a:		.db $00				; 00
B21_1e3b:	.db $77
B21_1e3c:		.db $00				; 00
B21_1e3d:		.db $00				; 00
B21_1e3e:		.db $00				; 00
B21_1e3f:		ror $7e, x		; 76 7e
B21_1e41:	.db $67
B21_1e42:		ror $677e, x	; 7e 7e 67
B21_1e45:		asl $7e			; 06 7e
B21_1e47:	.db $89
B21_1e48:	.db $67
B21_1e49:		ror $7e7e, x	; 7e 7e 7e
B21_1e4c:	.db $67
B21_1e4d:		ror $65			; 66 65
B21_1e4f:	.db $67
B21_1e50:	.db $67
B21_1e51:	.db $04
B21_1e52:		ror $7781, x	; 7e 81 77
B21_1e55:	.db $07
B21_1e56:		.db $00				; 00
B21_1e57:	.db $93
B21_1e58:		ror $75, x		; 76 75
B21_1e5a:		adc $7e, x		; 75 7e
B21_1e5c:		ror $747e, x	; 7e 7e 74
B21_1e5f:		adc $75, x		; 75 75
B21_1e61:		ror $7e, x		; 76 7e
B21_1e63:	.db $77
B21_1e64:		ror $7e, x		; 76 7e
B21_1e66:		adc $7e, x		; 75 7e
B21_1e68:		ror $6767, x	; 7e 67 67
B21_1e6b:	.db $04
B21_1e6c:		ror $7582, x	; 7e 82 75
B21_1e6f:	.db $77
B21_1e70:	.db $07
B21_1e71:		.db $00				; 00
B21_1e72:	.db $03
B21_1e73:	.db $77
B21_1e74:		stx $76			; 86 76
B21_1e76:		adc $77, x		; 75 77
B21_1e78:	.db $77
B21_1e79:	.db $77
B21_1e7a:		.db $00				; 00
B21_1e7b:		asl $77			; 06 77
B21_1e7d:		dey				; 88 
B21_1e7e:		adc $7e, x		; 75 7e
B21_1e80:		ror $7674, x	; 7e 74 76
B21_1e83:		ror $747e, x	; 7e 7e 74
B21_1e86:	.db $0c
B21_1e87:		.db $00				; 00
B21_1e88:		sty $77			; 84 77
B21_1e8a:	.db $77
B21_1e8b:		eor ($42, x)	; 41 42
B21_1e8d:		php				; 08 
B21_1e8e:		.db $00				; 00
B21_1e8f:	.db $87
B21_1e90:	.db $77
B21_1e91:		ror $75, x		; 76 75
B21_1e93:		adc $77, x		; 75 77
B21_1e95:		adc $75, x		; 75 75
B21_1e97:	.db $0f
B21_1e98:		.db $00				; 00
B21_1e99:		sty $5251		; 8c 51 52
B21_1e9c:	.db $42
B21_1e9d:		lsr $57, x		; 56 57
B21_1e9f:		eor ($42, x)	; 41 42
B21_1ea1:		.db $00				; 00
B21_1ea2:		eor ($42, x)	; 41 42
B21_1ea4:		.db $00				; 00
B21_1ea5:	.db $77
B21_1ea6:		php				; 08 
B21_1ea7:		.db $00				; 00
B21_1ea8:		sta ($40, x)	; 81 40
B21_1eaa:		ora #$00		; 09 00
B21_1eac:		cld				; d8 
B21_1ead:		eor ($42, x)	; 41 42
B21_1eaf:		rts				; 60 


B21_1eb0:	.db $62
B21_1eb1:	.db $63
B21_1eb2:	.db $54
B21_1eb3:		lsr $51			; 46 51
B21_1eb5:	.db $52
B21_1eb6:	.db $42
B21_1eb7:		eor ($52), y	; 51 52
B21_1eb9:	.db $42
B21_1eba:		.db $00				; 00
B21_1ebb:		eor ($42, x)	; 41 42
B21_1ebd:		.db $00				; 00
B21_1ebe:		.db $00				; 00
B21_1ebf:		.db $00				; 00
B21_1ec0:		eor ($42, x)	; 41 42
B21_1ec2:		.db $00				; 00
B21_1ec3:	.db $43
B21_1ec4:		sei				; 78 
B21_1ec5:	.db $4f
B21_1ec6:		.db $00				; 00
B21_1ec7:	.db $7a
B21_1ec8:	.db $5f
B21_1ec9:		.db $00				; 00
B21_1eca:		lsr $57, x		; 56 57
B21_1ecc:		bvc B21_1f1f ; 50 51

B21_1ece:	.db $52
B21_1ecf:		adc $7146, x	; 7d 46 71
B21_1ed2:		lsr $51			; 46 51
B21_1ed4:	.db $52
B21_1ed5:	.db $52
B21_1ed6:		adc $7347, x	; 7d 47 73
B21_1ed9:		adc $5153, x	; 7d 53 51
B21_1edc:	.db $52
B21_1edd:	.db $57
B21_1ede:		.db $00				; 00
B21_1edf:		eor ($51, x)	; 41 51
B21_1ee1:	.db $52
B21_1ee2:	.db $42
B21_1ee3:	.db $43
B21_1ee4:		adc $4f7d, x	; 7d 7d 4f
B21_1ee7:		adc $4f7d, y	; 79 7d 4f
B21_1eea:		adc $4463, x	; 7d 63 44
B21_1eed:		eor $7d			; 45 7d
B21_1eef:		eor $52, x		; 55 52
B21_1ef1:	.db $63
B21_1ef2:		eor ($60), y	; 51 60
B21_1ef4:		eor $62			; 45 62
B21_1ef6:		adc $7d7d, x	; 7d 7d 7d
B21_1ef9:		eor $44, x		; 55 44
B21_1efb:		eor $72			; 45 72
B21_1efd:	.db $73
B21_1efe:	.db $53
B21_1eff:		eor ($54), y	; 51 54
B21_1f01:		adc $4d4c, x	; 7d 4c 4d
B21_1f04:		lsr $7d0b		; 4e 0b 7d
B21_1f07:		sta $55, x		; 95 55
B21_1f09:	.db $44
B21_1f0a:		rts				; 60 


B21_1f0b:		adc $7d61, x	; 7d 61 7d
B21_1f0e:		adc $637d, x	; 7d 7d 63
B21_1f11:	.db $44
B21_1f12:	.db $62
B21_1f13:		adc $6362, x	; 7d 62 63
B21_1f16:		rts				; 60 


B21_1f17:	.db $62
B21_1f18:	.db $72
B21_1f19:		adc $7d5c, x	; 7d 5c 7d
B21_1f1c:		lsr $7d13, x	; 5e 13 7d
B21_1f1f:	.db $83
B21_1f20:		rts				; 60 


B21_1f21:		adc ($62, x)	; 61 62
B21_1f23:		asl $7d			; 06 7d
B21_1f25:		sta $6b			; 85 6b
B21_1f27:		jmp ($5d6b)		; 6c 6b 5d


B21_1f2a:		lsr $7d1a		; 4e 1a 7d
B21_1f2d:		stx $4e			; 86 4e
B21_1f2f:	.db $7b
B21_1f30:	.db $7c
B21_1f31:	.db $7b
B21_1f32:		adc $1a5e, x	; 7d 5e 1a
B21_1f35:		adc $5e84, x	; 7d 84 5e
B21_1f38:		jmp ($6f6e)		; 6c 6e 6f


B21_1f3b:		ora $817d		; 0d 7d 81
B21_1f3e:	.db $5b
B21_1f3f:		asl $7d			; 06 7d
B21_1f41:		sta $5b			; 85 5b
B21_1f43:		adc $7d7d, x	; 7d 7d 7d
B21_1f46:	.db $5b
B21_1f47:	.db $04
B21_1f48:		adc $6f82, x	; 7d 82 6f
B21_1f4b:	.db $5a
B21_1f4c:		ora #$7d		; 09 7d
B21_1f4e:	.db $03
B21_1f4f:		pla				; 68 
B21_1f50:	.db $0c
B21_1f51:		adc $4a84, x	; 7d 84 4a
B21_1f54:		pha				; 48 
B21_1f55:		pha				; 48 
B21_1f56:		pla				; 68 
B21_1f57:		ora #$7d		; 09 7d
B21_1f59:	.db $87
B21_1f5a:	.db $5b
B21_1f5b:		adc $687d, x	; 7d 7d 68
B21_1f5e:		pha				; 48 
B21_1f5f:		pla				; 68 
B21_1f60:		pla				; 68 
B21_1f61:		ora #$7d		; 09 7d
B21_1f63:		dey				; 88 
B21_1f64:		eor #$48		; 49 48
B21_1f66:		lsr a			; 4a
B21_1f67:		ror $5858, x	; 7e 58 58
B21_1f6a:		ror $0c49, x	; 7e 49 0c
B21_1f6d:		adc $6883, x	; 7d 83 68
B21_1f70:		pha				; 48 
B21_1f71:		lsr a			; 4a
B21_1f72:		ora #$7d		; 09 7d
B21_1f74:	.db $04
B21_1f75:		ror $5804, x	; 7e 04 58
B21_1f78:		sta ($48, x)	; 81 48
B21_1f7a:	.db $0b
B21_1f7b:		adc $6883, x	; 7d 83 68
B21_1f7e:		lsr a			; 4a
B21_1f7f:		adc #$09		; 69 09
B21_1f81:		adc $588c, x	; 7d 8c 58
B21_1f84:		ror $6a7e, x	; 7e 7e 6a
B21_1f87:		ror $7e58, x	; 7e 58 7e
B21_1f8a:		cli				; 58 
B21_1f8b:		cli				; 58 
B21_1f8c:		pha				; 48 
B21_1f8d:		pha				; 48 
B21_1f8e:		eor #$04		; 49 04
B21_1f90:		adc $6887, x	; 7d 87 68
B21_1f93:	.db $5b
B21_1f94:	.db $5b
B21_1f95:		pha				; 48 
B21_1f96:		pha				; 48 
B21_1f97:		pha				; 48 
B21_1f98:		lsr a			; 4a
B21_1f99:		php				; 08 
B21_1f9a:		adc $4b98, x	; 7d 98 4b
B21_1f9d:	.db $4b
B21_1f9e:		cli				; 58 
B21_1f9f:	.db $4b
B21_1fa0:	.db $4b
B21_1fa1:		adc #$69		; 69 69
B21_1fa3:	.db $4b
B21_1fa4:	.db $4b
B21_1fa5:		ror $6a4b, x	; 7e 4b 6a
B21_1fa8:		ror $4849, x	; 7e 49 48
B21_1fab:		pla				; 68 
B21_1fac:		adc $484a, x	; 7d 4a 48
B21_1faf:		lsr a			; 4a
B21_1fb0:		cli				; 58 
B21_1fb1:		adc #$6a		; 69 6a
B21_1fb3:		ror $7d08, x	; 7e 08 7d
B21_1fb6:		tya				; 98 
B21_1fb7:	.db $4b
B21_1fb8:		cli				; 58 
B21_1fb9:		ror $7e58, x	; 7e 58 7e
B21_1fbc:		cli				; 58 
B21_1fbd:		ror $7e7e, x	; 7e 7e 7e
B21_1fc0:		ror a			; 6a
B21_1fc1:	.db $4b
B21_1fc2:		ror $7e6a, x	; 7e 6a 7e
B21_1fc5:		ror $4a49, x	; 7e 49 4a
B21_1fc8:		eor #$4a		; 49 4a
B21_1fca:		ror $7e4b, x	; 7e 4b 7e
B21_1fcd:	.db $4b
B21_1fce:		cli				; 58 
B21_1fcf:		ror $827d, x	; 7e 7d 82
B21_1fd2:		adc $087d, x	; 7d 7d 08
B21_1fd5:		tax				; aa 
B21_1fd6:		php				; 08 
B21_1fd7:		.db $00				; 00
B21_1fd8:		stx $e0, y		; 96 e0
B21_1fda:		.db $f0 $20

B21_1fdc:		.db $00				; 00
B21_1fdd:		.db $00				; 00
B21_1fde:	.db $ef
B21_1fdf:	.db $f3
B21_1fe0:		cpx #$ff		; e0 ff
B21_1fe2:	.db $ff
B21_1fe3:		inc $7fff, x	; fe ff 7f
B21_1fe6:		txs				; 9a 
B21_1fe7:		tax				; aa 
B21_1fe8:	.db $af
B21_1fe9:		tax				; aa 
B21_1fea:		tax				; aa 
B21_1feb:	.db $af
B21_1fec:		tax				; aa 
B21_1fed:		eor $95, x		; 55 95
B21_1fef:	.db $12
B21_1ff0:		tax				; aa 
B21_1ff1:		php				; 08 
B21_1ff2:		asl a			; 0a