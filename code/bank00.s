
loadCurrPlayerSprChrBanks:
	ldy wCurrPlayer.w
	lda @playerBaseChrBank.w, y
	sta wChrBankSpr_0000
	clc
	adc #$01
	sta wChrBankSpr_0400
	rts

@playerBaseChrBank:
	.db $00 $04 $02 $06


getCurrRoomsChrBanks:
; get room group data offset
	lda wCurrRoomGroup
	asl a
	tay
	lda roomChrBanksData.w, y
	sta wCurrRoomGroupChrBanks
	lda roomChrBanksData.w+1, y
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

	jsr updateSprChrBanks_0_to_c00_1400
	jmp updateSprChrBank_1000_1800_1c00_bgChrBanks_0_to_c00


.include "data/roomChrBanks.s"


getCurrChrBankTileCollisionTypeOffsets:
	ldx #$00
	lda wChrBankBG_0400
	jsr @get8bytesFromX

	ldx #$08
	lda wChrBankBG_0800

@get8bytesFromX:
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
B0_0410:		lda data_00_043d.w, y	; b9 3d 84
B0_0413:		sta $08			; 85 08
B0_0415:		lda data_00_043d.w+1, y	; b9 3e 84

B0_0418:		sta $09			; 85 09
B0_041a:		ldy #$00		; a0 00
B0_041c:		lda ($08), y	; b1 08
B0_041e:		iny				; c8 
B0_041f:		sta $0a			; 85 0a
B0_0421:		lda ($08), y	; b1 08
B0_0423:		iny				; c8 
-	sta wCurrChrBanksTileCollisionTypeOffsets.w, x	; 9d 70 07
B0_0427:		inx				; e8 
B0_0428:		dec $0a			; c6 0a
	bne -

B0_042c:		txa				; 8a 
B0_042d:		and #$07		; 29 07
B0_042f:		bne B0_041c ; d0 eb

B0_0431:		rts				; 60 

B0_0432:		lda data_00_0493.w, y	; b9 93 84
B0_0435:		sta $08			; 85 08
B0_0437:		lda data_00_0493.w+1, y	; b9 94 84
B0_043a:		jmp B0_0418		; 4c 18 84

data_00_043d:
	.dw data_00_0499
	.dw data_00_04a3
	.dw data_00_0499
	.dw data_00_04a7
	.dw data_00_0499
	.dw data_00_04b3
	.dw data_00_04ab
	.dw data_00_0499
	.dw data_00_0499
	.dw data_00_04af
	.dw data_00_0499
	.dw data_00_0499
	.dw data_00_04b3
	.dw data_00_0499
	.dw data_00_0499
	.dw data_00_04b9
	.dw data_00_04bd
	.dw data_00_04bd
	.dw data_00_04bd
	.dw data_00_04c1
	.dw data_00_0499
	.dw data_00_04c9
	.dw data_00_04cd
	.dw data_00_0499
	.dw data_00_0499
	.dw data_00_04d3
	.dw data_00_0499
	.dw data_00_0499
	.dw data_00_04d9
	.dw data_00_0499
	.dw data_00_04df
	.dw data_00_0499
	.dw data_00_04e3
	.dw data_00_04e7
	.dw data_00_04eb
	.dw data_00_0499
	.dw data_00_04f1
	.dw data_00_04f1
	.dw data_00_0499
	.dw data_00_04f7
	.dw data_00_0499
	.dw data_00_04fd
	.dw data_00_049f

data_00_0493:
	.dw data_00_049b
	.dw data_00_049b
	.dw data_00_049b

data_00_0499:
	.db $08 $80

data_00_049b:
	.db $06 $bc $02 $c0

data_00_049f:
	.db $06 $7b $02 $80
	
data_00_04a3:
	.db $06 $7e $02 $80

data_00_04a7:
	.db $06 $b7 $02 $c0

data_00_04ab:
	.db $06 $b9 $02 $c0
	
data_00_04af:
	.db $06 $b8 $02 $c0

data_00_04b3:
	.db $04 $b8 $02 $b9 $02 $c0
	
data_00_04b9:
	.db $06 $7a $02 $80

data_00_04bd:
	.db $06 $7c $02 $80
	
data_00_04c1:
	.db $02 $b6 $01 $b7 $03 $b8 $02 $c0
	
data_00_04c9:
	.db $06 $78 $02 $80
	
data_00_04cd:
	.db $01 $b8 $05 $ba $02 $c0

data_00_04d3:
	.db $04 $b2 $02 $b4 $02 $c0

data_00_04d9:
	.db $04 $ba $02 $bb $02 $c0

data_00_04df:
	.db $06 $a0 $02 $c0

data_00_04e3:
	.db $06 $b8 $02 $c0

data_00_04e7:
	.db $06 $7c $02 $80
	
data_00_04eb:
	.db $04 $b8 $02 $b9 $02 $c0

data_00_04f1:
	.db $04 $b2 $02 $b3 $02 $c0

data_00_04f7:
	.db $04 $b7 $02 $b8 $02 $c0

data_00_04fd:
	.db $06 $b8 $02 $c0


getRoomSectionInternalPalettesSpecIdx:
	lda wCurrRoomGroup
	cmp #RG_MAIN_HALL
	bne +

; if The Main Hall and hard mode,
; group is 0x0f for harder enemies
	ldy wHardMode.w
	beq +

	lda #$0f

+
; get room group address
	asl a
	tay
	lda roomGroupInternalPalettes.w, y
	sta wRoomGroupInternalPalettesAddr
	lda roomGroupInternalPalettes.w+1, y
	sta wRoomGroupInternalPalettesAddr+1

; get room section address
	lda wCurrRoomSection
	asl a
	asl a
	tay
	lda (wRoomGroupInternalPalettesAddr), y
	sta wRoomSectionInternalBGPalettesAddr
	iny
	lda (wRoomGroupInternalPalettesAddr), y
	sta wRoomSectionInternalBGPalettesAddr+1

; store offset for sprites
	iny
	sty wRoomSectionSprPalettesAddrOffset
	rts


loadCurrRoomsInternalPalettes:
	lda #SL_BASE_ROOM_INTERNAL_PALETTES
	jsr displayStaticLayoutA

; get bg spec idx, checking if it uses the 2nd group
	jsr getRoomSectionInternalPalettesSpecIdx
	lda #$00
	sta wCurrRoomUses2ndBGInternalPalettesSpecsGroup

	ldy wCurrRoomIdx
	lda (wRoomSectionInternalBGPalettesAddr), y
	cmp #$1c
	bcc +

	sbc #$1c
	inc wCurrRoomUses2ndBGInternalPalettesSpecsGroup

; get offset for spec idx (*9)
+	sta wCurrRoomBGInternalPalettesSpecOffset
	asl a
	asl a
	asl a
	clc
	adc wCurrRoomBGInternalPalettesSpecOffset
	tay

.ifdef MID_STAGE_PALETTE_SWAP
	jsr populate2ndInternalBGPalettes
	nop
.else
; set up 3 palette loops of 3 colours
; palette 0, and transparent colour, is always the same
	ldx wVramQueueNextIdxToFill
	lda #$03
.endif
	sta wNumInternalPalettesLeft

@nextPalette:
	lda #$03
	sta wNumColoursLeftForCurrPalette

@nextColour:
	lda wCurrRoomUses2ndBGInternalPalettesSpecsGroup
	bne @getFrom2ndBGSpecGroup

	lda roomGroupInternalPalettes@bgSpecs.w, y

@afterGettingPaletteColour:
; -$0c to populate from palette 1 colour 1
	sta wVramQueue.w-$0c, x
	iny
	inx
	dec wNumColoursLeftForCurrPalette
	bne @nextColour

	inx
	dec wNumInternalPalettesLeft
	bne @nextPalette

	beq @afterBGdoSpr

@getFrom2ndBGSpecGroup:
	lda roomGroupInternalPalettes@bgSpecs2.w, y
	jmp @afterGettingPaletteColour

@afterBGdoSpr:
; y = offset for sprite address
	jsr b0_loadCurrPlayerInternalPalettes
	ldy wRoomSectionSprPalettesAddrOffset

; get room section address for sprite palettes
	lda (wRoomGroupInternalPalettesAddr), y
	sta wRoomSectionInternalSprPalettesAddr
	iny
	lda (wRoomGroupInternalPalettesAddr), y
	sta wRoomSectionInternalSprPalettesAddr+1

; get value for room, then *3
	ldy wCurrRoomIdx
	lda (wRoomSectionInternalSprPalettesAddr), y
	asl a
	clc
	adc (wRoomSectionInternalSprPalettesAddr), y
	tay

; copy 3 colours into extra palette area (palette 2)
	ldx wVramQueueNextIdxToFill
	lda #$03
	sta wNumColoursLeftForCurrPalette
-	lda roomSpecificSprPaletteGroup2.w, y
; -$10 to populate from palette 2 colour 1
	sta wVramQueue.w-$10, x
	iny
	inx
	dec wNumColoursLeftForCurrPalette
	bne -

	rts


b0_loadCurrRoomsInternalSprPalettes:
	jsr getRoomSectionInternalPalettesSpecIdx
	jmp loadCurrRoomsInternalPalettes@afterBGdoSpr


func_00_05a4:
B0_05a4:		jsr b0_loadCurrRoomsInternalSprPalettes		; 20 9e 85
B0_05a7:		ldx wVramQueueNextIdxToFill			; a6 1d
B0_05a9:		ldy #$00		; a0 00
-	lda $85b8, y	; b9 b8 85
B0_05ae:		sta $02e8, x	; 9d e8 02
B0_05b1:		inx				; e8 
B0_05b2:		iny				; c8 
B0_05b3:		cpy #$03		; c0 03
	bcc -

