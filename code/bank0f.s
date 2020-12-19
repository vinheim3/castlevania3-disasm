
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


func_0f_14ae:
B15_14ae:		lda wCurrScrollXWithinRoom			; a5 56
B15_14b0:		bne B15_152c ; d0 7a

B15_14b2:		lda wCurrRoomGroup		; a5 32
B15_14b4:		asl a			; 0a
B15_14b5:		tay				; a8 
B15_14b6:		lda data_0f_166d.w, y	; b9 6d b6
B15_14b9:		sta $08			; 85 08
B15_14bb:		lda data_0f_166d.w+1, y	; b9 6e b6
B15_14be:		sta $09			; 85 09
B15_14c0:		lda wCurrRoomSection			; a5 33
B15_14c2:		asl a			; 0a
B15_14c3:		sta $00			; 85 00
B15_14c5:		asl a			; 0a
B15_14c6:		clc				; 18 
B15_14c7:		adc $00			; 65 00
B15_14c9:		tay				; a8 
B15_14ca:		lda ($08), y	; b1 08
B15_14cc:		cmp wCurrRoomIdx			; c5 34
B15_14ce:		bne B15_152c ; d0 5c

B15_14d0:		iny				; c8 
B15_14d1:		lda ($08), y	; b1 08
B15_14d3:		cmp wCurrScrollXRoom			; c5 57
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

B15_14fd:		lda wPlayerStateDoubled.w		; ad 65 05
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
B15_1512:		sta wEntityFacingLeft.w		; 8d a8 04
B15_1515:		lda wPlayerStateDoubled.w		; ad 65 05
B15_1518:		ora #$80		; 09 80
B15_151a:		sta wPlayerStateDoubled.w		; 8d 65 05
B15_151d:		lda #$02		; a9 02
B15_151f:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B15_1522:		lda #$08		; a9 08
B15_1524:		sta wInGameSubstate			; 85 2a
B15_1526:		lda #$00		; a9 00
B15_1528:		sta $6b			; 85 6b
B15_152a:		sec				; 38 
B15_152b:		rts				; 60 

B15_152c:		clc				; 18 
B15_152d:		rts				; 60 

B15_152e:		lda wCurrPlayer.w		; ad 4e 05
B15_1531:		cmp #$03		; c9 03
B15_1533:		bne B15_152a ; d0 f5

B15_1535:		lda #$36		; a9 36
B15_1537:		sta wPlayerStateDoubled.w		; 8d 65 05
B15_153a:		stx $05d8		; 8e d8 05
B15_153d:		sec				; 38 
B15_153e:		rts				; 60 


getAddrOfRoomsStairsData:
B15_153f:		lda wCurrRoomGroup		; a5 32
B15_1541:		asl a			; 0a
B15_1542:		tay				; a8 
B15_1543:		lda stairsLocationData.w, y	; b9 c6 b7
B15_1546:		sta $08			; 85 08
B15_1548:		lda stairsLocationData.w+1, y	; b9 c7 b7
B15_154b:		sta $09			; 85 09

B15_154d:		lda wCurrRoomSection			; a5 33
B15_154f:		asl a			; 0a
B15_1550:		tay				; a8 
B15_1551:		lda ($08), y	; b1 08
B15_1553:		sta $0a			; 85 0a
B15_1555:		iny				; c8 
B15_1556:		lda ($08), y	; b1 08
B15_1558:		sta $0b			; 85 0b

; load 2 room vars into 69/6a
B15_155a:		lda wCurrRoomIdx			; a5 34
B15_155c:		asl a			; 0a
B15_155d:		tay				; a8 
B15_155e:		lda ($0a), y	; b1 0a
B15_1560:		sta wCurrRoomStairsDataAddr			; 85 69
B15_1562:		iny				; c8 
B15_1563:		lda ($0a), y	; b1 0a
B15_1565:		sta wCurrRoomStairsDataAddr+1			; 85 6a
B15_1567:		rts				; 60 


secIfCanClimbStairsInVerticalRoom:
B15_1568:		lda wCurrScrollXRoom			; a5 57
B15_156a:		sta $08			; 85 08
B15_156c:		lda wEntityBaseY.w		; ad 1c 04
B15_156f:		sec				; 38 
B15_1570:		sbc #$33		; e9 33
B15_1572:		bcc B15_15f0 ; 90 7c

B15_1574:		clc				; 18 
B15_1575:		adc wCurrScrollXWithinRoom			; 65 56
B15_1577:		sta $0c			; 85 0c
B15_1579:		bcs B15_157f ; b0 04

B15_157b:		cmp #$f0		; c9 f0
B15_157d:		bcc B15_1586 ; 90 07

B15_157f:		clc				; 18 
B15_1580:		adc #$10		; 69 10
B15_1582:		sta $0c			; 85 0c
B15_1584:		inc $08			; e6 08
B15_1586:		ldy #$00		; a0 00
B15_1588:		lda (wCurrRoomStairsDataAddr), y	; b1 69
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
B15_15a2:		lda (wCurrRoomStairsDataAddr), y	; b1 69
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
B15_15d5:		lda (wCurrRoomStairsDataAddr), y	; b1 69
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


