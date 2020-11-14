B20_0000:		sty $18, x		; 94 18
B20_0002:		lda $56			; a5 56
B20_0004:		adc #$02		; 69 02
B20_0006:		pha				; 48 
B20_0007:		lda $57			; a5 57
B20_0009:		adc #$00		; 69 00
B20_000b:		sta $76			; 85 76
B20_000d:		pla				; 68 
B20_000e:		jmp $8017		; 4c 17 80


B20_0011:		lda $57			; a5 57
B20_0013:		sta $76			; 85 76
B20_0015:		lda $56			; a5 56
B20_0017:		asl a			; 0a
B20_0018:		rol $76			; 26 76
B20_001a:		asl a			; 0a
B20_001b:		rol $76			; 26 76
B20_001d:		rts				; 60 


B20_001e:		lda $32			; a5 32
B20_0020:		asl a			; 0a
B20_0021:		tay				; a8 
B20_0022:		lda $937f, y	; b9 7f 93
B20_0025:		sta $06			; 85 06
B20_0027:		lda $9380, y	; b9 80 93
B20_002a:		sta $07			; 85 07
B20_002c:		lda $33			; a5 33
B20_002e:		asl a			; 0a
B20_002f:		tay				; a8 
B20_0030:		lda ($06), y	; b1 06
B20_0032:		sta $04			; 85 04
B20_0034:		iny				; c8 
B20_0035:		lda ($06), y	; b1 06
B20_0037:		sta $05			; 85 05
B20_0039:		lda $34			; a5 34
B20_003b:		asl a			; 0a
B20_003c:		tay				; a8 
B20_003d:		lda ($04), y	; b1 04
B20_003f:		sta $98			; 85 98
B20_0041:		iny				; c8 
B20_0042:		lda ($04), y	; b1 04
B20_0044:		sta $99			; 85 99
B20_0046:		rts				; 60 


B20_0047:		ldx #$00		; a2 00
B20_0049:		lda #$00		; a9 00
B20_004b:		sta $f0, x		; 95 f0
B20_004d:		inx				; e8 
B20_004e:		cpx #$04		; e0 04
B20_0050:		bcc B20_0049 ; 90 f7

B20_0052:		jsr $8011		; 20 11 80
B20_0055:		jsr $801e		; 20 1e 80
B20_0058:		lda #$06		; a9 06
B20_005a:		sta $0c			; 85 0c
B20_005c:		lda $56			; a5 56
B20_005e:		and #$3f		; 29 3f
B20_0060:		sta $08			; 85 08
B20_0062:		lda #$c0		; a9 c0
B20_0064:		sec				; 38 
B20_0065:		sbc $08			; e5 08
B20_0067:		sta $09			; 85 09
B20_0069:		lda #$01		; a9 01
B20_006b:		sta $0a			; 85 0a
B20_006d:		jsr $80fc		; 20 fc 80
B20_0070:		inc $76			; e6 76
B20_0072:		lda $09			; a5 09
B20_0074:		clc				; 18 
B20_0075:		adc #$40		; 69 40
B20_0077:		sta $09			; 85 09
B20_0079:		lda $0a			; a5 0a
B20_007b:		adc #$00		; 69 00
B20_007d:		and #$01		; 29 01
B20_007f:		sta $0a			; 85 0a
B20_0081:		dec $0c			; c6 0c
B20_0083:		bne B20_006d ; d0 e8

B20_0085:		lda #$ff		; a9 ff
B20_0087:		sta $77			; 85 77
B20_0089:		rts				; 60 


B20_008a:		ldy $6e			; a4 6e
B20_008c:		beq B20_0089 ; f0 fb

B20_008e:		dey				; 88 
B20_008f:		beq B20_00b9 ; f0 28

B20_0091:		dey				; 88 
B20_0092:		beq B20_00aa ; f0 16

B20_0094:		ldy $6e			; a4 6e
B20_0096:		cpy #$ff		; c0 ff
B20_0098:		beq B20_00b9 ; f0 1f

B20_009a:		lda $56			; a5 56
B20_009c:		and #$3f		; 29 3f
B20_009e:		cmp #$3f		; c9 3f
B20_00a0:		bne B20_00b9 ; d0 17

B20_00a2:		lda $56			; a5 56
B20_00a4:		clc				; 18 
B20_00a5:		adc #$01		; 69 01
B20_00a7:		jmp $80c1		; 4c c1 80


B20_00aa:		lda $56			; a5 56
B20_00ac:		and #$3f		; 29 3f
B20_00ae:		cmp #$01		; c9 01
B20_00b0:		bne B20_00b9 ; d0 07

B20_00b2:		lda $56			; a5 56
B20_00b4:		and #$fe		; 29 fe
B20_00b6:		jmp $80c1		; 4c c1 80


B20_00b9:		lda $56			; a5 56
B20_00bb:		and #$3f		; 29 3f
B20_00bd:		bne B20_0089 ; d0 ca

B20_00bf:		lda $56			; a5 56
B20_00c1:		cmp $77			; c5 77
B20_00c3:		beq B20_0089 ; f0 c4

B20_00c5:		sta $77			; 85 77
B20_00c7:		jsr $8001		; 20 01 80
B20_00ca:		lda #$00		; a9 00
B20_00cc:		ldy #$c0		; a0 c0
B20_00ce:		ldx $65			; a6 65
B20_00d0:		beq B20_00d6 ; f0 04

B20_00d2:		lda #$05		; a9 05
B20_00d4:		ldy #$00		; a0 00
B20_00d6:		sty $09			; 84 09
B20_00d8:		sta $08			; 85 08
B20_00da:		lda $56			; a5 56
B20_00dc:		and #$3f		; 29 3f
B20_00de:		sta $0e			; 85 0e
B20_00e0:		and #$20		; 29 20
B20_00e2:		beq B20_00ea ; f0 06

B20_00e4:		lda $0e			; a5 0e
B20_00e6:		ora #$c0		; 09 c0
B20_00e8:		bne B20_00ec ; d0 02

B20_00ea:		lda $0e			; a5 0e
B20_00ec:		clc				; 18 
B20_00ed:		adc $09			; 65 09
B20_00ef:		sta $09			; 85 09
B20_00f1:		lda $76			; a5 76
B20_00f3:		clc				; 18 
B20_00f4:		adc $08			; 65 08
B20_00f6:		sta $76			; 85 76
B20_00f8:		lda #$01		; a9 01
B20_00fa:		sta $0a			; 85 0a
B20_00fc:		ldy $76			; a4 76
B20_00fe:		ldx $840c, y	; be 0c 84
B20_0101:		lda $76			; a5 76
B20_0103:		asl a			; 0a
B20_0104:		tay				; a8 
B20_0105:		sty $0b			; 84 0b
B20_0107:		lda ($98), y	; b1 98
B20_0109:		asl a			; 0a
B20_010a:		bcs B20_011a ; b0 0e

B20_010c:		tay				; a8 
B20_010d:		lda $a03f, y	; b9 3f a0
B20_0110:		sta $00			; 85 00
B20_0112:		lda $a040, y	; b9 40 a0
B20_0115:		sta $01			; 85 01
B20_0117:		jmp $8132		; 4c 32 81


B20_011a:		ldy $07f6		; ac f6 07
B20_011d:		bne B20_0127 ; d0 08

B20_011f:		cmp #$a0		; c9 a0
B20_0121:		bcc B20_0127 ; 90 04

B20_0123:		lda #$00		; a9 00
B20_0125:		beq B20_010c ; f0 e5

B20_0127:		tay				; a8 
B20_0128:		lda $a13f, y	; b9 3f a1
B20_012b:		sta $00			; 85 00
B20_012d:		lda $a140, y	; b9 40 a1
B20_0130:		sta $01			; 85 01
B20_0132:		ldy #$00		; a0 00
B20_0134:		lda ($00), y	; b1 00
B20_0136:		sta $07c2, x	; 9d c2 07
B20_0139:		beq B20_0178 ; f0 3d

B20_013b:		iny				; c8 
B20_013c:		lda ($00), y	; b1 00
B20_013e:		clc				; 18 
B20_013f:		adc $09			; 65 09
B20_0141:		sta $07da, x	; 9d da 07
B20_0144:		lda $0a			; a5 0a
B20_0146:		adc #$00		; 69 00
B20_0148:		and #$01		; 29 01
B20_014a:		sta $07e0, x	; 9d e0 07
B20_014d:		iny				; c8 
B20_014e:		lda ($00), y	; b1 00
B20_0150:		sta $07d4, x	; 9d d4 07
B20_0153:		iny				; c8 
B20_0154:		lda ($00), y	; b1 00
B20_0156:		sta $07e6, x	; 9d e6 07
B20_0159:		iny				; c8 
B20_015a:		lda ($00), y	; b1 00
B20_015c:		sta $07ce, x	; 9d ce 07
B20_015f:		txa				; 8a 
B20_0160:		pha				; 48 
B20_0161:		lda $07c8, x	; bd c8 07
B20_0164:		lsr a			; 4a
B20_0165:		lsr a			; 4a
B20_0166:		lsr a			; 4a
B20_0167:		lsr a			; 4a
B20_0168:		tax				; aa 
B20_0169:		lda $0470, x	; bd 70 04
B20_016c:		and #$fb		; 29 fb
B20_016e:		sta $0470, x	; 9d 70 04
B20_0171:		pla				; 68 
B20_0172:		tax				; aa 
B20_0173:		lda #$00		; a9 00
B20_0175:		sta $07c8, x	; 9d c8 07
B20_0178:		jsr $848d		; 20 8d 84
B20_017b:		bne B20_017e ; d0 01

B20_017d:		rts				; 60 


B20_017e:		txa				; 8a 
B20_017f:		clc				; 18 
B20_0180:		adc #$0d		; 69 0d
B20_0182:		tax				; aa 
B20_0183:		jsr $843c		; 20 3c 84
B20_0186:		bne B20_01e6 ; d0 5e

B20_0188:		ldy $0b			; a4 0b
B20_018a:		iny				; c8 
B20_018b:		lda ($98), y	; b1 98
B20_018d:		beq B20_01e6 ; f0 57

B20_018f:		asl a			; 0a
B20_0190:		bcs B20_01a0 ; b0 0e

B20_0192:		tay				; a8 
B20_0193:		lda $a644, y	; b9 44 a6
B20_0196:		sta $00			; 85 00
B20_0198:		lda $a645, y	; b9 45 a6
B20_019b:		sta $01			; 85 01
B20_019d:		jmp $81ab		; 4c ab 81


B20_01a0:		tay				; a8 
B20_01a1:		lda $a744, y	; b9 44 a7
B20_01a4:		sta $00			; 85 00
B20_01a6:		lda $a745, y	; b9 45 a7
B20_01a9:		sta $01			; 85 01
B20_01ab:		jsr func_1f_1ed7		; 20 d7 fe
B20_01ae:		ldy #$00		; a0 00
B20_01b0:		lda ($00), y	; b1 00
B20_01b2:		sta $054e, x	; 9d 4e 05
B20_01b5:		iny				; c8 
B20_01b6:		lda ($00), y	; b1 00
B20_01b8:		sta $05d8, x	; 9d d8 05
B20_01bb:		iny				; c8 
B20_01bc:		lda ($00), y	; b1 00
B20_01be:		clc				; 18 
B20_01bf:		adc $09			; 65 09
B20_01c1:		sta $0438, x	; 9d 38 04
B20_01c4:		lda $0a			; a5 0a
B20_01c6:		adc #$00		; 69 00
B20_01c8:		and #$01		; 29 01
B20_01ca:		sta $0470, x	; 9d 70 04
B20_01cd:		iny				; c8 
B20_01ce:		lda ($00), y	; b1 00
B20_01d0:		sta $041c, x	; 9d 1c 04
B20_01d3:		lda $054e, x	; bd 4e 05
B20_01d6:		sec				; 38 
B20_01d7:		sbc #$90		; e9 90
B20_01d9:		tay				; a8 
B20_01da:		lda $8325, y	; b9 25 83
B20_01dd:		sta $05ef, x	; 9d ef 05
B20_01e0:		lda $76			; a5 76
B20_01e2:		sta $0645, x	; 9d 45 06
B20_01e5:		rts				; 60 


B20_01e6:		jsr func_1f_1ed7		; 20 d7 fe
B20_01e9:		lda #$00		; a9 00
B20_01eb:		sta $054e, x	; 9d 4e 05
B20_01ee:		sta $0470, x	; 9d 70 04
B20_01f1:		sta $0400, x	; 9d 00 04
B20_01f4:		sta $05ef, x	; 9d ef 05
B20_01f7:		rts				; 60 


B20_01f8:		jsr $8369		; 20 69 83
B20_01fb:		lda #$00		; a9 00
B20_01fd:		sta $79			; 85 79
B20_01ff:		sta $7a			; 85 7a
B20_0201:		jsr $801e		; 20 1e 80
B20_0204:		ldy $79			; a4 79
B20_0206:		lda ($98), y	; b1 98
B20_0208:		cmp #$ff		; c9 ff
B20_020a:		beq B20_025d ; f0 51

B20_020c:		jsr $831d		; 20 1d 83
B20_020f:		lda $0a			; a5 0a
B20_0211:		sec				; 38 
B20_0212:		sbc $56			; e5 56
B20_0214:		sta $02			; 85 02
B20_0216:		lda $09			; a5 09
B20_0218:		sbc $57			; e5 57
B20_021a:		sta $03			; 85 03
B20_021c:		bmi B20_0253 ; 30 35

B20_021e:		sec				; 38 
B20_021f:		lda $09			; a5 09
B20_0221:		sbc $57			; e5 57
B20_0223:		beq B20_0235 ; f0 10

B20_0225:		sec				; 38 
B20_0226:		sbc #$01		; e9 01
B20_0228:		bne B20_0253 ; d0 29

B20_022a:		sec				; 38 
B20_022b:		lda $02			; a5 02
B20_022d:		sbc #$10		; e9 10
B20_022f:		sta $02			; 85 02
B20_0231:		bcs B20_0235 ; b0 02

B20_0233:		dec $03			; c6 03
B20_0235:		lda $03			; a5 03
B20_0237:		bne B20_0253 ; d0 1a

B20_0239:		lda $02			; a5 02
B20_023b:		cmp #$b9		; c9 b9
B20_023d:		bcs B20_0253 ; b0 14

B20_023f:		lda $02			; a5 02
B20_0241:		clc				; 18 
B20_0242:		adc #$37		; 69 37
B20_0244:		sta $0a			; 85 0a
B20_0246:		clc				; 18 
B20_0247:		lda $7a			; a5 7a
B20_0249:		adc #$07		; 69 07
B20_024b:		sta $7a			; 85 7a
B20_024d:		jsr $8271		; 20 71 82
B20_0250:		jmp $8201		; 4c 01 82


B20_0253:		clc				; 18 
B20_0254:		lda $79			; a5 79
B20_0256:		adc #$07		; 69 07
B20_0258:		sta $79			; 85 79
B20_025a:		jmp $8201		; 4c 01 82


B20_025d:		lda $7a			; a5 7a
B20_025f:		sta $79			; 85 79
B20_0261:		rts				; 60 


B20_0262:		lda $56			; a5 56
B20_0264:		and #$f0		; 29 f0
B20_0266:		cmp $77			; c5 77
B20_0268:		beq B20_0261 ; f0 f7

B20_026a:		sta $77			; 85 77
B20_026c:		jsr $82d7		; 20 d7 82
B20_026f:		bcc B20_0261 ; 90 f0

B20_0271:		clc				; 18 
B20_0272:		lda $79			; a5 79
B20_0274:		adc #$07		; 69 07
B20_0276:		sta $79			; 85 79
B20_0278:		iny				; c8 
B20_0279:		lda ($98), y	; b1 98
B20_027b:		bmi B20_02a8 ; 30 2b

B20_027d:		jsr $835b		; 20 5b 83
B20_0280:		bne B20_02d6 ; d0 54

B20_0282:		lda ($98), y	; b1 98
B20_0284:		sta $07c2, x	; 9d c2 07
B20_0287:		iny				; c8 
B20_0288:		lda ($98), y	; b1 98
B20_028a:		sta $07da, x	; 9d da 07
B20_028d:		iny				; c8 
B20_028e:		iny				; c8 
B20_028f:		lda ($98), y	; b1 98
B20_0291:		sta $07e6, x	; 9d e6 07
B20_0294:		iny				; c8 
B20_0295:		lda ($98), y	; b1 98
B20_0297:		sta $07ce, x	; 9d ce 07
B20_029a:		lda $0a			; a5 0a
B20_029c:		sta $07d4, x	; 9d d4 07
B20_029f:		lda #$00		; a9 00
B20_02a1:		sta $07e0, x	; 9d e0 07
B20_02a4:		sta $07c8, x	; 9d c8 07
B20_02a7:		rts				; 60 


B20_02a8:		jsr $834d		; 20 4d 83
B20_02ab:		bne B20_02d6 ; d0 29

B20_02ad:		jsr func_1f_1ed7		; 20 d7 fe
B20_02b0:		sta $0470, x	; 9d 70 04
B20_02b3:		lda ($98), y	; b1 98
B20_02b5:		sta $054e, x	; 9d 4e 05
B20_02b8:		iny				; c8 
B20_02b9:		lda ($98), y	; b1 98
B20_02bb:		sta $0438, x	; 9d 38 04
B20_02be:		iny				; c8 
B20_02bf:		lda ($98), y	; b1 98
B20_02c1:		sta $05d8, x	; 9d d8 05
B20_02c4:		lda $0a			; a5 0a
B20_02c6:		sta $041c, x	; 9d 1c 04
B20_02c9:		lda $054e, x	; bd 4e 05
B20_02cc:		sec				; 38 
B20_02cd:		sbc #$90		; e9 90
B20_02cf:		tay				; a8 
B20_02d0:		lda $8325, y	; b9 25 83
B20_02d3:		sta $05ef, x	; 9d ef 05
B20_02d6:		rts				; 60 


B20_02d7:		ldy $79			; a4 79
B20_02d9:		lda ($98), y	; b1 98
B20_02db:		cmp #$ff		; c9 ff
B20_02dd:		beq B20_02f1 ; f0 12

B20_02df:		jsr $831d		; 20 1d 83
B20_02e2:		lda $0a			; a5 0a
B20_02e4:		sec				; 38 
B20_02e5:		sbc $56			; e5 56
B20_02e7:		sta $02			; 85 02
B20_02e9:		lda $09			; a5 09
B20_02eb:		sbc $57			; e5 57
B20_02ed:		sta $03			; 85 03
B20_02ef:		bpl B20_02f3 ; 10 02

B20_02f1:		clc				; 18 
B20_02f2:		rts				; 60 


B20_02f3:		sec				; 38 
B20_02f4:		lda $09			; a5 09
B20_02f6:		sbc $57			; e5 57
B20_02f8:		beq B20_030a ; f0 10

B20_02fa:		sec				; 38 
B20_02fb:		sbc #$01		; e9 01
B20_02fd:		bne B20_02f1 ; d0 f2

B20_02ff:		sec				; 38 
B20_0300:		lda $02			; a5 02
B20_0302:		sbc #$10		; e9 10
B20_0304:		sta $02			; 85 02
B20_0306:		bcs B20_030a ; b0 02

B20_0308:		dec $03			; c6 03
B20_030a:		lda $03			; a5 03
B20_030c:		bne B20_02f1 ; d0 e3

B20_030e:		lda $02			; a5 02
B20_0310:		cmp #$b8		; c9 b8
B20_0312:		bcs B20_02f1 ; b0 dd

B20_0314:		lda $02			; a5 02
B20_0316:		clc				; 18 
B20_0317:		adc #$37		; 69 37
B20_0319:		sta $0a			; 85 0a
B20_031b:		sec				; 38 
B20_031c:		rts				; 60 


B20_031d:		sta $09			; 85 09
B20_031f:		iny				; c8 
B20_0320:		lda ($98), y	; b1 98
B20_0322:		sta $0a			; 85 0a
B20_0324:		rts				; 60 


B20_0325:		;removed
	.db $30 $31

B20_0327:	.db $32
B20_0328:		.db $00				; 00
B20_0329:		.db $00				; 00
B20_032a:		.db $00				; 00
B20_032b:		.db $00				; 00
B20_032c:		.db $00				; 00
B20_032d:		.db $00				; 00
B20_032e:		.db $00				; 00
B20_032f:		eor ($00), y	; 51 00
B20_0331:		.db $00				; 00
B20_0332:		.db $00				; 00
B20_0333:		.db $00				; 00
B20_0334:		.db $00				; 00
B20_0335:		.db $00				; 00
B20_0336:		.db $00				; 00
B20_0337:		.db $00				; 00
B20_0338:		.db $00				; 00
B20_0339:		.db $00				; 00
B20_033a:		.db $00				; 00
B20_033b:		.db $00				; 00
B20_033c:		.db $00				; 00
B20_033d:		.db $00				; 00
B20_033e:		.db $00				; 00
B20_033f:		.db $00				; 00
B20_0340:		.db $00				; 00
B20_0341:		.db $00				; 00
B20_0342:		.db $00				; 00
B20_0343:		.db $00				; 00
B20_0344:		.db $00				; 00
B20_0345:		.db $00				; 00
B20_0346:	.db $52
B20_0347:		.db $00				; 00
B20_0348:		.db $00				; 00
B20_0349:		.db $00				; 00
B20_034a:		.db $00				; 00
B20_034b:		.db $00				; 00
B20_034c:		.db $00				; 00
B20_034d:		ldx #$0d		; a2 0d
B20_034f:		lda $054e, x	; bd 4e 05
B20_0352:		beq B20_0391 ; f0 3d

B20_0354:		inx				; e8 
B20_0355:		cpx #$13		; e0 13
B20_0357:		bcc B20_034f ; 90 f6

B20_0359:		bcs B20_038f ; b0 34

B20_035b:		ldx #$00		; a2 00
B20_035d:		lda $07c2, x	; bd c2 07
B20_0360:		beq B20_0391 ; f0 2f

B20_0362:		inx				; e8 
B20_0363:		cpx #$06		; e0 06
B20_0365:		bcc B20_035d ; 90 f6

B20_0367:		bcs B20_038f ; b0 26

B20_0369:		ldx #$00		; a2 00
B20_036b:		txa				; 8a 
B20_036c:		sta $07c2, x	; 9d c2 07
B20_036f:		inx				; e8 
B20_0370:		cpx #$06		; e0 06
B20_0372:		bcc B20_036c ; 90 f8

B20_0374:		rts				; 60 


B20_0375:		ldx #$01		; a2 01
B20_0377:		lda $054e, x	; bd 4e 05
B20_037a:		beq B20_0391 ; f0 15

B20_037c:		inx				; e8 
B20_037d:		cpx #$03		; e0 03
B20_037f:		bcc B20_0377 ; 90 f6

B20_0381:		bcs B20_038f ; b0 0c

B20_0383:		ldx #$01		; a2 01
B20_0385:		lda $054e, x	; bd 4e 05
B20_0388:		beq B20_0391 ; f0 07

B20_038a:		inx				; e8 
B20_038b:		cpx #$04		; e0 04
B20_038d:		bcc B20_0385 ; 90 f6

B20_038f:		lda #$01		; a9 01
B20_0391:		rts				; 60 


B20_0392:		ldx #$07		; a2 07
B20_0394:		lda $054e, x	; bd 4e 05
B20_0397:		beq B20_0391 ; f0 f8

B20_0399:		inx				; e8 
B20_039a:		cpx #$09		; e0 09
B20_039c:		bcc B20_0394 ; 90 f6

B20_039e:		bcs B20_038f ; b0 ef

B20_03a0:		ldx #$04		; a2 04
B20_03a2:		lda $054e, x	; bd 4e 05
B20_03a5:		beq B20_0391 ; f0 ea

B20_03a7:		inx				; e8 
B20_03a8:		cpx #$07		; e0 07
B20_03aa:		bcc B20_03a2 ; 90 f6

B20_03ac:		bcs B20_038f ; b0 e1

B20_03ae:		ldx #$0a		; a2 0a
B20_03b0:		lda $054e, x	; bd 4e 05
B20_03b3:		beq B20_0391 ; f0 dc

B20_03b5:		inx				; e8 
B20_03b6:		cpx #$0d		; e0 0d
B20_03b8:		bcc B20_03b0 ; 90 f6

B20_03ba:		bcs B20_038f ; b0 d3

B20_03bc:		ldx #$01		; a2 01
B20_03be:		jsr $81e9		; 20 e9 81
B20_03c1:		sta $0657, x	; 9d 57 06
B20_03c4:		sta $0669, x	; 9d 69 06
B20_03c7:		inx				; e8 
B20_03c8:		cpx #$0d		; e0 0d
B20_03ca:		bcc B20_03be ; 90 f2

B20_03cc:		rts				; 60 


B20_03cd:		ldy #$00		; a0 00
B20_03cf:		lda $6e			; a5 6e
B20_03d1:		bpl B20_03d4 ; 10 01

B20_03d3:		dey				; 88 
B20_03d4:		sty $00			; 84 00
B20_03d6:		lda $68			; a5 68
B20_03d8:		bmi B20_03ee ; 30 14

B20_03da:		sec				; 38 
B20_03db:		lda $07da, x	; bd da 07
B20_03de:		sbc $6e			; e5 6e
B20_03e0:		sta $07da, x	; 9d da 07
B20_03e3:		lda $07e0, x	; bd e0 07
B20_03e6:		sbc $00			; e5 00
B20_03e8:		and #$01		; 29 01
B20_03ea:		sta $07e0, x	; 9d e0 07
B20_03ed:		rts				; 60 


B20_03ee:		clc				; 18 
B20_03ef:		lda $07d4, x	; bd d4 07
B20_03f2:		adc $6e			; 65 6e
B20_03f4:		sta $07d4, x	; 9d d4 07
B20_03f7:		lda $07e0, x	; bd e0 07
B20_03fa:		adc $00			; 65 00
B20_03fc:		and #$01		; 29 01
B20_03fe:		sta $07e0, x	; 9d e0 07
B20_0401:		lda $07e0, x	; bd e0 07
B20_0404:		beq B20_040b ; f0 05

B20_0406:		lda #$00		; a9 00
B20_0408:		sta $07c2, x	; 9d c2 07
B20_040b:		rts				; 60 


B20_040c:		.db $00				; 00
B20_040d:		ora ($02, x)	; 01 02
B20_040f:	.db $03
B20_0410:	.db $04
B20_0411:		ora $00			; 05 00
B20_0413:		ora ($02, x)	; 01 02
B20_0415:	.db $03
B20_0416:	.db $04
B20_0417:		ora $00			; 05 00
B20_0419:		ora ($02, x)	; 01 02
B20_041b:	.db $03
B20_041c:	.db $04
B20_041d:		ora $00			; 05 00
B20_041f:		ora ($02, x)	; 01 02
B20_0421:	.db $03
B20_0422:	.db $04
B20_0423:		ora $00			; 05 00
B20_0425:		ora ($02, x)	; 01 02
B20_0427:	.db $03
B20_0428:	.db $04
B20_0429:		ora $00			; 05 00
B20_042b:		ora ($02, x)	; 01 02
B20_042d:	.db $03
B20_042e:	.db $04
B20_042f:		ora $00			; 05 00
B20_0431:		ora ($02, x)	; 01 02
B20_0433:	.db $03
B20_0434:	.db $04
B20_0435:		ora $00			; 05 00
B20_0437:		ora ($02, x)	; 01 02
B20_0439:	.db $03
B20_043a:	.db $04
B20_043b:		ora $a4			; 05 a4
B20_043d:		ror $b9, x		; 76 b9
B20_043f:		eor $8584		; 4d 84 85
B20_0442:	.db $0f
B20_0443:		lda $846d, y	; b9 6d 84
B20_0446:		tay				; a8 
B20_0447:	.db $b9 $f0 $00
B20_044a:		and $0f			; 25 0f
B20_044c:		rts				; 60 


B20_044d:		ora ($02, x)	; 01 02
B20_044f:	.db $04
B20_0450:		php				; 08 
B20_0451:		bpl B20_0473 ; 10 20

B20_0453:		rti				; 40 


B20_0454:	.db $80
B20_0455:		ora ($02, x)	; 01 02
B20_0457:	.db $04
B20_0458:		php				; 08 
B20_0459:		bpl B20_047b ; 10 20

B20_045b:		rti				; 40 


B20_045c:	.db $80
B20_045d:		ora ($02, x)	; 01 02
B20_045f:	.db $04
B20_0460:		php				; 08 
B20_0461:		bpl B20_0483 ; 10 20

B20_0463:		rti				; 40 