B0_05b7:		rts				; 60 


B0_05b8:		jsr $3726		; 20 26 37


b0_loadCurrPlayerInternalPalettes:
	ldy wCurrPlayer.w
	lda @staticLayoutIdxes, y
	jsr displayStaticLayoutA
	lda #SL_INTERNAL_PALETTE_DUMMY_WRITE
	jmp displayStaticLayoutA

@staticLayoutIdxes:
	.db SL_TREVOR_INTERNAL_PALETTES
	.db SL_SYPHA_INTERNAL_PALETTES
	.db SL_GRANT_INTERNAL_PALETTES
	.db SL_ALUCARD_INTERNAL_PALETTES


.include "data/internalPalettes.s"

staticLayout_trevorInternalPalettes:
	.db $10 $3f $0f $08 $26 $37 $0f $0f
	.db $22 $34 $0f $0f $0f $0f $0f $0f
	.db $16 $25 $ff

staticLayout_grantInternalPalettes:
	.db $10 $3f $0f $08 $15 $38 $0f $0f
	.db $22 $34 $0f $0f $0f $0f $0f $0f
	.db $16 $25 $ff

staticLayout_syphaInternalPalettes:
	.db $10 $3f $0f $21 $11 $20 $0f $0f
	.db $22 $34 $0f $0f $0f $0f $0f $0f
	.db $16 $25 $ff

staticLayout_alucardInternalPalettes:
	.db $10 $3f $0f $0f $15 $36 $0f $0f
	.db $22 $34 $0f $0f $0f $0f $0f $0f
	.db $16 $25 $ff

roomSpecificSprPaletteGroup2:
	.db $0f $32 $26
	.db $0f $20 $14
	.db $26 $0f $1b
	.db $28 $0f $1b
	.db $0f $13 $25
	.db $0f $17 $36
	.db $0f $15 $35
	.db $0f $00 $39
	.db $0f $13 $17
	.db $0b $2a $39
	.db $0b $2a $3b
	.db $0f $14 $32
	.db $0f $18 $28
	.db $10 $00 $23
	.db $0f $08 $38
	.db $02 $08 $38
	.db $34 $00 $22
	.db $16 $26 $20
	.db $0f $14 $35
	.db $0f $13 $25
	.db $0f $08 $38
	.db $0f $04 $37
	.db $0f $00 $10
	.db $07 $00 $10
	.db $00 $10 $32
	.db $0f $17 $23

.include "code/gameState7_debugMode.s"


func_00_0b70:
B0_0b70:		ldy #$02		; a0 02
B0_0b72:		bne B0_0b76 ; d0 02

func_00_0b74:
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
B0_0bb4:		lda wVramQueue.w, x	; bd 00 03
B0_0bb7:		clc				; 18 
B0_0bb8:		adc $12			; 65 12
B0_0bba:		bpl B0_0bbe ; 10 02

B0_0bbc:		lda #$0f		; a9 0f
B0_0bbe:		sta wVramQueue.w, x	; 9d 00 03
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
B0_0bec:		lda wCurrScore.w, y
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


B0_0c06:		lda wCurrScore+2			; a5 38
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
B0_0c1c:		lda wCurrLivesLeft			; a5 35
B0_0c1e:		clc				; 18 
B0_0c1f:		jsr $8c69		; 20 69 8c
B0_0c22:		bcs B0_0c2e ; b0 0a

B0_0c24:		sta wCurrLivesLeft			; 85 35
B0_0c26:		lda #$4b		; a9 4b
B0_0c28:		jsr playSound		; 20 5f e2
B0_0c2b:		jsr vramQueueNumLives		; 20 3c 8e
B0_0c2e:		rts				; 60 


B0_0c2f:		sta $00			; 85 00
B0_0c31:		lda wNumHearts			; a5 84
B0_0c33:		and #$0f		; 29 0f
B0_0c35:		sta $01			; 85 01
B0_0c37:		lda wNumHearts			; a5 84
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
B0_0c56:		sta wNumHearts			; 85 84
B0_0c58:		rts				; 60 


B0_0c59:		lda wNumHearts			; a5 84
B0_0c5b:		clc				; 18 
B0_0c5c:		jsr $8c69		; 20 69 8c
B0_0c5f:		bcs B0_0c64 ; b0 03

B0_0c61:		sta wNumHearts			; 85 84
B0_0c63:		rts				; 60 


B0_0c64:		lda #$99		; a9 99
B0_0c66:		sta wNumHearts			; 85 84
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


vramQueueNumHearts:
	lda #>$2077
	sta wVramQueueDest+1
	lda #<$2077
	sta wVramQueueDest
	lda wNumHearts
	sta wCurrNumToVramQueue
	jmp vramQueueControlByte1AndNumsDigitTiles


vramQueueLifeBars:
; player life
	lda #>$2067
	sta wVramQueueDest+1
	lda #<$2067
	sta wVramQueueDest
	lda wPlayerHealth
B0_0cb0:		sta $08			; 85 08
B0_0cb2:		lda #$83		; a9 83
B0_0cb4:		sta $0a			; 85 0a
B0_0cb6:		lda #$84		; a9 84
B0_0cb8:		sta $0b			; 85 0b
B0_0cba:		jsr func_00_0cd1		; 20 d1 8c

; enemy life
B0_0cbd:		lda #>$2087		; a9 20
B0_0cbf:		sta wVramQueueDest+1			; 85 62
B0_0cc1:		lda #<$2087		; a9 87
B0_0cc3:		sta wVramQueueDest			; 85 61
B0_0cc5:		lda wBossHealth			; a5 3d
B0_0cc7:		sta $08			; 85 08
B0_0cc9:		lda #$93		; a9 93
B0_0ccb:		sta $0a			; 85 0a
B0_0ccd:		lda #$94		; a9 94
B0_0ccf:		sta $0b			; 85 0b

func_00_0cd1:
B0_0cd1:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8
B0_0cd4:		lda #$08		; a9 08
B0_0cd6:		sta $09			; 85 09
B0_0cd8:		lda $08			; a5 08
B0_0cda:		beq B0_0d0d ; f0 31

B0_0cdc:		cmp #$08		; c9 08
B0_0cde:		bcc B0_0cf3 ; 90 13

B0_0ce0:		lda $0a			; a5 0a
B0_0ce2:		sta wVramQueue.w, x	; 9d 00 03
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
B0_0cf9:		sta wVramQueue.w, x	; 9d 00 03
B0_0cfc:		inx				; e8 
B0_0cfd:		dec $09			; c6 09
B0_0cff:		beq B0_0d18 ; f0 17

B0_0d01:		bne B0_0d0d ; d0 0a

B0_0d03:		lda $0a			; a5 0a
B0_0d05:		sta wVramQueue.w, x	; 9d 00 03
B0_0d08:		inx				; e8 
B0_0d09:		dec $09			; c6 09
B0_0d0b:		beq B0_0d18 ; f0 0b

B0_0d0d:		ldy $09			; a4 09
B0_0d0f:		lda #$85		; a9 85
B0_0d11:		sta wVramQueue.w, x	; 9d 00 03
B0_0d14:		inx				; e8 
B0_0d15:		dey				; 88 
B0_0d16:		bne B0_0d11 ; d0 f9

B0_0d18:		lda #$ff		; a9 ff
B0_0d1a:		sta wVramQueue.w, x	; 9d 00 03
B0_0d1d:		inx				; e8 
B0_0d1e:		stx wVramQueueNextIdxToFill			; 86 1d
B0_0d20:		rts				; 60 


vramQueueTimeLeft:
B0_0d21:		lda #>$2052		; a9 20
B0_0d23:		sta wVramQueueDest+1			; 85 62
B0_0d25:		lda #<$2052		; a9 52
B0_0d27:		sta wVramQueueDest			; 85 61
B0_0d29:		lda wCurrTimeLeft+1			; a5 7f
B0_0d2b:		sta wCurrNumToVramQueue			; 85 08
B0_0d2d:		jsr vramQueueControlByte1AndNumsDigitTiles		; 20 fc e8
B0_0d30:		inc wVramQueueDest			; e6 61
B0_0d32:		inc wVramQueueDest			; e6 61
B0_0d34:		lda wCurrTimeLeft			; a5 7e
B0_0d36:		sta wCurrNumToVramQueue			; 85 08
B0_0d38:		jmp vramQueueControlByte1AndNumsDigitTiles		; 4c fc e8


vramQueueCurrScore:
B0_0d3b:		lda #>$2046		; a9 20
B0_0d3d:		sta wVramQueueDest+1			; 85 62
B0_0d3f:		lda #<$2046		; a9 46
B0_0d41:		sta wVramQueueDest			; 85 61
B0_0d43:		lda wCurrScore+2			; a5 38
B0_0d45:		sta wCurrNumToVramQueue			; 85 08
B0_0d47:		jsr vramQueueControlByte1AndNumsDigitTiles		; 20 fc e8
B0_0d4a:		inc wVramQueueDest			; e6 61
B0_0d4c:		inc wVramQueueDest			; e6 61
B0_0d4e:		lda wCurrScore+1			; a5 37
B0_0d50:		sta wCurrNumToVramQueue			; 85 08
B0_0d52:		jsr vramQueueControlByte1AndNumsDigitTiles		; 20 fc e8
B0_0d55:		inc wVramQueueDest			; e6 61
B0_0d57:		inc wVramQueueDest			; e6 61
B0_0d59:		lda wCurrScore			; a5 36
B0_0d5b:		sta wCurrNumToVramQueue			; 85 08
B0_0d5d:		jmp vramQueueControlByte1AndNumsDigitTiles		; 4c fc e8


