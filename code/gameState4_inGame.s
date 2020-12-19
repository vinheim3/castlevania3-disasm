
gameState4_inGame:
	jsr inGameCommonFunc
	lda wIsPaused
	beq +
	rts
+	lda wInGameSubstate
	jsr jumpTablePreserveY

	.dw inGameSubstate00 ; clears screen
	.dw inGameSubstate01
	.dw inGameSubstate02
	.dw inGameSubstate03
	.dw inGameSubstate04
	.dw inGameSubstate05
	.dw inGameSubstate06
	.dw inGameSubstate07
	.dw inGameSubstate08
	.dw inGameSubstate09
	.dw inGameSubstate0a
	.dw inGameSubstate0b
	.dw inGameSubstate0c
	.dw inGameSubstate0d
	.dw inGameSubstate0e
	.dw inGameSubstate0f
	.dw inGameSubstate10
	.dw inGameSubstate11
	.dw inGameSubstate12_stub
	.dw inGameSubstate13
	.dw inGameSubstate14
	.dw inGameSubstate15
	.dw inGameSubstate16
	.dw inGameSubstate17
	.dw inGameSubstate18
	.dw inGameSubstate19
	.dw inGameSubstate1a
	.dw inGameSubstate1b
	.dw inGameSubstate1c
	.dw inGameSubstate1d
	.dw inGameSubstate1e
	.dw inGameSubstate1f


inGameSubstate1f:
B31_13d1:		lda #$02		; a9 02
B31_13d3:		sta $1c			; 85 1c

	jsr_8000Func func_00_11d5

B31_13dd:		jmp func_1f_068f		; 4c 8f e6


inGameSubstate1e:
	jmp_8000Func func_00_1215


inGameSubstate19:
	jmp_8000Func func_00_11b2


inGameSubstate00:
B31_13f0:		jsr func_1f_0bfd		; 20 fd eb
B31_13f3:		inc wInGameSubstate			; e6 2a
B31_13f5:		rts				; 60 


inGameSubstate01:
B31_13f6:		jsr func_1f_1753		; 20 53 f7
B31_13f9:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_13fc:		jsr func_1f_05d3		; 20 d3 e5
B31_13ff:		jsr getCurrRoomMetatileTilesPalettesAndMetadataByte		; 20 67 d0

	jsr_8000Func func_1c_0588
B31_140a:		jsr func_1c_05b8		; 20 b8 85
B31_140d:		jsr func_1c_0642		; 20 42 86

B31_1410:		jsr func_1e_10f8		; 20 f8 d0

	jsr_a000Func getAddrOfRoomsStairsData
	jsr_8000Func func_00_1702

B31_1423:		bcs B31_143e ; b0 19

@loop:
B31_1425:		lda wCurrRoomMetadataByte			; a5 68
B31_1427:		bmi B31_1433 ; 30 0a

B31_1429:		jsr func_1e_0d83		; 20 83 cd
B31_142c:		lda #$00		; a9 00
B31_142e:		sta $8d			; 85 8d
B31_1430:		inc wInGameSubstate			; e6 2a
B31_1432:		rts				; 60 

B31_1433:		jsr func_1e_0d7b		; 20 7b cd
B31_1436:		lda #$00		; a9 00
B31_1438:		sta $8d			; 85 8d
B31_143a:		lda #$04		; a9 04
B31_143c:		bne B31_1474 ; d0 36

B31_143e:		lda $7d			; a5 7d
B31_1440:		and #$f0		; 29 f0
B31_1442:		cmp #$10		; c9 10
B31_1444:		beq B31_1464 ; f0 1e

B31_1446:		cmp #$20		; c9 20
B31_1448:		beq B31_1425 ; f0 db

B31_144a:		cmp #$30		; c9 30
B31_144c:		beq B31_1425 ; f0 d7

B31_144e:		cmp #$40		; c9 40
B31_1450:		beq B31_1459 ; f0 07

B31_1452:		cmp #$70		; c9 70
B31_1454:		beq B31_1477 ; f0 21

B31_1456:		jmp B31_1425		; @loop

B31_1459:		ldy #$00		; a0 00
B31_145b:		sty $0780		; 8c 80 07
B31_145e:		iny				; c8 
B31_145f:		sty $0781		; 8c 81 07
B31_1462:		bne B31_1425 ; d0 c1

B31_1464:		lda #$02		; a9 02
B31_1466:		sta $1c			; 85 1c
B31_1468:		jsr func_1e_0d83		; 20 83 cd
B31_146b:		jsr func_1f_1757		; 20 57 f7
B31_146e:		lda #$00		; a9 00
B31_1470:		sta $64			; 85 64
B31_1472:		lda #$09		; a9 09

B31_1474:		sta wInGameSubstate			; 85 2a
B31_1476:		rts				; 60 

B31_1477:		lda #$13		; a9 13
B31_1479:		bne B31_1474 ; d0 f9

inGameSubstate02:
B31_147b:		lda #$02		; a9 02
B31_147d:		sta $1c			; 85 1c
B31_147f:		lda $8d			; a5 8d
B31_1481:		bne B31_1491 ; d0 0e

func_1f_1483:
B31_1483:		jsr func_1f_1757		; 20 57 f7

func_1f_1486:
	jsr_8000Func func_00_0d66
B31_148e:		inc $8d			; e6 8d
B31_1490:		rts				; 60 

B31_1491:		jsr func_1e_0dc8		; 20 c8 cd
B31_1494:		bcs B31_1497 ; b0 01

B31_1496:		rts				; 60 