B20_0464:	.db $80
B20_0465:		ora ($02, x)	; 01 02
B20_0467:	.db $04
B20_0468:		php				; 08 
B20_0469:		bpl B20_048b ; 10 20

B20_046b:		rti				; 40 


B20_046c:	.db $80
B20_046d:		.db $00				; 00
B20_046e:		.db $00				; 00
B20_046f:		.db $00				; 00
B20_0470:		.db $00				; 00
B20_0471:		.db $00				; 00
B20_0472:		.db $00				; 00
B20_0473:		.db $00				; 00
B20_0474:		.db $00				; 00
B20_0475:		ora ($01, x)	; 01 01
B20_0477:		ora ($01, x)	; 01 01
B20_0479:		ora ($01, x)	; 01 01
B20_047b:		ora ($01, x)	; 01 01
B20_047d:	.db $02
B20_047e:	.db $02
B20_047f:	.db $02
B20_0480:	.db $02
B20_0481:	.db $02
B20_0482:	.db $02
B20_0483:	.db $02
B20_0484:	.db $02
B20_0485:	.db $03
B20_0486:	.db $03
B20_0487:	.db $03
B20_0488:	.db $03
B20_0489:	.db $03
B20_048a:	.db $03
B20_048b:	.db $03
B20_048c:	.db $03
B20_048d:		lda $32			; a5 32
B20_048f:		cmp #$0e		; c9 0e
B20_0491:		bne B20_049d ; d0 0a

B20_0493:		lda $33			; a5 33
B20_0495:		cmp #$01		; c9 01
B20_0497:		bne B20_049d ; d0 04

B20_0499:		lda $34			; a5 34
B20_049b:		cmp #$01		; c9 01
B20_049d:		rts				; 60 


B20_049e:		ldx #$01		; a2 01
B20_04a0:		lda $054e, x	; bd 4e 05
B20_04a3:		cmp #$93		; c9 93
B20_04a5:		bcc B20_04c0 ; 90 19

B20_04a7:		beq B20_04d0 ; f0 27

B20_04a9:		cmp #$95		; c9 95
B20_04ab:		beq B20_04d0 ; f0 23

B20_04ad:		cmp #$97		; c9 97
B20_04af:		beq B20_04c0 ; f0 0f

B20_04b1:		cmp #$af		; c9 af
B20_04b3:		beq B20_04bd ; f0 08

B20_04b5:		cmp #$b0		; c9 b0
B20_04b7:		beq B20_04bd ; f0 04

B20_04b9:		cmp #$9f		; c9 9f
B20_04bb:		bcs B20_04c0 ; b0 03

B20_04bd:		jsr $84d8		; 20 d8 84
B20_04c0:		inx				; e8 
B20_04c1:		cpx #$13		; e0 13
B20_04c3:		bcc B20_04a0 ; 90 db

B20_04c5:		ldx #$14		; a2 14
B20_04c7:		jsr $84d8		; 20 d8 84
B20_04ca:		inx				; e8 
B20_04cb:		cpx #$17		; e0 17
B20_04cd:		bcc B20_04c7 ; 90 f8

B20_04cf:		rts				; 60 


B20_04d0:		lda $3a			; a5 3a
B20_04d2:		cmp #$02		; c9 02
B20_04d4:		bne B20_04bd ; d0 e7

B20_04d6:		beq B20_04c0 ; f0 e8

B20_04d8:		lda #$00		; a9 00
B20_04da:		sta $054e, x	; 9d 4e 05
B20_04dd:		sta $0400, x	; 9d 00 04
B20_04e0:		sta $0470, x	; 9d 70 04
B20_04e3:		sta $0438, x	; 9d 38 04
B20_04e6:		sta $041c, x	; 9d 1c 04
B20_04e9:		rts				; 60 


B20_04ea:		ldx #$00		; a2 00
B20_04ec:		lda $07c2, x	; bd c2 07
B20_04ef:		beq B20_04ff ; f0 0e

B20_04f1:		stx $6c			; 86 6c
B20_04f3:		lda $b2			; a5 b2
B20_04f5:		bne B20_04fc ; d0 05

B20_04f7:		jsr func_14_0505		; 20 05 85
B20_04fa:		ldx $6c			; a6 6c
B20_04fc:		jsr $83cd		; 20 cd 83
B20_04ff:		inx				; e8 
B20_0500:		cpx #$06		; e0 06
B20_0502:		bcc B20_04ec ; 90 e8

B20_0504:		rts				; 60 


func_14_0505:
B20_0505:		lda $07c2, x	; bd c2 07
B20_0508:		asl a			; 0a
B20_0509:		tay				; a8 
B20_050a:		lda data_14_0527.w, y	; b9 27 85
B20_050d:		sta $00			; 85 00
B20_050f:		lda data_14_0527.w+1, y	; b9 28 85
B20_0512:		sta $01			; 85 01

B20_0514:		lda $07c8, x	; bd c8 07
B20_0517:		and #$0f		; 29 0f
B20_0519:		asl a			; 0a
B20_051a:		tay				; a8 
B20_051b:		lda ($00), y	; b1 00
B20_051d:		sta $02			; 85 02
B20_051f:		iny				; c8 
B20_0520:		lda ($00), y	; b1 00
B20_0522:		sta $03			; 85 03
B20_0524:		jmp ($02)

data_14_0527:
	.dw $85d3
	.dw $85d7
	.dw $8629
	.dw $8878
	.dw $8a13
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $91af
	.dw $91ab
	.dw $921d
	.dw $8b61
	.dw $8970
	.dw $8cb2
	.dw $8c76
	.dw $8b2c
	.dw $8bf9
	.dw $8b16
	.dw $86bf
	.dw $8bab
	.dw $8bf9
	.dw $8bab
	.dw $8bab
	.dw $8bab
	.dw $8aad
	.dw $8bab
	.dw $8a5f
	.dw $8ed1
	.dw $914a
	.dw $8ffc
	.dw $90dd
	.dw $90a0
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8bf9
	.dw $8bab
	.dw $8c0f
	.dw $8c9c
	.dw $8970
	.dw $8aef
	.dw $8948
	.dw $8c65
	.dw $85d3
	.dw $85d3
	.dw $85d3
	.dw $8bab
	.dw $85d3
	.dw $85d3
	.dw $85d3
	.dw $8d93
	.dw $85d3
	.dw $85d3
	.dw $8d93
	.dw $8652
	.dw $87bc
	.dw $8769
	.dw $86b3
	.dw $86b9
	.dw $8bab
	.dw $8b61
	.dw $8c76

	
B20_05ab:		cmp $8d			; c5 8d
B20_05ad:	.db $d3
B20_05ae:		sty $8ad8		; 8c d8 8a
B20_05b1:	.db $ef
B20_05b2:		txa				; 8a 
B20_05b3:		.db $d0 $88

B20_05b5:		;removed
	.db $70 $89

B20_05b7:		rol a			; 2a
B20_05b8:		dey				; 88 
B20_05b9:		eor $0f8b		; 4d 8b 0f
B20_05bc:		dey				; 88 
B20_05bd:		lda $8a			; a5 8a
B20_05bf:		cmp $8d			; c5 8d
B20_05c1:	.db $93
B20_05c2:		sta $8d93		; 8d 93 8d
B20_05c5:	.db $7c
B20_05c6:		stx $5f			; 86 5f
B20_05c8:		txa				; 8a 
B20_05c9:		ora $0987, y	; 19 87 09
B20_05cc:		txa				; 8a 
B20_05cd:		rts				; 60 


B20_05ce:	.db $19 $00 $00
B20_05d1:		.db $00				; 00
B20_05d2:		rts				; 60 


B20_05d3:	.db $d2
B20_05d4:		sta $d2			; 85 d2
B20_05d6:		sta $db			; 85 db
B20_05d8:		sta $e6			; 85 e6
B20_05da:		sta $20			; 85 20
B20_05dc:	.db $eb
B20_05dd:		sta $a6			; 85 a6
B20_05df:		jmp ($c8fe)		; 6c fe c8


B20_05e2:	.db $07
B20_05e3:		rts				; 60 


B20_05e4:		php				; 08 
B20_05e5:		sed				; f8 
B20_05e6:		dec $07ce, x	; de ce 07
B20_05e9:		bne B20_05e3 ; d0 f8

B20_05eb:		jsr $8de7		; 20 e7 8d
B20_05ee:		jsr $8d73		; 20 73 8d
B20_05f1:		bne B20_0621 ; d0 2e

B20_05f3:		jsr $89b3		; 20 b3 89
B20_05f6:		lda $85e4, y	; b9 e4 85
B20_05f9:		sta $00			; 85 00
B20_05fb:		lda #$b0		; a9 b0
B20_05fd:		sta $01			; 85 01
B20_05ff:		jsr $8dde		; 20 de 8d
B20_0602:		lda $0438, x	; bd 38 04
B20_0605:		sta $08			; 85 08
B20_0607:		txa				; 8a 
B20_0608:		ldx $6c			; a6 6c
B20_060a:		sta $07e6, x	; 9d e6 07
B20_060d:		ldy #$a4		; a0 a4
B20_060f:		lda $08			; a5 08
B20_0611:		jsr $fc16		; 20 16 fc
B20_0614:		beq B20_0621 ; f0 0b

B20_0616:		ldx $6c			; a6 6c
B20_0618:		lda $07e6, x	; bd e6 07
B20_061b:		tax				; aa 
B20_061c:		lda #$90		; a9 90
B20_061e:		sta $041c, x	; 9d 1c 04
B20_0621:		lda #$81		; a9 81
B20_0623:		ldx $6c			; a6 6c
B20_0625:		sta $07ce, x	; 9d ce 07
B20_0628:		rts				; 60 


B20_0629:		and $4b86		; 2d 86 4b
B20_062c:		stx $fe			; 86 fe
B20_062e:		iny				; c8 
B20_062f:	.db $07
B20_0630:		jsr $8de7		; 20 e7 8d
B20_0633:		jsr $8d73		; 20 73 8d
B20_0636:		bne B20_0643 ; d0 0b

B20_0638:		jsr $8dde		; 20 de 8d
B20_063b:		lda $0470, x	; bd 70 04
B20_063e:		ora #$20		; 09 20
B20_0640:		sta $0470, x	; 9d 70 04
B20_0643:		ldx $6c			; a6 6c
B20_0645:		lda #$81		; a9 81
B20_0647:		sta $07ce, x	; 9d ce 07
B20_064a:		rts				; 60 


B20_064b:		dec $07ce, x	; de ce 07
B20_064e:		bne B20_0628 ; d0 d8

B20_0650:		beq B20_0630 ; f0 de

B20_0652:		lsr $86, x		; 56 86
B20_0654:	.db $5c
B20_0655:		stx $20			; 86 20
B20_0657:		adc ($86, x)	; 61 86
B20_0659:		jmp $85de		; 4c de 85


B20_065c:		dec $07ce, x	; de ce 07
B20_065f:		bne B20_064a ; d0 e9

B20_0661:		jsr $8de7		; 20 e7 8d
B20_0664:		jsr $8d73		; 20 73 8d
B20_0667:		bne B20_0674 ; d0 0b

B20_0669:		jsr $89b7		; 20 b7 89
B20_066c:		lda $85e4, y	; b9 e4 85
B20_066f:		sta $00			; 85 00
B20_0671:		jsr $8dde		; 20 de 8d
B20_0674:		ldx $6c			; a6 6c
B20_0676:		lda #$47		; a9 47
B20_0678:		sta $07ce, x	; 9d ce 07
B20_067b:		rts				; 60 


B20_067c:	.db $80
B20_067d:		stx $86			; 86 86
B20_067f:		stx $20			; 86 20
B20_0681:	.db $8b
B20_0682:		stx $4c			; 86 4c
B20_0684:		dec $de85, x	; de 85 de
B20_0687:		dec $d007		; ce 07 d0
B20_068a:	.db $27
B20_068b:		jsr $8de7		; 20 e7 8d
B20_068e:		jsr $8d73		; 20 73 8d
B20_0691:		bne B20_06ab ; d0 18

B20_0693:		jsr $89b3		; 20 b3 89
B20_0696:		lda $85e4, y	; b9 e4 85
B20_0699:		sta $00			; 85 00
B20_069b:		lda $07f6		; ad f6 07
B20_069e:		beq B20_06a8 ; f0 08

B20_06a0:		lda #$70		; a9 70
B20_06a2:		sta $02			; 85 02
B20_06a4:		lda #$66		; a9 66
B20_06a6:		sta $03			; 85 03
B20_06a8:		jsr $8dde		; 20 de 8d
B20_06ab:		ldx $6c			; a6 6c
B20_06ad:		lda #$41		; a9 41
B20_06af:		sta $07ce, x	; 9d ce 07
B20_06b2:		rts				; 60 


B20_06b3:	.db $c3
B20_06b4:		stx $fd			; 86 fd
B20_06b6:		stx $0e			; 86 0e
B20_06b8:	.db $87
B20_06b9:		cmp #$86		; c9 86
B20_06bb:		sbc $0e86, x	; fd 86 0e
B20_06be:	.db $87
B20_06bf:		cmp #$86		; c9 86
B20_06c1:	.db $ef
B20_06c2:		stx $a5			; 86 a5
B20_06c4:		rol a			; 2a
B20_06c5:		cmp #$1b		; c9 1b
B20_06c7:		beq B20_06ee ; f0 25

B20_06c9:		lda $07e0, x	; bd e0 07
B20_06cc:		bne B20_06ee ; d0 20

B20_06ce:		jsr $8de7		; 20 e7 8d
B20_06d1:		jsr $8e54		; 20 54 8e
B20_06d4:		bne B20_06ee ; d0 18

B20_06d6:		txa				; 8a 
B20_06d7:		adc $1a			; 65 1a
B20_06d9:		adc $0438		; 6d 38 04
B20_06dc:		and #$01		; 29 01
B20_06de:		tay				; a8 
B20_06df:		lda $85e4, y	; b9 e4 85
B20_06e2:		sta $00			; 85 00
B20_06e4:		jsr $8dde		; 20 de 8d
B20_06e7:		txa				; 8a 
B20_06e8:		jsr $85de		; 20 de 85
B20_06eb:		sta $07e6, x	; 9d e6 07
B20_06ee:		rts				; 60 


B20_06ef:		ldy $07e6, x	; bc e6 07
B20_06f2:		lda $054e, y	; b9 4e 05
B20_06f5:		bne B20_06ee ; d0 f7

B20_06f7:		lda #$00		; a9 00
B20_06f9:		sta $07c8, x	; 9d c8 07
B20_06fc:		rts				; 60 


B20_06fd:		ldy $07e6, x	; bc e6 07
B20_0700:		lda $054e, y	; b9 4e 05
B20_0703:		bne B20_06ee ; d0 e9

B20_0705:		lda #$40		; a9 40
B20_0707:		sta $07ce, x	; 9d ce 07
B20_070a:		inc $07c8, x	; fe c8 07
B20_070d:		rts				; 60 


B20_070e:		dec $07ce, x	; de ce 07
B20_0711:		bne B20_06ee ; d0 db

B20_0713:		lda #$00		; a9 00
B20_0715:		sta $07c8, x	; 9d c8 07
B20_0718:		rts				; 60 


B20_0719:	.db $1f
B20_071a:	.db $87
B20_071b:	.db $5c
B20_071c:	.db $87
B20_071d:		asl $a587		; 0e 87 a5
B20_0720:		dex				; ca 
B20_0721:		cmp #$80		; c9 80
B20_0723:		bcc B20_0749 ; 90 24

B20_0725:		jsr $8de7		; 20 e7 8d
B20_0728:		jsr $8d73		; 20 73 8d
B20_072b:		bne B20_0749 ; d0 1c

B20_072d:		ldy $04a8		; ac a8 04
B20_0730:		lda $1f			; a5 1f
B20_0732:		and #$07		; 29 07
B20_0734:		clc				; 18 
B20_0735:		adc $875a, y	; 79 5a 87
B20_0738:		tay				; a8 
B20_0739:		clc				; 18 
B20_073a:		lda $874a, y	; b9 4a 87
B20_073d:		adc $0438		; 6d 38 04
B20_0740:		sta $00			; 85 00
B20_0742:		lda $ca			; a5 ca
B20_0744:		sta $01			; 85 01
B20_0746:		jmp $86e4		; 4c e4 86


B20_0749:		rts				; 60 


B20_074a:		bvc B20_07ac ; 50 60

B20_074c:		cpy #$48		; c0 48
B20_074e:		jmp $5462		; 4c 62 54


B20_0751:		pha				; 48 
B20_0752:		;removed
	.db $b0 $a0

B20_0754:		tay				; a8 
B20_0755:		cpy #$40		; c0 40
B20_0757:		clv				; b8 
B20_0758:		bcs B20_071a ; b0 c0

B20_075a:		.db $00				; 00
B20_075b:		php				; 08 
B20_075c:		ldy $07e6, x	; bc e6 07
B20_075f:		lda $054e, y	; b9 4e 05
B20_0762:		bne B20_06ee ; d0 8a

B20_0764:		lda #$81		; a9 81
B20_0766:		jmp $8707		; 4c 07 87


B20_0769:	.db $6f
B20_076a:	.db $87
B20_076b:	.db $87
B20_076c:	.db $87
B20_076d:	.db $ef
B20_076e:		stx $20			; 86 20
B20_0770:		dec $a685, x	; de 85 a6
B20_0773:		jmp ($1aa5)		; 6c a5 1a


B20_0776:		adc $0438, x	; 7d 38 04
B20_0779:		and #$03		; 29 03
B20_077b:		tay				; a8 
B20_077c:		lda $8783, y	; b9 83 87
B20_077f:		sta $07ce, x	; 9d ce 07
B20_0782:		rts				; 60 


B20_0783:		php				; 08 
B20_0784:		sec				; 38 
B20_0785:		clc				; 18 
B20_0786:		plp				; 28 
B20_0787:		dec $07ce, x	; de ce 07
B20_078a:		bne B20_07fc ; d0 70

B20_078c:		jsr $8de7		; 20 e7 8d
B20_078f:		jsr $8383		; 20 83 83
B20_0792:		;removed
	.db $d0 $de

B20_0794:		txa				; 8a 
B20_0795:		adc $1a			; 65 1a
B20_0797:		adc $0438		; 6d 38 04
B20_079a:		and #$03		; 29 03
B20_079c:		clc				; 18 
B20_079d:		ldy $04a8		; ac a8 04
B20_07a0:		adc $87ba, y	; 79 ba 87
B20_07a3:		tay				; a8 
B20_07a4:		lda $87b2, y	; b9 b2 87
B20_07a7:		adc $0438		; 6d 38 04
B20_07aa:		sta $00			; 85 00
B20_07ac:		jsr $8dde		; 20 de 8d
B20_07af:		jmp $86e7		; 4c e7 86


B20_07b2:		pla				; 68 
B20_07b3:		cli				; 58 
B20_07b4:		rts				; 60 


B20_07b5:		iny				; c8 
B20_07b6:		;removed
	.db $d0 $68

B20_07b8:		cpy #$d8		; c0 d8
B20_07ba:		.db $00				; 00
B20_07bb:	.db $04
B20_07bc:		cpy #$87		; c0 87
B20_07be:		dec $87			; c6 87
B20_07c0:		jsr $87cb		; 20 cb 87
B20_07c3:		jmp $85de		; 4c de 85


B20_07c6:		dec $07ce, x	; de ce 07
B20_07c9:		bne B20_07fc ; d0 31

B20_07cb:		jsr $8de7		; 20 e7 8d
B20_07ce:		jsr $8d73		; 20 73 8d
B20_07d1:		bne B20_07ee ; d0 1b

B20_07d3:		txa				; 8a 
B20_07d4:		adc $1a			; 65 1a
B20_07d6:		adc $0438		; 6d 38 04
B20_07d9:		and #$07		; 29 07
B20_07db:		clc				; 18 
B20_07dc:		ldy $04a8		; ac a8 04
B20_07df:		adc $880d, y	; 79 0d 88
B20_07e2:		tay				; a8 
B20_07e3:		lda $87fd, y	; b9 fd 87
B20_07e6:		adc $0438		; 6d 38 04
B20_07e9:		sta $00			; 85 00
B20_07eb:		jsr $8dde		; 20 de 8d
B20_07ee:		ldx $6c			; a6 6c
B20_07f0:		lda #$47		; a9 47
B20_07f2:		ldy $07f6		; ac f6 07
B20_07f5:		beq B20_07f9 ; f0 02

B20_07f7:		lda #$30		; a9 30
B20_07f9:		sta $07ce, x	; 9d ce 07
B20_07fc:		rts				; 60 


B20_07fd:		ldy #$50		; a0 50
B20_07ff:		rts				; 60 


B20_0800:		bcs B20_07aa ; b0 a8

B20_0802:		pha				; 48 
B20_0803:		cli				; 58 
B20_0804:		cli				; 58 
B20_0805:		ldy #$a8		; a0 a8
B20_0807:		;removed
	.db $b0 $60

B20_0809:		clv				; b8 
B20_080a:		pha				; 48 
B20_080b:		cli				; 58 
B20_080c:		tya				; 98 
B20_080d:		.db $00				; 00
B20_080e:		php				; 08 
B20_080f:	.db $13
B20_0810:		dey				; 88 
B20_0811:		bit $88			; 24 88
B20_0813:		inc $07c8, x	; fe c8 07
B20_0816:		jsr $8de7		; 20 e7 8d
B20_0819:		jsr $83ae		; 20 ae 83
B20_081c:		bne B20_0821 ; d0 03

B20_081e:		jsr $883c		; 20 3c 88
B20_0821:		jmp $88b6		; 4c b6 88


B20_0824:		dec $07ce, x	; de ce 07
B20_0827:		beq B20_0816 ; f0 ed

B20_0829:		rts				; 60 


B20_082a:		rol $7288		; 2e 88 72
B20_082d:		dey				; 88 
B20_082e:		inc $07c8, x	; fe c8 07
B20_0831:		jsr $88b6		; 20 b6 88
B20_0834:		jsr $8de7		; 20 e7 8d
B20_0837:		jsr $8d73		; 20 73 8d
B20_083a:		bne B20_0829 ; d0 ed

B20_083c:		jsr $89e5		; 20 e5 89
B20_083f:		lda $8882, y	; b9 82 88
B20_0842:		sta $00			; 85 00
B20_0844:		lda #$00		; a9 00
B20_0846:		ldy $6e			; a4 6e
B20_0848:		beq B20_0861 ; f0 17

B20_084a:		ldy $68			; a4 68
B20_084c:		bpl B20_0861 ; 10 13

B20_084e:		ldy $6e			; a4 6e
B20_0850:		bpl B20_0854 ; 10 02

B20_0852:		lda #$04		; a9 04
B20_0854:		clc				; 18 
B20_0855:		sta $0a			; 85 0a
B20_0857:		lda $1a			; a5 1a
B20_0859:		and #$03		; 29 03
B20_085b:		adc $0a			; 65 0a
B20_085d:		tay				; a8 
B20_085e:		lda $886a, y	; b9 6a 88
B20_0861:		clc				; 18 
B20_0862:		adc $041c		; 6d 1c 04
B20_0865:		sta $01			; 85 01
B20_0867:		jmp $88c4		; 4c c4 88


B20_086a:		cpy #$b0		; c0 b0
B20_086c:		cpx #$d0		; e0 d0
B20_086e:		rti				; 40 


B20_086f:		bvc B20_0891 ; 50 20

B20_0871:		;removed
	.db $30 $de

B20_0873:		dec $f007		; ce 07 f0
B20_0876:		tsx				; ba 
B20_0877:		rts				; 60 


B20_0878:	.db $7c
B20_0879:		dey				; 88 
B20_087a:		sty $88			; 84 88
B20_087c:		jsr $8889		; 20 89 88
B20_087f:		jmp $85de		; 4c de 85


B20_0882:		php				; 08 
B20_0883:		sed				; f8 
B20_0884:		jsr $8e28		; 20 28 8e
B20_0887:		bne B20_08c3 ; d0 3a

B20_0889:		jsr $8de7		; 20 e7 8d
B20_088c:		jsr $8e54		; 20 54 8e
B20_088f:		bne B20_08b6 ; d0 25

B20_0891:		lda $32			; a5 32
B20_0893:		cmp #$0a		; c9 0a
B20_0895:		bne B20_08a4 ; d0 0d

B20_0897:		lda $041c		; ad 1c 04
B20_089a:		cmp #$a0		; c9 a0
B20_089c:		bcc B20_08a4 ; 90 06

B20_089e:		jsr $8a44		; 20 44 8a
B20_08a1:		jmp $88ac		; 4c ac 88


B20_08a4:		jsr $89f4		; 20 f4 89
B20_08a7:		lda $8882, y	; b9 82 88
B20_08aa:		sta $00			; 85 00
B20_08ac:		lda $041c		; ad 1c 04
B20_08af:		adc #$04		; 69 04
B20_08b1:		sta $01			; 85 01
B20_08b3:		jsr $88c4		; 20 c4 88
B20_08b6:		lda #$70		; a9 70
B20_08b8:		ldy $32			; a4 32
B20_08ba:		cpy #$0a		; c0 0a
B20_08bc:		bcs B20_08c0 ; b0 02

B20_08be:		lda #$a0		; a9 a0
B20_08c0:		jmp $8623		; 4c 23 86


B20_08c3:		rts				; 60 


B20_08c4:		lda $07f6		; ad f6 07
B20_08c7:		beq B20_08cd ; f0 04

B20_08c9:		lda #$6d		; a9 6d
B20_08cb:		sta $02			; 85 02
B20_08cd:		jmp $8dde		; 4c de 8d


B20_08d0:	.db $d4
B20_08d1:		dey				; 88 
B20_08d2:	.db $df
B20_08d3:		dey				; 88 
B20_08d4:		lda #$00		; a9 00
B20_08d6:		sta $07e6, x	; 9d e6 07
B20_08d9:		jsr $88e4		; 20 e4 88
B20_08dc:		jmp $85de		; 4c de 85


B20_08df:		dec $07ce, x	; de ce 07
B20_08e2:		bne B20_0877 ; d0 93

B20_08e4:		jsr $8de7		; 20 e7 8d
B20_08e7:		jsr $83a0		; 20 a0 83
B20_08ea:		bne B20_0910 ; d0 24

B20_08ec:		lda $07e6, x	; bd e6 07
B20_08ef:		cmp #$08		; c9 08
B20_08f1:		bcc B20_08f8 ; 90 05

B20_08f3:		lda #$00		; a9 00
B20_08f5:		sta $07e6, x	; 9d e6 07
B20_08f8:		ldy $07e6, x	; bc e6 07
B20_08fb:		lda $8925, y	; b9 25 89
B20_08fe:		sta $01			; 85 01
B20_0900:		lda $891d, y	; b9 1d 89
B20_0903:		sta $00			; 85 00
B20_0905:		inc $07e6, x	; fe e6 07
B20_0908:		jsr $892d		; 20 2d 89
B20_090b:		bne B20_0910 ; d0 03

B20_090d:		jsr $8dde		; 20 de 8d
B20_0910:		lda #$80		; a9 80
B20_0912:		ldy $32			; a4 32
B20_0914:		cpy #$0d		; c0 0d
B20_0916:		beq B20_091a ; f0 02

B20_0918:		lda #$ff		; a9 ff
B20_091a:		jmp $8623		; 4c 23 86


B20_091d:		sed				; f8 
B20_091e:		sed				; f8 
B20_091f:		php				; 08 
B20_0920:		sed				; f8 
B20_0921:		sed				; f8 
B20_0922:		php				; 08 
B20_0923:		sed				; f8 
B20_0924:		php				; 08 
B20_0925:		rti				; 40 


B20_0926:		rts				; 60 


B20_0927:		rti				; 40 


B20_0928:		rts				; 60 


B20_0929:		rts				; 60 


B20_092a:		rti				; 40 


B20_092b:		rti				; 40 


B20_092c:		rts				; 60 


B20_092d:		lda $0438		; ad 38 04
B20_0930:		cmp #$c0		; c9 c0
B20_0932:		bcs B20_093b ; b0 07

B20_0934:		cmp #$40		; c9 40
B20_0936:		bcc B20_0942 ; 90 0a

B20_0938:		lda #$00		; a9 00
B20_093a:		rts				; 60 


B20_093b:		lda $00			; a5 00
B20_093d:		bpl B20_0938 ; 10 f9

B20_093f:		lda #$01		; a9 01
B20_0941:		rts				; 60 


B20_0942:		lda $00			; a5 00
B20_0944:		bmi B20_0938 ; 30 f2

