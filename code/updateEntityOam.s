
update_wOam:
B26_0001:		lda wGameState			; a5 18
B26_0003:		cmp #GS_0c		; c9 0c
B26_0005:		bne B26_000a ; d0 03

B26_0007:		jmp update_wOam_stateC		; 4c 88 81

B26_000a:		lda #$00		; a9 00
B26_000c:		sta $05			; 85 05
B26_000e:		lda #$40		; a9 40
B26_0010:		sta $07			; 85 07
B26_0012:		lda $20			; a5 20
B26_0014:		clc				; 18 
B26_0015:		adc #$44		; 69 44
B26_0017:		sta $20			; 85 20
B26_0019:		sta $04			; 85 04

@nextEntity:
B26_001b:		ldx $05			; a6 05
B26_001d:		cpx #$1c		; e0 1c
B26_001f:		bcs B26_0041 ; @clearRestOfOam

B26_0021:		lda wOamSpecIdx.w, x	; bd 00 04
B26_0024:		beq B26_003d ; @toNextEntity

B26_0026:		lda $0470, x	; bd 70 04
B26_0029:		bmi B26_003d ; @toNextEntity

B26_002b:		lda wEntityPaletteOverride.w, x	; bd 54 04
B26_002e:		sta $00			; 85 00
B26_0030:		lda wEntityBaseY.w, x	; bd 1c 04
B26_0033:		sta $01			; 85 01
B26_0035:		lda wEntityBaseX.w, x	; bd 38 04
B26_0038:		sta $02			; 85 02
B26_003a:		jsr updateEntityOam		; 20 79 80

@toNextEntity:
B26_003d:		inc $05			; e6 05
B26_003f:		bne B26_001b ; @nextEntity

@clearRestOfOam:
B26_0041:		ldx $04			; a6 04
B26_0043:		ldy $07			; a4 07

B26_0045:		lda #$f4		; a9 f4
B26_0047:		sta wOam.Y.w, x	; 9d 00 02
B26_004a:		txa				; 8a 
B26_004b:		clc				; 18 
B26_004c:		adc #$c4		; 69 c4
B26_004e:		tax				; aa 
B26_004f:		dey				; 88 
B26_0050:		bne B26_0045 ; d0 f3

B26_0052:		rts				; 60 


; from below
B26_0053:		jsr func_1a_017b		; 20 7b 81
B26_0056:		bcc B26_0068 ; 90 10

B26_0058:		bcs B26_006a ; b0 10


; from below
B26_005a:		clc				; 18 
B26_005b:		bcc B26_00a7 ; 90 4a

B26_005d:		clc				; 18 
B26_005e:		adc $01			; 65 01
B26_0060:		sta wOam.Y.w, x	; 9d 00 02
B26_0063:		iny				; c8 
B26_0064:		lda $b0			; a5 b0
B26_0066:		bne B26_0053 ; d0 eb

B26_0068:		lda ($0a), y	; b1 0a
B26_006a:		sta wOam.tile.w, x	; 9d 01 02
B26_006d:		lda $10			; a5 10
B26_006f:		jmp func_1a_00ca		; 4c ca 80


; from below
B26_0072:		jsr func_1a_017b		; 20 7b 81
B26_0075:		bcc B26_00b4 ; 90 3d

B26_0077:		bcs B26_00b6 ; b0 3d


updateEntityOam:
; 48c - entity idx * 2??
B26_0079:		ldy wEntityOamSpecGroupDoubled.w, x	; bc 8c 04
B26_007c:		sty $0f			; 84 0f

B26_007e:		lda oamSpecData.w, y	; b9 3e 82
B26_0081:		sta $08			; 85 08
B26_0083:		lda oamSpecData.w+1, y	; b9 3f 82
B26_0086:		sta $09			; 85 09

; 400 - entity sub idx??
B26_0088:		ldy wOamSpecIdx.w, x	; bc 00 04
B26_008b:		lda ($08), y	; b1 08
B26_008d:		sta $0a			; 85 0a
B26_008f:		iny				; c8 
B26_0090:		lda ($08), y	; b1 08
B26_0092:		sta $0b			; 85 0b

