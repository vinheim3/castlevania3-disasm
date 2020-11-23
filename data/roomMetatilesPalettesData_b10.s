
roomGroupMetadata0:
	.dw roomSectionMetadata_0_0
	.dw roomSectionMetadata_0_1
	.dw roomSectionMetadata_0_2
	.dw roomSectionMetadata_0_3

roomSectionMetadata_0_0:
	.db $00
	.dw roomMetadata_0_0_0

roomSectionMetadata_0_1:
	.db $03
	.dw roomMetadata_0_1_0
	.dw roomMetadata_0_1_1
	.dw roomMetadata_0_1_2
	.dw roomMetadata_0_1_3
	.db $e0 $81
	.db $00 $30
	.db $e0 $01
	.db $d0 $e0

roomSectionMetadata_0_2:
	.db $01
	.dw roomMetadata_0_2_0
	.dw roomMetadata_0_2_1
	.db $e0 $02
	.db $fe $e0

roomSectionMetadata_0_3:
	.db $00
	.dw roomMetadata_0_3_0

roomMetadata_0_1_1:
	.db $01
	.db $07 $07 $45 $4c $4c $32 $07 $07
	.db $07 $4d $4c $45 $07 $4c $07 $4d
	.db $30 $31 $32 $47 $47 $45 $30 $31
	.db $34 $3a $36 $30 $31 $32 $47 $47
	.db $38 $7f $36 $34 $3a $47 $38 $7f
	.db $3c $3d $47 $47 $4a $36 $3c $3d
	.db $07 $47 $39 $3c $3d $45 $07 $07
	.db $07 $07 $39 $4b $47 $47 $47 $07

	.db $07 $4c $44 $30 $31 $32 $4c $07
	.db $33 $48 $46 $34 $3a $36 $07 $30
	.db $37 $4c $32 $38 $47 $47 $4c $34
	.db $7e $34 $36 $34 $3f $36 $47 $7d
	.db $37 $3c $44 $47 $47 $47 $3c $34
	.db $3b $44 $39 $38 $35 $36 $07 $3c
	.db $07 $47 $45 $3c $3d $3e $07 $07
	.db $07 $07 $39 $45 $07 $39 $07 $07


roomMetadata_0_0_0:
	.db $02
	.db $86 $88 $80 $81 $00 $00 $00 $00
	.db $8a $8b $82 $83 $57 $00 $00 $81
	.db $8e $8f $8c $03 $85 $80 $81 $8d
	.db $78 $90 $7c $78 $8c $82 $83 $8a
	.db $76 $78 $77 $84 $03 $03 $06 $8e
	.db $79 $7a $7a $7b $0c $0a $0a $09

	.db $00 $80 $00 $00 $00 $01 $00 $81
	.db $02 $82 $80 $81 $02 $05 $81 $83
	.db $87 $86 $88 $83 $07 $84 $8c $07
	.db $8b $8a $8b $07 $41 $42 $42 $40
	.db $8f $8e $8f $44 $1c $16 $03 $1c
	.db $09 $09 $2d $04 $0d $0c $0a $0d

	.db $00 $81 $80 $80 $10 $11 $12 $0b
	.db $02 $83 $89 $89 $14 $15 $16 $0b
	.db $03 $03 $83 $18 $19 $19 $1a $0b
	.db $07 $03 $07 $1c $1d $03 $1e $1b
	.db $45 $07 $06 $1c $1d $16 $13 $1f
	.db $0c $2e $0a $0d $0e $0f $47 $47


roomMetadata_0_1_0:
	.db $00
	.db $2c $2c $2c $26 $2c $2c $01 $0b
	.db $21 $20 $21 $24 $26 $20 $01 $0b
	.db $29 $24 $23 $22 $17 $22 $17 $0b
	.db $25 $22 $26 $28 $2c $24 $05 $0b
	.db $2c $28 $2c $26 $2c $28 $01 $0b
	.db $47 $47 $47 $47 $47 $47 $47 $0b


roomMetadata_0_1_3:
	.db $01
	.db $00 $00 $00 $24 $25 $2b $00 $80
	.db $00 $80 $81 $28 $2c $2b $00 $82
	.db $2f $19 $18 $20 $21 $2c $2f $2b
	.db $20 $13 $10 $22 $2a $17 $22 $0b
	.db $24 $2b $14 $24 $29 $26 $24 $0b
	.db $0b $2a $17 $22 $17 $17 $22 $0b

	.db $80 $00 $24 $2b $00 $00 $00 $00
	.db $89 $00 $20 $01 $00 $2f $2b $00
	.db $83 $2f $24 $2b $00 $22 $01 $00
	.db $22 $2a $28 $01 $00 $24 $2c $2f
	.db $24 $29 $26 $05 $4e $43 $27 $0b
	.db $0b $0b $0b $17 $2f $23 $2c $2b


roomMetadata_0_1_2:
	.db $02
	.db $0b $20 $21 $2c $23 $2c $0b $2b
	.db $0b $24 $29 $23 $20 $21 $0b $29
	.db $0b $22 $2a $17 $22 $52 $22 $17
	.db $0b $24 $24 $26 $24 $20 $28 $20
	.db $0b $43 $43 $42 $0b $43 $42 $48
	.db $0b $28 $28 $2c $28 $28 $2c $28

	.db $00 $24 $00 $00 $00 $00 $00 $00
	.db $2f $2b $00 $00 $00 $00 $00 $00
	.db $17 $27 $17 $17 $52 $17 $52 $17
	.db $23 $05 $50 $2c $20 $20 $21 $20
	.db $42 $43 $53 $42 $43 $43 $42 $43
	.db $2c $28 $2f $2c $28 $28 $2c $2b

	.db $00 $00 $20 $01 $07 $1c $12 $0b
	.db $00 $00 $24 $05 $07 $1c $13 $0b
	.db $52 $52 $0b $0b $46 $1c $07 $1b
	.db $51 $2c $0b $1e $07 $47 $07 $1f
	.db $53 $42 $0b $20 $07 $1c $0b $0b
	.db $00 $50 $20 $24 $07 $1c $1a $0b


roomMetadata_0_2_1:
	.db $02
	.db $07 $13 $07 $00 $00 $00 $00 $00
	.db $07 $1c $11 $57 $00 $00 $00 $00
	.db $07 $1c $14 $00 $00 $00 $64 $65
	.db $07 $1c $1c $5d $57 $00 $68 $69
	.db $0b $47 $47 $0b $46 $61 $61 $60
	.db $07 $07 $07 $07 $07 $07 $07 $07

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $5c $55 $00 $00 $00 $64 $65 $4f
	.db $58 $59 $5d $5c $55 $68 $69 $07
	.db $60 $61 $61 $61 $5e $60 $60 $60
	.db $07 $07 $07 $07 $07 $07 $07 $0b

	.db $00 $00 $00 $00 $00 $00 $00 $65
	.db $00 $00 $00 $00 $00 $64 $65 $07
	.db $4f $00 $00 $54 $55 $68 $69 $07
	.db $5d $56 $54 $58 $59 $5d $07 $07
	.db $61 $61 $60 $61 $61 $61 $62 $07
	.db $0b $47 $07 $07 $07 $44 $07 $07


roomMetadata_0_2_0:
	.db $02
	.db $0b $55 $54 $56 $67 $64 $65 $5d
	.db $0b $59 $59 $66 $55 $68 $69 $07
	.db $0b $5f $5f $58 $58 $5d $07 $5b
	.db $0b $59 $59 $5f $63 $07 $5b $66
	.db $0b $63 $58 $58 $47 $07 $66 $58
	.db $47 $47 $47 $47 $47 $47 $47 $47

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $5c $55 $00 $00 $00 $65 $73 $00
	.db $59 $58 $57 $00 $56 $69 $07 $5c
	.db $5f $5f $47 $5c $75 $40 $07 $63
	.db $59 $59 $07 $63 $5a $07 $45 $07
	.db $47 $47 $47 $47 $47 $47 $47 $47

	.db $00 $00 $00 $00 $00 $00 $05 $0b
	.db $00 $00 $00 $00 $00 $00 $2b $0b
	.db $56 $00 $00 $00 $00 $00 $05 $0b
	.db $5a $5c $56 $72 $73 $72 $01 $1b
	.db $07 $63 $5a $07 $07 $07 $01 $1f
	.db $47 $47 $47 $47 $08 $08 $08 $08


