
update_wOam:
	lda wGameState
	cmp #GS_ENDING_CUTSCENE
	bne +

	jmp update_wOam_stateC

+
; init vars
	lda #$00
	sta wCurrDrawnEntityIdx
	lda #$40
	sta wNumOamSpotsLeftThisFrame

; set curr frame's starting oam offset
	lda wCurrFrameStartingOamOffset
	clc
	adc #$44
	sta wCurrFrameStartingOamOffset
	sta wCurrOamOffsetToFill

@nextEntity:
; jump if all entities finished
	ldx wCurrDrawnEntityIdx
	cpx #NUM_ENTITIES
	bcs @clearRestOfOam

; skip entity if spec idx is 0
	lda wOamSpecIdxDoubled.w, x
	beq @toNextEntity

; skip if invisible
	lda wEntityState.w, x
	bmi @toNextEntity

; set some base vars and update
	lda wEntityPaletteOverride.w, x
	sta wCurrDrawnEntityPaletteOverride
	lda wEntityBaseY.w, x
	sta wCurrDrawnEntityBaseY
	lda wEntityBaseX.w, x
	sta wCurrDrawnEntityBaseX
	jsr updateEntityOam

@toNextEntity:
	inc wCurrDrawnEntityIdx
	bne @nextEntity

@clearRestOfOam:
	ldx wCurrOamOffsetToFill
	ldy wNumOamSpotsLeftThisFrame

-	lda #$f4
	sta wOam.Y.w, x
; x += $c4
	txa
	clc
	adc #$c4
	tax

	dey
	bne -

	rts


; from below
-	jsr secAndGetTileIdxPlus80hIfSpecGroupIs16hPlus
	bcc +
	bcs ++


oamYclc:
	clc
	bcc oamYcont


oamSetYandTile_useCachedAttr:
	clc
	adc wCurrDrawnEntityBaseY
	sta wOam.Y.w, x

; get tile if stopwatch in effect
B26_0063:		iny				; c8 
B26_0064:		lda $b0			; a5 b0
	bne -

+	lda (wCurrEntityOamSpecIdxAddr), y
++	sta wOam.tile.w, x
	lda wCurrDrawnEntityCachedAttr
	jmp oamAfterGettingAttr


oamNonCachedAttr_getTileBasedOnStopwatch:
	jsr secAndGetTileIdxPlus80hIfSpecGroupIs16hPlus
	bcc oamNonCachedAttr_stopwatchNotInUse
	bcs oamNonCachedAttr_stopwatchInUse


updateEntityOam:
	ldy wEntityOamSpecGroupDoubled.w, x
	sty wCurrEntitySpecGroupDoubled

; get oam spec group addr and spec idx addr
	lda oamSpecData.w, y
	sta wCurrEntityOamSpecGroupAddr
	lda oamSpecData.w+1, y
	sta wCurrEntityOamSpecGroupAddr+1

	ldy wOamSpecIdxDoubled.w, x
	lda (wCurrEntityOamSpecGroupAddr), y
	sta wCurrEntityOamSpecIdxAddr
	iny
	lda (wCurrEntityOamSpecGroupAddr), y
	sta wCurrEntityOamSpecIdxAddr+1

; 1st oam spec byte = num tiles
	ldy #$00
	lda (wCurrEntityOamSpecIdxAddr), y
	sta wCurrDrawnEntityNumSprites

; different filling method if mirrored
	lda wEntityFacingLeft.w, x
	beq entityFacingRight

	ldx wCurrOamOffsetToFill

; next oam spec byte (Y)
@nextOam:
; rotate oam Y, retaining bit 7
	iny
	lda (wCurrEntityOamSpecIdxAddr), y
	bpl oamYclc

	sec
oamYcont:
; if bit 0s set, use cached attr
	ror a
	bcs oamSetYandTile_useCachedAttr

	adc wCurrDrawnEntityBaseY
	sta wOam.Y.w, x

; nex oam spec byte (tile idx)
B26_00af:		iny				; c8 
B26_00b0:		lda $b0			; a5 b0
B26_00b2:		bne oamNonCachedAttr_getTileBasedOnStopwatch ; d0 be

