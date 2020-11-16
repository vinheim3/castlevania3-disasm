	.db $80


B0_0001:		ldy $054e		; ac 4e 05
B0_0004:		lda data_0_000f.w, y	; b9 0f 80
B0_0007:		sta wChrBank_0000			; 85 46
B0_0009:		clc				; 18 
B0_000a:		adc #$01		; 69 01
B0_000c:		sta wChrBank_0400			; 85 47
B0_000e:		rts				; 60 

data_0_000f:
	.db $00 $04 $02 $06


getCurrRoomsChrBanks:
; get room group data offset
	lda wCurrRoomGroup
	asl a
	tay
	lda @roomChrBanks.w, y
	sta wCurrRoomGroupChrBanks
	lda @roomChrBanks.w+1, y
	sta wCurrRoomGroupChrBanks+1

; get offset of 2 addresses for room section
	lda wCurrRoomSection
	asl a
	asl a
	sta wRoomSectionChrBanksDataOffset
	tay
	lda (wCurrRoomGroupChrBanks), y
	sta wCurrRoomSectionChrBanks1
	iny
	lda (wCurrRoomGroupChrBanks), y
	sta wCurrRoomSectionChrBanks1+1

; use room idx to get 3 room's chr banks for bg
	lda wCurrRoomIdx
	asl a
	clc
	adc wCurrRoomIdx
	tay
	lda (wCurrRoomSectionChrBanks1), y
	sta wChrBank_0400_1400
	iny
	lda (wCurrRoomSectionChrBanks1), y
	sta wChrBank_0800_1800
	iny
	lda (wCurrRoomSectionChrBanks1), y
	sta wChrBank_1400

; use 2nd room section's address
	ldy wRoomSectionChrBanksDataOffset
	iny
	iny
	lda (wCurrRoomGroupChrBanks), y
	sta wCurrRoomSectionChrBanks2
	iny
	lda (wCurrRoomGroupChrBanks), y
	sta wCurrRoomSectionChrBanks2+1

; get another 2 chr banks for sprites
	lda wCurrRoomIdx
	asl a
	tay
	lda (wCurrRoomSectionChrBanks2), y
	sta wChrBank_0800
	iny
	lda (wCurrRoomSectionChrBanks2), y
	sta wChrBank_0c00

	jsr chrSwitch_0_to_c00_1400
	jmp chrSwitchAllMirrored

@roomChrBanks:
	.dw @group0
	.dw @group1
	.dw @group2
	.dw @group3
	.dw @group4
	.dw @group5
	.dw @group6
	.dw @group7
	.dw @group8
	.dw @group9
	.dw @groupA
	.dw @groupB
	.dw @groupC
	.dw @groupD
	.dw @groupE

@group0:
	.dw @group0section0_bg
	.dw @group0section0_spr
	.dw @group0section1_bg
	.dw @group0section1_spr
	.dw @group0section2_bg
	.dw @group0section2_spr
	.dw @group0section3_bg
	.dw @group0section3_spr

@group1:
	.dw @group1section0_bg
	.dw @group1section0_spr
	.dw @group1section1_bg
	.dw @group1section1_spr
	.dw @group1section2_bg
	.dw @group1section2_spr
	.dw @group1section3_bg
	.dw @group1section3_spr
	.dw @group1section4_bg
	.dw @group1section4_spr
	.dw @group1section5_bg
	.dw @group1section5_spr

@group2:
	.dw @group2section0_bg
	.dw @group2section0_spr
	.dw @group2section1_bg
	.dw @group2section1_spr
	.dw @group2section2_bg
	.dw @group2section2_spr
	.dw @group2section3_bg
	.dw @group2section3_spr
	.dw @group2section4_bg
	.dw @group2section4_spr

@group3:
	.dw @group3section0_bg
	.dw @group3section0_spr
	.dw @group3section1_bg
	.dw @group3section1_spr
	.dw @group3section2_bg
	.dw @group3section2_spr
	.dw @group3section3_bg
	.dw @group3section3_spr
	.dw @group3section4_bg
	.dw @group3section4_spr

@group4:
	.dw @group4section0_bg
	.dw @group4section0_spr
	.dw @group4section1_bg
	.dw @group4section1_spr
	.dw @group4section2_bg
	.dw @group4section2_spr

@group5:
	.dw @group5section0_bg
	.dw @group5section0_spr
	.dw @group5section1_bg
	.dw @group5section1_spr
	.dw @group5section2_bg
	.dw @group5section2_spr
	.dw @group5section3_bg
	.dw @group5section3_spr

@group6:
	.dw @group6section0_bg
	.dw @group6section0_spr
	.dw @group6section1_bg
	.dw @group6section1_spr
	.dw @group6section2_bg
	.dw @group6section2_spr

@group7:
	.dw @group7section0_bg
	.dw @group7section0_spr
	.dw @group7section1_bg
	.dw @group7section1_spr
	.dw @group7section2_bg
	.dw @group7section2_spr
	.dw @group7section3_bg
	.dw @group7section3_spr
	.dw @group7section4_bg
	.dw @group7section4_spr
	.dw @group7section5_bg
	.dw @group7section5_spr
	.dw @group7section6_bg
	.dw @group7section6_spr

@group8:
	.dw @group8section0_bg
	.dw @group8section0_spr
	.dw @group8section1_bg
	.dw @group8section1_spr
	.dw @group8section2_bg
	.dw @group8section2_spr
	.dw @group8section3_bg
	.dw @group8section3_spr
	.dw @group8section4_bg
	.dw @group8section4_spr

@group9:
	.dw @group9section0_bg
	.dw @group9section0_spr
	.dw @group9section1_bg
	.dw @group9section1_spr

@groupA:
	.dw @groupAsection0_bg
	.dw @groupAsection0_spr
	.dw @groupAsection1_bg
	.dw @groupAsection1_spr
	.dw @groupAsection2_bg
	.dw @groupAsection2_spr
	.dw @groupAsection3_bg
	.dw @groupAsection3_spr
	.dw @groupAsection4_bg
	.dw @groupAsection4_spr
	.dw @groupAsection5_bg
	.dw @groupAsection5_spr
	.dw @groupAsection6_bg
	.dw @groupAsection6_spr

@groupB:
	.dw @groupBsection0_bg
	.dw @groupBsection0_spr
	.dw @groupBsection1_bg
	.dw @groupBsection1_spr
	.dw @groupBsection2_bg
	.dw @groupBsection2_spr

@groupC:
	.dw @groupCsection0_bg
	.dw @groupCsection0_spr
	.dw @groupCsection1_bg
	.dw @groupCsection1_spr
	.dw @groupCsection2_bg
	.dw @groupCsection2_spr

@groupD:
	.dw @groupDsection0_bg
	.dw @groupDsection0_spr
	.dw @groupDsection1_bg
	.dw @groupDsection1_spr
	.dw @groupDsection2_bg
	.dw @groupDsection2_spr
	.dw @groupDsection3_bg
	.dw @groupDsection3_spr

@groupE:
	.dw @groupEsection0_bg
	.dw @groupEsection0_spr
	.dw @groupEsection1_bg
	.dw @groupEsection1_spr
	.dw @groupEsection2_bg
	.dw @groupEsection2_spr

@group0section0_bg:
	.db $45 $47 $36

@group0section1_bg:
	.db $45 $47 $36
	.db $46 $47 $36
	.db $45 $47 $36
	.db $45 $47 $36

@group0section2_bg:
	.db $48 $47 $36
	.db $48 $47 $36

@group0section3_bg:
	.db $48 $47 $36

@group1section0_bg:
@group1section5_bg:
	.db $54 $49 $36
	.db $54 $49 $0b
	.db $54 $4a $36

@group1section1_bg:
@group1section4_bg:
	.db $54 $4a $36
	.db $54 $49 $36
	.db $54 $4a $36

@group1section2_bg:
@group1section3_bg:
	.db $54 $4a $36
	.db $54 $49 $36
	.db $54 $49 $36

@group2section0_bg:
	.db $4b $4d $36
	.db $4b $4d $36

@group2section1_bg:
	.db $4b $4d $36

@group2section2_bg:
	.db $4c $4d $36
	.db $4b $4d $36

@group2section3_bg:
	.db $4c $4d $36
	.db $4b $4d $36
	.db $4c $4d $36

@group2section4_bg:
	.db $4c $4d $4c
	.db $4c $4d $36

@group3section0_bg:
	.db $4f $50 $36
	.db $4f $50 $36
	.db $4e $50 $36

@group3section1_bg:
	.db $4f $50 $09
	.db $4f $50 $36

@group3section2_bg:
	.db $4f $50 $36
	.db $4e $50 $36

@group3section3_bg:
	.db $4e $50 $36
	.db $4e $50 $36

@group3section4_bg:
	.db $4f $50 $36
	.db $4e $50 $36
	.db $4e $50 $36

@group4section0_bg:
@group4section1_bg:
	.db $6e $4a $36
	.db $6e $4a $36
	.db $6e $4a $36

@group4section2_bg:
	.db $6e $4a $36
	.db $6e $4a $36
	.db $53 $4a $36

@group5section0_bg:
@group5section1_bg:
	.db $54 $57 $54

@group5section2_bg:
@group5section3_bg:
	.db $54 $57 $36
	.db $54 $57 $36

@group6section0_bg:
	.db $59 $5a $36
	.db $58 $5a $36

@group6section1_bg:
	.db $59 $5a $36

@group6section2_bg:
	.db $59 $5a $36
	.db $59 $5a $36
	.db $59 $5a $36

@group7section0_bg:
	.db $5b $5d $36
	.db $5b $5d $36

@group7section1_bg:
@group7section2_bg:
@group7section3_bg:
	.db $5b $5d $36

@group7section4_bg:
	.db $5b $5d $36
	.db $5c $5d $5c

@group7section5_bg:
	.db $5c $5d $36
	.db $5c $5d $36

@group7section6_bg:
	.db $5c $5d $36

@group8section0_bg:
	.db $5e $60 $36
	.db $5e $60 $36

@group8section1_bg:
@group8section3_bg:
@group8section4_bg:
	.db $5e $60 $36

@group8section2_bg:
	.db $5e $60 $36
	.db $5f $60 $36

@group9section0_bg:
	.db $61 $62 $36
	.db $61 $62 $36

@group9section1_bg:
	.db $61 $62 $36
	.db $61 $62 $36
	.db $61 $62 $36

@groupAsection0_bg:
	.db $67 $5d $36
	.db $67 $5d $36

@groupAsection1_bg:
	.db $67 $68 $36

@groupAsection2_bg:
	.db $67 $5d $36

@groupAsection3_bg:
	.db $67 $5d $36
	.db $67 $68 $36

@groupAsection4_bg:
	.db $67 $68 $36
	.db $67 $68 $36
	.db $67 $68 $36

@groupAsection5_bg:
	.db $67 $68 $36
	.db $67 $69 $36

@groupAsection6_bg:
	.db $67 $69 $36
	.db $67 $69 $36
	.db $51 $69 $36

@groupBsection0_bg:
	.db $65 $66 $36
	.db $65 $66 $36

@groupBsection1_bg:
	.db $65 $66 $36
	.db $65 $66 $36

@groupBsection2_bg:
	.db $51 $66 $36
	.db $65 $66 $36
	.db $65 $66 $36

@groupCsection0_bg:
	.db $52 $6d $36
	.db $6c $6d $36

@groupCsection1_bg:
	.db $6c $6d $36
	.db $6c $6d $36

@groupCsection2_bg:
	.db $6c $6d $36

@groupDsection0_bg:
	.db $4b $4d $36
	.db $4b $4d $36
	.db $54 $64 $36

@groupDsection1_bg:
	.db $54 $64 $36
	.db $54 $64 $36
	.db $54 $64 $36

@groupDsection2_bg:
	.db $54 $64 $36
	.db $63 $64 $36
	.db $54 $57 $36

@groupDsection3_bg:
	.db $54 $57 $54
	.db $63 $64 $36

@groupEsection0_bg:
	.db $6a $6b $36
	.db $54 $49 $36
	.db $6a $6b $36

@groupEsection1_bg:
	.db $6a $6b $36
	.db $6a $6b $36

@groupEsection2_bg:
	.db $6a $68 $36
	.db $6a $33 $36

@group0section0_spr:
	.db $08 $0b

@group0section1_spr:
	.db $08 $13
	.db $08 $09
	.db $12 $0f
	.db $08 $13

@group0section2_spr:
	.db $0a $0b
	.db $08 $09

@group0section3_spr:
	.db $08 $09

@group1section0_spr:
	.db $14 $13
	.db $14 $13
	.db $12 $09

@group1section1_spr:
	.db $14 $0b
	.db $14 $0f
	.db $18 $19

@group1section2_spr:
	.db $14 $09
	.db $14 $0f
	.db $08 $0b

@group1section3_spr:
	.db $14 $09
	.db $14 $0f
	.db $08 $0b

@group1section4_spr:
	.db $14 $0b
	.db $14 $0f
	.db $18 $19

@group1section5_spr:
	.db $14 $13
	.db $14 $13
	.db $12 $09

@group2section0_spr:
	.db $08 $0f
	.db $0c $13

@group2section1_spr:
	.db $0c $0d

@group2section2_spr:
	.db $0a $13
	.db $0a $7b

@group2section3_spr:
	.db $0a $13
	.db $0c $0d
	.db $08 $19

@group2section4_spr:
	.db $1c $13
	.db $0c $13

@group3section0_spr:
	.db $08 $0f
	.db $0e $0f
	.db $12 $09

@group3section1_spr:
	.db $08 $13
	.db $08 $13

@group3section2_spr:
	.db $08 $09
	.db $18 $19

@group3section3_spr:
	.db $08 $0f
	.db $12 $19

@group3section4_spr:
	.db $08 $13
	.db $08 $0f
	.db $08 $19

@group4section0_spr:
	.db $12 $15
	.db $0a $0b
	.db $08 $09

@group4section1_spr:
	.db $0a $0b
	.db $14 $0b
	.db $12 $0b

@group4section2_spr:
	.db $08 $09
	.db $0a $0b
	.db $08 $09

@group5section0_spr:
	.db $0a $09

@group5section1_spr:
	.db $0a $17

@group5section2_spr:
	.db $0a $09
	.db $0a $09

@group5section3_spr:
	.db $0a $0b
	.db $0a $17

@group6section0_spr:
	.db $10 $09
	.db $10 $17

@group6section1_spr:
	.db $10 $09

@group6section2_spr:
	.db $18 $19
	.db $10 $09
	.db $08 $13

@group7section0_spr:
	.db $08 $15
	.db $0e $15

@group7section1_spr:
	.db $0e $0b

@group7section2_spr:
	.db $18 $15

@group7section3_spr:
	.db $08 $15

@group7section4_spr:
	.db $08 $15
	.db $0e $15

@group7section5_spr:
	.db $0e $15
	.db $0e $13

@group7section6_spr:
	.db $08 $13

@group8section0_spr:
	.db $0a $09
	.db $14 $0b

@group8section1_spr:
	.db $0a $11

@group8section2_spr:
	.db $0a $11
	.db $0a $11

@group8section3_spr:
	.db $0a $11

@group8section4_spr:
	.db $0a $11

@group9section0_spr:
	.db $0a $09
	.db $0e $0b

@group9section1_spr:
	.db $0e $13
	.db $14 $09
	.db $0a $13

@groupAsection0_spr:
	.db $08 $0f
	.db $0a $15

@groupAsection1_spr:
	.db $0a $09

@groupAsection2_spr:
	.db $0a $15

@groupAsection3_spr:
	.db $0a $0b
	.db $0e $0b

@groupAsection4_spr:
	.db $0a $0b
	.db $0c $13
	.db $08 $0f

@groupAsection5_spr:
	.db $0a $09
	.db $12 $0f

@groupAsection6_spr:
	.db $0c $0f
	.db $14 $0b
	.db $0e $09

@groupBsection0_spr:
	.db $0a $0b
	.db $0a $2f

@groupBsection1_spr:
	.db $0a $09
	.db $12 $09

@groupBsection2_spr:
	.db $0a $13
	.db $14 $0f
	.db $08 $13

@groupCsection0_spr:
	.db $08 $09
	.db $0c $0f

@groupCsection1_spr:
	.db $0e $13
	.db $0e $09

@groupCsection2_spr:
	.db $14 $09

@groupDsection0_spr:
	.db $63 $64
	.db $0a $2f
	.db $63 $64

@groupDsection1_spr:
	.db $63 $64
	.db $0a $0b
	.db $0a $09

@groupDsection2_spr:
	.db $14 $13
	.db $14 $0b
	.db $08 $09

@groupDsection3_spr:
	.db $0a $17
	.db $12 $0f

@groupEsection0_spr:
	.db $0a $09
	.db $14 $0f
	.db $08 $13

@groupEsection1_spr:
	.db $0c $13
	.db $12 $09

@groupEsection2_spr:
	.db $61 $62
	.db $61 $62


;;
B0_03ee:		ldx #$00		; a2 00
B0_03f0:		lda $4b			; a5 4b
B0_03f2:		jsr $83f9		; 20 f9 83
B0_03f5:		ldx #$08		; a2 08
B0_03f7:		lda $4c			; a5 4c
B0_03f9:		ldy #$00		; a0 00
B0_03fb:		cmp #$33		; c9 33
B0_03fd:		beq B0_0432 ; f0 33

B0_03ff:		ldy #$02		; a0 02
B0_0401:		cmp #$36		; c9 36
B0_0403:		beq B0_0432 ; f0 2d

B0_0405:		ldy #$04		; a0 04
B0_0407:		cmp #$37		; c9 37
B0_0409:		beq B0_0432 ; f0 27

B0_040b:		sec				; 38 
B0_040c:		sbc #$44		; e9 44
B0_040e:		asl a			; 0a
B0_040f:		tay				; a8 
B0_0410:		lda $843d, y	; b9 3d 84
B0_0413:		sta $08			; 85 08
B0_0415:		lda $843e, y	; b9 3e 84
B0_0418:		sta $09			; 85 09
B0_041a:		ldy #$00		; a0 00
B0_041c:		lda ($08), y	; b1 08
B0_041e:		iny				; c8 
B0_041f:		sta $0a			; 85 0a
B0_0421:		lda ($08), y	; b1 08
B0_0423:		iny				; c8 
B0_0424:		sta $0770, x	; 9d 70 07
B0_0427:		inx				; e8 
B0_0428:		dec $0a			; c6 0a
B0_042a:		bne B0_0424 ; d0 f8

B0_042c:		txa				; 8a 
B0_042d:		and #$07		; 29 07
B0_042f:		bne B0_041c ; d0 eb

B0_0431:		rts				; 60 


B0_0432:		lda $8493, y	; b9 93 84
B0_0435:		sta $08			; 85 08
B0_0437:		lda $8494, y	; b9 94 84
B0_043a:		jmp $8418		; 4c 18 84


B0_043d:		sta $a384, y	; 99 84 a3
B0_0440:		sty $99			; 84 99
B0_0442:		sty $a7			; 84 a7
B0_0444:		sty $99			; 84 99
B0_0446:		sty $b3			; 84 b3
B0_0448:		sty $ab			; 84 ab
B0_044a:		sty $99			; 84 99
B0_044c:		sty $99			; 84 99
B0_044e:		sty $af			; 84 af
B0_0450:		sty $99			; 84 99
B0_0452:		sty $99			; 84 99
B0_0454:		sty $b3			; 84 b3
B0_0456:		sty $99			; 84 99
B0_0458:		sty $99			; 84 99
B0_045a:		sty $b9			; 84 b9
B0_045c:		sty $bd			; 84 bd
B0_045e:		sty $bd			; 84 bd
B0_0460:		sty $bd			; 84 bd
B0_0462:		sty $c1			; 84 c1
B0_0464:		sty $99			; 84 99
B0_0466:		sty $c9			; 84 c9
B0_0468:		sty $cd			; 84 cd
B0_046a:		sty $99			; 84 99
B0_046c:		sty $99			; 84 99
B0_046e:		sty $d3			; 84 d3
B0_0470:		sty $99			; 84 99
B0_0472:		sty $99			; 84 99
B0_0474:		sty $d9			; 84 d9
B0_0476:		sty $99			; 84 99
B0_0478:		sty $df			; 84 df
B0_047a:		sty $99			; 84 99
B0_047c:		sty $e3			; 84 e3
B0_047e:		sty $e7			; 84 e7
B0_0480:		sty $eb			; 84 eb
B0_0482:		sty $99			; 84 99
B0_0484:		sty $f1			; 84 f1
B0_0486:		sty $f1			; 84 f1
B0_0488:		sty $99			; 84 99
B0_048a:		sty $f7			; 84 f7
B0_048c:		sty $99			; 84 99
B0_048e:		sty $fd			; 84 fd
B0_0490:		sty $9f			; 84 9f
B0_0492:		sty $9b			; 84 9b
B0_0494:		sty $9b			; 84 9b
B0_0496:		sty $9b			; 84 9b
B0_0498:		sty $08			; 84 08
B0_049a:	.db $80
B0_049b:		asl $bc			; 06 bc
B0_049d:	.db $02
B0_049e:		cpy #$06		; c0 06
B0_04a0:	.db $7b
B0_04a1:	.db $02
B0_04a2:	.db $80
B0_04a3:		asl $7e			; 06 7e
B0_04a5:	.db $02
B0_04a6:	.db $80
B0_04a7:		asl $b7			; 06 b7
B0_04a9:	.db $02
B0_04aa:		cpy #$06		; c0 06
B0_04ac:		lda $c002, y	; b9 02 c0
B0_04af:		asl $b8			; 06 b8
B0_04b1:	.db $02
B0_04b2:		cpy #$04		; c0 04
B0_04b4:		clv				; b8 
B0_04b5:	.db $02
B0_04b6:		lda $c002, y	; b9 02 c0
B0_04b9:		asl $7a			; 06 7a
B0_04bb:	.db $02
B0_04bc:	.db $80
B0_04bd:		asl $7c			; 06 7c
B0_04bf:	.db $02
B0_04c0:	.db $80
B0_04c1:	.db $02
B0_04c2:		ldx $01, y		; b6 01
B0_04c4:	.db $b7
B0_04c5:	.db $03
B0_04c6:		clv				; b8 
B0_04c7:	.db $02
B0_04c8:		cpy #$06		; c0 06
B0_04ca:		sei				; 78 
B0_04cb:	.db $02
B0_04cc:	.db $80
B0_04cd:		ora ($b8, x)	; 01 b8
B0_04cf:		ora $ba			; 05 ba
B0_04d1:	.db $02
B0_04d2:		cpy #$04		; c0 04
B0_04d4:	.db $b2
B0_04d5:	.db $02
B0_04d6:		ldy $02, x		; b4 02
B0_04d8:		cpy #$04		; c0 04
B0_04da:		tsx				; ba 
B0_04db:	.db $02
B0_04dc:	.db $bb
B0_04dd:	.db $02
B0_04de:		cpy #$06		; c0 06
B0_04e0:		ldy #$02		; a0 02
B0_04e2:		cpy #$06		; c0 06
B0_04e4:		clv				; b8 
B0_04e5:	.db $02
B0_04e6:		cpy #$06		; c0 06
B0_04e8:	.db $7c
B0_04e9:	.db $02
B0_04ea:	.db $80
B0_04eb:	.db $04
B0_04ec:		clv				; b8 
B0_04ed:	.db $02
B0_04ee:		lda $c002, y	; b9 02 c0
B0_04f1:	.db $04
B0_04f2:	.db $b2
B0_04f3:	.db $02
B0_04f4:	.db $b3
B0_04f5:	.db $02
B0_04f6:		cpy #$04		; c0 04
B0_04f8:	.db $b7
B0_04f9:	.db $02
B0_04fa:		clv				; b8 
B0_04fb:	.db $02
B0_04fc:		cpy #$06		; c0 06
B0_04fe:		clv				; b8 
B0_04ff:	.db $02
B0_0500:		.db $c0


func_00_0501:
	lda wCurrRoomGroup
B0_0503:		cmp #$0c		; c9 0c
B0_0505:		bne B0_050e ; d0 07

; if group c and y == 7f6, a = 0f
B0_0507:		ldy $07f6		; ac f6 07
B0_050a:		beq B0_050e ; f0 02

B0_050c:		lda #$0f		; a9 0f

B0_050e:		asl a			; 0a
B0_050f:		tay				; a8 
B0_0510:		lda data_00_05cd.w, y	; b9 cd 85
B0_0513:		sta $08			; 85 08
B0_0515:		lda data_00_05cd.w+1, y	; b9 ce 85
B0_0518:		sta $09			; 85 09

B0_051a:		lda wCurrRoomSection			; a5 33
B0_051c:		asl a			; 0a
B0_051d:		asl a			; 0a
B0_051e:		tay				; a8 
B0_051f:		lda ($08), y	; b1 08
B0_0521:		sta $0a			; 85 0a
B0_0523:		iny				; c8 
B0_0524:		lda ($08), y	; b1 08
B0_0526:		sta $0b			; 85 0b
B0_0528:		iny				; c8 
B0_0529:		sty $0e			; 84 0e
B0_052b:		rts				; 60 


func_00_052c:
B0_052c:		lda #$09		; a9 09
B0_052e:		jsr func_1f_0ce9		; 20 e9 ec
B0_0531:		jsr func_00_0501		; 20 01 85
B0_0534:		lda #$00		; a9 00
B0_0536:		sta $07			; 85 07