roomMetadata_0_3_0:
	.db $03
	.db $05 $00 $00 $00 $00 $00 $00 $00
	.db $2b $00 $71 $72 $73 $00 $00 $00
	.db $01 $72 $07 $07 $07 $73 $72 $73
	.db $05 $07 $6b $6b $6a $6b $07 $07
	.db $2b $6a $6e $6f $6e $6f $6d $6c
	.db $08 $08 $08 $08 $08 $08 $08 $08

	.db $00 $00 $00 $71 $00 $00 $00 $00
	.db $00 $71 $72 $07 $73 $00 $00 $00
	.db $72 $07 $07 $6b $70 $73 $72 $73
	.db $07 $07 $6a $6f $74 $6d $6c $6d
	.db $44 $0b $08 $08 $08 $08 $08 $08
	.db $08 $0b $07 $07 $07 $07 $07 $07

	.db $00 $00 $00 $00 $71 $00 $00 $00
	.db $00 $71 $71 $72 $07 $73 $00 $00
	.db $72 $6b $6b $6b $07 $70 $73 $72
	.db $6c $6f $6e $6f $6c $74 $6d $07
	.db $08 $08 $08 $08 $08 $08 $08 $08
	.db $07 $07 $07 $07 $07 $07 $07 $07

	.db $00 $00 $00 $00 $00 $00 $00 $71
	.db $72 $73 $00 $00 $72 $73 $72 $07
	.db $07 $07 $73 $72 $07 $07 $07 $07
	.db $07 $47 $70 $07 $70 $07 $07 $6b
	.db $49 $6c $74 $6d $74 $47 $6a $6e
	.db $0b $08 $08 $08 $08 $08 $08 $08


