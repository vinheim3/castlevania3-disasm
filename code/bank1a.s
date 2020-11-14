	.db $9a 


func_1a_0001:
B26_0001:		lda $18			; a5 18
B26_0003:		cmp #$0c		; c9 0c
B26_0005:		bne B26_000a ; d0 03

B26_0007:		jmp func_1a_0188		; 4c 88 81

B26_000a:		lda #$00		; a9 00
B26_000c:		sta $05			; 85 05
B26_000e:		lda #$40		; a9 40
B26_0010:		sta $07			; 85 07
B26_0012:		lda $20			; a5 20
B26_0014:		clc				; 18 
B26_0015:		adc #$44		; 69 44
B26_0017:		sta $20			; 85 20
B26_0019:		sta $04			; 85 04
B26_001b:		ldx $05			; a6 05
B26_001d:		cpx #$1c		; e0 1c
B26_001f:		bcs B26_0041 ; b0 20

B26_0021:		lda $0400, x	; bd 00 04
B26_0024:		beq B26_003d ; f0 17

B26_0026:		lda $0470, x	; bd 70 04
B26_0029:		bmi B26_003d ; 30 12

B26_002b:		lda $0454, x	; bd 54 04
B26_002e:		sta $00			; 85 00
B26_0030:		lda $041c, x	; bd 1c 04
B26_0033:		sta $01			; 85 01
B26_0035:		lda $0438, x	; bd 38 04
B26_0038:		sta $02			; 85 02
B26_003a:		jsr func_1a_0079		; 20 79 80
B26_003d:		inc $05			; e6 05
B26_003f:		bne B26_001b ; d0 da

B26_0041:		ldx $04			; a6 04
B26_0043:		ldy $07			; a4 07
B26_0045:		lda #$f4		; a9 f4
B26_0047:		sta $0200, x	; 9d 00 02
B26_004a:		txa				; 8a 
B26_004b:		clc				; 18 
B26_004c:		adc #$c4		; 69 c4
B26_004e:		tax				; aa 
B26_004f:		dey				; 88 
B26_0050:		bne B26_0045 ; d0 f3

B26_0052:		rts				; 60 


B26_0053:		jsr $817b		; 20 7b 81
B26_0056:		bcc B26_0068 ; 90 10

B26_0058:		bcs B26_006a ; b0 10

B26_005a:		clc				; 18 
B26_005b:		bcc B26_00a7 ; 90 4a

B26_005d:		clc				; 18 
B26_005e:		adc $01			; 65 01
B26_0060:		sta $0200, x	; 9d 00 02
B26_0063:		iny				; c8 
B26_0064:		lda $b0			; a5 b0
B26_0066:		bne B26_0053 ; d0 eb

B26_0068:		lda ($0a), y	; b1 0a
B26_006a:		sta $0201, x	; 9d 01 02
B26_006d:		lda $10			; a5 10
B26_006f:		jmp $80ca		; 4c ca 80


B26_0072:		jsr $817b		; 20 7b 81
B26_0075:		bcc B26_00b4 ; 90 3d

B26_0077:		bcs B26_00b6 ; b0 3d

func_1a_0079:
B26_0079:		ldy $048c, x	; bc 8c 04
B26_007c:		sty $0f			; 84 0f
B26_007e:		lda $823e, y	; b9 3e 82
B26_0081:		sta $08			; 85 08
B26_0083:		lda $823f, y	; b9 3f 82
B26_0086:		sta $09			; 85 09
B26_0088:		ldy $0400, x	; bc 00 04
B26_008b:		lda ($08), y	; b1 08
B26_008d:		sta $0a			; 85 0a
B26_008f:		iny				; c8 
B26_0090:		lda ($08), y	; b1 08
B26_0092:		sta $0b			; 85 0b
B26_0094:		ldy #$00		; a0 00
B26_0096:		lda ($0a), y	; b1 0a
B26_0098:		sta $03			; 85 03
B26_009a:		lda $04a8, x	; bd a8 04
B26_009d:		beq B26_00f9 ; f0 5a

B26_009f:		ldx $04			; a6 04
B26_00a1:		iny				; c8 
B26_00a2:		lda ($0a), y	; b1 0a
B26_00a4:		bpl B26_005a ; 10 b4

B26_00a6:		sec				; 38 
B26_00a7:		ror a			; 6a
B26_00a8:		bcs B26_005d ; b0 b3

B26_00aa:		adc $01			; 65 01
B26_00ac:		sta $0200, x	; 9d 00 02
B26_00af:		iny				; c8 
B26_00b0:		lda $b0			; a5 b0
B26_00b2:		bne B26_0072 ; d0 be

B26_00b4:		lda ($0a), y	; b1 0a
B26_00b6:		sta $0201, x	; 9d 01 02
B26_00b9:		iny				; c8 
B26_00ba:		lda $00			; a5 00
B26_00bc:		beq B26_00c6 ; f0 08

B26_00be:		lda ($0a), y	; b1 0a
B26_00c0:		and #$fc		; 29 fc
B26_00c2:		ora $00			; 05 00
B26_00c4:		bne B26_00c8 ; d0 02

B26_00c6:		lda ($0a), y	; b1 0a
B26_00c8:		sta $10			; 85 10
B26_00ca:		sta $0202, x	; 9d 02 02
B26_00cd:		iny				; c8 
B26_00ce:		lda ($0a), y	; b1 0a
B26_00d0:		bmi B26_00ea ; 30 18

B26_00d2:		clc				; 18 
B26_00d3:		adc $02			; 65 02
B26_00d5:		bcs B26_00ef ; b0 18

B26_00d7:		sta $0203, x	; 9d 03 02
B26_00da:		txa				; 8a 
B26_00db:		clc				; 18 
B26_00dc:		adc #$c4		; 69 c4
B26_00de:		tax				; aa 
B26_00df:		dec $07			; c6 07
B26_00e1:		beq B26_00f6 ; f0 13

B26_00e3:		dec $03			; c6 03
B26_00e5:		bne B26_00a1 ; d0 ba

B26_00e7:		stx $04			; 86 04
B26_00e9:		rts				; 60 


B26_00ea:		clc				; 18 
B26_00eb:		adc $02			; 65 02
B26_00ed:		bcs B26_00d7 ; b0 e8

B26_00ef:		lda #$f4		; a9 f4
B26_00f1:		sta $0200, x	; 9d 00 02
B26_00f4:		bne B26_00da ; d0 e4

B26_00f6:		pla				; 68 
B26_00f7:		pla				; 68 
B26_00f8:		rts				; 60 


B26_00f9:		ldx $04			; a6 04
B26_00fb:		iny				; c8 
B26_00fc:		lda ($0a), y	; b1 0a
B26_00fe:		bpl B26_015c ; 10 5c

B26_0100:		sec				; 38 
B26_0101:		ror a			; 6a
B26_0102:		bcs B26_015f ; b0 5b

B26_0104:		adc $01			; 65 01
B26_0106:		sta $0200, x	; 9d 00 02
B26_0109:		iny				; c8 
B26_010a:		lda $b0			; a5 b0
B26_010c:		bne B26_0155 ; d0 47

B26_010e:		lda ($0a), y	; b1 0a
B26_0110:		sta $0201, x	; 9d 01 02
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
B26_0126:		sta $0202, x	; 9d 02 02
B26_0129:		iny				; c8 
B26_012a:		lda #$f8		; a9 f8
B26_012c:		sec				; 38 
B26_012d:		sbc ($0a), y	; f1 0a
B26_012f:		bmi B26_0149 ; 30 18

B26_0131:		clc				; 18 
B26_0132:		adc $02			; 65 02
B26_0134:		bcs B26_014e ; b0 18

B26_0136:		sta $0203, x	; 9d 03 02
B26_0139:		txa				; 8a 
B26_013a:		clc				; 18 
B26_013b:		adc #$c4		; 69 c4
B26_013d:		tax				; aa 
B26_013e:		dec $07			; c6 07
B26_0140:		beq B26_00f6 ; f0 b4

B26_0142:		dec $03			; c6 03
B26_0144:		bne B26_00fb ; d0 b5

B26_0146:		stx $04			; 86 04
B26_0148:		rts				; 60 


B26_0149:		clc				; 18 
B26_014a:		adc $02			; 65 02
B26_014c:		bcs B26_0136 ; b0 e8

B26_014e:		lda #$f4		; a9 f4
B26_0150:		sta $0200, x	; 9d 00 02
B26_0153:		bne B26_0139 ; d0 e4

B26_0155:		jsr $817b		; 20 7b 81
B26_0158:		bcc B26_010e ; 90 b4

B26_015a:		bcs B26_0110 ; b0 b4

B26_015c:		clc				; 18 
B26_015d:		bcc B26_0101 ; 90 a2

B26_015f:		clc				; 18 
B26_0160:		adc $01			; 65 01
B26_0162:		sta $0200, x	; 9d 00 02
B26_0165:		iny				; c8 
B26_0166:		lda $b0			; a5 b0
B26_0168:		bne B26_0174 ; d0 0a

B26_016a:		lda ($0a), y	; b1 0a
B26_016c:		sta $0201, x	; 9d 01 02
B26_016f:		lda $10			; a5 10
B26_0171:		jmp $8126		; 4c 26 81


B26_0174:		jsr $817b		; 20 7b 81
B26_0177:		bcc B26_016a ; 90 f1

B26_0179:		bcs B26_016c ; b0 f1

B26_017b:		lda $0f			; a5 0f
B26_017d:		cmp #$16		; c9 16
B26_017f:		bcc B26_0187 ; 90 06

B26_0181:		lda ($0a), y	; b1 0a
B26_0183:		clc				; 18 
B26_0184:		adc #$80		; 69 80
B26_0186:		sec				; 38 
B26_0187:		rts				; 60 


func_1a_0188:
B26_0188:		lda #$40		; a9 40
B26_018a:		sta $05			; 85 05
B26_018c:		lda #$00		; a9 00
B26_018e:		sta $06			; 85 06
B26_0190:		sta $04			; 85 04
B26_0192:		lda #$1c		; a9 1c
B26_0194:		sta $07			; 85 07
B26_0196:		ldx $06			; a6 06
B26_0198:		lda $0400, x	; bd 00 04
B26_019b:		beq B26_01b4 ; f0 17

B26_019d:		lda $0470, x	; bd 70 04
B26_01a0:		bmi B26_01b4 ; 30 12

B26_01a2:		lda $0454, x	; bd 54 04
B26_01a5:		sta $00			; 85 00
B26_01a7:		lda $041c, x	; bd 1c 04
B26_01aa:		sta $01			; 85 01
B26_01ac:		lda $0438, x	; bd 38 04
B26_01af:		sta $02			; 85 02
B26_01b1:		jsr func_1a_01dc		; 20 dc 81
B26_01b4:		inc $06			; e6 06
B26_01b6:		dec $07			; c6 07
B26_01b8:		bne B26_0196 ; d0 dc

B26_01ba:		ldx $04			; a6 04
B26_01bc:		lda #$f4		; a9 f4
B26_01be:		sta $0200, x	; 9d 00 02
B26_01c1:		inx				; e8 
B26_01c2:		inx				; e8 
B26_01c3:		inx				; e8 
B26_01c4:		inx				; e8 
B26_01c5:		bne B26_01bc ; d0 f5

B26_01c7:		rts				; 60 


B26_01c8:		clc				; 18 
B26_01c9:		bcc B26_0203 ; 90 38

B26_01cb:		clc				; 18 
B26_01cc:		adc $01			; 65 01
B26_01ce:		sta $0200, x	; 9d 00 02
B26_01d1:		iny				; c8 
B26_01d2:		lda ($0a), y	; b1 0a
B26_01d4:		sta $0201, x	; 9d 01 02
B26_01d7:		lda $10			; a5 10
B26_01d9:		jmp $8222		; 4c 22 82


func_1a_01dc:
B26_01dc:		ldy $048c, x	; bc 8c 04
B26_01df:		lda $823e, y	; b9 3e 82
B26_01e2:		sta $08			; 85 08
B26_01e4:		lda $823f, y	; b9 3f 82
B26_01e7:		sta $09			; 85 09
B26_01e9:		ldy $0400, x	; bc 00 04
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
B26_0208:		sta $0200, x	; 9d 00 02
B26_020b:		iny				; c8 
B26_020c:		lda ($0a), y	; b1 0a
B26_020e:		sta $0201, x	; 9d 01 02
B26_0211:		iny				; c8 
B26_0212:		lda $00			; a5 00
B26_0214:		beq B26_021e ; f0 08

B26_0216:		lda ($0a), y	; b1 0a
B26_0218:		and #$fc		; 29 fc
B26_021a:		ora $00			; 05 00
B26_021c:		bne B26_0220 ; d0 02

B26_021e:		lda ($0a), y	; b1 0a
B26_0220:		sta $10			; 85 10
B26_0222:		sta $0202, x	; 9d 02 02
B26_0225:		iny				; c8 
B26_0226:		lda ($0a), y	; b1 0a
B26_0228:		clc				; 18 
B26_0229:		adc $02			; 65 02
B26_022b:		sta $0203, x	; 9d 03 02
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


B26_023e:	.db $5c
B26_023f:	.db $82
B26_0240:		cpy $2482		; cc 82 24
B26_0243:	.db $83
B26_0244:		sei				; 78 
B26_0245:	.db $83
B26_0246:		sbc #$8b		; e9 8b
B26_0248:		ldx #$96		; a2 96
B26_024a:	.db $e7
B26_024b:	.db $ab
B26_024c:	.db $53
B26_024d:		lda $9fd6		; ad d6 9f
B26_0250:		sbc #$8c		; e9 8c
B26_0252:	.db $e7
B26_0253:		ldy $825c		; ac 5c 82
B26_0256:		cpy $2482		; cc 82 24
B26_0259:	.db $83
B26_025a:		sei				; 78 
B26_025b:	.db $83
B26_025c:		ldx $0283, y	; be 83 02
B26_025f:		sty $10			; 84 10
B26_0261:		sty $1b			; 84 1b
B26_0263:		sty $10			; 84 10
B26_0265:		sty $29			; 84 29
B26_0267:		sty $37			; 84 37
B26_0269:		sty $53			; 84 53
B26_026b:		sty $1e			; 84 1e
B26_026d:		sta $2c			; 85 2c
B26_026f:		sta $3a			; 85 3a
B26_0271:		sta $45			; 85 45
B26_0273:		sty $61			; 84 61
B26_0275:		sty $6f			; 84 6f
B26_0277:		sty $7d			; 84 7d
B26_0279:		sty $8e			; 84 8e
B26_027b:		sty $9f			; 84 9f
B26_027d:		sty $ad			; 84 ad
B26_027f:		sty $48			; 84 48
B26_0281:		sta $50			; 85 50
B26_0283:		sta $58			; 85 58
B26_0285:		sta $63			; 85 63
B26_0287:		sta $6b			; 85 6b
B26_0289:		sta $73			; 85 73
B26_028b:		sta $7b			; 85 7b
B26_028d:		sta $86			; 85 86
B26_028f:		sta $be			; 85 be
B26_0291:		sty $cf			; 84 cf
B26_0293:		sty $dd			; 84 dd
B26_0295:		sty $ee			; 84 ee
B26_0297:		sty $ff			; 84 ff
B26_0299:		sty $0d			; 84 0d
B26_029b:		sta $97			; 85 97
B26_029d:		sta $a0			; 85 a0
B26_029f:		sta $a8			; 85 a8
B26_02a1:		sta $b0			; 85 b0
B26_02a3:		sta $b8			; 85 b8
B26_02a5:		sta $c0			; 85 c0
B26_02a7:		sta $c8			; 85 c8
B26_02a9:		sta $d0			; 85 d0
B26_02ab:		sta $dd			; 85 dd
B26_02ad:		sta $e5			; 85 e5
B26_02af:		sta $ea			; 85 ea
B26_02b1:		sta $cb			; 85 cb
B26_02b3:	.db $93
B26_02b4:		;removed
	.db $d0 $93

B26_02b6:		cmp $93, x		; d5 93
B26_02b8:		bne B26_024d ; d0 93

B26_02ba:	.db $f2
B26_02bb:		sta $fb			; 85 fb
B26_02bd:		sta $f9			; 85 f9
B26_02bf:	.db $83
B26_02c0:		cld				; d8 
B26_02c1:		sta $be			; 85 be
B26_02c3:	.db $83
B26_02c4:	.db $c7
B26_02c5:	.db $83
B26_02c6:	.db $d2
B26_02c7:	.db $83
B26_02c8:		cpx #$83		; e0 83
B26_02ca:	.db $eb
B26_02cb:	.db $83
B26_02cc:		ldx $0483, y	; be 83 04
B26_02cf:		stx $12			; 86 12
B26_02d1:		stx $20			; 86 20
B26_02d3:		stx $12			; 86 12
B26_02d5:		stx $2e			; 86 2e
B26_02d7:		stx $3c			; 86 3c
B26_02d9:		stx $58			; 86 58
B26_02db:		stx $66			; 86 66
B26_02dd:		stx $74			; 86 74
B26_02df:		stx $82			; 86 82
B26_02e1:		stx $4a			; 86 4a
B26_02e3:		stx $90			; 86 90
B26_02e5:		stx $9e			; 86 9e
B26_02e7:		stx $ac			; 86 ac
B26_02e9:		stx $ba			; 86 ba
B26_02eb:		stx $00			; 86 00
B26_02ed:	.db $87
B26_02ee:		ora $87			; 05 87
B26_02f0:		iny				; c8 
B26_02f1:		stx $d6			; 86 d6
B26_02f3:		stx $e4			; 86 e4
B26_02f5:		stx $f2			; 86 f2
B26_02f7:		stx $37			; 86 37
B26_02f9:	.db $87
B26_02fa:		ora $1b87		; 0d 87 1b
B26_02fd:	.db $87
B26_02fe:		and #$87		; 29 87
B26_0300:		eor $87			; 45 87
B26_0302:		lsr $87, x		; 56 87
B26_0304:	.db $67
B26_0305:	.db $87
B26_0306:		sei				; 78 
B26_0307:	.db $87
B26_0308:	.db $89
B26_0309:	.db $87
B26_030a:		stx $9987		; 8e 87 99
B26_030d:	.db $87
B26_030e:		tax				; aa 
B26_030f:	.db $87
B26_0310:		clv				; b8 
B26_0311:	.db $87
B26_0312:		iny				; c8 
B26_0313:	.db $87
B26_0314:		cmp $d687		; cd 87 d6
B26_0317:	.db $87
B26_0318:	.db $df
B26_0319:	.db $87
B26_031a:		inx				; e8 
B26_031b:	.db $87
B26_031c:		sbc ($87), y	; f1 87
B26_031e:	.db $fa
B26_031f:	.db $87
B26_0320:	.db $02
B26_0321:		dey				; 88 
B26_0322:		cpy #$87		; c0 87
B26_0324:		ldx $0a83, y	; be 83 0a
B26_0327:		dey				; 88 
B26_0328:		clc				; 18 
B26_0329:		dey				; 88 
B26_032a:	.db $34
B26_032b:		dey				; 88 
B26_032c:		clc				; 18 
B26_032d:		dey				; 88 
B26_032e:	.db $42
B26_032f:		dey				; 88 
B26_0330:		bvc B26_02ba ; 50 88

B26_0332:		jmp ($7488)		; 6c 88 74


B26_0335:		dey				; 88 
B26_0336:	.db $82
B26_0337:		dey				; 88 
B26_0338:		txa				; 8a 
B26_0339:		dey				; 88 
B26_033a:		lsr $9588, x	; 5e 88 95
B26_033d:		dey				; 88 
B26_033e:		sta $ab88, x	; 9d 88 ab
B26_0341:		dey				; 88 
B26_0342:		ldx $88, y		; b6 88
B26_0344:		ldx $c988, y	; be 88 c9
B26_0347:		dey				; 88 
B26_0348:	.db $d4
B26_0349:		dey				; 88 
B26_034a:	.db $e2
B26_034b:		dey				; 88 
B26_034c:		sta $f389, x	; 9d 89 f3
B26_034f:		dey				; 88 
B26_0350:		ora ($89, x)	; 01 89
B26_0352:	.db $12
B26_0353:	.db $89
B26_0354:		jsr $3189		; 20 89 31
B26_0357:	.db $89
B26_0358:	.db $3f
B26_0359:	.db $89
B26_035a:		bvc B26_02e5 ; 50 89

B26_035c:		cli				; 58 
B26_035d:	.db $89
B26_035e:		ror $89			; 66 89
B26_0360:		adc ($89), y	; 71 89
B26_0362:	.db $7c
B26_0363:	.db $89
B26_0364:	.db $87
B26_0365:	.db $89
B26_0366:	.db $92
B26_0367:	.db $89
B26_0368:	.db $ab
B26_0369:	.db $89
B26_036a:		cpy #$89		; c0 89
B26_036c:		rol $88			; 26 88
B26_036e:		dec $e389		; ce 89 e3
B26_0371:	.db $89
B26_0372:		sbc ($89), y	; f1 89
B26_0374:		asl $8a			; 06 8a
B26_0376:	.db $14
B26_0377:		txa				; 8a 
B26_0378:		ldx $2983, y	; be 83 29
B26_037b:		txa				; 8a 
B26_037c:	.db $3a
B26_037d:		txa				; 8a 
B26_037e:	.db $4b
B26_037f:		txa				; 8a 
B26_0380:	.db $3a
B26_0381:		txa				; 8a 
B26_0382:	.db $5c
B26_0383:		txa				; 8a 
B26_0384:		adc $ce8a		; 6d 8a ce
B26_0387:		txa				; 8a 
B26_0388:		ora $8b, x		; 15 8b
B26_038a:	.db $23
B26_038b:	.db $8b
B26_038c:		and ($8b), y	; 31 8b
B26_038e:		cpy #$8a		; c0 8a
B26_0390:		ror $8f8a, x	; 7e 8a 8f
B26_0393:		txa				; 8a 
B26_0394:		lda #$8a		; a9 8a
B26_0396:	.db $dc
B26_0397:		txa				; 8a 
B26_0398:		nop				; ea 
B26_0399:		txa				; 8a 
B26_039a:		ora ($8b, x)	; 01 8b
B26_039c:	.db $3f
B26_039d:	.db $8b
B26_039e:	.db $47
B26_039f:	.db $8b
B26_03a0:	.db $4f
B26_03a1:	.db $8b
B26_03a2:	.db $57
B26_03a3:	.db $8b
B26_03a4:	.db $6b
B26_03a5:	.db $8b
B26_03a6:	.db $82
B26_03a7:	.db $8b
B26_03a8:		bcc B26_0335 ; 90 8b

B26_03aa:	.db $9e
B26_03ab:	.db $8b
B26_03ac:		tsx				; ba 
B26_03ad:	.db $8b
B26_03ae:	.db $9e
B26_03af:	.db $8b
B26_03b0:		bcc B26_033d ; 90 8b

B26_03b2:	.db $82
B26_03b3:	.db $8b
B26_03b4:	.db $6b
B26_03b5:	.db $8b
B26_03b6:	.db $57
B26_03b7:	.db $8b
B26_03b8:		dec $8b, x		; d6 8b
B26_03ba:	.db $db
B26_03bb:	.db $8b
B26_03bc:		cpx #$8b		; e0 8b
B26_03be:	.db $02
B26_03bf:		.db $00				; 00
B26_03c0:		cpx #$02		; e0 02
B26_03c2:		sed				; f8 
B26_03c3:		.db $00				; 00
B26_03c4:		cpx #$42		; e0 42
B26_03c6:		.db $00				; 00
B26_03c7:	.db $03
B26_03c8:		.db $00				; 00
B26_03c9:	.db $e2
B26_03ca:	.db $02
B26_03cb:	.db $f4
B26_03cc:		ora ($e4, x)	; 01 e4
B26_03ce:	.db $fc
B26_03cf:		ora ($e6, x)	; 01 e6
B26_03d1:	.db $04
B26_03d2:	.db $04
B26_03d3:		.db $00				; 00
B26_03d4:		inx				; e8 
B26_03d5:	.db $02
B26_03d6:		beq B26_03d9 ; f0 01

B26_03d8:		nop				; ea 
B26_03d9:		sed				; f8 
B26_03da:		ora ($ec, x)	; 01 ec
B26_03dc:		.db $00				; 00
B26_03dd:		ora ($ee, x)	; 01 ee
B26_03df:		php				; 08 
B26_03e0:	.db $03
B26_03e1:		.db $00				; 00
B26_03e2:		;removed
	.db $f0 $02

B26_03e4:	.db $f4
B26_03e5:		ora ($f2, x)	; 01 f2
B26_03e7:	.db $fc
B26_03e8:		ora ($f4, x)	; 01 f4
B26_03ea:	.db $04
B26_03eb:	.db $04
B26_03ec:		cpx #$f6		; e0 f6
B26_03ee:	.db $02
B26_03ef:		sbc $e1, x		; f5 e1
B26_03f1:		sed				; f8 
B26_03f2:		sbc $fa01, x	; fd 01 fa
B26_03f5:		sed				; f8 
B26_03f6:		ora ($fc, x)	; 01 fc
B26_03f8:		.db $00				; 00
B26_03f9:	.db $02
B26_03fa:		beq B26_045b ; f0 5f

B26_03fc:		ora ($f8, x)	; 01 f8
B26_03fe:		;removed
	.db $f0 $5f

B26_0400:		eor ($00, x)	; 41 00
B26_0402:	.db $04
B26_0403:		cpx #$00		; e0 00
B26_0405:		.db $00				; 00
B26_0406:		sed				; f8 
B26_0407:		sbc ($02, x)	; e1 02
B26_0409:		.db $00				; 00
B26_040a:		ora ($04, x)	; 01 04
B26_040c:		sed				; f8 
B26_040d:		ora ($06, x)	; 01 06
B26_040f:		.db $00				; 00
B26_0410:	.db $03
B26_0411:		cpx #$08		; e0 08
B26_0413:		.db $00				; 00
B26_0414:		sed				; f8 
B26_0415:		sbc ($0a, x)	; e1 0a
B26_0417:		.db $00				; 00
B26_0418:		ora ($0c, x)	; 01 0c
B26_041a:	.db $fb
B26_041b:	.db $04
B26_041c:		cpx #$0e		; e0 0e
B26_041e:		.db $00				; 00
B26_041f:		sed				; f8 
B26_0420:		sbc ($10, x)	; e1 10
B26_0422:		.db $00				; 00
B26_0423:		ora ($12, x)	; 01 12
B26_0425:		sed				; f8 
B26_0426:		ora ($14, x)	; 01 14
B26_0428:		.db $00				; 00
B26_0429:	.db $04
B26_042a:		cpx #$0e		; e0 0e
B26_042c:		.db $00				; 00
B26_042d:		sed				; f8 
B26_042e:		sbc ($10, x)	; e1 10
B26_0430:		.db $00				; 00
B26_0431:		ora ($12, x)	; 01 12
B26_0433:		sed				; f8 
B26_0434:		ora ($18, x)	; 01 18
B26_0436:		.db $00				; 00
B26_0437:	.db $04
B26_0438:		cpx #$0e		; e0 0e
B26_043a:		.db $00				; 00
B26_043b:		sed				; f8 
B26_043c:		sbc ($10, x)	; e1 10
B26_043e:		.db $00				; 00
B26_043f:		ora ($16, x)	; 01 16
B26_0441:		sed				; f8 
B26_0442:		ora ($14, x)	; 01 14
B26_0444:		.db $00				; 00
B26_0445:	.db $04
B26_0446:		inx				; e8 
B26_0447:		.db $00				; 00
B26_0448:		.db $00				; 00
B26_0449:		sed				; f8 
B26_044a:		sbc #$02		; e9 02
B26_044c:		.db $00				; 00
B26_044d:		ora #$16		; 09 16
B26_044f:		sed				; f8 
B26_0450:		ora #$18		; 09 18
B26_0452:		.db $00				; 00
B26_0453:	.db $04
B26_0454:		beq B26_0456 ; f0 00

B26_0456:		.db $00				; 00
B26_0457:		sed				; f8 
B26_0458:		sbc ($02), y	; f1 02
B26_045a:		.db $00				; 00
B26_045b:		ora ($16), y	; 11 16
B26_045d:		sed				; f8 
B26_045e:		ora ($18), y	; 11 18
B26_0460:		.db $00				; 00
B26_0461:	.db $04
B26_0462:		cpx #$1a		; e0 1a
B26_0464:		.db $00				; 00
B26_0465:		sbc $1ce1, y	; f9 e1 1c
B26_0468:		ora ($e1, x)	; 01 e1
B26_046a:		asl $0109, x	; 1e 09 01
B26_046d:	.db $0c
B26_046e:	.db $ff
B26_046f:	.db $04
B26_0470:		cpx #$20		; e0 20
B26_0472:		.db $00				; 00
B26_0473:		sed				; f8 
B26_0474:		sbc ($22, x)	; e1 22
B26_0476:		.db $00				; 00
B26_0477:		ora ($12, x)	; 01 12
B26_0479:		sed				; f8 
B26_047a:		ora ($14, x)	; 01 14
B26_047c:		.db $00				; 00
B26_047d:		ora $e0			; 05 e0
B26_047f:		bit $00			; 24 00
B26_0481:		beq B26_0464 ; f0 e1

B26_0483:		rol $f8			; 26 f8
B26_0485:		sbc ($28, x)	; e1 28
B26_0487:		.db $00				; 00
B26_0488:		ora ($04, x)	; 01 04
B26_048a:		sed				; f8 
B26_048b:		ora ($06, x)	; 01 06
B26_048d:		.db $00				; 00
B26_048e:		ora $f0			; 05 f0
B26_0490:	.db $1a
B26_0491:		.db $00				; 00
B26_0492:		sed				; f8 
B26_0493:		sbc ($1c), y	; f1 1c
B26_0495:		.db $00				; 00
B26_0496:		sbc ($1e), y	; f1 1e
B26_0498:		php				; 08 
B26_0499:		ora ($16), y	; 11 16
B26_049b:		sed				; f8 
B26_049c:		ora ($18), y	; 11 18
B26_049e:		.db $00				; 00
B26_049f:	.db $04
B26_04a0:		beq B26_04c2 ; f0 20

