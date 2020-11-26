
B15_148e:	.db $2b
B15_148f:	.db $2b
B15_1490:	.db $2b
B15_1491:		ora $2b2b, y	; 19 2b 2b
B15_1494:		.db $00				; 00
B15_1495:		.db $00				; 00
B15_1496:		.db $00				; 00
B15_1497:		.db $00				; 00
B15_1498:		.db $00				; 00
B15_1499:	.db $44
B15_149a:	.db $44
B15_149b:	.db $44
B15_149c:	.db $44
B15_149d:		.db $00				; 00
B15_149e:	.db $2b
B15_149f:		ora $192b, y	; 19 2b 19
B15_14a2:	.db $2b
B15_14a3:	.db $2b
B15_14a4:	.db $2b
B15_14a5:	.db $2b
B15_14a6:	.db $2b
B15_14a7:	.db $2b
B15_14a8:	.db $2b
B15_14a9:		ora $192b, y	; 19 2b 19
B15_14ac:		asl a			; 0a
B15_14ad:	.db $0c
B15_14ae:		lda $56			; a5 56
B15_14b0:		bne B15_152c ; d0 7a

B15_14b2:		lda wCurrRoomGroup		; a5 32
B15_14b4:		asl a			; 0a
B15_14b5:		tay				; a8 
B15_14b6:		lda $b66d, y	; b9 6d b6
B15_14b9:		sta $08			; 85 08
B15_14bb:		lda $b66e, y	; b9 6e b6
B15_14be:		sta $09			; 85 09
B15_14c0:		lda wCurrRoomSection			; a5 33
B15_14c2:		asl a			; 0a
B15_14c3:		sta $00			; 85 00
B15_14c5:		asl a			; 0a
B15_14c6:		clc				; 18 
B15_14c7:		adc $00			; 65 00
B15_14c9:		tay				; a8 
B15_14ca:		lda ($08), y	; b1 08
B15_14cc:		cmp $34			; c5 34
B15_14ce:		bne B15_152c ; d0 5c

B15_14d0:		iny				; c8 
B15_14d1:		lda ($08), y	; b1 08
B15_14d3:		cmp $57			; c5 57
B15_14d5:		bne B15_152c ; d0 55

B15_14d7:		iny				; c8 
B15_14d8:		txa				; 8a 
B15_14d9:		cmp ($08), y	; d1 08
B15_14db:		bne B15_152c ; d0 4f

B15_14dd:		iny				; c8 
B15_14de:		lda ($08), y	; b1 08
B15_14e0:		iny				; c8 
B15_14e1:		sec				; 38 
B15_14e2:		sbc wEntityBaseY.w		; ed1c 04
B15_14e5:		bcs B15_14e9 ; b0 02

B15_14e7:		eor #$ff		; 49 ff
B15_14e9:		cmp #$08		; c9 08
B15_14eb:		bcs B15_14ef ; b0 02

B15_14ed:		bcc B15_14fd ; 90 0e

B15_14ef:		lda ($08), y	; b1 08
B15_14f1:		sec				; 38 
B15_14f2:		sbc wEntityBaseY.w		; ed1c 04
B15_14f5:		bcs B15_14f9 ; b0 02

B15_14f7:		eor #$ff		; 49 ff
B15_14f9:		cmp #$08		; c9 08
B15_14fb:		bcs B15_152a ; b0 2d

B15_14fd:		lda $0565		; ad 65 05
B15_1500:		cmp #$34		; c9 34
B15_1502:		beq B15_152e ; f0 2a

B15_1504:		cmp #$04		; c9 04
B15_1506:		bne B15_152a ; d0 22

B15_1508:		iny				; c8 
B15_1509:		lda ($08), y	; b1 08
B15_150b:		sta wCurrRoomIdx			; 85 34
B15_150d:		stx $65			; 86 65
B15_150f:		txa				; 8a 
B15_1510:		eor #$01		; 49 01
B15_1512:		sta $04a8		; 8d a8 04
B15_1515:		lda $0565		; ad 65 05
B15_1518:		ora #$80		; 09 80
B15_151a:		sta $0565		; 8d 65 05
B15_151d:		lda #$02		; a9 02
B15_151f:		sta $0400		; 8d 00 04
B15_1522:		lda #$08		; a9 08
B15_1524:		sta $2a			; 85 2a
B15_1526:		lda #$00		; a9 00
B15_1528:		sta $6b			; 85 6b
B15_152a:		sec				; 38 
B15_152b:		rts				; 60 


B15_152c:		clc				; 18 
B15_152d:		rts				; 60 


B15_152e:		lda $054e		; ad 4e 05
B15_1531:		cmp #$03		; c9 03
B15_1533:		bne B15_152a ; d0 f5

B15_1535:		lda #$36		; a9 36
B15_1537:		sta $0565		; 8d 65 05
B15_153a:		stx $05d8		; 8e d8 05
B15_153d:		sec				; 38 
B15_153e:		rts				; 60 


B15_153f:		lda wCurrRoomGroup		; a5 32
B15_1541:		asl a			; 0a
B15_1542:		tay				; a8 
B15_1543:		lda $b7c6, y	; b9 c6 b7
B15_1546:		sta $08			; 85 08
B15_1548:		lda $b7c7, y	; b9 c7 b7
B15_154b:		sta $09			; 85 09
B15_154d:		lda wCurrRoomSection			; a5 33
B15_154f:		asl a			; 0a
B15_1550:		tay				; a8 
B15_1551:		lda ($08), y	; b1 08
B15_1553:		sta $0a			; 85 0a
B15_1555:		iny				; c8 
B15_1556:		lda ($08), y	; b1 08
B15_1558:		sta $0b			; 85 0b
B15_155a:		lda wCurrRoomIdx			; a5 34
B15_155c:		asl a			; 0a
B15_155d:		tay				; a8 
B15_155e:		lda ($0a), y	; b1 0a
B15_1560:		sta $69			; 85 69
B15_1562:		iny				; c8 
B15_1563:		lda ($0a), y	; b1 0a
B15_1565:		sta $6a			; 85 6a
B15_1567:		rts				; 60 


B15_1568:		lda $57			; a5 57
B15_156a:		sta $08			; 85 08
B15_156c:		lda wEntityBaseY.w		; ad 1c 04
B15_156f:		sec				; 38 
B15_1570:		sbc #$33		; e9 33
B15_1572:		bcc B15_15f0 ; 90 7c

B15_1574:		clc				; 18 
B15_1575:		adc $56			; 65 56
B15_1577:		sta $0c			; 85 0c
B15_1579:		bcs B15_157f ; b0 04

B15_157b:		cmp #$f0		; c9 f0
B15_157d:		bcc B15_1586 ; 90 07

B15_157f:		clc				; 18 
B15_1580:		adc #$10		; 69 10
B15_1582:		sta $0c			; 85 0c
B15_1584:		inc $08			; e6 08
B15_1586:		ldy #$00		; a0 00
B15_1588:		lda ($69), y	; b1 69
B15_158a:		iny				; c8 
B15_158b:		cmp #$ff		; c9 ff
B15_158d:		beq B15_15f0 ; f0 61

B15_158f:		ldx $0e			; a6 0e
B15_1591:		beq B15_1598 ; f0 05

B15_1593:		asl a			; 0a
B15_1594:		bcc B15_15ec ; 90 56

B15_1596:		bcs B15_159b ; b0 03

B15_1598:		asl a			; 0a
B15_1599:		bcs B15_15ec ; b0 51

B15_159b:		sta $0a			; 85 0a
B15_159d:		lsr a			; 4a
B15_159e:		and #$0f		; 29 0f
B15_15a0:		sta $09			; 85 09
B15_15a2:		lda ($69), y	; b1 69
B15_15a4:		iny				; c8 
B15_15a5:		sbc $0c			; e5 0c
B15_15a7:		sta $0d			; 85 0d
B15_15a9:		lda $09			; a5 09
B15_15ab:		sbc $08			; e5 08
B15_15ad:		sta $0f			; 85 0f
B15_15af:		bcs B15_15c2 ; b0 11

B15_15b1:		cmp #$ff		; c9 ff
B15_15b3:		bne B15_15ed ; d0 38

B15_15b5:		lda #$00		; a9 00
B15_15b7:		sta $0f			; 85 0f
B15_15b9:		lda $0d			; a5 0d
B15_15bb:		eor #$ff		; 49 ff
B15_15bd:		clc				; 18 
B15_15be:		adc #$01		; 69 01
B15_15c0:		sta $0d			; 85 0d
B15_15c2:		lda $0f			; a5 0f
B15_15c4:		bne B15_15ed ; d0 27

B15_15c6:		lda $09			; a5 09
B15_15c8:		cmp $08			; c5 08
B15_15ca:		beq B15_15cc ; f0 00

B15_15cc:		lda $0d			; a5 0d
B15_15ce:		cmp #$07		; c9 07
B15_15d0:		bcs B15_15ed ; b0 1b

B15_15d2:		ldx #$00		; a2 00
B15_15d4:		sec				; 38 
B15_15d5:		lda ($69), y	; b1 69
B15_15d7:		sbc wEntityBaseX.w		; ed38 04
B15_15da:		bcs B15_15e2 ; b0 06

B15_15dc:		inx				; e8 
B15_15dd:		eor #$ff		; 49 ff
B15_15df:		clc				; 18 
B15_15e0:		adc #$01		; 69 01
B15_15e2:		sta $0b			; 85 0b
B15_15e4:		cmp #$0c		; c9 0c
B15_15e6:		bcs B15_15ed ; b0 05

B15_15e8:		stx $0d			; 86 0d
B15_15ea:		sec				; 38 
B15_15eb:		rts				; 60 


B15_15ec:		iny				; c8 
B15_15ed:		iny				; c8 
B15_15ee:		bne B15_1588 ; d0 98

B15_15f0:		clc				; 18 
B15_15f1:		rts				; 60 


B15_15f2:		lda #$01		; a9 01
B15_15f4:		bne B15_15f8 ; d0 02

B15_15f6:		lda #$00		; a9 00
B15_15f8:		sta $0e			; 85 0e
B15_15fa:		lda $68			; a5 68
B15_15fc:		bpl B15_1601 ; 10 03

B15_15fe:		jmp $b568		; 4c 68 b5


B15_1601:		lda wEntityBaseX.w		; ad 38 04
B15_1604:		clc				; 18 
B15_1605:		adc $56			; 65 56
B15_1607:		sta $0c			; 85 0c
B15_1609:		lda $57			; a5 57
B15_160b:		adc #$00		; 69 00
B15_160d:		sta $08			; 85 08
B15_160f:		ldy #$00		; a0 00
B15_1611:		lda ($69), y	; b1 69
B15_1613:		iny				; c8 
B15_1614:		cmp #$ff		; c9 ff
B15_1616:		beq B15_166b ; f0 53