; 1st oam spec byte (num tiles), store in $03
B26_0094:		ldy #$00		; a0 00
B26_0096:		lda ($0a), y	; b1 0a
B26_0098:		sta $03			; 85 03

B26_009a:		lda wEntityXFlipped.w, x	; bd a8 04
B26_009d:		beq nonMirroredOam ; f0 5a

; $04 is next fillable wOam offset
B26_009f:		ldx $04			; a6 04

; 2nd oam spec byte (Y)
@nextOam:
B26_00a1:		iny				; c8 
B26_00a2:		lda ($0a), y	; b1 0a
B26_00a4:		bpl B26_005a ; 10 b4

B26_00a6:		sec				; 38 
B26_00a7:		ror a			; 6a
B26_00a8:		bcs B26_005d ; b0 b3

B26_00aa:		adc $01			; 65 01
B26_00ac:		sta wOam.Y.w, x	; 9d 00 02

; 3rd oam spec byte (tile idx)
B26_00af:		iny				; c8 
B26_00b0:		lda $b0			; a5 b0
B26_00b2:		bne B26_0072 ; d0 be

B26_00b4:		lda ($0a), y	; b1 0a
B26_00b6:		sta wOam.tile.w, x	; 9d 01 02

; 4th oam spec byte (attribute)
B26_00b9:		iny				; c8 
B26_00ba:		lda $00			; a5 00
B26_00bc:		beq B26_00c6 ; f0 08

B26_00be:		lda ($0a), y	; b1 0a
B26_00c0:		and #$fc		; 29 fc
B26_00c2:		ora $00			; 05 00
B26_00c4:		bne B26_00c8 ; d0 02

B26_00c6:		lda ($0a), y	; b1 0a
B26_00c8:		sta $10			; 85 10

func_1a_00ca:
B26_00ca:		sta wOam.attr.w, x	; 9d 02 02

; 5th oam spec byte (X)
B26_00cd:		iny				; c8 
B26_00ce:		lda ($0a), y	; b1 0a
B26_00d0:		bmi B26_00ea ; 30 18

; positive x offset
B26_00d2:		clc				; 18 
B26_00d3:		adc $02			; 65 02
B26_00d5:		bcs B26_00ef ; b0 18

B26_00d7:		sta wOam.X.w, x	; 9d 03 02

; wOam offset += $c4
B26_00da:		txa				; 8a 
B26_00db:		clc				; 18 
B26_00dc:		adc #$c4		; 69 c4
B26_00de:		tax				; aa 
B26_00df:		dec $07			; c6 07
B26_00e1:		beq B26_00f6 ; f0 13

B26_00e3:		dec $03			; c6 03
B26_00e5:		bne B26_00a1 ; @nextOam

B26_00e7:		stx $04			; 86 04
B26_00e9:		rts				; 60 

; negative x offset
B26_00ea:		clc				; 18 
B26_00eb:		adc $02			; 65 02
B26_00ed:		bcs B26_00d7 ; b0 e8

B26_00ef:		lda #$f4		; a9 f4
B26_00f1:		sta wOam.Y.w, x	; 9d 00 02
B26_00f4:		bne B26_00da ; d0 e4

; return from update_wOam
B26_00f6:		pla				; 68 
B26_00f7:		pla				; 68 
B26_00f8:		rts				; 60 

; different method of setting to oam
nonMirroredOam:		ldx $04			; a6 04

@nextOam2:
B26_00fb:		iny				; c8 
B26_00fc:		lda ($0a), y	; b1 0a
B26_00fe:		bpl B26_015c ; 10 5c

B26_0100:		sec				; 38 
B26_0101:		ror a			; 6a
B26_0102:		bcs B26_015f ; b0 5b

B26_0104:		adc $01			; 65 01
B26_0106:		sta wOam.Y.w, x	; 9d 00 02
B26_0109:		iny				; c8 
B26_010a:		lda $b0			; a5 b0
B26_010c:		bne B26_0155 ; d0 47