roomGroupTiles0:
	.db $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d
	.db $3d $a8 $a8 $00 $67 $aa $a8 $00 $af $aa $ab $00 $aa $a8 $9a $00
	.db $3d $3d $3d $3d $00 $00 $00 $00 $a2 $a3 $a2 $a3 $a4 $a5 $a4 $a5
	.db $af $aa $af $af $9b $a8 $aa $a8 $a8 $a8 $9b $af $9b $a8 $00 $9b
	.db $00 $00 $00 $00 $00 $00 $00 $00 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $a8 $a8 $8b $00 $aa $ab $88 $00 $aa $94 $89 $00 $a9 $3d $9a $00
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $46 $57 $00 $00 $7b $6e $00
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
	.db $bb $bb $bb $bb $ba $ba $ba $ba $ba $00 $ba $00 $00 $ba $00 $00
	.db $ab $6d $7a $77 $67 $6b $6a $6b $bb $bb $bb $bb $ba $ba $ba $ba
	.db $00 $7c $7d $00 $00 $40 $41 $00 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $bc $be $bc $be $bd $bf $bd $bf $bc $be $bc $be $bd $bf $bd $bf
	.db $a8 $aa $a8 $00 $9b $af $00 $00 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $00 $00 $86 $96 $00 $00 $86 $96 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $00 $40 $41 $50 $00 $40 $41 $50 $bb $bb $bc $be $ba $ba $bd $bf
	.db $50 $00 $bc $be $00 $00 $bd $bf $bc $be $bc $be $bd $bf $bd $bf
	.db $00 $00 $86 $96 $00 $00 $86 $96 $00 $00 $86 $96 $3d $3d $86 $96
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $9d $00 $00 $3d $9f $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $8e $8f $00 $8e $9e $8f
	.db $9f $9e $8f $00 $9e $8f $9d $00 $8f $9d $8c $00 $9d $00 $00 $00
	.db $3d $3d $86 $96 $3d $3d $86 $96 $3d $3d $86 $96 $3d $3d $86 $96
	.db $3d $9d $00 $00 $3d $9f $00 $00 $3d $9c $00 $00 $3d $8c $00 $af
	.db $51 $8f $af $a8 $51 $8c $a8 $aa $a8 $af $a8 $a8 $ab $a9 $ab $00
	.db $bc $be $bc $be $bd $bf $bd $bf $aa $a8 $aa $a9 $ab $8a $89 $88
	.db $3d $51 $3e $9e $00 $51 $8f $6a $00 $4c $4c $8d $00 $00 $5c $5d
	.db $3e $3e $3e $9f $9e $3e $3e $3e $4d $00 $a8 $00 $00 $51 $a9 $af
	.db $9c $00 $bc $be $9f $9c $bd $bf $00 $00 $bc $be $00 $00 $bd $bf
	.db $00 $00 $bc $be $00 $00 $bd $bf $00 $00 $3c $00 $00 $00 $3a $00
	.db $00 $00 $86 $96 $00 $00 $86 $96 $00 $00 $86 $96 $00 $00 $86 $96
	.db $00 $51 $8c $8d $00 $51 $00 $00 $00 $51 $8e $8e $00 $51 $9e $9d
	.db $9c $00 $00 $00 $8f $9c $00 $00 $9e $9f $00 $00 $9f $8f $9c $00
	.db $00 $00 $3c $00 $00 $00 $3b $00 $00 $00 $3a $00 $00 $00 $3c $00
	.db $89 $88 $9f $99 $3d $80 $81 $82 $8a $90 $91 $92 $99 $83 $00 $00
	.db $3d $3d $3d $3d $8b $8a $3d $3d $93 $3d $3d $88 $83 $94 $b4 $9e
	.db $bc $be $bc $be $bd $bf $bd $bf $a8 $a0 $a2 $a3 $aa $a0 $a6 $a7
	.db $a0 $88 $00 $87 $b1 $00 $87 $00 $00 $87 $00 $a8 $87 $00 $a9 $ab
	.db $9e $ab $a2 $a3 $9e $a0 $a4 $a5 $aa $a0 $a4 $a5 $a8 $a0 $a6 $a7
	.db $a0 $a8 $af $3d $a0 $a9 $aa $89 $a0 $88 $ab $3d $a0 $98 $8a $3d
	.db $97 $00 $b3 $3d $00 $97 $00 $8a $a8 $b6 $97 $00 $ab $9f $00 $97
	.db $bc $be $b8 $87 $bd $91 $87 $00 $00 $87 $00 $a4 $87 $00 $9a $3d
	.db $a9 $a0 $00 $00 $9a $a0 $a1 $a1 $a8 $8b $a8 $a9 $ab $3d $3d $89
	.db $a0 $9e $a8 $99 $a0 $98 $aa $a8 $a0 $99 $a9 $ab $a0 $9d $3d $3d
	.db $b7 $b9 $bc $be $00 $b7 $92 $bf $9a $9c $97 $00 $89 $9d $00 $97
	.db $a8 $a8 $8b $00 $a9 $aa $88 $00 $3d $ab $89 $00 $3d $3d $9a $00
	.db $3d $88 $8a $98 $9a $9e $99 $8b $3d $a1 $89 $3d $3d $3d $3d $3d
	.db $00 $00 $00 $87 $9d $00 $87 $00 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $97 $00 $00 $00 $00 $97 $00 $00 $bb $bb $bb $bb $ba $ba $ba $ba
	.db $3d $3d $3d $3d $84 $3d $3d $85 $9a $a8 $a8 $8b $94 $ab $9a $3d
	.db $00 $00 $44 $45 $00 $44 $45 $46 $00 $54 $64 $65 $00 $55 $74 $75
	.db $46 $47 $48 $49 $65 $68 $47 $48 $56 $62 $68 $69 $66 $68 $78 $79
	.db $00 $00 $9e $9c $49 $00 $8e $9e $59 $00 $8d $9e $55 $00 $9e $8d
	.db $48 $49 $00 $00 $47 $48 $49 $00 $68 $69 $59 $00 $78 $79 $55 $00
	.db $00 $58 $4a $4b $00 $55 $5a $5b $00 $58 $6a $6b $00 $58 $7a $7b
	.db $60 $61 $4e $4f $70 $62 $5e $5f $74 $71 $6e $6f $70 $68 $7e $7f
	.db $58 $00 $8f $9d $55 $00 $8e $9e $58 $00 $9e $9d $55 $00 $8d $9e
	.db $4e $4f $58 $00 $5e $5f $55 $00 $6e $6f $58 $00 $7e $7f $58 $00
	.db $00 $58 $4a $4b $00 $58 $5a $5b $00 $55 $6a $6b $00 $58 $7a $7b
	.db $00 $00 $8f $9d $00 $00 $8e $9f $00 $00 $9e $9c $00 $00 $8d $9e
	.db $4e $43 $4e $4f $52 $53 $5e $5f $60 $63 $6e $6f $70 $71 $7e $7f
	.db $60 $61 $55 $00 $70 $66 $58 $00 $76 $76 $42 $00 $00 $00 $00 $00
	.db $00 $55 $60 $61 $00 $58 $70 $65 $00 $42 $77 $77 $00 $00 $00 $00
	.db $60 $61 $60 $61 $74 $71 $70 $68 $76 $77 $76 $76 $00 $00 $00 $00
	.db $58 $00 $9d $9e $58 $00 $8e $9f $42 $00 $9e $8d $00 $00 $8d $9d
	.db $60 $61 $4e $4f $70 $57 $5e $5f $66 $62 $6e $6f $70 $68 $7e $7f
	.db $00 $00 $00 $00 $00 $00 $00 $00 $bc $be $b7 $b9 $bd $bf $00 $97
	.db $00 $00 $00 $00 $00 $00 $00 $00 $b8 $87 $bc $be $87 $00 $bd $bf
	.db $3d $99 $aa $a8 $88 $8b $ab $aa $bc $be $bc $be $bd $bf $bd $bf
	.db $9a $a0 $a4 $a5 $af $a0 $a4 $a5 $bc $be $bc $be $bd $bf $bd $bf
	.db $00 $00 $00 $87 $00 $00 $87 $00 $00 $87 $00 $00 $87 $00 $00 $00
	.db $97 $00 $00 $00 $00 $97 $00 $00 $00 $00 $97 $00 $00 $00 $00 $97
	.db $00 $00 $00 $00 $00 $00 $00 $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $bc $be $bc $be $bd $bf $bd $bf $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $87 $9d $9c $87 $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $bc $be $00 $00 $bd $bf $00 $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $b7 $b9 $bc $be $00 $97 $92 $bf $00 $00 $97 $00 $00 $00 $00 $97
	.db $b8 $87 $bc $be $87 $00 $bd $bf $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $00 $00 $44 $45 $48 $00 $54 $64 $69 $00 $58 $74 $79
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $45 $48 $49 $00
	.db $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $bc $be $3d $3d $bd $bf
	.db $3d $3d $3d $3d $3d $3d $3d $3d $bc $be $bc $be $bd $bf $bd $bf
	.db $8b $9e $a8 $a9 $3d $9a $af $89 $3d $3d $3d $8b $3d $3d $3d $3d
	.db $3e $98 $9e $9f $99 $95 $8b $9e $95 $3d $3d $9a $3d $3d $3d $3d
	.db $ae $ae $ae $ae $3d $3d $3d $3d $8a $3d $3d $88 $9f $84 $85 $9e
	.db $3d $3d $3d $3d $3d $3d $3d $3d $ae $ae $ae $ae $3d $3d $3d $3d
	.db $3d $3d $4b $4c $4b $4c $5a $5b $5a $5d $65 $77 $77 $3e $3e $76
	.db $4d $4e $4f $3d $77 $5e $5f $4e $3e $5c $5d $5e $77 $56 $77 $76
	.db $4b $4e $4f $3d $5b $41 $5f $b3 $65 $71 $5c $00 $76 $56 $57 $00
	.db $3d $3d $3d $3d $00 $3d $3d $3d $00 $3d $3d $3d $00 $3d $3d $3d
	.db $56 $76 $76 $5e $57 $64 $77 $76 $5b $56 $57 $64 $64 $57 $3e $77
	.db $40 $41 $76 $5b $60 $61 $77 $64 $70 $71 $76 $56 $77 $5b $56 $57
	.db $77 $64 $5e $00 $76 $77 $57 $00 $77 $76 $64 $00 $76 $57 $56 $00
	.db $00 $00 $4a $79 $4a $79 $5a $5b $5b $5d $65 $77 $3e $5c $3e $76
	.db $00 $b2 $4b $4c $4a $79 $5a $5d $5a $5b $77 $76 $77 $76 $76 $3e
	.db $b2 $b3 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
	.db $9c $00 $00 $9e $7c $9d $00 $7c $8d $9e $8b $8c $00 $8d $8c $00
	.db $bc $be $bc $be $bd $bf $bd $bf $b2 $5d $57 $57 $5b $5e $5c $5d
	.db $6d $6d $af $af $7d $7d $7c $7c $bc $be $bc $be $bd $bf $bd $bf
	.db $af $af $50 $6d $7c $7c $7d $7d $bc $be $bc $be $bd $bf $bd $bf
	.db $6d $6d $50 $af $7d $7d $7c $7c $b8 $87 $bc $be $87 $00 $bd $bf
	.db $8b $76 $76 $5e $b5 $8b $57 $76 $00 $9a $9a $9d $00 $b5 $b0 $b5
	.db $3d $3d $3d $3d $3d $3d $3d $3d $3d $3d $b4 $43 $3d $3d $52 $53
	.db $b0 $b1 $b2 $b1 $00 $00 $00 $00 $44 $45 $00 $00 $54 $55 $00 $00
	.db $3e $65 $00 $87 $65 $8c $87 $00 $00 $87 $00 $3e $87 $00 $3e $3e
	.db $3d $3d $00 $87 $3d $b2 $87 $00 $00 $87 $00 $3d $87 $00 $3d $3d
	.db $3d $3d $62 $00 $3d $3d $b6 $00 $3d $3d $63 $5b $3d $3d $73 $74
	.db $3e $65 $00 $00 $3e $3e $00 $00 $3e $76 $00 $00 $74 $75 $00 $00
	.db $00 $00 $6b $00 $a9 $6b $7b $6b $aa $a8 $aa $7b $ab $a9 $ab $af
	.db $00 $00 $00 $00 $00 $00 $00 $00 $6b $af $6b $00 $7b $a9 $7b $a8
	.db $00 $00 $00 $00 $00 $46 $47 $00 $00 $66 $67 $00 $00 $42 $58 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $72 $67 $42 $58 $42 $58
	.db $a1 $9a $89 $a1 $a1 $91 $92 $a1 $a1 $8e $8e $af $51 $a1 $aa $ab
	.db $a8 $af $aa $94 $ab $aa $b1 $b5 $a1 $89 $66 $67 $a1 $9a $42 $58
	.db $00 $00 $00 $00 $00 $6e $00 $00 $00 $59 $00 $00 $7e $48 $7f $00
	.db $3d $3d $3d $3d $3d $3d $3d $3d $3d $6f $b5 $3d $6f $ad $00 $b5
	.db $3d $3d $3d $6f $3d $6c $ac $ad $ac $ad $00 $00 $ad $00 $00 $00
	.db $b5 $6c $3d $3d $00 $00 $b5 $3d $00 $00 $00 $b5 $00 $00 $00 $00
	.db $00 $49 $00 $00 $00 $59 $00 $00 $68 $69 $6a $00 $78 $69 $7a $00
	.db $3e $5b $57 $00 $77 $3e $5e $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $77 $a9 $ab $78 $89 $91 $92 $77 $4a $4e $4b $4b $5a $6f $5b $5e
	.db $67 $77 $3d $3d $68 $6b $8a $b0 $4e $4b $4e $4f $5b $8d $6f $5f
	.db $77 $6c $6c $68 $6c $78 $77 $7a $af $a8 $af $a8 $af $9b $aa $9b
	.db $4a $4e $4b $4e $5a $6f $5b $6f $7e $7f $7e $7f $00 $00 $00 $00
	.db $4b $4b $4e $4e $5b $5e $8d $5b $7e $7f $7e $7f $00 $00 $00 $00
	.db $4b $4f $aa $a9 $6f $5f $ab $78 $7e $7f $7e $7f $00 $00 $00 $00
	.db $ab $6d $77 $6c $67 $6b $6a $6b $75 $a9 $a9 $a8 $b1 $72 $72 $af
	.db $00 $58 $4e $4f $00 $55 $5e $5f $00 $58 $6e $6f $00 $58 $7e $7f
	.db $4a $4b $58 $00 $5a $5b $55 $00 $6a $6b $58 $00 $7a $7b $58 $00
	.db $4c $4d $4e $4f $5c $5d $5e $5f $6c $6d $6e $6f $7c $7d $7e $7f
	.db $3d $3d $3d $3d $3d $3d $3d $3d $72 $72 $72 $72 $63 $64 $63 $64
	.db $3d $3d $54 $00 $3d $3d $00 $00 $72 $72 $00 $00 $63 $64 $00 $00
	.db $3d $70 $3d $70 $b5 $70 $3d $70 $60 $00 $00 $00 $6c $6d $00 $00
	.db $3d $70 $00 $00 $3d $70 $00 $00 $b5 $70 $00 $00 $00 $00 $00 $00
	.db $ab $af $ab $89 $89 $91 $92 $3d $3d $00 $00 $78 $3d $8e $8e $7a
	.db $00 $00 $b3 $3d $00 $00 $00 $b5 $60 $00 $00 $00 $6c $6d $00 $00
	.db $6a $6b $6a $77 $68 $6a $68 $6c $3d $7a $3d $6b $6c $8a $42 $43
	.db $67 $68 $a8 $ab $6a $af $aa $a8 $6b $6d $aa $ab $44 $45 $ab $77
	.db $00 $00 $00 $00 $60 $00 $00 $00 $68 $6d $00 $00 $44 $45 $00 $00
	.db $3d $70 $3d $70 $3d $70 $3d $70 $3d $70 $3d $70 $3d $70 $3d $70
	.db $00 $a8 $52 $53 $af $61 $62 $00 $a8 $71 $00 $00 $aa $48 $00 $00
	.db $53 $55 $56 $60 $00 $65 $66 $3d $00 $00 $76 $3d $00 $00 $49 $3d
	.db $6b $5b $60 $00 $68 $6a $6c $6d $6d $68 $6b $8a $69 $6b $68 $6a
	.db $64 $63 $00 $00 $3d $54 $60 $47 $00 $00 $3d $68 $00 $00 $42 $43
	.db $a9 $58 $00 $00 $3d $71 $00 $00 $3d $58 $00 $00 $aa $79 $af $a9
	.db $00 $00 $59 $67 $00 $00 $69 $59 $00 $a8 $49 $3d $aa $af $79 $59
	.db $ab $6c $6c $3d $6c $7a $6d $67 $a8 $a9 $75 $73 $af $b1 $72 $72