B15_1618:		ldx $0e			; a6 0e
B15_161a:		beq B15_1621 ; f0 05

B15_161c:		asl a			; 0a
B15_161d:		bcc B15_1667 ; 90 48

B15_161f:		bcs B15_1624 ; b0 03

B15_1621:		asl a			; 0a
B15_1622:		bcs B15_1667 ; b0 43

B15_1624:		sta $0a			; 85 0a
B15_1626:		asl a			; 0a
B15_1627:		asl a			; 0a
B15_1628:		asl a			; 0a
B15_1629:		sbc wEntityBaseY.w		; ed1c 04
B15_162c:		bcs B15_1630 ; b0 02

B15_162e:		eor #$ff		; 49 ff
B15_1630:		cmp #$06		; c9 06
B15_1632:		bcs B15_1667 ; b0 33

B15_1634:		lda $0c			; a5 0c
B15_1636:		sec				; 38 
B15_1637:		sbc ($69), y	; f1 69
B15_1639:		iny				; c8 
B15_163a:		sta $0b			; 85 0b
B15_163c:		lda $08			; a5 08
B15_163e:		sbc ($69), y	; f1 69
B15_1640:		sta $09			; 85 09
B15_1642:		bcs B15_1659 ; b0 15

B15_1644:		cmp #$ff		; c9 ff
B15_1646:		bne B15_1668 ; d0 20

B15_1648:		lda $0b			; a5 0b
B15_164a:		cmp #$f3		; c9 f3
B15_164c:		bcc B15_1668 ; 90 1a

B15_164e:		eor #$ff		; 49 ff
B15_1650:		clc				; 18 
B15_1651:		adc #$01		; 69 01
B15_1653:		sta $0b			; 85 0b
B15_1655:		ldx #$00		; a2 00
B15_1657:		beq B15_1663 ; f0 0a

B15_1659:		bne B15_1668 ; d0 0d

B15_165b:		lda $0b			; a5 0b
B15_165d:		cmp #$0d		; c9 0d
B15_165f:		bcs B15_1668 ; b0 07

B15_1661:		ldx #$01		; a2 01
B15_1663:		stx $0d			; 86 0d
B15_1665:		sec				; 38 
B15_1666:		rts				; 60 


B15_1667:		iny				; c8 
B15_1668:		iny				; c8 
B15_1669:		bne B15_1611 ; d0 a6

B15_166b:		clc				; 18 
B15_166c:		rts				; 60 


B15_166d:	.db $8b
B15_166e:		ldx $9e, y		; b6 9e
B15_1670:		ldx $bd, y		; b6 bd
B15_1672:		ldx $d6, y		; b6 d6
B15_1674:		ldx $ef, y		; b6 ef
B15_1676:		ldx $fc, y		; b6 fc
B15_1678:		ldx $0f, y		; b6 0f
B15_167a:	.db $b7
B15_167b:	.db $1c
B15_167c:	.db $b7
B15_167d:		eor ($b7, x)	; 41 b7
B15_167f:	.db $5a
B15_1680:	.db $b7
B15_1681:		adc ($b7, x)	; 61 b7
B15_1683:		sty $acb7		; 8c b7 ac
B15_1686:	.db $b7
B15_1687:		sta $b9b7, y	; 99 b7 b9
B15_168a:	.db $b7
B15_168b:		.db $00				; 00
B15_168c:	.db $02
B15_168d:		ora ($b0, x)	; 01 b0
B15_168f:		bcs B15_1691 ; b0 00

B15_1691:	.db $02
B15_1692:	.db $02
B15_1693:		ora ($90, x)	; 01 90
B15_1695:		bcc B15_1698 ; 90 01

B15_1697:		.db $00				; 00
B15_1698:	.db $02
B15_1699:		ora ($b0, x)	; 01 b0
B15_169b:		bcs B15_169d ; b0 00

B15_169d:	.db $ff
B15_169e:	.db $02
B15_169f:		ora ($01, x)	; 01 01
B15_16a1:		;removed
	.db $70 $70

B15_16a3:		.db $00				; 00
B15_16a4:	.db $02
B15_16a5:		.db $00				; 00
B15_16a6:		ora ($90, x)	; 01 90
B15_16a8:		bcc B15_16aa ; 90 00

B15_16aa:	.db $ff
B15_16ab:		cpx #$e0		; e0 e0
B15_16ad:		cpx #$e0		; e0 e0
B15_16af:		cpx #$00		; e0 00
B15_16b1:		.db $00				; 00
B15_16b2:		.db $00				; 00
B15_16b3:		;removed
	.db $90 $90

B15_16b5:	.db $02
B15_16b6:		.db $00				; 00
B15_16b7:		.db $00				; 00
B15_16b8:		.db $00				; 00
B15_16b9:		;removed
	.db $70 $70

B15_16bb:	.db $02
B15_16bc:	.db $ff
B15_16bd:		cpx #$e0		; e0 e0
B15_16bf:		cpx #$e0		; e0 e0
B15_16c1:		cpx #$e0		; e0 e0
B15_16c3:		.db $00				; 00
B15_16c4:		ora $01			; 05 01
B15_16c6:		bcs B15_1678 ; b0 b0

B15_16c8:		.db $00				; 00
B15_16c9:		cpx #$e0		; e0 e0
B15_16cb:		cpx #$e0		; e0 e0
B15_16cd:		cpx #$e0		; e0 e0
B15_16cf:		.db $00				; 00
B15_16d0:		.db $00				; 00
B15_16d1:		.db $00				; 00
B15_16d2:		;removed
	.db $90 $90

B15_16d4:		ora ($ff, x)	; 01 ff
B15_16d6:		.db $00				; 00
B15_16d7:		ora ($01, x)	; 01 01
B15_16d9:		bcc B15_166b ; 90 90

B15_16db:		.db $00				; 00
B15_16dc:		ora ($00, x)	; 01 00
B15_16de:		.db $00				; 00
B15_16df:		bvs B15_1751 ; 70 70

B15_16e1:		.db $00				; 00
B15_16e2:		cpx #$e0		; e0 e0
B15_16e4:		cpx #$e0		; e0 e0
B15_16e6:		cpx #$e0		; e0 e0
B15_16e8:		ora ($02, x)	; 01 02
B15_16ea:		ora ($90, x)	; 01 90
B15_16ec:		bcc B15_16f0 ; 90 02

B15_16ee:	.db $ff
B15_16ef:	.db $02
B15_16f0:		.db $00				; 00
B15_16f1:		ora ($80, x)	; 01 80
B15_16f3:	.db $80
B15_16f4:		.db $00				; 00
B15_16f5:	.db $02
B15_16f6:		.db $00				; 00
B15_16f7:		.db $00				; 00
B15_16f8:		bvs B15_176a ; 70 70

B15_16fa:		.db $00				; 00
B15_16fb:	.db $ff
B15_16fc:		.db $00				; 00
B15_16fd:		ora ($01, x)	; 01 01
B15_16ff:		;removed
	.db $70 $70

B15_1701:		.db $00				; 00
B15_1702:		.db $00				; 00
B15_1703:	.db $03
B15_1704:		ora ($70, x)	; 01 70
B15_1706:		;removed
	.db $70 $01

B15_1708:		ora ($03, x)	; 01 03
B15_170a:		ora ($70, x)	; 01 70
B15_170c:		bvs B15_170f ; 70 01

B15_170e:	.db $ff
B15_170f:		.db $00				; 00
B15_1710:		ora ($01, x)	; 01 01
B15_1712:		bcc B15_16a4 ; 90 90

B15_1714:		.db $00				; 00
B15_1715:		.db $00				; 00
B15_1716:		ora $01			; 05 01
B15_1718:		bcc B15_16aa ; 90 90

B15_171a:	.db $02
B15_171b:	.db $ff
B15_171c:		.db $00				; 00
B15_171d:		ora ($01, x)	; 01 01
B15_171f:		rts				; 60 


B15_1720:		bcs B15_1722 ; b0 00

B15_1722:		.db $00				; 00
B15_1723:		ora ($01, x)	; 01 01
B15_1725:		;removed
	.db $70 $c0

B15_1727:		.db $00				; 00
B15_1728:		.db $00				; 00
B15_1729:		.db $00				; 00
B15_172a:		ora ($60, x)	; 01 60
B15_172c:		cpy #$00		; c0 00
B15_172e:		.db $00				; 00
B15_172f:		ora ($01, x)	; 01 01
B15_1731:		rts				; 60 


B15_1732:		bcs B15_1734 ; b0 00

B15_1734:		cpx #$e0		; e0 e0
B15_1736:		cpx #$e0		; e0 e0
B15_1738:		cpx #$e0		; e0 e0
B15_173a:		cpx #$e0		; e0 e0
B15_173c:		cpx #$e0		; e0 e0
B15_173e:		cpx #$e0		; e0 e0
B15_1740:	.db $ff
B15_1741:		ora ($00, x)	; 01 00
B15_1743:		.db $00				; 00
B15_1744:		bcc B15_16d6 ; 90 90

B15_1746:		.db $00				; 00
B15_1747:		.db $00				; 00
B15_1748:		.db $00				; 00
B15_1749:		.db $00				; 00
B15_174a:		bcc B15_16dc ; 90 90

B15_174c:		.db $00				; 00
B15_174d:		cpx #$e0		; e0 e0
B15_174f:		cpx #$e0		; e0 e0
B15_1751:		cpx #$e0		; e0 e0
B15_1753:		cpx #$e0		; e0 e0
B15_1755:		cpx #$e0		; e0 e0
B15_1757:		cpx #$e0		; e0 e0
B15_1759:	.db $ff
B15_175a:		ora ($00, x)	; 01 00
B15_175c:		.db $00				; 00
B15_175d:		bcc B15_16ef ; 90 90

B15_175f:		.db $00				; 00
B15_1760:	.db $ff
B15_1761:		ora ($00, x)	; 01 00
B15_1763:		.db $00				; 00
B15_1764:		;removed
	.db $70 $70

B15_1766:		.db $00				; 00
B15_1767:		.db $00				; 00
B15_1768:		.db $00				; 00
B15_1769:		.db $00				; 00
B15_176a:		bvs B15_17dc ; 70 70

B15_176c:		.db $00				; 00
B15_176d:		.db $00				; 00
B15_176e:		.db $00				; 00
B15_176f:		.db $00				; 00
B15_1770:		bvs B15_17e2 ; 70 70