B26_04a2:		.db $00				; 00
B26_04a3:		sed				; f8 
B26_04a4:		sbc ($22), y	; f1 22
B26_04a6:		.db $00				; 00
B26_04a7:		ora ($16), y	; 11 16
B26_04a9:		sed				; f8 
B26_04aa:		ora ($18), y	; 11 18
B26_04ac:		.db $00				; 00
B26_04ad:		ora $f0			; 05 f0
B26_04af:		bit $00			; 24 00
B26_04b1:		beq B26_04a4 ; f0 f1

B26_04b3:		rol $f8			; 26 f8
B26_04b5:		sbc ($28), y	; f1 28
B26_04b7:		.db $00				; 00
B26_04b8:		ora ($16), y	; 11 16
B26_04ba:		sed				; f8 
B26_04bb:		ora ($18), y	; 11 18
B26_04bd:		.db $00				; 00
B26_04be:		ora $e0			; 05 e0
B26_04c0:	.db $1a
B26_04c1:		.db $00				; 00
B26_04c2:		sed				; f8 
B26_04c3:		sbc ($1c, x)	; e1 1c
B26_04c5:		.db $00				; 00
B26_04c6:		sbc ($1e, x)	; e1 1e
B26_04c8:		php				; 08 
B26_04c9:		ora ($12, x)	; 01 12
B26_04cb:		sed				; f8 
B26_04cc:		ora ($18, x)	; 01 18
B26_04ce:		.db $00				; 00
B26_04cf:	.db $04
B26_04d0:		cpx #$20		; e0 20
B26_04d2:		.db $00				; 00
B26_04d3:		sed				; f8 
B26_04d4:		sbc ($22, x)	; e1 22
B26_04d6:		.db $00				; 00
B26_04d7:		ora ($12, x)	; 01 12
B26_04d9:		sed				; f8 
B26_04da:		ora ($18, x)	; 01 18
B26_04dc:		.db $00				; 00
B26_04dd:		ora $e0			; 05 e0
B26_04df:		bit $00			; 24 00
B26_04e1:		;removed
	.db $f0 $e1

B26_04e3:		rol $f8			; 26 f8
B26_04e5:		sbc ($28, x)	; e1 28
B26_04e7:		.db $00				; 00
B26_04e8:		ora ($12, x)	; 01 12
B26_04ea:		sed				; f8 
B26_04eb:		ora ($18, x)	; 01 18
B26_04ed:		.db $00				; 00
B26_04ee:		ora $e0			; 05 e0
B26_04f0:	.db $1a
B26_04f1:		.db $00				; 00
B26_04f2:		sed				; f8 
B26_04f3:		sbc ($1c, x)	; e1 1c
B26_04f5:		.db $00				; 00
B26_04f6:		sbc ($1e, x)	; e1 1e
B26_04f8:		php				; 08 
B26_04f9:		ora ($16, x)	; 01 16
B26_04fb:		sed				; f8 
B26_04fc:		ora ($14, x)	; 01 14
B26_04fe:		.db $00				; 00
B26_04ff:	.db $04
B26_0500:		cpx #$20		; e0 20
B26_0502:		.db $00				; 00
B26_0503:		sed				; f8 
B26_0504:		sbc ($22, x)	; e1 22
B26_0506:		.db $00				; 00
B26_0507:		ora ($16, x)	; 01 16
B26_0509:		sed				; f8 
B26_050a:		ora ($14, x)	; 01 14
B26_050c:		.db $00				; 00
B26_050d:		ora $e0			; 05 e0
B26_050f:		bit $00			; 24 00
B26_0511:		;removed
	.db $f0 $e1

B26_0513:		rol $f8			; 26 f8
B26_0515:		sbc ($28, x)	; e1 28
B26_0517:		.db $00				; 00
B26_0518:		ora ($16, x)	; 01 16
B26_051a:		sed				; f8 
B26_051b:		ora ($14, x)	; 01 14
B26_051d:		.db $00				; 00
B26_051e:	.db $04
B26_051f:		cpx #$2a		; e0 2a
B26_0521:		.db $00				; 00
B26_0522:	.db $fa
B26_0523:		sbc ($2c, x)	; e1 2c
B26_0525:	.db $02
B26_0526:		ora ($2e, x)	; 01 2e
B26_0528:		sed				; f8 
B26_0529:		ora ($18, x)	; 01 18
B26_052b:		.db $00				; 00
B26_052c:	.db $04
B26_052d:		cpx #$2a		; e0 2a
B26_052f:		.db $00				; 00
B26_0530:	.db $f7
B26_0531:		sbc ($2c, x)	; e1 2c
B26_0533:	.db $ff
B26_0534:		ora ($16, x)	; 01 16
B26_0536:		sed				; f8 
B26_0537:		ora ($18, x)	; 01 18
B26_0539:		.db $00				; 00
B26_053a:	.db $04
B26_053b:		.db $00				; 00
B26_053c:		bmi B26_053e ; 30 00

B26_053e:		inx				; e8 
B26_053f:		ora ($32, x)	; 01 32
B26_0541:		beq B26_0544 ; f0 01

B26_0543:	.db $34
B26_0544:		sed				; f8 
B26_0545:		ora ($36, x)	; 01 36
B26_0547:		.db $00				; 00
B26_0548:	.db $02
B26_0549:		cpx #$38		; e0 38
B26_054b:		ora ($10, x)	; 01 10
B26_054d:		ora ($3a, x)	; 01 3a
B26_054f:		bpl B26_0553 ; 10 02

B26_0551:		cpx #$3e		; e0 3e
B26_0553:		ora ($08, x)	; 01 08
B26_0555:		sbc $40			; e5 40
B26_0557:		;removed
	.db $10 $03

B26_0559:		;removed
	.db $f0 $42

B26_055b:		ora ($d8, x)	; 01 d8
B26_055d:		sbc ($44), y	; f1 44
B26_055f:		cpx #$f1		; e0 f1
B26_0561:	.db $44
B26_0562:		inx				; e8 
B26_0563:	.db $02
B26_0564:		cpx #$38		; e0 38
B26_0566:		ora ($10, x)	; 01 10
B26_0568:		ora ($3c, x)	; 01 3c
B26_056a:		bpl B26_056e ; 10 02

B26_056c:		cpx #$46		; e0 46
B26_056e:		.db $00				; 00
B26_056f:		bpl B26_0572 ; 10 01

B26_0571:		pha				; 48 
B26_0572:		bpl B26_0576 ; 10 02

B26_0574:		cpx #$4c		; e0 4c
B26_0576:		.db $00				; 00
B26_0577:		php				; 08 
B26_0578:		sbc $4e			; e5 4e
B26_057a:		bpl B26_057f ; 10 03

B26_057c:		;removed
	.db $f0 $50

B26_057e:		.db $00				; 00
B26_057f:		cld				; d8 
B26_0580:		sbc ($52), y	; f1 52
B26_0582:		cpx #$f1		; e0 f1
B26_0584:	.db $52
B26_0585:		inx				; e8 
B26_0586:		ora $f0			; 05 f0
B26_0588:		bvc B26_058a ; 50 00

B26_058a:		iny				; c8 
B26_058b:		sbc ($52), y	; f1 52
B26_058d:		bne B26_0580 ; d0 f1

B26_058f:	.db $52
B26_0590:		cld				; d8 
B26_0591:		sbc ($52), y	; f1 52
B26_0593:		cpx #$f1		; e0 f1
B26_0595:	.db $52
B26_0596:		inx				; e8 
B26_0597:	.db $02
B26_0598:		;removed
	.db $f0 $54

B26_059a:		ora ($f8, x)	; 01 f8
B26_059c:		beq B26_05f2 ; f0 54

B26_059e:		eor ($00, x)	; 41 00
B26_05a0:	.db $02
B26_05a1:		beq B26_05f9 ; f0 56

B26_05a3:		ora ($f8, x)	; 01 f8
B26_05a5:		sbc ($58), y	; f1 58
B26_05a7:		.db $00				; 00
B26_05a8:	.db $02
B26_05a9:		beq B26_0603 ; f0 58

B26_05ab:		eor ($f8, x)	; 41 f8
B26_05ad:		sbc ($56), y	; f1 56
B26_05af:		.db $00				; 00
B26_05b0:	.db $02
B26_05b1:		beq B26_062b ; f0 78

B26_05b3:		ora ($f8, x)	; 01 f8
B26_05b5:		sbc ($7a), y	; f1 7a
B26_05b7:		.db $00				; 00
B26_05b8:	.db $02
B26_05b9:		beq B26_0635 ; f0 7a

B26_05bb:		eor ($f8, x)	; 41 f8
B26_05bd:		sbc ($78), y	; f1 78
B26_05bf:		.db $00				; 00
B26_05c0:	.db $02
B26_05c1:		beq B26_063d ; f0 7a

B26_05c3:		cmp ($f8, x)	; c1 f8
B26_05c5:		sbc ($78), y	; f1 78
B26_05c7:		.db $00				; 00
B26_05c8:	.db $02
B26_05c9:		beq B26_0643 ; f0 78

B26_05cb:		sta ($f8, x)	; 81 f8
B26_05cd:		sbc ($7a), y	; f1 7a
B26_05cf:		.db $00				; 00
B26_05d0:	.db $02
B26_05d1:		beq B26_064f ; f0 7c

B26_05d3:		sta ($f8, x)	; 81 f8
B26_05d5:		sbc ($7e), y	; f1 7e
B26_05d7:		.db $00				; 00
B26_05d8:		ora ($f0, x)	; 01 f0
B26_05da:	.db $62
B26_05db:		ora ($fc, x)	; 01 fc
B26_05dd:	.db $02
B26_05de:		beq B26_0646 ; f0 66

B26_05e0:		ora ($f8, x)	; 01 f8
B26_05e2:		sbc ($68), y	; f1 68
B26_05e4:		.db $00				; 00
B26_05e5:		ora ($f0, x)	; 01 f0
B26_05e7:	.db $5a
B26_05e8:		ora ($fc, x)	; 01 fc
B26_05ea:	.db $02
B26_05eb:		beq B26_060e ; f0 21

B26_05ed:		ora ($f8, x)	; 01 f8
B26_05ef:		sbc ($23), y	; f1 23
B26_05f1:		.db $00				; 00
B26_05f2:	.db $02
B26_05f3:		;removed
	.db $f0 $15

B26_05f5:	.db $03
B26_05f6:		sed				; f8 
B26_05f7:		beq B26_060e ; f0 15

B26_05f9:	.db $43
B26_05fa:		.db $00				; 00
B26_05fb:	.db $02
B26_05fc:		beq B26_0615 ; f0 17

B26_05fe:	.db $03
B26_05ff:		sed				; f8 
B26_0600:		beq B26_0619 ; f0 17

B26_0602:	.db $43
B26_0603:		.db $00				; 00
B26_0604:	.db $04
B26_0605:		cpx #$00		; e0 00
B26_0607:		.db $00				; 00
B26_0608:		sed				; f8 
B26_0609:		sbc ($02, x)	; e1 02
B26_060b:		.db $00				; 00
B26_060c:		ora ($04, x)	; 01 04
B26_060e:		sed				; f8 
B26_060f:		ora ($06, x)	; 01 06
B26_0611:		.db $00				; 00
B26_0612:	.db $04
B26_0613:		cpx #$08		; e0 08
B26_0615:		.db $00				; 00
B26_0616:		sed				; f8 
B26_0617:		sbc ($0a, x)	; e1 0a
B26_0619:		.db $00				; 00
B26_061a:		ora ($0c, x)	; 01 0c
B26_061c:		sed				; f8 
B26_061d:		ora ($0e, x)	; 01 0e
B26_061f:		.db $00				; 00
B26_0620:	.db $04
B26_0621:		cpx #$10		; e0 10
B26_0623:		.db $00				; 00
B26_0624:		sed				; f8 
B26_0625:		sbc ($12, x)	; e1 12
B26_0627:		.db $00				; 00
B26_0628:		ora ($14, x)	; 01 14
B26_062a:		sed				; f8 
B26_062b:		ora ($16, x)	; 01 16
B26_062d:		.db $00				; 00
B26_062e:	.db $04
B26_062f:		cpx #$10		; e0 10
B26_0631:		.db $00				; 00
B26_0632:		sed				; f8 
B26_0633:		sbc ($12, x)	; e1 12
B26_0635:		.db $00				; 00
B26_0636:		ora ($56, x)	; 01 56
B26_0638:		sed				; f8 
B26_0639:		ora ($48, x)	; 01 48
B26_063b:		.db $00				; 00
B26_063c:	.db $04
B26_063d:		cpx #$10		; e0 10
B26_063f:		.db $00				; 00
B26_0640:		sed				; f8 
B26_0641:		sbc ($12, x)	; e1 12
B26_0643:		.db $00				; 00
B26_0644:		ora ($46, x)	; 01 46
B26_0646:		sed				; f8 
B26_0647:		ora ($52, x)	; 01 52
B26_0649:		.db $00				; 00
B26_064a:	.db $04
B26_064b:		inx				; e8 
B26_064c:		bpl B26_064e ; 10 00

B26_064e:		sed				; f8 
B26_064f:		sbc #$44		; e9 44
B26_0651:		.db $00				; 00
B26_0652:		ora #$46		; 09 46
B26_0654:		sed				; f8 
B26_0655:		ora #$48		; 09 48
B26_0657:		.db $00				; 00
B26_0658:	.db $04
B26_0659:		beq B26_066b ; f0 10

B26_065b:		.db $00				; 00
B26_065c:		sed				; f8 
B26_065d:		sbc ($44), y	; f1 44
B26_065f:		.db $00				; 00
B26_0660:		ora ($46), y	; 11 46
B26_0662:		sed				; f8 
B26_0663:		ora ($48), y	; 11 48
B26_0665:		.db $00				; 00
B26_0666:	.db $04
B26_0667:		cpx #$5c		; e0 5c
B26_0669:		.db $00				; 00
B26_066a:	.db $f7
B26_066b:		sbc ($5e, x)	; e1 5e
B26_066d:	.db $ff
B26_066e:		ora ($46, x)	; 01 46
B26_0670:		sed				; f8 
B26_0671:		ora ($48, x)	; 01 48
B26_0673:		.db $00				; 00
B26_0674:	.db $04
B26_0675:		cpx #$5c		; e0 5c
B26_0677:		.db $00				; 00
B26_0678:	.db $f7
B26_0679:		sbc ($5e, x)	; e1 5e
B26_067b:	.db $ff
B26_067c:		ora ($46, x)	; 01 46
B26_067e:		sed				; f8 
B26_067f:		ora ($48, x)	; 01 48
B26_0681:		.db $00				; 00
B26_0682:	.db $04
B26_0683:		beq B26_06e5 ; f0 60

B26_0685:		.db $00				; 00
B26_0686:		inx				; e8 
B26_0687:		sbc ($62), y	; f1 62
B26_0689:		beq B26_067c ; f0 f1

B26_068b:	.db $64
B26_068c:		sed				; f8 
B26_068d:		sbc ($66), y	; f1 66
B26_068f:		.db $00				; 00
B26_0690:	.db $04
B26_0691:		cpx #$1e		; e0 1e
B26_0693:		.db $00				; 00
B26_0694:		sed				; f8 
B26_0695:		sbc ($0a, x)	; e1 0a
B26_0697:		.db $00				; 00
B26_0698:		ora ($0c, x)	; 01 0c
B26_069a:		sed				; f8 
B26_069b:		ora ($0e, x)	; 01 0e
B26_069d:		.db $00				; 00
B26_069e:	.db $04
B26_069f:		cpx #$20		; e0 20
B26_06a1:		.db $00				; 00
B26_06a2:	.db $f7
B26_06a3:		sbc ($12, x)	; e1 12
B26_06a5:	.db $ff
B26_06a6:		ora ($22, x)	; 01 22
B26_06a8:		sed				; f8 
B26_06a9:		ora ($16, x)	; 01 16
B26_06ab:		.db $00				; 00
B26_06ac:	.db $04
B26_06ad:		beq B26_06f9 ; f0 4a

B26_06af:		.db $00				; 00
B26_06b0:		sbc $12f1, y	; f9 f1 12
B26_06b3:		ora ($11, x)	; 01 11
B26_06b5:		lsr $f8			; 46 f8
B26_06b7:		ora ($48), y	; 11 48
B26_06b9:		.db $00				; 00
B26_06ba:	.db $04
B26_06bb:		beq B26_06dd ; f0 20

B26_06bd:		.db $00				; 00
B26_06be:	.db $f7
B26_06bf:		sbc ($12), y	; f1 12
B26_06c1:	.db $ff
B26_06c2:		ora ($46), y	; 11 46
B26_06c4:		sed				; f8 
B26_06c5:		ora ($48), y	; 11 48
B26_06c7:		.db $00				; 00
B26_06c8:	.db $04
B26_06c9:		cpx #$4a		; e0 4a
B26_06cb:		.db $00				; 00
B26_06cc:		sbc $12e1, y	; f9 e1 12
B26_06cf:		ora ($01, x)	; 01 01
B26_06d1:		lsr $f8, x		; 56 f8
B26_06d3:		ora ($48, x)	; 01 48
B26_06d5:		.db $00				; 00
B26_06d6:	.db $04
B26_06d7:		cpx #$20		; e0 20
B26_06d9:		.db $00				; 00
B26_06da:	.db $f7
B26_06db:		sbc ($12, x)	; e1 12
B26_06dd:	.db $ff
B26_06de:		ora ($56, x)	; 01 56
B26_06e0:		sed				; f8 
B26_06e1:		ora ($48, x)	; 01 48
B26_06e3:		.db $00				; 00
B26_06e4:	.db $04
B26_06e5:		cpx #$4a		; e0 4a
B26_06e7:		.db $00				; 00
B26_06e8:		sbc $12e1, y	; f9 e1 12
B26_06eb:		ora ($01, x)	; 01 01
B26_06ed:		lsr $f8			; 46 f8
B26_06ef:		ora ($52, x)	; 01 52
B26_06f1:		.db $00				; 00
B26_06f2:	.db $04
B26_06f3:		cpx #$20		; e0 20
B26_06f5:		.db $00				; 00
B26_06f6:	.db $f7
B26_06f7:		sbc ($12, x)	; e1 12
B26_06f9:	.db $ff
B26_06fa:		ora ($46, x)	; 01 46
B26_06fc:		sed				; f8 
B26_06fd:		ora ($52, x)	; 01 52
B26_06ff:		.db $00				; 00
B26_0700:		ora ($d0, x)	; 01 d0
B26_0702:		clc				; 18 
B26_0703:		ora ($f9, x)	; 01 f9
B26_0705:	.db $02
B26_0706:		cpx #$1a		; e0 1a
B26_0708:		ora ($e7, x)	; 01 e7
B26_070a:		sbc $1c			; e5 1c
B26_070c:	.db $ef
B26_070d:	.db $04
B26_070e:		beq B26_0734 ; f0 24

B26_0710:		.db $00				; 00
B26_0711:		sed				; f8 
B26_0712:		sbc ($26), y	; f1 26
B26_0714:		.db $00				; 00
B26_0715:		ora ($46), y	; 11 46
B26_0717:		sed				; f8 
B26_0718:		ora ($4c), y	; 11 4c
B26_071a:		.db $00				; 00
B26_071b:	.db $04
B26_071c:		cpx #$24		; e0 24
B26_071e:		.db $00				; 00
B26_071f:		sed				; f8 
B26_0720:		sbc ($26, x)	; e1 26
B26_0722:		.db $00				; 00
B26_0723:		ora ($58, x)	; 01 58
B26_0725:		sed				; f8 
B26_0726:		ora ($4c, x)	; 01 4c
B26_0728:		.db $00				; 00
B26_0729:	.db $04
B26_072a:		cpx #$24		; e0 24
B26_072c:		.db $00				; 00
B26_072d:		sed				; f8 
B26_072e:		sbc ($26, x)	; e1 26
B26_0730:		.db $00				; 00
B26_0731:		ora ($46, x)	; 01 46
B26_0733:		sed				; f8 
B26_0734:		ora ($54, x)	; 01 54
B26_0736:		.db $00				; 00
B26_0737:	.db $04
B26_0738:		cpx #$24		; e0 24
B26_073a:		.db $00				; 00
B26_073b:		sed				; f8 
B26_073c:		sbc ($26, x)	; e1 26
B26_073e:		.db $00				; 00
B26_073f:		ora ($22, x)	; 01 22
B26_0741:		sed				; f8 
B26_0742:		ora ($28, x)	; 01 28
B26_0744:		.db $00				; 00
B26_0745:		ora $f0			; 05 f0
B26_0747:		rol a			; 2a
B26_0748:		.db $00				; 00
B26_0749:		beq B26_072c ; f0 e1

B26_074b:		bit $e1f8		; 2c f8 e1
B26_074e:	.db $02
B26_074f:		.db $00				; 00
B26_0750:		ora ($2e, x)	; 01 2e
B26_0752:		sed				; f8 
B26_0753:		ora ($06, x)	; 01 06
B26_0755:		.db $00				; 00
B26_0756:		ora $f0			; 05 f0
B26_0758:		rol a			; 2a
B26_0759:		.db $00				; 00
B26_075a:		;removed
	.db $f0 $e1

B26_075c:		bit $e1f8		; 2c f8 e1
B26_075f:	.db $02
B26_0760:		.db $00				; 00
B26_0761:		ora ($4e, x)	; 01 4e
B26_0763:		sed				; f8 
B26_0764:		ora ($50, x)	; 01 50
B26_0766:		.db $00				; 00
B26_0767:		ora $f0			; 05 f0
B26_0769:		rol a			; 2a
B26_076a:		.db $00				; 00
B26_076b:		beq B26_074e ; f0 e1

B26_076d:		bit $e1f8		; 2c f8 e1
B26_0770:	.db $12
B26_0771:		.db $00				; 00
B26_0772:		ora ($5a, x)	; 01 5a
B26_0774:		sed				; f8 
B26_0775:		ora ($50, x)	; 01 50
B26_0777:		.db $00				; 00
B26_0778:		ora $f0			; 05 f0
B26_077a:		rol a			; 2a
B26_077b:		.db $00				; 00
B26_077c:		beq B26_075f ; f0 e1

B26_077e:		bit $e1f8		; 2c f8 e1
B26_0781:	.db $12
B26_0782:		.db $00				; 00
B26_0783:		ora ($4e, x)	; 01 4e
B26_0785:		sed				; f8 
B26_0786:		ora ($06, x)	; 01 06
B26_0788:		.db $00				; 00
B26_0789:		ora ($f0, x)	; 01 f0
B26_078b:		bmi B26_078d ; 30 00

B26_078d:	.db $fc
B26_078e:	.db $03
B26_078f:		beq B26_07c3 ; f0 32

B26_0791:	.db $03
B26_0792:	.db $f4
B26_0793:		sbc ($34), y	; f1 34
B26_0795:	.db $fc
B26_0796:		sbc ($36), y	; f1 36
B26_0798:	.db $04
B26_0799:		ora $f0			; 05 f0
B26_079b:	.db $32
B26_079c:	.db $03
B26_079d:		cpx $3af1		; ec f1 3a
B26_07a0:	.db $f4
B26_07a1:		sbc ($3a), y	; f1 3a
B26_07a3:	.db $fc
B26_07a4:		sbc ($3a), y	; f1 3a
B26_07a6:	.db $04
B26_07a7:		sbc ($36), y	; f1 36
B26_07a9:	.db $0c
B26_07aa:	.db $04
B26_07ab:		;removed
	.db $f0 $38

B26_07ad:	.db $03
B26_07ae:		beq B26_07a1 ; f0 f1

B26_07b0:	.db $3a
B26_07b1:		sed				; f8 
B26_07b2:		sbc ($3a), y	; f1 3a
B26_07b4:		.db $00				; 00
B26_07b5:		sbc ($36), y	; f1 36
B26_07b7:		php				; 08 
B26_07b8:	.db $02
B26_07b9:		;removed
	.db $f0 $3c

B26_07bb:	.db $03
B26_07bc:		sed				; f8 
B26_07bd:		sbc ($3e), y	; f1 3e
B26_07bf:		.db $00				; 00
B26_07c0:	.db $02
B26_07c1:		beq B26_0803 ; f0 40

B26_07c3:	.db $03
B26_07c4:		sed				; f8 
B26_07c5:		sbc ($42), y	; f1 42
B26_07c7:		.db $00				; 00
B26_07c8:		ora ($f0, x)	; 01 f0
B26_07ca:		ror $fc00		; 6e 00 fc
B26_07cd:	.db $02
B26_07ce:		beq B26_0838 ; f0 68

B26_07d0:		.db $00				; 00
B26_07d1:		sed				; f8 
B26_07d2:		beq B26_083c ; f0 68

B26_07d4:		cpy #$00		; c0 00
B26_07d6:	.db $02
B26_07d7:		beq B26_0843 ; f0 6a

B26_07d9:		.db $00				; 00
B26_07da:		sed				; f8 
B26_07db:		beq B26_0847 ; f0 6a

B26_07dd:		cpy #$00		; c0 00
B26_07df:	.db $02
B26_07e0:		;removed
	.db $f0 $6c

B26_07e2:		.db $00				; 00
B26_07e3:		sed				; f8 
B26_07e4:		beq B26_0852 ; f0 6c

B26_07e6:		cpy #$00		; c0 00
B26_07e8:	.db $02
B26_07e9:		beq B26_085b ; f0 70

B26_07eb:		.db $00				; 00
B26_07ec:		sed				; f8 
B26_07ed:		beq B26_085f ; f0 70

B26_07ef:		rti				; 40 


B26_07f0:		.db $00				; 00
B26_07f1:	.db $02
B26_07f2:		;removed
	.db $f0 $72

B26_07f4:		.db $00				; 00
B26_07f5:		sed				; f8 
B26_07f6:		;removed
	.db $f0 $72

B26_07f8:		rti				; 40 


B26_07f9:		.db $00				; 00
B26_07fa:	.db $02
B26_07fb:		beq B26_07ae ; f0 b1

B26_07fd:		.db $00				; 00
B26_07fe:		sed				; f8 
B26_07ff:		sbc ($b3), y	; f1 b3
B26_0801:		.db $00				; 00
B26_0802:	.db $02
B26_0803:		;removed
	.db $f0 $b5

B26_0805:		.db $00				; 00
B26_0806:		sed				; f8 
B26_0807:		sbc ($b7), y	; f1 b7
B26_0809:		.db $00				; 00
B26_080a:	.db $04
B26_080b:		cpx #$00		; e0 00
B26_080d:		.db $00				; 00
B26_080e:	.db $f4
B26_080f:		sbc ($02, x)	; e1 02
B26_0811:	.db $fc
B26_0812:		ora ($04, x)	; 01 04
B26_0814:		sed				; f8 
B26_0815:		ora ($06, x)	; 01 06
B26_0817:		.db $00				; 00
B26_0818:	.db $04
B26_0819:		cpx #$08		; e0 08
B26_081b:		.db $00				; 00
B26_081c:		sbc $e1, x		; f5 e1
B26_081e:		asl a			; 0a
B26_081f:		sbc $0c01, x	; fd 01 0c
B26_0822:		sed				; f8 
B26_0823:		ora ($0e, x)	; 01 0e
B26_0825:		.db $00				; 00
B26_0826:	.db $04
B26_0827:		cld				; d8 
B26_0828:		php				; 08 
B26_0829:		.db $00				; 00
B26_082a:		sbc $d9, x		; f5 d9
B26_082c:		asl a			; 0a
B26_082d:		sbc $0cf9, x	; fd f9 0c
B26_0830:		sed				; f8 
B26_0831:	.db $f9 $0e $00
B26_0834:	.db $04
B26_0835:		cpx #$10		; e0 10
B26_0837:		.db $00				; 00
B26_0838:	.db $f4
B26_0839:		sbc ($12, x)	; e1 12
B26_083b:	.db $fc
B26_083c:		ora ($14, x)	; 01 14
B26_083e:		sed				; f8 
B26_083f:		ora ($16, x)	; 01 16
B26_0841:		.db $00				; 00
B26_0842:	.db $04
B26_0843:		cld				; d8 
B26_0844:		.db $00				; 00
B26_0845:		.db $00				; 00
B26_0846:		sed				; f8 
B26_0847:	.db $d9 $02 $00
B26_084a:		sbc $f82a, y	; f9 2a f8
B26_084d:	.db $f9 $2c $00
B26_0850:	.db $04
B26_0851:		cld				; d8 
B26_0852:		.db $00				; 00
B26_0853:		.db $00				; 00
B26_0854:		inc $d9, x		; f6 d9
B26_0856:	.db $02
B26_0857:		inc $26f9, x	; fe f9 26
B26_085a:		sed				; f8 
B26_085b:	.db $f9 $28 $00
B26_085e:	.db $04
B26_085f:		cpx #$00		; e0 00
B26_0861:		.db $00				; 00
B26_0862:		inc $e1, x		; f6 e1
B26_0864:	.db $02
B26_0865:		inc $6c01, x	; fe 01 6c
B26_0868:		sed				; f8 
B26_0869:		ora ($6e, x)	; 01 6e
B26_086b:		.db $00				; 00
B26_086c:	.db $02
B26_086d:		sed				; f8 
B26_086e:		rti				; 40 


B26_086f:	.db $80
B26_0870:		sed				; f8 
B26_0871:	.db $f9 $42 $00
B26_0874:	.db $04
B26_0875:	.db $e2
B26_0876:	.db $64
B26_0877:		.db $00				; 00
B26_0878:		sed				; f8 
B26_0879:	.db $e3
B26_087a:	.db $02
B26_087b:		.db $00				; 00
B26_087c:		ora ($2a, x)	; 01 2a
B26_087e:		sed				; f8 
B26_087f:		ora ($2c, x)	; 01 2c
B26_0881:		.db $00				; 00
B26_0882:	.db $02
B26_0883:		;removed
	.db $f0 $40

B26_0885:	.db $80
B26_0886:		sed				; f8 
B26_0887:		sbc ($42), y	; f1 42
B26_0889:		.db $00				; 00
B26_088a:	.db $03
B26_088b:		beq B26_08f3 ; f0 66

B26_088d:		.db $00				; 00
B26_088e:		beq B26_0881 ; f0 f1