roomGroupPalettes0:
	.db $ff $55 $ff $55 $0f $55 $af $00 $00 $05 $0a $00 $05 $0f $0f $03
	.db $ff $ff $ff $ff $ff $7f $57 $50 $f7 $7f $33 $00 $ff $ff $ff $00
	.db $55 $55 $d0 $41 $dd $55 $14 $40 $55 $55 $10 $55 $55 $03 $00 $5f
	.db $6a $49 $aa $9a $66 $dd $aa $99 $ee $aa $55 $a9 $a6 $a7 $aa $47
	.db $0a $0a $05 $0d $00 $00 $00 $80 $02 $00 $00 $a0 $6a $aa $3f $0f
	.db $f7 $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $ff $75 $f0
	.db $06 $09 $06 $ff $aa $aa $c3 $82 $aa $aa $55 $55 $aa $aa $55 $95
	.db $fb $aa $aa $aa $ff $0f $55 $55 $55 $05 $05 $05 $55 $ee $bb $dd
	.db $ff $ff $df $ff $55 $df $55 $55 $55 $ff $55 $55 $55 $57 $55 $55
	.db $55


roomGroupMetadata1:
	.dw roomSectionMetadata_1_0
	.dw roomSectionMetadata_1_1
	.dw roomSectionMetadata_1_2
	.dw roomSectionMetadata_1_3
	.dw roomSectionMetadata_1_4
	.dw roomSectionMetadata_1_5

roomSectionMetadata_1_0:
	.db $02
	.dw roomMetadata_1_0_0
	.dw roomMetadata_1_0_1
	.dw roomMetadata_1_0_2
	.db $e0 $11
	.db $80 $00
	.db $00 $e0

roomSectionMetadata_1_1:
	.db $02
	.dw roomMetadata_1_1_0
	.dw roomMetadata_1_1_1
	.dw roomMetadata_1_1_2
	.db $e0 $81
	.db $00 $20
	.db $81 $e0

roomSectionMetadata_1_2:
	.db $02
	.dw roomMetadata_1_2_0
	.dw roomMetadata_1_2_1
	.dw roomMetadata_1_2_2
	.db $e0 $81
	.db $00 $21
	.db $81 $e0

roomSectionMetadata_1_3:
	.db $02
	.dw roomMetadata_1_3_0
	.dw roomMetadata_1_3_1
	.dw roomMetadata_1_3_2
	.db $e0 $81
	.db $00 $21
	.db $81 $e0

roomSectionMetadata_1_4:
	.db $02
	.dw roomMetadata_1_4_0
	.dw roomMetadata_1_4_1
	.dw roomMetadata_1_4_2
	.db $e0 $81
	.db $00 $20
	.db $81 $e0

roomSectionMetadata_1_5:
	.db $02
	.dw roomMetadata_1_5_0
	.dw roomMetadata_1_5_1
	.dw roomMetadata_1_5_2
	.db $e0 $11
	.db $80 $00
	.db $00 $e0

roomMetadata_1_0_0:
roomMetadata_1_5_0:
	.db $02
	.db $02 $05 $31 $31 $30 $31 $02 $02
	.db $02 $30 $3b $30 $32 $37 $34 $02
	.db $02 $3f $32 $3e $3e $30 $38 $02
	.db $02 $34 $35 $35 $34 $03 $3c $37
	.db $02 $38 $20 $27 $33 $05 $3c $32
	.db $02 $3c $1a $1b $38 $04 $33 $31
	.db $02 $44 $1e $1f $43 $3b $3c $32
	.db $32 $3c $2f $30 $32 $30 $3e $32

	.db $31 $3c $31 $37 $3e $42 $32 $30
	.db $32 $3e $32 $34 $35 $3a $3e $32
	.db $35 $34 $35 $30 $03 $3b $34 $35
	.db $39 $38 $39 $36 $39 $3a $33 $39
	.db $3d $3c $30 $3a $3e $32 $3c $3d
	.db $30 $3c $3a $37 $32 $30 $3c $30
	.db $02 $03 $3e $32 $3e $0e $18 $0c
	.db $02 $31 $30 $31 $36 $0f $35 $02

	.db $02 $36 $31 $30 $3a $32 $23 $02
	.db $02 $37 $30 $3a $30 $30 $2e $02
	.db $45 $03 $03 $2a $3e $3b $2e $02
	.db $45 $1a $1b $20 $27 $04 $03 $02
	.db $19 $1e $1f $2f $04 $30 $2e $02
	.db $1d $37 $23 $04 $31 $32 $40 $02
	.db $02 $02 $02 $03 $3e $32 $3e $02
	.db $02 $02 $02 $31 $32 $32 $32 $02


roomMetadata_1_1_1:
roomMetadata_1_4_1:
	.db $01
	.db $30 $31 $3a $30 $32 $31 $45 $00
	.db $34 $04 $35 $35 $34 $00 $45 $00
	.db $2a $03 $2a $03 $06 $03 $45 $00
	.db $23 $41 $29 $2f $00 $05 $00 $2b
	.db $27 $20 $40 $1a $1b $00 $05 $21
	.db $02 $06 $0b $1e $1f $0a $24 $25
	.db $28 $20 $05 $00 $2f $22 $28 $21
	.db $2e $2c $2d $02 $23 $2f $20 $22

	.db $02 $2a $05 $23 $28 $29 $28 $2c
	.db $02 $1c $1c $05 $2f $40 $1c $1c
	.db $3e $03 $2a $03 $2a $06 $03 $3e
	.db $30 $2e $2f $00 $21 $29 $05 $30
	.db $31 $41 $07 $2a $03 $2d $04 $02
	.db $32 $04 $2f $20 $29 $24 $25 $02
	.db $3e $05 $41 $23 $2d $28 $21 $02
	.db $32 $00 $05 $2e $29 $2e $23 $02


roomMetadata_1_2_1:
roomMetadata_1_3_1:
	.db $02
	.db $37 $31 $04 $36 $37 $36 $32 $32
	.db $32 $3a $30 $37 $34 $47 $35 $36
	.db $3e $3e $31 $3f $48 $28 $22 $35
	.db $35 $34 $35 $37 $46 $1a $1b $29
	.db $39 $38 $4a $3f $48 $1e $1f $40
	.db $3d $3c $30 $3b $2e $20 $21 $27
	.db $30 $3c $3f $3f $49 $22 $2f $2c
	.db $31 $3c $31 $2b $2e $23 $2e $46

	.db $03 $06 $31 $31 $41 $28 $41 $22
	.db $30 $30 $05 $30 $36 $37 $36 $30
	.db $37 $34 $03 $2a $34 $47 $35 $34
	.db $3e $05 $20 $40 $38 $28 $23 $38
	.db $30 $04 $2a $03 $3c $2c $2f $38
	.db $3e $05 $20 $40 $38 $46 $20 $3c
	.db $30 $00 $05 $21 $3c $2e $29 $0c
	.db $32 $00 $24 $25 $26 $2c $2d $30

	.db $36 $3e $30 $2b $34 $35 $34 $36
	.db $03 $35 $35 $31 $30 $39 $38 $31
	.db $1a $1b $00 $35 $31 $3d $3c $37
	.db $1e $1f $1a $1b $37 $3d $38 $36
	.db $23 $2d $1e $1f $30 $03 $07 $0b
	.db $20 $29 $2f $27 $31 $04 $00 $00
	.db $2c $40 $23 $00 $04 $00 $00 $00
	.db $2e $00 $00 $04 $00 $00 $00 $00