B15_1772:		.db $00				; 00
B15_1773:		cpx #$e0		; e0 e0
B15_1775:		cpx #$e0		; e0 e0
B15_1777:		cpx #$e0		; e0 e0
B15_1779:	.db $02
B15_177a:		.db $00				; 00
B15_177b:		.db $00				; 00
B15_177c:		;removed
	.db $70 $70

B15_177e:		.db $00				; 00
B15_177f:		ora ($00, x)	; 01 00
B15_1781:		.db $00				; 00
B15_1782:		bcc B15_1714 ; 90 90

B15_1784:		.db $00				; 00
B15_1785:		ora ($00, x)	; 01 00
B15_1787:		.db $00				; 00
B15_1788:		bcc B15_171a ; 90 90

B15_178a:		.db $00				; 00
B15_178b:	.db $ff
B15_178c:		ora ($01, x)	; 01 01
B15_178e:		ora ($70, x)	; 01 70
B15_1790:		bvs B15_1792 ; 70 00

B15_1792:		ora ($02, x)	; 01 02
B15_1794:		ora ($70, x)	; 01 70
B15_1796:		bvs B15_179a ; 70 02

B15_1798:	.db $ff
B15_1799:	.db $02
B15_179a:		.db $00				; 00
B15_179b:		.db $00				; 00
B15_179c:		;removed
	.db $b0 $b0

B15_179e:		.db $00				; 00
B15_179f:	.db $02
B15_17a0:		.db $00				; 00
B15_17a1:		ora ($b0, x)	; 01 b0
B15_17a3:		bcs B15_17a5 ; b0 00

B15_17a5:	.db $02
B15_17a6:		.db $00				; 00
B15_17a7:		.db $00				; 00
B15_17a8:		ldy #$a0		; a0 a0
B15_17aa:		.db $00				; 00
B15_17ab:	.db $ff
B15_17ac:		ora ($01, x)	; 01 01
B15_17ae:		ora ($a0, x)	; 01 a0
B15_17b0:		ldy #$00		; a0 00
B15_17b2:		cpx #$e0		; e0 e0
B15_17b4:		cpx #$e0		; e0 e0
B15_17b6:		cpx #$e0		; e0 e0
B15_17b8:	.db $ff
B15_17b9:		.db $00				; 00
B15_17ba:		.db $00				; 00
B15_17bb:		.db $00				; 00
B15_17bc:	.db $80
B15_17bd:	.db $80
B15_17be:		.db $00				; 00
B15_17bf:		cpx #$e0		; e0 e0
B15_17c1:		cpx #$e0		; e0 e0
B15_17c3:		cpx #$e0		; e0 e0
B15_17c5:	.db $ff
B15_17c6:		cpx $b7			; e4 b7
B15_17c8:		cpx $f8b7		; ec b7 f8
B15_17cb:	.db $b7
B15_17cc:	.db $02
B15_17cd:		clv				; b8 
B15_17ce:	.db $0c
B15_17cf:		clv				; b8 
B15_17d0:	.db $12
B15_17d1:		clv				; b8 
B15_17d2:	.db $1a
B15_17d3:		clv				; b8 
B15_17d4:		jsr $2eb8		; 20 b8 2e
B15_17d7:		clv				; b8 
B15_17d8:		sec				; 38 
B15_17d9:		clv				; b8 
B15_17da:	.db $3c
B15_17db:		clv				; b8 
B15_17dc:		lsr a			; 4a
B15_17dd:		clv				; b8 
B15_17de:		bvc B15_1798 ; 50 b8

B15_17e0:		lsr $b8, x		; 56 b8
B15_17e2:		lsr $7fb8, x	; 5e b8 7f
B15_17e5:		clv				; b8 
B15_17e6:		sta ($b8, x)	; 81 b8
B15_17e8:	.db $89
B15_17e9:		clv				; b8 
B15_17ea:		sta $0fb8		; 8d b8 0f
B15_17ed:		lda $b915, y	; b9 15 b9
B15_17f0:	.db $1b
B15_17f1:		lda $b91b, y	; b9 1b b9
B15_17f4:		ora $b9, x		; 15 b9
B15_17f6:	.db $0f
B15_17f7:		lda $ba0e, y	; b9 0e ba
B15_17fa:	.db $12
B15_17fb:		tsx				; ba 
B15_17fc:	.db $14
B15_17fd:		tsx				; ba 
B15_17fe:		clc				; 18 
B15_17ff:		tsx				; ba 
B15_1800:		asl $6aba, x	; 1e ba 6a
B15_1803:		tsx				; ba 
B15_1804:		;removed
	.db $70 $ba

B15_1806:	.db $74
B15_1807:		tsx				; ba 
B15_1808:		sei				; 78 
B15_1809:		tsx				; ba 
B15_180a:	.db $7c
B15_180b:		tsx				; ba 
B15_180c:		asl $bb			; 06 bb
B15_180e:	.db $0c
B15_180f:	.db $bb
B15_1810:	.db $12
B15_1811:	.db $bb
B15_1812:		sbc $efbb		; edbb ef
B15_1815:	.db $bb
B15_1816:		sbc ($bb), y	; f1 bb
B15_1818:		sbc $bb, x		; f5 bb
B15_181a:		lsr $bc			; 46 bc
B15_181c:		lsr a			; 4a
B15_181d:		ldy $bc4c, x	; bc 4c bc
B15_1820:		adc #$bc		; 69 bc
B15_1822:		adc $6fbc		; 6d bc 6f
B15_1825:		ldy $bc71, x	; bc 71 bc
B15_1828:	.db $73
B15_1829:		ldy $bc77, x	; bc 77 bc
B15_182c:	.db $7b
B15_182d:		ldy $bcd9, x	; bc d9 bc
B15_1830:		cmp $dfbc, x	; dd bc df
B15_1833:		ldy $bce3, x	; bc e3 bc
B15_1836:		sbc $bc			; e5 bc
B15_1838:	.db $4f
B15_1839:		lda $bd53, x	; bd 53 bd
B15_183c:		ldy #$bd		; a0 bd
B15_183e:		ldy $bd			; a4 bd
B15_1840:		ldx $bd			; a6 bd
B15_1842:		tay				; a8 
B15_1843:		lda $bdac, x	; bd ac bd
B15_1846:	.db $b2
B15_1847:		lda $bdb6, x	; bd b6 bd
B15_184a:	.db $3a
B15_184b:		ldx $be3e, y	; be 3e be
B15_184e:	.db $42
B15_184f:		ldx $be7f, y	; be 7f be
B15_1852:	.db $83
B15_1853:		ldx $be87, y	; be 87 be
B15_1856:		clv				; b8 
B15_1857:		ldx $bebe, y	; be be be
B15_185a:		cpy $be			; c4 be
B15_185c:		dex				; ca 
B15_185d:		ldx $bf8d, y	; be 8d bf
B15_1860:	.db $93
B15_1861:	.db $bf
B15_1862:	.db $97
B15_1863:	.db $bf
B15_1864:		dey				; 88 
B15_1865:		ldy #$00		; a0 00
B15_1867:		asl a			; 0a
B15_1868:	.db $80
B15_1869:		.db $00				; 00
B15_186a:		dex				; ca 
B15_186b:		rts				; 60 


B15_186c:		.db $00				; 00
B15_186d:	.db $4c $80 $00
B15_1870:	.db $ff
B15_1871:	.db $4c $a0 $00
B15_1874:		iny				; c8 
B15_1875:		rts				; 60 


B15_1876:		.db $00				; 00
B15_1877:	.db $ff
B15_1878:	.db $0c
B15_1879:		rts				; 60 


B15_187a:		.db $00				; 00
B15_187b:		dey				; 88 
B15_187c:		ldy #$00		; a0 00
B15_187e:	.db $ff
B15_187f:	.db $8f
B15_1880:		clv				; b8 
B15_1881:	.db $9c
B15_1882:		clv				; b8 
B15_1883:		ldy $cbb8		; ac b8 cb
B15_1886:		clv				; b8 
B15_1887:	.db $db
B15_1888:		clv				; b8 
B15_1889:		inc $04b8		; ee b8 04
B15_188c:		lda $b908, y	; b9 08 b9
B15_188f:	.db $0c
B15_1890:		bvc B15_1893 ; 50 01

B15_1892:		dey				; 88 
B15_1893:		bcc B15_1896 ; 90 01

B15_1895:		iny				; c8 
B15_1896:		;removed
	.db $f0 $01

B15_1898:		jmp $0230		; 4c 30 02


B15_189b:	.db $ff
B15_189c:	.db $4b
B15_189d:	.db $80
B15_189e:		.db $00				; 00
B15_189f:	.db $c7
B15_18a0:		rti				; 40 


B15_18a1:		.db $00				; 00
B15_18a2:	.db $07
B15_18a3:		rti				; 40 


B15_18a4:		.db $00				; 00
B15_18a5:		sta $60			; 85 60
B15_18a7:		.db $00				; 00
B15_18a8:		eor $a0			; 45 a0
B15_18aa:		.db $00				; 00
B15_18ab:	.db $ff
B15_18ac:		cmp ($b0, x)	; c1 b0
B15_18ae:		rti				; 40 


B15_18af:		ora ($b0, x)	; 01 b0
B15_18b1:		jsr $7081		; 20 81 70
B15_18b4:		rts				; 60 


B15_18b5:		ora ($20, x)	; 01 20
B15_18b7:		bmi B15_1839 ; 30 80

B15_18b9:		bne B15_192b ; d0 70

B15_18bb:		rti				; 40 


B15_18bc:		bne B15_187e ; d0 c0

B15_18be:		cpy #$90		; c0 90
B15_18c0:	.db $80
B15_18c1:		rti				; 40 


B15_18c2:		;removed
	.db $50 $c0

B15_18c4:		cpy #$30		; c0 30
B15_18c6:		ldy #$40		; a0 40
B15_18c8:		bmi B15_184a ; 30 80

B15_18ca:	.db $ff
B15_18cb:		eor #$80		; 49 80
B15_18cd:		.db $00				; 00
B15_18ce:		cmp $40			; c5 40
B15_18d0:		.db $00				; 00
B15_18d1:		ora $60			; 05 60
B15_18d3:		.db $00				; 00
B15_18d4:		asl a			; 0a
B15_18d5:		beq B15_18d7 ; f0 00

B15_18d7:		sta $40			; 85 40
B15_18d9:		ora ($ff, x)	; 01 ff
B15_18db:	.db $cb
B15_18dc:		jsr $4b00		; 20 00 4b
B15_18df:		cpy #$00		; c0 00
B15_18e1:	.db $c7
B15_18e2:	.db $80
B15_18e3:		.db $00				; 00
B15_18e4:	.db $89
B15_18e5:		cpx #$01		; e0 01
B15_18e7:	.db $4b
B15_18e8:		rts				; 60 