B31_1497:		lda #$00		; a9 00
B31_1499:		sta $1c			; 85 1c
B31_149b:		jsr func_1e_0ff9		; 20 f9 cf
B31_149e:		jsr func_1f_05ec		; 20 ec e5
B31_14a1:		jsr func_1f_14d4		; 20 d4 f4
B31_14a4:		lda $7d			; a5 7d
B31_14a6:		and #$f0		; 29 f0
B31_14a8:		cmp #$10		; c9 10
B31_14aa:		beq B31_14c7 ; f0 1b

B31_14ac:		cmp #$20		; c9 20
B31_14ae:		beq B31_14c2 ; f0 12

B31_14b0:		cmp #$30		; c9 30
B31_14b2:		beq B31_14b7 ; f0 03

B31_14b4:		inc wInGameSubstate			; e6 2a
B31_14b6:		rts				; 60 

B31_14b7:	
	jsr_8000Func func_00_17e1
B31_14bf:		jmp B31_14b4		; 4c b4 f4

B31_14c2:		lda #$0f		; a9 0f
B31_14c4:		sta wInGameSubstate			; 85 2a
B31_14c6:		rts				; 60 

B31_14c7:	
	jsr_8000Func func_00_1802
B31_14cf:		lda #$0a		; a9 0a
B31_14d1:		sta wInGameSubstate			; 85 2a
B31_14d3:		rts				; 60 


func_1f_14d4:
B31_14d4:		lda #$9c		; a9 9c
B31_14d6:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_14d9:		jmp $bc29		; 4c 29 bc


inGameSubstate0f:
	jsr_8000Func func_00_16d0
B31_14e4:		bcc B31_1516 ; 90 30

B31_14e6:		lda #$10		; a9 10
B31_14e8:		sta wInGameSubstate			; 85 2a
B31_14ea:		lda #$00		; a9 00
B31_14ec:		sta $6b			; 85 6b
B31_14ee:		rts				; 60 


inGameSubstate1b:
B31_14ef:		lda $c7			; a5 c7
B31_14f1:		beq B31_14fb ; f0 08

B31_14f3:		dec $c7			; c6 c7
B31_14f5:		bne B31_1516 ; d0 1f

B31_14f7:		lda #$00		; a9 00
B31_14f9:		sta $6b			; 85 6b
B31_14fb:	jsr_a000Func func_01_1a46
B31_1503:		jmp inGameSubstate03		; 4c 16 f5


inGameSubstate0a:
	jsr_a000Func func_19_03fe
	jsr_8000Func func_1c_0529

inGameSubstate03:
B31_1516:		jsr func_1f_155d		; 20 5d f5
B31_1519:		bcs B31_155c ; b0 41

	jsr_8000Func func_00_0f0b
	jsr_8000Func func_1c_0a21
B31_152b:		lda $bf			; a5 bf
B31_152d:		ora wPlayerStateDoubled.w		; 0d 65 05
B31_1530:		bmi B31_155c ; 30 2a

B31_1532:		lda $78			; a5 78
B31_1534:		bne B31_1539 ; d0 03

B31_1536:		jsr func_1e_1175		; 20 75 d1
B31_1539:	jsr_a000Func func_05_0f9d
	jsr_8000Func func_14_008a

B31_1549:		lda #$96		; a9 96
B31_154b:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_154e:		jsr func_1f_1de3		; 20 e3 fd
	jsr_8000Func func_04_1faa
B31_1559:		jmp func_04_000c		; 4c 0c 80

B31_155c:		rts				; 60 


func_1f_155d:
B31_155d:		lda $2c			; a5 2c
B31_155f:		bne B31_158b ; d0 2a

B31_1561:		lda wJoy1NewButtonsPressed			; a5 26
B31_1563:		and #$20		; 29 20
B31_1565:		beq B31_158b ; f0 24

B31_1567:		lda #$88		; a9 88
B31_1569:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_156c:		jsr $b8eb		; 20 eb b8
B31_156f:		bcs B31_158b ; b0 1a

B31_1571:		lda wInGameSubstate			; a5 2a
B31_1573:		cmp #$1b		; c9 1b
B31_1575:		beq B31_158b ; f0 14

B31_1577:		lda #$88		; a9 88
B31_1579:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_157c:		jsr $b1b4		; 20 b4 b1
B31_157f:		bcc B31_158b ; 90 0a

B31_1581:		lda #$94		; a9 94
B31_1583:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1586:		jsr $849e		; 20 9e 84
B31_1589:		sec				; 38 
B31_158a:		rts				; 60 


B31_158b:		clc				; 18 
B31_158c:		rts				; 60 


inGameSubstate04:
B31_158d:		lda #$02		; a9 02
B31_158f:		sta $1c			; 85 1c
B31_1591:		lda $8d			; a5 8d
B31_1593:		bne B31_159b ; d0 06

B31_1595:		jsr func_1f_175b		; 20 5b f7
B31_1598:		jmp func_1f_1486		; 4c 86 f4

B31_159b:		jsr func_1e_0c47		; 20 47 cc
B31_159e:		bcs B31_15a1 ; b0 01

B31_15a0:		rts				; 60 

B31_15a1:		lda #$00		; a9 00
B31_15a3:		sta $1c			; 85 1c
B31_15a5:		jsr func_1f_14d4		; 20 d4 f4
B31_15a8:		jsr func_1e_0f8c		; 20 8c cf
	jsr_8000Func func_14_01f8
	jsr_8000Func func_04_1d17
B31_15bb:		inc wInGameSubstate			; e6 2a
B31_15bd:		rts				; 60 


inGameSubstate05:
B31_15be:		jsr func_1f_155d		; 20 5d f5
B31_15c1:		bcs B31_1608 ; b0 45

	jsr_8000Func func_00_0f0b
	jsr_8000Func func_1c_0a21