B26_0890:		pla				; 68 
B26_0891:		sed				; f8 
B26_0892:		sbc ($6a), y	; f1 6a
B26_0894:		.db $00				; 00
B26_0895:	.db $02
B26_0896:		beq B26_08c6 ; f0 2e

B26_0898:		.db $00				; 00
B26_0899:		sed				; f8 
B26_089a:		sbc ($30), y	; f1 30
B26_089c:		.db $00				; 00
B26_089d:	.db $04
B26_089e:		;removed
	.db $f0 $32

B26_08a0:		.db $00				; 00
B26_08a1:		sed				; f8 
B26_08a2:		sbc ($34), y	; f1 34
B26_08a4:		.db $00				; 00
B26_08a5:		ora ($36), y	; 11 36
B26_08a7:		sed				; f8 
B26_08a8:		ora ($38), y	; 11 38
B26_08aa:		.db $00				; 00
B26_08ab:	.db $03
B26_08ac:		;removed
	.db $f0 $3a

B26_08ae:		.db $00				; 00
B26_08af:		sed				; f8 
B26_08b0:		sbc ($3c), y	; f1 3c
B26_08b2:		.db $00				; 00
B26_08b3:		sbc ($3e), y	; f1 3e
B26_08b5:		php				; 08 
B26_08b6:	.db $02
B26_08b7:		beq B26_08f9 ; f0 40

B26_08b9:		.db $00				; 00
B26_08ba:		sed				; f8 
B26_08bb:		sbc ($42), y	; f1 42
B26_08bd:		.db $00				; 00
B26_08be:	.db $03
B26_08bf:		beq B26_0905 ; f0 44

B26_08c1:		.db $00				; 00
B26_08c2:		beq B26_08b5 ; f0 f1

B26_08c4:		lsr $f8			; 46 f8
B26_08c6:		sbc ($48), y	; f1 48
B26_08c8:		.db $00				; 00
B26_08c9:	.db $03
B26_08ca:		beq B26_0916 ; f0 4a

B26_08cc:		.db $00				; 00
B26_08cd:		sed				; f8 
B26_08ce:		sbc ($4e), y	; f1 4e
B26_08d0:		.db $00				; 00
B26_08d1:		ora ($4c), y	; 11 4c
B26_08d3:		sed				; f8 
B26_08d4:	.db $04
B26_08d5:		cpx #$18		; e0 18
B26_08d7:		.db $00				; 00
B26_08d8:		sbc $1ae1, y	; f9 e1 1a
B26_08db:		ora ($01, x)	; 01 01
B26_08dd:	.db $14
B26_08de:		sed				; f8 
B26_08df:		ora ($16, x)	; 01 16
B26_08e1:		.db $00				; 00
B26_08e2:		ora $e0			; 05 e0
B26_08e4:	.db $1c
B26_08e5:		.db $00				; 00
B26_08e6:		inc $1ee1		; ee e1 1e
B26_08e9:		inc $e1, x		; f6 e1
B26_08eb:		jsr $01fe		; 20 fe 01
B26_08ee:	.db $0c
B26_08ef:		sed				; f8 
B26_08f0:		ora ($0e, x)	; 01 0e
B26_08f2:		.db $00				; 00
B26_08f3:	.db $04
B26_08f4:	.db $da
B26_08f5:		clc				; 18 
B26_08f6:		.db $00				; 00
B26_08f7:	.db $fb
B26_08f8:	.db $db
B26_08f9:	.db $1a
B26_08fa:	.db $03
B26_08fb:		sbc $f82a, y	; f9 2a f8
B26_08fe:	.db $f9 $2c $00
B26_0901:		ora $da			; 05 da
B26_0903:	.db $1c
B26_0904:		.db $00				; 00
B26_0905:	.db $ef
B26_0906:	.db $db
B26_0907:		asl $dbf7, x	; 1e f7 db
B26_090a:		jsr $f9ff		; 20 ff f9
B26_090d:		rol a			; 2a
B26_090e:		sed				; f8 
B26_090f:	.db $f9 $2c $00
B26_0912:	.db $04
B26_0913:	.db $da
B26_0914:		clc				; 18 
B26_0915:		.db $00				; 00
B26_0916:		sbc $1adb, y	; f9 db 1a
B26_0919:		ora ($f9, x)	; 01 f9
B26_091b:		rol $f8			; 26 f8
B26_091d:	.db $f9 $28 $00
B26_0920:		ora $da			; 05 da
B26_0922:	.db $1c
B26_0923:		.db $00				; 00
B26_0924:		inc $1edb		; ee db 1e
B26_0927:		inc $db, x		; f6 db
B26_0929:		jsr $f9fe		; 20 fe f9
B26_092c:		rol $f8			; 26 f8
B26_092e:	.db $f9 $28 $00
B26_0931:	.db $04
B26_0932:		inx				; e8 
B26_0933:		clc				; 18 
B26_0934:		.db $00				; 00
B26_0935:	.db $fc
B26_0936:		sbc #$1a		; e9 1a
B26_0938:	.db $04
B26_0939:		ora #$22		; 09 22
B26_093b:		sed				; f8 
B26_093c:		ora #$24		; 09 24
B26_093e:		.db $00				; 00
B26_093f:		ora $e8			; 05 e8
B26_0941:	.db $1c
B26_0942:		.db $00				; 00
B26_0943:		inc $1ee9		; ee e9 1e
B26_0946:		inc $e9, x		; f6 e9
B26_0948:		jsr $09fe		; 20 fe 09
B26_094b:	.db $22
B26_094c:		sed				; f8 
B26_094d:		ora #$24		; 09 24
B26_094f:		.db $00				; 00
B26_0950:	.db $02
B26_0951:		beq B26_0981 ; f0 2e

B26_0953:	.db $80
B26_0954:		sed				; f8 
B26_0955:		sbc ($30), y	; f1 30
B26_0957:		.db $00				; 00
B26_0958:	.db $04
B26_0959:		bne B26_0991 ; d0 36

B26_095b:	.db $80
B26_095c:		sed				; f8 
B26_095d:		cmp ($38), y	; d1 38
B26_095f:		.db $00				; 00
B26_0960:		sbc ($32), y	; f1 32
B26_0962:		sed				; f8 
B26_0963:		sbc ($34), y	; f1 34
B26_0965:		.db $00				; 00
B26_0966:	.db $03
B26_0967:		;removed
	.db $f0 $3a

B26_0969:	.db $80
B26_096a:		sed				; f8 
B26_096b:		sbc ($3c), y	; f1 3c
B26_096d:		.db $00				; 00
B26_096e:		sbc ($3e), y	; f1 3e
B26_0970:		php				; 08 
B26_0971:	.db $03
B26_0972:		cpx #$50		; e0 50
B26_0974:		.db $00				; 00
B26_0975:		sed				; f8 
B26_0976:		ora ($52, x)	; 01 52
B26_0978:		sed				; f8 
B26_0979:		ora ($54, x)	; 01 54
B26_097b:		.db $00				; 00
B26_097c:	.db $03
B26_097d:		cpx #$52		; e0 52
B26_097f:	.db $80
B26_0980:		sed				; f8 
B26_0981:		sbc ($54, x)	; e1 54
B26_0983:		.db $00				; 00
B26_0984:		ora ($50, x)	; 01 50
B26_0986:		sed				; f8 
B26_0987:	.db $03
B26_0988:		cpx #$56		; e0 56
B26_098a:		.db $00				; 00
B26_098b:		sed				; f8 
B26_098c:		sbc ($58), y	; f1 58
B26_098e:		.db $00				; 00
B26_098f:		sbc ($5a), y	; f1 5a
B26_0991:		php				; 08 
B26_0992:	.db $03
B26_0993:		;removed
	.db $f0 $58

B26_0995:	.db $80
B26_0996:		.db $00				; 00
B26_0997:		sbc ($5a), y	; f1 5a
B26_0999:		php				; 08 
B26_099a:		ora ($56, x)	; 01 56
B26_099c:		sed				; f8 
B26_099d:	.db $04
B26_099e:		cpx #$5c		; e0 5c
B26_09a0:		.db $00				; 00
B26_09a1:		sed				; f8 
B26_09a2:		sbc ($5e, x)	; e1 5e
B26_09a4:		.db $00				; 00
B26_09a5:		ora ($14, x)	; 01 14
B26_09a7:		sed				; f8 
B26_09a8:		ora ($16, x)	; 01 16
B26_09aa:		.db $00				; 00
B26_09ab:		asl $e4			; 06 e4
B26_09ad:		rts				; 60 


B26_09ae:		ora ($e4, x)	; 01 e4
B26_09b0:		cpx #$1c		; e0 1c
B26_09b2:		.db $00				; 00
B26_09b3:		cpx $1ee1		; ec e1 1e
B26_09b6:	.db $f4
B26_09b7:		sbc ($20, x)	; e1 20
B26_09b9:	.db $fc
B26_09ba:		ora ($14, x)	; 01 14
B26_09bc:		sed				; f8 
B26_09bd:		ora ($16, x)	; 01 16
B26_09bf:		.db $00				; 00
B26_09c0:	.db $04
B26_09c1:		inx				; e8 
B26_09c2:	.db $5c
B26_09c3:		.db $00				; 00
B26_09c4:	.db $fc
B26_09c5:		sbc #$5e		; e9 5e
B26_09c7:	.db $04
B26_09c8:		ora #$22		; 09 22
B26_09ca:		sed				; f8 
B26_09cb:		ora #$24		; 09 24
B26_09cd:		.db $00				; 00
B26_09ce:		asl $ee			; 06 ee
B26_09d0:		rts				; 60 


B26_09d1:		ora ($e6, x)	; 01 e6
B26_09d3:		nop				; ea 
B26_09d4:	.db $1c
B26_09d5:		.db $00				; 00
B26_09d6:		inc $1eeb		; ee eb 1e
B26_09d9:		inc $eb, x		; f6 eb
B26_09db:		jsr $09fe		; 20 fe 09
B26_09de:	.db $22
B26_09df:		sed				; f8 
B26_09e0:		ora #$24		; 09 24
B26_09e2:		.db $00				; 00
B26_09e3:	.db $04
B26_09e4:		cld				; d8 
B26_09e5:	.db $5c
B26_09e6:		.db $00				; 00
B26_09e7:	.db $fa
B26_09e8:		cmp $025e, y	; d9 5e 02
B26_09eb:		sbc $f826, y	; f9 26 f8
B26_09ee:	.db $f9 $28 $00
B26_09f1:		asl $dc			; 06 dc
B26_09f3:		rts				; 60 


B26_09f4:		ora ($e6, x)	; 01 e6
B26_09f6:		cld				; d8 
B26_09f7:	.db $1c
B26_09f8:		.db $00				; 00
B26_09f9:		inc $1ed9		; ee d9 1e
B26_09fc:		inc $d9, x		; f6 d9
B26_09fe:		jsr $f9fe		; 20 fe f9
B26_0a01:		rol $f8			; 26 f8
B26_0a03:	.db $f9 $28 $00
B26_0a06:	.db $04
B26_0a07:		cld				; d8 
B26_0a08:	.db $5c
B26_0a09:		.db $00				; 00
B26_0a0a:	.db $fa
B26_0a0b:		cmp $025e, y	; d9 5e 02
B26_0a0e:		sbc $f82a, y	; f9 2a f8
B26_0a11:	.db $f9 $2c $00
B26_0a14:		asl $dc			; 06 dc
B26_0a16:		rts				; 60 


B26_0a17:		ora ($e6, x)	; 01 e6
B26_0a19:		cld				; d8 
B26_0a1a:	.db $1c
B26_0a1b:		.db $00				; 00
B26_0a1c:		inc $1ed9		; ee d9 1e
B26_0a1f:		inc $d9, x		; f6 d9
B26_0a21:		jsr $f9fe		; 20 fe f9
B26_0a24:		rol a			; 2a
B26_0a25:		sed				; f8 
B26_0a26:	.db $f9 $2c $00
B26_0a29:		ora $c0			; 05 c0
B26_0a2b:		.db $00				; 00
B26_0a2c:		.db $00				; 00
B26_0a2d:	.db $fc
B26_0a2e:		sbc ($02, x)	; e1 02
B26_0a30:		sed				; f8 
B26_0a31:		sbc ($04, x)	; e1 04
B26_0a33:		.db $00				; 00
B26_0a34:		ora ($06, x)	; 01 06
B26_0a36:		sbc $0801, y	; f9 01 08
B26_0a39:		ora ($05, x)	; 01 05
B26_0a3b:		cpy #$0a		; c0 0a
B26_0a3d:		.db $00				; 00
B26_0a3e:	.db $fc
B26_0a3f:		sbc ($0c, x)	; e1 0c
B26_0a41:		sed				; f8 
B26_0a42:		sbc ($0e, x)	; e1 0e
B26_0a44:		.db $00				; 00
B26_0a45:		ora ($10, x)	; 01 10
B26_0a47:		sed				; f8 
B26_0a48:		ora ($12, x)	; 01 12
B26_0a4a:		.db $00				; 00
B26_0a4b:		ora $c0			; 05 c0
B26_0a4d:		.db $00				; 00
B26_0a4e:		.db $00				; 00
B26_0a4f:	.db $fc
B26_0a50:		sbc ($14, x)	; e1 14
B26_0a52:		sed				; f8 
B26_0a53:		sbc ($16, x)	; e1 16
B26_0a55:		.db $00				; 00
B26_0a56:		ora ($18, x)	; 01 18
B26_0a58:		sbc $1a01, y	; f9 01 1a
B26_0a5b:		ora ($05, x)	; 01 05
B26_0a5d:		cpy #$00		; c0 00
B26_0a5f:		.db $00				; 00
B26_0a60:	.db $fc
B26_0a61:		sbc ($02, x)	; e1 02
B26_0a63:		sed				; f8 
B26_0a64:		sbc ($04, x)	; e1 04
B26_0a66:		.db $00				; 00
B26_0a67:		ora ($06, x)	; 01 06
B26_0a69:		sbc $1c01, y	; f9 01 1c
B26_0a6c:		ora ($05, x)	; 01 05
B26_0a6e:		cpy #$00		; c0 00
B26_0a70:		.db $00				; 00
B26_0a71:	.db $fc
B26_0a72:		sbc ($14, x)	; e1 14
B26_0a74:		sed				; f8 
B26_0a75:		sbc ($16, x)	; e1 16
B26_0a77:		.db $00				; 00
B26_0a78:		ora ($1e, x)	; 01 1e
B26_0a7a:		sbc $1a01, y	; f9 01 1a
B26_0a7d:		ora ($05, x)	; 01 05
B26_0a7f:		cpy #$00		; c0 00
B26_0a81:		.db $00				; 00
B26_0a82:	.db $fb
B26_0a83:		sbc ($20, x)	; e1 20
B26_0a85:	.db $f4
B26_0a86:		sbc ($22, x)	; e1 22
B26_0a88:	.db $fc
B26_0a89:		ora ($24, x)	; 01 24
B26_0a8b:		sed				; f8 
B26_0a8c:		ora ($26, x)	; 01 26
B26_0a8e:		.db $00				; 00
B26_0a8f:		php				; 08 
B26_0a90:		cpy #$00		; c0 00
B26_0a92:		.db $00				; 00
B26_0a93:	.db $fc
B26_0a94:		sbc ($02, x)	; e1 02
B26_0a96:		sed				; f8 
B26_0a97:		sbc ($28, x)	; e1 28
B26_0a99:		.db $00				; 00
B26_0a9a:		sbc ($2a, x)	; e1 2a
B26_0a9c:		php				; 08 
B26_0a9d:		ora ($06, x)	; 01 06
B26_0a9f:		sbc $2c01, y	; f9 01 2c
B26_0aa2:		.db $00				; 00
B26_0aa3:		ora ($2e, x)	; 01 2e
B26_0aa5:		php				; 08 
B26_0aa6:	.db $eb
B26_0aa7:		bmi B26_0ab9 ; 30 10

B26_0aa9:	.db $07
B26_0aaa:		cpy #$00		; c0 00
B26_0aac:		.db $00				; 00
B26_0aad:	.db $fc
B26_0aae:		sbc ($02, x)	; e1 02
B26_0ab0:		sed				; f8 
B26_0ab1:		sbc ($32, x)	; e1 32
B26_0ab3:		.db $00				; 00
B26_0ab4:		sbc ($34, x)	; e1 34
B26_0ab6:		php				; 08 
B26_0ab7:		ora ($06, x)	; 01 06
B26_0ab9:		sbc $2c01, y	; f9 01 2c
B26_0abc:		.db $00				; 00
B26_0abd:		ora ($2e, x)	; 01 2e
B26_0abf:		php				; 08 
B26_0ac0:	.db $04
B26_0ac1:		inx				; e8 
B26_0ac2:		sec				; 38 
B26_0ac3:		.db $00				; 00
B26_0ac4:		sed				; f8 
B26_0ac5:		sbc #$3a		; e9 3a
B26_0ac7:		.db $00				; 00
B26_0ac8:		ora #$3c		; 09 3c
B26_0aca:		sed				; f8 
B26_0acb:		ora #$3e		; 09 3e
B26_0acd:		.db $00				; 00
B26_0ace:	.db $04
B26_0acf:		beq B26_0b09 ; f0 38

B26_0ad1:		.db $00				; 00
B26_0ad2:		sed				; f8 
B26_0ad3:		sbc ($3a), y	; f1 3a
B26_0ad5:		.db $00				; 00
B26_0ad6:		ora ($3c), y	; 11 3c
B26_0ad8:		sed				; f8 
B26_0ad9:		ora ($3e), y	; 11 3e
B26_0adb:		.db $00				; 00
B26_0adc:	.db $04
B26_0add:		beq B26_0b1f ; f0 40

B26_0adf:		.db $00				; 00
B26_0ae0:		sed				; f8 
B26_0ae1:		sbc ($42), y	; f1 42
B26_0ae3:		.db $00				; 00
B26_0ae4:		ora ($44), y	; 11 44
B26_0ae6:		sed				; f8 
B26_0ae7:		ora ($46), y	; 11 46
B26_0ae9:		.db $00				; 00
B26_0aea:	.db $07
B26_0aeb:		;removed
	.db $f0 $38

B26_0aed:		.db $00				; 00
B26_0aee:		sed				; f8 
B26_0aef:		sbc ($48), y	; f1 48
B26_0af1:		.db $00				; 00
B26_0af2:		sbc ($2a), y	; f1 2a
B26_0af4:		php				; 08 
B26_0af5:		ora ($3c), y	; 11 3c
B26_0af7:		sed				; f8 
B26_0af8:		ora ($4a), y	; 11 4a
B26_0afa:		.db $00				; 00
B26_0afb:		ora ($2e), y	; 11 2e
B26_0afd:		php				; 08 
B26_0afe:		sbc $1030, y	; f9 30 10
B26_0b01:		asl $f0			; 06 f0
B26_0b03:		sec				; 38 
B26_0b04:		.db $00				; 00
B26_0b05:		sed				; f8 
B26_0b06:		sbc ($48), y	; f1 48
B26_0b08:		.db $00				; 00
B26_0b09:		sbc ($34), y	; f1 34
B26_0b0b:		php				; 08 
B26_0b0c:		ora ($3c), y	; 11 3c
B26_0b0e:		sed				; f8 
B26_0b0f:		ora ($4a), y	; 11 4a
B26_0b11:		.db $00				; 00
B26_0b12:		ora ($36), y	; 11 36
B26_0b14:		php				; 08 
B26_0b15:	.db $04
B26_0b16:		cpx #$4c		; e0 4c
B26_0b18:		.db $00				; 00
B26_0b19:	.db $fb
B26_0b1a:		sbc ($4e, x)	; e1 4e
B26_0b1c:	.db $03
B26_0b1d:		ora ($50, x)	; 01 50
B26_0b1f:		sed				; f8 
B26_0b20:		ora ($52, x)	; 01 52
B26_0b22:		.db $00				; 00
B26_0b23:	.db $04
B26_0b24:		cpx #$4c		; e0 4c
B26_0b26:		.db $00				; 00
B26_0b27:		sed				; f8 
B26_0b28:		sbc ($4e, x)	; e1 4e
B26_0b2a:		.db $00				; 00
B26_0b2b:		ora ($36, x)	; 01 36
B26_0b2d:		sed				; f8 
B26_0b2e:		ora ($3e, x)	; 01 3e
B26_0b30:		.db $00				; 00
B26_0b31:	.db $04
B26_0b32:		.db $00				; 00
B26_0b33:	.db $54
B26_0b34:		.db $00				; 00
B26_0b35:		inx				; e8 
B26_0b36:		ora ($56, x)	; 01 56
B26_0b38:		beq B26_0b3b ; f0 01

B26_0b3a:		cli				; 58 
B26_0b3b:		sed				; f8 
B26_0b3c:		ora ($5a, x)	; 01 5a
B26_0b3e:		.db $00				; 00
B26_0b3f:	.db $02
B26_0b40:		;removed
	.db $f0 $60

B26_0b42:		.db $00				; 00
B26_0b43:		sed				; f8 
B26_0b44:		sbc ($62), y	; f1 62
B26_0b46:		.db $00				; 00
B26_0b47:	.db $02
B26_0b48:		inc $64, x		; f6 64
B26_0b4a:		.db $00				; 00
B26_0b4b:		sed				; f8 
B26_0b4c:	.db $f7
B26_0b4d:		ror $00			; 66 00
B26_0b4f:	.db $02
B26_0b50:	.db $fc
B26_0b51:		pla				; 68 
B26_0b52:		.db $00				; 00
B26_0b53:		sed				; f8 
B26_0b54:	.db $fd $6a $00
B26_0b57:		asl $f0			; 06 f0
B26_0b59:		sec				; 38 
B26_0b5a:		.db $00				; 00
B26_0b5b:		sed				; f8 
B26_0b5c:		sbc ($48), y	; f1 48
B26_0b5e:		.db $00				; 00
B26_0b5f:		sbc ($34), y	; f1 34
B26_0b61:		php				; 08 
B26_0b62:		ora ($3c), y	; 11 3c
B26_0b64:		sed				; f8 
B26_0b65:		ora ($4a), y	; 11 4a
B26_0b67:		.db $00				; 00
B26_0b68:		ora ($36), y	; 11 36
B26_0b6a:		php				; 08 
B26_0b6b:	.db $07
B26_0b6c:		beq B26_0ba6 ; f0 38

B26_0b6e:		.db $00				; 00
B26_0b6f:		sed				; f8 
B26_0b70:		sbc ($48), y	; f1 48
B26_0b72:		.db $00				; 00
B26_0b73:		sbc ($2a), y	; f1 2a
B26_0b75:		php				; 08 
B26_0b76:		ora ($3c), y	; 11 3c
B26_0b78:		sed				; f8 
B26_0b79:		ora ($4a), y	; 11 4a
B26_0b7b:		.db $00				; 00
B26_0b7c:		ora ($2e), y	; 11 2e
B26_0b7e:		php				; 08 
B26_0b7f:		sbc $1030, y	; f9 30 10
B26_0b82:	.db $04
B26_0b83:		;removed
	.db $f0 $40

B26_0b85:		.db $00				; 00
B26_0b86:		sed				; f8 
B26_0b87:		sbc ($42), y	; f1 42
B26_0b89:		.db $00				; 00
B26_0b8a:		ora ($44), y	; 11 44
B26_0b8c:		sed				; f8 
B26_0b8d:		ora ($46), y	; 11 46
B26_0b8f:		.db $00				; 00
B26_0b90:	.db $04
B26_0b91:		.db $00				; 00
B26_0b92:		jmp ($f801)		; 6c 01 f8


B26_0b95:		ora ($6e, x)	; 01 6e
B26_0b97:		.db $00				; 00
B26_0b98:		sbc ($40), y	; f1 40
B26_0b9a:		sed				; f8 
B26_0b9b:		sbc ($42), y	; f1 42
B26_0b9d:		.db $00				; 00
B26_0b9e:		php				; 08 
B26_0b9f:		cpx #$72		; e0 72
B26_0ba1:		ora ($f8, x)	; 01 f8
B26_0ba3:		sbc ($76, x)	; e1 76
B26_0ba5:		.db $00				; 00
B26_0ba6:		ora ($74, x)	; 01 74
B26_0ba8:		sed				; f8 
B26_0ba9:		ora ($78, x)	; 01 78
B26_0bab:		.db $00				; 00
B26_0bac:		sbc ($70, x)	; e1 70
B26_0bae:		;removed
	.db $f0 $f0

B26_0bb0:		rti				; 40 


B26_0bb1:		.db $00				; 00
B26_0bb2:		sed				; f8 
B26_0bb3:		sbc ($42), y	; f1 42
B26_0bb5:		.db $00				; 00
B26_0bb6:		inx				; e8 
B26_0bb7:		;removed
	.db $70 $41

B26_0bb9:		php				; 08 
B26_0bba:		php				; 08 
B26_0bbb:		;removed
	.db $f0 $7a

B26_0bbd:		ora ($f0, x)	; 01 f0
B26_0bbf:		sbc ($7c), y	; f1 7c
B26_0bc1:		sed				; f8 
B26_0bc2:		ora ($7e), y	; 11 7e
B26_0bc4:		sbc $00, x		; f5 00
B26_0bc6:		rts				; 60 


B26_0bc7:		.db $00				; 00
B26_0bc8:		sed				; f8 
B26_0bc9:		ora ($62, x)	; 01 62
B26_0bcb:		.db $00				; 00
B26_0bcc:		beq B26_0c4a ; f0 7c

B26_0bce:		eor ($00, x)	; 41 00
B26_0bd0:		sbc ($7a), y	; f1 7a
B26_0bd2:		php				; 08 
B26_0bd3:		ora ($7e), y	; 11 7e
B26_0bd5:	.db $03
B26_0bd6:		ora ($f0, x)	; 01 f0
B26_0bd8:	.db $5c
B26_0bd9:	.db $03
B26_0bda:	.db $fc
B26_0bdb:		ora ($f0, x)	; 01 f0
B26_0bdd:	.db $5c
B26_0bde:		ora ($fc, x)	; 01 fc
B26_0be0:	.db $02
B26_0be1:		;removed
	.db $f0 $5e

B26_0be3:		ora ($fc, x)	; 01 fc
B26_0be5:		;removed
	.db $f0 $5e

B26_0be7:		eor ($00, x)	; 41 00
B26_0be9:		ror $7e8d, x	; 7e 8d 7e
B26_0bec:		sta $8d8c		; 8d 8c 8d
B26_0bef:		txs				; 9a 
B26_0bf0:		sta $8da3		; 8d a3 8d
B26_0bf3:	.db $ab
B26_0bf4:		sta $8db9		; 8d b9 8d
B26_0bf7:		cmp ($8d, x)	; c1 8d
B26_0bf9:		lda $cf8d, y	; b9 8d cf
B26_0bfc:		sta $8e03		; 8d 03 8e
B26_0bff:		php				; 08 
B26_0c00:		stx $8e0d		; 8e 0d 8e
B26_0c03:		ora $8e, x		; 15 8e
B26_0c05:		ora $258e, x	; 1d 8e 25
B26_0c08:		stx $8e2e		; 8e 2e 8e
B26_0c0b:		rol $8e, x		; 36 8e
B26_0c0d:		rol $368e, x	; 3e 8e 36
B26_0c10:		stx $8e66		; 8e 66 8e
B26_0c13:		ror $968e		; 6e 8e 96
B26_0c16:		stx $8ea7		; 8e a7 8e
B26_0c19:		clv				; b8 
B26_0c1a:		stx $8ed3		; 8e d3 8e
B26_0c1d:		ora $278f, y	; 19 8f 27
B26_0c20:	.db $8f
B26_0c21:		lda $90			; a5 90
B26_0c23:		lda $b590		; ad 90 b5
B26_0c26:		bcc B26_0c99 ; 90 71

B26_0c28:	.db $8f
B26_0c29:	.db $80
B26_0c2a:	.db $8f
B26_0c2b:	.db $8f
B26_0c2c:	.db $8f
B26_0c2d:		sta $ab8f, x	; 9d 8f ab
B26_0c30:	.db $8f
B26_0c31:		ldy $ca8f, x	; bc 8f ca
B26_0c34:	.db $8f
B26_0c35:		inc $f68f		; ee 8f f6
B26_0c38:	.db $8f
B26_0c39:		inc $8f, x		; f6 8f
B26_0c3b:	.db $e7
B26_0c3c:		stx $8f05		; 8e 05 8f
B26_0c3f:		ror $688d, x	; 7e 8d 68
B26_0c42:		;removed
	.db $90 $70

B26_0c44:		;removed
	.db $90 $78

B26_0c46:		bcc B26_0bc8 ; 90 80

B26_0c48:		bcc B26_0bd2 ; 90 88

B26_0c4a:		bcc B26_0bd9 ; 90 8d

B26_0c4c:		bcc B26_0be3 ; 90 95

B26_0c4e:		;removed
	.db $90 $9d

B26_0c50:		;removed
	.db $90 $bd

B26_0c52:		;removed
	.db $90 $ce

B26_0c54:		bcc B26_0c35 ; 90 df

B26_0c56:		bcc B26_0c26 ; 90 ce

B26_0c58:		bcc B26_0c4a ; 90 f0

B26_0c5a:		bcc B26_0c5a ; 90 fe

B26_0c5c:		bcc B26_0c64 ; 90 06