B20_0946:		bpl B20_093f ; 10 f7

B20_0948:		jmp $5289		; 4c 89 52


B20_094b:	.db $89
B20_094c:		jsr $8957		; 20 57 89
B20_094f:		jmp $85de		; 4c de 85


B20_0952:		dec $07ce, x	; de ce 07
B20_0955:		bne B20_096d ; d0 16

B20_0957:		lda #$80		; a9 80
B20_0959:		sta $07ce, x	; 9d ce 07
B20_095c:		jsr $8de7		; 20 e7 8d
B20_095f:		jsr $8d7b		; 20 7b 8d
B20_0962:		bne B20_096d ; d0 09

B20_0964:		ldy $04a8		; ac a8 04
B20_0967:		lda $896e, y	; b9 6e 89
B20_096a:		jmp $89a9		; 4c a9 89


B20_096d:		rts				; 60 


B20_096e:		sed				; f8 
B20_096f:		php				; 08 
B20_0970:	.db $74
B20_0971:	.db $89
B20_0972:	.db $7a
B20_0973:	.db $89
B20_0974:		jsr $897f		; 20 7f 89
B20_0977:		jmp $85de		; 4c de 85


B20_097a:		jsr $8e28		; 20 28 8e
B20_097d:		bne B20_09d9 ; d0 5a

B20_097f:		lda #$c0		; a9 c0
B20_0981:		sta $07ce, x	; 9d ce 07
B20_0984:		jsr $8de7		; 20 e7 8d
B20_0987:		jsr $848d		; 20 8d 84
B20_098a:		bne B20_0992 ; d0 06

B20_098c:		jsr $8e89		; 20 89 8e
B20_098f:		beq B20_09a3 ; f0 12

B20_0991:		rts				; 60 


B20_0992:		lda $32			; a5 32
B20_0994:		cmp #$01		; c9 01
B20_0996:		bne B20_099e ; d0 06

B20_0998:		jsr $8ec3		; 20 c3 8e
B20_099b:		beq B20_09a3 ; f0 06

B20_099d:		rts				; 60 


B20_099e:		jsr $8d7b		; 20 7b 8d
B20_09a1:		bne B20_09d9 ; d0 36

B20_09a3:		jsr $89b7		; 20 b7 89
B20_09a6:		lda $8882, y	; b9 82 88
B20_09a9:		sta $00			; 85 00
B20_09ab:		lda $041c		; ad 1c 04
B20_09ae:		sta $01			; 85 01
B20_09b0:		jmp $8dde		; 4c de 8d


B20_09b3:		lda #$01		; a9 01
B20_09b5:		bne B20_09b9 ; d0 02

B20_09b7:		lda #$00		; a9 00
B20_09b9:		sta $0f			; 85 0f
B20_09bb:		ldy #$01		; a0 01
B20_09bd:		lda $0438		; ad 38 04
B20_09c0:		cmp #$50		; c9 50
B20_09c2:		bcc B20_09d9 ; 90 15

B20_09c4:		dey				; 88 
B20_09c5:		cmp #$b0		; c9 b0
B20_09c7:		bcs B20_09d9 ; b0 10

B20_09c9:		lda $0f			; a5 0f
B20_09cb:		bne B20_09da ; d0 0d

B20_09cd:		lda $041c		; ad 1c 04
B20_09d0:		lsr a			; 4a
B20_09d1:		lsr a			; 4a
B20_09d2:		lsr a			; 4a
B20_09d3:		lsr a			; 4a
B20_09d4:		adc $1f			; 65 1f
B20_09d6:		and #$01		; 29 01
B20_09d8:		tay				; a8 
B20_09d9:		rts				; 60 


B20_09da:		ldy #$01		; a0 01
B20_09dc:		lda $1a			; a5 1a
B20_09de:		and #$1f		; 29 1f
B20_09e0:		bne B20_09d9 ; d0 f7

B20_09e2:		ldy #$00		; a0 00
B20_09e4:		rts				; 60 


B20_09e5:		lda #$00		; a9 00
B20_09e7:		sta $0f			; 85 0f
B20_09e9:		ldy #$01		; a0 01
B20_09eb:		lda $0438		; ad 38 04
B20_09ee:		cmp #$60		; c9 60
B20_09f0:		bcc B20_09d9 ; 90 e7

B20_09f2:		bcs B20_09c4 ; b0 d0

B20_09f4:		ldy #$01		; a0 01
B20_09f6:		lda $0438		; ad 38 04
B20_09f9:		cmp #$40		; c9 40
B20_09fb:		bcc B20_09d9 ; 90 dc

B20_09fd:		dey				; 88 
B20_09fe:		cmp #$c0		; c9 c0
B20_0a00:		bcs B20_09d9 ; b0 d7

B20_0a02:		lda $04a8		; ad a8 04
B20_0a05:		eor #$01		; 49 01
B20_0a07:		tay				; a8 
B20_0a08:		rts				; 60 


B20_0a09:	.db $17
B20_0a0a:		txa				; 8a 
B20_0a0b:		ora $de8a		; 0d 8a de
B20_0a0e:		dec $f007		; ce 07 f0
B20_0a11:		;removed
	.db $10 $60

B20_0a13:	.db $17
B20_0a14:		txa				; 8a 
B20_0a15:		ora $208a, x	; 1d 8a 20
B20_0a18:	.db $22
B20_0a19:		txa				; 8a 
B20_0a1a:		jmp $85de		; 4c de 85


B20_0a1d:		jsr $8e28		; 20 28 8e
B20_0a20:		;removed
	.db $d0 $f0

B20_0a22:		lda #$90		; a9 90
B20_0a24:		sta $07ce, x	; 9d ce 07
B20_0a27:		jsr $8de7		; 20 e7 8d
B20_0a2a:		jsr $8d7b		; 20 7b 8d
B20_0a2d:		bne B20_0aa1 ; d0 72

B20_0a2f:		jsr $8a44		; 20 44 8a
B20_0a32:		lda $041c		; ad 1c 04
B20_0a35:		cmp #$20		; c9 20
B20_0a37:		bcc B20_0aa1 ; 90 68

B20_0a39:		ldy $68			; a4 68
B20_0a3b:		bpl B20_0a3f ; 10 02

B20_0a3d:		sbc #$18		; e9 18
B20_0a3f:		sta $01			; 85 01
B20_0a41:		jmp $89b0		; 4c b0 89


B20_0a44:		ldy #$00		; a0 00
B20_0a46:		lda $0438		; ad 38 04
B20_0a49:		cmp #$80		; c9 80
B20_0a4b:		bcs B20_0a4e ; b0 01

B20_0a4d:		iny				; c8 
B20_0a4e:		lda $8882, y	; b9 82 88
B20_0a51:		sta $00			; 85 00
B20_0a53:		rts				; 60 


B20_0a54:		dec $07ce, x	; de ce 07
B20_0a57:		bne B20_0a5e ; d0 05

B20_0a59:		lda #$00		; a9 00
B20_0a5b:		sta $07c8, x	; 9d c8 07
B20_0a5e:		rts				; 60 


B20_0a5f:	.db $63
B20_0a60:		txa				; 8a 
B20_0a61:	.db $54
B20_0a62:		txa				; 8a 
B20_0a63:		lda $07e0, x	; bd e0 07
B20_0a66:		bne B20_0aa1 ; d0 39

B20_0a68:		jsr $8e1a		; 20 1a 8e
B20_0a6b:		cmp #$20		; c9 20
B20_0a6d:		bcs B20_0aa1 ; b0 32

B20_0a6f:		lda #$02		; a9 02
B20_0a71:		sta $07e6, x	; 9d e6 07
B20_0a74:		jsr $85de		; 20 de 85
B20_0a77:		jsr $8de7		; 20 e7 8d
B20_0a7a:		jsr $8e54		; 20 54 8e
B20_0a7d:		bne B20_0a95 ; d0 16

B20_0a7f:		jsr $8dde		; 20 de 8d
B20_0a82:		stx $09			; 86 09
B20_0a84:		ldx $6c			; a6 6c
B20_0a86:		clc				; 18 
B20_0a87:		ldy $07e6, x	; bc e6 07
B20_0a8a:		lda $8aa2, y	; b9 a2 8a
B20_0a8d:		adc $07da, x	; 7d da 07
B20_0a90:		ldx $09			; a6 09
B20_0a92:		sta $0438, x	; 9d 38 04
B20_0a95:		ldx $6c			; a6 6c
B20_0a97:		dec $07e6, x	; de e6 07
B20_0a9a:		bne B20_0a77 ; d0 db

B20_0a9c:		lda #$28		; a9 28
B20_0a9e:		sta $07ce, x	; 9d ce 07
B20_0aa1:		rts				; 60 


B20_0aa2:		.db $00				; 00
B20_0aa3:		sec				; 38 
B20_0aa4:		iny				; c8 
B20_0aa5:		lda $8a, x		; b5 8a
B20_0aa7:	.db $c2
B20_0aa8:		txa				; 8a 
B20_0aa9:	.db $d7
B20_0aaa:		txa				; 8a 
B20_0aab:	.db $57
B20_0aac:		sty $8ab5		; 8c b5 8a
B20_0aaf:		lda $d78a, x	; bd 8a d7
B20_0ab2:		txa				; 8a 
B20_0ab3:	.db $57
B20_0ab4:		sty $e0bd		; 8c bd e0
B20_0ab7:	.db $07
B20_0ab8:		bne B20_0ad7 ; d0 1d

B20_0aba:		jmp $85de		; 4c de 85


B20_0abd:		dec $07ce, x	; de ce 07
B20_0ac0:		bne B20_0ad7 ; d0 15

B20_0ac2:		jsr $8de7		; 20 e7 8d
B20_0ac5:		lda $07e0, x	; bd e0 07
B20_0ac8:		bne B20_0ad2 ; d0 08

B20_0aca:		jsr $8e54		; 20 54 8e
B20_0acd:		bne B20_0ad2 ; d0 03

B20_0acf:		jsr $8bbe		; 20 be 8b
B20_0ad2:		lda #$80		; a9 80
B20_0ad4:		sta $07ce, x	; 9d ce 07
B20_0ad7:		rts				; 60 


B20_0ad8:		dec $ee8a, x	; de 8a ee
B20_0adb:		txa				; 8a 
B20_0adc:		sbc #$8a		; e9 8a
B20_0ade:		jsr $8de7		; 20 e7 8d
B20_0ae1:		jsr $8d8b		; 20 8b 8d
B20_0ae4:		bne B20_0ad7 ; d0 f1

B20_0ae6:		jmp $8bbe		; 4c be 8b


B20_0ae9:		lda #$00		; a9 00
B20_0aeb:		sta $07c8, x	; 9d c8 07
B20_0aee:		rts				; 60 


B20_0aef:		sbc $8a, x		; f5 8a
B20_0af1:		ora $8b, x		; 15 8b
B20_0af3:	.db $57
B20_0af4:		sty $e0bd		; 8c bd e0
B20_0af7:	.db $07
B20_0af8:		bne B20_0b15 ; d0 1b

B20_0afa:		jsr $8de7		; 20 e7 8d
B20_0afd:		lda $07e6, x	; bd e6 07
B20_0b00:		sta $04			; 85 04
B20_0b02:		jsr $feb9		; 20 b9 fe
B20_0b05:		bne B20_0b15 ; d0 0e

B20_0b07:		jsr $8dde		; 20 de 8d
B20_0b0a:		jsr $8bd5		; 20 d5 8b
B20_0b0d:		lda $04			; a5 04
B20_0b0f:		sta $0633, x	; 9d 33 06
B20_0b12:		jmp $85de		; 4c de 85


B20_0b15:		rts				; 60 


B20_0b16:	.db $1c
B20_0b17:	.db $8b
B20_0b18:		sed				; f8 
B20_0b19:	.db $8b
B20_0b1a:	.db $57
B20_0b1b:		sty $e0bd		; 8c bd e0
B20_0b1e:	.db $07
B20_0b1f:		bne B20_0b60 ; d0 3f

B20_0b21:		jsr $8de7		; 20 e7 8d
B20_0b24:		jsr $83ae		; 20 ae 83
B20_0b27:		bne B20_0b60 ; d0 37

B20_0b29:		jmp $8bbe		; 4c be 8b


B20_0b2c:	.db $32
B20_0b2d:	.db $8b
B20_0b2e:		sed				; f8 
B20_0b2f:	.db $8b
B20_0b30:	.db $57
B20_0b31:		sty $e0bd		; 8c bd e0
B20_0b34:	.db $07
B20_0b35:		bne B20_0b60 ; d0 29

B20_0b37:		jsr $8e9c		; 20 9c 8e
B20_0b3a:		bne B20_0b4a ; d0 0e

B20_0b3c:		jsr $8de7		; 20 e7 8d
B20_0b3f:		jsr $8e50		; 20 50 8e
B20_0b42:		bne B20_0b4a ; d0 06

B20_0b44:		jsr func_14_0dff		; 20 ff 8d
B20_0b47:		jmp $8bc1		; 4c c1 8b


B20_0b4a:		jmp $8bcd		; 4c cd 8b


B20_0b4d:	.db $53
B20_0b4e:	.db $8b
B20_0b4f:		sed				; f8 
B20_0b50:	.db $8b
B20_0b51:	.db $57
B20_0b52:		sty $e0bd		; 8c bd e0
B20_0b55:	.db $07
B20_0b56:		bne B20_0b60 ; d0 08

B20_0b58:		jsr $8de7		; 20 e7 8d
B20_0b5b:		jsr $83ae		; 20 ae 83
B20_0b5e:		beq B20_0bbe ; f0 5e

B20_0b60:		rts				; 60 


B20_0b61:	.db $67
B20_0b62:	.db $8b
B20_0b63:		sed				; f8 
B20_0b64:	.db $8b
B20_0b65:	.db $57
B20_0b66:		sty $e0bd		; 8c bd e0
B20_0b69:	.db $07
B20_0b6a:		bne B20_0baa ; d0 3e

B20_0b6c:		jsr $8de7		; 20 e7 8d
B20_0b6f:		jsr $8e54		; 20 54 8e
B20_0b72:		bne B20_0baa ; d0 36

B20_0b74:		lda $07f6		; ad f6 07
B20_0b77:		beq B20_0bbe ; f0 45

B20_0b79:		lda $03			; a5 03
B20_0b7b:		cmp #$63		; c9 63
B20_0b7d:		bne B20_0bbe ; d0 3f

B20_0b7f:		lda $32			; a5 32
B20_0b81:		cmp #$0c		; c9 0c
B20_0b83:		beq B20_0bbe ; f0 39

B20_0b85:		cmp #$01		; c9 01
B20_0b87:		bne B20_0b8f ; d0 06

B20_0b89:		lda $34			; a5 34
B20_0b8b:		cmp #$01		; c9 01
B20_0b8d:		beq B20_0bbe ; f0 2f

B20_0b8f:		lda #$71		; a9 71
B20_0b91:		sta $02			; 85 02
B20_0b93:		lda #$67		; a9 67
B20_0b95:		sta $03			; 85 03
B20_0b97:		jsr func_14_0dff		; 20 ff 8d
B20_0b9a:		lda #$10		; a9 10
B20_0b9c:		sta $067b, x	; 9d 7b 06
B20_0b9f:		lda #$33		; a9 33
B20_0ba1:		sta $0657, x	; 9d 57 06
B20_0ba4:		jsr $8bd5		; 20 d5 8b
B20_0ba7:		jmp $85de		; 4c de 85


B20_0baa:		rts				; 60 


B20_0bab:		lda ($8b), y	; b1 8b
B20_0bad:		sed				; f8 
B20_0bae:	.db $8b
B20_0baf:	.db $57
B20_0bb0:		sty $e0bd		; 8c bd e0
B20_0bb3:	.db $07
B20_0bb4:		bne B20_0bf8 ; d0 42

B20_0bb6:		jsr $8de7		; 20 e7 8d
B20_0bb9:		jsr $8e54		; 20 54 8e
B20_0bbc:		bne B20_0bcd ; d0 0f

B20_0bbe:		jsr func_14_0dff		; 20 ff 8d
B20_0bc1:		jsr $9332		; 20 32 93
B20_0bc4:		jsr $e7ec		; 20 ec e7
B20_0bc7:		jsr $8bd5		; 20 d5 8b
B20_0bca:		jmp $85de		; 4c de 85


B20_0bcd:		ldx $6c			; a6 6c
B20_0bcf:		lda #$02		; a9 02
B20_0bd1:		sta $07c8, x	; 9d c8 07
B20_0bd4:		rts				; 60 


B20_0bd5:		lda $0470, x	; bd 70 04
B20_0bd8:		ora #$04		; 09 04
B20_0bda:		sta $0470, x	; 9d 70 04
B20_0bdd:		lda $6c			; a5 6c
B20_0bdf:		sta $0645, x	; 9d 45 06
B20_0be2:		txa				; 8a 
B20_0be3:		pha				; 48 
B20_0be4:		ldx $6c			; a6 6c
B20_0be6:		asl a			; 0a
B20_0be7:		asl a			; 0a
B20_0be8:		asl a			; 0a
B20_0be9:		asl a			; 0a
B20_0bea:		sta $06			; 85 06
B20_0bec:		lda $07c8, x	; bd c8 07
B20_0bef:		and #$0f		; 29 0f
B20_0bf1:		ora $06			; 05 06
B20_0bf3:		sta $07c8, x	; 9d c8 07
B20_0bf6:		pla				; 68 
B20_0bf7:		tax				; aa 
B20_0bf8:		rts				; 60 


B20_0bf9:	.db $ff
B20_0bfa:	.db $8b
B20_0bfb:		sed				; f8 
B20_0bfc:	.db $8b
B20_0bfd:	.db $57
B20_0bfe:		sty $e720		; 8c 20 e7
B20_0c01:		sta $e0bd		; 8d bd e0
B20_0c04:	.db $07
B20_0c05:		bne B20_0bf8 ; d0 f1

B20_0c07:		jsr $8e54		; 20 54 8e
B20_0c0a:		bne B20_0bf8 ; d0 ec

B20_0c0c:		jmp $8bbe		; 4c be 8b


B20_0c0f:		ora $8c, x		; 15 8c
B20_0c11:		and $8c, x		; 35 8c
B20_0c13:		jmp $208c		; 4c 8c 20


B20_0c16:	.db $e7
B20_0c17:		sta $e0bd		; 8d bd e0
B20_0c1a:	.db $07
B20_0c1b:		bne B20_0c64 ; d0 47

B20_0c1d:		jsr $8e54		; 20 54 8e
B20_0c20:		bne B20_0c64 ; d0 42

B20_0c22:		jsr func_14_0dff		; 20 ff 8d
B20_0c25:		jsr $9332		; 20 32 93
B20_0c28:		jsr $e7ec		; 20 ec e7
B20_0c2b:		txa				; 8a 
B20_0c2c:		ldx $6c			; a6 6c
B20_0c2e:		sta $07e6, x	; 9d e6 07
B20_0c31:		inc $07c8, x	; fe c8 07
B20_0c34:		rts				; 60 


B20_0c35:		lda $07e6, x	; bd e6 07
B20_0c38:		tax				; aa 
B20_0c39:		lda $054e, x	; bd 4e 05
B20_0c3c:		bne B20_0c49 ; d0 0b

B20_0c3e:		ldx $6c			; a6 6c
B20_0c40:		inc $07c8, x	; fe c8 07
B20_0c43:		lda #$80		; a9 80
B20_0c45:		sta $07ce, x	; 9d ce 07
B20_0c48:		rts				; 60 


B20_0c49:		ldx $6c			; a6 6c
B20_0c4b:		rts				; 60 


B20_0c4c:		dec $07ce, x	; de ce 07
B20_0c4f:		bne B20_0c4b ; d0 fa

B20_0c51:		lda #$00		; a9 00
B20_0c53:		sta $07c8, x	; 9d c8 07
B20_0c56:		rts				; 60 


B20_0c57:		lda $07e0, x	; bd e0 07
B20_0c5a:		beq B20_0bf8 ; f0 9c

B20_0c5c:		lda $07c8, x	; bd c8 07
B20_0c5f:		and #$f0		; 29 f0
B20_0c61:		sta $07c8, x	; 9d c8 07
B20_0c64:		rts				; 60 


B20_0c65:	.db $6b
B20_0c66:		sty $8bf8		; 8c f8 8b
B20_0c69:	.db $57
B20_0c6a:		sty $e720		; 8c 20 e7
B20_0c6d:		sta $8320		; 8d 20 83
B20_0c70:		sta $85d0		; 8d d0 85
B20_0c73:		jmp $8bbe		; 4c be 8b


B20_0c76:	.db $7c
B20_0c77:		sty $8bf8		; 8c f8 8b
B20_0c7a:	.db $57
B20_0c7b:		sty $e720		; 8c 20 e7
B20_0c7e:		sta $cebd		; 8d bd ce
B20_0c81:	.db $07
B20_0c82:		sta $04			; 85 04
B20_0c84:		lda $07e0, x	; bd e0 07
B20_0c87:		bne B20_0c64 ; d0 db

B20_0c89:		jsr $8e54		; 20 54 8e
B20_0c8c:		bne B20_0c64 ; d0 d6

B20_0c8e:		jsr $8dde		; 20 de 8d
B20_0c91:		jsr $8bd5		; 20 d5 8b
B20_0c94:		lda $04			; a5 04
B20_0c96:		sta $0633, x	; 9d 33 06
B20_0c99:		jmp $85de		; 4c de 85


B20_0c9c:		ldx #$8c		; a2 8c
B20_0c9e:		sed				; f8 
B20_0c9f:	.db $8b
B20_0ca0:	.db $57
B20_0ca1:		sty $e720		; 8c 20 e7
B20_0ca4:		sta $cebd		; 8d bd ce
B20_0ca7:	.db $07
B20_0ca8:		sta $04			; 85 04
B20_0caa:		jsr $feb9		; 20 b9 fe
B20_0cad:		bne B20_0cd2 ; d0 23

B20_0caf:		jmp $8c8e		; 4c 8e 8c


B20_0cb2:		clv				; b8 
B20_0cb3:		sty $8bf8		; 8c f8 8b
B20_0cb6:	.db $57
B20_0cb7:		sty $e720		; 8c 20 e7
B20_0cba:		sta $e0bd		; 8d bd e0
B20_0cbd:	.db $07
B20_0cbe:		bne B20_0cd2 ; d0 12

B20_0cc0:		jsr $83a0		; 20 a0 83
B20_0cc3:		bne B20_0ccb ; d0 06

B20_0cc5:		jsr $8dde		; 20 de 8d
B20_0cc8:		jmp $85de		; 4c de 85


B20_0ccb:		ldx $6c			; a6 6c
B20_0ccd:		lda #$02		; a9 02
B20_0ccf:		sta $07c8, x	; 9d c8 07
B20_0cd2:		rts				; 60 


B20_0cd3:		cmp $618c, y	; d9 8c 61
B20_0cd6:		sta $8c57		; 8d 57 8c
B20_0cd9:		lda $07e0, x	; bd e0 07
B20_0cdc:		bne B20_0cd2 ; d0 f4

B20_0cde:		lda $07e6, x	; bd e6 07
B20_0ce1:		sta $17			; 85 17
B20_0ce3:		jsr $8de7		; 20 e7 8d
B20_0ce6:		ldx #$01		; a2 01
B20_0ce8:		jsr func_1f_1ed7		; 20 d7 fe
B20_0ceb:		sta $0400, x	; 9d 00 04
B20_0cee:		lda $01			; a5 01
B20_0cf0:		sta $041c, x	; 9d 1c 04
B20_0cf3:		sec				; 38 
B20_0cf4:		lda $00			; a5 00
B20_0cf6:		sta $0438, x	; 9d 38 04
B20_0cf9:		lda $03			; a5 03
B20_0cfb:		sta $054e, x	; 9d 4e 05
B20_0cfe:		lda #$2e		; a9 2e
B20_0d00:		sta $05ef, x	; 9d ef 05
B20_0d03:		jsr func_1f_1ec8		; 20 c8 fe
B20_0d06:		lda #$60		; a9 60
B20_0d08:		sta $0470, x	; 9d 70 04
B20_0d0b:		lda $17			; a5 17
B20_0d0d:		sta $04a8, x	; 9d a8 04
B20_0d10:		jsr $9332		; 20 32 93
B20_0d13:		jsr $e7ec		; 20 ec e7
B20_0d16:		ldx #$08		; a2 08
B20_0d18:		jsr func_1f_1ed7		; 20 d7 fe
B20_0d1b:		sta $0400, x	; 9d 00 04
B20_0d1e:		lda $01			; a5 01
B20_0d20:		sta $041c, x	; 9d 1c 04
B20_0d23:		clc				; 18 
B20_0d24:		lda $00			; a5 00
B20_0d26:		ldy $17			; a4 17
B20_0d28:		adc $8d62, y	; 79 62 8d
B20_0d2b:		sta $0438, x	; 9d 38 04
B20_0d2e:		lda #$00		; a9 00
B20_0d30:		adc $8d64, y	; 79 64 8d
B20_0d33:		ora #$60		; 09 60
B20_0d35:		and #$61		; 29 61
B20_0d37:		sta $0470, x	; 9d 70 04
B20_0d3a:		lda $03			; a5 03
B20_0d3c:		sta $054e, x	; 9d 4e 05
B20_0d3f:		lda #$2c		; a9 2c
B20_0d41:		sta $05ef, x	; 9d ef 05
B20_0d44:		lda $17			; a5 17
B20_0d46:		sta $04a8, x	; 9d a8 04
B20_0d49:		jsr $9332		; 20 32 93
B20_0d4c:		jsr $e7ec		; 20 ec e7
B20_0d4f:		lda $6c			; a5 6c
B20_0d51:		sta $0645, x	; 9d 45 06
B20_0d54:		txa				; 8a 
B20_0d55:		tay				; a8 
B20_0d56:		ldx $6c			; a6 6c
B20_0d58:		lda $07e6, x	; bd e6 07
B20_0d5b:		sta $0633, y	; 99 33 06
B20_0d5e:		jmp $85de		; 4c de 85


B20_0d61:		rts				; 60 


B20_0d62:		php				; 08 
B20_0d63:		sed				; f8 
B20_0d64:		.db $00				; 00
B20_0d65:	.db $ff
B20_0d66:		lda $56			; a5 56
B20_0d68:		bne B20_0d72 ; d0 08

B20_0d6a:		lda $07e0, x	; bd e0 07
B20_0d6d:		bne B20_0d72 ; d0 03

B20_0d6f:		jmp $feb9		; 4c b9 fe


B20_0d72:		rts				; 60 


B20_0d73:		lda $07e0, x	; bd e0 07
B20_0d76:		bne B20_0d72 ; d0 fa

B20_0d78:		jmp $8383		; 4c 83 83


B20_0d7b:		lda $07e0, x	; bd e0 07
B20_0d7e:		bne B20_0d72 ; d0 f2

B20_0d80:		jmp $83a0		; 4c a0 83


B20_0d83:		lda $07e0, x	; bd e0 07
B20_0d86:		bne B20_0d72 ; d0 ea

B20_0d88:		jmp $8392		; 4c 92 83


B20_0d8b:		lda $07e0, x	; bd e0 07
B20_0d8e:		bne B20_0d72 ; d0 e2

B20_0d90:		jmp $feb9		; 4c b9 fe


B20_0d93:		sta $c48d, y	; 99 8d c4
B20_0d96:		sta $8c57		; 8d 57 8c
B20_0d99:		lda $07e0, x	; bd e0 07
B20_0d9c:		bne B20_0dc4 ; d0 26

B20_0d9e:		jsr $8de7		; 20 e7 8d
B20_0da1:		jsr $feb9		; 20 b9 fe
B20_0da4:		lda #$08		; a9 08
B20_0da6:		sta $0657, x	; 9d 57 06
B20_0da9:		jsr func_14_0dff		; 20 ff 8d
B20_0dac:		lda #$08		; a9 08
B20_0dae:		sta $0400, x	; 9d 00 04
B20_0db1:		lda #$00		; a9 00
B20_0db3:		sta $048c, x	; 9d 8c 04
B20_0db6:		lda $0470, x	; bd 70 04
B20_0db9:		ora #$a8		; 09 a8
B20_0dbb:		sta $0470, x	; 9d 70 04
B20_0dbe:		jsr $8bd5		; 20 d5 8b
B20_0dc1:		jmp $85de		; 4c de 85


B20_0dc4:		rts				; 60 