B0_0538:		ldy wCurrRoomIdx			; a4 34
B0_053a:		lda ($0a), y	; b1 0a
B0_053c:		cmp #$1c		; c9 1c
B0_053e:		bcc B0_0544 ; 90 04

B0_0540:		sbc #$1c		; e9 1c
B0_0542:		inc $07			; e6 07

; y = a * 9
B0_0544:		sta $00			; 85 00
B0_0546:		asl a			; 0a
B0_0547:		asl a			; 0a
B0_0548:		asl a			; 0a
B0_0549:		clc				; 18 
B0_054a:		adc $00			; 65 00
B0_054c:		tay				; a8 

B0_054d:		ldx $1d			; a6 1d
B0_054f:		lda #$03		; a9 03
B0_0551:		sta $0d			; 85 0d

B0_0553:		lda #$03		; a9 03
B0_0555:		sta $0c			; 85 0c

B0_0557:		lda $07			; a5 07
B0_0559:		bne B0_056e ; d0 13

B0_055b:		lda data_00_0779.w, y	; b9 79 87

B0_055e:		sta $02f4, x	; 9d f4 02
B0_0561:		iny				; c8 
B0_0562:		inx				; e8 
B0_0563:		dec $0c			; c6 0c
B0_0565:		bne B0_0557 ; d0 f0

B0_0567:		inx				; e8 
B0_0568:		dec $0d			; c6 0d
B0_056a:		bne B0_0553 ; d0 e7

B0_056c:		beq B0_0574 ; f0 06

B0_056e:		lda $8875, y	; b9 75 88
B0_0571:		jmp B0_055e		; 4c 5e 85

B0_0574:		jsr $85bb		; 20 bb 85
B0_0577:		ldy $0e			; a4 0e
B0_0579:		lda ($08), y	; b1 08
B0_057b:		sta $0a			; 85 0a
B0_057d:		iny				; c8 
B0_057e:		lda ($08), y	; b1 08
B0_0580:		sta $0b			; 85 0b
B0_0582:		ldy $34			; a4 34
B0_0584:		lda ($0a), y	; b1 0a
B0_0586:		asl a			; 0a
B0_0587:		clc				; 18 
B0_0588:		adc ($0a), y	; 71 0a
B0_058a:		tay				; a8 
B0_058b:		ldx $1d			; a6 1d
B0_058d:		lda #$03		; a9 03
B0_058f:		sta $0c			; 85 0c
B0_0591:		lda $89ce, y	; b9 ce 89
B0_0594:		sta $02f0, x	; 9d f0 02
B0_0597:		iny				; c8 
B0_0598:		inx				; e8 
B0_0599:		dec $0c			; c6 0c
B0_059b:		bne B0_0591 ; d0 f4

B0_059d:		rts				; 60 


B0_059e:		jsr func_00_0501		; 20 01 85
B0_05a1:		jmp $8574		; 4c 74 85


B0_05a4:		jsr $859e		; 20 9e 85
B0_05a7:		ldx $1d			; a6 1d
B0_05a9:		ldy #$00		; a0 00
B0_05ab:		lda $85b8, y	; b9 b8 85
B0_05ae:		sta $02e8, x	; 9d e8 02
B0_05b1:		inx				; e8 
B0_05b2:		iny				; c8 
B0_05b3:		cpy #$03		; c0 03
B0_05b5:		bcc B0_05ab ; 90 f4

B0_05b7:		rts				; 60 


B0_05b8:		jsr $3726		; 20 26 37
B0_05bb:		ldy $054e		; ac 4e 05
B0_05be:		lda $85c9, y	; b9 c9 85
B0_05c1:		jsr func_1f_0ce9		; 20 e9 ec
B0_05c4:		lda #$04		; a9 04
B0_05c6:		jmp func_1f_0ce9		; 4c e9 ec


B0_05c9:		asl a			; 0a
B0_05ca:	.db $0b
B0_05cb:	.db $0c
B0_05cc:		.db $0d


data_00_05cd:
	.dw data_00_05ed
	.dw $85fd
	.dw $8615
	.dw $8629
	.dw $863d
	.dw $8649
	.dw $8659
	.dw $8665
	.dw $8681
	.dw $8695
	.dw $869d
	.dw $86b9
	.dw $86c5
	.dw $86d1
	.dw $86e1
	.dw $86ed

data_00_05ed:
	.dw data_00_06f9
	.dw $8905
	.dw $86fa
	.dw $8906
	.dw $86fe
	.dw $890a
	.dw $8700
	.dw $890c

B0_05fd:		ora ($87, x)	; 01 87
B0_05ff:		ora $0489		; 0d 89 04
B0_0602:	.db $87
B0_0603:		;removed
	.db $10 $89

B0_0605:	.db $07
B0_0606:	.db $87
B0_0607:	.db $13
B0_0608:	.db $89
B0_0609:	.db $07
B0_060a:	.db $87
B0_060b:	.db $13
B0_060c:	.db $89
B0_060d:	.db $04
B0_060e:	.db $87
B0_060f:		;removed
	.db $10 $89

B0_0611:		ora ($87, x)	; 01 87
B0_0613:		ora $0a89		; 0d 89 0a
B0_0616:	.db $87
B0_0617:		asl $89, x		; 16 89
B0_0619:	.db $0c
B0_061a:	.db $87
B0_061b:		clc				; 18 
B0_061c:	.db $89
B0_061d:		ora $1987		; 0d 87 19
B0_0620:	.db $89
B0_0621:	.db $0f
B0_0622:	.db $87
B0_0623:	.db $1b
B0_0624:	.db $89
B0_0625:	.db $12
B0_0626:	.db $87
B0_0627:		asl $1489, x	; 1e 89 14
B0_062a:	.db $87
B0_062b:		jsr $1789		; 20 89 17
B0_062e:	.db $87
B0_062f:	.db $23
B0_0630:	.db $89
B0_0631:	.db $17
B0_0632:	.db $87
B0_0633:		and $89			; 25 89
B0_0635:	.db $17
B0_0636:	.db $87
B0_0637:	.db $27
B0_0638:	.db $89
B0_0639:	.db $14
B0_063a:	.db $87
B0_063b:		and #$89		; 29 89
B0_063d:		ora $2c87, y	; 19 87 2c
B0_0640:	.db $89
B0_0641:		ora $2f87, y	; 19 87 2f
B0_0644:	.db $89
B0_0645:	.db $1c
B0_0646:	.db $87
B0_0647:	.db $32
B0_0648:	.db $89
B0_0649:	.db $1f
B0_064a:	.db $87
B0_064b:		and $89, x		; 35 89
B0_064d:	.db $1f
B0_064e:	.db $87
B0_064f:		rol $89, x		; 36 89
B0_0651:		jsr $3787		; 20 87 37
B0_0654:	.db $89
B0_0655:		jsr $3987		; 20 87 39
B0_0658:	.db $89
B0_0659:	.db $22
B0_065a:	.db $87
B0_065b:	.db $3b
B0_065c:	.db $89
B0_065d:		bit $87			; 24 87
B0_065f:		and $2589, x	; 3d 89 25
B0_0662:	.db $87
B0_0663:		rol $2889, x	; 3e 89 28
B0_0666:	.db $87
B0_0667:		eor ($89, x)	; 41 89
B0_0669:		rol a			; 2a
B0_066a:	.db $87
B0_066b:	.db $43
B0_066c:	.db $89
B0_066d:		rol a			; 2a
B0_066e:	.db $87
B0_066f:	.db $44
B0_0670:	.db $89
B0_0671:		rol a			; 2a
B0_0672:	.db $87
B0_0673:		eor $89			; 45 89
B0_0675:	.db $2b
B0_0676:	.db $87
B0_0677:		lsr $89			; 46 89
B0_0679:		and $4887		; 2d 87 48
B0_067c:	.db $89
B0_067d:	.db $2f
B0_067e:	.db $87
B0_067f:		lsr a			; 4a
B0_0680:	.db $89
B0_0681:		bmi B0_060a ; 30 87

B0_0683:	.db $4b
B0_0684:	.db $89
B0_0685:	.db $32
B0_0686:	.db $87
B0_0687:		eor $3389		; 4d 89 33
B0_068a:	.db $87
B0_068b:		lsr $3289		; 4e 89 32
B0_068e:	.db $87
B0_068f:		eor $3289		; 4d 89 32
B0_0692:	.db $87
B0_0693:		eor $3589		; 4d 89 35
B0_0696:	.db $87
B0_0697:		bvc B0_0622 ; 50 89

B0_0699:	.db $37
B0_069a:	.db $87
B0_069b:	.db $52
B0_069c:	.db $89
B0_069d:	.db $3a
B0_069e:	.db $87
B0_069f:	.db $54
B0_06a0:	.db $89
B0_06a1:	.db $3c
B0_06a2:	.db $87
B0_06a3:		lsr $89, x		; 56 89
B0_06a5:		and $5787, x	; 3d 87 57
B0_06a8:	.db $89
B0_06a9:		rol $5887, x	; 3e 87 58
B0_06ac:	.db $89
B0_06ad:		rti				; 40 


B0_06ae:	.db $87
B0_06af:	.db $5a
B0_06b0:	.db $89
B0_06b1:	.db $43
B0_06b2:	.db $87
B0_06b3:		eor $4589, x	; 5d 89 45
B0_06b6:	.db $87
B0_06b7:	.db $5f
B0_06b8:	.db $89
B0_06b9:		pha				; 48 
B0_06ba:	.db $87
B0_06bb:	.db $62
B0_06bc:	.db $89
B0_06bd:		lsr a			; 4a
B0_06be:	.db $87
B0_06bf:	.db $64
B0_06c0:	.db $89
B0_06c1:		jmp $6687		; 4c 87 66


B0_06c4:	.db $89
B0_06c5:	.db $4f
B0_06c6:	.db $87
B0_06c7:		adc #$89		; 69 89
B0_06c9:		eor ($87), y	; 51 87
B0_06cb:	.db $6b
B0_06cc:	.db $89
B0_06cd:	.db $53
B0_06ce:	.db $87
B0_06cf:		adc $5489		; 6d 89 54
B0_06d2:	.db $87
B0_06d3:		ror $5789		; 6e 89 57
B0_06d6:	.db $87
B0_06d7:		adc ($89), y	; 71 89
B0_06d9:	.db $5a
B0_06da:	.db $87
B0_06db:	.db $74
B0_06dc:	.db $89
B0_06dd:		eor $7787, x	; 5d 87 77
B0_06e0:	.db $89
B0_06e1:	.db $5f
B0_06e2:	.db $87
B0_06e3:		adc $6289, y	; 79 89 62
B0_06e6:	.db $87
B0_06e7:	.db $7c
B0_06e8:	.db $89
B0_06e9:	.db $64
B0_06ea:	.db $87
B0_06eb:		ror $4f89, x	; 7e 89 4f
B0_06ee:	.db $87
B0_06ef:	.db $80
B0_06f0:	.db $89
B0_06f1:		eor ($87), y	; 51 87
B0_06f3:	.db $6b
B0_06f4:	.db $89
B0_06f5:	.db $53
B0_06f6:	.db $87
B0_06f7:	.db $6d $89


data_00_06f9:
.db $00
B0_06fa:		.db $00				; 00
B0_06fb:		ora ($03, x)	; 01 03
B0_06fd:	.db $03
B0_06fe:	.db $03
B0_06ff:	.db $02
B0_0700:	.db $03
B0_0701:	.db $04
B0_0702:	.db $04
B0_0703:	.db $04
B0_0704:	.db $04
B0_0705:	.db $04
B0_0706:		ora $05			; 05 05
B0_0708:		ora $05			; 05 05
B0_070a:		asl $06			; 06 06
B0_070c:	.db $07
B0_070d:	.db $07
B0_070e:	.db $07
B0_070f:		php				; 08 
B0_0710:	.db $07
B0_0711:	.db $07
B0_0712:		php				; 08 
B0_0713:		php				; 08 
B0_0714:		ora #$09		; 09 09
B0_0716:		ora #$09		; 09 09
B0_0718:		ora #$0a		; 09 0a
B0_071a:		asl a			; 0a
B0_071b:		asl a			; 0a
B0_071c:		asl a			; 0a
B0_071d:		asl a			; 0a
B0_071e:	.db $0b
B0_071f:	.db $0c
B0_0720:	.db $0c
B0_0721:	.db $0c
B0_0722:	.db $2b
B0_0723:		ora $0e2b		; 0d 2b 0e
B0_0726:		asl $0f2b		; 0e 2b 0f
B0_0729:	.db $0f
B0_072a:	.db $0f
B0_072b:	.db $0f
B0_072c:		bpl B0_073e ; 10 10

B0_072e:		;removed
	.db $10 $11

B0_0730:	.db $12
B0_0731:	.db $12
B0_0732:	.db $12
B0_0733:	.db $12
B0_0734:	.db $13
B0_0735:	.db $14
B0_0736:	.db $14
B0_0737:	.db $14
B0_0738:	.db $14
B0_0739:	.db $14
B0_073a:		clc				; 18 
B0_073b:		clc				; 18 
B0_073c:		clc				; 18 
B0_073d:		clc				; 18 
B0_073e:		clc				; 18 
B0_073f:		clc				; 18 
B0_0740:		ora $1919, y	; 19 19 19
B0_0743:		ora $1a1a, y	; 19 1a 1a
B0_0746:	.db $1b
B0_0747:	.db $1c
B0_0748:	.db $23
B0_0749:	.db $23
B0_074a:	.db $23
B0_074b:	.db $23
B0_074c:	.db $23
B0_074d:	.db $23
B0_074e:		bit $16			; 24 16
B0_0750:		asl $17, x		; 16 17
B0_0752:	.db $17
B0_0753:		asl $25, x		; 16 25
B0_0755:		and $26			; 25 26
B0_0757:		rol $27			; 26 27
B0_0759:		rol $26			; 26 26
B0_075b:		plp				; 28 
B0_075c:		and #$29		; 29 29
B0_075e:		rol a			; 2a
B0_075f:	.db $1f
B0_0760:		asl $1f1d, x	; 1e 1d 1f
B0_0763:		jsr $2221		; 20 21 22


B0_0766:		.db $00				; 00
B0_0767:	.db $3f
B0_0768:	.db $0f
B0_0769:		asl $26, x		; 16 26
B0_076b:		jsr $160f		; 20 0f 16
B0_076e:		rol $20			; 26 20
B0_0770:	.db $0f
B0_0771:		asl $26, x		; 16 26
B0_0773:		jsr $160f		; 20 0f 16
B0_0776:		rol $20			; 26 20
B0_0778:	.db $ff

data_00_0779:
B0_0779:		.db $00				; 00
B0_077a:		;removed
	.db $10 $1a

B0_077c:		.db $00				; 00
B0_077d:	.db $0b
B0_077e:	.db $2c $02 $00
B0_0781:		bpl B0_0794 ; 10 11

B0_0783:		rol $36			; 26 36
B0_0785:		bmi B0_0793 ; 30 0c

B0_0787:	.db $2b
B0_0788:		asl $25, x		; 16 25
B0_078a:		rol $00, x		; 36 00
B0_078c:		ora ($1a), y	; 11 1a
B0_078e:	.db $02
B0_078f:		ora ($30), y	; 11 30
B0_0791:	.db $02
B0_0792:		php				; 08 
B0_0793:		sec				; 38 
B0_0794:		.db $00				; 00
B0_0795:		bpl B0_07b1 ; 10 1a

B0_0797:	.db $02
B0_0798:	.db $12
B0_0799:		bmi B0_079d ; 30 02

B0_079b:		php				; 08 
B0_079c:		sec				; 38 
B0_079d:		jsr $1b02		; 20 02 1b
B0_07a0:	.db $02
B0_07a1:		.db $00				; 00
B0_07a2:		;removed
	.db $10 $10

B0_07a4:	.db $04
B0_07a5:		bit $33			; 24 33
B0_07a7:	.db $02
B0_07a8:		.db $00				; 00
B0_07a9:	.db $02
B0_07aa:		.db $00				; 00
B0_07ab:		;removed
	.db $10 $10

B0_07ad:	.db $0b
B0_07ae:		bit $1c0b		; 2c 0b 1c
B0_07b1:		rol a			; 2a
B0_07b2:	.db $02
B0_07b3:		ora #$06		; 09 06
B0_07b5:		.db $00				; 00
B0_07b6:		jsr $0818		; 20 18 08
B0_07b9:		clc				; 18 
B0_07ba:		rol a			; 2a
B0_07bb:	.db $02
B0_07bc:		ora #$06		; 09 06
B0_07be:	.db $02
B0_07bf:		jsr $0b13		; 20 13 0b
B0_07c2:	.db $1c
B0_07c3:		rol a			; 2a
B0_07c4:	.db $02
B0_07c5:		ora #$08		; 09 08
B0_07c7:	.db $02
B0_07c8:		and ($12), y	; 31 12
B0_07ca:		bpl B0_07d4 ; 10 08

B0_07cc:		clc				; 18 
B0_07cd:		.db $00				; 00
B0_07ce:		jsr $0210		; 20 10 02
B0_07d1:		php				; 08 
B0_07d2:		plp				; 28 
B0_07d3:		.db $00				; 00
B0_07d4:		asl $2c			; 06 2c
B0_07d6:		.db $00				; 00
B0_07d7:	.db $34
B0_07d8:	.db $22
B0_07d9:	.db $27
B0_07da:		asl $15			; 06 15
B0_07dc:	.db $1b
B0_07dd:	.db $02
B0_07de:	.db $2c $02 $00
B0_07e1:		bpl B0_07e5 ; 10 02

B0_07e3:	.db $03
B0_07e4:	.db $13
B0_07e5:	.db $0b
B0_07e6:	.db $1b
B0_07e7:		ora ($02, x)	; 01 02
B0_07e9:		ora ($20), y	; 11 20
B0_07eb:		and ($11), y	; 31 11
B0_07ed:		and ($08, x)	; 21 08
B0_07ef:		clc				; 18 
B0_07f0:		rol a			; 2a
B0_07f1:		php				; 08 
B0_07f2:		and #$17		; 29 17
B0_07f4:	.db $02
B0_07f5:		ora ($21), y	; 11 21
B0_07f7:	.db $0c
B0_07f8:		.db $00				; 00
B0_07f9:		jsr $2908		; 20 08 29
B0_07fc:		clc				; 18 
B0_07fd:	.db $03
B0_07fe:	.db $12
B0_07ff:	.db $22
B0_0800:		php				; 08 
B0_0801:		bpl B0_0823 ; 10 20

B0_0803:		php				; 08 
B0_0804:		asl a			; 0a
B0_0805:		.db $00				; 00
B0_0806:	.db $02
B0_0807:		ora ($31), y	; 11 31
B0_0809:	.db $02
B0_080a:		bpl B0_082c ; 10 20

B0_080c:	.db $13
B0_080d:	.db $03
B0_080e:	.db $33
B0_080f:	.db $02
B0_0810:		ora ($31), y	; 11 31
B0_0812:		php				; 08 
B0_0813:		bpl B0_0835 ; 10 20

B0_0815:	.db $0b
B0_0816:	.db $1b
B0_0817:	.db $2b
B0_0818:		asl $16			; 06 16
B0_081a:		rol $02			; 26 02
B0_081c:		ora ($20), y	; 11 20
B0_081e:	.db $0b
B0_081f:	.db $1c
B0_0820:	.db $3c
B0_0821:	.db $0b
B0_0822:	.db $1b
B0_0823:	.db $02
B0_0824:	.db $02
B0_0825:		ora ($20), y	; 11 20
B0_0827:		php				; 08 
B0_0828:		clc				; 18 
B0_0829:		sec				; 38 
B0_082a:		php				; 08 
B0_082b:		clc				; 18 
B0_082c:	.db $02
B0_082d:		ora ($11, x)	; 01 11
B0_082f:		bit $2717		; 2c 17 27
B0_0832:		ora $0b			; 05 0b
B0_0834:	.db $1c
B0_0835:	.db $3c
B0_0836:		php				; 08 
B0_0837:		clc				; 18 
B0_0838:		bpl B0_0841 ; 10 07

B0_083a:	.db $17
B0_083b:		php				; 08 
B0_083c:	.db $0b
B0_083d:	.db $1c
B0_083e:	.db $3c
B0_083f:	.db $07
B0_0840:		.db $00				; 00
B0_0841:		bpl B0_0859 ; 10 16

B0_0843:		and $10			; 25 10
B0_0845:	.db $02
B0_0846:		ora $0721, y	; 19 21 07
B0_0849:		.db $00				; 00
B0_084a:		bpl B0_0867 ; 10 1b

B0_084c:		.db $00				; 00
B0_084d:		;removed
	.db $10 $02

B0_084f:		ora $0821, y	; 19 21 08
B0_0852:		clc				; 18 
B0_0853:		jsr $1101		; 20 01 11
B0_0856:		jsr $1b0b		; 20 0b 1b
B0_0859:		jsr $1808		; 20 08 18
B0_085c:	.db $0c
B0_085d:	.db $0b
B0_085e:	.db $1b
B0_085f:	.db $0c
B0_0860:		bit $0c27		; 2c 27 0c
B0_0863:		php				; 08 
B0_0864:		clc				; 18 
B0_0865:	.db $0c
B0_0866:	.db $0c
B0_0867:		.db $00				; 00
B0_0868:		;removed
	.db $10 $01

B0_086a:		ora ($21), y	; 11 21
B0_086c:		php				; 08 
B0_086d:		clc				; 18 
B0_086e:	.db $0c
B0_086f:	.db $0c
B0_0870:		.db $00				; 00
B0_0871:		bpl B0_0878 ; 10 05

B0_0873:		.db $00				; 00
B0_0874:		bpl B0_0882 ; 10 0c

B0_0876:	.db $17
B0_0877:	.db $1c
B0_0878:	.db $0c
B0_0879:		.db $00				; 00
B0_087a:		bpl B0_0891 ; 10 15

B0_087c:	.db $27
B0_087d:		jsr $2200		; 20 00 22
B0_0880:	.db $1a
B0_0881:		clc				; 18 
B0_0882:		plp				; 28 
B0_0883:		jsr $2022		; 20 22 20
B0_0886:	.db $02
B0_0887:		jsr $2c0c		; 20 0c 2c
B0_088a:		ora ($00), y	; 11 00
B0_088c:		jsr $0800		; 20 00 08
B0_088f:		clc				; 18 
B0_0890:		.db $00				; 00
B0_0891:	.db $2c $1a $00
B0_0894:		bpl B0_08b6 ; 10 20

B0_0896:		php				; 08 
B0_0897:		clc				; 18 
B0_0898:	.db $0c
B0_0899:		.db $00				; 00
B0_089a:	.db $2c $1a $00
B0_089d:		bpl B0_08bf ; 10 20

B0_089f:		php				; 08 
B0_08a0:		clc				; 18 
B0_08a1:	.db $27
B0_08a2:		.db $00				; 00
B0_08a3:		ora $1a			; 05 1a
B0_08a5:	.db $0c
B0_08a6:		bpl B0_08cf ; 10 27

B0_08a8:	.db $22
B0_08a9:		jsr $1002		; 20 02 10
B0_08ac:		ora $01			; 05 01
B0_08ae:	.db $0c
B0_08af:		bpl B0_08d8 ; 10 27

B0_08b1:		.db $00				; 00
B0_08b2:		ora $1a			; 05 1a
B0_08b4:		.db $00				; 00
B0_08b5:	.db $04
B0_08b6:		bpl B0_08c4 ; 10 0c

B0_08b8:		bit $0219		; 2c 19 02
B0_08bb:	.db $04
B0_08bc:	.db $14
B0_08bd:		.db $00				; 00
B0_08be:	.db $04
B0_08bf:		bpl B0_08c3 ; 10 02

B0_08c1:	.db $14
B0_08c2:	.db $27
B0_08c3:	.db $02
B0_08c4:	.db $04
B0_08c5:	.db $14
B0_08c6:	.db $0b
B0_08c7:	.db $1b
B0_08c8:		rol a			; 2a
B0_08c9:	.db $02
B0_08ca:		asl a			; 0a
B0_08cb:		php				; 08 
B0_08cc:	.db $02
B0_08cd:	.db $32
B0_08ce:	.db $13
B0_08cf:		ora ($11, x)	; 01 11
B0_08d1:		and ($00, x)	; 21 00
B0_08d3:		bpl B0_08f8 ; 10 23

B0_08d5:	.db $0b
B0_08d6:	.db $1a
B0_08d7:	.db $3a
B0_08d8:		ora ($11, x)	; 01 11
B0_08da:		and ($00, x)	; 21 00
B0_08dc:		bpl B0_0901 ; 10 23

B0_08de:		ora $25			; 05 25
B0_08e0:		;removed
	.db $10 $0b

B0_08e2:	.db $1b
B0_08e3:	.db $0f
B0_08e4:		.db $00				; 00
B0_08e5:		;removed
	.db $10 $37

B0_08e7:	.db $0b
B0_08e8:	.db $1a
B0_08e9:	.db $3a
B0_08ea:	.db $0b
B0_08eb:	.db $12
B0_08ec:		ora $01			; 05 01
B0_08ee:		ora ($20), y	; 11 20
B0_08f0:		and ($11), y	; 31 11
B0_08f2:		and ($01, x)	; 21 01
B0_08f4:	.db $22
B0_08f5:		and ($0b, x)	; 21 0b
B0_08f7:	.db $1a
B0_08f8:	.db $3a
B0_08f9:		.db $00				; 00
B0_08fa:		bpl B0_091f ; 10 23