B0_0d60:		bit SCANLINE_IRQ_STATUS.w		; 2c 04 52
B0_0d63:		bvc B0_0d60 ; 50 fb

B0_0d65:		rts				; 60 


func_00_0d66:
B0_0d66:		jsr $8d60		; 20 60 8d
B0_0d69:		jsr $8f6a		; 20 6a 8f
B0_0d6c:		lda #$0e		; a9 0e
B0_0d6e:		jsr displayStaticLayoutA		; 20 e9 ec
B0_0d71:		jsr vramQueueCurrScore		; 20 3b 8d
B0_0d74:		jsr vramQueueLifeBars		; 20 a6 8c
B0_0d77:		jsr vramQueueTimeLeft		; 20 21 8d
B0_0d7a:		jsr vramQueueCurrRoomGroupAndSection		; 20 96 8d
B0_0d7d:		jsr vramQueueNumHearts		; 20 97 8c
B0_0d80:		jsr vramQueueNumLives		; 20 3c 8e
B0_0d83:		jsr vramQueueOtherCharImage		; 20 4b 8e
B0_0d86:		lda #$24		; a9 24
B0_0d88:		ldx wCurrRoomMetadataByte			; a6 68
B0_0d8a:		bpl B0_0d8f ; 10 03
; vertical room
B0_0d8c:		sec				; 38 
B0_0d8d:		sbc #$04		; e9 04
B0_0d8f:		sta $0434		; 8d 34 04
B0_0d92:		sta $0435		; 8d 35 04
B0_0d95:		rts				; 60 


vramQueueCurrRoomGroupAndSection:
B0_0d96:		lda wCurrRoomGroup			; a5 32
B0_0d98:		asl a			; 0a
B0_0d99:		tay				; a8 
B0_0d9a:		lda $8dcf, y	; b9 cf 8d
B0_0d9d:		sta $08			; 85 08
B0_0d9f:		lda $8dd0, y	; b9 d0 8d
B0_0da2:		sta $09			; 85 09
B0_0da4:		lda #$20		; a9 20
B0_0da6:		sta wVramQueueDest+1			; 85 62
B0_0da8:		lda #$5b		; a9 5b
B0_0daa:		sta wVramQueueDest			; 85 61
B0_0dac:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8
B0_0daf:		ldy #$00		; a0 00
B0_0db1:		lda ($08), y	; b1 08
B0_0db3:		sta wVramQueue.w, x	; 9d 00 03
B0_0db6:		jsr setVramQueueNextFillIdxAndTerminate		; 20 dd e8
B0_0db9:		lda #$20		; a9 20
B0_0dbb:		sta wVramQueueDest+1			; 85 62
B0_0dbd:		lda #$5e		; a9 5e
B0_0dbf:		sta wVramQueueDest			; 85 61
B0_0dc1:		jsr vramQueueSetControlByte1_destToCopy_noData		; 20 b5 e8
B0_0dc4:		ldy wCurrRoomSection			; a4 33
B0_0dc6:		iny				; c8 
B0_0dc7:		lda ($08), y	; b1 08
B0_0dc9:		sta wVramQueue.w, x	; 9d 00 03
B0_0dcc:		jmp setVramQueueNextFillIdxAndTerminate		; 4c dd e8


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


vramQueueNumLives:
B0_0e3c:		lda #>$2097		; a9 20
B0_0e3e:		sta wVramQueueDest+1			; 85 62
B0_0e40:		lda #<$2097		; a9 97
B0_0e42:		sta wVramQueueDest			; 85 61
B0_0e44:		ldy wCurrLivesLeft			; a4 35
B0_0e46:		sty wCurrNumToVramQueue			; 84 08
B0_0e48:		jmp vramQueueControlByte1AndNumsDigitTiles		; 4c fc e8


vramQueueOtherCharImage:
B0_0e4b:		lda wCurrCharacterIdx			; a5 3b
B0_0e4d:		eor #$01		; 49 01
B0_0e4f:		tay				; a8 
B0_0e50:		lda wUsableChars.w, y
B0_0e53:		bmi B0_0e5c ; 30 07

B0_0e55:		tay				; a8 
B0_0e56:		lda $8e5d, y	; b9 5d 8e
B0_0e59:		jsr displayStaticLayoutA		; 20 e9 ec
B0_0e5c:		rts				; 60 


B0_0e5d:	.db $0f
B0_0e5e:		bpl B0_0e71 ; 10 11

B0_0e60:	.db $12
B0_0e61:		jsr $8e92		; 20 92 8e
B0_0e64:		ldy wCurrCharacterIdx			; a4 3b
B0_0e66:		lda $87.w, y
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
B0_0e87:		ldx wCurrRoomMetadataByte			; a6 68
B0_0e89:		bpl B0_0e8e ; 10 03

B0_0e8b:		sec				; 38 
B0_0e8c:		sbc #$04		; e9 04
B0_0e8e:		sta $0435		; 8d 35 04
B0_0e91:		rts				; 60 


B0_0e92:		ldy wCurrCharacterIdx			; a4 3b
B0_0e94:		lda wCurrSubweapon.w, y
B0_0e97:		asl a			; 0a
B0_0e98:		asl a			; 0a
B0_0e99:		clc				; 18 
B0_0e9a:		adc wCurrSubweapon.w, y
B0_0e9d:		tay				; a8 
B0_0e9e:		lda $8ecf, y	; b9 cf 8e
B0_0ea1:		sta $0418		; 8d 18 04
B0_0ea4:		lda $8ed0, y	; b9 d0 8e
B0_0ea7:		sta $04a4		; 8d a4 04
B0_0eaa:		lda $8ed1, y	; b9 d1 8e
B0_0ead:		sta $0450		; 8d 50 04
B0_0eb0:		lda $8ed2, y	; b9 d2 8e
B0_0eb3:		ldx wCurrRoomMetadataByte			; a6 68
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


func_00_0f0b:
B0_0f0b:		lda $b2			; a5 b2
B0_0f0d:		beq B0_0f35 ; f0 26

B0_0f0f:		dec $b2			; c6 b2
B0_0f11:		beq B0_0f19 ; f0 06

B0_0f13:		lda $b2			; a5 b2
B0_0f15:		and #$03		; 29 03
B0_0f17:		beq B0_0f1f ; f0 06

B0_0f19:		jsr b0_loadCurrRoomsInternalSprPalettes		; 20 9e 85
B0_0f1c:		jmp $8f4e		; 4c 4e 8f


B0_0f1f:		jsr b0_loadCurrRoomsInternalSprPalettes		; 20 9e 85
B0_0f22:		ldx wVramQueueNextIdxToFill			; a6 1d
B0_0f24:		lda #$20		; a9 20
B0_0f26:		sta $02e7, x	; 9d e7 02
B0_0f29:		sta $02eb, x	; 9d eb 02
B0_0f2c:		sta $02ef, x	; 9d ef 02
B0_0f2f:		sta $02f3, x	; 9d f3 02
B0_0f32:		jmp $8f4e		; 4c 4e 8f


B0_0f35:		lda $ad			; a5 ad
B0_0f37:		beq B0_0f4e ; f0 15

B0_0f39:		lda wGameStateLoopCounter			; a5 1a
B0_0f3b:		and #$01		; 29 01
B0_0f3d:		beq B0_0f43 ; f0 04

B0_0f3f:		dec $ad			; c6 ad
B0_0f41:		beq B0_0f19 ; f0 d6

B0_0f43:		lda $ad			; a5 ad
B0_0f45:		and #$01		; 29 01
B0_0f47:		beq B0_0f4b ; f0 02

B0_0f49:		bne B0_0f19 ; d0 ce

B0_0f4b:		jsr func_00_05a4		; 20 a4 85
B0_0f4e:		lda wGameStateLoopCounter			; a5 1a
B0_0f50:		and #$03		; 29 03
B0_0f52:		tay				; a8 
B0_0f53:		beq B0_0f61 ; f0 0c

B0_0f55:		dey				; 88 
B0_0f56:		beq B0_0f64 ; f0 0c

B0_0f58:		dey				; 88 
B0_0f59:		beq B0_0f67 ; f0 0c

B0_0f5b:		jsr $8e61		; 20 61 8e
B0_0f5e:		jmp vramQueueNumHearts		; 4c 97 8c


B0_0f61:		jmp vramQueueLifeBars		; 4c a6 8c


B0_0f64:		jmp vramQueueTimeLeft		; 4c 21 8d


B0_0f67:		jmp vramQueueCurrScore		; 4c 3b 8d


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


func_00_1f80:
B0_0f80:		jsr func_00_107f		; 20 7f 90
B0_0f83:		lda #$00		; a9 00
B0_0f85:		sta $36			; 85 36
B0_0f87:		sta $37			; 85 37
B0_0f89:		sta $38			; 85 38
B0_0f8b:		ldy $2e			; a4 2e

B0_0f8d:		lda data_00_0f9e.w, y	; b9 9e 8f
B0_0f90:		and #$0f		; 29 0f
B0_0f92:		sta wCurrRoomSection			; 85 33
B0_0f94:		lda data_00_0f9e.w, y	; b9 9e 8f
B0_0f97:		lsr a			; 4a
B0_0f98:		lsr a			; 4a
B0_0f99:		lsr a			; 4a
B0_0f9a:		lsr a			; 4a
B0_0f9b:		sta wCurrRoomGroup			; 85 32
B0_0f9d:		rts				; 60 

