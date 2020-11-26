
B28_0001:		lda $95			; a5 95
B28_0003:		asl a			; 0a
B28_0004:		asl a			; 0a
B28_0005:		tay				; a8 
B28_0006:		lda $8846, y	; b9 46 88
B28_0009:		sta $08			; 85 08
B28_000b:		lda $8847, y	; b9 47 88
B28_000e:		sta $09			; 85 09
B28_0010:		lda $8848, y	; b9 48 88
B28_0013:		sta $0a			; 85 0a
B28_0015:		lda $8849, y	; b9 49 88
B28_0018:		sta $0b			; 85 0b
B28_001a:		lda $90			; a5 90
B28_001c:		bpl B28_0035 ; 10 17

B28_001e:		and #$7f		; 29 7f
B28_0020:		tay				; a8 
B28_0021:		lda $0509		; ad 09 05
B28_0024:		sec				; 38 
B28_0025:		sbc ($08), y	; f1 08
B28_0027:		sta $0509		; 8d 09 05
B28_002a:		lda $04f2		; ad f2 04
B28_002d:		sbc #$00		; e9 00
B28_002f:		sta $04f2		; 8d f2 04
B28_0032:		jmp $8047		; 4c 47 80


B28_0035:		tay				; a8 
B28_0036:		lda $0509		; ad 09 05
B28_0039:		clc				; 18 
B28_003a:		adc ($08), y	; 71 08
B28_003c:		sta $0509		; 8d 09 05
B28_003f:		lda $04f2		; ad f2 04
B28_0042:		adc #$00		; 69 00
B28_0044:		sta $04f2		; 8d f2 04
B28_0047:		cpy #$34		; c0 34
B28_0049:		bcs B28_005d ; b0 12

B28_004b:		lda $0537		; ad 37 05
B28_004e:		clc				; 18 
B28_004f:		adc ($0a), y	; 71 0a
B28_0051:		sta $0537		; 8d 37 05
B28_0054:		lda $0520		; ad 20 05
B28_0057:		adc #$00		; 69 00
B28_0059:		sta $0520		; 8d 20 05
B28_005c:		rts				; 60 


B28_005d:		tya				; 98 
B28_005e:		sec				; 38 
B28_005f:		sbc #$34		; e9 34
B28_0061:		asl a			; 0a
B28_0062:		tay				; a8 
B28_0063:		lda $0537		; ad 37 05
B28_0066:		clc				; 18 
B28_0067:		adc $8912, y	; 79 12 89
B28_006a:		sta $0537		; 8d 37 05
B28_006d:		lda $0520		; ad 20 05
B28_0070:		adc $8913, y	; 79 13 89
B28_0073:		sta $0520		; 8d 20 05
B28_0076:		rts				; 60 


B28_0077:		lda $90			; a5 90
B28_0079:		bmi B28_0091 ; 30 16

B28_007b:		tay				; a8 
B28_007c:		lda $0509		; ad 09 05
B28_007f:		sec				; 38 
B28_0080:		sbc $892c, y	; f9 2c 89
B28_0083:		sta $0509		; 8d 09 05
B28_0086:		lda $04f2		; ad f2 04
B28_0089:		sbc #$00		; e9 00
B28_008b:		sta $04f2		; 8d f2 04
B28_008e:		jmp $80a6		; 4c a6 80


B28_0091:		and #$7f		; 29 7f
B28_0093:		tay				; a8 
B28_0094:		lda $0509		; ad 09 05
B28_0097:		clc				; 18 
B28_0098:		adc $892c, y	; 79 2c 89
B28_009b:		sta $0509		; 8d 09 05
B28_009e:		lda $04f2		; ad f2 04
B28_00a1:		adc #$00		; 69 00
B28_00a3:		sta $04f2		; 8d f2 04
B28_00a6:		lda $0537		; ad 37 05
B28_00a9:		clc				; 18 
B28_00aa:		adc $894d, y	; 79 4d 89
B28_00ad:		sta $0537		; 8d 37 05
B28_00b0:		lda $0520		; ad 20 05
B28_00b3:		adc #$00		; 69 00
B28_00b5:		sta $0520		; 8d 20 05
B28_00b8:		rts				; 60 


B28_00b9:		lda $56			; a5 56
B28_00bb:		ora $57			; 05 57
B28_00bd:		bne B28_00d8 ; d0 19

B28_00bf:		lda wEntityBaseX.w		; ad 38 04
B28_00c2:		cmp #$40		; c9 40
B28_00c4:		bcs B28_00d8 ; b0 12

B28_00c6:		lda wEntityBaseY.w		; ad 1c 04
B28_00c9:		sec				; 38 
B28_00ca:		sbc #$70		; e9 70
B28_00cc:		bcs B28_00d0 ; b0 02

B28_00ce:		eor #$ff		; 49 ff
B28_00d0:		cmp #$08		; c9 08
B28_00d2:		bcs B28_00d8 ; b0 04

B28_00d4:		lda #$0e		; a9 0e
B28_00d6:		sta $81			; 85 81
B28_00d8:		rts				; 60 


B28_00d9:		lda wCurrRoomGroup		; a5 32
B28_00db:		cmp #$0e		; c9 0e
B28_00dd:		bne B28_00ee ; d0 0f

B28_00df:		lda wCurrRoomSection			; a5 33
B28_00e1:		cmp #$01		; c9 01
B28_00e3:		bne B28_00ee ; d0 09

B28_00e5:		lda wCurrRoomIdx			; a5 34
B28_00e7:		cmp #$01		; c9 01
B28_00e9:		bne B28_00ee ; d0 03

B28_00eb:		jsr $80b9		; 20 b9 80
B28_00ee:		lda $0565		; ad 65 05
B28_00f1:		cmp #$0a		; c9 0a
B28_00f3:		beq B28_00f9 ; f0 04

B28_00f5:		cmp #$1c		; c9 1c
B28_00f7:		bne B28_0101 ; d0 08

B28_00f9:		lda $054e		; ad 4e 05
B28_00fc:		clc				; 18 
B28_00fd:		adc #$04		; 69 04
B28_00ff:		bne B28_0104 ; d0 03

B28_0101:		lda $054e		; ad 4e 05
B28_0104:		sta $82			; 85 82
B28_0106:		lda $af			; a5 af
B28_0108:		beq B28_010c ; f0 02

B28_010a:		dec $af			; c6 af
B28_010c:		lda $bf			; a5 bf
B28_010e:		bne B28_012b ; d0 1b

B28_0110:		lda $80			; a5 80
B28_0112:		beq B28_011e ; f0 0a

B28_0114:		dec $80			; c6 80
B28_0116:		ldy #$80		; a0 80
B28_0118:		lda $1a			; a5 1a
B28_011a:		and #$01		; 29 01
B28_011c:		beq B28_0120 ; f0 02

B28_011e:		ldy #$00		; a0 00
B28_0120:		sty $0470		; 8c 70 04
B28_0123:		lda $b7			; a5 b7
B28_0125:		bne B28_0139 ; d0 12

B28_0127:		lda $81			; a5 81
B28_0129:		bne B28_012c ; d0 01

B28_012b:		rts				; 60 


B28_012c:		cmp #$0d		; c9 0d
B28_012e:		beq B28_018f ; f0 5f

B28_0130:		cmp #$0e		; c9 0e
B28_0132:		beq B28_0154 ; f0 20

B28_0134:		and #$f0		; 29 f0
B28_0136:		bne B28_01a2 ; d0 6a

B28_0138:		rts				; 60 


B28_0139:		lda #$00		; a9 00
B28_013b:		sta $b7			; 85 b7
B28_013d:		lda $2a			; a5 2a
B28_013f:		sta $9f			; 85 9f
B28_0141:		lda #$19		; a9 19
B28_0143:		sta $2a			; 85 2a
B28_0145:		lda $0565		; ad 65 05
B28_0148:		ora #$80		; 09 80
B28_014a:		sta $0565		; 8d 65 05
B28_014d:		lda #$2c		; a9 2c
B28_014f:		sta wGenericStateTimer			; 85 30
B28_0151:		pla				; 68 
B28_0152:		pla				; 68 
B28_0153:		rts				; 60 


B28_0154:		lda #$00		; a9 00
B28_0156:		ldx #$10		; a2 10
B28_0158:		jsr func_1f_1cdd		; 20 dd fc
B28_015b:		beq B28_0172 ; f0 15

B28_015d:		lda wCurrRoomGroup		; a5 32
B28_015f:		cmp #$01		; c9 01
B28_0161:		beq B28_0167 ; f0 04

B28_0163:		lda $56			; a5 56
B28_0165:		bne B28_0172 ; d0 0b

B28_0167:		lda $0565		; ad 65 05
B28_016a:		cmp #$02		; c9 02
B28_016c:		beq B28_0173 ; f0 05

B28_016e:		cmp #$04		; c9 04
B28_0170:		beq B28_0173 ; f0 01

B28_0172:		rts				; 60 


B28_0173:		jsr $8a02		; 20 02 8a
B28_0176:		lda $054e		; ad 4e 05
B28_0179:		cmp #$02		; c9 02
B28_017b:		bne B28_0186 ; d0 09

B28_017d:		lda wEntityBaseY.w		; ad 1c 04
B28_0180:		clc				; 18 
B28_0181:		adc #$04		; 69 04
B28_0183:		sta wEntityBaseY.w		; 8d 1c 04
B28_0186:		lda #$18		; a9 18
B28_0188:		sta $2a			; 85 2a
B28_018a:		lda #$00		; a9 00
B28_018c:		sta $6b			; 85 6b
B28_018e:		rts				; 60 


B28_018f:		jsr $bdc4		; 20 c4 bd
B28_0192:		lda #$3c		; a9 3c
B28_0194:		sta $05d4		; 8d d4 05
B28_0197:		lda #$28		; a9 28
B28_0199:		sta $0565		; 8d 65 05
B28_019c:		lda #$00		; a9 00
B28_019e:		sta $05eb		; 8d eb 05
B28_01a1:		rts				; 60 


B28_01a2:		nop				; ea 
B28_01a3:		lda $80			; a5 80
B28_01a5:		ora $ad			; 05 ad
B28_01a7:		bne B28_012b ; d0 82

B28_01a9:		lda $054e		; ad 4e 05
B28_01ac:		asl a			; 0a
B28_01ad:		tay				; a8 
B28_01ae:		lda $8298, y	; b9 98 82
B28_01b1:		sta $08			; 85 08
B28_01b3:		lda $8299, y	; b9 99 82
B28_01b6:		sta $09			; 85 09
B28_01b8:		ldy #$00		; a0 00
B28_01ba:		lda ($08), y	; b1 08
B28_01bc:		bmi B28_0208 ; 30 4a

B28_01be:		cmp $0565		; cd 65 05
B28_01c1:		beq B28_01c7 ; f0 04

B28_01c3:		iny				; c8 
B28_01c4:		iny				; c8 
B28_01c5:		bne B28_01ba ; d0 f3

B28_01c7:		iny				; c8 
B28_01c8:		lda ($08), y	; b1 08
B28_01ca:		beq B28_0153 ; f0 87

B28_01cc:		jsr $8263		; 20 63 82
B28_01cf:		beq B28_020b ; f0 3a

B28_01d1:		ldy $054e		; ac 4e 05
B28_01d4:		lda $8294, y	; b9 94 82
B28_01d7:		jsr playSound		; 20 5f e2
B28_01da:		jsr $bdc4		; 20 c4 bd
B28_01dd:		lda #$00		; a9 00
B28_01df:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_01e2:		lda $0565		; ad 65 05
B28_01e5:		sta $05d4		; 8d d4 05
B28_01e8:		lda #$20		; a9 20
B28_01ea:		sta $05eb		; 8d eb 05
B28_01ed:		lda #$01		; a9 01
B28_01ef:		sta $0602		; 8d 02 06
B28_01f2:		lda #$78		; a9 78
B28_01f4:		sta $80			; 85 80
B28_01f6:		lda #$26		; a9 26
B28_01f8:		sta $0565		; 8d 65 05
B28_01fb:		rts				; 60 


B28_01fc:		ldy $054e		; ac 4e 05
B28_01ff:		lda $8294, y	; b9 94 82
B28_0202:		jsr playSound		; 20 5f e2
B28_0205:		jmp $8cf9		; 4c f9 8c


B28_0208:		jsr $8263		; 20 63 82
B28_020b:		ldy $054e		; ac 4e 05
B28_020e:		lda $8294, y	; b9 94 82
B28_0211:		jsr playSound		; 20 5f e2
B28_0214:		jsr $bdc4		; 20 c4 bd
B28_0217:		lda #$00		; a9 00
B28_0219:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_021c:		lda $0565		; ad 65 05
B28_021f:		sta $05d4		; 8d d4 05
B28_0222:		lda #$20		; a9 20
B28_0224:		sta $05eb		; 8d eb 05
B28_0227:		lda #$00		; a9 00
B28_0229:		sta $0602		; 8d 02 06
B28_022c:		lda #$78		; a9 78
B28_022e:		sta $80			; 85 80
B28_0230:		lda #$26		; a9 26
B28_0232:		sta $0565		; 8d 65 05
B28_0235:		lda #$10		; a9 10
B28_0237:		sta $0400		; 8d 00 04
B28_023a:		lda #$fe		; a9 fe
B28_023c:		sta $0520		; 8d 20 05
B28_023f:		lda #$00		; a9 00
B28_0241:		sta $0537		; 8d 37 05
B28_0244:		lda $90			; a5 90
B28_0246:		beq B28_0253 ; f0 0b

B28_0248:		lda #$01		; a9 01
B28_024a:		sta $04a8		; 8d a8 04
B28_024d:		lda #$01		; a9 01
B28_024f:		ldy #$00		; a0 00
B28_0251:		beq B28_025c ; f0 09

B28_0253:		lda #$00		; a9 00
B28_0255:		sta $04a8		; 8d a8 04
B28_0258:		lda #$ff		; a9 ff
B28_025a:		ldy #$00		; a0 00
B28_025c:		sta $04f2		; 8d f2 04
B28_025f:		sty $0509		; 8c 09 05
B28_0262:		rts				; 60 


B28_0263:		lda $054e		; ad 4e 05
B28_0266:		asl a			; 0a
B28_0267:		tay				; a8 
B28_0268:		lda $82e4, y	; b9 e4 82
B28_026b:		sta $08			; 85 08
B28_026d:		lda $82e5, y	; b9 e5 82
B28_0270:		sta $09			; 85 09
B28_0272:		lda $81			; a5 81
B28_0274:		lsr a			; 4a
B28_0275:		lsr a			; 4a
B28_0276:		lsr a			; 4a
B28_0277:		lsr a			; 4a
B28_0278:		cmp #$0f		; c9 0f
B28_027a:		beq B28_028e ; f0 12

B28_027c:		tay				; a8 
B28_027d:		lda ($08), y	; b1 08
B28_027f:		tay				; a8 
B28_0280:		lda $3c			; a5 3c
B28_0282:		sec				; 38 
B28_0283:		sbc $830c, y	; f9 0c 83
B28_0286:		bcs B28_028a ; b0 02

B28_0288:		lda #$00		; a9 00
B28_028a:		sta $3c			; 85 3c
B28_028c:		clc				; 18 
B28_028d:		rts				; 60 


B28_028e:		lda #$00		; a9 00
B28_0290:		sta $3c			; 85 3c
B28_0292:		sec				; 38 
B28_0293:		rts				; 60 


B28_0294:	.db $73
B28_0295:		adc $74, x		; 75 74
B28_0297:		ror $a0, x		; 76 a0
B28_0299:	.db $82
B28_029a:	.db $af
B28_029b:	.db $82
B28_029c:		ldx $cd82, y	; be 82 cd
B28_029f:	.db $82
B28_02a0:		bpl B28_02a3 ; 10 01

B28_02a2:	.db $12
B28_02a3:		ora ($14, x)	; 01 14
B28_02a5:		ora ($1e, x)	; 01 1e
B28_02a7:		ora ($24, x)	; 01 24
B28_02a9:		ora ($16, x)	; 01 16
B28_02ab:		.db $00				; 00
B28_02ac:		rol $00			; 26 00
B28_02ae:	.db $ff
B28_02af:		bpl B28_02b2 ; 10 01

B28_02b1:	.db $12
B28_02b2:		ora ($14, x)	; 01 14
B28_02b4:		ora ($1e, x)	; 01 1e
B28_02b6:		ora ($24, x)	; 01 24
B28_02b8:		ora ($16, x)	; 01 16
B28_02ba:		.db $00				; 00
B28_02bb:		rol $00			; 26 00
B28_02bd:	.db $ff
B28_02be:		bpl B28_02c1 ; 10 01

B28_02c0:	.db $12
B28_02c1:		ora ($14, x)	; 01 14
B28_02c3:		ora ($1e, x)	; 01 1e
B28_02c5:		ora ($24, x)	; 01 24
B28_02c7:		ora ($16, x)	; 01 16
B28_02c9:		.db $00				; 00
B28_02ca:		rol $00			; 26 00
B28_02cc:	.db $ff
B28_02cd:		bpl B28_02d0 ; 10 01

B28_02cf:	.db $12
B28_02d0:		ora ($14, x)	; 01 14
B28_02d2:		ora ($1e, x)	; 01 1e
B28_02d4:		ora ($24, x)	; 01 24
B28_02d6:		ora ($16, x)	; 01 16
B28_02d8:		.db $00				; 00
B28_02d9:		rol $00			; 26 00
B28_02db:		bmi B28_02dd ; 30 00

B28_02dd:	.db $32
B28_02de:		.db $00				; 00
B28_02df:	.db $3c
B28_02e0:		.db $00				; 00
B28_02e1:		rol $ff00, x	; 3e 00 ff
B28_02e4:		cpx $fc82		; ec 82 fc
B28_02e7:	.db $82
B28_02e8:	.db $fc
B28_02e9:	.db $82
B28_02ea:	.db $ec $82 $00
B28_02ed:		ora ($02, x)	; 01 02
B28_02ef:	.db $03
B28_02f0:	.db $04
B28_02f1:		ora $06			; 05 06
B28_02f3:	.db $07
B28_02f4:		php				; 08 
B28_02f5:		ora #$0a		; 09 0a
B28_02f7:	.db $0b
B28_02f8:	.db $0c
B28_02f9:		ora $0f0e		; 0d 0e 0f
B28_02fc:		.db $00				; 00
B28_02fd:	.db $02
B28_02fe:	.db $03
B28_02ff:	.db $04
B28_0300:		ora $06			; 05 06
B28_0302:	.db $07
B28_0303:		php				; 08 
B28_0304:		ora #$0a		; 09 0a
B28_0306:	.db $0c
B28_0307:	.db $0c
B28_0308:		ora $0f0e		; 0d 0e 0f
B28_030b:	.db $0f
B28_030c:		.db $00				; 00
B28_030d:		php				; 08 
B28_030e:	.db $0c
B28_030f:		bpl B28_0325 ; 10 14

B28_0311:		clc				; 18 
B28_0312:	.db $1c
B28_0313:		jsr $2824		; 20 24 28
B28_0316:		bit $3430		; 2c 30 34
B28_0319:		sec				; 38 
B28_031a:	.db $3c
B28_031b:		rti				; 40 


B28_031c:		lda $054e		; ad 4e 05
B28_031f:		cmp #$03		; c9 03
B28_0321:		bne B28_033c ; d0 19

B28_0323:		lda $3c			; a5 3c
B28_0325:		beq B28_034d ; f0 26

B28_0327:		ldy #$00		; a0 00
B28_0329:		lda $a6a2, y	; b9 a2 a6
B28_032c:		bmi B28_033c ; 30 0e

B28_032e:		cmp $05d4		; cd d4 05
B28_0331:		beq B28_0336 ; f0 03

B28_0333:		iny				; c8 
B28_0334:		bne B28_0329 ; d0 f3

B28_0336:		lda #$3c		; a9 3c
B28_0338:		sta $0565		; 8d 65 05
B28_033b:		rts				; 60 


B28_033c:		lda $0602		; ad 02 06
B28_033f:		beq B28_034d ; f0 0c

B28_0341:		dec $05eb		; ce eb 05
B28_0344:		bne B28_034c ; d0 06

B28_0346:		lda $05d4		; ad d4 05
B28_0349:		sta $0565		; 8d 65 05
B28_034c:		rts				; 60 


.ifdef IMPROVED_CONTROLS_TEST
B28_034d:
	nop
	nop
	jsr func2
.else
B28_034d:		lda #$08		; a9 08
B28_034f:		ldy $04f2		; ac f2 04
.endif
B28_0352:		bpl B28_0356 ; 10 02

B28_0354:		lda #$f8		; a9 f8
B28_0356:		sta $08			; 85 08
B28_0358:		ldx #$f0		; a2 f0
B28_035a:		jsr func_1f_1cdd		; 20 dd fc
B28_035d:		bne B28_0368 ; d0 09

B28_035f:		lda $08			; a5 08
B28_0361:		ldx #$00		; a2 00
B28_0363:		jsr func_1f_1cdd		; 20 dd fc
B28_0366:		beq B28_036e ; f0 06

B28_0368:		jsr $97cf		; 20 cf 97
B28_036b:		jmp $8371		; 4c 71 83


B28_036e:		jsr $97a1		; 20 a1 97
B28_0371:		lda $0565		; ad 65 05
B28_0374:		cmp #$02		; c9 02
B28_0376:		beq B28_0379 ; f0 01

B28_0378:		rts				; 60 


B28_0379:		lda #$00		; a9 00
B28_037b:		sta $b9			; 85 b9
B28_037d:		lda $054e		; ad 4e 05
B28_0380:		cmp #$02		; c9 02
B28_0382:		bne B28_0393 ; d0 0f

B28_0384:		lda $8b			; a5 8b
B28_0386:		cmp #$01		; c9 01
B28_0388:		beq B28_0393 ; f0 09

B28_038a:		lda wEntityBaseY.w		; ad 1c 04
B28_038d:		clc				; 18 
B28_038e:		adc #$04		; 69 04
B28_0390:		sta wEntityBaseY.w		; 8d 1c 04
B28_0393:		lda $3c			; a5 3c
B28_0395:		beq B28_0398 ; f0 01

B28_0397:		rts				; 60 


B28_0398:		lda $bf			; a5 bf
B28_039a:		bne B28_03a9 ; d0 0d

B28_039c:		lda #$00		; a9 00
B28_039e:		sta $3c			; 85 3c
B28_03a0:		lda #$2e		; a9 2e
B28_03a2:		sta $0565		; 8d 65 05
B28_03a5:		lda #$80		; a9 80
B28_03a7:		sta $bf			; 85 bf
B28_03a9:		rts				; 60 


B28_03aa:		lda $80			; a5 80
B28_03ac:		bne B28_03bd ; d0 0f

B28_03ae:		ldx #$f8		; a2 f8
B28_03b0:		lda #$00		; a9 00
B28_03b2:		jsr func_1f_1cdd		; 20 dd fc
B28_03b5:		cmp #$05		; c9 05
B28_03b7:		beq B28_03bf ; f0 06

B28_03b9:		cmp #$07		; c9 07
B28_03bb:		beq B28_03bf ; f0 02

B28_03bd:		clc				; 18 
B28_03be:		rts				; 60 


B28_03bf:		jsr $83f4		; 20 f4 83
B28_03c2:		sec				; 38 
B28_03c3:		rts				; 60 


B28_03c4:		lda $8b			; a5 8b
B28_03c6:		cmp #$01		; c9 01
B28_03c8:		beq B28_03dd ; f0 13

B28_03ca:		cmp #$05		; c9 05
B28_03cc:		beq B28_03dd ; f0 0f

B28_03ce:		cmp #$06		; c9 06
B28_03d0:		beq B28_03dd ; f0 0b

B28_03d2:		ldx #$0c		; a2 0c
B28_03d4:		lda #$00		; a9 00
B28_03d6:		jsr func_1f_1cdd		; 20 dd fc
B28_03d9:		bne B28_03dd ; d0 02

B28_03db:		sec				; 38 
B28_03dc:		rts				; 60 


B28_03dd:		clc				; 18 
B28_03de:		rts				; 60 


B28_03df:		jsr func_1f_1be8		; 20 e8 fb
B28_03e2:		ldx $08			; a6 08
B28_03e4:		lda #$fb		; a9 fb
B28_03e6:		jsr func_1f_1cdd		; 20 dd fc
B28_03e9:		cmp #$04		; c9 04
B28_03eb:		beq B28_03ef ; f0 02

B28_03ed:		sec				; 38 
B28_03ee:		rts				; 60 

B28_03ef:		jsr func_1f_1be8		; 20 e8 fb
B28_03f2:		sec				; 38 
B28_03f3:		rts				; 60 


B28_03f4:		lda $bf			; a5 bf
B28_03f6:		bne B28_041c ; d0 24

B28_03f8:		lda #$00		; a9 00
B28_03fa:		sta $3c			; 85 3c
B28_03fc:		jmp $820b		; 4c 0b 82


B28_03ff:		jsr func_1f_1cdd		; 20 dd fc
B28_0402:		beq B28_040a ; f0 06

B28_0404:		cmp #$01		; c9 01
B28_0406:		beq B28_040a ; f0 02

B28_0408:		cmp #$08		; c9 08
B28_040a:		rts				; 60 


B28_040b:		jsr func_1f_1cdd		; 20 dd fc
B28_040e:		beq B28_0412 ; f0 02

B28_0410:		cmp #$01		; c9 01
B28_0412:		rts				; 60 