B15_18e9:		ora ($c7, x)	; 01 c7
B15_18eb:		jsr $ff01		; 20 01 ff
B15_18ee:		ora $60			; 05 60
B15_18f0:		.db $00				; 00
B15_18f1:	.db $0b
B15_18f2:		cpy #$00		; c0 00
B15_18f4:	.db $87
B15_18f5:		.db $00				; 00
B15_18f6:		ora ($c8, x)	; 01 c8
B15_18f8:		bcs B15_18fb ; b0 01

B15_18fa:	.db $4b
B15_18fb:		cpx #$01		; e0 01
B15_18fd:	.db $0b
B15_18fe:		.db $00				; 00
B15_18ff:	.db $04
B15_1900:	.db $89
B15_1901:		jsr $ff04		; 20 04 ff
B15_1904:		txa				; 8a 
B15_1905:		bne B15_1909 ; d0 02

B15_1907:	.db $ff
B15_1908:	.db $0b
B15_1909:		.db $00				; 00
B15_190a:		ora ($89, x)	; 01 89
B15_190c:		jsr $ff01		; 20 01 ff
B15_190f:		and ($b9, x)	; 21 b9
B15_1911:		adc $8cb9		; 6d b9 8c
B15_1914:		lda $b990, y	; b9 90 b9
B15_1917:		ldx $b9			; a6 b9
B15_1919:		cmp ($b9), y	; d1 b9
B15_191b:		cmp $b9, x		; d5 b9
B15_191d:	.db $df
B15_191e:		lda $ba04, y	; b9 04 ba
B15_1921:	.db $02
B15_1922:		bcs B15_1984 ; b0 60

B15_1924:	.db $82
B15_1925:		bvc B15_18e7 ; 50 c0

B15_1927:	.db $42
B15_1928:		;removed
	.db $50 $c0

B15_192a:	.db $c2
B15_192b:		bmi B15_18cd ; 30 a0

B15_192d:	.db $02
B15_192e:		bmi B15_1990 ; 30 60

B15_1930:		sta ($e0, x)	; 81 e0
B15_1932:	.db $80
B15_1933:		ora ($e0, x)	; 01 e0
B15_1935:		ldy #$81		; a0 81
B15_1937:		cpy #$c0		; c0 c0
B15_1939:		ora ($b0, x)	; 01 b0
B15_193b:		rti				; 40 


B15_193c:		sta ($70, x)	; 81 70
B15_193e:	.db $80
B15_193f:		ora ($70, x)	; 01 70
B15_1941:		ldy #$81		; a0 81
B15_1943:		bvc B15_1905 ; 50 c0

B15_1945:		eor ($50, x)	; 41 50
B15_1947:		cpy #$c1		; c0 c1
B15_1949:		bmi B15_18eb ; 30 a0

B15_194b:		ora ($30, x)	; 01 30
B15_194d:		ldy #$81		; a0 81
B15_194f:		bpl B15_1911 ; 10 c0

B15_1951:		eor ($10, x)	; 41 10
B15_1953:		cpy #$c0		; c0 c0
B15_1955:		cpx #$a0		; e0 a0
B15_1957:		rti				; 40 


B15_1958:		;removed
	.db $d0 $c0

B15_195a:		cpy #$b0		; c0 b0
B15_195c:		ldy #$00		; a0 00
B15_195e:		bcs B15_1900 ; b0 a0

B15_1960:	.db $80
B15_1961:		;removed
	.db $90 $c0

B15_1963:		rti				; 40 


B15_1964:		;removed
	.db $90 $c0

B15_1966:		cpy #$70		; c0 70
B15_1968:		ldy #$40		; a0 40
B15_196a:		bmi B15_19cc ; 30 60

B15_196c:	.db $ff
B15_196d:	.db $cb
B15_196e:		.db $00				; 00
B15_196f:		ora ($0b, x)	; 01 0b
B15_1971:	.db $80
B15_1972:		ora ($89, x)	; 01 89
B15_1974:		ldy #$01		; a0 01
B15_1976:		eor #$c0		; 49 c0
B15_1978:		ora ($c5, x)	; 01 c5
B15_197a:	.db $80
B15_197b:		ora ($09, x)	; 01 09
B15_197d:		jsr $8700		; 20 00 87
B15_1980:		rti				; 40 


B15_1981:		.db $00				; 00
B15_1982:	.db $47
B15_1983:		rti				; 40 


B15_1984:		.db $00				; 00
B15_1985:		cmp $20			; c5 20
B15_1987:		.db $00				; 00
B15_1988:		ora $20			; 05 20
B15_198a:		.db $00				; 00
B15_198b:	.db $ff
B15_198c:	.db $8b
B15_198d:	.db $80
B15_198e:		.db $00				; 00
B15_198f:	.db $ff
B15_1990:	.db $c7
B15_1991:		jsr $4b00		; 20 00 4b
B15_1994:		rts				; 60 


B15_1995:		.db $00				; 00
B15_1996:		eor $80			; 45 80
B15_1998:		.db $00				; 00
B15_1999:	.db $0b
B15_199a:	.db $80
B15_199b:		ora ($87, x)	; 01 87
B15_199d:		cpy #$01		; c0 01
B15_199f:	.db $47
B15_19a0:		cpy #$01		; c0 01
B15_19a2:		cmp $a0			; c5 a0
B15_19a4:		ora ($ff, x)	; 01 ff
B15_19a6:		.db $00				; 00
B15_19a7:		bmi B15_19c9 ; 30 20

B15_19a9:		cpy #$30		; c0 30
B15_19ab:	.db $80
B15_19ac:		rti				; 40 


B15_19ad:		bcc B15_198f ; 90 e0

B15_19af:		cpy #$90		; c0 90
B15_19b1:		jsr $d040		; 20 40 d0
B15_19b4:		rts				; 60 


B15_19b5:		cpy #$e0		; c0 e0
B15_19b7:		rti				; 40 


B15_19b8:		eor ($30, x)	; 41 30
B15_19ba:	.db $80
B15_19bb:		cmp ($30, x)	; c1 30
B15_19bd:		ldy #$41		; a0 41
B15_19bf:		;removed
	.db $70 $e0

B15_19c1:		sta ($70, x)	; 81 70
B15_19c3:		cpx #$01		; e0 01
B15_19c5:		bcc B15_1987 ; 90 c0

B15_19c7:		sta ($70, x)	; 81 70
B15_19c9:		rts				; 60 


B15_19ca:		ora ($b0, x)	; 01 b0
B15_19cc:		jsr $b0c1		; 20 c1 b0
B15_19cf:		jsr $89ff		; 20 ff 89
B15_19d2:		ldy #$00		; a0 00
B15_19d4:	.db $ff
B15_19d5:		ora $40			; 05 40
B15_19d7:		.db $00				; 00
B15_19d8:	.db $47
B15_19d9:		ldy #$00		; a0 00
B15_19db:		cmp $80			; c5 80
B15_19dd:		.db $00				; 00
B15_19de:	.db $ff
B15_19df:		.db $00				; 00
B15_19e0:		;removed
	.db $30 $20

B15_19e2:		cpy #$80		; c0 80
B15_19e4:		bvc B15_1a26 ; 50 40

B15_19e6:		cpy #$90		; c0 90
B15_19e8:		cpy #$e0		; c0 e0
B15_19ea:		jsr $3041		; 20 41 30
B15_19ed:		rts				; 60 


B15_19ee:		cmp ($50, x)	; c1 50
B15_19f0:		jsr $7041		; 20 41 70
B15_19f3:		rti				; 40 


B15_19f4:		sta ($70, x)	; 81 70
B15_19f6:		rti				; 40 


B15_19f7:		ora ($90, x)	; 01 90
B15_19f9:		jsr $90c1		; 20 c1 90
B15_19fc:		jsr $d041		; 20 41 d0
B15_19ff:		rts				; 60 


B15_1a00:	.db $82
B15_1a01:		;removed
	.db $70 $e0

B15_1a03:	.db $ff
B15_1a04:	.db $89
B15_1a05:		ldy #$01		; a0 01
B15_1a07:		ora #$20		; 09 20
B15_1a09:		ora ($85, x)	; 01 85
B15_1a0b:		rts				; 60 


B15_1a0c:		ora ($ff, x)	; 01 ff
B15_1a0e:	.db $22
B15_1a0f:		tsx				; ba 
B15_1a10:		bit $32ba		; 2c ba 32
B15_1a13:		tsx				; ba 
B15_1a14:	.db $33
B15_1a15:		tsx				; ba 
B15_1a16:		rti				; 40 


B15_1a17:		tsx				; ba 
B15_1a18:	.db $47
B15_1a19:		tsx				; ba 
B15_1a1a:	.db $4b
B15_1a1b:		tsx				; ba 
B15_1a1c:	.db $52
B15_1a1d:		tsx				; ba 
B15_1a1e:		lsr $ba, x		; 56 ba
B15_1a20:	.db $5a
B15_1a21:		tsx				; ba 
B15_1a22:	.db $0b
B15_1a23:	.db $80
B15_1a24:	.db $02
B15_1a25:	.db $87
B15_1a26:		cpy #$02		; c0 02
B15_1a28:	.db $47
B15_1a29:		cpx #$02		; e0 02
B15_1a2b:	.db $ff
B15_1a2c:		dex				; ca 
B15_1a2d:		;removed
	.db $50 $02

B15_1a2f:	.db $07
B15_1a30:		jsr $ff00		; 20 00 ff
B15_1a33:	.db $4b
B15_1a34:		cpx #$00		; e0 00
B15_1a36:		cmp $80			; c5 80
B15_1a38:		.db $00				; 00
B15_1a39:		ora $80			; 05 80
B15_1a3b:		.db $00				; 00
B15_1a3c:		ora $60			; 05 60
B15_1a3e:	.db $03
B15_1a3f:	.db $ff
B15_1a40:	.db $89
B15_1a41:		.db $00				; 00
B15_1a42:		ora ($8b, x)	; 01 8b
B15_1a44:		cpy #$03		; c0 03
B15_1a46:	.db $ff
B15_1a47:		eor $e0			; 45 e0
B15_1a49:		.db $00				; 00
B15_1a4a:	.db $ff
B15_1a4b:		ora $60			; 05 60
B15_1a4d:		.db $00				; 00
B15_1a4e:	.db $cb
B15_1a4f:	.db $80
B15_1a50:	.db $03
B15_1a51:	.db $ff
B15_1a52:	.db $8b
B15_1a53:		cpy #$00		; c0 00
B15_1a55:	.db $ff
B15_1a56:		ora #$40		; 09 40
B15_1a58:		.db $00				; 00
B15_1a59:	.db $ff
B15_1a5a:	.db $0b
B15_1a5b:		rti				; 40 