B0_08fc:	.db $0b
B0_08fd:	.db $1c
B0_08fe:		bit $2908		; 2c 08 29
B0_0901:	.db $17
B0_0902:	.db $02
B0_0903:		ora ($22), y	; 11 22
B0_0905:	.db $04
B0_0906:		.db $00				; 00
B0_0907:		ora ($0f, x)	; 01 0f
B0_0909:		ora $06			; 05 06
B0_090b:	.db $04
B0_090c:	.db $04
B0_090d:		asl $04, x		; 16 04
B0_090f:		asl $1616		; 0e 16 16
B0_0912:		ora $16			; 05 16
B0_0914:		asl $05, x		; 16 05
B0_0916:		php				; 08 
B0_0917:		php				; 08 
B0_0918:	.db $07
B0_0919:		asl $06			; 06 06
B0_091b:		asl $09			; 06 09
B0_091d:		asl $02			; 06 02
B0_091f:		php				; 08 
B0_0920:	.db $0b
B0_0921:	.db $0b
B0_0922:	.db $04
B0_0923:		ora $04			; 05 04
B0_0925:	.db $04
B0_0926:		ora #$0b		; 09 0b
B0_0928:		ora #$09		; 09 09
B0_092a:	.db $04
B0_092b:	.db $04
B0_092c:		bpl B0_0935 ; 10 07

B0_092e:	.db $07
B0_092f:		asl a			; 0a
B0_0930:		asl a			; 0a
B0_0931:	.db $07
B0_0932:		ora $06			; 05 06
B0_0934:	.db $04
B0_0935:		asl $06			; 06 06
B0_0937:	.db $0c
B0_0938:		asl $0c			; 06 0c
B0_093a:		ora ($0c), y	; 11 0c
B0_093c:	.db $0c
B0_093d:	.db $0c
B0_093e:		ora $040c		; 0d 0c 04
B0_0941:		ora ($11), y	; 11 11
B0_0943:		asl a			; 0a
B0_0944:		ora ($11), y	; 11 11
B0_0946:		ora ($11), y	; 11 11
B0_0948:		asl a			; 0a
B0_0949:		;removed
	.db $10 $11

B0_094b:		asl $13			; 06 13
B0_094d:	.db $13
B0_094e:	.db $13
B0_094f:	.db $13
B0_0950:	.db $13
B0_0951:		asl a			; 0a
B0_0952:		ora $15, x		; 15 15
B0_0954:	.db $0b
B0_0955:		asl $15			; 06 15
B0_0957:		asl $07			; 06 07
B0_0959:		asl a			; 0a
B0_095a:	.db $07
B0_095b:		ora $04, x		; 15 04
B0_095d:		ora $11			; 05 11
B0_095f:	.db $0b
B0_0960:	.db $07
B0_0961:		ora $06, x		; 15 06
B0_0963:		asl $15			; 06 15
B0_0965:	.db $04
B0_0966:		ora $15, x		; 15 15
B0_0968:	.db $04
B0_0969:	.db $04
B0_096a:	.db $0b
B0_096b:		asl a			; 0a
B0_096c:		asl a			; 0a
B0_096d:	.db $17
B0_096e:		ora $06, x		; 15 06
B0_0970:		asl $15, x		; 16 15
B0_0972:	.db $07
B0_0973:		ora $15, x		; 15 15
B0_0975:		ora $15, x		; 15 15
B0_0977:	.db $04
B0_0978:		ora $1615		; 0d 15 16
B0_097b:	.db $04
B0_097c:		ora $0e, x		; 15 0e
B0_097e:		ora $15, x		; 15 15
B0_0980:		ora $100b, y	; 19 0b 10
B0_0983:	.db $3f
B0_0984:	.db $0f
B0_0985:		php				; 08 
B0_0986:		rol $37			; 26 37
B0_0988:	.db $0f
B0_0989:	.db $0f
B0_098a:	.db $22
B0_098b:	.db $34
B0_098c:	.db $0f
B0_098d:	.db $0f
B0_098e:	.db $0f
B0_098f:	.db $0f
B0_0990:	.db $0f
B0_0991:	.db $0f
B0_0992:		asl $25, x		; 16 25
B0_0994:	.db $ff
B0_0995:		bpl B0_09d6 ; 10 3f

B0_0997:	.db $0f
B0_0998:		php				; 08 
B0_0999:		ora $38, x		; 15 38
B0_099b:	.db $0f
B0_099c:	.db $0f
B0_099d:	.db $22
B0_099e:	.db $34
B0_099f:	.db $0f
B0_09a0:	.db $0f
B0_09a1:	.db $0f
B0_09a2:	.db $0f
B0_09a3:	.db $0f
B0_09a4:	.db $0f
B0_09a5:		asl $25, x		; 16 25
B0_09a7:	.db $ff
B0_09a8:		bpl B0_09e9 ; 10 3f

B0_09aa:	.db $0f
B0_09ab:		and ($11, x)	; 21 11
B0_09ad:		jsr $0f0f		; 20 0f 0f
B0_09b0:	.db $22
B0_09b1:	.db $34
B0_09b2:	.db $0f
B0_09b3:	.db $0f
B0_09b4:	.db $0f
B0_09b5:	.db $0f
B0_09b6:	.db $0f
B0_09b7:	.db $0f
B0_09b8:		asl $25, x		; 16 25
B0_09ba:	.db $ff
B0_09bb:		bpl B0_09fc ; 10 3f

B0_09bd:	.db $0f
B0_09be:	.db $0f
B0_09bf:		ora $36, x		; 15 36
B0_09c1:	.db $0f
B0_09c2:	.db $0f
B0_09c3:	.db $22
B0_09c4:	.db $34
B0_09c5:	.db $0f
B0_09c6:	.db $0f
B0_09c7:	.db $0f
B0_09c8:	.db $0f
B0_09c9:	.db $0f
B0_09ca:	.db $0f
B0_09cb:		asl $25, x		; 16 25
B0_09cd:	.db $ff
B0_09ce:	.db $0f
B0_09cf:	.db $32
B0_09d0:		rol $0f			; 26 0f
B0_09d2:		jsr $2614		; 20 14 26
B0_09d5:	.db $0f
B0_09d6:	.db $1b
B0_09d7:		plp				; 28 
B0_09d8:	.db $0f
B0_09d9:	.db $1b
B0_09da:	.db $0f
B0_09db:	.db $13
B0_09dc:		and $0f			; 25 0f
B0_09de:	.db $17
B0_09df:		rol $0f, x		; 36 0f
B0_09e1:		ora $35, x		; 15 35
B0_09e3:	.db $0f
B0_09e4:		.db $00				; 00
B0_09e5:		and $130f, y	; 39 0f 13
B0_09e8:	.db $17
B0_09e9:	.db $0b
B0_09ea:		rol a			; 2a
B0_09eb:		and $2a0b, y	; 39 0b 2a
B0_09ee:	.db $3b
B0_09ef:	.db $0f
B0_09f0:	.db $14
B0_09f1:	.db $32
B0_09f2:	.db $0f
B0_09f3:		clc				; 18 
B0_09f4:		plp				; 28 
B0_09f5:		bpl B0_09f7 ; 10 00

B0_09f7:	.db $23
B0_09f8:	.db $0f
B0_09f9:		php				; 08 
B0_09fa:		sec				; 38 
B0_09fb:	.db $02
B0_09fc:		php				; 08 
B0_09fd:		sec				; 38 
B0_09fe:	.db $34
B0_09ff:		.db $00				; 00
B0_0a00:	.db $22
B0_0a01:		asl $26, x		; 16 26
B0_0a03:		jsr $140f		; 20 0f 14
B0_0a06:		and $0f, x		; 35 0f
B0_0a08:	.db $13
B0_0a09:		and $0f			; 25 0f
B0_0a0b:		php				; 08 
B0_0a0c:		sec				; 38 
B0_0a0d:	.db $0f
B0_0a0e:	.db $04
B0_0a0f:	.db $37
B0_0a10:	.db $0f
B0_0a11:		.db $00				; 00
B0_0a12:		bpl B0_0a1b ; 10 07

B0_0a14:		.db $00				; 00
B0_0a15:		bpl B0_0a17 ; 10 00

B0_0a17:		bpl B0_0a4b ; 10 32

B0_0a19:	.db $0f
B0_0a1a:	.db $17
B0_0a1b:	.db $23
B0_0a1c:		ldy $19			; a4 19
B0_0a1e:		bne B0_0a35 ; d0 15

B0_0a20:		jsr $e819		; 20 19 e8
B0_0a23:		ldy #$00		; a0 00
B0_0a25:		sty $46			; 84 46
B0_0a27:		iny				; c8 
B0_0a28:		sty $47			; 84 47
B0_0a2a:		lda #$41		; a9 41
B0_0a2c:		sta $4b			; 85 4b
B0_0a2e:		lda #$00		; a9 00
B0_0a30:		sta $6b			; 85 6b
B0_0a32:		inc $19			; e6 19
B0_0a34:		rts				; 60 


B0_0a35:		dey				; 88 
B0_0a36:		bne B0_0a3d ; d0 05

B0_0a38:		inc $19			; e6 19
B0_0a3a:		jmp $ebfd		; 4c fd eb


B0_0a3d:		dey				; 88 
B0_0a3e:		bne B0_0a62 ; d0 22

B0_0a40:		inc $19			; e6 19
B0_0a42:		ldy #$00		; a0 00
B0_0a44:		lda $32			; a5 32
B0_0a46:		jsr $8b1a		; 20 1a 8b
B0_0a49:		ldy #$02		; a0 02
B0_0a4b:		lda $33			; a5 33
B0_0a4d:		jsr $8b1a		; 20 1a 8b
B0_0a50:		ldy #$04		; a0 04
B0_0a52:		lda $34			; a5 34
B0_0a54:		jsr $8b1a		; 20 1a 8b
B0_0a57:		ldy #$06		; a0 06
B0_0a59:		lda $054e		; ad 4e 05
B0_0a5c:		jsr $8b1a		; 20 1a 8b
B0_0a5f:		jmp $8b32		; 4c 32 8b


B0_0a62:		lda $26			; a5 26
B0_0a64:		and #$10		; 29 10
B0_0a66:		bne B0_0ae0 ; d0 78

B0_0a68:		lda $26			; a5 26
B0_0a6a:		and #$20		; 29 20
B0_0a6c:		beq B0_0a7c ; f0 0e

B0_0a6e:		ldy $6b			; a4 6b
B0_0a70:		iny				; c8 
B0_0a71:		cpy #$04		; c0 04
B0_0a73:		bne B0_0a77 ; d0 02

B0_0a75:		ldy #$00		; a0 00
B0_0a77:		sty $6b			; 84 6b
B0_0a79:		jmp $8a42		; 4c 42 8a


B0_0a7c:		lda $26			; a5 26
B0_0a7e:		and #$80		; 29 80
B0_0a80:		beq B0_0aa8 ; f0 26

B0_0a82:		ldy $6b			; a4 6b
B0_0a84:		beq B0_0aa3 ; f0 1d

B0_0a86:		dey				; 88 
B0_0a87:		beq B0_0a9e ; f0 15

B0_0a89:		dey				; 88 
B0_0a8a:		beq B0_0a99 ; f0 0d

B0_0a8c:		ldy $054e		; ac 4e 05
B0_0a8f:		iny				; c8 
B0_0a90:		tya				; 98 
B0_0a91:		and #$03		; 29 03
B0_0a93:		sta $054e		; 8d 4e 05
B0_0a96:		jmp $8a42		; 4c 42 8a


B0_0a99:		inc $34			; e6 34
B0_0a9b:		jmp $8a42		; 4c 42 8a


B0_0a9e:		inc $33			; e6 33
B0_0aa0:		jmp $8a42		; 4c 42 8a


B0_0aa3:		inc $32			; e6 32
B0_0aa5:		jmp $8a42		; 4c 42 8a


B0_0aa8:		lda $26			; a5 26
B0_0aaa:		and #$40		; 29 40
B0_0aac:		beq B0_0a42 ; f0 94

B0_0aae:		ldy $6b			; a4 6b
B0_0ab0:		beq B0_0ad7 ; f0 25

B0_0ab2:		dey				; 88 
B0_0ab3:		beq B0_0ace ; f0 19

B0_0ab5:		dey				; 88 
B0_0ab6:		beq B0_0ac5 ; f0 0d

B0_0ab8:		ldy $054e		; ac 4e 05
B0_0abb:		dey				; 88 
B0_0abc:		tya				; 98 
B0_0abd:		and #$03		; 29 03
B0_0abf:		sta $054e		; 8d 4e 05
B0_0ac2:		jmp $8a42		; 4c 42 8a


B0_0ac5:		lda $34			; a5 34
B0_0ac7:		beq B0_0acb ; f0 02

B0_0ac9:		dec $34			; c6 34
B0_0acb:		jmp $8a42		; 4c 42 8a


B0_0ace:		lda $33			; a5 33
B0_0ad0:		beq B0_0ad4 ; f0 02

B0_0ad2:		dec $33			; c6 33
B0_0ad4:		jmp $8a42		; 4c 42 8a


B0_0ad7:		lda $32			; a5 32
B0_0ad9:		beq B0_0add ; f0 02

B0_0adb:		dec $32			; c6 32
B0_0add:		jmp $8a42		; 4c 42 8a


B0_0ae0:		jsr $e819		; 20 19 e8
B0_0ae3:		jsr $e684		; 20 84 e6
B0_0ae6:		lda #$00		; a9 00
B0_0ae8:		sta $39			; 85 39
B0_0aea:		lda $054e		; ad 4e 05
B0_0aed:		bne B0_0af5 ; d0 06

B0_0aef:		ldy #$00		; a0 00
B0_0af1:		lda #$ff		; a9 ff
B0_0af3:		bne B0_0af7 ; d0 02

B0_0af5:		ldy #$01		; a0 01
B0_0af7:		sty $3b			; 84 3b
B0_0af9:		sta $3a			; 85 3a
B0_0afb:		lda #$04		; a9 04
B0_0afd:		sta $18			; 85 18
B0_0aff:		lda #$00		; a9 00
B0_0b01:		sta $2a			; 85 2a
B0_0b03:		rts				; 60 


B0_0b04:		asl $108b		; 0e 8b 10
B0_0b07:	.db $8b
B0_0b08:		asl a			; 0a
B0_0b09:	.db $8b
B0_0b0a:		rts				; 60 


B0_0b0b:		;removed
	.db $70 $80

B0_0b0d:		;removed
	.db $90 $30

B0_0b0f:		dey				; 88 
B0_0b10:		ldy $bc			; a4 bc
B0_0b12:		;removed
	.db $90 $21

B0_0b14:		bne B0_0b37 ; d0 21

B0_0b16:		;removed
	.db $10 $22

B0_0b18:		bvc B0_0b3c ; 50 22

B0_0b1a:		sta $08			; 85 08
B0_0b1c:		lda $8b12, y	; b9 12 8b
B0_0b1f:		sta $61			; 85 61
B0_0b21:		lda $8b13, y	; b9 13 8b
B0_0b24:		sta $62			; 85 62
B0_0b26:		jsr $e8fc		; 20 fc e8
B0_0b29:		lda #$58		; a9 58
B0_0b2b:		sta $0438		; 8d 38 04
B0_0b2e:		ldy #$02		; a0 02
B0_0b30:		bne B0_0b39 ; d0 07

B0_0b32:		lda #$70		; a9 70
B0_0b34:		sta $0438		; 8d 38 04
B0_0b37:		ldy #$04		; a0 04
B0_0b39:		lda $8b04, y	; b9 04 8b
B0_0b3c:		sta $08			; 85 08
B0_0b3e:		lda $8b05, y	; b9 05 8b
B0_0b41:		sta $09			; 85 09
B0_0b43:		ldy $6b			; a4 6b
B0_0b45:		lda ($08), y	; b1 08
B0_0b47:		sta $041c		; 8d 1c 04
B0_0b4a:		lda #$00		; a9 00
B0_0b4c:		sta $048c		; 8d 8c 04
B0_0b4f:		lda #$40		; a9 40
B0_0b51:		sta $0400		; 8d 00 04
B0_0b54:		rts				; 60 


B0_0b55:		lda #$cb		; a9 cb
B0_0b57:		sta $041c		; 8d 1c 04
B0_0b5a:		ldy #$00		; a0 00
B0_0b5c:		lda $8b04, y	; b9 04 8b
B0_0b5f:		sta $08			; 85 08
B0_0b61:		lda $8b05, y	; b9 05 8b
B0_0b64:		sta $09			; 85 09
B0_0b66:		ldy $6b			; a4 6b
B0_0b68:		lda ($08), y	; b1 08
B0_0b6a:		sta $0438		; 8d 38 04
B0_0b6d:		jmp $8b4a		; 4c 4a 8b


B0_0b70:		ldy #$02		; a0 02
B0_0b72:		bne B0_0b76 ; d0 02

B0_0b74:		ldy #$00		; a0 00
B0_0b76:		dec $b5			; c6 b5
B0_0b78:		beq B0_0b84 ; f0 0a

B0_0b7a:		bne B0_0b8a ; d0 0e

B0_0b7c:		lda #$ff		; a9 ff
B0_0b7e:		sta $b4			; 85 b4
B0_0b80:		lda #$c0		; a9 c0
B0_0b82:		bne B0_0b9c ; d0 18

B0_0b84:		inc $b4			; e6 b4
B0_0b86:		lda #$06		; a9 06
B0_0b88:		sta $b5			; 85 b5
B0_0b8a:		lda $8bd1, y	; b9 d1 8b
B0_0b8d:		sta $10			; 85 10
B0_0b8f:		lda $8bd2, y	; b9 d2 8b
B0_0b92:		sta $11			; 85 11
B0_0b94:		ldy $b4			; a4 b4
B0_0b96:		lda ($10), y	; b1 10
B0_0b98:		cmp #$ff		; c9 ff
B0_0b9a:		beq B0_0b7c ; f0 e0

B0_0b9c:		sta $12			; 85 12
B0_0b9e:		jsr $8ba2		; 20 a2 8b
B0_0ba1:		rts				; 60 


B0_0ba2:		lda #$02		; a9 02
B0_0ba4:		sta $00			; 85 00
B0_0ba6:		lda $15			; a5 15
B0_0ba8:		clc				; 18 
B0_0ba9:		adc #$04		; 69 04
B0_0bab:		tax				; aa 
B0_0bac:		lda #$04		; a9 04
B0_0bae:		sta $13			; 85 13
B0_0bb0:		lda #$03		; a9 03
B0_0bb2:		sta $14			; 85 14
B0_0bb4:		lda $0300, x	; bd 00 03
B0_0bb7:		clc				; 18 
B0_0bb8:		adc $12			; 65 12
B0_0bba:		bpl B0_0bbe ; 10 02

B0_0bbc:		lda #$0f		; a9 0f
B0_0bbe:		sta $0300, x	; 9d 00 03
B0_0bc1:		inx				; e8 
B0_0bc2:		dec $14			; c6 14
B0_0bc4:		bne B0_0bb4 ; d0 ee

B0_0bc6:		inx				; e8 
B0_0bc7:		dec $13			; c6 13
B0_0bc9:		bne B0_0bb0 ; d0 e5

B0_0bcb:		txa				; 8a 
B0_0bcc:		dec $00			; c6 00
B0_0bce:		bne B0_0ba8 ; d0 d8

B0_0bd0:		rts				; 60 


B0_0bd1:	.db $dc
B0_0bd2:	.db $8b
B0_0bd3:		cmp $8b, x		; d5 8b
B0_0bd5:		.db $00				; 00
B0_0bd6:		cpy #$d0		; c0 d0
B0_0bd8:		cpx #$f0		; e0 f0
B0_0bda:		.db $00				; 00
B0_0bdb:	.db $ff
B0_0bdc:		.db $00				; 00
B0_0bdd:		.db $00				; 00
B0_0bde:		;removed
	.db $f0 $e0

B0_0be0:		bne B0_0ba2 ; d0 c0

B0_0be2:	.db $ff
B0_0be3:		ldx #$01		; a2 01
B0_0be5:		ldy #$00		; a0 00
B0_0be7:		lda #$03		; a9 03
B0_0be9:		sta $00			; 85 00
B0_0beb:		clc				; 18 
B0_0bec:	.db $b9 $36 $00
B0_0bef:		jsr $8c6d		; 20 6d 8c
B0_0bf2:	.db $99 $36 $00
B0_0bf5:		iny				; c8 
B0_0bf6:		inx				; e8 
B0_0bf7:		dec $00			; c6 00
B0_0bf9:		bne B0_0bec ; d0 f1

B0_0bfb:		bcc B0_0c06 ; 90 09

B0_0bfd:		lda #$99		; a9 99
B0_0bff:		sta $36			; 85 36
B0_0c01:		sta $37			; 85 37
B0_0c03:		sta $38			; 85 38
B0_0c05:		rts				; 60 


B0_0c06:		lda $38			; a5 38
B0_0c08:		cmp $3e			; c5 3e
B0_0c0a:		bcc B0_0c05 ; 90 f9

B0_0c0c:		ldx #$05		; a2 05
B0_0c0e:		lda $3e			; a5 3e
B0_0c10:		clc				; 18 
B0_0c11:		jsr $8c69		; 20 69 8c
B0_0c14:		bcc B0_0c18 ; 90 02

B0_0c16:		lda #$ff		; a9 ff
B0_0c18:		sta $3e			; 85 3e
B0_0c1a:		ldx #$01		; a2 01
B0_0c1c:		lda $35			; a5 35
B0_0c1e:		clc				; 18 
B0_0c1f:		jsr $8c69		; 20 69 8c
B0_0c22:		bcs B0_0c2e ; b0 0a

B0_0c24:		sta $35			; 85 35
B0_0c26:		lda #$4b		; a9 4b
B0_0c28:		jsr playSound		; 20 5f e2
B0_0c2b:		jsr $8e3c		; 20 3c 8e
B0_0c2e:		rts				; 60 


B0_0c2f:		sta $00			; 85 00
B0_0c31:		lda $84			; a5 84
B0_0c33:		and #$0f		; 29 0f
B0_0c35:		sta $01			; 85 01
B0_0c37:		lda $84			; a5 84
B0_0c39:		and #$f0		; 29 f0
B0_0c3b:		sta $02			; 85 02
B0_0c3d:		lda $01			; a5 01
B0_0c3f:		sec				; 38 
B0_0c40:		sbc $00			; e5 00
B0_0c42:		bcs B0_0c54 ; b0 10

B0_0c44:		sec				; 38 
B0_0c45:		sbc #$06		; e9 06
B0_0c47:		sta $01			; 85 01
B0_0c49:		lda $02			; a5 02
B0_0c4b:		sec				; 38 
B0_0c4c:		sbc #$10		; e9 10
B0_0c4e:		sta $02			; 85 02
B0_0c50:		lda $01			; a5 01
B0_0c52:		and #$0f		; 29 0f
B0_0c54:		ora $02			; 05 02
B0_0c56:		sta $84			; 85 84
B0_0c58:		rts				; 60 


B0_0c59:		lda $84			; a5 84
B0_0c5b:		clc				; 18 
B0_0c5c:		jsr $8c69		; 20 69 8c
B0_0c5f:		bcs B0_0c64 ; b0 03

B0_0c61:		sta $84			; 85 84
B0_0c63:		rts				; 60 


B0_0c64:		lda #$99		; a9 99
B0_0c66:		sta $84			; 85 84
B0_0c68:		rts				; 60 


B0_0c69:		stx $00			; 86 00
B0_0c6b:		ldx #$00		; a2 00
B0_0c6d:		sta $07			; 85 07
B0_0c6f:		and #$f0		; 29 f0
B0_0c71:		sta $06			; 85 06
B0_0c73:		eor $07			; 45 07
B0_0c75:		sta $07			; 85 07
B0_0c77:		lda $00, x		; b5 00
B0_0c79:		and #$0f		; 29 0f
B0_0c7b:		adc $07			; 65 07
B0_0c7d:		cmp #$0a		; c9 0a
B0_0c7f:		bcc B0_0c83 ; 90 02

B0_0c81:		adc #$05		; 69 05
B0_0c83:		adc $06			; 65 06
B0_0c85:		sta $06			; 85 06
B0_0c87:		lda $00, x		; b5 00
B0_0c89:		and #$f0		; 29 f0
B0_0c8b:		adc $06			; 65 06
B0_0c8d:		bcs B0_0c93 ; b0 04

B0_0c8f:		cmp #$a0		; c9 a0
B0_0c91:		bcc B0_0c96 ; 90 03

B0_0c93:		sbc #$a0		; e9 a0
B0_0c95:		sec				; 38 
B0_0c96:		rts				; 60 


B0_0c97:		lda #$20		; a9 20
B0_0c99:		sta $62			; 85 62
B0_0c9b:		lda #$77		; a9 77
B0_0c9d:		sta $61			; 85 61
B0_0c9f:		lda $84			; a5 84
B0_0ca1:		sta $08			; 85 08
B0_0ca3:		jmp $e8fc		; 4c fc e8