B28_0413:		lda $80			; a5 80
B28_0415:		bne B28_041c ; d0 05

B28_0417:		jsr $83f4		; 20 f4 83
B28_041a:		pla				; 68 
B28_041b:		pla				; 68 
B28_041c:		rts				; 60 


func_1c_041d:
B28_041d:		ldx #$0c		; a2 0c
B28_041f:		bne B28_0423 ; d0 02

B28_0421:		ldx #$10		; a2 10
B28_0423:		stx $08			; 86 08
B28_0425:		lda $8b			; a5 8b
B28_0427:		cmp #$01		; c9 01
B28_0429:		bne B28_042e ; d0 03

B28_042b:		jmp $84e0		; 4c e0 84

B28_042e:		cmp #$05		; c9 05
B28_0430:		bne B28_0435 ; d0 03

B28_0432:		jmp $8513		; 4c 13 85

B28_0435:		cmp #$06		; c9 06
B28_0437:		bne B28_043c ; d0 03

B28_0439:		jmp $851e		; 4c 1e 85

B28_043c:		lda #$05		; a9 05
B28_043e:		jsr func_1f_1cdd		; 20 dd fc
B28_0441:		beq B28_0461 ; f0 1e

B28_0443:		cmp #$01		; c9 01
B28_0445:		beq B28_04c0 ; f0 79

B28_0447:		cmp #$02		; c9 02
B28_0449:		beq B28_0490 ; f0 45

B28_044b:		cmp #$03		; c9 03
B28_044d:		beq B28_04aa ; f0 5b

B28_044f:		cmp #$04		; c9 04
B28_0451:		beq B28_03df ; f0 8c

B28_0453:		cmp #$05		; c9 05
B28_0455:		beq B28_0413 ; f0 bc

B28_0457:		cmp #$07		; c9 07
B28_0459:		beq B28_0413 ; f0 b8

B28_045b:		cmp #$0c		; c9 0c
B28_045d:		bcs B28_03df ; b0 80

B28_045f:		bcc B28_048c ; 90 2b

B28_0461:		ldx $08			; a6 08
B28_0463:		lda #$fb		; a9 fb
B28_0465:		jsr func_1f_1cdd		; 20 dd fc
B28_0468:		beq B28_048e ; f0 24

B28_046a:		cmp #$01		; c9 01
B28_046c:		beq B28_04c9 ; f0 5b

B28_046e:		cmp #$02		; c9 02
B28_0470:		beq B28_0490 ; f0 1e

B28_0472:		cmp #$03		; c9 03
B28_0474:		beq B28_04aa ; f0 34

B28_0476:		cmp #$04		; c9 04
B28_0478:		bne B28_047d ; d0 03

B28_047a:		jmp $83ef		; 4c ef 83


B28_047d:		cmp #$05		; c9 05
B28_047f:		beq B28_0413 ; f0 92

B28_0481:		cmp #$07		; c9 07
B28_0483:		beq B28_0413 ; f0 8e

B28_0485:		cmp #$0c		; c9 0c
B28_0487:		bcc B28_048c ; 90 03

B28_0489:		jmp $83ef		; 4c ef 83


B28_048c:		sec				; 38 
B28_048d:		rts				; 60 


B28_048e:		clc				; 18 
B28_048f:		rts				; 60 


B28_0490:		lda $2a			; a5 2a
B28_0492:		cmp #$1b		; c9 1b
B28_0494:		bne B28_049a ; d0 04

B28_0496:		lda #$00		; a9 00
B28_0498:		beq B28_04a6 ; f0 0c

B28_049a:		lda $8b			; a5 8b
B28_049c:		cmp #$08		; c9 08
B28_049e:		bne B28_04a4 ; d0 04

B28_04a0:		lda #$09		; a9 09
B28_04a2:		bne B28_04a6 ; d0 02

B28_04a4:		lda #$0b		; a9 0b
B28_04a6:		sta $8b			; 85 8b
B28_04a8:		sec				; 38 
B28_04a9:		rts				; 60 


B28_04aa:		lda $2a			; a5 2a
B28_04ac:		cmp #$1b		; c9 1b
B28_04ae:		bne B28_04b4 ; d0 04

B28_04b0:		lda #$00		; a9 00
B28_04b2:		beq B28_04a6 ; f0 f2

B28_04b4:		lda $8b			; a5 8b
B28_04b6:		cmp #$08		; c9 08
B28_04b8:		beq B28_04be ; f0 04

B28_04ba:		lda #$0a		; a9 0a
B28_04bc:		sta $8b			; 85 8b
B28_04be:		sec				; 38 
B28_04bf:		rts				; 60 


B28_04c0:		ldx $08			; a6 08
B28_04c2:		lda #$fb		; a9 fb
B28_04c4:		jsr $840b		; 20 0b 84
B28_04c7:		bne B28_048c ; d0 c3

B28_04c9:		lda #$07		; a9 07
B28_04cb:		sta $8b			; 85 8b
B28_04cd:		lda $04db		; ad db 04
B28_04d0:		clc				; 18 
B28_04d1:		adc #$40		; 69 40
B28_04d3:		sta $04db		; 8d db 04
B28_04d6:		lda wEntityBaseY.w		; ad 1c 04
B28_04d9:		adc #$00		; 69 00
B28_04db:		sta wEntityBaseY.w		; 8d 1c 04
B28_04de:		sec				; 38 
B28_04df:		rts				; 60 


B28_04e0:		ldx $08			; a6 08
B28_04e2:		lda #$05		; a9 05
B28_04e4:		jsr func_1f_1cdd		; 20 dd fc
B28_04e7:		bne B28_04f9 ; d0 10

B28_04e9:		ldx $08			; a6 08
B28_04eb:		lda #$fb		; a9 fb
B28_04ed:		jsr func_1f_1cdd		; 20 dd fc
B28_04f0:		bne B28_04f9 ; d0 07

B28_04f2:		ldx $91			; a6 91
B28_04f4:		jsr $fe9c		; 20 9c fe
B28_04f7:		sec				; 38 
B28_04f8:		rts				; 60 


B28_04f9:		lda #$00		; a9 00
B28_04fb:		sta $8b			; 85 8b
B28_04fd:		jsr $8a02		; 20 02 8a
B28_0500:		ldy $054e		; ac 4e 05
B28_0503:		cpy #$02		; c0 02
B28_0505:		bne B28_04f7 ; d0 f0

B28_0507:		lda wEntityBaseY.w		; ad 1c 04
B28_050a:		clc				; 18 
B28_050b:		adc #$04		; 69 04
B28_050d:		sta wEntityBaseY.w		; 8d 1c 04
B28_0510:		jmp $84f7		; 4c f7 84


B28_0513:		lda wEntityBaseY.w		; ad 1c 04
B28_0516:		clc				; 18 
B28_0517:		adc $91			; 65 91
B28_0519:		sta wEntityBaseY.w		; 8d 1c 04
B28_051c:		sec				; 38 
B28_051d:		rts				; 60 


B28_051e:		lda wEntityBaseY.w		; ad 1c 04
B28_0521:		clc				; 18 
B28_0522:		adc $91			; 65 91
B28_0524:		sta wEntityBaseY.w		; 8d 1c 04
B28_0527:		sec				; 38 
B28_0528:		rts				; 60 


B28_0529:		jsr $852d		; 20 2d 85
B28_052c:		rts				; 60 


B28_052d:		ldy #$00		; a0 00
B28_052f:		lda $8561, y	; b9 61 85
B28_0532:		cmp #$ff		; c9 ff
B28_0534:		beq B28_0545 ; f0 0f

B28_0536:		iny				; c8 
B28_0537:		cmp $0565		; cd 65 05
B28_053a:		bne B28_052f ; d0 f3

B28_053c:		lda wEntityPaletteOverride.w		; ad 54 04
B28_053f:		and #$df		; 29 df
B28_0541:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_0544:		rts				; 60 


B28_0545:		lda $7d			; a5 7d
B28_0547:		and #$0f		; 29 0f
B28_0549:		asl a			; 0a
B28_054a:		tay				; a8 
B28_054b:		lda wEntityBaseY.w		; ad 1c 04
B28_054e:		cmp $8568, y	; d9 68 85
B28_0551:		bcc B28_053c ; 90 e9

B28_0553:		cmp $8569, y	; d9 69 85
B28_0556:		bcs B28_053c ; b0 e4

B28_0558:		lda wEntityPaletteOverride.w		; ad 54 04
B28_055b:		ora #$20		; 09 20
B28_055d:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_0560:		rts				; 60 


B28_0561:		asl $1210		; 0e 10 12
B28_0564:	.db $14
B28_0565:		asl $ff24, x	; 1e 24 ff
B28_0568:		rti				; 40 


B28_0569:		lda $80			; a5 80
B28_056b:		cmp $20			; c5 20
B28_056d:		rts				; 60 


B28_056e:		;removed
	.db $b0 $e0

B28_0570:		lda $68			; a5 68
B28_0572:		cmp #$82		; c9 82
B28_0574:		bcs B28_0577 ; b0 01

B28_0576:		rts				; 60 


B28_0577:		lda wEntityBaseY.w		; ad 1c 04
B28_057a:		clc				; 18 
B28_057b:		adc $6e			; 65 6e
B28_057d:		sta wEntityBaseY.w		; 8d 1c 04
B28_0580:		lda $d3			; a5 d3
B28_0582:		clc				; 18 
B28_0583:		adc $6e			; 65 6e
B28_0585:		sta $d3			; 85 d3
B28_0587:		rts				; 60 


B28_0588:		lda $68			; a5 68
B28_058a:		bmi B28_05b7 ; 30 2b

B28_058c:		lda $57			; a5 57
B28_058e:		bmi B28_05a6 ; 30 16

B28_0590:		cmp $71			; c5 71
B28_0592:		beq B28_0595 ; f0 01

B28_0594:		rts				; 60 


B28_0595:		lda $56			; a5 56
B28_0597:		clc				; 18 
B28_0598:		adc wEntityBaseX.w		; 6d 38 04
B28_059b:		sta wEntityBaseX.w		; 8d 38 04
B28_059e:		lda $71			; a5 71
B28_05a0:		sta $57			; 85 57
B28_05a2:		lda #$00		; a9 00
B28_05a4:		beq B28_05b3 ; f0 0d

B28_05a6:		lda $56			; a5 56
B28_05a8:		clc				; 18 
B28_05a9:		adc wEntityBaseX.w		; 6d 38 04
B28_05ac:		sta wEntityBaseX.w		; 8d 38 04
B28_05af:		lda #$00		; a9 00
B28_05b1:		sta $57			; 85 57
B28_05b3:		sta $56			; 85 56
B28_05b5:		sta $58			; 85 58
B28_05b7:		rts				; 60 


B28_05b8:		lda #$00		; a9 00
B28_05ba:		sta $58			; 85 58
B28_05bc:		lda $0565		; ad 65 05
B28_05bf:		cmp #$16		; c9 16
B28_05c1:		bne B28_0611 ; d0 4e

B28_05c3:		lda $68			; a5 68
B28_05c5:		bmi B28_0612 ; 30 4b

B28_05c7:		lda $73			; a5 73
B28_05c9:		bmi B28_0616 ; 30 4b

B28_05cb:		ldx #$00		; a2 00
B28_05cd:		lda $0520		; ad 20 05
B28_05d0:		bmi B28_05d6 ; 30 04

B28_05d2:		inx				; e8 
B28_05d3:		inx				; e8 
B28_05d4:		inx				; e8 
B28_05d5:		inx				; e8 
B28_05d6:		lda wEntityAI_idx.w		; ad ef 05
B28_05d9:		beq B28_05dd ; f0 02

B28_05db:		inx				; e8 
B28_05dc:		inx				; e8 
B28_05dd:		lda $861a, x	; bd 1a 86
B28_05e0:		clc				; 18 
B28_05e1:		adc wEntityBaseX.w		; 6d 38 04
B28_05e4:		sta wEntityBaseX.w		; 8d 38 04
B28_05e7:		lda $861b, x	; bd 1b 86
B28_05ea:		sta wEntityBaseY.w		; 8d 1c 04
B28_05ed:		ldy $054e		; ac 4e 05
B28_05f0:		lda $8632, y	; b9 32 86
B28_05f3:		clc				; 18 
B28_05f4:		adc wEntityBaseY.w		; 6d 1c 04
B28_05f7:		sta wEntityBaseY.w		; 8d 1c 04
B28_05fa:		lda wEntityBaseX.w		; ad 38 04
B28_05fd:		ldx wEntityAI_idx.w		; ae ef 05
B28_0600:		beq B28_060a ; f0 08

B28_0602:		clc				; 18 
B28_0603:		adc $8632, y	; 79 32 86
B28_0606:		sta wEntityBaseX.w		; 8d 38 04
B28_0609:		rts				; 60 


B28_060a:		sec				; 38 
B28_060b:		sbc $8632, y	; f9 32 86
B28_060e:		sta wEntityBaseX.w		; 8d 38 04
B28_0611:		rts				; 60 


B28_0612:		ldx #$08		; a2 08
B28_0614:		bne B28_05cd ; d0 b7

B28_0616:		ldx #$10		; a2 10
B28_0618:		bne B28_05cd ; d0 b3

B28_061a:		clc				; 18 
B28_061b:		;removed
	.db $d0 $e8

B28_061d:		bne B28_060b ; d0 ec

B28_061f:		plp				; 28 
B28_0620:		ora $28, x		; 15 28
B28_0622:		ora $e8d3, y	; 19 d3 e8
B28_0625:	.db $d3
B28_0626:	.db $f3
B28_0627:	.db $33
B28_0628:		ora $1133		; 0d 33 11
B28_062b:		bne B28_061d ; d0 f0

B28_062d:		bne B28_061a ; d0 eb

B28_062f:		plp				; 28 
B28_0630:		ora $28, x		; 15 28
B28_0632:		.db $00				; 00
B28_0633:		.db $00				; 00
B28_0634:	.db $04
B28_0635:		.db $00				; 00
B28_0636:		lda $56			; a5 56
B28_0638:		beq B28_066f ; f0 35

B28_063a:		clc				; 18 
B28_063b:		adc wEntityBaseX.w		; 6d 38 04
B28_063e:		sta wEntityBaseX.w		; 8d 38 04
B28_0641:		rts				; 60 


B28_0642:		lda $68			; a5 68
B28_0644:		bmi B28_0636 ; 30 f0

B28_0646:		lda wEntityBaseX.w		; ad 38 04
B28_0649:		bmi B28_067a ; 30 2f

B28_064b:		lda $56			; a5 56
B28_064d:		ora $57			; 05 57
B28_064f:		beq B28_0679 ; f0 28

B28_0651:		lda #$80		; a9 80
B28_0653:		sec				; 38 
B28_0654:		sbc wEntityBaseX.w		; ed38 04
B28_0657:		sta $08			; 85 08
B28_0659:		lda $56			; a5 56
B28_065b:		sec				; 38 
B28_065c:		sbc $08			; e5 08
B28_065e:		bcs B28_0672 ; b0 12

B28_0660:		ldy $57			; a4 57
B28_0662:		dey				; 88 
B28_0663:		bpl B28_0670 ; 10 0b

B28_0665:		clc				; 18 
B28_0666:		adc #$80		; 69 80
B28_0668:		sta wEntityBaseX.w		; 8d 38 04
B28_066b:		lda #$00		; a9 00
B28_066d:		sta $56			; 85 56
B28_066f:		rts				; 60 


B28_0670:		sty $57			; 84 57
B28_0672:		sta $56			; 85 56
B28_0674:		lda #$80		; a9 80
B28_0676:		sta wEntityBaseX.w		; 8d 38 04
B28_0679:		rts				; 60 


B28_067a:		lda $57			; a5 57
B28_067c:		cmp $71			; c5 71
B28_067e:		beq B28_0679 ; f0 f9

B28_0680:		lda wEntityBaseX.w		; ad 38 04
B28_0683:		sec				; 38 
B28_0684:		sbc #$80		; e9 80
B28_0686:		beq B28_0679 ; f0 f1

B28_0688:		sta $08			; 85 08
B28_068a:		lda $56			; a5 56
B28_068c:		clc				; 18 
B28_068d:		adc $08			; 65 08
B28_068f:		bcc B28_0672 ; 90 e1

B28_0691:		ldy $57			; a4 57
B28_0693:		iny				; c8 
B28_0694:		cpy $71			; c4 71
B28_0696:		bne B28_0670 ; d0 d8

B28_0698:		clc				; 18 
B28_0699:		adc #$80		; 69 80
B28_069b:		sta wEntityBaseX.w		; 8d 38 04
B28_069e:		sty $57			; 84 57
B28_06a0:		lda #$00		; a9 00
B28_06a2:		sta $56			; 85 56
B28_06a4:		rts				; 60 


B28_06a5:		clc				; 18 
B28_06a6:		adc $0537		; 6d 37 05
B28_06a9:		sta $0537		; 8d 37 05
B28_06ac:		lda #$00		; a9 00
B28_06ae:		adc $0520		; 6d 20 05
B28_06b1:		sta $0520		; 8d 20 05
B28_06b4:		rts				; 60 


B28_06b5:		lda $68			; a5 68
B28_06b7:		and #$01		; 29 01
B28_06b9:		beq B28_06c3 ; f0 08

B28_06bb:		lda $57			; a5 57
B28_06bd:		ora $56			; 05 56
B28_06bf:		beq B28_06d6 ; f0 15

B28_06c1:		bne B28_06cf ; d0 0c

B28_06c3:		lda $57			; a5 57
B28_06c5:		cmp $71			; c5 71
B28_06c7:		bne B28_06cf ; d0 06

B28_06c9:		lda $56			; a5 56
B28_06cb:		cmp #$30		; c9 30
B28_06cd:		beq B28_06d6 ; f0 07

B28_06cf:		jmp $8716		; 4c 16 87


B28_06d2:		cmp #$82		; c9 82
B28_06d4:		bcs B28_06b5 ; b0 df

B28_06d6:		lda $0520		; ad 20 05
B28_06d9:		bmi B28_06fc ; 30 21

B28_06db:		ora $0537		; 0d 37 05
B28_06de:		beq B28_0711 ; f0 31

B28_06e0:		lda $68			; a5 68
B28_06e2:		and #$01		; 29 01
B28_06e4:		beq B28_0716 ; f0 30

B28_06e6:		lda wEntityBaseY.w		; ad 1c 04
B28_06e9:		bpl B28_0716 ; 10 2b

B28_06eb:		lda $71			; a5 71
B28_06ed:		cmp $57			; c5 57
B28_06ef:		bne B28_06f7 ; d0 06

B28_06f1:		lda $56			; a5 56
B28_06f3:		cmp #$30		; c9 30
B28_06f5:		beq B28_0716 ; f0 1f

B28_06f7:		lda #$01		; a9 01
B28_06f9:		sta $65			; 85 65
B28_06fb:		rts				; 60 


B28_06fc:		lda $68			; a5 68
B28_06fe:		and #$01		; 29 01
B28_0700:		bne B28_0716 ; d0 14

B28_0702:		lda wEntityBaseY.w		; ad 1c 04
B28_0705:		bmi B28_0716 ; 30 0f

B28_0707:		lda $56			; a5 56
B28_0709:		ora $57			; 05 57
B28_070b:		beq B28_0716 ; f0 09

B28_070d:		lda #$00		; a9 00
B28_070f:		sta $65			; 85 65
B28_0711:		rts				; 60 


B28_0712:		lda $68			; a5 68
B28_0714:		bmi B28_06d2 ; 30 bc

B28_0716:		lda $04db		; ad db 04
B28_0719:		clc				; 18 
B28_071a:		adc $0537		; 6d 37 05
B28_071d:		sta $04db		; 8d db 04
B28_0720:		lda wEntityBaseY.w		; ad 1c 04
B28_0723:		adc $0520		; 6d 20 05
B28_0726:		sta wEntityBaseY.w		; 8d 1c 04
B28_0729:		rts				; 60 


B28_072a:		ldy $04f2		; ac f2 04
B28_072d:		bpl B28_0734 ; 10 05

B28_072f:		lda $90			; a5 90
B28_0731:		beq B28_0740 ; f0 0d

B28_0733:		rts				; 60 


B28_0734:		lda $90			; a5 90
B28_0736:		beq B28_0733 ; f0 fb

B28_0738:		bne B28_0740 ; d0 06

B28_073a:		lda $8b			; a5 8b
B28_073c:		cmp #$02		; c9 02
B28_073e:		beq B28_072a ; f0 ea

B28_0740:		lda $78			; a5 78
B28_0742:		bne B28_0762 ; d0 1e

B28_0744:		lda $68			; a5 68
B28_0746:		bmi B28_0762 ; 30 1a

B28_0748:		lda $04f2		; ad f2 04
B28_074b:		bmi B28_0782 ; 30 35

B28_074d:		ora $0509		; 0d 09 05
B28_0750:		beq B28_0781 ; f0 2f

B28_0752:		lda $71			; a5 71
B28_0754:		cmp $57			; c5 57
B28_0756:		beq B28_0762 ; f0 0a

B28_0758:		lda wEntityBaseX.w		; ad 38 04
B28_075b:		bpl B28_0762 ; 10 05

B28_075d:		lda #$01		; a9 01
B28_075f:		sta $65			; 85 65
B28_0761:		rts				; 60 


B28_0762:		lda $04c4		; ad c4 04
B28_0765:		clc				; 18 
B28_0766:		adc $0509		; 6d 09 05
B28_0769:		sta $04c4		; 8d c4 04
B28_076c:		lda wEntityBaseX.w		; ad 38 04
B28_076f:		adc $04f2		; 6d f2 04
B28_0772:		sta wEntityBaseX.w		; 8d 38 04
B28_0775:		ldy $68			; a4 68
B28_0777:		bmi B28_07a2 ; 30 29

B28_0779:		cmp #$18		; c9 18
B28_077b:		bcc B28_0797 ; 90 1a

B28_077d:		cmp #$e9		; c9 e9
B28_077f:		bcs B28_079b ; b0 1a

B28_0781:		rts				; 60 


B28_0782:		lda $c8			; a5 c8
B28_0784:		bne B28_0762 ; d0 dc

B28_0786:		lda $56			; a5 56
B28_0788:		ora $57			; 05 57
B28_078a:		beq B28_0762 ; f0 d6

B28_078c:		ldy wEntityBaseX.w		; ac 38 04
B28_078f:		dey				; 88 
B28_0790:		bmi B28_0762 ; 30 d0

B28_0792:		lda #$00		; a9 00
B28_0794:		sta $65			; 85 65
B28_0796:		rts				; 60 


B28_0797:		ldx #$00		; a2 00
B28_0799:		beq B28_079d ; f0 02

B28_079b:		ldx #$01		; a2 01
B28_079d:		jsr $e69a		; 20 9a e6
B28_07a0:		bcs B28_07d2 ; b0 30

B28_07a2:		lda wEntityBaseX.w		; ad 38 04
B28_07a5:		cmp #$10		; c9 10
B28_07a7:		bcc B28_07b3 ; 90 0a

B28_07a9:		cmp #$f0		; c9 f0
B28_07ab:		bcc B28_07d1 ; 90 24

B28_07ad:		ldx #$01		; a2 01
B28_07af:		lda #$f0		; a9 f0
B28_07b1:		bne B28_07b7 ; d0 04

B28_07b3:		ldx #$00		; a2 00
B28_07b5:		lda #$10		; a9 10
B28_07b7:		sta wEntityBaseX.w		; 8d 38 04
B28_07ba:		lda $054e		; ad 4e 05
B28_07bd:		cmp #$03		; c9 03
B28_07bf:		bne B28_07d1 ; d0 10

B28_07c1:		lda $0565		; ad 65 05
B28_07c4:		cmp #$34		; c9 34
B28_07c6:		bne B28_07d1 ; d0 09

B28_07c8:		lda #$36		; a9 36
B28_07ca:		sta $0565		; 8d 65 05
B28_07cd:		stx $05d8		; 8e d8 05
B28_07d0:		rts				; 60 


B28_07d1:		rts				; 60 


B28_07d2:		cpx #$00		; e0 00
B28_07d4:		beq B28_07da ; f0 04

B28_07d6:		lda #$e9		; a9 e9
B28_07d8:		bne B28_07dc ; d0 02

B28_07da:		lda #$17		; a9 17
B28_07dc:		sta wEntityBaseX.w		; 8d 38 04
B28_07df:		rts				; 60 


B28_07e0:		and $88			; 25 88
B28_07e2:		cpx $87			; e4 87
B28_07e4:	.db $ff
B28_07e5:	.db $ff
B28_07e6:	.db $ff
B28_07e7:	.db $ff
B28_07e8:	.db $ff
B28_07e9:	.db $ff
B28_07ea:	.db $ff
B28_07eb:	.db $ff
B28_07ec:	.db $fc
B28_07ed:	.db $fc
B28_07ee:	.db $fc
B28_07ef:	.db $fc
B28_07f0:	.db $fc
B28_07f1:	.db $fc
B28_07f2:		sed				; f8 
B28_07f3:		sed				; f8 
B28_07f4:		sed				; f8 
B28_07f5:		sed				; f8 
B28_07f6:	.db $f4
B28_07f7:	.db $f4
B28_07f8:	.db $f4
B28_07f9:		beq B28_07eb ; f0 f0

B28_07fb:		beq B28_07e9 ; f0 ec