B31_15d3:		lda wPlayerStateDoubled.w		; ad 65 05
B31_15d6:		ora $bf			; 05 bf
B31_15d8:		bmi B31_1608 ; 30 2e

B31_15da:		jsr func_1e_0b0b		; 20 0b cb
	jsr_8000Func func_1c_0570
	jsr_a000Func func_05_0f9d
B31_15ed:		lda #$96		; a9 96
B31_15ef:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_15f2:		jsr func_1f_1de3		; 20 e3 fd
	jsr_8000Func func_14_0262
	jsr_8000Func func_04_1ed6
B31_1605:		jsr func_04_000c		; 20 0c 80
B31_1608:		rts				; 60 


inGameSubstate06:
B31_1609:		lda #$02		; a9 02
B31_160b:		sta $1c			; 85 1c
B31_160d:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_1610:		jsr stairsSetSectionRoomAndScreen		; 20 fb d3
B31_1613:		lda #$07		; a9 07
B31_1615:		sta wInGameSubstate			; 85 2a
B31_1617:		rts				; 60 


inGameSubstate07:
B31_1618:		lda #$02		; a9 02
B31_161a:		sta $1c			; 85 1c
B31_161c:		jsr func_1f_07a0		; 20 a0 e7
B31_161f:		jsr setNametableVerticalMirroring		; 20 5f f7
B31_1622:		jsr func_1f_08e3		; 20 e3 e8
B31_1625:		lda #$01		; a9 01
B31_1627:		sta wInGameSubstate			; 85 2a
B31_1629:		rts				; 60 


inGameSubstate12_stub:
	rts


inGameSubstate17:
	jmp_8000Func func_00_1ddb


inGameSubstate11:
B31_1633:		lda #$82		; a9 82
B31_1635:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1638:		ldx $07ec		; ae ec 07
B31_163b:		bne B31_1657 ; d0 1a

B31_163d:		jsr func_02_0001		; 20 01 80
B31_1640:		lda $07ec		; ad ec 07
B31_1643:		bne B31_1656 ; d0 11
B31_1645:		lda $07ed		; ad ed 07
B31_1648:		and #$7f		; 29 7f
B31_164a:		cmp #$0c		; c9 0c
B31_164c:		bcs B31_1656 ; b0 08
	jsr_8000Func func_00_0f0b
B31_1656:		rts				; 60 

B31_1657:		dex				; ca 
B31_1658:		bne B31_1660 ; d0 06

B31_165a:		jsr func_02_028e		; 20 8e 82
B31_165d:		jmp B31_166f		; 4c 6f f6

B31_1660:		dex				; ca 
B31_1661:		bne B31_1669 ; d0 06

B31_1663:		jsr func_02_03cf		; 20 cf 83
B31_1666:		jmp B31_166f		; 4c 6f f6

B31_1669:		dex				; ca 
B31_166a:		bne B31_166f ; d0 03

B31_166c:		jsr func_02_045e		; 20 5e 84

B31_166f:		lda $07ee		; ad ee 07
B31_1672:		beq B31_1680 ; f0 0c

B31_1674:		lda #$00		; a9 00
B31_1676:		sta $07ed		; 8d ed 07
B31_1679:		sta $07ee		; 8d ee 07
B31_167c:		inc $07ec		; ee ec 07
B31_167f:		rts				; 60 

B31_1680:		jmp func_02_14b8		; 4c b8 94


inGameCommonFunc:
B31_1683:		lda wNametableMapping			; a5 25
B31_1685:		cmp #NT_SINGLE_SCREEN_FILL_MODE		; @done
B31_1687:		beq B31_16be ; f0 35

B31_1689:		lda $1e			; a5 1e
B31_168b:		ora wCinematicsController			; 05 2c
B31_168d:		ora $1c			; 05 1c
B31_168f:		ora $ab			; 05 ab
B31_1691:		bne B31_16be ; @done

B31_1693:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_1695:		ldy wIsPaused			; a4 2b
B31_1697:		bne B31_16a6 ; @currentlyPaused

; not paused
B31_1699:		and #PADF_START		; 29 10
B31_169b:		beq B31_16be ; @done

; pressing start pauses, and plays sound
B31_169d:		lda #$01		; a9 01
B31_169f:		sta wIsPaused			; 85 2b
B31_16a1:		lda #SND_PAUSE		; a9 4d
B31_16a3:		jmp playSound		; 4c 5f e2

@currentlyPaused:
B31_16a6:		lda wInGameSubstate			; a5 2a
B31_16a8:		cmp #$0a		; c9 0a
B31_16aa:		bne B31_16b4 ; d0 08

	jsr_8000Func loadCurrRoomsInternalPalettes

B31_16b4:		lda wJoy1NewButtonsPressed2			; a5 f8
B31_16b6:		and #PADF_START		; 29 10
B31_16b8:		beq B31_16be ; @done

B31_16ba:		lda #$00		; a9 00
B31_16bc:		sta wIsPaused			; 85 2b
B31_16be:		rts				; 60 


inGameSubstate1a:
	jmp_a000Func func_01_1b1a


inGameSubstate18:
	jmp_8000Func func_00_1288


inGameSubstate1c:
B31_16cf:		lda #$00		; a9 00
B31_16d1:		sta $6b			; 85 6b
B31_16d3:		jsr setBank_c000_toRom1eh		; 20 da e2
B31_16d6:		inc wInGameSubstate			; e6 2a
B31_16d8:		rts				; 60 


inGameSubstate1d:
	jmp_a000Func func_01_13ea


inGameSubstate10_6b_c:
B31_16e1:		inc $6b			; e6 6b
B31_16e3:		lda #$03		; a9 03
B31_16e5:		sta wCurrScrollXRoom			; 85 57
B31_16e7:		lda #$00		; a9 00
B31_16e9:		sta wCurrScrollXWithinRoom			; 85 56
B31_16eb:		jmp $f6f7		; 4c f7 f6