B15_1a5c:		.db $00				; 00
B15_1a5d:	.db $87
B15_1a5e:	.db $80
B15_1a5f:		.db $00				; 00
B15_1a60:	.db $8b
B15_1a61:		cpx #$00		; e0 00
B15_1a63:	.db $c7
B15_1a64:		jsr $4b01		; 20 01 4b
B15_1a67:		rts				; 60 


B15_1a68:		ora ($ff, x)	; 01 ff
B15_1a6a:	.db $9f
B15_1a6b:		tsx				; ba 
B15_1a6c:		stx $ba			; 86 ba
B15_1a6e:	.db $82
B15_1a6f:		tsx				; ba 
B15_1a70:		lda #$ba		; a9 ba
B15_1a72:	.db $bf
B15_1a73:		tsx				; ba 
B15_1a74:		cmp #$ba		; c9 ba
B15_1a76:	.db $d3
B15_1a77:		tsx				; ba 
B15_1a78:	.db $d7
B15_1a79:		tsx				; ba 
B15_1a7a:		sbc ($ba, x)	; e1 ba
B15_1a7c:	.db $eb
B15_1a7d:		tsx				; ba 
B15_1a7e:	.db $f2
B15_1a7f:		tsx				; ba 
B15_1a80:	.db $02
B15_1a81:	.db $bb
B15_1a82:		cmp #$60		; c9 60
B15_1a84:		ora ($ff, x)	; 01 ff
B15_1a86:		sta $80			; 85 80
B15_1a88:		.db $00				; 00
B15_1a89:		ora #$40		; 09 40
B15_1a8b:		.db $00				; 00
B15_1a8c:		eor $e0			; 45 e0
B15_1a8e:		.db $00				; 00
B15_1a8f:		ora #$00		; 09 00
B15_1a91:		ora ($87, x)	; 01 87
B15_1a93:		jsr $c701		; 20 01 c7
B15_1a96:		ldy #$01		; a0 01
B15_1a98:		eor #$c0		; 49 c0
B15_1a9a:		ora ($89, x)	; 01 89
B15_1a9c:		cpy #$01		; c0 01
B15_1a9e:	.db $ff
B15_1a9f:		ora $40			; 05 40
B15_1aa1:		.db $00				; 00
B15_1aa2:		cmp $80			; c5 80
B15_1aa4:		.db $00				; 00
B15_1aa5:		pha				; 48 
B15_1aa6:		bcs B15_1aa8 ; b0 00

B15_1aa8:	.db $ff
B15_1aa9:		cmp #$20		; c9 20
B15_1aab:	.db $02
B15_1aac:	.db $4b
B15_1aad:		rti				; 40 


B15_1aae:	.db $02
B15_1aaf:	.db $c7
B15_1ab0:		rti				; 40 


B15_1ab1:	.db $03
B15_1ab2:	.db $4b
B15_1ab3:	.db $80
B15_1ab4:	.db $03
B15_1ab5:		cmp $80			; c5 80
B15_1ab7:	.db $04
B15_1ab8:		eor #$c0		; 49 c0
B15_1aba:	.db $04
B15_1abb:		eor $a0			; 45 a0
B15_1abd:	.db $03
B15_1abe:	.db $ff
B15_1abf:	.db $cb
B15_1ac0:		rti				; 40 


B15_1ac1:		.db $00				; 00
B15_1ac2:		lsr a			; 4a
B15_1ac3:		;removed
	.db $d0 $01

B15_1ac5:		cmp $80			; c5 80
B15_1ac7:		ora ($ff, x)	; 01 ff
B15_1ac9:	.db $07
B15_1aca:		rti				; 40 


B15_1acb:		.db $00				; 00
B15_1acc:	.db $c7
B15_1acd:		rts				; 60 


B15_1ace:	.db $02
B15_1acf:		lsr a			; 4a
B15_1ad0:		bcc B15_1ad4 ; 90 02

B15_1ad2:	.db $ff
B15_1ad3:	.db $87
B15_1ad4:		.db $00				; 00
B15_1ad5:		ora ($ff, x)	; 01 ff
B15_1ad7:		asl $30			; 06 30
B15_1ad9:		.db $00				; 00
B15_1ada:		cmp $80			; c5 80
B15_1adc:	.db $02
B15_1add:		eor #$c0		; 49 c0
B15_1adf:	.db $02
B15_1ae0:	.db $ff
B15_1ae1:	.db $8b
B15_1ae2:		ldy #$00		; a0 00
B15_1ae4:	.db $4b
B15_1ae5:		cpx #$00		; e0 00
B15_1ae7:		cmp $80			; c5 80
B15_1ae9:		.db $00				; 00
B15_1aea:	.db $ff
B15_1aeb:	.db $44
B15_1aec:		bvc B15_1aee ; 50 00

B15_1aee:	.db $04
B15_1aef:		bcs B15_1af1 ; b0 00

B15_1af1:	.db $ff
B15_1af2:		ora $60			; 05 60
B15_1af4:		.db $00				; 00
B15_1af5:		cmp $80			; c5 80
B15_1af7:		.db $00				; 00
B15_1af8:	.db $47
B15_1af9:		ldy #$00		; a0 00
B15_1afb:	.db $cb
B15_1afc:		.db $00				; 00
B15_1afd:		ora ($8b, x)	; 01 8b
B15_1aff:		.db $00				; 00
B15_1b00:	.db $02
B15_1b01:	.db $ff
B15_1b02:	.db $89
B15_1b03:		cpx #$00		; e0 00
B15_1b05:	.db $ff
B15_1b06:		clc				; 18 
B15_1b07:	.db $bb
B15_1b08:	.db $1c
B15_1b09:	.db $bb
B15_1b0a:		eor ($bb, x)	; 41 bb
B15_1b0c:		eor ($bb), y	; 51 bb
B15_1b0e:		adc ($bb, x)	; 61 bb
B15_1b10:	.db $92
B15_1b11:	.db $bb
B15_1b12:	.db $9c
B15_1b13:	.db $bb
B15_1b14:		ldy $cbbb		; ac bb cb
B15_1b17:	.db $bb
B15_1b18:		eor $c0			; 45 c0
B15_1b1a:		ora ($ff, x)	; 01 ff
B15_1b1c:		.db $00				; 00
B15_1b1d:		rti				; 40 


B15_1b1e:		;removed
	.db $30 $80

B15_1b20:		bvs B15_1ae2 ; 70 c0

B15_1b22:		.db $00				; 00
B15_1b23:		cpy #$70		; c0 70
B15_1b25:		cpy #$e0		; c0 e0
B15_1b27:		rti				; 40 


B15_1b28:		eor ($70, x)	; 41 70
B15_1b2a:		cpy #$81		; c0 81
B15_1b2c:		bvs B15_1aee ; 70 c0

B15_1b2e:		ora ($d0, x)	; 01 d0
B15_1b30:		rts				; 60 


B15_1b31:	.db $c2
B15_1b32:		.db $00				; 00
B15_1b33:		;removed
	.db $30 $42

B15_1b35:		bvc B15_1ab7 ; 50 80

B15_1b37:	.db $82
B15_1b38:		bvc B15_1aba ; 50 80

B15_1b3a:	.db $02
B15_1b3b:		bcc B15_1b7d ; 90 40

B15_1b3d:	.db $c2
B15_1b3e:		;removed
	.db $b0 $60

B15_1b40:	.db $ff
B15_1b41:	.db $8b
B15_1b42:		ldy #$00		; a0 00
B15_1b44:	.db $07
B15_1b45:		jsr $8500		; 20 00 85
B15_1b48:		rti				; 40 


B15_1b49:		.db $00				; 00
B15_1b4a:		cmp $80			; c5 80
B15_1b4c:		.db $00				; 00
B15_1b4d:	.db $47
B15_1b4e:		ldy #$00		; a0 00
B15_1b50:	.db $ff
B15_1b51:		asl a			; 0a
B15_1b52:		bcs B15_1b54 ; b0 00

B15_1b54:	.db $87
B15_1b55:		cpx #$00		; e0 00
B15_1b57:	.db $47
B15_1b58:		cpx #$00		; e0 00
B15_1b5a:		cmp $c0			; c5 c0
B15_1b5c:		.db $00				; 00
B15_1b5d:		eor $80			; 45 80
B15_1b5f:		.db $00				; 00
B15_1b60:	.db $ff
B15_1b61:		rti				; 40 


B15_1b62:		bmi B15_1b44 ; 30 e0

B15_1b64:	.db $80
B15_1b65:		;removed
	.db $30 $e0

B15_1b67:		.db $00				; 00
B15_1b68:		rts				; 60 


B15_1b69:		bcs B15_1aeb ; b0 80

B15_1b6b:		rts				; 60 


B15_1b6c:		bvc B15_1b6e ; 50 00

B15_1b6e:		;removed
	.db $90 $20

B15_1b70:	.db $80
B15_1b71:		bcc B15_1b33 ; 90 c0

B15_1b73:		.db $00				; 00
B15_1b74:		;removed
	.db $d0 $80

B15_1b76:		sta ($20, x)	; 81 20
B15_1b78:		bvs B15_1b7b ; 70 01

B15_1b7a:		rts				; 60 


B15_1b7b:		;removed
	.db $30 $81

B15_1b7d:		ldy #$b0		; a0 b0
B15_1b7f:		ora ($d0, x)	; 01 d0
B15_1b81:	.db $80
B15_1b82:	.db $c2
B15_1b83:		jsr $4270		; 20 70 42
B15_1b86:		rts				; 60 


B15_1b87:		;removed
	.db $b0 $c2

B15_1b89:		rts				; 60 


B15_1b8a:		bmi B15_1bce ; 30 42

B15_1b8c:		;removed
	.db $90 $60

B15_1b8e:	.db $c2
B15_1b8f:		;removed
	.db $b0 $20

B15_1b91:	.db $ff
B15_1b92:	.db $cb
B15_1b93:	.db $80
B15_1b94:		ora ($4b, x)	; 01 4b
B15_1b96:		cpy #$01		; c0 01
B15_1b98:	.db $c7
B15_1b99:	.db $80
B15_1b9a:		ora ($ff, x)	; 01 ff
B15_1b9c:		asl a			; 0a
B15_1b9d:		bmi B15_1b9f ; 30 00

B15_1b9f:		sta $80			; 85 80
B15_1ba1:		.db $00				; 00
B15_1ba2:		ora $40			; 05 40
B15_1ba4:		.db $00				; 00
B15_1ba5:		ora #$c0		; 09 c0
B15_1ba7:		.db $00				; 00
B15_1ba8:	.db $87
B15_1ba9:		cpx #$00		; e0 00
B15_1bab:	.db $ff
B15_1bac:		rti				; 40 