B20_0dc5:	.db $cb
B20_0dc6:		sta $8dc4		; 8d c4 8d
B20_0dc9:	.db $57
B20_0dca:		sty $e0bd		; 8c bd e0
B20_0dcd:	.db $07
B20_0dce:		bne B20_0dc4 ; d0 f4

B20_0dd0:		jsr $8de7		; 20 e7 8d
B20_0dd3:		jsr $feb9		; 20 b9 fe
B20_0dd6:		lda #$0e		; a9 0e
B20_0dd8:		sta $0657, x	; 9d 57 06
B20_0ddb:		jmp $8da9		; 4c a9 8d


B20_0dde:		jsr func_14_0dff		; 20 ff 8d
B20_0de1:		jsr $9332		; 20 32 93
B20_0de4:		jmp $e7ec		; 4c ec e7


B20_0de7:		lda $07da, x	; bd da 07
B20_0dea:		sta $00			; 85 00
B20_0dec:		lda $07d4, x	; bd d4 07
B20_0def:		sta $01			; 85 01
B20_0df1:		ldy $07c2, x	; bc c2 07
B20_0df4:		lda $9282, y	; b9 82 92
B20_0df7:		sta $02			; 85 02
B20_0df9:		lda $92da, y	; b9 da 92
B20_0dfc:		sta $03			; 85 03
B20_0dfe:		rts				; 60 


func_14_0dff:
B20_0dff:		jsr func_1f_1ed7		; 20 d7 fe
B20_0e02:		sta $0400, x	; 9d 00 04
B20_0e05:		lda $00			; a5 00
B20_0e07:		sta $0438, x	; 9d 38 04
B20_0e0a:		lda $01			; a5 01
B20_0e0c:		sta $041c, x	; 9d 1c 04
B20_0e0f:		lda $02			; a5 02
B20_0e11:		sta $05ef, x	; 9d ef 05
B20_0e14:		lda $03			; a5 03
B20_0e16:		sta $054e, x	; 9d 4e 05
B20_0e19:		rts				; 60 


B20_0e1a:		sec				; 38 
B20_0e1b:		lda $07da, x	; bd da 07
B20_0e1e:		sbc $0438		; ed38 04
B20_0e21:		bcs B20_0e27 ; b0 04

B20_0e23:		eor #$ff		; 49 ff
B20_0e25:		adc #$01		; 69 01
B20_0e27:		rts				; 60 


B20_0e28:		ldy $07f6		; ac f6 07
B20_0e2b:		beq B20_0e46 ; f0 19

B20_0e2d:		lda $32			; a5 32
B20_0e2f:		cmp #$04		; c9 04
B20_0e31:		beq B20_0e3f ; f0 0c

B20_0e33:		cmp #$0d		; c9 0d
B20_0e35:		bne B20_0e4c ; d0 15

B20_0e37:		lda $33			; a5 33
B20_0e39:		cmp #$01		; c9 01
B20_0e3b:		bne B20_0e4c ; d0 0f

B20_0e3d:		beq B20_0e46 ; f0 07

B20_0e3f:		lda $07c2, x	; bd c2 07
B20_0e42:		cmp #$0c		; c9 0c
B20_0e44:		bne B20_0e4c ; d0 06

B20_0e46:		lda $1a			; a5 1a
B20_0e48:		and #$01		; 29 01
B20_0e4a:		bne B20_0e4f ; d0 03

B20_0e4c:		dec $07ce, x	; de ce 07
B20_0e4f:		rts				; 60 


B20_0e50:		lda #$02		; a9 02
B20_0e52:		bne B20_0e56 ; d0 02

B20_0e54:		lda #$03		; a9 03
B20_0e56:		sta $0d			; 85 0d
B20_0e58:		lda #$00		; a9 00
B20_0e5a:		sta $0e			; 85 0e
B20_0e5c:		lda #$01		; a9 01
B20_0e5e:		sta $0c			; 85 0c
B20_0e60:		lda #$09		; a9 09
B20_0e62:		sta $0b			; 85 0b
B20_0e64:		ldx $0c			; a6 0c
B20_0e66:		lda $054e, x	; bd 4e 05
B20_0e69:		cmp $03			; c5 03
B20_0e6b:		bne B20_0e6f ; d0 02

B20_0e6d:		inc $0e			; e6 0e
B20_0e6f:		inx				; e8 
B20_0e70:		cpx $0b			; e4 0b
B20_0e72:		bcc B20_0e66 ; 90 f2

B20_0e74:		lda $0e			; a5 0e
B20_0e76:		cmp $0d			; c5 0d
B20_0e78:		bcs B20_0e86 ; b0 0c

B20_0e7a:		lda $0b			; a5 0b
B20_0e7c:		cmp #$13		; c9 13
B20_0e7e:		beq B20_0e83 ; f0 03

B20_0e80:		jmp $feb9		; 4c b9 fe


B20_0e83:		jmp $834d		; 4c 4d 83


B20_0e86:		lda #$01		; a9 01
B20_0e88:		rts				; 60 


B20_0e89:		lda #$0d		; a9 0d
B20_0e8b:		sta $0c			; 85 0c
B20_0e8d:		lda #$13		; a9 13
B20_0e8f:		sta $0b			; 85 0b
B20_0e91:		lda #$02		; a9 02
B20_0e93:		sta $0d			; 85 0d
B20_0e95:		lda #$00		; a9 00
B20_0e97:		sta $0e			; 85 0e
B20_0e99:		jmp $8e64		; 4c 64 8e


B20_0e9c:		ldy $07c2, x	; bc c2 07
B20_0e9f:		lda $92da, y	; b9 da 92
B20_0ea2:		sta $0a			; 85 0a
B20_0ea4:		ldx #$01		; a2 01
B20_0ea6:		lda $054e, x	; bd 4e 05
B20_0ea9:		cmp $0a			; c5 0a
B20_0eab:		bne B20_0eb4 ; d0 07

B20_0ead:		lda $6c			; a5 6c
B20_0eaf:		cmp $0645, x	; dd 45 06
B20_0eb2:		beq B20_0ebe ; f0 0a

B20_0eb4:		inx				; e8 
B20_0eb5:		cpx #$0d		; e0 0d
B20_0eb7:		bcc B20_0ea6 ; 90 ed

B20_0eb9:		ldx $6c			; a6 6c
B20_0ebb:		lda #$00		; a9 00
B20_0ebd:		rts				; 60 


B20_0ebe:		ldx $6c			; a6 6c
B20_0ec0:		lda #$01		; a9 01
B20_0ec2:		rts				; 60 


B20_0ec3:		ldx #$0b		; a2 0b
B20_0ec5:		lda $054e, x	; bd 4e 05
B20_0ec8:		beq B20_0ec2 ; f0 f8

B20_0eca:		inx				; e8 
B20_0ecb:		cpx #$0d		; e0 0d
B20_0ecd:		bcc B20_0ec5 ; 90 f6

B20_0ecf:		bcs B20_0ebe ; b0 ed

B20_0ed1:	.db $d7
B20_0ed2:		stx $8eeb		; 8e eb 8e
B20_0ed5:		ora $8f, x		; 15 8f
B20_0ed7:		jsr $8f45		; 20 45 8f
B20_0eda:		bcc B20_0edd ; 90 01

B20_0edc:		rts				; 60 


B20_0edd:		lda $07e0, x	; bd e0 07
B20_0ee0:		bne B20_0f15 ; d0 33

B20_0ee2:		jsr $9274		; 20 74 92
B20_0ee5:		jsr $83bc		; 20 bc 83
B20_0ee8:		jmp $8f0e		; 4c 0e 8f


B20_0eeb:		jsr $8f45		; 20 45 8f
B20_0eee:		bcc B20_0ef1 ; 90 01

B20_0ef0:		rts				; 60 


B20_0ef1:		jsr $8de7		; 20 e7 8d
B20_0ef4:		lda $07e0, x	; bd e0 07
B20_0ef7:		bne B20_0f15 ; d0 1c

B20_0ef9:		lda #$80		; a9 80
B20_0efb:		sta $07f3		; 8d f3 07
B20_0efe:		ldx #$01		; a2 01
B20_0f00:		jsr func_14_0dff		; 20 ff 8d
B20_0f03:		jsr $9332		; 20 32 93
B20_0f06:		sta $3d			; 85 3d
B20_0f08:		jsr $8f16		; 20 16 8f
B20_0f0b:		jsr $8f73		; 20 73 8f
B20_0f0e:		ldx $6c			; a6 6c
B20_0f10:		inc $07c8, x	; fe c8 07
B20_0f13:		stx $c3			; 86 c3
B20_0f15:		rts				; 60 


B20_0f16:		jsr $8f32		; 20 32 8f
B20_0f19:		bcc B20_0f15 ; 90 fa

B20_0f1b:		dey				; 88 
B20_0f1c:		lda $8f55, y	; b9 55 8f
B20_0f1f:		sta $48			; 85 48
B20_0f21:		lda $8f64, y	; b9 64 8f
B20_0f24:		sta $49			; 85 49
B20_0f26:		jmp chrSwitch_0_to_c00_1400		; 4c 3c e3


B20_0f29:		ldy $054e, x	; bc 4e 05
B20_0f2c:		jsr $8f1b		; 20 1b 8f
B20_0f2f:		jmp $8f78		; 4c 78 8f


B20_0f32:		ldy $054e, x	; bc 4e 05
B20_0f35:		cpy #$0b		; c0 0b
B20_0f37:		beq B20_0f43 ; f0 0a

B20_0f39:		cpy #$08		; c0 08
B20_0f3b:		bcs B20_0f41 ; b0 04

B20_0f3d:		cpy #$05		; c0 05
B20_0f3f:		bcs B20_0f43 ; b0 02

B20_0f41:		sec				; 38 
B20_0f42:		rts				; 60 


B20_0f43:		clc				; 18 
B20_0f44:		rts				; 60 


B20_0f45:		lda $32			; a5 32
B20_0f47:		cmp #$01		; c9 01
B20_0f49:		bne B20_0f53 ; d0 08

B20_0f4b:		lda $33			; a5 33
B20_0f4d:		cmp #$03		; c9 03
B20_0f4f:		bne B20_0f53 ; d0 02

B20_0f51:		sec				; 38 
B20_0f52:		rts				; 60 


B20_0f53:		clc				; 18 
B20_0f54:		rts				; 60 


B20_0f55:		clc				; 18 
B20_0f56:	.db $1c
B20_0f57:	.db $1a
B20_0f58:		plp				; 28 
B20_0f59:		asl $2220, x	; 1e 20 22
B20_0f5c:		jsr $2426		; 20 26 24
B20_0f5f:	.db $1c
B20_0f60:		bit $1a30		; 2c 30 1a
B20_0f63:	.db $1c
B20_0f64:		ora $1b7b, y	; 19 7b 1b
B20_0f67:		ora $211f, x	; 1d 1f 21
B20_0f6a:	.db $23
B20_0f6b:		and ($29, x)	; 21 29
B20_0f6d:		and $2f			; 25 2f
B20_0f6f:		and $1b31		; 2d 31 1b
B20_0f72:		ora $3220, x	; 1d 20 32
B20_0f75:	.db $8f
B20_0f76:		bcc B20_0fa7 ; 90 2f

B20_0f78:		lda $054e, x	; bd 4e 05
B20_0f7b:		sta $c1			; 85 c1
B20_0f7d:		stx $0f			; 86 0f
B20_0f7f:		jsr $e730		; 20 30 e7
B20_0f82:		ldx $0f			; a6 0f
B20_0f84:		lda $c1			; a5 c1
B20_0f86:		beq B20_0fa0 ; f0 18

B20_0f88:		asl a			; 0a
B20_0f89:		asl a			; 0a
B20_0f8a:		tay				; a8 
B20_0f8b:		lda $1d			; a5 1d
B20_0f8d:		sec				; 38 
B20_0f8e:		sbc #$11		; e9 11
B20_0f90:		tax				; aa 
B20_0f91:		lda #$04		; a9 04
B20_0f93:		sta $0e			; 85 0e
B20_0f95:		lda $8fa8, y	; b9 a8 8f
B20_0f98:		jsr $8fa3		; 20 a3 8f
B20_0f9b:		iny				; c8 
B20_0f9c:		dec $0e			; c6 0e
B20_0f9e:		bne B20_0f95 ; d0 f5

B20_0fa0:		ldx $0f			; a6 0f
B20_0fa2:		rts				; 60 


B20_0fa3:		sta $0300, x	; 9d 00 03
B20_0fa6:		inx				; e8 
B20_0fa7:		rts				; 60 


B20_0fa8:	.db $0f
B20_0fa9:		.db $00				; 00
B20_0faa:		.db $00				; 00
B20_0fab:		.db $00				; 00
B20_0fac:	.db $0f
B20_0fad:	.db $0f
B20_0fae:	.db $12
B20_0faf:		and $280f, y	; 39 0f 28
B20_0fb2:	.db $0f
B20_0fb3:	.db $1b
B20_0fb4:	.db $0f
B20_0fb5:	.db $0f
B20_0fb6:		clc				; 18 
B20_0fb7:		sec				; 38 
B20_0fb8:	.db $0f
B20_0fb9:	.db $0f
B20_0fba:		.db $00				; 00
B20_0fbb:	.db $13
B20_0fbc:	.db $0f
B20_0fbd:	.db $0f
B20_0fbe:	.db $1b
B20_0fbf:	.db $27
B20_0fc0:	.db $0f
B20_0fc1:	.db $0f
B20_0fc2:		.db $00				; 00
B20_0fc3:	.db $32
B20_0fc4:	.db $0f
B20_0fc5:	.db $0f
B20_0fc6:		bit $0f32		; 2c 32 0f
B20_0fc9:		asl $28, x		; 16 28
B20_0fcb:		sec				; 38 
B20_0fcc:	.db $0f
B20_0fcd:	.db $0f
B20_0fce:		asl $37, x		; 16 37
B20_0fd0:	.db $0f
B20_0fd1:	.db $0f
B20_0fd2:		bpl B20_0ff4 ; 10 20

B20_0fd4:	.db $0f
B20_0fd5:	.db $04
B20_0fd6:	.db $13
B20_0fd7:	.db $34
B20_0fd8:	.db $0f
B20_0fd9:	.db $0f
B20_0fda:		php				; 08 
B20_0fdb:	.db $34
B20_0fdc:	.db $0f
B20_0fdd:	.db $0f
B20_0fde:	.db $14
B20_0fdf:	.db $27
B20_0fe0:	.db $0f
B20_0fe1:		.db $00				; 00
B20_0fe2:		bpl B20_101c ; 10 38

B20_0fe4:		.db $00				; 00
B20_0fe5:		.db $00				; 00
B20_0fe6:		.db $00				; 00
B20_0fe7:		.db $00				; 00
B20_0fe8:		.db $00				; 00
B20_0fe9:		.db $00				; 00
B20_0fea:		.db $00				; 00
B20_0feb:		.db $00				; 00
B20_0fec:	.db $0f
B20_0fed:	.db $0f
B20_0fee:	.db $04
B20_0fef:	.db $33
B20_0ff0:	.db $0f
B20_0ff1:	.db $0f
B20_0ff2:		asl $17, x		; 16 17
B20_0ff4:	.db $0f
B20_0ff5:	.db $0f
B20_0ff6:		asl $27, x		; 16 27
B20_0ff8:	.db $0f
B20_0ff9:	.db $0f
B20_0ffa:		asl $37, x		; 16 37
B20_0ffc:	.db $02
B20_0ffd:		;removed
	.db $90 $1c

B20_0fff:		bcc B20_0fa0 ; 90 9f

B20_1001:		bcc B20_0fc0 ; 90 bd

B20_1003:		cpx #$07		; e0 07
B20_1005:		beq B20_1008 ; f0 01

B20_1007:		rts				; 60 


B20_1008:		jsr $9274		; 20 74 92
B20_100b:		ldx #$01		; a2 01
B20_100d:		lda #$0c		; a9 0c
B20_100f:		sta $00			; 85 00
B20_1011:		jsr $83bc		; 20 bc 83
B20_1014:		inx				; e8 
B20_1015:		dec $00			; c6 00
B20_1017:		bne B20_1011 ; d0 f8

B20_1019:		jmp $8f0e		; 4c 0e 8f


B20_101c:		jsr $8de7		; 20 e7 8d
B20_101f:		lda $bd			; a5 bd
B20_1021:		sta $16			; 85 16
B20_1023:		lda #$0c		; a9 0c
B20_1025:		sta $15			; 85 15
B20_1027:		lda $33			; a5 33
B20_1029:		cmp #$02		; c9 02
B20_102b:		beq B20_1035 ; f0 08

B20_102d:		lda $be			; a5 be
B20_102f:		bne B20_1033 ; d0 02

B20_1031:		lda #$01		; a9 01
B20_1033:		sta $15			; 85 15
B20_1035:		ldx #$01		; a2 01
B20_1037:		lda #$80		; a9 80
B20_1039:		sta $07f3		; 8d f3 07
B20_103c:		lda #$00		; a9 00
B20_103e:		sta $17			; 85 17
B20_1040:		jsr func_14_0dff		; 20 ff 8d
B20_1043:		jsr $9332		; 20 32 93
B20_1046:		sta $3d			; 85 3d
B20_1048:		lda #$2d		; a9 2d
B20_104a:		sta $03			; 85 03
B20_104c:		lda #$80		; a9 80
B20_104e:		sta $02			; 85 02
B20_1050:		lda $33			; a5 33
B20_1052:		cmp #$02		; c9 02
B20_1054:		beq B20_105d ; f0 07

B20_1056:		lda $16			; a5 16
B20_1058:		sta $067b, x	; 9d 7b 06
B20_105b:		sta $3d			; 85 3d
B20_105d:		stx $10			; 86 10
B20_105f:		lda $17			; a5 17
B20_1061:		lsr a			; 4a
B20_1062:		tay				; a8 
B20_1063:		lda $17			; a5 17
B20_1065:		sta $0606, x	; 9d 06 06
B20_1068:		and #$01		; 29 01
B20_106a:		beq B20_1077 ; f0 0b

B20_106c:		lda $10			; a5 10
B20_106e:		ora $07ec, y	; 19 ec 07
B20_1071:		sta $07ec, y	; 99 ec 07
B20_1074:		jmp $9080		; 4c 80 90


B20_1077:		lda $10			; a5 10
B20_1079:		asl a			; 0a
B20_107a:		asl a			; 0a
B20_107b:		asl a			; 0a
B20_107c:		asl a			; 0a
B20_107d:		sta $07ec, y	; 99 ec 07
B20_1080:		lda $17			; a5 17
B20_1082:		bne B20_1087 ; d0 03

B20_1084:		jsr $8f16		; 20 16 8f
B20_1087:		inc $17			; e6 17
B20_1089:		inx				; e8 
B20_108a:		lda $17			; a5 17
B20_108c:		cmp $15			; c5 15
B20_108e:		bne B20_1040 ; d0 b0

B20_1090:		ldx #$01		; a2 01
B20_1092:		lda $15			; a5 15
B20_1094:		sta $061d, x	; 9d 1d 06
B20_1097:		jsr $8f73		; 20 73 8f
B20_109a:		ldx $6c			; a6 6c
B20_109c:		inc $07c8, x	; fe c8 07
B20_109f:		rts				; 60 


B20_10a0:	.db $02
B20_10a1:		;removed
	.db $90 $a6

B20_10a3:		;removed
	.db $90 $dc

B20_10a5:		;removed
	.db $90 $20

B20_10a7:	.db $e7
B20_10a8:		sta $e0bd		; 8d bd e0
B20_10ab:	.db $07
B20_10ac:		bne B20_10dc ; d0 2e

B20_10ae:		lda #$80		; a9 80
B20_10b0:		sta $07f3		; 8d f3 07
B20_10b3:		ldx #$01		; a2 01
B20_10b5:		lda #$02		; a9 02
B20_10b7:		sta $16			; 85 16
B20_10b9:		jsr func_14_0dff		; 20 ff 8d
B20_10bc:		jsr $9332		; 20 32 93
B20_10bf:		lda #$40		; a9 40
B20_10c1:		sta $3d			; 85 3d
B20_10c3:		lda $16			; a5 16
B20_10c5:		sta $0645, x	; 9d 45 06
B20_10c8:		dec $0645, x	; de 45 06
B20_10cb:		inx				; e8 
B20_10cc:		dec $16			; c6 16
B20_10ce:		bne B20_10b9 ; d0 e9

B20_10d0:		dex				; ca 
B20_10d1:		jsr $8f16		; 20 16 8f
B20_10d4:		jsr $8f73		; 20 73 8f
B20_10d7:		ldx $6c			; a6 6c
B20_10d9:		inc $07c8, x	; fe c8 07
B20_10dc:		rts				; 60 


B20_10dd:	.db $02
B20_10de:		bcc B20_10c3 ; 90 e3

B20_10e0:		bcc B20_1123 ; 90 41

B20_10e2:		sta ($20), y	; 91 20
B20_10e4:	.db $e7
B20_10e5:		sta $e0bd		; 8d bd e0
B20_10e8:	.db $07
B20_10e9:		bne B20_1141 ; d0 56

B20_10eb:		lda #$80		; a9 80
B20_10ed:		sta $07f3		; 8d f3 07
B20_10f0:		ldx #$01		; a2 01
B20_10f2:		lda #$00		; a9 00
B20_10f4:		sta $16			; 85 16
B20_10f6:		jsr func_14_0dff		; 20 ff 8d
B20_10f9:		jsr $9332		; 20 32 93
B20_10fc:		sta $3d			; 85 3d
B20_10fe:		lda $16			; a5 16
B20_1100:		sta $0606, x	; 9d 06 06
B20_1103:		tay				; a8 
B20_1104:		lda #$00		; a9 00
B20_1106:		sta $17			; 85 17
B20_1108:		lda $9142, y	; b9 42 91
B20_110b:		bpl B20_1111 ; 10 04

B20_110d:		lda #$ff		; a9 ff
B20_110f:		sta $17			; 85 17
B20_1111:		lda $9142, y	; b9 42 91
B20_1114:		clc				; 18 
B20_1115:		adc $0438, x	; 7d 38 04
B20_1118:		sta $0438, x	; 9d 38 04
B20_111b:		lda $17			; a5 17
B20_111d:		adc #$00		; 69 00
B20_111f:		and #$01		; 29 01
B20_1121:		beq B20_1127 ; f0 04

B20_1123:		ora #$88		; 09 88
B20_1125:		bne B20_1129 ; d0 02

B20_1127:		ora #$40		; 09 40
B20_1129:		sta $0470, x	; 9d 70 04
B20_112c:		inx				; e8 
B20_112d:		inc $16			; e6 16
B20_112f:		lda $16			; a5 16
B20_1131:		cmp #$04		; c9 04
B20_1133:		bne B20_10f6 ; d0 c1

B20_1135:		dex				; ca 
B20_1136:		jsr $8f16		; 20 16 8f
B20_1139:		jsr $8f73		; 20 73 8f
B20_113c:		ldx $6c			; a6 6c
B20_113e:		inc $07c8, x	; fe c8 07
B20_1141:		rts				; 60 


B20_1142:		.db $00				; 00
B20_1143:		clc				; 18 
B20_1144:		inx				; e8 
B20_1145:		jsr $2ce0		; 20 e0 2c
B20_1148:		dec $09, x		; d6 09
B20_114a:	.db $02
B20_114b:		bcc B20_119d ; 90 50

B20_114d:		sta ($a2), y	; 91 a2
B20_114f:		sta ($20), y	; 91 20
B20_1151:	.db $e7
B20_1152:		sta $e0bd		; 8d bd e0
B20_1155:	.db $07
B20_1156:		bne B20_11a2 ; d0 4a

B20_1158:		lda #$80		; a9 80
B20_115a:		sta $07f3		; 8d f3 07
B20_115d:		ldx #$01		; a2 01
B20_115f:		lda #$00		; a9 00
B20_1161:		sta $16			; 85 16
B20_1163:		jsr func_14_0dff		; 20 ff 8d
B20_1166:		jsr $9332		; 20 32 93
B20_1169:		lda #$40		; a9 40
B20_116b:		sta $3d			; 85 3d
B20_116d:		lda $16			; a5 16
B20_116f:		beq B20_1173 ; f0 02

B20_1171:		lda #$02		; a9 02
B20_1173:		sta $0606, x	; 9d 06 06
B20_1176:		asl a			; 0a
B20_1177:		asl a			; 0a
B20_1178:		asl a			; 0a
B20_1179:		sta $05d8, x	; 9d d8 05
B20_117c:		lda #$80		; a9 80
B20_117e:		sta $05ef, x	; 9d ef 05
B20_1181:		ldy $16			; a4 16
B20_1183:		lda $91a3, y	; b9 a3 91
B20_1186:		clc				; 18 
B20_1187:		adc $0438, x	; 7d 38 04
B20_118a:		sta $0438, x	; 9d 38 04
B20_118d:		inx				; e8 
B20_118e:		inc $16			; e6 16
B20_1190:		lda $16			; a5 16
B20_1192:		cmp #$06		; c9 06
B20_1194:		bne B20_1163 ; d0 cd

B20_1196:		dex				; ca 
B20_1197:		jsr $8f16		; 20 16 8f
B20_119a:		jsr $8f73		; 20 73 8f
B20_119d:		ldx $6c			; a6 6c
B20_119f:		inc $07c8, x	; fe c8 07
B20_11a2:		rts				; 60 


B20_11a3:		.db $00				; 00
B20_11a4:	.db $04
B20_11a5:	.db $fc
B20_11a6:		php				; 08 
B20_11a7:		sed				; f8 
B20_11a8:	.db $0c
B20_11a9:	.db $f4
B20_11aa:	.db $02
B20_11ab:	.db $b3
B20_11ac:		sta ($15), y	; 91 15
B20_11ae:	.db $8f
B20_11af:		cmp $1591		; cd 91 15
B20_11b2:	.db $8f
B20_11b3:		jsr $8d66		; 20 66 8d
B20_11b6:		bne B20_1216 ; d0 5e

B20_11b8:		lda #$00		; a9 00
B20_11ba:		sta $10			; 85 10
B20_11bc:		jsr $feb9		; 20 b9 fe
B20_11bf:		bne B20_1216 ; d0 55

B20_11c1:		lda #$13		; a9 13
B20_11c3:		sta $054e, x	; 9d 4e 05
B20_11c6:		lda #$00		; a9 00
B20_11c8:		sta $05ef, x	; 9d ef 05
B20_11cb:		beq B20_11e5 ; f0 18

B20_11cd:		jsr $8d66		; 20 66 8d
B20_11d0:		bne B20_1216 ; d0 44

B20_11d2:		lda #$02		; a9 02
B20_11d4:		sta $10			; 85 10
B20_11d6:		jsr $feb9		; 20 b9 fe
B20_11d9:		bne B20_1216 ; d0 3b

B20_11db:		lda #$78		; a9 78
B20_11dd:		sta $054e, x	; 9d 4e 05
B20_11e0:		lda #$60		; a9 60
B20_11e2:		sta $05ef, x	; 9d ef 05
B20_11e5:		ldy $10			; a4 10
B20_11e7:		lda $9217, y	; b9 17 92
B20_11ea:		sta $0438, x	; 9d 38 04
B20_11ed:		lda $921a, y	; b9 1a 92
B20_11f0:		sta $041c, x	; 9d 1c 04
B20_11f3:		lda #$00		; a9 00
B20_11f5:		sta $04f2, x	; 9d f2 04
B20_11f8:		sta $0509, x	; 9d 09 05
B20_11fb:		sta $0520, x	; 9d 20 05
B20_11fe:		sta $0537, x	; 9d 37 05
B20_1201:		sta $05c1, x	; 9d c1 05
B20_1204:		lda #$c8		; a9 c8
B20_1206:		sta $0470, x	; 9d 70 04
B20_1209:		lda $10			; a5 10
B20_120b:		beq B20_1211 ; f0 04

B20_120d:		dec $10			; c6 10
B20_120f:		bne B20_11d6 ; d0 c5

B20_1211:		ldx $6c			; a6 6c
B20_1213:		inc $07c8, x	; fe c8 07
B20_1216:		rts				; 60 


B20_1217:	.db $80
B20_1218:		rti				; 40 


B20_1219:		cpy #$40		; c0 40
B20_121b:		bvc B20_125d ; 50 40

B20_121d:		and ($92, x)	; 21 92
B20_121f:		ora $8f, x		; 15 8f
B20_1221:		jsr $8d66		; 20 66 8d
B20_1224:		bne B20_1269 ; d0 43

B20_1226:		lda #$02		; a9 02
B20_1228:		sta $10			; 85 10
B20_122a:		jsr $feb9		; 20 b9 fe
B20_122d:		bne B20_1269 ; d0 3a