B0_0ca6:		lda #$20		; a9 20
B0_0ca8:		sta $62			; 85 62
B0_0caa:		lda #$67		; a9 67
B0_0cac:		sta $61			; 85 61
B0_0cae:		lda $3c			; a5 3c
B0_0cb0:		sta $08			; 85 08
B0_0cb2:		lda #$83		; a9 83
B0_0cb4:		sta $0a			; 85 0a
B0_0cb6:		lda #$84		; a9 84
B0_0cb8:		sta $0b			; 85 0b
B0_0cba:		jsr $8cd1		; 20 d1 8c
B0_0cbd:		lda #$20		; a9 20
B0_0cbf:		sta $62			; 85 62
B0_0cc1:		lda #$87		; a9 87
B0_0cc3:		sta $61			; 85 61
B0_0cc5:		lda $3d			; a5 3d
B0_0cc7:		sta $08			; 85 08
B0_0cc9:		lda #$93		; a9 93
B0_0ccb:		sta $0a			; 85 0a
B0_0ccd:		lda #$94		; a9 94
B0_0ccf:		sta $0b			; 85 0b
B0_0cd1:		jsr $e8b5		; 20 b5 e8
B0_0cd4:		lda #$08		; a9 08
B0_0cd6:		sta $09			; 85 09
B0_0cd8:		lda $08			; a5 08
B0_0cda:		beq B0_0d0d ; f0 31

B0_0cdc:		cmp #$08		; c9 08
B0_0cde:		bcc B0_0cf3 ; 90 13

B0_0ce0:		lda $0a			; a5 0a
B0_0ce2:		sta $0300, x	; 9d 00 03
B0_0ce5:		inx				; e8 
B0_0ce6:		lda $08			; a5 08
B0_0ce8:		sec				; 38 
B0_0ce9:		sbc #$08		; e9 08
B0_0ceb:		sta $08			; 85 08
B0_0ced:		dec $09			; c6 09
B0_0cef:		beq B0_0d18 ; f0 27

B0_0cf1:		bne B0_0cd8 ; d0 e5

B0_0cf3:		cmp #$05		; c9 05
B0_0cf5:		bcs B0_0d03 ; b0 0c

B0_0cf7:		lda $0b			; a5 0b
B0_0cf9:		sta $0300, x	; 9d 00 03
B0_0cfc:		inx				; e8 
B0_0cfd:		dec $09			; c6 09
B0_0cff:		beq B0_0d18 ; f0 17

B0_0d01:		bne B0_0d0d ; d0 0a

B0_0d03:		lda $0a			; a5 0a
B0_0d05:		sta $0300, x	; 9d 00 03
B0_0d08:		inx				; e8 
B0_0d09:		dec $09			; c6 09
B0_0d0b:		beq B0_0d18 ; f0 0b

B0_0d0d:		ldy $09			; a4 09
B0_0d0f:		lda #$85		; a9 85
B0_0d11:		sta $0300, x	; 9d 00 03
B0_0d14:		inx				; e8 
B0_0d15:		dey				; 88 
B0_0d16:		bne B0_0d11 ; d0 f9

B0_0d18:		lda #$ff		; a9 ff
B0_0d1a:		sta $0300, x	; 9d 00 03
B0_0d1d:		inx				; e8 
B0_0d1e:		stx $1d			; 86 1d
B0_0d20:		rts				; 60 


B0_0d21:		lda #$20		; a9 20
B0_0d23:		sta $62			; 85 62
B0_0d25:		lda #$52		; a9 52
B0_0d27:		sta $61			; 85 61
B0_0d29:		lda $7f			; a5 7f
B0_0d2b:		sta $08			; 85 08
B0_0d2d:		jsr $e8fc		; 20 fc e8
B0_0d30:		inc $61			; e6 61
B0_0d32:		inc $61			; e6 61
B0_0d34:		lda $7e			; a5 7e
B0_0d36:		sta $08			; 85 08
B0_0d38:		jmp $e8fc		; 4c fc e8


B0_0d3b:		lda #$20		; a9 20
B0_0d3d:		sta $62			; 85 62
B0_0d3f:		lda #$46		; a9 46
B0_0d41:		sta $61			; 85 61
B0_0d43:		lda $38			; a5 38
B0_0d45:		sta $08			; 85 08
B0_0d47:		jsr $e8fc		; 20 fc e8
B0_0d4a:		inc $61			; e6 61
B0_0d4c:		inc $61			; e6 61
B0_0d4e:		lda $37			; a5 37
B0_0d50:		sta $08			; 85 08
B0_0d52:		jsr $e8fc		; 20 fc e8
B0_0d55:		inc $61			; e6 61
B0_0d57:		inc $61			; e6 61
B0_0d59:		lda $36			; a5 36
B0_0d5b:		sta $08			; 85 08
B0_0d5d:		jmp $e8fc		; 4c fc e8


B0_0d60:		bit SCANLINE_IRQ_STATUS.w		; 2c 04 52
B0_0d63:		bvc B0_0d60 ; 50 fb

B0_0d65:		rts				; 60 


B0_0d66:		jsr $8d60		; 20 60 8d
B0_0d69:		jsr $8f6a		; 20 6a 8f
B0_0d6c:		lda #$0e		; a9 0e
B0_0d6e:		jsr func_1f_0ce9		; 20 e9 ec
B0_0d71:		jsr $8d3b		; 20 3b 8d
B0_0d74:		jsr $8ca6		; 20 a6 8c
B0_0d77:		jsr $8d21		; 20 21 8d
B0_0d7a:		jsr $8d96		; 20 96 8d
B0_0d7d:		jsr $8c97		; 20 97 8c
B0_0d80:		jsr $8e3c		; 20 3c 8e
B0_0d83:		jsr $8e4b		; 20 4b 8e
B0_0d86:		lda #$24		; a9 24
B0_0d88:		ldx $68			; a6 68
B0_0d8a:		bpl B0_0d8f ; 10 03

B0_0d8c:		sec				; 38 
B0_0d8d:		sbc #$04		; e9 04
B0_0d8f:		sta $0434		; 8d 34 04
B0_0d92:		sta $0435		; 8d 35 04
B0_0d95:		rts				; 60 


B0_0d96:		lda $32			; a5 32
B0_0d98:		asl a			; 0a
B0_0d99:		tay				; a8 
B0_0d9a:		lda $8dcf, y	; b9 cf 8d
B0_0d9d:		sta $08			; 85 08
B0_0d9f:		lda $8dd0, y	; b9 d0 8d
B0_0da2:		sta $09			; 85 09
B0_0da4:		lda #$20		; a9 20
B0_0da6:		sta $62			; 85 62
B0_0da8:		lda #$5b		; a9 5b
B0_0daa:		sta $61			; 85 61
B0_0dac:		jsr $e8b5		; 20 b5 e8
B0_0daf:		ldy #$00		; a0 00
B0_0db1:		lda ($08), y	; b1 08
B0_0db3:		sta $0300, x	; 9d 00 03
B0_0db6:		jsr $e8dd		; 20 dd e8
B0_0db9:		lda #$20		; a9 20
B0_0dbb:		sta $62			; 85 62
B0_0dbd:		lda #$5e		; a9 5e
B0_0dbf:		sta $61			; 85 61
B0_0dc1:		jsr $e8b5		; 20 b5 e8
B0_0dc4:		ldy $33			; a4 33
B0_0dc6:		iny				; c8 
B0_0dc7:		lda ($08), y	; b1 08
B0_0dc9:		sta $0300, x	; 9d 00 03
B0_0dcc:		jmp $e8dd		; 4c dd e8


B0_0dcf:		sbc $f28d		; ed8d f2
B0_0dd2:		sta $8df9		; 8d f9 8d
B0_0dd5:	.db $ff
B0_0dd6:		sta $8e05		; 8d 05 8e
B0_0dd9:		ora #$8e		; 09 8e
B0_0ddb:		asl $128e		; 0e 8e 12
B0_0dde:		stx $8e1a		; 8e 1a 8e
B0_0de1:		jsr $238e		; 20 8e 23
B0_0de4:		stx $8e2b		; 8e 2b 8e
B0_0de7:	.db $2f
B0_0de8:		stx $8e33		; 8e 33 8e
B0_0deb:		sec				; 38 
B0_0dec:		stx $4242		; 8e 42 42
B0_0def:	.db $43
B0_0df0:	.db $44
B0_0df1:		eor $43			; 45 43
B0_0df3:	.db $42
B0_0df4:	.db $43
B0_0df5:	.db $44
B0_0df6:		eor $46			; 45 46
B0_0df8:	.db $47
B0_0df9:	.db $44
B0_0dfa:		eor ($42, x)	; 41 42
B0_0dfc:	.db $43
B0_0dfd:	.db $44
B0_0dfe:		eor $45			; 45 45
B0_0e00:		bvc B0_0e53 ; 50 51

B0_0e02:	.db $52
B0_0e03:	.db $53
B0_0e04:	.db $54
B0_0e05:		lsr $50			; 46 50
B0_0e07:		eor ($52), y	; 51 52
B0_0e09:	.db $47
B0_0e0a:		bvc B0_0e5d ; 50 51

B0_0e0c:	.db $52
B0_0e0d:	.db $53
B0_0e0e:		eor $42			; 45 42
B0_0e10:	.db $43
B0_0e11:	.db $44
B0_0e12:		lsr $42			; 46 42
B0_0e14:	.db $43
B0_0e15:	.db $44
B0_0e16:		eor $46			; 45 46
B0_0e18:	.db $47
B0_0e19:		pha				; 48 
B0_0e1a:	.db $47
B0_0e1b:	.db $42
B0_0e1c:	.db $43
B0_0e1d:	.db $44
B0_0e1e:		eor $46			; 45 46
B0_0e20:	.db $47
B0_0e21:	.db $42
B0_0e22:	.db $43
B0_0e23:		pha				; 48 
B0_0e24:	.db $42
B0_0e25:	.db $43
B0_0e26:	.db $44
B0_0e27:		eor $46			; 45 46
B0_0e29:	.db $47
B0_0e2a:		pha				; 48 
B0_0e2b:		pha				; 48 
B0_0e2c:		;removed
	.db $50 $51

B0_0e2e:	.db $52
B0_0e2f:		eor #$42		; 49 42
B0_0e31:	.db $43
B0_0e32:	.db $44
B0_0e33:		lsr a			; 4a
B0_0e34:	.db $42
B0_0e35:	.db $43
B0_0e36:	.db $44
B0_0e37:		eor $50			; 45 50
B0_0e39:	.db $42
B0_0e3a:	.db $43
B0_0e3b:	.db $44
B0_0e3c:		lda #$20		; a9 20
B0_0e3e:		sta $62			; 85 62
B0_0e40:		lda #$97		; a9 97
B0_0e42:		sta $61			; 85 61
B0_0e44:		ldy $35			; a4 35
B0_0e46:		sty $08			; 84 08
B0_0e48:		jmp $e8fc		; 4c fc e8


B0_0e4b:		lda $3b			; a5 3b
B0_0e4d:		eor #$01		; 49 01
B0_0e4f:		tay				; a8 
B0_0e50:	.db $b9 $39 $00
B0_0e53:		bmi B0_0e5c ; 30 07

B0_0e55:		tay				; a8 
B0_0e56:		lda $8e5d, y	; b9 5d 8e
B0_0e59:		jsr func_1f_0ce9		; 20 e9 ec
B0_0e5c:		rts				; 60 


B0_0e5d:	.db $0f
B0_0e5e:		bpl B0_0e71 ; 10 11

B0_0e60:	.db $12
B0_0e61:		jsr $8e92		; 20 92 8e
B0_0e64:		ldy $3b			; a4 3b
B0_0e66:	.db $b9 $87 $00
B0_0e69:		asl a			; 0a
B0_0e6a:		tay				; a8 
B0_0e6b:		lda $8ec9, y	; b9 c9 8e
B0_0e6e:		sta $0419		; 8d 19 04
B0_0e71:		lda $8eca, y	; b9 ca 8e
B0_0e74:		sta $04a5		; 8d a5 04
B0_0e77:		ldy #$00		; a0 00
B0_0e79:		sty $046d		; 8c 6d 04
B0_0e7c:		iny				; c8 
B0_0e7d:		sty $04c1		; 8c c1 04
B0_0e80:		lda #$d8		; a9 d8
B0_0e82:		sta $0451		; 8d 51 04
B0_0e85:		lda #$24		; a9 24
B0_0e87:		ldx $68			; a6 68
B0_0e89:		bpl B0_0e8e ; 10 03

B0_0e8b:		sec				; 38 
B0_0e8c:		sbc #$04		; e9 04
B0_0e8e:		sta $0435		; 8d 35 04
B0_0e91:		rts				; 60 


B0_0e92:		ldy $3b			; a4 3b
B0_0e94:	.db $b9 $85 $00
B0_0e97:		asl a			; 0a
B0_0e98:		asl a			; 0a
B0_0e99:		clc				; 18 
B0_0e9a:	.db $79 $85 $00
B0_0e9d:		tay				; a8 
B0_0e9e:		lda $8ecf, y	; b9 cf 8e
B0_0ea1:		sta $0418		; 8d 18 04
B0_0ea4:		lda $8ed0, y	; b9 d0 8e
B0_0ea7:		sta $04a4		; 8d a4 04
B0_0eaa:		lda $8ed1, y	; b9 d1 8e
B0_0ead:		sta $0450		; 8d 50 04
B0_0eb0:		lda $8ed2, y	; b9 d2 8e
B0_0eb3:		ldx $68			; a6 68
B0_0eb5:		bpl B0_0eba ; 10 03

B0_0eb7:		sec				; 38 
B0_0eb8:		sbc #$04		; e9 04
B0_0eba:		sta $0434		; 8d 34 04
B0_0ebd:		lda $8ed3, y	; b9 d3 8e
B0_0ec0:		sta $046c		; 8d 6c 04
B0_0ec3:		lda #$01		; a9 01
B0_0ec5:		sta $04c0		; 8d c0 04
B0_0ec8:		rts				; 60 


B0_0ec9:		.db $00				; 00
B0_0eca:		.db $00				; 00
B0_0ecb:		cli				; 58 
B0_0ecc:		asl $0e5a		; 0e 5a 0e
B0_0ecf:		.db $00				; 00
B0_0ed0:		.db $00				; 00
B0_0ed1:		.db $00				; 00
B0_0ed2:		.db $00				; 00
B0_0ed3:		.db $00				; 00
B0_0ed4:		lsr $00			; 46 00
B0_0ed6:		bcc B0_0efc ; 90 24

B0_0ed8:		.db $00				; 00
B0_0ed9:	.db $42
B0_0eda:		.db $00				; 00
B0_0edb:		bcc B0_0f01 ; 90 24

B0_0edd:		.db $00				; 00
B0_0ede:		lsr $9000		; 4e 00 90
B0_0ee1:		bit $00			; 24 00
B0_0ee3:		bvc B0_0ee5 ; 50 00

B0_0ee5:		bcc B0_0f0b ; 90 24

B0_0ee7:		.db $00				; 00
B0_0ee8:	.db $52
B0_0ee9:	.db $02
B0_0eea:		;removed
	.db $90 $24

B0_0eec:	.db $03
B0_0eed:	.db $54
B0_0eee:	.db $02
B0_0eef:		bcc B0_0f15 ; 90 24

B0_0ef1:		.db $00				; 00
B0_0ef2:		lsr $9002		; 4e 02 90
B0_0ef5:		bit $00			; 24 00
B0_0ef7:		lsr $9000		; 4e 00 90
B0_0efa:		bit $00			; 24 00
B0_0efc:		lsr $00			; 46 00
B0_0efe:		bcc B0_0f24 ; 90 24

B0_0f00:		.db $00				; 00
B0_0f01:		bvc B0_0f03 ; 50 00

B0_0f03:		bcc B0_0f29 ; 90 24

B0_0f05:		.db $00				; 00
B0_0f06:		pla				; 68 
B0_0f07:		asl $2490		; 0e 90 24
B0_0f0a:		.db $00				; 00
B0_0f0b:		lda $b2			; a5 b2
B0_0f0d:		beq B0_0f35 ; f0 26

B0_0f0f:		dec $b2			; c6 b2
B0_0f11:		beq B0_0f19 ; f0 06

B0_0f13:		lda $b2			; a5 b2
B0_0f15:		and #$03		; 29 03
B0_0f17:		beq B0_0f1f ; f0 06

B0_0f19:		jsr $859e		; 20 9e 85
B0_0f1c:		jmp $8f4e		; 4c 4e 8f


B0_0f1f:		jsr $859e		; 20 9e 85
B0_0f22:		ldx $1d			; a6 1d
B0_0f24:		lda #$20		; a9 20
B0_0f26:		sta $02e7, x	; 9d e7 02
B0_0f29:		sta $02eb, x	; 9d eb 02
B0_0f2c:		sta $02ef, x	; 9d ef 02
B0_0f2f:		sta $02f3, x	; 9d f3 02
B0_0f32:		jmp $8f4e		; 4c 4e 8f


B0_0f35:		lda $ad			; a5 ad
B0_0f37:		beq B0_0f4e ; f0 15

B0_0f39:		lda $1a			; a5 1a
B0_0f3b:		and #$01		; 29 01
B0_0f3d:		beq B0_0f43 ; f0 04

B0_0f3f:		dec $ad			; c6 ad
B0_0f41:		beq B0_0f19 ; f0 d6

B0_0f43:		lda $ad			; a5 ad
B0_0f45:		and #$01		; 29 01
B0_0f47:		beq B0_0f4b ; f0 02

B0_0f49:		bne B0_0f19 ; d0 ce

B0_0f4b:		jsr $85a4		; 20 a4 85
B0_0f4e:		lda $1a			; a5 1a
B0_0f50:		and #$03		; 29 03
B0_0f52:		tay				; a8 
B0_0f53:		beq B0_0f61 ; f0 0c

B0_0f55:		dey				; 88 
B0_0f56:		beq B0_0f64 ; f0 0c

B0_0f58:		dey				; 88 
B0_0f59:		beq B0_0f67 ; f0 0c

B0_0f5b:		jsr $8e61		; 20 61 8e
B0_0f5e:		jmp $8c97		; 4c 97 8c


B0_0f61:		jmp $8ca6		; 4c a6 8c


B0_0f64:		jmp $8d21		; 4c 21 8d


B0_0f67:		jmp $8d3b		; 4c 3b 8d


B0_0f6a:		lda #$00		; a9 00
B0_0f6c:		tay				; a8 
B0_0f6d:		sta $5c00, y	; 99 00 5c
B0_0f70:		iny				; c8 
B0_0f71:		cpy #$c0		; c0 c0
B0_0f73:		bne B0_0f6d ; d0 f8

B0_0f75:		ldy #$00		; a0 00
B0_0f77:		sta $5fc0, y	; 99 c0 5f
B0_0f7a:		iny				; c8 
B0_0f7b:		cpy #$10		; c0 10
B0_0f7d:		bne B0_0f77 ; d0 f8

B0_0f7f:		rts				; 60 


B0_0f80:		jsr $907f		; 20 7f 90
B0_0f83:		lda #$00		; a9 00
B0_0f85:		sta $36			; 85 36
B0_0f87:		sta $37			; 85 37
B0_0f89:		sta $38			; 85 38
B0_0f8b:		ldy $2e			; a4 2e
B0_0f8d:		lda $8f9e, y	; b9 9e 8f
B0_0f90:		and #$0f		; 29 0f
B0_0f92:		sta $33			; 85 33
B0_0f94:		lda $8f9e, y	; b9 9e 8f
B0_0f97:		lsr a			; 4a
B0_0f98:		lsr a			; 4a
B0_0f99:		lsr a			; 4a
B0_0f9a:		lsr a			; 4a
B0_0f9b:		sta $32			; 85 32
B0_0f9d:		rts				; 60 


B0_0f9e:		.db $00				; 00
B0_0f9f:		bpl B0_0fb4 ; 10 13

B0_0fa1:		jsr $3021		; 20 21 30
B0_0fa4:		rti				; 40 


B0_0fa5:		bvc B0_1007 ; 50 60

B0_0fa7:		;removed
	.db $70 $75

B0_0fa9:	.db $80
B0_0faa:		;removed
	.db $90 $a0

B0_0fac:		;removed
	.db $b0 $c0

B0_0fae:		bne B0_0f90 ; d0 e0

B0_0fb0:		lda $32			; a5 32
B0_0fb2:		asl a			; 0a
B0_0fb3:		clc				; 18 
B0_0fb4:		adc $32			; 65 32
B0_0fb6:		tay				; a8 
B0_0fb7:		lda $8fd1, y	; b9 d1 8f
B0_0fba:		cmp $33			; c5 33
B0_0fbc:		bcs B0_0fbf ; b0 01

B0_0fbe:		iny				; c8 
B0_0fbf:		lda $8fd2, y	; b9 d2 8f
B0_0fc2:		cmp #$03		; c9 03
B0_0fc4:		beq B0_0fc9 ; f0 03

B0_0fc6:		sta $2e			; 85 2e
B0_0fc8:		rts				; 60 


B0_0fc9:		ldy $2f			; a4 2f
B0_0fcb:		beq B0_0fc6 ; f0 f9

B0_0fcd:		lda #$04		; a9 04
B0_0fcf:		bne B0_0fc6 ; d0 f5

B0_0fd1:		bpl B0_0fd3 ; 10 00

B0_0fd3:		.db $00				; 00
B0_0fd4:	.db $02
B0_0fd5:		ora ($02, x)	; 01 02
B0_0fd7:		bpl B0_0fdc ; 10 03

B0_0fd9:	.db $04
B0_0fda:		;removed
	.db $10 $05

B0_0fdc:		ora $10			; 05 10
B0_0fde:		asl $06			; 06 06
B0_0fe0:		bpl B0_0fe9 ; 10 07

B0_0fe2:	.db $07
B0_0fe3:		;removed
	.db $10 $08

B0_0fe5:		php				; 08 
B0_0fe6:	.db $04
B0_0fe7:		ora #$0a		; 09 0a
B0_0fe9:		;removed
	.db $10 $0b

B0_0feb:	.db $0b
B0_0fec:		bpl B0_0ffa ; 10 0c

B0_0fee:	.db $0c
B0_0fef:		bpl B0_0ffe ; 10 0d

B0_0ff1:		ora $0e10		; 0d 10 0e
B0_0ff4:		asl $0f10		; 0e 10 0f
B0_0ff7:	.db $0f
B0_0ff8:		bpl B0_100a ; 10 10

B0_0ffa:		bpl B0_100c ; 10 10

B0_0ffc:		ora ($11), y	; 11 11
B0_0ffe:		ldy #$00		; a0 00
B0_1000:		jsr $9031		; 20 31 90
B0_1003:		bcs B0_102e ; b0 29

B0_1005:		ldy #$02		; a0 02
B0_1007:		jsr $9031		; 20 31 90
B0_100a:		bcs B0_102b ; b0 1f

B0_100c:		ldy #$04		; a0 04
B0_100e:		jsr $9031		; 20 31 90
B0_1011:		bcs B0_1022 ; b0 0f

B0_1013:		ldy #$06		; a0 06
B0_1015:		jsr $9031		; 20 31 90
B0_1018:		bcs B0_1025 ; b0 0b

B0_101a:		ldy #$08		; a0 08
B0_101c:		jsr $9031		; 20 31 90
B0_101f:		bcs B0_1028 ; b0 07

B0_1021:		rts				; 60 


B0_1022:		ldy #$03		; a0 03
B0_1024:		rts				; 60 


B0_1025:		ldy #$04		; a0 04
B0_1027:		rts				; 60 


B0_1028:		ldy #$05		; a0 05
B0_102a:		rts				; 60 


B0_102b:		ldy #$02		; a0 02
B0_102d:		rts				; 60 


B0_102e:		ldy #$01		; a0 01
B0_1030:		rts				; 60 


B0_1031:		lda $904d, y	; b9 4d 90
B0_1034:		sta $08			; 85 08
B0_1036:		lda $904e, y	; b9 4e 90
B0_1039:		sta $09			; 85 09
B0_103b:		ldy #$00		; a0 00
B0_103d:		lda $07f8, y	; b9 f8 07
B0_1040:		cmp ($08), y	; d1 08
B0_1042:		bne B0_104b ; d0 07

B0_1044:		iny				; c8 
B0_1045:		cpy #$08		; c0 08
B0_1047:		bne B0_103d ; d0 f4

B0_1049:		sec				; 38 
B0_104a:		rts				; 60 


B0_104b:		clc				; 18 
B0_104c:		rts				; 60 


B0_104d:	.db $57
B0_104e:		;removed
	.db $90 $5f

B0_1050:		bcc B0_10b9 ; 90 67

B0_1052:		;removed
	.db $90 $6f

B0_1054:		bcc B0_10cd ; 90 77

B0_1056:		;removed
	.db $90 $57

B0_1058:	.db $54
B0_1059:	.db $5b
B0_105a:	.db $5f
B0_105b:		.db $00				; 00
B0_105c:	.db $5c
B0_105d:	.db $54
B0_105e:		.db $00				; 00
B0_105f:		bvc B0_10bb ; 50 5a

B0_1061:		;removed
	.db $50 $5c

B0_1063:		bvc B0_1065 ; 50 00

B0_1065:		.db $00				; 00
B0_1066:		.db $00				; 00
B0_1067:		lsr $645a, x	; 5e 5a 64
B0_106a:	.db $53
B0_106b:		bvc B0_106d ; 50 00

B0_106d:		.db $00				; 00
B0_106e:		.db $00				; 00
B0_106f:	.db $64
B0_1070:		adc ($50, x)	; 61 50
B0_1072:	.db $63
B0_1073:		bvc B0_1075 ; 50 00

B0_1075:		.db $00				; 00
B0_1076:		.db $00				; 00
B0_1077:		eor $64, x		; 55 64
B0_1079:		eor $5c58, y	; 59 58 5c
B0_107c:		lsr $5e63, x	; 5e 63 5e
B0_107f:		lda #$b0		; a9 b0
B0_1081:		sta $ff			; 85 ff
B0_1083:		jsr $90cd		; 20 cd 90
B0_1086:		jsr $90c0		; 20 c0 90
B0_1089:		lda #$02		; a9 02
B0_108b:		sta $3e			; 85 3e
B0_108d:		jsr $8ffe		; 20 fe 8f
B0_1090:		bcc B0_10b7 ; 90 25