B15_1bad:		;removed
	.db $30 $c0

B15_1baf:	.db $80
B15_1bb0:		;removed
	.db $30 $c0

B15_1bb2:		.db $00				; 00
B15_1bb3:		;removed
	.db $90 $60

B15_1bb5:		cpy #$90		; c0 90
B15_1bb7:		rti				; 40 


B15_1bb8:		rti				; 40 


B15_1bb9:		bne B15_1b3b ; d0 80

B15_1bbb:		sta ($00, x)	; 81 00
B15_1bbd:		;removed
	.db $70 $01

B15_1bbf:		bmi B15_1c01 ; 30 40

B15_1bc1:		cmp ($30, x)	; c1 30
B15_1bc3:		rti				; 40 


B15_1bc4:		eor ($b0, x)	; 41 b0
B15_1bc6:		cpy #$81		; c0 81
B15_1bc8:		;removed
	.db $b0 $a0

B15_1bca:	.db $ff
B15_1bcb:		dex				; ca 
B15_1bcc:		bvc B15_1bce ; 50 00

B15_1bce:		asl a			; 0a
B15_1bcf:		bcc B15_1bd1 ; 90 00

B15_1bd1:	.db $87
B15_1bd2:		cpy #$00		; c0 00
B15_1bd4:	.db $47
B15_1bd5:		cpy #$00		; c0 00
B15_1bd7:		cmp $a0			; c5 a0
B15_1bd9:		.db $00				; 00
B15_1bda:	.db $c7
B15_1bdb:		cpx #$00		; e0 00
B15_1bdd:		eor #$00		; 49 00
B15_1bdf:		ora ($09, x)	; 01 09
B15_1be1:		rts				; 60 


B15_1be2:		ora ($85, x)	; 01 85
B15_1be4:		ldy #$01		; a0 01
B15_1be6:	.db $0b
B15_1be7:	.db $80
B15_1be8:		ora ($89, x)	; 01 89
B15_1bea:		ldy #$01		; a0 01
B15_1bec:	.db $ff
B15_1bed:		sbc $05bb, y	; f9 bb 05
B15_1bf0:		ldy $bc06, x	; bc 06 bc
B15_1bf3:		and $bc			; 25 bc
B15_1bf5:		rol $42bc, x	; 3e bc 42
B15_1bf8:		ldy $a009, x	; bc 09 a0
B15_1bfb:		.db $00				; 00
B15_1bfc:		sta $e0			; 85 e0
B15_1bfe:		.db $00				; 00
B15_1bff:		cmp $60			; c5 60
B15_1c01:		ora ($49, x)	; 01 49
B15_1c03:		ldy #$01		; a0 01
B15_1c05:	.db $ff
B15_1c06:		ora $40			; 05 40
B15_1c08:		.db $00				; 00
B15_1c09:		cmp $40			; c5 40
B15_1c0b:		.db $00				; 00
B15_1c0c:		eor #$80		; 49 80
B15_1c0e:		.db $00				; 00
B15_1c0f:		ora #$20		; 09 20
B15_1c11:		ora ($87, x)	; 01 87
B15_1c13:		rti				; 40 


B15_1c14:		ora ($c7, x)	; 01 c7
B15_1c16:		rts				; 60 


B15_1c17:		ora ($49, x)	; 01 49
B15_1c19:	.db $80
B15_1c1a:		ora ($09, x)	; 01 09
B15_1c1c:		ldy #$01		; a0 01
B15_1c1e:		sta $e0			; 85 e0
B15_1c20:		ora ($45, x)	; 01 45
B15_1c22:		cpx #$01		; e0 01
B15_1c24:	.db $ff
B15_1c25:	.db $89
B15_1c26:		cpy #$01		; c0 01
B15_1c28:		ora #$40		; 09 40
B15_1c2a:	.db $02
B15_1c2b:	.db $87
B15_1c2c:		rts				; 60 


B15_1c2d:	.db $02
B15_1c2e:		cmp #$40		; c9 40
B15_1c30:	.db $02
B15_1c31:	.db $4b
B15_1c32:		rts				; 60 


B15_1c33:	.db $02
B15_1c34:	.db $cb
B15_1c35:	.db $80
B15_1c36:	.db $02
B15_1c37:	.db $c7
B15_1c38:		cpx #$02		; e0 02
B15_1c3a:		eor #$00		; 49 00
B15_1c3c:	.db $03
B15_1c3d:	.db $ff
B15_1c3e:	.db $07
B15_1c3f:		rti				; 40 


B15_1c40:		.db $00				; 00
B15_1c41:	.db $ff
B15_1c42:	.db $89
B15_1c43:		cpx #$03		; e0 03
B15_1c45:	.db $ff
B15_1c46:	.db $52
B15_1c47:		ldy $bc56, x	; bc 56 bc
B15_1c4a:		eor $5abc, y	; 59 bc 5a
B15_1c4d:		ldy $bc5e, x	; bc 5e bc
B15_1c50:		adc $bc			; 65 bc
B15_1c52:		eor $00			; 45 00
B15_1c54:		ora ($ff, x)	; 01 ff
B15_1c56:		cmp #$80		; c9 80
B15_1c58:	.db $03
B15_1c59:	.db $ff
B15_1c5a:		ora $80			; 05 80
B15_1c5c:		.db $00				; 00
B15_1c5d:	.db $ff
B15_1c5e:	.db $07
B15_1c5f:		rti				; 40 


B15_1c60:		.db $00				; 00
B15_1c61:	.db $8b
B15_1c62:		cpx #$02		; e0 02
B15_1c64:	.db $ff
B15_1c65:	.db $8b
B15_1c66:		cpy #$01		; c0 01
B15_1c68:	.db $ff
B15_1c69:		adc $81bc, x	; 7d bc 81
B15_1c6c:		ldy $bc85, x	; bc 85 bc
B15_1c6f:		sta $bc			; 85 bc
B15_1c71:		sta $bc			; 85 bc
B15_1c73:		stx $bc			; 86 bc
B15_1c75:	.db $9c
B15_1c76:		ldy $bca0, x	; bc a0 bc
B15_1c79:		tax				; aa 
B15_1c7a:		ldy $bcb4, x	; bc b4 bc
B15_1c7d:		asl $50			; 06 50
B15_1c7f:		.db $00				; 00
B15_1c80:	.db $ff
B15_1c81:	.db $8b
B15_1c82:		cpy #$02		; c0 02
B15_1c84:	.db $ff
B15_1c85:	.db $ff
B15_1c86:	.db $0c
B15_1c87:		beq B15_1c89 ; f0 00

B15_1c89:		dey				; 88 
B15_1c8a:		bmi B15_1c8d ; 30 01

B15_1c8c:	.db $0c
B15_1c8d:		bcs B15_1c90 ; b0 01

B15_1c8f:	.db $89
B15_1c90:		cpx #$01		; e0 01
B15_1c92:		asl a			; 0a
B15_1c93:		bcs B15_1c97 ; b0 02

B15_1c95:		stx $f0			; 86 f0
B15_1c97:	.db $02
B15_1c98:		eor $a0			; 45 a0
B15_1c9a:	.db $03
B15_1c9b:	.db $ff
B15_1c9c:	.db $cb
B15_1c9d:		rti				; 40 


B15_1c9e:		.db $00				; 00
B15_1c9f:	.db $ff
B15_1ca0:		ora #$60		; 09 60
B15_1ca2:	.db $03
B15_1ca3:		stx $90			; 86 90
B15_1ca5:	.db $03
B15_1ca6:		lsr $d0			; 46 d0
B15_1ca8:	.db $03
B15_1ca9:	.db $ff
B15_1caa:	.db $cb
B15_1cab:		rts				; 60 


B15_1cac:		ora ($0a, x)	; 01 0a
B15_1cae:		bcs B15_1cb1 ; b0 01

B15_1cb0:	.db $87
B15_1cb1:		cpx #$01		; e0 01
B15_1cb3:	.db $ff
B15_1cb4:	.db $c7
B15_1cb5:		jsr $4b00		; 20 00 4b
B15_1cb8:		rts				; 60 


B15_1cb9:		.db $00				; 00
B15_1cba:		cmp #$20		; c9 20
B15_1cbc:		ora ($4b, x)	; 01 4b
B15_1cbe:		rti				; 40 


B15_1cbf:		ora ($0b, x)	; 01 0b
B15_1cc1:		cpy #$01		; c0 01
B15_1cc3:	.db $87
B15_1cc4:		.db $00				; 00
B15_1cc5:	.db $02
B15_1cc6:	.db $0b
B15_1cc7:		rts				; 60 


B15_1cc8:	.db $02
B15_1cc9:		dey				; 88 
B15_1cca:		;removed
	.db $90 $02

B15_1ccc:		iny				; c8 
B15_1ccd:		;removed
	.db $b0 $02

B15_1ccf:	.db $4b
B15_1cd0:		cpx #$02		; e0 02
B15_1cd2:	.db $c7
B15_1cd3:		rti				; 40 


B15_1cd4:	.db $03
B15_1cd5:	.db $4b
B15_1cd6:	.db $80
B15_1cd7:	.db $03
B15_1cd8:	.db $ff
B15_1cd9:	.db $e7
B15_1cda:		ldy $bcf4, x	; bc f4 bc
B15_1cdd:		ora $1abd		; 0d bd 1a
B15_1ce0:		lda $bd2a, x	; bd 2a bd
B15_1ce3:		rol $3ebd		; 2e bd 3e
B15_1ce6:		lda $2005, x	; bd 05 20
B15_1ce9:		.db $00				; 00
B15_1cea:		cmp $20			; c5 20
B15_1cec:		.db $00				; 00
B15_1ced:	.db $47
B15_1cee:		rti				; 40 


B15_1cef:		.db $00				; 00
B15_1cf0:		eor $a0			; 45 a0
B15_1cf2:		ora ($ff, x)	; 01 ff
B15_1cf4:	.db $c7
B15_1cf5:	.db $80
B15_1cf6:		.db $00				; 00
B15_1cf7:		eor #$a0		; 49 a0
B15_1cf9:		.db $00				; 00
B15_1cfa:	.db $c7
B15_1cfb:	.db $80
B15_1cfc:		ora ($49, x)	; 01 49
B15_1cfe:		ldy #$01		; a0 01
B15_1d00:	.db $89
B15_1d01:		ldy #$01		; a0 01
B15_1d03:		dex				; ca 
B15_1d04:		;removed
	.db $30 $02

B15_1d06:		asl a			; 0a
B15_1d07:		;removed
	.db $70 $02

B15_1d09:	.db $87
B15_1d0a:		ldy #$02		; a0 02
B15_1d0c:	.db $ff
B15_1d0d:		ora #$a0		; 09 a0
B15_1d0f:		ora ($86, x)	; 01 86
B15_1d11:		;removed
	.db $d0 $01