inGameSubstate13:
B31_16ee:		lda #$03		; a9 03
B31_16f0:		sta wCurrRoomSection			; 85 33
B31_16f2:		jsr func_1f_068f		; 20 8f e6
B31_16f5:		inc wInGameSubstate			; e6 2a
B31_16f7:		jsr func_1f_1757		; 20 57 f7
B31_16fa:		lda #$00		; a9 00
B31_16fc:		sta $c9			; 85 c9
B31_16fe:		lda #$02		; a9 02
B31_1700:		sta $1c			; 85 1c
B31_1702:		rts				; 60 


inGameSubstate10_6b_d:
B31_1703:		lda wInGameSubstate			; a5 2a
B31_1705:		pha				; 48 
B31_1706:		jsr $f718		; 20 18 f7
B31_1709:		pla				; 68 
B31_170a:		cmp $2a			; c5 2a
B31_170c:		beq B31_1715 ; f0 07

B31_170e:		inc $6b			; e6 6b
B31_1710:		ldy #$80		; a0 80
B31_1712:		sty wEntityBaseX.w		; 8c 38 04
B31_1715:		sta wInGameSubstate			; 85 2a
B31_1717:		rts				; 60 


inGameSubstate14:
	jsr_a000Func func_01_163e
B31_1720:		bcc B31_16fe ; 90 dc

B31_1722:		jsr func_1f_1753		; 20 53 f7
B31_1725:		jsr func_1f_05d3		; 20 d3 e5
B31_1728:		jsr getCurrRoomMetatileTilesPalettesAndMetadataByte		; 20 67 d0
	jsr_8000Func func_1c_0588
B31_1733:		jsr func_1c_05b8		; 20 b8 85
B31_1736:		jsr func_1e_10f8		; 20 f8 d0
	jsr_a000Func getAddrOfRoomsStairsData
	jsr_8000Func func_00_1702
B31_1749:		jsr func_1e_0d83		; 20 83 cd
B31_174c:		lda #$00		; a9 00
B31_174e:		sta $8d			; 85 8d
B31_1750:		inc wInGameSubstate			; e6 2a
B31_1752:		rts				; 60 


func_1f_1753:
B31_1753:		lda #$ff		; a9 ff
B31_1755:		bne B31_1765 ; d0 0e

func_1f_1757:
B31_1757:		lda #$e4		; a9 e4
B31_1759:		bne B31_1765 ; d0 0a

func_1f_175b:
B31_175b:		lda #$d8		; a9 d8
B31_175d:		bne B31_1765 ; d0 06

setNametableVerticalMirroring:
B31_175f:		lda #NT_VERTICAL_MIRROR		; a9 44
B31_1761:		bne B31_1765 ; d0 02

B31_1763:		lda #$50		; a9 50

B31_1765:		sta wNametableMapping			; 85 25
B31_1767:		rts				; 60 


inGameSubstate10_6b_e:
B31_1768:		lda wInGameSubstate			; a5 2a
B31_176a:		pha				; 48 
B31_176b:		jsr $f778		; 20 78 f7
B31_176e:		pla				; 68 
B31_176f:		cmp $2a			; c5 2a
B31_1771:		beq B31_1775 ; f0 02

B31_1773:		inc $6b			; e6 6b
B31_1775:		sta wInGameSubstate			; 85 2a
B31_1777:		rts				; 60 


inGameSubstate15:
B31_1778:		lda #$02		; a9 02
B31_177a:		sta $1c			; 85 1c
B31_177c:		lda $8d			; a5 8d
B31_177e:		bne B31_1783 ; d0 03

B31_1780:		jmp func_1f_1483		; 4c 83 f4

B31_1783:		jsr func_1e_0dc8		; 20 c8 cd
B31_1786:		bcs B31_1789 ; b0 01

B31_1788:		rts				; 60 

B31_1789:		lda #$00		; a9 00
B31_178b:		sta $1c			; 85 1c
B31_178d:		jsr func_1e_15b9		; 20 b9 d5
B31_1790:		jsr func_1f_05ec		; 20 ec e5
B31_1793:		jsr func_1f_1b89		; 20 89 fb
B31_1796:		lda $74			; a5 74
B31_1798:		bne B31_17a1 ; d0 07

B31_179a:		inc $74			; e6 74
B31_179c:		lda #$6a		; a9 6a
B31_179e:		jsr playSound		; 20 5f e2
B31_17a1:		inc wInGameSubstate			; e6 2a
B31_17a3:		rts				; 60 


inGameSubstate10_6b_f:
B31_17a4:		lda #$08		; a9 08
B31_17a6:		sta $28			; 85 28
B31_17a8:		sta $26			; 85 26
B31_17aa:		jsr $e6c5		; 20 c5 e6
B31_17ad:		lda wPlayerStateDoubled.w		; ad 65 05
B31_17b0:		cmp #$02		; c9 02
B31_17b2:		bne B31_17e4 ; d0 30

B31_17b4:		jsr $e5ca		; 20 ca e5
B31_17b7:		lda #$16		; a9 16
B31_17b9:		sta wInGameSubstate			; 85 2a
B31_17bb:		rts				; 60 


inGameSubstate16:
	jsr_8000Func func_00_16d0
B31_17c4:		bcc B31_17cf ; 90 09

B31_17c6:		lda #$10		; a9 10
B31_17c8:		sta wInGameSubstate			; 85 2a
B31_17ca:		lda #$08		; a9 08
B31_17cc:		sta $6b			; 85 6b
B31_17ce:		rts				; 60 