; nybbles room group - room section
data_00_0f9e:
	.db $00
	.db $10
	.db $13
	.db $20
	.db $21
	.db $30
	.db $40
	.db $50
	.db $60
	.db $70
	.db $75
	.db $80
	.db $90
	.db $a0
	.db $b0
	.db $c0
	.db $d0
	.db $e0


func_00_0fb0:
; room group * 3
B0_0fb0:		lda wCurrRoomGroup		; a5 32
B0_0fb2:		asl a			; 0a
B0_0fb3:		clc				; 18 
B0_0fb4:		adc wCurrRoomGroup			; 65 32
B0_0fb6:		tay				; a8 

; use 2nd val if 1st byte < curr room section
B0_0fb7:		lda data_00_0fd1.w, y	; b9 d1 8f
B0_0fba:		cmp wCurrRoomSection			; c5 33
B0_0fbc:		bcs B0_0fbf ; b0 01

B0_0fbe:		iny				; c8 
B0_0fbf:		lda data_00_0fd1.w+1, y	; b9 d2 8f
B0_0fc2:		cmp #$03		; c9 03
B0_0fc4:		beq B0_0fc9 ; f0 03

B0_0fc6:		sta $2e			; 85 2e
B0_0fc8:		rts				; 60 

B0_0fc9:		ldy $2f			; a4 2f
B0_0fcb:		beq B0_0fc6 ; f0 f9

B0_0fcd:		lda #$04		; a9 04
B0_0fcf:		bne B0_0fc6 ; d0 f5


data_00_0fd1:
	.db $10 $00 $00
	.db $02 $01 $02
	.db $10 $03 $04
	.db $10 $05 $05
	.db $10 $06 $06
	.db $10 $07 $07
	.db $10 $08 $08
	.db $04 $09 $0a
	.db $10 $0b $0b
	.db $10 $0c $0c
	.db $10 $0d $0d
	.db $10 $0e $0e
	.db $10 $0f $0f
	.db $10 $10 $10
	.db $10 $11 $11


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

B0_1054:		.db $90 $77

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


func_00_107f:
B0_107f:		lda #$b0		; a9 b0
B0_1081:		sta wPPUCtrl			; 85 ff
B0_1083:		jsr setCommonEffectsChrBanks		; 20 cd 90
B0_1086:		jsr set5hearts_fullLifeBars		; 20 c0 90
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
B0_10b4:		sta wHardMode.w		; 8d f6 07
B0_10b7:		lda #$02		; a9 02
B0_10b9:		sta wCurrLivesLeft			; 85 35
B0_10bb:		rts				; 60 


B0_10bc:		lda #$10		; a9 10
B0_10be:		bne B0_10b9 ; d0 f9

set5hearts_fullLifeBars:
	lda #$05
	sta wNumHearts
	lda #$40
	sta wPlayerHealth
	lda #$40
	sta wBossHealth
	rts 


setCommonEffectsChrBanks:
	lda #CB_GATE_TORCHES_WHIPUPGRADE_HEARTS_BRICKWALLS		; a9 40
	sta wChrBankBG_0000
	lda #CB_SCORE_ITEMS_PROJECTILES_CANDLES
	sta wChrBankBG_0c00
	rts


B0_10d6:		lda #$00		; a9 00
B0_10d8:		sta $ab			; 85 ab
B0_10da:		sta $ac			; 85 ac
B0_10dc:		sta $06c9		; 8d c9 06
B0_10df:		sta $b3			; 85 b3
B0_10e1:		rts				; 60 


B0_10e2:		lda #$b0		; a9 b0
B0_10e4:		sta wPPUCtrl			; 85 ff
B0_10e6:		jsr setVerticalMirroringAndNoIRQsetup		; 20 66 e6
B0_10e9:		jsr $90c8		; 20 c8 90
B0_10ec:		lda #$00		; a9 00
B0_10ee:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B0_10f1:		sta $0418		; 8d 18 04
B0_10f4:		sta $0419		; 8d 19 04
B0_10f7:		sta $74			; 85 74
B0_10f9:		sta $75			; 85 75
B0_10fb:		sta wPlayerStateDoubled.w		; 8d 65 05
B0_10fe:		jsr $90d6		; 20 d6 90
B0_1101:		jsr $e862		; 20 62 e8
B0_1104:		jmp $9130		; 4c 30 91


B0_1107:		lda #$00		; a9 00
B0_1109:		sta wEntityVertSpeed.w		; 8d 20 05
B0_110c:		sta wEntityVertSubSpeed.w		; 8d 37 05
B0_110f:		jsr $90d6		; 20 d6 90
B0_1112:		jsr $e862		; 20 62 e8
B0_1115:		bcs B0_1130 ; b0 19

B0_1117:		lda $0107		; ad 07 01
B0_111a:		cmp #$5f		; c9 5f
B0_111c:		bne B0_1122 ; d0 04

B0_111e:		lda #$00		; a9 00
B0_1120:		sta $74			; 85 74
B0_1122:		lda #$b0		; a9 b0
B0_1124:		sta wPPUCtrl			; 85 ff
B0_1126:		jsr setVerticalMirroringAndNoIRQsetup		; 20 66 e6
B0_1129:		lda #$00		; a9 00
B0_112b:		sta $75			; 85 75
B0_112d:		jsr clearCollisionValues		; 20 7f 91
B0_1130:		jsr setCommonEffectsChrBanks		; 20 cd 90
B0_1133:		lda #$b0		; a9 b0
B0_1135:		sta wPPUCtrl			; 85 ff
B0_1137:		lda wPlayerStateDoubled.w		; ad 65 05
B0_113a:		and #$7f		; 29 7f
B0_113c:		sta wPlayerStateDoubled.w		; 8d 65 05
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


clearCollisionValues:
	lda #$00
	tax
-	sta wCurrCollisionValues.w, x
	inx
	cpx #$90
	bne -

	rts


func_00_118b:
B0_118b:		lda #PPUCTRL_NMI_ON|PPUCTRL_SPR_16|PPUCTRL_BG_1000		; a9 b0
B0_118d:		sta wPPUCtrl			; 85 ff
B0_118f:		jsr setVerticalMirroringAndNoIRQsetup		; 20 66 e6
B0_1192:		jsr setCommonEffectsChrBanks		; 20 cd 90
B0_1195:		jsr set_2c_to_00h		; 20 ca e5

B0_1198:		lda wCurrPlayer.w		; ad 4e 05
B0_119b:		pha				; 48 
B0_119c:		lda $bd			; a5 bd
B0_119e:		pha				; 48 
B0_119f:		lda $be			; a5 be
B0_11a1:		pha				; 48 
B0_11a2:		jsr clearAlargePartOfWram_50hUp_todo		; 20 28 e8
B0_11a5:		pla				; 68 
B0_11a6:		sta $be			; 85 be
B0_11a8:		pla				; 68 
B0_11a9:		sta $bd			; 85 bd
B0_11ab:		pla				; 68 
B0_11ac:		sta wCurrPlayer.w		; 8d 4e 05
B0_11af:		jmp set5hearts_fullLifeBars		; 4c c0 90


func_00_11b2:
B0_11b2:		lda #$00		; a9 00
B0_11b4:		sta $80			; 85 80
B0_11b6:		sta wEntityState.w		; 8d 70 04
B0_11b9:		dec wGenericStateTimer			; c6 30
B0_11bb:		bne B0_11cd ; d0 10

B0_11bd:		lda $9f			; a5 9f
B0_11bf:		sta wInGameSubstate			; 85 2a
B0_11c1:		lda wPlayerStateDoubled.w		; ad 65 05
B0_11c4:		and #$7f		; 29 7f
B0_11c6:		sta wPlayerStateDoubled.w		; 8d 65 05
B0_11c9:		lda #$00		; a9 00
B0_11cb:		beq B0_11d1 ; f0 04

B0_11cd:		lda wGameStateLoopCounter			; a5 1a
B0_11cf:		and #$03		; 29 03
B0_11d1:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_11d4:		rts				; 60 


func_00_11d5:
B0_11d5:		jsr $91dd		; 20 dd 91
B0_11d8:		lda #$00		; a9 00
B0_11da:		sta wInGameSubstate			; 85 2a
B0_11dc:		rts				; 60 


B0_11dd:		jsr $e795		; 20 95 e7
B0_11e0:		lda wCurrRoomGroup			; a5 32
B0_11e2:		cmp #$03		; c9 03
B0_11e4:		beq B0_1209 ; f0 23

B0_11e6:		cmp #$0a		; c9 0a
B0_11e8:		beq B0_1201 ; f0 17

B0_11ea:		cmp #$0e		; c9 0e
B0_11ec:		beq B0_11fb ; f0 0d

B0_11ee:		jsr set5hearts_fullLifeBars		; 20 c0 90
B0_11f1:		lda #$00		; a9 00
B0_11f3:		sta wPlayerStateDoubled.w		; 8d 65 05
B0_11f6:		sta $75			; 85 75
B0_11f8:		sta $74			; 85 74
B0_11fa:		rts				; 60 


B0_11fb:		lda wCurrRoomSection			; a5 33
B0_11fd:		beq B0_11ee ; f0 ef

B0_11ff:		bne B0_120f ; d0 0e

B0_1201:		lda wCurrRoomSection			; a5 33
B0_1203:		cmp #$04		; c9 04
B0_1205:		beq B0_120f ; f0 08