B26_0c5e:		sta ($23), y	; 91 23
B26_0c60:		sta ($40), y	; 91 40
B26_0c62:		sta ($5c), y	; 91 5c
B26_0c64:		sta ($77), y	; 91 77
B26_0c66:		sta ($86), y	; 91 86
B26_0c68:		stx $8e8e		; 8e 8e 8e
B26_0c6b:		ror $7e8d, x	; 7e 8d 7e
B26_0c6e:		sta $8d7e		; 8d 7e 8d
B26_0c71:		ror $7e8d, x	; 7e 8d 7e
B26_0c74:		sta $919e		; 8d 9e 91
B26_0c77:		clv				; b8 
B26_0c78:		sta ($b8), y	; 91 b8
B26_0c7a:		sta ($d2), y	; 91 d2
B26_0c7c:		sta ($e0), y	; 91 e0
B26_0c7e:		sta ($ee), y	; 91 ee
B26_0c80:		sta ($ff), y	; 91 ff
B26_0c82:		sta ($0d), y	; 91 0d
B26_0c84:	.db $92
B26_0c85:		asl $2d92, x	; 1e 92 2d
B26_0c88:	.db $92
B26_0c89:		and $92, x		; 35 92
B26_0c8b:		and $4592, x	; 3d 92 45
B26_0c8e:	.db $92
B26_0c8f:		lsr a			; 4a
B26_0c90:	.db $92
B26_0c91:	.db $52
B26_0c92:	.db $92
B26_0c93:		adc #$92		; 69 92
B26_0c95:		sta ($92, x)	; 81 92
B26_0c97:		sta ($92, x)	; 81 92
B26_0c99:		sta $9591		; 8d 91 95
B26_0c9c:		sta ($35), y	; 91 35
B26_0c9e:	.db $8f
B26_0c9f:		lsr $8f			; 46 8f
B26_0ca1:	.db $b2
B26_0ca2:	.db $92
B26_0ca3:		cpy $92			; c4 92
B26_0ca5:		eor $93			; 45 93
B26_0ca7:		lsr $93, x		; 56 93
B26_0ca9:	.db $67
B26_0caa:	.db $93
B26_0cab:		jmp ($7593)		; 6c 93 75


B26_0cae:	.db $93
B26_0caf:	.db $82
B26_0cb0:	.db $93
B26_0cb1:	.db $93
B26_0cb2:	.db $93
B26_0cb3:		cmp ($93, x)	; c1 93
B26_0cb5:		dec $93			; c6 93
B26_0cb7:		lsr $8e			; 46 8e
B26_0cb9:		lsr $568e		; 4e 8e 56
B26_0cbc:		stx $8e5e		; 8e 5e 8e
B26_0cbf:		lsr $8e, x		; 56 8e
B26_0cc1:		tay				; a8 
B26_0cc2:	.db $93
B26_0cc3:		ldy #$94		; a0 94
B26_0cc5:		lda $94			; a5 94
B26_0cc7:		eor $94, x		; 55 94
B26_0cc9:	.db $62
B26_0cca:		sty $6e, x		; 94 6e
B26_0ccc:		sty $7e, x		; 94 7e
B26_0cce:		sty $8e, x		; 94 8e
B26_0cd0:		sty $97, x		; 94 97
B26_0cd2:		sty $aa, x		; 94 aa
B26_0cd4:		sty $b6, x		; 94 b6
B26_0cd6:		sty $95, x		; 94 95
B26_0cd8:	.db $92
B26_0cd9:	.db $5a
B26_0cda:	.db $8f
B26_0cdb:		dec $92, x		; d6 92
B26_0cdd:	.db $eb
B26_0cde:	.db $92
B26_0cdf:		ora #$93		; 09 93
B26_0ce1:	.db $27
B26_0ce2:	.db $93
B26_0ce3:	.db $17
B26_0ce4:		sta $29, x		; 95 29
B26_0ce6:		sta $67, x		; 95 67
B26_0ce8:		sta $8d7e		; 8d 7e 8d
B26_0ceb:	.db $da
B26_0cec:	.db $93
B26_0ced:	.db $e3
B26_0cee:	.db $93
B26_0cef:		cpx $fd93		; ec 93 fd
B26_0cf2:	.db $93
B26_0cf3:		ora $3094, y	; 19 94 30
B26_0cf6:		sty $41, x		; 94 41
B26_0cf8:		sty $c2, x		; 94 c2
B26_0cfa:		sty $cd, x		; 94 cd
B26_0cfc:		sty $e1, x		; 94 e1
B26_0cfe:		sty $ec, x		; 94 ec
B26_0d00:		sty $7e, x		; 94 7e
B26_0d02:		sta $9541		; 8d 41 95
B26_0d05:	.db $4f
B26_0d06:		sta $5d, x		; 95 5d
B26_0d08:		sta $6b, x		; 95 6b
B26_0d0a:		sta $74, x		; 95 74
B26_0d0c:		sta $d8, x		; 95 d8
B26_0d0e:	.db $8f
B26_0d0f:	.db $e3
B26_0d10:	.db $8f
B26_0d11:	.db $7c
B26_0d12:		sta $8d, x		; 95 8d
B26_0d14:		sta $9e, x		; 95 9e
B26_0d16:		sta $af, x		; 95 af
B26_0d18:		sta $b4, x		; 95 b4
B26_0d1a:		sta $b9, x		; 95 b9
B26_0d1c:		sta $be, x		; 95 be
B26_0d1e:		sta $cc, x		; 95 cc
B26_0d20:		sta $da, x		; 95 da
B26_0d22:		sta $fe, x		; 95 fe
B26_0d24:	.db $8f
B26_0d25:		asl $90			; 06 90
B26_0d27:		asl $2e90, x	; 1e 90 2e
B26_0d2a:		bcc B26_0d6a ; 90 3e

B26_0d2c:		;removed
	.db $90 $48

B26_0d2e:		bcc B26_0d88 ; 90 58

B26_0d30:		bcc B26_0d40 ; 90 0e

B26_0d32:		bcc B26_0d4a ; 90 16

B26_0d34:		bcc B26_0d5c ; 90 26

B26_0d36:		bcc B26_0d6e ; 90 36

B26_0d38:		bcc B26_0d7d ; 90 43

B26_0d3a:		bcc B26_0d8c ; 90 50

B26_0d3c:		bcc B26_0d9e ; 90 60

B26_0d3e:		bcc B26_0d52 ; 90 12

B26_0d40:		stx $1a, y		; 96 1a
B26_0d42:		stx $e8, y		; 96 e8
B26_0d44:		sta $f6, x		; 95 f6
B26_0d46:		sta $04, x		; 95 04
B26_0d48:		stx $fd, y		; 96 fd
B26_0d4a:		sty $08, x		; 94 08
B26_0d4c:		sta $22, x		; 95 22
B26_0d4e:		stx $2a, y		; 96 2a
B26_0d50:		stx $d7, y		; 96 d7
B26_0d52:		sta $8de5		; 8d e5 8d
B26_0d55:		sbc $e58d		; ed8d e5
B26_0d58:		sta $8dfb		; 8d fb 8d
B26_0d5b:	.db $32
B26_0d5c:		stx $50, y		; 96 50
B26_0d5e:		stx $71, y		; 96 71
B26_0d60:		stx $88, y		; 96 88
B26_0d62:		stx $76, y		; 96 76
B26_0d64:		stx $8e7e		; 8e 7e 8e
B26_0d67:	.db $07
B26_0d68:		beq B26_0ddb ; f0 71

B26_0d6a:		ora ($e4, x)	; 01 e4
B26_0d6c:		sbc ($73, x)	; e1 73
B26_0d6e:		cpx $75e1		; ec e1 75
B26_0d71:	.db $f4
B26_0d72:		sbc ($77, x)	; e1 77
B26_0d74:	.db $fc
B26_0d75:		sbc ($79, x)	; e1 79
B26_0d77:	.db $04
B26_0d78:		ora ($7b, x)	; 01 7b
B26_0d7a:	.db $fc
B26_0d7b:		ora ($7d, x)	; 01 7d
B26_0d7d:	.db $04
B26_0d7e:	.db $04
B26_0d7f:		cpx #$80		; e0 80
B26_0d81:	.db $02
B26_0d82:	.db $f4
B26_0d83:		sbc ($82, x)	; e1 82
B26_0d85:	.db $fc
B26_0d86:		ora ($88, x)	; 01 88
B26_0d88:		sed				; f8 
B26_0d89:		ora ($8a, x)	; 01 8a
B26_0d8b:		.db $00				; 00
B26_0d8c:	.db $04
B26_0d8d:	.db $e2
B26_0d8e:	.db $80
B26_0d8f:	.db $02
B26_0d90:		sbc $e3, x		; f5 e3
B26_0d92:	.db $82
B26_0d93:		sbc $8401, x	; fd 01 84
B26_0d96:		sed				; f8 
B26_0d97:		ora ($86, x)	; 01 86
B26_0d99:		.db $00				; 00
B26_0d9a:	.db $02
B26_0d9b:		.db $00				; 00
B26_0d9c:		bcc B26_0da0 ; 90 02

B26_0d9e:		sed				; f8 
B26_0d9f:		.db $00				; 00
B26_0da0:		bcc B26_0de4 ; 90 42

B26_0da2:		.db $00				; 00
B26_0da3:	.db $02
B26_0da4:		.db $00				; 00
B26_0da5:		sty $f802		; 8c 02 f8
B26_0da8:		ora ($8e, x)	; 01 8e
B26_0daa:		.db $00				; 00
B26_0dab:	.db $04
B26_0dac:		cpx #$92		; e0 92
B26_0dae:	.db $02
B26_0daf:		sbc $94e1, x	; fd e1 94
B26_0db2:		ora $01			; 05 01
B26_0db4:		stx $f8, y		; 96 f8
B26_0db6:		ora ($98, x)	; 01 98
B26_0db8:		.db $00				; 00
B26_0db9:	.db $02
B26_0dba:		.db $00				; 00
B26_0dbb:		txs				; 9a 
B26_0dbc:	.db $02
B26_0dbd:		sed				; f8 
B26_0dbe:		ora ($9c, x)	; 01 9c
B26_0dc0:		.db $00				; 00
B26_0dc1:	.db $04
B26_0dc2:	.db $e2
B26_0dc3:	.db $9e
B26_0dc4:	.db $02
B26_0dc5:		sed				; f8 
B26_0dc6:	.db $e3
B26_0dc7:		ldy #$00		; a0 00
B26_0dc9:	.db $03
B26_0dca:		ldx #$f8		; a2 f8
B26_0dcc:	.db $03
B26_0dcd:		ldy $00			; a4 00
B26_0dcf:	.db $02
B26_0dd0:		.db $00				; 00
B26_0dd1:		ldx $02			; a6 02
B26_0dd3:		sed				; f8 
B26_0dd4:		ora ($a8, x)	; 01 a8
B26_0dd6:		.db $00				; 00
B26_0dd7:	.db $04
B26_0dd8:		cpx #$d2		; e0 d2
B26_0dda:	.db $02
B26_0ddb:		sbc $d4e1, x	; fd e1 d4
B26_0dde:		ora $01			; 05 01
B26_0de0:		dec $f8, x		; d6 f8
B26_0de2:		ora ($d8, x)	; 01 d8
B26_0de4:		.db $00				; 00
B26_0de5:	.db $02
B26_0de6:		.db $00				; 00
B26_0de7:	.db $da
B26_0de8:	.db $02
B26_0de9:		sed				; f8 
B26_0dea:		ora ($dc, x)	; 01 dc
B26_0dec:		.db $00				; 00
B26_0ded:	.db $04
B26_0dee:	.db $e2
B26_0def:		dec $f802, x	; de 02 f8
B26_0df2:	.db $e3
B26_0df3:		cpx #$00		; e0 00
B26_0df5:	.db $03
B26_0df6:	.db $e2
B26_0df7:		sed				; f8 
B26_0df8:	.db $03
B26_0df9:		cpx $00			; e4 00
B26_0dfb:	.db $02
B26_0dfc:		.db $00				; 00
B26_0dfd:		inc $02			; e6 02
B26_0dff:		sed				; f8 
B26_0e00:		ora ($e8, x)	; 01 e8
B26_0e02:		.db $00				; 00
B26_0e03:		ora ($f0, x)	; 01 f0
B26_0e05:		ldx $fc01, y	; be 01 fc
B26_0e08:		ora ($f0, x)	; 01 f0
B26_0e0a:		ldy $01, x		; b4 01
B26_0e0c:	.db $fc
B26_0e0d:	.db $02
B26_0e0e:		beq B26_0dc0 ; f0 b0

B26_0e10:		ora ($f8, x)	; 01 f8
B26_0e12:		sbc ($b2), y	; f1 b2
B26_0e14:		.db $00				; 00
B26_0e15:	.db $02
B26_0e16:		beq B26_0dc2 ; f0 aa

B26_0e18:		ora ($f8, x)	; 01 f8
B26_0e1a:		sbc ($ac), y	; f1 ac
B26_0e1c:		.db $00				; 00
B26_0e1d:	.db $02
B26_0e1e:		beq B26_0dca ; f0 aa

B26_0e20:		ora ($f8, x)	; 01 f8
B26_0e22:		sbc ($ae), y	; f1 ae
B26_0e24:		.db $00				; 00
B26_0e25:	.db $02
B26_0e26:		;removed
	.db $f0 $cc

B26_0e28:	.db $03
B26_0e29:		sed				; f8 
B26_0e2a:		beq B26_0df8 ; f0 cc

B26_0e2c:	.db $43
B26_0e2d:		.db $00				; 00
B26_0e2e:	.db $02
B26_0e2f:		inx				; e8 
B26_0e30:		cpy #$03		; c0 03
B26_0e32:		sed				; f8 
B26_0e33:		sbc #$c2		; e9 c2
B26_0e35:		.db $00				; 00
B26_0e36:	.db $02
B26_0e37:		beq B26_0dfd ; f0 c4

B26_0e39:	.db $03
B26_0e3a:		sed				; f8 
B26_0e3b:		sbc ($c6), y	; f1 c6
B26_0e3d:		.db $00				; 00
B26_0e3e:	.db $02
B26_0e3f:		sed				; f8 
B26_0e40:		iny				; c8 
B26_0e41:	.db $03
B26_0e42:		sed				; f8 
B26_0e43:	.db $f9 $ca $00
B26_0e46:	.db $02
B26_0e47:		;removed
	.db $f0 $de

B26_0e49:	.db $03
B26_0e4a:		sed				; f8 
B26_0e4b:		sbc ($de), y	; f1 de
B26_0e4d:		.db $00				; 00
B26_0e4e:	.db $02
B26_0e4f:		;removed
	.db $f0 $d2

B26_0e51:	.db $03
B26_0e52:		sed				; f8 
B26_0e53:		sbc ($d4), y	; f1 d4
B26_0e55:		.db $00				; 00
B26_0e56:	.db $02
B26_0e57:		beq B26_0e2f ; f0 d6

B26_0e59:	.db $03
B26_0e5a:		sed				; f8 
B26_0e5b:		sbc ($d8), y	; f1 d8
B26_0e5d:		.db $00				; 00
B26_0e5e:	.db $02
B26_0e5f:		beq B26_0e3b ; f0 da

B26_0e61:	.db $03
B26_0e62:		sed				; f8 
B26_0e63:		sbc ($dc), y	; f1 dc
B26_0e65:		.db $00				; 00
B26_0e66:	.db $02
B26_0e67:		beq B26_0e53 ; f0 ea

B26_0e69:		ora ($f8, x)	; 01 f8
B26_0e6b:		sbc ($ec), y	; f1 ec
B26_0e6d:		.db $00				; 00
B26_0e6e:	.db $02
B26_0e6f:		beq B26_0e5f ; f0 ee

B26_0e71:		ora ($f8, x)	; 01 f8
B26_0e73:		sbc ($f0), y	; f1 f0
B26_0e75:		.db $00				; 00
B26_0e76:	.db $02
B26_0e77:		beq B26_0e03 ; f0 8a

B26_0e79:		ora ($f8, x)	; 01 f8
B26_0e7b:		sbc ($8c), y	; f1 8c
B26_0e7d:		.db $00				; 00
B26_0e7e:	.db $02
B26_0e7f:		;removed
	.db $f0 $8e

B26_0e81:		ora ($f8, x)	; 01 f8
B26_0e83:		sbc ($ae), y	; f1 ae
B26_0e85:		.db $00				; 00
B26_0e86:	.db $02
B26_0e87:		beq B26_0ee2 ; f0 59

B26_0e89:		ora ($f8, x)	; 01 f8
B26_0e8b:		sbc ($5b), y	; f1 5b
B26_0e8d:		.db $00				; 00
B26_0e8e:	.db $02
B26_0e8f:		beq B26_0eee ; f0 5d

B26_0e91:		ora ($f8, x)	; 01 f8
B26_0e93:		sbc ($5f), y	; f1 5f
B26_0e95:		.db $00				; 00
B26_0e96:		ora $f0			; 05 f0
B26_0e98:		dec $01, x		; d6 01
B26_0e9a:		beq B26_0e7d ; f0 e1

B26_0e9c:		cld				; d8 
B26_0e9d:		sed				; f8 
B26_0e9e:		sbc ($da, x)	; e1 da
B26_0ea0:		.db $00				; 00
B26_0ea1:		ora ($dc, x)	; 01 dc
B26_0ea3:		sed				; f8 
B26_0ea4:		ora ($de, x)	; 01 de
B26_0ea6:		.db $00				; 00
B26_0ea7:		ora $f0			; 05 f0
B26_0ea9:		dec $01, x		; d6 01
B26_0eab:	.db $ef
B26_0eac:		sbc ($d8, x)	; e1 d8
B26_0eae:	.db $f7
B26_0eaf:		sbc ($da, x)	; e1 da
B26_0eb1:	.db $ff
B26_0eb2:		ora ($e0, x)	; 01 e0
B26_0eb4:		sed				; f8 
B26_0eb5:		ora ($e2, x)	; 01 e2
B26_0eb7:		.db $00				; 00
B26_0eb8:		php				; 08 
B26_0eb9:		beq B26_0e91 ; f0 d6

B26_0ebb:		ora ($f0, x)	; 01 f0
B26_0ebd:		sbc ($d8, x)	; e1 d8
B26_0ebf:		sed				; f8 
B26_0ec0:		sbc ($e8, x)	; e1 e8
B26_0ec2:		.db $00				; 00
B26_0ec3:		sbc ($ee, x)	; e1 ee
B26_0ec5:		php				; 08 
B26_0ec6:		ora ($e4, x)	; 01 e4
B26_0ec8:		sed				; f8 
B26_0ec9:		ora ($e6, x)	; 01 e6
B26_0ecb:		.db $00				; 00
B26_0ecc:		iny				; c8 
B26_0ecd:		cpx $0641		; ec 41 06
B26_0ed0:		cmp #$ea		; c9 ea
B26_0ed2:		asl $e006		; 0e 06 e0
B26_0ed5:		;removed
	.db $f0 $01

B26_0ed7:		sbc $f2e1		; ede1 f2
B26_0eda:	.db $f4
B26_0edb:		sbc ($f4, x)	; e1 f4
B26_0edd:		sbc $f601, x	; fd 01 f6
B26_0ee0:		beq B26_0ee3 ; f0 01

B26_0ee2:		sed				; f8 
B26_0ee3:		sed				; f8 
B26_0ee4:		ora ($e6, x)	; 01 e6
B26_0ee6:		.db $00				; 00
B26_0ee7:		ora #$f0		; 09 f0
B26_0ee9:	.db $d4
B26_0eea:		ora ($f0, x)	; 01 f0
B26_0eec:		sbc ($d8), y	; f1 d8
B26_0eee:		sed				; f8 
B26_0eef:		sbc ($e8), y	; f1 e8
B26_0ef1:		.db $00				; 00
B26_0ef2:		sbc ($ee), y	; f1 ee
B26_0ef4:		php				; 08 
B26_0ef5:		ora ($ce), y	; 11 ce
B26_0ef7:	.db $f2
B26_0ef8:		ora ($d0), y	; 11 d0
B26_0efa:	.db $fa
B26_0efb:		ora ($d2), y	; 11 d2
B26_0efd:	.db $03
B26_0efe:		dec $ec, x		; d6 ec
B26_0f00:		eor ($06, x)	; 41 06
B26_0f02:	.db $d7
B26_0f03:		nop				; ea 
B26_0f04:		asl $f006		; 0e 06 f0
B26_0f07:		;removed
	.db $f0 $01

B26_0f09:		sbc ($f1), y	; f1 f1
B26_0f0b:	.db $f2
B26_0f0c:		sbc $f4f1, y	; f9 f1 f4
B26_0f0f:		ora ($11, x)	; 01 11
B26_0f11:		dec $11f2		; ce f2 11
B26_0f14:		;removed
	.db $d0 $fa

B26_0f16:		ora ($d2), y	; 11 d2
B26_0f18:	.db $02
B26_0f19:	.db $04
B26_0f1a:		cpx #$d4		; e0 d4
B26_0f1c:		ora ($f7, x)	; 01 f7
B26_0f1e:		sbc ($d6, x)	; e1 d6
B26_0f20:	.db $ff
B26_0f21:		ora ($d8, x)	; 01 d8
B26_0f23:		sed				; f8 
B26_0f24:		ora ($da, x)	; 01 da
B26_0f26:		.db $00				; 00
B26_0f27:	.db $04
B26_0f28:	.db $e2
B26_0f29:	.db $d4
B26_0f2a:		ora ($f7, x)	; 01 f7
B26_0f2c:	.db $e3
B26_0f2d:		dec $ff, x		; d6 ff
B26_0f2f:		ora ($dc, x)	; 01 dc
B26_0f31:		sed				; f8 
B26_0f32:		ora ($de, x)	; 01 de
B26_0f34:		.db $00				; 00
B26_0f35:		ora $e2			; 05 e2
B26_0f37:		cpx #$01		; e0 01
B26_0f39:		inc $e2e3		; ee e3 e2
B26_0f3c:		inc $e3, x		; f6 e3
B26_0f3e:		dec $fe, x		; d6 fe
B26_0f40:		ora ($e4, x)	; 01 e4
B26_0f42:		sed				; f8 
B26_0f43:		ora ($de, x)	; 01 de
B26_0f45:		.db $00				; 00
B26_0f46:		asl $c0			; 06 c0
B26_0f48:		inc $01			; e6 01
B26_0f4a:	.db $f7
B26_0f4b:		cmp ($e8, x)	; c1 e8
B26_0f4d:	.db $ff
B26_0f4e:		sbc ($ea, x)	; e1 ea
B26_0f50:	.db $f7
B26_0f51:		sbc ($ec, x)	; e1 ec
B26_0f53:	.db $ff
B26_0f54:		ora ($ee, x)	; 01 ee
B26_0f56:		sed				; f8 
B26_0f57:		ora ($da, x)	; 01 da
B26_0f59:		.db $00				; 00
B26_0f5a:	.db $07
B26_0f5b:	.db $e2
B26_0f5c:	.db $d4
B26_0f5d:		ora ($f6, x)	; 01 f6
B26_0f5f:	.db $e3
B26_0f60:		dec $fe, x		; d6 fe
B26_0f62:		ora ($dc, x)	; 01 dc
B26_0f64:		sed				; f8 
B26_0f65:		ora ($de, x)	; 01 de
B26_0f67:		.db $00				; 00
B26_0f68:	.db $fb
B26_0f69:		beq B26_0f4b ; f0 e0

B26_0f6b:	.db $fb
B26_0f6c:	.db $f2
B26_0f6d:		inx				; e8 
B26_0f6e:	.db $fb
B26_0f6f:	.db $f4
B26_0f70:		beq B26_0f76 ; f0 04

B26_0f72:		cpx #$80		; e0 80
B26_0f74:		ora ($f8, x)	; 01 f8
B26_0f76:		sbc ($82, x)	; e1 82
B26_0f78:		.db $00				; 00
B26_0f79:		.db $00				; 00
B26_0f7a:	.db $82
B26_0f7b:		eor ($f8, x)	; 41 f8
B26_0f7d:		ora ($80, x)	; 01 80
B26_0f7f:		.db $00				; 00
B26_0f80:	.db $04
B26_0f81:		cpx #$fa		; e0 fa
B26_0f83:		ora ($f8, x)	; 01 f8
B26_0f85:		sbc ($fc, x)	; e1 fc
B26_0f87:		.db $00				; 00
B26_0f88:		.db $00				; 00
B26_0f89:	.db $fc
B26_0f8a:		eor ($f8, x)	; 41 f8
B26_0f8c:		ora ($fa, x)	; 01 fa
B26_0f8e:		.db $00				; 00
B26_0f8f:	.db $04
B26_0f90:		cpx #$90		; e0 90
B26_0f92:	.db $03
B26_0f93:	.db $f7
B26_0f94:		sbc ($92, x)	; e1 92
B26_0f96:	.db $ff
B26_0f97:		ora ($94, x)	; 01 94
B26_0f99:		sed				; f8 
B26_0f9a:		ora ($96, x)	; 01 96
B26_0f9c:		.db $00				; 00
B26_0f9d:	.db $04
B26_0f9e:	.db $e2
B26_0f9f:		bcc B26_0fa4 ; 90 03

B26_0fa1:		sbc $e3, x		; f5 e3
B26_0fa3:	.db $92
B26_0fa4:		sbc $9801, x	; fd 01 98
B26_0fa7:		sed				; f8 
B26_0fa8:		ora ($9a, x)	; 01 9a
B26_0faa:		.db $00				; 00
B26_0fab:		ora $e0			; 05 e0
B26_0fad:	.db $9c
B26_0fae:	.db $03
B26_0faf:	.db $f4
B26_0fb0:		sbc ($9e, x)	; e1 9e
B26_0fb2:	.db $fc
B26_0fb3:		sbc ($a0, x)	; e1 a0
B26_0fb5:	.db $04
B26_0fb6:		ora ($a2, x)	; 01 a2
B26_0fb8:		sed				; f8 
B26_0fb9:		ora ($a4, x)	; 01 a4
B26_0fbb:		.db $00				; 00
B26_0fbc:	.db $04
B26_0fbd:		;removed
	.db $f0 $90

B26_0fbf:	.db $03
B26_0fc0:	.db $f7
B26_0fc1:		sbc ($92), y	; f1 92
B26_0fc3:	.db $ff
B26_0fc4:		ora ($b8), y	; 11 b8
B26_0fc6:		sed				; f8 
B26_0fc7:		ora ($ba), y	; 11 ba
B26_0fc9:		.db $00				; 00
B26_0fca:	.db $04
B26_0fcb:		cpx #$a6		; e0 a6
B26_0fcd:	.db $03
B26_0fce:	.db $f7
B26_0fcf:		sbc ($a8, x)	; e1 a8
B26_0fd1:	.db $ff
B26_0fd2:		ora ($94, x)	; 01 94
B26_0fd4:		sed				; f8 
B26_0fd5:		ora ($96, x)	; 01 96
B26_0fd7:		.db $00				; 00
B26_0fd8:	.db $03
B26_0fd9:		;removed
	.db $f0 $b2

B26_0fdb:	.db $02
B26_0fdc:	.db $f4
B26_0fdd:		sbc ($b4), y	; f1 b4
B26_0fdf:	.db $fc
B26_0fe0:		sbc ($b6), y	; f1 b6
B26_0fe2:	.db $04
B26_0fe3:	.db $03
B26_0fe4:		;removed
	.db $f0 $b2

B26_0fe6:	.db $82
B26_0fe7:	.db $f4
B26_0fe8:		sbc ($b4), y	; f1 b4
B26_0fea:	.db $fc
B26_0feb:		sbc ($b6), y	; f1 b6
B26_0fed:	.db $04
B26_0fee:	.db $02
B26_0fef:		;removed
	.db $f0 $84

B26_0ff1:	.db $02
B26_0ff2:		sed				; f8 
B26_0ff3:		sbc ($86), y	; f1 86
B26_0ff5:		.db $00				; 00
B26_0ff6:	.db $02
B26_0ff7:		beq B26_0f81 ; f0 88

B26_0ff9:	.db $02
B26_0ffa:		sed				; f8 
B26_0ffb:		sbc ($8a), y	; f1 8a
B26_0ffd:		.db $00				; 00
B26_0ffe:	.db $02
B26_0fff:		;removed
	.db $f0 $e0

B26_1001:		ora ($f8, x)	; 01 f8
B26_1003:		sbc ($e2), y	; f1 e2
B26_1005:		.db $00				; 00
B26_1006:	.db $02
B26_1007:		beq B26_0fed ; f0 e4

B26_1009:		ora ($f8, x)	; 01 f8
B26_100b:		sbc ($e6), y	; f1 e6
B26_100d:		.db $00				; 00
B26_100e:	.db $02
B26_100f:		beq B26_0fa1 ; f0 90

B26_1011:		ora ($f8, x)	; 01 f8
B26_1013:		sbc ($92), y	; f1 92
B26_1015:		.db $00				; 00
B26_1016:	.db $02
B26_1017:		beq B26_0fad ; f0 94

B26_1019:		ora ($f8, x)	; 01 f8
B26_101b:		sbc ($96), y	; f1 96
B26_101d:		.db $00				; 00
B26_101e:	.db $02
B26_101f:		beq B26_1009 ; f0 e8

B26_1021:		ora ($f8, x)	; 01 f8
B26_1023:		sbc ($ea), y	; f1 ea
B26_1025:		.db $00				; 00
B26_1026:	.db $02
B26_1027:		beq B26_0fc1 ; f0 98

B26_1029:		ora ($f8, x)	; 01 f8
B26_102b:		sbc ($9a), y	; f1 9a
B26_102d:		.db $00				; 00
B26_102e:	.db $02
B26_102f:		beq B26_101d ; f0 ec

B26_1031:		ora ($f8, x)	; 01 f8
B26_1033:		sbc ($ee), y	; f1 ee
B26_1035:		.db $00				; 00
B26_1036:	.db $02
B26_1037:		beq B26_0fd5 ; f0 9c

B26_1039:		ora ($f8, x)	; 01 f8
B26_103b:		sbc ($9e), y	; f1 9e
B26_103d:		.db $00				; 00
B26_103e:		ora ($f0, x)	; 01 f0
B26_1040:		beq B26_1043 ; f0 01

B26_1042:	.db $fc
B26_1043:		ora ($f0, x)	; 01 f0
B26_1045:		ldy #$01		; a0 01
B26_1047:	.db $fc
B26_1048:	.db $02
B26_1049:		beq B26_103d ; f0 f2

B26_104b:		ora ($f8, x)	; 01 f8
B26_104d:		sbc ($f4), y	; f1 f4
B26_104f:		.db $00				; 00
B26_1050:	.db $02
B26_1051:		beq B26_0ff5 ; f0 a2

B26_1053:		ora ($f8, x)	; 01 f8
B26_1055:		sbc ($a4), y	; f1 a4
B26_1057:		.db $00				; 00
B26_1058:	.db $02
B26_1059:		beq B26_1055 ; f0 fa