B0_1092:		dey				; 88 
B0_1093:		beq B0_10bc ; f0 27

B0_1095:		dey				; 88 
B0_1096:		beq B0_10b2 ; f0 1a

B0_1098:		lda $3a			; a5 3a
B0_109a:		cmp #$ff		; c9 ff
B0_109c:		bne B0_10b7 ; d0 19

B0_109e:		dey				; 88 
B0_109f:		beq B0_10ac ; f0 0b

B0_10a1:		dey				; 88 
B0_10a2:		beq B0_10a8 ; f0 04

B0_10a4:		lda #$02		; a9 02
B0_10a6:		bne B0_10ae ; d0 06

B0_10a8:		lda #$01		; a9 01
B0_10aa:		bne B0_10ae ; d0 02

B0_10ac:		lda #$03		; a9 03
B0_10ae:		sta $3a			; 85 3a
B0_10b0:		bne B0_10b7 ; d0 05

B0_10b2:		lda #$01		; a9 01
B0_10b4:		sta $07f6		; 8d f6 07
B0_10b7:		lda #$02		; a9 02
B0_10b9:		sta $35			; 85 35
B0_10bb:		rts				; 60 


B0_10bc:		lda #$10		; a9 10
B0_10be:		bne B0_10b9 ; d0 f9

B0_10c0:		lda #$05		; a9 05
B0_10c2:		sta $84			; 85 84
B0_10c4:		lda #$40		; a9 40
B0_10c6:		sta $3c			; 85 3c
B0_10c8:		lda #$40		; a9 40
B0_10ca:		sta $3d			; 85 3d
B0_10cc:		rts				; 60 


B0_10cd:		lda #$40		; a9 40
B0_10cf:		sta $4a			; 85 4a
B0_10d1:		lda #$43		; a9 43
B0_10d3:		sta $4d			; 85 4d
B0_10d5:		rts				; 60 


B0_10d6:		lda #$00		; a9 00
B0_10d8:		sta $ab			; 85 ab
B0_10da:		sta $ac			; 85 ac
B0_10dc:		sta $06c9		; 8d c9 06
B0_10df:		sta $b3			; 85 b3
B0_10e1:		rts				; 60 


B0_10e2:		lda #$b0		; a9 b0
B0_10e4:		sta $ff			; 85 ff
B0_10e6:		jsr $e666		; 20 66 e6
B0_10e9:		jsr $90c8		; 20 c8 90
B0_10ec:		lda #$00		; a9 00
B0_10ee:		sta $0400		; 8d 00 04
B0_10f1:		sta $0418		; 8d 18 04
B0_10f4:		sta $0419		; 8d 19 04
B0_10f7:		sta $74			; 85 74
B0_10f9:		sta $75			; 85 75
B0_10fb:		sta $0565		; 8d 65 05
B0_10fe:		jsr $90d6		; 20 d6 90
B0_1101:		jsr $e862		; 20 62 e8
B0_1104:		jmp $9130		; 4c 30 91


B0_1107:		lda #$00		; a9 00
B0_1109:		sta $0520		; 8d 20 05
B0_110c:		sta $0537		; 8d 37 05
B0_110f:		jsr $90d6		; 20 d6 90
B0_1112:		jsr $e862		; 20 62 e8
B0_1115:		bcs B0_1130 ; b0 19

B0_1117:		lda $0107		; ad 07 01
B0_111a:		cmp #$5f		; c9 5f
B0_111c:		bne B0_1122 ; d0 04

B0_111e:		lda #$00		; a9 00
B0_1120:		sta $74			; 85 74
B0_1122:		lda #$b0		; a9 b0
B0_1124:		sta $ff			; 85 ff
B0_1126:		jsr $e666		; 20 66 e6
B0_1129:		lda #$00		; a9 00
B0_112b:		sta $75			; 85 75
B0_112d:		jsr $917f		; 20 7f 91
B0_1130:		jsr $90cd		; 20 cd 90
B0_1133:		lda #$b0		; a9 b0
B0_1135:		sta $ff			; 85 ff
B0_1137:		lda $0565		; ad 65 05
B0_113a:		and #$7f		; 29 7f
B0_113c:		sta $0565		; 8d 65 05
B0_113f:		lda #$00		; a9 00
B0_1141:		sta $78			; 85 78
B0_1143:		sta $80			; 85 80
B0_1145:		sta $b0			; 85 b0
B0_1147:		sta $b2			; 85 b2
B0_1149:		sta $ad			; 85 ad
B0_114b:		sta $2c			; 85 2c
B0_114d:		sta $c0			; 85 c0
B0_114f:		sta $c2			; 85 c2
B0_1151:		sta $c8			; 85 c8
B0_1153:		sta $c1			; 85 c1
B0_1155:		sta $c4			; 85 c4
B0_1157:		sta $c5			; 85 c5
B0_1159:		sta $cc			; 85 cc
B0_115b:		sta $cd			; 85 cd
B0_115d:		sta $ba			; 85 ba
B0_115f:		jsr func_1f_07f7		; 20 f7 e7
B0_1162:		lda #$00		; a9 00
B0_1164:		sta $0417		; 8d 17 04
B0_1167:		sta $041a		; 8d 1a 04
B0_116a:		sta $041b		; 8d 1b 04
B0_116d:		sta $048a		; 8d 8a 04
B0_1170:		sta $048b		; 8d 8b 04
B0_1173:		ldx #$00		; a2 00
B0_1175:		txa				; 8a 
B0_1176:		sta $0780, x	; 9d 80 07
B0_1179:		inx				; e8 
B0_117a:		cpx #$43		; e0 43
B0_117c:		bne B0_1176 ; d0 f8

B0_117e:		rts				; 60 


B0_117f:		lda #$00		; a9 00
B0_1181:		tax				; aa 
B0_1182:		sta $06e0, x	; 9d e0 06
B0_1185:		inx				; e8 
B0_1186:		cpx #$90		; e0 90
B0_1188:		bne B0_1182 ; d0 f8

B0_118a:		rts				; 60 


B0_118b:		lda #$b0		; a9 b0
B0_118d:		sta $ff			; 85 ff
B0_118f:		jsr $e666		; 20 66 e6
B0_1192:		jsr $90cd		; 20 cd 90
B0_1195:		jsr $e5ca		; 20 ca e5
B0_1198:		lda $054e		; ad 4e 05
B0_119b:		pha				; 48 
B0_119c:		lda $bd			; a5 bd
B0_119e:		pha				; 48 
B0_119f:		lda $be			; a5 be
B0_11a1:		pha				; 48 
B0_11a2:		jsr $e828		; 20 28 e8
B0_11a5:		pla				; 68 
B0_11a6:		sta $be			; 85 be
B0_11a8:		pla				; 68 
B0_11a9:		sta $bd			; 85 bd
B0_11ab:		pla				; 68 
B0_11ac:		sta $054e		; 8d 4e 05
B0_11af:		jmp $90c0		; 4c c0 90


B0_11b2:		lda #$00		; a9 00
B0_11b4:		sta $80			; 85 80
B0_11b6:		sta $0470		; 8d 70 04
B0_11b9:		dec $30			; c6 30
B0_11bb:		bne B0_11cd ; d0 10

B0_11bd:		lda $9f			; a5 9f
B0_11bf:		sta $2a			; 85 2a
B0_11c1:		lda $0565		; ad 65 05
B0_11c4:		and #$7f		; 29 7f
B0_11c6:		sta $0565		; 8d 65 05
B0_11c9:		lda #$00		; a9 00
B0_11cb:		beq B0_11d1 ; f0 04

B0_11cd:		lda $1a			; a5 1a
B0_11cf:		and #$03		; 29 03
B0_11d1:		sta $0454		; 8d 54 04
B0_11d4:		rts				; 60 


B0_11d5:		jsr $91dd		; 20 dd 91
B0_11d8:		lda #$00		; a9 00
B0_11da:		sta $2a			; 85 2a
B0_11dc:		rts				; 60 


B0_11dd:		jsr $e795		; 20 95 e7
B0_11e0:		lda $32			; a5 32
B0_11e2:		cmp #$03		; c9 03
B0_11e4:		beq B0_1209 ; f0 23

B0_11e6:		cmp #$0a		; c9 0a
B0_11e8:		beq B0_1201 ; f0 17

B0_11ea:		cmp #$0e		; c9 0e
B0_11ec:		beq B0_11fb ; f0 0d

B0_11ee:		jsr $90c0		; 20 c0 90
B0_11f1:		lda #$00		; a9 00
B0_11f3:		sta $0565		; 8d 65 05
B0_11f6:		sta $75			; 85 75
B0_11f8:		sta $74			; 85 74
B0_11fa:		rts				; 60 


B0_11fb:		lda $33			; a5 33
B0_11fd:		beq B0_11ee ; f0 ef

B0_11ff:		bne B0_120f ; d0 0e

B0_1201:		lda $33			; a5 33
B0_1203:		cmp #$04		; c9 04
B0_1205:		beq B0_120f ; f0 08

B0_1207:		bne B0_11ee ; d0 e5

B0_1209:		lda $33			; a5 33
B0_120b:		cmp #$03		; c9 03
B0_120d:		bne B0_11ee ; d0 df

B0_120f:		jsr $90c8		; 20 c8 90
B0_1212:		jmp $91f1		; 4c f1 91


B0_1215:		ldy #$00		; a0 00
B0_1217:		lda $9244, y	; b9 44 92
B0_121a:		cmp #$ff		; c9 ff
B0_121c:		beq B0_1230 ; f0 12

B0_121e:		cmp $32			; c5 32
B0_1220:		bne B0_123e ; d0 1c

B0_1222:		lda $33			; a5 33
B0_1224:		cmp $9245, y	; d9 45 92
B0_1227:		bne B0_123e ; d0 15

B0_1229:		lda $34			; a5 34
B0_122b:		cmp $9246, y	; d9 46 92
B0_122e:		bne B0_123e ; d0 0e

B0_1230:		lda $9247, y	; b9 47 92
B0_1233:		sta $a4			; 85 a4
B0_1235:		lda #$00		; a9 00
B0_1237:		sta $6b			; 85 6b
B0_1239:		lda #$17		; a9 17
B0_123b:		sta $2a			; 85 2a
B0_123d:		rts				; 60 


B0_123e:		iny				; c8 
B0_123f:		iny				; c8 
B0_1240:		iny				; c8 
B0_1241:		iny				; c8 
B0_1242:		bne B0_1217 ; d0 d3

B0_1244:		.db $00				; 00
B0_1245:		.db $00				; 00
B0_1246:		.db $00				; 00
B0_1247:		.db $00				; 00
B0_1248:		ora ($02, x)	; 01 02
B0_124a:	.db $02
B0_124b:		ora ($01, x)	; 01 01
B0_124d:		ora $00			; 05 00
B0_124f:	.db $02
B0_1250:	.db $02
B0_1251:	.db $04
B0_1252:		.db $00				; 00
B0_1253:	.db $03
B0_1254:	.db $03
B0_1255:	.db $04
B0_1256:		ora ($04, x)	; 01 04
B0_1258:	.db $04
B0_1259:	.db $02
B0_125a:	.db $02
B0_125b:		ora $05			; 05 05
B0_125d:	.db $03
B0_125e:		.db $00				; 00
B0_125f:		asl $06			; 06 06
B0_1261:	.db $02
B0_1262:		.db $00				; 00
B0_1263:	.db $07
B0_1264:	.db $07
B0_1265:	.db $04
B0_1266:		ora ($08, x)	; 01 08
B0_1268:	.db $07
B0_1269:		asl $00			; 06 00
B0_126b:		ora #$08		; 09 08
B0_126d:	.db $04
B0_126e:		.db $00				; 00
B0_126f:		asl a			; 0a
B0_1270:		ora #$01		; 09 01
B0_1272:	.db $02
B0_1273:	.db $0b
B0_1274:		asl a			; 0a
B0_1275:		asl $02			; 06 02
B0_1277:	.db $0c
B0_1278:	.db $0b
B0_1279:	.db $02
B0_127a:		.db $00				; 00
B0_127b:		ora $020c		; 0d 0c 02
B0_127e:		.db $00				; 00
B0_127f:		asl $030d		; 0e 0d 03
B0_1282:		ora ($0f, x)	; 01 0f
B0_1284:	.db $ff
B0_1285:		.db $00				; 00
B0_1286:		.db $00				; 00
B0_1287:		.db $00				; 00
B0_1288:		lda $6b			; a5 6b
B0_128a:		jsr jumpTablePreserveY		; 20 6d e8
B0_128d:		sta $fa92, y	; 99 92 fa
B0_1290:	.db $92
B0_1291:		adc $93			; 65 93
B0_1293:	.db $0c
B0_1294:		sty $2c, x		; 94 2c
B0_1296:		sty $42, x		; 94 42
B0_1298:		sty $20, x		; 94 20
B0_129a:		ldx $8c			; a6 8c
B0_129c:		jsr func_1f_07f7		; 20 f7 e7
B0_129f:		lda #$00		; a9 00
B0_12a1:		sta $0417		; 8d 17 04
B0_12a4:		ldy #$00		; a0 00
B0_12a6:		lda $92d5, y	; b9 d5 92
B0_12a9:		cmp #$ff		; c9 ff
B0_12ab:		beq B0_12b5 ; f0 08

B0_12ad:		cmp $32			; c5 32
B0_12af:		beq B0_12b7 ; f0 06

B0_12b1:		iny				; c8 
B0_12b2:		iny				; c8 
B0_12b3:		bne B0_12a6 ; d0 f1

B0_12b5:		ldy #$00		; a0 00
B0_12b7:		lda $92d6, y	; b9 d6 92
B0_12ba:		asl a			; 0a
B0_12bb:		asl a			; 0a
B0_12bc:		tay				; a8 
B0_12bd:		lda $92e2, y	; b9 e2 92
B0_12c0:		sta $04a8		; 8d a8 04
B0_12c3:		sty $c6			; 84 c6
B0_12c5:		jsr $e5ce		; 20 ce e5
B0_12c8:		lda #$00		; a9 00
B0_12ca:		sta $0470		; 8d 70 04
B0_12cd:		lda #$00		; a9 00
B0_12cf:		jsr $ef57		; 20 57 ef
B0_12d2:		inc $6b			; e6 6b
B0_12d4:		rts				; 60 


B0_12d5:		ora ($00, x)	; 01 00
B0_12d7:	.db $02
B0_12d8:		ora ($07, x)	; 01 07
B0_12da:	.db $02
B0_12db:	.db $03
B0_12dc:	.db $03
B0_12dd:		asl a			; 0a
B0_12de:	.db $04
B0_12df:		asl $ff05		; 0e 05 ff
B0_12e2:		ora ($04, x)	; 01 04
B0_12e4:	.db $1e $00 $00
B0_12e7:		php				; 08 
B0_12e8:		.db $00				; 00
B0_12e9:		.db $00				; 00
B0_12ea:		ora ($08, x)	; 01 08
B0_12ec:		.db $00				; 00
B0_12ed:		.db $00				; 00
B0_12ee:		.db $00				; 00
B0_12ef:	.db $04
B0_12f0:	.db $1f
B0_12f1:		ora ($00, x)	; 01 00
B0_12f3:	.db $04
B0_12f4:	.db $1f
B0_12f5:		ora ($01, x)	; 01 01
B0_12f7:	.db $04
B0_12f8:	.db $1f
B0_12f9:		ora ($ad, x)	; 01 ad
B0_12fb:		sec				; 38 
B0_12fc:	.db $04
B0_12fd:		ldy $04a8		; ac a8 04
B0_1300:		beq B0_1308 ; f0 06

B0_1302:		cmp #$18		; c9 18
B0_1304:		bcs B0_1315 ; b0 0f

B0_1306:		bcc B0_130c ; 90 04

B0_1308:		cmp #$e8		; c9 e8
B0_130a:		bcc B0_1315 ; 90 09

B0_130c:		lda $32			; a5 32
B0_130e:		cmp #$01		; c9 01
B0_1310:		beq B0_131b ; f0 09

B0_1312:		inc $6b			; e6 6b
B0_1314:		rts				; 60 


B0_1315:		jsr $9331		; 20 31 93
B0_1318:		jmp $ef73		; 4c 73 ef


B0_131b:		lda #$11		; a9 11
B0_131d:		sta $2a			; 85 2a
B0_131f:		lda #$00		; a9 00
B0_1321:		sta $07ec		; 8d ec 07
B0_1324:		sta $07f3		; 8d f3 07
B0_1327:		lda #$00		; a9 00
B0_1329:		sta $07ed		; 8d ed 07
B0_132c:		lda #$63		; a9 63
B0_132e:		jmp playSound		; 4c 5f e2


B0_1331:		lda $1a			; a5 1a
B0_1333:		and #$0f		; 29 0f
B0_1335:		bne B0_133c ; d0 05

B0_1337:		lda #$09		; a9 09
B0_1339:		jsr playSound		; 20 5f e2
B0_133c:		lda $04a8		; ad a8 04
B0_133f:		beq B0_1353 ; f0 12

B0_1341:		lda $04c4		; ad c4 04
B0_1344:		sec				; 38 
B0_1345:		sbc #$c0		; e9 c0
B0_1347:		sta $04c4		; 8d c4 04
B0_134a:		lda $0438		; ad 38 04
B0_134d:		sbc #$00		; e9 00
B0_134f:		sta $0438		; 8d 38 04
B0_1352:		rts				; 60 


B0_1353:		lda $04c4		; ad c4 04
B0_1356:		clc				; 18 
B0_1357:		adc #$c0		; 69 c0
B0_1359:		sta $04c4		; 8d c4 04
B0_135c:		lda $0438		; ad 38 04
B0_135f:		adc #$00		; 69 00
B0_1361:		sta $0438		; 8d 38 04
B0_1364:		rts				; 60 


B0_1365:		inc $6b			; e6 6b
B0_1367:		lda #$0c		; a9 0c
B0_1369:		jsr playSound		; 20 5f e2
B0_136c:		lda #$3c		; a9 3c
B0_136e:		sta $30			; 85 30
B0_1370:		lda #$0c		; a9 0c
B0_1372:		ldy #$00		; a0 00
B0_1374:		ldx #$13		; a2 13
B0_1376:		jsr $ef5c		; 20 5c ef
B0_1379:		lda #$00		; a9 00
B0_137b:		sta $0400, x	; 9d 00 04
B0_137e:		sta $0454, x	; 9d 54 04
B0_1381:		lda $041c		; ad 1c 04
B0_1384:		adc #$08		; 69 08
B0_1386:		and #$f0		; 29 f0
B0_1388:		sta $041c, x	; 9d 1c 04
B0_138b:		lda $04a8		; ad a8 04
B0_138e:		asl a			; 0a
B0_138f:		tay				; a8 
B0_1390:		lda $9408, y	; b9 08 94
B0_1393:		sta $0438, x	; 9d 38 04
B0_1396:		lda $9409, y	; b9 09 94
B0_1399:		sta $04a8, x	; 9d a8 04
B0_139c:		lda $32			; a5 32
B0_139e:		cmp #$01		; c9 01
B0_13a0:		beq B0_13f8 ; f0 56

B0_13a2:		lda #$00		; a9 00
B0_13a4:		sta $62			; 85 62
B0_13a6:		ldy $054e		; ac 4e 05
B0_13a9:		lda $041c		; ad 1c 04
B0_13ac:		sec				; 38 
B0_13ad:		sbc $9404, y	; f9 04 94
B0_13b0:		asl a			; 0a
B0_13b1:		rol $62			; 26 62
B0_13b3:		asl a			; 0a
B0_13b4:		rol $62			; 26 62
B0_13b6:		and #$e0		; 29 e0
B0_13b8:		sta $61			; 85 61
B0_13ba:		ldy $04a8		; ac a8 04
B0_13bd:		lda $9402, y	; b9 02 94
B0_13c0:		clc				; 18 
B0_13c1:		adc $61			; 65 61
B0_13c3:		sta $61			; 85 61
B0_13c5:		lda $75			; a5 75
B0_13c7:		and #$01		; 29 01
B0_13c9:		sta $00			; 85 00
B0_13cb:		lda $65			; a5 65
B0_13cd:		bne B0_13d3 ; d0 04

B0_13cf:		ldx #$24		; a2 24
B0_13d1:		bne B0_13d5 ; d0 02

B0_13d3:		ldx #$20		; a2 20
B0_13d5:		lda $57			; a5 57
B0_13d7:		and #$01		; 29 01
B0_13d9:		eor $00			; 45 00
B0_13db:		beq B0_13e1 ; f0 04

B0_13dd:		txa				; 8a 
B0_13de:		eor #$04		; 49 04
B0_13e0:		tax				; aa 
B0_13e1:		txa				; 8a 
B0_13e2:		clc				; 18 
B0_13e3:		adc $62			; 65 62
B0_13e5:		sta $62			; 85 62
B0_13e7:		jsr $e8af		; 20 af e8
B0_13ea:		ldy #$06		; a0 06
B0_13ec:		lda #$00		; a9 00
B0_13ee:		sta $0300, x	; 9d 00 03
B0_13f1:		inx				; e8 
B0_13f2:		dey				; 88 
B0_13f3:		bne B0_13ee ; d0 f9

B0_13f5:		jmp $e8de		; 4c de e8


B0_13f8:		lda #$2a		; a9 2a
B0_13fa:		sta $62			; 85 62
B0_13fc:		lda #$41		; a9 41
B0_13fe:		sta $61			; 85 61
B0_1400:		bne B0_13e7 ; d0 e5

B0_1402:		asl $2001, x	; 1e 01 20
B0_1405:		jsr $2024		; 20 24 20
B0_1408:	.db $f4
B0_1409:		.db $00				; 00
B0_140a:	.db $0c
B0_140b:		ora ($c6, x)	; 01 c6
B0_140d:		;removed
	.db $30 $d0

B0_140f:	.db $0c
B0_1410:		lda #$00		; a9 00
B0_1412:		jsr $ef57		; 20 57 ef
B0_1415:		lda #$14		; a9 14
B0_1417:		sta $30			; 85 30
B0_1419:		inc $6b			; e6 6b
B0_141b:		rts				; 60 


B0_141c:		ldx #$13		; a2 13
B0_141e:		jsr $ef75		; 20 75 ef
B0_1421:		lda $0593, x	; bd 93 05
B0_1424:		bne B0_141b ; d0 f5

B0_1426:		lda #$80		; a9 80
B0_1428:		sta $057c, x	; 9d 7c 05
B0_142b:		rts				; 60 


B0_142c:		dec $30			; c6 30
B0_142e:		beq B0_1436 ; f0 06

B0_1430:		jsr $9331		; 20 31 93
B0_1433:		jmp $ef73		; 4c 73 ef


B0_1436:		lda #$00		; a9 00
B0_1438:		sta $0400		; 8d 00 04
B0_143b:		lda #$10		; a9 10
B0_143d:		sta $30			; 85 30
B0_143f:		inc $6b			; e6 6b
B0_1441:		rts				; 60 


B0_1442:		dec $30			; c6 30
B0_1444:		bne B0_1441 ; d0 fb

B0_1446:		lda #$00		; a9 00
B0_1448:		sta $0400		; 8d 00 04
B0_144b:		sta $0418		; 8d 18 04
B0_144e:		sta $0419		; 8d 19 04
B0_1451:		ldy $c6			; a4 c6
B0_1453:		lda $92e3, y	; b9 e3 92
B0_1456:		sta $18			; 85 18
B0_1458:		lda $92e4, y	; b9 e4 92
B0_145b:		sta $2a			; 85 2a
B0_145d:		lda $33			; a5 33
B0_145f:		clc				; 18 
B0_1460:		adc $92e5, y	; 79 e5 92
B0_1463:		sta $33			; 85 33
B0_1465:		lda #$00		; a9 00
B0_1467:		sta $19			; 85 19
B0_1469:		rts				; 60 


B0_146a:		lda $6b			; a5 6b
B0_146c:		jsr jumpTablePreserveY		; 20 6d e8
B0_146f:		ldy $bb94		; ac 94 bb
B0_1472:		sty $cf, x		; 94 cf
B0_1474:		sty $39, x		; 94 39
B0_1476:		sta $9b, x		; 95 9b
B0_1478:		sta $e8, x		; 95 e8
B0_147a:		sta $25, x		; 95 25
B0_147c:		stx $60, y		; 96 60
B0_147e:		stx $71, y		; 96 71
B0_1480:		stx $98, y		; 96 98
B0_1482:		sta $e5, x		; 95 e5
B0_1484:		sta $22, x		; 95 22
B0_1486:		stx $60, y		; 96 60
B0_1488:		stx $71, y		; 96 71
B0_148a:		stx $a5, y		; 96 a5
B0_148c:	.db $6b
B0_148d:		jsr jumpTablePreserveY		; 20 6d e8
B0_1490:		ldy $bb94		; ac 94 bb
B0_1493:		sty $cf, x		; 94 cf
B0_1495:		sty $1b, x		; 94 1b
B0_1497:		sta $9b, x		; 95 9b
B0_1499:		sta $e8, x		; 95 e8
B0_149b:		sta $25, x		; 95 25
B0_149d:		stx $82, y		; 96 82
B0_149f:		stx $9f, y		; 96 9f
B0_14a1:		stx $98, y		; 96 98
B0_14a3:		sta $e5, x		; 95 e5
B0_14a5:		sta $22, x		; 95 22
B0_14a7:		stx $92, y		; 96 92
B0_14a9:		stx $9f, y		; 96 9f
B0_14ab:		stx $a9, y		; 96 a9
B0_14ad:		lsr $20			; 46 20
B0_14af:	.db $5f
B0_14b0:	.db $e2
B0_14b1:		jsr $e5ce		; 20 ce e5
B0_14b4:		lda #$3c		; a9 3c
B0_14b6:		sta $30			; 85 30
B0_14b8:		inc $6b			; e6 6b
B0_14ba:		rts				; 60 