roomMetadata_1_2_2:
roomMetadata_1_3_2:
	.db $01
	.db $01 $02 $02 $02 $02 $02 $02 $02
	.db $01 $34 $35 $34 $35 $34 $35 $01
	.db $01 $38 $39 $38 $39 $38 $39 $00
	.db $01 $33 $3d $3c $3d $3c $3d $00
	.db $01 $3c $0a $33 $00 $3c $00 $02
	.db $03 $03 $03 $03 $03 $03 $03 $03

	.db $30 $37 $36 $34 $35 $37 $30 $02
	.db $34 $35 $34 $38 $39 $34 $35 $02
	.db $38 $39 $07 $3e $3e $33 $39 $02
	.db $3c $04 $30 $36 $30 $3c $0a $02
	.db $3e $3e $3e $30 $3a $33 $02 $02
	.db $37 $30 $37 $3a $36 $3c $30 $02


roomMetadata_1_4_2:
	.db $00
	.db $02 $32 $35 $32 $32 $32 $32 $02
	.db $02 $35 $23 $35 $34 $35 $35 $02
	.db $02 $20 $27 $29 $33 $3e $3e $03
	.db $02 $21 $27 $40 $3c $32 $30 $31
	.db $02 $2f $23 $41 $07 $3e $3e $02
	.db $02 $20 $27 $04 $3c $30 $32 $02


roomMetadata_1_3_0:
	.db $00
	.db $02 $30 $30 $04 $30 $30 $31 $02
	.db $02 $34 $04 $34 $35 $31 $30 $02
	.db $19 $03 $2a $03 $05 $35 $30 $02
	.db $1d $29 $20 $21 $27 $03 $35 $02
	.db $2a $10 $11 $12 $13 $2f $0a $02
	.db $40 $14 $15 $16 $17 $0a $2a $02


roomMetadata_1_1_2:
	.db $00
	.db $02 $32 $35 $32 $32 $32 $32 $02
	.db $02 $35 $23 $35 $34 $35 $35 $02
	.db $02 $20 $46 $20 $33 $3e $03 $09
	.db $02 $2f $2e $29 $3c $32 $31 $0d
	.db $02 $22 $23 $2d $07 $3e $3e $02
	.db $02 $20 $29 $04 $3c $30 $32 $02


roomMetadata_1_2_0:
	.db $00
	.db $02 $30 $30 $04 $30 $30 $31 $02
	.db $02 $34 $04 $34 $35 $31 $30 $02
	.db $03 $03 $2a $03 $05 $35 $30 $02
	.db $34 $29 $20 $21 $27 $03 $35 $02
	.db $2a $10 $11 $12 $13 $2f $0a $02
	.db $40 $14 $15 $16 $17 $0a $2a $02


roomMetadata_1_0_2:
	.db $01
	.db $36 $31 $00 $00 $00 $00 $00 $31
	.db $31 $00 $00 $00 $00 $00 $00 $00
	.db $37 $31 $00 $31 $30 $00 $36 $31
	.db $3e $30 $34 $35 $34 $35 $34 $02
	.db $35 $33 $35 $34 $35 $34 $35 $02
	.db $00 $3c $03 $07 $03 $38 $03 $02

	.db $00 $00 $00 $00 $00 $00 $00 $02
	.db $00 $00 $00 $00 $00 $00 $31 $09
	.db $37 $31 $00 $00 $00 $31 $30 $0d
	.db $34 $35 $34 $35 $34 $35 $3f $02
	.db $35 $34 $35 $34 $35 $34 $35 $02
	.db $00 $38 $00 $38 $00 $38 $00 $02


roomMetadata_1_1_0:
	.db $01
	.db $02 $02 $05 $41 $2b $20 $29 $2e
	.db $0b $01 $2f $05 $21 $22 $2d $2c
	.db $34 $35 $03 $24 $25 $26 $2a $03
	.db $02 $05 $20 $28 $21 $27 $2f $29
	.db $02 $20 $05 $2d $2b $20 $27 $10
	.db $02 $02 $02 $02 $02 $02 $0b $14

	.db $24 $22 $2b $26 $23 $2e $2b $02
	.db $28 $20 $21 $22 $20 $2f $2b $02
	.db $0b $24 $25 $26 $2a $05 $21 $02
	.db $20 $28 $21 $27 $22 $04 $2a $02
	.db $11 $12 $13 $2f $04 $20 $29 $02
	.db $15 $16 $17 $0a $03 $2c $2d $02


roomMetadata_1_0_1:
roomMetadata_1_5_1:
	.db $01
	.db $30 $30 $3a $30 $31 $30 $30 $02
	.db $31 $3a $34 $35 $34 $35 $34 $35
	.db $3e $3b $38 $30 $38 $00 $38 $30
	.db $37 $3a $33 $32 $3c $00 $02 $3e
	.db $3e $30 $3c $36 $3c $03 $02 $37
	.db $02 $03 $33 $37 $33 $02 $02 $02

	.db $02 $02 $02 $02 $02 $02 $02 $02
	.db $35 $34 $35 $34 $35 $35 $34 $02
	.db $31 $38 $00 $33 $3b $30 $38 $02
	.db $3e $33 $03 $3c $31 $3b $3c $02
	.db $37 $3c $00 $3c $3a $3e $33 $02
	.db $3b $33 $03 $33 $30 $37 $3c $02


roomMetadata_1_5_2:
	.db $01
	.db $36 $31 $00 $00 $00 $00 $00 $31
	.db $31 $00 $00 $00 $00 $00 $00 $00
	.db $37 $31 $00 $31 $30 $00 $36 $31
	.db $3e $30 $34 $35 $34 $35 $34 $02
	.db $35 $33 $35 $34 $35 $34 $35 $02
	.db $00 $3c $03 $07 $03 $38 $03 $02

	.db $00 $00 $00 $00 $00 $00 $00 $02
	.db $00 $00 $00 $00 $00 $00 $31 $03
	.db $37 $31 $00 $00 $00 $31 $30 $31
	.db $34 $35 $34 $35 $34 $35 $3e $02
	.db $35 $34 $35 $34 $35 $34 $35 $02
	.db $00 $38 $00 $38 $00 $38 $00 $02


roomMetadata_1_4_0:
	.db $01
	.db $02 $02 $05 $41 $21 $20 $2b $41
	.db $19 $01 $2f $05 $2b $22 $21 $27
	.db $1d $35 $03 $24 $25 $26 $2a $03
	.db $02 $05 $20 $28 $21 $27 $2f $41
	.db $02 $20 $05 $2d $2b $20 $27 $10
	.db $02 $02 $02 $02 $02 $02 $0b $14

	.db $24 $22 $2b $26 $23 $2e $2b $02
	.db $28 $20 $21 $22 $20 $2f $2b $02
	.db $0b $24 $25 $26 $2a $05 $21 $02
	.db $20 $28 $21 $27 $22 $04 $2a $02
	.db $11 $12 $13 $2f $04 $20 $29 $02
	.db $15 $16 $17 $0a $03 $2c $2d $02


roomMetadata_e_0_1:
	.db $02
	.db $34 $35 $04 $47 $34 $35 $34 $35
	.db $38 $04 $46 $28 $38 $39 $38 $39
	.db $33 $23 $2e $1a $1b $3d $3c $3d
	.db $3c $1a $1b $1e $1f $4e $33 $4f
	.db $3c $1e $1f $23 $08 $4d $18 $3d
	.db $3c $2f $41 $41 $3c $3d $3c $3d
	.db $24 $25 $2e $50 $3e $3e $3e $3e
	.db $28 $2c $2e $2e $37 $32 $37 $32

	.db $53 $4b $2a $23 $34 $35 $34 $35
	.db $2d $23 $29 $2f $52 $39 $52 $51
	.db $20 $41 $2d $41 $3c $3d $3c $3d
	.db $27 $50 $23 $50 $3c $4f $33 $3d
	.db $2e $2e $2e $2e $18 $4d $3c $3d
	.db $2e $2e $50 $2e $30 $30 $18 $3d
	.db $2e $50 $2e $2e $37 $36 $37 $3e
	.db $2e $2e $2e $2e $36 $37 $32 $32

	.db $23 $50 $50 $50 $03 $36 $3e $32
	.db $53 $2f $2e $2e $36 $37 $32 $30
	.db $2d $23 $2e $2e $37 $54 $31 $4c
	.db $27 $29 $23 $2e $35 $35 $34 $35
	.db $20 $40 $29 $1a $1b $00 $52 $30
	.db $27 $20 $40 $1e $1f $36 $3c $31
	.db $03 $06 $20 $23 $31 $32 $3c $30
	.db $32 $30 $05 $30 $36 $37 $3c $32