B26_010e:		lda ($0a), y	; b1 0a
.ifdef SEPARATED_LAMP_GFX
B26_0110:	jsr changeLampGfx
.else
B26_0110:		sta wOam.tile.w, x	; 9d 01 02
.endif
B26_0113:		iny				; c8 
B26_0114:		lda $00			; a5 00
B26_0116:		beq B26_0120 ; f0 08

B26_0118:		lda ($0a), y	; b1 0a
B26_011a:		and #$fc		; 29 fc
B26_011c:		ora $00			; 05 00
B26_011e:		bne B26_0122 ; d0 02

B26_0120:		lda ($0a), y	; b1 0a
B26_0122:		eor #$40		; 49 40
B26_0124:		sta $10			; 85 10

B26_0126:		sta wOam.attr.w, x	; 9d 02 02
B26_0129:		iny				; c8 
B26_012a:		lda #$f8		; a9 f8
B26_012c:		sec				; 38 
B26_012d:		sbc ($0a), y	; f1 0a
B26_012f:		bmi B26_0149 ; 30 18

B26_0131:		clc				; 18 
B26_0132:		adc $02			; 65 02
B26_0134:		bcs B26_014e ; b0 18

B26_0136:		sta wOam.X.w, x	; 9d 03 02
B26_0139:		txa				; 8a 
B26_013a:		clc				; 18 
B26_013b:		adc #$c4		; 69 c4
B26_013d:		tax				; aa 
B26_013e:		dec $07			; c6 07
B26_0140:		beq B26_00f6 ; f0 b4

B26_0142:		dec $03			; c6 03
B26_0144:		bne B26_00fb ; @nextOam2

B26_0146:		stx $04			; 86 04
B26_0148:		rts				; 60 

B26_0149:		clc				; 18 
B26_014a:		adc $02			; 65 02
B26_014c:		bcs B26_0136 ; b0 e8

B26_014e:		lda #$f4		; a9 f4
B26_0150:		sta wOam.Y.w, x	; 9d 00 02
B26_0153:		bne B26_0139 ; d0 e4

B26_0155:		jsr func_1a_017b		; 20 7b 81
B26_0158:		bcc B26_010e ; 90 b4

B26_015a:		bcs B26_0110 ; b0 b4

B26_015c:		clc				; 18 
B26_015d:		bcc B26_0101 ; 90 a2

B26_015f:		clc				; 18 
B26_0160:		adc $01			; 65 01
B26_0162:		sta wOam.Y.w, x	; 9d 00 02
B26_0165:		iny				; c8 
B26_0166:		lda $b0			; a5 b0
B26_0168:		bne B26_0174 ; d0 0a

B26_016a:		lda ($0a), y	; b1 0a
B26_016c:		sta wOam.tile.w, x	; 9d 01 02
B26_016f:		lda $10			; a5 10
B26_0171:		jmp B26_0126		; 4c 26 81

B26_0174:		jsr B26_017b		; 20 7b 81
B26_0177:		bcc B26_016a ; 90 f1

B26_0179:		bcs B26_016c ; b0 f1


func_1a_017b:
B26_017b:		lda $0f			; a5 0f
B26_017d:		cmp #$16		; c9 16
B26_017f:		bcc B26_0187 ; 90 06

B26_0181:		lda ($0a), y	; b1 0a
B26_0183:		clc				; 18 
B26_0184:		adc #$80		; 69 80
B26_0186:		sec				; 38 

B26_0187:		rts				; 60 


update_wOam_stateC:
B26_0188:		lda #$40		; a9 40
B26_018a:		sta $05			; 85 05
B26_018c:		lda #$00		; a9 00
B26_018e:		sta $06			; 85 06
B26_0190:		sta $04			; 85 04
B26_0192:		lda #$1c		; a9 1c
B26_0194:		sta $07			; 85 07

B26_0196:		ldx $06			; a6 06
B26_0198:		lda wOamSpecIdx.w, x	; bd 00 04
B26_019b:		beq B26_01b4 ; f0 17