oamNonCachedAttr_stopwatchNotInUse:
	lda (wCurrEntityOamSpecIdxAddr), y

oamNonCachedAttr_stopwatchInUse:
	sta wOam.tile.w, x

; 4th oam spec byte = attr, use palette override if specified
	iny
	lda wCurrDrawnEntityPaletteOverride
	beq @noOverride

	lda (wCurrEntityOamSpecIdxAddr), y
	and #$fc
	ora wCurrDrawnEntityPaletteOverride
	bne +

@noOverride:
	lda (wCurrEntityOamSpecIdxAddr), y
+	sta wCurrDrawnEntityCachedAttr

oamAfterGettingAttr:
	sta wOam.attr.w, x

; next oam spec byte (X)
	iny
	lda (wCurrEntityOamSpecIdxAddr), y
	bmi @negativeXoffset

; positive x offset
	clc
	adc wCurrDrawnEntityBaseX
	bcs @entityXoffScreen

@entityXnotOffScreen:
	sta wOam.X.w, x

@currEntitySpriteDone:
; wOam offset += $c4, end when no spots left
	txa
	clc
	adc #$c4
	tax
	dec wNumOamSpotsLeftThisFrame
	beq @noMoreOamSpotsLeft

; check if more sprites for curr entity
	dec wCurrDrawnEntityNumSprites
	bne updateEntityOam@nextOam

	stx wCurrOamOffsetToFill
	rts

@negativeXoffset:
	clc
	adc wCurrDrawnEntityBaseX
	bcs @entityXnotOffScreen

@entityXoffScreen:
	lda #$f4
	sta wOam.Y.w, x
	bne @currEntitySpriteDone

@noMoreOamSpotsLeft:
B26_00f6:		pla				; 68 
B26_00f7:		pla				; 68 
B26_00f8:		rts				; 60 

; different method of setting to oam
entityFacingRight:
	ldx wCurrOamOffsetToFill			; a6 04

@nextOam:
B26_00fb:		iny				; c8 
B26_00fc:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_00fe:		bpl B26_015c ; 10 5c

B26_0100:		sec				; 38 
B26_0101:		ror a			; 6a
B26_0102:		bcs B26_015f ; b0 5b

B26_0104:		adc wCurrDrawnEntityBaseY			; 65 01
B26_0106:		sta wOam.Y.w, x	; 9d 00 02
B26_0109:		iny				; c8 
B26_010a:		lda $b0			; a5 b0
B26_010c:		bne B26_0155 ; d0 47

B26_010e:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
.ifdef SEPARATED_LAMP_GFX
B26_0110:	jsr changeLampGfx
.else
B26_0110:		sta wOam.tile.w, x	; 9d 01 02
.endif
B26_0113:		iny				; c8 
B26_0114:		lda wCurrDrawnEntityPaletteOverride			; a5 00
B26_0116:		beq B26_0120 ; f0 08

B26_0118:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_011a:		and #$fc		; 29 fc
B26_011c:		ora wCurrDrawnEntityPaletteOverride			; 05 00
B26_011e:		bne B26_0122 ; d0 02

B26_0120:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0122:		eor #$40		; 49 40
B26_0124:		sta wCurrDrawnEntityCachedAttr			; 85 10

B26_0126:		sta wOam.attr.w, x	; 9d 02 02
B26_0129:		iny				; c8 
B26_012a:		lda #$f8		; a9 f8
B26_012c:		sec				; 38 
B26_012d:		sbc (wCurrEntityOamSpecIdxAddr), y	; f1 0a
B26_012f:		bmi B26_0149 ; 30 18

B26_0131:		clc				; 18 
B26_0132:		adc wCurrDrawnEntityBaseX			; 65 02
B26_0134:		bcs B26_014e ; b0 18

B26_0136:		sta wOam.X.w, x	; 9d 03 02

@currEntitySpriteDone:
B26_0139:		txa				; 8a 
B26_013a:		clc				; 18 
B26_013b:		adc #$c4		; 69 c4
B26_013d:		tax				; aa 
B26_013e:		dec wNumOamSpotsLeftThisFrame			; c6 07
B26_0140:		beq B26_00f6 ; @noMoreOamSpotsLeft