roomGroupTiles1:
	.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $bc $be $00 $00 $bd $bf $00 $00 $bc $be $00 $00 $bd $bf
	.db $bc $be $bc $be $bd $bf $bd $bf $bc $be $bc $be $bd $bf $bd $bf
	.db $bc $be $bc $be $bd $bf $bd $bf $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $00 $9a $00 $00 $9a $00 $00 $9a $00 $00 $9a $00 $00 $00
	.db $9a $00 $00 $00 $00 $9a $00 $00 $00 $00 $9a $00 $00 $00 $00 $9a
	.db $b9 $bb $bc $be $9b $b9 $37 $bf $00 $00 $9a $00 $00 $00 $00 $9a
	.db $bc $be $ba $b9 $bd $36 $b9 $8f $00 $9a $00 $00 $9a $00 $00 $00
	.db $00 $00 $00 $00 $00 $00 $00 $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $bc $be $bc $be $bd $bf $bd $bf $00 $00 $3c $00 $00 $00 $3a $00
	.db $00 $00 $bc $be $00 $00 $bd $bf $00 $00 $00 $00 $00 $00 $00 $00
	.db $bc $be $00 $00 $bd $bf $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
	.db $de $de $de $de $df $df $df $df $bc $be $bc $be $bd $bf $bd $bf
	.db $00 $00 $3c $00 $00 $00 $3b $00 $00 $00 $3a $00 $00 $00 $3c $00
	.db $00 $9b $8e $9c $9b $af $9b $00 $9c $8e $00 $9a $9b $00 $9a $9b
	.db $00 $9a $ac $88 $9a $9b $9c $9f $ac $8e $8f $ae $9b $af $ae $8f
	.db $6d $6d $00 $00 $6e $6e $97 $b7 $00 $95 $a7 $3e $00 $a5 $3e $54
	.db $90 $82 $83 $29 $3e $3e $3e $3e $54 $5d $5d $3e $5d $3e $3e $3e
	.db $29 $85 $86 $87 $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e
	.db $00 $00 $00 $00 $a0 $a1 $00 $00 $3e $b1 $a1 $00 $3e $3e $b2 $00
	.db $84 $3e $54 $5d $94 $3e $5d $3e $a4 $54 $3e $3e $3e $3e $3e $3e
	.db $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $36
	.db $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $3e $37 $3e $3e $3e
	.db $3e $3e $3e $93 $3e $3e $3e $a3 $3e $3e $3e $b3 $3e $3e $3e $3e
	.db $a2 $b5 $b6 $00 $92 $b0 $a6 $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $bc $be $00 $00 $bd $bf $00 $00 $00 $3c $00 $00 $00 $3a $00 $00
	.db $00 $84 $85 $29 $93 $94 $3e $3e $a3 $54 $5d $3e $3e $3e $3e $36
	.db $29 $86 $87 $00 $3e $3e $97 $a7 $3e $3e $3e $b7 $37 $3e $3e $3e
	.db $53 $00 $00 $00 $63 $00 $53 $00 $de $de $de $de $df $df $df $df
	.db $00 $3c $00 $00 $00 $3b $00 $00 $00 $3a $00 $00 $00 $3c $00 $00
	.db $3e $3e $3e $82 $90 $3e $3e $3e $a0 $a1 $3e $3e $00 $b1 $b2 $3e
	.db $83 $3e $3e $3e $3e $3e $3e $95 $3e $3e $a4 $a5 $3e $b3 $b4 $00
	.db $48 $49 $4a $5c $58 $59 $5c $6c $34 $35 $6c $6d $00 $00 $6d $6e
	.db $1a $1b $48 $49 $1a $1b $58 $59 $31 $32 $34 $34 $80 $81 $78 $79
	.db $53 $00 $00 $00 $63 $00 $53 $00 $63 $35 $53 $00 $63 $00 $63 $00
	.db $48 $49 $4a $4b $58 $59 $5a $5b $68 $69 $6a $6b $78 $79 $7a $7b
	.db $7c $7c $7d $7d $7c $7c $7d $7d $48 $49 $4a $4b $58 $59 $5a $5b
	.db $7d $7d $7e $7e $7d $7d $7e $7e $80 $81 $00 $6e $31 $32 $00 $6f
	.db $7f $7f $63 $53 $7f $7f $63 $63 $6e $00 $73 $63 $6f $00 $00 $73
	.db $4a $4b $00 $00 $5a $5b $00 $00 $34 $34 $34 $35 $7a $7b $00 $00
	.db $68 $69 $6a $6b $78 $79 $7a $7b $33 $33 $34 $35 $00 $4c $00 $00
	.db $00 $00 $00 $4c $00 $00 $00 $4c $5c $5c $00 $4c $6c $6c $00 $4c
	.db $bc $be $bc $be $bd $bf $bd $bf $4e $68 $69 $63 $4f $78 $79 $73
	.db $1a $1b $00 $00 $1a $1b $53 $00 $31 $32 $63 $00 $80 $81 $63 $00
	.db $33 $34 $34 $35 $00 $4c $4f $00 $00 $4c $4f $00 $00 $4c $4f $00
	.db $6d $6d $33 $34 $6e $6e $00 $4c $6f $6f $00 $4c $00 $00 $00 $4c
	.db $00 $4c $4f $00 $00 $4c $4f $00 $00 $4c $4f $00 $00 $4c $4f $00
	.db $00 $73 $4f $00 $7c $7d $7e $7f $00 $53 $6a $6b $00 $63 $7a $7b
	.db $00 $8e $9c $00 $9b $39 $ae $8f $af $38 $af $8e $38 $39 $ae $9c
	.db $00 $00 $8e $9c $9b $39 $00 $00 $9c $8e $9c $38 $9b $39 $00 $00
	.db $9c $8e $38 $af $9b $39 $8e $9c $9c $8e $9c $38 $9b $39 $ae $8f
	.db $bc $be $bc $be $bd $bf $bd $bf $92 $b0 $a6 $00 $a2 $b5 $b6 $00
	.db $9c $af $9c $89 $9e $8f $98 $99 $9f $af $9f $00 $88 $ae $8a $00
	.db $8a $8b $8c $8d $00 $00 $00 $9d $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $00 $8e $9c $9b $aa $ab $9c $9c $ad $ac $38 $9b $ac $ad $8e
	.db $00 $aa $ad $ab $ad $ad $ac $ad $9c $28 $00 $aa $9b $39 $8f $28
	.db $a8 $a9 $96 $00 $92 $b0 $a6 $00 $a2 $b5 $b6 $00 $a2 $b5 $b6 $00
	.db $00 $a3 $b7 $00 $00 $91 $3e $00 $00 $3e $3e $00 $00 $91 $3e $00
	.db $9c $8e $00 $9a $9b $00 $9a $9c $00 $9a $ac $38 $9a $9c $ae $8f
	.db $9a $00 $9c $9b $9c $9a $00 $8f $af $9c $9a $00 $38 $39 $9c $9a
	.db $a2 $b5 $b6 $00 $92 $b0 $a6 $00 $a2 $b5 $b6 $00 $a2 $b5 $b6 $00
	.db $00 $91 $3e $00 $00 $3e $3e $00 $00 $91 $3e $00 $00 $3e $3e $00
	.db $bc $be $bc $be $bd $bf $bd $bf $9c $00 $00 $9b $38 $39 $ae $9c
	.db $9c $8e $38 $af $9b $39 $8e $9c $bc $be $bc $be $bd $bf $bd $bf
	.db $6d $6d $33 $34 $6e $6e $00 $4c $6f $6f $00 $4c $00 $00 $00 $4d
	.db $33 $34 $34 $35 $00 $4c $4f $00 $00 $4c $4f $00 $00 $4d $4e $00
	.db $b9 $be $9b $9c $bd $b9 $00 $8e $9c $ac $9a $00 $38 $39 $9b $9a
	.db $a2 $b5 $bc $be $92 $b0 $bd $bf $a2 $ba $00 $00 $a9 $96 $a8 $00
	.db $bc $be $b6 $00 $bd $bf $b6 $00 $92 $b0 $a6 $00 $a2 $b5 $b6 $00
	.db $bc $be $00 $00 $bd $bf $00 $00 $bc $be $00 $00 $bd $bf $00 $00
	.db $00 $4c $4f $00 $00 $4c $4f $00 $33 $34 $34 $34 $00 $4c $4f $00
	.db $8a $8b $8c $8d $00 $00 $00 $9d $48 $49 $4a $4b $58 $59 $5a $5b
	.db $9c $8e $4f $00 $9b $39 $4f $00 $bc $be $4f $00 $bd $bf $4f $00
	.db $9a $4c $4f $00 $00 $9a $4f $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $00 $91 $3e $00 $00 $3e $3e $00 $bc $be $b9 $bb $bd $bf $bd $b9
	.db $b8 $be $b8 $be $bd $bf $bd $bf $00 $4c $4f $00 $00 $4d $4e $00
	.db $00 $aa $ad $ab $ad $ad $ac $ad $b8 $be $b8 $be $bd $bf $bd $bf
	.db $00 $91 $3e $00 $00 $3e $3e $00 $bc $be $bc $be $bd $bf $bd $bf
	.db $00 $91 $b8 $be $00 $3e $bd $bf $00 $91 $3e $00 $00 $3e $3e $00
	.db $bc $be $bc $be $bd $bf $bd $bf $00 $91 $3e $00 $00 $3e $3e $00
	.db $bc $be $bc $be $bd $bf $bd $bf $00 $4d $4e $00 $00 $4c $4f $00
	.db $b8 $be $b8 $be $bd $bf $bd $bf $00 $91 $3e $00 $00 $3e $3e $00
	.db $b8 $be $b8 $be $bd $bf $bd $bf $92 $b0 $a6 $00 $a2 $b5 $b6 $00
	.db $b8 $be $b8 $be $bd $bf $bd $bf $5c $5c $00 $4c $6c $6c $00 $4c
	.db $b8 $be $b8 $be $bd $bf $bd $bf $9c $ad $ac $38 $9b $ac $ad $8e