B28_07fd:		cpx $e8e8		; ec e8 e8
B28_0800:		inx				; e8 
B28_0801:		cpx $e4			; e4 e4
B28_0803:		cpx #$dc		; e0 dc
B28_0805:	.db $dc
B28_0806:		cld				; d8 
B28_0807:		cld				; d8 
B28_0808:	.db $d4
B28_0809:		;removed
	.db $d0 $cc

B28_080b:		cpy $c4c8		; cc c8 c4
B28_080e:		cpy #$bc		; c0 bc
B28_0810:		clv				; b8 
B28_0811:		clv				; b8 
B28_0812:		;removed
	.db $b0 $ac

B28_0814:		tay				; a8 
B28_0815:		ldy $a0			; a4 a0
B28_0817:	.db $9c
B28_0818:		sty $90, x		; 94 90
B28_081a:		dey				; 88 
B28_081b:		sty $7c			; 84 7c
B28_081d:	.db $74
B28_081e:		jmp ($5864)		; 6c 64 58


B28_0821:		jmp $2c40		; 4c 40 2c


B28_0824:		.db $00				; 00
B28_0825:	.db $ff
B28_0826:	.db $ff
B28_0827:	.db $ff
B28_0828:		inc $fcfd, x	; fe fd fc
B28_082b:	.db $fa
B28_082c:		sbc $f5f7, y	; f9 f7 f5
B28_082f:	.db $f2
B28_0830:		beq B28_081e ; f0 ec

B28_0832:		sbc #$e5		; e9 e5
B28_0834:		sbc ($dd, x)	; e1 dd
B28_0836:		cld				; d8 
B28_0837:	.db $d3
B28_0838:		cmp $c1c7		; cd c7 c1
B28_083b:		lda $a9b1, y	; b9 b1 a9
B28_083e:	.db $9f
B28_083f:		sta $89, x		; 95 89
B28_0841:	.db $7b
B28_0842:		jmp ($4059)		; 6c 59 40


B28_0845:		.db $00				; 00
B28_0846:		lsr $6f88		; 4e 88 6f
B28_0849:		dey				; 88 
B28_084a:		bcc B28_07d4 ; 90 88

B28_084c:		cmp ($88), y	; d1 88
B28_084e:		.db $00				; 00
B28_084f:		php				; 08 
B28_0850:		bpl B28_086a ; 10 18

B28_0852:		jsr $2f28		; 20 28 2f
B28_0855:	.db $37
B28_0856:		rol $4c45, x	; 3e 45 4c
B28_0859:	.db $53
B28_085a:		eor $655f, y	; 59 5f 65
B28_085d:		ror a			; 6a
B28_085e:	.db $6f
B28_085f:	.db $73
B28_0860:	.db $77
B28_0861:	.db $7a
B28_0862:		adc $807f, x	; 7d 7f 80
B28_0865:	.db $80
B28_0866:	.db $7f
B28_0867:		adc $7479, x	; 7d 79 74
B28_086a:		jmp ($5462)		; 6c 62 54


B28_086d:	.db $3e $00 $00
B28_0870:		.db $00				; 00
B28_0871:		ora ($02, x)	; 01 02
B28_0873:	.db $04
B28_0874:		asl $09			; 06 09
B28_0876:	.db $0c
B28_0877:		bpl B28_088d ; 10 14

B28_0879:		ora $241e, y	; 19 1e 24
B28_087c:		rol a			; 2a
B28_087d:		and ($38), y	; 31 38
B28_087f:		rti				; 40 


B28_0880:		pha				; 48 
B28_0881:		eor ($5a), y	; 51 5a
B28_0883:	.db $64
B28_0884:		ror $8479		; 6e 79 84
B28_0887:		bcc B28_0825 ; 90 9c

B28_0889:		lda #$b6		; a9 b6
B28_088b:		cpy $d2			; c4 d2
B28_088d:		sbc ($f0, x)	; e1 f0
B28_088f:	.db $ff
B28_0890:		.db $00				; 00
B28_0891:		asl $0c			; 06 0c
B28_0893:	.db $12
B28_0894:		clc				; 18 
B28_0895:		asl $2a24, x	; 1e 24 2a
B28_0898:		bmi B28_08cf ; 30 35

B28_089a:	.db $3b
B28_089b:		eor ($47, x)	; 41 47
B28_089d:		jmp $5752		; 4c 52 57


B28_08a0:		eor $6862, x	; 5d 62 68
B28_08a3:		adc $7772		; 6d 72 77
B28_08a6:	.db $7c
B28_08a7:		sta ($85, x)	; 81 85
B28_08a9:		txa				; 8a 
B28_08aa:	.db $8f
B28_08ab:	.db $93
B28_08ac:	.db $97
B28_08ad:	.db $9b
B28_08ae:	.db $9f
B28_08af:	.db $a3
B28_08b0:		ldx $aa			; a6 aa
B28_08b2:		lda $b3b0		; ad b0 b3
B28_08b5:		lda $b7, x		; b5 b7
B28_08b7:		tsx				; ba 
B28_08b8:	.db $bb
B28_08b9:		lda $bfbe, x	; bd be bf
B28_08bc:		cpy #$c0		; c0 c0
B28_08be:		cpy #$bf		; c0 bf
B28_08c0:		ldx $bbbd, y	; be bd bb
B28_08c3:		lda $b2b6, y	; b9 b6 b2
B28_08c6:		ldx $a3a9		; ae a9 a3
B28_08c9:	.db $9c
B28_08ca:	.db $93
B28_08cb:	.db $89
B28_08cc:		adc $5c6f, x	; 7d 6f 5c
B28_08cf:	.db $43
B28_08d0:		.db $00				; 00
B28_08d1:		.db $00				; 00
B28_08d2:		.db $00				; 00
B28_08d3:		.db $00				; 00
B28_08d4:		ora ($02, x)	; 01 02
B28_08d6:	.db $02
B28_08d7:	.db $03
B28_08d8:		ora $06			; 05 06
B28_08da:		php				; 08 
B28_08db:		ora #$0b		; 09 0b
B28_08dd:		asl $1210		; 0e 10 12
B28_08e0:		ora $18, x		; 15 18
B28_08e2:	.db $1b
B28_08e3:		asl $2622, x	; 1e 22 26
B28_08e6:		and #$2d		; 29 2d
B28_08e8:	.db $32
B28_08e9:		rol $3b, x		; 36 3b
B28_08eb:	.db $3f
B28_08ec:	.db $44
B28_08ed:		lsr a			; 4a
B28_08ee:	.db $4f
B28_08ef:	.db $54
B28_08f0:	.db $5a
B28_08f1:		rts				; 60 


B28_08f2:		ror $6c			; 66 6c
B28_08f4:	.db $73
B28_08f5:	.db $7a
B28_08f6:	.db $80
B28_08f7:	.db $87
B28_08f8:	.db $8f
B28_08f9:		stx $9e, y		; 96 9e
B28_08fb:		lda $ad			; a5 ad
B28_08fd:		ldx $be, y		; b6 be
B28_08ff:		dec $cf			; c6 cf
B28_0901:		cld				; d8 
B28_0902:		sbc ($ea, x)	; e1 ea
B28_0904:	.db $f4
B28_0905:		inc $ffff, x	; fe ff ff
B28_0908:	.db $ff
B28_0909:	.db $ff
B28_090a:	.db $ff
B28_090b:	.db $ff
B28_090c:	.db $ff
B28_090d:	.db $ff
B28_090e:	.db $ff
B28_090f:	.db $ff
B28_0910:	.db $ff
B28_0911:	.db $ff
B28_0912:		.db $00				; 00
B28_0913:		ora ($00, x)	; 01 00
B28_0915:		ora ($10, x)	; 01 10
B28_0917:		ora ($20, x)	; 01 20
B28_0919:		ora ($20, x)	; 01 20
B28_091b:		ora ($30, x)	; 01 30
B28_091d:		ora ($40, x)	; 01 40
B28_091f:		ora ($40, x)	; 01 40
B28_0921:		ora ($50, x)	; 01 50
B28_0923:		ora ($60, x)	; 01 60
B28_0925:		ora ($70, x)	; 01 70
B28_0927:		ora ($70, x)	; 01 70
B28_0929:		ora ($80, x)	; 01 80
B28_092b:		ora ($00, x)	; 01 00
B28_092d:	.db $04
B28_092e:		php				; 08 
B28_092f:	.db $0c
B28_0930:		bpl B28_0946 ; 10 14

B28_0932:		clc				; 18 
B28_0933:	.db $1c
B28_0934:		jsr $2824		; 20 24 28
B28_0937:		bit $3430		; 2c 30 34
B28_093a:		sec				; 38 
B28_093b:	.db $3c
B28_093c:		rti				; 40 


B28_093d:	.db $44
B28_093e:		pha				; 48 
B28_093f:		jmp $5450		; 4c 50 54


B28_0942:		cli				; 58 
B28_0943:	.db $5c
B28_0944:		rts				; 60 


B28_0945:	.db $64
B28_0946:		pla				; 68 
B28_0947:		jmp ($7470)		; 6c 70 74


B28_094a:		sei				; 78 
B28_094b:	.db $7c
B28_094c:	.db $80
B28_094d:		.db $00				; 00
B28_094e:		.db $00				; 00
B28_094f:		.db $00				; 00
B28_0950:		ora ($02, x)	; 01 02
B28_0952:	.db $02
B28_0953:	.db $04
B28_0954:		ora $06			; 05 06
B28_0956:		php				; 08 
B28_0957:		asl a			; 0a
B28_0958:	.db $0c
B28_0959:	.db $0f
B28_095a:		ora ($14), y	; 11 14
B28_095c:	.db $17
B28_095d:	.db $1b
B28_095e:		asl $2622, x	; 1e 22 26
B28_0961:	.db $2b
B28_0962:		;removed
	.db $30 $35

B28_0964:	.db $3a
B28_0965:		rti				; 40 


B28_0966:	.db $47
B28_0967:		eor $5c54		; 4d 54 5c
B28_096a:	.db $64
B28_096b:		adc $8076		; 6d 76 80


func_1c_096e:
B28_096e:		lda $35			; a5 35
B28_0970:		and #$0f		; 29 0f
B28_0972:		sta $01			; 85 01
B28_0974:		lda $35			; a5 35
B28_0976:		and #$f0		; 29 f0
B28_0978:		sta $02			; 85 02
B28_097a:		lda $01			; a5 01
B28_097c:		sec				; 38 
B28_097d:		sbc #$01		; e9 01
B28_097f:		bpl B28_0991 ; 10 10

B28_0981:		sec				; 38 
B28_0982:		sbc #$06		; e9 06
B28_0984:		sta $01			; 85 01
B28_0986:		lda $02			; a5 02
B28_0988:		sec				; 38 
B28_0989:		sbc #$10		; e9 10
B28_098b:		sta $02			; 85 02
B28_098d:		lda $01			; a5 01
B28_098f:		and #$0f		; 29 0f
B28_0991:		ora $02			; 05 02
B28_0993:		sta $35			; 85 35
B28_0995:		rts				; 60 


B28_0996:		lda $7e			; a5 7e
B28_0998:		ora $7f			; 05 7f
B28_099a:		bne B28_09a3 ; d0 07

B28_099c:		jsr $8398		; 20 98 83
B28_099f:		jsr $bdc4		; 20 c4 bd
B28_09a2:		rts				; 60 


B28_09a3:		lda $7e			; a5 7e
B28_09a5:		and #$0f		; 29 0f
B28_09a7:		sta $01			; 85 01
B28_09a9:		lda $7e			; a5 7e
B28_09ab:		and #$f0		; 29 f0
B28_09ad:		sta $02			; 85 02
B28_09af:		lda $7f			; a5 7f
B28_09b1:		and #$0f		; 29 0f
B28_09b3:		sta $03			; 85 03
B28_09b5:		lda $7f			; a5 7f
B28_09b7:		and #$f0		; 29 f0
B28_09b9:		sta $04			; 85 04
B28_09bb:		jsr $89cf		; 20 cf 89
B28_09be:		lda $01			; a5 01
B28_09c0:		and #$0f		; 29 0f
B28_09c2:		ora $02			; 05 02
B28_09c4:		sta $7e			; 85 7e
B28_09c6:		lda $03			; a5 03
B28_09c8:		and #$0f		; 29 0f
B28_09ca:		ora $04			; 05 04
B28_09cc:		sta $7f			; 85 7f
B28_09ce:		rts				; 60 


B28_09cf:		lda $01			; a5 01
B28_09d1:		sec				; 38 
B28_09d2:		sbc #$01		; e9 01
B28_09d4:		sta $01			; 85 01
B28_09d6:		bcs B28_09e6 ; b0 0e

B28_09d8:		sec				; 38 
B28_09d9:		sbc #$06		; e9 06
B28_09db:		sta $01			; 85 01
B28_09dd:		lda $02			; a5 02
B28_09df:		sec				; 38 
B28_09e0:		sbc #$10		; e9 10
B28_09e2:		sta $02			; 85 02
B28_09e4:		bcc B28_09e7 ; 90 01

B28_09e6:		rts				; 60 


B28_09e7:		sec				; 38 
B28_09e8:		sbc #$60		; e9 60
B28_09ea:		sta $02			; 85 02
B28_09ec:		lda $03			; a5 03
B28_09ee:		sec				; 38 
B28_09ef:		sbc #$01		; e9 01
B28_09f1:		sta $03			; 85 03
B28_09f3:		bcs B28_09e6 ; b0 f1

B28_09f5:		sec				; 38 
B28_09f6:		sbc #$06		; e9 06
B28_09f8:		sta $03			; 85 03
B28_09fa:		lda $04			; a5 04
B28_09fc:		sec				; 38 
B28_09fd:		sbc #$10		; e9 10
B28_09ff:		sta $04			; 85 04
B28_0a01:		rts				; 60 


B28_0a02:		lda $68			; a5 68
B28_0a04:		bmi B28_0a0f ; 30 09

B28_0a06:		lda wEntityBaseY.w		; ad 1c 04
B28_0a09:		and #$f0		; 29 f0
B28_0a0b:		sta wEntityBaseY.w		; 8d 1c 04
B28_0a0e:		rts				; 60 


B28_0a0f:		clc				; 18 
B28_0a10:		lda wEntityBaseY.w		; ad 1c 04
B28_0a13:		adc $56			; 65 56
B28_0a15:		and #$f0		; 29 f0
B28_0a17:		sec				; 38 
B28_0a18:		sbc $56			; e5 56
B28_0a1a:		clc				; 18 
B28_0a1b:		adc #$03		; 69 03
B28_0a1d:		sta wEntityBaseY.w		; 8d 1c 04
B28_0a20:		rts				; 60 


B28_0a21:		lda $7f			; a5 7f
B28_0a23:		bne B28_0a36 ; d0 11

B28_0a25:		lda $7e			; a5 7e
B28_0a27:		cmp #$20		; c9 20
B28_0a29:		bcs B28_0a36 ; b0 0b

B28_0a2b:		lda $1a			; a5 1a
B28_0a2d:		and #$3f		; 29 3f
B28_0a2f:		bne B28_0a36 ; d0 05

B28_0a31:		lda #$49		; a9 49
B28_0a33:		jsr playSound		; 20 5f e2
B28_0a36:		lda $1a			; a5 1a
B28_0a38:		and #$3f		; 29 3f
B28_0a3a:		bne B28_0a3f ; d0 03

B28_0a3c:		jsr $8996		; 20 96 89
B28_0a3f:		lda $ab			; a5 ab
B28_0a41:		beq B28_0a59 ; f0 16

B28_0a43:		dec $ac			; c6 ac
B28_0a45:		bne B28_0a4e ; d0 07

B28_0a47:		lda #$00		; a9 00
B28_0a49:		sta $ab			; 85 ab
B28_0a4b:		sta $06c9		; 8d c9 06
B28_0a4e:		lda $ac			; a5 ac
B28_0a50:		and #$3f		; 29 3f
B28_0a52:		bne B28_0a59 ; d0 05

B28_0a54:		lda #$3c		; a9 3c
B28_0a56:		jsr playSound		; 20 5f e2
B28_0a59:		jsr $ae52		; 20 52 ae
B28_0a5c:		lda $0565		; ad 65 05
B28_0a5f:		bmi B28_0a20 ; 30 bf

B28_0a61:		jsr $80d9		; 20 d9 80
B28_0a64:		lda $8b			; a5 8b
B28_0a66:		sta $cf			; 85 cf
B28_0a68:		lda $81			; a5 81
B28_0a6a:		and #$0f		; 29 0f
B28_0a6c:		sta $8b			; 85 8b
B28_0a6e:		lda #$00		; a9 00
B28_0a70:		sta $81			; 85 81
B28_0a72:		lda $68			; a5 68
B28_0a74:		bpl B28_0a8d ; 10 17

B28_0a76:		and #$01		; 29 01
B28_0a78:		bne B28_0a7e ; d0 04

B28_0a7a:		lda #$00		; a9 00
B28_0a7c:		beq B28_0a8b ; f0 0d

B28_0a7e:		clc				; 18 
B28_0a7f:		lda #$30		; a9 30
B28_0a81:		adc $56			; 65 56
B28_0a83:		and #$f0		; 29 f0
B28_0a85:		sec				; 38 
B28_0a86:		sbc $56			; e5 56
B28_0a88:		clc				; 18 
B28_0a89:		adc #$03		; 69 03
B28_0a8b:		sta $d0			; 85 d0
B28_0a8d:		lda #$02		; a9 02
B28_0a8f:		sta $65			; 85 65
B28_0a91:		ldy $054e		; ac 4e 05
B28_0a94:		beq B28_0aa2 ; f0 0c

B28_0a96:		dey				; 88 
B28_0a97:		beq B28_0ab0 ; f0 17

B28_0a99:		dey				; 88 
B28_0a9a:		beq B28_0ab6 ; f0 1a

B28_0a9c:		jsr $a5a8		; 20 a8 a5
B28_0a9f:		jmp $8aa5		; 4c a5 8a


B28_0aa2:		jsr func_1c_137b		; 20 7b 93
B28_0aa5:		lda $0565		; ad 65 05
B28_0aa8:		bmi B28_0ac4 ; 30 1a

B28_0aaa:		jsr $8bc0		; 20 c0 8b
B28_0aad:		jmp $8d13		; 4c 13 8d


B28_0ab0:		jsr $9bfc		; 20 fc 9b
B28_0ab3:		jmp $8aa5		; 4c a5 8a


B28_0ab6:		jsr $9c3b		; 20 3b 9c
B28_0ab9:		jmp $8aa5		; 4c a5 8a


B28_0abc:		lda #$00		; a9 00
B28_0abe:		sta $0520		; 8d 20 05
B28_0ac1:		sta $0537		; 8d 37 05
B28_0ac4:		rts				; 60 


B28_0ac5:		ldy $054e		; ac 4e 05
B28_0ac8:		lda $8ada, y	; b9 da 8a
B28_0acb:		sta $048c		; 8d 8c 04
B28_0ace:		lda #$02		; a9 02
B28_0ad0:		sta $0400		; 8d 00 04
B28_0ad3:		inc $0565		; ee 65 05
B28_0ad6:		inc $0565		; ee 65 05
B28_0ad9:		rts				; 60 


B28_0ada:		.db $00				; 00
B28_0adb:	.db $02
B28_0adc:	.db $04
B28_0add:		.db $06


B28_0ade:		lda $bf
B28_0ae0:		and #$7f		; 29 7f
B28_0ae2:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $8aeb
	.dw $8aff
	.dw $8b48

B28_0aeb:		ldy #$00		; a0 00
B28_0aed:		sty wEntityAnimationIdxes.w		; 8c 93 05
B28_0af0:		sty $0413		; 8c 13 04
B28_0af3:		sty $80			; 84 80
B28_0af5:		sty $0470		; 8c 70 04
B28_0af8:		iny				; c8 
B28_0af9:		sty wEntityTimeUntilNextAnimation.w		; 8c 7c 05
B28_0afc:		inc $bf			; e6 bf
B28_0afe:		rts				; 60 


B28_0aff:		jsr $8b1a		; 20 1a 8b
B28_0b02:		lda wEntityTimeUntilNextAnimation.w		; ad 7c 05
B28_0b05:		cmp #$ff		; c9 ff
B28_0b07:		beq B28_0b0a ; f0 01

B28_0b09:		rts				; 60 


B28_0b0a:		lda #$4e		; a9 4e
B28_0b0c:		jsr playSound		; 20 5f e2
B28_0b0f:		jsr set_2c_to_01h		; 20 ce e5
B28_0b12:		lda #$64		; a9 64
B28_0b14:		sta $05d4		; 8d d4 05
B28_0b17:		inc $bf			; e6 bf
B28_0b19:		rts				; 60 


B28_0b1a:		dec wEntityTimeUntilNextAnimation.w		; ce 7c 05
B28_0b1d:		beq B28_0b20 ; f0 01

B28_0b1f:		rts				; 60 


B28_0b20:		lda wEntityAnimationIdxes.w		; ad 93 05
B28_0b23:		asl a			; 0a
B28_0b24:		tay				; a8 
B28_0b25:		lda $8b4b, y	; b9 4b 8b
B28_0b28:		sta $0400		; 8d 00 04
B28_0b2b:		lda $8b4c, y	; b9 4c 8b
B28_0b2e:		sta wEntityTimeUntilNextAnimation.w		; 8d 7c 05
B28_0b31:		lda $054e		; ad 4e 05
B28_0b34:		asl a			; 0a
B28_0b35:		clc				; 18 
B28_0b36:		adc wEntityAnimationIdxes.w		; 6d 93 05
B28_0b39:		tay				; a8 
B28_0b3a:		lda $8b4f, y	; b9 4f 8b
B28_0b3d:		clc				; 18 
B28_0b3e:		adc wEntityBaseY.w		; 6d 1c 04
B28_0b41:		sta wEntityBaseY.w		; 8d 1c 04
B28_0b44:		inc wEntityAnimationIdxes.w		; ee 93 05
B28_0b47:		rts				; 60 


B28_0b48:		jmp $8ba7		; 4c a7 8b


B28_0b4b:	.db $12
B28_0b4c:		php				; 08 
B28_0b4d:	.db $14
B28_0b4e:	.db $ff
B28_0b4f:		asl $f9			; 06 f9
B28_0b51:		asl a			; 0a
B28_0b52:	.db $fc
B28_0b53:	.db $04
B28_0b54:	.db $ff
B28_0b55:	.db $04
B28_0b56:	.db $fc
B28_0b57:		lda $bf			; a5 bf
B28_0b59:		and #$7f		; 29 7f
B28_0b5b:		tay				; a8 
B28_0b5c:		bne B28_0b8f ; d0 31

B28_0b5e:		lda wEntityBaseY.w		; ad 1c 04
B28_0b61:		ldy $68			; a4 68
B28_0b63:		bmi B28_0b6b ; 30 06

B28_0b65:		cmp #$e0		; c9 e0
B28_0b67:		bcc B28_0b71 ; 90 08

B28_0b69:		bcs B28_0b8c ; b0 21

B28_0b6b:		cmp #$e0		; c9 e0
B28_0b6d:		bcc B28_0b71 ; 90 02

B28_0b6f:		bcs B28_0b8c ; b0 1b

B28_0b71:		lda $0520		; ad 20 05
B28_0b74:		cmp #$05		; c9 05
B28_0b76:		bcs B28_0b89 ; b0 11

B28_0b78:		lda $0537		; ad 37 05
B28_0b7b:		clc				; 18 
B28_0b7c:		adc #$40		; 69 40
B28_0b7e:		sta $0537		; 8d 37 05
B28_0b81:		lda $0520		; ad 20 05
B28_0b84:		adc #$00		; 69 00
B28_0b86:		sta $0520		; 8d 20 05
B28_0b89:		jmp $8712		; 4c 12 87


B28_0b8c:		inc $bf			; e6 bf
B28_0b8e:		rts				; 60 


B28_0b8f:		dey				; 88 
B28_0b90:		bne B28_0ba7 ; d0 15

B28_0b92:		lda #$00		; a9 00
B28_0b94:		sta $0400		; 8d 00 04
B28_0b97:		lda #$80		; a9 80
B28_0b99:		sta $05d4		; 8d d4 05
B28_0b9c:		lda #$4e		; a9 4e
B28_0b9e:		jsr playSound		; 20 5f e2
B28_0ba1:		jsr set_2c_to_01h		; 20 ce e5
B28_0ba4:		inc $bf			; e6 bf
B28_0ba6:		rts				; 60 


B28_0ba7:		dec $05d4		; ce d4 05
B28_0baa:		beq B28_0bad ; f0 01

B28_0bac:		rts				; 60 


B28_0bad:		lda #GS_05		; a9 05
B28_0baf:		sta wGameState			; 85 18
B28_0bb1:		lda #$00		; a9 00
B28_0bb3:		sta $19			; 85 19
B28_0bb5:		lda $0565		; ad 65 05
B28_0bb8:		ora #$80		; 09 80
B28_0bba:		sta $0565		; 8d 65 05
B28_0bbd:		jmp $e5ca		; 4c ca e5


B28_0bc0:		lda $bf			; a5 bf
B28_0bc2:		beq B28_0bc5 ; f0 01

B28_0bc4:		rts				; 60 


B28_0bc5:		lda $2a			; a5 2a
B28_0bc7:		cmp #$10		; c9 10
B28_0bc9:		beq B28_0bc4 ; f0 f9

B28_0bcb:		lda $7d			; a5 7d
B28_0bcd:		and #$f0		; 29 f0
B28_0bcf:		cmp #$50		; c9 50
B28_0bd1:		beq B28_0bfc ; f0 29