B26_105b:		cmp ($f8, x)	; c1 f8
B26_105d:		sbc ($f8), y	; f1 f8
B26_105f:		.db $00				; 00
B26_1060:	.db $02
B26_1061:		beq B26_0ffd ; f0 9a

B26_1063:		cmp ($f8, x)	; c1 f8
B26_1065:		sbc ($98), y	; f1 98
B26_1067:		.db $00				; 00
B26_1068:	.db $02
B26_1069:		beq B26_0feb ; f0 80

B26_106b:	.db $03
B26_106c:		sed				; f8 
B26_106d:		sbc ($82), y	; f1 82
B26_106f:		.db $00				; 00
B26_1070:	.db $02
B26_1071:		beq B26_0ff3 ; f0 80

B26_1073:	.db $03
B26_1074:		sed				; f8 
B26_1075:		sbc ($86), y	; f1 86
B26_1077:		.db $00				; 00
B26_1078:	.db $02
B26_1079:		beq B26_0fff ; f0 84

B26_107b:	.db $03
B26_107c:		sed				; f8 
B26_107d:		sbc ($86), y	; f1 86
B26_107f:		.db $00				; 00
B26_1080:	.db $02
B26_1081:		beq B26_100b ; f0 88

B26_1083:	.db $03
B26_1084:		sed				; f8 
B26_1085:		sbc ($82), y	; f1 82
B26_1087:		.db $00				; 00
B26_1088:		ora ($f0, x)	; 01 f0
B26_108a:		txa				; 8a 
B26_108b:	.db $03
B26_108c:	.db $fc
B26_108d:	.db $02
B26_108e:		;removed
	.db $f0 $8c

B26_1090:	.db $02
B26_1091:		sed				; f8 
B26_1092:		sbc ($8e), y	; f1 8e
B26_1094:		.db $00				; 00
B26_1095:	.db $02
B26_1096:		;removed
	.db $f0 $90

B26_1098:	.db $02
B26_1099:		sed				; f8 
B26_109a:		sbc ($92), y	; f1 92
B26_109c:		.db $00				; 00
B26_109d:	.db $02
B26_109e:		;removed
	.db $f0 $94

B26_10a0:	.db $02
B26_10a1:		sed				; f8 
B26_10a2:		sbc ($96), y	; f1 96
B26_10a4:		.db $00				; 00
B26_10a5:	.db $02
B26_10a6:		beq B26_1036 ; f0 8e

B26_10a8:	.db $c2
B26_10a9:		sed				; f8 
B26_10aa:		sbc ($8c), y	; f1 8c
B26_10ac:		.db $00				; 00
B26_10ad:	.db $02
B26_10ae:		beq B26_1042 ; f0 92

B26_10b0:	.db $c2
B26_10b1:		sed				; f8 
B26_10b2:		sbc ($90), y	; f1 90
B26_10b4:		.db $00				; 00
B26_10b5:	.db $02
B26_10b6:		;removed
	.db $f0 $96

B26_10b8:	.db $c2
B26_10b9:		sed				; f8 
B26_10ba:		sbc ($94), y	; f1 94
B26_10bc:		.db $00				; 00
B26_10bd:		ora $e0			; 05 e0
B26_10bf:		tya				; 98 
B26_10c0:		ora ($f8, x)	; 01 f8
B26_10c2:		sbc ($9a, x)	; e1 9a
B26_10c4:		.db $00				; 00
B26_10c5:		ora ($9c, x)	; 01 9c
B26_10c7:		sed				; f8 
B26_10c8:		ora ($9e, x)	; 01 9e
B26_10ca:		.db $00				; 00
B26_10cb:		cmp ($be, x)	; c1 be
B26_10cd:	.db $fb
B26_10ce:		ora $e0			; 05 e0
B26_10d0:		tya				; 98 
B26_10d1:		ora ($f8, x)	; 01 f8
B26_10d3:		sbc ($9a, x)	; e1 9a
B26_10d5:		.db $00				; 00
B26_10d6:		ora ($a0, x)	; 01 a0
B26_10d8:		sed				; f8 
B26_10d9:		ora ($a2, x)	; 01 a2
B26_10db:		.db $00				; 00
B26_10dc:		cmp ($be, x)	; c1 be
B26_10de:	.db $fb
B26_10df:		ora $e0			; 05 e0
B26_10e1:		tya				; 98 
B26_10e2:		ora ($f8, x)	; 01 f8
B26_10e4:		sbc ($9a, x)	; e1 9a
B26_10e6:		.db $00				; 00
B26_10e7:		ora ($a4, x)	; 01 a4
B26_10e9:		sed				; f8 
B26_10ea:		ora ($a6, x)	; 01 a6
B26_10ec:		.db $00				; 00
B26_10ed:		cmp ($be, x)	; c1 be
B26_10ef:	.db $fb
B26_10f0:	.db $04
B26_10f1:		cpx #$a8		; e0 a8
B26_10f3:		ora ($f8, x)	; 01 f8
B26_10f5:		sbc ($aa, x)	; e1 aa
B26_10f7:		.db $00				; 00
B26_10f8:		ora ($9c, x)	; 01 9c
B26_10fa:		sed				; f8 
B26_10fb:		ora ($9e, x)	; 01 9e
B26_10fd:		.db $00				; 00
B26_10fe:	.db $02
B26_10ff:		.db $00				; 00
B26_1100:		tax				; aa 
B26_1101:		eor ($f8, x)	; 41 f8
B26_1103:		ora ($a8, x)	; 01 a8
B26_1105:		.db $00				; 00
B26_1106:		php				; 08 
B26_1107:		ldy #$ac		; a0 ac
B26_1109:		ora ($f8, x)	; 01 f8
B26_110b:		lda ($ae, x)	; a1 ae
B26_110d:		.db $00				; 00
B26_110e:		cpy #$ae		; c0 ae
B26_1110:		eor ($f8, x)	; 41 f8
B26_1112:		cmp ($ac, x)	; c1 ac
B26_1114:		.db $00				; 00
B26_1115:		cpx #$ac		; e0 ac
B26_1117:		ora ($f8, x)	; 01 f8
B26_1119:		sbc ($ae, x)	; e1 ae
B26_111b:		.db $00				; 00
B26_111c:		.db $00				; 00
B26_111d:		ldx $f841		; ae 41 f8
B26_1120:		ora ($ac, x)	; 01 ac
B26_1122:		.db $00				; 00
B26_1123:		php				; 08 
B26_1124:		ldy #$ae		; a0 ae
B26_1126:		eor ($f8, x)	; 41 f8
B26_1128:		lda ($ac, x)	; a1 ac
B26_112a:		.db $00				; 00
B26_112b:		cpy #$ac		; c0 ac
B26_112d:		ora ($f8, x)	; 01 f8
B26_112f:		cmp ($ae, x)	; c1 ae
B26_1131:		.db $00				; 00
B26_1132:		cpx #$ae		; e0 ae
B26_1134:		eor ($f8, x)	; 41 f8
B26_1136:		sbc ($ac, x)	; e1 ac
B26_1138:		.db $00				; 00
B26_1139:		.db $00				; 00
B26_113a:		bcs B26_113d ; b0 01

B26_113c:		sed				; f8 
B26_113d:		ora ($b2, x)	; 01 b2
B26_113f:		.db $00				; 00
B26_1140:		php				; 08 
B26_1141:		ldy #$ac		; a0 ac
B26_1143:		ora ($f8, x)	; 01 f8
B26_1145:		lda ($ae, x)	; a1 ae
B26_1147:		.db $00				; 00
B26_1148:		cpy #$ae		; c0 ae
B26_114a:		eor ($f8, x)	; 41 f8
B26_114c:		cmp ($ac, x)	; c1 ac
B26_114e:		.db $00				; 00
B26_114f:		cpx #$ac		; e0 ac
B26_1151:		ora ($f8, x)	; 01 f8
B26_1153:		sbc ($ae, x)	; e1 ae
B26_1155:		.db $00				; 00
B26_1156:		ora ($a0, x)	; 01 a0
B26_1158:		sed				; f8 
B26_1159:		ora ($a2, x)	; 01 a2
B26_115b:		.db $00				; 00
B26_115c:		php				; 08 
B26_115d:		ldy #$ae		; a0 ae
B26_115f:		eor ($f8, x)	; 41 f8
B26_1161:		lda ($ac, x)	; a1 ac
B26_1163:		.db $00				; 00
B26_1164:		cpy #$ac		; c0 ac
B26_1166:		ora ($f8, x)	; 01 f8
B26_1168:		cmp ($ae, x)	; c1 ae
B26_116a:		.db $00				; 00
B26_116b:		sbc ($b4, x)	; e1 b4
B26_116d:		sed				; f8 
B26_116e:		sbc ($b6, x)	; e1 b6
B26_1170:		.db $00				; 00
B26_1171:		ora ($a0, x)	; 01 a0
B26_1173:		sed				; f8 
B26_1174:		ora ($a2, x)	; 01 a2
B26_1176:		.db $00				; 00
B26_1177:		asl $c0			; 06 c0
B26_1179:		ldx $f841		; ae 41 f8
B26_117c:		cmp ($ac, x)	; c1 ac
B26_117e:		.db $00				; 00
B26_117f:		cpx #$98		; e0 98
B26_1181:		ora ($f8, x)	; 01 f8
B26_1183:		sbc ($9a, x)	; e1 9a
B26_1185:		.db $00				; 00
B26_1186:		.db $00				; 00
B26_1187:		ldy #$01		; a0 01
B26_1189:		sed				; f8 
B26_118a:		ora ($a2, x)	; 01 a2
B26_118c:		.db $00				; 00
B26_118d:	.db $02
B26_118e:		beq B26_1148 ; f0 b8

B26_1190:		ora ($f8, x)	; 01 f8
B26_1192:		sbc ($ba), y	; f1 ba
B26_1194:		.db $00				; 00
B26_1195:	.db $02
B26_1196:		;removed
	.db $f0 $bc

B26_1198:		ora ($f8, x)	; 01 f8
B26_119a:		beq B26_1156 ; f0 ba

B26_119c:		sta ($00, x)	; 81 00
B26_119e:		php				; 08 
B26_119f:		cpx #$c0		; e0 c0
B26_11a1:	.db $02
B26_11a2:		beq B26_1185 ; f0 e1

B26_11a4:	.db $c2
B26_11a5:		sed				; f8 
B26_11a6:		sbc ($c4, x)	; e1 c4
B26_11a8:		.db $00				; 00
B26_11a9:		sbc ($c6, x)	; e1 c6
B26_11ab:		php				; 08 
B26_11ac:		ora ($c8, x)	; 01 c8
B26_11ae:		sed				; f8 
B26_11af:		ora ($ca, x)	; 01 ca
B26_11b1:		.db $00				; 00
B26_11b2:		and ($cc, x)	; 21 cc
B26_11b4:		sed				; f8 
B26_11b5:		and ($ce, x)	; 21 ce
B26_11b7:		.db $00				; 00
B26_11b8:		php				; 08 
B26_11b9:	.db $e2
B26_11ba:		cpy #$02		; c0 02
B26_11bc:		beq B26_11a1 ; f0 e3

B26_11be:	.db $c2
B26_11bf:		sed				; f8 
B26_11c0:	.db $e3
B26_11c1:		bne B26_11c3 ; d0 00

B26_11c3:	.db $f3
B26_11c4:	.db $d2
B26_11c5:		php				; 08 
B26_11c6:	.db $03
B26_11c7:		iny				; c8 
B26_11c8:		sed				; f8 
B26_11c9:	.db $03
B26_11ca:		dex				; ca 
B26_11cb:		.db $00				; 00
B26_11cc:	.db $23
B26_11cd:		cpy $23f8		; cc f8 23
B26_11d0:		dec $0400		; ce 00 04
B26_11d3:		cpx #$c0		; e0 c0
B26_11d5:		ora ($f7, x)	; 01 f7
B26_11d7:		sbc ($c2, x)	; e1 c2
B26_11d9:	.db $ff
B26_11da:		ora ($c4, x)	; 01 c4
B26_11dc:		sed				; f8 
B26_11dd:		ora ($c6, x)	; 01 c6
B26_11df:		.db $00				; 00
B26_11e0:	.db $04
B26_11e1:		cpx #$c0		; e0 c0
B26_11e3:		ora ($f8, x)	; 01 f8
B26_11e5:		sbc ($c2, x)	; e1 c2
B26_11e7:		.db $00				; 00
B26_11e8:		ora ($c8, x)	; 01 c8
B26_11ea:		sed				; f8 
B26_11eb:		ora ($ca, x)	; 01 ca
B26_11ed:		.db $00				; 00
B26_11ee:		ora $e0			; 05 e0
B26_11f0:		bne B26_11f3 ; d0 01

B26_11f2:		sed				; f8 
B26_11f3:		sbc ($d2, x)	; e1 d2
B26_11f5:		.db $00				; 00
B26_11f6:		sbc ($d4, x)	; e1 d4
B26_11f8:		php				; 08 
B26_11f9:		ora ($c4, x)	; 01 c4
B26_11fb:		sed				; f8 
B26_11fc:		ora ($ce, x)	; 01 ce
B26_11fe:		.db $00				; 00
B26_11ff:	.db $04
B26_1200:		cpx #$d6		; e0 d6
B26_1202:		ora ($fb, x)	; 01 fb
B26_1204:		sbc ($d8, x)	; e1 d8
B26_1206:	.db $03
B26_1207:		ora ($cc, x)	; 01 cc
B26_1209:		sed				; f8 
B26_120a:		ora ($ce, x)	; 01 ce
B26_120c:		.db $00				; 00
B26_120d:		ora $e2			; 05 e2
B26_120f:	.db $da
B26_1210:		ora ($ee, x)	; 01 ee
B26_1212:		sbc ($dc, x)	; e1 dc
B26_1214:		inc $e1, x		; f6 e1
B26_1216:		dec $01fe, x	; de fe 01
B26_1219:		dec $f8			; c6 f8
B26_121b:		ora ($c6, x)	; 01 c6
B26_121d:		.db $00				; 00
B26_121e:	.db $04
B26_121f:		cpx #$e2		; e0 e2
B26_1221:		eor ($f9, x)	; 41 f9
B26_1223:		sbc ($e0, x)	; e1 e0
B26_1225:	.db $ff
B26_1226:		.db $00				; 00
B26_1227:		iny				; c8 
B26_1228:		ora ($f8, x)	; 01 f8
B26_122a:		ora ($ca, x)	; 01 ca
B26_122c:		.db $00				; 00
B26_122d:	.db $02
B26_122e:		.db $00				; 00
B26_122f:		cpx #$01		; e0 01
B26_1231:		sed				; f8 
B26_1232:		ora ($e2, x)	; 01 e2
B26_1234:		.db $00				; 00
B26_1235:	.db $02
B26_1236:		.db $00				; 00
B26_1237:		cpx $01			; e4 01
B26_1239:		sed				; f8 
B26_123a:		ora ($e6, x)	; 01 e6
B26_123c:		.db $00				; 00
B26_123d:	.db $02
B26_123e:		;removed
	.db $f0 $f8

B26_1240:		ora ($f8, x)	; 01 f8
B26_1242:		sbc ($fa), y	; f1 fa
B26_1244:		.db $00				; 00
B26_1245:		ora ($f0, x)	; 01 f0
B26_1247:	.db $fc
B26_1248:		ora ($fc, x)	; 01 fc
B26_124a:	.db $02
B26_124b:		beq B26_1247 ; f0 fa

B26_124d:		eor ($f8, x)	; 41 f8
B26_124f:		sbc ($f8), y	; f1 f8
B26_1251:		.db $00				; 00
B26_1252:	.db $07
B26_1253:		cpx #$d0		; e0 d0
B26_1255:		ora ($f8, x)	; 01 f8
B26_1257:		sbc ($d2, x)	; e1 d2
B26_1259:		.db $00				; 00
B26_125a:		sbc ($d4, x)	; e1 d4
B26_125c:		php				; 08 
B26_125d:		sbc ($ec, x)	; e1 ec
B26_125f:		;removed
	.db $10 $01

B26_1261:		cpy $f8			; c4 f8
B26_1263:		ora ($ce, x)	; 01 ce
B26_1265:		.db $00				; 00
B26_1266:		ora ($ee, x)	; 01 ee
B26_1268:		bpl B26_1271 ; 10 07

B26_126a:		cpx #$d0		; e0 d0
B26_126c:		ora ($f7, x)	; 01 f7
B26_126e:		sbc ($d2, x)	; e1 d2
B26_1270:	.db $ff
B26_1271:		sbc ($d4, x)	; e1 d4
B26_1273:	.db $07
B26_1274:		sbc ($ec, x)	; e1 ec
B26_1276:	.db $0f
B26_1277:		ora ($e8, x)	; 01 e8
B26_1279:	.db $f7
B26_127a:		ora ($ea, x)	; 01 ea
B26_127c:	.db $ff
B26_127d:		.db $00				; 00
B26_127e:		inc $0e41		; ee 41 0e
B26_1281:		asl $e0			; 06 e0
B26_1283:		dec $01, x		; d6 01
B26_1285:	.db $fb
B26_1286:		sbc ($d8, x)	; e1 d8
B26_1288:	.db $03
B26_1289:		sbc ($f0, x)	; e1 f0
B26_128b:	.db $0b
B26_128c:	.db $e3
B26_128d:	.db $f2
B26_128e:	.db $13
B26_128f:		ora ($cc, x)	; 01 cc
B26_1291:		sed				; f8 
B26_1292:		ora ($ce, x)	; 01 ce
B26_1294:		.db $00				; 00
B26_1295:		ora #$f0		; 09 f0
B26_1297:	.db $f4
B26_1298:		ora ($ce, x)	; 01 ce
B26_129a:		sbc ($f6), y	; f1 f6
B26_129c:		dec $f1, x		; d6 f1
B26_129e:		inc $de, x		; f6 de
B26_12a0:		sbc ($f6), y	; f1 f6
B26_12a2:		inc $e3			; e6 e3
B26_12a4:	.db $da
B26_12a5:		inc $dce1		; ee e1 dc
B26_12a8:		inc $e1, x		; f6 e1
B26_12aa:		dec $01fe, x	; de fe 01
B26_12ad:		cpy $01f8		; cc f8 01
B26_12b0:		dec $0500		; ce 00 05
B26_12b3:	.db $dc
B26_12b4:		cpy #$01		; c0 01
B26_12b6:		beq B26_1298 ; f0 e0

B26_12b8:	.db $c2
B26_12b9:	.db $02
B26_12ba:		sed				; f8 
B26_12bb:		sbc ($c4, x)	; e1 c4
B26_12bd:		.db $00				; 00
B26_12be:		ora ($c6, x)	; 01 c6
B26_12c0:		sed				; f8 
B26_12c1:		ora ($c8, x)	; 01 c8
B26_12c3:		.db $00				; 00
B26_12c4:		ora $e0			; 05 e0
B26_12c6:		cpy #$01		; c0 01
B26_12c8:	.db $ef
B26_12c9:		cpx #$c2		; e0 c2
B26_12cb:	.db $02
B26_12cc:	.db $f7
B26_12cd:		sbc ($c4, x)	; e1 c4
B26_12cf:	.db $ff
B26_12d0:		ora ($ca, x)	; 01 ca
B26_12d2:	.db $f7
B26_12d3:		ora ($cc, x)	; 01 cc
B26_12d5:	.db $ff
B26_12d6:		asl $e0			; 06 e0
B26_12d8:		dec $e801		; ce 01 e8
B26_12db:		sbc ($d0, x)	; e1 d0
B26_12dd:		;removed
	.db $f0 $e0

B26_12df:	.db $c2
B26_12e0:	.db $02
B26_12e1:		sed				; f8 
B26_12e2:		sbc ($c4, x)	; e1 c4
B26_12e4:		.db $00				; 00
B26_12e5:		ora ($d2, x)	; 01 d2
B26_12e7:	.db $f7
B26_12e8:		ora ($d4, x)	; 01 d4
B26_12ea:	.db $ff
B26_12eb:		ora #$e0		; 09 e0
B26_12ed:		dec $01, x		; d6 01
B26_12ef:		dec $e1, x		; d6 e1
B26_12f1:		dec $de, x		; d6 de
B26_12f3:		cpx #$d8		; e0 d8
B26_12f5:	.db $02
B26_12f6:		inc $e1			; e6 e1
B26_12f8:	.db $da
B26_12f9:		inc $dce1		; ee e1 dc
B26_12fc:		inc $01, x		; f6 01
B26_12fe:		dec $01e8, x	; de e8 01
B26_1301:		cpx #$f0		; e0 f0
B26_1303:		ora ($e2, x)	; 01 e2
B26_1305:		sed				; f8 
B26_1306:		ora ($e4, x)	; 01 e4
B26_1308:		.db $00				; 00
B26_1309:		ora #$e0		; 09 e0
B26_130b:		inc $01			; e6 01
B26_130d:		dec $e1, x		; d6 e1
B26_130f:		inx				; e8 
B26_1310:		dec $d8e0, x	; de e0 d8
B26_1313:	.db $02
B26_1314:		inc $e1			; e6 e1
B26_1316:	.db $da
B26_1317:		inc $dce1		; ee e1 dc
B26_131a:		inc $01, x		; f6 01
B26_131c:		dec $01e8, x	; de e8 01
B26_131f:		cpx #$f0		; e0 f0
B26_1321:		ora ($e2, x)	; 01 e2
B26_1323:		sed				; f8 
B26_1324:		ora ($e4, x)	; 01 e4
B26_1326:		.db $00				; 00
B26_1327:		ora #$f6		; 09 f6
B26_1329:		inc $01			; e6 01
B26_132b:		dec $f7, x		; d6 f7
B26_132d:		inx				; e8 
B26_132e:		dec $d8e2, x	; de e2 d8
B26_1331:	.db $02
B26_1332:		inc $e1			; e6 e1
B26_1334:	.db $da
B26_1335:		inc $dce1		; ee e1 dc
B26_1338:		inc $01, x		; f6 01
B26_133a:		dec $01e8, x	; de e8 01
B26_133d:		cpx #$f0		; e0 f0
B26_133f:		ora ($e2, x)	; 01 e2
B26_1341:		sed				; f8 
B26_1342:		ora ($e4, x)	; 01 e4
B26_1344:		.db $00				; 00
B26_1345:	.db $04
B26_1346:		cpx #$80		; e0 80
B26_1348:	.db $03
B26_1349:		sed				; f8 
B26_134a:		cpx #$80		; e0 80
B26_134c:	.db $43
B26_134d:		.db $00				; 00
B26_134e:		.db $00				; 00
B26_134f:	.db $82
B26_1350:	.db $03
B26_1351:		sed				; f8 
B26_1352:		.db $00				; 00
B26_1353:	.db $82
B26_1354:	.db $43
B26_1355:		.db $00				; 00
B26_1356:	.db $04
B26_1357:		cpx #$84		; e0 84
B26_1359:	.db $03
B26_135a:		sed				; f8 
B26_135b:		cpx #$84		; e0 84
B26_135d:	.db $43
B26_135e:		.db $00				; 00
B26_135f:		.db $00				; 00
B26_1360:		stx $03			; 86 03
B26_1362:		sed				; f8 
B26_1363:		.db $00				; 00
B26_1364:		stx $43			; 86 43
B26_1366:		.db $00				; 00
B26_1367:		ora ($f0, x)	; 01 f0
B26_1369:		sty $fc03		; 8c 03 fc
B26_136c:	.db $02
B26_136d:		cpx #$8c		; e0 8c
B26_136f:	.db $03
B26_1370:	.db $fc
B26_1371:		.db $00				; 00
B26_1372:		sty $fc03		; 8c 03 fc
B26_1375:	.db $03
B26_1376:		;removed
	.db $d0 $8c

B26_1378:	.db $03
B26_1379:	.db $fc
B26_137a:		beq B26_1308 ; f0 8c

B26_137c:	.db $03
B26_137d:	.db $fc
B26_137e:		;removed
	.db $10 $8c

B26_1380:	.db $03
B26_1381:	.db $fc
B26_1382:	.db $04
B26_1383:		cpy #$8c		; c0 8c
B26_1385:	.db $03
B26_1386:	.db $fc
B26_1387:		cpx #$8c		; e0 8c
B26_1389:	.db $03
B26_138a:	.db $fc
B26_138b:		.db $00				; 00
B26_138c:		sty $fc03		; 8c 03 fc
B26_138f:		jsr $038c		; 20 8c 03
B26_1392:	.db $fc
B26_1393:		ora $b0			; 05 b0
B26_1395:		sty $fc03		; 8c 03 fc
B26_1398:		bne B26_1326 ; d0 8c

B26_139a:	.db $03
B26_139b:	.db $fc
B26_139c:		;removed
	.db $f0 $8c

B26_139e:	.db $03
B26_139f:	.db $fc
B26_13a0:		bpl B26_132e ; 10 8c

B26_13a2:	.db $03
B26_13a3:	.db $fc
B26_13a4:		bmi B26_1332 ; 30 8c

B26_13a6:	.db $03
B26_13a7:	.db $fc
B26_13a8:		asl $a0			; 06 a0
B26_13aa:		sty $fc03		; 8c 03 fc
B26_13ad:		cpy #$8c		; c0 8c
B26_13af:	.db $03
B26_13b0:	.db $fc
B26_13b1:		cpx #$8c		; e0 8c
B26_13b3:	.db $03
B26_13b4:	.db $fc
B26_13b5:		.db $00				; 00
B26_13b6:		sty $fc03		; 8c 03 fc
B26_13b9:		jsr $038c		; 20 8c 03
B26_13bc:	.db $fc
B26_13bd:		rti				; 40 


B26_13be:		sty $fc03		; 8c 03 fc
B26_13c1:		ora ($f0, x)	; 01 f0
B26_13c3:		dey				; 88 
B26_13c4:	.db $03
B26_13c5:	.db $fc
B26_13c6:		ora ($f0, x)	; 01 f0
B26_13c8:		txa				; 8a 
B26_13c9:	.db $03
B26_13ca:	.db $fc
B26_13cb:		ora ($f0, x)	; 01 f0
B26_13cd:	.db $eb
B26_13ce:	.db $03
B26_13cf:	.db $fc
B26_13d0:		ora ($f0, x)	; 01 f0
B26_13d2:		sbc $fc03		; ed03 fc
B26_13d5:		ora ($f0, x)	; 01 f0
B26_13d7:	.db $ef
B26_13d8:	.db $03
B26_13d9:	.db $fc
B26_13da:	.db $02
B26_13db:		cpx #$8e		; e0 8e
B26_13dd:	.db $02
B26_13de:		sed				; f8 
B26_13df:		cpx #$8e		; e0 8e
B26_13e1:	.db $42
B26_13e2:	.db $ff
B26_13e3:	.db $02
B26_13e4:		cpx #$90		; e0 90
B26_13e6:	.db $02
B26_13e7:		sed				; f8 
B26_13e8:		cpx #$90		; e0 90
B26_13ea:	.db $42
B26_13eb:	.db $ff
B26_13ec:	.db $04
B26_13ed:		cpx #$92		; e0 92
B26_13ef:	.db $02
B26_13f0:		sed				; f8 
B26_13f1:		cpx #$92		; e0 92
B26_13f3:	.db $42
B26_13f4:	.db $ff
B26_13f5:		.db $00				; 00
B26_13f6:		sty $02, x		; 94 02
B26_13f8:		sed				; f8 
B26_13f9:		.db $00				; 00
B26_13fa:		sty $42, x		; 94 42
B26_13fc:	.db $ff
B26_13fd:		php				; 08 
B26_13fe:		cpx #$96		; e0 96
B26_1400:	.db $02
B26_1401:		inx				; e8 
B26_1402:		sbc ($98, x)	; e1 98
B26_1404:		beq B26_13e7 ; f0 e1

B26_1406:		txs				; 9a 
B26_1407:		sed				; f8 
B26_1408:		cpx #$9a		; e0 9a
B26_140a:	.db $42
B26_140b:	.db $ff
B26_140c:		sbc ($98, x)	; e1 98
B26_140e:	.db $07
B26_140f:		sbc ($96, x)	; e1 96
B26_1411:	.db $0f
B26_1412:		.db $00				; 00
B26_1413:	.db $9c
B26_1414:	.db $02
B26_1415:		sed				; f8 
B26_1416:		ora ($9c, x)	; 01 9c
B26_1418:	.db $ff
B26_1419:	.db $07
B26_141a:		cpx #$9e		; e0 9e
B26_141c:	.db $02
B26_141d:		beq B26_1400 ; f0 e1

B26_141f:		ldy #$f8		; a0 f8
B26_1421:		sbc ($a2, x)	; e1 a2
B26_1423:		.db $00				; 00
B26_1424:		sbc ($a4, x)	; e1 a4
B26_1426:		php				; 08 
B26_1427:		sbc ($a6, x)	; e1 a6
B26_1429:		bpl B26_142c ; 10 01

B26_142b:		tay				; a8 
B26_142c:		sed				; f8 
B26_142d:		ora ($aa, x)	; 01 aa
B26_142f:		.db $00				; 00
B26_1430:		ora $e0			; 05 e0
B26_1432:		ldx $fb02		; ae 02 fb
B26_1435:		sbc ($b0, x)	; e1 b0
B26_1437:	.db $03
B26_1438:		sbc $f0ac, y	; f9 ac f0
B26_143b:		ora ($b2, x)	; 01 b2
B26_143d:		sed				; f8 
B26_143e:		ora ($b4, x)	; 01 b4
B26_1440:		.db $00				; 00
B26_1441:		asl $f0			; 06 f0
B26_1443:		ldy $f002		; ac 02 f0
B26_1446:		sbc ($b6), y	; f1 b6
B26_1448:		sed				; f8 
B26_1449:		sbc ($b8), y	; f1 b8
B26_144b:		.db $00				; 00
B26_144c:		ora ($ba), y	; 11 ba
B26_144e:		beq B26_1461 ; f0 11