B26_019d:		lda $0470, x	; bd 70 04
B26_01a0:		bmi B26_01b4 ; 30 12

B26_01a2:		lda wEntityPaletteOverride.w, x	; bd 54 04
B26_01a5:		sta $00			; 85 00
B26_01a7:		lda wEntityBaseY.w, x	; bd 1c 04
B26_01aa:		sta $01			; 85 01
B26_01ac:		lda wEntityBaseX.w, x	; bd 38 04
B26_01af:		sta $02			; 85 02
B26_01b1:		jsr updateEntityOam_stateC		; 20 dc 81

B26_01b4:		inc $06			; e6 06
B26_01b6:		dec $07			; c6 07
B26_01b8:		bne B26_0196 ; d0 dc

B26_01ba:		ldx $04			; a6 04
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
B26_01cc:		adc $01			; 65 01
B26_01ce:		sta wOam.Y.w, x	; 9d 00 02
B26_01d1:		iny				; c8 
B26_01d2:		lda ($0a), y	; b1 0a
B26_01d4:		sta wOam.tile.w, x	; 9d 01 02
B26_01d7:		lda $10			; a5 10
B26_01d9:		jmp B26_0222		; 4c 22 82


updateEntityOam_stateC:
B26_01dc:		ldy wEntityOamSpecGroupDoubled.w, x	; bc 8c 04
B26_01df:		lda oamSpecData.w, y	; b9 3e 82
B26_01e2:		sta $08			; 85 08
B26_01e4:		lda oamSpecData.w+1, y	; b9 3f 82
B26_01e7:		sta $09			; 85 09

B26_01e9:		ldy wOamSpecIdx.w, x	; bc 00 04
B26_01ec:		lda ($08), y	; b1 08
B26_01ee:		sta $0a			; 85 0a
B26_01f0:		iny				; c8 
B26_01f1:		lda ($08), y	; b1 08
B26_01f3:		sta $0b			; 85 0b
B26_01f5:		ldy #$00		; a0 00
B26_01f7:		lda ($0a), y	; b1 0a
B26_01f9:		sta $03			; 85 03
B26_01fb:		ldx $04			; a6 04
B26_01fd:		iny				; c8 
B26_01fe:		lda ($0a), y	; b1 0a
B26_0200:		bpl B26_01c8 ; 10 c6

B26_0202:		sec				; 38 
B26_0203:		ror a			; 6a
B26_0204:		bcs B26_01cb ; b0 c5

B26_0206:		adc $01			; 65 01
B26_0208:		sta wOam.Y.w, x	; 9d 00 02
B26_020b:		iny				; c8 
B26_020c:		lda ($0a), y	; b1 0a
B26_020e:		sta wOam.tile.w, x	; 9d 01 02
B26_0211:		iny				; c8 
B26_0212:		lda $00			; a5 00
B26_0214:		beq B26_021e ; f0 08

B26_0216:		lda ($0a), y	; b1 0a
B26_0218:		and #$fc		; 29 fc
B26_021a:		ora $00			; 05 00
B26_021c:		bne B26_0220 ; d0 02

B26_021e:		lda ($0a), y	; b1 0a
B26_0220:		sta $10			; 85 10

B26_0222:		sta wOam.attr.w, x	; 9d 02 02
B26_0225:		iny				; c8 
B26_0226:		lda ($0a), y	; b1 0a
B26_0228:		clc				; 18 
B26_0229:		adc $02			; 65 02
B26_022b:		sta wOam.X.w, x	; 9d 03 02
B26_022e:		iny				; c8 
B26_022f:		inx				; e8 
B26_0230:		inx				; e8 
B26_0231:		inx				; e8 
B26_0232:		inx				; e8 
B26_0233:		dec $05			; c6 05
B26_0235:		beq B26_023b ; f0 04

B26_0237:		dec $03			; c6 03
B26_0239:		bne B26_01fe ; d0 c3

B26_023b:		stx $04			; 86 04
B26_023d:		rts				; 60 