B28_0bd3:		cmp #$60		; c9 60
B28_0bd5:		beq B28_0c1e ; f0 47

B28_0bd7:		cmp #$70		; c9 70
B28_0bd9:		beq B28_0bfc ; f0 21

B28_0bdb:		lda wEntityBaseY.w		; ad 1c 04
B28_0bde:		ldy $68			; a4 68
B28_0be0:		bpl B28_0bf4 ; 10 12

B28_0be2:		cmp #$e0		; c9 e0
B28_0be4:		bcs B28_0bf1 ; b0 0b

B28_0be6:		cpy #$83		; c0 83
B28_0be8:		bne B28_0bfb ; d0 11

B28_0bea:		cmp #$18		; c9 18
B28_0bec:		bcs B28_0bfb ; b0 0d

B28_0bee:		jmp $8398		; 4c 98 83


B28_0bf1:		jmp $8cf9		; 4c f9 8c


B28_0bf4:		cmp #$e0		; c9 e0
B28_0bf6:		bcc B28_0bfb ; 90 03

B28_0bf8:		jmp $8cf9		; 4c f9 8c


B28_0bfb:		rts				; 60 


B28_0bfc:		lda $7d			; a5 7d
B28_0bfe:		and #$0f		; 29 0f
B28_0c00:		tay				; a8 
B28_0c01:		lda $8c56, y	; b9 56 8c
B28_0c04:		cmp wEntityBaseY.w		; cd 1c 04
B28_0c07:		bcs B28_0bfb ; b0 f2

B28_0c09:		lda $82			; a5 82
B28_0c0b:		cmp #$08		; c9 08
B28_0c0d:		bne B28_0c18 ; d0 09

B28_0c0f:		lda $1a			; a5 1a
B28_0c11:		and #$03		; 29 03
B28_0c13:		bne B28_0bdb ; d0 c6

B28_0c15:		jmp $8c58		; 4c 58 8c


B28_0c18:		jsr $8c58		; 20 58 8c
B28_0c1b:		jmp $8cf9		; 4c f9 8c


B28_0c1e:		lda $7d			; a5 7d
B28_0c20:		and #$0f		; 29 0f
B28_0c22:		bne B28_0bdb ; d0 b7

B28_0c24:		lda wEntityBaseY.w		; ad 1c 04
B28_0c27:		cmp #$c0		; c9 c0
B28_0c29:		bcc B28_0bfb ; 90 d0

B28_0c2b:		lda wEntityBaseX.w		; ad 38 04
B28_0c2e:		clc				; 18 
B28_0c2f:		adc $56			; 65 56
B28_0c31:		sta $0a			; 85 0a
B28_0c33:		lda $57			; a5 57
B28_0c35:		adc #$00		; 69 00
B28_0c37:		sta $0b			; 85 0b
B28_0c39:		cmp #$01		; c9 01
B28_0c3b:		bcc B28_0c09 ; 90 cc

B28_0c3d:		bne B28_0c48 ; d0 09

B28_0c3f:		lda $0a			; a5 0a
B28_0c41:		cmp #$20		; c9 20
B28_0c43:		bcc B28_0c09 ; 90 c4

B28_0c45:		jmp $8bdb		; 4c db 8b


B28_0c48:		cmp #$02		; c9 02
B28_0c4a:		bcc B28_0bdb ; 90 8f

B28_0c4c:		bne B28_0c09 ; d0 bb

B28_0c4e:		lda $0a			; a5 0a
B28_0c50:		cmp #$c0		; c9 c0
B28_0c52:		bcc B28_0bdb ; 90 87

B28_0c54:		bcs B28_0c09 ; b0 b3

B28_0c56:		;removed
	.db $b0 $d0

B28_0c58:		lda #$23		; a9 23
B28_0c5a:		jsr playSound		; 20 5f e2
B28_0c5d:		lda $1a			; a5 1a
B28_0c5f:		and #$03		; 29 03
B28_0c61:		sta $00			; 85 00
B28_0c63:		asl a			; 0a
B28_0c64:		clc				; 18 
B28_0c65:		adc $00			; 65 00
B28_0c67:		tay				; a8 
B28_0c68:		sta $0f			; 85 0f
B28_0c6a:		ldx #$14		; a2 14
B28_0c6c:		ldy $0f			; a4 0f
B28_0c6e:		lda $8cbd, y	; b9 bd 8c
B28_0c71:		asl a			; 0a
B28_0c72:		sta $00			; 85 00
B28_0c74:		asl a			; 0a
B28_0c75:		clc				; 18 
B28_0c76:		adc $00			; 65 00
B28_0c78:		tay				; a8 
B28_0c79:		lda $8cc9, y	; b9 c9 8c
B28_0c7c:		clc				; 18 
B28_0c7d:		adc wEntityBaseX.w		; 6d 38 04
B28_0c80:		sta wEntityBaseX.w, x	; 9d 38 04
B28_0c83:		lda $8cca, y	; b9 ca 8c
B28_0c86:		clc				; 18 
B28_0c87:		adc wEntityBaseY.w		; 6d 1c 04
B28_0c8a:		sec				; 38 
B28_0c8b:		sbc #$0c		; e9 0c
B28_0c8d:		sta wEntityBaseY.w, x	; 9d 1c 04
B28_0c90:		lda $8ccb, y	; b9 cb 8c
B28_0c93:		sta $04f2, x	; 9d f2 04
B28_0c96:		lda $8ccc, y	; b9 cc 8c
B28_0c99:		sta $0509, x	; 9d 09 05
B28_0c9c:		lda $8ccd, y	; b9 cd 8c
B28_0c9f:		sta $0520, x	; 9d 20 05
B28_0ca2:		lda $8cce, y	; b9 ce 8c
B28_0ca5:		sta $0537, x	; 9d 37 05
B28_0ca8:		lda #$0c		; a9 0c
B28_0caa:		sta $054e, x	; 9d 4e 05
B28_0cad:		lda #$00		; a9 00
B28_0caf:		sta $0470, x	; 9d 70 04
B28_0cb2:		sta $0565, x	; 9d 65 05
B28_0cb5:		inc $0f			; e6 0f
B28_0cb7:		inx				; e8 
B28_0cb8:		cpx #$17		; e0 17
B28_0cba:		bne B28_0c6c ; d0 b0

B28_0cbc:		rts				; 60 


B28_0cbd:		.db $00				; 00
B28_0cbe:	.db $03
B28_0cbf:	.db $04
B28_0cc0:		ora $01			; 05 01
B28_0cc2:	.db $02
B28_0cc3:	.db $02
B28_0cc4:		ora $01			; 05 01
B28_0cc6:		asl $03			; 06 03
B28_0cc8:	.db $04
B28_0cc9:		php				; 08 
B28_0cca:	.db $02
B28_0ccb:		ora ($00, x)	; 01 00
B28_0ccd:		sbc $04c0, x	; fd c0 04
B28_0cd0:		.db $00				; 00
B28_0cd1:		.db $00				; 00
B28_0cd2:	.db $80
B28_0cd3:		inc $f880, x	; fe 80 f8
B28_0cd6:	.db $fc
B28_0cd7:	.db $ff
B28_0cd8:		rti				; 40 


B28_0cd9:	.db $ff
B28_0cda:		rti				; 40 


B28_0cdb:		php				; 08 
B28_0cdc:	.db $02
B28_0cdd:		inc $fe20, x	; fe 20 fe
B28_0ce0:		cpy #$fc		; c0 fc
B28_0ce2:		.db $00				; 00
B28_0ce3:		ora ($80, x)	; 01 80
B28_0ce5:	.db $ff
B28_0ce6:	.db $80
B28_0ce7:		sbc $ff02, x	; fd 02 ff
B28_0cea:		.db $00				; 00
B28_0ceb:		sbc $0280, x	; fd 80 02
B28_0cee:		inc $4001, x	; fe 01 40
B28_0cf1:		inc $ffc0, x	; fe c0 ff
B28_0cf4:	.db $02
B28_0cf5:	.db $02
B28_0cf6:		.db $00				; 00
B28_0cf7:	.db $ff
B28_0cf8:		;removed
	.db $50 $20

B28_0cfa:		cpy $bd			; c4 bd
B28_0cfc:		lda $0520		; ad 20 05
B28_0cff:		bpl B28_0d09 ; 10 08

B28_0d01:		lda #$00		; a9 00
B28_0d03:		sta $0520		; 8d 20 05
B28_0d06:		sta $0537		; 8d 37 05
B28_0d09:		lda #$80		; a9 80
B28_0d0b:		sta $bf			; 85 bf
B28_0d0d:		lda #$2c		; a9 2c
B28_0d0f:		sta $0565		; 8d 65 05
B28_0d12:		rts				; 60 


B28_0d13:		lda $2a			; a5 2a
B28_0d15:		cmp #$1b		; c9 1b
B28_0d17:		beq B28_0d89 ; f0 70

B28_0d19:		lda $7d			; a5 7d
B28_0d1b:		cmp #$30		; c9 30
B28_0d1d:		beq B28_0d37 ; f0 18

B28_0d1f:		cmp #$31		; c9 31
B28_0d21:		beq B28_0d37 ; f0 14

B28_0d23:		cmp #$41		; c9 41
B28_0d25:		beq B28_0d29 ; f0 02

B28_0d27:		bne B28_0d8e ; d0 65

B28_0d29:		lda $1a			; a5 1a
B28_0d2b:		and #$0f		; 29 0f
B28_0d2d:		bne B28_0d8e ; d0 5f

B28_0d2f:		lda #$20		; a9 20
B28_0d31:		jsr playSound		; 20 5f e2
B28_0d34:		jmp $8d8e		; 4c 8e 8d


B28_0d37:		lda $1a			; a5 1a
B28_0d39:		and #$0f		; 29 0f
B28_0d3b:		bne B28_0d7b ; d0 3e

B28_0d3d:		lda $56			; a5 56
B28_0d3f:		adc wEntityBaseX.w		; 6d 38 04
B28_0d42:		sta $00			; 85 00
B28_0d44:		lda $57			; a5 57
B28_0d46:		adc #$00		; 69 00
B28_0d48:		sta $01			; 85 01
B28_0d4a:		lda $7d			; a5 7d
B28_0d4c:		and #$0f		; 29 0f
B28_0d4e:		asl a			; 0a
B28_0d4f:		tay				; a8 
B28_0d50:		lda $8e77, y	; b9 77 8e
B28_0d53:		sec				; 38 
B28_0d54:		sbc $00			; e5 00
B28_0d56:		tax				; aa 
B28_0d57:		lda $8e76, y	; b9 76 8e
B28_0d5a:		sbc $01			; e5 01
B28_0d5c:		bcs B28_0d68 ; b0 0a

B28_0d5e:		cmp #$ff		; c9 ff
B28_0d60:		bne B28_0d76 ; d0 14

B28_0d62:		cpx #$80		; e0 80
B28_0d64:		bcc B28_0d76 ; 90 10

B28_0d66:		bcs B28_0d6e ; b0 06

B28_0d68:		bne B28_0d76 ; d0 0c

B28_0d6a:		cpx #$80		; e0 80
B28_0d6c:		bcs B28_0d76 ; b0 08

B28_0d6e:		lda #$25		; a9 25
B28_0d70:		jsr playSound		; 20 5f e2
B28_0d73:		jmp $8d7b		; 4c 7b 8d


B28_0d76:		lda #$20		; a9 20
B28_0d78:		jsr playSound		; 20 5f e2
B28_0d7b:		lda $bf			; a5 bf
B28_0d7d:		bmi B28_0d89 ; 30 0a

B28_0d7f:		lda $8b			; a5 8b
B28_0d81:		cmp #$08		; c9 08
B28_0d83:		beq B28_0d8f ; f0 0a

B28_0d85:		cmp #$09		; c9 09
B28_0d87:		beq B28_0d8f ; f0 06

B28_0d89:		lda #$00		; a9 00
B28_0d8b:		sta $041a		; 8d 1a 04
B28_0d8e:		rts				; 60 


B28_0d8f:		lda $054e		; ad 4e 05
B28_0d92:		asl a			; 0a
B28_0d93:		tay				; a8 
B28_0d94:		lda $8de3, y	; b9 e3 8d
B28_0d97:		sta $08			; 85 08
B28_0d99:		lda $8de4, y	; b9 e4 8d
B28_0d9c:		sta $09			; 85 09
B28_0d9e:		ldy #$00		; a0 00
B28_0da0:		lda ($08), y	; b1 08
B28_0da2:		cmp #$ff		; c9 ff
B28_0da4:		beq B28_0d8e ; f0 e8

B28_0da6:		iny				; c8 
B28_0da7:		cmp $0400		; cd 00 04
B28_0daa:		beq B28_0db0 ; f0 04

B28_0dac:		iny				; c8 
B28_0dad:		iny				; c8 
B28_0dae:		bne B28_0da0 ; d0 f0

B28_0db0:		lda $04a8		; ad a8 04
B28_0db3:		beq B28_0dda ; f0 25

B28_0db5:		lda wEntityBaseX.w		; ad 38 04
B28_0db8:		clc				; 18 
B28_0db9:		adc ($08), y	; 71 08
B28_0dbb:		sta $0452		; 8d 52 04
B28_0dbe:		iny				; c8 
B28_0dbf:		lda wEntityBaseY.w		; ad 1c 04
B28_0dc2:		clc				; 18 
B28_0dc3:		adc ($08), y	; 71 08
B28_0dc5:		cmp #$38		; c9 38
B28_0dc7:		bcc B28_0d89 ; 90 c0

B28_0dc9:		sta $0436		; 8d 36 04
B28_0dcc:		lda #$62		; a9 62
B28_0dce:		sta $041a		; 8d 1a 04
B28_0dd1:		lda #$00		; a9 00
B28_0dd3:		sta $046e		; 8d 6e 04
B28_0dd6:		sta $048a		; 8d 8a 04
B28_0dd9:		rts				; 60 


B28_0dda:		lda wEntityBaseX.w		; ad 38 04
B28_0ddd:		sec				; 38 
B28_0dde:		sbc ($08), y	; f1 08
B28_0de0:		jmp $8dbb		; 4c bb 8d


B28_0de3:	.db $eb
B28_0de4:		sta $8e0d		; 8d 0d 8e
B28_0de7:		and $8e, x		; 35 8e
B28_0de9:	.db $4b
B28_0dea:		stx $fb02		; 8e 02 fb
B28_0ded:		sbc ($04), y	; f1 04
B28_0def:		inc $06f0, x	; fe f0 06
B28_0df2:	.db $fc
B28_0df3:		sbc ($0e), y	; f1 0e
B28_0df5:		sbc $16f8, x	; fd f8 16
B28_0df8:		sbc $18f5, x	; fd f5 18
B28_0dfb:	.db $03
B28_0dfc:		sbc ($1a), y	; f1 1a
B28_0dfe:		inc $1cf0, x	; fe f0 1c
B28_0e01:	.db $fb
B28_0e02:	.db $f2
B28_0e03:		asl $f9fd, x	; 1e fd f9
B28_0e06:		jsr $f8fe		; 20 fe f8
B28_0e09:	.db $22
B28_0e0a:	.db $fb
B28_0e0b:	.db $fa
B28_0e0c:	.db $ff
B28_0e0d:	.db $02
B28_0e0e:	.db $fb
B28_0e0f:		sbc ($04), y	; f1 04
B28_0e11:		inc $06f0, x	; fe f0 06
B28_0e14:	.db $fc
B28_0e15:		sbc ($0e), y	; f1 0e
B28_0e17:		sbc $16f8, x	; fd f8 16
B28_0e1a:		sbc $18f5, x	; fd f5 18
B28_0e1d:		sbc $1af5, x	; fd f5 1a
B28_0e20:		sbc $1cf5, x	; fd f5 1c
B28_0e23:		sbc $1ef5, x	; fd f5 1e
B28_0e26:		sbc $2cf5, x	; fd f5 2c
B28_0e29:		sbc $2ef5, x	; fd f5 2e
B28_0e2c:		sbc $34f5, x	; fd f5 34
B28_0e2f:		sbc $36f5, x	; fd f5 36
B28_0e32:		sbc $fff5, x	; fd f5 ff
B28_0e35:	.db $02
B28_0e36:	.db $fb
B28_0e37:		sbc $04, x		; f5 04
B28_0e39:		inc $06f4, x	; fe f4 06
B28_0e3c:	.db $fb
B28_0e3d:		sbc $0e, x		; f5 0e
B28_0e3f:		inc $1600, x	; fe 00 16
B28_0e42:	.db $fb
B28_0e43:		sbc $24, x		; f5 24
B28_0e45:		inc $26f0, x	; fe f0 26
B28_0e48:		sed				; f8 
B28_0e49:	.db $f4
B28_0e4a:	.db $ff
B28_0e4b:	.db $02
B28_0e4c:		.db $00				; 00
B28_0e4d:		sbc #$04		; e9 04
B28_0e4f:		.db $00				; 00
B28_0e50:		inx				; e8 
B28_0e51:		asl $00			; 06 00
B28_0e53:		sbc #$0e		; e9 0e
B28_0e55:		sbc $16f8, x	; fd f8 16
B28_0e58:		sbc $18f5, x	; fd f5 18
B28_0e5b:		.db $00				; 00
B28_0e5c:		sbc #$1a		; e9 1a
B28_0e5e:		.db $00				; 00
B28_0e5f:		sbc #$1c		; e9 1c
B28_0e61:		.db $00				; 00
B28_0e62:		sbc #$1e		; e9 1e
B28_0e64:		sbc $20f8, x	; fd f8 20
B28_0e67:		sbc $22f8, x	; fd f8 22
B28_0e6a:		sbc $24f8, x	; fd f8 24
B28_0e6d:		.db $00				; 00
B28_0e6e:	.db $fd $26 $00
B28_0e71:	.db $ff
B28_0e72:		plp				; 28 
B28_0e73:		.db $00				; 00
B28_0e74:		sed				; f8 
B28_0e75:	.db $ff
B28_0e76:	.db $02
B28_0e77:	.db $80
B28_0e78:		ora ($80, x)	; 01 80
B28_0e7a:		sty $0509		; 8c 09 05
B28_0e7d:		sta $04f2		; 8d f2 04
B28_0e80:		jsr $8abc		; 20 bc 8a
B28_0e83:		sec				; 38 
B28_0e84:		rts				; 60 


B28_0e85:		lda $2a			; a5 2a
B28_0e87:		cmp #$1b		; c9 1b
B28_0e89:		beq B28_0eb5 ; f0 2a

B28_0e8b:		lda $8b			; a5 8b
B28_0e8d:		cmp #$01		; c9 01
B28_0e8f:		beq B28_0eba ; f0 29

B28_0e91:		cmp #$0c		; c9 0c
B28_0e93:		bcs B28_0eb5 ; b0 20

B28_0e95:		sec				; 38 
B28_0e96:		sbc #$05		; e9 05
B28_0e98:		bcc B28_0eb5 ; 90 1b

B28_0e9a:		bne B28_0e9f ; d0 03

B28_0e9c:		jmp $8f95		; 4c 95 8f


B28_0e9f:		tay				; a8 
B28_0ea0:		dey				; 88 
B28_0ea1:		bne B28_0ea6 ; d0 03

B28_0ea3:		jmp $9023		; 4c 23 90


B28_0ea6:		dey				; 88 
B28_0ea7:		beq B28_0ede ; f0 35

B28_0ea9:		dey				; 88 
B28_0eaa:		beq B28_0ee5 ; f0 39

B28_0eac:		dey				; 88 
B28_0ead:		beq B28_0eec ; f0 3d

B28_0eaf:		dey				; 88 
B28_0eb0:		beq B28_0ef3 ; f0 41

B28_0eb2:		dey				; 88 
B28_0eb3:		beq B28_0efa ; f0 45

B28_0eb5:		jsr $8abc		; 20 bc 8a
B28_0eb8:		clc				; 18 
B28_0eb9:		rts				; 60 


B28_0eba:		ldx $91			; a6 91
B28_0ebc:		stx $b8			; 86 b8
B28_0ebe:		lda $054e, x	; bd 4e 05
B28_0ec1:		cmp #$79		; c9 79
B28_0ec3:		bcc B28_0ed7 ; 90 12

B28_0ec5:		jsr $91c2		; 20 c2 91
B28_0ec8:		lda $0509, x	; bd 09 05
B28_0ecb:		clc				; 18 
B28_0ecc:		adc #$00		; 69 00
B28_0ece:		tay				; a8 
B28_0ecf:		lda $04f2, x	; bd f2 04
B28_0ed2:		adc #$01		; 69 01
B28_0ed4:		jmp $8f57		; 4c 57 8f


B28_0ed7:		ldy #$00		; a0 00
B28_0ed9:		lda #$01		; a9 01
B28_0edb:		jmp $8f57		; 4c 57 8f


B28_0ede:		lda #$00		; a9 00
B28_0ee0:		ldy #$80		; a0 80
B28_0ee2:		jmp $8e7a		; 4c 7a 8e


B28_0ee5:		lda #$00		; a9 00
B28_0ee7:		ldy #$40		; a0 40
B28_0ee9:		jmp $8e7a		; 4c 7a 8e


B28_0eec:		lda #$01		; a9 01
B28_0eee:		ldy #$c0		; a0 c0
B28_0ef0:		jmp $8e7a		; 4c 7a 8e


B28_0ef3:		lda #$00		; a9 00
B28_0ef5:		ldy #$80		; a0 80
B28_0ef7:		jmp $8e7a		; 4c 7a 8e


B28_0efa:		lda #$01		; a9 01
B28_0efc:		ldy #$80		; a0 80
B28_0efe:		jmp $8e7a		; 4c 7a 8e


func_1c_0f01:
B28_0f01:		lda $2a			; a5 2a
B28_0f03:		cmp #$1b		; c9 1b
B28_0f05:		beq B28_0f31 ; f0 2a

B28_0f07:		lda $8b			; a5 8b
B28_0f09:		cmp #$01		; c9 01
B28_0f0b:		beq B28_0f36 ; f0 29

B28_0f0d:		cmp #$0c		; c9 0c
B28_0f0f:		bcs B28_0f31 ; b0 20

B28_0f11:		sec				; 38 
B28_0f12:		sbc #$05		; e9 05
B28_0f14:		bcc B28_0f31 ; 90 1b

B28_0f16:		bne B28_0f1b ; d0 03

B28_0f18:		jmp $8fcf		; 4c cf 8f


B28_0f1b:		tay				; a8 
B28_0f1c:		dey				; 88 
B28_0f1d:		bne B28_0f22 ; d0 03

B28_0f1f:		jmp $90b9		; 4c b9 90


B28_0f22:		dey				; 88 
B28_0f23:		beq B28_0f72 ; f0 4d

B28_0f25:		dey				; 88 
B28_0f26:		beq B28_0f79 ; f0 51

B28_0f28:		dey				; 88 
B28_0f29:		beq B28_0f80 ; f0 55

B28_0f2b:		dey				; 88 
B28_0f2c:		beq B28_0f87 ; f0 59

B28_0f2e:		dey				; 88 
B28_0f2f:		beq B28_0f8e ; f0 5d

B28_0f31:		jsr $8abc		; 20 bc 8a
B28_0f34:		clc				; 18 
B28_0f35:		rts				; 60 


B28_0f36:		ldx $91			; a6 91
B28_0f38:		stx $b8			; 86 b8
B28_0f3a:		lda $054e, x	; bd 4e 05
B28_0f3d:		cmp #$79		; c9 79
B28_0f3f:		bcc B28_0f53 ; 90 12

B28_0f41:		jsr $91c2		; 20 c2 91
B28_0f44:		lda $0509, x	; bd 09 05
B28_0f47:		clc				; 18 
B28_0f48:		adc #$00		; 69 00
B28_0f4a:		tay				; a8 
B28_0f4b:		lda $04f2, x	; bd f2 04
B28_0f4e:		adc #$ff		; 69 ff
B28_0f50:		jmp $8f57		; 4c 57 8f


B28_0f53:		lda #$ff		; a9 ff
B28_0f55:		ldy #$00		; a0 00
B28_0f57:		sta $04f2		; 8d f2 04
B28_0f5a:		tya				; 98 
B28_0f5b:		sta $0509		; 8d 09 05
B28_0f5e:		jsr $9153		; 20 53 91
B28_0f61:		bcs B28_0f6c ; b0 09

B28_0f63:		lda $04f2		; ad f2 04
B28_0f66:		ldy $0509		; ac 09 05
B28_0f69:		jmp $8e7a		; 4c 7a 8e


B28_0f6c:		lda #$00		; a9 00
B28_0f6e:		tay				; a8 
B28_0f6f:		jmp $8e7a		; 4c 7a 8e


B28_0f72:		lda #$ff		; a9 ff
B28_0f74:		ldy #$80		; a0 80
B28_0f76:		jmp $8e7a		; 4c 7a 8e


B28_0f79:		lda #$fe		; a9 fe
B28_0f7b:		ldy #$40		; a0 40
B28_0f7d:		jmp $8e7a		; 4c 7a 8e


B28_0f80:		lda #$ff		; a9 ff
B28_0f82:		ldy #$c0		; a0 c0
B28_0f84:		jmp $8e7a		; 4c 7a 8e


B28_0f87:		lda #$fe		; a9 fe
B28_0f89:		ldy #$80		; a0 80
B28_0f8b:		jmp $8e7a		; 4c 7a 8e