B31_17cf:		jsr func_1f_155d		; 20 5d f5
B31_17d2:		bcs B31_181d ; b0 49

	jsr_8000Func func_00_0f0b
	jsr_8000Func func_1c_0a21
B31_17e4:		lda wPlayerStateDoubled.w		; ad 65 05
B31_17e7:		ora $bf			; 05 bf
B31_17e9:		bmi B31_181d ; 30 32

B31_17eb:		lda $78			; a5 78
B31_17ed:		bne B31_17f2 ; d0 03

B31_17ef:		jsr func_1e_1175		; 20 75 d1
B31_17f2:	
	jsr_a000Func func_01_1583
	jsr_a000Func func_05_0f9d
	jsr_8000Func func_14_008a
B31_180a:		lda #$96		; a9 96
B31_180c:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_180f:		jsr func_1f_1de3		; 20 e3 fd
	jsr_8000Func func_04_1faa
B31_181a:		jsr func_04_000c		; 20 0c 80
B31_181d:		rts				; 60 


inGameSubstate0b:
	jmp_8000Func func_00_148b


inGameSubstate0c:
	jmp_8000Func func_00_146a


inGameSubstate0d:
inGameSubstate0e:
	jmp_8000Func func_00_16cf_stub


inGameSubstate10:
B31_1836:		lda $6b			; a5 6b
B31_1838:		jsr jumpTablePreserveY		; 20 6d e8
	.dw inGameSubstate10_6b_0
	.dw inGameSubstate10_6b_1
	.dw inGameSubstate10_6b_2
	.dw inGameSubstate10_6b_3
	.dw inGameSubstate10_6b_4
	.dw inGameSubstate10_6b_5
	.dw inGameSubstate10_6b_6
	.dw inGameSubstate10_6b_7
	.dw inGameSubstate10_6b_8
	.dw inGameSubstate10_6b_9
	.dw inGameSubstate10_6b_a
	.dw inGameSubstate10_6b_b
	.dw inGameSubstate10_6b_c
	.dw inGameSubstate10_6b_d
	.dw inGameSubstate10_6b_e
	.dw inGameSubstate10_6b_f

inGameSubstate10_6b_0:
inGameSubstate10_6b_8:
B31_185b:		jsr set_2c_to_01h		; 20 ce e5
B31_185e:		jsr func_1f_07f7		; 20 f7 e7
B31_1861:		inc $6b			; e6 6b
B31_1863:		rts				; 60 


inGameSubstate10_6b_9:
B31_1864:		lda #$08		; a9 08
B31_1866:		sta $28			; 85 28
B31_1868:		sta $26			; 85 26
B31_186a:		jsr $e6c5		; 20 c5 e6
B31_186d:		jmp func_1e_1175		; 4c 75 d1


inGameSubstate10_6b_1:
B31_1870:		lda #$08		; a9 08
B31_1872:		sta $28			; 85 28
B31_1874:		sta $26			; 85 26
B31_1876:		jsr $e6c5		; 20 c5 e6
B31_1879:		jmp func_1e_1175		; 4c 75 d1


inGameSubstate10_6b_2:
inGameSubstate10_6b_a:
B31_187c:		lda #$02		; a9 02
B31_187e:		sta $1c			; 85 1c
B31_1880:		jsr $d3fb		; 20 fb d3
B31_1883:		inc $6b			; e6 6b
B31_1885:		rts				; 60 


inGameSubstate10_6b_3:
inGameSubstate10_6b_b:
B31_1886:		lda #$02		; a9 02
B31_1888:		sta $1c			; 85 1c
B31_188a:		jsr $e862		; 20 62 e8
B31_188d:		lda #$80		; a9 80
B31_188f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1892:		jsr $90d6		; 20 d6 90
B31_1895:		jsr func_1f_07a0		; 20 a0 e7
B31_1898:		jsr set_2c_to_01h		; 20 ce e5
B31_189b:		inc $6b			; e6 6b
B31_189d:		rts				; 60 


inGameSubstate10_6b_4:
B31_189e:		jsr func_1f_1753		; 20 53 f7
B31_18a1:		jsr func_1f_05d3		; 20 d3 e5
B31_18a4:		jsr getCurrRoomMetatileTilesPalettesAndMetadataByte		; 20 67 d0
	jsr_8000Func func_1c_0588
B31_18af:		jsr func_1c_05b8		; 20 b8 85
B31_18b2:		jsr $8642		; 20 42 86
B31_18b5:		jsr func_1e_10f8		; 20 f8 d0
	jsr_a000Func getAddrOfRoomsStairsData
	jsr_8000Func func_00_1702
B31_18c8:		jsr func_1e_0d83		; 20 83 cd
B31_18cb:		lda #$00		; a9 00
B31_18cd:		sta $8d			; 85 8d
B31_18cf:		inc $6b			; e6 6b
B31_18d1:		rts				; 60 


inGameSubstate10_6b_5:
B31_18d2:		lda #$02		; a9 02
B31_18d4:		sta $1c			; 85 1c
B31_18d6:		lda $8d			; a5 8d
B31_18d8:		bne B31_18dd ; d0 03

B31_18da:		jmp func_1f_1483		; 4c 83 f4


B31_18dd:		jsr func_1e_0dc8		; 20 c8 cd
B31_18e0:		bcs B31_18e3 ; b0 01

B31_18e2:		rts				; 60 


B31_18e3:		lda #$00		; a9 00
B31_18e5:		sta $1c			; 85 1c
B31_18e7:		jsr func_1e_0ff9		; 20 f9 cf
B31_18ea:		lda wCurrRoomGroup		; a5 32
B31_18ec:		cmp #$0c		; c9 0c
B31_18ee:		bne B31_18f4 ; d0 04