B20_122f:		lda #$12		; a9 12
B20_1231:		sta $054e, x	; 9d 4e 05
B20_1234:		lda #$00		; a9 00
B20_1236:		sta $05ef, x	; 9d ef 05
B20_1239:		ldy $10			; a4 10
B20_123b:		tya				; 98 
B20_123c:		ora #$80		; 09 80
B20_123e:		sta $0645, x	; 9d 45 06
B20_1241:		lda $926a, y	; b9 6a 92
B20_1244:		sta $0438, x	; 9d 38 04
B20_1247:		lda $926f, y	; b9 6f 92
B20_124a:		sta $041c, x	; 9d 1c 04
B20_124d:		lda #$88		; a9 88
B20_124f:		sta $0470, x	; 9d 70 04
B20_1252:		lda #$00		; a9 00
B20_1254:		sta $04f2, x	; 9d f2 04
B20_1257:		sta $0509, x	; 9d 09 05
B20_125a:		sta $0520, x	; 9d 20 05
B20_125d:		sta $0537, x	; 9d 37 05
B20_1260:		dec $10			; c6 10
B20_1262:		bpl B20_122a ; 10 c6

B20_1264:		ldx $6c			; a6 6c
B20_1266:		inc $07c8, x	; fe c8 07
B20_1269:		rts				; 60 


B20_126a:		;removed
	.db $30 $b0

B20_126c:		bne B20_12be ; d0 50

B20_126e:		bcc B20_12c0 ; 90 50

B20_1270:		bvc B20_12c2 ; 50 50

B20_1272:		bmi B20_12a4 ; 30 30

B20_1274:		ldy #$07		; a0 07
B20_1276:		lda #$00		; a9 00
B20_1278:		sta $07ec, y	; 99 ec 07
B20_127b:		dey				; 88 
B20_127c:		bne B20_1278 ; d0 fa

B20_127e:		sta $07ec		; 8d ec 07
B20_1281:		rts				; 60 


B20_1282:		.db $00				; 00
B20_1283:		ora ($02, x)	; 01 02
B20_1285:	.db $07
B20_1286:	.db $0d $00 $00
B20_1289:		.db $00				; 00
B20_128a:		.db $00				; 00
B20_128b:		.db $00				; 00
B20_128c:		.db $00				; 00
B20_128d:		asl $0605		; 0e 05 06
B20_1290:	.db $12
B20_1291:		ora ($03), y	; 11 03
B20_1293:		bpl B20_12a9 ; 10 14

B20_1295:		and ($0b, x)	; 21 0b
B20_1297:	.db $0f
B20_1298:		ora #$0a		; 09 0a
B20_129a:		php				; 08 
B20_129b:	.db $17
B20_129c:		asl $00, x		; 16 00
B20_129e:		.db $00				; 00
B20_129f:		.db $00				; 00
B20_12a0:		.db $00				; 00
B20_12a1:		.db $00				; 00
B20_12a2:		.db $00				; 00
B20_12a3:		.db $00				; 00
B20_12a4:		.db $00				; 00
B20_12a5:		.db $00				; 00
B20_12a6:		.db $00				; 00
B20_12a7:		.db $00				; 00
B20_12a8:		.db $00				; 00
B20_12a9:	.db $04
B20_12aa:	.db $1c
B20_12ab:		ora $6e1e, x	; 1d 1e 6e
B20_12ae:	.db $6f
B20_12af:	.db $0c
B20_12b0:	.db $22
B20_12b1:		.db $00				; 00
B20_12b2:		.db $00				; 00
B20_12b3:		.db $00				; 00
B20_12b4:	.db $13
B20_12b5:		.db $00				; 00
B20_12b6:		.db $00				; 00
B20_12b7:		.db $00				; 00
B20_12b8:		.db $00				; 00
B20_12b9:		.db $00				; 00
B20_12ba:		.db $00				; 00
B20_12bb:		.db $00				; 00
B20_12bc:		bit $25			; 24 25
B20_12be:		rol $27			; 26 27
B20_12c0:		and #$28		; 29 28
B20_12c2:	.db $2b
B20_12c3:	.db $2f
B20_12c4:		.db $00				; 00
B20_12c5:		bit $6463		; 2c 63 64
B20_12c8:		adc $66			; 65 66
B20_12ca:	.db $07
B20_12cb:		bpl B20_12d4 ; 10 07

B20_12cd:		pla				; 68 
B20_12ce:		.db $00				; 00
B20_12cf:		.db $00				; 00
B20_12d0:		.db $00				; 00
B20_12d1:		ora ($16, x)	; 01 16
B20_12d3:		ror a			; 6a
B20_12d4:	.db $0d $00 $00
B20_12d7:		.db $00				; 00
B20_12d8:		.db $00				; 00
B20_12d9:		.db $00				; 00
B20_12da:		.db $00				; 00
B20_12db:		pha				; 48 
B20_12dc:		pha				; 48 
B20_12dd:	.db $4b
B20_12de:		eor ($01), y	; 51 01
B20_12e0:	.db $02
B20_12e1:	.db $03
B20_12e2:		.db $00				; 00
B20_12e3:		.db $00				; 00
B20_12e4:		.db $00				; 00
B20_12e5:	.db $52
B20_12e6:		lsr a			; 4a
B20_12e7:		lsr a			; 4a
B20_12e8:		lsr $55, x		; 56 55
B20_12ea:		eor #$54		; 49 54
B20_12ec:		cli				; 58 
B20_12ed:	.db $57
B20_12ee:	.db $4f
B20_12ef:	.db $53
B20_12f0:		eor $4c4e		; 4d 4e 4c
B20_12f3:	.db $5b
B20_12f4:	.db $5a
B20_12f5:	.db $04
B20_12f6:		ora $06			; 05 06
B20_12f8:		asl a			; 0a
B20_12f9:		php				; 08 
B20_12fa:		ora #$07		; 09 07
B20_12fc:		.db $00				; 00
B20_12fd:	.db $0c
B20_12fe:	.db $0b
B20_12ff:		ora #$0d		; 09 0d
B20_1301:		eor #$5c		; 49 5c
B20_1303:		eor $4a56, x	; 5d 56 4a
B20_1306:	.db $64
B20_1307:		bvc B20_1367 ; 50 5e

B20_1309:		adc $8082, x	; 7d 82 80
B20_130c:		eor $7e7f		; 4d 7f 7e
B20_130f:		sty $76			; 84 76
B20_1311:	.db $7b
B20_1312:	.db $7c
B20_1313:		adc $48, x		; 75 48
B20_1315:		rts				; 60 


B20_1316:		adc ($58, x)	; 61 58
B20_1318:		cli				; 58 
B20_1319:	.db $62
B20_131a:	.db $63
B20_131b:		lsr $74, x		; 56 74
B20_131d:		eor $645f, y	; 59 5f 64
B20_1320:		adc $4a			; 65 4a
B20_1322:	.db $4b
B20_1323:	.db $54
B20_1324:	.db $4b
B20_1325:		jmp $7173		; 4c 73 71


B20_1328:	.db $72
B20_1329:		pha				; 48 
B20_132a:	.db $5a
B20_132b:		cli				; 58 
B20_132c:		eor ($00), y	; 51 00
B20_132e:		.db $00				; 00
B20_132f:		.db $00				; 00
B20_1330:		.db $00				; 00
B20_1331:		.db $00				; 00
B20_1332:		lda #$40		; a9 40
B20_1334:		ldy $054e, x	; bc 4e 05
B20_1337:		cpy #$08		; c0 08
B20_1339:		bne B20_133f ; d0 04

B20_133b:		lda #$20		; a9 20
B20_133d:		bne B20_134b ; d0 0c

B20_133f:		cpy #$40		; c0 40
B20_1341:		bcc B20_134b ; 90 08

B20_1343:		tya				; 98 
B20_1344:		sec				; 38 
B20_1345:		sbc #$40		; e9 40
B20_1347:		tay				; a8 
B20_1348:		lda $934f, y	; b9 4f 93
B20_134b:		sta $067b, x	; 9d 7b 06
B20_134e:		rts				; 60 


B20_134f:	.db $04
B20_1350:	.db $04
B20_1351:	.db $04
B20_1352:	.db $04
B20_1353:	.db $04
B20_1354:	.db $04
B20_1355:	.db $04
B20_1356:	.db $04
B20_1357:	.db $02
B20_1358:	.db $02
B20_1359:	.db $02
B20_135a:	.db $04
B20_135b:	.db $0c
B20_135c:	.db $02
B20_135d:	.db $02
B20_135e:	.db $04
B20_135f:	.db $04
B20_1360:	.db $04
B20_1361:	.db $04
B20_1362:	.db $04
B20_1363:	.db $0c
B20_1364:		bmi B20_138a ; 30 24

B20_1366:	.db $04
B20_1367:	.db $04
B20_1368:		rti				; 40 


B20_1369:		asl $04			; 06 04
B20_136b:	.db $02
B20_136c:	.db $04
B20_136d:	.db $04
B20_136e:	.db $04
B20_136f:	.db $04
B20_1370:	.db $04
B20_1371:	.db $0c
B20_1372:	.db $0c
B20_1373:	.db $7f
B20_1374:	.db $04
B20_1375:		asl a			; 0a
B20_1376:		asl $04			; 06 04
B20_1378:	.db $04
B20_1379:	.db $04
B20_137a:	.db $04
B20_137b:	.db $04
B20_137c:	.db $04
B20_137d:	.db $04
B20_137e:	.db $04
B20_137f:		sta $a593, x	; 9d 93 a5
B20_1382:	.db $93
B20_1383:		lda ($93), y	; b1 93
B20_1385:	.db $bb
B20_1386:	.db $93
B20_1387:		cmp $93			; c5 93
B20_1389:	.db $cb
B20_138a:	.db $93
B20_138b:	.db $d3
B20_138c:	.db $93
B20_138d:		cmp $e793, y	; d9 93 e7
B20_1390:	.db $93
B20_1391:		cmp $9b			; c5 9b
B20_1393:		cmp #$9b		; c9 9b
B20_1395:	.db $d7
B20_1396:	.db $9b
B20_1397:		cmp $e39b, x	; dd 9b e3
B20_139a:	.db $9b
B20_139b:	.db $eb
B20_139c:	.db $9b
B20_139d:		sbc ($93), y	; f1 93
B20_139f:	.db $f3
B20_13a0:	.db $93
B20_13a1:	.db $fb
B20_13a2:	.db $93
B20_13a3:	.db $ff
B20_13a4:	.db $93
B20_13a5:		ora ($94, x)	; 01 94
B20_13a7:	.db $07
B20_13a8:		sty $0d, x		; 94 0d
B20_13aa:		sty $13, x		; 94 13
B20_13ac:		sty $19, x		; 94 19
B20_13ae:		sty $1f, x		; 94 1f
B20_13b0:		sty $25, x		; 94 25
B20_13b2:		sty $29, x		; 94 29
B20_13b4:		sty $2b, x		; 94 2b
B20_13b6:		sty $2f, x		; 94 2f
B20_13b8:		sty $35, x		; 94 35
B20_13ba:		sty $39, x		; 94 39
B20_13bc:		sty $3f, x		; 94 3f
B20_13be:		sty $43, x		; 94 43
B20_13c0:		sty $47, x		; 94 47
B20_13c2:		sty $4b, x		; 94 4b
B20_13c4:		sty $51, x		; 94 51
B20_13c6:		sty $57, x		; 94 57
B20_13c8:		sty $5d, x		; 94 5d
B20_13ca:		sty $63, x		; 94 63
B20_13cc:		sty $65, x		; 94 65
B20_13ce:		sty $67, x		; 94 67
B20_13d0:		sty $6b, x		; 94 6b
B20_13d2:		sty $6f, x		; 94 6f
B20_13d4:		sty $73, x		; 94 73
B20_13d6:		sty $75, x		; 94 75
B20_13d8:		sty $7b, x		; 94 7b
B20_13da:		sty $7f, x		; 94 7f
B20_13dc:		sty $81, x		; 94 81
B20_13de:		sty $83, x		; 94 83
B20_13e0:		sty $85, x		; 94 85
B20_13e2:		sty $89, x		; 94 89
B20_13e4:		sty $8d, x		; 94 8d
B20_13e6:		sty $8f, x		; 94 8f
B20_13e8:		sty $93, x		; 94 93
B20_13ea:		sty $95, x		; 94 95
B20_13ec:		sty $99, x		; 94 99
B20_13ee:		sty $9b, x		; 94 9b
B20_13f0:		sty $9d, x		; 94 9d
B20_13f2:		sty $b9, x		; 94 b9
B20_13f4:		sty $34, x		; 94 34
B20_13f6:		ldy $94c5		; ac c5 94
B20_13f9:		sbc ($94, x)	; e1 94
B20_13fb:		sbc $94, x		; f5 94
B20_13fd:		ora ($95), y	; 11 95
B20_13ff:		and $7495		; 2d 95 74
B20_1402:		ldy $9551		; ac 51 95
B20_1405:		adc $95			; 65 95
B20_1407:		adc $d095, y	; 79 95 d0
B20_140a:		ldy $958d		; ac 8d 95
B20_140d:		sta $0295, y	; 99 95 02
B20_1410:		lda $95a5		; ad a5 95
B20_1413:		sta $1f95, y	; 99 95 1f
B20_1416:		lda $95a5		; ad a5 95
B20_1419:		adc $4395, y	; 79 95 43
B20_141c:		lda $958d		; ad 8d 95
B20_141f:		adc $ad, x		; 75 ad
B20_1421:		eor ($95), y	; 51 95
B20_1423:		adc $95			; 65 95
B20_1425:		lda $d595, y	; b9 95 d5
B20_1428:		sta $f1, x		; 95 f1
B20_142a:		sta $25, x		; 95 25
B20_142c:		stx $49, y		; 96 49
B20_142e:		stx $6d, y		; 96 6d
B20_1430:		stx $79, y		; 96 79
B20_1432:		stx $9d, y		; 96 9d
B20_1434:		stx $a9, y		; 96 a9
B20_1436:		stx $bd, y		; 96 bd
B20_1438:		stx $e1, y		; 96 e1
B20_143a:		stx $f5, y		; 96 f5
B20_143c:		stx $09, y		; 96 09
B20_143e:	.db $97
B20_143f:		ora $4997, x	; 1d 97 49
B20_1442:	.db $97
B20_1443:		eor $8197, x	; 5d 97 81
B20_1446:	.db $97
B20_1447:		sta $97, x		; 95 97
B20_1449:		lda ($97), y	; b1 97
B20_144b:		cmp $d997		; cd 97 d9
B20_144e:	.db $97
B20_144f:		sbc $97, x		; f5 97
B20_1451:		ora ($98, x)	; 01 98
B20_1453:	.db $f4
B20_1454:		lda $9815		; ad 15 98
B20_1457:		and ($98, x)	; 21 98
B20_1459:		;removed
	.db $50 $ae

B20_145b:		and $4198		; 2d 98 41
B20_145e:		tya				; 98 
B20_145f:		cmp ($ae, x)	; c1 ae
B20_1461:		eor $6998		; 4d 98 69
B20_1464:		tya				; 98 
B20_1465:		adc $a198, x	; 7d 98 a1
B20_1468:		tya				; 98 
B20_1469:		lda $98, x		; b5 98
B20_146b:		cmp $ed98, y	; d9 98 ed
B20_146e:		tya				; 98 
B20_146f:		ora ($99), y	; 11 99
B20_1471:		and $99			; 25 99
B20_1473:		eor #$99		; 49 99
B20_1475:		adc $8999, x	; 7d 99 89
B20_1478:		sta $99a5, y	; 99 a5 99
B20_147b:		lda $cd99, y	; b9 99 cd
B20_147e:		sta $99f1, y	; 99 f1 99
B20_1481:		ora $9a			; 05 9a
B20_1483:		ora ($9a), y	; 11 9a
B20_1485:		and $9a			; 25 9a
B20_1487:		eor #$9a		; 49 9a
B20_1489:		eor $819a, x	; 5d 9a 81
B20_148c:		txs				; 9a 
B20_148d:		sta $9a, x		; 95 9a
B20_148f:		cmp ($9a, x)	; c1 9a
B20_1491:		cmp $9a, x		; d5 9a
B20_1493:		ora ($9b, x)	; 01 9b
B20_1495:		and $519b		; 2d 9b 51
B20_1498:	.db $9b
B20_1499:		adc $999b		; 6d 9b 99
B20_149c:	.db $9b
B20_149d:		.db $00				; 00
B20_149e:		.db $00				; 00
B20_149f:		.db $00				; 00
B20_14a0:		.db $00				; 00
B20_14a1:		.db $00				; 00
B20_14a2:		.db $00				; 00
B20_14a3:		.db $00				; 00
B20_14a4:	.db $0f
B20_14a5:		.db $00				; 00
B20_14a6:		.db $00				; 00
B20_14a7:		cmp ($46), y	; d1 46
B20_14a9:		.db $00				; 00
B20_14aa:		.db $00				; 00
B20_14ab:		cmp ($0c), y	; d1 0c
B20_14ad:		bne B20_14e4 ; d0 35

B20_14af:		.db $00				; 00
B20_14b0:		.db $00				; 00
B20_14b1:		.db $00				; 00
B20_14b2:		.db $00				; 00
B20_14b3:		.db $00				; 00
B20_14b4:	.db $0b
B20_14b5:		.db $00				; 00
B20_14b6:		.db $00				; 00
B20_14b7:		.db $00				; 00
B20_14b8:		.db $00				; 00
B20_14b9:		.db $00				; 00
B20_14ba:		.db $00				; 00
B20_14bb:		.db $00				; 00
B20_14bc:		bvc B20_14be ; 50 00

B20_14be:		;removed
	.db $50 $a0

B20_14c0:		pla				; 68 
B20_14c1:	.db $9f
B20_14c2:	.db $47
B20_14c3:		.db $00				; 00
B20_14c4:		.db $00				; 00
B20_14c5:		.db $00				; 00
B20_14c6:		.db $00				; 00
B20_14c7:		.db $00				; 00
B20_14c8:		.db $00				; 00
B20_14c9:		.db $00				; 00
B20_14ca:	.db $3f
B20_14cb:		.db $00				; 00
B20_14cc:		.db $00				; 00
B20_14cd:		.db $00				; 00
B20_14ce:	.db $3f
B20_14cf:		.db $00				; 00
B20_14d0:	.db $63
B20_14d1:		ora #$00		; 09 00
B20_14d3:		.db $00				; 00
B20_14d4:	.db $07
B20_14d5:		.db $00				; 00
B20_14d6:		php				; 08 
B20_14d7:		.db $00				; 00
B20_14d8:		.db $00				; 00
B20_14d9:		.db $00				; 00
B20_14da:	.db $99 $09 $00
B20_14dd:		.db $00				; 00
B20_14de:		.db $00				; 00
B20_14df:		.db $00				; 00
B20_14e0:		.db $00				; 00
B20_14e1:		.db $00				; 00
B20_14e2:		.db $00				; 00
B20_14e3:		.db $00				; 00
B20_14e4:	.db $4b
B20_14e5:	.db $d3
B20_14e6:		bvc B20_154d ; 50 65

B20_14e8:		jmp $5900		; 4c 00 59


B20_14eb:		adc $77			; 65 77
B20_14ed:	.db $d3
B20_14ee:	.db $02
B20_14ef:	.db $1d $e6 $00
B20_14f2:		bpl B20_14f4 ; 10 00

B20_14f4:		.db $00				; 00
B20_14f5:		.db $00				; 00
B20_14f6:		.db $00				; 00
B20_14f7:		.db $00				; 00
B20_14f8:	.db $cc $00 $00
B20_14fb:		.db $00				; 00
B20_14fc:		cli				; 58 
B20_14fd:		.db $00				; 00
B20_14fe:		rol $5010		; 2e 10 50
B20_1501:		.db $00				; 00
B20_1502:	.db $53
B20_1503:		asl a			; 0a
B20_1504:	.db $53
B20_1505:		.db $00				; 00
B20_1506:		cmp $5326		; cd 26 53
B20_1509:		.db $00				; 00
B20_150a:	.db $53
B20_150b:		ora ($00), y	; 11 00
B20_150d:		.db $00				; 00
B20_150e:		.db $00				; 00
B20_150f:		.db $00				; 00
B20_1510:		.db $00				; 00
B20_1511:		.db $00				; 00
B20_1512:		.db $00				; 00
B20_1513:		.db $00				; 00
B20_1514:	.db $e7
B20_1515:		ror $e8			; 66 e8
B20_1517:		.db $00				; 00
B20_1518:		.db $00				; 00
B20_1519:	.db $d4
B20_151a:		.db $00				; 00
B20_151b:		.db $00				; 00
B20_151c:	.db $3f
B20_151d:		ror $ec			; 66 ec
B20_151f:	.db $d4
B20_1520:		.db $00				; 00
B20_1521:		.db $00				; 00
B20_1522:		.db $00				; 00
B20_1523:		.db $00				; 00
B20_1524:		.db $00				; 00
B20_1525:		ror $34			; 66 34
B20_1527:	.db $d4
B20_1528:	.db $57
B20_1529:		.db $00				; 00
B20_152a:	.db $57
B20_152b:		.db $00				; 00
B20_152c:		.db $00				; 00
B20_152d:		.db $00				; 00
B20_152e:		.db $00				; 00
B20_152f:		.db $00				; 00
B20_1530:		ldx $340b		; ae 0b 34
B20_1533:		.db $00				; 00
B20_1534:	.db $54
B20_1535:		ora ($00, x)	; 01 00
B20_1537:		.db $00				; 00
B20_1538:		.db $00				; 00
B20_1539:		.db $00				; 00
B20_153a:		asl a			; 0a
B20_153b:		.db $00				; 00
B20_153c:		.db $00				; 00
B20_153d:	.db $0b
B20_153e:		.db $00				; 00
B20_153f:	.db $0e $0d $00
B20_1542:	.db $0d $00 $00
B20_1545:		.db $00				; 00
B20_1546:		.db $00				; 00
B20_1547:		.db $00				; 00
B20_1548:		.db $00				; 00
B20_1549:		.db $00				; 00
B20_154a:		.db $00				; 00
B20_154b:	.db $03
B20_154c:		.db $00				; 00
B20_154d:		.db $00				; 00
B20_154e:	.db $de $00 $00
B20_1551:		.db $00				; 00
B20_1552:		.db $00				; 00
B20_1553:	.db $5a
B20_1554:		.db $00				; 00
B20_1555:	.db $e3
B20_1556:	.db $23
B20_1557:		.db $00				; 00
B20_1558:		.db $00				; 00
B20_1559:		.db $00				; 00
B20_155a:	.db $22
B20_155b:		tsx				; ba 
B20_155c:		bit $58			; 24 58
B20_155e:	.db $73
B20_155f:		.db $00				; 00
B20_1560:	.db $0d $59 $00
B20_1563:		.db $00				; 00
B20_1564:		.db $00				; 00
B20_1565:		.db $00				; 00
B20_1566:		.db $00				; 00
B20_1567:		.db $00				; 00
B20_1568:		.db $00				; 00
B20_1569:	.db $d4
B20_156a:		.db $00				; 00
B20_156b:		.db $00				; 00
B20_156c:		.db $00				; 00
B20_156d:		.db $00				; 00
B20_156e:		.db $00				; 00
B20_156f:		.db $00				; 00
B20_1570:		.db $00				; 00
B20_1571:		.db $00				; 00
B20_1572:		.db $00				; 00
B20_1573:	.db $d4
B20_1574:		.db $00				; 00
B20_1575:		.db $00				; 00
B20_1576:		.db $00				; 00
B20_1577:		.db $00				; 00
B20_1578:		.db $00				; 00
B20_1579:		.db $00				; 00
B20_157a:		.db $00				; 00
B20_157b:		.db $00				; 00
B20_157c:		.db $00				; 00
B20_157d:		.db $00				; 00
B20_157e:		.db $00				; 00
B20_157f:		.db $00				; 00
B20_1580:	.db $74
B20_1581:	.db $5c
B20_1582:		.db $00				; 00
B20_1583:		.db $00				; 00
B20_1584:		.db $00				; 00
B20_1585:		.db $00				; 00
B20_1586:		adc $00, x		; 75 00
B20_1588:		.db $00				; 00
B20_1589:		.db $00				; 00
B20_158a:		ror $00, x		; 76 00
B20_158c:		.db $00				; 00
B20_158d:		.db $00				; 00
B20_158e:		.db $00				; 00
B20_158f:		.db $00				; 00
B20_1590:		.db $00				; 00
B20_1591:		.db $00				; 00
B20_1592:		.db $00				; 00
B20_1593:		.db $00				; 00
B20_1594:		.db $00				; 00
B20_1595:		.db $00				; 00
B20_1596:		.db $00				; 00
B20_1597:		.db $00				; 00
B20_1598:		.db $00				; 00
B20_1599:		.db $00				; 00
B20_159a:		.db $00				; 00
B20_159b:		.db $00				; 00
B20_159c:		sei				; 78 
B20_159d:		.db $00				; 00
B20_159e:		adc $bd00, y	; 79 00 bd
B20_15a1:		.db $00				; 00
B20_15a2:	.db $f7
B20_15a3:		.db $00				; 00
B20_15a4:		.db $00				; 00
B20_15a5:		.db $00				; 00
B20_15a6:		.db $00				; 00
B20_15a7:		ora $00			; 05 00
B20_15a9:		.db $00				; 00
B20_15aa:		sty $00, x		; 94 00
B20_15ac:	.db $3b
B20_15ad:		.db $00				; 00
B20_15ae:		.db $00				; 00
B20_15af:		.db $00				; 00
B20_15b0:		stx $bb, y		; 96 bb
B20_15b2:	.db $7b
B20_15b3:		.db $00				; 00
B20_15b4:		sta $0500, x	; 9d 00 05
B20_15b7:		.db $00				; 00
B20_15b8:		.db $00				; 00
B20_15b9:		.db $00				; 00
B20_15ba:		.db $00				; 00
B20_15bb:		.db $00				; 00
B20_15bc:		.db $00				; 00
B20_15bd:		.db $00				; 00
B20_15be:		and #$00		; 29 00
B20_15c0:	.db $42
B20_15c1:		.db $00				; 00
B20_15c2:	.db $3e $d2 $00
B20_15c5:		.db $00				; 00
B20_15c6:	.db $3f
B20_15c7:		.db $00				; 00
B20_15c8:	.db $3f
B20_15c9:		.db $00				; 00
B20_15ca:	.db $3f
B20_15cb:		.db $00				; 00
B20_15cc:	.db $2c $14 $00
B20_15cf:	.db $d2
B20_15d0:	.db $02
B20_15d1:		.db $00				; 00
B20_15d2:		.db $00				; 00
B20_15d3:		.db $00				; 00
B20_15d4:		.db $00				; 00
B20_15d5:		.db $00				; 00
B20_15d6:		.db $00				; 00
B20_15d7:		.db $00				; 00
B20_15d8:		.db $00				; 00
B20_15d9:		adc $10			; 65 10
B20_15db:		.db $00				; 00
B20_15dc:		.db $00				; 00
B20_15dd:		.db $00				; 00
B20_15de:		.db $00				; 00
B20_15df:		pla				; 68 
B20_15e0:		.db $00				; 00
B20_15e1:		.db $00				; 00
B20_15e2:	.db $42
B20_15e3:	.db $1d $00 $00
B20_15e6:		.db $00				; 00
B20_15e7:		.db $00				; 00
B20_15e8:		rol $00			; 26 00
B20_15ea:		.db $00				; 00
B20_15eb:		.db $00				; 00
B20_15ec:		.db $00				; 00
B20_15ed:		.db $00				; 00
B20_15ee:		.db $00				; 00
B20_15ef:		.db $00				; 00
B20_15f0:		.db $00				; 00
B20_15f1:		.db $00				; 00
B20_15f2:		.db $00				; 00
B20_15f3:		.db $00				; 00
B20_15f4:		.db $00				; 00
B20_15f5:		.db $00				; 00
B20_15f6:	.db $4d $00 $00
B20_15f9:		.db $00				; 00
B20_15fa:	.db $4d $00 $00
B20_15fd:		.db $00				; 00
B20_15fe:		.db $00				; 00
B20_15ff:		sec				; 38 
B20_1600:		and #$37		; 29 37
B20_1602:		.db $00				; 00
B20_1603:	.db $47
B20_1604:	.db $4f
B20_1605:	.db $3c
B20_1606:		.db $00				; 00
B20_1607:		eor $00			; 45 00
B20_1609:		.db $00				; 00
B20_160a:	.db $4d $00 $00
B20_160d:		pha				; 48 
B20_160e:		.db $00				; 00
B20_160f:		.db $00				; 00
B20_1610:		.db $00				; 00
B20_1611:		.db $00				; 00
B20_1612:		.db $00				; 00
B20_1613:	.db $47
B20_1614:		eor ($46), y	; 51 46
B20_1616:		.db $00				; 00
B20_1617:	.db $3c
B20_1618:		.db $00				; 00
B20_1619:		.db $00				; 00
B20_161a:		and #$00		; 29 00
B20_161c:		.db $00				; 00
B20_161d:		.db $00				; 00
B20_161e:		.db $00				; 00
B20_161f:		.db $00				; 00
B20_1620:	.db $4b
B20_1621:		.db $00				; 00
B20_1622:	.db $2e $00 $00
B20_1625:		.db $00				; 00
B20_1626:		.db $00				; 00
B20_1627:		.db $00				; 00
B20_1628:	.db $9d $00 $00
B20_162b:		ror $2690		; 6e 90 26
B20_162e:	.db $6d $00 $00
B20_1631:		.db $00				; 00
B20_1632:		.db $00				; 00
B20_1633:		.db $00				; 00
B20_1634:		.db $00				; 00
B20_1635:		.db $00				; 00
B20_1636:		.db $00				; 00
B20_1637:		.db $00				; 00
B20_1638:		.db $00				; 00
B20_1639:		.db $00				; 00
B20_163a:		.db $00				; 00
B20_163b:		.db $00				; 00
B20_163c:		.db $00				; 00
B20_163d:		.db $00				; 00
B20_163e:		.db $00				; 00
B20_163f:		.db $00				; 00
B20_1640:		.db $00				; 00
B20_1641:		.db $00				; 00
B20_1642:		.db $00				; 00
B20_1643:	.db $74
B20_1644:		.db $00				; 00
B20_1645:		.db $00				; 00
B20_1646:		.db $00				; 00
B20_1647:		.db $00				; 00
B20_1648:		.db $00				; 00
B20_1649:		.db $00				; 00
B20_164a:		.db $00				; 00
B20_164b:		.db $00				; 00
B20_164c:		.db $00				; 00
B20_164d:		.db $00				; 00
B20_164e:		.db $00				; 00
B20_164f:		.db $00				; 00
B20_1650:		.db $00				; 00
B20_1651:		asl $00			; 06 00
B20_1653:		.db $00				; 00
B20_1654:		.db $00				; 00
B20_1655:	.db $87
B20_1656:		.db $00				; 00
B20_1657:		.db $00				; 00
B20_1658:		.db $00				; 00
B20_1659:		adc #$00		; 69 00
B20_165b:		asl $00			; 06 00
B20_165d:		.db $00				; 00
B20_165e:		.db $00				; 00
B20_165f:		.db $00				; 00
B20_1660:		.db $00				; 00
B20_1661:	.db $87
B20_1662:		.db $00				; 00
B20_1663:		ror a			; 6a
B20_1664:		.db $00				; 00
B20_1665:		.db $00				; 00
B20_1666:		.db $00				; 00
B20_1667:		asl $00			; 06 00
B20_1669:		.db $00				; 00
B20_166a:		.db $00				; 00
B20_166b:		.db $00				; 00
B20_166c:		.db $00				; 00
B20_166d:		.db $00				; 00
B20_166e:		.db $00				; 00
B20_166f:		.db $00				; 00
B20_1670:		.db $00				; 00
B20_1671:		.db $00				; 00
B20_1672:		.db $00				; 00
B20_1673:	.db $67
B20_1674:	.db $7b
B20_1675:		.db $00				; 00
B20_1676:	.db $2e $00 $00
B20_1679:		.db $00				; 00
B20_167a:		.db $00				; 00
B20_167b:		.db $00				; 00
B20_167c:		.db $00				; 00
B20_167d:	.db $5f
B20_167e:		.db $00				; 00
B20_167f:		rts				; 60 