B28_0f8e:		lda #$ff		; a9 ff
B28_0f90:		ldy #$80		; a0 80
B28_0f92:		jmp $8e7a		; 4c 7a 8e


B28_0f95:		lda $90			; a5 90
B28_0f97:		and #$7f		; 29 7f
B28_0f99:		sta $00			; 85 00
B28_0f9b:		tay				; a8 
B28_0f9c:		lda $90			; a5 90
B28_0f9e:		bpl B28_0fad ; 10 0d

B28_0fa0:		lda $fd81, y	; b9 81 fd
B28_0fa3:		sta $0537		; 8d 37 05
B28_0fa6:		lda #$00		; a9 00
B28_0fa8:		sta $0520		; 8d 20 05
B28_0fab:		beq B28_0fbb ; f0 0e

B28_0fad:		lda #$00		; a9 00
B28_0faf:		sec				; 38 
B28_0fb0:		sbc $fd81, y	; f9 81 fd
B28_0fb3:		sta $0537		; 8d 37 05
B28_0fb6:		lda #$ff		; a9 ff
B28_0fb8:		sta $0520		; 8d 20 05
B28_0fbb:		lda #$40		; a9 40
B28_0fbd:		sec				; 38 
B28_0fbe:		sbc $00			; e5 00
B28_0fc0:		tay				; a8 
B28_0fc1:		lda $fd81, y	; b9 81 fd
B28_0fc4:		sta $0509		; 8d 09 05
B28_0fc7:		lda #$00		; a9 00
B28_0fc9:		sta $04f2		; 8d f2 04
B28_0fcc:		jmp $9009		; 4c 09 90


B28_0fcf:		lda $90			; a5 90
B28_0fd1:		and #$7f		; 29 7f
B28_0fd3:		sta $00			; 85 00
B28_0fd5:		tay				; a8 
B28_0fd6:		lda $90			; a5 90
B28_0fd8:		bmi B28_0fe7 ; 30 0d

B28_0fda:		lda $fd81, y	; b9 81 fd
B28_0fdd:		sta $0537		; 8d 37 05
B28_0fe0:		lda #$00		; a9 00
B28_0fe2:		sta $0520		; 8d 20 05
B28_0fe5:		beq B28_0ff5 ; f0 0e

B28_0fe7:		lda #$00		; a9 00
B28_0fe9:		sec				; 38 
B28_0fea:		sbc $fd81, y	; f9 81 fd
B28_0fed:		sta $0537		; 8d 37 05
B28_0ff0:		lda #$ff		; a9 ff
B28_0ff2:		sta $0520		; 8d 20 05
B28_0ff5:		lda #$40		; a9 40
B28_0ff7:		sec				; 38 
B28_0ff8:		sbc $00			; e5 00
B28_0ffa:		tay				; a8 
B28_0ffb:		lda #$00		; a9 00
B28_0ffd:		sec				; 38 
B28_0ffe:		sbc $fd81, y	; f9 81 fd
B28_1001:		sta $0509		; 8d 09 05
B28_1004:		lda #$ff		; a9 ff
B28_1006:		sta $04f2		; 8d f2 04
B28_1009:		jsr $8077		; 20 77 80
B28_100c:		jsr $9153		; 20 53 91
B28_100f:		bcs B28_1013 ; b0 02

B28_1011:		sec				; 38 
B28_1012:		rts				; 60 


B28_1013:		lda #$00		; a9 00
B28_1015:		sta $04f2		; 8d f2 04
B28_1018:		sta $0509		; 8d 09 05
B28_101b:		sta $0520		; 8d 20 05
B28_101e:		sta $0537		; 8d 37 05
B28_1021:		sec				; 38 
B28_1022:		rts				; 60 


B28_1023:		ldx $d4			; a6 d4
B28_1025:		stx $d2			; 86 d2
B28_1027:		lda $95			; a5 95
B28_1029:		asl a			; 0a
B28_102a:		tay				; a8 
B28_102b:		lda $87e0, y	; b9 e0 87
B28_102e:		sta $08			; 85 08
B28_1030:		lda $87e1, y	; b9 e1 87
B28_1033:		sta $09			; 85 09
B28_1035:		ldy $93			; a4 93
B28_1037:		dey				; 88 
B28_1038:		beq B28_1071 ; f0 37

B28_103a:		dey				; 88 
B28_103b:		beq B28_1089 ; f0 4c

B28_103d:		lda $90			; a5 90
B28_103f:		and #$7f		; 29 7f
B28_1041:		sta $00			; 85 00
B28_1043:		tay				; a8 
B28_1044:		lda ($08), y	; b1 08
B28_1046:		sta $0509		; 8d 09 05
B28_1049:		lda #$00		; a9 00
B28_104b:		sta $04f2		; 8d f2 04
B28_104e:		lda #$40		; a9 40
B28_1050:		sec				; 38 
B28_1051:		sbc $00			; e5 00
B28_1053:		tay				; a8 
B28_1054:		lda $90			; a5 90
B28_1056:		bmi B28_1061 ; 30 09

B28_1058:		lda ($08), y	; b1 08
B28_105a:		sta $0537		; 8d 37 05
B28_105d:		lda #$00		; a9 00
B28_105f:		beq B28_106b ; f0 0a

B28_1061:		lda #$00		; a9 00
B28_1063:		sec				; 38 
B28_1064:		sbc ($08), y	; f1 08
B28_1066:		sta $0537		; 8d 37 05
B28_1069:		lda #$ff		; a9 ff
B28_106b:		sta $0520		; 8d 20 05
B28_106e:		jmp $913e		; 4c 3e 91


B28_1071:		ldx $94			; a6 94
B28_1073:		lda $04f2, x	; bd f2 04
B28_1076:		sta $04f2		; 8d f2 04
B28_1079:		lda $0520, x	; bd 20 05
B28_107c:		sta $0520		; 8d 20 05
B28_107f:		lda #$00		; a9 00
B28_1081:		sta $0509		; 8d 09 05
B28_1084:		sta $0537		; 8d 37 05
B28_1087:		sec				; 38 
B28_1088:		rts				; 60 


B28_1089:		lda $90			; a5 90
B28_108b:		bpl B28_103d ; 10 b0

B28_108d:		ldx $94			; a6 94
B28_108f:		lda $04f2, x	; bd f2 04
B28_1092:		bpl B28_10a8 ; 10 14

B28_1094:		sta $04f2		; 8d f2 04
B28_1097:		lda $0520, x	; bd 20 05
B28_109a:		sta $0520		; 8d 20 05
B28_109d:		lda #$00		; a9 00
B28_109f:		sta $0509		; 8d 09 05
B28_10a2:		sta $0537		; 8d 37 05
B28_10a5:		jmp $913e		; 4c 3e 91


B28_10a8:		lda #$00		; a9 00
B28_10aa:		sta $0509		; 8d 09 05
B28_10ad:		sta $04f2		; 8d f2 04
B28_10b0:		sta $0537		; 8d 37 05
B28_10b3:		sta $0520		; 8d 20 05
B28_10b6:		jmp $913e		; 4c 3e 91


B28_10b9:		ldx $d4			; a6 d4
B28_10bb:		stx $d2			; 86 d2
B28_10bd:		lda $95			; a5 95
B28_10bf:		asl a			; 0a
B28_10c0:		tay				; a8 
B28_10c1:		lda $87e0, y	; b9 e0 87
B28_10c4:		sta $08			; 85 08
B28_10c6:		lda $87e1, y	; b9 e1 87
B28_10c9:		sta $09			; 85 09
B28_10cb:		ldy $93			; a4 93
B28_10cd:		dey				; 88 
B28_10ce:		beq B28_110a ; f0 3a

B28_10d0:		dey				; 88 
B28_10d1:		beq B28_1122 ; f0 4f

B28_10d3:		lda $90			; a5 90
B28_10d5:		and #$7f		; 29 7f
B28_10d7:		sta $00			; 85 00
B28_10d9:		tay				; a8 
B28_10da:		lda #$00		; a9 00
B28_10dc:		sec				; 38 
B28_10dd:		sbc ($08), y	; f1 08
B28_10df:		sta $0509		; 8d 09 05
B28_10e2:		lda #$ff		; a9 ff
B28_10e4:		sta $04f2		; 8d f2 04
B28_10e7:		lda #$40		; a9 40
B28_10e9:		sec				; 38 
B28_10ea:		sbc $00			; e5 00
B28_10ec:		tay				; a8 
B28_10ed:		lda $90			; a5 90
B28_10ef:		bmi B28_10fd ; 30 0c

B28_10f1:		lda #$00		; a9 00
B28_10f3:		sec				; 38 
B28_10f4:		sbc ($08), y	; f1 08
B28_10f6:		sta $0537		; 8d 37 05
B28_10f9:		lda #$ff		; a9 ff
B28_10fb:		bne B28_1104 ; d0 07

B28_10fd:		lda ($08), y	; b1 08
B28_10ff:		sta $0537		; 8d 37 05
B28_1102:		lda #$00		; a9 00
B28_1104:		sta $0520		; 8d 20 05
B28_1107:		jmp $913e		; 4c 3e 91


B28_110a:		ldx $94			; a6 94
B28_110c:		lda $04f2, x	; bd f2 04
B28_110f:		sta $04f2		; 8d f2 04
B28_1112:		lda $0520, x	; bd 20 05
B28_1115:		sta $0520		; 8d 20 05
B28_1118:		lda #$00		; a9 00
B28_111a:		sta $0509		; 8d 09 05
B28_111d:		sta $0537		; 8d 37 05
B28_1120:		sec				; 38 
B28_1121:		rts				; 60 


B28_1122:		lda $90			; a5 90
B28_1124:		bmi B28_10d3 ; 30 ad

B28_1126:		ldx $94			; a6 94
B28_1128:		lda $04f2, x	; bd f2 04
B28_112b:		bmi B28_1143 ; 30 16

B28_112d:		sta $04f2		; 8d f2 04
B28_1130:		lda $0520, x	; bd 20 05
B28_1133:		sta $0520		; 8d 20 05
B28_1136:		lda #$00		; a9 00
B28_1138:		sta $0509		; 8d 09 05
B28_113b:		sta $0537		; 8d 37 05
B28_113e:		jsr $8001		; 20 01 80
B28_1141:		sec				; 38 
B28_1142:		rts				; 60 


B28_1143:		lda #$00		; a9 00
B28_1145:		sta $0509		; 8d 09 05
B28_1148:		sta $04f2		; 8d f2 04
B28_114b:		sta $0537		; 8d 37 05
B28_114e:		sta $0520		; 8d 20 05
B28_1151:		beq B28_113e ; f0 eb

B28_1153:		lda $04f2		; ad f2 04
B28_1156:		bmi B28_115c ; 30 04

B28_1158:		lda #$08		; a9 08
B28_115a:		bne B28_115e ; d0 02

B28_115c:		lda #$f8		; a9 f8
B28_115e:		sta $00			; 85 00
B28_1160:		ldx #$00		; a2 00
B28_1162:		jsr func_1f_1cdd		; 20 dd fc
B28_1165:		beq B28_1169 ; f0 02

B28_1167:		sec				; 38 
B28_1168:		rts				; 60 


B28_1169:		ldy $82			; a4 82
B28_116b:		sty $01			; 84 01
B28_116d:		lda $9186, y	; b9 86 91
B28_1170:		tax				; aa 
B28_1171:		lda $00			; a5 00
B28_1173:		jsr func_1f_1cdd		; 20 dd fc
B28_1176:		bne B28_1167 ; d0 ef

B28_1178:		lda $01			; a5 01
B28_117a:		clc				; 18 
B28_117b:		adc #$04		; 69 04
B28_117d:		cmp #$08		; c9 08
B28_117f:		bcs B28_1184 ; b0 03

B28_1181:		tay				; a8 
B28_1182:		bne B28_116b ; d0 e7

B28_1184:		clc				; 18 
B28_1185:		rts				; 60 


B28_1186:		beq B28_1178 ; f0 f0

B28_1188:	.db $f4
B28_1189:		beq B28_119a ; f0 0f

B28_118b:	.db $0f
B28_118c:	.db $0b
B28_118d:	.db $0f
B28_118e:		lda $8b			; a5 8b
B28_1190:		bne B28_1193 ; d0 01

B28_1192:		rts				; 60 


B28_1193:		cmp #$01		; c9 01
B28_1195:		beq B28_11f9 ; f0 62

B28_1197:		sec				; 38 
B28_1198:		sbc #$05		; e9 05
B28_119a:		bcc B28_1192 ; 90 f6

B28_119c:		bne B28_11a1 ; d0 03

B28_119e:		jmp $9314		; 4c 14 93


B28_11a1:		tay				; a8 
B28_11a2:		dey				; 88 
B28_11a3:		bne B28_11a8 ; d0 03

B28_11a5:		jmp $9340		; 4c 40 93


B28_11a8:		dey				; 88 
B28_11a9:		dey				; 88 
B28_11aa:		bne B28_11af ; d0 03

B28_11ac:		jmp $9242		; 4c 42 92


B28_11af:		dey				; 88 
B28_11b0:		bne B28_11b5 ; d0 03

B28_11b2:		jmp $9288		; 4c 88 92


B28_11b5:		dey				; 88 
B28_11b6:		bne B28_11bb ; d0 03

B28_11b8:		jmp $92bb		; 4c bb 92


B28_11bb:		dey				; 88 
B28_11bc:		bne B28_11c1 ; d0 03

B28_11be:		jmp $92ee		; 4c ee 92


B28_11c1:		rts				; 60 


B28_11c2:		cmp #$6e		; c9 6e
B28_11c4:		beq B28_11f2 ; f0 2c

B28_11c6:		cmp #$74		; c9 74
B28_11c8:		beq B28_11f2 ; f0 28

B28_11ca:		cmp #$76		; c9 76
B28_11cc:		beq B28_11d5 ; f0 07

B28_11ce:		cmp #$78		; c9 78
B28_11d0:		beq B28_11d5 ; f0 03

B28_11d2:		ldx $91			; a6 91
B28_11d4:		rts				; 60 


B28_11d5:		lda $0520, x	; bd 20 05
B28_11d8:		bpl B28_11d2 ; 10 f8

B28_11da:		lda #$fb		; a9 fb
B28_11dc:		ldx #$f8		; a2 f8
B28_11de:		jsr func_1f_1cdd		; 20 dd fc
B28_11e1:		bne B28_11ec ; d0 09

B28_11e3:		lda #$05		; a9 05
B28_11e5:		ldx #$f8		; a2 f8
B28_11e7:		jsr func_1f_1cdd		; 20 dd fc
B28_11ea:		beq B28_11d2 ; f0 e6

B28_11ec:		lda #$10		; a9 10
B28_11ee:		sta $af			; 85 af
B28_11f0:		bne B28_11d2 ; d0 e0

B28_11f2:		lda $061d, x	; bd 1d 06
B28_11f5:		beq B28_11d2 ; f0 db

B28_11f7:		bne B28_11da ; d0 e1

B28_11f9:		ldx $91			; a6 91
B28_11fb:		stx $b8			; 86 b8
B28_11fd:		lda $054e, x	; bd 4e 05
B28_1200:		cmp #$79		; c9 79
B28_1202:		bcc B28_1237 ; 90 33

B28_1204:		jsr $91c2		; 20 c2 91
B28_1207:		lda $82			; a5 82
B28_1209:		cmp #$04		; c9 04
B28_120b:		bcs B28_1226 ; b0 19

B28_120d:		lda $04f2, x	; bd f2 04
B28_1210:		bpl B28_121d ; 10 0b

B28_1212:		lda #$f8		; a9 f8
B28_1214:		ldx #$f0		; a2 f0
B28_1216:		jsr func_1f_1cdd		; 20 dd fc
B28_1219:		bne B28_1237 ; d0 1c

B28_121b:		beq B28_1226 ; f0 09

B28_121d:		lda #$08		; a9 08
B28_121f:		ldx #$f0		; a2 f0
B28_1221:		jsr func_1f_1cdd		; 20 dd fc
B28_1224:		bne B28_1237 ; d0 11

B28_1226:		ldx $91			; a6 91
B28_1228:		lda $0509, x	; bd 09 05
B28_122b:		sta $0509		; 8d 09 05
B28_122e:		lda $04f2, x	; bd f2 04
B28_1231:		sta $04f2		; 8d f2 04
B28_1234:		jmp $873a		; 4c 3a 87


B28_1237:		lda #$00		; a9 00
B28_1239:		sta $0509		; 8d 09 05
B28_123c:		sta $04f2		; 8d f2 04
B28_123f:		jmp $873a		; 4c 3a 87


B28_1242:		lda $2a			; a5 2a
B28_1244:		cmp #$1b		; c9 1b
B28_1246:		beq B28_125a ; f0 12

B28_1248:		ldx #$01		; a2 01
B28_124a:		lda #$f8		; a9 f8
B28_124c:		jsr func_1f_1cdd		; 20 dd fc
B28_124f:		bne B28_125a ; d0 09

B28_1251:		ldx #$f0		; a2 f0
B28_1253:		lda #$f8		; a9 f8
B28_1255:		jsr func_1f_1cdd		; 20 dd fc
B28_1258:		beq B28_125b ; f0 01

B28_125a:		rts				; 60 


B28_125b:		lda $82			; a5 82
B28_125d:		and #$0c		; 29 0c
B28_125f:		bne B28_126e ; d0 0d

B28_1261:		lda #$ff		; a9 ff
B28_1263:		sta $04f2		; 8d f2 04
B28_1266:		lda #$40		; a9 40
B28_1268:		sta $0509		; 8d 09 05
B28_126b:		jmp $873a		; 4c 3a 87


B28_126e:		lda #$ff		; a9 ff
B28_1270:		sta $04f2		; 8d f2 04
B28_1273:		lda #$a0		; a9 a0
B28_1275:		sta $0509		; 8d 09 05
B28_1278:		jmp $873a		; 4c 3a 87


B28_127b:		lda #$00		; a9 00
B28_127d:		sta $04f2		; 8d f2 04
B28_1280:		lda #$60		; a9 60
B28_1282:		sta $0509		; 8d 09 05
B28_1285:		jmp $873a		; 4c 3a 87


B28_1288:		ldx #$01		; a2 01
B28_128a:		lda #$08		; a9 08
B28_128c:		jsr func_1f_1cdd		; 20 dd fc
B28_128f:		bne B28_129a ; d0 09

B28_1291:		ldx #$f0		; a2 f0
B28_1293:		lda #$08		; a9 08
B28_1295:		jsr func_1f_1cdd		; 20 dd fc
B28_1298:		beq B28_129b ; f0 01

B28_129a:		rts				; 60 


B28_129b:		lda $82			; a5 82
B28_129d:		and #$0c		; 29 0c
B28_129f:		bne B28_127b ; d0 da

B28_12a1:		lda #$00		; a9 00
B28_12a3:		sta $04f2		; 8d f2 04
B28_12a6:		lda #$c0		; a9 c0
B28_12a8:		sta $0509		; 8d 09 05
B28_12ab:		jmp $873a		; 4c 3a 87


B28_12ae:		lda #$ff		; a9 ff
B28_12b0:		sta $04f2		; 8d f2 04
B28_12b3:		lda #$c0		; a9 c0
B28_12b5:		sta $0509		; 8d 09 05
B28_12b8:		jmp $873a		; 4c 3a 87


B28_12bb:		ldx #$01		; a2 01
B28_12bd:		lda #$f8		; a9 f8
B28_12bf:		jsr func_1f_1cdd		; 20 dd fc
B28_12c2:		bne B28_12cd ; d0 09

B28_12c4:		ldx #$f0		; a2 f0
B28_12c6:		lda #$f8		; a9 f8
B28_12c8:		jsr func_1f_1cdd		; 20 dd fc
B28_12cb:		beq B28_12ce ; f0 01

B28_12cd:		rts				; 60 


B28_12ce:		lda $82			; a5 82
B28_12d0:		and #$0c		; 29 0c
B28_12d2:		bne B28_12ae ; d0 da

B28_12d4:		lda #$ff		; a9 ff
B28_12d6:		sta $04f2		; 8d f2 04
B28_12d9:		lda #$80		; a9 80
B28_12db:		sta $0509		; 8d 09 05
B28_12de:		jmp $873a		; 4c 3a 87


B28_12e1:		lda #$00		; a9 00
B28_12e3:		sta $04f2		; 8d f2 04
B28_12e6:		lda #$40		; a9 40
B28_12e8:		sta $0509		; 8d 09 05
B28_12eb:		jmp $873a		; 4c 3a 87


B28_12ee:		ldx #$01		; a2 01
B28_12f0:		lda #$08		; a9 08
B28_12f2:		jsr func_1f_1cdd		; 20 dd fc
B28_12f5:		bne B28_1300 ; d0 09

B28_12f7:		ldx #$f0		; a2 f0
B28_12f9:		lda #$08		; a9 08
B28_12fb:		jsr func_1f_1cdd		; 20 dd fc
B28_12fe:		beq B28_1301 ; f0 01

B28_1300:		rts				; 60 


B28_1301:		lda $82			; a5 82
B28_1303:		and #$0c		; 29 0c
B28_1305:		bne B28_12e1 ; d0 da

B28_1307:		lda #$00		; a9 00
B28_1309:		sta $04f2		; 8d f2 04
B28_130c:		lda #$80		; a9 80
B28_130e:		sta $0509		; 8d 09 05
B28_1311:		jmp $873a		; 4c 3a 87


B28_1314:		lda #$00		; a9 00
B28_1316:		sta $0509		; 8d 09 05
B28_1319:		sta $04f2		; 8d f2 04
B28_131c:		sta $0537		; 8d 37 05
B28_131f:		sta $0520		; 8d 20 05
B28_1322:		jsr $8077		; 20 77 80
B28_1325:		jsr $9153		; 20 53 91
B28_1328:		bcs B28_1330 ; b0 06

B28_132a:		jsr $873a		; 20 3a 87
B28_132d:		jmp $8712		; 4c 12 87


B28_1330:		lda #$00		; a9 00
B28_1332:		sta $0509		; 8d 09 05
B28_1335:		sta $04f2		; 8d f2 04
B28_1338:		sta $0537		; 8d 37 05
B28_133b:		sta $0520		; 8d 20 05
B28_133e:		beq B28_132a ; f0 ea

B28_1340:		ldx $d4			; a6 d4
B28_1342:		stx $d2			; 86 d2
B28_1344:		ldy $93			; a4 93
B28_1346:		dey				; 88 
B28_1347:		beq B28_1363 ; f0 1a

B28_1349:		dey				; 88 
B28_134a:		beq B28_1363 ; f0 17

B28_134c:		lda #$00		; a9 00
B28_134e:		sta $0509		; 8d 09 05
B28_1351:		sta $04f2		; 8d f2 04
B28_1354:		sta $0537		; 8d 37 05
B28_1357:		sta $0520		; 8d 20 05
B28_135a:		jsr $8001		; 20 01 80
B28_135d:		jsr $873a		; 20 3a 87
B28_1360:		jmp $8712		; 4c 12 87


B28_1363:		ldx $94			; a6 94
B28_1365:		lda $04f2, x	; bd f2 04
B28_1368:		sta $04f2		; 8d f2 04
B28_136b:		lda $0520, x	; bd 20 05
B28_136e:		sta $0520		; 8d 20 05
B28_1371:		lda #$00		; a9 00
B28_1373:		sta $0509		; 8d 09 05
B28_1376:		sta $0537		; 8d 37 05
B28_1379:		beq B28_135d ; f0 e2

func_1c_137b:
B28_137b:		ldy $0565		; ac 65 05
B28_137e:		jsr jumpTableNoPreserveY		; 20 86 e8
	.dw $8ac5
	.dw $9538
	.dw $9660
	.dw $961d
.ifdef IMPROVED_CONTROLS_TEST
	.dw func1
.else
	.dw $9770
.endif
	.dw $9919
	.dw $9770
	.dw $9953
	.dw $9967
	.dw $998e
	.dw $9a93
	.dw $9942
	.dw $9418
	.dw $943a
	.dw $9465
	.dw $949e
	.dw $94b8
	.dw $94d4
	.dw $94ff
	.dw $831c
	.dw $93b1
	.dw $93b1
	.dw $8b57
	.dw $8ade

B28_13b1:		lda #$02
B28_13b3:		sta $0400		; 8d 00 04
B28_13b6:		dec $05d4		; ce d4 05
B28_13b9:		beq B28_13db ; f0 20

B28_13bb:		lda #$02		; a9 02
B28_13bd:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_13c0:		lda $05eb		; ad eb 05
B28_13c3:		bne B28_13e6 ; d0 21

B28_13c5:		jsr $8421		; 20 21 84
B28_13c8:		bcc B28_13cb ; 90 01

B28_13ca:		rts				; 60 


B28_13cb:		lda #$01		; a9 01
B28_13cd:		sta $05eb		; 8d eb 05
B28_13d0:		lda #$0c		; a9 0c
B28_13d2:		sta $05d8		; 8d d8 05
B28_13d5:		lda #$01		; a9 01
B28_13d7:		sta wEntityPhase.w		; 8d c1 05
B28_13da:		rts				; 60 


B28_13db:		lda #$00		; a9 00
B28_13dd:		sta wEntityPaletteOverride.w		; 8d 54 04
B28_13e0:		lda #$02		; a9 02
B28_13e2:		sta $0565		; 8d 65 05
B28_13e5:		rts				; 60 


B28_13e6:		jsr $984f		; 20 4f 98
B28_13e9:		lda wEntityPhase.w		; ad c1 05
B28_13ec:		beq B28_13e5 ; f0 f7