B26_1450:		ldy $11f8, x	; bc f8 11
B26_1453:		ldx $0300, y	; be 00 03
B26_1456:		cpx #$de		; e0 de
B26_1458:	.db $03
B26_1459:		sed				; f8 
B26_145a:		cpx #$de		; e0 de
B26_145c:	.db $43
B26_145d:		.db $00				; 00
B26_145e:		.db $00				; 00
B26_145f:		nop				; ea 
B26_1460:	.db $03
B26_1461:	.db $fc
B26_1462:	.db $03
B26_1463:		cpx #$e0		; e0 e0
B26_1465:	.db $03
B26_1466:		sed				; f8 
B26_1467:		cpx #$e0		; e0 e0
B26_1469:	.db $43
B26_146a:		.db $00				; 00
B26_146b:		ora ($f0, x)	; 01 f0
B26_146d:	.db $fc
B26_146e:	.db $04
B26_146f:		cpx #$e2		; e0 e2
B26_1471:	.db $03
B26_1472:	.db $f4
B26_1473:		sbc ($e4, x)	; e1 e4
B26_1475:	.db $fc
B26_1476:		cpx #$e2		; e0 e2
B26_1478:	.db $43
B26_1479:	.db $04
B26_147a:		.db $00				; 00
B26_147b:		nop				; ea 
B26_147c:	.db $03
B26_147d:	.db $fc
B26_147e:	.db $04
B26_147f:		cpx #$e6		; e0 e6
B26_1481:	.db $03
B26_1482:	.db $f4
B26_1483:		sbc ($e8, x)	; e1 e8
B26_1485:	.db $fc
B26_1486:		cpx #$e6		; e0 e6
B26_1488:	.db $43
B26_1489:	.db $04
B26_148a:		.db $00				; 00
B26_148b:		;removed
	.db $f0 $03

B26_148d:	.db $fc
B26_148e:	.db $02
B26_148f:		beq B26_146f ; f0 de

B26_1491:	.db $03
B26_1492:		sed				; f8 
B26_1493:		beq B26_1473 ; f0 de

B26_1495:	.db $43
B26_1496:		.db $00				; 00
B26_1497:	.db $02
B26_1498:		beq B26_147a ; f0 e0

B26_149a:	.db $03
B26_149b:		sed				; f8 
B26_149c:		beq B26_147e ; f0 e0

B26_149e:	.db $43
B26_149f:		.db $00				; 00
B26_14a0:		ora ($f0, x)	; 01 f0
B26_14a2:		cpx $fc03		; ec 03 fc
B26_14a5:		ora ($f0, x)	; 01 f0
B26_14a7:		inc $fc03		; ee 03 fc
B26_14aa:	.db $03
B26_14ab:		beq B26_148f ; f0 e2

B26_14ad:	.db $03
B26_14ae:	.db $f4
B26_14af:		sbc ($e4), y	; f1 e4
B26_14b1:	.db $fc
B26_14b2:		beq B26_1496 ; f0 e2

B26_14b4:	.db $43
B26_14b5:	.db $04
B26_14b6:	.db $03
B26_14b7:		beq B26_149f ; f0 e6

B26_14b9:	.db $03
B26_14ba:	.db $f4
B26_14bb:		sbc ($e8), y	; f1 e8
B26_14bd:	.db $fc
B26_14be:		;removed
	.db $f0 $e6

B26_14c0:	.db $43
B26_14c1:	.db $04
B26_14c2:	.db $03
B26_14c3:		beq B26_1449 ; f0 84

B26_14c5:	.db $03
B26_14c6:	.db $f4
B26_14c7:		sbc ($86), y	; f1 86
B26_14c9:	.db $fc
B26_14ca:		sbc ($88), y	; f1 88
B26_14cc:	.db $04
B26_14cd:		asl $e0			; 06 e0
B26_14cf:		sty $03			; 84 03
B26_14d1:		beq B26_14b4 ; f0 e1

B26_14d3:		stx $f8			; 86 f8
B26_14d5:		sbc ($a8, x)	; e1 a8
B26_14d7:		.db $00				; 00
B26_14d8:		ora ($aa, x)	; 01 aa
B26_14da:		sed				; f8 
B26_14db:		ora ($ac, x)	; 01 ac
B26_14dd:		.db $00				; 00
B26_14de:		sbc $08ae, y	; f9 ae 08
B26_14e1:	.db $03
B26_14e2:		beq B26_146e ; f0 8a

B26_14e4:	.db $03
B26_14e5:	.db $f4
B26_14e6:		sbc ($8c), y	; f1 8c
B26_14e8:	.db $fc
B26_14e9:		sbc ($88), y	; f1 88
B26_14eb:	.db $04
B26_14ec:		ora $f0			; 05 f0
B26_14ee:		bcc B26_14f3 ; 90 03

B26_14f0:		beq B26_14db ; f0 e9

B26_14f2:	.db $92
B26_14f3:		sed				; f8 
B26_14f4:		sbc ($94, x)	; e1 94
B26_14f6:		.db $00				; 00
B26_14f7:		sbc ($96, x)	; e1 96
B26_14f9:		php				; 08 
B26_14fa:		ora ($98, x)	; 01 98
B26_14fc:		.db $00				; 00
B26_14fd:	.db $03
B26_14fe:		;removed
	.db $f0 $80

B26_1500:	.db $03
B26_1501:	.db $f4
B26_1502:		sbc ($82), y	; f1 82
B26_1504:	.db $fc
B26_1505:		sbc ($88), y	; f1 88
B26_1507:	.db $04
B26_1508:	.db $04
B26_1509:		beq B26_14a5 ; f0 9a

B26_150b:		ora ($f4, x)	; 01 f4
B26_150d:		beq B26_148f ; f0 80

B26_150f:	.db $03
B26_1510:	.db $f4
B26_1511:		sbc ($82), y	; f1 82
B26_1513:	.db $fc
B26_1514:		sbc ($88), y	; f1 88
B26_1516:	.db $04
B26_1517:		ora $f0			; 05 f0
B26_1519:	.db $9c
B26_151a:		ora ($ec, x)	; 01 ec
B26_151c:		sbc ($9e), y	; f1 9e
B26_151e:	.db $f4
B26_151f:		;removed
	.db $f0 $80

B26_1521:	.db $03
B26_1522:	.db $f4
B26_1523:		sbc ($82), y	; f1 82
B26_1525:	.db $fc
B26_1526:		sbc ($88), y	; f1 88
B26_1528:	.db $04
B26_1529:	.db $07
B26_152a:		;removed
	.db $f0 $9c

B26_152c:		ora ($dc, x)	; 01 dc
B26_152e:		sbc ($a0), y	; f1 a0
B26_1530:		cpx $f3			; e4 f3
B26_1532:		ldy #$ec		; a0 ec
B26_1534:		sbc ($9e), y	; f1 9e
B26_1536:	.db $f4
B26_1537:		beq B26_14b9 ; f0 80

B26_1539:	.db $03
B26_153a:	.db $f4
B26_153b:		sbc ($82), y	; f1 82
B26_153d:	.db $fc
B26_153e:		sbc ($88), y	; f1 88
B26_1540:	.db $04
B26_1541:	.db $04
B26_1542:		cpx #$95		; e0 95
B26_1544:	.db $02
B26_1545:		sbc $e1, x		; f5 e1
B26_1547:	.db $97
B26_1548:		sbc $9901, x	; fd 01 99
B26_154b:		sed				; f8 
B26_154c:		ora ($9b, x)	; 01 9b
B26_154e:		.db $00				; 00
B26_154f:	.db $04
B26_1550:		cpx #$9d		; e0 9d
B26_1552:	.db $02
B26_1553:		sbc $e1, x		; f5 e1
B26_1555:	.db $9f
B26_1556:		sbc $b001, x	; fd 01 b0
B26_1559:		sed				; f8 
B26_155a:		ora ($b2, x)	; 01 b2
B26_155c:		.db $00				; 00
B26_155d:	.db $04
B26_155e:		cpx #$b4		; e0 b4
B26_1560:	.db $02
B26_1561:		sbc $e1, x		; f5 e1
B26_1563:		ldx $fd, y		; b6 fd
B26_1565:		ora ($b8, x)	; 01 b8
B26_1567:		sed				; f8 
B26_1568:		ora ($ba, x)	; 01 ba
B26_156a:		.db $00				; 00
B26_156b:	.db $02
B26_156c:		.db $00				; 00
B26_156d:		ldx #$02		; a2 02
B26_156f:		sed				; f8 
B26_1570:		.db $00				; 00
B26_1571:		ldx #$42		; a2 42
B26_1573:		.db $00				; 00
B26_1574:	.db $02
B26_1575:		.db $00				; 00
B26_1576:		ldy $f802, x	; bc 02 f8
B26_1579:		ora ($be, x)	; 01 be
B26_157b:		.db $00				; 00
B26_157c:		ora $e0			; 05 e0
B26_157e:		cld				; d8 
B26_157f:	.db $02
B26_1580:		sed				; f8 
B26_1581:		sbc ($da, x)	; e1 da
B26_1583:		.db $00				; 00
B26_1584:		ora ($dc, x)	; 01 dc
B26_1586:		sed				; f8 
B26_1587:		ora ($de, x)	; 01 de
B26_1589:		.db $00				; 00
B26_158a:		ora ($e0, x)	; 01 e0
B26_158c:		php				; 08 
B26_158d:		ora $e0			; 05 e0
B26_158f:	.db $e2
B26_1590:	.db $02
B26_1591:		sed				; f8 
B26_1592:		sbc ($e4, x)	; e1 e4
B26_1594:		.db $00				; 00
B26_1595:		ora ($e6, x)	; 01 e6
B26_1597:		sed				; f8 
B26_1598:		ora ($e8, x)	; 01 e8
B26_159a:		.db $00				; 00
B26_159b:		ora ($ea, x)	; 01 ea
B26_159d:		php				; 08 
B26_159e:		ora $e0			; 05 e0
B26_15a0:		cpx $f902		; ec 02 f9
B26_15a3:		sbc ($ee, x)	; e1 ee
B26_15a5:		ora ($01, x)	; 01 01
B26_15a7:		;removed
	.db $f0 $f8

B26_15a9:		ora ($f2, x)	; 01 f2
B26_15ab:		.db $00				; 00
B26_15ac:		ora ($f8, x)	; 01 f8
B26_15ae:		php				; 08 
B26_15af:		ora ($f0, x)	; 01 f0
B26_15b1:	.db $f4
B26_15b2:	.db $02
B26_15b3:	.db $fc
B26_15b4:		ora ($f0, x)	; 01 f0
B26_15b6:		inc $02, x		; f6 02
B26_15b8:	.db $fc
B26_15b9:		ora ($f0, x)	; 01 f0
B26_15bb:		sed				; f8 
B26_15bc:	.db $02
B26_15bd:	.db $fc
B26_15be:	.db $04
B26_15bf:	.db $e2
B26_15c0:		bcs B26_15c3 ; b0 01

B26_15c2:		sed				; f8 
B26_15c3:	.db $e3
B26_15c4:	.db $b2
B26_15c5:		.db $00				; 00
B26_15c6:		ora ($b4, x)	; 01 b4
B26_15c8:		sed				; f8 
B26_15c9:		ora ($b6, x)	; 01 b6
B26_15cb:		.db $00				; 00
B26_15cc:	.db $04
B26_15cd:	.db $e2
B26_15ce:		bcs B26_15d1 ; b0 01

B26_15d0:		sed				; f8 
B26_15d1:	.db $e3
B26_15d2:	.db $b2
B26_15d3:		.db $00				; 00
B26_15d4:		ora ($b8, x)	; 01 b8
B26_15d6:		sed				; f8 
B26_15d7:		ora ($ba, x)	; 01 ba
B26_15d9:		.db $00				; 00
B26_15da:	.db $04
B26_15db:		cpx #$b0		; e0 b0
B26_15dd:		ora ($f8, x)	; 01 f8
B26_15df:		sbc ($b2, x)	; e1 b2
B26_15e1:		.db $00				; 00
B26_15e2:		ora ($bc, x)	; 01 bc
B26_15e4:		sed				; f8 
B26_15e5:		ora ($be, x)	; 01 be
B26_15e7:		.db $00				; 00
B26_15e8:	.db $04
B26_15e9:	.db $e2
B26_15ea:		cpy #$01		; c0 01
B26_15ec:		sed				; f8 
B26_15ed:	.db $e3
B26_15ee:	.db $c2
B26_15ef:		.db $00				; 00
B26_15f0:		ora ($c4, x)	; 01 c4
B26_15f2:		sed				; f8 
B26_15f3:		ora ($c6, x)	; 01 c6
B26_15f5:		.db $00				; 00
B26_15f6:	.db $04
B26_15f7:	.db $e2
B26_15f8:		cpy #$01		; c0 01
B26_15fa:		sed				; f8 
B26_15fb:	.db $e3
B26_15fc:	.db $c2
B26_15fd:		.db $00				; 00
B26_15fe:		ora ($c8, x)	; 01 c8
B26_1600:		sed				; f8 
B26_1601:		ora ($ca, x)	; 01 ca
B26_1603:		.db $00				; 00
B26_1604:	.db $04
B26_1605:		cpx #$c0		; e0 c0
B26_1607:		ora ($f8, x)	; 01 f8
B26_1609:		sbc ($c2, x)	; e1 c2
B26_160b:		.db $00				; 00
B26_160c:		ora ($cc, x)	; 01 cc
B26_160e:		sed				; f8 
B26_160f:		ora ($ce, x)	; 01 ce
B26_1611:		.db $00				; 00
B26_1612:	.db $02
B26_1613:		beq B26_160b ; f0 f6

B26_1615:		ora ($f8, x)	; 01 f8
B26_1617:		sbc ($f8), y	; f1 f8
B26_1619:		.db $00				; 00
B26_161a:	.db $02
B26_161b:		beq B26_1617 ; f0 fa

B26_161d:		ora ($f8, x)	; 01 f8
B26_161f:		sbc ($fc), y	; f1 fc
B26_1621:		.db $00				; 00
B26_1622:	.db $02
B26_1623:		beq B26_15db ; f0 b6

B26_1625:		ora ($f8, x)	; 01 f8
B26_1627:		sbc ($b8), y	; f1 b8
B26_1629:		.db $00				; 00
B26_162a:	.db $02
B26_162b:		beq B26_15e7 ; f0 ba

B26_162d:		ora ($f8, x)	; 01 f8
B26_162f:		sbc ($bc), y	; f1 bc
B26_1631:		.db $00				; 00
B26_1632:		ora #$d0		; 09 d0
B26_1634:		cpy #$01		; c0 01
B26_1636:		beq B26_1619 ; f0 e1

B26_1638:	.db $c2
B26_1639:		sed				; f8 
B26_163a:		sbc ($c4, x)	; e1 c4
B26_163c:		.db $00				; 00
B26_163d:	.db $db
B26_163e:		dec $08			; c6 08
B26_1640:		cmp ($c8), y	; d1 c8
B26_1642:		bpl B26_1645 ; 10 01

B26_1644:		dex				; ca 
B26_1645:	.db $fb
B26_1646:		ora ($cc, x)	; 01 cc
B26_1648:	.db $03
B26_1649:	.db $1a
B26_164a:		sty $02			; 84 02
B26_164c:		sed				; f8 
B26_164d:	.db $1b
B26_164e:		stx $00			; 86 00
B26_1650:		asl a			; 0a
B26_1651:		inc $ce			; e6 ce
B26_1653:		ora ($f0, x)	; 01 f0
B26_1655:		sbc ($d0, x)	; e1 d0
B26_1657:		sed				; f8 
B26_1658:		sbc ($d2, x)	; e1 d2
B26_165a:		.db $00				; 00
B26_165b:	.db $e7
B26_165c:	.db $d4
B26_165d:		php				; 08 
B26_165e:		ora $d6			; 05 d6
B26_1660:		beq B26_1663 ; f0 01

B26_1662:		cld				; d8 
B26_1663:		sed				; f8 
B26_1664:		ora ($da, x)	; 01 da
B26_1666:		.db $00				; 00
B26_1667:		ora $dc			; 05 dc
B26_1669:		php				; 08 
B26_166a:		asl $0288, x	; 1e 88 02
B26_166d:		sed				; f8 
B26_166e:	.db $1f
B26_166f:		txa				; 8a 
B26_1670:		.db $00				; 00
B26_1671:	.db $07
B26_1672:		bne B26_1634 ; d0 c0

B26_1674:		ora ($f0, x)	; 01 f0
B26_1676:		sbc ($c2, x)	; e1 c2
B26_1678:		sed				; f8 
B26_1679:		sbc ($c4, x)	; e1 c4
B26_167b:		.db $00				; 00
B26_167c:	.db $db
B26_167d:		dec $08			; c6 08
B26_167f:		cmp ($c8), y	; d1 c8
B26_1681:		bpl B26_1684 ; 10 01

B26_1683:		dex				; ca 
B26_1684:	.db $fb
B26_1685:		ora ($cc, x)	; 01 cc
B26_1687:	.db $03
B26_1688:		php				; 08 
B26_1689:		inc $ce			; e6 ce
B26_168b:		ora ($f0, x)	; 01 f0
B26_168d:		sbc ($d0, x)	; e1 d0
B26_168f:		sed				; f8 
B26_1690:		sbc ($d2, x)	; e1 d2
B26_1692:		.db $00				; 00
B26_1693:	.db $e7
B26_1694:	.db $d4
B26_1695:		php				; 08 
B26_1696:		ora $d6			; 05 d6
B26_1698:		beq B26_169b ; f0 01

B26_169a:		cld				; d8 
B26_169b:		sed				; f8 
B26_169c:		ora ($da, x)	; 01 da
B26_169e:		.db $00				; 00
B26_169f:		ora $dc			; 05 dc
B26_16a1:		php				; 08 
B26_16a2:	.db $82
B26_16a3:	.db $97
B26_16a4:	.db $82
B26_16a5:	.db $97
B26_16a6:		lda #$97		; a9 97
B26_16a8:		dex				; ca 
B26_16a9:	.db $97
B26_16aa:		lda #$97		; a9 97
B26_16ac:		inc $1597		; ee 97 15
B26_16af:		tya				; 98 
B26_16b0:		rol $98, x		; 36 98
B26_16b2:		rts				; 60 


B26_16b3:		tya				; 98 
B26_16b4:		sta ($98, x)	; 81 98
B26_16b6:	.db $89
B26_16b7:		tya				; 98 
B26_16b8:		stx $9698		; 8e 98 96
B26_16bb:		tya				; 98 
B26_16bc:	.db $b7
B26_16bd:		tya				; 98 
B26_16be:		cld				; d8 
B26_16bf:		tya				; 98 
B26_16c0:	.db $b7
B26_16c1:		tya				; 98 
B26_16c2:	.db $fc
B26_16c3:		tya				; 98 
B26_16c4:		jsr $4499		; 20 99 44
B26_16c7:		sta $9961, y	; 99 61 99
B26_16ca:	.db $6f
B26_16cb:		sta $9782, y	; 99 82 97
B26_16ce:	.db $82
B26_16cf:	.db $97
B26_16d0:		sei				; 78 
B26_16d1:		sta $9782, y	; 99 82 97
B26_16d4:	.db $82
B26_16d5:	.db $97
B26_16d6:	.db $82
B26_16d7:	.db $97
B26_16d8:	.db $82
B26_16d9:	.db $97
B26_16da:	.db $82
B26_16db:	.db $97
B26_16dc:	.db $f3
B26_16dd:		sta $9a07, y	; 99 07 9a
B26_16e0:	.db $1b
B26_16e1:		txs				; 9a 
B26_16e2:	.db $2f
B26_16e3:		txs				; 9a 
B26_16e4:	.db $43
B26_16e5:		txs				; 9a 
B26_16e6:	.db $57
B26_16e7:		txs				; 9a 
B26_16e8:		ror $829a		; 6e 9a 82
B26_16eb:		txs				; 9a 
B26_16ec:		stx $9a, y		; 96 9a
B26_16ee:	.db $a7
B26_16ef:		txs				; 9a 
B26_16f0:	.db $af
B26_16f1:		txs				; 9a 
B26_16f2:	.db $b7
B26_16f3:		txs				; 9a 
B26_16f4:	.db $bf
B26_16f5:		txs				; 9a 
B26_16f6:	.db $c7
B26_16f7:		txs				; 9a 
B26_16f8:		beq B26_1694 ; f0 9a

B26_16fa:	.db $17
B26_16fb:	.db $9b
B26_16fc:		and ($9b), y	; 31 9b
B26_16fe:		pha				; 48 
B26_16ff:	.db $9b
B26_1700:	.db $5f
B26_1701:	.db $9b
B26_1702:		ror a			; 6a
B26_1703:	.db $9b
B26_1704:		sei				; 78 
B26_1705:	.db $9b
B26_1706:	.db $80
B26_1707:	.db $9b
B26_1708:		dey				; 88 
B26_1709:	.db $9b
B26_170a:		stx $9b, y		; 96 9b
B26_170c:		lda $d79b, x	; bd 9b d7
B26_170f:	.db $9b
B26_1710:	.db $dc
B26_1711:	.db $9b
B26_1712:		inc $9b, x		; f6 9b
B26_1714:	.db $17
B26_1715:	.db $9c
B26_1716:		eor $9c			; 45 9c
B26_1718:		ror $9c			; 66 9c
B26_171a:	.db $87
B26_171b:	.db $9c
B26_171c:		lda ($9c), y	; b1 9c
B26_171e:		lda $c69c, x	; bd 9c c6
B26_1721:	.db $9c
B26_1722:		dec $d69c		; ce 9c d6
B26_1725:	.db $9c
B26_1726:		dec $fb9c, x	; de 9c fb
B26_1729:	.db $9c
B26_172a:		ora $9d, x		; 15 9d
B26_172c:		rol $9d			; 26 9d
B26_172e:	.db $37
B26_172f:		sta $9d45, x	; 9d 45 9d
B26_1732:	.db $53
B26_1733:		sta $9d61, x	; 9d 61 9d
B26_1736:	.db $cf
B26_1737:		txs				; 9a 
B26_1738:		cmp $e89a, x	; dd 9a e8
B26_173b:		txs				; 9a 
B26_173c:	.db $6f
B26_173d:		sta $9d7d, x	; 9d 7d 9d
B26_1740:		dey				; 88 
B26_1741:		sta $9d93, x	; 9d 93 9d
B26_1744:		lda ($9d, x)	; a1 9d
B26_1746:	.db $af
B26_1747:		sta $9db7, x	; 9d b7 9d
B26_174a:	.db $bf
B26_174b:		sta $9dc4, x	; 9d c4 9d
B26_174e:		cpy $d49d		; cc 9d d4
B26_1751:		sta $9dd9, x	; 9d d9 9d
B26_1754:		dec $e39d, x	; de 9d e3
B26_1757:		sta $9de8, x	; 9d e8 9d
B26_175a:		sbc $f29d		; ed9d f2
B26_175d:		sta $9dfb, x	; 9d fb 9d
B26_1760:	.db $1a
B26_1761:	.db $9e
B26_1762:		and ($9e), y	; 31 9e
B26_1764:		rti				; 40 


B26_1765:	.db $9e
B26_1766:	.db $4f
B26_1767:	.db $9e
B26_1768:		adc $9e, x		; 75 9e
B26_176a:		sta $9e, x		; 95 9e
B26_176c:		adc $9e, x		; 75 9e
B26_176e:	.db $bb
B26_176f:	.db $9e
B26_1770:		sbc ($9e, x)	; e1 9e
B26_1772:		asl a			; 0a
B26_1773:	.db $9f
B26_1774:		bmi B26_1715 ; 30 9f

B26_1776:		lsr $9f, x		; 56 9f
B26_1778:	.db $82
B26_1779:	.db $9f
B26_177a:	.db $9f
B26_177b:	.db $9f
B26_177c:	.db $b3
B26_177d:	.db $9f
B26_177e:		lda $9ba9, y	; b9 a9 9b
B26_1781:		lda #$0c		; a9 0c
B26_1783:		;removed
	.db $f0 $c0

B26_1785:	.db $03
B26_1786:		.db $00				; 00
B26_1787:		sbc ($c2), y	; f1 c2
B26_1789:		php				; 08 
B26_178a:	.db $d2
B26_178b:	.db $80
B26_178c:	.db $02
B26_178d:		inc $82d3		; ee d3 82
B26_1790:		inc $d3, x		; f6 d3
B26_1792:		sty $fe			; 84 fe
B26_1794:		cmp ($86), y	; d1 86
B26_1796:		inx				; e8 
B26_1797:		sbc ($88), y	; f1 88
B26_1799:		inx				; e8 
B26_179a:		sbc ($8a), y	; f1 8a
B26_179c:		;removed
	.db $f0 $f1

B26_179e:		sty $11f8		; 8c f8 11
B26_17a1:		stx $11f8		; 8e f8 11
B26_17a4:		bcc B26_17a6 ; 90 00

B26_17a6:		ora ($92), y	; 11 92
B26_17a8:		php				; 08 
B26_17a9:		asl a			; 0a
B26_17aa:	.db $f2
B26_17ab:		cpy #$03		; c0 03
B26_17ad:	.db $ff
B26_17ae:	.db $f3
B26_17af:	.db $c2
B26_17b0:	.db $07
B26_17b1:		bne B26_1733 ; d0 80

B26_17b3:	.db $02
B26_17b4:		beq B26_1787 ; f0 d1

B26_17b6:	.db $82
B26_17b7:		sed				; f8 
B26_17b8:		cmp ($84), y	; d1 84
B26_17ba:		.db $00				; 00
B26_17bb:		sbc ($94, x)	; e1 94
B26_17bd:		inx				; e8 
B26_17be:		sbc ($96), y	; f1 96
B26_17c0:		beq B26_17b3 ; f0 f1

B26_17c2:		tya				; 98 
B26_17c3:		sed				; f8 
B26_17c4:		ora ($9a), y	; 11 9a
B26_17c6:	.db $fa
B26_17c7:		ora ($9c), y	; 11 9c
B26_17c9:	.db $02
B26_17ca:	.db $0b
B26_17cb:	.db $f2
B26_17cc:		cpy #$03		; c0 03
B26_17ce:		sbc $c2f3, x	; fd f3 c2
B26_17d1:		ora $d2			; 05 d2
B26_17d3:	.db $80
B26_17d4:	.db $02
B26_17d5:		beq B26_17aa ; f0 d3

B26_17d7:	.db $82
B26_17d8:		sed				; f8 
B26_17d9:	.db $d3
B26_17da:		sty $00			; 84 00
B26_17dc:		sbc ($9e), y	; f1 9e
B26_17de:		inx				; e8 
B26_17df:		sbc ($a0), y	; f1 a0
B26_17e1:		beq B26_17d4 ; f0 f1

B26_17e3:		ldx #$f8		; a2 f8
B26_17e5:		ora ($a4), y	; 11 a4
B26_17e7:		sed				; f8 
B26_17e8:		ora ($a6), y	; 11 a6
B26_17ea:		.db $00				; 00
B26_17eb:		ora ($a8), y	; 11 a8
B26_17ed:		php				; 08 
B26_17ee:	.db $0c
B26_17ef:		beq B26_17b1 ; f0 c0

B26_17f1:	.db $03
B26_17f2:		ora ($f1, x)	; 01 f1
B26_17f4:	.db $c2
B26_17f5:		ora #$d2		; 09 d2
B26_17f7:	.db $80
B26_17f8:	.db $02
B26_17f9:	.db $f3
B26_17fa:	.db $d3
B26_17fb:	.db $82
B26_17fc:	.db $fb
B26_17fd:	.db $d3
B26_17fe:		sty $03			; 84 03
B26_1800:		cmp ($86), y	; d1 86
B26_1802:		nop				; ea 
B26_1803:		sbc ($88), y	; f1 88
B26_1805:		nop				; ea 
B26_1806:		sbc ($8a), y	; f1 8a
B26_1808:	.db $f2
B26_1809:		sbc ($8c), y	; f1 8c
B26_180b:	.db $fa
B26_180c:		ora ($8e), y	; 11 8e
B26_180e:		sed				; f8 
B26_180f:		ora ($90), y	; 11 90
B26_1811:		.db $00				; 00
B26_1812:		ora ($92), y	; 11 92
B26_1814:		php				; 08 
B26_1815:		asl a			; 0a
B26_1816:		beq B26_17d8 ; f0 c0

B26_1818:	.db $03
B26_1819:		ora ($f1, x)	; 01 f1
B26_181b:	.db $c2
B26_181c:		ora #$d2		; 09 d2
B26_181e:		tax				; aa 
B26_181f:	.db $02
B26_1820:		sed				; f8 
B26_1821:	.db $d3
B26_1822:		ldy $d300		; ac 00 d3
B26_1825:		ldx $d308		; ae 08 d3
B26_1828:		bcs B26_183a ; b0 10

B26_182a:		sbc ($8c), y	; f1 8c
B26_182c:	.db $fb
B26_182d:		ora ($8e), y	; 11 8e
B26_182f:		sed				; f8 
B26_1830:		ora ($90), y	; 11 90
B26_1832:		.db $00				; 00
B26_1833:		ora ($92), y	; 11 92
B26_1835:		php				; 08 
B26_1836:		ora $c0f2		; 0d f2 c0
B26_1839:	.db $03
B26_183a:		.db $00				; 00
B26_183b:	.db $f3
B26_183c:	.db $c2
B26_183d:		php				; 08 
B26_183e:	.db $d2
B26_183f:	.db $80
B26_1840:	.db $02
B26_1841:		beq B26_1816 ; f0 d3

B26_1843:	.db $82
B26_1844:		sed				; f8 
B26_1845:	.db $d3
B26_1846:		sty $00			; 84 00
B26_1848:	.db $f7
B26_1849:	.db $9e
B26_184a:		cld				; d8 
B26_184b:	.db $f7
B26_184c:		ldy #$e0		; a0 e0
B26_184e:		sbc $b2, x		; f5 b2
B26_1850:		inx				; e8 
B26_1851:		sbc ($b4), y	; f1 b4
B26_1853:		beq B26_1846 ; f0 f1

B26_1855:		ldx #$f8		; a2 f8
B26_1857:		ora ($a4), y	; 11 a4
B26_1859:		sed				; f8 
B26_185a:		ora ($a6), y	; 11 a6
B26_185c:		.db $00				; 00
B26_185d:		ora ($a8), y	; 11 a8
B26_185f:		php				; 08 
B26_1860:		asl a			; 0a
B26_1861:	.db $f2
B26_1862:		cpy #$03		; c0 03
B26_1864:	.db $ff
B26_1865:	.db $f3
B26_1866:	.db $c2
B26_1867:	.db $07
B26_1868:		bne B26_17ea ; d0 80