roomGroupPalettes1:
	.db $55 $55 $55 $55 $55 $55 $55 $55 $55 $05 $55 $55 $50 $00 $7f $fd
	.db $aa $aa $aa $a2 $aa $aa $aa $aa $5f $09 $aa $aa $0a $00 $aa $aa
	.db $aa $bb $aa $aa $a0 $b0 $a8 $ae $aa $a8 $a5 $bb $aa $aa $aa $aa
	.db $ff $ff $ff $f5 $ff $ff $ff $ff $ff $55 $d7 $7d $ff $55 $f5 $5f
	.db $aa $aa $7d $f7 $fd $99 $aa $af $9b $59 $55 $a5 $5f $55 $55 $55
	.db $a5 $55 $f5 $a5 $f5


roomGroupMetadata2:
	.dw roomSectionMetadata_2_0
	.dw roomSectionMetadata_2_1
	.dw roomSectionMetadata_2_2
	.dw roomSectionMetadata_2_3
	.dw roomSectionMetadata_2_4

roomSectionMetadata_2_0:
	.db $01
	.dw roomMetadata_2_0_0
	.dw roomMetadata_2_0_1
	.db $e0 $00
	.db $00 $d1

roomSectionMetadata_2_1:
	.db $00
	.dw roomMetadata_2_1_0

roomSectionMetadata_2_2:
	.db $01
	.dw roomMetadata_2_2_0
	.dw roomMetadata_2_2_1
	.db $e0 $00
	.db $00 $e0

roomSectionMetadata_2_3:
	.db $02
	.dw roomMetadata_2_3_0
	.dw roomMetadata_2_3_1
	.dw roomMetadata_2_3_2
	.db $e0 $03
	.db $fd $00
	.db $00 $e0

roomSectionMetadata_2_4:
	.db $01
	.dw roomMetadata_2_4_0
	.dw roomMetadata_2_4_1
	.db $e0 $00
	.db $00 $e0

roomMetadata_2_1_0:
	.db $05
	.db $00 $00 $00 $00 $00 $00 $27 $20
	.db $00 $00 $00 $00 $00 $11 $28 $27
	.db $11 $11 $12 $13 $11 $01 $01 $2f
	.db $35 $35 $01 $01 $01 $01 $01 $01
	.db $24 $24 $24 $36 $2d $2c $2d $24
	.db $03 $03 $38 $03 $03 $38 $38 $03

	.db $21 $21 $21 $21 $23 $20 $21 $22
	.db $20 $21 $22 $23 $25 $27 $25 $26
	.db $27 $25 $26 $27 $2b $28 $29 $2a
	.db $28 $29 $2a $2f $01 $2f $01 $2e
	.db $24 $36 $2e $36 $24 $24 $2d $2e
	.db $03 $03 $38 $38 $03 $03 $38 $03

	.db $23 $22 $20 $21 $22 $23 $20 $21
	.db $27 $25 $27 $25 $26 $27 $27 $20
	.db $3a $2f $3a $29 $2a $2b $3a $25
	.db $2d $2d $39 $2f $2e $01 $39 $29
	.db $2c $24 $24 $2d $2e $2d $2c $2d
	.db $03 $03 $38 $38 $38 $38 $03 $03

	.db $21 $21 $21 $23 $20 $21 $21 $22
	.db $22 $22 $22 $25 $27 $22 $25 $26
	.db $26 $27 $25 $3a $2b $25 $26 $2e
	.db $2a $2b $2f $39 $2f $29 $2a $2e
	.db $2e $36 $2d $2d $2c $2d $2e $2e
	.db $38 $03 $34 $03 $34 $03 $38 $03

	.db $20 $22 $20 $21 $22 $22 $23 $25
	.db $27 $25 $27 $25 $26 $27 $25 $01
	.db $2b $2f $3a $29 $2a $2b $2f $01
	.db $2c $2d $39 $2f $2e $01 $2d $2d
	.db $36 $24 $24 $36 $2e $2c $2d $24
	.db $03 $38 $03 $03 $38 $03 $38 $03

	.db $00 $00 $00 $11 $12 $13 $11 $16
	.db $12 $13 $11 $01 $01 $01 $01 $16
	.db $01 $01 $35 $35 $01 $10 $10 $16
	.db $2c $2d $35 $01 $10 $14 $10 $0b
	.db $24 $24 $36 $36 $14 $10 $14 $0f
	.db $03 $03 $38 $03 $03 $38 $38 $03


roomMetadata_2_0_1:
	.db $02
	.db $0c $0d $0d $04 $0d $12 $00 $00
	.db $0d $01 $04 $0d $01 $01 $12 $11
	.db $01 $04 $0d $01 $36 $01 $01 $01
	.db $03 $38 $03 $03 $03 $37 $08 $35
	.db $03 $0c $0d $0c $0c $0c $03 $03
	.db $0c $0d $03 $0d $0c $0c $0d $03

	.db $00 $11 $12 $00 $00 $00 $00 $00
	.db $11 $01 $01 $12 $00 $00 $00 $00
	.db $01 $01 $01 $17 $12 $13 $11 $12
	.db $35 $36 $01 $1b $35 $36 $17 $01
	.db $03 $03 $37 $1f $1e $1e $1f $37
	.db $0c $0d $01 $01 $1b $01 $1b $01

	.db $00 $00 $00 $00 $00 $00 $00 $00
	.db $00 $13 $00 $00 $11 $12 $00 $00
	.db $11 $01 $12 $11 $01 $01 $12 $11
	.db $01 $01 $35 $01 $36 $37 $35 $36
	.db $37 $37 $09 $01 $01 $0d $03 $03
	.db $0d $0c $0c $07 $01 $01 $0d $0c


roomMetadata_2_2_1:
	.db $03
	.db $11 $11 $12 $11 $01 $01 $01 $12
	.db $30 $30 $30 $30 $30 $30 $30 $30
	.db $31 $31 $31 $31 $31 $31 $31 $31
	.db $33 $33 $33 $33 $33 $33 $33 $33
	.db $01 $01 $08 $08 $08 $03 $03 $05
	.db $01 $36 $35 $0d $0d $0d $04 $0c

	.db $11 $01 $12 $13 $11 $01 $01 $01
	.db $30 $30 $30 $30 $30 $30 $30 $30
	.db $31 $31 $31 $31 $31 $31 $31 $31
	.db $33 $33 $33 $33 $33 $33 $33 $33
	.db $03 $03 $03 $08 $08 $08 $08 $08
	.db $0c $0c $03 $0d $0d $02 $36 $36

	.db $01 $01 $01 $01 $12 $11 $01 $01
	.db $30 $30 $30 $30 $30 $30 $30 $30
	.db $31 $31 $31 $31 $31 $31 $31 $31
	.db $33 $33 $33 $33 $33 $33 $33 $33
	.db $08 $03 $03 $03 $03 $03 $03 $03
	.db $35 $02 $03 $36 $36 $35 $0d $0c

	.db $01 $01 $12 $11 $01 $12 $13 $11
	.db $30 $30 $30 $30 $30 $30 $30 $30
	.db $31 $31 $31 $31 $31 $31 $31 $31
	.db $33 $33 $33 $33 $33 $33 $33 $33
	.db $03 $02 $01 $01 $01 $01 $01 $01
	.db $0d $35 $08 $08 $03 $05 $02 $35