B15_1d13:		cmp #$a0		; c9 a0
B15_1d15:	.db $02
B15_1d16:	.db $4b
B15_1d17:		cpy #$02		; c0 02
B15_1d19:	.db $ff
B15_1d1a:		ora $20			; 05 20
B15_1d1c:		.db $00				; 00
B15_1d1d:		cmp $20			; c5 20
B15_1d1f:		.db $00				; 00
B15_1d20:		eor #$60		; 49 60
B15_1d22:		.db $00				; 00
B15_1d23:		cmp $00			; c5 00
B15_1d25:		ora ($48, x)	; 01 48
B15_1d27:		bmi B15_1d2a ; 30 01

B15_1d29:	.db $ff
B15_1d2a:	.db $8b
B15_1d2b:	.db $80
B15_1d2c:		.db $00				; 00
B15_1d2d:	.db $ff
B15_1d2e:		ora $40			; 05 40
B15_1d30:	.db $03
B15_1d31:		cmp $e0			; c5 e0
B15_1d33:	.db $03
B15_1d34:		pha				; 48 
B15_1d35:		;removed
	.db $10 $04

B15_1d37:		php				; 08 
B15_1d38:		bcc B15_1d3e ; 90 04

B15_1d3a:		sta $c0			; 85 c0
B15_1d3c:	.db $04
B15_1d3d:	.db $ff
B15_1d3e:		ora #$a0		; 09 a0
B15_1d40:	.db $04
B15_1d41:	.db $87
B15_1d42:		cpy #$04		; c0 04
B15_1d44:	.db $47
B15_1d45:		cpy #$04		; c0 04
B15_1d47:		cmp $a0			; c5 a0
B15_1d49:	.db $04
B15_1d4a:	.db $ff
B15_1d4b:		ora $a0			; 05 a0
B15_1d4d:	.db $04
B15_1d4e:	.db $ff
B15_1d4f:		eor $63bd, y	; 59 bd 63
B15_1d52:		lda $bd73, x	; bd 73 bd
B15_1d55:	.db $77
B15_1d56:		lda $bd90, x	; bd 90 bd
B15_1d59:	.db $0b
B15_1d5a:		rti				; 40 


B15_1d5b:		.db $00				; 00
B15_1d5c:		stx $90			; 86 90
B15_1d5e:		.db $00				; 00
B15_1d5f:	.db $47
B15_1d60:		cpy #$01		; c0 01
B15_1d62:	.db $ff
B15_1d63:	.db $0b
B15_1d64:		ldy #$01		; a0 01
B15_1d66:	.db $87
B15_1d67:		cpx #$01		; e0 01
B15_1d69:		dec $90			; c6 90
B15_1d6b:	.db $02
B15_1d6c:		eor #$c0		; 49 c0
B15_1d6e:	.db $02
B15_1d6f:	.db $cb
B15_1d70:		rti				; 40 


B15_1d71:	.db $02
B15_1d72:	.db $ff
B15_1d73:		eor $a0			; 45 a0
B15_1d75:		.db $00				; 00
B15_1d76:	.db $ff
B15_1d77:		dex				; ca 
B15_1d78:		bmi B15_1d7a ; 30 00

B15_1d7a:		ora $60			; 05 60
B15_1d7c:	.db $03
B15_1d7d:		cmp $a0			; c5 a0
B15_1d7f:	.db $03
B15_1d80:		eor #$e0		; 49 e0
B15_1d82:	.db $03
B15_1d83:	.db $89
B15_1d84:		cpx #$03		; e0 03
B15_1d86:	.db $0b
B15_1d87:		cpy #$03		; c0 03
B15_1d89:		iny				; c8 
B15_1d8a:		bvc B15_1d8f ; 50 03

B15_1d8c:	.db $4b
B15_1d8d:	.db $80
B15_1d8e:	.db $03
B15_1d8f:	.db $ff
B15_1d90:	.db $0b
B15_1d91:		jsr $8600		; 20 00 86
B15_1d94:		bvs B15_1d96 ; 70 00

B15_1d96:	.db $8b
B15_1d97:		cpy #$00		; c0 00
B15_1d99:	.db $0b
B15_1d9a:		ldy #$01		; a0 01
B15_1d9c:	.db $87
B15_1d9d:		cpx #$01		; e0 01
B15_1d9f:	.db $ff
B15_1da0:		ldy $c6bd, x	; bc bd c6
B15_1da3:		lda $bdc9, x	; bd c9 bd
B15_1da6:		cmp #$bd		; c9 bd
B15_1da8:		dex				; ca 
B15_1da9:		lda $bdce, x	; bd ce bd
B15_1dac:		cpx $bd			; e4 bd
B15_1dae:		inx				; e8 
B15_1daf:		lda $bdef, x	; bd ef bd
B15_1db2:	.db $f3
B15_1db3:		lda $bdf7, x	; bd f7 bd
B15_1db6:	.db $fb
B15_1db7:		lda $bdff, x	; bd ff bd
B15_1dba:	.db $33
B15_1dbb:		ldx $600b, y	; be 0b 60
B15_1dbe:		.db $00				; 00
B15_1dbf:	.db $87
B15_1dc0:		ldy #$00		; a0 00
B15_1dc2:		ora $20			; 05 20
B15_1dc4:		.db $00				; 00
B15_1dc5:	.db $ff
B15_1dc6:	.db $8b
B15_1dc7:	.db $80
B15_1dc8:		.db $00				; 00
B15_1dc9:	.db $ff
B15_1dca:		ora $20			; 05 20
B15_1dcc:		.db $00				; 00
B15_1dcd:	.db $ff
B15_1dce:	.db $8b
B15_1dcf:	.db $80
B15_1dd0:		.db $00				; 00
B15_1dd1:	.db $c7
B15_1dd2:	.db $80
B15_1dd3:		.db $00				; 00
B15_1dd4:		lsr a			; 4a
B15_1dd5:		bcs B15_1dd7 ; b0 00

B15_1dd7:	.db $c7
B15_1dd8:		rti				; 40 


B15_1dd9:		ora ($4b, x)	; 01 4b
B15_1ddb:	.db $80
B15_1ddc:		ora ($08, x)	; 01 08
B15_1dde:		bpl B15_1de2 ; 10 02

B15_1de0:		sta $40			; 85 40
B15_1de2:	.db $02
B15_1de3:	.db $ff
B15_1de4:		.db $00				; 00
B15_1de5:		;removed
	.db $30 $20

B15_1de7:	.db $ff
B15_1de8:	.db $8b
B15_1de9:	.db $80
B15_1dea:		.db $00				; 00
B15_1deb:	.db $47
B15_1dec:		cpx #$01		; e0 01
B15_1dee:	.db $ff
B15_1def:	.db $cb
B15_1df0:		rts				; 60 


B15_1df1:		ora ($ff, x)	; 01 ff
B15_1df3:	.db $04
B15_1df4:		bvs B15_1df8 ; 70 02

B15_1df6:	.db $ff
B15_1df7:	.db $89
B15_1df8:		cpx #$02		; e0 02
B15_1dfa:	.db $ff
B15_1dfb:	.db $07
B15_1dfc:		rti				; 40 


B15_1dfd:		.db $00				; 00
B15_1dfe:	.db $ff
B15_1dff:		rti				; 40 


B15_1e00:		bmi B15_1d82 ; 30 80

B15_1e02:		rti				; 40 


B15_1e03:		bmi B15_1de5 ; 30 e0

B15_1e05:	.db $80
B15_1e06:		cpx #$60		; e0 60
B15_1e08:		ora ($30, x)	; 01 30
B15_1e0a:		jsr $30c1		; 20 c1 30
B15_1e0d:		jsr $7041		; 20 41 70
B15_1e10:		rts				; 60 


B15_1e11:		sta ($70, x)	; 81 70
B15_1e13:		rts				; 60 


B15_1e14:		ora ($a0, x)	; 01 a0
B15_1e16:		bmi B15_1d99 ; 30 81

B15_1e18:		bcs B15_1dba ; b0 a0

B15_1e1a:		ora ($e0, x)	; 01 e0
B15_1e1c:		bvs B15_1de0 ; 70 c2

B15_1e1e:		bpl B15_1e60 ; 10 40

B15_1e20:	.db $42
B15_1e21:		;removed
	.db $70 $a0

B15_1e23:	.db $02
B15_1e24:		;removed
	.db $70 $c0

B15_1e26:	.db $82
B15_1e27:		;removed
	.db $50 $e0

B15_1e29:	.db $82
B15_1e2a:		cpx #$c0		; e0 c0
B15_1e2c:	.db $03
B15_1e2d:		bmi B15_1daf ; 30 80

B15_1e2f:	.db $83
B15_1e30:		;removed
	.db $b0 $c0

B15_1e32:	.db $ff
B15_1e33:	.db $cb
B15_1e34:		jsr $cb00		; 20 00 cb
B15_1e37:	.db $80
B15_1e38:		.db $00				; 00
B15_1e39:	.db $ff
B15_1e3a:		pha				; 48 
B15_1e3b:		ldx $be52, y	; be 52 be
B15_1e3e:	.db $5c
B15_1e3f:		ldx $be66, y	; be 66 be
B15_1e42:		ror a			; 6a
B15_1e43:		ldx $be74, y	; be 74 be
B15_1e46:	.db $7b
B15_1e47:		ldx $700a, y	; be 0a 70
B15_1e4a:	.db $03
B15_1e4b:		sta $c0			; 85 c0
B15_1e4d:	.db $03
B15_1e4e:		eor $00			; 45 00
B15_1e50:	.db $03
B15_1e51:	.db $ff
B15_1e52:	.db $cb
B15_1e53:		ldy #$00		; a0 00
B15_1e55:	.db $0b
B15_1e56:		rti				; 40 


B15_1e57:		.db $00				; 00
B15_1e58:	.db $87
B15_1e59:	.db $80
B15_1e5a:		.db $00				; 00
B15_1e5b:	.db $ff
B15_1e5c:		lsr $10			; 46 10
B15_1e5e:		ora ($c7, x)	; 01 c7
B15_1e60:	.db $80
B15_1e61:	.db $02
B15_1e62:	.db $4b
B15_1e63:		cpy #$02		; c0 02
B15_1e65:	.db $ff
B15_1e66:		cmp #$80		; c9 80
B15_1e68:		.db $00				; 00
B15_1e69:	.db $ff
B15_1e6a:		asl $30			; 06 30
B15_1e6c:		.db $00				; 00
B15_1e6d:		cmp $80			; c5 80
B15_1e6f:		.db $00				; 00
B15_1e70:		eor #$c0		; 49 c0
B15_1e72:		.db $00				; 00
B15_1e73:	.db $ff
B15_1e74:		.db $00				; 00
B15_1e75:		bmi B15_1eb7 ; 30 40