B26_186a:	.db $02
B26_186b:		beq B26_183e ; f0 d1

B26_186d:	.db $82
B26_186e:		sed				; f8 
B26_186f:		cmp ($84), y	; d1 84
B26_1871:		.db $00				; 00
B26_1872:		sbc ($94, x)	; e1 94
B26_1874:		inx				; e8 
B26_1875:		sbc ($96), y	; f1 96
B26_1877:		beq B26_186a ; f0 f1

B26_1879:		tya				; 98 
B26_187a:		sed				; f8 
B26_187b:		ora ($f2), y	; 11 f2
B26_187d:		sed				; f8 
B26_187e:		ora ($f4), y	; 11 f4
B26_1880:		.db $00				; 00
B26_1881:	.db $02
B26_1882:		sed				; f8 
B26_1883:		cpx $f802		; ec 02 f8
B26_1886:	.db $f9 $ee $00
B26_1889:		ora ($f8, x)	; 01 f8
B26_188b:		beq B26_188f ; f0 02

B26_188d:	.db $fc
B26_188e:	.db $02
B26_188f:		sed				; f8 
B26_1890:		inc $f842		; ee 42 f8
B26_1893:	.db $f9 $ec $00
B26_1896:		asl a			; 0a
B26_1897:	.db $c2
B26_1898:	.db $80
B26_1899:		ora ($f2, x)	; 01 f2
B26_189b:	.db $c3
B26_189c:	.db $82
B26_189d:	.db $fa
B26_189e:	.db $c3
B26_189f:		sty $02			; 84 02
B26_18a1:		sbc ($86, x)	; e1 86
B26_18a3:		inc $e1, x		; f6 e1
B26_18a5:		dey				; 88 
B26_18a6:		inc $8ae1, x	; fe e1 8a
B26_18a9:		asl $01			; 06 01
B26_18ab:		sty $01fc		; 8c fc 01
B26_18ae:		stx $ba04		; 8e 04 ba
B26_18b1:		ldy $02, x		; b4 02
B26_18b3:	.db $ff
B26_18b4:	.db $bb
B26_18b5:		ldx $07, y		; b6 07
B26_18b7:		asl a			; 0a
B26_18b8:		cpy #$80		; c0 80
B26_18ba:		ora ($f3, x)	; 01 f3
B26_18bc:		cmp ($82, x)	; c1 82
B26_18be:	.db $fb
B26_18bf:		cmp ($84, x)	; c1 84
B26_18c1:	.db $03
B26_18c2:		sbc ($90, x)	; e1 90
B26_18c4:	.db $f7
B26_18c5:		sbc ($92, x)	; e1 92
B26_18c7:	.db $ff
B26_18c8:		sbc ($94, x)	; e1 94
B26_18ca:	.db $07
B26_18cb:		ora ($96, x)	; 01 96
B26_18cd:	.db $fb
B26_18ce:		ora ($98, x)	; 01 98
B26_18d0:	.db $03
B26_18d1:		tsx				; ba 
B26_18d2:		ldy $02, x		; b4 02
B26_18d4:		.db $00				; 00
B26_18d5:	.db $bb
B26_18d6:		ldx $08, y		; b6 08
B26_18d8:	.db $0b
B26_18d9:		cpy #$80		; c0 80
B26_18db:		ora ($f4, x)	; 01 f4
B26_18dd:		cmp ($82, x)	; c1 82
B26_18df:	.db $fc
B26_18e0:		cmp ($84, x)	; c1 84
B26_18e2:	.db $04
B26_18e3:		sbc ($9a, x)	; e1 9a
B26_18e5:		sed				; f8 
B26_18e6:		sbc ($9c, x)	; e1 9c
B26_18e8:		.db $00				; 00
B26_18e9:		sbc ($9e, x)	; e1 9e
B26_18eb:		php				; 08 
B26_18ec:		ora ($a0, x)	; 01 a0
B26_18ee:		sed				; f8 
B26_18ef:		ora ($a2, x)	; 01 a2
B26_18f1:		.db $00				; 00
B26_18f2:		ora ($a4, x)	; 01 a4
B26_18f4:		php				; 08 
B26_18f5:		clv				; b8 
B26_18f6:		ldy $02, x		; b4 02
B26_18f8:		.db $00				; 00
B26_18f9:		lda $08b6, y	; b9 b6 08
B26_18fc:	.db $0b
B26_18fd:		cpy #$a6		; c0 a6
B26_18ff:		ora ($f9, x)	; 01 f9
B26_1901:		cmp ($a8, x)	; c1 a8
B26_1903:		ora ($c1, x)	; 01 c1
B26_1905:		tax				; aa 
B26_1906:		ora #$e1		; 09 e1
B26_1908:		ldy $e1f8		; ac f8 e1
B26_190b:		ldx $e100		; ae 00 e1
B26_190e:		bcs B26_1918 ; b0 08

B26_1910:		ora ($a0, x)	; 01 a0
B26_1912:		sed				; f8 
B26_1913:		ora ($a2, x)	; 01 a2
B26_1915:		.db $00				; 00
B26_1916:		ora ($a4, x)	; 01 a4
B26_1918:		php				; 08 
B26_1919:		;removed
	.db $b0 $b8

B26_191b:	.db $02
B26_191c:		php				; 08 
B26_191d:		lda ($ba), y	; b1 ba
B26_191f:		;removed
	.db $10 $0b

B26_1921:		cpy #$80		; c0 80
B26_1923:		ora ($f2, x)	; 01 f2
B26_1925:		cmp ($82, x)	; c1 82
B26_1927:	.db $fa
B26_1928:		cmp ($84, x)	; c1 84
B26_192a:	.db $02
B26_192b:		sbc ($b2, x)	; e1 b2
B26_192d:		inc $e1, x		; f6 e1
B26_192f:		dey				; 88 
B26_1930:		inc $8ae1, x	; fe e1 8a
B26_1933:		asl $01			; 06 01
B26_1935:		sty $01fc		; 8c fc 01
B26_1938:	.db $8e $04 $00
B26_193b:		clv				; b8 
B26_193c:	.db $02
B26_193d:		cpx $01			; e4 01
B26_193f:		tsx				; ba 
B26_1940:		cpx $be01		; ec 01 be
B26_1943:	.db $f4
B26_1944:		ora #$a0		; 09 a0
B26_1946:		cpy $02			; c4 02
B26_1948:	.db $fb
B26_1949:		cmp ($c6, x)	; c1 c6
B26_194b:	.db $f3
B26_194c:		cmp ($c8, x)	; c1 c8
B26_194e:	.db $fb
B26_194f:		cmp ($ca, x)	; c1 ca
B26_1951:	.db $03
B26_1952:		sbc ($cc, x)	; e1 cc
B26_1954:		sed				; f8 
B26_1955:		sbc ($ce, x)	; e1 ce
B26_1957:		.db $00				; 00
B26_1958:		ora ($d0, x)	; 01 d0
B26_195a:	.db $f3
B26_195b:		ora ($d2, x)	; 01 d2
B26_195d:	.db $fb
B26_195e:		ora ($d4, x)	; 01 d4
B26_1960:	.db $03
B26_1961:	.db $04
B26_1962:		;removed
	.db $f0 $51

B26_1964:		ora ($f0, x)	; 01 f0
B26_1966:		sbc ($61), y	; f1 61
B26_1968:		sed				; f8 
B26_1969:		sbc ($53), y	; f1 53
B26_196b:		.db $00				; 00
B26_196c:		sbc ($63), y	; f1 63
B26_196e:		php				; 08 
B26_196f:	.db $02
B26_1970:		.db $00				; 00
B26_1971:	.db $f4
B26_1972:		ora ($fc, x)	; 01 fc
B26_1974:		clc				; 18 
B26_1975:	.db $f4
B26_1976:		eor ($f8, x)	; 41 f8
B26_1978:	.db $1b
B26_1979:	.db $80
B26_197a:		beq B26_197d ; f0 01

B26_197c:	.db $fc
B26_197d:		sta ($c4), y	; 91 c4
B26_197f:		cpy $c891		; cc 91 c8
B26_1982:	.db $d4
B26_1983:		bcc B26_1949 ; 90 c4

B26_1985:		cmp ($dc, x)	; c1 dc
B26_1987:		ldy #$c6		; a0 c6
B26_1989:		eor ($e4, x)	; 41 e4
B26_198b:		lda ($c8, x)	; a1 c8
B26_198d:		cpx $c4a0		; ec a0 c4
B26_1990:		ora ($f4, x)	; 01 f4
B26_1992:		ldy #$f2		; a0 f2
B26_1994:		eor ($fc, x)	; 41 fc
B26_1996:		bcs B26_1978 ; b0 e0

B26_1998:		ora ($d4, x)	; 01 d4
B26_199a:		lda ($d6), y	; b1 d6
B26_199c:	.db $dc
B26_199d:		lda ($c4), y	; b1 c4
B26_199f:	.db $04
B26_19a0:		cmp ($d8, x)	; c1 d8
B26_19a2:		cpy $f2c1		; cc c1 f2
B26_19a5:	.db $fc
B26_19a6:		;removed
	.db $d0 $d8

B26_19a8:		eor ($d4, x)	; 41 d4
B26_19aa:		cpx #$f2		; e0 f2
B26_19ac:		ora ($f6, x)	; 01 f6
B26_19ae:		sbc ($f0, x)	; e1 f0
B26_19b0:	.db $fc
B26_19b1:		sbc ($c8, x)	; e1 c8
B26_19b3:	.db $04
B26_19b4:		sbc ($ce, x)	; e1 ce
B26_19b6:	.db $0c
B26_19b7:		ora ($f2, x)	; 01 f2
B26_19b9:	.db $f2
B26_19ba:		.db $00				; 00
B26_19bb:	.db $f2
B26_19bc:		cmp ($fc, x)	; c1 fc
B26_19be:		.db $00				; 00
B26_19bf:	.db $c2
B26_19c0:		ora ($14, x)	; 01 14
B26_19c2:		and ($e0, x)	; 21 e0
B26_19c4:		cpx $21			; e4 21
B26_19c6:	.db $f2
B26_19c7:		cpx $f020		; ec 20 f0
B26_19ca:		cmp ($fc, x)	; c1 fc
B26_19cc:		rti				; 40 


B26_19cd:		dex				; ca 
B26_19ce:		eor ($e4, x)	; 41 e4
B26_19d0:		rti				; 40 


B26_19d1:	.db $f2
B26_19d2:		ora ($fc, x)	; 01 fc
B26_19d4:		rts				; 60 


B26_19d5:	.db $f2
B26_19d6:		eor ($fc, x)	; 41 fc
B26_19d8:		php				; 08 
B26_19d9:	.db $c2
B26_19da:	.db $80
B26_19db:		ora ($f2, x)	; 01 f2
B26_19dd:	.db $c3
B26_19de:	.db $82
B26_19df:	.db $fa
B26_19e0:	.db $c3
B26_19e1:		sty $02			; 84 02
B26_19e3:		sbc ($86, x)	; e1 86
B26_19e5:		inc $e1, x		; f6 e1
B26_19e7:		dey				; 88 
B26_19e8:		inc $8ae1, x	; fe e1 8a
B26_19eb:		asl $ba			; 06 ba
B26_19ed:		ldy $02, x		; b4 02
B26_19ef:	.db $ff
B26_19f0:	.db $bb
B26_19f1:		ldx $07, y		; b6 07
B26_19f3:		asl $e0			; 06 e0
B26_19f5:	.db $80
B26_19f6:	.db $02
B26_19f7:		sed				; f8 
B26_19f8:		sbc ($82, x)	; e1 82
B26_19fa:		.db $00				; 00
B26_19fb:		sbc ($84, x)	; e1 84
B26_19fd:		php				; 08 
B26_19fe:		ora ($86, x)	; 01 86
B26_1a00:		sed				; f8 
B26_1a01:		ora ($88, x)	; 01 88
B26_1a03:		.db $00				; 00
B26_1a04:		ora ($8a, x)	; 01 8a
B26_1a06:		php				; 08 
B26_1a07:		asl $f0			; 06 f0
B26_1a09:		sty $e802		; 8c 02 e8
B26_1a0c:		sbc ($8e, x)	; e1 8e
B26_1a0e:		beq B26_19f1 ; f0 e1

B26_1a10:		;removed
	.db $90 $f8

B26_1a12:		sbc ($92, x)	; e1 92
B26_1a14:		.db $00				; 00
B26_1a15:		ora ($94, x)	; 01 94
B26_1a17:		.db $00				; 00
B26_1a18:		ora ($96, x)	; 01 96
B26_1a1a:		php				; 08 
B26_1a1b:		asl $e0			; 06 e0
B26_1a1d:		tya				; 98 
B26_1a1e:	.db $02
B26_1a1f:		;removed
	.db $f0 $e1

B26_1a21:		txs				; 9a 
B26_1a22:		sed				; f8 
B26_1a23:		sbc ($9c, x)	; e1 9c
B26_1a25:		.db $00				; 00
B26_1a26:		ora ($9e, x)	; 01 9e
B26_1a28:		;removed
	.db $f0 $01

B26_1a2a:		ldy #$f8		; a0 f8
B26_1a2c:		ora ($a2, x)	; 01 a2
B26_1a2e:		.db $00				; 00
B26_1a2f:		asl $d6			; 06 d6
B26_1a31:		ldy $02			; a4 02
B26_1a33:		;removed
	.db $f0 $e1

B26_1a35:		ldx $f8			; a6 f8
B26_1a37:		sbc ($a8, x)	; e1 a8
B26_1a39:		.db $00				; 00
B26_1a3a:		ora ($aa), y	; 11 aa
B26_1a3c:		;removed
	.db $f0 $01

B26_1a3e:		ldy $01f8		; ac f8 01
B26_1a41:		ldx $0600		; ae 00 06
B26_1a44:		beq B26_19f6 ; f0 b0

B26_1a46:	.db $02
B26_1a47:		beq B26_1a2a ; f0 e1

B26_1a49:	.db $b2
B26_1a4a:		sed				; f8 
B26_1a4b:		sbc ($b4, x)	; e1 b4
B26_1a4d:		.db $00				; 00
B26_1a4e:		ora ($b6, x)	; 01 b6
B26_1a50:		sed				; f8 
B26_1a51:		ora ($b8, x)	; 01 b8
B26_1a53:		.db $00				; 00
B26_1a54:		sbc ($ba), y	; f1 ba
B26_1a56:		php				; 08 
B26_1a57:	.db $07
B26_1a58:		cpx #$bc		; e0 bc
B26_1a5a:	.db $02
B26_1a5b:		beq B26_1a3e ; f0 e1

B26_1a5d:		ldx $01f8, y	; be f8 01
B26_1a60:		cpy #$f0		; c0 f0
B26_1a62:		ora ($c2, x)	; 01 c2
B26_1a64:		sed				; f8 
B26_1a65:		sbc ($c4), y	; f1 c4
B26_1a67:		.db $00				; 00
B26_1a68:		sbc #$c6		; e9 c6
B26_1a6a:		php				; 08 
B26_1a6b:		sbc ($c8, x)	; e1 c8
B26_1a6d:		;removed
	.db $10 $06

B26_1a6f:		cpx #$9e		; e0 9e
B26_1a71:	.db $82
B26_1a72:		;removed
	.db $f0 $e1

B26_1a74:		ldy #$f8		; a0 f8
B26_1a76:		sbc ($a2, x)	; e1 a2
B26_1a78:		.db $00				; 00
B26_1a79:		ora ($98, x)	; 01 98
B26_1a7b:		beq B26_1a7e ; f0 01

B26_1a7d:		txs				; 9a 
B26_1a7e:		sed				; f8 
B26_1a7f:		ora ($9c, x)	; 01 9c
B26_1a81:		.db $00				; 00
B26_1a82:		asl $d0			; 06 d0
B26_1a84:		tax				; aa 
B26_1a85:	.db $82
B26_1a86:		;removed
	.db $f0 $e1

B26_1a88:		ldy $e1f8		; ac f8 e1
B26_1a8b:		ldx $0b00		; ae 00 0b
B26_1a8e:		ldy $f0			; a4 f0
B26_1a90:		ora ($a6, x)	; 01 a6
B26_1a92:		sed				; f8 
B26_1a93:		ora ($a8, x)	; 01 a8
B26_1a95:		.db $00				; 00
B26_1a96:		ora $f0			; 05 f0
B26_1a98:		dec $e802		; ce 02 e8
B26_1a9b:		sbc ($d0), y	; f1 d0
B26_1a9d:		beq B26_1a90 ; f0 f1

B26_1a9f:	.db $d2
B26_1aa0:		sed				; f8 
B26_1aa1:		sbc ($d4), y	; f1 d4
B26_1aa3:		.db $00				; 00
B26_1aa4:		sbc ($d6), y	; f1 d6
B26_1aa6:		php				; 08 
B26_1aa7:	.db $02
B26_1aa8:		beq B26_1a82 ; f0 d8

B26_1aaa:		sta ($f8, x)	; 81 f8
B26_1aac:		sbc ($da), y	; f1 da
B26_1aae:		.db $00				; 00
B26_1aaf:	.db $02
B26_1ab0:		beq B26_1a8e ; f0 dc

B26_1ab2:	.db $02
B26_1ab3:		sed				; f8 
B26_1ab4:		sbc ($de), y	; f1 de
B26_1ab6:		.db $00				; 00
B26_1ab7:	.db $02
B26_1ab8:		beq B26_1a98 ; f0 de

B26_1aba:	.db $42
B26_1abb:		sed				; f8 
B26_1abc:		sbc ($dc), y	; f1 dc
B26_1abe:		.db $00				; 00
B26_1abf:	.db $02
B26_1ac0:		beq B26_1aa0 ; f0 de

B26_1ac2:	.db $c2
B26_1ac3:		sed				; f8 
B26_1ac4:		sbc ($dc), y	; f1 dc
B26_1ac6:		.db $00				; 00
B26_1ac7:	.db $02
B26_1ac8:		beq B26_1aa6 ; f0 dc

B26_1aca:	.db $82
B26_1acb:		sed				; f8 
B26_1acc:		sbc ($de), y	; f1 de
B26_1ace:		.db $00				; 00
B26_1acf:	.db $04
B26_1ad0:		beq B26_1ac4 ; f0 f2

B26_1ad2:		.db $00				; 00
B26_1ad3:		beq B26_1ac6 ; f0 f1

B26_1ad5:	.db $f4
B26_1ad6:		sed				; f8 
B26_1ad7:		sbc ($f6), y	; f1 f6
B26_1ad9:		.db $00				; 00
B26_1ada:		sbc ($f8), y	; f1 f8
B26_1adc:		php				; 08 
B26_1add:	.db $03
B26_1ade:		beq B26_1ac0 ; f0 e0

B26_1ae0:		.db $00				; 00
B26_1ae1:	.db $f4
B26_1ae2:		sbc ($e2), y	; f1 e2
B26_1ae4:	.db $fc
B26_1ae5:		sbc ($e4), y	; f1 e4
B26_1ae7:	.db $04
B26_1ae8:	.db $02
B26_1ae9:		;removed
	.db $f0 $ca

B26_1aeb:	.db $02
B26_1aec:		sed				; f8 
B26_1aed:		sbc ($cc), y	; f1 cc
B26_1aef:		.db $00				; 00
B26_1af0:	.db $0c
B26_1af1:		cpx #$82		; e0 82
B26_1af3:	.db $02
B26_1af4:		sed				; f8 
B26_1af5:		sbc ($84, x)	; e1 84
B26_1af7:		.db $00				; 00
B26_1af8:		sbc ($86, x)	; e1 86
B26_1afa:		php				; 08 
B26_1afb:		sbc ($88, x)	; e1 88
B26_1afd:		bpl B26_1ae0 ; 10 e1

B26_1aff:		txa				; 8a 
B26_1b00:		clc				; 18 
B26_1b01:		ora ($8c, x)	; 01 8c
B26_1b03:		sed				; f8 
B26_1b04:		ora ($8e, x)	; 01 8e
B26_1b06:		.db $00				; 00
B26_1b07:		ora ($90, x)	; 01 90
B26_1b09:		php				; 08 
B26_1b0a:		ora ($92, x)	; 01 92
B26_1b0c:		;removed
	.db $10 $01

B26_1b0e:		cpx #$f0		; e0 f0
B26_1b10:		cpx #$8a		; e0 8a
B26_1b12:	.db $42
B26_1b13:		inx				; e8 
B26_1b14:		sbc ($88, x)	; e1 88
B26_1b16:		;removed
	.db $f0 $08

B26_1b18:		bne B26_1aae ; d0 94

B26_1b1a:	.db $02
B26_1b1b:		sed				; f8 
B26_1b1c:		cmp ($96), y	; d1 96
B26_1b1e:		.db $00				; 00
B26_1b1f:		sbc ($98), y	; f1 98
B26_1b21:	.db $f7
B26_1b22:		sbc ($9a), y	; f1 9a
B26_1b24:	.db $ff
B26_1b25:		sbc ($9c), y	; f1 9c
B26_1b27:	.db $07
B26_1b28:		ora ($9e), y	; 11 9e
B26_1b2a:		inc $11, x		; f6 11
B26_1b2c:		ldy #$fe		; a0 fe
B26_1b2e:		ora ($a2), y	; 11 a2
B26_1b30:		asl $07			; 06 07
B26_1b32:		cpx #$a4		; e0 a4
B26_1b34:	.db $02
B26_1b35:		beq B26_1b18 ; f0 e1

B26_1b37:		ldx $f8			; a6 f8
B26_1b39:		sbc ($a8, x)	; e1 a8
B26_1b3b:		.db $00				; 00
B26_1b3c:		sbc ($aa, x)	; e1 aa
B26_1b3e:		php				; 08 
B26_1b3f:		sbc ($ac, x)	; e1 ac
B26_1b41:		;removed
	.db $10 $01

B26_1b43:		ldx $01f8		; ae f8 01
B26_1b46:		bcs B26_1b48 ; b0 00

B26_1b48:	.db $07
B26_1b49:		cpx #$b2		; e0 b2
B26_1b4b:	.db $02
B26_1b4c:		sbc $b4e1, y	; f9 e1 b4
B26_1b4f:	.db $ff
B26_1b50:		ora ($b6, x)	; 01 b6
B26_1b52:		sed				; f8 
B26_1b53:		ora ($b8, x)	; 01 b8
B26_1b55:		.db $00				; 00
B26_1b56:		ora ($ba, x)	; 01 ba
B26_1b58:		php				; 08 
B26_1b59:		and ($bc, x)	; 21 bc
B26_1b5b:	.db $fa
B26_1b5c:		and ($be, x)	; 21 be
B26_1b5e:	.db $02
B26_1b5f:	.db $03
B26_1b60:		beq B26_1b22 ; f0 c0

B26_1b62:	.db $02
B26_1b63:		sed				; f8 
B26_1b64:		sbc ($c2), y	; f1 c2
B26_1b66:		.db $00				; 00
B26_1b67:		sbc ($c4), y	; f1 c4
B26_1b69:		php				; 08 
B26_1b6a:	.db $03
B26_1b6b:		;removed
	.db $f0 $c6

B26_1b6d:	.db $02
B26_1b6e:	.db $fb
B26_1b6f:		sbc ($c8), y	; f1 c8
B26_1b71:	.db $03
B26_1b72:		ora ($ca, x)	; 01 ca
B26_1b74:	.db $fb
B26_1b75:		ora ($cc, x)	; 01 cc
B26_1b77:	.db $03
B26_1b78:	.db $02
B26_1b79:		beq B26_1b49 ; f0 ce

B26_1b7b:	.db $02
B26_1b7c:		sed				; f8 
B26_1b7d:		sbc ($d0), y	; f1 d0
B26_1b7f:		.db $00				; 00
B26_1b80:	.db $02
B26_1b81:		sed				; f8 
B26_1b82:	.db $d2
B26_1b83:	.db $02
B26_1b84:		sed				; f8 
B26_1b85:	.db $f9 $d4 $00
B26_1b88:	.db $04
B26_1b89:		cpx #$d6		; e0 d6
B26_1b8b:	.db $02
B26_1b8c:		sed				; f8 
B26_1b8d:		sbc ($d8, x)	; e1 d8
B26_1b8f:		.db $00				; 00
B26_1b90:		ora ($da, x)	; 01 da
B26_1b92:		sed				; f8 
B26_1b93:		ora ($dc, x)	; 01 dc
B26_1b95:		.db $00				; 00
B26_1b96:	.db $0c
B26_1b97:		cpx #$8c		; e0 8c
B26_1b99:	.db $82
B26_1b9a:		sed				; f8 
B26_1b9b:		sbc ($8e, x)	; e1 8e
B26_1b9d:		.db $00				; 00
B26_1b9e:		sbc ($90, x)	; e1 90
B26_1ba0:		php				; 08 
B26_1ba1:		sbc ($92, x)	; e1 92
B26_1ba3:		;removed
	.db $10 $e1

B26_1ba5:		cpx #$f0		; e0 f0
B26_1ba7:		ora ($82, x)	; 01 82
B26_1ba9:		sed				; f8 
B26_1baa:		ora ($84, x)	; 01 84
B26_1bac:		.db $00				; 00
B26_1bad:		ora ($86, x)	; 01 86
B26_1baf:		php				; 08 
B26_1bb0:		ora ($88, x)	; 01 88
B26_1bb2:		bpl B26_1bb5 ; 10 01

B26_1bb4:		txa				; 8a 
B26_1bb5:		clc				; 18 
B26_1bb6:		.db $00				; 00
B26_1bb7:		txa				; 8a 
B26_1bb8:	.db $c2
B26_1bb9:		inx				; e8 
B26_1bba:		ora ($88, x)	; 01 88
B26_1bbc:		;removed
	.db $f0 $08

B26_1bbe:		bne B26_1b5e ; d0 9e

B26_1bc0:	.db $82
B26_1bc1:		inc $d1, x		; f6 d1
B26_1bc3:		ldy #$fe		; a0 fe
B26_1bc5:		cmp ($a2), y	; d1 a2
B26_1bc7:		asl $f1			; 06 f1
B26_1bc9:		tya				; 98 
B26_1bca:	.db $f7
B26_1bcb:		sbc ($9a), y	; f1 9a
B26_1bcd:	.db $ff
B26_1bce:		sbc ($9c), y	; f1 9c
B26_1bd0:	.db $07
B26_1bd1:		ora ($94), y	; 11 94
B26_1bd3:		sed				; f8 
B26_1bd4:		ora ($96), y	; 11 96
B26_1bd6:		.db $00				; 00
B26_1bd7:		ora ($00, x)	; 01 00
B26_1bd9:	.db $80
B26_1bda:	.db $03
B26_1bdb:		.db $00				; 00
B26_1bdc:		php				; 08 
B26_1bdd:		cpx #$82		; e0 82
B26_1bdf:		ora ($f4, x)	; 01 f4
B26_1be1:		sbc ($84, x)	; e1 84
B26_1be3:	.db $fc
B26_1be4:		sbc ($86, x)	; e1 86
B26_1be6:	.db $04
B26_1be7:		sbc ($88, x)	; e1 88
B26_1be9:	.db $0c
B26_1bea:		ora ($8a, x)	; 01 8a
B26_1bec:	.db $f4
B26_1bed:		ora ($8c, x)	; 01 8c
B26_1bef:	.db $fc
B26_1bf0:		ora ($8e, x)	; 01 8e
B26_1bf2:	.db $04
B26_1bf3:		ora ($90, x)	; 01 90
B26_1bf5:	.db $0c
B26_1bf6:		asl a			; 0a
B26_1bf7:	.db $d4
B26_1bf8:	.db $92
B26_1bf9:		ora ($f4, x)	; 01 f4
B26_1bfb:		cmp ($94), y	; d1 94
B26_1bfd:	.db $fc
B26_1bfe:		cmp ($96), y	; d1 96
B26_1c00:	.db $04
B26_1c01:		cmp $98, x		; d5 98
B26_1c03:	.db $0c
B26_1c04:		cpx #$be		; e0 be
B26_1c06:	.db $03
B26_1c07:		sed				; f8 
B26_1c08:		sbc ($c0, x)	; e1 c0
B26_1c0a:		.db $00				; 00
B26_1c0b:		sbc ($c2, x)	; e1 c2
B26_1c0d:		php				; 08 
B26_1c0e:		ora ($c4, x)	; 01 c4
B26_1c10:		sed				; f8 
B26_1c11:		ora ($c6, x)	; 01 c6
B26_1c13:		.db $00				; 00
B26_1c14:		ora ($c8, x)	; 01 c8
B26_1c16:		php				; 08 
B26_1c17:		asl $b6b0		; 0e b0 b6
B26_1c1a:	.db $03
B26_1c1b:	.db $ff
B26_1c1c:		ldy #$9a		; a0 9a
B26_1c1e:		ora ($f4, x)	; 01 f4
B26_1c20:		lda ($9c, x)	; a1 9c
B26_1c22:	.db $fc
B26_1c23:		lda ($9e, x)	; a1 9e
B26_1c25:	.db $04
B26_1c26:		lda ($a0, x)	; a1 a0
B26_1c28:	.db $0c
B26_1c29:		cpy #$b8		; c0 b8
B26_1c2b:	.db $03
B26_1c2c:		sed				; f8 
B26_1c2d:		cmp ($ba, x)	; c1 ba
B26_1c2f:		.db $00				; 00
B26_1c30:		cmp ($bc, x)	; c1 bc
B26_1c32:		php				; 08 
B26_1c33:		sbc ($be, x)	; e1 be
B26_1c35:		sed				; f8 
B26_1c36:		sbc ($c0, x)	; e1 c0
B26_1c38:		.db $00				; 00
B26_1c39:		sbc ($c2, x)	; e1 c2
B26_1c3b:		php				; 08 
B26_1c3c:		ora ($c4, x)	; 01 c4
B26_1c3e:		sed				; f8 
B26_1c3f:		ora ($c6, x)	; 01 c6
B26_1c41:		.db $00				; 00
B26_1c42:		ora ($c8, x)	; 01 c8
B26_1c44:		php				; 08 
B26_1c45:		asl a			; 0a
B26_1c46:		bcs B26_1bfe ; b0 b6