B0_1207:		bne B0_11ee ; d0 e5

B0_1209:		lda wCurrRoomSection			; a5 33
B0_120b:		cmp #$03		; c9 03
B0_120d:		bne B0_11ee ; d0 df

B0_120f:		jsr $90c8		; 20 c8 90
B0_1212:		jmp $91f1		; 4c f1 91


func_00_1215:
B0_1215:		ldy #$00		; a0 00
B0_1217:		lda $9244, y	; b9 44 92
B0_121a:		cmp #$ff		; c9 ff
B0_121c:		beq B0_1230 ; f0 12

B0_121e:		cmp wCurrRoomGroup			; c5 32
B0_1220:		bne B0_123e ; d0 1c

B0_1222:		lda wCurrRoomSection			; a5 33
B0_1224:		cmp $9245, y	; d9 45 92
B0_1227:		bne B0_123e ; d0 15

B0_1229:		lda wCurrRoomIdx			; a5 34
B0_122b:		cmp $9246, y	; d9 46 92
B0_122e:		bne B0_123e ; d0 0e

B0_1230:		lda $9247, y	; b9 47 92
B0_1233:		sta $a4			; 85 a4
B0_1235:		lda #$00		; a9 00
B0_1237:		sta $6b			; 85 6b
B0_1239:		lda #$17		; a9 17
B0_123b:		sta wInGameSubstate			; 85 2a
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


func_00_1288:
B0_1288:		lda $6b			; a5 6b
B0_128a:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $9299
	.dw func_00_12fa
	.dw $9365
	.dw $940c
	.dw $942c
	.dw func_00_1442

B0_1299:		jsr vramQueueLifeBars			; 20 a6 8c
B0_129c:		jsr func_1f_07f7		; 20 f7 e7
B0_129f:		lda #$00		; a9 00
B0_12a1:		sta $0417		; 8d 17 04
B0_12a4:		ldy #$00		; a0 00
B0_12a6:		lda data_00_12d5.w, y	; b9 d5 92
B0_12a9:		cmp #$ff		; c9 ff
B0_12ab:		beq B0_12b5 ; f0 08

B0_12ad:		cmp wCurrRoomGroup			; c5 32
B0_12af:		beq B0_12b7 ; f0 06

B0_12b1:		iny				; c8 
B0_12b2:		iny				; c8 
B0_12b3:		bne B0_12a6 ; d0 f1

B0_12b5:		ldy #$00		; a0 00
B0_12b7:		lda data_00_12d5.w+1, y	; b9 d6 92
B0_12ba:		asl a			; 0a
B0_12bb:		asl a			; 0a
B0_12bc:		tay				; a8 
B0_12bd:		lda data_00_12e2.w, y	; b9 e2 92
B0_12c0:		sta wEntityFacingLeft.w		; 8d a8 04
B0_12c3:		sty $c6			; 84 c6
B0_12c5:		jsr set_2c_to_01h		; 20 ce e5
B0_12c8:		lda #$00		; a9 00
B0_12ca:		sta wEntityState.w		; 8d 70 04
B0_12cd:		lda #$00		; a9 00
B0_12cf:		jsr setPlayerAnimationDefIdxA_animateNextFrame		; 20 57 ef
B0_12d2:		inc $6b			; e6 6b
B0_12d4:		rts				; 60 

data_00_12d5:
	.db $01 $00
	.db $02 $01
	.db $07 $02
	.db $03 $03
	.db $0a $04
	.db $0e $05
	.db $ff


data_00_12e2:
	.db $01 GS_IN_GAME $1e $00
	.db $00 GS_BETWEEN_LEVELS $00 $00
	.db $01 GS_BETWEEN_LEVELS $00 $00
	.db $00 GS_IN_GAME $1f $01
	.db $00 GS_IN_GAME $1f $01
	.db $01 GS_IN_GAME $1f $01


func_00_12fa:
B0_12fa:		lda wEntityBaseX.w		; ad 38 04
B0_12fd:		ldy wEntityFacingLeft.w		; ac a8 04
B0_1300:		beq B0_1308 ; f0 06

B0_1302:		cmp #$18		; c9 18
B0_1304:		bcs B0_1315 ; b0 0f

B0_1306:		bcc B0_130c ; 90 04

B0_1308:		cmp #$e8		; c9 e8
B0_130a:		bcc B0_1315 ; 90 09

B0_130c:		lda wCurrRoomGroup		; a5 32
B0_130e:		cmp #$01		; c9 01
B0_1310:		beq B0_131b ; f0 09

B0_1312:		inc $6b			; e6 6b
B0_1314:		rts				; 60 


B0_1315:		jsr $9331		; 20 31 93
B0_1318:		jmp updatePlayerAnimationFrame		; 4c 73 ef


B0_131b:		lda #$11		; a9 11
B0_131d:		sta wInGameSubstate			; 85 2a
B0_131f:		lda #$00		; a9 00
B0_1321:		sta $07ec		; 8d ec 07
B0_1324:		sta $07f3		; 8d f3 07
B0_1327:		lda #$00		; a9 00
B0_1329:		sta $07ed		; 8d ed 07
B0_132c:		lda #$63		; a9 63
B0_132e:		jmp playSound		; 4c 5f e2


B0_1331:		lda wGameStateLoopCounter			; a5 1a
B0_1333:		and #$0f		; 29 0f
B0_1335:		bne B0_133c ; d0 05

B0_1337:		lda #$09		; a9 09
B0_1339:		jsr playSound		; 20 5f e2
B0_133c:		lda wEntityFacingLeft.w		; ad a8 04
B0_133f:		beq B0_1353 ; f0 12

B0_1341:		lda wEntityFractionalX.w		; ad c4 04
B0_1344:		sec				; 38 
B0_1345:		sbc #$c0		; e9 c0
B0_1347:		sta wEntityFractionalX.w		; 8d c4 04
B0_134a:		lda wEntityBaseX.w		; ad 38 04
B0_134d:		sbc #$00		; e9 00
B0_134f:		sta wEntityBaseX.w		; 8d 38 04
B0_1352:		rts				; 60 


B0_1353:		lda wEntityFractionalX.w		; ad c4 04
B0_1356:		clc				; 18 
B0_1357:		adc #$c0		; 69 c0
B0_1359:		sta wEntityFractionalX.w		; 8d c4 04
B0_135c:		lda wEntityBaseX.w		; ad 38 04
B0_135f:		adc #$00		; 69 00
B0_1361:		sta wEntityBaseX.w		; 8d 38 04
B0_1364:		rts				; 60 


B0_1365:		inc $6b			; e6 6b
B0_1367:		lda #$0c		; a9 0c
B0_1369:		jsr playSound		; 20 5f e2
B0_136c:		lda #$3c		; a9 3c
B0_136e:		sta wGenericStateTimer			; 85 30
B0_1370:		lda #$0c		; a9 0c
B0_1372:		ldy #$00		; a0 00
B0_1374:		ldx #$13		; a2 13
B0_1376:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B0_1379:		lda #$00		; a9 00
B0_137b:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B0_137e:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B0_1381:		lda wEntityBaseY.w		; ad 1c 04
B0_1384:		adc #$08		; 69 08
B0_1386:		and #$f0		; 29 f0
B0_1388:		sta wEntityBaseY.w, x	; 9d 1c 04
B0_138b:		lda wEntityFacingLeft.w		; ad a8 04
B0_138e:		asl a			; 0a
B0_138f:		tay				; a8 
B0_1390:		lda $9408, y	; b9 08 94
B0_1393:		sta wEntityBaseX.w, x	; 9d 38 04
B0_1396:		lda $9409, y	; b9 09 94
B0_1399:		sta wEntityFacingLeft.w, x	; 9d a8 04
B0_139c:		lda wCurrRoomGroup		; a5 32
B0_139e:		cmp #$01		; c9 01
B0_13a0:		beq B0_13f8 ; f0 56

B0_13a2:		lda #$00		; a9 00
B0_13a4:		sta wVramQueueDest+1			; 85 62
B0_13a6:		ldy wCurrPlayer.w		; ac 4e 05
B0_13a9:		lda wEntityBaseY.w		; ad 1c 04
B0_13ac:		sec				; 38 
B0_13ad:		sbc $9404, y	; f9 04 94
B0_13b0:		asl a			; 0a
B0_13b1:		rol $62			; 26 62
B0_13b3:		asl a			; 0a
B0_13b4:		rol $62			; 26 62
B0_13b6:		and #$e0		; 29 e0
B0_13b8:		sta wVramQueueDest			; 85 61
B0_13ba:		ldy wEntityFacingLeft.w		; ac a8 04
B0_13bd:		lda $9402, y	; b9 02 94
B0_13c0:		clc				; 18 
B0_13c1:		adc wVramQueueDest			; 65 61
B0_13c3:		sta wVramQueueDest			; 85 61
B0_13c5:		lda $75			; a5 75
B0_13c7:		and #$01		; 29 01
B0_13c9:		sta $00			; 85 00
B0_13cb:		lda $65			; a5 65
B0_13cd:		bne B0_13d3 ; d0 04

B0_13cf:		ldx #$24		; a2 24
B0_13d1:		bne B0_13d5 ; d0 02

B0_13d3:		ldx #$20		; a2 20
B0_13d5:		lda wCurrScrollRoomScreen			; a5 57
B0_13d7:		and #$01		; 29 01
B0_13d9:		eor $00			; 45 00
B0_13db:		beq B0_13e1 ; f0 04