B20_1680:		.db $00				; 00
B20_1681:		.db $00				; 00
B20_1682:		.db $00				; 00
B20_1683:		.db $00				; 00
B20_1684:		.db $00				; 00
B20_1685:		.db $00				; 00
B20_1686:		.db $00				; 00
B20_1687:	.db $5f
B20_1688:		.db $00				; 00
B20_1689:		.db $00				; 00
B20_168a:		.db $00				; 00
B20_168b:		rts				; 60 


B20_168c:		.db $00				; 00
B20_168d:		.db $00				; 00
B20_168e:		.db $00				; 00
B20_168f:		rts				; 60 


B20_1690:		.db $00				; 00
B20_1691:		rts				; 60 


B20_1692:		.db $00				; 00
B20_1693:		.db $00				; 00
B20_1694:		.db $00				; 00
B20_1695:	.db $5f
B20_1696:		.db $00				; 00
B20_1697:		.db $00				; 00
B20_1698:		.db $00				; 00
B20_1699:		.db $00				; 00
B20_169a:		.db $00				; 00
B20_169b:		.db $00				; 00
B20_169c:		.db $00				; 00
B20_169d:		.db $00				; 00
B20_169e:		.db $00				; 00
B20_169f:		.db $00				; 00
B20_16a0:	.db $dc
B20_16a1:		.db $00				; 00
B20_16a2:		tay				; a8 
B20_16a3:		dey				; 88 
B20_16a4:		.db $00				; 00
B20_16a5:		.db $00				; 00
B20_16a6:	.db $4d $00 $00
B20_16a9:		.db $00				; 00
B20_16aa:		.db $00				; 00
B20_16ab:		.db $00				; 00
B20_16ac:		.db $00				; 00
B20_16ad:		.db $00				; 00
B20_16ae:		.db $00				; 00
B20_16af:	.db $d7
B20_16b0:	.db $3f
B20_16b1:		.db $00				; 00
B20_16b2:		.db $00				; 00
B20_16b3:	.db $07
B20_16b4:		.db $00				; 00
B20_16b5:		php				; 08 
B20_16b6:		.db $00				; 00
B20_16b7:		asl $00			; 06 00
B20_16b9:	.db $04
B20_16ba:		.db $00				; 00
B20_16bb:		.db $00				; 00
B20_16bc:		.db $00				; 00
B20_16bd:		.db $00				; 00
B20_16be:		.db $00				; 00
B20_16bf:		.db $00				; 00
B20_16c0:		.db $00				; 00
B20_16c1:		bmi B20_16c3 ; 30 00

B20_16c3:		.db $00				; 00
B20_16c4:	.db $2f
B20_16c5:		bmi B20_16f7 ; 30 30

B20_16c7:		.db $00				; 00
B20_16c8:		.db $00				; 00
B20_16c9:		.db $00				; 00
B20_16ca:		eor ($67), y	; 51 67
B20_16cc:		eor ($00), y	; 51 00
B20_16ce:	.db $ed $30 $00
B20_16d1:		.db $00				; 00
B20_16d2:		lda $00			; a5 00
B20_16d4:	.db $0b
B20_16d5:		bmi B20_1728 ; 30 51

B20_16d7:	.db $67
B20_16d8:		.db $00				; 00
B20_16d9:		.db $00				; 00
B20_16da:	.db $53
B20_16db:		.db $00				; 00
B20_16dc:	.db $53
B20_16dd:		.db $00				; 00
B20_16de:		.db $00				; 00
B20_16df:		.db $00				; 00
B20_16e0:		.db $00				; 00
B20_16e1:		.db $00				; 00
B20_16e2:		.db $00				; 00
B20_16e3:		.db $00				; 00
B20_16e4:	.db $17
B20_16e5:	.db $d2
B20_16e6:	.db $7d $00 $00
B20_16e9:	.db $3a
B20_16ea:		ror $1c00, x	; 7e 00 1c
B20_16ed:	.db $2f
B20_16ee:	.db $1c
B20_16ef:	.db $d2
B20_16f0:		.db $00				; 00
B20_16f1:		.db $00				; 00
B20_16f2:	.db $87
B20_16f3:		.db $00				; 00
B20_16f4:		.db $00				; 00
B20_16f5:		.db $00				; 00
B20_16f6:		.db $00				; 00
B20_16f7:		.db $00				; 00
B20_16f8:	.db $13
B20_16f9:		dec $1b, x		; d6 1b
B20_16fb:	.db $2f
B20_16fc:		ora $00, x		; 15 00
B20_16fe:	.db $17
B20_16ff:		.db $00				; 00
B20_1700:		.db $00				; 00
B20_1701:		.db $00				; 00
B20_1702:	.db $1b
B20_1703:		and ($7f), y	; 31 7f
B20_1705:		.db $00				; 00
B20_1706:	.db $1b
B20_1707:		.db $00				; 00
B20_1708:		.db $00				; 00
B20_1709:		.db $00				; 00
B20_170a:		.db $00				; 00
B20_170b:		.db $00				; 00
B20_170c:		.db $00				; 00
B20_170d:		.db $00				; 00
B20_170e:		ora ($00), y	; 11 00
B20_1710:		.db $00				; 00
B20_1711:		.db $00				; 00
B20_1712:		ora ($00), y	; 11 00
B20_1714:	.db $1a
B20_1715:		.db $00				; 00
B20_1716:	.db $82
B20_1717:		.db $00				; 00
B20_1718:		.db $00				; 00
B20_1719:		.db $00				; 00
B20_171a:	.db $ee $00 $00
B20_171d:		.db $00				; 00
B20_171e:		.db $00				; 00
B20_171f:		.db $00				; 00
B20_1720:		ora $1de1, x	; 1d e1 1d
B20_1723:	.db $57
B20_1724:	.db $1d $00 $00
B20_1727:	.db $da
B20_1728:	.db $1b
B20_1729:		.db $00				; 00
B20_172a:	.db $8f
B20_172b:		cpx #$1b		; e0 1b
B20_172d:	.db $14
B20_172e:	.db $1e $00 $00
B20_1731:		sbc ($1d, x)	; e1 1d
B20_1733:		.db $00				; 00
B20_1734:		ora $1d00, x	; 1d 00 1d
B20_1737:		.db $00				; 00
B20_1738:		sty $57			; 84 57
B20_173a:		.db $00				; 00
B20_173b:		.db $00				; 00
B20_173c:	.db $1f
B20_173d:		ror $e100		; 6e 00 e1
B20_1740:	.db $1f
B20_1741:		.db $00				; 00
B20_1742:		jsr $2016		; 20 16 20
B20_1745:		.db $00				; 00
B20_1746:		.db $00				; 00
B20_1747:		.db $00				; 00
B20_1748:		.db $00				; 00
B20_1749:		.db $00				; 00
B20_174a:		.db $00				; 00
B20_174b:		.db $00				; 00
B20_174c:		.db $00				; 00
B20_174d:	.db $e2
B20_174e:	.db $1b
B20_174f:	.db $79 $1f $00
B20_1752:		.db $00				; 00
B20_1753:	.db $02
B20_1754:		.db $00				; 00
B20_1755:	.db $d3
B20_1756:	.db $1b
B20_1757:		ora $12, x		; 15 12
B20_1759:		.db $00				; 00
B20_175a:	.db $12
B20_175b:		.db $00				; 00
B20_175c:		.db $00				; 00
B20_175d:		.db $00				; 00
B20_175e:		.db $00				; 00
B20_175f:		.db $00				; 00
B20_1760:		.db $00				; 00
B20_1761:		.db $00				; 00
B20_1762:	.db $1b
B20_1763:	.db $14
B20_1764:		stx $d4			; 86 d4
B20_1766:	.db $87
B20_1767:		.db $00				; 00
B20_1768:	.db $1b
B20_1769:		.db $00				; 00
B20_176a:		.db $00				; 00
B20_176b:		.db $00				; 00
B20_176c:		.db $00				; 00
B20_176d:		.db $00				; 00
B20_176e:		.db $00				; 00
B20_176f:		.db $00				; 00
B20_1770:		.db $00				; 00
B20_1771:	.db $d4
B20_1772:	.db $7e $00 $00
B20_1775:		.db $00				; 00
B20_1776:	.db $7c
B20_1777:		.db $00				; 00
B20_1778:	.db $f9 $00 $00
B20_177b:	.db $d4
B20_177c:		.db $00				; 00
B20_177d:		.db $00				; 00
B20_177e:	.db $1b
B20_177f:		.db $00				; 00
B20_1780:		.db $00				; 00
B20_1781:		.db $00				; 00
B20_1782:		.db $00				; 00
B20_1783:		.db $00				; 00
B20_1784:		.db $00				; 00
B20_1785:		.db $00				; 00
B20_1786:		asl $00, x		; 16 00
B20_1788:		.db $00				; 00
B20_1789:		.db $00				; 00
B20_178a:	.db $1b
B20_178b:		.db $00				; 00
B20_178c:		dey				; 88 
B20_178d:		.db $00				; 00
B20_178e:		.db $00				; 00
B20_178f:		.db $00				; 00
B20_1790:		.db $00				; 00
B20_1791:	.db $27
B20_1792:		.db $00				; 00
B20_1793:		.db $00				; 00
B20_1794:		.db $00				; 00
B20_1795:		.db $00				; 00
B20_1796:		.db $00				; 00
B20_1797:		.db $00				; 00
B20_1798:		stx $315e		; 8e 5e 31
B20_179b:		cmp $8b, x		; d5 8b
B20_179d:		adc $1f, x		; 75 1f
B20_179f:		.db $00				; 00
B20_17a0:		.db $00				; 00
B20_17a1:		cmp $1c, x		; d5 1c
B20_17a3:		adc $8c, x		; 75 8c
B20_17a5:	.db $5e $1c $00
B20_17a8:	.db $17
B20_17a9:		eor $d519, x	; 5d 19 d5
B20_17ac:	.db $7d $00 $00
B20_17af:		.db $00				; 00
B20_17b0:		.db $00				; 00
B20_17b1:		.db $00				; 00
B20_17b2:		.db $00				; 00
B20_17b3:		.db $00				; 00
B20_17b4:		.db $00				; 00
B20_17b5:		.db $00				; 00
B20_17b6:	.db $17
B20_17b7:		.db $00				; 00
B20_17b8:	.db $17
B20_17b9:		.db $00				; 00
B20_17ba:		.db $00				; 00
B20_17bb:		.db $00				; 00
B20_17bc:		.db $00				; 00
B20_17bd:		.db $00				; 00
B20_17be:		.db $00				; 00
B20_17bf:		.db $00				; 00
B20_17c0:		.db $00				; 00
B20_17c1:		.db $00				; 00
B20_17c2:		.db $00				; 00
B20_17c3:		.db $00				; 00
B20_17c4:		.db $00				; 00
B20_17c5:		.db $00				; 00
B20_17c6:		asl $8600, x	; 1e 00 86
B20_17c9:		.db $00				; 00
B20_17ca:	.db $1e $00 $00
B20_17cd:		.db $00				; 00
B20_17ce:		.db $00				; 00
B20_17cf:		.db $00				; 00
B20_17d0:	.db $32
B20_17d1:		sei				; 78 
B20_17d2:	.db $89
B20_17d3:	.db $57
B20_17d4:		txa				; 8a 
B20_17d5:		.db $00				; 00
B20_17d6:		.db $00				; 00
B20_17d7:		.db $00				; 00
B20_17d8:		.db $00				; 00
B20_17d9:		.db $00				; 00
B20_17da:		.db $00				; 00
B20_17db:		.db $00				; 00
B20_17dc:		.db $00				; 00
B20_17dd:		.db $00				; 00
B20_17de:		.db $00				; 00
B20_17df:		.db $00				; 00
B20_17e0:	.db $f2
B20_17e1:		rol $3e1b, x	; 3e 1b 3e
B20_17e4:		.db $00				; 00
B20_17e5:	.db $3b
B20_17e6:		.db $00				; 00
B20_17e7:		.db $00				; 00
B20_17e8:		.db $00				; 00
B20_17e9:		.db $00				; 00
B20_17ea:		sta ($00, x)	; 81 00
B20_17ec:		.db $00				; 00
B20_17ed:		.db $00				; 00
B20_17ee:		.db $00				; 00
B20_17ef:		and #$00		; 29 00
B20_17f1:		.db $00				; 00
B20_17f2:		.db $00				; 00
B20_17f3:		.db $00				; 00
B20_17f4:		.db $00				; 00
B20_17f5:		.db $00				; 00
B20_17f6:		.db $00				; 00
B20_17f7:		.db $00				; 00
B20_17f8:		.db $00				; 00
B20_17f9:		and $3d00, x	; 3d 00 3d
B20_17fc:		.db $00				; 00
B20_17fd:		.db $00				; 00
B20_17fe:	.db $89
B20_17ff:		.db $00				; 00
B20_1800:		.db $00				; 00
B20_1801:		.db $00				; 00
B20_1802:		.db $00				; 00
B20_1803:		.db $00				; 00
B20_1804:	.db $3b
B20_1805:		.db $00				; 00
B20_1806:	.db $74
B20_1807:		.db $00				; 00
B20_1808:		eor $40			; 45 40
B20_180a:		.db $00				; 00
B20_180b:		.db $00				; 00
B20_180c:	.db $37
B20_180d:		.db $00				; 00
B20_180e:		sec				; 38 
B20_180f:	.db $3f
B20_1810:		.db $00				; 00
B20_1811:		.db $00				; 00
B20_1812:		.db $00				; 00
B20_1813:		.db $00				; 00
B20_1814:		.db $00				; 00
B20_1815:		.db $00				; 00
B20_1816:		.db $00				; 00
B20_1817:		.db $00				; 00
B20_1818:	.db $b3
B20_1819:		eor ($41, x)	; 41 41
B20_181b:		.db $00				; 00
B20_181c:	.db $07
B20_181d:		.db $00				; 00
B20_181e:		sbc ($00), y	; f1 00
B20_1820:		.db $00				; 00
B20_1821:		.db $00				; 00
B20_1822:		.db $00				; 00
B20_1823:		.db $00				; 00
B20_1824:	.db $3a
B20_1825:	.db $7a
B20_1826:	.db $42
B20_1827:		lsr a			; 4a
B20_1828:	.db $43
B20_1829:		.db $00				; 00
B20_182a:		.db $00				; 00
B20_182b:		.db $00				; 00
B20_182c:		.db $00				; 00
B20_182d:		.db $00				; 00
B20_182e:		.db $00				; 00
B20_182f:		.db $00				; 00
B20_1830:		.db $00				; 00
B20_1831:	.db $32
B20_1832:		bit $00			; 24 00
B20_1834:		sbc $00, x		; f5 00
B20_1836:	.db $23
B20_1837:		.db $00				; 00
B20_1838:	.db $22
B20_1839:		.db $00				; 00
B20_183a:	.db $23
B20_183b:	.db $32
B20_183c:	.db $22
B20_183d:		.db $00				; 00
B20_183e:	.db $23
B20_183f:		.db $00				; 00
B20_1840:		.db $00				; 00
B20_1841:		.db $00				; 00
B20_1842:		.db $00				; 00
B20_1843:		.db $00				; 00
B20_1844:		and $fa34		; 2d 34 fa
B20_1847:	.db $d4
B20_1848:	.db $3b
B20_1849:		.db $00				; 00
B20_184a:		sty $00, x		; 94 00
B20_184c:		.db $00				; 00
B20_184d:		.db $00				; 00
B20_184e:		.db $00				; 00
B20_184f:		.db $00				; 00
B20_1850:	.db $3b
B20_1851:		cmp $4400, y	; d9 00 44
B20_1854:		rol $25da		; 2e da 25
B20_1857:	.db $44
B20_1858:		adc $db			; 65 db
B20_185a:		and ($00, x)	; 21 00
B20_185c:		.db $00				; 00
B20_185d:	.db $dc
B20_185e:		.db $00				; 00
B20_185f:		.db $00				; 00
B20_1860:		.db $00				; 00
B20_1861:		.db $00				; 00
B20_1862:		.db $00				; 00
B20_1863:		bit $00			; 24 00
B20_1865:		.db $00				; 00
B20_1866:		.db $00				; 00
B20_1867:		.db $00				; 00
B20_1868:		.db $00				; 00
B20_1869:		.db $00				; 00
B20_186a:		.db $00				; 00
B20_186b:		.db $00				; 00
B20_186c:	.db $9d $00 $00
B20_186f:		ror a			; 6a
B20_1870:		adc $936a		; 6d 6a 93
B20_1873:		.db $00				; 00
B20_1874:	.db $7a
B20_1875:	.db $34
B20_1876:	.db $9d $00 $00
B20_1879:		bpl B20_18dc ; 10 61

B20_187b:		.db $00				; 00
B20_187c:		.db $00				; 00
B20_187d:		.db $00				; 00
B20_187e:		.db $00				; 00
B20_187f:		.db $00				; 00
B20_1880:	.db $e7
B20_1881:		.db $00				; 00
B20_1882:		.db $00				; 00
B20_1883:	.db $6f
B20_1884:	.db $9b
B20_1885:	.db $80
B20_1886:		.db $00				; 00
B20_1887:		.db $00				; 00
B20_1888:		.db $00				; 00
B20_1889:		cld				; d8 
B20_188a:	.db $9c
B20_188b:	.db $80
B20_188c:		.db $00				; 00
B20_188d:	.db $6f
B20_188e:		jmp ($6c00)		; 6c 00 6c


B20_1891:		eor ($00), y	; 51 00
B20_1893:		cld				; d8 
B20_1894:		.db $00				; 00
B20_1895:	.db $6f
B20_1896:		jmp ($6c00)		; 6c 00 6c


B20_1899:	.db $63
B20_189a:		.db $00				; 00
B20_189b:		.db $00				; 00
B20_189c:		eor #$7c		; 49 7c
B20_189e:		.db $00				; 00
B20_189f:		.db $00				; 00
B20_18a0:		.db $00				; 00
B20_18a1:		.db $00				; 00
B20_18a2:		.db $00				; 00
B20_18a3:		.db $00				; 00
B20_18a4:	.db $73
B20_18a5:	.db $0b
B20_18a6:		.db $00				; 00
B20_18a7:		.db $00				; 00
B20_18a8:		sta $83, x		; 95 83
B20_18aa:		adc ($00, x)	; 61 00
B20_18ac:		stx $d4, y		; 96 d4
B20_18ae:		adc $7e			; 65 7e
B20_18b0:		stx $41, y		; 96 41
B20_18b2:	.db $cb
B20_18b3:		.db $00				; 00
B20_18b4:		.db $00				; 00
B20_18b5:		.db $00				; 00
B20_18b6:		.db $00				; 00
B20_18b7:		.db $00				; 00
B20_18b8:		bcc B20_18ba ; 90 00

B20_18ba:	.db $93
B20_18bb:		.db $00				; 00
B20_18bc:		sty $41, x		; 94 41
B20_18be:		.db $00				; 00
B20_18bf:	.db $82
B20_18c0:	.db $93
B20_18c1:	.db $7d $94 $00
B20_18c4:		sty $00, x		; 94 00
B20_18c6:		.db $00				; 00
B20_18c7:		.db $00				; 00
B20_18c8:		.db $00				; 00
B20_18c9:		.db $00				; 00
B20_18ca:		tya				; 98 
B20_18cb:	.db $0f
B20_18cc:	.db $97
B20_18cd:		.db $00				; 00
B20_18ce:		.db $00				; 00
B20_18cf:		.db $00				; 00
B20_18d0:		sty $36, x		; 94 36
B20_18d2:		sty $41, x		; 94 41
B20_18d4:		sty $0b, x		; 94 0b
B20_18d6:		.db $00				; 00
B20_18d7:		.db $00				; 00
B20_18d8:		.db $00				; 00
B20_18d9:		.db $00				; 00
B20_18da:		.db $00				; 00
B20_18db:		.db $00				; 00
B20_18dc:		.db $00				; 00
B20_18dd:		.db $00				; 00
B20_18de:	.db $92
B20_18df:		.db $00				; 00
B20_18e0:		sei				; 78 
B20_18e1:		.db $00				; 00
B20_18e2:		sta ($00), y	; 91 00
B20_18e4:		.db $00				; 00
B20_18e5:	.db $62
B20_18e6:		.db $00				; 00
B20_18e7:		.db $00				; 00
B20_18e8:		.db $00				; 00
B20_18e9:		.db $00				; 00
B20_18ea:		.db $00				; 00
B20_18eb:		.db $00				; 00
B20_18ec:		.db $00				; 00
B20_18ed:		.db $00				; 00
B20_18ee:		.db $00				; 00
B20_18ef:		.db $00				; 00
B20_18f0:		bcc B20_18f2 ; 90 00

B20_18f2:		.db $00				; 00
B20_18f3:	.db $7f
B20_18f4:		txs				; 9a 
B20_18f5:		.db $00				; 00
B20_18f6:		.db $00				; 00
B20_18f7:		.db $00				; 00
B20_18f8:		.db $00				; 00
B20_18f9:		.db $00				; 00
B20_18fa:		.db $00				; 00
B20_18fb:		and ($00, x)	; 21 00
B20_18fd:		and ($00, x)	; 21 00
B20_18ff:		.db $00				; 00
B20_1900:		cli				; 58 
B20_1901:		.db $00				; 00
B20_1902:		.db $00				; 00
B20_1903:	.db $1b
B20_1904:		.db $00				; 00
B20_1905:		.db $00				; 00
B20_1906:		sta $6500, y	; 99 00 65
B20_1909:	.db $1b
B20_190a:		.db $00				; 00
B20_190b:		.db $00				; 00
B20_190c:		.db $00				; 00
B20_190d:	.db $1b
B20_190e:		cli				; 58 
B20_190f:		.db $00				; 00
B20_1910:		.db $00				; 00
B20_1911:		.db $00				; 00
B20_1912:		.db $00				; 00
B20_1913:		.db $00				; 00
B20_1914:		.db $00				; 00
B20_1915:	.db $6b
B20_1916:		.db $00				; 00
B20_1917:		.db $00				; 00
B20_1918:		.db $00				; 00
B20_1919:		.db $00				; 00
B20_191a:		.db $00				; 00
B20_191b:		.db $00				; 00
B20_191c:	.db $99 $6c $00
B20_191f:		.db $00				; 00
B20_1920:		.db $00				; 00
B20_1921:		.db $00				; 00
B20_1922:		adc ($00, x)	; 61 00
B20_1924:		.db $00				; 00
B20_1925:		.db $00				; 00
B20_1926:		.db $00				; 00
B20_1927:		.db $00				; 00
B20_1928:		.db $00				; 00
B20_1929:		.db $00				; 00
B20_192a:	.db $9e
B20_192b:	.db $6c $00 $00
B20_192e:		.db $00				; 00
B20_192f:		.db $00				; 00
B20_1930:		.db $00				; 00
B20_1931:		.db $00				; 00
B20_1932:		.db $00				; 00
B20_1933:		.db $00				; 00
B20_1934:		.db $00				; 00
B20_1935:	.db $6c $00 $00
B20_1938:		.db $00				; 00
B20_1939:		.db $00				; 00
B20_193a:		.db $00				; 00
B20_193b:	.db $6c $00 $00
B20_193e:		.db $00				; 00
B20_193f:		.db $00				; 00
B20_1940:		.db $00				; 00
B20_1941:		.db $00				; 00
B20_1942:	.db $9f
B20_1943:		.db $00				; 00
B20_1944:		.db $00				; 00
B20_1945:		.db $00				; 00
B20_1946:		.db $00				; 00
B20_1947:		.db $00				; 00
B20_1948:		.db $00				; 00
B20_1949:		.db $00				; 00
B20_194a:		.db $00				; 00
B20_194b:		.db $00				; 00
B20_194c:		eor $590b, y	; 59 0b 59
B20_194f:	.db $6b
B20_1950:		.db $00				; 00
B20_1951:		.db $00				; 00
B20_1952:		.db $00				; 00
B20_1953:	.db $6b
B20_1954:		.db $00				; 00
B20_1955:		.db $00				; 00
B20_1956:		.db $00				; 00
B20_1957:	.db $6b
B20_1958:		.db $00				; 00
B20_1959:		.db $00				; 00
B20_195a:		.db $00				; 00
B20_195b:		.db $00				; 00
B20_195c:		sta ($6b), y	; 91 6b
B20_195e:		.db $00				; 00
B20_195f:	.db $0b
B20_1960:		sta $00, x		; 95 00
B20_1962:		adc $a000		; 6d 00 a0
B20_1965:	.db $6b
B20_1966:		.db $00				; 00
B20_1967:		.db $00				; 00
B20_1968:		lda ($0b, x)	; a1 0b
B20_196a:		ldx #$00		; a2 00
B20_196c:		.db $00				; 00
B20_196d:	.db $6b
B20_196e:		ldx #$0b		; a2 0b
B20_1970:		.db $00				; 00
B20_1971:	.db $6b
B20_1972:		.db $00				; 00
B20_1973:	.db $0b
B20_1974:		adc $a36b		; 6d 6b a3
B20_1977:	.db $0b
B20_1978:	.db $92
B20_1979:		.db $00				; 00
B20_197a:		stx $00, y		; 96 00
B20_197c:		.db $00				; 00
B20_197d:		.db $00				; 00
B20_197e:		.db $00				; 00
B20_197f:		.db $00				; 00
B20_1980:		.db $00				; 00
B20_1981:		.db $00				; 00
B20_1982:		.db $00				; 00
B20_1983:	.db $1e $00 $00
B20_1986:		.db $00				; 00
B20_1987:		.db $00				; 00
B20_1988:		.db $00				; 00
B20_1989:		.db $00				; 00
B20_198a:		.db $00				; 00
B20_198b:		.db $00				; 00
B20_198c:	.db $97
B20_198d:		.db $00				; 00
B20_198e:		.db $00				; 00
B20_198f:		.db $00				; 00
B20_1990:		adc $c0			; 65 c0
B20_1992:		ror a			; 6a
B20_1993:	.db $6b
B20_1994:		.db $00				; 00
B20_1995:	.db $6b
B20_1996:		.db $00				; 00
B20_1997:		.db $00				; 00
B20_1998:		pla				; 68 
B20_1999:	.db $8b
B20_199a:		adc $688b		; 6d 8b 68
B20_199d:	.db $0b
B20_199e:		pla				; 68 
B20_199f:		txa				; 8a 
B20_19a0:		.db $00				; 00
B20_19a1:		.db $00				; 00
B20_19a2:		adc ($00, x)	; 61 00
B20_19a4:		.db $00				; 00
B20_19a5:		.db $00				; 00
B20_19a6:		.db $00				; 00
B20_19a7:		.db $00				; 00
B20_19a8:		eor $6685, y	; 59 85 66
B20_19ab:		stx $00			; 86 00
B20_19ad:		pla				; 68 
B20_19ae:		ldx #$00		; a2 00
B20_19b0:		sta $9400, x	; 9d 00 94
B20_19b3:	.db $89
B20_19b4:		.db $00				; 00
B20_19b5:	.db $57
B20_19b6:	.db $07
B20_19b7:		.db $00				; 00
B20_19b8:		.db $00				; 00
B20_19b9:		.db $00				; 00
B20_19ba:		.db $00				; 00
B20_19bb:		.db $00				; 00
B20_19bc:		bcc B20_19be ; 90 00