roomMetadata_2_0_0:
	.db $02
	.db $00 $00 $00 $00 $00 $13 $00 $11
	.db $00 $00 $00 $00 $11 $17 $12 $10
	.db $11 $12 $13 $11 $01 $1b $10 $14
	.db $35 $17 $36 $36 $35 $1b $14 $10
	.db $10 $1b $17 $10 $10 $1b $1d $1d
	.db $03 $38 $03 $03 $19 $1a $0c $0c

	.db $17 $14 $1b $14 $17 $10 $11 $12
	.db $1b $18 $1b $18 $1b $18 $1b $10
	.db $1b $01 $1b $01 $1b $01 $1b $14
	.db $1b $01 $1b $01 $1b $01 $1b $10
	.db $1f $1e $1f $1e $1f $1e $1f $1d
	.db $0c $0c $0c $0c $0c $0c $0c $0c

	.db $00 $00 $0d $0c $07 $01 $12 $00
	.db $12 $11 $01 $0d $0c $07 $01 $11
	.db $10 $01 $01 $01 $0d $0d $07 $35
	.db $14 $35 $01 $01 $02 $05 $03 $38
	.db $1d $1e $36 $36 $04 $0d $01 $38
	.db $0c $19 $1a $03 $03 $38 $03 $03


roomMetadata_2_2_0:
	.db $03
	.db $12 $00 $00 $11 $01 $04 $0d $0d
	.db $01 $12 $11 $36 $04 $0d $01 $01
	.db $01 $01 $01 $03 $06 $02 $01 $0c
	.db $10 $10 $01 $01 $0d $07 $0d $0c
	.db $14 $10 $2c $2d $36 $0d $07 $0d
	.db $03 $38 $03 $03 $38 $38 $03 $03

	.db $01 $01 $01 $12 $00 $00 $11 $12
	.db $01 $01 $01 $01 $12 $11 $01 $01
	.db $01 $01 $01 $01 $01 $01 $01 $37
	.db $0d $01 $01 $01 $01 $01 $01 $0d
	.db $0d $35 $36 $01 $01 $01 $36 $35
	.db $35 $0d $35 $36 $36 $35 $35 $36

	.db $01 $01 $01 $12 $00 $00 $11 $12
	.db $01 $01 $01 $01 $12 $11 $01 $01
	.db $01 $01 $01 $01 $01 $01 $01 $37
	.db $0d $01 $01 $01 $01 $01 $01 $0d
	.db $0d $35 $36 $01 $01 $01 $36 $35
	.db $35 $0d $35 $36 $36 $35 $35 $36

	.db $13 $11 $01 $01 $04 $0d $01 $16
	.db $36 $35 $36 $04 $0d $01 $01 $16
	.db $03 $03 $02 $02 $08 $01 $01 $16
	.db $0d $01 $37 $01 $01 $01 $01 $0b
	.db $35 $36 $36 $35 $35 $36 $01 $0f
	.db $03 $03 $03 $03 $03 $03 $03 $03


roomMetadata_2_3_2:
	.db $00
	.db $01 $01 $42 $00 $00 $40 $01 $01
	.db $01 $42 $11 $11 $12 $13 $40 $41
	.db $42 $11 $01 $36 $08 $01 $12 $11
	.db $01 $01 $01 $03 $0d $01 $01 $01
	.db $36 $35 $03 $0d $01 $35 $36 $35
	.db $03 $03 $0d $35 $36 $04 $03 $02


roomMetadata_2_3_1:
	.db $03
	.db $00 $11 $12 $11 $04 $0d $01 $12
	.db $11 $01 $01 $04 $0d $01 $01 $01
	.db $01 $01 $02 $02 $03 $08 $01 $01
	.db $30 $30 $31 $30 $30 $30 $31 $30
	.db $33 $32 $33 $33 $32 $33 $33 $32
	.db $36 $02 $02 $03 $03 $38 $03 $03

	.db $00 $00 $00 $11 $12 $13 $00 $00
	.db $12 $13 $11 $01 $01 $01 $12 $11
	.db $01 $01 $01 $02 $03 $02 $01 $01
	.db $30 $30 $31 $30 $30 $30 $31 $30
	.db $33 $32 $33 $33 $32 $33 $33 $32
	.db $03 $38 $03 $08 $08 $08 $08 $03

	.db $00 $00 $00 $11 $12 $13 $00 $00
	.db $12 $13 $11 $01 $01 $01 $12 $11
	.db $01 $01 $01 $01 $01 $01 $01 $01
	.db $30 $30 $31 $30 $30 $30 $31 $30
	.db $33 $32 $33 $33 $32 $33 $33 $32
	.db $03 $03 $02 $02 $02 $02 $03 $38

	.db $00 $00 $00 $11 $12 $13 $00 $00
	.db $12 $13 $11 $01 $01 $01 $12 $11
	.db $01 $01 $01 $01 $01 $01 $01 $01
	.db $30 $30 $31 $30 $30 $30 $31 $30
	.db $33 $32 $33 $33 $32 $33 $33 $32
	.db $03 $08 $01 $03 $06 $02 $01 $01


roomMetadata_2_4_1:
	.db $03
	.db $40 $01 $01 $42 $40 $01 $01 $01
	.db $45 $40 $41 $00 $00 $40 $40 $42
	.db $01 $45 $11 $12 $00 $13 $11 $46
	.db $01 $02 $02 $05 $03 $02 $02 $03
	.db $35 $36 $04 $0d $36 $36 $01 $01
	.db $01 $02 $03 $08 $08 $03 $05 $03

	.db $01 $01 $01 $01 $01 $01 $01 $01
	.db $40 $41 $40 $01 $42 $40 $40 $41
	.db $46 $45 $44 $01 $45 $00 $00 $00
	.db $38 $07 $01 $01 $01 $46 $45 $44
	.db $38 $0d $07 $35 $36 $4d $36 $35
	.db $03 $03 $02 $02 $02 $03 $03 $03

	.db $01 $01 $01 $01 $01 $01 $01 $01
	.db $40 $42 $41 $40 $01 $01 $42 $41
	.db $00 $00 $00 $44 $01 $01 $46 $45
	.db $46 $45 $44 $01 $01 $01 $01 $01
	.db $01 $01 $36 $36 $01 $01 $35 $36
	.db $03 $37 $08 $01 $08 $37 $03 $02

	.db $01 $01 $01 $42 $00 $00 $00 $44
	.db $40 $42 $41 $00 $00 $00 $44 $01
	.db $44 $46 $45 $44 $45 $44 $01 $01
	.db $01 $01 $17 $01 $01 $01 $36 $35
	.db $35 $36 $1b $35 $17 $35 $02 $03
	.db $03 $03 $03 $03 $03 $03 $03 $03


roomMetadata_2_3_0:
	.db $00
	.db $16 $40 $01 $01 $0d $07 $01 $01
	.db $16 $45 $40 $40 $01 $0d $07 $01
	.db $0a $01 $45 $44 $08 $03 $38 $38
	.db $0e $01 $01 $01 $0d $0d $0c $38
	.db $38 $02 $35 $35 $35 $36 $0d $38
	.db $03 $03 $03 $03 $03 $03 $03 $0c


roomMetadata_2_4_0:
	.db $01
	.db $38 $01 $01 $01 $01 $04 $0c $0d
	.db $38 $40 $42 $40 $04 $0d $0d $42
	.db $38 $45 $44 $04 $0c $0d $01 $46
	.db $38 $36 $04 $0d $0d $01 $35 $1e
	.db $03 $03 $03 $37 $08 $37 $03 $38
	.db $0c $0c $02 $02 $02 $0d $0d $03

	.db $01 $01 $48 $4a $48 $49 $4a $01
	.db $40 $48 $4a $42 $40 $48 $49 $4a
	.db $45 $40 $42 $44 $45 $40 $40 $41
	.db $1e $47 $46 $4b $01 $47 $46 $46
	.db $36 $4c $4d $4f $4d $4e $36 $1a
	.db $03 $03 $03 $02 $02 $03 $03 $02


roomMetadata_d_0_1:
	.db $04
	.db $00 $00 $00 $00 $00 $20 $22 $20
	.db $11 $12 $13 $00 $00 $27 $27 $27
	.db $3b

; cont