b0f_secIfCanClimbDownStairs:
B15_15f2:		lda #$01		; a9 01
	bne +

b0f_secIfCanClimbUpStairs:
B15_15f6:		lda #$00		; a9 00

+	sta $0e			; 85 0e
B15_15fa:		lda wCurrRoomMetadataByte			; a5 68
B15_15fc:		bpl B15_1601 ; 10 03

; vertical room
B15_15fe:		jmp secIfCanClimbStairsInVerticalRoom		; 4c 68 b5

; store player's exact position within room
B15_1601:		lda wEntityBaseX.w		; ad 38 04
B15_1604:		clc				; 18 
B15_1605:		adc wCurrScrollXWithinRoom			; 65 56
B15_1607:		sta $0c			; 85 0c

; store player's exact room
B15_1609:		lda wCurrScrollXRoom			; a5 57
B15_160b:		adc #$00		; 69 00
B15_160d:		sta $08			; 85 08

; 1st byte of 69
B15_160f:		ldy #$00		; a0 00

@Next3Bytes:
B15_1611:		lda (wCurrRoomStairsDataAddr), y	; b1 69
B15_1613:		iny				; c8 
B15_1614:		cmp #$ff		; c9 ff
B15_1616:		beq B15_166b ; @clcDone

B15_1618:		ldx $0e			; a6 0e
B15_161a:		beq B15_1621 ; @func_1621

; checking if can duck? or going down stairs
; proceed if bit 7 set
B15_161c:		asl a			; 0a
B15_161d:		bcc B15_1667 ; @iny2ToNext3Bytes

	bcs +

; checking stairs?
; proceed if bit 7 clear
@func_1621:
B15_1621:		asl a			; 0a
B15_1622:		bcs B15_1667 ; @iny2ToNext3Bytes

+
; lower nybble into upper nybble
; proceed if player Y within 6 pixels of that nybble
	sta $0a			; 85 0a
B15_1626:		asl a			; 0a
B15_1627:		asl a			; 0a
B15_1628:		asl a			; 0a
B15_1629:		sbc wEntityBaseY.w		; ed1c 04
	bcs +

B15_162e:		eor #$ff		; 49 ff
+	cmp #$06		; c9 06
B15_1632:		bcs B15_1667 ; @iny2ToNext3Bytes

; player's exact x position within room
; -2nd byte into $0b
B15_1634:		lda $0c			; a5 0c
B15_1636:		sec				; 38 
B15_1637:		sbc (wCurrRoomStairsDataAddr), y	; f1 69
B15_1639:		iny				; c8 
B15_163a:		sta $0b			; 85 0b

; player's exact room
; -3rd byte into $09
B15_163c:		lda $08			; a5 08
B15_163e:		sbc (wCurrRoomStairsDataAddr), y	; f1 69
B15_1640:		sta $09			; 85 09
B15_1642:		bcs B15_1659 ; @func_1659

; player's room below one we're checkign
B15_1644:		cmp #$ff		; c9 ff
B15_1646:		bne B15_1668 ; @inyToNext3Bytes

; player's room 1 below one we're checking
; check diff of player x and 2nd byte < 0xd
B15_1648:		lda $0b			; a5 0b
B15_164a:		cmp #$f3		; c9 f3
B15_164c:		bcc B15_1668 ; @inyToNext3Bytes

; get positive value of diff into $0b
B15_164e:		eor #$ff		; 49 ff
B15_1650:		clc				; 18 
B15_1651:		adc #$01		; 69 01
B15_1653:		sta $0b			; 85 0b

; $0d = 0
B15_1655:		ldx #$00		; a2 00
B15_1657:		beq B15_1663 ; @secDone

; player's room equal or greater to one we're checking
@func_1659:
B15_1659:		bne B15_1668 ; @inyToNext3Bytes

; check diff of player x and 2nd byte < 0xd
B15_165b:		lda $0b			; a5 0b
B15_165d:		cmp #$0d		; c9 0d
B15_165f:		bcs B15_1668 ; @inyToNext3Bytes

; $0d = 1
B15_1661:		ldx #$01		; a2 01

@secDone:
B15_1663:		stx $0d			; 86 0d
B15_1665:		sec				; 38 
B15_1666:		rts				; 60 

@iny2ToNext3Bytes:
B15_1667:		iny				; c8 

@inyToNext3Bytes:
B15_1668:		iny				; c8 
B15_1669:		bne B15_1611 ; @Next3Bytes

@clcDone:
B15_166b:		clc				; 18 
B15_166c:		rts				; 60 


data_0f_166d:
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
B15_176a:		.db $70 $70

B15_176c:		.db $00				; 00
B15_176d:		.db $00				; 00
B15_176e:		.db $00				; 00
B15_176f:		.db $00				; 00
B15_1770:		.db $70 $70

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