B28_13ee:		ldx #$10		; a2 10
B28_13f0:		lda #$fb		; a9 fb
B28_13f2:		jsr func_1f_1cdd		; 20 dd fc
B28_13f5:		bne B28_1401 ; d0 0a

B28_13f7:		ldx #$10		; a2 10
B28_13f9:		lda #$05		; a9 05
B28_13fb:		jsr func_1f_1cdd		; 20 dd fc
B28_13fe:		bne B28_1401 ; d0 01

B28_1400:		rts				; 60 


B28_1401:		jsr $8a02		; 20 02 8a
B28_1404:		lda #$00		; a9 00
B28_1406:		sta $05eb		; 8d eb 05
B28_1409:		rts				; 60 


B28_140a:		sta $0565		; 8d 65 05
B28_140d:		lda #$72		; a9 72
B28_140f:		jsr playSound		; 20 5f e2
B28_1412:		lda #$00		; a9 00
B28_1414:		sta $0578		; 8d 78 05
B28_1417:		rts				; 60 


B28_1418:		jsr $8421		; 20 21 84
B28_141b:		bcs B28_1425 ; b0 08

B28_141d:		lda #$00		; a9 00
B28_141f:		sta $0413		; 8d 13 04
B28_1422:		jmp $973a		; 4c 3a 97


B28_1425:		jsr $918e		; 20 8e 91
B28_1428:		jsr $bc89		; 20 89 bc
B28_142b:		bcs B28_142e ; b0 01

B28_142d:		rts				; 60 


B28_142e:		lda #$02		; a9 02
B28_1430:		sta $0565		; 8d 65 05
B28_1433:		lda #$02		; a9 02
B28_1435:		sta $0400		; 8d 00 04
B28_1438:		sec				; 38 
B28_1439:		rts				; 60 


.ifdef IMPROVED_CONTROLS_TEST
	jsr func3
.else
B28_143a:		jsr $979c		; 20 9c 97
.endif
B28_143d:		lda $0565		; ad 65 05
B28_1440:		cmp #$26		; c9 26
B28_1442:		beq B28_1459 ; f0 15

B28_1444:		cmp #$02		; c9 02
B28_1446:		bne B28_1454 ; d0 0c

B28_1448:		lda #$00		; a9 00
B28_144a:		sta $b9			; 85 b9
B28_144c:		lda #$18		; a9 18
B28_144e:		sta $0565		; 8d 65 05
B28_1451:		jmp $9428		; 4c 28 94


B28_1454:		jsr $bc89		; 20 89 bc
B28_1457:		bcs B28_145a ; b0 01

B28_1459:		rts				; 60 


B28_145a:		lda #$08		; a9 08
B28_145c:		sta $0565		; 8d 65 05
B28_145f:		lda #$02		; a9 02
B28_1461:		sta $0400		; 8d 00 04
B28_1464:		rts				; 60 


B28_1465:		jsr $8421		; 20 21 84
B28_1468:		bcs B28_146d ; b0 03

B28_146a:		jmp $941d		; 4c 1d 94


B28_146d:		jsr $918e		; 20 8e 91
B28_1470:		jsr $9936		; 20 36 99
B28_1473:		lda $0565		; ad 65 05
B28_1476:		cmp #$02		; c9 02
B28_1478:		bne B28_148d ; d0 13

B28_147a:		lda #$18		; a9 18
B28_147c:		sta $0565		; 8d 65 05
B28_147f:		jsr $9428		; 20 28 94
B28_1482:		lda $0565		; ad 65 05
B28_1485:		cmp #$18		; c9 18
B28_1487:		bne B28_148c ; d0 03

B28_1489:		jsr $becb		; 20 cb be
B28_148c:		rts				; 60 


B28_148d:		jsr $bc89		; 20 89 bc
B28_1490:		bcs B28_1493 ; b0 01

B28_1492:		rts				; 60 


B28_1493:		lda #$0a		; a9 0a
B28_1495:		sta $0565		; 8d 65 05
B28_1498:		lda #$0e		; a9 0e
B28_149a:		sta $0400		; 8d 00 04
B28_149d:		rts				; 60 


B28_149e:		jsr $bc89		; 20 89 bc
B28_14a1:		bcs B28_14a4 ; b0 01

B28_14a3:		rts				; 60 


B28_14a4:		lda #$12		; a9 12
B28_14a6:		sta $0565		; 8d 65 05
B28_14a9:		rts				; 60 


B28_14aa:		sta $0565		; 8d 65 05
B28_14ad:		lda #$00		; a9 00
B28_14af:		sta wEntityAnimationIdxes.w		; 8d 93 05
B28_14b2:		lda #$01		; a9 01
B28_14b4:		sta wEntityTimeUntilNextAnimation.w		; 8d 7c 05
B28_14b7:		rts				; 60 


B28_14b8:		jsr $8421		; 20 21 84
B28_14bb:		bcs B28_14c0 ; b0 03

B28_14bd:		jmp $973a		; 4c 3a 97


B28_14c0:		jsr $918e		; 20 8e 91
B28_14c3:		jsr $baf2		; 20 f2 ba
B28_14c6:		bcs B28_14c9 ; b0 01

B28_14c8:		rts				; 60 


B28_14c9:		lda #$02		; a9 02
B28_14cb:		sta $0565		; 8d 65 05
B28_14ce:		lda #$02		; a9 02
B28_14d0:		sta $0400		; 8d 00 04
B28_14d3:		rts				; 60 


.ifdef IMPROVED_CONTROLS_TEST
	jsr func3
.else
B28_14d4:		jsr $979c		; 20 9c 97
.endif
B28_14d7:		lda $0565		; ad 65 05
B28_14da:		cmp #$26		; c9 26
B28_14dc:		beq B28_14f3 ; f0 15

B28_14de:		cmp #$02		; c9 02
B28_14e0:		bne B28_14ee ; d0 0c

B28_14e2:		lda #$00		; a9 00
B28_14e4:		sta $b9			; 85 b9
B28_14e6:		lda #$20		; a9 20
B28_14e8:		sta $0565		; 8d 65 05
B28_14eb:		jmp $94c3		; 4c c3 94


B28_14ee:		jsr $baf2		; 20 f2 ba
B28_14f1:		bcs B28_14f4 ; b0 01

B28_14f3:		rts				; 60 


B28_14f4:		lda #$08		; a9 08
B28_14f6:		sta $0565		; 8d 65 05
B28_14f9:		lda #$02		; a9 02
B28_14fb:		sta $0400		; 8d 00 04
B28_14fe:		rts				; 60 


B28_14ff:		jsr $baf2		; 20 f2 ba
B28_1502:		bcs B28_1505 ; b0 01

B28_1504:		rts				; 60 


B28_1505:		lda #$12		; a9 12
B28_1507:		sta $0565		; 8d 65 05
B28_150a:		rts				; 60 


B28_150b:		lda $054e		; ad 4e 05
B28_150e:		cmp #$02		; c9 02
B28_1510:		beq B28_1534 ; f0 22

B28_1512:		ldx #$e8		; a2 e8
B28_1514:		lda #$fb		; a9 fb
B28_1516:		jsr $840b		; 20 0b 84
B28_1519:		beq B28_1523 ; f0 08

B28_151b:		cmp #$05		; c9 05
B28_151d:		beq B28_1523 ; f0 04

B28_151f:		cmp #$07		; c9 07
B28_1521:		bne B28_1536 ; d0 13

B28_1523:		ldx #$e8		; a2 e8
B28_1525:		lda #$05		; a9 05
B28_1527:		jsr $840b		; 20 0b 84
B28_152a:		beq B28_1534 ; f0 08

B28_152c:		cmp #$05		; c9 05
B28_152e:		beq B28_1534 ; f0 04

B28_1530:		cmp #$07		; c9 07
B28_1532:		bne B28_1536 ; d0 02

B28_1534:		clc				; 18 
B28_1535:		rts				; 60 


B28_1536:		sec				; 38 
B28_1537:		rts				; 60 


B28_1538:		jsr $8421		; 20 21 84
B28_153b:		bcs B28_1540 ; b0 03

B28_153d:		jmp $973a		; 4c 3a 97


B28_1540:		lda $b9			; a5 b9
B28_1542:		beq B28_154d ; f0 09

B28_1544:		dec $b9			; c6 b9
B28_1546:		bne B28_1537 ; d0 ef

B28_1548:		lda #$02		; a9 02
B28_154a:		sta $0400		; 8d 00 04
B28_154d:		lda wJoy1NewButtonsPressed			; a5 26
B28_154f:		asl a			; 0a
B28_1550:		bcs B28_1594 ; b0 42

B28_1552:		asl a			; 0a
B28_1553:		bcs B28_1571 ; b0 1c

B28_1555:		lda wJoy1ButtonsPressed			; a5 28
B28_1557:		lsr a			; 4a
B28_1558:		bcc B28_155d ; 90 03

B28_155a:		jmp $9602		; 4c 02 96


B28_155d:		lsr a			; 4a
B28_155e:		bcc B28_1563 ; 90 03

B28_1560:		jmp $9606		; 4c 06 96


B28_1563:		lsr a			; 4a
B28_1564:		bcs B28_15aa ; b0 44

B28_1566:		lsr a			; 4a
B28_1567:		bcs B28_15b8 ; b0 4f

B28_1569:		lda #$02		; a9 02
B28_156b:		sta $0400		; 8d 00 04
B28_156e:		jmp $918e		; 4c 8e 91


B28_1571:		lda wJoy1ButtonsPressed			; a5 28
B28_1573:		and #$08		; 29 08
B28_1575:		bne B28_158a ; d0 13

B28_1577:		lda $054e		; ad 4e 05
B28_157a:		cmp #$03		; c9 03
B28_157c:		beq B28_1583 ; f0 05

B28_157e:		lda #$18		; a9 18
B28_1580:		jmp $940a		; 4c 0a 94


B28_1583:		jsr $ba69		; 20 69 ba
B28_1586:		bcs B28_158f ; b0 07

B28_1588:		bcc B28_1555 ; 90 cb

B28_158a:		jsr $b9f5		; 20 f5 b9
B28_158d:		bcc B28_1577 ; 90 e8

B28_158f:		lda #$20		; a9 20
B28_1591:		jmp $94aa		; 4c aa 94


B28_1594:		jsr $950b		; 20 0b 95
B28_1597:		bcs B28_159e ; b0 05

B28_1599:		lda #$06		; a9 06
B28_159b:		sta $0565		; 8d 65 05
B28_159e:		rts				; 60 


B28_159f:		lda #$0a		; a9 0a
B28_15a1:		sta $0565		; 8d 65 05
B28_15a4:		lda #$0e		; a9 0e
B28_15a6:		sta $0400		; 8d 00 04
B28_15a9:		rts				; 60 


B28_15aa:		jsr $e6d4		; 20 d4 e6
B28_15ad:		bcc B28_159f ; 90 f0

B28_15af:		lda #$00		; a9 00
B28_15b1:		sta wEntityPhase.w		; 8d c1 05
B28_15b4:		ldx #$01		; a2 01
B28_15b6:		bne B28_15c4 ; d0 0c

B28_15b8:		jsr $e6df		; 20 df e6
B28_15bb:		bcc B28_1569 ; 90 ac

B28_15bd:		lda #$01		; a9 01
B28_15bf:		sta wEntityPhase.w		; 8d c1 05
B28_15c2:		ldx #$00		; a2 00
B28_15c4:		ldy #$00		; a0 00
B28_15c6:		lda $0a			; a5 0a
B28_15c8:		asl a			; 0a
B28_15c9:		bcc B28_15d0 ; 90 05

B28_15cb:		txa				; 8a 
B28_15cc:		eor #$01		; 49 01
B28_15ce:		tax				; aa 
B28_15cf:		iny				; c8 
B28_15d0:		sty wEntityAI_idx.w		; 8c ef 05
B28_15d3:		stx $04a8		; 8e a8 04
B28_15d6:		lda $0b			; a5 0b
B28_15d8:		sta $061d		; 8d 1d 06
B28_15db:		ldy #$00		; a0 00
B28_15dd:		asl a			; 0a
B28_15de:		bcc B28_15e1 ; 90 01

B28_15e0:		iny				; c8 
B28_15e1:		sty $0606		; 8c 06 06
B28_15e4:		lda $0d			; a5 0d
B28_15e6:		beq B28_15ee ; f0 06

B28_15e8:		lda #$ff		; a9 ff
B28_15ea:		ldy #$00		; a0 00
B28_15ec:		beq B28_15f2 ; f0 04

B28_15ee:		lda #$01		; a9 01
B28_15f0:		ldy #$00		; a0 00
B28_15f2:		sty $0509		; 8c 09 05
B28_15f5:		sta $04f2		; 8d f2 04
B28_15f8:		lda #$0e		; a9 0e
B28_15fa:		sta $0565		; 8d 65 05
B28_15fd:		lda #$00		; a9 00
B28_15ff:		jmp $ef4a		; 4c 4a ef


B28_1602:		lda #$00		; a9 00
B28_1604:		beq B28_1608 ; f0 02

B28_1606:		lda #$01		; a9 01
B28_1608:		sta $04a8		; 8d a8 04
B28_160b:		lda #$00		; a9 00
B28_160d:		sta $04f2		; 8d f2 04
B28_1610:		sta $0509		; 8d 09 05
B28_1613:		lda #$04		; a9 04
B28_1615:		sta $0565		; 8d 65 05
B28_1618:		lda #$00		; a9 00
B28_161a:		jmp $ef4a		; 4c 4a ef


B28_161d:		lda #$08		; a9 08
B28_161f:		sta $0565		; 8d 65 05
B28_1622:		lda wJoy1ButtonsPressed			; a5 28
B28_1624:		sta $10			; 85 10
B28_1626:		ldx #$00		; a2 00
B28_1628:		lda #$16		; a9 16
B28_162a:		sta $0400, x	; 9d 00 04
B28_162d:		lda #$00		; a9 00
B28_162f:		sta wEntityPhase.w, x	; 9d c1 05
B28_1632:		lda #$09		; a9 09
B28_1634:		sta $05d8, x	; 9d d8 05
B28_1637:		lda $10			; a5 10
B28_1639:		lsr a			; 4a
B28_163a:		bcs B28_1644 ; b0 08

B28_163c:		lsr a			; 4a
B28_163d:		bcs B28_164f ; b0 10

B28_163f:		lda #$00		; a9 00
B28_1641:		tay				; a8 
B28_1642:		beq B28_1658 ; f0 14

B28_1644:		lda #$00		; a9 00
B28_1646:		sta $04a8, x	; 9d a8 04
B28_1649:		lda #$01		; a9 01
B28_164b:		ldy #$00		; a0 00
B28_164d:		beq B28_1658 ; f0 09

B28_164f:		lda #$01		; a9 01
B28_1651:		sta $04a8, x	; 9d a8 04
B28_1654:		lda #$ff		; a9 ff
B28_1656:		ldy #$00		; a0 00
B28_1658:		sta $04f2, x	; 9d f2 04
B28_165b:		tya				; 98 
B28_165c:		sta $0509, x	; 9d 09 05
B28_165f:		rts				; 60 


B28_1660:		jsr $8421		; 20 21 84
B28_1663:		bcs B28_1668 ; b0 03

B28_1665:		jmp $9734		; 4c 34 97


B28_1668:		lda wJoy1NewButtonsPressed			; a5 26
B28_166a:		asl a			; 0a
B28_166b:		bcc B28_1670 ; 90 03

B28_166d:		jmp $9594		; 4c 94 95


B28_1670:		asl a			; 0a
B28_1671:		bcs B28_168f ; b0 1c

B28_1673:		lda wJoy1ButtonsPressed			; a5 28
B28_1675:		lsr a			; 4a
B28_1676:		bcs B28_16ba ; b0 42

B28_1678:		lsr a			; 4a
B28_1679:		bcc B28_167e ; 90 03

B28_167b:		jmp $96f6		; 4c f6 96


B28_167e:		lda #$02		; a9 02
B28_1680:		sta $0565		; 8d 65 05
B28_1683:		jsr $8abc		; 20 bc 8a
B28_1686:		jsr $ef73		; 20 73 ef
B28_1689:		jsr $873a		; 20 3a 87
B28_168c:		jmp $8712		; 4c 12 87


B28_168f:		lda wJoy1ButtonsPressed			; a5 28
B28_1691:		and #$08		; 29 08
B28_1693:		beq B28_16a4 ; f0 0f

B28_1695:		jsr $b9f5		; 20 f5 b9
B28_1698:		bcc B28_16a4 ; 90 0a

B28_169a:		lda #$20		; a9 20
B28_169c:		jsr $94aa		; 20 aa 94
B28_169f:		jsr $8abc		; 20 bc 8a
B28_16a2:		beq B28_1689 ; f0 e5

B28_16a4:		lda $054e		; ad 4e 05
B28_16a7:		cmp #$03		; c9 03
B28_16a9:		beq B28_16b3 ; f0 08

B28_16ab:		lda #$18		; a9 18
B28_16ad:		jsr $940a		; 20 0a 94
B28_16b0:		jmp $9683		; 4c 83 96

B28_16b3:		jsr $ba69		; 20 69 ba
B28_16b6:		bcc B28_1673 ; 90 bb

B28_16b8:		bcs B28_169a ; b0 e0

B28_16ba:		lda #$00		; a9 00
B28_16bc:		sta $04a8		; 8d a8 04
B28_16bf:		jsr $8e85		; 20 85 8e
B28_16c2:		bcc B28_16d9 ; 90 15

B28_16c4:		ldx #$00		; a2 00
B28_16c6:		lda #$08		; a9 08
B28_16c8:		jsr func_1f_1cdd		; 20 dd fc
B28_16cb:		bne B28_16f1 ; d0 24

B28_16cd:		ldx #$f0		; a2 f0
B28_16cf:		lda #$08		; a9 08
B28_16d1:		jsr func_1f_1cdd		; 20 dd fc
B28_16d4:		bne B28_16f1 ; d0 1b

B28_16d6:		jmp $9686		; 4c 86 96

B28_16d9:		ldx #$00		; a2 00
B28_16db:		lda #$08		; a9 08
B28_16dd:		jsr func_1f_1cdd		; 20 dd fc
B28_16e0:		bne B28_16f1 ; d0 0f

B28_16e2:		ldx #$f0		; a2 f0
B28_16e4:		lda #$08		; a9 08
B28_16e6:		jsr func_1f_1cdd		; 20 dd fc
B28_16e9:		bne B28_16f1 ; d0 06

B28_16eb:		lda #$01		; a9 01
B28_16ed:		ldy #$00		; a0 00
B28_16ef:		beq B28_172b ; f0 3a

B28_16f1:		lda #$00		; a9 00
B28_16f3:		tay				; a8 
B28_16f4:		beq B28_172b ; f0 35

B28_16f6:		lda #$01		; a9 01
B28_16f8:		sta $04a8		; 8d a8 04
B28_16fb:		jsr func_1c_0f01		; 20 01 8f
B28_16fe:		bcc B28_1715 ; 90 15

B28_1700:		ldx #$00		; a2 00
B28_1702:		lda #$f8		; a9 f8
B28_1704:		jsr func_1f_1cdd		; 20 dd fc
B28_1707:		bne B28_16f1 ; d0 e8

B28_1709:		ldx #$f0		; a2 f0
B28_170b:		lda #$f8		; a9 f8
B28_170d:		jsr func_1f_1cdd		; 20 dd fc
B28_1710:		bne B28_16f1 ; d0 df

B28_1712:		jmp $9686		; 4c 86 96

B28_1715:		ldx #$00		; a2 00
B28_1717:		lda #$f8		; a9 f8
B28_1719:		jsr func_1f_1cdd		; 20 dd fc
B28_171c:		bne B28_16f1 ; d0 d3

B28_171e:		ldx #$f0		; a2 f0
B28_1720:		lda #$f8		; a9 f8
B28_1722:		jsr func_1f_1cdd		; 20 dd fc
B28_1725:		bne B28_16f1 ; d0 ca

B28_1727:		lda #$ff		; a9 ff
B28_1729:		ldy #$00		; a0 00

B28_172b:		sty $0509		; 8c 09 05
B28_172e:		sta $04f2		; 8d f2 04
B28_1731:		jmp $9683		; 4c 83 96


B28_1734:		jsr $973a		; 20 3a 97
B28_1737:		jmp $9686		; 4c 86 96


B28_173a:		lda $cf			; a5 cf
B28_173c:		cmp #$01		; c9 01
B28_173e:		beq B28_1744 ; f0 04

B28_1740:		cmp #$06		; c9 06
B28_1742:		bne B28_1748 ; d0 04

B28_1744:		lda #$08		; a9 08
B28_1746:		sta $af			; 85 af
.ifdef IMPROVED_CONTROLS_TEST
B28_1748:
	lda #$08
.else
B28_1748:		lda #$0c		; a9 0c
.endif
B28_174a:		sta $0565		; 8d 65 05
B28_174d:		ldx #$00		; a2 00
.ifdef IMPROVED_CONTROLS_TEST
	lda #$1c
.else
B28_174f:		lda #$0c		; a9 0c
.endif
B28_1751:		sta $05d8, x	; 9d d8 05
.ifdef IMPROVED_CONTROLS_TEST
	lda #$00
.else
B28_1754:		lda #$01		; a9 01
.endif
B28_1756:		sta wEntityPhase.w, x	; 9d c1 05

.ifdef IMPROVED_CONTROLS_TEST
	lda #$16
	sta $0400
B28_175e:
	lda #$00
	sta $0509
	.rept 6
	nop
	.endr
.else
B28_1759:		lda $04a8, x	; bd a8 04
B28_175c:		bne B28_176a ; d0 0c
B28_175e:		lda #$00		; a9 00
B28_1760:		ldy #$20		; a0 20
B28_1762:		sta $04f2, x	; 9d f2 04
B28_1765:		tya				; 98 
B28_1766:		sta $0509, x	; 9d 09 05
.endif
B28_1769:		rts				; 60 


B28_176a:		lda #$ff		; a9 ff
B28_176c:		ldy #$e0		; a0 e0
.ifdef IMPROVED_CONTROLS_TEST
	bne -$0e
.else
B28_176e:		bne B28_1762 ; d0 f2
.endif

B28_1770:		lda wJoy1NewButtonsPressed			; a5 26
B28_1772:		and #$40		; 29 40
B28_1774:		beq B28_179c ; f0 26

B28_1776:		lda wJoy1ButtonsPressed			; a5 28
B28_1778:		and #$08		; 29 08
B28_177a:		beq B28_1790 ; f0 14

B28_177c:		jsr $b9f5		; 20 f5 b9
B28_177f:		bcc B28_1790 ; 90 0f

B28_1781:		lda #$22		; a9 22
B28_1783:		jsr $94aa		; 20 aa 94
B28_1786:		jmp $979c		; 4c 9c 97


B28_1789:		jsr $ba69		; 20 69 ba
B28_178c:		bcc B28_179c ; 90 0e

B28_178e:		bcs B28_1781 ; b0 f1

B28_1790:		lda $054e		; ad 4e 05
B28_1793:		cmp #$03		; c9 03
B28_1795:		beq B28_1789 ; f0 f2

B28_1797:		lda #$1a		; a9 1a
B28_1799:		jsr $940a		; 20 0a 94
B28_179c:		jsr $83aa		; 20 aa 83
B28_179f:		bcs B28_1769 ; b0 c8

B28_17a1:		lda $04f2		; ad f2 04
B28_17a4:		bpl B28_17ba ; 10 14

B28_17a6:		ldx #$10		; a2 10
B28_17a8:		lda #$f8		; a9 f8
B28_17aa:		jsr func_1f_1cdd		; 20 dd fc
B28_17ad:		bne B28_17cf ; d0 20

B28_17af:		ldx #$08		; a2 08
B28_17b1:		lda #$f8		; a9 f8
B28_17b3:		jsr func_1f_1cdd		; 20 dd fc
B28_17b6:		bne B28_17cf ; d0 17

B28_17b8:		beq B28_17cc ; f0 12

B28_17ba:		ldx #$10		; a2 10
B28_17bc:		lda #$08		; a9 08
B28_17be:		jsr func_1f_1cdd		; 20 dd fc
B28_17c1:		bne B28_17cf ; d0 0c

B28_17c3:		ldx #$08		; a2 08
B28_17c5:		lda #$08		; a9 08
B28_17c7:		jsr func_1f_1cdd		; 20 dd fc
B28_17ca:		bne B28_17cf ; d0 03

B28_17cc:		jsr $873a		; 20 3a 87
B28_17cf:		lda wEntityBaseY.w		; ad 1c 04
B28_17d2:		sta $06			; 85 06
B28_17d4:		jsr $984f		; 20 4f 98
B28_17d7:		lda wEntityPhase.w		; ad c1 05
B28_17da:		beq B28_1841 ; f0 65

B28_17dc:		ldx #$10		; a2 10
B28_17de:		lda #$fb		; a9 fb
B28_17e0:		jsr func_1f_1cdd		; 20 dd fc
B28_17e3:		beq B28_17f1 ; f0 0c

B28_17e5:		ldx #$08		; a2 08
B28_17e7:		lda #$fb		; a9 fb
B28_17e9:		jsr $83ff		; 20 ff 83
B28_17ec:		beq B28_181e ; f0 30

B28_17ee:		jmp $9841		; 4c 41 98