B31_18f0:		ldy #$ce		; a0 ce
B31_18f2:		bne B31_18f6 ; d0 02

B31_18f4:		ldy #$be		; a0 be
B31_18f6:		ldx #$2e		; a2 2e
B31_18f8:		lda #$10		; a9 10
B31_18fa:		jsr func_1f_05bf		; 20 bf e5
B31_18fd:		jsr func_1f_05ec		; 20 ec e5
B31_1900:		inc $6b			; e6 6b
B31_1902:		rts				; 60 


inGameSubstate10_6b_6:
B31_1903:		lda #$08		; a9 08
B31_1905:		sta $28			; 85 28
B31_1907:		sta $26			; 85 26
B31_1909:		jsr $e6c5		; 20 c5 e6
B31_190c:		jsr func_1e_1175		; 20 75 d1
	jsr_a000Func func_05_0f9d
	jsr_8000Func func_14_008a
B31_191f:		lda #$96		; a9 96
B31_1921:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1924:		jsr func_1f_1de3		; 20 e3 fd
	jsr_8000Func func_04_1faa
B31_192f:		jsr func_04_000c		; 20 0c 80
B31_1932:		lda wPlayerStateDoubled.w		; ad 65 05
B31_1935:		cmp #$02		; c9 02
B31_1937:		bne B31_193f ; d0 06

B31_1939:		lda #$12		; a9 12
B31_193b:		sta wBaseIRQFuncIdx			; 85 3f
B31_193d:		inc $6b			; e6 6b
B31_193f:		rts				; 60 


inGameSubstate10_6b_7:
B31_1940:		jsr $e5ca		; 20 ca e5
B31_1943:		jsr func_1e_0ff9		; 20 f9 cf
B31_1946:		lda #$03		; a9 03
B31_1948:		sta wInGameSubstate			; 85 2a
B31_194a:		rts				; 60 


inGameSubstate08:
B31_194b:		lda $6b			; a5 6b
B31_194d:		jsr jumpTablePreserveY		; 20 6d e8
	.dw inGameSubstate08_6b_0
	.dw inGameSubstate08_6b_1
	.dw inGameSubstate08_6b_2
	.dw inGameSubstate08_6b_3
	.dw inGameSubstate08_6b_4
	.dw inGameSubstate08_6b_5
	.dw inGameSubstate08_6b_6
	.dw inGameSubstate08_6b_7
	.dw inGameSubstate08_6b_8
	.dw inGameSubstate08_6b_9

inGameSubstate08_6b_0:
B31_1964:		inc wCurrRoomSection			; e6 33
B31_1966:		jsr $e795		; 20 95 e7
B31_1969:		jsr set_2c_to_01h		; 20 ce e5
B31_196c:		lda #$80		; a9 80
B31_196e:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1971:		jsr $8d96		; 20 96 8d
B31_1974:		lda #$00		; a9 00
B31_1976:		sta wEntityState.w		; 8d 70 04
B31_1979:		jsr getCurrRoomMetatileTilesPalettesAndMetadataByte		; 20 67 d0
B31_197c:		jsr func_1e_10f8		; 20 f8 d0
	jsr_a000Func getAddrOfRoomsStairsData
B31_1987:		jsr $cd64		; 20 64 cd
	jsr_8000Func func_00_1702
B31_1992:		lda $7d			; a5 7d
B31_1994:		and #$f0		; 29 f0
B31_1996:		cmp #$30		; c9 30
B31_1998:		beq B31_199d ; f0 03

B31_199a:		inc $6b			; e6 6b
B31_199c:		rts				; 60 

B31_199d:		lda #$80		; a9 80
B31_199f:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_19a2:		jsr $97e1		; 20 e1 97
B31_19a5:		jmp $f99a		; 4c 9a f9


inGameSubstate08_6b_1:
inGameSubstate08_6b_7:
B31_19a8:		jsr $cd8c		; 20 8c cd
B31_19ab:		bcs B31_19bc ; b0 0f

B31_19ad:		lda $65			; a5 65
B31_19af:		bne B31_19bb ; d0 0a

B31_19b1:		lda $5c			; a5 5c
B31_19b3:		cmp #$06		; c9 06
B31_19b5:		bne B31_19bb ; d0 04

B31_19b7:		dec $5a			; c6 5a
B31_19b9:		dec $5a			; c6 5a
B31_19bb:		rts				; 60 


B31_19bc:		inc $6b			; e6 6b
B31_19be:		lda $65			; a5 65
B31_19c0:		beq B31_19b1 ; f0 ef

B31_19c2:		rts				; 60 


inGameSubstate08_6b_2:
inGameSubstate08_6b_8:
B31_19c3:		lda $65			; a5 65
B31_19c5:		beq B31_19d6 ; f0 0f

B31_19c7:		lda wEntityBaseX.w		; ad 38 04
B31_19ca:		sec				; 38 
B31_19cb:		sbc #$01		; e9 01
B31_19cd:		sta wEntityBaseX.w		; 8d 38 04
B31_19d0:		jsr func_1f_1b69		; 20 69 fb
B31_19d3:		jmp $f9e2		; 4c e2 f9


B31_19d6:		lda wEntityBaseX.w		; ad 38 04
B31_19d9:		clc				; 18 
B31_19da:		adc #$01		; 69 01
B31_19dc:		sta wEntityBaseX.w		; 8d 38 04
B31_19df:		jsr func_1f_1b77		; 20 77 fb
B31_19e2:		lda wCurrScrollXWithinRoom			; a5 56
B31_19e4:		and #$7f		; 29 7f
B31_19e6:		bne B31_19ea ; d0 02

B31_19e8:		inc $6b			; e6 6b
B31_19ea:		rts				; 60 