B0_13dd:		txa				; 8a 
B0_13de:		eor #$04		; 49 04
B0_13e0:		tax				; aa 
B0_13e1:		txa				; 8a 
B0_13e2:		clc				; 18 
B0_13e3:		adc $62			; 65 62
B0_13e5:		sta wVramQueueDest+1			; 85 62
B0_13e7:		jsr vramQueueSetControlByte2_destToCopy_noData		; 20 af e8
B0_13ea:		ldy #$06		; a0 06
B0_13ec:		lda #$00		; a9 00
B0_13ee:		sta wVramQueue.w, x	; 9d 00 03
B0_13f1:		inx				; e8 
B0_13f2:		dey				; 88 
B0_13f3:		bne B0_13ee ; d0 f9

B0_13f5:		jmp setVramQueueFillIdxAndTerminate		; 4c de e8


B0_13f8:		lda #$2a		; a9 2a
B0_13fa:		sta wVramQueueDest+1			; 85 62
B0_13fc:		lda #$41		; a9 41
B0_13fe:		sta wVramQueueDest			; 85 61
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
B0_1412:		jsr setPlayerAnimationDefIdxA_animateNextFrame		; 20 57 ef
B0_1415:		lda #$14		; a9 14
B0_1417:		sta wGenericStateTimer			; 85 30
B0_1419:		inc $6b			; e6 6b
B0_141b:		rts				; 60 


B0_141c:		ldx #$13		; a2 13
B0_141e:		jsr updateEntityXanimationFrame		; 20 75 ef
B0_1421:		lda wEntityOamSpecIdxBaseOffset.w, x	; bd 93 05
B0_1424:		bne B0_141b ; d0 f5

B0_1426:		lda #$80		; a9 80
B0_1428:		sta wEntityTimeUntilNextAnimation.w, x	; 9d 7c 05
B0_142b:		rts				; 60 


B0_142c:		dec wGenericStateTimer			; c6 30
B0_142e:		beq B0_1436 ; f0 06

B0_1430:		jsr $9331		; 20 31 93
B0_1433:		jmp updatePlayerAnimationFrame		; 4c 73 ef


B0_1436:		lda #$00		; a9 00
B0_1438:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B0_143b:		lda #$10		; a9 10
B0_143d:		sta wGenericStateTimer			; 85 30
B0_143f:		inc $6b			; e6 6b
B0_1441:		rts				; 60 


func_00_1442:
B0_1442:		dec wGenericStateTimer			; c6 30
B0_1444:		bne B0_1441 ; d0 fb

B0_1446:		lda #$00		; a9 00
B0_1448:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B0_144b:		sta $0418		; 8d 18 04
B0_144e:		sta $0419		; 8d 19 04
B0_1451:		ldy $c6			; a4 c6
B0_1453:		lda data_00_12e2.w+1, y	; b9 e3 92
B0_1456:		sta wGameState			; 85 18
B0_1458:		lda data_00_12e2.w+2, y	; b9 e4 92
B0_145b:		sta wInGameSubstate			; 85 2a

B0_145d:		lda wCurrRoomSection			; a5 33
B0_145f:		clc				; 18 
B0_1460:		adc data_00_12e2.w+3, y	; 79 e5 92
B0_1463:		sta wCurrRoomSection			; 85 33

B0_1465:		lda #$00		; a9 00
B0_1467:		sta wGameSubstate			; 85 19
B0_1469:		rts				; 60 


func_00_146a:
B0_146a:		lda $6b			; a5 6b
B0_146c:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $94ac
	.dw $94bb
	.dw $94cf
	.dw $9539
	.dw $959b
	.dw $95e8
	.dw $9625
	.dw $9660
	.dw $9671
	.dw $9598
	.dw $95e5
	.dw $9622
	.dw $9660
	.dw $9671


func_00_148b:
B0_148b:	lda $6b
B0_148d:		jsr jumpTablePreserveY		; 20 6d e8
	.dw func_00_14ac
	.dw func_00_14bb
	.dw func_00_14cf
	.dw func_00_151b
	.dw func_00_159b
	.dw func_00_15e8
	.dw func_00_1625
	.dw func_00_1682
	.dw func_00_169f
	.dw $9598
	.dw $95e5
	.dw $9622
	.dw $9692
	.dw func_00_169f

func_00_14ac:
B0_14ac:		lda #$46
	jsr playSound
B0_14b1:		jsr set_2c_to_01h		; 20 ce e5
.ifdef INSTANT_CHAR_SWAP
	lda #$01
.else
B0_14b4:		lda #$3c		; a9 3c
.endif
B0_14b6:		sta wGenericStateTimer			; 85 30
B0_14b8:		inc $6b			; e6 6b
B0_14ba:		rts				; 60 


func_00_14bb:
B0_14bb:		dec wGenericStateTimer			; c6 30
B0_14bd:		beq B0_14c7 ; f0 08

B0_14bf:		lda wGameStateLoopCounter			; a5 1a
B0_14c1:		and #$03		; 29 03
B0_14c3:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_14c6:		rts				; 60 

B0_14c7:		lda #$00		; a9 00
B0_14c9:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_14cc:		inc $6b			; e6 6b
B0_14ce:		rts				; 60 


func_00_14cf:
.ifdef INSTANT_CHAR_SWAP
	lda #$01
.else
B0_14cf:		lda #$4c		; a9 4c
.endif
B0_14d1:		sta wGenericStateTimer			; 85 30
B0_14d3:		lda wEntityBaseX.w		; ad 38 04
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


func_00_14f1:
B0_14f1:		lda $aa			; a5 aa
B0_14f3:		cmp #$16		; c9 16
B0_14f5:		beq B0_1509 ; f0 12

B0_14f7:		lda $c2			; a5 c2
B0_14f9:		bne B0_1509 ; d0 0e

B0_14fb:		lda wEntityBaseY.w		; ad 1c 04
B0_14fe:		sec				; 38 
B0_14ff:		sbc #$4a		; e9 4a
B0_1501:		bmi B0_1509 ; 30 06

B0_1503:		cmp #$8e		; c9 8e
B0_1505:		bcs B0_1509 ; b0 02

B0_1507:		clc				; 18 
B0_1508:		rts				; 60 

B0_1509:		sec				; 38 
B0_150a:		rts				; 60 


B0_150b:		lda wEntityBaseY.w		; ad 1c 04
B0_150e:		sec				; 38 
B0_150f:		sbc #$4e		; e9 4e
B0_1511:		bmi B0_1519 ; 30 06

B0_1513:		cmp #$8a		; c9 8a
B0_1515:		bcs B0_1519 ; b0 02

B0_1517:		clc				; 18 
B0_1518:		rts				; 60 

B0_1519:		sec				; 38 
B0_151a:		rts				; 60 


func_00_151b:
B0_151b:		jsr func_00_14f1		; 20 f1 94
B0_151e:		bcs B0_1534 ; b0 14

B0_1520:		lda wEntityBaseY.w		; ad 1c 04
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


B0_1539:		jsr returnClcIfCanJump		; 20 0b 95
B0_153c:		bcs B0_1550 ; b0 12

B0_153e:		lda #$0b		; a9 0b
B0_1540:		sta wBaseIRQFuncIdx			; 85 3f
B0_1542:		lda wEntityBaseY.w		; ad 1c 04
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
B0_1557:		sta wEntityState.w		; 8d 70 04
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
B0_1575:		sta wEntityState.w		; 8d 70 04
B0_1578:		bne B0_158f ; d0 15

B0_157a:		lda $05d4		; ad d4 05
B0_157d:		clc				; 18 
B0_157e:		adc $0505		; 6d 05 05
B0_1581:		bcs B0_1573 ; b0 f0

B0_1583:		cmp #$f8		; c9 f8
B0_1585:		bcs B0_1573 ; b0 ec

B0_1587:		bcc B0_158c ; 90 03

B0_1589:		lda $05d4		; ad d4 05
B0_158c:		sta wEntityBaseX.w		; 8d 38 04
B0_158f:		lda $0630		; ad 30 06
B0_1592:		eor #$01		; 49 01
B0_1594:		sta $0630		; 8d 30 06
B0_1597:		rts				; 60 


B0_1598:		jsr $9555		; 20 55 95

func_00_159b:
B0_159b:		dec wGenericStateTimer			; c6 30
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
B0_15da:		sta wEntityState.w		; 8d 70 04
B0_15dd:		lda #$00		; a9 00
B0_15df:		sta $0413		; 8d 13 04
B0_15e2:		inc $6b			; e6 6b
B0_15e4:		rts				; 60 


B0_15e5:		jsr $9555		; 20 55 95

func_00_15e8:
B0_15e8:		jsr $e677		; 20 77 e6
B0_15eb:		lda wOamSpecIdxDoubled.w		; ad 00 04
B0_15ee:		cmp #$48		; c9 48
B0_15f0:		bne B0_15f7 ; d0 05

B0_15f2:		lda #$04		; a9 04
B0_15f4:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B0_15f7:		lda wCurrCharacterIdx			; a5 3b
B0_15f9:		eor #$01		; 49 01
B0_15fb:		sta wCurrCharacterIdx			; 85 3b
B0_15fd:		tay				; a8 
B0_15fe:		lda wUsableChars.w, y
B0_1601:		sta wCurrPlayer.w		; 8d 4e 05
B0_1604:		jsr vramQueueOtherCharImage		; 20 4b 8e
B0_1607:		jsr $8e61		; 20 61 8e
B0_160a:		jsr $e61e		; 20 1e e6
B0_160d:		jsr $8001		; 20 01 80
B0_1610:		jsr updateSprChrBanks_0_to_c00_1400		; 20 3c e3
B0_1613:		lda wCurrPlayer.w		; ad 4e 05
B0_1616:		asl a			; 0a
B0_1617:		sta wEntityOamSpecGroupDoubled.w		; 8d 8c 04
B0_161a:		lda #$00		; a9 00
B0_161c:		sta wEntityState.w		; 8d 70 04
B0_161f:		inc $6b			; e6 6b
B0_1621:		rts				; 60 