B0_14bb:		dec $30			; c6 30
B0_14bd:		beq B0_14c7 ; f0 08

B0_14bf:		lda $1a			; a5 1a
B0_14c1:		and #$03		; 29 03
B0_14c3:		sta $0454		; 8d 54 04
B0_14c6:		rts				; 60 


B0_14c7:		lda #$00		; a9 00
B0_14c9:		sta $0454		; 8d 54 04
B0_14cc:		inc $6b			; e6 6b
B0_14ce:		rts				; 60 


B0_14cf:		lda #$4c		; a9 4c
B0_14d1:		sta $30			; 85 30
B0_14d3:		lda $0438		; ad 38 04
B0_14d6:		sta $05d4		; 8d d4 05
B0_14d9:		lda #$00		; a9 00
B0_14db:		sta $0505		; 8d 05 05
B0_14de:		sta $051c		; 8d 1c 05
B0_14e1:		sta $0602		; 8d 02 06
B0_14e4:		lda #$10		; a9 10
B0_14e6:		sta $05eb		; 8d eb 05
B0_14e9:		lda #$01		; a9 01
B0_14eb:		sta $0630		; 8d 30 06
B0_14ee:		inc $6b			; e6 6b
B0_14f0:		rts				; 60 


B0_14f1:		lda $aa			; a5 aa
B0_14f3:		cmp #$16		; c9 16
B0_14f5:		beq B0_1509 ; f0 12

B0_14f7:		lda $c2			; a5 c2
B0_14f9:		bne B0_1509 ; d0 0e

B0_14fb:		lda $041c		; ad 1c 04
B0_14fe:		sec				; 38 
B0_14ff:		sbc #$4a		; e9 4a
B0_1501:		bmi B0_1509 ; 30 06

B0_1503:		cmp #$8e		; c9 8e
B0_1505:		bcs B0_1509 ; b0 02

B0_1507:		clc				; 18 
B0_1508:		rts				; 60 


B0_1509:		sec				; 38 
B0_150a:		rts				; 60 


B0_150b:		lda $041c		; ad 1c 04
B0_150e:		sec				; 38 
B0_150f:		sbc #$4e		; e9 4e
B0_1511:		bmi B0_1519 ; 30 06

B0_1513:		cmp #$8a		; c9 8a
B0_1515:		bcs B0_1519 ; b0 02

B0_1517:		clc				; 18 
B0_1518:		rts				; 60 


B0_1519:		sec				; 38 
B0_151a:		rts				; 60 


B0_151b:		jsr $94f1		; 20 f1 94
B0_151e:		bcs B0_1534 ; b0 14

B0_1520:		lda $041c		; ad 1c 04
B0_1523:		sec				; 38 
B0_1524:		sbc #$18		; e9 18
B0_1526:		sta $0619		; 8d 19 06
B0_1529:		tay				; a8 
B0_152a:		ldx #$2e		; a2 2e
B0_152c:		lda #$09		; a9 09
B0_152e:		jsr func_1f_05bf		; 20 bf e5
B0_1531:		inc $6b			; e6 6b
B0_1533:		rts				; 60 


B0_1534:		lda #$09		; a9 09
B0_1536:		sta $6b			; 85 6b
B0_1538:		rts				; 60 


B0_1539:		jsr $950b		; 20 0b 95
B0_153c:		bcs B0_1550 ; b0 12

B0_153e:		lda #$0b		; a9 0b
B0_1540:		sta $3f			; 85 3f
B0_1542:		lda $041c		; ad 1c 04
B0_1545:		sec				; 38 
B0_1546:		sbc #$0c		; e9 0c
B0_1548:		sta $0619		; 8d 19 06
B0_154b:		sta $7c			; 85 7c
B0_154d:		inc $6b			; e6 6b
B0_154f:		rts				; 60 


B0_1550:		lda #$09		; a9 09
B0_1552:		sta $6b			; 85 6b
B0_1554:		rts				; 60 


B0_1555:		lda #$00		; a9 00
B0_1557:		sta $0470		; 8d 70 04
B0_155a:		lda $0505		; ad 05 05
B0_155d:		bmi B0_1589 ; 30 2a

B0_155f:		lda $0630		; ad 30 06
B0_1562:		beq B0_157a ; f0 16

B0_1564:		lda $05d4		; ad d4 05
B0_1567:		sec				; 38 
B0_1568:		sbc $0505		; ed05 05
B0_156b:		bcc B0_1573 ; 90 06

B0_156d:		cmp #$08		; c9 08
B0_156f:		bcc B0_1573 ; 90 02

B0_1571:		bcs B0_158c ; b0 19

B0_1573:		lda #$80		; a9 80
B0_1575:		sta $0470		; 8d 70 04
B0_1578:		bne B0_158f ; d0 15

B0_157a:		lda $05d4		; ad d4 05
B0_157d:		clc				; 18 
B0_157e:		adc $0505		; 6d 05 05
B0_1581:		bcs B0_1573 ; b0 f0

B0_1583:		cmp #$f8		; c9 f8
B0_1585:		bcs B0_1573 ; b0 ec

B0_1587:		bcc B0_158c ; 90 03

B0_1589:		lda $05d4		; ad d4 05
B0_158c:		sta $0438		; 8d 38 04
B0_158f:		lda $0630		; ad 30 06
B0_1592:		eor #$01		; 49 01
B0_1594:		sta $0630		; 8d 30 06
B0_1597:		rts				; 60 


B0_1598:		jsr $9555		; 20 55 95
B0_159b:		dec $30			; c6 30
B0_159d:		beq B0_15d8 ; f0 39

B0_159f:		lda $051c		; ad 1c 05
B0_15a2:		clc				; 18 
B0_15a3:		adc $05eb		; 6d eb 05
B0_15a6:		sta $051c		; 8d 1c 05
B0_15a9:		lda $0505		; ad 05 05
B0_15ac:		adc $0602		; 6d 02 06
B0_15af:		sta $0505		; 8d 05 05
B0_15b2:		cmp #$08		; c9 08
B0_15b4:		bcs B0_15b7 ; b0 01

B0_15b6:		rts				; 60 


B0_15b7:		lda $05eb		; ad eb 05
B0_15ba:		clc				; 18 
B0_15bb:		adc #$10		; 69 10
B0_15bd:		sta $05eb		; 8d eb 05
B0_15c0:		lda $0602		; ad 02 06
B0_15c3:		adc #$00		; 69 00
B0_15c5:		sta $0602		; 8d 02 06
B0_15c8:		cmp #$08		; c9 08
B0_15ca:		bcs B0_15cd ; b0 01

B0_15cc:		rts				; 60 


B0_15cd:		lda #$08		; a9 08
B0_15cf:		sta $0602		; 8d 02 06
B0_15d2:		lda #$00		; a9 00
B0_15d4:		sta $05eb		; 8d eb 05
B0_15d7:		rts				; 60 


B0_15d8:		lda #$80		; a9 80
B0_15da:		sta $0470		; 8d 70 04
B0_15dd:		lda #$00		; a9 00
B0_15df:		sta $0413		; 8d 13 04
B0_15e2:		inc $6b			; e6 6b
B0_15e4:		rts				; 60 


B0_15e5:		jsr $9555		; 20 55 95
B0_15e8:		jsr $e677		; 20 77 e6
B0_15eb:		lda $0400		; ad 00 04
B0_15ee:		cmp #$48		; c9 48
B0_15f0:		bne B0_15f7 ; d0 05

B0_15f2:		lda #$04		; a9 04
B0_15f4:		sta $0400		; 8d 00 04
B0_15f7:		lda $3b			; a5 3b
B0_15f9:		eor #$01		; 49 01
B0_15fb:		sta $3b			; 85 3b
B0_15fd:		tay				; a8 
B0_15fe:	.db $b9 $39 $00
B0_1601:		sta $054e		; 8d 4e 05
B0_1604:		jsr $8e4b		; 20 4b 8e
B0_1607:		jsr $8e61		; 20 61 8e
B0_160a:		jsr $e61e		; 20 1e e6
B0_160d:		jsr $8001		; 20 01 80
B0_1610:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B0_1613:		lda $054e		; ad 4e 05
B0_1616:		asl a			; 0a
B0_1617:		sta $048c		; 8d 8c 04
B0_161a:		lda #$00		; a9 00
B0_161c:		sta $0470		; 8d 70 04
B0_161f:		inc $6b			; e6 6b
B0_1621:		rts				; 60 


B0_1622:		jsr $9555		; 20 55 95
B0_1625:		lda $051c		; ad 1c 05
B0_1628:		sec				; 38 
B0_1629:		sbc $05eb		; edeb 05
B0_162c:		sta $051c		; 8d 1c 05
B0_162f:		lda $0505		; ad 05 05
B0_1632:		sbc $0602		; ed02 06
B0_1635:		sta $0505		; 8d 05 05
B0_1638:		cmp #$f0		; c9 f0
B0_163a:		bcs B0_165d ; b0 21

B0_163c:		cmp #$08		; c9 08
B0_163e:		bcs B0_164b ; b0 0b

B0_1640:		lda #$10		; a9 10
B0_1642:		sta $05eb		; 8d eb 05
B0_1645:		lda #$00		; a9 00
B0_1647:		sta $0602		; 8d 02 06
B0_164a:		rts				; 60 


B0_164b:		lda $05eb		; ad eb 05
B0_164e:		sec				; 38 
B0_164f:		sbc #$10		; e9 10
B0_1651:		sta $05eb		; 8d eb 05
B0_1654:		lda $0602		; ad 02 06
B0_1657:		sbc #$00		; e9 00
B0_1659:		sta $0602		; 8d 02 06
B0_165c:		rts				; 60 


B0_165d:		inc $6b			; e6 6b
B0_165f:		rts				; 60 


B0_1660:		lda $05d4		; ad d4 05
B0_1663:		sta $0438		; 8d 38 04
B0_1666:		lda #$05		; a9 05
B0_1668:		sta $3f			; 85 3f
B0_166a:		lda #$3c		; a9 3c
B0_166c:		sta $30			; 85 30
B0_166e:		inc $6b			; e6 6b
B0_1670:		rts				; 60 


B0_1671:		dec $30			; c6 30
B0_1673:		beq B0_167d ; f0 08

B0_1675:		lda $1a			; a5 1a
B0_1677:		and #$03		; 29 03
B0_1679:		sta $0454		; 8d 54 04
B0_167c:		rts				; 60 


B0_167d:		lda #$05		; a9 05
B0_167f:		jmp $96ad		; 4c ad 96


B0_1682:		lda $a6			; a5 a6
B0_1684:		sta $3f			; 85 3f
B0_1686:		lda $a7			; a5 a7
B0_1688:		sta $41			; 85 41
B0_168a:		lda $a8			; a5 a8
B0_168c:		sta $42			; 85 42
B0_168e:		lda $a9			; a5 a9
B0_1690:		sta $40			; 85 40
B0_1692:		lda $05d4		; ad d4 05
B0_1695:		sta $0438		; 8d 38 04
B0_1698:		lda #$3c		; a9 3c
B0_169a:		sta $30			; 85 30
B0_169c:		inc $6b			; e6 6b
B0_169e:		rts				; 60 


B0_169f:		dec $30			; c6 30
B0_16a1:		beq B0_16ab ; f0 08

B0_16a3:		lda $1a			; a5 1a
B0_16a5:		and #$03		; 29 03
B0_16a7:		sta $0454		; 8d 54 04
B0_16aa:		rts				; 60 


B0_16ab:		lda $aa			; a5 aa
B0_16ad:		sta $2a			; 85 2a
B0_16af:		lda #$00		; a9 00
B0_16b1:		sta $0454		; 8d 54 04
B0_16b4:		jsr $e5ca		; 20 ca e5
B0_16b7:		lda #$00		; a9 00
B0_16b9:		sta $0505		; 8d 05 05
B0_16bc:		sta $051c		; 8d 1c 05
B0_16bf:		sta $05d4		; 8d d4 05
B0_16c2:		sta $05eb		; 8d eb 05
B0_16c5:		sta $0602		; 8d 02 06
B0_16c8:		sta $0619		; 8d 19 06
B0_16cb:		sta $0630		; 8d 30 06
B0_16ce:		rts				; 60 


B0_16cf:		rts				; 60 


B0_16d0:		lda $0565		; ad 65 05
B0_16d3:		cmp #$0e		; c9 0e
B0_16d5:		bcc B0_16f8 ; 90 21

B0_16d7:		cmp #$16		; c9 16
B0_16d9:		bcs B0_16f8 ; b0 1d

B0_16db:		lda $041c		; ad 1c 04
B0_16de:		cmp #$70		; c9 70
B0_16e0:		bcs B0_16f8 ; b0 16

B0_16e2:		lda $7d			; a5 7d
B0_16e4:		and #$0f		; 29 0f
B0_16e6:		asl a			; 0a
B0_16e7:		tay				; a8 
B0_16e8:		lda $96fa, y	; b9 fa 96
B0_16eb:		cmp $57			; c5 57
B0_16ed:		bne B0_16f8 ; d0 09

B0_16ef:		lda $96fb, y	; b9 fb 96
B0_16f2:		cmp $56			; c5 56
B0_16f4:		bne B0_16f8 ; d0 02

B0_16f6:		sec				; 38 
B0_16f7:		rts				; 60 


B0_16f8:		clc				; 18 
B0_16f9:		rts				; 60 


B0_16fa:		.db $00				; 00
B0_16fb:		.db $00				; 00
B0_16fc:	.db $02
B0_16fd:		iny				; c8 
B0_16fe:		.db $00				; 00
B0_16ff:		.db $00				; 00
B0_1700:		.db $00				; 00
B0_1701:		.db $00				; 00
B0_1702:		ldy #$00		; a0 00
B0_1704:		lda $9730, y	; b9 30 97
B0_1707:		cmp #$ff		; c9 ff
B0_1709:		beq B0_172a ; f0 1f

B0_170b:		cmp $32			; c5 32
B0_170d:		bne B0_1724 ; d0 15

B0_170f:		lda $9731, y	; b9 31 97
B0_1712:		cmp $33			; c5 33
B0_1714:		bne B0_1724 ; d0 0e

B0_1716:		lda $9732, y	; b9 32 97
B0_1719:		cmp $34			; c5 34
B0_171b:		bne B0_1724 ; d0 07

B0_171d:		lda $9733, y	; b9 33 97
B0_1720:		sta $7d			; 85 7d
B0_1722:		sec				; 38 
B0_1723:		rts				; 60 


B0_1724:		iny				; c8 
B0_1725:		iny				; c8 
B0_1726:		iny				; c8 
B0_1727:		iny				; c8 
B0_1728:		bne B0_1704 ; d0 da

B0_172a:		lda #$00		; a9 00
B0_172c:		sta $7d			; 85 7d
B0_172e:		clc				; 18 
B0_172f:		rts				; 60 


B0_1730:	.db $02
B0_1731:	.db $02
B0_1732:		ora ($10, x)	; 01 10
B0_1734:	.db $02
B0_1735:	.db $03
B0_1736:		ora ($11, x)	; 01 11
B0_1738:		asl $0200		; 0e 00 02
B0_173b:	.db $12
B0_173c:	.db $0e $02 $00
B0_173f:	.db $13
B0_1740:	.db $02
B0_1741:		.db $00				; 00
B0_1742:		ora ($20, x)	; 01 20
B0_1744:	.db $0c
B0_1745:		ora ($01, x)	; 01 01
B0_1747:	.db $23
B0_1748:		ora $01			; 05 01
B0_174a:		.db $00				; 00
B0_174b:		bmi B0_175a ; 30 0d

B0_174d:	.db $03
B0_174e:		.db $00				; 00
B0_174f:		and ($01), y	; 31 01
B0_1751:		.db $00				; 00
B0_1752:		.db $00				; 00
B0_1753:		rti				; 40 


B0_1754:		ora ($01, x)	; 01 01
B0_1756:		.db $00				; 00
B0_1757:		rti				; 40 


B0_1758:		ora ($01, x)	; 01 01
B0_175a:		ora ($40, x)	; 01 40
B0_175c:		ora ($01, x)	; 01 01
B0_175e:	.db $02
B0_175f:		rti				; 40 


B0_1760:		ora ($02, x)	; 01 02
B0_1762:		.db $00				; 00
B0_1763:		rti				; 40 


B0_1764:		ora ($02, x)	; 01 02
B0_1766:		ora ($40, x)	; 01 40
B0_1768:		ora ($03, x)	; 01 03
B0_176a:		.db $00				; 00
B0_176b:		rti				; 40 


B0_176c:		ora ($03, x)	; 01 03
B0_176e:		ora ($40, x)	; 01 40
B0_1770:		ora ($04, x)	; 01 04
B0_1772:		.db $00				; 00
B0_1773:		rti				; 40 


B0_1774:		ora ($04, x)	; 01 04
B0_1776:		ora ($40, x)	; 01 40
B0_1778:		ora ($04, x)	; 01 04
B0_177a:	.db $02
B0_177b:		rti				; 40 


B0_177c:		ora ($05, x)	; 01 05
B0_177e:		.db $00				; 00
B0_177f:		rti				; 40 


B0_1780:		asl $0100		; 0e 00 01
B0_1783:		rti				; 40 


B0_1784:	.db $0d $01 $00
B0_1787:		eor ($0d, x)	; 41 0d
B0_1789:		ora ($01, x)	; 01 01
B0_178b:		eor ($0d, x)	; 41 0d
B0_178d:		ora ($02, x)	; 01 02
B0_178f:		eor ($06, x)	; 41 06
B0_1791:		.db $00				; 00
B0_1792:		ora ($32, x)	; 01 32
B0_1794:		asl $00			; 06 00
B0_1796:		.db $00				; 00
B0_1797:	.db $33
B0_1798:		asl $01			; 06 01
B0_179a:		.db $00				; 00
B0_179b:	.db $34
B0_179c:		asl $02			; 06 02
B0_179e:		ora ($35, x)	; 01 35
B0_17a0:		asl $02			; 06 02
B0_17a2:		.db $00				; 00
B0_17a3:		rol $06, x		; 36 06
B0_17a5:	.db $02
B0_17a6:	.db $02
B0_17a7:	.db $37
B0_17a8:		php				; 08 
B0_17a9:		.db $00				; 00
B0_17aa:		.db $00				; 00
B0_17ab:		bvc B0_17b5 ; 50 08

B0_17ad:		ora ($00, x)	; 01 00
B0_17af:		eor ($08), y	; 51 08
B0_17b1:	.db $02
B0_17b2:		.db $00				; 00
B0_17b3:		eor ($05), y	; 51 05
B0_17b5:	.db $03
B0_17b6:		.db $00				; 00
B0_17b7:		eor ($09), y	; 51 09
B0_17b9:		.db $00				; 00
B0_17ba:		.db $00				; 00
B0_17bb:		eor ($0a), y	; 51 0a
B0_17bd:		ora ($00, x)	; 01 00
B0_17bf:		eor ($0a), y	; 51 0a
B0_17c1:	.db $02
B0_17c2:		.db $00				; 00
B0_17c3:		eor ($0a), y	; 51 0a
B0_17c5:	.db $03
B0_17c6:		.db $00				; 00
B0_17c7:		eor ($02), y	; 51 02
B0_17c9:		ora ($00, x)	; 01 00
B0_17cb:		eor ($08), y	; 51 08
B0_17cd:		.db $00				; 00
B0_17ce:		ora ($60, x)	; 01 60
B0_17d0:		php				; 08 
B0_17d1:	.db $03
B0_17d2:		.db $00				; 00
B0_17d3:		adc ($08), y	; 71 08
B0_17d5:	.db $04
B0_17d6:		.db $00				; 00
B0_17d7:		adc ($05), y	; 71 05
B0_17d9:	.db $03
B0_17da:		ora ($80, x)	; 01 80
B0_17dc:	.db $0c
B0_17dd:	.db $02
B0_17de:		.db $00				; 00
B0_17df:		sta ($ff, x)	; 81 ff
B0_17e1:		lda $7d			; a5 7d
B0_17e3:		and #$0f		; 29 0f
B0_17e5:		tax				; aa 
B0_17e6:		ldy $97fa, x	; bc fa 97
B0_17e9:		ldx #$2e		; a2 2e
B0_17eb:		lda $7d			; a5 7d
B0_17ed:		cmp #$31		; c9 31
B0_17ef:		bne B0_17f5 ; d0 04

B0_17f1:		lda #$24		; a9 24
B0_17f3:		bne B0_17f7 ; d0 02

B0_17f5:		lda #$13		; a9 13
B0_17f7:		jmp func_1f_05bf		; 4c bf e5


B0_17fa:		ror $ae5e, x	; 7e 5e ae
B0_17fd:		ldx $aeae		; ae ae ae
B0_1800:		ldx $a0ae		; ae ae a0
B0_1803:		.db $00				; 00
B0_1804:		tya				; 98 
B0_1805:		sta $0782, y	; 99 82 07
B0_1808:		iny				; c8 
B0_1809:		cpy #$40		; c0 40
B0_180b:		bne B0_1805 ; d0 f8

B0_180d:		lda $7d			; a5 7d
B0_180f:		and #$0f		; 29 0f
B0_1811:		tax				; aa 
B0_1812:		ldy $981c, x	; bc 1c 98
B0_1815:		ldx #$2e		; a2 2e
B0_1817:		lda #$02		; a9 02
B0_1819:		jmp func_1f_05bf		; 4c bf e5


B0_181c:	.db $3f
B0_181d:	.db $7f
B0_181e:		;removed
	.db $30 $a0

B0_1820:		stx $b1			; 86 b1
B0_1822:		jmp $982b		; 4c 2b 98


B0_1825:		pha				; 48 
B0_1826:		lda #$80		; a9 80
B0_1828:		sta $b1			; 85 b1
B0_182a:		pla				; 68 
B0_182b:		jsr $985e		; 20 5e 98
B0_182e:		lda #$01		; a9 01
B0_1830:		jsr func_1f_0d14		; 20 14 ed
B0_1833:		jsr $ed03		; 20 03 ed
B0_1836:		jsr func_1f_0d16		; 20 16 ed
B0_1839:		iny				; c8 
B0_183a:		jsr $ed03		; 20 03 ed
B0_183d:		jsr func_1f_0d16		; 20 16 ed
B0_1840:		iny				; c8 
B0_1841:		jsr $ed03		; 20 03 ed
B0_1844:		iny				; c8 
B0_1845:		cmp #$ff		; c9 ff
B0_1847:		bne B0_184c ; d0 03

B0_1849:		jmp $ed12		; 4c 12 ed


B0_184c:		cmp #$fe		; c9 fe
B0_184e:		beq B0_1858 ; f0 08

B0_1850:		and $02			; 25 02
B0_1852:		jsr func_1f_0d16		; 20 16 ed
B0_1855:		jmp $9841		; 4c 41 98


B0_1858:		jsr $ed12		; 20 12 ed
B0_185b:		jmp $982e		; 4c 2e 98


B0_185e:		asl a			; 0a
B0_185f:		tay				; a8 
B0_1860:		lda $98e4, y	; b9 e4 98
B0_1863:		sta $00			; 85 00
B0_1865:		lda $98e5, y	; b9 e5 98
B0_1868:		sta $01			; 85 01
B0_186a:		lda #$ff		; a9 ff
B0_186c:		adc #$00		; 69 00
B0_186e:		sta $02			; 85 02
B0_1870:		ldy #$00		; a0 00
B0_1872:		rts				; 60 


B0_1873:		stx $b1			; 86 b1
B0_1875:		jsr $985e		; 20 5e 98
B0_1878:		lda #$01		; a9 01
B0_187a:		jsr func_1f_0d14		; 20 14 ed
B0_187d:		lda $0790		; ad 90 07
B0_1880:		jsr func_1f_0d16		; 20 16 ed
B0_1883:		lda $0791		; ad 91 07
B0_1886:		jsr func_1f_0d16		; 20 16 ed
B0_1889:		jsr $ed03		; 20 03 ed
B0_188c:		iny				; c8 
B0_188d:		cmp #$ff		; c9 ff
B0_188f:		beq B0_18a6 ; f0 15

B0_1891:		cmp #$fe		; c9 fe
B0_1893:		beq B0_189d ; f0 08

B0_1895:		and $02			; 25 02
B0_1897:		jsr func_1f_0d16		; 20 16 ed
B0_189a:		jmp $9889		; 4c 89 98


B0_189d:		jsr $ed12		; 20 12 ed
B0_18a0:		jsr $98a9		; 20 a9 98
B0_18a3:		jmp $9878		; 4c 78 98


B0_18a6:		jsr $ed12		; 20 12 ed
B0_18a9:		clc				; 18 
B0_18aa:		lda $0790		; ad 90 07
B0_18ad:		adc #$40		; 69 40
B0_18af:		sta $0790		; 8d 90 07
B0_18b2:		lda $0791		; ad 91 07
B0_18b5:		adc #$00		; 69 00
B0_18b7:		sta $0791		; 8d 91 07
B0_18ba:		and #$08		; 29 08
B0_18bc:		bne B0_18dc ; d0 1e