B20_19be:	.db $ab
B20_19bf:		.db $00				; 00
B20_19c0:		.db $00				; 00
B20_19c1:	.db $d3
B20_19c2:		bcc B20_19c4 ; 90 00

B20_19c4:		.db $00				; 00
B20_19c5:		.db $00				; 00
B20_19c6:		.db $00				; 00
B20_19c7:	.db $d3
B20_19c8:		tax				; aa 
B20_19c9:		.db $00				; 00
B20_19ca:	.db $6c $00 $00
B20_19cd:		.db $00				; 00
B20_19ce:		.db $00				; 00
B20_19cf:		.db $00				; 00
B20_19d0:		eor $5900, y	; 59 00 59
B20_19d3:		cmp ($5c, x)	; c1 5c
B20_19d5:		.db $00				; 00
B20_19d6:		eor $a9c1, y	; 59 c1 a9
B20_19d9:		.db $00				; 00
B20_19da:		.db $00				; 00
B20_19db:		.db $00				; 00
B20_19dc:		.db $00				; 00
B20_19dd:		.db $00				; 00
B20_19de:		inc $00, x		; f6 00
B20_19e0:		ldx #$00		; a2 00
B20_19e2:	.db $4c $71 $00
B20_19e5:	.db $72
B20_19e6:		bvc B20_19e8 ; 50 00

B20_19e8:	.db $53
B20_19e9:		.db $00				; 00
B20_19ea:	.db $97
B20_19eb:		adc ($68), y	; 71 68
B20_19ed:		.db $00				; 00
B20_19ee:	.db $6d $00 $00
B20_19f1:		.db $00				; 00
B20_19f2:		.db $00				; 00
B20_19f3:		.db $00				; 00
B20_19f4:	.db $f3
B20_19f5:		stx $95ac		; 8e ac 95
B20_19f8:		ldy $9000		; ac 00 90
B20_19fb:		sta $9a, x		; 95 9a
B20_19fd:	.db $8f
B20_19fe:		ldx $ae95		; ae 95 ae
B20_1a01:		.db $00				; 00
B20_1a02:	.db $99 $00 $00
B20_1a05:		.db $00				; 00
B20_1a06:		.db $00				; 00
B20_1a07:		.db $00				; 00
B20_1a08:	.db $ad $00 $00
B20_1a0b:		.db $00				; 00
B20_1a0c:		.db $00				; 00
B20_1a0d:		.db $00				; 00
B20_1a0e:		.db $00				; 00
B20_1a0f:		.db $00				; 00
B20_1a10:		.db $00				; 00
B20_1a11:		.db $00				; 00
B20_1a12:		.db $00				; 00
B20_1a13:		.db $00				; 00
B20_1a14:	.db $f3
B20_1a15:		adc ($5c), y	; 71 5c
B20_1a17:	.db $c2
B20_1a18:	.db $3a
B20_1a19:		.db $00				; 00
B20_1a1a:		.db $00				; 00
B20_1a1b:	.db $c2
B20_1a1c:	.db $72
B20_1a1d:		sta $c2b0		; 8d b0 c2
B20_1a20:		.db $00				; 00
B20_1a21:		.db $00				; 00
B20_1a22:	.db $72
B20_1a23:		.db $00				; 00
B20_1a24:		.db $00				; 00
B20_1a25:		.db $00				; 00
B20_1a26:		.db $00				; 00
B20_1a27:		.db $00				; 00
B20_1a28:		bcc B20_19ee ; 90 c4

B20_1a2a:	.db $77
B20_1a2b:		.db $00				; 00
B20_1a2c:		ldy $ae00		; ac 00 ae
B20_1a2f:		.db $00				; 00
B20_1a30:	.db $9b
B20_1a31:		.db $00				; 00
B20_1a32:		.db $00				; 00
B20_1a33:		.db $00				; 00
B20_1a34:	.db $77
B20_1a35:		.db $00				; 00
B20_1a36:		stx $00, y		; 96 00
B20_1a38:		.db $00				; 00
B20_1a39:	.db $4b
B20_1a3a:		.db $00				; 00
B20_1a3b:		bcc B20_1a3d ; 90 00

B20_1a3d:		.db $00				; 00
B20_1a3e:	.db $9b
B20_1a3f:		.db $00				; 00
B20_1a40:		.db $00				; 00
B20_1a41:		.db $00				; 00
B20_1a42:		ror a			; 6a
B20_1a43:		.db $00				; 00
B20_1a44:	.db $bc $00 $00
B20_1a47:		.db $00				; 00
B20_1a48:		.db $00				; 00
B20_1a49:		.db $00				; 00
B20_1a4a:		.db $00				; 00
B20_1a4b:		.db $00				; 00
B20_1a4c:	.db $af
B20_1a4d:	.db $13
B20_1a4e:		.db $00				; 00
B20_1a4f:		.db $00				; 00
B20_1a50:		bcs B20_1a52 ; b0 00

B20_1a52:		.db $00				; 00
B20_1a53:		.db $00				; 00
B20_1a54:		.db $00				; 00
B20_1a55:		.db $00				; 00
B20_1a56:		.db $00				; 00
B20_1a57:	.db $1f
B20_1a58:		.db $00				; 00
B20_1a59:		.db $00				; 00
B20_1a5a:		.db $00				; 00
B20_1a5b:		.db $00				; 00
B20_1a5c:		.db $00				; 00
B20_1a5d:		.db $00				; 00
B20_1a5e:		.db $00				; 00
B20_1a5f:		.db $00				; 00
B20_1a60:		sta $9600, x	; 9d 00 96
B20_1a63:	.db $1c
B20_1a64:		lda ($1c, x)	; a1 1c
B20_1a66:		stx $00, y		; 96 00
B20_1a68:		.db $00				; 00
B20_1a69:		.db $00				; 00
B20_1a6a:	.db $af
B20_1a6b:	.db $92
B20_1a6c:	.db $92
B20_1a6d:		.db $00				; 00
B20_1a6e:		eor $6a00, y	; 59 00 6a
B20_1a71:		.db $00				; 00
B20_1a72:		stx $00, y		; 96 00
B20_1a74:		lda ($93), y	; b1 93
B20_1a76:		.db $00				; 00
B20_1a77:		.db $00				; 00
B20_1a78:	.db $92
B20_1a79:	.db $92
B20_1a7a:	.db $3c
B20_1a7b:	.db $93
B20_1a7c:		jmp ($ab00)		; 6c 00 ab


B20_1a7f:		.db $00				; 00
B20_1a80:		.db $00				; 00
B20_1a81:		.db $00				; 00
B20_1a82:		.db $00				; 00
B20_1a83:	.db $8c $00 $00
B20_1a86:		.db $00				; 00
B20_1a87:		.db $00				; 00
B20_1a88:		lda $00, x		; b5 00
B20_1a8a:		ldy $6e, x		; b4 6e
B20_1a8c:		sta $b294, x	; 9d 94 b2
B20_1a8f:		.db $00				; 00
B20_1a90:	.db $b3
B20_1a91:		.db $00				; 00
B20_1a92:	.db $63
B20_1a93:		.db $00				; 00
B20_1a94:		.db $00				; 00
B20_1a95:		.db $00				; 00
B20_1a96:		.db $00				; 00
B20_1a97:		.db $00				; 00
B20_1a98:		.db $00				; 00
B20_1a99:		.db $00				; 00
B20_1a9a:		.db $00				; 00
B20_1a9b:	.db $03
B20_1a9c:		.db $00				; 00
B20_1a9d:		.db $00				; 00
B20_1a9e:		.db $00				; 00
B20_1a9f:		.db $00				; 00
B20_1aa0:	.db $74
B20_1aa1:		.db $00				; 00
B20_1aa2:		.db $00				; 00
B20_1aa3:		.db $00				; 00
B20_1aa4:		.db $00				; 00
B20_1aa5:		.db $00				; 00
B20_1aa6:		.db $00				; 00
B20_1aa7:	.db $14
B20_1aa8:		.db $00				; 00
B20_1aa9:		.db $00				; 00
B20_1aaa:	.db $62
B20_1aab:		cmp $3f			; c5 3f
B20_1aad:		.db $00				; 00
B20_1aae:		ldx $a5, y		; b6 a5
B20_1ab0:		sei				; 78 
B20_1ab1:		.db $00				; 00
B20_1ab2:		.db $00				; 00
B20_1ab3:		.db $00				; 00
B20_1ab4:		.db $00				; 00
B20_1ab5:		.db $00				; 00
B20_1ab6:		.db $00				; 00
B20_1ab7:	.db $14
B20_1ab8:	.db $3f
B20_1ab9:	.db $c3
B20_1aba:	.db $2f
B20_1abb:		.db $00				; 00
B20_1abc:	.db $be $00 $00
B20_1abf:		.db $00				; 00
B20_1ac0:		.db $00				; 00
B20_1ac1:		.db $00				; 00
B20_1ac2:		.db $00				; 00
B20_1ac3:		.db $00				; 00
B20_1ac4:		.db $00				; 00
B20_1ac5:		bvs B20_1b28 ; 70 61

B20_1ac7:		.db $00				; 00
B20_1ac8:		.db $00				; 00
B20_1ac9:		bvs B20_1b30 ; 70 65

B20_1acb:		.db $00				; 00
B20_1acc:	.db $64
B20_1acd:		bvs B20_1b34 ; 70 65

B20_1acf:		.db $00				; 00
B20_1ad0:	.db $62
B20_1ad1:		;removed
	.db $70 $63

B20_1ad3:		.db $00				; 00
B20_1ad4:		.db $00				; 00
B20_1ad5:		.db $00				; 00
B20_1ad6:		.db $00				; 00
B20_1ad7:		and $00, x		; 35 00
B20_1ad9:		.db $00				; 00
B20_1ada:		.db $00				; 00
B20_1adb:		.db $00				; 00
B20_1adc:		eor $5900, y	; 59 00 59
B20_1adf:		.db $00				; 00
B20_1ae0:	.db $67
B20_1ae1:	.db $39 $50 $00
B20_1ae4:		eor $5900, y	; 59 00 59
B20_1ae7:		.db $00				; 00
B20_1ae8:		.db $00				; 00
B20_1ae9:		lsr $5e, x		; 56 5e
B20_1aeb:		.db $00				; 00
B20_1aec:	.db $5f
B20_1aed:		.db $00				; 00
B20_1aee:		rts				; 60 


B20_1aef:		lsr $3a, x		; 56 3a
B20_1af1:		.db $00				; 00
B20_1af2:		.db $00				; 00
B20_1af3:		.db $00				; 00
B20_1af4:	.db $eb
B20_1af5:		.db $00				; 00
B20_1af6:		eor $4b00, y	; 59 00 4b
B20_1af9:	.db $33
B20_1afa:	.db $5c
B20_1afb:		.db $00				; 00
B20_1afc:	.db $5b
B20_1afd:		.db $00				; 00
B20_1afe:	.db $5a
B20_1aff:		.db $00				; 00
B20_1b00:		.db $00				; 00
B20_1b01:		.db $00				; 00
B20_1b02:		.db $00				; 00
B20_1b03:		and $00, x		; 35 00
B20_1b05:		.db $00				; 00
B20_1b06:		.db $00				; 00
B20_1b07:		.db $00				; 00
B20_1b08:	.db $3a
B20_1b09:		.db $00				; 00
B20_1b0a:	.db $3a
B20_1b0b:		.db $00				; 00
B20_1b0c:	.db $3a
B20_1b0d:		.db $00				; 00
B20_1b0e:	.db $59 $00 $00
B20_1b11:		.db $00				; 00
B20_1b12:		jmp ($6d00)		; 6c 00 6d


B20_1b15:		.db $00				; 00
B20_1b16:		.db $00				; 00
B20_1b17:		.db $00				; 00
B20_1b18:	.db $5c
B20_1b19:		.db $00				; 00
B20_1b1a:		.db $00				; 00
B20_1b1b:	.db $54
B20_1b1c:		jmp ($3a54)		; 6c 54 3a


B20_1b1f:	.db $54
B20_1b20:		eor $6655, y	; 59 55 66
B20_1b23:		eor $00, x		; 55 00
B20_1b25:		eor $68, x		; 55 68
B20_1b27:	.db $54
B20_1b28:		pla				; 68 
B20_1b29:	.db $54
B20_1b2a:		.db $00				; 00
B20_1b2b:		.db $00				; 00
B20_1b2c:		.db $00				; 00
B20_1b2d:		.db $00				; 00
B20_1b2e:		.db $00				; 00
B20_1b2f:		.db $00				; 00
B20_1b30:		.db $00				; 00
B20_1b31:		.db $00				; 00
B20_1b32:		adc ($00, x)	; 61 00
B20_1b34:	.db $5d $00 $00
B20_1b37:		bvc B20_1b9c ; 50 63

B20_1b39:		.db $00				; 00
B20_1b3a:	.db $6f
B20_1b3b:		.db $00				; 00
B20_1b3c:	.db $6f
B20_1b3d:		.db $00				; 00
B20_1b3e:	.db $6f
B20_1b3f:		.db $00				; 00
B20_1b40:	.db $6f
B20_1b41:		.db $00				; 00
B20_1b42:	.db $6f
B20_1b43:	.db $4f
B20_1b44:		.db $00				; 00
B20_1b45:		.db $00				; 00
B20_1b46:		.db $00				; 00
B20_1b47:		.db $00				; 00
B20_1b48:		ror a			; 6a
B20_1b49:		.db $00				; 00
B20_1b4a:	.db $3a
B20_1b4b:		.db $00				; 00
B20_1b4c:	.db $6e $00 $00
B20_1b4f:		.db $00				; 00
B20_1b50:		.db $00				; 00
B20_1b51:		.db $00				; 00
B20_1b52:		.db $00				; 00
B20_1b53:		.db $00				; 00
B20_1b54:		.db $00				; 00
B20_1b55:		.db $00				; 00
B20_1b56:	.db $72
B20_1b57:		.db $00				; 00
B20_1b58:		adc $7100		; 6d 00 71
B20_1b5b:		.db $00				; 00
B20_1b5c:		.db $00				; 00
B20_1b5d:		.db $00				; 00
B20_1b5e:		.db $00				; 00
B20_1b5f:	.db $53
B20_1b60:		.db $00				; 00
B20_1b61:		.db $00				; 00
B20_1b62:		.db $00				; 00
B20_1b63:		.db $00				; 00
B20_1b64:		.db $00				; 00
B20_1b65:		.db $00				; 00
B20_1b66:		.db $00				; 00
B20_1b67:	.db $20 $00 $00
B20_1b6a:		.db $00				; 00
B20_1b6b:		.db $00				; 00
B20_1b6c:		.db $00				; 00
B20_1b6d:		.db $00				; 00
B20_1b6e:		.db $00				; 00
B20_1b6f:		.db $00				; 00
B20_1b70:		.db $00				; 00
B20_1b71:		dec $559d, x	; de 9d 55
B20_1b74:		.db $00				; 00
B20_1b75:		.db $00				; 00
B20_1b76:		txs				; 9a 
B20_1b77:	.db $bf
B20_1b78:	.db $d2
B20_1b79:		eor $3a, x		; 55 3a
B20_1b7b:		dec $5590, x	; de 90 55
B20_1b7e:	.db $9c
B20_1b7f:		.db $00				; 00
B20_1b80:	.db $93
B20_1b81:	.db $bf
B20_1b82:		bcc B20_1bd9 ; 90 55

B20_1b84:		clv				; b8 
B20_1b85:		dec $bf00, x	; de 00 bf
B20_1b88:		.db $00				; 00
B20_1b89:		eor $3f, x		; 55 3f
B20_1b8b:		.db $00				; 00
B20_1b8c:		lda #$00		; a9 00
B20_1b8e:		.db $00				; 00
B20_1b8f:		dec $bfc4, x	; de c4 bf
B20_1b92:		.db $00				; 00
B20_1b93:		eor $c3, x		; 55 c3
B20_1b95:		.db $00				; 00
B20_1b96:		.db $00				; 00
B20_1b97:		.db $00				; 00
B20_1b98:		.db $00				; 00
B20_1b99:		.db $00				; 00
B20_1b9a:		.db $00				; 00
B20_1b9b:		.db $00				; 00
B20_1b9c:		.db $00				; 00
B20_1b9d:	.db $20 $00 $00
B20_1ba0:		.db $00				; 00
B20_1ba1:		.db $00				; 00
B20_1ba2:		.db $00				; 00
B20_1ba3:		.db $00				; 00
B20_1ba4:		.db $00				; 00
B20_1ba5:		.db $00				; 00
B20_1ba6:	.db $3a
B20_1ba7:		.db $00				; 00
B20_1ba8:		ror a			; 6a
B20_1ba9:		eor $3a, x		; 55 3a
B20_1bab:	.db $bf
B20_1bac:		cld				; d8 
B20_1bad:		dec $553a, x	; de 3a 55
B20_1bb0:	.db $3a
B20_1bb1:		.db $00				; 00
B20_1bb2:		ror a			; 6a
B20_1bb3:		eor $00, x		; 55 00
B20_1bb5:	.db $bf
B20_1bb6:	.db $33
B20_1bb7:		dec $5590, x	; de 90 55
B20_1bba:		pla				; 68 
B20_1bbb:	.db $bf
B20_1bbc:		bcc B20_1bbe ; 90 00

B20_1bbe:	.db $3f
B20_1bbf:		eor $3f, x		; 55 3f
B20_1bc1:	.db $de $6c $00
B20_1bc4:		.db $00				; 00
B20_1bc5:		sbc ($9b), y	; f1 9b
B20_1bc7:		sbc $9b, x		; f5 9b
B20_1bc9:	.db $fb
B20_1bca:	.db $9b
B20_1bcb:	.db $ff
B20_1bcc:	.db $9b
B20_1bcd:		ora ($9c, x)	; 01 9c
B20_1bcf:	.db $03
B20_1bd0:	.db $9c
B20_1bd1:	.db $07
B20_1bd2:	.db $9c
B20_1bd3:		ora $119c		; 0d 9c 11
B20_1bd6:	.db $9c
B20_1bd7:	.db $17
B20_1bd8:	.db $9c
B20_1bd9:	.db $1b
B20_1bda:	.db $9c
B20_1bdb:	.db $1f
B20_1bdc:	.db $9c
B20_1bdd:		and $9c			; 25 9c
B20_1bdf:		and #$9c		; 29 9c
B20_1be1:		and $2f9c		; 2d 9c 2f
B20_1be4:	.db $9c
B20_1be5:		and $9c, x		; 35 9c
B20_1be7:	.db $3b
B20_1be8:	.db $9c
B20_1be9:		eor ($9c, x)	; 41 9c
B20_1beb:		eor $9c			; 45 9c
B20_1bed:	.db $4b
B20_1bee:	.db $9c
B20_1bef:	.db $4f
B20_1bf0:	.db $9c
B20_1bf1:	.db $53
B20_1bf2:	.db $9c
B20_1bf3:	.db $6f
B20_1bf4:	.db $9c
B20_1bf5:	.db $8b
B20_1bf6:	.db $9c
B20_1bf7:	.db $9f
B20_1bf8:	.db $9c
B20_1bf9:	.db $c3
B20_1bfa:	.db $9c
B20_1bfb:	.db $d7
B20_1bfc:	.db $9c
B20_1bfd:	.db $e3
B20_1bfe:	.db $9c
B20_1bff:	.db $ef
B20_1c00:	.db $9c
B20_1c01:	.db $03
B20_1c02:		sta $9d0f, x	; 9d 0f 9d
B20_1c05:	.db $2b
B20_1c06:		sta $af08, x	; 9d 08 af
B20_1c09:	.db $47
B20_1c0a:		sta $9d5b, x	; 9d 5b 9d
B20_1c0d:	.db $6f
B20_1c0e:		sta $9d8b, x	; 9d 8b 9d
B20_1c11:	.db $a7
B20_1c12:		sta $af17, x	; 9d 17 af
B20_1c15:	.db $b3
B20_1c16:		sta $9dc7, x	; 9d c7 9d
B20_1c19:	.db $eb
B20_1c1a:		sta $9dff, x	; 9d ff 9d
B20_1c1d:	.db $1b
B20_1c1e:	.db $9e
B20_1c1f:	.db $37
B20_1c20:	.db $9e
B20_1c21:	.db $b2
B20_1c22:	.db $af
B20_1c23:	.db $4b
B20_1c24:	.db $9e
B20_1c25:	.db $67
B20_1c26:	.db $9e
B20_1c27:	.db $8b
B20_1c28:	.db $9e
B20_1c29:	.db $9f
B20_1c2a:	.db $9e
B20_1c2b:	.db $b3
B20_1c2c:	.db $9e
B20_1c2d:	.db $c7
B20_1c2e:	.db $9e
B20_1c2f:	.db $03
B20_1c30:	.db $9f
B20_1c31:	.db $0f
B20_1c32:	.db $9f
B20_1c33:	.db $3b
B20_1c34:	.db $9f
B20_1c35:	.db $47
B20_1c36:	.db $9f
B20_1c37:		dec $af, x		; d6 af
B20_1c39:	.db $5b
B20_1c3a:	.db $9f
B20_1c3b:	.db $67
B20_1c3c:	.db $9f
B20_1c3d:	.db $0f
B20_1c3e:		;removed
	.db $b0 $73

B20_1c40:	.db $9f
B20_1c41:	.db $7f
B20_1c42:	.db $9f
B20_1c43:	.db $9b
B20_1c44:	.db $9f
B20_1c45:	.db $b7
B20_1c46:	.db $9f
B20_1c47:		lda ($b0), y	; b1 b0
B20_1c49:	.db $cb
B20_1c4a:	.db $9f
B20_1c4b:	.db $df
B20_1c4c:	.db $9f
B20_1c4d:	.db $f3
B20_1c4e:	.db $9f
B20_1c4f:	.db $0f
B20_1c50:		ldy #$23		; a0 23
B20_1c52:		ldy #$00		; a0 00
B20_1c54:		.db $00				; 00
B20_1c55:		.db $00				; 00
B20_1c56:		sta $6c0b, x	; 9d 0b 6c
B20_1c59:		.db $00				; 00
B20_1c5a:		pla				; 68 
B20_1c5b:		.db $00				; 00
B20_1c5c:		.db $00				; 00
B20_1c5d:		.db $00				; 00
B20_1c5e:		.db $00				; 00
B20_1c5f:		lda $0bc3, y	; b9 c3 0b
B20_1c62:		nop				; ea 
B20_1c63:		.db $00				; 00
B20_1c64:		ldx $e900		; ae 00 e9
B20_1c67:		.db $00				; 00
B20_1c68:	.db $42
B20_1c69:		.db $00				; 00
B20_1c6a:		.db $00				; 00
B20_1c6b:	.db $0b
B20_1c6c:		.db $00				; 00
B20_1c6d:		.db $00				; 00
B20_1c6e:		.db $00				; 00
B20_1c6f:		.db $00				; 00
B20_1c70:		.db $00				; 00
B20_1c71:		.db $00				; 00
B20_1c72:	.db $92
B20_1c73:		.db $00				; 00
B20_1c74:		sta $9dbc, x	; 9d bc 9d
B20_1c77:		.db $00				; 00
B20_1c78:		sta $5cbc, x	; 9d bc 5c
B20_1c7b:		ldx $4b, y		; b6 4b
B20_1c7d:		ldx $5c, y		; b6 5c
B20_1c7f:		.db $00				; 00
B20_1c80:	.db $33
B20_1c81:		.db $00				; 00
B20_1c82:		cpx $b5			; e4 b5
B20_1c84:		jmp ($6800)		; 6c 00 68


B20_1c87:		.db $00				; 00
B20_1c88:	.db $eb
B20_1c89:		.db $00				; 00
B20_1c8a:		.db $00				; 00
B20_1c8b:		.db $00				; 00
B20_1c8c:		.db $00				; 00
B20_1c8d:		.db $00				; 00
B20_1c8e:		bcc B20_1ca5 ; 90 15

B20_1c90:		cpy #$00		; c0 00
B20_1c92:		.db $00				; 00
B20_1c93:		.db $00				; 00
B20_1c94:		pla				; 68 
B20_1c95:		.db $00				; 00
B20_1c96:		.db $00				; 00
B20_1c97:	.db $64
B20_1c98:		dec $be			; c6 be
B20_1c9a:		eor $9600, y	; 59 00 96
B20_1c9d:		.db $00				; 00
B20_1c9e:		.db $00				; 00
B20_1c9f:		.db $00				; 00
B20_1ca0:		.db $00				; 00
B20_1ca1:		.db $00				; 00
B20_1ca2:	.db $42
B20_1ca3:		.db $00				; 00
B20_1ca4:	.db $3b
B20_1ca5:		.db $00				; 00
B20_1ca6:	.db $3b
B20_1ca7:		eor $0b9d, y	; 59 9d 0b
B20_1caa:		.db $00				; 00
B20_1cab:		.db $00				; 00
B20_1cac:	.db $74
B20_1cad:		.db $00				; 00
B20_1cae:	.db $74
B20_1caf:		.db $00				; 00
B20_1cb0:	.db $c7
B20_1cb1:		.db $00				; 00
B20_1cb2:		sta $9d0b, x	; 9d 0b 9d
B20_1cb5:		.db $00				; 00
B20_1cb6:		.db $00				; 00
B20_1cb7:		cli				; 58 
B20_1cb8:		.db $00				; 00
B20_1cb9:		.db $00				; 00
B20_1cba:		.db $00				; 00
B20_1cbb:		tya				; 98 
B20_1cbc:		sta $6800, y	; 99 00 68
B20_1cbf:		.db $00				; 00
B20_1cc0:		ldx #$00		; a2 00
B20_1cc2:		.db $00				; 00
B20_1cc3:		.db $00				; 00
B20_1cc4:		.db $00				; 00
B20_1cc5:	.db $02
B20_1cc6:		.db $00				; 00
B20_1cc7:		.db $00				; 00
B20_1cc8:		.db $00				; 00
B20_1cc9:	.db $bd $95 $00
B20_1ccc:		pla				; 68 
B20_1ccd:		.db $00				; 00
B20_1cce:		.db $00				; 00
B20_1ccf:		.db $00				; 00
B20_1cd0:		.db $00				; 00
B20_1cd1:		bit $00			; 24 00
B20_1cd3:		.db $00				; 00
B20_1cd4:		.db $00				; 00
B20_1cd5:		.db $00				; 00
B20_1cd6:		.db $00				; 00
B20_1cd7:		.db $00				; 00
B20_1cd8:		.db $00				; 00
B20_1cd9:		.db $00				; 00
B20_1cda:		.db $00				; 00
B20_1cdb:	.db $5d $d1 $00
B20_1cde:		eor $2731		; 4d 31 27
B20_1ce1:		.db $00				; 00
B20_1ce2:		.db $00				; 00
B20_1ce3:		.db $00				; 00
B20_1ce4:		.db $00				; 00
B20_1ce5:		.db $00				; 00
B20_1ce6:		.db $00				; 00
B20_1ce7:		.db $00				; 00
B20_1ce8:		.db $00				; 00
B20_1ce9:		ldx #$00		; a2 00
B20_1ceb:		rol $00			; 26 00
B20_1ced:		.db $00				; 00
B20_1cee:		.db $00				; 00
B20_1cef:		.db $00				; 00
B20_1cf0:		.db $00				; 00
B20_1cf1:		.db $00				; 00
B20_1cf2:		;removed
	.db $90 $0b