B28_17f1:		ldx #$10		; a2 10
B28_17f3:		lda #$05		; a9 05
B28_17f5:		jsr func_1f_1cdd		; 20 dd fc
B28_17f8:		beq B28_1806 ; f0 0c

B28_17fa:		ldx #$08		; a2 08
B28_17fc:		lda #$05		; a9 05
B28_17fe:		jsr $83ff		; 20 ff 83
B28_1801:		beq B28_181e ; f0 1b

B28_1803:		jmp $9841		; 4c 41 98


B28_1806:		lda $8b			; a5 8b
B28_1808:		cmp #$01		; c9 01
B28_180a:		beq B28_1816 ; f0 0a

B28_180c:		cmp #$05		; c9 05
B28_180e:		beq B28_1844 ; f0 34

B28_1810:		cmp #$06		; c9 06
B28_1812:		beq B28_1844 ; f0 30

B28_1814:		bne B28_1841 ; d0 2b

B28_1816:		ldx $91			; a6 91
B28_1818:		jsr $fe9c		; 20 9c fe
B28_181b:		jmp $983b		; 4c 3b 98


B28_181e:		lda $05d8		; ad d8 05
B28_1821:		bne B28_1838 ; d0 15

B28_1823:		lda $0565		; ad 65 05
B28_1826:		cmp #$26		; c9 26
B28_1828:		beq B28_1838 ; f0 0e

B28_182a:		lda #$0b		; a9 0b
B28_182c:		jsr playSound		; 20 5f e2
B28_182f:		lda #$0c		; a9 0c
B28_1831:		sta $b9			; 85 b9
B28_1833:		lda #$0e		; a9 0e
B28_1835:		sta $0400		; 8d 00 04
B28_1838:		jsr $8a02		; 20 02 8a
B28_183b:		lda #$02		; a9 02
B28_183d:		sta $0565		; 8d 65 05
B28_1840:		rts				; 60 


B28_1841:		jmp $8712		; 4c 12 87


B28_1844:		lda $06			; a5 06
B28_1846:		clc				; 18 
B28_1847:		adc $91			; 65 91
B28_1849:		sta wEntityBaseY.w		; 8d 1c 04
B28_184c:		jmp $983b		; 4c 3b 98


B28_184f:		lda wEntityBaseY.w		; ad 1c 04
B28_1852:		cmp #$08		; c9 08
B28_1854:		bcs B28_1867 ; b0 11

B28_1856:		lda wEntityPhase.w		; ad c1 05
B28_1859:		bne B28_1867 ; d0 0c

B28_185b:		lda $0565		; ad 65 05
B28_185e:		cmp #$26		; c9 26
B28_1860:		beq B28_186a ; f0 08

B28_1862:		ldx #$00		; a2 00
B28_1864:		jsr $974f		; 20 4f 97
B28_1867:		jmp $98bf		; 4c bf 98


B28_186a:		lda #$00		; a9 00
B28_186c:		sta $0520		; 8d 20 05
B28_186f:		sta $0537		; 8d 37 05
B28_1872:		beq B28_1867 ; f0 f3

B28_1874:	.db $80
B28_1875:	.db $fa
B28_1876:	.db $fa
B28_1877:	.db $fa
B28_1878:	.db $fa
B28_1879:	.db $fa
B28_187a:	.db $fb
B28_187b:	.db $fb
B28_187c:	.db $fb
B28_187d:	.db $fb
B28_187e:	.db $fb
B28_187f:		sbc $fdfd, x	; fd fd fd
B28_1882:		sbc $fefd, x	; fd fd fe
B28_1885:		inc $fffe, x	; fe fe ff
B28_1888:	.db $ff
B28_1889:	.db $ff
B28_188a:	.db $ff
B28_188b:		.db $00				; 00
B28_188c:	.db $ff
B28_188d:		.db $00				; 00
B28_188e:		.db $00				; 00
B28_188f:		.db $00				; 00
B28_1890:		.db $00				; 00
B28_1891:		sta ($ad, x)	; 81 ad
B28_1893:	.db $37
B28_1894:		ora $18			; 05 18
B28_1896:		adc #$20		; 69 20
B28_1898:		sta $0537		; 8d 37 05
B28_189b:		lda $0520		; ad 20 05
B28_189e:		adc #$00		; 69 00
B28_18a0:		sta $0520		; 8d 20 05
B28_18a3:		bpl B28_18ab ; 10 06

B28_18a5:		lda #$00		; a9 00
B28_18a7:		sta wEntityPhase.w		; 8d c1 05
B28_18aa:		rts				; 60 


B28_18ab:		cmp #$05		; c9 05
B28_18ad:		bcc B28_18b9 ; 90 0a

B28_18af:		lda #$05		; a9 05
B28_18b1:		sta $0520		; 8d 20 05
B28_18b4:		lda #$00		; a9 00
B28_18b6:		sta $0537		; 8d 37 05
B28_18b9:		lda #$01		; a9 01
B28_18bb:		sta wEntityPhase.w		; 8d c1 05
B28_18be:		rts				; 60 


B28_18bf:		lda $0565		; ad 65 05
B28_18c2:		cmp #$26		; c9 26
B28_18c4:		;removed
	.db $f0 $cc

B28_18c6:		ldx #$00		; a2 00
B28_18c8:		lda #$00		; a9 00
B28_18ca:		sta $0537, x	; 9d 37 05
B28_18cd:		sta $04db, x	; 9d db 04
B28_18d0:		ldy $05d8, x	; bc d8 05
B28_18d3:		lda wEntityPhase.w, x	; bd c1 05
B28_18d6:		bne B28_18f4 ; d0 1c

B28_18d8:		lda $9874, y	; b9 74 98
B28_18db:		cmp #$81		; c9 81
B28_18dd:		beq B28_18e6 ; f0 07

B28_18df:		sta $0520, x	; 9d 20 05
B28_18e2:		inc $05d8, x	; fe d8 05
B28_18e5:		rts				; 60 


B28_18e6:		lda #$00		; a9 00
B28_18e8:		sta $0520, x	; 9d 20 05
B28_18eb:		dec $05d8, x	; de d8 05
B28_18ee:		lda #$01		; a9 01
B28_18f0:		sta wEntityPhase.w, x	; 9d c1 05
B28_18f3:		rts				; 60 


B28_18f4:		lda $9874, y	; b9 74 98
B28_18f7:		cmp #$80		; c9 80
B28_18f9:		beq B28_1907 ; f0 0c

B28_18fb:		dec $05d8, x	; de d8 05
B28_18fe:		eor #$ff		; 49 ff
B28_1900:		clc				; 18 
B28_1901:		adc #$01		; 69 01
B28_1903:		sta $0520, x	; 9d 20 05
B28_1906:		rts				; 60 


B28_1907:		lda $9875, y	; b9 75 98
B28_190a:		bne B28_18fe ; d0 f2

B28_190c:		jsr $ba69		; 20 69 ba
B28_190f:		bcc B28_1936 ; 90 25

B28_1911:		lda #$1c		; a9 1c
B28_1913:		jsr $94aa		; 20 aa 94
B28_1916:		jmp $9936		; 4c 36 99


.ifdef IMPROVED_CONTROLS_TEST
	jsr func5
.else
B28_1919:		jsr $8421		; 20 21 84
.endif
B28_191c:		bcs B28_1921 ; b0 03

B28_191e:		jmp $973a		; 4c 3a 97


B28_1921:		jsr $918e		; 20 8e 91
B28_1924:		lda wJoy1NewButtonsPressed			; a5 26
B28_1926:		and #$40		; 29 40
B28_1928:		beq B28_1936 ; f0 0c

B28_192a:		lda $054e		; ad 4e 05
B28_192d:		cmp #$03		; c9 03
B28_192f:		beq B28_190c ; f0 db

B28_1931:		lda #$1c		; a9 1c
B28_1933:		jsr $940a		; 20 0a 94
B28_1936:		lda wJoy1ButtonsPressed			; a5 28
B28_1938:		and #$04		; 29 04
B28_193a:		bne B28_1941 ; d0 05

B28_193c:		lda #$02		; a9 02
B28_193e:		sta $0565		; 8d 65 05
B28_1941:		rts				; 60 


B28_1942:		jsr $fb89		; 20 89 fb
B28_1945:		lda $0520		; ad 20 05
B28_1948:		bmi B28_194d ; 30 03

B28_194a:		jmp $9b9a		; 4c 9a 9b


B28_194d:		jmp $9b8e		; 4c 8e 9b


B28_1950:		jmp $9b8e		; 4c 8e 9b


B28_1953:		lda $061d		; ad 1d 06
B28_1956:		beq B28_1961 ; f0 09

B28_1958:		dec $061d		; ce 1d 06
B28_195b:		jsr $ef73		; 20 73 ef
B28_195e:		jmp $873a		; 4c 3a 87


B28_1961:		lda #$10		; a9 10
B28_1963:		sta $0565		; 8d 65 05
B28_1966:		rts				; 60 


B28_1967:		lda wEntityPhase.w		; ad c1 05
B28_196a:		bne B28_196f ; d0 03

B28_196c:		jmp $9b9a		; 4c 9a 9b


B28_196f:		jmp $9b8e		; 4c 8e 9b


B28_1972:		lda wJoy1ButtonsPressed			; a5 28
B28_1974:		and #$08		; 29 08
B28_1976:		bne B28_1984 ; d0 0c

B28_1978:		lda $054e		; ad 4e 05
B28_197b:		cmp #$03		; c9 03
B28_197d:		beq B28_1994 ; f0 15

B28_197f:		lda #$1e		; a9 1e
B28_1981:		jmp $940a		; 4c 0a 94


B28_1984:		jsr $b9f5		; 20 f5 b9
B28_1987:		bcc B28_1978 ; 90 ef

B28_1989:		lda #$24		; a9 24
B28_198b:		jmp $94aa		; 4c aa 94


.ifdef IMPROVED_CONTROLS_TEST
	jsr func4
	nop
.else
B28_198e:		lda wJoy1ButtonsPressed			; a5 28
B28_1990:		and #$40		; 29 40
.endif
B28_1992:		bne B28_1972 ; d0 de

B28_1994:		lda wJoy1ButtonsPressed			; a5 28
B28_1996:		lsr a			; 4a
B28_1997:		bcs B28_19b3 ; b0 1a

B28_1999:		lsr a			; 4a
B28_199a:		bcs B28_19d5 ; b0 39

B28_199c:		lsr a			; 4a
B28_199d:		bcc B28_19a7 ; 90 08

B28_199f:		jsr $99f7		; 20 f7 99
B28_19a2:		bcs B28_19b2 ; b0 0e

B28_19a4:		jmp $9b9a		; 4c 9a 9b


B28_19a7:		lsr a			; 4a
B28_19a8:		bcc B28_19b2 ; 90 08

B28_19aa:		jsr $9a16		; 20 16 9a
B28_19ad:		bcs B28_19b2 ; b0 03

B28_19af:		jmp $9b8e		; 4c 8e 9b


B28_19b2:		rts				; 60 


B28_19b3:		lda #$00		; a9 00
B28_19b5:		sta $04a8		; 8d a8 04
B28_19b8:		lda wEntityAI_idx.w		; ad ef 05
B28_19bb:		beq B28_19c9 ; f0 0c

B28_19bd:		jsr $99f7		; 20 f7 99
B28_19c0:		bcs B28_19b2 ; b0 f0

B28_19c2:		ldx #$00		; a2 00
B28_19c4:		ldy #$00		; a0 00
B28_19c6:		jmp $9baf		; 4c af 9b


B28_19c9:		jsr $9a16		; 20 16 9a
B28_19cc:		bcs B28_19b2 ; b0 e4

B28_19ce:		ldx #$02		; a2 02
B28_19d0:		ldy #$08		; a0 08
B28_19d2:		jmp $9baf		; 4c af 9b


B28_19d5:		lda #$01		; a9 01
B28_19d7:		sta $04a8		; 8d a8 04
B28_19da:		lda wEntityAI_idx.w		; ad ef 05
B28_19dd:		beq B28_19eb ; f0 0c

B28_19df:		jsr $9a16		; 20 16 9a
B28_19e2:		bcs B28_19b2 ; b0 ce

B28_19e4:		ldx #$02		; a2 02
B28_19e6:		ldy #$0c		; a0 0c
B28_19e8:		jmp $9baf		; 4c af 9b


B28_19eb:		jsr $99f7		; 20 f7 99
B28_19ee:		bcs B28_19b2 ; b0 c2

B28_19f0:		ldx #$00		; a2 00
B28_19f2:		ldy #$04		; a0 04
B28_19f4:		jmp $9baf		; 4c af 9b


B28_19f7:		lda wEntityBaseY.w		; ad 1c 04
B28_19fa:		cmp #$d7		; c9 d7
B28_19fc:		bcc B28_1a14 ; 90 16

B28_19fe:		ldy $68			; a4 68
B28_1a00:		bpl B28_1a14 ; 10 12

B28_1a02:		lda $57			; a5 57
B28_1a04:		cmp $71			; c5 71
B28_1a06:		bne B28_1a0e ; d0 06

B28_1a08:		lda $56			; a5 56
B28_1a0a:		cmp #$30		; c9 30
B28_1a0c:		beq B28_1a14 ; f0 06

B28_1a0e:		cpy #$82		; c0 82
B28_1a10:		bcs B28_1a14 ; b0 02

B28_1a12:		sec				; 38 
B28_1a13:		rts				; 60 


B28_1a14:		clc				; 18 
B28_1a15:		rts				; 60 


B28_1a16:		lda wEntityBaseY.w		; ad 1c 04
B28_1a19:		cmp #$37		; c9 37
B28_1a1b:		bcs B28_1a14 ; b0 f7

B28_1a1d:		ldy $68			; a4 68
B28_1a1f:		bpl B28_1a14 ; 10 f3

B28_1a21:		lda $57			; a5 57
B28_1a23:		ora $56			; 05 56
B28_1a25:		beq B28_1a14 ; f0 ed

B28_1a27:		cpy #$82		; c0 82
B28_1a29:		bcs B28_1a14 ; b0 e9

B28_1a2b:		sec				; 38 
B28_1a2c:		rts				; 60 


B28_1a2d:		lda wEntityBaseY.w		; ad 1c 04
B28_1a30:		ldx $0520		; ae 20 05
B28_1a33:		bmi B28_1a45 ; 30 10

B28_1a35:		ldx $68			; a6 68
B28_1a37:		bmi B28_1a3f ; 30 06

B28_1a39:		cmp #$d3		; c9 d3
B28_1a3b:		bcs B28_1a5f ; b0 22

B28_1a3d:		clc				; 18 
B28_1a3e:		rts				; 60 


B28_1a3f:		cmp #$d6		; c9 d6
B28_1a41:		bcs B28_1a6d ; b0 2a

B28_1a43:		clc				; 18 
B28_1a44:		rts				; 60 


B28_1a45:		ldx $68			; a6 68
B28_1a47:		bmi B28_1a4f ; 30 06

B28_1a49:		cmp #$29		; c9 29
B28_1a4b:		bcc B28_1a55 ; 90 08

B28_1a4d:		clc				; 18 
B28_1a4e:		rts				; 60 


B28_1a4f:		cmp #$34		; c9 34
B28_1a51:		bcc B28_1a81 ; 90 2e

B28_1a53:		clc				; 18 
B28_1a54:		rts				; 60 


B28_1a55:		lda $2a			; a5 2a
B28_1a57:		cmp #$10		; c9 10
B28_1a59:		bne B28_1a5f ; d0 04

B28_1a5b:		inc $6b			; e6 6b
B28_1a5d:		bne B28_1a63 ; d0 04

B28_1a5f:		lda #$06		; a9 06
B28_1a61:		sta $2a			; 85 2a
B28_1a63:		lda #$96		; a9 96
B28_1a65:		sta $0565		; 8d 65 05
B28_1a68:		jsr $fb85		; 20 85 fb
B28_1a6b:		sec				; 38 
B28_1a6c:		rts				; 60 


B28_1a6d:		lda $57			; a5 57
B28_1a6f:		cmp $71			; c5 71
B28_1a71:		bne B28_1a79 ; d0 06

B28_1a73:		lda $56			; a5 56
B28_1a75:		cmp #$30		; c9 30
B28_1a77:		beq B28_1a5f ; f0 e6

B28_1a79:		lda $68			; a5 68
B28_1a7b:		cmp #$83		; c9 83
B28_1a7d:		bne B28_1a53 ; d0 d4

B28_1a7f:		sec				; 38 
B28_1a80:		rts				; 60 


B28_1a81:		lda $56			; a5 56
B28_1a83:		ora $57			; 05 57
B28_1a85:		beq B28_1a5f ; f0 d8

B28_1a87:		lda $68			; a5 68
B28_1a89:		cmp #$82		; c9 82
B28_1a8b:		beq B28_1a91 ; f0 04

B28_1a8d:		cmp #$84		; c9 84
B28_1a8f:		bne B28_1a53 ; d0 c2

B28_1a91:		sec				; 38 
B28_1a92:		rts				; 60 


.ifdef IMPROVED_CONTROLS_TEST
	jsr func4
.else
B28_1a93:		jsr $9a2d		; 20 2d 9a
.endif
B28_1a96:		bcc B28_1a99 ; 90 01

B28_1a98:		rts				; 60 


B28_1a99:		jsr $8740		; 20 40 87
B28_1a9c:		jsr $8712		; 20 12 87
B28_1a9f:		lda $061d		; ad 1d 06
B28_1aa2:		beq B28_1af0 ; f0 4c

B28_1aa4:		dec $061d		; ce 1d 06
B28_1aa7:		lda wEntityTimeUntilNextAnimation.w		; ad 7c 05
B28_1aaa:		beq B28_1ab0 ; f0 04

B28_1aac:		dec wEntityTimeUntilNextAnimation.w		; ce 7c 05
B28_1aaf:		rts				; 60 


B28_1ab0:		lda $054e		; ad 4e 05
B28_1ab3:		cmp #$02		; c9 02
B28_1ab5:		beq B28_1acc ; f0 15

B28_1ab7:		lda wEntityAnimationIdxes.w		; ad 93 05
B28_1aba:		asl a			; 0a
B28_1abb:		tay				; a8 
B28_1abc:		lda $9bec, y	; b9 ec 9b
B28_1abf:		sta $0400		; 8d 00 04
B28_1ac2:		lda $9bed, y	; b9 ed 9b
B28_1ac5:		sta wEntityTimeUntilNextAnimation.w		; 8d 7c 05
B28_1ac8:		inc wEntityAnimationIdxes.w		; ee 93 05
B28_1acb:		rts				; 60 


B28_1acc:		lda wEntityAnimationIdxes.w		; ad 93 05
B28_1acf:		asl a			; 0a
B28_1ad0:		tay				; a8 
B28_1ad1:		lda $9bf4, y	; b9 f4 9b
B28_1ad4:		sta $0400		; 8d 00 04
B28_1ad7:		lda $9bf5, y	; b9 f5 9b
B28_1ada:		sta wEntityTimeUntilNextAnimation.w		; 8d 7c 05
B28_1add:		inc wEntityAnimationIdxes.w		; ee 93 05
B28_1ae0:		rts				; 60 


B28_1ae1:		lda wEntityBaseY.w		; ad 1c 04
B28_1ae4:		sec				; 38 
B28_1ae5:		sbc #$04		; e9 04
B28_1ae7:		jmp $9b06		; 4c 06 9b


B28_1aea:		clc				; 18 
B28_1aeb:		adc #$07		; 69 07
B28_1aed:		jmp $9b18		; 4c 18 9b


B28_1af0:		lda #$00		; a9 00
B28_1af2:		sta $04c4		; 8d c4 04
B28_1af5:		sta $04db		; 8d db 04
B28_1af8:		ldy $68			; a4 68
B28_1afa:		bpl B28_1b1b ; 10 1f

B28_1afc:		ldy $054e		; ac 4e 05
B28_1aff:		cpy #$02		; c0 02
B28_1b01:		beq B28_1ae1 ; f0 de

B28_1b03:		lda wEntityBaseY.w		; ad 1c 04
B28_1b06:		clc				; 18 
B28_1b07:		adc #$03		; 69 03
B28_1b09:		clc				; 18 
B28_1b0a:		adc $56			; 65 56
B28_1b0c:		and #$f8		; 29 f8
B28_1b0e:		sec				; 38 
B28_1b0f:		sbc $56			; e5 56
B28_1b11:		cpy #$02		; c0 02
B28_1b13:		beq B28_1aea ; f0 d5

B28_1b15:		clc				; 18 
B28_1b16:		adc #$03		; 69 03
B28_1b18:		sta wEntityBaseY.w		; 8d 1c 04
B28_1b1b:		lda $0520		; ad 20 05
B28_1b1e:		bmi B28_1b64 ; 30 44

B28_1b20:		ldx #$12		; a2 12
B28_1b22:		lda #$02		; a9 02
B28_1b24:		jsr func_1f_1cdd		; 20 dd fc
B28_1b27:		bne B28_1b3d ; d0 14

B28_1b29:		ldx #$12		; a2 12
B28_1b2b:		lda #$fe		; a9 fe
B28_1b2d:		jsr func_1f_1cdd		; 20 dd fc
B28_1b30:		beq B28_1b88 ; f0 56

B28_1b32:		ldx #$1a		; a2 1a
B28_1b34:		lda #$fe		; a9 fe
B28_1b36:		jsr func_1f_1cdd		; 20 dd fc
B28_1b39:		beq B28_1b88 ; f0 4d

B28_1b3b:		bne B28_1b46 ; d0 09

B28_1b3d:		ldx #$1a		; a2 1a
B28_1b3f:		lda #$02		; a9 02
B28_1b41:		jsr func_1f_1cdd		; 20 dd fc
B28_1b44:		beq B28_1b88 ; f0 42

B28_1b46:		jsr $8a02		; 20 02 8a
B28_1b49:		lda $054e		; ad 4e 05
B28_1b4c:		cmp #$02		; c9 02
B28_1b4e:		bne B28_1b59 ; d0 09

B28_1b50:		lda wEntityBaseY.w		; ad 1c 04
B28_1b53:		clc				; 18 
B28_1b54:		adc #$04		; 69 04
B28_1b56:		sta wEntityBaseY.w		; 8d 1c 04
B28_1b59:		lda #$02		; a9 02
B28_1b5b:		sta $0565		; 8d 65 05
B28_1b5e:		lda #$02		; a9 02
B28_1b60:		sta $0400		; 8d 00 04
B28_1b63:		rts				; 60 


B28_1b64:		ldx #$12		; a2 12
B28_1b66:		lda #$02		; a9 02
B28_1b68:		jsr func_1f_1cdd		; 20 dd fc
B28_1b6b:		bne B28_1b7f ; d0 12

B28_1b6d:		ldx #$12		; a2 12
B28_1b6f:		lda #$fe		; a9 fe
B28_1b71:		jsr func_1f_1cdd		; 20 dd fc
B28_1b74:		beq B28_1b88 ; f0 12

B28_1b76:		ldx #$0a		; a2 0a
B28_1b78:		lda #$fe		; a9 fe
B28_1b7a:		jsr func_1f_1cdd		; 20 dd fc
B28_1b7d:		beq B28_1b46 ; f0 c7

B28_1b7f:		ldx #$0a		; a2 0a
B28_1b81:		lda #$02		; a9 02
B28_1b83:		jsr func_1f_1cdd		; 20 dd fc
B28_1b86:		beq B28_1b46 ; f0 be

B28_1b88:		lda #$12		; a9 12
B28_1b8a:		sta $0565		; 8d 65 05
B28_1b8d:		rts				; 60 


B28_1b8e:		ldx #$02		; a2 02
B28_1b90:		lda wEntityAI_idx.w		; ad ef 05
B28_1b93:		sta $04a8		; 8d a8 04
B28_1b96:		ldy #$08		; a0 08
B28_1b98:		bne B28_1ba6 ; d0 0c

B28_1b9a:		ldx #$00		; a2 00
B28_1b9c:		lda wEntityAI_idx.w		; ad ef 05
B28_1b9f:		eor #$01		; 49 01
B28_1ba1:		sta $04a8		; 8d a8 04
B28_1ba4:		ldy #$00		; a0 00
B28_1ba6:		lda $04a8		; ad a8 04
B28_1ba9:		beq B28_1baf ; f0 04

B28_1bab:		iny				; c8 
B28_1bac:		iny				; c8 
B28_1bad:		iny				; c8 
B28_1bae:		iny				; c8 
B28_1baf:		stx wEntityAnimationIdxes.w		; 8e 93 05
B28_1bb2:		lda $9bdc, y	; b9 dc 9b
B28_1bb5:		sta $04f2		; 8d f2 04
B28_1bb8:		lda $9bdd, y	; b9 dd 9b
B28_1bbb:		sta $0509		; 8d 09 05
B28_1bbe:		lda $9bde, y	; b9 de 9b
B28_1bc1:		sta $0520		; 8d 20 05
B28_1bc4:		lda $9bdf, y	; b9 df 9b
B28_1bc7:		sta $0537		; 8d 37 05
B28_1bca:		lda #$01		; a9 01
B28_1bcc:		sta wEntityTimeUntilNextAnimation.w		; 8d 7c 05
B28_1bcf:		lda $9bdb		; ad db 9b
B28_1bd2:		sta $061d		; 8d 1d 06
B28_1bd5:		lda #$14		; a9 14
B28_1bd7:		sta $0565		; 8d 65 05
B28_1bda:		rts				; 60 