inGameSubstate08_6b_3:
B31_19eb:		inc $6b			; e6 6b
B31_19ed:		lda #$80		; a9 80
B31_19ef:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_19f2:		jsr $852c		; 20 2c 85
B31_19f5:		jsr $8013		; 20 13 80
B31_19f8:		jsr $83ee		; 20 ee 83
B31_19fb:		lda #$0c		; a9 0c
B31_19fd:		jsr playSound		; 20 5f e2
B31_1a00:		lda #$3c		; a9 3c
B31_1a02:		sta wGenericStateTimer			; 85 30
B31_1a04:		lda #$0c		; a9 0c
B31_1a06:		ldy #$00		; a0 00
B31_1a08:		ldx #$13		; a2 13
B31_1a0a:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B31_1a0d:		lda #$00		; a9 00
B31_1a0f:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B31_1a12:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B31_1a15:		sta wEntityState.w, x	; 9d 70 04
B31_1a18:		lda wEntityBaseY.w		; ad 1c 04
B31_1a1b:		adc #$08		; 69 08
B31_1a1d:		and #$f0		; 29 f0
B31_1a1f:		sta wEntityBaseY.w, x	; 9d 1c 04
B31_1a22:		lda $65			; a5 65
B31_1a24:		asl a			; 0a
B31_1a25:		tay				; a8 
B31_1a26:		lda $fa95, y	; b9 95 fa
B31_1a29:		sta wEntityBaseX.w, x	; 9d 38 04
B31_1a2c:		lda $fa96, y	; b9 96 fa
B31_1a2f:		sta wEntityFacingLeft.w, x	; 9d a8 04
B31_1a32:		lda #$00		; a9 00
B31_1a34:		sta wVramQueueDest+1			; 85 62
B31_1a36:		ldy wCurrPlayer.w		; ac 4e 05
B31_1a39:		lda wEntityBaseY.w		; ad 1c 04
B31_1a3c:		sec				; 38 
B31_1a3d:		sbc $fa91, y	; f9 91 fa
B31_1a40:		asl a			; 0a
B31_1a41:		rol $62			; 26 62
B31_1a43:		asl a			; 0a
B31_1a44:		rol $62			; 26 62
B31_1a46:		and #$e0		; 29 e0
B31_1a48:		sta wVramQueueDest			; 85 61
B31_1a4a:		ldy $65			; a4 65
B31_1a4c:		lda $fa8f, y	; b9 8f fa
B31_1a4f:		clc				; 18 
B31_1a50:		adc wVramQueueDest			; 65 61
B31_1a52:		sta wVramQueueDest			; 85 61
B31_1a54:		lda $75			; a5 75
B31_1a56:		and #$01		; 29 01
B31_1a58:		sta $00			; 85 00
B31_1a5a:		lda $65			; a5 65
B31_1a5c:		bne B31_1a62 ; d0 04

B31_1a5e:		ldx #$24		; a2 24
B31_1a60:		bne B31_1a64 ; d0 02

B31_1a62:		ldx #$20		; a2 20
B31_1a64:		lda wCurrScrollXRoom			; a5 57
B31_1a66:		and #$01		; 29 01
B31_1a68:		eor $00			; 45 00
B31_1a6a:		beq B31_1a70 ; f0 04

B31_1a6c:		txa				; 8a 
B31_1a6d:		eor #$04		; 49 04
B31_1a6f:		tax				; aa 
B31_1a70:		txa				; 8a 
B31_1a71:		clc				; 18 
B31_1a72:		adc $62			; 65 62
B31_1a74:		sta wVramQueueDest+1			; 85 62
B31_1a76:		sta $05eb		; 8d eb 05
B31_1a79:		lda wVramQueueDest			; a5 61
B31_1a7b:		sta $05d4		; 8d d4 05
B31_1a7e:		jsr vramQueueSet2bytesDestToCopy_noData		; 20 af e8
B31_1a81:		ldy #$06		; a0 06
B31_1a83:		lda #$00		; a9 00
B31_1a85:		sta wVramQueue.w, x	; 9d 00 03
B31_1a88:		inx				; e8 
B31_1a89:		dey				; 88 
B31_1a8a:		bne B31_1a85 ; d0 f9

B31_1a8c:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


B31_1a8f:		ora ($1e, x)	; 01 1e
B31_1a91:		jsr $2420		; 20 20 24
B31_1a94:		jsr $018c		; 20 8c 01
B31_1a97:	.db $74
B31_1a98:		.db $00				; 00


inGameSubstate08_6b_4:
B31_1a99:		dec wGenericStateTimer			; c6 30
B31_1a9b:		bne B31_1aa9 ; d0 0c

B31_1a9d:		lda #$00		; a9 00
B31_1a9f:		jsr $ef57		; 20 57 ef
B31_1aa2:		lda #$30		; a9 30
B31_1aa4:		sta wGenericStateTimer			; 85 30
B31_1aa6:		inc $6b			; e6 6b
B31_1aa8:		rts				; 60 


B31_1aa9:		ldx #$13		; a2 13
B31_1aab:		jsr updateEntityXanimationFrame		; 20 75 ef
B31_1aae:		lda wEntityOamSpecIdxBaseOffset.w, x	; bd 93 05
B31_1ab1:		bne B31_1aa8 ; d0 f5

B31_1ab3:		lda #$80		; a9 80
B31_1ab5:		sta wEntityTimeUntilNextAnimation.w, x	; 9d 7c 05
B31_1ab8:		rts				; 60 


inGameSubstate08_6b_5:
B31_1ab9:		dec wGenericStateTimer			; c6 30
B31_1abb:		bne B31_1ac9 ; d0 0c

