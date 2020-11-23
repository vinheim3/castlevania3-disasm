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
	sta wChrBankBG_0400
	iny
	lda (wCurrRoomSectionChrBanks1), y
	sta wChrBankBG_0800
	iny
	lda (wCurrRoomSectionChrBanks1), y
	sta wChrBankSpr_1400

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
	sta wChrBankSpr_0800
	iny
	lda (wCurrRoomSectionChrBanks2), y
	sta wChrBankSpr_0c00

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