B0_18be:		lda $0791		; ad 91 07
B0_18c1:		cmp #$23		; c9 23
B0_18c3:		bcc B0_18e3 ; 90 1e

B0_18c5:		lda $0790		; ad 90 07
B0_18c8:		cmp #$c0		; c9 c0
B0_18ca:		bcc B0_18e3 ; 90 17

B0_18cc:		lda $0791		; ad 91 07
B0_18cf:		eor #$0b		; 49 0b
B0_18d1:		sta $0791		; 8d 91 07
B0_18d4:		lda $0790		; ad 90 07
B0_18d7:		and #$2d		; 29 2d
B0_18d9:		sta $0790		; 8d 90 07
B0_18dc:		lda $0791		; ad 91 07
B0_18df:		cmp #$2b		; c9 2b
B0_18e1:		bcs B0_18c5 ; b0 e2

B0_18e3:		rts				; 60 


B0_18e4:	.db $43
B0_18e5:	.db $9b
B0_18e6:	.db $33
B0_18e7:	.db $9b
B0_18e8:	.db $33
B0_18e9:	.db $9b
B0_18ea:		cli				; 58 
B0_18eb:	.db $9b
B0_18ec:		tax				; aa 
B0_18ed:	.db $9b
B0_18ee:	.db $87
B0_18ef:	.db $9b
B0_18f0:		and $9b			; 25 9b
B0_18f2:		bit $7a9b		; 2c 9b 7a
B0_18f5:	.db $9b
B0_18f6:		ror $87			; 66 87
B0_18f8:	.db $82
B0_18f9:	.db $89
B0_18fa:		tay				; a8 
B0_18fb:	.db $89
B0_18fc:		sta $89, x		; 95 89
B0_18fe:	.db $bb
B0_18ff:	.db $89
B0_1900:		ldy $99, x		; b4 99
B0_1902:		inc $1c99, x	; fe 99 1c
B0_1905:		txs				; 9a 
B0_1906:		ora $2b9a		; 0d 9a 2b
B0_1909:		txs				; 9a 
B0_190a:	.db $c3
B0_190b:	.db $9b
B0_190c:	.db $c3
B0_190d:	.db $9b
B0_190e:		dec $9b, x		; d6 9b
B0_1910:		sbc #$9b		; e9 9b
B0_1912:	.db $fc
B0_1913:	.db $9b
B0_1914:		;removed
	.db $b0 $9b

B0_1916:		ora ($9c), y	; 11 9c
B0_1918:		bit $9c			; 24 9c
B0_191a:	.db $37
B0_191b:	.db $9c
B0_191c:		lsr a			; 4a
B0_191d:	.db $9c
B0_191e:		eor $709c, x	; 5d 9c 70
B0_1921:	.db $9c
B0_1922:	.db $93
B0_1923:	.db $9c
B0_1924:		sta $749a, y	; 99 9a 74
B0_1927:		sta $9d74, x	; 9d 74 9d
B0_192a:	.db $8f
B0_192b:		sta $9d74, x	; 9d 74 9d
B0_192e:	.db $74
B0_192f:		sta $9b4d, x	; 9d 4d 9b
B0_1932:	.db $64
B0_1933:	.db $9b
B0_1934:	.db $6f
B0_1935:	.db $9b
B0_1936:		ldy #$07		; a0 07
B0_1938:		ldx $9c, y		; b6 9c
B0_193a:		cmp #$9c		; c9 9c
B0_193c:	.db $ef
B0_193d:	.db $9c
B0_193e:	.db $dc
B0_193f:	.db $9c
B0_1940:	.db $02
B0_1941:		sta $9d15, x	; 9d 15 9d
B0_1944:	.db $3b
B0_1945:		sta $9d28, x	; 9d 28 9d
B0_1948:	.db $ef
B0_1949:	.db $bb
B0_194a:		asl $bc, x		; 16 bc
B0_194c:		and ($bc), y	; 31 bc
B0_194e:		bvc B0_190c ; 50 bc

B0_1950:		sty $bc			; 84 bc
B0_1952:		ldx $bc, y		; b6 bc
B0_1954:	.db $ff
B0_1955:		ldy $bac0, x	; bc c0 ba
B0_1958:	.db $ef
B0_1959:		tsx				; ba 
B0_195a:		ora $29bb		; 0d bb 29
B0_195d:	.db $bb
B0_195e:	.db $4b
B0_195f:	.db $bb
B0_1960:	.db $6b
B0_1961:	.db $bb
B0_1962:		sty $aebb		; 8c bb ae
B0_1965:	.db $bb
B0_1966:		dec $e8bb		; ce bb e8
B0_1969:	.db $bb
B0_196a:	.db $f7
B0_196b:	.db $bb
B0_196c:		bpl B0_192a ; 10 bc

B0_196e:		rol $4ebc		; 2e bc 4e
B0_1971:		ldy $9b13, x	; bc 13 9b
B0_1974:		ldy $e69a		; ac 9a e6
B0_1977:		txs				; 9a 
B0_1978:		rts				; 60 


B0_1979:		txs				; 9a 
B0_197a:	.db $73
B0_197b:		txs				; 9a 
B0_197c:		stx $9a			; 86 9a
B0_197e:		jmp ($6cbc)		; 6c bc 6c


B0_1981:		ldy $bc77, x	; bc 77 bc
B0_1984:		sta $bc, x		; 95 bc
B0_1986:		bcs B0_1944 ; b0 bc

B0_1988:	.db $cf
B0_1989:		ldy $bcec, x	; bc ec bc
B0_198c:		cpy #$bd		; c0 bd
B0_198e:	.db $17
B0_198f:		lda $bd38, x	; bd 38 bd
B0_1992:	.db $52
B0_1993:		lda $bd6f, x	; bd 6f bd
B0_1996:		stx $a6bd		; 8e bd a6
B0_1999:		lda $bdb1, x	; bd b1 bd
B0_199c:		cmp $bd, x		; d5 bd
B0_199e:		eor $4e9a		; 4d 9a 4e
B0_19a1:		sta $9a3a, x	; 9d 3a 9a
B0_19a4:		and #$bb		; 29 bb
B0_19a6:	.db $4b
B0_19a7:	.db $bb
B0_19a8:		adc ($9d, x)	; 61 9d
B0_19aa:		ldx $bc, y		; b6 bc
B0_19ac:	.db $ff
B0_19ad:		ldy $bd2e, x	; bc 2e bd
B0_19b0:	.db $5c
B0_19b1:		lda $a285, x	; bd 85 a2
B0_19b4:		rti				; 40 


B0_19b5:		jsr $5262		; 20 62 52
B0_19b8:		lsr $5461, x	; 5e 61 54
B0_19bb:		eor $4dfe		; 4d fe 4d
B0_19be:		jsr $5863		; 20 63 58
B0_19c1:	.db $5c
B0_19c2:	.db $54
B0_19c3:		inc $2057, x	; fe 57 20
B0_19c6:		eor ($5b), y	; 51 5b
B0_19c8:	.db $5a
B0_19c9:		.db $00				; 00
B0_19ca:		.db $00				; 00
B0_19cb:		eor $fe41		; 4d 41 fe
B0_19ce:		rts				; 60 


B0_19cf:		jsr $5b5f		; 20 5f 5b
B0_19d2:		bvc B0_1a3c ; 50 68

B0_19d4:	.db $54
B0_19d5:		adc ($fe, x)	; 61 fe
B0_19d7:	.db $80
B0_19d8:		jsr $5d54		; 20 54 5d
B0_19db:	.db $54
B0_19dc:	.db $5c
B0_19dd:		pla				; 68 
B0_19de:		inc $2075, x	; fe 75 20
B0_19e1:		sta ($4c), y	; 91 4c
B0_19e3:		inc $2095, x	; fe 95 20
B0_19e6:	.db $5f
B0_19e7:		jmp $70fe		; 4c fe 70


B0_19ea:		jsr $8180		; 20 80 81
B0_19ed:		sta ($82, x)	; 81 82
B0_19ef:		inc $2090, x	; fe 90 20
B0_19f2:		bcc B0_19f4 ; 90 00

B0_19f4:		.db $00				; 00
B0_19f5:	.db $92
B0_19f6:		inc $20b0, x	; fe b0 20
B0_19f9:		ldy #$a1		; a0 a1
B0_19fb:		lda ($a2, x)	; a1 a2
B0_19fd:	.db $ff
B0_19fe:		adc $8820, x	; 7d 20 88
B0_1a01:	.db $89
B0_1a02:		inc $209d, x	; fe 9d 20
B0_1a05:		tya				; 98 
B0_1a06:		sta $bdfe, y	; 99 fe bd
B0_1a09:		jsr $a9a8		; 20 a8 a9
B0_1a0c:	.db $ff
B0_1a0d:		adc $8a20, x	; 7d 20 8a
B0_1a10:	.db $8b
B0_1a11:		inc $209d, x	; fe 9d 20
B0_1a14:		txs				; 9a 
B0_1a15:	.db $9b
B0_1a16:		inc $20bd, x	; fe bd 20
B0_1a19:		tax				; aa 
B0_1a1a:	.db $ab
B0_1a1b:	.db $ff
B0_1a1c:		adc $8c20, x	; 7d 20 8c
B0_1a1f:		sta $9dfe		; 8d fe 9d
B0_1a22:		jsr $9d9c		; 20 9c 9d
B0_1a25:		inc $20bd, x	; fe bd 20
B0_1a28:		ldy $ffad		; ac ad ff
B0_1a2b:		adc $8e20, x	; 7d 20 8e
B0_1a2e:	.db $8f
B0_1a2f:		inc $209d, x	; fe 9d 20
B0_1a32:	.db $9e
B0_1a33:	.db $9f
B0_1a34:		inc $20bd, x	; fe bd 20
B0_1a37:		ldx $ffaf		; ae af ff
B0_1a3a:		.db $00				; 00
B0_1a3b:	.db $3f
B0_1a3c:	.db $0f
B0_1a3d:		asl $26, x		; 16 26
B0_1a3f:	.db $20 $0f $00
B0_1a42:	.db $04
B0_1a43:		;removed
	.db $10 $0f

B0_1a45:	.db $02
B0_1a46:	.db $14
B0_1a47:	.db $27
B0_1a48:	.db $0f
B0_1a49:	.db $02
B0_1a4a:	.db $04
B0_1a4b:	.db $14
B0_1a4c:	.db $ff
B0_1a4d:		.db $00				; 00
B0_1a4e:	.db $3f
B0_1a4f:	.db $0f
B0_1a50:		asl $26, x		; 16 26
B0_1a52:		jsr $160f		; 20 0f 16
B0_1a55:	.db $27
B0_1a56:		;removed
	.db $10 $0f

B0_1a58:	.db $07
B0_1a59:	.db $0f
B0_1a5a:	.db $0f
B0_1a5b:	.db $0f
B0_1a5c:	.db $07
B0_1a5d:	.db $0f
B0_1a5e:	.db $27
B0_1a5f:	.db $ff
B0_1a60:		.db $00				; 00
B0_1a61:	.db $3f
B0_1a62:	.db $0f
B0_1a63:		asl $26, x		; 16 26
B0_1a65:		jsr $070f		; 20 0f 07
B0_1a68:	.db $17
B0_1a69:	.db $27
B0_1a6a:	.db $0f
B0_1a6b:	.db $07
B0_1a6c:	.db $0f
B0_1a6d:	.db $0f
B0_1a6e:	.db $0f
B0_1a6f:	.db $07
B0_1a70:	.db $0f
B0_1a71:	.db $27
B0_1a72:	.db $ff
B0_1a73:		.db $00				; 00
B0_1a74:	.db $3f
B0_1a75:	.db $0f
B0_1a76:		asl $26, x		; 16 26
B0_1a78:		jsr $070f		; 20 0f 07
B0_1a7b:	.db $27
B0_1a7c:	.db $37
B0_1a7d:	.db $0f
B0_1a7e:	.db $07
B0_1a7f:	.db $0f
B0_1a80:		ora ($0f), y	; 11 0f
B0_1a82:	.db $07
B0_1a83:		ora ($27), y	; 11 27
B0_1a85:	.db $ff
B0_1a86:		.db $00				; 00
B0_1a87:	.db $3f
B0_1a88:	.db $0f
B0_1a89:		asl $26, x		; 16 26
B0_1a8b:		jsr $170f		; 20 0f 17
B0_1a8e:	.db $27
B0_1a8f:	.db $37
B0_1a90:	.db $0f
B0_1a91:	.db $17
B0_1a92:		and ($31, x)	; 21 31
B0_1a94:	.db $0f
B0_1a95:	.db $07
B0_1a96:		and ($37), y	; 31 37
B0_1a98:	.db $ff
B0_1a99:		.db $00				; 00
B0_1a9a:	.db $3f
B0_1a9b:	.db $0f
B0_1a9c:		asl $26, x		; 16 26
B0_1a9e:		jsr $220f		; 20 0f 22
B0_1aa1:	.db $12
B0_1aa2:		jsr $220f		; 20 0f 22
B0_1aa5:	.db $0f
B0_1aa6:	.db $0f
B0_1aa7:	.db $0f
B0_1aa8:	.db $22
B0_1aa9:	.db $0f
B0_1aaa:		jsr $0fff		; 20 ff 0f
B0_1aad:		and $4e			; 25 4e
B0_1aaf:		adc $4f7d, x	; 7d 7d 4f
B0_1ab2:		inc $252e, x	; fe 2e 25
B0_1ab5:		lsr $7878, x	; 5e 78 78
B0_1ab8:		sei				; 78 
B0_1ab9:		sei				; 78 
B0_1aba:	.db $5f
B0_1abb:		inc $254e, x	; fe 4e 25
B0_1abe:		ror $787e		; 6e 7e 78
B0_1ac1:		sei				; 78 
B0_1ac2:	.db $7f
B0_1ac3:	.db $6f
B0_1ac4:		inc $256d, x	; fe 6d 25
B0_1ac7:		rti				; 40 


B0_1ac8:		eor ($42, x)	; 41 42
B0_1aca:	.db $43
B0_1acb:	.db $44
B0_1acc:		eor $46			; 45 46
B0_1ace:	.db $47
B0_1acf:		inc $258d, x	; fe 8d 25
B0_1ad2:		bvc B0_1b25 ; 50 51

B0_1ad4:	.db $52
B0_1ad5:	.db $53
B0_1ad6:	.db $54
B0_1ad7:		eor $56, x		; 55 56
B0_1ad9:	.db $57
B0_1ada:		inc $25ad, x	; fe ad 25
B0_1add:		rts				; 60 


B0_1ade:		adc ($62, x)	; 61 62
B0_1ae0:	.db $63
B0_1ae1:	.db $64
B0_1ae2:		adc $66			; 65 66
B0_1ae4:	.db $67
B0_1ae5:	.db $ff
B0_1ae6:		cmp $7025		; cd 25 70
B0_1ae9:		adc ($72), y	; 71 72
B0_1aeb:	.db $73
B0_1aec:	.db $74
B0_1aed:		adc $76, x		; 75 76
B0_1aef:	.db $77
B0_1af0:		inc $25ee, x	; fe ee 25
B0_1af3:		pha				; 48 
B0_1af4:		eor #$4a		; 49 4a
B0_1af6:	.db $4b
B0_1af7:		jmp $fe4d		; 4c 4d fe


B0_1afa:		asl $5826		; 0e 26 58
B0_1afd:		eor $5b5a, y	; 59 5a 5b
B0_1b00:	.db $5c
B0_1b01:		eor $2efe, x	; 5d fe 2e
B0_1b04:		rol $68			; 26 68
B0_1b06:		adc #$6a		; 69 6a
B0_1b08:	.db $6b
B0_1b09:		jmp ($fe6d)		; 6c 6d fe


B0_1b0c:	.db $4f
B0_1b0d:		rol $79			; 26 79
B0_1b0f:	.db $7a
B0_1b10:	.db $7b
B0_1b11:	.db $7c
B0_1b12:	.db $ff
B0_1b13:	.db $d3
B0_1b14:	.db $27
B0_1b15:		eor $55, x		; 55 55
B0_1b17:		eor $fe, x		; 55 fe
B0_1b19:	.db $db
B0_1b1a:	.db $27
B0_1b1b:		eor $557b, y	; 59 7b 55
B0_1b1e:		inc $27e3, x	; fe e3 27
B0_1b21:		eor $55, x		; 55 55
B0_1b23:		eor $ff, x		; 55 ff
B0_1b25:		asl $4722		; 0e 22 47
B0_1b28:		eor ($4d, x)	; 41 4d
B0_1b2a:		eor $ff			; 45 ff
B0_1b2c:		asl $4422		; 0e 22 44
B0_1b2f:		eor $4d			; 45 4d
B0_1b31:	.db $4f
B0_1b32:	.db $ff
B0_1b33:		dex				; ca 
B0_1b34:	.db $22
B0_1b35:		and ($00, x)	; 21 00
B0_1b37:	.db $5a
B0_1b38:		lsr $505d, x	; 5e 5d 50
B0_1b3b:	.db $5c
B0_1b3c:		cli				; 58 
B0_1b3d:		.db $00				; 00
B0_1b3e:	.db $42
B0_1b3f:		lsr a			; 4a
B0_1b40:		lsr a			; 4a
B0_1b41:		eor ($ff, x)	; 41 ff
B0_1b43:	.db $27
B0_1b44:	.db $23
B0_1b45:		asl $141f, x	; 1e 1f 14
B0_1b48:		ora $1d18, x	; 1d 18 1d
B0_1b4b:		asl $ff, x		; 16 ff
B0_1b4d:	.db $32
B0_1b4e:	.db $23
B0_1b4f:	.db $1f
B0_1b50:		bpl B0_1b74 ; 10 22

B0_1b52:	.db $22
B0_1b53:		rol $1e			; 26 1e
B0_1b55:		and ($13, x)	; 21 13
B0_1b57:	.db $ff
B0_1b58:		cpx $5621		; ec 21 56
B0_1b5b:		bvc B0_1bb9 ; 50 5c

B0_1b5d:	.db $54
B0_1b5e:		.db $00				; 00
B0_1b5f:		lsr $5465, x	; 5e 65 54
B0_1b62:		adc ($ff, x)	; 61 ff
B0_1b64:		sty $5222		; 8c 22 52
B0_1b67:		lsr $635d, x	; 5e 5d 63
B0_1b6a:		cli				; 58 
B0_1b6b:		eor $5464, x	; 5d 64 54
B0_1b6e:	.db $ff
B0_1b6f:		cpx $5f22		; ec 22 5f
B0_1b72:		bvc B0_1bd6 ; 50 62

B0_1b74:	.db $62
B0_1b75:		ror $5e			; 66 5e
B0_1b77:		adc ($53, x)	; 61 53
B0_1b79:	.db $ff
B0_1b7a:		cmp $5622		; cd 22 56
B0_1b7d:		bvc B0_1bdb ; 50 5c

B0_1b7f:	.db $54
B0_1b80:		.db $00				; 00
B0_1b81:	.db $62
B0_1b82:	.db $63
B0_1b83:		bvc B0_1be6 ; 50 61

B0_1b85:	.db $63
B0_1b86:	.db $ff
B0_1b87:		.db $00				; 00
B0_1b88:	.db $3f
B0_1b89:	.db $0f
B0_1b8a:		asl $05, x		; 16 05
B0_1b8c:		jsr $130f		; 20 0f 13
B0_1b8f:	.db $02
B0_1b90:		jsr $140f		; 20 0f 14
B0_1b93:	.db $03
B0_1b94:	.db $3b
B0_1b95:	.db $0f
B0_1b96:		asl $27, x		; 16 27
B0_1b98:		;removed
	.db $10 $0f

B0_1b9a:	.db $0c
B0_1b9b:		rol $30			; 26 30
B0_1b9d:	.db $0f
B0_1b9e:	.db $0c
B0_1b9f:		bit $0f30		; 2c 30 0f
B0_1ba2:	.db $12
B0_1ba3:		rol $30			; 26 30
B0_1ba5:	.db $0f
B0_1ba6:		asl $30			; 06 30
B0_1ba8:		bmi B0_1ba8 ; 30 fe

B0_1baa:		.db $00				; 00
B0_1bab:	.db $3f
B0_1bac:	.db $fe $00 $00
B0_1baf:	.db $ff
B0_1bb0:		.db $00				; 00
B0_1bb1:	.db $3f
B0_1bb2:	.db $0f
B0_1bb3:	.db $07
B0_1bb4:	.db $17
B0_1bb5:		jsr $070f		; 20 0f 07
B0_1bb8:	.db $17
B0_1bb9:		jsr $010f		; 20 0f 01
B0_1bbc:		ora #$08		; 09 08
B0_1bbe:	.db $0f
B0_1bbf:		ora ($0b, x)	; 01 0b
B0_1bc1:		;removed
	.db $10 $ff

B0_1bc3:		.db $00				; 00
B0_1bc4:	.db $3f
B0_1bc5:	.db $0f
B0_1bc6:	.db $07
B0_1bc7:	.db $17
B0_1bc8:		jsr $010f		; 20 0f 01
B0_1bcb:	.db $12
B0_1bcc:		jsr $010f		; 20 0f 01
B0_1bcf:		ora #$08		; 09 08
B0_1bd1:	.db $0f
B0_1bd2:		ora ($0b, x)	; 01 0b
B0_1bd4:		;removed
	.db $10 $ff

B0_1bd6:		.db $00				; 00
B0_1bd7:	.db $3f
B0_1bd8:	.db $0f
B0_1bd9:	.db $07
B0_1bda:	.db $17
B0_1bdb:		jsr $010f		; 20 0f 01
B0_1bde:		and ($31, x)	; 21 31
B0_1be0:	.db $0f
B0_1be1:		ora ($08, x)	; 01 08
B0_1be3:		plp				; 28 
B0_1be4:	.db $0f
B0_1be5:		php				; 08 
B0_1be6:		clc				; 18 
B0_1be7:	.db $17
B0_1be8:	.db $ff
B0_1be9:		.db $00				; 00
B0_1bea:	.db $3f
B0_1beb:	.db $0f
B0_1bec:	.db $07
B0_1bed:	.db $17
B0_1bee:		jsr $060f		; 20 0f 06
B0_1bf1:	.db $0b
B0_1bf2:		;removed
	.db $10 $0f

B0_1bf4:		ora ($03, x)	; 01 03
B0_1bf6:		bpl B0_1c07 ; 10 0f

B0_1bf8:		ora ($1b, x)	; 01 1b
B0_1bfa:	.db $3c
B0_1bfb:	.db $ff
B0_1bfc:		bit $3821		; 2c 21 38
B0_1bff:		and $fe3a, y	; 39 3a fe
B0_1c02:		jmp $5521		; 4c 21 55


B0_1c05:		lsr $fe, x		; 56 fe
B0_1c07:		jmp ($7521)		; 6c 21 75


B0_1c0a:		ror $b1, x		; 76 b1
B0_1c0c:		inc $218d, x	; fe 8d 21
B0_1c0f:	.db $87
B0_1c10:	.db $ff
B0_1c11:		.db $00				; 00
B0_1c12:	.db $3f
B0_1c13:	.db $0f
B0_1c14:		asl $26, x		; 16 26
B0_1c16:		jsr $0b0f		; 20 0f 0b
B0_1c19:	.db $1b
B0_1c1a:		ora ($0f, x)	; 01 0f
B0_1c1c:		ora ($11, x)	; 01 11
B0_1c1e:		jsr $310f		; 20 0f 31
B0_1c21:		ora ($21), y	; 11 21
B0_1c23:	.db $ff
B0_1c24:		.db $00				; 00
B0_1c25:	.db $3f
B0_1c26:	.db $0f
B0_1c27:		asl $26, x		; 16 26
B0_1c29:		jsr $0b0f		; 20 0f 0b
B0_1c2c:	.db $1b
B0_1c2d:		ora ($0f, x)	; 01 0f
B0_1c2f:		ora ($11), y	; 11 11
B0_1c31:		and ($0f), y	; 31 0f
B0_1c33:		and ($11), y	; 31 11
B0_1c35:		and ($ff, x)	; 21 ff
B0_1c37:		.db $00				; 00
B0_1c38:	.db $3f
B0_1c39:	.db $0f
B0_1c3a:		asl $26, x		; 16 26
B0_1c3c:		jsr $0b0f		; 20 0f 0b
B0_1c3f:	.db $1b
B0_1c40:		ora ($0f, x)	; 01 0f
B0_1c42:		and ($11, x)	; 21 11
B0_1c44:		and ($0f, x)	; 21 0f
B0_1c46:		and ($11), y	; 31 11
B0_1c48:		and ($ff, x)	; 21 ff
B0_1c4a:		.db $00				; 00
B0_1c4b:	.db $3f
B0_1c4c:	.db $0f
B0_1c4d:		asl $26, x		; 16 26
B0_1c4f:		jsr $0b0f		; 20 0f 0b
B0_1c52:	.db $1b
B0_1c53:		ora ($0f, x)	; 01 0f
B0_1c55:		and ($11), y	; 31 11
B0_1c57:		and ($0f, x)	; 21 0f
B0_1c59:		and ($11), y	; 31 11
B0_1c5b:		and ($ff, x)	; 21 ff
B0_1c5d:		.db $00				; 00
B0_1c5e:	.db $3f
B0_1c5f:	.db $0f
B0_1c60:		asl $16			; 06 16
B0_1c62:		jsr $0f0f		; 20 0f 0f
B0_1c65:		.db $00				; 00
B0_1c66:		asl a			; 0a
B0_1c67:	.db $0f
B0_1c68:	.db $0f
B0_1c69:	.db $0b
B0_1c6a:	.db $2c $0f $00
B0_1c6d:	.db $2b
B0_1c6e:	.db $3c
B0_1c6f:	.db $ff
B0_1c70:		.db $00				; 00
B0_1c71:	.db $3f
B0_1c72:	.db $0f
B0_1c73:		php				; 08 
B0_1c74:		clc				; 18 
B0_1c75:		sec				; 38 
B0_1c76:	.db $0f
B0_1c77:		ora #$0c		; 09 0c
B0_1c79:		bit $090f		; 2c 0f 09
B0_1c7c:		.db $00				; 00
B0_1c7d:		bpl B0_1c8e ; 10 0f