B28_1bdb:	.db $0f
B28_1bdc:		.db $00				; 00
B28_1bdd:	.db $80
B28_1bde:		.db $00				; 00
B28_1bdf:	.db $80
B28_1be0:	.db $ff
B28_1be1:	.db $80
B28_1be2:		.db $00				; 00
B28_1be3:	.db $80
B28_1be4:		.db $00				; 00
B28_1be5:	.db $80
B28_1be6:	.db $ff
B28_1be7:	.db $80
B28_1be8:	.db $ff
B28_1be9:	.db $80
B28_1bea:	.db $ff
B28_1beb:	.db $80
B28_1bec:	.db $04
B28_1bed:	.db $07
B28_1bee:		asl a			; 0a
B28_1bef:	.db $ff
B28_1bf0:	.db $04
B28_1bf1:	.db $07
B28_1bf2:	.db $0c
B28_1bf3:	.db $ff
B28_1bf4:		pha				; 48 
B28_1bf5:	.db $07
B28_1bf6:		asl a			; 0a
B28_1bf7:	.db $ff
B28_1bf8:		pha				; 48 
B28_1bf9:	.db $07
B28_1bfa:	.db $0c
B28_1bfb:	.db $ff
B28_1bfc:		ldy $0565		; ac 65 05
B28_1bff:		jsr jumpTableNoPreserveY		; 20 86 e8
	.dw $8ac5
	.dw $9538
	.dw $9660
	.dw $961d
.ifdef IMPROVED_CONTROLS_TEST
	.dw func1
.else
	.dw $9770
.endif
	.dw $9919
	.dw $9770
	.dw $9953
	.dw $9967
	.dw $998e
	.dw $9a93
	.dw $9942
	.dw $9418
	.dw $943a
	.dw $9465
	.dw $949e
	.dw $9c32
	.dw $9c35
	.dw $9c38
	.dw $831c
	.dw $93b1
	.dw $93b1
	.dw $8b57
	.dw $8ade
B28_1c32:		jmp $94b8
B28_1c35:		jmp $94d4
B28_1c38:		jmp $94ff
B28_1c3b:		ldy $0565
B28_1c3e:		jsr jumpTableNoPreserveY		; 20 86 e8
	.dw $8ac5
	.dw $9538
	.dw $9d3b
	.dw $9e92
	.dw $9f3c
	.dw $9cd5
	.dw $9f3c
	.dw $9953
	.dw $9967
	.dw $998e
	.dw $9a93
	.dw $9942
	.dw $9c8b
	.dw $9eeb
	.dw $9c9f
	.dw $949e
	.dw $94b8
	.dw $9ec0
	.dw $94ff
	.dw $831c
	.dw $93b1
	.dw $93b1
	.dw $8b57
	.dw $8ade
	.dw $a23b
	.dw $a365
	.dw $a42e
	.dw $a441
	.dw $a464
	.dw $a477
	.dw $a480
	.dw $a493
	.dw $a49f
	.dw $a4b2
	.dw $a188
	.dw $a226
	.dw $a333
B28_1c8b:		jsr func_1c_041d		; 20 1d 84
B28_1c8e:		bcs B28_1c98 ; b0 08

B28_1c90:		lda #$00		; a9 00
B28_1c92:		sta $0413		; 8d 13 04
B28_1c95:		jmp $a08d		; 4c 8d a0


B28_1c98:		jsr $918e		; 20 8e 91
B28_1c9b:		jmp $9428		; 4c 28 94


B28_1c9e:		rts				; 60 


B28_1c9f:		jsr func_1c_041d		; 20 1d 84
B28_1ca2:		bcc B28_1c90 ; 90 ec

B28_1ca4:		jsr $918e		; 20 8e 91
B28_1ca7:		jsr $9ceb		; 20 eb 9c
B28_1caa:		lda $0565		; ad 65 05
B28_1cad:		cmp #$02		; c9 02
B28_1caf:		bne B28_1cc4 ; d0 13

B28_1cb1:		lda #$18		; a9 18
B28_1cb3:		sta $0565		; 8d 65 05
B28_1cb6:		jsr $9428		; 20 28 94
B28_1cb9:		lda $0565		; ad 65 05
B28_1cbc:		cmp #$18		; c9 18
B28_1cbe:		bne B28_1cc3 ; d0 03

B28_1cc0:		jsr $becb		; 20 cb be
B28_1cc3:		rts				; 60 


B28_1cc4:		jsr $bc89		; 20 89 bc
B28_1cc7:		bcs B28_1cca ; b0 01

B28_1cc9:		rts				; 60 


B28_1cca:		lda #$0a		; a9 0a
B28_1ccc:		sta $0565		; 8d 65 05
B28_1ccf:		lda #$0e		; a9 0e
B28_1cd1:		sta $0400		; 8d 00 04
B28_1cd4:		rts				; 60 


B28_1cd5:		jsr func_1c_041d		; 20 1d 84
B28_1cd8:		bcs B28_1cdd ; b0 03

B28_1cda:		jmp $a08d		; 4c 8d a0


B28_1cdd:		jsr $918e		; 20 8e 91
B28_1ce0:		lda wJoy1NewButtonsPressed			; a5 26
B28_1ce2:		and #$40		; 29 40
B28_1ce4:		beq B28_1ceb ; f0 05

B28_1ce6:		lda #$1c		; a9 1c
B28_1ce8:		jsr $940a		; 20 0a 94
B28_1ceb:		lda wJoy1ButtonsPressed			; a5 28
B28_1ced:		and #$04		; 29 04
B28_1cef:		bne B28_1cf7 ; d0 06

B28_1cf1:		lda #$02		; a9 02
B28_1cf3:		sta $0565		; 8d 65 05
B28_1cf6:		rts				; 60 


B28_1cf7:		lda $0565		; ad 65 05
B28_1cfa:		cmp #$0a		; c9 0a
B28_1cfc:		bne B28_1cf6 ; d0 f8

B28_1cfe:		jsr $83c4		; 20 c4 83
B28_1d01:		bcc B28_1cf6 ; 90 f3

B28_1d03:		jsr $9d28		; 20 28 9d
B28_1d06:		bne B28_1cf6 ; d0 ee

B28_1d08:		lda $04a8		; ad a8 04
B28_1d0b:		sta wEntityPhase.w		; 8d c1 05
B28_1d0e:		jsr $a527		; 20 27 a5
B28_1d11:		lda wEntityBaseY.w		; ad 1c 04
B28_1d14:		clc				; 18 
B28_1d15:		adc #$0c		; 69 0c
B28_1d17:		sta $d3			; 85 d3
B28_1d19:		lda #$40		; a9 40
B28_1d1b:		sta $0565		; 8d 65 05
B28_1d1e:		ldy #$00		; a0 00
B28_1d20:		sty wEntityAnimationIdxes.w		; 8c 93 05
B28_1d23:		iny				; c8 
B28_1d24:		sty wEntityTimeUntilNextAnimation.w		; 8c 7c 05
B28_1d27:		rts				; 60 


B28_1d28:		lda #$05		; a9 05
B28_1d2a:		ldx #$0c		; a2 0c
B28_1d2c:		jsr func_1f_1cdd		; 20 dd fc
B28_1d2f:		beq B28_1d35 ; f0 04

B28_1d31:		lda #$01		; a9 01
B28_1d33:		bne B28_1d37 ; d0 02

B28_1d35:		lda #$00		; a9 00
B28_1d37:		cmp $04a8		; cd a8 04
B28_1d3a:		rts				; 60 


B28_1d3b:		jsr func_1c_041d		; 20 1d 84
B28_1d3e:		bcs B28_1d43 ; b0 03

B28_1d40:		jmp $a08d		; 4c 8d a0


B28_1d43:		lda wJoy1NewButtonsPressed			; a5 26
B28_1d45:		asl a			; 0a
B28_1d46:		bcc B28_1d4b ; 90 03

B28_1d48:		jmp $9dff		; 4c ff 9d


B28_1d4b:		asl a			; 0a
B28_1d4c:		bcs B28_1d67 ; b0 19

B28_1d4e:		lda wJoy1ButtonsPressed			; a5 28
B28_1d50:		lsr a			; 4a
B28_1d51:		bcs B28_1d85 ; b0 32

B28_1d53:		lsr a			; 4a
B28_1d54:		bcs B28_1dbc ; b0 66

B28_1d56:		lda #$02		; a9 02
B28_1d58:		sta $0565		; 8d 65 05
B28_1d5b:		jsr $8abc		; 20 bc 8a
B28_1d5e:		jsr $ef73		; 20 73 ef
B28_1d61:		jsr $873a		; 20 3a 87
B28_1d64:		jmp $8712		; 4c 12 87


B28_1d67:		lda wJoy1ButtonsPressed			; a5 28
B28_1d69:		and #$08		; 29 08
B28_1d6b:		bne B28_1d75 ; d0 08

B28_1d6d:		lda #$18		; a9 18
B28_1d6f:		jsr $940a		; 20 0a 94
B28_1d72:		jmp $9d5b		; 4c 5b 9d


B28_1d75:		jsr $b9f5		; 20 f5 b9
B28_1d78:		bcc B28_1d6d ; 90 f3

B28_1d7a:		lda #$20		; a9 20
B28_1d7c:		jsr $94aa		; 20 aa 94
B28_1d7f:		jsr $8abc		; 20 bc 8a
B28_1d82:		jmp $9d61		; 4c 61 9d


B28_1d85:		lda #$00		; a9 00
B28_1d87:		sta $04a8		; 8d a8 04
B28_1d8a:		jsr $8e85		; 20 85 8e
B28_1d8d:		bcc B28_1da4 ; 90 15

B28_1d8f:		ldx #$00		; a2 00
B28_1d91:		lda #$08		; a9 08
B28_1d93:		jsr func_1f_1cdd		; 20 dd fc
B28_1d96:		bne B28_1dfa ; d0 62

B28_1d98:		ldx #$f4		; a2 f4
B28_1d9a:		lda #$08		; a9 08
B28_1d9c:		jsr func_1f_1cdd		; 20 dd fc
B28_1d9f:		bne B28_1dfa ; d0 59

B28_1da1:		jmp $9d5e		; 4c 5e 9d


B28_1da4:		ldx #$00		; a2 00
B28_1da6:		lda #$08		; a9 08
B28_1da8:		jsr func_1f_1cdd		; 20 dd fc
B28_1dab:		bne B28_1e1b ; d0 6e

B28_1dad:		ldx #$f4		; a2 f4
B28_1daf:		lda #$08		; a9 08
B28_1db1:		jsr func_1f_1cdd		; 20 dd fc
B28_1db4:		bne B28_1dfa ; d0 44

B28_1db6:		lda #$01		; a9 01
B28_1db8:		ldy #$40		; a0 40
B28_1dba:		bne B28_1df1 ; d0 35

B28_1dbc:		lda #$01		; a9 01
B28_1dbe:		sta $04a8		; 8d a8 04
B28_1dc1:		jsr func_1c_0f01		; 20 01 8f
B28_1dc4:		bcc B28_1ddb ; 90 15

B28_1dc6:		ldx #$00		; a2 00
B28_1dc8:		lda #$f8		; a9 f8
B28_1dca:		jsr func_1f_1cdd		; 20 dd fc
B28_1dcd:		bne B28_1dfa ; d0 2b

B28_1dcf:		ldx #$f4		; a2 f4
B28_1dd1:		lda #$f8		; a9 f8
B28_1dd3:		jsr func_1f_1cdd		; 20 dd fc
B28_1dd6:		bne B28_1dfa ; d0 22

B28_1dd8:		jmp $9d5e		; 4c 5e 9d


B28_1ddb:		ldx #$00		; a2 00
B28_1ddd:		lda #$f8		; a9 f8
B28_1ddf:		jsr $840b		; 20 0b 84
B28_1de2:		bne B28_1e0b ; d0 27

B28_1de4:		ldx #$f4		; a2 f4
B28_1de6:		lda #$f8		; a9 f8
B28_1de8:		jsr func_1f_1cdd		; 20 dd fc
B28_1deb:		bne B28_1dfa ; d0 0d

B28_1ded:		lda #$fe		; a9 fe
B28_1def:		ldy #$c0		; a0 c0
B28_1df1:		sty $0509		; 8c 09 05
B28_1df4:		sta $04f2		; 8d f2 04
B28_1df7:		jmp $9d5b		; 4c 5b 9d


B28_1dfa:		lda #$00		; a9 00
B28_1dfc:		tay				; a8 
B28_1dfd:		beq B28_1df1 ; f0 f2

B28_1dff:		lda #$06		; a9 06
B28_1e01:		sta $0565		; 8d 65 05
B28_1e04:		jmp $9d5b		; 4c 5b 9d


B28_1e07:		lda #$36		; a9 36
B28_1e09:		bne B28_1e0d ; d0 02

B28_1e0b:		lda #$18		; a9 18
B28_1e0d:		sta $0400		; 8d 00 04
B28_1e10:		jsr $9e36		; 20 36 9e
B28_1e13:		lda #$01		; a9 01
B28_1e15:		bne B28_1e25 ; d0 0e

B28_1e17:		lda #$36		; a9 36
B28_1e19:		bne B28_1e1d ; d0 02

B28_1e1b:		lda #$18		; a9 18
B28_1e1d:		sta $0400		; 8d 00 04
B28_1e20:		jsr $9e3f		; 20 3f 9e
B28_1e23:		lda #$00		; a9 00
B28_1e25:		sta wEntityPhase.w		; 8d c1 05
B28_1e28:		lda #$00		; a9 00
B28_1e2a:		sta $05d8		; 8d d8 05
B28_1e2d:		sta wEntityAnimationIdxes.w		; 8d 93 05
B28_1e30:		lda #$30		; a9 30
B28_1e32:		sta $0565		; 8d 65 05
B28_1e35:		rts				; 60 


B28_1e36:		lda wEntityBaseX.w		; ad 38 04
B28_1e39:		clc				; 18 
B28_1e3a:		adc #$07		; 69 07
B28_1e3c:		jmp $9e42		; 4c 42 9e


B28_1e3f:		lda wEntityBaseX.w		; ad 38 04
B28_1e42:		ldy $68			; a4 68
B28_1e44:		bmi B28_1e52 ; 30 0c

B28_1e46:		clc				; 18 
B28_1e47:		adc $56			; 65 56
B28_1e49:		and #$f8		; 29 f8
B28_1e4b:		sec				; 38 
B28_1e4c:		sbc $56			; e5 56
B28_1e4e:		sta wEntityBaseX.w		; 8d 38 04
B28_1e51:		rts				; 60 


B28_1e52:		and #$f8		; 29 f8
B28_1e54:		sta wEntityBaseX.w		; 8d 38 04
B28_1e57:		rts				; 60 


B28_1e58:	.db $80
B28_1e59:		sbc $f9f9, y	; f9 f9 f9
B28_1e5c:		sbc $f9f9, y	; f9 f9 f9
B28_1e5f:		sbc $f9f9, y	; f9 f9 f9
B28_1e62:		sbc $f9f9, y	; f9 f9 f9
B28_1e65:		sbc $f9f9, y	; f9 f9 f9
B28_1e68:		sbc $f9f9, y	; f9 f9 f9
B28_1e6b:		sbc $fafa, y	; f9 fa fa
B28_1e6e:	.db $fa
B28_1e6f:	.db $fa
B28_1e70:	.db $fa
B28_1e71:	.db $fa
B28_1e72:	.db $fb
B28_1e73:	.db $fb
B28_1e74:	.db $fb
B28_1e75:	.db $fb
B28_1e76:	.db $fb
B28_1e77:	.db $fc
B28_1e78:	.db $fc
B28_1e79:	.db $fc
B28_1e7a:	.db $fc
B28_1e7b:	.db $fc
B28_1e7c:		sbc $fdfd, x	; fd fd fd
B28_1e7f:		sbc $fdfd, x	; fd fd fd
B28_1e82:		inc $fefe, x	; fe fe fe
B28_1e85:		inc $fffe, x	; fe fe ff
B28_1e88:	.db $ff
B28_1e89:	.db $ff
B28_1e8a:	.db $ff
B28_1e8b:	.db $ff
B28_1e8c:		.db $00				; 00
B28_1e8d:		.db $00				; 00
B28_1e8e:		.db $00				; 00
B28_1e8f:		.db $00				; 00
B28_1e90:		.db $00				; 00
B28_1e91:		sta ($a9, x)	; 81 a9
B28_1e93:	.db $0e $8d $00
B28_1e96:	.db $04
B28_1e97:		lda #$04		; a9 04
B28_1e99:		sta $b9			; 85 b9
B28_1e9b:		lda #$00		; a9 00
B28_1e9d:		sta wEntityPhase.w		; 8d c1 05
B28_1ea0:		lda #$1e		; a9 1e
B28_1ea2:		sta $05d8		; 8d d8 05
B28_1ea5:		lda #$00		; a9 00
B28_1ea7:		sta wEntityAI_idx.w		; 8d ef 05
B28_1eaa:		sta $0606		; 8d 06 06
B28_1ead:		sta $0509		; 8d 09 05
B28_1eb0:		sta $04f2		; 8d f2 04
B28_1eb3:		sta $9d			; 85 9d
B28_1eb5:		lda #$01		; a9 01
B28_1eb7:		sta $061d		; 8d 1d 06
B28_1eba:		lda #$08		; a9 08
B28_1ebc:		sta $0565		; 8d 65 05
B28_1ebf:		rts				; 60 


B28_1ec0:		jsr $9f5a		; 20 5a 9f
B28_1ec3:		lda $0565		; ad 65 05
B28_1ec6:		cmp #$26		; c9 26
B28_1ec8:		beq B28_1f0a ; f0 40

B28_1eca:		cmp #$02		; c9 02
B28_1ecc:		bne B28_1eda ; d0 0c

B28_1ece:		lda #$00		; a9 00
B28_1ed0:		sta $b9			; 85 b9
B28_1ed2:		lda #$20		; a9 20
B28_1ed4:		sta $0565		; 8d 65 05
B28_1ed7:		jmp $94c3		; 4c c3 94


B28_1eda:		jsr $baf2		; 20 f2 ba
B28_1edd:		bcs B28_1ee0 ; b0 01

B28_1edf:		rts				; 60 


B28_1ee0:		lda #$08		; a9 08
B28_1ee2:		sta $0565		; 8d 65 05
B28_1ee5:		lda #$02		; a9 02
B28_1ee7:		sta $0400		; 8d 00 04
B28_1eea:		rts				; 60 


B28_1eeb:		jsr $9f5a		; 20 5a 9f
B28_1eee:		lda $0565		; ad 65 05
B28_1ef1:		cmp #$26		; c9 26
B28_1ef3:		beq B28_1f0a ; f0 15

B28_1ef5:		cmp #$02		; c9 02
B28_1ef7:		bne B28_1f05 ; d0 0c

B28_1ef9:		lda #$00		; a9 00
B28_1efb:		sta $b9			; 85 b9
B28_1efd:		lda #$18		; a9 18
B28_1eff:		sta $0565		; 8d 65 05
B28_1f02:		jmp $9428		; 4c 28 94


B28_1f05:		jsr $bc89		; 20 89 bc
B28_1f08:		bcs B28_1ee0 ; b0 d6

B28_1f0a:		rts				; 60 


B28_1f0b:		lda wEntityBaseY.w		; ad 1c 04
B28_1f0e:		clc				; 18 
B28_1f0f:		adc #$01		; 69 01
B28_1f11:		sta wEntityBaseY.w		; 8d 1c 04
B28_1f14:		jsr $8a02		; 20 02 8a
B28_1f17:		lda wEntityBaseY.w		; ad 1c 04
B28_1f1a:		clc				; 18 
B28_1f1b:		adc #$05		; 69 05
B28_1f1d:		sta wEntityBaseY.w		; 8d 1c 04
B28_1f20:		lda #$02		; a9 02
B28_1f22:		jsr $ef57		; 20 57 ef
B28_1f25:		lda #$32		; a9 32
B28_1f27:		sta $0565		; 8d 65 05
B28_1f2a:		rts				; 60 


B28_1f2b:		lda #$00		; a9 00
B28_1f2d:		beq B28_1f31 ; f0 02

B28_1f2f:		lda #$ff		; a9 ff
B28_1f31:		ldx #$00		; a2 00
B28_1f33:		jsr $840b		; 20 0b 84
B28_1f36:		beq B28_1f3a ; f0 02

B28_1f38:		clc				; 18 
B28_1f39:		rts				; 60 


B28_1f3a:		sec				; 38 
B28_1f3b:		rts				; 60 


B28_1f3c:		lda wJoy1NewButtonsPressed			; a5 26
B28_1f3e:		and #$40		; 29 40
B28_1f40:		beq B28_1f5a ; f0 18

B28_1f42:		lda wJoy1ButtonsPressed			; a5 28
B28_1f44:		and #$08		; 29 08
B28_1f46:		bne B28_1f50 ; d0 08

B28_1f48:		lda #$1a		; a9 1a
B28_1f4a:		jsr $940a		; 20 0a 94
B28_1f4d:		jmp $9f5a		; 4c 5a 9f


B28_1f50:		jsr $b9f5		; 20 f5 b9
B28_1f53:		bcc B28_1f48 ; 90 f3

B28_1f55:		lda #$22		; a9 22
B28_1f57:		jsr $94aa		; 20 aa 94
B28_1f5a:		jsr $83aa		; 20 aa 83
B28_1f5d:		bcs B28_1f3b ; b0 dc

B28_1f5f:		lda wJoy1ButtonsPressed			; a5 28
B28_1f61:		lsr a			; 4a
B28_1f62:		bcs B28_1f87 ; b0 23

B28_1f64:		lsr a			; 4a
B28_1f65:		bcc B28_1fa7 ; 90 40

B28_1f67:		lda #$01		; a9 01
B28_1f69:		sta $04a8		; 8d a8 04
B28_1f6c:		lda #$ff		; a9 ff
B28_1f6e:		sta $04f2		; 8d f2 04
B28_1f71:		lda #$00		; a9 00
B28_1f73:		sta $0509		; 8d 09 05
B28_1f76:		ldx #$00		; a2 00
B28_1f78:		lda #$f8		; a9 f8
B28_1f7a:		jsr $840b		; 20 0b 84
B28_1f7d:		beq B28_1fa7 ; f0 28

B28_1f7f:		jsr $9f2f		; 20 2f 9f
B28_1f82:		bcc B28_1fa7 ; 90 23

B28_1f84:		jmp $9e0b		; 4c 0b 9e


B28_1f87:		lda #$00		; a9 00
B28_1f89:		sta $04a8		; 8d a8 04
B28_1f8c:		lda #$01		; a9 01
B28_1f8e:		sta $04f2		; 8d f2 04
B28_1f91:		lda #$00		; a9 00
B28_1f93:		sta $0509		; 8d 09 05
B28_1f96:		ldx #$00		; a2 00
B28_1f98:		lda #$08		; a9 08
B28_1f9a:		jsr $840b		; 20 0b 84
B28_1f9d:		beq B28_1fa7 ; f0 08

B28_1f9f:		jsr $9f2b		; 20 2b 9f
B28_1fa2:		bcc B28_1fa7 ; 90 03

B28_1fa4:		jmp $9e1b		; 4c 1b 9e


B28_1fa7:		lda wJoy1ButtonsPressed			; a5 28
B28_1fa9:		and #$08		; 29 08
B28_1fab:		beq B28_1fc1 ; f0 14

B28_1fad:		ldx #$f8		; a2 f8
B28_1faf:		lda #$00		; a9 00
B28_1fb1:		jsr $840b		; 20 0b 84
B28_1fb4:		beq B28_1fc1 ; f0 0b

B28_1fb6:		ldx #$00		; a2 00
B28_1fb8:		txa				; 8a 
B28_1fb9:		jsr $840b		; 20 0b 84
B28_1fbc:		bne B28_1fc1 ; d0 03

B28_1fbe:		jmp $9f0b		; 4c 0b 9f


B28_1fc1:		lda $04f2		; ad f2 04
B28_1fc4:		bpl B28_1fe3 ; 10 1d

B28_1fc6:		ldx #$0c		; a2 0c
B28_1fc8:		lda #$f8		; a9 f8
B28_1fca:		jsr func_1f_1cdd		; 20 dd fc
B28_1fcd:		;removed
	.db $d0 $2f

B28_1fcf:		ldx #$00		; a2 00
B28_1fd1:		lda #$f8		; a9 f8
B28_1fd3:		jsr func_1f_1cdd		; 20 dd fc
B28_1fd6:		;removed
	.db $d0 $26

B28_1fd8:		ldx #$f4		; a2 f4
B28_1fda:		lda #$f8		; a9 f8
B28_1fdc:		jsr func_1f_1cdd		; 20 dd fc
B28_1fdf:		;removed
	.db $f0 $25

B28_1fe1:		;removed
	.db $d0 $1b

B28_1fe3:		ldx #$0c		; a2 0c
B28_1fe5:		lda #$08		; a9 08
B28_1fe7:		jsr func_1f_1cdd		; 20 dd fc
B28_1fea:		;removed
	.db $d0 $12

B28_1fec:		ldx #$00		; a2 00
B28_1fee:		lda #$08		; a9 08
B28_1ff0:		jsr func_1f_1cdd		; 20 dd fc
B28_1ff3:		;removed
	.db $d0 $09

B28_1ff5:		ldx #$f4		; a2 f4
B28_1ff7:		lda #$08		; a9 08
B28_1ff9:		jsr func_1f_1cdd		; 20 dd fc
B28_1ffc:		;removed
	.db $f0 $08

		.db $a9
		.db $00