B0_1622:		jsr $9555		; 20 55 95

func_00_1625:
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
B0_1663:		sta wEntityBaseX.w		; 8d 38 04
B0_1666:		lda #$05		; a9 05
B0_1668:		sta wBaseIRQFuncIdx			; 85 3f
B0_166a:		lda #$3c		; a9 3c
B0_166c:		sta wGenericStateTimer			; 85 30
B0_166e:		inc $6b			; e6 6b
B0_1670:		rts				; 60 


B0_1671:		dec wGenericStateTimer			; c6 30
B0_1673:		beq B0_167d ; f0 08

B0_1675:		lda wGameStateLoopCounter			; a5 1a
B0_1677:		and #$03		; 29 03
B0_1679:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_167c:		rts				; 60 


B0_167d:		lda #$05		; a9 05
B0_167f:		jmp $96ad		; 4c ad 96


func_00_1682:
B0_1682:		lda $a6			; a5 a6
B0_1684:		sta wBaseIRQFuncIdx			; 85 3f
B0_1686:		lda $a7			; a5 a7
B0_1688:		sta wBaseIRQCmpVal			; 85 41
B0_168a:		lda $a8			; a5 a8
B0_168c:		sta $42			; 85 42
B0_168e:		lda $a9			; a5 a9
B0_1690:		sta wBaseIRQStatus			; 85 40
B0_1692:		lda $05d4		; ad d4 05
B0_1695:		sta wEntityBaseX.w		; 8d 38 04
.ifdef INSTANT_CHAR_SWAP
	lda #$01
.else
B0_1698:		lda #$3c		; a9 3c
.endif
B0_169a:		sta wGenericStateTimer			; 85 30
B0_169c:		inc $6b			; e6 6b
B0_169e:		rts				; 60 


func_00_169f:
B0_169f:		dec wGenericStateTimer			; c6 30
B0_16a1:		beq B0_16ab ; f0 08

B0_16a3:		lda wGameStateLoopCounter			; a5 1a
B0_16a5:		and #$03		; 29 03
B0_16a7:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_16aa:		rts				; 60 


B0_16ab:		lda $aa			; a5 aa
B0_16ad:		sta wInGameSubstate			; 85 2a
B0_16af:		lda #$00		; a9 00
B0_16b1:		sta wEntityPaletteOverride.w		; 8d 54 04
B0_16b4:		jsr set_2c_to_00h		; 20 ca e5
B0_16b7:		lda #$00		; a9 00
B0_16b9:		sta $0505		; 8d 05 05
B0_16bc:		sta $051c		; 8d 1c 05
B0_16bf:		sta $05d4		; 8d d4 05
B0_16c2:		sta $05eb		; 8d eb 05
B0_16c5:		sta $0602		; 8d 02 06
B0_16c8:		sta $0619		; 8d 19 06
B0_16cb:		sta $0630		; 8d 30 06
B0_16ce:		rts				; 60 


func_00_16cf_stub:
B0_16cf:		rts				; 60 


func_00_16d0:
B0_16d0:		lda wPlayerStateDoubled.w		; ad 65 05
B0_16d3:		cmp #PS_WALK_TO_STAIR		; c9 0e
B0_16d5:		bcc B0_16f8 ; 90 21

B0_16d7:		cmp #$16		; c9 16
B0_16d9:		bcs B0_16f8 ; b0 1d

; in a stair-climbing state
B0_16db:		lda wEntityBaseY.w		; ad 1c 04
B0_16de:		cmp #$70		; c9 70
B0_16e0:		bcs B0_16f8 ; b0 16

; and Y < $70
B0_16e2:		lda $7d			; a5 7d
B0_16e4:		and #$0f		; 29 0f
B0_16e6:		asl a			; 0a
B0_16e7:		tay				; a8 
B0_16e8:		lda data_00_16fa.w, y	; b9 fa 96
B0_16eb:		cmp wCurrScrollRoomScreen			; c5 57
B0_16ed:		bne B0_16f8 ; d0 09

B0_16ef:		lda data_00_16fa.w+1, y	; b9 fb 96
B0_16f2:		cmp wCurrScrollOffsetIntoRoomScreen			; c5 56
B0_16f4:		bne B0_16f8 ; d0 02

B0_16f6:		sec				; 38 
B0_16f7:		rts				; 60 

B0_16f8:		clc				; 18 
B0_16f9:		rts				; 60 

data_00_16fa:
	.db $00 $00
	.db $02 $c8
	.db $00 $00
	.db $00 $00


func_00_1702:
B0_1702:		ldy #$00		; a0 00

@nextRowCheck:
B0_1704:		lda data_00_1730.w, y	; b9 30 97
B0_1707:		cmp #$ff		; c9 ff
B0_1709:		beq B0_172a ; @noMatchFound

B0_170b:		cmp wCurrRoomGroup			; c5 32
B0_170d:		bne B0_1724 ; @toNextRowCheck

B0_170f:		lda data_00_1730.w+1, y	; b9 31 97
B0_1712:		cmp wCurrRoomSection			; c5 33
B0_1714:		bne B0_1724 ; @toNextRowCheck

B0_1716:		lda data_00_1730.w+2, y	; b9 32 97
B0_1719:		cmp wCurrRoomIdx			; c5 34
B0_171b:		bne B0_1724 ; @toNextRowCheck

B0_171d:		lda data_00_1730.w+3, y	; b9 33 97
B0_1720:		sta $7d			; 85 7d
B0_1722:		sec				; 38 
B0_1723:		rts				; 60 

@toNextRowCheck:
B0_1724:		iny				; c8 
B0_1725:		iny				; c8 
B0_1726:		iny				; c8 
B0_1727:		iny				; c8 
B0_1728:		bne B0_1704 ; @nextRowCheck

@noMatchFound:
B0_172a:		lda #$00		; a9 00
B0_172c:		sta $7d			; 85 7d
B0_172e:		clc				; 18 
B0_172f:		rts				; 60 

; group - section - room - new $7d val
data_00_1730:
	.db $02 $02 $01 $10
	.db $02 $03 $01 $11
	.db $0e $00 $02 $12
	.db $0e $02 $00 $13
	.db $02 $00 $01 $20
	.db $0c $01 $01 $23
	.db $05 $01 $00 $30
	.db $0d $03 $00 $31
	.db $01 $00 $00 $40
	.db $01 $01 $00 $40
	.db $01 $01 $01 $40
	.db $01 $01 $02 $40
	.db $01 $02 $00 $40
	.db $01 $02 $01 $40
	.db $01 $03 $00 $40
	.db $01 $03 $01 $40
	.db $01 $04 $00 $40
	.db $01 $04 $01 $40
	.db $01 $04 $02 $40
	.db $01 $05 $00 $40
	.db $0e $00 $01 $40
	.db $0d $01 $00 $41
	.db $0d $01 $01 $41
	.db $0d $01 $02 $41
	.db $06 $00 $01 $32
	.db $06 $00 $00 $33
	.db $06 $01 $00 $34
	.db $06 $02 $01 $35
	.db $06 $02 $00 $36
	.db $06 $02 $02 $37
	.db $08 $00 $00 $50
	.db $08 $01 $00 $51
	.db $08 $02 $00 $51
	.db $05 $03 $00 $51
	.db $09 $00 $00 $51
	.db $0a $01 $00 $51
	.db $0a $02 $00 $51
	.db $0a $03 $00 $51
	.db $02 $01 $00 $51
	.db $08 $00 $01 $60
	.db $08 $03 $00 $71
	.db $08 $04 $00 $71
	.db $05 $03 $01 $80
	.db $0c $02 $00 $81
	.db $ff


func_00_17e1:
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
B0_1800:		.db $ae $ae


func_00_1802:
	ldy #$00
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


displayStaticLayoutAbankX_body:
	stx wStaticLayoutBank
	jmp +


displayStaticLayoutA_body:
	pha

; default bank is 0
	lda #PRG_ROM_SWITCH|$00
	sta wStaticLayoutBank
	pla

+	jsr initCurrStaticLayoutDetails

@nextVramQueueAddress:
	lda #$01
	jsr storeByteInVramQueue
	jsr getNextStaticLayoutByte
	jsr storeByteInVramQueueIdxedX

	iny
	jsr getNextStaticLayoutByte
	jsr storeByteInVramQueueIdxedX

; get static layout byte
	iny

@nextByte:
	jsr getNextStaticLayoutByte

	iny
	cmp #$ff
	bne +

; if ff, terminate
	jmp terminateVramQueue

+	cmp #$fe
	beq +

; if not fe, store in vram queue
	and wCurrStaticLayoutTileMask
	jsr storeByteInVramQueueIdxedX
	jmp @nextByte

; if fe, terminate, and copy to a new address
+	jsr terminateVramQueue
	jmp @nextVramQueueAddress


initCurrStaticLayoutDetails:
; data address, display mask, and y = 0
	asl a
	tay
	lda staticLayoutsAddresses.w, y
	sta wCurrStaticLayoutAddr
	lda staticLayoutsAddresses.w+1, y
	sta wCurrStaticLayoutAddr+1