B15_1e77:		sta ($90, x)	; 81 90
B15_1e79:		cpy #$ff		; c0 ff
B15_1e7b:	.db $89
B15_1e7c:		cpy #$02		; c0 02
B15_1e7e:	.db $ff
B15_1e7f:	.db $89
B15_1e80:		ldx $be99, y	; be 99 be
B15_1e83:		sta $adbe, x	; 9d be ad
B15_1e86:		ldx $beb1, y	; be b1 be
B15_1e89:		lsr $d0			; 46 d0
B15_1e8b:	.db $02
B15_1e8c:		dec $10			; c6 10
B15_1e8e:	.db $03
B15_1e8f:		pha				; 48 
B15_1e90:		bmi B15_1e95 ; 30 03

B15_1e92:		dey				; 88 
B15_1e93:		bcs B15_1e98 ; b0 03

B15_1e95:	.db $0c
B15_1e96:		;removed
	.db $70 $03

B15_1e98:	.db $ff
B15_1e99:		dex				; ca 
B15_1e9a:		bvc B15_1e9c ; 50 00

B15_1e9c:	.db $ff
B15_1e9d:		dex				; ca 
B15_1e9e:		bvs B15_1ea0 ; 70 00

B15_1ea0:	.db $4c $90 $00
B15_1ea3:		lsr $d0			; 46 d0
B15_1ea5:		.db $00				; 00
B15_1ea6:	.db $0c
B15_1ea7:		;removed
	.db $50 $01

B15_1ea9:		stx $b0			; 86 b0
B15_1eab:		ora ($ff, x)	; 01 ff
B15_1ead:		asl $30			; 06 30
B15_1eaf:		.db $00				; 00
B15_1eb0:	.db $ff
B15_1eb1:		iny				; c8 
B15_1eb2:		bcs B15_1eb4 ; b0 00

B15_1eb4:	.db $4c $f0 $00
B15_1eb7:	.db $ff
B15_1eb8:		dec $d8be		; ce be d8
B15_1ebb:		ldx $bee5, y	; be e5 be
B15_1ebe:		sbc #$be		; e9 be
B15_1ec0:	.db $f3
B15_1ec1:		ldx $bf69, y	; be 69 bf
B15_1ec4:		adc $0cbf, y	; 79 bf 0c
B15_1ec7:	.db $bf
B15_1ec8:	.db $83
B15_1ec9:	.db $bf
B15_1eca:	.db $5b
B15_1ecb:	.db $bf
B15_1ecc:		adc $bf			; 65 bf
B15_1ece:		eor #$c0		; 49 c0
B15_1ed0:		.db $00				; 00
B15_1ed1:		dec $90			; c6 90
B15_1ed3:		.db $00				; 00
B15_1ed4:		ora $20			; 05 20
B15_1ed6:		.db $00				; 00
B15_1ed7:	.db $ff
B15_1ed8:	.db $8b
B15_1ed9:	.db $80
B15_1eda:		.db $00				; 00
B15_1edb:	.db $0b
B15_1edc:		ldy #$04		; a0 04
B15_1ede:	.db $87
B15_1edf:		cpx #$04		; e0 04
B15_1ee1:		ora $60			; 05 60
B15_1ee3:	.db $04
B15_1ee4:	.db $ff
B15_1ee5:	.db $8b
B15_1ee6:		cpy #$00		; c0 00
B15_1ee8:	.db $ff
B15_1ee9:	.db $07
B15_1eea:		jsr $4b00		; 20 00 4b
B15_1eed:		bvc B15_1eef ; 50 00

B15_1eef:	.db $c7
B15_1ef0:		bpl B15_1ef2 ; 10 00

B15_1ef2:	.db $ff
B15_1ef3:		rti				; 40 


B15_1ef4:		;removed
	.db $50 $c0

B15_1ef6:	.db $80
B15_1ef7:		;removed
	.db $50 $c0

B15_1ef9:		.db $00				; 00
B15_1efa:		bvs B15_1e9c ; 70 a0

B15_1efc:		cpy #$90		; c0 90
B15_1efe:		rti				; 40 


B15_1eff:		rti				; 40 


B15_1f00:		cpx #$90		; e0 90
B15_1f02:		cmp ($20, x)	; c1 20
B15_1f04:		;removed
	.db $30 $41

B15_1f06:		;removed
	.db $90 $a0

B15_1f08:		sta ($90, x)	; 81 90
B15_1f0a:		cpy #$ff		; c0 ff
B15_1f0c:		rti				; 40 


B15_1f0d:		bmi B15_1eef ; 30 e0

B15_1f0f:	.db $80
B15_1f10:		bmi B15_1ef2 ; 30 e0

B15_1f12:		.db $00				; 00
B15_1f13:		rts				; 60 


B15_1f14:		bcs B15_1e96 ; b0 80

B15_1f16:		rts				; 60 


B15_1f17:		bvc B15_1f19 ; 50 00

B15_1f19:		bcc B15_1f3b ; 90 20

B15_1f1b:	.db $80
B15_1f1c:		bcc B15_1ede ; 90 c0

B15_1f1e:		.db $00				; 00
B15_1f1f:		;removed
	.db $d0 $80

B15_1f21:		sta ($00, x)	; 81 00
B15_1f23:		bcs B15_1f26 ; b0 01

B15_1f25:		rti				; 40 


B15_1f26:		bvs B15_1ea9 ; 70 81

B15_1f28:		rti				; 40 


B15_1f29:		;removed
	.db $d0 $01

B15_1f2b:		;removed
	.db $70 $a0

B15_1f2d:		sta ($b0, x)	; 81 b0
B15_1f2f:		ldy #$01		; a0 01
B15_1f31:		cpx #$70		; e0 70
B15_1f33:		cmp ($e0, x)	; c1 e0
B15_1f35:		rti				; 40 


B15_1f36:	.db $42
B15_1f37:		jsr $c270		; 20 70 c2
B15_1f3a:		rts				; 60 


B15_1f3b:		bvc B15_1f7f ; 50 42

B15_1f3d:		;removed
	.db $90 $80

B15_1f3f:	.db $82
B15_1f40:		;removed
	.db $90 $e0

B15_1f42:	.db $02
B15_1f43:		cpy #$b0		; c0 b0
B15_1f45:	.db $c2
B15_1f46:		bcs B15_1f68 ; b0 20

B15_1f48:	.db $42
B15_1f49:		cpx #$50		; e0 50
B15_1f4b:	.db $c3
B15_1f4c:		jsr $4370		; 20 70 43
B15_1f4f:		rts				; 60 


B15_1f50:		;removed
	.db $b0 $c3

B15_1f52:		rts				; 60 


B15_1f53:		;removed
	.db $30 $43

B15_1f55:		bcc B15_1fb7 ; 90 60

B15_1f57:	.db $c3
B15_1f58:		bcs B15_1f7a ; b0 20

B15_1f5a:	.db $ff
B15_1f5b:		asl a			; 0a
B15_1f5c:		bmi B15_1f5e ; 30 00

B15_1f5e:		sta $80			; 85 80
B15_1f60:		.db $00				; 00
B15_1f61:		ora $80			; 05 80
B15_1f63:	.db $02
B15_1f64:	.db $ff
B15_1f65:	.db $8b
B15_1f66:		cpx #$02		; e0 02
B15_1f68:	.db $ff
B15_1f69:	.db $cb
B15_1f6a:		rti				; 40 


B15_1f6b:		.db $00				; 00
B15_1f6c:	.db $0b
B15_1f6d:		jsr $8700		; 20 00 87
B15_1f70:		rts				; 60 


B15_1f71:		.db $00				; 00
B15_1f72:	.db $c7
B15_1f73:		ldy #$00		; a0 00
B15_1f75:	.db $4b
B15_1f76:		cpx #$00		; e0 00
B15_1f78:	.db $ff
B15_1f79:	.db $0b
B15_1f7a:	.db $80
B15_1f7b:		.db $00				; 00
B15_1f7c:		stx $d0			; 86 d0
B15_1f7e:		.db $00				; 00
B15_1f7f:		lsr $90			; 46 90
B15_1f81:		.db $00				; 00
B15_1f82:	.db $ff
B15_1f83:		dex				; ca 
B15_1f84:		bvs B15_1f86 ; 70 00

B15_1f86:		asl a			; 0a
B15_1f87:		bvc B15_1f89 ; 50 00

B15_1f89:		sta $a0			; 85 a0
B15_1f8b:		.db $00				; 00
B15_1f8c:	.db $ff
B15_1f8d:	.db $9b
B15_1f8e:	.db $bf
B15_1f8f:	.db $9f
B15_1f90:	.db $bf
B15_1f91:		ldx $bf			; a6 bf
B15_1f93:		tax				; aa 
B15_1f94:	.db $bf
B15_1f95:		tsx				; ba 
B15_1f96:	.db $bf
B15_1f97:		cpy $bf			; c4 bf
B15_1f99:		iny				; c8 
B15_1f9a:	.db $bf
B15_1f9b:		pha				; 48 
B15_1f9c:		bcs B15_1f9f ; b0 01

B15_1f9e:	.db $ff
B15_1f9f:		.db $00				; 00
B15_1fa0:		;removed
	.db $30 $20

B15_1fa2:	.db $c2
B15_1fa3:		bcs B15_1fc5 ; b0 20

B15_1fa5:	.db $ff
B15_1fa6:	.db $8b
B15_1fa7:	.db $80
B15_1fa8:		.db $00				; 00
B15_1fa9:	.db $ff
B15_1faa:		cmp $40			; c5 40
B15_1fac:		.db $00				; 00
B15_1fad:	.db $4b
B15_1fae:		ldy #$00		; a0 00
B15_1fb0:		ora $a0			; 05 a0
B15_1fb2:		.db $00				; 00
B15_1fb3:	.db $0b
B15_1fb4:		rts				; 60 


B15_1fb5:		ora ($88, x)	; 01 88
B15_1fb7:		bcc B15_1fba ; 90 01

B15_1fb9:	.db $ff
B15_1fba:		sty $01f0		; 8c f0 01
B15_1fbd:	.db $0c
B15_1fbe:		;removed
	.db $90 $02

B15_1fc0:	.db $87
B15_1fc1:		cpx #$02		; e0 02
B15_1fc3:	.db $ff
B15_1fc4:	.db $47
B15_1fc5:		ldy #$01		; a0 01
B15_1fc7:	.db $ff
B15_1fc8:		cmp #$00		; c9 00
B15_1fca:	.db $02