B0_1c7f:		ora #$13		; 09 13
B0_1c81:		bpl B0_1c92 ; 10 0f

B0_1c83:	.db $0f
B0_1c84:		bpl B0_1ca6 ; 10 20

B0_1c86:	.db $0f
B0_1c87:	.db $0f
B0_1c88:		and ($38, x)	; 21 38
B0_1c8a:	.db $0f
B0_1c8b:	.db $0f
B0_1c8c:	.db $0f
B0_1c8d:	.db $0f
B0_1c8e:	.db $0f
B0_1c8f:	.db $0f
B0_1c90:		asl $25, x		; 16 25
B0_1c92:	.db $ff
B0_1c93:		.db $00				; 00
B0_1c94:	.db $3f
B0_1c95:	.db $0f
B0_1c96:		asl $26, x		; 16 26
B0_1c98:	.db $20 $0f $00
B0_1c9b:		bpl B0_1cb7 ; 10 1a

B0_1c9d:	.db $0f
B0_1c9e:		.db $00				; 00
B0_1c9f:	.db $0b
B0_1ca0:		bit $020f		; 2c 0f 02
B0_1ca3:		.db $00				; 00
B0_1ca4:		bpl B0_1cb5 ; 10 0f

B0_1ca6:		php				; 08 
B0_1ca7:		rol $37			; 26 37
B0_1ca9:	.db $0f
B0_1caa:	.db $0f
B0_1cab:	.db $22
B0_1cac:	.db $34
B0_1cad:	.db $0f
B0_1cae:	.db $0f
B0_1caf:	.db $0f
B0_1cb0:	.db $0f
B0_1cb1:	.db $0f
B0_1cb2:	.db $0f
B0_1cb3:		asl $25, x		; 16 25
B0_1cb5:	.db $ff
B0_1cb6:		.db $00				; 00
B0_1cb7:	.db $3f
B0_1cb8:	.db $0f
B0_1cb9:	.db $0f
B0_1cba:		rol $16			; 26 16
B0_1cbc:	.db $0f
B0_1cbd:	.db $0f
B0_1cbe:	.db $07
B0_1cbf:	.db $27
B0_1cc0:	.db $0f
B0_1cc1:	.db $0f
B0_1cc2:	.db $02
B0_1cc3:	.db $23
B0_1cc4:	.db $0f
B0_1cc5:	.db $0f
B0_1cc6:		ora $ff39, y	; 19 39 ff
B0_1cc9:		bpl B0_1d0a ; 10 3f

B0_1ccb:		sec				; 38 
B0_1ccc:		php				; 08 
B0_1ccd:	.db $27
B0_1cce:		sec				; 38 
B0_1ccf:		sec				; 38 
B0_1cd0:	.db $0f
B0_1cd1:	.db $0c
B0_1cd2:	.db $33
B0_1cd3:		sec				; 38 
B0_1cd4:		and ($11, x)	; 21 11
B0_1cd6:		jsr $0838		; 20 38 08
B0_1cd9:		clc				; 18 
B0_1cda:		plp				; 28 
B0_1cdb:	.db $ff
B0_1cdc:		bpl B0_1d1d ; 10 3f

B0_1cde:		sec				; 38 
B0_1cdf:		php				; 08 
B0_1ce0:	.db $27
B0_1ce1:		sec				; 38 
B0_1ce2:		sec				; 38 
B0_1ce3:	.db $0f
B0_1ce4:	.db $0c
B0_1ce5:	.db $33
B0_1ce6:		sec				; 38 
B0_1ce7:	.db $0f
B0_1ce8:		ora $36, x		; 15 36
B0_1cea:		sec				; 38 
B0_1ceb:		php				; 08 
B0_1cec:		clc				; 18 
B0_1ced:		plp				; 28 
B0_1cee:	.db $ff
B0_1cef:		bpl B0_1d30 ; 10 3f

B0_1cf1:		sec				; 38 
B0_1cf2:		php				; 08 
B0_1cf3:	.db $27
B0_1cf4:		sec				; 38 
B0_1cf5:		sec				; 38 
B0_1cf6:	.db $0f
B0_1cf7:	.db $0c
B0_1cf8:	.db $33
B0_1cf9:		sec				; 38 
B0_1cfa:		php				; 08 
B0_1cfb:		ora $38, x		; 15 38
B0_1cfd:		sec				; 38 
B0_1cfe:		php				; 08 
B0_1cff:		clc				; 18 
B0_1d00:		plp				; 28 
B0_1d01:	.db $ff
B0_1d02:		.db $00				; 00
B0_1d03:	.db $3f
B0_1d04:	.db $0f
B0_1d05:	.db $0f
B0_1d06:	.db $0f
B0_1d07:		jsr $0f0f		; 20 0f 0f
B0_1d0a:	.db $0f
B0_1d0b:	.db $0f
B0_1d0c:	.db $0f
B0_1d0d:	.db $0f
B0_1d0e:	.db $0f
B0_1d0f:	.db $0f
B0_1d10:	.db $0f
B0_1d11:	.db $0f
B0_1d12:	.db $0f
B0_1d13:	.db $0f
B0_1d14:	.db $ff
B0_1d15:		bpl B0_1d56 ; 10 3f

B0_1d17:	.db $0f
B0_1d18:		php				; 08 
B0_1d19:	.db $27
B0_1d1a:		sec				; 38 
B0_1d1b:	.db $0f
B0_1d1c:	.db $0f
B0_1d1d:	.db $0c
B0_1d1e:	.db $33
B0_1d1f:	.db $0f
B0_1d20:		and ($11, x)	; 21 11
B0_1d22:		jsr $080f		; 20 0f 08
B0_1d25:		clc				; 18 
B0_1d26:		plp				; 28 
B0_1d27:	.db $ff
B0_1d28:		;removed
	.db $10 $3f

B0_1d2a:	.db $0f
B0_1d2b:		php				; 08 
B0_1d2c:	.db $27
B0_1d2d:		sec				; 38 
B0_1d2e:	.db $0f
B0_1d2f:	.db $0f
B0_1d30:	.db $0c
B0_1d31:	.db $33
B0_1d32:	.db $0f
B0_1d33:	.db $0f
B0_1d34:		ora $36, x		; 15 36
B0_1d36:	.db $0f
B0_1d37:		php				; 08 
B0_1d38:		clc				; 18 
B0_1d39:		plp				; 28 
B0_1d3a:	.db $ff
B0_1d3b:		;removed
	.db $10 $3f

B0_1d3d:	.db $0f
B0_1d3e:		php				; 08 
B0_1d3f:	.db $27
B0_1d40:		sec				; 38 
B0_1d41:	.db $0f
B0_1d42:	.db $0f
B0_1d43:	.db $0c
B0_1d44:	.db $33
B0_1d45:	.db $0f
B0_1d46:		php				; 08 
B0_1d47:		ora $38, x		; 15 38
B0_1d49:	.db $0f
B0_1d4a:		php				; 08 
B0_1d4b:		clc				; 18 
B0_1d4c:		plp				; 28 
B0_1d4d:	.db $ff
B0_1d4e:		.db $00				; 00
B0_1d4f:	.db $3f
B0_1d50:	.db $0f
B0_1d51:		asl $05, x		; 16 05
B0_1d53:		jsr $130f		; 20 0f 13
B0_1d56:	.db $02
B0_1d57:		jsr $140f		; 20 0f 14
B0_1d5a:	.db $03
B0_1d5b:	.db $3b
B0_1d5c:	.db $0f
B0_1d5d:	.db $0f
B0_1d5e:	.db $0f
B0_1d5f:	.db $0f
B0_1d60:	.db $ff
B0_1d61:		.db $00				; 00
B0_1d62:	.db $3f
B0_1d63:	.db $0f
B0_1d64:	.db $0f
B0_1d65:	.db $0f
B0_1d66:	.db $0f
B0_1d67:	.db $0f
B0_1d68:		bpl B0_1d6f ; 10 05

B0_1d6a:		ora ($0f, x)	; 01 0f
B0_1d6c:	.db $0f
B0_1d6d:	.db $0f
B0_1d6e:	.db $0f
B0_1d6f:	.db $0f
B0_1d70:	.db $0f
B0_1d71:	.db $0f
B0_1d72:	.db $0f
B0_1d73:	.db $ff
B0_1d74:		rol a			; 2a
B0_1d75:	.db $22
B0_1d76:		eor $635e, x	; 5d 5e 63
B0_1d79:		.db $00				; 00
B0_1d7a:	.db $52
B0_1d7b:		lsr $5f5c, x	; 5e 5c 5f
B0_1d7e:	.db $5b
B0_1d7f:	.db $54
B0_1d80:	.db $63
B0_1d81:	.db $54
B0_1d82:		inc $224b, x	; fe 4b 22
B0_1d85:	.db $63
B0_1d86:		adc ($68, x)	; 61 68
B0_1d88:		.db $00				; 00
B0_1d89:		bvc B0_1de1 ; 50 56

B0_1d8b:		bvc B0_1de5 ; 50 58

B0_1d8d:		eor $08ff, x	; 5d ff 08
B0_1d90:	.db $22
B0_1d91:		stx $a4			; 86 a4
B0_1d93:		ldy $a4			; a4 a4
B0_1d95:		ldy $a4			; a4 a4
B0_1d97:		ldy $a4			; a4 a4
B0_1d99:		ldy $a4			; a4 a4
B0_1d9b:		ldy $a4			; a4 a4
B0_1d9d:		ldy $a4			; a4 a4
B0_1d9f:		ldy $87			; a4 87
B0_1da1:		inc $2228, x	; fe 28 22
B0_1da4:		stx $00, y		; 96 00
B0_1da6:		.db $00				; 00
B0_1da7:		.db $00				; 00
B0_1da8:		.db $00				; 00
B0_1da9:		.db $00				; 00
B0_1daa:		.db $00				; 00
B0_1dab:		.db $00				; 00
B0_1dac:		.db $00				; 00
B0_1dad:		.db $00				; 00
B0_1dae:		.db $00				; 00
B0_1daf:		.db $00				; 00
B0_1db0:		.db $00				; 00
B0_1db1:		.db $00				; 00
B0_1db2:		.db $00				; 00
B0_1db3:	.db $97
B0_1db4:		inc $2248, x	; fe 48 22
B0_1db7:		stx $00, y		; 96 00
B0_1db9:		.db $00				; 00
B0_1dba:		.db $00				; 00
B0_1dbb:		.db $00				; 00
B0_1dbc:		.db $00				; 00
B0_1dbd:		.db $00				; 00
B0_1dbe:		.db $00				; 00
B0_1dbf:		.db $00				; 00
B0_1dc0:		.db $00				; 00
B0_1dc1:		.db $00				; 00
B0_1dc2:		.db $00				; 00
B0_1dc3:		.db $00				; 00
B0_1dc4:		.db $00				; 00
B0_1dc5:		.db $00				; 00
B0_1dc6:	.db $97
B0_1dc7:		inc $2268, x	; fe 68 22
B0_1dca:		ldx $a5			; a6 a5
B0_1dcc:		lda $a5			; a5 a5
B0_1dce:		lda $a5			; a5 a5
B0_1dd0:		lda $a5			; a5 a5
B0_1dd2:		lda $a5			; a5 a5
B0_1dd4:		lda $a5			; a5 a5
B0_1dd6:		lda $a5			; a5 a5
B0_1dd8:		lda $a7			; a5 a7
B0_1dda:	.db $ff
B0_1ddb:		lda $6b			; a5 6b
B0_1ddd:		jsr jumpTablePreserveY		; 20 6d e8
B0_1de0:	.db $fa
B0_1de1:		sta $9e51, x	; 9d 51 9e
B0_1de4:		dey				; 88 
B0_1de5:	.db $9e
B0_1de6:		cmp $9e			; c5 9e
B0_1de8:	.db $ff
B0_1de9:	.db $9e
B0_1dea:		ora $509f, y	; 19 9f 50
B0_1ded:	.db $9f
B0_1dee:		sta ($9f), y	; 91 9f
B0_1df0:		ldy $f09f		; ac 9f f0
B0_1df3:	.db $9f
B0_1df4:		php				; 08 
B0_1df5:		ldy #$28		; a0 28
B0_1df7:		ldy #$50		; a0 50
B0_1df9:		ldy #$a9		; a0 a9
B0_1dfb:		bcs B0_1d82 ; b0 85

B0_1dfd:	.db $ff
B0_1dfe:		lda #$00		; a9 00
B0_1e00:		sta $31			; 85 31
B0_1e02:		tax				; aa 
B0_1e03:		sta $07ec, x	; 9d ec 07
B0_1e06:		inx				; e8 
B0_1e07:		cpx #$08		; e0 08
B0_1e09:		bne B0_1e03 ; d0 f8

B0_1e0b:		jsr $e795		; 20 95 e7
B0_1e0e:		lda #$01		; a9 01
B0_1e10:		sta $2c			; 85 2c
B0_1e12:		jsr $e666		; 20 66 e6
B0_1e15:		jsr $a2b4		; 20 b4 a2
B0_1e18:		jsr initSound		; 20 27 e2
B0_1e1b:		lda #$44		; a9 44
B0_1e1d:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B0_1e20:		jsr $ebfd		; 20 fd eb
B0_1e23:		jsr $a247		; 20 47 a2
B0_1e26:		ldy $a4			; a4 a4
B0_1e28:		lda $a48b, y	; b9 8b a4
B0_1e2b:		sta $07ed		; 8d ed 07
B0_1e2e:		and #$1f		; 29 1f
B0_1e30:		sta $07f1		; 8d f1 07
B0_1e33:		lda $a49c, y	; b9 9c a4
B0_1e36:		sta $07ee		; 8d ee 07
B0_1e39:		jsr $a1d2		; 20 d2 a1
B0_1e3c:		jsr $a278		; 20 78 a2
B0_1e3f:		jsr $a172		; 20 72 a1
B0_1e42:		jsr $a06d		; 20 6d a0
B0_1e45:		lda #$04		; a9 04
B0_1e47:		sta $1c			; 85 1c
B0_1e49:		inc $6b			; e6 6b
B0_1e4b:		lda #$00		; a9 00
B0_1e4d:		sta $07f3		; 8d f3 07
B0_1e50:		rts				; 60 


B0_1e51:		lda $07ed		; ad ed 07
B0_1e54:		and #$80		; 29 80
B0_1e56:		beq B0_1e6f ; f0 17

B0_1e58:		ldy #$00		; a0 00
B0_1e5a:		sty $31			; 84 31
B0_1e5c:		lda $07f1		; ad f1 07
B0_1e5f:		cmp #$02		; c9 02
B0_1e61:		beq B0_1e65 ; f0 02

B0_1e63:		ldy #$09		; a0 09
B0_1e65:		sty $07ef		; 8c ef 07
B0_1e68:		lda #$00		; a9 00
B0_1e6a:		sta $30			; 85 30
B0_1e6c:		jmp $9e49		; 4c 49 9e


B0_1e6f:		jsr $9e49		; 20 49 9e
B0_1e72:		lda #$03		; a9 03
B0_1e74:		sta $6b			; 85 6b
B0_1e76:		lda #$40		; a9 40
B0_1e78:		sta $30			; 85 30
B0_1e7a:		rts				; 60 


B0_1e7b:		lda $ff			; a5 ff
B0_1e7d:		and #$fc		; 29 fc
B0_1e7f:		sta $ff			; 85 ff
B0_1e81:		lda #$00		; a9 00
B0_1e83:		sta $fd			; 85 fd
B0_1e85:		jmp $9e49		; 4c 49 9e


B0_1e88:		ldy $31			; a4 31
B0_1e8a:		bne B0_1eb6 ; d0 2a

B0_1e8c:		dec $30			; c6 30
B0_1e8e:		beq B0_1e7b ; f0 eb

B0_1e90:		jsr $a1fa		; 20 fa a1
B0_1e93:		lda $30			; a5 30
B0_1e95:		cmp #$a0		; c9 a0
B0_1e97:		bcs B0_1eb5 ; b0 1c

B0_1e99:		and #$0f		; 29 0f
B0_1e9b:		bne B0_1eb5 ; d0 18

B0_1e9d:		lda $07ef		; ad ef 07
B0_1ea0:		jsr $a55f		; 20 5f a5
B0_1ea3:		inc $07ef		; ee ef 07
B0_1ea6:		lda $07ef		; ad ef 07
B0_1ea9:		cmp #$09		; c9 09
B0_1eab:		bcc B0_1eb5 ; 90 08

B0_1ead:		beq B0_1ebe ; f0 0f

B0_1eaf:		cmp #$12		; c9 12
B0_1eb1:		bcc B0_1eb5 ; 90 02

B0_1eb3:		inc $31			; e6 31
B0_1eb5:		rts				; 60 


B0_1eb6:		inc $31			; e6 31
B0_1eb8:		lda $31			; a5 31
B0_1eba:		cmp #$3d		; c9 3d
B0_1ebc:		bcc B0_1eb5 ; 90 f7

B0_1ebe:		lda #$20		; a9 20
B0_1ec0:		sta $30			; 85 30
B0_1ec2:		jmp $9e49		; 4c 49 9e


B0_1ec5:		lda $07ed		; ad ed 07
B0_1ec8:		and #$20		; 29 20
B0_1eca:		beq B0_1ef3 ; f0 27

B0_1ecc:		ldy $07f3		; ac f3 07
B0_1ecf:		bne B0_1edd ; d0 0c

B0_1ed1:		dec $30			; c6 30
B0_1ed3:		bne B0_1efe ; d0 29

B0_1ed5:		lda #$20		; a9 20
B0_1ed7:		sta $30			; 85 30
B0_1ed9:		inc $07f3		; ee f3 07
B0_1edc:		rts				; 60 


B0_1edd:		dec $30			; c6 30
B0_1edf:		bne B0_1eb5 ; d0 d4

B0_1ee1:		lda #$01		; a9 01
B0_1ee3:		sta $0782		; 8d 82 07
B0_1ee6:		lda #$80		; a9 80
B0_1ee8:		sta $0783		; 8d 83 07
B0_1eeb:		lda #$01		; a9 01
B0_1eed:		sta $0784		; 8d 84 07
B0_1ef0:		jmp $9e49		; 4c 49 9e


B0_1ef3:		jsr $9e49		; 20 49 9e
B0_1ef6:		lda #$05		; a9 05
B0_1ef8:		sta $6b			; 85 6b
B0_1efa:		lda #$40		; a9 40
B0_1efc:		sta $30			; 85 30
B0_1efe:		rts				; 60 


B0_1eff:		inc $0784		; ee 84 07
B0_1f02:		dec $0783		; ce 83 07
B0_1f05:		bne B0_1efe ; d0 f7

B0_1f07:		inc $0782		; ee 82 07
B0_1f0a:		jsr $9e49		; 20 49 9e
B0_1f0d:		lda #$80		; a9 80
B0_1f0f:		sta $0783		; 8d 83 07
B0_1f12:		lda #$20		; a9 20
B0_1f14:		sta $30			; 85 30
B0_1f16:		jmp $a27f		; 4c 7f a2


B0_1f19:		lda $07ee		; ad ee 07
B0_1f1c:		and #$f8		; 29 f8
B0_1f1e:		beq B0_1f4d ; f0 2d

B0_1f20:		ldy $07f3		; ac f3 07
B0_1f23:		bne B0_1f38 ; d0 13

B0_1f25:		lda $07ed		; ad ed 07
B0_1f28:		and #$20		; 29 20
B0_1f2a:		bne B0_1f30 ; d0 04

B0_1f2c:		lda #$ef		; a9 ef
B0_1f2e:		sta $fc			; 85 fc
B0_1f30:		dec $30			; c6 30
B0_1f32:		bne B0_1f84 ; d0 50

B0_1f34:		inc $07f3		; ee f3 07
B0_1f37:		rts				; 60 


B0_1f38:		dec $fc			; c6 fc
B0_1f3a:		lda $fc			; a5 fc
B0_1f3c:		cmp #$f0		; c9 f0
B0_1f3e:		bcc B0_1f44 ; 90 04

B0_1f40:		sbc #$10		; e9 10
B0_1f42:		sta $fc			; 85 fc
B0_1f44:		lda $07ee		; ad ee 07
B0_1f47:		and #$f8		; 29 f8
B0_1f49:		cmp $fc			; c5 fc
B0_1f4b:		bcc B0_1f84 ; 90 37

B0_1f4d:		jmp $9e49		; 4c 49 9e


B0_1f50:		lda $07f1		; ad f1 07
B0_1f53:		cmp #$06		; c9 06
B0_1f55:		beq B0_1f5b ; f0 04

B0_1f57:		cmp #$08		; c9 08
B0_1f59:		bne B0_1f85 ; d0 2a

B0_1f5b:		lda #$00		; a9 00
B0_1f5d:		sta $31			; 85 31
B0_1f5f:		lda #$17		; a9 17
B0_1f61:		jsr $a272		; 20 72 a2
B0_1f64:		ldx #$03		; a2 03
B0_1f66:		lda #$06		; a9 06
B0_1f68:		jsr $a447		; 20 47 a4
B0_1f6b:		lda $07f1		; ad f1 07
B0_1f6e:		cmp #$08		; c9 08
B0_1f70:		beq B0_1f79 ; f0 07

B0_1f72:		lda #$4f		; a9 4f
B0_1f74:		sta $30			; 85 30
B0_1f76:		jmp $9e49		; 4c 49 9e


B0_1f79:		jsr $9e49		; 20 49 9e
B0_1f7c:		lda #$08		; a9 08
B0_1f7e:		sta $6b			; 85 6b
B0_1f80:		lda #$40		; a9 40
B0_1f82:		sta $30			; 85 30
B0_1f84:		rts				; 60 


B0_1f85:		jsr $9e49		; 20 49 9e
B0_1f88:		lda #$0a		; a9 0a
B0_1f8a:		sta $6b			; 85 6b
B0_1f8c:		lda #$40		; a9 40
B0_1f8e:		sta $30			; 85 30
B0_1f90:		rts				; 60 


B0_1f91:		jsr $a0a8		; 20 a8 a0
B0_1f94:		dec $30			; c6 30
B0_1f96:		bne B0_1f84 ; d0 ec

B0_1f98:		jsr $a084		; 20 84 a0
B0_1f9b:		lda #$aa		; a9 aa
B0_1f9d:		sta $0403		; 8d 03 04
B0_1fa0:		jsr $9e49		; 20 49 9e
B0_1fa3:		lda #$0a		; a9 0a
B0_1fa5:		sta $6b			; 85 6b
B0_1fa7:		lda #$40		; a9 40
B0_1fa9:		sta $30			; 85 30
B0_1fab:		rts				; 60 


B0_1fac:		ldy $07f3		; ac f3 07
B0_1faf:		bne B0_1fb9 ; d0 08

B0_1fb1:		dec $30			; c6 30
B0_1fb3:		bne B0_1fab ; d0 f6

B0_1fb5:		inc $07f3		; ee f3 07
B0_1fb8:		rts				; 60 


B0_1fb9:		lda #$aa		; a9 aa
B0_1fbb:		sta $0403		; 8d 03 04
B0_1fbe:		ldx #$03		; a2 03
B0_1fc0:		clc				; 18 
B0_1fc1:		lda #$24		; a9 24
B0_1fc3:		adc $04c4, x	; 7d c4 04
B0_1fc6:		sta $04c4, x	; 9d c4 04
B0_1fc9:		lda #$00		; a9 00
B0_1fcb:		adc $0438, x	; 7d 38 04
B0_1fce:		sta $0438, x	; 9d 38 04
B0_1fd1:		clc				; 18 
B0_1fd2:		lda #$f0		; a9 f0
B0_1fd4:		adc $04db, x	; 7d db 04
B0_1fd7:		sta $04db, x	; 9d db 04
B0_1fda:		lda #$ff		; a9 ff
B0_1fdc:		adc $041c, x	; 7d 1c 04
B0_1fdf:		sta $041c, x	; 9d 1c 04
B0_1fe2:		lda $0438, x	; bd 38 04
B0_1fe5:		cmp #$9a		; c9 9a
B0_1fe7:		;removed
	.db $90 $66

B0_1fe9:		lda #$4f		; a9 4f
B0_1feb:		sta $30			; 85 30
B0_1fed:		jmp $9e49		; 4c 49 9e


B0_1ff0:		jsr $a0b1		; 20 b1 a0
B0_1ff3:		dec $30			; c6 30
B0_1ff5:		;removed
	.db $d0 $58

B0_1ff7:		lda #$00		; a9 00
B0_1ff9:		sta $0403		; 8d 03 04
B0_1ffc:		jsr $9e49		; 20 49 9e
		.db $a9