B20_1cf4:		bvc B20_1cf6 ; 50 00

B20_1cf6:	.db $d2
B20_1cf7:	.db $0b
B20_1cf8:		.db $00				; 00
B20_1cf9:		.db $00				; 00
B20_1cfa:	.db $fc
B20_1cfb:	.db $0b
B20_1cfc:	.db $d2
B20_1cfd:		.db $00				; 00
B20_1cfe:		adc $0b			; 65 0b
B20_1d00:		.db $00				; 00
B20_1d01:		.db $00				; 00
B20_1d02:		.db $00				; 00
B20_1d03:		.db $00				; 00
B20_1d04:		.db $00				; 00
B20_1d05:		.db $00				; 00
B20_1d06:		.db $00				; 00
B20_1d07:		.db $00				; 00
B20_1d08:		.db $00				; 00
B20_1d09:		.db $00				; 00
B20_1d0a:		.db $00				; 00
B20_1d0b:	.db $a3
B20_1d0c:		.db $00				; 00
B20_1d0d:		.db $00				; 00
B20_1d0e:		.db $00				; 00
B20_1d0f:		.db $00				; 00
B20_1d10:		.db $00				; 00
B20_1d11:		.db $00				; 00
B20_1d12:	.db $b3
B20_1d13:	.db $17
B20_1d14:		.db $00				; 00
B20_1d15:		.db $00				; 00
B20_1d16:		.db $00				; 00
B20_1d17:		.db $00				; 00
B20_1d18:		.db $00				; 00
B20_1d19:		.db $00				; 00
B20_1d1a:		.db $00				; 00
B20_1d1b:		.db $00				; 00
B20_1d1c:		.db $00				; 00
B20_1d1d:	.db $17
B20_1d1e:		.db $00				; 00
B20_1d1f:		.db $00				; 00
B20_1d20:		.db $00				; 00
B20_1d21:		.db $00				; 00
B20_1d22:		.db $00				; 00
B20_1d23:		.db $00				; 00
B20_1d24:		.db $00				; 00
B20_1d25:		.db $00				; 00
B20_1d26:		.db $00				; 00
B20_1d27:	.db $17
B20_1d28:		adc $00			; 65 00
B20_1d2a:		.db $00				; 00
B20_1d2b:		.db $00				; 00
B20_1d2c:		.db $00				; 00
B20_1d2d:		.db $00				; 00
B20_1d2e:	.db $93
B20_1d2f:	.db $33
B20_1d30:		eor $5995, y	; 59 95 59
B20_1d33:		and $95c0, y	; 39 c0 95
B20_1d36:	.db $fb
B20_1d37:		.db $00				; 00
B20_1d38:		cli				; 58 
B20_1d39:		.db $00				; 00
B20_1d3a:	.db $d4
B20_1d3b:	.db $33
B20_1d3c:		pla				; 68 
B20_1d3d:		.db $00				; 00
B20_1d3e:		.db $00				; 00
B20_1d3f:		.db $00				; 00
B20_1d40:		.db $00				; 00
B20_1d41:	.db $1e $00 $00
B20_1d44:		.db $00				; 00
B20_1d45:		.db $00				; 00
B20_1d46:		.db $00				; 00
B20_1d47:		.db $00				; 00
B20_1d48:		.db $00				; 00
B20_1d49:		.db $00				; 00
B20_1d4a:		.db $00				; 00
B20_1d4b:		bmi B20_1d4d ; 30 00

B20_1d4d:		.db $00				; 00
B20_1d4e:	.db $2f
B20_1d4f:		.db $00				; 00
B20_1d50:		dec $6b30, x	; de 30 6b
B20_1d53:	.db $64
B20_1d54:		.db $00				; 00
B20_1d55:		.db $00				; 00
B20_1d56:		.db $00				; 00
B20_1d57:		bmi B20_1d1c ; 30 c3

B20_1d59:		.db $00				; 00
B20_1d5a:		.db $00				; 00
B20_1d5b:		.db $00				; 00
B20_1d5c:		.db $00				; 00
B20_1d5d:		.db $00				; 00
B20_1d5e:		.db $00				; 00
B20_1d5f:		.db $00				; 00
B20_1d60:		.db $00				; 00
B20_1d61:		.db $00				; 00
B20_1d62:		.db $00				; 00
B20_1d63:		.db $00				; 00
B20_1d64:		.db $00				; 00
B20_1d65:		dey				; 88 
B20_1d66:		.db $00				; 00
B20_1d67:		.db $00				; 00
B20_1d68:		.db $00				; 00
B20_1d69:		dey				; 88 
B20_1d6a:		.db $00				; 00
B20_1d6b:		.db $00				; 00
B20_1d6c:		.db $00				; 00
B20_1d6d:		.db $00				; 00
B20_1d6e:		.db $00				; 00
B20_1d6f:		.db $00				; 00
B20_1d70:		.db $00				; 00
B20_1d71:		.db $00				; 00
B20_1d72:		cmp $0b, x		; d5 0b
B20_1d74:		.db $00				; 00
B20_1d75:		.db $00				; 00
B20_1d76:		.db $00				; 00
B20_1d77:		.db $00				; 00
B20_1d78:		.db $00				; 00
B20_1d79:	.db $0b
B20_1d7a:		.db $00				; 00
B20_1d7b:		.db $00				; 00
B20_1d7c:		adc $00			; 65 00
B20_1d7e:		adc $00			; 65 00
B20_1d80:		.db $00				; 00
B20_1d81:		.db $00				; 00
B20_1d82:		.db $00				; 00
B20_1d83:	.db $0b
B20_1d84:		clv				; b8 
B20_1d85:		.db $00				; 00
B20_1d86:		stx $00, y		; 96 00
B20_1d88:		bvc B20_1d8a ; 50 00

B20_1d8a:		.db $00				; 00
B20_1d8b:		.db $00				; 00
B20_1d8c:		.db $00				; 00
B20_1d8d:		.db $00				; 00
B20_1d8e:		sty $09, x		; 94 09
B20_1d90:		eor $9000, y	; 59 00 90
B20_1d93:		.db $00				; 00
B20_1d94:	.db $93
B20_1d95:		.db $00				; 00
B20_1d96:		and $9000, y	; 39 00 90
B20_1d99:		ora #$63		; 09 63
B20_1d9b:		.db $00				; 00
B20_1d9c:		bcc B20_1d9e ; 90 00

B20_1d9e:		sta $9200, x	; 9d 00 92
B20_1da1:		.db $00				; 00
B20_1da2:		sty $09, x		; 94 09
B20_1da4:		sty $00, x		; 94 00
B20_1da6:		.db $00				; 00
B20_1da7:		.db $00				; 00
B20_1da8:		.db $00				; 00
B20_1da9:		bmi B20_1d3b ; 30 90

B20_1dab:	.db $2f
B20_1dac:		.db $00				; 00
B20_1dad:		.db $00				; 00
B20_1dae:		stx $00, y		; 96 00
B20_1db0:		stx $00, y		; 96 00
B20_1db2:		.db $00				; 00
B20_1db3:		.db $00				; 00
B20_1db4:		.db $00				; 00
B20_1db5:		.db $00				; 00
B20_1db6:		sta $9034, x	; 9d 34 90
B20_1db9:		sty $4b, x		; 94 4b
B20_1dbb:		.db $00				; 00
B20_1dbc:		.db $00				; 00
B20_1dbd:		.db $00				; 00
B20_1dbe:		.db $00				; 00
B20_1dbf:		.db $00				; 00
B20_1dc0:		.db $00				; 00
B20_1dc1:	.db $2d $00 $00
B20_1dc4:		.db $00				; 00
B20_1dc5:		.db $00				; 00
B20_1dc6:		.db $00				; 00
B20_1dc7:		.db $00				; 00
B20_1dc8:		.db $00				; 00
B20_1dc9:		.db $00				; 00
B20_1dca:		.db $00				; 00
B20_1dcb:		.db $00				; 00
B20_1dcc:		adc $00			; 65 00
B20_1dce:	.db $43
B20_1dcf:	.db $33
B20_1dd0:	.db $9d $00 $00
B20_1dd3:		.db $00				; 00
B20_1dd4:	.db $d7
B20_1dd5:	.db $8d $9d $00
B20_1dd8:		.db $00				; 00
B20_1dd9:		.db $00				; 00
B20_1dda:		.db $00				; 00
B20_1ddb:		.db $00				; 00
B20_1ddc:		.db $00				; 00
B20_1ddd:		.db $00				; 00
B20_1dde:		cld				; d8 
B20_1ddf:		.db $00				; 00
B20_1de0:		.db $00				; 00
B20_1de1:	.db $a7
B20_1de2:	.db $42
B20_1de3:		ldx $00			; a6 00
B20_1de5:		adc #$93		; 69 93
B20_1de7:		.db $00				; 00
B20_1de8:		.db $00				; 00
B20_1de9:		.db $00				; 00
B20_1dea:		.db $00				; 00
B20_1deb:		.db $00				; 00
B20_1dec:		.db $00				; 00
B20_1ded:		.db $00				; 00
B20_1dee:		cmp #$4e		; c9 4e
B20_1df0:		tya				; 98 
B20_1df1:		.db $00				; 00
B20_1df2:		iny				; c8 
B20_1df3:		.db $00				; 00
B20_1df4:		cpy #$00		; c0 00
B20_1df6:		pha				; 48 
B20_1df7:		.db $00				; 00
B20_1df8:		.db $00				; 00
B20_1df9:		.db $00				; 00
B20_1dfa:	.db $cb
B20_1dfb:	.db $4e $00 $00
B20_1dfe:		.db $00				; 00
B20_1dff:		.db $00				; 00
B20_1e00:		.db $00				; 00
B20_1e01:		.db $00				; 00
B20_1e02:		sei				; 78 
B20_1e03:		.db $00				; 00
B20_1e04:		dex				; ca 
B20_1e05:		.db $00				; 00
B20_1e06:		sta $65ae, x	; 9d ae 65
B20_1e09:		.db $00				; 00
B20_1e0a:		cpy $76af		; cc af 76
B20_1e0d:		bcs B20_1ddb ; b0 cc

B20_1e0f:	.db $af
B20_1e10:		ror $b0, x		; 76 b0
B20_1e12:		.db $00				; 00
B20_1e13:	.db $ae $fd $00
B20_1e16:		dec $7400		; ce 00 74
B20_1e19:		.db $00				; 00
B20_1e1a:		.db $00				; 00
B20_1e1b:		.db $00				; 00
B20_1e1c:		.db $00				; 00
B20_1e1d:		.db $00				; 00
B20_1e1e:		.db $00				; 00
B20_1e1f:		.db $00				; 00
B20_1e20:		.db $00				; 00
B20_1e21:		.db $00				; 00
B20_1e22:		.db $00				; 00
B20_1e23:		.db $00				; 00
B20_1e24:		.db $00				; 00
B20_1e25:		.db $00				; 00
B20_1e26:		.db $00				; 00
B20_1e27:		.db $00				; 00
B20_1e28:		.db $00				; 00
B20_1e29:		.db $00				; 00
B20_1e2a:		.db $00				; 00
B20_1e2b:		.db $00				; 00
B20_1e2c:		.db $00				; 00
B20_1e2d:		.db $00				; 00
B20_1e2e:		.db $00				; 00
B20_1e2f:		.db $00				; 00
B20_1e30:		.db $00				; 00
B20_1e31:		.db $00				; 00
B20_1e32:		.db $00				; 00
B20_1e33:		.db $00				; 00
B20_1e34:		.db $00				; 00
B20_1e35:		.db $00				; 00
B20_1e36:		.db $00				; 00
B20_1e37:		.db $00				; 00
B20_1e38:		.db $00				; 00
B20_1e39:		.db $00				; 00
B20_1e3a:		ldy $9d64		; ac 64 9d
B20_1e3d:		.db $00				; 00
B20_1e3e:		.db $00				; 00
B20_1e3f:		.db $00				; 00
B20_1e40:		stx $00, y		; 96 00
B20_1e42:		.db $00				; 00
B20_1e43:		.db $00				; 00
B20_1e44:		.db $00				; 00
B20_1e45:	.db $2d $00 $00
B20_1e48:		.db $00				; 00
B20_1e49:		.db $00				; 00
B20_1e4a:		.db $00				; 00
B20_1e4b:		.db $00				; 00
B20_1e4c:		.db $00				; 00
B20_1e4d:		.db $00				; 00
B20_1e4e:		bcc B20_1e50 ; 90 00

B20_1e50:		adc $a5			; 65 a5
B20_1e52:		.db $00				; 00
B20_1e53:		dey				; 88 
B20_1e54:		.db $00				; 00
B20_1e55:		.db $00				; 00
B20_1e56:		.db $00				; 00
B20_1e57:	.db $9b
B20_1e58:		bcc B20_1dff ; 90 a5

B20_1e5a:		.db $00				; 00
B20_1e5b:		dey				; 88 
B20_1e5c:		.db $00				; 00
B20_1e5d:		.db $00				; 00
B20_1e5e:		.db $00				; 00
B20_1e5f:		.db $00				; 00
B20_1e60:		.db $00				; 00
B20_1e61:	.db $9c
B20_1e62:	.db $6c $00 $00
B20_1e65:		.db $00				; 00
B20_1e66:		.db $00				; 00
B20_1e67:		.db $00				; 00
B20_1e68:		.db $00				; 00
B20_1e69:		lda ($ae), y	; b1 ae
B20_1e6b:	.db $0b
B20_1e6c:	.db $e3
B20_1e6d:		.db $00				; 00
B20_1e6e:	.db $ad $00 $00
B20_1e71:		.db $00				; 00
B20_1e72:		ldx $ae00		; ae 00 ae
B20_1e75:	.db $0b
B20_1e76:		.db $00				; 00
B20_1e77:		lda ($ae), y	; b1 ae
B20_1e79:		.db $00				; 00
B20_1e7a:	.db $ae $00 $00
B20_1e7d:		.db $00				; 00
B20_1e7e:		cpy #$00		; c0 00
B20_1e80:		clv				; b8 
B20_1e81:		bcs B20_1e2c ; b0 a9

B20_1e83:		.db $00				; 00
B20_1e84:	.db $bf
B20_1e85:		tya				; 98 
B20_1e86:	.db $9b
B20_1e87:		.db $00				; 00
B20_1e88:	.db $bf
B20_1e89:		.db $00				; 00
B20_1e8a:		.db $00				; 00
B20_1e8b:		.db $00				; 00
B20_1e8c:		.db $00				; 00
B20_1e8d:		bmi B20_1efe ; 30 6f

B20_1e8f:		.db $00				; 00
B20_1e90:	.db $bb
B20_1e91:		adc $bb, x		; 75 bb
B20_1e93:		bmi B20_1ed7 ; 30 42

B20_1e95:		adc $42, x		; 75 42
B20_1e97:		bmi B20_1e99 ; 30 00

B20_1e99:		adc $c0, x		; 75 c0
B20_1e9b:		.db $00				; 00
B20_1e9c:		.db $00				; 00
B20_1e9d:		.db $00				; 00
B20_1e9e:		.db $00				; 00
B20_1e9f:		.db $00				; 00
B20_1ea0:		.db $00				; 00
B20_1ea1:		.db $00				; 00
B20_1ea2:	.db $9b
B20_1ea3:	.db $23
B20_1ea4:	.db $72
B20_1ea5:	.db $77
B20_1ea6:		cpx $00			; e4 00
B20_1ea8:	.db $ab
B20_1ea9:		txs				; 9a 
B20_1eaa:		jmp ($7261)		; 6c 61 72


B20_1ead:		ldy $ab			; a4 ab
B20_1eaf:		.db $00				; 00
B20_1eb0:		cpy #$00		; c0 00
B20_1eb2:		.db $00				; 00
B20_1eb3:		.db $00				; 00
B20_1eb4:		.db $00				; 00
B20_1eb5:	.db $99 $95 $00
B20_1eb8:	.db $bf
B20_1eb9:		tya				; 98 
B20_1eba:		cmp ($00, x)	; c1 00
B20_1ebc:		sta $9a, x		; 95 9a
B20_1ebe:		jmp ($6a9a)		; 6c 9a 6a


B20_1ec1:		tya				; 98 
B20_1ec2:		jmp ($3f00)		; 6c 00 3f


B20_1ec5:		.db $00				; 00
B20_1ec6:		.db $00				; 00
B20_1ec7:		.db $00				; 00
B20_1ec8:		.db $00				; 00
B20_1ec9:		.db $00				; 00
B20_1eca:	.db $42
B20_1ecb:		.db $00				; 00
B20_1ecc:	.db $b7
B20_1ecd:		.db $00				; 00
B20_1ece:		and $00, x		; 35 00
B20_1ed0:	.db $c2
B20_1ed1:		.db $00				; 00
B20_1ed2:	.db $c3
B20_1ed3:		.db $00				; 00
B20_1ed4:		rol $c300, x	; 3e 00 c3
B20_1ed7:		.db $00				; 00
B20_1ed8:		rol $c300, x	; 3e 00 c3
B20_1edb:		.db $00				; 00
B20_1edc:		.db $00				; 00
B20_1edd:		.db $00				; 00
B20_1ede:	.db $43
B20_1edf:		.db $00				; 00
B20_1ee0:		rol $9b00, x	; 3e 00 9b
B20_1ee3:		.db $00				; 00
B20_1ee4:	.db $ef
B20_1ee5:		.db $00				; 00
B20_1ee6:	.db $9b
B20_1ee7:		stx $c3, y		; 96 c3
B20_1ee9:		.db $00				; 00
B20_1eea:	.db $a7
B20_1eeb:		.db $00				; 00
B20_1eec:	.db $c3
B20_1eed:		.db $00				; 00
B20_1eee:	.db $3d $00 $00
B20_1ef1:		.db $00				; 00
B20_1ef2:		.db $00				; 00
B20_1ef3:		.db $00				; 00
B20_1ef4:		.db $00				; 00
B20_1ef5:	.db $2b
B20_1ef6:		.db $00				; 00
B20_1ef7:		.db $00				; 00
B20_1ef8:		.db $00				; 00
B20_1ef9:		.db $00				; 00
B20_1efa:		.db $00				; 00
B20_1efb:		.db $00				; 00
B20_1efc:		.db $00				; 00
B20_1efd:		.db $00				; 00
B20_1efe:		.db $00				; 00
B20_1eff:	.db $2b
B20_1f00:		.db $00				; 00
B20_1f01:		.db $00				; 00
B20_1f02:		.db $00				; 00
B20_1f03:		.db $00				; 00
B20_1f04:		.db $00				; 00
B20_1f05:		.db $00				; 00
B20_1f06:		.db $00				; 00
B20_1f07:		.db $00				; 00
B20_1f08:	.db $9d $00 $00
B20_1f0b:		.db $00				; 00
B20_1f0c:		stx $00, y		; 96 00
B20_1f0e:		.db $00				; 00
B20_1f0f:		.db $00				; 00
B20_1f10:		.db $00				; 00
B20_1f11:		.db $00				; 00
B20_1f12:	.db $6e $00 $00
B20_1f15:		.db $00				; 00
B20_1f16:	.db $dc
B20_1f17:		.db $00				; 00
B20_1f18:		.db $00				; 00
B20_1f19:		.db $00				; 00
B20_1f1a:		.db $00				; 00
B20_1f1b:	.db $4e $00 $00
B20_1f1e:		.db $00				; 00
B20_1f1f:		.db $00				; 00
B20_1f20:	.db $2f
B20_1f21:		.db $00				; 00
B20_1f22:		.db $00				; 00
B20_1f23:	.db $4e $00 $00
B20_1f26:		.db $00				; 00
B20_1f27:		.db $00				; 00
B20_1f28:		.db $00				; 00
B20_1f29:		.db $00				; 00
B20_1f2a:		.db $00				; 00
B20_1f2b:	.db $4e $00 $00
B20_1f2e:		.db $00				; 00
B20_1f2f:		.db $00				; 00
B20_1f30:		.db $00				; 00
B20_1f31:		.db $00				; 00
B20_1f32:		.db $00				; 00
B20_1f33:		.db $00				; 00
B20_1f34:		pla				; 68 
B20_1f35:		.db $00				; 00
B20_1f36:		pla				; 68 
B20_1f37:		.db $00				; 00
B20_1f38:		bcc B20_1f3a ; 90 00

B20_1f3a:		.db $00				; 00
B20_1f3b:		.db $00				; 00
B20_1f3c:		.db $00				; 00
B20_1f3d:		.db $00				; 00
B20_1f3e:	.db $da
B20_1f3f:		.db $00				; 00
B20_1f40:	.db $d9 $00 $00
B20_1f43:		.db $00				; 00
B20_1f44:	.db $d2
B20_1f45:		.db $00				; 00
B20_1f46:		.db $00				; 00
B20_1f47:		.db $00				; 00
B20_1f48:		.db $00				; 00
B20_1f49:		.db $00				; 00
B20_1f4a:		.db $00				; 00
B20_1f4b:		.db $00				; 00
B20_1f4c:		bcc B20_1f4e ; 90 00

B20_1f4e:		.db $00				; 00
B20_1f4f:		.db $00				; 00
B20_1f50:		.db $00				; 00
B20_1f51:		.db $00				; 00
B20_1f52:		.db $00				; 00
B20_1f53:		.db $00				; 00
B20_1f54:		sta $db00, y	; 99 00 db
B20_1f57:		.db $00				; 00
B20_1f58:		pla				; 68 
B20_1f59:		.db $00				; 00
B20_1f5a:		.db $00				; 00
B20_1f5b:		.db $00				; 00
B20_1f5c:		.db $00				; 00
B20_1f5d:		.db $00				; 00
B20_1f5e:	.db $9d $00 $00
B20_1f61:		tax				; aa 
B20_1f62:		.db $00				; 00
B20_1f63:		.db $00				; 00
B20_1f64:	.db $dd $00 $00
B20_1f67:		.db $00				; 00
B20_1f68:		.db $00				; 00
B20_1f69:		.db $00				; 00
B20_1f6a:	.db $de $5a $00
B20_1f6d:		dec $c4			; c6 c4
B20_1f6f:		.db $00				; 00
B20_1f70:	.db $c3
B20_1f71:		.db $00				; 00
B20_1f72:		.db $00				; 00
B20_1f73:		.db $00				; 00
B20_1f74:		.db $00				; 00
B20_1f75:		.db $00				; 00
B20_1f76:		.db $00				; 00
B20_1f77:	.db $0b
B20_1f78:		.db $00				; 00
B20_1f79:	.db $d3
B20_1f7a:		.db $00				; 00
B20_1f7b:	.db $34
B20_1f7c:		sta $00, x		; 95 00
B20_1f7e:		.db $00				; 00
B20_1f7f:		.db $00				; 00
B20_1f80:		.db $00				; 00
B20_1f81:	.db $80
B20_1f82:	.db $df
B20_1f83:	.db $80
B20_1f84:		cpx #$ac		; e0 ac
B20_1f86:		.db $00				; 00
B20_1f87:		tay				; a8 
B20_1f88:		sta $a9, x		; 95 a9
B20_1f8a:		bvc B20_1f8c ; 50 00

B20_1f8c:	.db $4b
B20_1f8d:	.db $ab
B20_1f8e:	.db $6b
B20_1f8f:		rol $ac4c, x	; 3e 4c ac
B20_1f92:		.db $00				; 00
B20_1f93:	.db $9b
B20_1f94:		cmp $00, x		; d5 00
B20_1f96:		.db $00				; 00
B20_1f97:		tay				; a8 
B20_1f98:	.db $3f
B20_1f99:		.db $00				; 00
B20_1f9a:		.db $00				; 00
B20_1f9b:		.db $00				; 00
B20_1f9c:		.db $00				; 00
B20_1f9d:		.db $00				; 00
B20_1f9e:		.db $00				; 00
B20_1f9f:	.db $2c $00 $00
B20_1fa2:		.db $00				; 00
B20_1fa3:		.db $00				; 00
B20_1fa4:		.db $00				; 00
B20_1fa5:		.db $00				; 00
B20_1fa6:		.db $00				; 00
B20_1fa7:		.db $00				; 00
B20_1fa8:	.db $92
B20_1fa9:		.db $00				; 00
B20_1faa:		sty $00, x		; 94 00
B20_1fac:		.db $00				; 00
B20_1fad:	.db $9d $e1 $00
B20_1fb0:		sty $00, x		; 94 00
B20_1fb2:		.db $00				; 00
B20_1fb3:		.db $00				; 00
B20_1fb4:		.db $00				; 00
B20_1fb5:		.db $00				; 00
B20_1fb6:		.db $00				; 00
B20_1fb7:		.db $00				; 00
B20_1fb8:		.db $00				; 00
B20_1fb9:	.db $b3
B20_1fba:	.db $c3
B20_1fbb:		.db $00				; 00
B20_1fbc:		.db $00				; 00
B20_1fbd:	.db $0b
B20_1fbe:	.db $42
B20_1fbf:		.db $00				; 00
B20_1fc0:		sed				; f8 
B20_1fc1:		.db $00				; 00
B20_1fc2:		.db $00				; 00
B20_1fc3:	.db $b2
B20_1fc4:	.db $3a
B20_1fc5:	.db $0b
B20_1fc6:	.db $c3
B20_1fc7:		.db $00				; 00
B20_1fc8:	.db $9b
B20_1fc9:		.db $00				; 00
B20_1fca:		.db $00				; 00
B20_1fcb:		.db $00				; 00
B20_1fcc:		.db $00				; 00
B20_1fcd:		.db $00				; 00
B20_1fce:		rol $bcad, x	; 3e ad bc
B20_1fd1:	.db $80
B20_1fd2:	.db $42
B20_1fd3:		.db $00				; 00
B20_1fd4:		ldx $9680		; ae 80 96
B20_1fd7:		.db $00				; 00
B20_1fd8:		.db $00				; 00
B20_1fd9:	.db $22
B20_1fda:	.db $e2
B20_1fdb:		.db $00				; 00
B20_1fdc:		stx $00, y		; 96 00
B20_1fde:		.db $00				; 00
B20_1fdf:		.db $00				; 00
B20_1fe0:		.db $00				; 00
B20_1fe1:		.db $00				; 00
B20_1fe2:		sta $5015, x	; 9d 15 50
B20_1fe5:	.db $64
B20_1fe6:		sta $2500, x	; 9d 00 25
B20_1fe9:		.db $00				; 00
B20_1fea:		pla				; 68 
B20_1feb:	.db $67
B20_1fec:		adc $c330		; 6d 30 c3
B20_1fef:		.db $00				; 00
B20_1ff0:		bne B20_1ff2 ; d0 00

B20_1ff2:		.db $00				; 00
B20_1ff3:		.db $00				; 00
B20_1ff4:		.db $00				; 00
B20_1ff5:		.db $00				; 00
B20_1ff6:		.db $00				; 00
B20_1ff7:		.db $00				; 00
B20_1ff8:		.db $00				; 00
B20_1ff9:		.db $00				; 00
B20_1ffa:		.db $00				; 00
B20_1ffb:	.db $0b
B20_1ffc:		.db $00				; 00
B20_1ffd:		.db $00				; 00
		.db $00
		.db $00