B31_1abd:		lda #$0c		; a9 0c
B31_1abf:		ldy #$01		; a0 01
B31_1ac1:		ldx #$13		; a2 13
B31_1ac3:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B31_1ac6:		inc $6b			; e6 6b
B31_1ac8:		rts				; 60 


B31_1ac9:		lda $65			; a5 65
B31_1acb:		beq B31_1ad5 ; f0 08

B31_1acd:		lda wEntityBaseX.w		; ad 38 04
B31_1ad0:		clc				; 18 
B31_1ad1:		adc #$01		; 69 01
B31_1ad3:		bne B31_1adb ; d0 06

B31_1ad5:		lda wEntityBaseX.w		; ad 38 04
B31_1ad8:		sec				; 38 
B31_1ad9:		sbc #$01		; e9 01
B31_1adb:		sta wEntityBaseX.w		; 8d 38 04
B31_1ade:		jmp updatePlayerAnimationFrame		; 4c 73 ef


inGameSubstate08_6b_6:
B31_1ae1:		ldx #$13		; a2 13
B31_1ae3:		jsr updateEntityXanimationFrame		; 20 75 ef
B31_1ae6:		lda wEntityOamSpecIdxBaseOffset.w, x	; bd 93 05
B31_1ae9:		bne B31_1af2 ; d0 07

B31_1aeb:		lda wEntityTimeUntilNextAnimation.w, x	; bd 7c 05
B31_1aee:		cmp #$01		; c9 01
B31_1af0:		beq B31_1af3 ; f0 01

B31_1af2:		rts				; 60 


B31_1af3:		inc $6b			; e6 6b
B31_1af5:		lda #$0c		; a9 0c
B31_1af7:		jsr playSound		; 20 5f e2
B31_1afa:		lda #$00		; a9 00
B31_1afc:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B31_1aff:		jsr $cd76		; 20 76 cd
B31_1b02:		lda $05d4		; ad d4 05
B31_1b05:		sta wVramQueueDest			; 85 61
B31_1b07:		lda $05eb		; ad eb 05
B31_1b0a:		sta wVramQueueDest+1			; 85 62
B31_1b0c:		jsr vramQueueSet2bytesDestToCopy_noData		; 20 af e8
B31_1b0f:		ldy #$00		; a0 00
B31_1b11:		lda $fb20, y	; b9 20 fb
B31_1b14:		sta wVramQueue.w, x	; 9d 00 03
B31_1b17:		inx				; e8 
B31_1b18:		iny				; c8 
B31_1b19:		cpy #$06		; c0 06
B31_1b1b:		bne B31_1b11 ; d0 f4

B31_1b1d:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


B31_1b20:	.db $3c
B31_1b21:	.db $3a
B31_1b22:	.db $3c
B31_1b23:	.db $3b
B31_1b24:	.db $3a
B31_1b25:	.db $3c


inGameSubstate08_6b_9:
B31_1b26:		lda wCurrScrollXRoom			; a5 57
B31_1b28:		eor $75			; 45 75
B31_1b2a:		sta $02			; 85 02
B31_1b2c:		lda #$00		; a9 00
B31_1b2e:		sta wCurrScrollXWithinRoom			; 85 56
B31_1b30:		sta $58			; 85 58
B31_1b32:		ldy wEntityFacingLeft.w		; ac a8 04
B31_1b35:		beq B31_1b39 ; f0 02

B31_1b37:		lda wCurrRoomNumScreens			; a5 71
B31_1b39:		sta wCurrScrollXRoom			; 85 57
B31_1b3b:		eor $02			; 45 02
B31_1b3d:		and #$01		; 29 01
B31_1b3f:		beq B31_1b45 ; f0 04

B31_1b41:		lda #$90		; a9 90
B31_1b43:		bne B31_1b47 ; d0 02

B31_1b45:		lda #$80		; a9 80
B31_1b47:		ora $75			; 05 75
B31_1b49:		sta $75			; 85 75
B31_1b4b:		jsr func_1e_0ff9		; 20 f9 cf
B31_1b4e:		lda $7d			; a5 7d
B31_1b50:		and #$f0		; 29 f0
B31_1b52:		cmp #$30		; c9 30
B31_1b54:		bne B31_1b5e ; d0 08

B31_1b56:		lda #$80		; a9 80
B31_1b58:		jsr setAndSaveLowerBank		; 20 e6 e2
B31_1b5b:		jsr $97e1		; 20 e1 97
B31_1b5e:		jsr func_1f_05ec		; 20 ec e5
B31_1b61:		jsr $e5ca		; 20 ca e5
B31_1b64:		lda #$03		; a9 03
B31_1b66:		sta wInGameSubstate			; 85 2a
B31_1b68:		rts				; 60 


func_1f_1b69:
B31_1b69:		lda wCurrScrollXWithinRoom			; a5 56
B31_1b6b:		clc				; 18 
B31_1b6c:		adc #$01		; 69 01
B31_1b6e:		sta wCurrScrollXWithinRoom			; 85 56
B31_1b70:		lda wCurrScrollXRoom			; a5 57
B31_1b72:		adc #$00		; 69 00
B31_1b74:		sta wCurrScrollXRoom			; 85 57
B31_1b76:		rts				; 60 


func_1f_1b77:
B31_1b77:		lda wCurrScrollXWithinRoom			; a5 56
B31_1b79:		sec				; 38 
B31_1b7a:		sbc #$01		; e9 01
B31_1b7c:		sta wCurrScrollXWithinRoom			; 85 56
B31_1b7e:		lda wCurrScrollXRoom			; a5 57
B31_1b80:		sbc #$00		; e9 00
B31_1b82:		sta wCurrScrollXRoom			; 85 57
B31_1b84:		rts				; 60 