B26_0142:		dec wCurrDrawnEntityNumSprites			; c6 03
B26_0144:		bne B26_00fb ; @nextOam

B26_0146:		stx wCurrOamOffsetToFill			; 86 04
B26_0148:		rts				; 60 

B26_0149:		clc				; 18 
B26_014a:		adc wCurrDrawnEntityBaseX			; 65 02
B26_014c:		bcs B26_0136 ; b0 e8

B26_014e:		lda #$f4		; a9 f4
B26_0150:		sta wOam.Y.w, x	; 9d 00 02
B26_0153:		bne B26_0139 ; @currEntitySpriteDone


B26_0155:		jsr secAndGetTileIdxPlus80hIfSpecGroupIs16hPlus		; 20 7b 81
B26_0158:		bcc B26_010e ; 90 b4

B26_015a:		bcs B26_0110 ; b0 b4

B26_015c:		clc				; 18 
B26_015d:		bcc B26_0101 ; 90 a2

B26_015f:		clc				; 18 
B26_0160:		adc wCurrDrawnEntityBaseY			; 65 01
B26_0162:		sta wOam.Y.w, x	; 9d 00 02
B26_0165:		iny				; c8 
B26_0166:		lda $b0			; a5 b0
B26_0168:		bne B26_0174 ; d0 0a

B26_016a:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_016c:		sta wOam.tile.w, x	; 9d 01 02
B26_016f:		lda wCurrDrawnEntityCachedAttr			; a5 10
B26_0171:		jmp B26_0126		; 4c 26 81

B26_0174:		jsr B26_017b		; 20 7b 81
B26_0177:		bcc B26_016a ; 90 f1

B26_0179:		bcs B26_016c ; b0 f1


secAndGetTileIdxPlus80hIfSpecGroupIs16hPlus:
B26_017b:		lda wCurrEntitySpecGroupDoubled			; a5 0f
B26_017d:		cmp #$16		; c9 16
	bcc +

B26_0181:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0183:		clc				; 18 
B26_0184:		adc #$80		; 69 80
B26_0186:		sec				; 38 

+	rts				; 60 


; todo: vars are used for different purposes
update_wOam_stateC:
B26_0188:		lda #$40		; a9 40
B26_018a:		sta wCurrDrawnEntityIdx			; 85 05
B26_018c:		lda #$00		; a9 00
B26_018e:		sta wCurrDrawnEntityIdx_stateC			; 85 06
B26_0190:		sta wCurrOamOffsetToFill			; 85 04
B26_0192:		lda #$1c		; a9 1c
B26_0194:		sta wNumOamSpotsLeftThisFrame			; 85 07

B26_0196:		ldx wCurrDrawnEntityIdx_stateC			; a6 06
B26_0198:		lda wOamSpecIdxDoubled.w, x	; bd 00 04
B26_019b:		beq B26_01b4 ; f0 17

B26_019d:		lda wEntityState.w, x	; bd 70 04
B26_01a0:		bmi B26_01b4 ; 30 12

B26_01a2:		lda wEntityPaletteOverride.w, x	; bd 54 04
B26_01a5:		sta wCurrDrawnEntityPaletteOverride			; 85 00
B26_01a7:		lda wEntityBaseY.w, x	; bd 1c 04
B26_01aa:		sta wCurrDrawnEntityBaseY			; 85 01
B26_01ac:		lda wEntityBaseX.w, x	; bd 38 04
B26_01af:		sta wCurrDrawnEntityBaseX			; 85 02
B26_01b1:		jsr updateEntityOam_stateC		; 20 dc 81

B26_01b4:		inc wCurrDrawnEntityIdx_stateC			; e6 06
B26_01b6:		dec wNumOamSpotsLeftThisFrame			; c6 07
B26_01b8:		bne B26_0196 ; d0 dc