; if bit 7 set, mask is 0, so vram queue tiles are 0
	lda #$ff
	adc #$00
	sta wCurrStaticLayoutTileMask
	ldy #$00
	rts


func_00_1873:
B0_1873:		stx wStaticLayoutBank			; 86 b1
B0_1875:		jsr initCurrStaticLayoutDetails		; 20 5e 98

B0_1878:		lda #$01		; a9 01
B0_187a:		jsr storeByteInVramQueue		; 20 14 ed
B0_187d:		lda $0790		; ad 90 07
B0_1880:		jsr storeByteInVramQueueIdxedX		; 20 16 ed
B0_1883:		lda $0791		; ad 91 07
B0_1886:		jsr storeByteInVramQueueIdxedX		; 20 16 ed

B0_1889:		jsr getNextStaticLayoutByte		; 20 03 ed
B0_188c:		iny				; c8 
B0_188d:		cmp #$ff		; c9 ff
B0_188f:		beq B0_18a6 ; f0 15

B0_1891:		cmp #$fe		; c9 fe
B0_1893:		beq B0_189d ; f0 08

B0_1895:		and $02			; 25 02
B0_1897:		jsr storeByteInVramQueueIdxedX		; 20 16 ed
B0_189a:		jmp B0_1889		; 4c 89 98

B0_189d:		jsr terminateVramQueue		; 20 12 ed
B0_18a0:		jsr func_00_18a9		; 20 a9 98
B0_18a3:		jmp B0_1878		; 4c 78 98

B0_18a6:		jsr terminateVramQueue		; 20 12 ed

func_00_18a9:
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

.include "data/staticLayouts_b00.s"

func_00_1ddb:
B0_1ddb:		lda $6b			; a5 6b
B0_1ddd:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $9dfa
	.dw $9e51
	.dw $9e88
	.dw $9ec5
	.dw $9eff
	.dw $9f19
	.dw $9f50
	.dw $9f91
	.dw $9fac
	.dw $9ff0
	.dw $a008
	.dw $a028
	.dw $a050
B0_1dfa:		lda #$b0
B0_1dfc:		sta wPPUCtrl
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
B0_1e12:		jsr setVerticalMirroringAndNoIRQsetup		; 20 66 e6
B0_1e15:		jsr $a2b4		; 20 b4 a2
B0_1e18:		jsr initSound		; 20 27 e2
B0_1e1b:		lda #$44		; a9 44
B0_1e1d:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B0_1e20:		jsr fillFirst3NametablesWith0		; 20 fd eb
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
B0_1e47:		sta wCounterUntilCanShowSprBg			; 85 1c
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
B0_1e6a:		sta wGenericStateTimer			; 85 30
B0_1e6c:		jmp $9e49		; 4c 49 9e


B0_1e6f:		jsr $9e49		; 20 49 9e
B0_1e72:		lda #$03		; a9 03
B0_1e74:		sta $6b			; 85 6b
B0_1e76:		lda #$40		; a9 40
B0_1e78:		sta wGenericStateTimer			; 85 30
B0_1e7a:		rts				; 60 


B0_1e7b:		lda wPPUCtrl			; a5 ff
B0_1e7d:		and #$fc		; 29 fc
B0_1e7f:		sta wPPUCtrl			; 85 ff
B0_1e81:		lda #$00		; a9 00
B0_1e83:		sta wScrollX			; 85 fd
B0_1e85:		jmp $9e49		; 4c 49 9e


B0_1e88:		ldy $31			; a4 31
B0_1e8a:		bne B0_1eb6 ; d0 2a

B0_1e8c:		dec wGenericStateTimer			; c6 30
B0_1e8e:		beq B0_1e7b ; f0 eb

B0_1e90:		jsr $a1fa		; 20 fa a1
B0_1e93:		lda wGenericStateTimer			; a5 30
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
B0_1ec0:		sta wGenericStateTimer			; 85 30
B0_1ec2:		jmp $9e49		; 4c 49 9e


B0_1ec5:		lda $07ed		; ad ed 07
B0_1ec8:		and #$20		; 29 20
B0_1eca:		beq B0_1ef3 ; f0 27

B0_1ecc:		ldy $07f3		; ac f3 07
B0_1ecf:		bne B0_1edd ; d0 0c

B0_1ed1:		dec wGenericStateTimer			; c6 30
B0_1ed3:		bne B0_1efe ; d0 29

B0_1ed5:		lda #$20		; a9 20
B0_1ed7:		sta wGenericStateTimer			; 85 30
B0_1ed9:		inc $07f3		; ee f3 07
B0_1edc:		rts				; 60 


B0_1edd:		dec wGenericStateTimer			; c6 30
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
B0_1efc:		sta wGenericStateTimer			; 85 30
B0_1efe:		rts				; 60 


B0_1eff:		inc $0784		; ee 84 07
B0_1f02:		dec $0783		; ce 83 07
B0_1f05:		bne B0_1efe ; d0 f7

B0_1f07:		inc $0782		; ee 82 07
B0_1f0a:		jsr $9e49		; 20 49 9e
B0_1f0d:		lda #$80		; a9 80
B0_1f0f:		sta $0783		; 8d 83 07
B0_1f12:		lda #$20		; a9 20
B0_1f14:		sta wGenericStateTimer			; 85 30
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
B0_1f2e:		sta wScrollY			; 85 fc
B0_1f30:		dec wGenericStateTimer			; c6 30
B0_1f32:		bne B0_1f84 ; d0 50

B0_1f34:		inc $07f3		; ee f3 07
B0_1f37:		rts				; 60 


B0_1f38:		dec $fc			; c6 fc
B0_1f3a:		lda $fc			; a5 fc
B0_1f3c:		cmp #$f0		; c9 f0
B0_1f3e:		bcc B0_1f44 ; 90 04

B0_1f40:		sbc #$10		; e9 10
B0_1f42:		sta wScrollY			; 85 fc
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
B0_1f74:		sta wGenericStateTimer			; 85 30
B0_1f76:		jmp $9e49		; 4c 49 9e


B0_1f79:		jsr $9e49		; 20 49 9e
B0_1f7c:		lda #$08		; a9 08
B0_1f7e:		sta $6b			; 85 6b
B0_1f80:		lda #$40		; a9 40
B0_1f82:		sta wGenericStateTimer			; 85 30
B0_1f84:		rts				; 60 


B0_1f85:		jsr $9e49		; 20 49 9e
B0_1f88:		lda #$0a		; a9 0a
B0_1f8a:		sta $6b			; 85 6b
B0_1f8c:		lda #$40		; a9 40
B0_1f8e:		sta wGenericStateTimer			; 85 30
B0_1f90:		rts				; 60 


B0_1f91:		jsr $a0a8		; 20 a8 a0
B0_1f94:		dec wGenericStateTimer			; c6 30
B0_1f96:		bne B0_1f84 ; d0 ec

B0_1f98:		jsr $a084		; 20 84 a0
B0_1f9b:		lda #$aa		; a9 aa
B0_1f9d:		sta $0403		; 8d 03 04
B0_1fa0:		jsr $9e49		; 20 49 9e
B0_1fa3:		lda #$0a		; a9 0a
B0_1fa5:		sta $6b			; 85 6b
B0_1fa7:		lda #$40		; a9 40
B0_1fa9:		sta wGenericStateTimer			; 85 30
B0_1fab:		rts				; 60 


B0_1fac:		ldy $07f3		; ac f3 07
B0_1faf:		bne B0_1fb9 ; d0 08

B0_1fb1:		dec wGenericStateTimer			; c6 30
B0_1fb3:		bne B0_1fab ; d0 f6

B0_1fb5:		inc $07f3		; ee f3 07
B0_1fb8:		rts				; 60 


B0_1fb9:		lda #$aa		; a9 aa
B0_1fbb:		sta $0403		; 8d 03 04
B0_1fbe:		ldx #$03		; a2 03
B0_1fc0:		clc				; 18 
B0_1fc1:		lda #$24		; a9 24
B0_1fc3:		adc wEntityFractionalX.w, x	; 7d c4 04
B0_1fc6:		sta wEntityFractionalX.w, x	; 9d c4 04
B0_1fc9:		lda #$00		; a9 00
B0_1fcb:		adc wEntityBaseX.w, x	; 7d 38 04
B0_1fce:		sta wEntityBaseX.w, x	; 9d 38 04
B0_1fd1:		clc				; 18 
B0_1fd2:		lda #$f0		; a9 f0
B0_1fd4:		adc wEntityFractionalY.w, x	; 7d db 04
B0_1fd7:		sta wEntityFractionalY.w, x	; 9d db 04
B0_1fda:		lda #$ff		; a9 ff
B0_1fdc:		adc wEntityBaseY.w, x	; 7d 1c 04
B0_1fdf:		sta wEntityBaseY.w, x	; 9d 1c 04
B0_1fe2:		lda wEntityBaseX.w, x	; bd 38 04
B0_1fe5:		cmp #$9a		; c9 9a
B0_1fe7:		;removed
	.db $90 $66

B0_1fe9:		lda #$4f		; a9 4f
B0_1feb:		sta wGenericStateTimer			; 85 30
B0_1fed:		jmp $9e49		; 4c 49 9e


B0_1ff0:		jsr $a0b1		; 20 b1 a0
B0_1ff3:		dec wGenericStateTimer			; c6 30
B0_1ff5:		;removed
	.db $d0 $58

B0_1ff7:		lda #$00		; a9 00
B0_1ff9:		sta $0403		; 8d 03 04
B0_1ffc:		jsr $9e49		; 20 49 9e
		.db $a9