B26_1c48:		ora ($ff, x)	; 01 ff
B26_1c4a:		cpy #$b8		; c0 b8
B26_1c4c:	.db $03
B26_1c4d:		sed				; f8 
B26_1c4e:		cmp ($ba, x)	; c1 ba
B26_1c50:		.db $00				; 00
B26_1c51:		cmp ($bc, x)	; c1 bc
B26_1c53:		php				; 08 
B26_1c54:		sbc ($be, x)	; e1 be
B26_1c56:		sed				; f8 
B26_1c57:		sbc ($c0, x)	; e1 c0
B26_1c59:		.db $00				; 00
B26_1c5a:		sbc ($c2, x)	; e1 c2
B26_1c5c:		php				; 08 
B26_1c5d:		ora ($c4, x)	; 01 c4
B26_1c5f:		sed				; f8 
B26_1c60:		ora ($c6, x)	; 01 c6
B26_1c62:		.db $00				; 00
B26_1c63:		ora ($c8, x)	; 01 c8
B26_1c65:		php				; 08 
B26_1c66:		asl a			; 0a
B26_1c67:		;removed
	.db $b0 $b6

B26_1c69:		ora ($ff, x)	; 01 ff
B26_1c6b:		cpy #$ca		; c0 ca
B26_1c6d:	.db $03
B26_1c6e:		sed				; f8 
B26_1c6f:		cmp ($ba, x)	; c1 ba
B26_1c71:		.db $00				; 00
B26_1c72:		cmp ($bc, x)	; c1 bc
B26_1c74:		php				; 08 
B26_1c75:		sbc ($cc, x)	; e1 cc
B26_1c77:		sed				; f8 
B26_1c78:		sbc ($ce, x)	; e1 ce
B26_1c7a:		.db $00				; 00
B26_1c7b:		sbc ($c2, x)	; e1 c2
B26_1c7d:		php				; 08 
B26_1c7e:		ora ($d0, x)	; 01 d0
B26_1c80:		sed				; f8 
B26_1c81:		ora ($d2, x)	; 01 d2
B26_1c83:		.db $00				; 00
B26_1c84:		ora ($c8, x)	; 01 c8
B26_1c86:		php				; 08 
B26_1c87:		ora $b6b0		; 0d b0 b6
B26_1c8a:		ora ($ff, x)	; 01 ff
B26_1c8c:		cpy #$d4		; c0 d4
B26_1c8e:	.db $03
B26_1c8f:		sed				; f8 
B26_1c90:		cmp ($d6, x)	; c1 d6
B26_1c92:		.db $00				; 00
B26_1c93:		cmp ($d8, x)	; c1 d8
B26_1c95:		php				; 08 
B26_1c96:		cmp ($da, x)	; c1 da
B26_1c98:		bpl B26_1c7b ; 10 e1

B26_1c9a:		cpy $e1f8		; cc f8 e1
B26_1c9d:		nop				; ea 
B26_1c9e:		.db $00				; 00
B26_1c9f:		sbc ($ea, x)	; e1 ea
B26_1ca1:		php				; 08 
B26_1ca2:		sbc ($dc, x)	; e1 dc
B26_1ca4:		;removed
	.db $10 $01

B26_1ca6:		;removed
	.db $d0 $f8

B26_1ca8:		ora ($ea, x)	; 01 ea
B26_1caa:		.db $00				; 00
B26_1cab:		ora ($ea, x)	; 01 ea
B26_1cad:		php				; 08 
B26_1cae:		ora ($de, x)	; 01 de
B26_1cb0:		bpl B26_1cb5 ; 10 03

B26_1cb2:		beq B26_1c56 ; f0 a2

B26_1cb4:	.db $03
B26_1cb5:	.db $f4
B26_1cb6:		sbc ($a4), y	; f1 a4
B26_1cb8:	.db $fc
B26_1cb9:		beq B26_1c5d ; f0 a2

B26_1cbb:	.db $43
B26_1cbc:	.db $04
B26_1cbd:	.db $02
B26_1cbe:		beq B26_1c66 ; f0 a6

B26_1cc0:	.db $03
B26_1cc1:		sed				; f8 
B26_1cc2:		;removed
	.db $f0 $a6

B26_1cc4:	.db $43
B26_1cc5:		.db $00				; 00
B26_1cc6:	.db $02
B26_1cc7:		beq B26_1c71 ; f0 a8

B26_1cc9:	.db $03
B26_1cca:		sed				; f8 
B26_1ccb:		sbc ($aa), y	; f1 aa
B26_1ccd:		.db $00				; 00
B26_1cce:	.db $02
B26_1ccf:		beq B26_1c7d ; f0 ac

B26_1cd1:	.db $03
B26_1cd2:		sed				; f8 
B26_1cd3:		sbc ($ae), y	; f1 ae
B26_1cd5:		.db $00				; 00
B26_1cd6:	.db $02
B26_1cd7:		;removed
	.db $f0 $ac

B26_1cd9:	.db $83
B26_1cda:		sed				; f8 
B26_1cdb:		sbc ($ae), y	; f1 ae
B26_1cdd:		.db $00				; 00
B26_1cde:		ora #$c6		; 09 c6
B26_1ce0:		clv				; b8 
B26_1ce1:	.db $03
B26_1ce2:		sed				; f8 
B26_1ce3:	.db $c7
B26_1ce4:		tsx				; ba 
B26_1ce5:		.db $00				; 00
B26_1ce6:	.db $c7
B26_1ce7:		ldy $e108, x	; bc 08 e1
B26_1cea:		clv				; b8 
B26_1ceb:		sed				; f8 
B26_1cec:		sbc ($c0, x)	; e1 c0
B26_1cee:		.db $00				; 00
B26_1cef:		sbc ($c2, x)	; e1 c2
B26_1cf1:		php				; 08 
B26_1cf2:		ora ($c4, x)	; 01 c4
B26_1cf4:		sed				; f8 
B26_1cf5:		ora ($c6, x)	; 01 c6
B26_1cf7:		.db $00				; 00
B26_1cf8:		ora ($c8, x)	; 01 c8
B26_1cfa:		php				; 08 
B26_1cfb:		php				; 08 
B26_1cfc:		.db $00				; 00
B26_1cfd:	.db $e2
B26_1cfe:	.db $03
B26_1cff:		beq B26_1d02 ; f0 01

B26_1d01:		nop				; ea 
B26_1d02:		sed				; f8 
B26_1d03:		ora ($e4, x)	; 01 e4
B26_1d05:		.db $00				; 00
B26_1d06:		ora ($e6, x)	; 01 e6
B26_1d08:		php				; 08 
B26_1d09:		ora ($e8, x)	; 01 e8
B26_1d0b:		bpl B26_1cf4 ; 10 e7

B26_1d0d:		clv				; b8 
B26_1d0e:		sed				; f8 
B26_1d0f:	.db $e7
B26_1d10:		tsx				; ba 
B26_1d11:		.db $00				; 00
B26_1d12:	.db $e7
B26_1d13:		ldy $0508, x	; bc 08 05
B26_1d16:		.db $00				; 00
B26_1d17:		cpx $f003		; ec 03 f0
B26_1d1a:		ora ($ee, x)	; 01 ee
B26_1d1c:		sed				; f8 
B26_1d1d:		ora ($f0, x)	; 01 f0
B26_1d1f:		.db $00				; 00
B26_1d20:		ora ($f2, x)	; 01 f2
B26_1d22:		php				; 08 
B26_1d23:		ora ($f4, x)	; 01 f4
B26_1d25:		;removed
	.db $10 $05

B26_1d27:		.db $00				; 00
B26_1d28:		cpx $f001		; ec 01 f0
B26_1d2b:		ora ($ee, x)	; 01 ee
B26_1d2d:		sed				; f8 
B26_1d2e:		ora ($f0, x)	; 01 f0
B26_1d30:		.db $00				; 00
B26_1d31:		ora ($f2, x)	; 01 f2
B26_1d33:		php				; 08 
B26_1d34:		ora ($f4, x)	; 01 f4
B26_1d36:		bpl B26_1d3c ; 10 04

B26_1d38:		.db $00				; 00
B26_1d39:		inc $02, x		; f6 02
B26_1d3b:	.db $f4
B26_1d3c:		ora ($f8, x)	; 01 f8
B26_1d3e:	.db $fc
B26_1d3f:		ora ($fa, x)	; 01 fa
B26_1d41:	.db $04
B26_1d42:		ora ($fc, x)	; 01 fc
B26_1d44:	.db $0c
B26_1d45:	.db $04
B26_1d46:		.db $00				; 00
B26_1d47:		inc $01, x		; f6 01
B26_1d49:	.db $f4
B26_1d4a:		ora ($f8, x)	; 01 f8
B26_1d4c:	.db $fc
B26_1d4d:		ora ($fa, x)	; 01 fa
B26_1d4f:	.db $04
B26_1d50:		ora ($fc, x)	; 01 fc
B26_1d52:	.db $0c
B26_1d53:	.db $04
B26_1d54:		cpx #$57		; e0 57
B26_1d56:		ora ($f8, x)	; 01 f8
B26_1d58:		sbc ($59, x)	; e1 59
B26_1d5a:		.db $00				; 00
B26_1d5b:		ora ($69, x)	; 01 69
B26_1d5d:		sed				; f8 
B26_1d5e:		ora ($6b, x)	; 01 6b
B26_1d60:		.db $00				; 00
B26_1d61:	.db $04
B26_1d62:		cpx #$57		; e0 57
B26_1d64:	.db $03
B26_1d65:		sed				; f8 
B26_1d66:		sbc ($59, x)	; e1 59
B26_1d68:		.db $00				; 00
B26_1d69:		ora ($69, x)	; 01 69
B26_1d6b:		sed				; f8 
B26_1d6c:		ora ($6b, x)	; 01 6b
B26_1d6e:		.db $00				; 00
B26_1d6f:	.db $04
B26_1d70:		cpx #$d4		; e0 d4
B26_1d72:	.db $02
B26_1d73:	.db $f7
B26_1d74:		sbc ($d6, x)	; e1 d6
B26_1d76:	.db $ff
B26_1d77:		ora ($d8, x)	; 01 d8
B26_1d79:		sbc $da01, y	; f9 01 da
B26_1d7c:		ora ($03, x)	; 01 03
B26_1d7e:		nop				; ea 
B26_1d7f:		cpy #$02		; c0 02
B26_1d81:	.db $f4
B26_1d82:	.db $ef
B26_1d83:	.db $c2
B26_1d84:	.db $fc
B26_1d85:		sbc ($c4), y	; f1 c4
B26_1d87:	.db $04
B26_1d88:	.db $03
B26_1d89:	.db $f2
B26_1d8a:		dec $02			; c6 02
B26_1d8c:	.db $f4
B26_1d8d:		sbc ($c8), y	; f1 c8
B26_1d8f:	.db $fc
B26_1d90:	.db $ef
B26_1d91:		dex				; ca 
B26_1d92:	.db $04
B26_1d93:	.db $04
B26_1d94:		cpx #$ce		; e0 ce
B26_1d96:	.db $02
B26_1d97:	.db $fc
B26_1d98:		sbc ($d0, x)	; e1 d0
B26_1d9a:	.db $04
B26_1d9b:		sbc ($cc), y	; f1 cc
B26_1d9d:	.db $f4
B26_1d9e:		ora ($d2, x)	; 01 d2
B26_1da0:	.db $fc
B26_1da1:	.db $04
B26_1da2:		cpx #$da		; e0 da
B26_1da4:	.db $c2
B26_1da5:	.db $f7
B26_1da6:		sbc ($d8, x)	; e1 d8
B26_1da8:	.db $ff
B26_1da9:		ora ($d6, x)	; 01 d6
B26_1dab:		sbc $d401, y	; f9 01 d4
B26_1dae:		ora ($02, x)	; 01 02
B26_1db0:		beq B26_1d94 ; f0 e2

B26_1db2:	.db $02
B26_1db3:		sed				; f8 
B26_1db4:		sbc ($e4), y	; f1 e4
B26_1db6:		.db $00				; 00
B26_1db7:	.db $02
B26_1db8:		beq B26_1d98 ; f0 de

B26_1dba:	.db $02
B26_1dbb:		sed				; f8 
B26_1dbc:		sbc ($e0), y	; f1 e0
B26_1dbe:		.db $00				; 00
B26_1dbf:		ora ($f0, x)	; 01 f0
B26_1dc1:	.db $dc
B26_1dc2:	.db $02
B26_1dc3:	.db $fc
B26_1dc4:	.db $02
B26_1dc5:		;removed
	.db $f0 $e0

B26_1dc7:	.db $42
B26_1dc8:		sed				; f8 
B26_1dc9:		sbc ($de), y	; f1 de
B26_1dcb:		.db $00				; 00
B26_1dcc:	.db $02
B26_1dcd:		beq B26_1db3 ; f0 e4

B26_1dcf:	.db $42
B26_1dd0:		sed				; f8 
B26_1dd1:		sbc ($e2), y	; f1 e2
B26_1dd3:		.db $00				; 00
B26_1dd4:		ora ($f0, x)	; 01 f0
B26_1dd6:		nop				; ea 
B26_1dd7:	.db $02
B26_1dd8:	.db $fc
B26_1dd9:		ora ($f0, x)	; 01 f0
B26_1ddb:		inx				; e8 
B26_1ddc:	.db $02
B26_1ddd:	.db $fc
B26_1dde:		ora ($f0, x)	; 01 f0
B26_1de0:		inc $02			; e6 02
B26_1de2:	.db $fc
B26_1de3:		ora ($f0, x)	; 01 f0
B26_1de5:		inx				; e8 
B26_1de6:	.db $82
B26_1de7:	.db $fc
B26_1de8:		ora ($f0, x)	; 01 f0
B26_1dea:		nop				; ea 
B26_1deb:	.db $82
B26_1dec:	.db $fc
B26_1ded:		ora ($00, x)	; 01 00
B26_1def:		ldx $01, y		; b6 01
B26_1df1:	.db $fc
B26_1df2:	.db $02
B26_1df3:		.db $00				; 00
B26_1df4:		clv				; b8 
B26_1df5:		ora ($f8, x)	; 01 f8
B26_1df7:		.db $00				; 00
B26_1df8:		clv				; b8 
B26_1df9:		eor ($00, x)	; 41 00
B26_1dfb:		php				; 08 
B26_1dfc:		cpy #$ba		; c0 ba
B26_1dfe:		ora ($f8, x)	; 01 f8
B26_1e00:		cpy #$ee		; c0 ee
B26_1e02:		eor ($00, x)	; 41 00
B26_1e04:		cpx #$bc		; e0 bc
B26_1e06:		ora ($f8, x)	; 01 f8
B26_1e08:		cpx #$bc		; e0 bc
B26_1e0a:		eor ($00, x)	; 41 00
B26_1e0c:		.db $00				; 00
B26_1e0d:		ldx $f001, y	; be 01 f0
B26_1e10:		ora ($ec, x)	; 01 ec
B26_1e12:		sed				; f8 
B26_1e13:		.db $00				; 00
B26_1e14:	.db $ec $41 $00
B26_1e17:		ora ($be, x)	; 01 be
B26_1e19:		php				; 08 
B26_1e1a:		asl $e0			; 06 e0
B26_1e1c:		inc $f801		; ee 01 f8
B26_1e1f:		cpx #$ba		; e0 ba
B26_1e21:		eor ($00, x)	; 41 00
B26_1e23:		.db $00				; 00
B26_1e24:		;removed
	.db $f0 $01

B26_1e26:		beq B26_1e29 ; f0 01

B26_1e28:	.db $f2
B26_1e29:		sed				; f8 
B26_1e2a:		.db $00				; 00
B26_1e2b:	.db $f2
B26_1e2c:		eor ($00, x)	; 41 00
B26_1e2e:		ora ($f0, x)	; 01 f0
B26_1e30:		php				; 08 
B26_1e31:	.db $04
B26_1e32:		.db $00				; 00
B26_1e33:	.db $f4
B26_1e34:		ora ($f0, x)	; 01 f0
B26_1e36:		ora ($f6, x)	; 01 f6
B26_1e38:		sed				; f8 
B26_1e39:		.db $00				; 00
B26_1e3a:		inc $41, x		; f6 41
B26_1e3c:		.db $00				; 00
B26_1e3d:		ora ($f4, x)	; 01 f4
B26_1e3f:		php				; 08 
B26_1e40:	.db $04
B26_1e41:		.db $00				; 00
B26_1e42:		sed				; f8 
B26_1e43:		ora ($f0, x)	; 01 f0
B26_1e45:		ora ($f8, x)	; 01 f8
B26_1e47:		sed				; f8 
B26_1e48:		.db $00				; 00
B26_1e49:		sed				; f8 
B26_1e4a:		eor ($00, x)	; 41 00
B26_1e4c:		ora ($f8, x)	; 01 f8
B26_1e4e:		php				; 08 
B26_1e4f:	.db $0c
B26_1e50:	.db $c2
B26_1e51:	.db $80
B26_1e52:	.db $02
B26_1e53:	.db $ef
B26_1e54:		cmp ($82, x)	; c1 82
B26_1e56:	.db $f7
B26_1e57:		cmp ($84, x)	; c1 84
B26_1e59:		.db $00				; 00
B26_1e5a:		sbc ($86, x)	; e1 86
B26_1e5c:	.db $f2
B26_1e5d:		sbc ($88, x)	; e1 88
B26_1e5f:	.db $fa
B26_1e60:		sbc ($8a, x)	; e1 8a
B26_1e62:	.db $02
B26_1e63:		ora ($8c, x)	; 01 8c
B26_1e65:		;removed
	.db $f0 $01

B26_1e67:		stx $01f8		; 8e f8 01
B26_1e6a:		bcc B26_1e6c ; 90 00

B26_1e6c:		and ($92, x)	; 21 92
B26_1e6e:	.db $f3
B26_1e6f:		and ($94, x)	; 21 94
B26_1e71:	.db $fb
B26_1e72:		and ($96, x)	; 21 96
B26_1e74:	.db $03
B26_1e75:		asl a			; 0a
B26_1e76:		cpy #$80		; c0 80
B26_1e78:	.db $02
B26_1e79:		beq B26_1e3c ; f0 c1

B26_1e7b:		tya				; 98 
B26_1e7c:		sed				; f8 
B26_1e7d:		cmp ($9a, x)	; c1 9a
B26_1e7f:		.db $00				; 00
B26_1e80:		sbc ($9c, x)	; e1 9c
B26_1e82:		beq B26_1e65 ; f0 e1

B26_1e84:	.db $9e
B26_1e85:		sed				; f8 
B26_1e86:		sbc ($a0, x)	; e1 a0
B26_1e88:		.db $00				; 00
B26_1e89:		ora ($a2, x)	; 01 a2
B26_1e8b:		inc $01, x		; f6 01
B26_1e8d:		ldy $fe			; a4 fe
B26_1e8f:		and ($a6, x)	; 21 a6
B26_1e91:		sed				; f8 
B26_1e92:		and ($a8, x)	; 21 a8
B26_1e94:		.db $00				; 00
B26_1e95:	.db $0c
B26_1e96:	.db $c2
B26_1e97:	.db $80
B26_1e98:	.db $02
B26_1e99:		sbc ($c1), y	; f1 c1
B26_1e9b:		tax				; aa 
B26_1e9c:		sbc $acc1, y	; f9 c1 ac
B26_1e9f:		ora ($e1, x)	; 01 e1
B26_1ea1:		ldx $e1f3		; ae f3 e1
B26_1ea4:		bcs B26_1ea1 ; b0 fb

B26_1ea6:		sbc ($b2, x)	; e1 b2
B26_1ea8:	.db $03
B26_1ea9:		ora ($b4, x)	; 01 b4
B26_1eab:	.db $f2
B26_1eac:		ora ($b6, x)	; 01 b6
B26_1eae:	.db $fa
B26_1eaf:		ora ($b8, x)	; 01 b8
B26_1eb1:	.db $02
B26_1eb2:		and ($ba, x)	; 21 ba
B26_1eb4:	.db $f3
B26_1eb5:		and ($bc, x)	; 21 bc
B26_1eb7:	.db $fb
B26_1eb8:		and ($be, x)	; 21 be
B26_1eba:	.db $03
B26_1ebb:	.db $0c
B26_1ebc:	.db $c2
B26_1ebd:	.db $80
B26_1ebe:	.db $02
B26_1ebf:	.db $f4
B26_1ec0:		cmp ($82, x)	; c1 82
B26_1ec2:	.db $fc
B26_1ec3:		cmp ($84, x)	; c1 84
B26_1ec5:	.db $04
B26_1ec6:		sbc ($86, x)	; e1 86
B26_1ec8:		sbc $e1, x		; f5 e1
B26_1eca:		dey				; 88 
B26_1ecb:		sbc $8ae1, x	; fd e1 8a
B26_1ece:		ora $01			; 05 01
B26_1ed0:		cpy #$f1		; c0 f1
B26_1ed2:		ora ($c2, x)	; 01 c2
B26_1ed4:		sbc $9001, y	; f9 01 90
B26_1ed7:		ora ($21, x)	; 01 21
B26_1ed9:		cpy $f0			; c4 f0
B26_1edb:		and ($c6, x)	; 21 c6
B26_1edd:	.db $fb
B26_1ede:		and ($96, x)	; 21 96
B26_1ee0:	.db $03
B26_1ee1:		ora $80c2		; 0d c2 80
B26_1ee4:	.db $02
B26_1ee5:		inc $c1, x		; f6 c1
B26_1ee7:	.db $82
B26_1ee8:		inc $84c1, x	; fe c1 84
B26_1eeb:		asl $e1			; 06 e1
B26_1eed:		iny				; c8 
B26_1eee:		;removed
	.db $f0 $e1

B26_1ef0:		dex				; ca 
B26_1ef1:		sed				; f8 
B26_1ef2:		sbc ($cc, x)	; e1 cc
B26_1ef4:		.db $00				; 00
B26_1ef5:		sbc ($ce, x)	; e1 ce
B26_1ef7:		php				; 08 
B26_1ef8:		ora ($d0, x)	; 01 d0
B26_1efa:	.db $eb
B26_1efb:		ora ($d2, x)	; 01 d2
B26_1efd:	.db $f3
B26_1efe:		ora ($d4, x)	; 01 d4
B26_1f00:	.db $fb
B26_1f01:		ora ($d6, x)	; 01 d6
B26_1f03:	.db $03
B26_1f04:		and ($d8, x)	; 21 d8
B26_1f06:	.db $fb
B26_1f07:		and ($da, x)	; 21 da
B26_1f09:	.db $03
B26_1f0a:	.db $0c
B26_1f0b:	.db $c2
B26_1f0c:	.db $80
B26_1f0d:	.db $02
B26_1f0e:		cpx $82c1		; ec c1 82
B26_1f11:	.db $f4
B26_1f12:		cmp ($84, x)	; c1 84
B26_1f14:	.db $fc
B26_1f15:		sbc ($86, x)	; e1 86
B26_1f17:		beq B26_1efa ; f0 e1

B26_1f19:		dey				; 88 
B26_1f1a:		sed				; f8 
B26_1f1b:		sbc ($8a, x)	; e1 8a
B26_1f1d:		.db $00				; 00
B26_1f1e:		ora ($8c, x)	; 01 8c
B26_1f20:	.db $ef
B26_1f21:		ora ($8e, x)	; 01 8e
B26_1f23:	.db $f7
B26_1f24:		ora ($90, x)	; 01 90
B26_1f26:	.db $ff
B26_1f27:		and ($92, x)	; 21 92
B26_1f29:	.db $f3
B26_1f2a:		and ($94, x)	; 21 94
B26_1f2c:	.db $fb
B26_1f2d:		and ($96, x)	; 21 96
B26_1f2f:	.db $03
B26_1f30:	.db $0c
B26_1f31:		cpy #$dc		; c0 dc
B26_1f33:	.db $02
B26_1f34:	.db $f4
B26_1f35:		cmp ($de, x)	; c1 de
B26_1f37:	.db $fc
B26_1f38:		cmp ($e0, x)	; c1 e0
B26_1f3a:	.db $04
B26_1f3b:		sbc ($e2, x)	; e1 e2
B26_1f3d:	.db $f4
B26_1f3e:		sbc ($9e, x)	; e1 9e
B26_1f40:	.db $fc
B26_1f41:		sbc ($a0, x)	; e1 a0
B26_1f43:	.db $04
B26_1f44:		ora ($e4, x)	; 01 e4
B26_1f46:		sbc ($01), y	; f1 01
B26_1f48:		stx $01f7		; 8e f7 01
B26_1f4b:		;removed
	.db $90 $01

B26_1f4d:		and ($92, x)	; 21 92
B26_1f4f:	.db $f3
B26_1f50:		and ($94, x)	; 21 94
B26_1f52:	.db $fb
B26_1f53:		and ($96, x)	; 21 96
B26_1f55:	.db $03
B26_1f56:		asl $80c2		; 0e c2 80
B26_1f59:	.db $02
B26_1f5a:		cpx $82c1		; ec c1 82
B26_1f5d:	.db $f4
B26_1f5e:		cmp ($84, x)	; c1 84
B26_1f60:	.db $fc
B26_1f61:		sbc ($e6, x)	; e1 e6
B26_1f63:		cpx #$e1		; e0 e1
B26_1f65:		inx				; e8 
B26_1f66:		inx				; e8 
B26_1f67:		sbc ($ea, x)	; e1 ea
B26_1f69:		;removed
	.db $f0 $e1

B26_1f6b:		dey				; 88 
B26_1f6c:		sed				; f8 
B26_1f6d:		sbc ($8a, x)	; e1 8a
B26_1f6f:		.db $00				; 00
B26_1f70:		ora ($e4, x)	; 01 e4
B26_1f72:	.db $ef
B26_1f73:		ora ($8e, x)	; 01 8e
B26_1f75:	.db $f7
B26_1f76:		ora ($90, x)	; 01 90
B26_1f78:	.db $ff
B26_1f79:		and ($92, x)	; 21 92
B26_1f7b:	.db $f3
B26_1f7c:		and ($94, x)	; 21 94
B26_1f7e:	.db $fb
B26_1f7f:		and ($96, x)	; 21 96
B26_1f81:	.db $03
B26_1f82:		ora #$c2		; 09 c2
B26_1f84:	.db $80
B26_1f85:	.db $02
B26_1f86:		cpx $82c1		; ec c1 82
B26_1f89:	.db $f4
B26_1f8a:		cmp ($84, x)	; c1 84
B26_1f8c:	.db $fc
B26_1f8d:		sbc ($86, x)	; e1 86
B26_1f8f:		beq B26_1f72 ; f0 e1

B26_1f91:		dey				; 88 
B26_1f92:		sed				; f8 
B26_1f93:		sbc ($8a, x)	; e1 8a
B26_1f95:		.db $00				; 00
B26_1f96:		ora ($ec, x)	; 01 ec
B26_1f98:	.db $f3
B26_1f99:		ora ($ee, x)	; 01 ee
B26_1f9b:	.db $fb
B26_1f9c:		ora ($f0, x)	; 01 f0
B26_1f9e:	.db $03
B26_1f9f:		asl $c2			; 06 c2
B26_1fa1:	.db $80
B26_1fa2:	.db $02
B26_1fa3:		cpx $82c1		; ec c1 82
B26_1fa6:	.db $f4
B26_1fa7:		cmp ($84, x)	; c1 84
B26_1fa9:	.db $fc
B26_1faa:		sbc ($86, x)	; e1 86
B26_1fac:		beq B26_1f8f ; f0 e1

B26_1fae:		dey				; 88 
B26_1faf:		sed				; f8 
B26_1fb0:		sbc ($8a, x)	; e1 8a
B26_1fb2:		.db $00				; 00
B26_1fb3:	.db $0b
B26_1fb4:		cpy #$f2		; c0 f2
B26_1fb6:	.db $02
B26_1fb7:		sbc $f4c1, y	; f9 c1 f4
B26_1fba:		ora ($e1, x)	; 01 e1
B26_1fbc:		ldx $e1f5		; ae f5 e1
B26_1fbf:		;removed
	.db $b0 $fd

B26_1fc1:		sbc ($b2, x)	; e1 b2
B26_1fc3:		ora $01			; 05 01
B26_1fc5:		ldy $f2, x		; b4 f2
B26_1fc7:		ora ($b6, x)	; 01 b6
B26_1fc9:	.db $fa
B26_1fca:		ora ($b8, x)	; 01 b8
B26_1fcc:	.db $02
B26_1fcd:		and ($ba, x)	; 21 ba
B26_1fcf:	.db $f3
B26_1fd0:		and ($bc, x)	; 21 bc
B26_1fd2:	.db $fb
B26_1fd3:		and ($be, x)	; 21 be
B26_1fd5:	.db $03
B26_1fd6:		dec $a0, x		; d6 a0
B26_1fd8:		dec $56a0, x	; de a0 56
B26_1fdb:	.db $9f
B26_1fdc:		dec $a0, x		; d6 a0
B26_1fde:		inc $1597		; ee 97 15
B26_1fe1:		tya				; 98 
B26_1fe2:		rol $98, x		; 36 98
B26_1fe4:		stx $98, y		; 96 98
B26_1fe6:		cld				; d8 
B26_1fe7:		sta $a104, y	; 99 04 a1
B26_1fea:	.db $12
B26_1feb:		lda ($20, x)	; a1 20
B26_1fed:		lda ($2e, x)	; a1 2e
B26_1fef:		lda ($3f, x)	; a1 3f
B26_1ff1:		lda ($47, x)	; a1 47
B26_1ff3:		lda ($c3, x)	; a1 c3
B26_1ff5:		lda #$a5		; a9 a5
B26_1ff7:		lda #$af		; a9 af
B26_1ff9:		lda #$4f		; a9 4f
B26_1ffb:		lda ($5d, x)	; a1 5d
B26_1ffd:		lda ($71, x)	; a1 71
		.db $a1