B26_01ba:		ldx wCurrOamOffsetToFill			; a6 04
B26_01bc:		lda #$f4		; a9 f4
B26_01be:		sta wOam.Y.w, x	; 9d 00 02
B26_01c1:		inx				; e8 
B26_01c2:		inx				; e8 
B26_01c3:		inx				; e8 
B26_01c4:		inx				; e8 
B26_01c5:		bne B26_01bc ; d0 f5

B26_01c7:		rts				; 60 

; from below
B26_01c8:		clc				; 18 
B26_01c9:		bcc B26_0203 ; 90 38

B26_01cb:		clc				; 18 
B26_01cc:		adc wCurrDrawnEntityBaseY			; 65 01
B26_01ce:		sta wOam.Y.w, x	; 9d 00 02
B26_01d1:		iny				; c8 
B26_01d2:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_01d4:		sta wOam.tile.w, x	; 9d 01 02
B26_01d7:		lda wCurrDrawnEntityCachedAttr			; a5 10
B26_01d9:		jmp B26_0222		; 4c 22 82


updateEntityOam_stateC:
B26_01dc:		ldy wEntityOamSpecGroupDoubled.w, x	; bc 8c 04
B26_01df:		lda oamSpecData.w, y	; b9 3e 82
B26_01e2:		sta wCurrEntityOamSpecGroupAddr			; 85 08
B26_01e4:		lda oamSpecData.w+1, y	; b9 3f 82
B26_01e7:		sta wCurrEntityOamSpecGroupAddr+1			; 85 09

B26_01e9:		ldy wOamSpecIdxDoubled.w, x	; bc 00 04
B26_01ec:		lda (wCurrEntityOamSpecGroupAddr), y	; b1 08
B26_01ee:		sta wCurrEntityOamSpecIdxAddr			; 85 0a
B26_01f0:		iny				; c8 
B26_01f1:		lda (wCurrEntityOamSpecGroupAddr), y	; b1 08
B26_01f3:		sta wCurrEntityOamSpecIdxAddr+1			; 85 0b
B26_01f5:		ldy #$00		; a0 00
B26_01f7:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_01f9:		sta wCurrDrawnEntityNumSprites			; 85 03
B26_01fb:		ldx wCurrOamOffsetToFill			; a6 04
B26_01fd:		iny				; c8 
B26_01fe:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0200:		bpl B26_01c8 ; 10 c6

B26_0202:		sec				; 38 
B26_0203:		ror a			; 6a
B26_0204:		bcs B26_01cb ; b0 c5

B26_0206:		adc wCurrDrawnEntityBaseY			; 65 01
B26_0208:		sta wOam.Y.w, x	; 9d 00 02
B26_020b:		iny				; c8 
B26_020c:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_020e:		sta wOam.tile.w, x	; 9d 01 02
B26_0211:		iny				; c8 
B26_0212:		lda wCurrDrawnEntityPaletteOverride			; a5 00
B26_0214:		beq B26_021e ; f0 08

B26_0216:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0218:		and #$fc		; 29 fc
B26_021a:		ora wCurrDrawnEntityPaletteOverride			; 05 00
B26_021c:		bne B26_0220 ; d0 02

B26_021e:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0220:		sta wCurrDrawnEntityCachedAttr			; 85 10

B26_0222:		sta wOam.attr.w, x	; 9d 02 02
B26_0225:		iny				; c8 
B26_0226:		lda (wCurrEntityOamSpecIdxAddr), y	; b1 0a
B26_0228:		clc				; 18 
B26_0229:		adc wCurrDrawnEntityBaseX			; 65 02
B26_022b:		sta wOam.X.w, x	; 9d 03 02
B26_022e:		iny				; c8 
B26_022f:		inx				; e8 
B26_0230:		inx				; e8 
B26_0231:		inx				; e8 
B26_0232:		inx				; e8 
B26_0233:		dec wCurrDrawnEntityIdx			; c6 05
B26_0235:		beq B26_023b ; f0 04

B26_0237:		dec wCurrDrawnEntityNumSprites			; c6 03
B26_0239:		bne B26_01fe ; d0 c3

B26_023b:		stx wCurrOamOffsetToFill			; 86 04
B26_023d:		rts				; 60 
