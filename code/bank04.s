B4_0000:		sty $a5			; 84 a5
B4_0002:	.db $32
B4_0003:		cmp #$0c		; c9 0c
B4_0005:		beq B4_0010 ; f0 09

B4_0007:		cmp #$0e		; c9 0e
B4_0009:		beq B4_0010 ; f0 05

B4_000b:		rts				; 60 


B4_000c:		lda $78			; a5 78
B4_000e:		;removed
	.db $d0 $f1

B4_0010:		ldx #$01		; a2 01
B4_0012:		lda $054e, x	; bd 4e 05
B4_0015:		cmp #$90		; c9 90
B4_0017:		bcs B4_002d ; b0 14

B4_0019:		sec				; 38 
B4_001a:		sbc #$79		; e9 79
B4_001c:		bcc B4_002d ; 90 0f

B4_001e:		asl a			; 0a
B4_001f:		tay				; a8 
B4_0020:		lda $8049, y	; b9 49 80
B4_0023:		sta $00			; 85 00
B4_0025:		lda $804a, y	; b9 4a 80
B4_0028:		sta $01			; 85 01
B4_002a:		jsr $8033		; 20 33 80
B4_002d:		inx				; e8 
B4_002e:		cpx #$13		; e0 13
B4_0030:		bne B4_0012 ; d0 e0

B4_0032:		rts				; 60 


B4_0033:	.db $6c $00 $00
B4_0036:		ldy #$00		; a0 00
B4_0038:		lda $8047, y	; b9 47 80
B4_003b:		sta $00			; 85 00
B4_003d:		lda $8048, y	; b9 48 80
B4_0040:		sta $01			; 85 01
B4_0042:		lda #$98		; a9 98
B4_0044:		jmp $e62f		; 4c 2f e6


B4_0047:	.db $da
B4_0048:	.db $af
B4_0049:		lda $82			; a5 82
B4_004b:	.db $23
B4_004c:		sty $9b			; 84 9b
B4_004e:		stx $b3			; 86 b3
B4_0050:		stx $b7			; 86 b7
B4_0052:		dey				; 88 
B4_0053:	.db $13
B4_0054:		txa				; 8a 
B4_0055:		sta $8d, x		; 95 8d
B4_0057:	.db $42
B4_0058:		sta ($d7), y	; 91 d7
B4_005a:	.db $83
B4_005b:		cpy #$88		; c0 88
B4_005d:		asl a			; 0a
B4_005e:		dey				; 88 
B4_005f:	.db $13
B4_0060:		txa				; 8a 
B4_0061:		asl $91			; 06 91
B4_0063:	.db $02
B4_0064:		ldy $abf1		; ac f1 ab
B4_0067:	.db $13
B4_0068:		ldy $aae7		; ac e7 aa
B4_006b:		rol $80, x		; 36 80
B4_006d:	.db $6f
B4_006e:	.db $80
B4_006f:		rts				; 60 


B4_0070:		lda $05ef, x	; bd ef 05
B4_0073:		beq B4_006f ; f0 fa

B4_0075:		asl a			; 0a
B4_0076:		tay				; a8 
B4_0077:		lda $80a4, y	; b9 a4 80
B4_007a:		sta $02			; 85 02
B4_007c:		lda $80a5, y	; b9 a5 80
B4_007f:		sta $03			; 85 03
B4_0081:		lda $05c1, x	; bd c1 05
B4_0084:		asl a			; 0a
B4_0085:		asl a			; 0a
B4_0086:		clc				; 18 
B4_0087:		adc $02			; 65 02
B4_0089:		sta $02			; 85 02
B4_008b:		lda $03			; a5 03
B4_008d:		adc #$00		; 69 00
B4_008f:		sta $03			; 85 03
B4_0091:		ldy #$00		; a0 00
B4_0093:		lda ($02), y	; b1 02
B4_0095:		asl a			; 0a
B4_0096:		tay				; a8 
B4_0097:		lda $8277, y	; b9 77 82
B4_009a:		sta $00			; 85 00
B4_009c:		lda $8278, y	; b9 78 82
B4_009f:		sta $01			; 85 01
B4_00a1:	.db $6c $00 $00
B4_00a4:	.db $c2
B4_00a5:	.db $80
B4_00a6:	.db $c3
B4_00a7:	.db $80
B4_00a8:	.db $df
B4_00a9:	.db $80
B4_00aa:	.db $f7
B4_00ab:	.db $80
B4_00ac:	.db $07
B4_00ad:		sta ($17, x)	; 81 17
B4_00af:		sta ($2b, x)	; 81 2b
B4_00b1:		sta ($3f, x)	; 81 3f
B4_00b3:		sta ($7b, x)	; 81 7b
B4_00b5:		sta ($27, x)	; 81 27
B4_00b7:	.db $82
B4_00b8:	.db $37
B4_00b9:	.db $82
B4_00ba:	.db $47
B4_00bb:	.db $82
B4_00bc:	.db $8f
B4_00bd:		sta ($57, x)	; 81 57
B4_00bf:	.db $82
B4_00c0:	.db $67
B4_00c1:	.db $82
B4_00c2:		rts				; 60 


B4_00c3:	.db $0b
B4_00c4:		.db $00				; 00
B4_00c5:		.db $00				; 00
B4_00c6:		.db $00				; 00
B4_00c7:	.db $02
B4_00c8:		sta ($03, x)	; 81 03
B4_00ca:	.db $02
B4_00cb:	.db $04
B4_00cc:		bpl B4_00ce ; 10 00

B4_00ce:		.db $00				; 00
B4_00cf:		ora $00			; 05 00
B4_00d1:		.db $00				; 00
B4_00d2:		.db $00				; 00
B4_00d3:	.db $0c
B4_00d4:		.db $00				; 00
B4_00d5:		.db $00				; 00
B4_00d6:		.db $00				; 00
B4_00d7:		asl $12, x		; 16 12
B4_00d9:		.db $00				; 00
B4_00da:		.db $00				; 00
B4_00db:		php				; 08 
B4_00dc:	.db $03
B4_00dd:		.db $00				; 00
B4_00de:		.db $00				; 00
B4_00df:	.db $0b
B4_00e0:		.db $00				; 00
B4_00e1:		.db $00				; 00
B4_00e2:		.db $00				; 00
B4_00e3:	.db $07
B4_00e4:	.db $0e $0a $00
B4_00e7:		ora #$fc		; 09 fc
B4_00e9:	.db $0c
B4_00ea:		.db $00				; 00
B4_00eb:		asl $00			; 06 00
B4_00ed:		.db $00				; 00
B4_00ee:		.db $00				; 00
B4_00ef:		ora $00			; 05 00
B4_00f1:		.db $00				; 00
B4_00f2:		.db $00				; 00
B4_00f3:		php				; 08 
B4_00f4:	.db $03
B4_00f5:		.db $00				; 00
B4_00f6:		.db $00				; 00
B4_00f7:		asl a			; 0a
B4_00f8:		.db $00				; 00
B4_00f9:		.db $00				; 00
B4_00fa:		.db $00				; 00
B4_00fb:		.db $00				; 00
B4_00fc:		.db $00				; 00
B4_00fd:		.db $00				; 00
B4_00fe:		.db $00				; 00
B4_00ff:		ora ($00, x)	; 01 00
B4_0101:		.db $00				; 00
B4_0102:	.db $20 $03 $00
B4_0105:		.db $00				; 00
B4_0106:		.db $00				; 00
B4_0107:	.db $0f
B4_0108:		.db $00				; 00
B4_0109:		.db $00				; 00
B4_010a:		.db $00				; 00
B4_010b:	.db $12
B4_010c:	.db $07
B4_010d:		.db $00				; 00
B4_010e:		.db $00				; 00
B4_010f:	.db $0f
B4_0110:		.db $00				; 00
B4_0111:		ora ($00, x)	; 01 00
B4_0113:		bpl B4_0115 ; 10 00

B4_0115:		.db $00				; 00
B4_0116:		.db $00				; 00
B4_0117:	.db $0f
B4_0118:		ora ($00, x)	; 01 00
B4_011a:		.db $00				; 00
B4_011b:	.db $12
B4_011c:	.db $07
B4_011d:		.db $00				; 00
B4_011e:		.db $00				; 00
B4_011f:	.db $0f
B4_0120:		ora ($02, x)	; 01 02
B4_0122:		.db $00				; 00
B4_0123:		ora ($00), y	; 11 00
B4_0125:		.db $00				; 00
B4_0126:		.db $00				; 00
B4_0127:		bpl B4_0129 ; 10 00

B4_0129:		.db $00				; 00
B4_012a:		.db $00				; 00
B4_012b:	.db $0f
B4_012c:		ora ($00, x)	; 01 00
B4_012e:		.db $00				; 00
B4_012f:	.db $12
B4_0130:	.db $07
B4_0131:		.db $00				; 00
B4_0132:		.db $00				; 00
B4_0133:	.db $0f
B4_0134:		ora ($01, x)	; 01 01
B4_0136:		.db $00				; 00
B4_0137:		ora ($00), y	; 11 00
B4_0139:		.db $00				; 00
B4_013a:		.db $00				; 00
B4_013b:		bpl B4_013d ; 10 00

B4_013d:		.db $00				; 00
B4_013e:		.db $00				; 00
B4_013f:	.db $0d $08 $00
B4_0142:		.db $00				; 00
B4_0143:		ora $00			; 05 00
B4_0145:		.db $00				; 00
B4_0146:		.db $00				; 00
B4_0147:	.db $0e $00 $00
B4_014a:		.db $00				; 00
B4_014b:	.db $04
B4_014c:		php				; 08 
B4_014d:		.db $00				; 00
B4_014e:		.db $00				; 00
B4_014f:		ora $00			; 05 00
B4_0151:		.db $00				; 00
B4_0152:		.db $00				; 00
B4_0153:	.db $0e $00 $00
B4_0156:		.db $00				; 00
B4_0157:	.db $04
B4_0158:		php				; 08 
B4_0159:		.db $00				; 00
B4_015a:		.db $00				; 00
B4_015b:		ora $00			; 05 00
B4_015d:		.db $00				; 00
B4_015e:		.db $00				; 00
B4_015f:	.db $0e $00 $00
B4_0162:		.db $00				; 00
B4_0163:	.db $04
B4_0164:		php				; 08 
B4_0165:		.db $00				; 00
B4_0166:		.db $00				; 00
B4_0167:		ora $00			; 05 00
B4_0169:		.db $00				; 00
B4_016a:		.db $00				; 00
B4_016b:	.db $0e $00 $00
B4_016e:		.db $00				; 00
B4_016f:	.db $04
B4_0170:		php				; 08 
B4_0171:		.db $00				; 00
B4_0172:		.db $00				; 00
B4_0173:		ora $00			; 05 00
B4_0175:		.db $00				; 00
B4_0176:		.db $00				; 00
B4_0177:	.db $13
B4_0178:		.db $00				; 00
B4_0179:		.db $00				; 00
B4_017a:		.db $00				; 00
B4_017b:		.db $00				; 00
B4_017c:		.db $00				; 00
B4_017d:		.db $00				; 00
B4_017e:		.db $00				; 00
B4_017f:		ora ($00, x)	; 01 00
B4_0181:		.db $00				; 00
B4_0182:		jsr $020f		; 20 0f 02
B4_0185:		.db $00				; 00
B4_0186:		ora ($16, x)	; 01 16
B4_0188:		ora ($00), y	; 11 00
B4_018a:		.db $00				; 00
B4_018b:	.db $03
B4_018c:		.db $00				; 00
B4_018d:		.db $00				; 00
B4_018e:		.db $00				; 00
B4_018f:	.db $0d $06 $00
B4_0192:		.db $00				; 00
B4_0193:		ora $00			; 05 00
B4_0195:		.db $00				; 00
B4_0196:		.db $00				; 00
B4_0197:	.db $0e $00 $00
B4_019a:		.db $00				; 00
B4_019b:	.db $04
B4_019c:		asl $00			; 06 00
B4_019e:		.db $00				; 00
B4_019f:		ora $00			; 05 00
B4_01a1:		.db $00				; 00
B4_01a2:		.db $00				; 00
B4_01a3:	.db $0e $00 $00
B4_01a6:		.db $00				; 00
B4_01a7:	.db $04
B4_01a8:		asl $00			; 06 00
B4_01aa:		.db $00				; 00
B4_01ab:		ora $00			; 05 00
B4_01ad:		.db $00				; 00
B4_01ae:		.db $00				; 00
B4_01af:	.db $0e $00 $00
B4_01b2:		.db $00				; 00
B4_01b3:	.db $04
B4_01b4:		asl $00			; 06 00
B4_01b6:		.db $00				; 00
B4_01b7:		ora $00			; 05 00
B4_01b9:		.db $00				; 00
B4_01ba:		.db $00				; 00
B4_01bb:	.db $0e $00 $00
B4_01be:		.db $00				; 00
B4_01bf:		ora $00, x		; 15 00
B4_01c1:	.db $0c
B4_01c2:		.db $00				; 00
B4_01c3:	.db $04
B4_01c4:		ora ($00, x)	; 01 00
B4_01c6:		.db $00				; 00
B4_01c7:		ora $00			; 05 00
B4_01c9:		.db $00				; 00
B4_01ca:		.db $00				; 00
B4_01cb:		.db $00				; 00
B4_01cc:		.db $00				; 00
B4_01cd:		.db $00				; 00
B4_01ce:		.db $00				; 00
B4_01cf:		ora ($00, x)	; 01 00
B4_01d1:		.db $00				; 00
B4_01d2:	.db $20 $0d $00
B4_01d5:		.db $00				; 00
B4_01d6:		.db $00				; 00
B4_01d7:		asl $08, x		; 16 08
B4_01d9:		.db $00				; 00
B4_01da:		.db $00				; 00
B4_01db:	.db $0e $00 $00
B4_01de:		.db $00				; 00
B4_01df:	.db $04
B4_01e0:		asl $00			; 06 00
B4_01e2:		.db $00				; 00
B4_01e3:		ora $00			; 05 00
B4_01e5:		.db $00				; 00
B4_01e6:		.db $00				; 00
B4_01e7:	.db $0e $00 $00
B4_01ea:		.db $00				; 00
B4_01eb:	.db $04
B4_01ec:		asl $00			; 06 00
B4_01ee:		.db $00				; 00
B4_01ef:		ora $00			; 05 00
B4_01f1:		.db $00				; 00
B4_01f2:		.db $00				; 00
B4_01f3:	.db $0b
B4_01f4:		.db $00				; 00
B4_01f5:		.db $00				; 00
B4_01f6:		.db $00				; 00
B4_01f7:		ora $00, x		; 15 00
B4_01f9:		bpl B4_01fb ; 10 00

B4_01fb:	.db $14
B4_01fc:		.db $00				; 00
B4_01fd:		.db $00				; 00
B4_01fe:		.db $00				; 00
B4_01ff:	.db $0f
B4_0200:	.db $02
B4_0201:		ora ($00, x)	; 01 00
B4_0203:	.db $04
B4_0204:		asl $00			; 06 00
B4_0206:		.db $00				; 00
B4_0207:		ora $00			; 05 00
B4_0209:		.db $00				; 00
B4_020a:		.db $00				; 00
B4_020b:	.db $0f
B4_020c:	.db $02
B4_020d:	.db $02
B4_020e:		.db $00				; 00
B4_020f:	.db $04
B4_0210:		asl $00			; 06 00
B4_0212:		.db $00				; 00
B4_0213:		ora $00			; 05 00
B4_0215:		.db $00				; 00
B4_0216:		.db $00				; 00
B4_0217:	.db $07
B4_0218:	.db $0c
B4_0219:		bmi B4_021b ; 30 00

B4_021b:		asl a			; 0a
B4_021c:		.db $00				; 00
B4_021d:		.db $00				; 00
B4_021e:		.db $00				; 00
B4_021f:		asl $06, x		; 16 06
B4_0221:		.db $00				; 00
B4_0222:		.db $00				; 00
B4_0223:	.db $13
B4_0224:		.db $00				; 00
B4_0225:		.db $00				; 00
B4_0226:		.db $00				; 00
B4_0227:	.db $12
B4_0228:	.db $0c
B4_0229:		.db $00				; 00
B4_022a:		.db $00				; 00
B4_022b:	.db $0f
B4_022c:	.db $02
B4_022d:	.db $03
B4_022e:	.db $02
B4_022f:	.db $12
B4_0230:	.db $07
B4_0231:		.db $00				; 00
B4_0232:		.db $00				; 00
B4_0233:	.db $03
B4_0234:		.db $00				; 00
B4_0235:		.db $00				; 00
B4_0236:		.db $00				; 00
B4_0237:	.db $12
B4_0238:	.db $0c
B4_0239:		.db $00				; 00
B4_023a:		.db $00				; 00
B4_023b:	.db $0f
B4_023c:	.db $02
B4_023d:	.db $04
B4_023e:	.db $03
B4_023f:	.db $12
B4_0240:	.db $07
B4_0241:		.db $00				; 00
B4_0242:		.db $00				; 00
B4_0243:	.db $03
B4_0244:		.db $00				; 00
B4_0245:		.db $00				; 00
B4_0246:		.db $00				; 00
B4_0247:	.db $12
B4_0248:	.db $0c
B4_0249:		.db $00				; 00
B4_024a:		.db $00				; 00
B4_024b:	.db $0f
B4_024c:	.db $02
B4_024d:		ora $04			; 05 04
B4_024f:	.db $12
B4_0250:	.db $07
B4_0251:		.db $00				; 00
B4_0252:		.db $00				; 00
B4_0253:	.db $03
B4_0254:		.db $00				; 00
B4_0255:		.db $00				; 00
B4_0256:		.db $00				; 00
B4_0257:	.db $12
B4_0258:	.db $0c
B4_0259:		.db $00				; 00
B4_025a:		.db $00				; 00
B4_025b:	.db $0f
B4_025c:	.db $02
B4_025d:		asl $05			; 06 05
B4_025f:	.db $12
B4_0260:	.db $07
B4_0261:		.db $00				; 00
B4_0262:		.db $00				; 00
B4_0263:	.db $03
B4_0264:		.db $00				; 00
B4_0265:		.db $00				; 00
B4_0266:		.db $00				; 00
B4_0267:	.db $12
B4_0268:	.db $0c
B4_0269:		.db $00				; 00
B4_026a:		.db $00				; 00
B4_026b:	.db $0f
B4_026c:	.db $02
B4_026d:	.db $07
B4_026e:		asl $12			; 06 12
B4_0270:	.db $07
B4_0271:		.db $00				; 00
B4_0272:		.db $00				; 00
B4_0273:	.db $03
B4_0274:		.db $00				; 00
B4_0275:		.db $00				; 00
B4_0276:		.db $00				; 00
B4_0277:		lsr $95			; 46 95
B4_0279:	.db $7f
B4_027a:		sta $78, x		; 95 78
B4_027c:		sty $e2, x		; 94 e2
B4_027e:		sty $05, x		; 94 05
B4_0280:		sta $0f, x		; 95 0f
B4_0282:		sta $1b, x		; 95 1b
B4_0284:		sta $27, x		; 95 27
B4_0286:		sta $39, x		; 95 39
B4_0288:		sta $df, x		; 95 df
B4_028a:		sta $04, x		; 95 04
B4_028c:		stx $21, y		; 96 21
B4_028e:		stx $2c, y		; 96 2c
B4_0290:		stx $2d, y		; 96 2d
B4_0292:	.db $97
B4_0293:		eor $97			; 45 97
B4_0295:	.db $7f
B4_0296:	.db $97
B4_0297:		ldx $9a, y		; b6 9a
B4_0299:	.db $bf
B4_029a:		txs				; 9a 
B4_029b:		cmp $df9a		; cd 9a df
B4_029e:		txs				; 9a 
B4_029f:	.db $ab
B4_02a0:		txs				; 9a 
B4_02a1:		dex				; ca 
B4_02a2:		sty $6e, x		; 94 6e
B4_02a4:		sty $a9, x		; 94 a9
B4_02a6:		ora ($9d, x)	; 01 9d
B4_02a8:	.db $57
B4_02a9:		asl $a9			; 06 a9
B4_02ab:		.db $00				; 00
B4_02ac:		sta $0669, x	; 9d 69 06
B4_02af:		lda $0470, x	; bd 70 04
B4_02b2:		ora #$88		; 09 88
B4_02b4:		sta $0470, x	; 9d 70 04
B4_02b7:		lda #$02		; a9 02
B4_02b9:		sta $0454, x	; 9d 54 04
B4_02bc:		lda #$14		; a9 14
B4_02be:		sta $00			; 85 00
B4_02c0:		lda $32			; a5 32
B4_02c2:		cmp #$05		; c9 05
B4_02c4:		beq B4_02ca ; f0 04

B4_02c6:		lda #$30		; a9 30
B4_02c8:		sta $00			; 85 00
B4_02ca:		lda $07ed		; ad ed 07
B4_02cd:		cmp $00			; c5 00
B4_02cf:		bne B4_0314 ; d0 43

B4_02d1:		lda $061d, x	; bd 1d 06
B4_02d4:		ora $0606, x	; 1d 06 06
B4_02d7:		beq B4_0352 ; f0 79

B4_02d9:		lda $56			; a5 56
B4_02db:		clc				; 18 
B4_02dc:		adc $0438		; 6d 38 04
B4_02df:		sta $00			; 85 00
B4_02e1:		lda $57			; a5 57
B4_02e3:		adc #$00		; 69 00
B4_02e5:		sta $01			; 85 01
B4_02e7:		ldy #$00		; a0 00
B4_02e9:		lda $32			; a5 32
B4_02eb:		cmp #$05		; c9 05
B4_02ed:		beq B4_02f1 ; f0 02

B4_02ef:		ldy #$02		; a0 02
B4_02f1:		lda $00			; a5 00
B4_02f3:		sec				; 38 
B4_02f4:		sbc $83fa, y	; f9 fa 83
B4_02f7:		sta $00			; 85 00
B4_02f9:		lda $01			; a5 01
B4_02fb:		sbc $83fb, y	; f9 fb 83
B4_02fe:		bcc B4_0345 ; 90 45

B4_0300:		bne B4_0308 ; d0 06

B4_0302:		lda $00			; a5 00
B4_0304:		cmp #$40		; c9 40
B4_0306:		bcc B4_0345 ; 90 3d

B4_0308:		lda #$01		; a9 01
B4_030a:		sta $c8			; 85 c8
B4_030c:		lda #$00		; a9 00
B4_030e:		sta $061d, x	; 9d 1d 06
B4_0311:		sta $0606, x	; 9d 06 06
B4_0314:		lda $061d, x	; bd 1d 06
B4_0317:		ora $0606, x	; 1d 06 06
B4_031a:		beq B4_0352 ; f0 36

B4_031c:		dec $061d, x	; de 1d 06
B4_031f:		ldy $061d, x	; bc 1d 06
B4_0322:		iny				; c8 
B4_0323:		bne B4_0328 ; d0 03

B4_0325:		dec $0606, x	; de 06 06
B4_0328:		jsr $83fe		; 20 fe 83
B4_032b:		lda $05ef, x	; bd ef 05
B4_032e:		and #$7f		; 29 7f
B4_0330:		bne B4_034a ; d0 18

B4_0332:		jsr $af64		; 20 64 af
B4_0335:		bcc B4_0345 ; 90 0e

B4_0337:		lda #$01		; a9 01
B4_0339:		sta $b3			; 85 b3
B4_033b:		lda #$00		; a9 00
B4_033d:		sta $00			; 85 00
B4_033f:		jsr $8366		; 20 66 83
B4_0342:		jmp $93c4		; 4c c4 93


B4_0345:		jsr $93a8		; 20 a8 93
B4_0348:		bcs B4_034b ; b0 01

B4_034a:		rts				; 60 


B4_034b:		lda #$0e		; a9 0e
B4_034d:		ldy #$09		; a0 09
B4_034f:		jmp $ef5c		; 4c 5c ef


B4_0352:		lda $05ef, x	; bd ef 05
B4_0355:		and #$7f		; 29 7f
B4_0357:		bne B4_03c4 ; d0 6b

B4_0359:		lda $07ed		; ad ed 07
B4_035c:		cmp #$01		; c9 01
B4_035e:		bne B4_0366 ; d0 06

B4_0360:		lda #$01		; a9 01
B4_0362:		sta $b3			; 85 b3
B4_0364:		bne B4_03bf ; d0 59

B4_0366:		lda #$79		; a9 79
B4_0368:		jsr $94a1		; 20 a1 94
B4_036b:		bcc B4_03c4 ; 90 57

B4_036d:		dec $07ed		; ce ed 07
B4_0370:		jsr $841b		; 20 1b 84
B4_0373:		sta $0470, y	; 99 70 04
B4_0376:		lda #$00		; a9 00
B4_0378:		sta $0606, y	; 99 06 06
B4_037b:		sta $061d, y	; 99 1d 06
B4_037e:		stx $17			; 86 17
B4_0380:		tya				; 98 
B4_0381:		tax				; aa 
B4_0382:		lda #$0e		; a9 0e
B4_0384:		ldy #$09		; a0 09
B4_0386:		jsr $ef5c		; 20 5c ef
B4_0389:		jsr $ef75		; 20 75 ef
B4_038c:		lda #$01		; a9 01
B4_038e:		jsr $9427		; 20 27 94
B4_0391:		ldx $17			; a6 17
B4_0393:		lda $0438, x	; bd 38 04
B4_0396:		clc				; 18 
B4_0397:		adc #$10		; 69 10
B4_0399:		sta $0438, x	; 9d 38 04
B4_039c:		bcc B4_03aa ; 90 0c

B4_039e:		lda $0470, x	; bd 70 04
B4_03a1:		and #$01		; 29 01
B4_03a3:		eor #$01		; 49 01
B4_03a5:		ora #$88		; 09 88
B4_03a7:		sta $0470, x	; 9d 70 04
B4_03aa:		lda $32			; a5 32
B4_03ac:		cmp #$05		; c9 05
B4_03ae:		beq B4_03b4 ; f0 04

B4_03b0:		lda #$0f		; a9 0f
B4_03b2:		bne B4_03b6 ; d0 02

B4_03b4:		lda #$0c		; a9 0c
B4_03b6:		sta $061d, x	; 9d 1d 06
B4_03b9:		lda #$00		; a9 00
B4_03bb:		sta $0606, x	; 9d 06 06
B4_03be:		rts				; 60 


B4_03bf:		lda #$01		; a9 01
B4_03c1:		jmp $9427		; 4c 27 94


B4_03c4:		jsr $9439		; 20 39 94
B4_03c7:		sta $0470, x	; 9d 70 04
B4_03ca:		lda $05ef, x	; bd ef 05
B4_03cd:		cmp #$03		; c9 03
B4_03cf:		bne B4_03d4 ; d0 03

B4_03d1:		jmp $83d7		; 4c d7 83


B4_03d4:		jmp $8070		; 4c 70 80


B4_03d7:		jsr $9439		; 20 39 94
B4_03da:		lda $05c1, x	; bd c1 05
B4_03dd:		cmp #$02		; c9 02
B4_03df:		bne B4_03f7 ; d0 16

B4_03e1:		lda $041c, x	; bd 1c 04
B4_03e4:		cmp #$f8		; c9 f8
B4_03e6:		bcc B4_03f7 ; 90 0f

B4_03e8:		inc $05c1, x	; fe c1 05
B4_03eb:		lda $81			; a5 81
B4_03ed:		beq B4_03f7 ; f0 08

B4_03ef:		cpx $91			; e4 91
B4_03f1:		bne B4_03f7 ; d0 04

B4_03f3:		lda #$00		; a9 00
B4_03f5:		sta $81			; 85 81
B4_03f7:		jmp $8070		; 4c 70 80


B4_03fa:		iny				; c8 
B4_03fb:		.db $00				; 00
B4_03fc:		iny				; c8 
B4_03fd:		ora ($bd, x)	; 01 bd
B4_03ff:		bvs B4_0405 ; 70 04

B4_0401:		and #$01		; 29 01
B4_0403:		beq B4_041a ; f0 15

B4_0405:		lda $0438, x	; bd 38 04
B4_0408:		bpl B4_041a ; 10 10

B4_040a:		and #$f0		; 29 f0
B4_040c:		cmp #$e0		; c9 e0
B4_040e:		bcs B4_041a ; b0 0a

B4_0410:		lda $0438, x	; bd 38 04
B4_0413:		and #$0f		; 29 0f
B4_0415:		ora #$e0		; 09 e0
B4_0417:		sta $0438, x	; 9d 38 04
B4_041a:		rts				; 60 


B4_041b:		lda $0470, x	; bd 70 04
B4_041e:		and #$77		; 29 77
B4_0420:		ora #$40		; 09 40
B4_0422:		rts				; 60 


B4_0423:		lda $0606, x	; bd 06 06
B4_0426:		bne B4_043a ; d0 12

B4_0428:		lda $0438, x	; bd 38 04
B4_042b:		adc #$08		; 69 08
B4_042d:		sta $01			; 85 01
B4_042f:		jsr $9398		; 20 98 93
B4_0432:		bcs B4_043a ; b0 06

B4_0434:		lda #$ff		; a9 ff
B4_0436:		sta $061d, x	; 9d 1d 06
B4_0439:		rts				; 60 


B4_043a:		ldy $0633, x	; bc 33 06
B4_043d:		lda $061d, y	; b9 1d 06
B4_0440:		cmp #$ff		; c9 ff
B4_0442:		bne B4_0447 ; d0 03

B4_0444:		jmp $94e2		; 4c e2 94


B4_0447:		lda $0606, x	; bd 06 06
B4_044a:		beq B4_0455 ; f0 09

B4_044c:		ldy $0633, x	; bc 33 06
B4_044f:		lda $0565, y	; b9 65 05
B4_0452:		sta $0565, x	; 9d 65 05
B4_0455:		lda #$01		; a9 01
B4_0457:		sta $0657, x	; 9d 57 06
B4_045a:		lda $0606, x	; bd 06 06
B4_045d:		bne B4_0491 ; d0 32

B4_045f:		lda $0645, x	; bd 45 06
B4_0462:		cmp $05d8, x	; dd d8 05
B4_0465:		beq B4_046f ; f0 08

B4_0467:		sta $05d8, x	; 9d d8 05
B4_046a:		lda #$06		; a9 06
B4_046c:		jsr playSound		; 20 5f e2
B4_046f:		lda $0645, x	; bd 45 06
B4_0472:		beq B4_0491 ; f0 1d

B4_0474:		and #$07		; 29 07
B4_0476:		beq B4_047c ; f0 04

B4_0478:		lda #$01		; a9 01
B4_047a:		bne B4_047e ; d0 02

B4_047c:		lda #$ff		; a9 ff
B4_047e:		clc				; 18 
B4_047f:		adc $0565, x	; 7d 65 05
B4_0482:		cmp #$20		; c9 20
B4_0484:		bcs B4_0488 ; b0 02

B4_0486:		lda #$20		; a9 20
B4_0488:		cmp #$61		; c9 61
B4_048a:		bcc B4_048e ; 90 02

B4_048c:		lda #$60		; a9 60
B4_048e:		sta $0565, x	; 9d 65 05
B4_0491:		ldy $0606, x	; bc 06 06
B4_0494:		lda $853f, y	; b9 3f 85
B4_0497:		sta $00			; 85 00
B4_0499:		and #$0f		; 29 0f
B4_049b:		asl a			; 0a
B4_049c:		tay				; a8 
B4_049d:		lda $8561, y	; b9 61 85
B4_04a0:		sta $02			; 85 02
B4_04a2:		lda $8562, y	; b9 62 85
B4_04a5:		sta $03			; 85 03
B4_04a7:		ldy $0633, x	; bc 33 06
B4_04aa:		lda $0565, y	; b9 65 05
B4_04ad:		jsr $93f7		; 20 f7 93
B4_04b0:		lda $00			; a5 00
B4_04b2:		and #$80		; 29 80
B4_04b4:		beq B4_04c2 ; f0 0c

B4_04b6:		lda $05			; a5 05
B4_04b8:		eor #$01		; 49 01
B4_04ba:		sta $05			; 85 05
B4_04bc:		lda $06			; a5 06
B4_04be:		eor #$01		; 49 01
B4_04c0:		sta $06			; 85 06
B4_04c2:		lda $061d, x	; bd 1d 06
B4_04c5:		asl a			; 0a
B4_04c6:		tay				; a8 
B4_04c7:		lda $8553, y	; b9 53 85
B4_04ca:		sta $0f			; 85 0f
B4_04cc:		lda $8554, y	; b9 54 85
B4_04cf:		sta $0e			; 85 0e
B4_04d1:		lda $8545, y	; b9 45 85
B4_04d4:		sta $0d			; 85 0d
B4_04d6:		lda $8546, y	; b9 46 85
B4_04d9:		sta $0c			; 85 0c
B4_04db:		lda $0d			; a5 0d
B4_04dd:		sec				; 38 
B4_04de:		sbc $56			; e5 56
B4_04e0:		sta $0d			; 85 0d
B4_04e2:		lda $0c			; a5 0c
B4_04e4:		sbc $57			; e5 57
B4_04e6:		sta $0c			; 85 0c
B4_04e8:		lda $0470, x	; bd 70 04
B4_04eb:		and #$77		; 29 77
B4_04ed:		sta $0470, x	; 9d 70 04
B4_04f0:		jsr $8627		; 20 27 86
B4_04f3:		jsr $8661		; 20 61 86
B4_04f6:		lda #$00		; a9 00
B4_04f8:		sta $04a8, x	; 9d a8 04
B4_04fb:		lda $0565, x	; bd 65 05
B4_04fe:		cmp #$40		; c9 40
B4_0500:		bcs B4_0513 ; b0 11

B4_0502:		clc				; 18 
B4_0503:		adc #$04		; 69 04
B4_0505:		clc				; 18 
B4_0506:		lsr a			; 4a
B4_0507:		lsr a			; 4a
B4_0508:		lsr a			; 4a
B4_0509:		tay				; a8 
B4_050a:		lda $8527, y	; b9 27 85
B4_050d:		tay				; a8 
B4_050e:		lda #$0c		; a9 0c
B4_0510:		jmp $ef5c		; 4c 5c ef


B4_0513:		lda #$84		; a9 84
B4_0515:		sec				; 38 
B4_0516:		sbc $0565, x	; fd 65 05
B4_0519:		clc				; 18 
B4_051a:		lsr a			; 4a
B4_051b:		lsr a			; 4a
B4_051c:		lsr a			; 4a
B4_051d:		tay				; a8 
B4_051e:		lda $8530, y	; b9 30 85
B4_0521:		tay				; a8 
B4_0522:		lda #$0c		; a9 0c
B4_0524:		jmp $ef5c		; 4c 5c ef


B4_0527:		asl $06			; 06 06
B4_0529:		asl $06			; 06 06
B4_052b:		asl $05			; 06 05
B4_052d:	.db $04
B4_052e:	.db $03
B4_052f:	.db $02
B4_0530:		asl a			; 0a
B4_0531:		asl a			; 0a
B4_0532:		asl a			; 0a
B4_0533:		asl a			; 0a
B4_0534:		asl a			; 0a
B4_0535:		ora #$08		; 09 08
B4_0537:	.db $07
B4_0538:	.db $02
B4_0539:		ora ($02, x)	; 01 02
B4_053b:	.db $04
B4_053c:		php				; 08 
B4_053d:		bpl B4_055f ; 10 20

B4_053f:		.db $00				; 00
B4_0540:		ora ($02, x)	; 01 02
B4_0542:	.db $80
B4_0543:		sta ($82, x)	; 81 82
B4_0545:		bne B4_0547 ; d0 00

B4_0547:		;removed
	.db $70 $01

B4_0549:		cmp ($01), y	; d1 01
B4_054b:		plp				; 28 
B4_054c:		.db $00				; 00
B4_054d:		plp				; 28 
B4_054e:		ora ($98, x)	; 01 98
B4_0550:		ora ($98, x)	; 01 98
B4_0552:	.db $02
B4_0553:		bvc B4_0555 ; 50 00

B4_0555:		sei				; 78 
B4_0556:		.db $00				; 00
B4_0557:		bcc B4_0559 ; 90 00

B4_0559:		rts				; 60 


B4_055a:		.db $00				; 00
B4_055b:		rts				; 60 


B4_055c:		.db $00				; 00
B4_055d:		bvs B4_055f ; 70 00

B4_055f:		bvs B4_0561 ; 70 00

B4_0561:	.db $67
B4_0562:		sta $a7			; 85 a7
B4_0564:		sta $e7			; 85 e7
B4_0566:		sta $00			; 85 00
B4_0568:		.db $00				; 00
B4_0569:		.db $00				; 00
B4_056a:		ora ($01, x)	; 01 01
B4_056c:		ora ($01, x)	; 01 01
B4_056e:		ora ($02, x)	; 01 02
B4_0570:	.db $02
B4_0571:	.db $02
B4_0572:	.db $02
B4_0573:	.db $02
B4_0574:	.db $03
B4_0575:	.db $03
B4_0576:	.db $03
B4_0577:	.db $03
B4_0578:	.db $03
B4_0579:	.db $03
B4_057a:	.db $04
B4_057b:	.db $04
B4_057c:	.db $04
B4_057d:	.db $04
B4_057e:	.db $04
B4_057f:	.db $04
B4_0580:		ora $05			; 05 05
B4_0582:		ora $05			; 05 05
B4_0584:		ora $05			; 05 05
B4_0586:		asl $06			; 06 06
B4_0588:		asl $06			; 06 06
B4_058a:		asl $06			; 06 06
B4_058c:		asl $06			; 06 06
B4_058e:	.db $07
B4_058f:	.db $07
B4_0590:	.db $07
B4_0591:	.db $07
B4_0592:	.db $07
B4_0593:	.db $07
B4_0594:	.db $07
B4_0595:	.db $07
B4_0596:	.db $07
B4_0597:	.db $07
B4_0598:	.db $07
B4_0599:		php				; 08 
B4_059a:		php				; 08 
B4_059b:		php				; 08 
B4_059c:		php				; 08 
B4_059d:		php				; 08 
B4_059e:		php				; 08 
B4_059f:		php				; 08 
B4_05a0:		php				; 08 
B4_05a1:		php				; 08 
B4_05a2:		php				; 08 
B4_05a3:		php				; 08 
B4_05a4:		php				; 08 
B4_05a5:		php				; 08 
B4_05a6:		php				; 08 
B4_05a7:		.db $00				; 00
B4_05a8:		ora ($01, x)	; 01 01
B4_05aa:	.db $02
B4_05ab:	.db $02
B4_05ac:	.db $03
B4_05ad:	.db $04
B4_05ae:	.db $04
B4_05af:		ora $05			; 05 05
B4_05b1:		asl $06			; 06 06
B4_05b3:	.db $07
B4_05b4:		php				; 08 
B4_05b5:		php				; 08 
B4_05b6:		ora #$09		; 09 09
B4_05b8:		asl a			; 0a
B4_05b9:		asl a			; 0a
B4_05ba:	.db $0b
B4_05bb:	.db $0b
B4_05bc:	.db $0c
B4_05bd:	.db $0c
B4_05be:		ora $0e0d		; 0d 0d 0e
B4_05c1:		asl $0f0f		; 0e 0f 0f
B4_05c4:		;removed
	.db $10 $10

B4_05c6:		ora ($11), y	; 11 11
B4_05c8:		ora ($12), y	; 11 12
B4_05ca:	.db $12
B4_05cb:	.db $13
B4_05cc:	.db $13
B4_05cd:	.db $13
B4_05ce:	.db $14
B4_05cf:	.db $14
B4_05d0:	.db $14
B4_05d1:		ora $15, x		; 15 15
B4_05d3:		ora $15, x		; 15 15
B4_05d5:		asl $16, x		; 16 16
B4_05d7:		asl $16, x		; 16 16
B4_05d9:	.db $17
B4_05da:	.db $17
B4_05db:	.db $17
B4_05dc:	.db $17
B4_05dd:	.db $17
B4_05de:	.db $17
B4_05df:		clc				; 18 
B4_05e0:		clc				; 18 
B4_05e1:		clc				; 18 
B4_05e2:		clc				; 18 
B4_05e3:		clc				; 18 
B4_05e4:		clc				; 18 
B4_05e5:		clc				; 18 
B4_05e6:		clc				; 18 
B4_05e7:		.db $00				; 00
B4_05e8:		ora ($02, x)	; 01 02
B4_05ea:	.db $03
B4_05eb:	.db $04
B4_05ec:		ora $06			; 05 06
B4_05ee:	.db $07
B4_05ef:		php				; 08 
B4_05f0:		ora #$0a		; 09 0a
B4_05f2:	.db $0b
B4_05f3:	.db $0c
B4_05f4:		ora $0e0d		; 0d 0d 0e
B4_05f7:	.db $0f
B4_05f8:		bpl B4_060b ; 10 11

B4_05fa:	.db $12
B4_05fb:	.db $13
B4_05fc:	.db $14
B4_05fd:		ora $15, x		; 15 15
B4_05ff:		asl $17, x		; 16 17
B4_0601:		clc				; 18 
B4_0602:		ora $1a19, y	; 19 19 1a
B4_0605:	.db $1b
B4_0606:	.db $1c
B4_0607:	.db $1c
B4_0608:		ora $1e1e, x	; 1d 1e 1e
B4_060b:	.db $1f
B4_060c:		jsr $2120		; 20 20 21
B4_060f:		and ($22, x)	; 21 22
B4_0611:	.db $22
B4_0612:	.db $23
B4_0613:	.db $23
B4_0614:		bit $24			; 24 24
B4_0616:		and $25			; 25 25
B4_0618:		and $26			; 25 26
B4_061a:		rol $26			; 26 26
B4_061c:	.db $27
B4_061d:	.db $27
B4_061e:	.db $27
B4_061f:	.db $27
B4_0620:	.db $27
B4_0621:		plp				; 28 
B4_0622:		plp				; 28 
B4_0623:		plp				; 28 
B4_0624:		plp				; 28 
B4_0625:		plp				; 28 
B4_0626:		plp				; 28 
B4_0627:		lda $05			; a5 05
B4_0629:		beq B4_0644 ; f0 19

B4_062b:		lda $0d			; a5 0d
B4_062d:		sec				; 38 
B4_062e:		sbc $08			; e5 08
B4_0630:		sta $0d			; 85 0d
B4_0632:		lda $0c			; a5 0c
B4_0634:		sbc #$00		; e9 00
B4_0636:		sta $0c			; 85 0c
B4_0638:		beq B4_065b ; f0 21

B4_063a:		lda $0470, x	; bd 70 04
B4_063d:		ora #$88		; 09 88
B4_063f:		sta $0470, x	; 9d 70 04
B4_0642:		bne B4_065b ; d0 17

B4_0644:		lda $0d			; a5 0d
B4_0646:		clc				; 18 
B4_0647:		adc $08			; 65 08
B4_0649:		sta $0d			; 85 0d
B4_064b:		lda $0c			; a5 0c
B4_064d:		adc #$00		; 69 00
B4_064f:		sta $0c			; 85 0c
B4_0651:		beq B4_065b ; f0 08

B4_0653:		lda $0470, x	; bd 70 04
B4_0656:		ora #$88		; 09 88
B4_0658:		sta $0470, x	; 9d 70 04
B4_065b:		lda $0d			; a5 0d
B4_065d:		sta $0438, x	; 9d 38 04
B4_0660:		rts				; 60 


B4_0661:		lda $06			; a5 06
B4_0663:		bne B4_067e ; d0 19

B4_0665:		lda $0f			; a5 0f
B4_0667:		sec				; 38 
B4_0668:		sbc $09			; e5 09
B4_066a:		sta $0f			; 85 0f
B4_066c:		lda $0e			; a5 0e
B4_066e:		sbc #$00		; e9 00
B4_0670:		sta $0e			; 85 0e
B4_0672:		beq B4_0695 ; f0 21

B4_0674:		lda $0470, x	; bd 70 04
B4_0677:		ora #$88		; 09 88
B4_0679:		sta $0470, x	; 9d 70 04
B4_067c:		bne B4_0695 ; d0 17

B4_067e:		lda $0f			; a5 0f
B4_0680:		clc				; 18 
B4_0681:		adc $09			; 65 09
B4_0683:		sta $0f			; 85 0f
B4_0685:		lda $0e			; a5 0e
B4_0687:		adc #$00		; 69 00
B4_0689:		sta $0e			; 85 0e
B4_068b:		beq B4_0695 ; f0 08

B4_068d:		lda $0470, x	; bd 70 04
B4_0690:		ora #$88		; 09 88
B4_0692:		sta $0470, x	; 9d 70 04
B4_0695:		lda $0f			; a5 0f
B4_0697:		sta $041c, x	; 9d 1c 04
B4_069a:		rts				; 60 


B4_069b:		lda $68			; a5 68
B4_069d:		bpl B4_06a4 ; 10 05

B4_069f:		lda #$30		; a9 30
B4_06a1:		sta $0438, x	; 9d 38 04
B4_06a4:		lda #$0c		; a9 0c
B4_06a6:		sta $0c			; 85 0c
B4_06a8:		lda #$35		; a9 35
B4_06aa:		sta $0d			; 85 0d
B4_06ac:		lda #$08		; a9 08
B4_06ae:		sta $08			; 85 08
B4_06b0:		bne B4_06c9 ; d0 17

B4_06b2:		rts				; 60 


B4_06b3:		lda #$0c		; a9 0c
B4_06b5:		sta $0c			; 85 0c
B4_06b7:		lda #$29		; a9 29
B4_06b9:		sta $0d			; 85 0d
B4_06bb:		lda #$09		; a9 09
B4_06bd:		clc				; 18 
B4_06be:		adc $061d, x	; 7d 1d 06
B4_06c1:		sta $08			; 85 08
B4_06c3:		cmp #$0c		; c9 0c
B4_06c5:		bcc B4_06c9 ; 90 02

B4_06c7:		dec $08			; c6 08
B4_06c9:		jsr $93a8		; 20 a8 93
B4_06cc:		bcs B4_06cf ; b0 01

B4_06ce:		rts				; 60 


B4_06cf:		lda $05d8, x	; bd d8 05
B4_06d2:		bne B4_06eb ; d0 17

B4_06d4:		lda #$83		; a9 83
B4_06d6:		jsr $8707		; 20 07 87
B4_06d9:		inc $0606, x	; fe 06 06
B4_06dc:		lda $0606, x	; bd 06 06
B4_06df:		and #$0f		; 29 0f
B4_06e1:		sta $0606, x	; 9d 06 06
B4_06e4:		tay				; a8 
B4_06e5:		lda $86f7, y	; b9 f7 86
B4_06e8:		sta $05d8, x	; 9d d8 05
B4_06eb:		dec $05d8, x	; de d8 05
B4_06ee:		lda $0470, x	; bd 70 04
B4_06f1:		ora #$88		; 09 88
B4_06f3:		sta $0470, x	; 9d 70 04
B4_06f6:		rts				; 60 


B4_06f7:	.db $0c
B4_06f8:		clc				; 18 
B4_06f9:		;removed
	.db $30 $24

B4_06fb:	.db $12
B4_06fc:		jsr $1040		; 20 40 10
B4_06ff:	.db $0c
B4_0700:		clc				; 18 
B4_0701:		;removed
	.db $30 $24

B4_0703:	.db $12
B4_0704:		jsr $1040		; 20 40 10
B4_0707:		jsr $94a1		; 20 a1 94
B4_070a:		bcs B4_070d ; b0 01

B4_070c:		rts				; 60 


B4_070d:		sty $04			; 84 04
B4_070f:		ldy $0606, x	; bc 06 06
B4_0712:		lda $32			; a5 32
B4_0714:		cmp #$0a		; c9 0a
B4_0716:		bne B4_0723 ; d0 0b

B4_0718:		lda $33			; a5 33
B4_071a:		cmp #$02		; c9 02
B4_071c:		bne B4_0723 ; d0 05

B4_071e:		lda $87d6, y	; b9 d6 87
B4_0721:		bne B4_0726 ; d0 03

B4_0723:		lda $87c6, y	; b9 c6 87
B4_0726:		sta $00			; 85 00
B4_0728:		lda $061d, x	; bd 1d 06
B4_072b:		asl a			; 0a
B4_072c:		tay				; a8 
B4_072d:		lda $87e6, y	; b9 e6 87
B4_0730:		sta $03			; 85 03
B4_0732:		lda $87e7, y	; b9 e7 87
B4_0735:		sta $02			; 85 02
B4_0737:		lda $87f8, y	; b9 f8 87
B4_073a:		sta $0b			; 85 0b
B4_073c:		lda $87f9, y	; b9 f9 87
B4_073f:		sta $0a			; 85 0a
B4_0741:		lda $68			; a5 68
B4_0743:		bpl B4_0753 ; 10 0e

B4_0745:		lda $57			; a5 57
B4_0747:		bne B4_0753 ; d0 0a

B4_0749:		lda $56			; a5 56
B4_074b:		cmp #$90		; c9 90
B4_074d:		bcs B4_0753 ; b0 04

B4_074f:		lda #$40		; a9 40
B4_0751:		sta $03			; 85 03
B4_0753:		ldy $04			; a4 04
B4_0755:		lda $00			; a5 00
B4_0757:		clc				; 18 
B4_0758:		adc $03			; 65 03
B4_075a:		sta $03			; 85 03
B4_075c:		lda $02			; a5 02
B4_075e:		adc #$00		; 69 00
B4_0760:		sta $02			; 85 02
B4_0762:		cmp $0a			; c5 0a
B4_0764:		beq B4_076a ; f0 04

B4_0766:		bcs B4_0783 ; b0 1b

B4_0768:		bne B4_0770 ; d0 06

B4_076a:		lda $03			; a5 03
B4_076c:		cmp $0b			; c5 0b
B4_076e:		bcs B4_0783 ; b0 13

B4_0770:		lda $68			; a5 68
B4_0772:		bmi B4_078d ; 30 19

B4_0774:		lda $03			; a5 03
B4_0776:		sec				; 38 
B4_0777:		sbc $56			; e5 56
B4_0779:		sta $03			; 85 03
B4_077b:		lda $02			; a5 02
B4_077d:		sbc $57			; e5 57
B4_077f:		sta $02			; 85 02
B4_0781:		beq B4_078d ; f0 0a

B4_0783:		stx $00			; 86 00
B4_0785:		tya				; 98 
B4_0786:		tax				; aa 
B4_0787:		jsr $94e2		; 20 e2 94
B4_078a:		ldx $00			; a6 00
B4_078c:		rts				; 60 


B4_078d:		lda #$40		; a9 40
B4_078f:		sta $0470, y	; 99 70 04
B4_0792:		lda $03			; a5 03
B4_0794:		sta $0438, y	; 99 38 04
B4_0797:		lda #$30		; a9 30
B4_0799:		sta $041c, y	; 99 1c 04
B4_079c:		lda $08			; a5 08
B4_079e:		sta $05ef, y	; 99 ef 05
B4_07a1:		lda #$00		; a9 00
B4_07a3:		sta $0454, y	; 99 54 04
B4_07a6:		stx $0f			; 86 0f
B4_07a8:		tya				; 98 
B4_07a9:		tax				; aa 
B4_07aa:		lda $0c			; a5 0c
B4_07ac:		ldy $0d			; a4 0d
B4_07ae:		jsr $ef5c		; 20 5c ef
B4_07b1:		lda $08			; a5 08
B4_07b3:		cmp #$08		; c9 08
B4_07b5:		bne B4_07c3 ; d0 0c

B4_07b7:		lda #$00		; a9 00
B4_07b9:		ldy #$20		; a0 20
B4_07bb:		jsr $fc1e		; 20 1e fc
B4_07be:		beq B4_07c3 ; f0 03

B4_07c0:		jsr $94e2		; 20 e2 94
B4_07c3:		ldx $0f			; a6 0f
B4_07c5:		rts				; 60 


B4_07c6:		clc				; 18 
B4_07c7:		sei				; 78 
B4_07c8:		cld				; d8 
B4_07c9:		tya				; 98 
B4_07ca:		cli				; 58 
B4_07cb:		clv				; b8 
B4_07cc:		pha				; 48 
B4_07cd:		sed				; f8 
B4_07ce:		dey				; 88 
B4_07cf:		tay				; a8 
B4_07d0:		sec				; 38 
B4_07d1:		plp				; 28 
B4_07d2:		inx				; e8 
B4_07d3:		php				; 08 
B4_07d4:		iny				; c8 
B4_07d5:		pla				; 68 
B4_07d6:		pla				; 68 
B4_07d7:		php				; 08 
B4_07d8:		inx				; e8 
B4_07d9:		sei				; 78 
B4_07da:		sed				; f8 
B4_07db:		plp				; 28 
B4_07dc:		dey				; 88 
B4_07dd:		clc				; 18 
B4_07de:		cld				; d8 
B4_07df:		tya				; 98 
B4_07e0:		clv				; b8 
B4_07e1:		sec				; 38 
B4_07e2:		tay				; a8 
B4_07e3:		pha				; 48 
B4_07e4:		cli				; 58 
B4_07e5:		iny				; c8 
B4_07e6:		.db $00				; 00
B4_07e7:		ora ($40, x)	; 01 40
B4_07e9:		.db $00				; 00
B4_07ea:		rts				; 60 


B4_07eb:		ora ($50, x)	; 01 50
B4_07ed:		ora ($80, x)	; 01 80
B4_07ef:	.db $03
B4_07f0:		jsr $2000		; 20 00 20
B4_07f3:		.db $00				; 00
B4_07f4:		bpl B4_07f6 ; 10 00

B4_07f6:		bvc B4_07f8 ; 50 00

B4_07f8:	.db $80
B4_07f9:		ora ($e0, x)	; 01 e0
B4_07fb:		.db $00				; 00
B4_07fc:		cpy #$01		; c0 01
B4_07fe:		bcs B4_0801 ; b0 01

B4_0800:		.db $00				; 00
B4_0801:	.db $04
B4_0802:		beq B4_0804 ; f0 00

B4_0804:		bne B4_0806 ; d0 00

B4_0806:		beq B4_0808 ; f0 00

B4_0808:		.db $00				; 00
B4_0809:		ora ($bd, x)	; 01 bd
B4_080b:		bvs B4_0811 ; 70 04

B4_080d:		and #$01		; 29 01
B4_080f:		bne B4_0818 ; d0 07

B4_0811:		lda $041c, x	; bd 1c 04
B4_0814:		cmp #$f8		; c9 f8
B4_0816:		bcc B4_081b ; 90 03

B4_0818:		jmp $94e2		; 4c e2 94


B4_081b:		lda #$00		; a9 00
B4_081d:		sta $0657, x	; 9d 57 06
B4_0820:		lda $0470, x	; bd 70 04
B4_0823:		ora #$40		; 09 40
B4_0825:		sta $0470, x	; 9d 70 04
B4_0828:		lda $05ef, x	; bd ef 05
B4_082b:		cmp #$08		; c9 08
B4_082d:		beq B4_0850 ; f0 21

B4_082f:		cmp #$0c		; c9 0c
B4_0831:		bne B4_0846 ; d0 13

B4_0833:		lda $05c1, x	; bd c1 05
B4_0836:		bne B4_0846 ; d0 0e

B4_0838:		lda #$04		; a9 04
B4_083a:		ldy #$08		; a0 08
B4_083c:		jsr $fc1e		; 20 1e fc
B4_083f:		beq B4_0846 ; f0 05

B4_0841:		lda #$1b		; a9 1b
B4_0843:		sta $05c1, x	; 9d c1 05
B4_0846:		lda $05c1, x	; bd c1 05
B4_0849:		cmp #$10		; c9 10
B4_084b:		bne B4_088f ; d0 42

B4_084d:		jmp $8857		; 4c 57 88


B4_0850:		lda $05c1, x	; bd c1 05
B4_0853:		cmp #$01		; c9 01
B4_0855:		bne B4_088f ; d0 38

B4_0857:		lda #$10		; a9 10
B4_0859:		sta $0657, x	; 9d 57 06
B4_085c:		lda #$04		; a9 04
B4_085e:		ldy #$08		; a0 08
B4_0860:		jsr $fc1e		; 20 1e fc
B4_0863:		beq B4_088f ; f0 2a

B4_0865:		jsr $8892		; 20 92 88
B4_0868:		lda $05c1, x	; bd c1 05
B4_086b:		cmp #$01		; c9 01
B4_086d:		beq B4_088c ; f0 1d

B4_086f:		lda $32			; a5 32
B4_0871:		cmp #$0a		; c9 0a
B4_0873:		bne B4_088c ; d0 17

B4_0875:		lda $33			; a5 33
B4_0877:		bne B4_088c ; d0 13

B4_0879:		lda $0438, x	; bd 38 04
B4_087c:		and #$f0		; 29 f0
B4_087e:		cmp #$80		; c9 80
B4_0880:		bne B4_088c ; d0 0a

B4_0882:		lda $041c, x	; bd 1c 04
B4_0885:		cmp #$b0		; c9 b0
B4_0887:		bcc B4_088c ; 90 03

B4_0889:		jmp $94e2		; 4c e2 94


B4_088c:		inc $05c1, x	; fe c1 05
B4_088f:		jmp $8070		; 4c 70 80


B4_0892:		lda $68			; a5 68
B4_0894:		bmi B4_08a3 ; 30 0d

B4_0896:		lda $041c, x	; bd 1c 04
B4_0899:		and #$f0		; 29 f0
B4_089b:		ora #$08		; 09 08
B4_089d:		sta $041c, x	; 9d 1c 04
B4_08a0:		jmp func_1f_1ec8		; 4c c8 fe


B4_08a3:		clc				; 18 
B4_08a4:		lda $041c, x	; bd 1c 04
B4_08a7:		adc $56			; 65 56
B4_08a9:		and #$f0		; 29 f0
B4_08ab:		sec				; 38 
B4_08ac:		sbc $56			; e5 56
B4_08ae:		clc				; 18 
B4_08af:		adc #$0b		; 69 0b
B4_08b1:		sta $041c, x	; 9d 1c 04
B4_08b4:		jmp func_1f_1ec8		; 4c c8 fe


B4_08b7:		lda #$01		; a9 01
B4_08b9:		sta $0657, x	; 9d 57 06
B4_08bc:		ldy #$00		; a0 00
B4_08be:		beq B4_08e6 ; f0 26

B4_08c0:		lda #$01		; a9 01
B4_08c2:		sta $0657, x	; 9d 57 06
B4_08c5:		lda #$00		; a9 00
B4_08c7:		sta $00			; 85 00
B4_08c9:		lda $041c		; ad 1c 04
B4_08cc:		cmp $041c, x	; dd 1c 04
B4_08cf:		bcc B4_08d3 ; 90 02

B4_08d1:		inc $00			; e6 00
B4_08d3:		lda $0606, x	; bd 06 06
B4_08d6:		cmp $00			; c5 00
B4_08d8:		beq B4_08df ; f0 05

B4_08da:		lda #$11		; a9 11
B4_08dc:		sta $0657, x	; 9d 57 06
B4_08df:		lda #$01		; a9 01
B4_08e1:		clc				; 18 
B4_08e2:		adc $0606, x	; 7d 06 06
B4_08e5:		tay				; a8 
B4_08e6:		jsr $93a8		; 20 a8 93
B4_08e9:		bcs B4_08ec ; b0 01

B4_08eb:		rts				; 60 


B4_08ec:		lda #$02		; a9 02
B4_08ee:		sta $0454, x	; 9d 54 04
B4_08f1:		lda $061d, x	; bd 1d 06
B4_08f4:		sta $00			; 85 00
B4_08f6:		lda $0565		; ad 65 05
B4_08f9:		sta $061d, x	; 9d 1d 06
B4_08fc:		lda $05ef, x	; bd ef 05
B4_08ff:		beq B4_0904 ; f0 03

B4_0901:		jmp $89ad		; 4c ad 89


B4_0904:		lda $0470, x	; bd 70 04
B4_0907:		and #$01		; 29 01
B4_0909:		bne B4_0914 ; d0 09

B4_090b:		lda $041c		; ad 1c 04
B4_090e:		sec				; 38 
B4_090f:		sbc $041c, x	; fd 1c 04
B4_0912:		bcc B4_0917 ; 90 03

B4_0914:		jmp $89c3		; 4c c3 89


B4_0917:		eor #$ff		; 49 ff
B4_0919:		clc				; 18 
B4_091a:		adc #$01		; 69 01
B4_091c:		cmp #$20		; c9 20
B4_091e:		bcc B4_0923 ; 90 03

B4_0920:		jmp $89c3		; 4c c3 89


B4_0923:		lda $0438		; ad 38 04
B4_0926:		sec				; 38 
B4_0927:		sbc $0438, x	; fd 38 04
B4_092a:		bcs B4_0931 ; b0 05

B4_092c:		eor #$ff		; 49 ff
B4_092e:		clc				; 18 
B4_092f:		adc #$01		; 69 01
B4_0931:		cmp #$12		; c9 12
B4_0933:		bcc B4_0938 ; 90 03

B4_0935:		jmp $89c3		; 4c c3 89


B4_0938:		lda $00			; a5 00
B4_093a:		cmp #$26		; c9 26
B4_093c:		bne B4_0947 ; d0 09

B4_093e:		lda $0565		; ad 65 05
B4_0941:		cmp #$26		; c9 26
B4_0943:		beq B4_09c3 ; f0 7e

B4_0945:		bne B4_096c ; d0 25

B4_0947:		cmp #$08		; c9 08
B4_0949:		bne B4_0954 ; d0 09

B4_094b:		lda $0565		; ad 65 05
B4_094e:		cmp #$08		; c9 08
B4_0950:		beq B4_09c3 ; f0 71

B4_0952:		bne B4_096c ; d0 18

B4_0954:		cmp #$1a		; c9 1a
B4_0956:		bne B4_0961 ; d0 09

B4_0958:		lda $0565		; ad 65 05
B4_095b:		cmp #$1a		; c9 1a
B4_095d:		beq B4_09c3 ; f0 64

B4_095f:		bne B4_096c ; d0 0b

B4_0961:		cmp #$22		; c9 22
B4_0963:		bne B4_09c3 ; d0 5e

B4_0965:		lda $0565		; ad 65 05
B4_0968:		cmp #$22		; c9 22
B4_096a:		beq B4_09c3 ; f0 57

B4_096c:		jsr $944f		; 20 4f 94
B4_096f:		lda $0606, x	; bd 06 06
B4_0972:		beq B4_097c ; f0 08

B4_0974:		lda $00			; a5 00
B4_0976:		sta $04a8, x	; 9d a8 04
B4_0979:		jmp $8983		; 4c 83 89


B4_097c:		lda $00			; a5 00
B4_097e:		eor #$01		; 49 01
B4_0980:		sta $04a8, x	; 9d a8 04
B4_0983:		lda $01			; a5 01
B4_0985:		cmp #$01		; c9 01
B4_0987:		bcc B4_09c3 ; 90 3a

B4_0989:		lda #$36		; a9 36
B4_098b:		jsr playSound		; 20 5f e2
B4_098e:		lda $0470, x	; bd 70 04
B4_0991:		and #$01		; 29 01
B4_0993:		sta $0470, x	; 9d 70 04
B4_0996:		lda $8a01, y	; b9 01 8a
B4_0999:		sta $00			; 85 00
B4_099b:		lda $8a04, y	; b9 04 8a
B4_099e:		sta $01			; 85 01
B4_09a0:		lda $8a07, y	; b9 07 8a
B4_09a3:		ldy $01			; a4 01
B4_09a5:		jsr $ef5c		; 20 5c ef
B4_09a8:		lda $00			; a5 00
B4_09aa:		jmp $9427		; 4c 27 94


B4_09ad:		lda $05ef, x	; bd ef 05
B4_09b0:		cmp #$07		; c9 07
B4_09b2:		bne B4_09c0 ; d0 0c

B4_09b4:		lda $05c1, x	; bd c1 05
B4_09b7:		cmp #$02		; c9 02
B4_09b9:		bcc B4_09c0 ; 90 05

B4_09bb:		lda #$00		; a9 00
B4_09bd:		sta $0657, x	; 9d 57 06
B4_09c0:		jmp $8070		; 4c 70 80


B4_09c3:		lda $0470, x	; bd 70 04
B4_09c6:		ora #$88		; 09 88
B4_09c8:		sta $0470, x	; 9d 70 04
B4_09cb:		lda $0438, x	; bd 38 04
B4_09ce:		and #$f0		; 29 f0
B4_09d0:		beq B4_09d6 ; f0 04

B4_09d2:		cmp #$f0		; c9 f0
B4_09d4:		bne B4_09f3 ; d0 1d

B4_09d6:		tya				; 98 
B4_09d7:		sta $00			; 85 00
B4_09d9:		asl a			; 0a
B4_09da:		clc				; 18 
B4_09db:		adc $00			; 65 00
B4_09dd:		tay				; a8 
B4_09de:		lda $8a0a, y	; b9 0a 8a
B4_09e1:		sta $08			; 85 08
B4_09e3:		lda $8a0b, y	; b9 0b 8a
B4_09e6:		sta $09			; 85 09
B4_09e8:		lda $8a0c, y	; b9 0c 8a
B4_09eb:		sta $0a			; 85 0a
B4_09ed:		jsr $9b00		; 20 00 9b
B4_09f0:		jmp $9792		; 4c 92 97


B4_09f3:		lda $8a04, y	; b9 04 8a
B4_09f6:		sta $01			; 85 01
B4_09f8:		lda $8a07, y	; b9 07 8a
B4_09fb:		ldy $01			; a4 01
B4_09fd:		jsr $ef5c		; 20 5c ef
B4_0a00:		rts				; 60 


B4_0a01:	.db $04
B4_0a02:		ora $06			; 05 06
B4_0a04:	.db $0b
B4_0a05:		;removed
	.db $10 $14

B4_0a07:	.db $0c
B4_0a08:	.db $0c
B4_0a09:	.db $0c
B4_0a0a:		.db $00				; 00
B4_0a0b:		ora ($00, x)	; 01 00
B4_0a0d:		ora ($01, x)	; 01 01
B4_0a0f:		.db $00				; 00
B4_0a10:		ora ($02, x)	; 01 02
B4_0a12:		.db $00				; 00
B4_0a13:		jsr $93a8		; 20 a8 93
B4_0a16:		bcs B4_0a19 ; b0 01

B4_0a18:		rts				; 60 


B4_0a19:		lda $0470, x	; bd 70 04
B4_0a1c:		and #$01		; 29 01
B4_0a1e:		beq B4_0a76 ; f0 56

B4_0a20:		ldy $0606, x	; bc 06 06
B4_0a23:		lda $8c07, y	; b9 07 8c
B4_0a26:		beq B4_0a76 ; f0 4e

B4_0a28:		lda $04a8		; ad a8 04
B4_0a2b:		eor #$01		; 49 01
B4_0a2d:		tay				; a8 
B4_0a2e:	.db $b9 $59 $00
B4_0a31:		sta $00			; 85 00
B4_0a33:	.db $b9 $5b $00
B4_0a36:		sta $01			; 85 01
B4_0a38:		ldy $0606, x	; bc 06 06
B4_0a3b:		lda $8c13, y	; b9 13 8c
B4_0a3e:		cmp $00			; c5 00
B4_0a40:		bne B4_0a76 ; d0 34

B4_0a42:		lda $01			; a5 01
B4_0a44:		beq B4_0a76 ; f0 30

B4_0a46:		lda $0633, x	; bd 33 06
B4_0a49:		bne B4_0a75 ; d0 2a

B4_0a4b:		lda $a3			; a5 a3
B4_0a4d:		and #$01		; 29 01
B4_0a4f:		bne B4_0a75 ; d0 24

B4_0a51:		lda #$01		; a9 01
B4_0a53:		sta $0633, x	; 9d 33 06
B4_0a56:		stx $16			; 86 16
B4_0a58:		jsr $8ccf		; 20 cf 8c
B4_0a5b:		ldx $16			; a6 16
B4_0a5d:		ldy $0606, x	; bc 06 06
B4_0a60:		lda $8c07, y	; b9 07 8c
B4_0a63:		sta $12			; 85 12
B4_0a65:		lda $8bef, y	; b9 ef 8b
B4_0a68:		sta $041c, x	; 9d 1c 04
B4_0a6b:		lda #$00		; a9 00
B4_0a6d:		sta $061d, x	; 9d 1d 06
B4_0a70:		lda #$04		; a9 04
B4_0a72:		sta $05d8, x	; 9d d8 05
B4_0a75:		rts				; 60 


B4_0a76:		lda #$00		; a9 00
B4_0a78:		sta $0633, x	; 9d 33 06
B4_0a7b:		sta $04f2, x	; 9d f2 04
B4_0a7e:		sta $0509, x	; 9d 09 05
B4_0a81:		sta $0520, x	; 9d 20 05
B4_0a84:		sta $0537, x	; 9d 37 05
B4_0a87:		lda $0470, x	; bd 70 04
B4_0a8a:		and #$01		; 29 01
B4_0a8c:		beq B4_0a98 ; f0 0a

B4_0a8e:		lda $0470, x	; bd 70 04
B4_0a91:		ora #$88		; 09 88
B4_0a93:		sta $0470, x	; 9d 70 04
B4_0a96:		bne B4_0aa0 ; d0 08

B4_0a98:		lda $0470, x	; bd 70 04
B4_0a9b:		and #$77		; 29 77
B4_0a9d:		sta $0470, x	; 9d 70 04
B4_0aa0:		lda $0606, x	; bd 06 06
B4_0aa3:		tay				; a8 
B4_0aa4:		lda $8c07, y	; b9 07 8c
B4_0aa7:		sta $12			; 85 12
B4_0aa9:		lda $8bef, y	; b9 ef 8b
B4_0aac:		sta $00			; 85 00
B4_0aae:		sta $10			; 85 10
B4_0ab0:		lda $8bfb, y	; b9 fb 8b
B4_0ab3:		sta $01			; 85 01
B4_0ab5:		sta $11			; 85 11
B4_0ab7:		lda $061d, x	; bd 1d 06
B4_0aba:		sta $13			; 85 13
B4_0abc:		beq B4_0b07 ; f0 49

B4_0abe:		lda $12			; a5 12
B4_0ac0:		beq B4_0ade ; f0 1c

B4_0ac2:		lda $05d8, x	; bd d8 05
B4_0ac5:		bne B4_0ad5 ; d0 0e

B4_0ac7:		lda $041c, x	; bd 1c 04
B4_0aca:		sec				; 38 
B4_0acb:		sbc #$08		; e9 08
B4_0acd:		sta $041c, x	; 9d 1c 04
B4_0ad0:		lda #$10		; a9 10
B4_0ad2:		sta $05d8, x	; 9d d8 05
B4_0ad5:		dec $05d8, x	; de d8 05
B4_0ad8:		lda $041c, x	; bd 1c 04
B4_0adb:		jmp $8af1		; 4c f1 8a


B4_0ade:		lda $05d8, x	; bd d8 05
B4_0ae1:		bne B4_0ad5 ; d0 f2

B4_0ae3:		lda $04db, x	; bd db 04
B4_0ae6:		sec				; 38 
B4_0ae7:		sbc #$80		; e9 80
B4_0ae9:		sta $04db, x	; 9d db 04
B4_0aec:		lda $041c, x	; bd 1c 04
B4_0aef:		sbc #$00		; e9 00
B4_0af1:		cmp $00			; c5 00
B4_0af3:		bcs B4_0b5b ; b0 66

B4_0af5:		lda $061d, x	; bd 1d 06
B4_0af8:		eor #$ff		; 49 ff
B4_0afa:		sta $061d, x	; 9d 1d 06
B4_0afd:		lda #$20		; a9 20
B4_0aff:		sta $05d8, x	; 9d d8 05
B4_0b02:		lda $00			; a5 00
B4_0b04:		jmp $8b5b		; 4c 5b 8b


B4_0b07:		lda $12			; a5 12
B4_0b09:		beq B4_0b2d ; f0 22

B4_0b0b:		lda $05d8, x	; bd d8 05
B4_0b0e:		bne B4_0b24 ; d0 14

B4_0b10:		lda $061d, x	; bd 1d 06
B4_0b13:		sta $0565, x	; 9d 65 05
B4_0b16:		lda $041c, x	; bd 1c 04
B4_0b19:		clc				; 18 
B4_0b1a:		adc #$08		; 69 08
B4_0b1c:		sta $041c, x	; 9d 1c 04
B4_0b1f:		lda #$04		; a9 04
B4_0b21:		sta $05d8, x	; 9d d8 05
B4_0b24:		dec $05d8, x	; de d8 05
B4_0b27:		lda $041c, x	; bd 1c 04
B4_0b2a:		jmp $8b40		; 4c 40 8b


B4_0b2d:		lda $05d8, x	; bd d8 05
B4_0b30:		bne B4_0b24 ; d0 f2

B4_0b32:		lda $04db, x	; bd db 04
B4_0b35:		clc				; 18 
B4_0b36:		adc #$00		; 69 00
B4_0b38:		sta $04db, x	; 9d db 04
B4_0b3b:		lda $041c, x	; bd 1c 04
B4_0b3e:		adc #$02		; 69 02
B4_0b40:		cmp $01			; c5 01
B4_0b42:		bcc B4_0b5b ; 90 17

B4_0b44:		lda $061d, x	; bd 1d 06
B4_0b47:		eor #$ff		; 49 ff
B4_0b49:		sta $061d, x	; 9d 1d 06
B4_0b4c:		sta $13			; 85 13
B4_0b4e:		lda $12			; a5 12
B4_0b50:		bne B4_0b57 ; d0 05

B4_0b52:		lda #$20		; a9 20
B4_0b54:		sta $05d8, x	; 9d d8 05
B4_0b57:		dec $01			; c6 01
B4_0b59:		lda $01			; a5 01
B4_0b5b:		sta $041c, x	; 9d 1c 04
B4_0b5e:		lda $12			; a5 12
B4_0b60:		bne B4_0b65 ; d0 03

B4_0b62:		jmp $8bdd		; 4c dd 8b


B4_0b65:		jsr $8bdd		; 20 dd 8b
B4_0b68:		lda $0470, x	; bd 70 04
B4_0b6b:		ora #$88		; 09 88
B4_0b6d:		sta $0470, x	; 9d 70 04
B4_0b70:		jsr $9b00		; 20 00 9b
B4_0b73:		lda #$be		; a9 be
B4_0b75:		sta $01			; 85 01
B4_0b77:		lda #$ff		; a9 ff
B4_0b79:		sta $00			; 85 00
B4_0b7b:		lda $041c, x	; bd 1c 04
B4_0b7e:		and #$08		; 29 08
B4_0b80:		beq B4_0b8a ; f0 08

B4_0b82:		lda #$de		; a9 de
B4_0b84:		sta $01			; 85 01
B4_0b86:		lda #$ff		; a9 ff
B4_0b88:		sta $00			; 85 00
B4_0b8a:		lda $13			; a5 13
B4_0b8c:		beq B4_0b9b ; f0 0d

B4_0b8e:		lda $01			; a5 01
B4_0b90:		clc				; 18 
B4_0b91:		adc #$20		; 69 20
B4_0b93:		sta $01			; 85 01
B4_0b95:		lda $00			; a5 00
B4_0b97:		adc #$00		; 69 00
B4_0b99:		sta $00			; 85 00
B4_0b9b:		lda $05			; a5 05
B4_0b9d:		clc				; 18 
B4_0b9e:		adc $01			; 65 01
B4_0ba0:		sta $05			; 85 05
B4_0ba2:		lda $04			; a5 04
B4_0ba4:		adc $00			; 65 00
B4_0ba6:		sta $04			; 85 04
B4_0ba8:		lda $13			; a5 13
B4_0baa:		beq B4_0bd1 ; f0 25

B4_0bac:		lda $041c, x	; bd 1c 04
B4_0baf:		and #$f8		; 29 f8
B4_0bb1:		sta $01			; 85 01
B4_0bb3:		lda #$03		; a9 03
B4_0bb5:		sta $00			; 85 00
B4_0bb7:		lda $11			; a5 11
B4_0bb9:		sec				; 38 
B4_0bba:		sbc $01			; e5 01
B4_0bbc:		lsr a			; 4a
B4_0bbd:		lsr a			; 4a
B4_0bbe:		lsr a			; 4a
B4_0bbf:		cmp #$03		; c9 03
B4_0bc1:		bcs B4_0bc9 ; b0 06

B4_0bc3:		tay				; a8 
B4_0bc4:		lda $8bec, y	; b9 ec 8b
B4_0bc7:		sta $00			; 85 00
B4_0bc9:		ldy #$00		; a0 00
B4_0bcb:		sty $08			; 84 08
B4_0bcd:		jsr $8c2b		; 20 2b 8c
B4_0bd0:		rts				; 60 


B4_0bd1:		lda #$03		; a9 03
B4_0bd3:		sta $00			; 85 00
B4_0bd5:		lda #$02		; a9 02
B4_0bd7:		sta $08			; 85 08
B4_0bd9:		jsr $8c2b		; 20 2b 8c
B4_0bdc:		rts				; 60 


B4_0bdd:		ldy #$28		; a0 28
B4_0bdf:		lda $32			; a5 32
B4_0be1:		cmp #$0d		; c9 0d
B4_0be3:		bne B4_0be7 ; d0 02

B4_0be5:		ldy #$3c		; a0 3c
B4_0be7:		lda #$0c		; a9 0c
B4_0be9:		jmp $ef5c		; 4c 5c ef


B4_0bec:	.db $02
B4_0bed:	.db $02
B4_0bee:	.db $03
B4_0bef:	.db $80
B4_0bf0:		rti				; 40 


B4_0bf1:		;removed
	.db $50 $50

B4_0bf3:		rts				; 60 


B4_0bf4:		rts				; 60 


B4_0bf5:		rts				; 60 


B4_0bf6:		rti				; 40 


B4_0bf7:		;removed
	.db $70 $40

B4_0bf9:		bvs B4_0c6b ; 70 70

B4_0bfb:		cpy #$c0		; c0 c0
B4_0bfd:		cpy #$98		; c0 98
B4_0bff:		tay				; a8 
B4_0c00:		tay				; a8 
B4_0c01:		tay				; a8 
B4_0c02:		cpy #$b8		; c0 b8
B4_0c04:		clv				; b8 
B4_0c05:		clv				; b8 
B4_0c06:		clv				; b8 
B4_0c07:		.db $00				; 00
B4_0c08:		ora ($00, x)	; 01 00
B4_0c0a:		.db $00				; 00
B4_0c0b:		ora ($01, x)	; 01 01
B4_0c0d:		ora ($01, x)	; 01 01
B4_0c0f:		ora ($00, x)	; 01 00
B4_0c11:		ora ($01, x)	; 01 01
B4_0c13:		.db $00				; 00
B4_0c14:	.db $0b
B4_0c15:		.db $00				; 00
B4_0c16:		.db $00				; 00
B4_0c17:		ora #$0b		; 09 0b
B4_0c19:		ora $040c		; 0d 0c 04
B4_0c1c:		.db $00				; 00
B4_0c1d:	.db $07
B4_0c1e:	.db $0b
B4_0c1f:		.db $00				; 00
B4_0c20:		.db $00				; 00
B4_0c21:		.db $00				; 00
B4_0c22:		.db $00				; 00
B4_0c23:		.db $00				; 00
B4_0c24:		ora ($02, x)	; 01 02
B4_0c26:		ora ($00, x)	; 01 00
B4_0c28:		.db $00				; 00
B4_0c29:		ora ($02, x)	; 01 02
B4_0c2b:		lda $a3			; a5 a3
B4_0c2d:		and #$03		; 29 03
B4_0c2f:		ldy $0606, x	; bc 06 06
B4_0c32:		cmp $8c1f, y	; d9 1f 8c
B4_0c35:		beq B4_0c38 ; f0 01

B4_0c37:		rts				; 60 


B4_0c38:		lda $041c, x	; bd 1c 04
B4_0c3b:		sta $0645, x	; 9d 45 06
B4_0c3e:		stx $17			; 86 17
B4_0c40:		lda $32			; a5 32
B4_0c42:		cmp #$0d		; c9 0d
B4_0c44:		beq B4_0c4a ; f0 04

B4_0c46:		cmp #$02		; c9 02
B4_0c48:		bne B4_0c51 ; d0 07

B4_0c4a:		lda $08			; a5 08
B4_0c4c:		clc				; 18 
B4_0c4d:		adc #$04		; 69 04
B4_0c4f:		sta $08			; 85 08
B4_0c51:		lda #$00		; a9 00
B4_0c53:		sta $01			; 85 01
B4_0c55:		ldx $1d			; a6 1d
B4_0c57:		lda #$01		; a9 01
B4_0c59:		jsr $8ca2		; 20 a2 8c
B4_0c5c:		lda $05			; a5 05
B4_0c5e:		jsr $8ca2		; 20 a2 8c
B4_0c61:		lda $04			; a5 04
B4_0c63:		jsr $8ca2		; 20 a2 8c
B4_0c66:		ldy $08			; a4 08
B4_0c68:		lda $8ca7, y	; b9 a7 8c
B4_0c6b:		sta $02			; 85 02
B4_0c6d:		lda $8ca8, y	; b9 a8 8c
B4_0c70:		sta $03			; 85 03
B4_0c72:		lda $01			; a5 01
B4_0c74:		asl a			; 0a
B4_0c75:		asl a			; 0a
B4_0c76:		tay				; a8 
B4_0c77:		lda #$04		; a9 04
B4_0c79:		sta $07			; 85 07
B4_0c7b:		lda ($02), y	; b1 02
B4_0c7d:		jsr $8ca2		; 20 a2 8c
B4_0c80:		iny				; c8 
B4_0c81:		dec $07			; c6 07
B4_0c83:		bne B4_0c7b ; d0 f6

B4_0c85:		lda #$ff		; a9 ff
B4_0c87:		jsr $8ca2		; 20 a2 8c
B4_0c8a:		lda $05			; a5 05
B4_0c8c:		clc				; 18 
B4_0c8d:		adc #$20		; 69 20
B4_0c8f:		sta $05			; 85 05
B4_0c91:		lda $04			; a5 04
B4_0c93:		adc #$00		; 69 00
B4_0c95:		sta $04			; 85 04
B4_0c97:		inc $01			; e6 01
B4_0c99:		dec $00			; c6 00
B4_0c9b:		bne B4_0c57 ; d0 ba

B4_0c9d:		stx $1d			; 86 1d
B4_0c9f:		ldx $17			; a6 17
B4_0ca1:		rts				; 60 


B4_0ca2:		sta $0300, x	; 9d 00 03
B4_0ca5:		inx				; e8 
B4_0ca6:		rts				; 60 


B4_0ca7:	.db $b3
B4_0ca8:		sty $8caf		; 8c af 8c
B4_0cab:	.db $c3
B4_0cac:		sty $8cbf		; 8c bf 8c
B4_0caf:		.db $00				; 00
B4_0cb0:	.db $7c
B4_0cb1:		adc $7e00, x	; 7d 00 7e
B4_0cb4:		ror $7e7e, x	; 7e 7e 7e
B4_0cb7:	.db $7f
B4_0cb8:	.db $7f
B4_0cb9:	.db $7f
B4_0cba:	.db $7f
B4_0cbb:		.db $00				; 00
B4_0cbc:		.db $00				; 00
B4_0cbd:		.db $00				; 00
B4_0cbe:		.db $00				; 00
B4_0cbf:		.db $00				; 00
B4_0cc0:		;removed
	.db $b0 $b1

B4_0cc2:		.db $00				; 00
B4_0cc3:	.db $b2
B4_0cc4:	.db $b2
B4_0cc5:	.db $b2
B4_0cc6:	.db $b2
B4_0cc7:	.db $b3
B4_0cc8:	.db $b3
B4_0cc9:	.db $b3
B4_0cca:	.db $b3
B4_0ccb:		.db $00				; 00
B4_0ccc:		.db $00				; 00
B4_0ccd:		.db $00				; 00
B4_0cce:		.db $00				; 00
B4_0ccf:		lda $0606, x	; bd 06 06
B4_0cd2:		tay				; a8 
B4_0cd3:		lda $8d79, y	; b9 79 8d
B4_0cd6:		sta $07			; 85 07
B4_0cd8:		lda $8d6d, y	; b9 6d 8d
B4_0cdb:		tay				; a8 
B4_0cdc:		lda $8d85, y	; b9 85 8d
B4_0cdf:		sta $00			; 85 00
B4_0ce1:		lda $8d86, y	; b9 86 8d
B4_0ce4:		sta $01			; 85 01
B4_0ce6:		lda $75			; a5 75
B4_0ce8:		and #$01		; 29 01
B4_0cea:		beq B4_0cf6 ; f0 0a

B4_0cec:		lda $01			; a5 01
B4_0cee:		and #$04		; 29 04
B4_0cf0:		eor #$04		; 49 04
B4_0cf2:		ora #$20		; 09 20
B4_0cf4:		sta $01			; 85 01
B4_0cf6:		lda $0645, x	; bd 45 06
B4_0cf9:		clc				; 18 
B4_0cfa:		adc #$f8		; 69 f8
B4_0cfc:		and #$f8		; 29 f8
B4_0cfe:		sta $02			; 85 02
B4_0d00:		lda #$00		; a9 00
B4_0d02:		asl $02			; 06 02
B4_0d04:		rol a			; 2a
B4_0d05:		asl $02			; 06 02
B4_0d07:		rol a			; 2a
B4_0d08:		sta $03			; 85 03
B4_0d0a:		ldx $1d			; a6 1d
B4_0d0c:		lda #$03		; a9 03
B4_0d0e:		jsr $8ca2		; 20 a2 8c
B4_0d11:		lda $00			; a5 00
B4_0d13:		and #$1f		; 29 1f
B4_0d15:		ora $02			; 05 02
B4_0d17:		sta $02			; 85 02
B4_0d19:		jsr $8ca2		; 20 a2 8c
B4_0d1c:		lda $01			; a5 01
B4_0d1e:		and #$24		; 29 24
B4_0d20:		ora $03			; 05 03
B4_0d22:		sta $03			; 85 03
B4_0d24:		jsr $8ca2		; 20 a2 8c
B4_0d27:		lda #$03		; a9 03
B4_0d29:		jsr $8d64		; 20 64 8d
B4_0d2c:		lda #$03		; a9 03
B4_0d2e:		jsr $8ca2		; 20 a2 8c
B4_0d31:		lda $02			; a5 02
B4_0d33:		clc				; 18 
B4_0d34:		adc #$03		; 69 03
B4_0d36:		jsr $8ca2		; 20 a2 8c
B4_0d39:		lda $03			; a5 03
B4_0d3b:		jsr $8ca2		; 20 a2 8c
B4_0d3e:		lda #$03		; a9 03
B4_0d40:		jsr $8d64		; 20 64 8d
B4_0d43:		lda #$02		; a9 02
B4_0d45:		sta $06			; 85 06
B4_0d47:		lda #$03		; a9 03
B4_0d49:		jsr $8ca2		; 20 a2 8c
B4_0d4c:		inc $00			; e6 00
B4_0d4e:		lda $00			; a5 00
B4_0d50:		jsr $8ca2		; 20 a2 8c
B4_0d53:		lda $01			; a5 01
B4_0d55:		jsr $8ca2		; 20 a2 8c
B4_0d58:		lda $07			; a5 07
B4_0d5a:		jsr $8d64		; 20 64 8d
B4_0d5d:		dec $06			; c6 06
B4_0d5f:		bne B4_0d47 ; d0 e6

B4_0d61:		stx $1d			; 86 1d
B4_0d63:		rts				; 60 


B4_0d64:		jsr $8ca2		; 20 a2 8c
B4_0d67:		lda #$00		; a9 00
B4_0d69:		jsr $8ca2		; 20 a2 8c
B4_0d6c:		rts				; 60 


B4_0d6d:		.db $00				; 00
B4_0d6e:		.db $00				; 00
B4_0d6f:		.db $00				; 00
B4_0d70:		.db $00				; 00
B4_0d71:	.db $04
B4_0d72:		asl $08			; 06 08
B4_0d74:	.db $02
B4_0d75:		asl a			; 0a
B4_0d76:		.db $00				; 00
B4_0d77:	.db $0c
B4_0d78:		asl $1000		; 0e 00 10
B4_0d7b:		.db $00				; 00
B4_0d7c:		.db $00				; 00
B4_0d7d:	.db $0b
B4_0d7e:	.db $0b
B4_0d7f:	.db $0b
B4_0d80:		bpl B4_0d8c ; 10 0a

B4_0d82:		.db $00				; 00
B4_0d83:		asl a			; 0a
B4_0d84:		asl a			; 0a
B4_0d85:		cpy $d024		; cc 24 d0
B4_0d88:		bit $44			; 24 44
B4_0d8a:		and $4c			; 25 4c
B4_0d8c:		and $54			; 25 54
B4_0d8e:		and $b0			; 25 b0
B4_0d90:		and ($bc, x)	; 21 bc
B4_0d92:		and ($ac, x)	; 21 ac
B4_0d94:		and $a9			; 25 a9
B4_0d96:		.db $00				; 00
B4_0d97:		sta $0657, x	; 9d 57 06
B4_0d9a:		lda $0606, x	; bd 06 06
B4_0d9d:		bne B4_0dcd ; d0 2e

B4_0d9f:		lda $0438, x	; bd 38 04
B4_0da2:		sta $10			; 85 10
B4_0da4:		lda $041c, x	; bd 1c 04
B4_0da7:		sta $11			; 85 11
B4_0da9:		lda #$01		; a9 01
B4_0dab:		sta $0657, x	; 9d 57 06
B4_0dae:		lda $0633, x	; bd 33 06
B4_0db1:		sta $12			; 85 12
B4_0db3:		jsr $8ed6		; 20 d6 8e
B4_0db6:		lda $0c			; a5 0c
B4_0db8:		beq B4_0dcd ; f0 13

B4_0dba:		lda #$00		; a9 00
B4_0dbc:		sta $00			; 85 00
B4_0dbe:		lda $0d			; a5 0d
B4_0dc0:		jsr $93b6		; 20 b6 93
B4_0dc3:		bcs B4_0dcd ; b0 08

B4_0dc5:		ldy $12			; a4 12
B4_0dc7:		lda #$ff		; a9 ff
B4_0dc9:		sta $07ec, y	; 99 ec 07
B4_0dcc:		rts				; 60 


B4_0dcd:		ldy $0633, x	; bc 33 06
B4_0dd0:		lda $07ec, y	; b9 ec 07
B4_0dd3:		cmp #$ff		; c9 ff
B4_0dd5:		bne B4_0dda ; d0 03

B4_0dd7:		jmp $94e2		; 4c e2 94


B4_0dda:		lda $05d8, x	; bd d8 05
B4_0ddd:		bne B4_0e22 ; d0 43

B4_0ddf:		lda $0645, x	; bd 45 06
B4_0de2:		clc				; 18 
B4_0de3:		adc #$80		; 69 80
B4_0de5:		sta $0645, x	; 9d 45 06
B4_0de8:		lda $061d, x	; bd 1d 06
B4_0deb:		adc $0565, x	; 7d 65 05
B4_0dee:		cmp #$60		; c9 60
B4_0df0:		bcs B4_0dfc ; b0 0a

B4_0df2:		lda $061d, x	; bd 1d 06
B4_0df5:		eor #$ff		; 49 ff
B4_0df7:		sta $061d, x	; 9d 1d 06
B4_0dfa:		lda #$60		; a9 60
B4_0dfc:		cmp #$a0		; c9 a0
B4_0dfe:		bcc B4_0e0a ; 90 0a

B4_0e00:		lda $061d, x	; bd 1d 06
B4_0e03:		eor #$ff		; 49 ff
B4_0e05:		sta $061d, x	; 9d 1d 06
B4_0e08:		lda #$9f		; a9 9f
B4_0e0a:		sta $0565, x	; 9d 65 05
B4_0e0d:		sec				; 38 
B4_0e0e:		sbc #$80		; e9 80
B4_0e10:		bcs B4_0e17 ; b0 05

B4_0e12:		eor #$ff		; 49 ff
B4_0e14:		clc				; 18 
B4_0e15:		adc #$01		; 69 01
B4_0e17:		lsr a			; 4a
B4_0e18:		tay				; a8 
B4_0e19:		lda $8f11, y	; b9 11 8f
B4_0e1c:		sta $05d8, x	; 9d d8 05
B4_0e1f:		jmp $8e25		; 4c 25 8e


B4_0e22:		dec $05d8, x	; de d8 05
B4_0e25:		ldy $0633, x	; bc 33 06
B4_0e28:		lda $8f21, y	; b9 21 8f
B4_0e2b:		tay				; a8 
B4_0e2c:		lda $8f26, y	; b9 26 8f
B4_0e2f:		sta $00			; 85 00
B4_0e31:		lda $8f27, y	; b9 27 8f
B4_0e34:		sta $01			; 85 01
B4_0e36:		lda $0606, x	; bd 06 06
B4_0e39:		asl a			; 0a
B4_0e3a:		tay				; a8 
B4_0e3b:		lda ($00), y	; b1 00
B4_0e3d:		sta $02			; 85 02
B4_0e3f:		iny				; c8 
B4_0e40:		lda ($00), y	; b1 00
B4_0e42:		sta $03			; 85 03
B4_0e44:		lda $0565, x	; bd 65 05
B4_0e47:		jsr $93f7		; 20 f7 93
B4_0e4a:		lda $04			; a5 04
B4_0e4c:		cmp #$80		; c9 80
B4_0e4e:		bcc B4_0e5c ; 90 0c

B4_0e50:		lda $05			; a5 05
B4_0e52:		eor #$01		; 49 01
B4_0e54:		sta $05			; 85 05
B4_0e56:		lda $06			; a5 06
B4_0e58:		eor #$01		; 49 01
B4_0e5a:		sta $06			; 85 06
B4_0e5c:		jsr $8ed6		; 20 d6 8e
B4_0e5f:		lda #$00		; a9 00
B4_0e61:		sta $0470, x	; 9d 70 04
B4_0e64:		jsr $8627		; 20 27 86
B4_0e67:		jsr $8661		; 20 61 86
B4_0e6a:		lda $0470, x	; bd 70 04
B4_0e6d:		beq B4_0e74 ; f0 05

B4_0e6f:		ora #$01		; 09 01
B4_0e71:		sta $0470, x	; 9d 70 04
B4_0e74:		lda #$01		; a9 01
B4_0e76:		sta $04a8, x	; 9d a8 04
B4_0e79:		lda $0565, x	; bd 65 05
B4_0e7c:		cmp #$80		; c9 80
B4_0e7e:		bcc B4_0e85 ; 90 05

B4_0e80:		lda #$00		; a9 00
B4_0e82:		sta $04a8, x	; 9d a8 04
B4_0e85:		lda $0606, x	; bd 06 06
B4_0e88:		beq B4_0ead ; f0 23

B4_0e8a:		lda $0565, x	; bd 65 05
B4_0e8d:		sec				; 38 
B4_0e8e:		sbc #$60		; e9 60
B4_0e90:		clc				; 18 
B4_0e91:		adc #$04		; 69 04
B4_0e93:		lsr a			; 4a
B4_0e94:		lsr a			; 4a
B4_0e95:		lsr a			; 4a
B4_0e96:		cmp #$05		; c9 05
B4_0e98:		bcc B4_0ea1 ; 90 07

B4_0e9a:		sta $00			; 85 00
B4_0e9c:		lda #$08		; a9 08
B4_0e9e:		sec				; 38 
B4_0e9f:		sbc $00			; e5 00
B4_0ea1:		clc				; 18 
B4_0ea2:		adc #$22		; 69 22
B4_0ea4:		tay				; a8 
B4_0ea5:		lda #$0c		; a9 0c
B4_0ea7:		jsr $ef5c		; 20 5c ef
B4_0eaa:		jmp $ef75		; 4c 75 ef


B4_0ead:		sec				; 38 
B4_0eae:		lda $0438, x	; bd 38 04
B4_0eb1:		sbc $10			; e5 10
B4_0eb3:		sta $04f2, x	; 9d f2 04
B4_0eb6:		sec				; 38 
B4_0eb7:		lda $041c, x	; bd 1c 04
B4_0eba:		sbc $11			; e5 11
B4_0ebc:		sta $0520, x	; 9d 20 05
B4_0ebf:		lda #$00		; a9 00
B4_0ec1:		sta $0509, x	; 9d 09 05
B4_0ec4:		sta $0537, x	; 9d 37 05
B4_0ec7:		lda #$01		; a9 01
B4_0ec9:		sta $04a8, x	; 9d a8 04
B4_0ecc:		lda #$0c		; a9 0c
B4_0ece:		ldy #$27		; a0 27
B4_0ed0:		jsr $ef5c		; 20 5c ef
B4_0ed3:		jmp $ef75		; 4c 75 ef


B4_0ed6:		lda $0633, x	; bd 33 06
B4_0ed9:		asl a			; 0a
B4_0eda:		tay				; a8 
B4_0edb:		lda $8efd, y	; b9 fd 8e
B4_0ede:		sta $0f			; 85 0f
B4_0ee0:		lda $8efe, y	; b9 fe 8e
B4_0ee3:		sta $0e			; 85 0e
B4_0ee5:		lda $8f07, y	; b9 07 8f
B4_0ee8:		sta $0d			; 85 0d
B4_0eea:		lda $8f08, y	; b9 08 8f
B4_0eed:		sta $0c			; 85 0c
B4_0eef:		lda $0d			; a5 0d
B4_0ef1:		sec				; 38 
B4_0ef2:		sbc $56			; e5 56
B4_0ef4:		sta $0d			; 85 0d
B4_0ef6:		lda $0c			; a5 0c
B4_0ef8:		sbc $57			; e5 57
B4_0efa:		sta $0c			; 85 0c
B4_0efc:		rts				; 60 


B4_0efd:		bmi B4_0eff ; 30 00

B4_0eff:		bmi B4_0f01 ; 30 00

B4_0f01:		bpl B4_0f03 ; 10 00

B4_0f03:		bmi B4_0f05 ; 30 00

B4_0f05:		bpl B4_0f07 ; 10 00

B4_0f07:	.db $80
B4_0f08:		.db $00				; 00
B4_0f09:		rts				; 60 


B4_0f0a:		ora ($d0, x)	; 01 d0
B4_0f0c:		.db $00				; 00
B4_0f0d:	.db $80
B4_0f0e:		ora ($50, x)	; 01 50
B4_0f10:	.db $02
B4_0f11:		.db $00				; 00
B4_0f12:		.db $00				; 00
B4_0f13:		.db $00				; 00
B4_0f14:		.db $00				; 00
B4_0f15:		.db $00				; 00
B4_0f16:		.db $00				; 00
B4_0f17:		.db $00				; 00
B4_0f18:		.db $00				; 00
B4_0f19:		.db $00				; 00
B4_0f1a:		.db $00				; 00
B4_0f1b:		.db $00				; 00
B4_0f1c:		.db $00				; 00
B4_0f1d:		ora ($02, x)	; 01 02
B4_0f1f:	.db $03
B4_0f20:	.db $04
B4_0f21:		.db $00				; 00
B4_0f22:		.db $00				; 00
B4_0f23:	.db $02
B4_0f24:		.db $00				; 00
B4_0f25:	.db $02
B4_0f26:	.db $3c
B4_0f27:	.db $8f
B4_0f28:		rol a			; 2a
B4_0f29:	.db $8f
B4_0f2a:		dec $8f			; c6 8f
B4_0f2c:		asl $90			; 06 90
B4_0f2e:		lsr $90			; 46 90
B4_0f30:		stx $90			; 86 90
B4_0f32:		dec $90			; c6 90
B4_0f34:		lsr $8f			; 46 8f
B4_0f36:	.db $e7
B4_0f37:		sta $a7			; 85 a7
B4_0f39:		sta $67			; 85 67
B4_0f3b:		sta $86			; 85 86
B4_0f3d:	.db $8f
B4_0f3e:		lsr $8f			; 46 8f
B4_0f40:	.db $e7
B4_0f41:		sta $a7			; 85 a7
B4_0f43:		sta $67			; 85 67
B4_0f45:		sta $00			; 85 00
B4_0f47:		ora ($03, x)	; 01 03
B4_0f49:	.db $04
B4_0f4a:		ora $07			; 05 07
B4_0f4c:		php				; 08 
B4_0f4d:		asl a			; 0a
B4_0f4e:	.db $0b
B4_0f4f:	.db $0c
B4_0f50:		asl $100f		; 0e 0f 10
B4_0f53:	.db $12
B4_0f54:	.db $13
B4_0f55:	.db $14
B4_0f56:		ora $17, x		; 15 17
B4_0f58:		clc				; 18 
B4_0f59:		ora $1c1a, y	; 19 1a 1c
B4_0f5c:		ora $1f1e, x	; 1d 1e 1f
B4_0f5f:		jsr $2221		; 20 21 22
B4_0f62:		bit $25			; 24 25
B4_0f64:		rol $27			; 26 27
B4_0f66:		plp				; 28 
B4_0f67:		and #$29		; 29 29
B4_0f69:		rol a			; 2a
B4_0f6a:	.db $2b
B4_0f6b:		bit $2e2d		; 2c 2d 2e
B4_0f6e:	.db $2f
B4_0f6f:	.db $2f
B4_0f70:		bmi B4_0fa3 ; 30 31

B4_0f72:		and ($32), y	; 31 32
B4_0f74:	.db $33
B4_0f75:	.db $33
B4_0f76:	.db $34
B4_0f77:	.db $34
B4_0f78:		and $35, x		; 35 35
B4_0f7a:		rol $36, x		; 36 36
B4_0f7c:		rol $37, x		; 36 37
B4_0f7e:	.db $37
B4_0f7f:	.db $37
B4_0f80:	.db $37
B4_0f81:		sec				; 38 
B4_0f82:		sec				; 38 
B4_0f83:		sec				; 38 
B4_0f84:		sec				; 38 
B4_0f85:		sec				; 38 
B4_0f86:		.db $00				; 00
B4_0f87:	.db $02
B4_0f88:	.db $04
B4_0f89:		asl $08			; 06 08
B4_0f8b:		asl a			; 0a
B4_0f8c:	.db $0c
B4_0f8d:		asl $1210		; 0e 10 12
B4_0f90:	.db $13
B4_0f91:		ora $17, x		; 15 17
B4_0f93:		ora $1d1b, y	; 19 1b 1d
B4_0f96:	.db $1f
B4_0f97:		jsr $2422		; 20 22 24
B4_0f9a:		rol $27			; 26 27
B4_0f9c:		and #$2b		; 29 2b
B4_0f9e:		bit $302e		; 2c 2e 30
B4_0fa1:		and ($33), y	; 31 33
B4_0fa3:	.db $34
B4_0fa4:		rol $37, x		; 36 37
B4_0fa6:		and $3b3a, y	; 39 3a 3b
B4_0fa9:		and $3f3e, x	; 3d 3e 3f
B4_0fac:		rti				; 40 


B4_0fad:		eor ($43, x)	; 41 43
B4_0faf:	.db $44
B4_0fb0:		eor $46			; 45 46
B4_0fb2:	.db $47
B4_0fb3:	.db $47
B4_0fb4:		pha				; 48 
B4_0fb5:		eor #$4a		; 49 4a
B4_0fb7:	.db $4b
B4_0fb8:	.db $4b
B4_0fb9:		jmp $4d4d		; 4c 4d 4d


B4_0fbc:		lsr $4e4e		; 4e 4e 4e
B4_0fbf:	.db $4f
B4_0fc0:	.db $4f
B4_0fc1:	.db $4f
B4_0fc2:		;removed
	.db $50 $50

B4_0fc4:		bvc B4_1016 ; 50 50

B4_0fc6:		.db $00				; 00
B4_0fc7:	.db $04
B4_0fc8:	.db $07
B4_0fc9:	.db $0b
B4_0fca:		asl $1512		; 0e 12 15
B4_0fcd:		ora $201c, y	; 19 1c 20
B4_0fd0:	.db $23
B4_0fd1:		rol $2a			; 26 2a
B4_0fd3:		and $3431		; 2d 31 34
B4_0fd6:	.db $37
B4_0fd7:	.db $3a
B4_0fd8:		rol $4441, x	; 3e 41 44
B4_0fdb:	.db $47
B4_0fdc:		lsr a			; 4a
B4_0fdd:		eor $5350		; 4d 50 53
B4_0fe0:		lsr $59, x		; 56 59
B4_0fe2:	.db $5b
B4_0fe3:		lsr $6361, x	; 5e 61 63
B4_0fe6:		ror $68			; 66 68
B4_0fe8:	.db $6b
B4_0fe9:		adc $726f		; 6d 6f 72
B4_0fec:	.db $74
B4_0fed:		ror $78, x		; 76 78
B4_0fef:	.db $7a
B4_0ff0:	.db $7c
B4_0ff1:		adc $817f, x	; 7d 7f 81
B4_0ff4:	.db $82
B4_0ff5:		sty $85			; 84 85
B4_0ff7:		stx $88			; 86 88
B4_0ff9:	.db $89
B4_0ffa:		txa				; 8a 
B4_0ffb:	.db $8b
B4_0ffc:		sty $8d8d		; 8c 8d 8d
B4_0fff:		stx $8f8e		; 8e 8e 8f
B4_1002:	.db $8f
B4_1003:		;removed
	.db $90 $90

B4_1005:		bcc B4_1007 ; 90 00

B4_1007:	.db $03
B4_1008:		asl $09			; 06 09
B4_100a:	.db $0c
B4_100b:	.db $0f
B4_100c:	.db $12
B4_100d:		ora $17, x		; 15 17
B4_100f:	.db $1a
B4_1010:		ora $2320, x	; 1d 20 23
B4_1013:		rol $28			; 26 28
B4_1015:	.db $2b
B4_1016:		rol $3331		; 2e 31 33
B4_1019:		rol $39, x		; 36 39
B4_101b:	.db $3b
B4_101c:		rol $4340, x	; 3e 40 43
B4_101f:		eor $47			; 45 47
B4_1021:		lsr a			; 4a
B4_1022:		jmp $514e		; 4c 4e 51


B4_1025:	.db $53
B4_1026:		eor $57, x		; 55 57
B4_1028:		eor $5d5b, y	; 59 5b 5d
B4_102b:	.db $5f
B4_102c:		rts				; 60 


B4_102d:	.db $62
B4_102e:	.db $64
B4_102f:		adc $67			; 65 67
B4_1031:		pla				; 68 
B4_1032:		ror a			; 6a
B4_1033:	.db $6b
B4_1034:		jmp ($6f6e)		; 6c 6e 6f


B4_1037:		bvs B4_10aa ; 70 71

B4_1039:	.db $72
B4_103a:	.db $73
B4_103b:	.db $74
B4_103c:	.db $74
B4_103d:		adc $76, x		; 75 76
B4_103f:		ror $77, x		; 76 77
B4_1041:	.db $77
B4_1042:	.db $77
B4_1043:		sei				; 78 
B4_1044:		sei				; 78 
B4_1045:		sei				; 78 
B4_1046:		.db $00				; 00
B4_1047:	.db $03
B4_1048:		ora $08			; 05 08
B4_104a:		asl a			; 0a
B4_104b:		ora $120f		; 0d 0f 12
B4_104e:	.db $14
B4_104f:	.db $17
B4_1050:		ora $1e1c, y	; 19 1c 1e
B4_1053:		and ($23, x)	; 21 23
B4_1055:		and $28			; 25 28
B4_1057:		rol a			; 2a
B4_1058:		bit $312f		; 2c 2f 31
B4_105b:	.db $33
B4_105c:		and $38, x		; 35 38
B4_105e:	.db $3a
B4_105f:	.db $3c
B4_1060:		rol $4240, x	; 3e 40 42
B4_1063:	.db $44
B4_1064:		lsr $48			; 46 48
B4_1066:		lsr a			; 4a
B4_1067:	.db $4b
B4_1068:		eor $504f		; 4d 4f 50
B4_106b:	.db $52
B4_106c:	.db $54
B4_106d:		eor $56, x		; 55 56
B4_106f:		cli				; 58 
B4_1070:		eor $5c5a, y	; 59 5a 5c
B4_1073:		eor $5f5e, x	; 5d 5e 5f
B4_1076:		rts				; 60 


B4_1077:		adc ($62, x)	; 61 62
B4_1079:	.db $63
B4_107a:	.db $64
B4_107b:	.db $64
B4_107c:		adc $65			; 65 65
B4_107e:		ror $66			; 66 66
B4_1080:	.db $67
B4_1081:	.db $67
B4_1082:	.db $67
B4_1083:		pla				; 68 
B4_1084:		pla				; 68 
B4_1085:		pla				; 68 
B4_1086:		.db $00				; 00
B4_1087:	.db $02
B4_1088:	.db $04
B4_1089:		asl $09			; 06 09
B4_108b:	.db $0b
B4_108c:		ora $110f		; 0d 0f 11
B4_108f:	.db $13
B4_1090:		ora $17, x		; 15 17
B4_1092:	.db $1a
B4_1093:	.db $1c
B4_1094:		asl $2220, x	; 1e 20 22
B4_1097:		bit $26			; 24 26
B4_1099:		plp				; 28 
B4_109a:		and #$2b		; 29 2b
B4_109c:		and $312f		; 2d 2f 31
B4_109f:	.db $33
B4_10a0:	.db $34
B4_10a1:		rol $38, x		; 36 38
B4_10a3:		and $3d3b, y	; 39 3b 3d
B4_10a6:		rol $4140, x	; 3e 40 41
B4_10a9:	.db $43
B4_10aa:	.db $44
B4_10ab:		eor $47			; 45 47
B4_10ad:		pha				; 48 
B4_10ae:		eor #$4a		; 49 4a
B4_10b0:	.db $4b
B4_10b1:		eor $4f4e		; 4d 4e 4f
B4_10b4:		bvc B4_1106 ; 50 50

B4_10b6:		eor ($52), y	; 51 52
B4_10b8:	.db $53
B4_10b9:	.db $54
B4_10ba:	.db $54
B4_10bb:		eor $55, x		; 55 55
B4_10bd:		lsr $56, x		; 56 56
B4_10bf:	.db $57
B4_10c0:	.db $57
B4_10c1:	.db $57
B4_10c2:		cli				; 58 
B4_10c3:		cli				; 58 
B4_10c4:		cli				; 58 
B4_10c5:		cli				; 58 
B4_10c6:		.db $00				; 00
B4_10c7:	.db $02
B4_10c8:	.db $04
B4_10c9:		ora $07			; 05 07
B4_10cb:		ora #$0b		; 09 0b
B4_10cd:	.db $0c
B4_10ce:		asl $1110		; 0e 10 11
B4_10d1:	.db $13
B4_10d2:		ora $17, x		; 15 17
B4_10d4:		clc				; 18 
B4_10d5:	.db $1a
B4_10d6:	.db $1c
B4_10d7:		ora $201f, x	; 1d 1f 20
B4_10da:	.db $22
B4_10db:	.db $23
B4_10dc:		and $27			; 25 27
B4_10de:		plp				; 28 
B4_10df:		and #$2b		; 29 2b
B4_10e1:		bit $2f2e		; 2c 2e 2f
B4_10e4:		bmi B4_1118 ; 30 32

B4_10e6:	.db $33
B4_10e7:	.db $34
B4_10e8:		and $37, x		; 35 37
B4_10ea:		sec				; 38 
B4_10eb:		and $3b3a, y	; 39 3a 3b
B4_10ee:	.db $3c
B4_10ef:		and $3f3e, x	; 3d 3e 3f
B4_10f2:	.db $3f
B4_10f3:		rti				; 40 


B4_10f4:		eor ($42, x)	; 41 42
B4_10f6:	.db $43
B4_10f7:	.db $43
B4_10f8:	.db $44
B4_10f9:	.db $44
B4_10fa:		eor $45			; 45 45
B4_10fc:		lsr $46			; 46 46
B4_10fe:	.db $47
B4_10ff:	.db $47
B4_1100:	.db $47
B4_1101:	.db $47
B4_1102:		pha				; 48 
B4_1103:		pha				; 48 
B4_1104:		pha				; 48 
B4_1105:		pha				; 48 
B4_1106:		lda $0633, x	; bd 33 06
B4_1109:		tay				; a8 
B4_110a:		lda $92af, y	; b9 af 92
B4_110d:		beq B4_1120 ; f0 11

B4_110f:		lda $0645, x	; bd 45 06
B4_1112:		cmp #$2a		; c9 2a
B4_1114:		bcc B4_1120 ; 90 0a

B4_1116:		lda #$0e		; a9 0e
B4_1118:		jsr playSound		; 20 5f e2
B4_111b:		lda #$00		; a9 00
B4_111d:		sta $0645, x	; 9d 45 06
B4_1120:		inc $0645, x	; fe 45 06
B4_1123:		lda $0470, x	; bd 70 04
B4_1126:		ora #$88		; 09 88
B4_1128:		sta $0470, x	; 9d 70 04
B4_112b:		lda #$88		; a9 88
B4_112d:		sta $0400, x	; 9d 00 04
B4_1130:		lda $061d, x	; bd 1d 06
B4_1133:		beq B4_113b ; f0 06

B4_1135:		jsr $9387		; 20 87 93
B4_1138:		bcs B4_1141 ; b0 07

B4_113a:		rts				; 60 


B4_113b:		jsr $93a8		; 20 a8 93
B4_113e:		bcs B4_1141 ; b0 01

B4_1140:		rts				; 60 


B4_1141:		rts				; 60 


B4_1142:		ldy $061d, x	; bc 1d 06
B4_1145:		lda $054e, y	; b9 4e 05
B4_1148:		bne B4_114d ; d0 03

B4_114a:		jmp $94e2		; 4c e2 94


B4_114d:		lda $0438, x	; bd 38 04
B4_1150:		sta $12			; 85 12
B4_1152:		sta $10			; 85 10
B4_1154:		lda $041c, x	; bd 1c 04
B4_1157:		sta $13			; 85 13
B4_1159:		sta $11			; 85 11
B4_115b:		lda #$00		; a9 00
B4_115d:		sta $0657, x	; 9d 57 06
B4_1160:		ldy $0606, x	; bc 06 06
B4_1163:		lda $92bb, y	; b9 bb 92
B4_1166:		beq B4_118a ; f0 22

B4_1168:		lda $92af, y	; b9 af 92
B4_116b:		beq B4_1179 ; f0 0c

B4_116d:		lda $0565, x	; bd 65 05
B4_1170:		cmp #$aa		; c9 aa
B4_1172:		bne B4_1179 ; d0 05

B4_1174:		lda #$55		; a9 55
B4_1176:		sta $0565, x	; 9d 65 05
B4_1179:		lda $0633, x	; bd 33 06
B4_117c:		sec				; 38 
B4_117d:		sbc #$80		; e9 80
B4_117f:		sta $0633, x	; 9d 33 06
B4_1182:		bcs B4_11ac ; b0 28

B4_1184:		dec $0565, x	; de 65 05
B4_1187:		jmp $91ac		; 4c ac 91


B4_118a:		ldy $0606, x	; bc 06 06
B4_118d:		lda $92af, y	; b9 af 92
B4_1190:		beq B4_119e ; f0 0c

B4_1192:		lda $0565, x	; bd 65 05
B4_1195:		cmp #$55		; c9 55
B4_1197:		bne B4_119e ; d0 05

B4_1199:		lda #$aa		; a9 aa
B4_119b:		sta $0565, x	; 9d 65 05
B4_119e:		lda $0633, x	; bd 33 06
B4_11a1:		clc				; 18 
B4_11a2:		adc #$80		; 69 80
B4_11a4:		sta $0633, x	; 9d 33 06
B4_11a7:		bcc B4_11ac ; 90 03

B4_11a9:		inc $0565, x	; fe 65 05
B4_11ac:		lda $0669, x	; bd 69 06
B4_11af:		beq B4_11c7 ; f0 16

B4_11b1:		lda #$00		; a9 00
B4_11b3:		sta $0669, x	; 9d 69 06
B4_11b6:		ldy $0606, x	; bc 06 06
B4_11b9:		lda $92c7, y	; b9 c7 92
B4_11bc:		tay				; a8 
B4_11bd:		lda #$00		; a9 00
B4_11bf:		sta $07ec, y	; 99 ec 07
B4_11c2:		lda #$80		; a9 80
B4_11c4:		sta $07ed, y	; 99 ed 07
B4_11c7:		ldy $0606, x	; bc 06 06
B4_11ca:		lda $92af, y	; b9 af 92
B4_11cd:		tay				; a8 
B4_11ce:		lda $9303, y	; b9 03 93
B4_11d1:		sta $02			; 85 02
B4_11d3:		lda $9304, y	; b9 04 93
B4_11d6:		sta $03			; 85 03
B4_11d8:		lda $0565, x	; bd 65 05
B4_11db:		jsr $93f7		; 20 f7 93
B4_11de:		lda $04			; a5 04
B4_11e0:		cmp #$80		; c9 80
B4_11e2:		bcc B4_11f0 ; 90 0c

B4_11e4:		lda $05			; a5 05
B4_11e6:		eor #$01		; 49 01
B4_11e8:		sta $05			; 85 05
B4_11ea:		lda $06			; a5 06
B4_11ec:		eor #$01		; 49 01
B4_11ee:		sta $06			; 85 06
B4_11f0:		lda $0606, x	; bd 06 06
B4_11f3:		asl a			; 0a
B4_11f4:		tay				; a8 
B4_11f5:		lda $92d3, y	; b9 d3 92
B4_11f8:		sta $0f			; 85 0f
B4_11fa:		lda $92d4, y	; b9 d4 92
B4_11fd:		sta $0e			; 85 0e
B4_11ff:		lda $92eb, y	; b9 eb 92
B4_1202:		sta $0d			; 85 0d
B4_1204:		lda $92ec, y	; b9 ec 92
B4_1207:		sta $0c			; 85 0c
B4_1209:		lda $68			; a5 68
B4_120b:		bpl B4_1220 ; 10 13

B4_120d:		jsr $9296		; 20 96 92
B4_1210:		lda $0f			; a5 0f
B4_1212:		sec				; 38 
B4_1213:		sbc $11			; e5 11
B4_1215:		sta $0f			; 85 0f
B4_1217:		lda $0e			; a5 0e
B4_1219:		sbc $10			; e5 10
B4_121b:		sta $0e			; 85 0e
B4_121d:		jmp $922d		; 4c 2d 92


B4_1220:		lda $0d			; a5 0d
B4_1222:		sec				; 38 
B4_1223:		sbc $56			; e5 56
B4_1225:		sta $0d			; 85 0d
B4_1227:		lda $0c			; a5 0c
B4_1229:		sbc $57			; e5 57
B4_122b:		sta $0c			; 85 0c
B4_122d:		lda #$00		; a9 00
B4_122f:		sta $0470, x	; 9d 70 04
B4_1232:		jsr $8627		; 20 27 86
B4_1235:		jsr $8661		; 20 61 86
B4_1238:		lda $0438, x	; bd 38 04
B4_123b:		sec				; 38 
B4_123c:		sbc $12			; e5 12
B4_123e:		sta $04f2, x	; 9d f2 04
B4_1241:		lda $041c, x	; bd 1c 04
B4_1244:		sec				; 38 
B4_1245:		sbc $13			; e5 13
B4_1247:		sta $0520, x	; 9d 20 05
B4_124a:		lda #$00		; a9 00
B4_124c:		sta $0509, x	; 9d 09 05
B4_124f:		sta $0537, x	; 9d 37 05
B4_1252:		lda $0606, x	; bd 06 06
B4_1255:		beq B4_1263 ; f0 0c

B4_1257:		lda $041c, x	; bd 1c 04
B4_125a:		cmp #$e1		; c9 e1
B4_125c:		bcc B4_1263 ; 90 05

B4_125e:		lda #$88		; a9 88
B4_1260:		sta $0470, x	; 9d 70 04
B4_1263:		lda #$01		; a9 01
B4_1265:		sta $04a8, x	; 9d a8 04
B4_1268:		lda $0565, x	; bd 65 05
B4_126b:		cmp #$80		; c9 80
B4_126d:		bcc B4_1274 ; 90 05

B4_126f:		lda #$00		; a9 00
B4_1271:		sta $04a8, x	; 9d a8 04
B4_1274:		lda $0565, x	; bd 65 05
B4_1277:		clc				; 18 
B4_1278:		adc #$04		; 69 04
B4_127a:		lsr a			; 4a
B4_127b:		lsr a			; 4a
B4_127c:		lsr a			; 4a
B4_127d:		cmp #$12		; c9 12
B4_127f:		bcc B4_1288 ; 90 07

B4_1281:		sta $00			; 85 00
B4_1283:		lda #$20		; a9 20
B4_1285:		sec				; 38 
B4_1286:		sbc $00			; e5 00
B4_1288:		and #$fe		; 29 fe
B4_128a:		clc				; 18 
B4_128b:		adc #$36		; 69 36
B4_128d:		sta $0400, x	; 9d 00 04
B4_1290:		lda #$0c		; a9 0c
B4_1292:		sta $048c, x	; 9d 8c 04
B4_1295:		rts				; 60 


B4_1296:		lda $57			; a5 57
B4_1298:		clc				; 18 
B4_1299:		adc #$01		; 69 01
B4_129b:		asl a			; 0a
B4_129c:		asl a			; 0a
B4_129d:		asl a			; 0a
B4_129e:		asl a			; 0a
B4_129f:		sta $10			; 85 10
B4_12a1:		lda $56			; a5 56
B4_12a3:		sec				; 38 
B4_12a4:		sbc $10			; e5 10
B4_12a6:		sta $11			; 85 11
B4_12a8:		lda $57			; a5 57
B4_12aa:		sbc #$00		; e9 00
B4_12ac:		sta $10			; 85 10
B4_12ae:		rts				; 60 


B4_12af:		.db $00				; 00
B4_12b0:		.db $00				; 00
B4_12b1:	.db $02
B4_12b2:		.db $00				; 00
B4_12b3:		.db $00				; 00
B4_12b4:	.db $02
B4_12b5:		.db $00				; 00
B4_12b6:		.db $00				; 00
B4_12b7:		.db $00				; 00
B4_12b8:		.db $00				; 00
B4_12b9:		.db $00				; 00
B4_12ba:		.db $00				; 00
B4_12bb:		.db $00				; 00
B4_12bc:		ora ($00, x)	; 01 00
B4_12be:		.db $00				; 00
B4_12bf:		ora ($00, x)	; 01 00
B4_12c1:		ora ($00, x)	; 01 00
B4_12c3:		.db $00				; 00
B4_12c4:		ora ($00, x)	; 01 00
B4_12c6:		.db $00				; 00
B4_12c7:	.db $02
B4_12c8:		.db $00				; 00
B4_12c9:		.db $00				; 00
B4_12ca:		.db $00				; 00
B4_12cb:		.db $00				; 00
B4_12cc:	.db $02
B4_12cd:	.db $04
B4_12ce:	.db $02
B4_12cf:		.db $00				; 00
B4_12d0:	.db $04
B4_12d1:	.db $02
B4_12d2:		.db $00				; 00
B4_12d3:		sta ($02, x)	; 81 02
B4_12d5:		sbc ($00, x)	; e1 00
B4_12d7:		dec $c100, x	; de 00 c1
B4_12da:		.db $00				; 00
B4_12db:		ora ($00, x)	; 01 00
B4_12dd:		dec $8100, x	; de 00 81
B4_12e0:	.db $02
B4_12e1:		adc ($02, x)	; 61 02
B4_12e3:		lda ($00, x)	; a1 00
B4_12e5:		sta ($00, x)	; 81 00
B4_12e7:		lda ($00, x)	; a1 00
B4_12e9:		lda ($02, x)	; a1 02
B4_12eb:		rti				; 40 


B4_12ec:		.db $00				; 00
B4_12ed:		rts				; 60 


B4_12ee:		.db $00				; 00
B4_12ef:		jsr $8001		; 20 01 80
B4_12f2:		.db $00				; 00
B4_12f3:		.db $00				; 00
B4_12f4:		.db $00				; 00
B4_12f5:		rts				; 60 


B4_12f6:		.db $00				; 00
B4_12f7:		rts				; 60 


B4_12f8:		.db $00				; 00
B4_12f9:		jsr $c000		; 20 00 c0
B4_12fc:		.db $00				; 00
B4_12fd:	.db $80
B4_12fe:		.db $00				; 00
B4_12ff:		rti				; 40 


B4_1300:		.db $00				; 00
B4_1301:	.db $80
B4_1302:		.db $00				; 00
B4_1303:	.db $07
B4_1304:	.db $93
B4_1305:	.db $47
B4_1306:	.db $93
B4_1307:		.db $00				; 00
B4_1308:		ora ($02, x)	; 01 02
B4_130a:	.db $02
B4_130b:	.db $03
B4_130c:	.db $04
B4_130d:		ora $05			; 05 05
B4_130f:		asl $07			; 06 07
B4_1311:		php				; 08 
B4_1312:		ora #$09		; 09 09
B4_1314:		asl a			; 0a
B4_1315:	.db $0b
B4_1316:	.db $0c
B4_1317:	.db $0c
B4_1318:		ora $0e0e		; 0d 0e 0e
B4_131b:	.db $0f
B4_131c:		bpl B4_132e ; 10 10

B4_131e:		ora ($12), y	; 11 12
B4_1320:	.db $12
B4_1321:	.db $13
B4_1322:	.db $14
B4_1323:	.db $14
B4_1324:		ora $15, x		; 15 15
B4_1326:		asl $17, x		; 16 17
B4_1328:	.db $17
B4_1329:		clc				; 18 
B4_132a:		clc				; 18 
B4_132b:		ora $1a19, y	; 19 19 1a
B4_132e:	.db $1a
B4_132f:	.db $1b
B4_1330:	.db $1b
B4_1331:	.db $1b
B4_1332:	.db $1c
B4_1333:	.db $1c
B4_1334:		ora $1d1d, x	; 1d 1d 1d
B4_1337:		asl $1e1e, x	; 1e 1e 1e
B4_133a:		asl $1f1f, x	; 1e 1f 1f
B4_133d:	.db $1f
B4_133e:	.db $1f
B4_133f:	.db $1f
B4_1340:		jsr $2020		; 20 20 20
B4_1343:		jsr $2020		; 20 20 20
B4_1346:		jsr $0200		; 20 00 02
B4_1349:	.db $03
B4_134a:		ora $06			; 05 06
B4_134c:		php				; 08 
B4_134d:		ora #$0b		; 09 0b
B4_134f:	.db $0c
B4_1350:		asl $1110		; 0e 10 11
B4_1353:	.db $13
B4_1354:	.db $14
B4_1355:		asl $17, x		; 16 17
B4_1357:		clc				; 18 
B4_1358:	.db $1a
B4_1359:	.db $1b
B4_135a:		ora $201e, x	; 1d 1e 20
B4_135d:		and ($22, x)	; 21 22
B4_135f:		bit $25			; 24 25
B4_1361:		rol $27			; 26 27
B4_1363:		and #$2a		; 29 2a
B4_1365:	.db $2b
B4_1366:		bit $2e2d		; 2c 2d 2e
B4_1369:	.db $2f
B4_136a:		bmi B4_139d ; 30 31

B4_136c:	.db $32
B4_136d:	.db $33
B4_136e:	.db $34
B4_136f:		and $36, x		; 35 36
B4_1371:	.db $37
B4_1372:		sec				; 38 
B4_1373:		sec				; 38 
B4_1374:		and $3b3a, y	; 39 3a 3b
B4_1377:	.db $3b
B4_1378:	.db $3c
B4_1379:	.db $3c
B4_137a:		and $3e3d, x	; 3d 3d 3e
B4_137d:		rol $3f3e, x	; 3e 3e 3f
B4_1380:	.db $3f
B4_1381:	.db $3f
B4_1382:		rti				; 40 


B4_1383:		rti				; 40 


B4_1384:		rti				; 40 


B4_1385:		rti				; 40 


B4_1386:		rti				; 40 


B4_1387:		lda $0470, x	; bd 70 04
B4_138a:		and #$01		; 29 01
B4_138c:		beq B4_13f5 ; f0 67

B4_138e:		lda #$00		; a9 00
B4_1390:		sta $00			; 85 00
B4_1392:		lda $041c, x	; bd 1c 04
B4_1395:		jmp $93b6		; 4c b6 93


B4_1398:		lda $0470, x	; bd 70 04
B4_139b:		and #$01		; 29 01
B4_139d:		beq B4_13f5 ; f0 56

B4_139f:		lda #$00		; a9 00
B4_13a1:		sta $00			; 85 00
B4_13a3:		lda $01			; a5 01
B4_13a5:		jmp $93b6		; 4c b6 93


B4_13a8:		lda $0470, x	; bd 70 04
B4_13ab:		and #$01		; 29 01
B4_13ad:		beq B4_13f5 ; f0 46

B4_13af:		lda #$00		; a9 00
B4_13b1:		sta $00			; 85 00
B4_13b3:		lda $0438, x	; bd 38 04
B4_13b6:		cmp #$41		; c9 41
B4_13b8:		bcc B4_13f5 ; 90 3b

B4_13ba:		cmp #$bf		; c9 bf
B4_13bc:		bcs B4_13f5 ; b0 37

B4_13be:		and #$80		; 29 80
B4_13c0:		bne B4_13c4 ; d0 02

B4_13c2:		inc $00			; e6 00
B4_13c4:		ldy $00			; a4 00
B4_13c6:		lda $65			; a5 65
B4_13c8:		bne B4_13d8 ; d0 0e

B4_13ca:		lda $00			; a5 00
B4_13cc:		beq B4_13f5 ; f0 27

B4_13ce:		lda $078f, x	; bd 8f 07
B4_13d1:		cmp $07a1, y	; d9 a1 07
B4_13d4:		bpl B4_13ea ; 10 14

B4_13d6:		bmi B4_13e4 ; 30 0c

B4_13d8:		lda $00			; a5 00
B4_13da:		bne B4_13f5 ; d0 19

B4_13dc:		lda $078f, x	; bd 8f 07
B4_13df:		cmp $07a1, y	; d9 a1 07
B4_13e2:		bmi B4_13ea ; 30 06

B4_13e4:		lda $078f, x	; bd 8f 07
B4_13e7:		sta $07a1, y	; 99 a1 07
B4_13ea:		tay				; a8 
B4_13eb:		lda #$00		; a9 00
B4_13ed:		sta $0782, y	; 99 82 07
B4_13f0:		jsr $94e2		; 20 e2 94
B4_13f3:		clc				; 18 
B4_13f4:		rts				; 60 


B4_13f5:		sec				; 38 
B4_13f6:		rts				; 60 


B4_13f7:		sta $04			; 85 04
B4_13f9:		and #$3f		; 29 3f
B4_13fb:		sta $05			; 85 05
B4_13fd:		tay				; a8 
B4_13fe:		lda ($02), y	; b1 02
B4_1400:		sta $08			; 85 08
B4_1402:		lda #$3f		; a9 3f
B4_1404:		sec				; 38 
B4_1405:		sbc $05			; e5 05
B4_1407:		tay				; a8 
B4_1408:		lda ($02), y	; b1 02
B4_140a:		sta $09			; 85 09
B4_140c:		lda #$00		; a9 00
B4_140e:		sta $05			; 85 05
B4_1410:		sta $06			; 85 06
B4_1412:		lda $04			; a5 04
B4_1414:		and #$7f		; 29 7f
B4_1416:		cmp #$40		; c9 40
B4_1418:		bcc B4_1426 ; 90 0c

B4_141a:		lda $08			; a5 08
B4_141c:		ldy $09			; a4 09
B4_141e:		sta $09			; 85 09
B4_1420:		sty $08			; 84 08
B4_1422:		lda #$01		; a9 01
B4_1424:		sta $06			; 85 06
B4_1426:		rts				; 60 


B4_1427:		sta $00			; 85 00
B4_1429:		lda $05ef, x	; bd ef 05
B4_142c:		and #$80		; 29 80
B4_142e:		ora $00			; 05 00
B4_1430:		sta $05ef, x	; 9d ef 05
B4_1433:		lda #$00		; a9 00
B4_1435:		sta $05c1, x	; 9d c1 05
B4_1438:		rts				; 60 


B4_1439:		lda $0470, x	; bd 70 04
B4_143c:		and #$01		; 29 01
B4_143e:		beq B4_1449 ; f0 09

B4_1440:		lda $0470, x	; bd 70 04
B4_1443:		ora #$88		; 09 88
B4_1445:		sta $0470, x	; 9d 70 04
B4_1448:		rts				; 60 


B4_1449:		lda #$40		; a9 40
B4_144b:		sta $0470, x	; 9d 70 04
B4_144e:		rts				; 60 


B4_144f:		lda #$00		; a9 00
B4_1451:		sta $00			; 85 00
B4_1453:		lda $0438		; ad 38 04
B4_1456:		sec				; 38 
B4_1457:		sbc $0438, x	; fd 38 04
B4_145a:		sta $01			; 85 01
B4_145c:		bcs B4_1469 ; b0 0b

B4_145e:		eor #$ff		; 49 ff
B4_1460:		clc				; 18 
B4_1461:		adc #$01		; 69 01
B4_1463:		sta $01			; 85 01
B4_1465:		lda #$01		; a9 01
B4_1467:		sta $00			; 85 00
B4_1469:		rts				; 60 


B4_146a:		inc $05c1, x	; fe c1 05
B4_146d:		rts				; 60 


B4_146e:		ldy #$01		; a0 01
B4_1470:		lda ($02), y	; b1 02
B4_1472:		jsr playSound		; 20 5f e2
B4_1475:		jmp $946a		; 4c 6a 94


B4_1478:		ldy #$01		; a0 01
B4_147a:		lda ($02), y	; b1 02
B4_147c:		sta $00			; 85 00
B4_147e:		iny				; c8 
B4_147f:		lda ($02), y	; b1 02
B4_1481:		sta $01			; 85 01
B4_1483:		iny				; c8 
B4_1484:		lda ($02), y	; b1 02
B4_1486:		sta $02			; 85 02
B4_1488:		lda $00			; a5 00
B4_148a:		jsr $94a1		; 20 a1 94
B4_148d:		bcc B4_149e ; 90 0f

B4_148f:		lda $0470, x	; bd 70 04
B4_1492:		sta $0470, y	; 99 70 04
B4_1495:		lda $02			; a5 02
B4_1497:		sta $05ef, y	; 99 ef 05
B4_149a:		dec $01			; c6 01
B4_149c:		bne B4_1488 ; d0 ea

B4_149e:		jmp $946a		; 4c 6a 94


B4_14a1:		sta $11			; 85 11
B4_14a3:		stx $10			; 86 10
B4_14a5:		jsr $feb9		; 20 b9 fe
B4_14a8:		bne B4_14c6 ; d0 1c

B4_14aa:		jsr $94e7		; 20 e7 94
B4_14ad:		ldy $10			; a4 10
B4_14af:		lda $0438, y	; b9 38 04
B4_14b2:		sta $0438, x	; 9d 38 04
B4_14b5:		lda $041c, y	; b9 1c 04
B4_14b8:		sta $041c, x	; 9d 1c 04
B4_14bb:		txa				; 8a 
B4_14bc:		tay				; a8 
B4_14bd:		lda $11			; a5 11
B4_14bf:		sta $054e, x	; 9d 4e 05
B4_14c2:		ldx $10			; a6 10
B4_14c4:		sec				; 38 
B4_14c5:		rts				; 60 


B4_14c6:		ldx $10			; a6 10
B4_14c8:		clc				; 18 
B4_14c9:		rts				; 60 


B4_14ca:		ldy #$01		; a0 01
B4_14cc:		lda ($02), y	; b1 02
B4_14ce:		clc				; 18 
B4_14cf:		adc $0438, x	; 7d 38 04
B4_14d2:		sta $0438, x	; 9d 38 04
B4_14d5:		iny				; c8 
B4_14d6:		lda ($02), y	; b1 02
B4_14d8:		clc				; 18 
B4_14d9:		adc $041c, x	; 7d 1c 04
B4_14dc:		sta $041c, x	; 9d 1c 04
B4_14df:		jmp $946a		; 4c 6a 94


B4_14e2:		lda #$00		; a9 00
B4_14e4:		sta $054e, x	; 9d 4e 05
B4_14e7:		lda #$00		; a9 00
B4_14e9:		sta $05ef, x	; 9d ef 05
B4_14ec:		jsr func_1f_1ed7		; 20 d7 fe
B4_14ef:		sta $0400, x	; 9d 00 04
B4_14f2:		sta $048c, x	; 9d 8c 04
B4_14f5:		sta $05aa, x	; 9d aa 05
B4_14f8:		sta $0657, x	; 9d 57 06
B4_14fb:		sta $0669, x	; 9d 69 06
B4_14fe:		sta $067b, x	; 9d 7b 06
B4_1501:		sta $068d, x	; 9d 8d 06
B4_1504:		rts				; 60 


B4_1505:		ldy #$01		; a0 01
B4_1507:		lda ($02), y	; b1 02
B4_1509:		sta $05d8, x	; 9d d8 05
B4_150c:		jmp $946a		; 4c 6a 94


B4_150f:		lda $05d8, x	; bd d8 05
B4_1512:		bne B4_1517 ; d0 03

B4_1514:		jmp $946a		; 4c 6a 94


B4_1517:		dec $05d8, x	; de d8 05
B4_151a:		rts				; 60 


B4_151b:		jsr $9aec		; 20 ec 9a
B4_151e:		clc				; 18 
B4_151f:		adc #$01		; 69 01
B4_1521:		sta $05d8, x	; 9d d8 05
B4_1524:		jmp $946a		; 4c 6a 94


B4_1527:		ldy #$01		; a0 01
B4_1529:		lda ($02), y	; b1 02
B4_152b:		sta $00			; 85 00
B4_152d:		iny				; c8 
B4_152e:		lda ($02), y	; b1 02
B4_1530:		tay				; a8 
B4_1531:		lda $00			; a5 00
B4_1533:		jsr $ef5c		; 20 5c ef
B4_1536:		jmp $946a		; 4c 6a 94


B4_1539:		ldy #$01		; a0 01
B4_153b:		lda ($02), y	; b1 02
B4_153d:		sta $05ef, x	; 9d ef 05
B4_1540:		lda #$00		; a9 00
B4_1542:		sta $05c1, x	; 9d c1 05
B4_1545:		rts				; 60 


B4_1546:		ldy #$03		; a0 03
B4_1548:		lda ($02), y	; b1 02
B4_154a:		cmp #$ff		; c9 ff
B4_154c:		beq B4_156e ; f0 20

B4_154e:		asl a			; 0a
B4_154f:		tay				; a8 
B4_1550:		lda $95cb, y	; b9 cb 95
B4_1553:		sta $00			; 85 00
B4_1555:		lda $95cc, y	; b9 cc 95
B4_1558:		sta $01			; 85 01
B4_155a:		lda $0565, x	; bd 65 05
B4_155d:		and #$08		; 29 08
B4_155f:		beq B4_1564 ; f0 03

B4_1561:		jsr $95cd		; 20 cd 95
B4_1564:		lda $00			; a5 00
B4_1566:		sta $04f2, x	; 9d f2 04
B4_1569:		lda $01			; a5 01
B4_156b:		sta $0509, x	; 9d 09 05
B4_156e:		ldy #$01		; a0 01
B4_1570:		lda ($02), y	; b1 02
B4_1572:		sta $0537, x	; 9d 37 05
B4_1575:		iny				; c8 
B4_1576:		lda ($02), y	; b1 02
B4_1578:		sta $0520, x	; 9d 20 05
B4_157b:		inc $05c1, x	; fe c1 05
B4_157e:		rts				; 60 


B4_157f:		ldy #$03		; a0 03
B4_1581:		lda ($02), y	; b1 02
B4_1583:		sta $00			; 85 00
B4_1585:		lda $0537, x	; bd 37 05
B4_1588:		clc				; 18 
B4_1589:		adc $00			; 65 00
B4_158b:		sta $0537, x	; 9d 37 05
B4_158e:		lda $0520, x	; bd 20 05
B4_1591:		adc #$00		; 69 00
B4_1593:		sta $0520, x	; 9d 20 05
B4_1596:		lda $0520, x	; bd 20 05
B4_1599:		bmi B4_15c8 ; 30 2d

B4_159b:		ldy #$01		; a0 01
B4_159d:		lda ($02), y	; b1 02
B4_159f:		asl a			; 0a
B4_15a0:		tay				; a8 
B4_15a1:		lda $95c9, y	; b9 c9 95
B4_15a4:		sta $01			; 85 01
B4_15a6:		lda $95ca, y	; b9 ca 95
B4_15a9:		sta $00			; 85 00
B4_15ab:		jsr $95cd		; 20 cd 95
B4_15ae:		lda $0520, x	; bd 20 05
B4_15b1:		cmp $00			; c5 00
B4_15b3:		bcs B4_15be ; b0 09

B4_15b5:		bne B4_15c8 ; d0 11

B4_15b7:		lda $0537, x	; bd 37 05
B4_15ba:		cmp $01			; c5 01
B4_15bc:		bcs B4_15c8 ; b0 0a

B4_15be:		lda $00			; a5 00
B4_15c0:		sta $0520, x	; 9d 20 05
B4_15c3:		lda $01			; a5 01
B4_15c5:		sta $0537, x	; 9d 37 05
B4_15c8:		rts				; 60 


B4_15c9:		.db $00				; 00
B4_15ca:	.db $fc
B4_15cb:		.db $00				; 00
B4_15cc:		.db $00				; 00
B4_15cd:		lda $01			; a5 01
B4_15cf:		eor #$ff		; 49 ff
B4_15d1:		clc				; 18 
B4_15d2:		adc #$01		; 69 01
B4_15d4:		sta $01			; 85 01
B4_15d6:		lda $00			; a5 00
B4_15d8:		eor #$ff		; 49 ff
B4_15da:		adc #$00		; 69 00
B4_15dc:		sta $00			; 85 00
B4_15de:		rts				; 60 


B4_15df:		ldy #$01		; a0 01
B4_15e1:		lda ($02), y	; b1 02
B4_15e3:		sta $01			; 85 01
B4_15e5:		iny				; c8 
B4_15e6:		lda ($02), y	; b1 02
B4_15e8:		clc				; 18 
B4_15e9:		adc $041c, x	; 7d 1c 04
B4_15ec:		sta $041c, x	; 9d 1c 04
B4_15ef:		iny				; c8 
B4_15f0:		lda ($02), y	; b1 02
B4_15f2:		bne B4_1601 ; d0 0d

B4_15f4:		jsr $9aec		; 20 ec 9a
B4_15f7:		clc				; 18 
B4_15f8:		adc $01			; 65 01
B4_15fa:		clc				; 18 
B4_15fb:		adc $0438, x	; 7d 38 04
B4_15fe:		sta $0438, x	; 9d 38 04
B4_1601:		jmp $946a		; 4c 6a 94


B4_1604:		lda $0470, x	; bd 70 04
B4_1607:		and #$01		; 29 01
B4_1609:		beq B4_1616 ; f0 0b

B4_160b:		lda $0470, x	; bd 70 04
B4_160e:		ora #$08		; 09 08
B4_1610:		sta $0470, x	; 9d 70 04
B4_1613:		jmp $946a		; 4c 6a 94


B4_1616:		lda $0470, x	; bd 70 04
B4_1619:		and #$77		; 29 77
B4_161b:		sta $0470, x	; 9d 70 04
B4_161e:		jmp $946a		; 4c 6a 94


B4_1621:		lda $0470, x	; bd 70 04
B4_1624:		ora #$08		; 09 08
B4_1626:		sta $0470, x	; 9d 70 04
B4_1629:		jmp $946a		; 4c 6a 94


B4_162c:		lda $0470, x	; bd 70 04
B4_162f:		and #$01		; 29 01
B4_1631:		beq B4_1636 ; f0 03

B4_1633:		jmp $946a		; 4c 6a 94


B4_1636:		jsr $9b69		; 20 69 9b
B4_1639:		lda $08			; a5 08
B4_163b:		and #$10		; 29 10
B4_163d:		beq B4_164a ; f0 0b

B4_163f:		lda $06e0, y	; b9 e0 06
B4_1642:		and #$f0		; 29 f0
B4_1644:		sta $06e0, y	; 99 e0 06
B4_1647:		jmp $9652		; 4c 52 96


B4_164a:		lda $06e0, y	; b9 e0 06
B4_164d:		and #$0f		; 29 0f
B4_164f:		sta $06e0, y	; 99 e0 06
B4_1652:		sta $0e			; 85 0e
B4_1654:		jsr $9b00		; 20 00 9b
B4_1657:		lda $32			; a5 32
B4_1659:		cmp #$0c		; c9 0c
B4_165b:		bne B4_1660 ; d0 03

B4_165d:		jmp $96f8		; 4c f8 96


B4_1660:		lda $05			; a5 05
B4_1662:		sta $09			; 85 09
B4_1664:		lda $04			; a5 04
B4_1666:		sta $08			; 85 08
B4_1668:		stx $07			; 86 07
B4_166a:		lda #$02		; a9 02
B4_166c:		sta $03			; 85 03
B4_166e:		ldx $1d			; a6 1d
B4_1670:		lda #$01		; a9 01
B4_1672:		jsr $96f3		; 20 f3 96
B4_1675:		lda $05			; a5 05
B4_1677:		jsr $96f3		; 20 f3 96
B4_167a:		lda $04			; a5 04
B4_167c:		jsr $96f3		; 20 f3 96
B4_167f:		lda #$02		; a9 02
B4_1681:		sta $06			; 85 06
B4_1683:		lda #$3f		; a9 3f
B4_1685:		jsr $96f3		; 20 f3 96
B4_1688:		dec $06			; c6 06
B4_168a:		bne B4_1683 ; d0 f7

B4_168c:		lda #$ff		; a9 ff
B4_168e:		jsr $96f3		; 20 f3 96
B4_1691:		stx $1d			; 86 1d
B4_1693:		lda $05			; a5 05
B4_1695:		clc				; 18 
B4_1696:		adc #$20		; 69 20
B4_1698:		sta $05			; 85 05
B4_169a:		lda $04			; a5 04
B4_169c:		adc #$00		; 69 00
B4_169e:		sta $04			; 85 04
B4_16a0:		dec $03			; c6 03
B4_16a2:		bne B4_166e ; d0 ca

B4_16a4:		lda $09			; a5 09
B4_16a6:		and #$1f		; 29 1f
B4_16a8:		lsr a			; 4a
B4_16a9:		lsr a			; 4a
B4_16aa:		sta $0b			; 85 0b
B4_16ac:		lda $09			; a5 09
B4_16ae:		and #$c0		; 29 c0
B4_16b0:		sta $09			; 85 09
B4_16b2:		lda $08			; a5 08
B4_16b4:		and #$03		; 29 03
B4_16b6:		lsr a			; 4a
B4_16b7:		ror $09			; 66 09
B4_16b9:		lsr a			; 4a
B4_16ba:		ror $09			; 66 09
B4_16bc:		ror $09			; 66 09
B4_16be:		ror $09			; 66 09
B4_16c0:		lda $09			; a5 09
B4_16c2:		and #$38		; 29 38
B4_16c4:		clc				; 18 
B4_16c5:		adc $0b			; 65 0b
B4_16c7:		ora #$c0		; 09 c0
B4_16c9:		sta $0b			; 85 0b
B4_16cb:		lda $08			; a5 08
B4_16cd:		ora #$03		; 09 03
B4_16cf:		sta $08			; 85 08
B4_16d1:		ldx $1d			; a6 1d
B4_16d3:		lda #$01		; a9 01
B4_16d5:		jsr $96f3		; 20 f3 96
B4_16d8:		lda $0b			; a5 0b
B4_16da:		jsr $96f3		; 20 f3 96
B4_16dd:		lda $08			; a5 08
B4_16df:		jsr $96f3		; 20 f3 96
B4_16e2:		lda #$55		; a9 55
B4_16e4:		jsr $96f3		; 20 f3 96
B4_16e7:		lda #$ff		; a9 ff
B4_16e9:		jsr $96f3		; 20 f3 96
B4_16ec:		stx $1d			; 86 1d
B4_16ee:		ldx $07			; a6 07
B4_16f0:		jmp $946a		; 4c 6a 94


B4_16f3:		sta $0300, x	; 9d 00 03
B4_16f6:		inx				; e8 
B4_16f7:		rts				; 60 


B4_16f8:		txa				; 8a 
B4_16f9:		pha				; 48 
B4_16fa:		lda $0438, x	; bd 38 04
B4_16fd:		clc				; 18 
B4_16fe:		adc $56			; 65 56
B4_1700:		sta $02			; 85 02
B4_1702:		sta $08			; 85 08
B4_1704:		lda $57			; a5 57
B4_1706:		adc #$00		; 69 00
B4_1708:		asl $02			; 06 02
B4_170a:		rol a			; 2a
B4_170b:		asl $02			; 06 02
B4_170d:		rol a			; 2a
B4_170e:		asl $02			; 06 02
B4_1710:		rol a			; 2a
B4_1711:		sta $07			; 85 07
B4_1713:		tay				; a8 
B4_1714:		lda #$02		; a9 02
B4_1716:		sta $09			; 85 09
B4_1718:		lda $08			; a5 08
B4_171a:		and #$10		; 29 10
B4_171c:		beq B4_1722 ; f0 04

B4_171e:		lda #$03		; a9 03
B4_1720:		sta $09			; 85 09
B4_1722:		jsr $eaaf		; 20 af ea
B4_1725:		jsr $9897		; 20 97 98
B4_1728:		pla				; 68 
B4_1729:		tax				; aa 
B4_172a:		jmp $946a		; 4c 6a 94


B4_172d:		ldy #$01		; a0 01
B4_172f:		lda ($02), y	; b1 02
B4_1731:		sta $05d8, x	; 9d d8 05
B4_1734:		lda #$00		; a9 00
B4_1736:		sta $04f2, x	; 9d f2 04
B4_1739:		sta $0520, x	; 9d 20 05
B4_173c:		sta $0509, x	; 9d 09 05
B4_173f:		sta $0537, x	; 9d 37 05
B4_1742:		jmp $946a		; 4c 6a 94


B4_1745:		lda $048c, x	; bd 8c 04
B4_1748:		ldy $05aa, x	; bc aa 05
B4_174b:		iny				; c8 
B4_174c:		jsr $ef5c		; 20 5c ef
B4_174f:		ldy #$01		; a0 01
B4_1751:		lda ($02), y	; b1 02
B4_1753:		sta $00			; 85 00
B4_1755:		beq B4_1765 ; f0 0e

B4_1757:		lda $04a8, x	; bd a8 04
B4_175a:		beq B4_1768 ; f0 0c

B4_175c:		lda $0438, x	; bd 38 04
B4_175f:		sec				; 38 
B4_1760:		sbc $00			; e5 00
B4_1762:		sta $0438, x	; 9d 38 04
B4_1765:		jmp $9771		; 4c 71 97


B4_1768:		lda $0438, x	; bd 38 04
B4_176b:		clc				; 18 
B4_176c:		adc $00			; 65 00
B4_176e:		sta $0438, x	; 9d 38 04
B4_1771:		ldy #$02		; a0 02
B4_1773:		lda ($02), y	; b1 02
B4_1775:		clc				; 18 
B4_1776:		adc $041c, x	; 7d 1c 04
B4_1779:		sta $041c, x	; 9d 1c 04
B4_177c:		jmp $946a		; 4c 6a 94


B4_177f:		ldy #$01		; a0 01
B4_1781:		lda ($02), y	; b1 02
B4_1783:		sta $08			; 85 08
B4_1785:		iny				; c8 
B4_1786:		lda ($02), y	; b1 02
B4_1788:		sta $09			; 85 09
B4_178a:		iny				; c8 
B4_178b:		lda ($02), y	; b1 02
B4_178d:		sta $0a			; 85 0a
B4_178f:		jsr $9b1a		; 20 1a 9b
B4_1792:		lda $08			; a5 08
B4_1794:		cmp #$02		; c9 02
B4_1796:		beq B4_17c2 ; f0 2a

B4_1798:		lda $05			; a5 05
B4_179a:		and #$1f		; 29 1f
B4_179c:		sec				; 38 
B4_179d:		sbc #$02		; e9 02
B4_179f:		sta $06			; 85 06
B4_17a1:		bcs B4_17ac ; b0 09

B4_17a3:		lda $04			; a5 04
B4_17a5:		clc				; 18 
B4_17a6:		adc #$04		; 69 04
B4_17a8:		and #$27		; 29 27
B4_17aa:		sta $04			; 85 04
B4_17ac:		lda $06			; a5 06
B4_17ae:		and #$1f		; 29 1f
B4_17b0:		sta $06			; 85 06
B4_17b2:		lda $05			; a5 05
B4_17b4:		and #$e0		; 29 e0
B4_17b6:		ora $06			; 05 06
B4_17b8:		sta $05			; 85 05
B4_17ba:		lda $08			; a5 08
B4_17bc:		beq B4_17f9 ; f0 3b

B4_17be:		cmp #$01		; c9 01
B4_17c0:		beq B4_17c5 ; f0 03

B4_17c2:		jmp $9818		; 4c 18 98


B4_17c5:		lda #$02		; a9 02
B4_17c7:		sta $16			; 85 16
B4_17c9:		lda $32			; a5 32
B4_17cb:		cmp #$0a		; c9 0a
B4_17cd:		bcc B4_17d6 ; 90 07

B4_17cf:		lda $09			; a5 09
B4_17d1:		clc				; 18 
B4_17d2:		adc #$03		; 69 03
B4_17d4:		bne B4_17d8 ; d0 02

B4_17d6:		lda $09			; a5 09
B4_17d8:		asl a			; 0a
B4_17d9:		tay				; a8 
B4_17da:		stx $17			; 86 17
B4_17dc:		lda $980c, y	; b9 0c 98
B4_17df:		sta $09			; 85 09
B4_17e1:		jsr $9a45		; 20 45 9a
B4_17e4:		lda $05			; a5 05
B4_17e6:		clc				; 18 
B4_17e7:		adc #$20		; 69 20
B4_17e9:		sta $05			; 85 05
B4_17eb:		lda $04			; a5 04
B4_17ed:		adc #$00		; 69 00
B4_17ef:		sta $04			; 85 04
B4_17f1:		iny				; c8 
B4_17f2:		dec $16			; c6 16
B4_17f4:		bne B4_17dc ; d0 e6

B4_17f6:		jmp $9805		; 4c 05 98


B4_17f9:		ldy $09			; a4 09
B4_17fb:		lda $980a, y	; b9 0a 98
B4_17fe:		sta $09			; 85 09
B4_1800:		stx $17			; 86 17
B4_1802:		jsr $9a45		; 20 45 9a
B4_1805:		ldx $17			; a6 17
B4_1807:		jmp $946a		; 4c 6a 94


B4_180a:		.db $00				; 00
B4_180b:		cpx $00			; e4 00
B4_180d:		.db $00				; 00
B4_180e:		cpx $6d			; e4 6d
B4_1810:	.db $6e $6f $00
B4_1813:		.db $00				; 00
B4_1814:		cpx $ad			; e4 ad
B4_1816:		ldx $a5af		; ae af a5
B4_1819:		ora #$85		; 09 85
B4_181b:	.db $17
B4_181c:		lda $0a			; a5 0a
B4_181e:		beq B4_182d ; f0 0d

B4_1820:		cmp #$01		; c9 01
B4_1822:		beq B4_182a ; f0 06

B4_1824:		jsr $98d6		; 20 d6 98
B4_1827:		jmp $982d		; 4c 2d 98


B4_182a:		jsr $9900		; 20 00 99
B4_182d:		lda $17			; a5 17
B4_182f:		cmp #$03		; c9 03
B4_1831:		;removed
	.db $b0 $28

B4_1833:		asl a			; 0a
B4_1834:		tay				; a8 
B4_1835:		lda $9849, y	; b9 49 98
B4_1838:		sta $00			; 85 00
B4_183a:		lda $984a, y	; b9 4a 98
B4_183d:		sta $01			; 85 01
B4_183f:		stx $17			; 86 17
B4_1841:		jsr $9a07		; 20 07 9a
B4_1844:		ldx $17			; a6 17
B4_1846:		jmp $946a		; 4c 6a 94


B4_1849:	.db $4f
B4_184a:		tya				; 98 
B4_184b:	.db $53
B4_184c:		tya				; 98 
B4_184d:	.db $57
B4_184e:		tya				; 98 
B4_184f:		ldy $bdbe, x	; bc be bd
B4_1852:	.db $bf
B4_1853:		ldy $bdbe, x	; bc be bd
B4_1856:	.db $bf
B4_1857:		ldy $b5, x		; b4 b5
B4_1859:		lda $38bf, x	; bd bf 38
B4_185c:		sbc #$03		; e9 03
B4_185e:		asl a			; 0a
B4_185f:		tay				; a8 
B4_1860:		lda $988d, y	; b9 8d 98
B4_1863:		sta $00			; 85 00
B4_1865:		lda $988e, y	; b9 8e 98
B4_1868:		sta $01			; 85 01
B4_186a:		stx $17			; 86 17
B4_186c:		lda #$00		; a9 00
B4_186e:		sta $09			; 85 09
B4_1870:		lda $05			; a5 05
B4_1872:		and #$40		; 29 40
B4_1874:		beq B4_187a ; f0 04

B4_1876:		lda #$02		; a9 02
B4_1878:		sta $09			; 85 09
B4_187a:		lda $05			; a5 05
B4_187c:		and #$02		; 29 02
B4_187e:		beq B4_1882 ; f0 02

B4_1880:		inc $09			; e6 09
B4_1882:		jsr $eabe		; 20 be ea
B4_1885:		jsr $9897		; 20 97 98
B4_1888:		ldx $17			; a6 17
B4_188a:		jmp $946a		; 4c 6a 94


B4_188d:		cmp $97			; c5 97
B4_188f:		sta $97, x		; 95 97
B4_1891:	.db $a3
B4_1892:		stx $01, y		; 96 01
B4_1894:	.db $8b
B4_1895:		cmp ($8a), y	; d1 8a
B4_1897:		ldy #$00		; a0 00
B4_1899:		lda #$02		; a9 02
B4_189b:		sta $01			; 85 01
B4_189d:		ldx $1d			; a6 1d
B4_189f:		lda #$01		; a9 01
B4_18a1:		jsr $96f3		; 20 f3 96
B4_18a4:		lda $05			; a5 05
B4_18a6:		jsr $96f3		; 20 f3 96
B4_18a9:		lda $04			; a5 04
B4_18ab:		jsr $96f3		; 20 f3 96
B4_18ae:		lda #$02		; a9 02
B4_18b0:		sta $00			; 85 00
B4_18b2:	.db $b9 $10 $00
B4_18b5:		jsr $96f3		; 20 f3 96
B4_18b8:		iny				; c8 
B4_18b9:		dec $00			; c6 00
B4_18bb:		bne B4_18b2 ; d0 f5

B4_18bd:		lda #$ff		; a9 ff
B4_18bf:		jsr $96f3		; 20 f3 96
B4_18c2:		lda $05			; a5 05
B4_18c4:		clc				; 18 
B4_18c5:		adc #$20		; 69 20
B4_18c7:		sta $05			; 85 05
B4_18c9:		lda $04			; a5 04
B4_18cb:		adc #$00		; 69 00
B4_18cd:		sta $04			; 85 04
B4_18cf:		dec $01			; c6 01
B4_18d1:		bne B4_189f ; d0 cc

B4_18d3:		stx $1d			; 86 1d
B4_18d5:		rts				; 60 


B4_18d6:		jsr $9b69		; 20 69 9b
B4_18d9:		lda $08			; a5 08
B4_18db:		and #$10		; 29 10
B4_18dd:		beq B4_18ea ; f0 0b

B4_18df:		lda $06e0, y	; b9 e0 06
B4_18e2:		and #$f0		; 29 f0
B4_18e4:		sta $06e0, y	; 99 e0 06
B4_18e7:		jmp $98f2		; 4c f2 98


B4_18ea:		lda $06e0, y	; b9 e0 06
B4_18ed:		and #$0f		; 29 0f
B4_18ef:		sta $06e0, y	; 99 e0 06
B4_18f2:		jsr $99c4		; 20 c4 99
B4_18f5:		lda $17			; a5 17
B4_18f7:		sec				; 38 
B4_18f8:		sbc #$03		; e9 03
B4_18fa:		asl a			; 0a
B4_18fb:		tay				; a8 
B4_18fc:		jsr $9bea		; 20 ea 9b
B4_18ff:		rts				; 60 


B4_1900:		lda $68			; a5 68
B4_1902:		bmi B4_1911 ; 30 0d

B4_1904:		jsr $9b69		; 20 69 9b
B4_1907:		jsr $9963		; 20 63 99
B4_190a:		jsr $99c4		; 20 c4 99
B4_190d:		jsr $9c09		; 20 09 9c
B4_1910:		rts				; 60 


B4_1911:		ldy #$00		; a0 00
B4_1913:		jsr $9950		; 20 50 99
B4_1916:		jsr $9981		; 20 81 99
B4_1919:		jsr $9963		; 20 63 99
B4_191c:		jsr $999a		; 20 9a 99
B4_191f:		lda $15			; a5 15
B4_1921:		pha				; 48 
B4_1922:		lda $12			; a5 12
B4_1924:		sta $05			; 85 05
B4_1926:		lda $13			; a5 13
B4_1928:		sta $04			; 85 04
B4_192a:		lda $041c, x	; bd 1c 04
B4_192d:		sec				; 38 
B4_192e:		sbc #$10		; e9 10
B4_1930:		sta $14			; 85 14
B4_1932:		ldy $0438, x	; bc 38 04
B4_1935:		sty $15			; 84 15
B4_1937:		jsr $e935		; 20 35 e9
B4_193a:		ldy #$02		; a0 02
B4_193c:		jsr $9950		; 20 50 99
B4_193f:		lda $14			; a5 14
B4_1941:		sta $0b			; 85 0b
B4_1943:		lda $15			; a5 15
B4_1945:		sta $08			; 85 08
B4_1947:		pla				; 68 
B4_1948:		sta $15			; 85 15
B4_194a:		jsr $9c5c		; 20 5c 9c
B4_194d:		jmp $9c0f		; 4c 0f 9c


B4_1950:		lda $995f, y	; b9 5f 99
B4_1953:		sta $00			; 85 00
B4_1955:		lda $9960, y	; b9 60 99
B4_1958:		sta $01			; 85 01
B4_195a:		lda #$9a		; a9 9a
B4_195c:		jmp $e62f		; 4c 2f e6


B4_195f:	.db $82
B4_1960:	.db $b7
B4_1961:		cpx $b9			; e4 b9
B4_1963:		lda $08			; a5 08
B4_1965:		and #$10		; 29 10
B4_1967:		beq B4_1976 ; f0 0d

B4_1969:		lda $06e0, y	; b9 e0 06
B4_196c:		and #$f0		; 29 f0
B4_196e:		ora #$08		; 09 08
B4_1970:		sta $06e0, y	; 99 e0 06
B4_1973:		jmp $9980		; 4c 80 99


B4_1976:		lda $06e0, y	; b9 e0 06
B4_1979:		and #$0f		; 29 0f
B4_197b:		ora #$80		; 09 80
B4_197d:		sta $06e0, y	; 99 e0 06
B4_1980:		rts				; 60 


B4_1981:		lda $12			; a5 12
B4_1983:		pha				; 48 
B4_1984:		lda $13			; a5 13
B4_1986:		pha				; 48 
B4_1987:		lda #$00		; a9 00
B4_1989:		ldy #$00		; a0 00
B4_198b:		jsr $fc1e		; 20 1e fc
B4_198e:		pla				; 68 
B4_198f:		sta $13			; 85 13
B4_1991:		pla				; 68 
B4_1992:		sta $12			; 85 12
B4_1994:		lda $0438, x	; bd 38 04
B4_1997:		sta $08			; 85 08
B4_1999:		rts				; 60 


B4_199a:		jsr $99f0		; 20 f0 99
B4_199d:		sta $08			; 85 08
B4_199f:		tya				; 98 
B4_19a0:		and #$08		; 29 08
B4_19a2:		beq B4_19b5 ; f0 11

B4_19a4:		lda $06d8, y	; b9 d8 06
B4_19a7:		jsr $99f0		; 20 f0 99
B4_19aa:		lda $08			; a5 08
B4_19ac:		asl a			; 0a
B4_19ad:		asl a			; 0a
B4_19ae:		asl a			; 0a
B4_19af:		asl a			; 0a
B4_19b0:		ora $01			; 05 01
B4_19b2:		jmp $99c1		; 4c c1 99


B4_19b5:		lda $06e8, y	; b9 e8 06
B4_19b8:		jsr $99f0		; 20 f0 99
B4_19bb:		asl a			; 0a
B4_19bc:		asl a			; 0a
B4_19bd:		asl a			; 0a
B4_19be:		asl a			; 0a
B4_19bf:		ora $08			; 05 08
B4_19c1:		sta $15			; 85 15
B4_19c3:		rts				; 60 


B4_19c4:		jsr $99f0		; 20 f0 99
B4_19c7:		sta $08			; 85 08
B4_19c9:		lda $041c, x	; bd 1c 04
B4_19cc:		and #$10		; 29 10
B4_19ce:		beq B4_19e1 ; f0 11

B4_19d0:		lda $06df, y	; b9 df 06
B4_19d3:		jsr $99f0		; 20 f0 99
B4_19d6:		lda $08			; a5 08
B4_19d8:		asl a			; 0a
B4_19d9:		asl a			; 0a
B4_19da:		asl a			; 0a
B4_19db:		asl a			; 0a
B4_19dc:		ora $01			; 05 01
B4_19de:		jmp $99ed		; 4c ed 99


B4_19e1:		lda $06e1, y	; b9 e1 06
B4_19e4:		jsr $99f0		; 20 f0 99
B4_19e7:		asl a			; 0a
B4_19e8:		asl a			; 0a
B4_19e9:		asl a			; 0a
B4_19ea:		asl a			; 0a
B4_19eb:		ora $08			; 05 08
B4_19ed:		sta $15			; 85 15
B4_19ef:		rts				; 60 


B4_19f0:		sta $00			; 85 00
B4_19f2:		and #$f0		; 29 f0
B4_19f4:		beq B4_19f8 ; f0 02

B4_19f6:		lda #$03		; a9 03
B4_19f8:		sta $01			; 85 01
B4_19fa:		lda $00			; a5 00
B4_19fc:		and #$0f		; 29 0f
B4_19fe:		beq B4_1a02 ; f0 02

B4_1a00:		lda #$0c		; a9 0c
B4_1a02:		ora $01			; 05 01
B4_1a04:		sta $01			; 85 01
B4_1a06:		rts				; 60 


B4_1a07:		ldy #$00		; a0 00
B4_1a09:		lda #$02		; a9 02
B4_1a0b:		sta $09			; 85 09
B4_1a0d:		ldx $1d			; a6 1d
B4_1a0f:		lda #$01		; a9 01
B4_1a11:		jsr $96f3		; 20 f3 96
B4_1a14:		lda $05			; a5 05
B4_1a16:		jsr $96f3		; 20 f3 96
B4_1a19:		lda $04			; a5 04
B4_1a1b:		jsr $96f3		; 20 f3 96
B4_1a1e:		lda #$02		; a9 02
B4_1a20:		sta $0a			; 85 0a
B4_1a22:		lda ($00), y	; b1 00
B4_1a24:		iny				; c8 
B4_1a25:		jsr $96f3		; 20 f3 96
B4_1a28:		dec $0a			; c6 0a
B4_1a2a:		bne B4_1a22 ; d0 f6

B4_1a2c:		lda #$ff		; a9 ff
B4_1a2e:		jsr $96f3		; 20 f3 96
B4_1a31:		lda $05			; a5 05
B4_1a33:		clc				; 18 
B4_1a34:		adc #$20		; 69 20
B4_1a36:		sta $05			; 85 05
B4_1a38:		lda $04			; a5 04
B4_1a3a:		adc #$00		; 69 00
B4_1a3c:		sta $04			; 85 04
B4_1a3e:		dec $09			; c6 09
B4_1a40:		bne B4_1a0f ; d0 cd

B4_1a42:		stx $1d			; 86 1d
B4_1a44:		rts				; 60 


B4_1a45:		ldx $1d			; a6 1d
B4_1a47:		lda #$01		; a9 01
B4_1a49:		jsr $96f3		; 20 f3 96
B4_1a4c:		lda $05			; a5 05
B4_1a4e:		sta $0b			; 85 0b
B4_1a50:		jsr $96f3		; 20 f3 96
B4_1a53:		lda $04			; a5 04
B4_1a55:		jsr $96f3		; 20 f3 96
B4_1a58:		lda #$04		; a9 04
B4_1a5a:		sta $0a			; 85 0a
B4_1a5c:		lda $09			; a5 09
B4_1a5e:		jsr $96f3		; 20 f3 96
B4_1a61:		inc $0b			; e6 0b
B4_1a63:		lda $05			; a5 05
B4_1a65:		and #$e0		; 29 e0
B4_1a67:		sec				; 38 
B4_1a68:		sbc $0b			; e5 0b
B4_1a6a:		bcs B4_1a74 ; b0 08

B4_1a6c:		cmp #$e1		; c9 e1
B4_1a6e:		bcc B4_1a74 ; 90 04

B4_1a70:		dec $0a			; c6 0a
B4_1a72:		bne B4_1a5c ; d0 e8

B4_1a74:		lda #$ff		; a9 ff
B4_1a76:		jsr $96f3		; 20 f3 96
B4_1a79:		stx $1d			; 86 1d
B4_1a7b:		lda $0a			; a5 0a
B4_1a7d:		beq B4_1aaa ; f0 2b

B4_1a7f:		dec $0a			; c6 0a
B4_1a81:		beq B4_1aaa ; f0 27

B4_1a83:		lda #$01		; a9 01
B4_1a85:		jsr $96f3		; 20 f3 96
B4_1a88:		lda $0b			; a5 0b
B4_1a8a:		sec				; 38 
B4_1a8b:		sbc #$20		; e9 20
B4_1a8d:		jsr $96f3		; 20 f3 96
B4_1a90:		lda $04			; a5 04
B4_1a92:		clc				; 18 
B4_1a93:		adc #$04		; 69 04
B4_1a95:		and #$27		; 29 27
B4_1a97:		jsr $96f3		; 20 f3 96
B4_1a9a:		lda $09			; a5 09
B4_1a9c:		jsr $96f3		; 20 f3 96
B4_1a9f:		dec $0a			; c6 0a
B4_1aa1:		bne B4_1a9a ; d0 f7

B4_1aa3:		lda #$ff		; a9 ff
B4_1aa5:		jsr $96f3		; 20 f3 96
B4_1aa8:		stx $1d			; 86 1d
B4_1aaa:		rts				; 60 


B4_1aab:		lda $041c, x	; bd 1c 04
B4_1aae:		and #$f8		; 29 f8
B4_1ab0:		sta $041c, x	; 9d 1c 04
B4_1ab3:		jmp $946a		; 4c 6a 94


B4_1ab6:		lda #$00		; a9 00
B4_1ab8:		sta $05ef, x	; 9d ef 05
B4_1abb:		sta $05c1, x	; 9d c1 05
B4_1abe:		rts				; 60 


B4_1abf:		lda $0606, x	; bd 06 06
B4_1ac2:		clc				; 18 
B4_1ac3:		adc #$01		; 69 01
B4_1ac5:		and #$01		; 29 01
B4_1ac7:		sta $0606, x	; 9d 06 06
B4_1aca:		jmp $946a		; 4c 6a 94


B4_1acd:		lda $05ef, x	; bd ef 05
B4_1ad0:		sta $0645, x	; 9d 45 06
B4_1ad3:		inc $05c1, x	; fe c1 05
B4_1ad6:		lda $05c1, x	; bd c1 05
B4_1ad9:		sta $0633, x	; 9d 33 06
B4_1adc:		jmp $9539		; 4c 39 95


B4_1adf:		lda $0645, x	; bd 45 06
B4_1ae2:		sta $05ef, x	; 9d ef 05
B4_1ae5:		lda $0633, x	; bd 33 06
B4_1ae8:		sta $05c1, x	; 9d c1 05
B4_1aeb:		rts				; 60 


B4_1aec:		lda $1f			; a5 1f
B4_1aee:		bne B4_1af2 ; d0 02

B4_1af0:		lda #$65		; a9 65
B4_1af2:		asl a			; 0a
B4_1af3:		sta $00			; 85 00
B4_1af5:		lda $1f			; a5 1f
B4_1af7:		lsr a			; 4a
B4_1af8:		clc				; 18 
B4_1af9:		adc $00			; 65 00
B4_1afb:		sta $1f			; 85 1f
B4_1afd:		and #$0f		; 29 0f
B4_1aff:		rts				; 60 


B4_1b00:		lda #$20		; a9 20
B4_1b02:		sta $01			; 85 01
B4_1b04:		lda $0470, x	; bd 70 04
B4_1b07:		and #$01		; 29 01
B4_1b09:		clc				; 18 
B4_1b0a:		adc $57			; 65 57
B4_1b0c:		and #$01		; 29 01
B4_1b0e:		eor $75			; 45 75
B4_1b10:		and #$01		; 29 01
B4_1b12:		beq B4_1b2c ; f0 18

B4_1b14:		lda #$24		; a9 24
B4_1b16:		sta $01			; 85 01
B4_1b18:		bne B4_1b2c ; d0 12

B4_1b1a:		lda #$20		; a9 20
B4_1b1c:		sta $01			; 85 01
B4_1b1e:		lda $57			; a5 57
B4_1b20:		and #$01		; 29 01
B4_1b22:		eor $75			; 45 75
B4_1b24:		and #$01		; 29 01
B4_1b26:		beq B4_1b2c ; f0 04

B4_1b28:		lda #$24		; a9 24
B4_1b2a:		sta $01			; 85 01
B4_1b2c:		lda $0438, x	; bd 38 04
B4_1b2f:		clc				; 18 
B4_1b30:		adc $56			; 65 56
B4_1b32:		sta $00			; 85 00
B4_1b34:		bcc B4_1b3f ; 90 09

B4_1b36:		lda #$04		; a9 04
B4_1b38:		clc				; 18 
B4_1b39:		adc $01			; 65 01
B4_1b3b:		and #$27		; 29 27
B4_1b3d:		sta $01			; 85 01
B4_1b3f:		lda $00			; a5 00
B4_1b41:		lsr a			; 4a
B4_1b42:		lsr a			; 4a
B4_1b43:		lsr a			; 4a
B4_1b44:		sta $00			; 85 00
B4_1b46:		lda $041c, x	; bd 1c 04
B4_1b49:		and #$f0		; 29 f0
B4_1b4b:		sta $05			; 85 05
B4_1b4d:		lda #$00		; a9 00
B4_1b4f:		asl $05			; 06 05
B4_1b51:		rol a			; 2a
B4_1b52:		asl $05			; 06 05
B4_1b54:		rol a			; 2a
B4_1b55:		sta $04			; 85 04
B4_1b57:		lda $00			; a5 00
B4_1b59:		and #$1f		; 29 1f
B4_1b5b:		clc				; 18 
B4_1b5c:		adc $05			; 65 05
B4_1b5e:		and #$fe		; 29 fe
B4_1b60:		sta $05			; 85 05
B4_1b62:		lda $04			; a5 04
B4_1b64:		adc $01			; 65 01
B4_1b66:		sta $04			; 85 04
B4_1b68:		rts				; 60 


B4_1b69:		lda $0438, x	; bd 38 04
B4_1b6c:		clc				; 18 
B4_1b6d:		adc $56			; 65 56
B4_1b6f:		sta $00			; 85 00
B4_1b71:		sta $08			; 85 08
B4_1b73:		lda #$00		; a9 00
B4_1b75:		adc $57			; 65 57
B4_1b77:		asl a			; 0a
B4_1b78:		sta $01			; 85 01
B4_1b7a:		lda $00			; a5 00
B4_1b7c:		and #$80		; 29 80
B4_1b7e:		beq B4_1b82 ; f0 02

B4_1b80:		lda #$01		; a9 01
B4_1b82:		clc				; 18 
B4_1b83:		adc $01			; 65 01
B4_1b85:		sta $01			; 85 01
B4_1b87:		lda $00			; a5 00
B4_1b89:		and #$7f		; 29 7f
B4_1b8b:		lsr a			; 4a
B4_1b8c:		lsr a			; 4a
B4_1b8d:		lsr a			; 4a
B4_1b8e:		lsr a			; 4a
B4_1b8f:		lsr a			; 4a
B4_1b90:		tay				; a8 
B4_1b91:		lda $9be6, y	; b9 e6 9b
B4_1b94:		sta $00			; 85 00
B4_1b96:		ldy $01			; a4 01
B4_1b98:		lda $9bb0, y	; b9 b0 9b
B4_1b9b:		clc				; 18 
B4_1b9c:		adc $00			; 65 00
B4_1b9e:		sta $00			; 85 00
B4_1ba0:		lda $041c, x	; bd 1c 04
B4_1ba3:		sec				; 38 
B4_1ba4:		sbc #$20		; e9 20
B4_1ba6:		clc				; 18 
B4_1ba7:		lsr a			; 4a
B4_1ba8:		lsr a			; 4a
B4_1ba9:		lsr a			; 4a
B4_1baa:		lsr a			; 4a
B4_1bab:		clc				; 18 
B4_1bac:		adc $00			; 65 00
B4_1bae:		tay				; a8 
B4_1baf:		rts				; 60 


B4_1bb0:		.db $00				; 00
B4_1bb1:		bmi B4_1c13 ; 30 60

B4_1bb3:		.db $00				; 00
B4_1bb4:		;removed
	.db $30 $60

B4_1bb6:		.db $00				; 00
B4_1bb7:		;removed
	.db $30 $60

B4_1bb9:		.db $00				; 00
B4_1bba:		bmi B4_1c1c ; 30 60

B4_1bbc:		.db $00				; 00
B4_1bbd:		;removed
	.db $30 $60

B4_1bbf:		.db $00				; 00
B4_1bc0:		;removed
	.db $30 $60

B4_1bc2:		.db $00				; 00
B4_1bc3:		bmi B4_1c25 ; 30 60

B4_1bc5:		.db $00				; 00
B4_1bc6:		;removed
	.db $30 $60

B4_1bc8:		.db $00				; 00
B4_1bc9:		bmi B4_1c2b ; 30 60

B4_1bcb:		.db $00				; 00
B4_1bcc:		;removed
	.db $30 $60

B4_1bce:		.db $00				; 00
B4_1bcf:		bmi B4_1c31 ; 30 60

B4_1bd1:		.db $00				; 00
B4_1bd2:		bmi B4_1c34 ; 30 60

B4_1bd4:		.db $00				; 00
B4_1bd5:		bmi B4_1c37 ; 30 60

B4_1bd7:		.db $00				; 00
B4_1bd8:		;removed
	.db $30 $60

B4_1bda:		.db $00				; 00
B4_1bdb:		bmi B4_1c3d ; 30 60

B4_1bdd:		.db $00				; 00
B4_1bde:		;removed
	.db $30 $60

B4_1be0:		.db $00				; 00
B4_1be1:		;removed
	.db $30 $60

B4_1be3:		.db $00				; 00
B4_1be4:		;removed
	.db $30 $60

B4_1be6:		.db $00				; 00
B4_1be7:	.db $0c
B4_1be8:		clc				; 18 
B4_1be9:		bit $20			; 24 20
B4_1beb:	.db $27
B4_1bec:	.db $9c
B4_1bed:		lda $988d, y	; b9 8d 98
B4_1bf0:		sta $00			; 85 00
B4_1bf2:		lda $988e, y	; b9 8e 98
B4_1bf5:		sta $01			; 85 01
B4_1bf7:		jsr $ea89		; 20 89 ea
B4_1bfa:		lda $15			; a5 15
B4_1bfc:		eor #$ff		; 49 ff
B4_1bfe:		sta $15			; 85 15
B4_1c00:		lda $15			; a5 15
B4_1c02:		and $11			; 25 11
B4_1c04:		sta $11			; 85 11
B4_1c06:		jmp $9c73		; 4c 73 9c


B4_1c09:		jsr $9c27		; 20 27 9c
B4_1c0c:		jsr $e9d6		; 20 d6 e9
B4_1c0f:		lda $15			; a5 15
B4_1c11:		eor #$ff		; 49 ff
B4_1c13:		sta $15			; 85 15
B4_1c15:		ldy $09			; a4 09
B4_1c17:		lda $9c23, y	; b9 23 9c
B4_1c1a:		and $15			; 25 15
B4_1c1c:		and $11			; 25 11
B4_1c1e:		sta $11			; 85 11
B4_1c20:		jmp $9c73		; 4c 73 9c


B4_1c23:	.db $cf
B4_1c24:	.db $3f
B4_1c25:	.db $fc
B4_1c26:	.db $f3
B4_1c27:		lda $05			; a5 05
B4_1c29:		sta $09			; 85 09
B4_1c2b:		lda $04			; a5 04
B4_1c2d:		sta $08			; 85 08
B4_1c2f:		lda $09			; a5 09
B4_1c31:		and #$1f		; 29 1f
B4_1c33:		lsr a			; 4a
B4_1c34:		lsr a			; 4a
B4_1c35:		sta $0b			; 85 0b
B4_1c37:		lda $09			; a5 09
B4_1c39:		and #$c0		; 29 c0
B4_1c3b:		sta $09			; 85 09
B4_1c3d:		lda $08			; a5 08
B4_1c3f:		and #$03		; 29 03
B4_1c41:		lsr a			; 4a
B4_1c42:		ror $09			; 66 09
B4_1c44:		lsr a			; 4a
B4_1c45:		ror $09			; 66 09
B4_1c47:		ror $09			; 66 09
B4_1c49:		ror $09			; 66 09
B4_1c4b:		lda $09			; a5 09
B4_1c4d:		and #$38		; 29 38
B4_1c4f:		clc				; 18 
B4_1c50:		adc $0b			; 65 0b
B4_1c52:		ora #$c0		; 09 c0
B4_1c54:		sta $0b			; 85 0b
B4_1c56:		lda $08			; a5 08
B4_1c58:		ora #$03		; 09 03
B4_1c5a:		sta $08			; 85 08
B4_1c5c:		lda #$00		; a9 00
B4_1c5e:		sta $09			; 85 09
B4_1c60:		lda $05			; a5 05
B4_1c62:		and #$20		; 29 20
B4_1c64:		beq B4_1c6a ; f0 04

B4_1c66:		lda #$02		; a9 02
B4_1c68:		sta $09			; 85 09
B4_1c6a:		lda $05			; a5 05
B4_1c6c:		and #$02		; 29 02
B4_1c6e:		beq B4_1c72 ; f0 02

B4_1c70:		inc $09			; e6 09
B4_1c72:		rts				; 60 


B4_1c73:		stx $16			; 86 16
B4_1c75:		ldx $1d			; a6 1d
B4_1c77:		lda #$01		; a9 01
B4_1c79:		jsr $96f3		; 20 f3 96
B4_1c7c:		lda $0b			; a5 0b
B4_1c7e:		jsr $96f3		; 20 f3 96
B4_1c81:		lda $08			; a5 08
B4_1c83:		jsr $96f3		; 20 f3 96
B4_1c86:		lda $11			; a5 11
B4_1c88:		jsr $96f3		; 20 f3 96
B4_1c8b:		lda #$ff		; a9 ff
B4_1c8d:		jsr $96f3		; 20 f3 96
B4_1c90:		stx $1d			; 86 1d
B4_1c92:		ldx $16			; a6 16
B4_1c94:		rts				; 60 


B4_1c95:		ldx #$1a		; a2 1a
B4_1c97:		lda $0470, x	; bd 70 04
B4_1c9a:		beq B4_1ca2 ; f0 06

B4_1c9c:		inx				; e8 
B4_1c9d:		cpx #$1c		; e0 1c
B4_1c9f:		bcc B4_1c97 ; 90 f6

B4_1ca1:		rts				; 60 


B4_1ca2:		clc				; 18 
B4_1ca3:		rts				; 60 


B4_1ca4:		iny				; c8 
B4_1ca5:		sty $07			; 84 07
B4_1ca7:		jsr $9c95		; 20 95 9c
B4_1caa:		bcs B4_1d12 ; b0 66

B4_1cac:		lda #$02		; a9 02
B4_1cae:		sta $0470, x	; 9d 70 04
B4_1cb1:		lda $02			; a5 02
B4_1cb3:		sta $041c, x	; 9d 1c 04
B4_1cb6:		ldy $07			; a4 07
B4_1cb8:		lda ($9a), y	; b1 9a
B4_1cba:		sta $0438, x	; 9d 38 04
B4_1cbd:		jmp $9cd9		; 4c d9 9c


B4_1cc0:		iny				; c8 
B4_1cc1:		sty $07			; 84 07
B4_1cc3:		jsr $9c95		; 20 95 9c
B4_1cc6:		bcs B4_1d12 ; b0 4a

B4_1cc8:		lda #$02		; a9 02
B4_1cca:		sta $0470, x	; 9d 70 04
B4_1ccd:		lda $02			; a5 02
B4_1ccf:		sta $0438, x	; 9d 38 04
B4_1cd2:		ldy $07			; a4 07
B4_1cd4:		lda ($9a), y	; b1 9a
B4_1cd6:		sta $041c, x	; 9d 1c 04
B4_1cd9:		iny				; c8 
B4_1cda:		lda ($9a), y	; b1 9a
B4_1cdc:		sta $078b, x	; 9d 8b 07
B4_1cdf:		iny				; c8 
B4_1ce0:		lda ($9a), y	; b1 9a
B4_1ce2:		sta $0797, x	; 9d 97 07
B4_1ce5:		iny				; c8 
B4_1ce6:		lda ($9a), y	; b1 9a
B4_1ce8:		sta $079d, x	; 9d 9d 07
B4_1ceb:		tay				; a8 
B4_1cec:	.db $b9 $f4 $00
B4_1cef:		bne B4_1d13 ; d0 22

B4_1cf1:		lda #$00		; a9 00
B4_1cf3:		sta $078d, x	; 9d 8d 07
B4_1cf6:		lda #$00		; a9 00
B4_1cf8:		sta $048c, x	; 9d 8c 04
B4_1cfb:		lda #$00		; a9 00
B4_1cfd:		sta $0400, x	; 9d 00 04
B4_1d00:		lda #$01		; a9 01
B4_1d02:		sta $04a8, x	; 9d a8 04
B4_1d05:		lda $6c			; a5 6c
B4_1d07:		sta $078f, x	; 9d 8f 07
B4_1d0a:		lda #$00		; a9 00
B4_1d0c:		sta $0799, x	; 9d 99 07
B4_1d0f:		sta $079b, x	; 9d 9b 07
B4_1d12:		rts				; 60 


B4_1d13:		lda #$80		; a9 80
B4_1d15:		bne B4_1cf3 ; d0 dc

B4_1d17:		lda #$00		; a9 00
B4_1d19:		sta $96			; 85 96
B4_1d1b:		jsr $9ea5		; 20 a5 9e
B4_1d1e:		bcc B4_1d2f ; 90 0f

B4_1d20:		lda #$01		; a9 01
B4_1d22:		sta $96			; 85 96
B4_1d24:		lda #$00		; a9 00
B4_1d26:		sta $07a1		; 8d a1 07
B4_1d29:		sta $07a2		; 8d a2 07
B4_1d2c:		jsr $9d59		; 20 59 9d
B4_1d2f:		rts				; 60 


B4_1d30:		lda #$00		; a9 00
B4_1d32:		sta $96			; 85 96
B4_1d34:		jsr $9ea5		; 20 a5 9e
B4_1d37:		bcc B4_1d52 ; 90 19

B4_1d39:		lda #$01		; a9 01
B4_1d3b:		sta $96			; 85 96
B4_1d3d:		lda #$00		; a9 00
B4_1d3f:		sta $07a1		; 8d a1 07
B4_1d42:		sta $07a2		; 8d a2 07
B4_1d45:		ldy #$00		; a0 00
B4_1d47:		sta $0782, y	; 99 82 07
B4_1d4a:		iny				; c8 
B4_1d4b:		cpy #$0d		; c0 0d
B4_1d4d:		bne B4_1d47 ; d0 f8

B4_1d4f:		jsr $9e2d		; 20 2d 9e
B4_1d52:		rts				; 60 


B4_1d53:		lda $6c			; a5 6c
B4_1d55:		sta $07a2		; 8d a2 07
B4_1d58:		rts				; 60 


B4_1d59:		lda #$00		; a9 00
B4_1d5b:		sta $6c			; 85 6c
B4_1d5d:		ldy #$00		; a0 00
B4_1d5f:		lda ($9a), y	; b1 9a
B4_1d61:		cmp #$ff		; c9 ff
B4_1d63:		beq B4_1d53 ; f0 ee

B4_1d65:		sta $01			; 85 01
B4_1d67:		iny				; c8 
B4_1d68:		lda ($9a), y	; b1 9a
B4_1d6a:		sta $00			; 85 00
B4_1d6c:		iny				; c8 
B4_1d6d:		sty $07			; 84 07
B4_1d6f:		lda $00			; a5 00
B4_1d71:		sec				; 38 
B4_1d72:		sbc $56			; e5 56
B4_1d74:		sta $02			; 85 02
B4_1d76:		lda $01			; a5 01
B4_1d78:		sbc $57			; e5 57
B4_1d7a:		sta $03			; 85 03
B4_1d7c:		bpl B4_1daf ; 10 31

B4_1d7e:		sec				; 38 
B4_1d7f:		lda $57			; a5 57
B4_1d81:		sbc $01			; e5 01
B4_1d83:		beq B4_1d94 ; f0 0f

B4_1d85:		tay				; a8 
B4_1d86:		dey				; 88 
B4_1d87:		bne B4_1dee ; d0 65

B4_1d89:		lda $02			; a5 02
B4_1d8b:		clc				; 18 
B4_1d8c:		adc #$10		; 69 10
B4_1d8e:		sta $02			; 85 02
B4_1d90:		bcc B4_1d94 ; 90 02

B4_1d92:		inc $03			; e6 03
B4_1d94:		lda $02			; a5 02
B4_1d96:		clc				; 18 
B4_1d97:		ldy $07			; a4 07
B4_1d99:		adc ($9a), y	; 71 9a
B4_1d9b:		sta $04			; 85 04
B4_1d9d:		lda $03			; a5 03
B4_1d9f:		adc #$00		; 69 00
B4_1da1:		sta $05			; 85 05
B4_1da3:		lda $05			; a5 05
B4_1da5:		bne B4_1dee ; d0 47

B4_1da7:		lda $04			; a5 04
B4_1da9:		cmp #$b9		; c9 b9
B4_1dab:		bcs B4_1dee ; b0 41

B4_1dad:		bcc B4_1dfe ; 90 4f

B4_1daf:		sec				; 38 
B4_1db0:		lda $01			; a5 01
B4_1db2:		sbc $57			; e5 57
B4_1db4:		beq B4_1dc5 ; f0 0f

B4_1db6:		tay				; a8 
B4_1db7:		dey				; 88 
B4_1db8:		bne B4_1d53 ; d0 99

B4_1dba:		sec				; 38 
B4_1dbb:		lda $02			; a5 02
B4_1dbd:		sbc #$10		; e9 10
B4_1dbf:		sta $02			; 85 02
B4_1dc1:		bcs B4_1dc5 ; b0 02

B4_1dc3:		dec $03			; c6 03
B4_1dc5:		lda $03			; a5 03
B4_1dc7:		bne B4_1dcf ; d0 06

B4_1dc9:		lda $02			; a5 02
B4_1dcb:		cmp #$b9		; c9 b9
B4_1dcd:		bcc B4_1dfe ; 90 2f

B4_1dcf:		lda $02			; a5 02
B4_1dd1:		sec				; 38 
B4_1dd2:		ldy $07			; a4 07
B4_1dd4:		sbc ($9a), y	; f1 9a
B4_1dd6:		sta $04			; 85 04
B4_1dd8:		lda $03			; a5 03
B4_1dda:		sbc #$00		; e9 00
B4_1ddc:		sta $05			; 85 05
B4_1dde:		lda $05			; a5 05
B4_1de0:		beq B4_1de5 ; f0 03

B4_1de2:		jmp $9d53		; 4c 53 9d


B4_1de5:		lda $04			; a5 04
B4_1de7:		cmp #$b9		; c9 b9
B4_1de9:		bcc B4_1dfe ; 90 13

B4_1deb:		jmp $9d53		; 4c 53 9d


B4_1dee:		lda $6c			; a5 6c
B4_1df0:		sta $07a1		; 8d a1 07
B4_1df3:		inc $6c			; e6 6c
B4_1df5:		lda $6c			; a5 6c
B4_1df7:		asl a			; 0a
B4_1df8:		asl a			; 0a
B4_1df9:		asl a			; 0a
B4_1dfa:		tay				; a8 
B4_1dfb:		jmp $9d5f		; 4c 5f 9d


B4_1dfe:		lda $02			; a5 02
B4_1e00:		clc				; 18 
B4_1e01:		adc #$37		; 69 37
B4_1e03:		sta $02			; 85 02
B4_1e05:		bcc B4_1e09 ; 90 02

B4_1e07:		inc $03			; e6 03
B4_1e09:		lda $9e26		; ad 26 9e
B4_1e0c:		pha				; 48 
B4_1e0d:		lda $9e25		; ad 25 9e
B4_1e10:		pha				; 48 
B4_1e11:		ldy $07			; a4 07
B4_1e13:		iny				; c8 
B4_1e14:		lda ($9a), y	; b1 9a
B4_1e16:		asl a			; 0a
B4_1e17:		tax				; aa 
B4_1e18:		lda $a04f, x	; bd 4f a0
B4_1e1b:		sta $08			; 85 08
B4_1e1d:		lda $a050, x	; bd 50 a0
B4_1e20:		sta $09			; 85 09
B4_1e22:	.db $6c $08 $00
B4_1e25:	.db $f2
B4_1e26:		sta $6ca5, x	; 9d a5 6c
B4_1e29:		sta $07a2		; 8d a2 07
B4_1e2c:		rts				; 60 


B4_1e2d:		lda #$00		; a9 00
B4_1e2f:		sta $6c			; 85 6c
B4_1e31:		ldy #$00		; a0 00
B4_1e33:		lda ($9a), y	; b1 9a
B4_1e35:		cmp #$ff		; c9 ff
B4_1e37:		;removed
	.db $f0 $ee

B4_1e39:		sta $01			; 85 01
B4_1e3b:		iny				; c8 
B4_1e3c:		lda ($9a), y	; b1 9a
B4_1e3e:		sta $00			; 85 00
B4_1e40:		iny				; c8 
B4_1e41:		lda $00			; a5 00
B4_1e43:		sec				; 38 
B4_1e44:		sbc $56			; e5 56
B4_1e46:		sta $02			; 85 02
B4_1e48:		lda $01			; a5 01
B4_1e4a:		sbc $57			; e5 57
B4_1e4c:		sta $03			; 85 03
B4_1e4e:		beq B4_1e82 ; f0 32

B4_1e50:		bmi B4_1e63 ; 30 11

B4_1e52:		lda $02			; a5 02
B4_1e54:		sec				; 38 
B4_1e55:		sbc ($9a), y	; f1 9a
B4_1e57:		sta $04			; 85 04
B4_1e59:		lda $03			; a5 03
B4_1e5b:		sbc #$00		; e9 00
B4_1e5d:		sta $05			; 85 05
B4_1e5f:		beq B4_1e82 ; f0 21

B4_1e61:		;removed
	.db $d0 $c4

B4_1e63:		lda $02			; a5 02
B4_1e65:		clc				; 18 
B4_1e66:		adc ($9a), y	; 71 9a
B4_1e68:		sta $04			; 85 04
B4_1e6a:		lda $03			; a5 03
B4_1e6c:		adc #$00		; 69 00
B4_1e6e:		sta $05			; 85 05
B4_1e70:		beq B4_1e82 ; f0 10

B4_1e72:		lda $6c			; a5 6c
B4_1e74:		sta $07a1		; 8d a1 07
B4_1e77:		inc $6c			; e6 6c
B4_1e79:		lda $6c			; a5 6c
B4_1e7b:		asl a			; 0a
B4_1e7c:		asl a			; 0a
B4_1e7d:		asl a			; 0a
B4_1e7e:		tay				; a8 
B4_1e7f:		jmp $9e33		; 4c 33 9e


B4_1e82:		iny				; c8 
B4_1e83:		ldx $6c			; a6 6c
B4_1e85:		lda #$01		; a9 01
B4_1e87:		sta $0782, x	; 9d 82 07
B4_1e8a:		lda $9ea4		; ad a4 9e
B4_1e8d:		pha				; 48 
B4_1e8e:		lda $9ea3		; ad a3 9e
B4_1e91:		pha				; 48 
B4_1e92:		lda ($9a), y	; b1 9a
B4_1e94:		asl a			; 0a
B4_1e95:		tax				; aa 
B4_1e96:		lda $a04f, x	; bd 4f a0
B4_1e99:		sta $08			; 85 08
B4_1e9b:		lda $a050, x	; bd 50 a0
B4_1e9e:		sta $09			; 85 09
B4_1ea0:	.db $6c $08 $00
B4_1ea3:		ror $9e, x		; 76 9e
B4_1ea5:		lda $32			; a5 32
B4_1ea7:		asl a			; 0a
B4_1ea8:		tay				; a8 
B4_1ea9:		lda $a073, y	; b9 73 a0
B4_1eac:		sta $08			; 85 08
B4_1eae:		lda $a074, y	; b9 74 a0
B4_1eb1:		sta $09			; 85 09
B4_1eb3:		lda $33			; a5 33
B4_1eb5:		asl a			; 0a
B4_1eb6:		tay				; a8 
B4_1eb7:		lda ($08), y	; b1 08
B4_1eb9:		sta $0a			; 85 0a
B4_1ebb:		iny				; c8 
B4_1ebc:		lda ($08), y	; b1 08
B4_1ebe:		sta $0b			; 85 0b
B4_1ec0:		ldy $34			; a4 34
B4_1ec2:		lda ($0a), y	; b1 0a
B4_1ec4:		beq B4_1ed4 ; f0 0e

B4_1ec6:		asl a			; 0a
B4_1ec7:		tay				; a8 
B4_1ec8:		lda $a199, y	; b9 99 a1
B4_1ecb:		sta $9a			; 85 9a
B4_1ecd:		lda $a19a, y	; b9 9a a1
B4_1ed0:		sta $9b			; 85 9b
B4_1ed2:		sec				; 38 
B4_1ed3:		rts				; 60 


B4_1ed4:		clc				; 18 
B4_1ed5:		rts				; 60 


B4_1ed6:		lda $96			; a5 96
B4_1ed8:		beq B4_1ee1 ; f0 07

B4_1eda:		ldy $65			; a4 65
B4_1edc:		beq B4_1ee8 ; f0 0a

B4_1ede:		dey				; 88 
B4_1edf:		beq B4_1ee2 ; f0 01

B4_1ee1:		rts				; 60 


B4_1ee2:		ldx $07a2		; ae a2 07
B4_1ee5:		jmp $9eed		; 4c ed 9e


B4_1ee8:		ldx $07a1		; ae a1 07
B4_1eeb:		bmi B4_1ee1 ; 30 f4

B4_1eed:		txa				; 8a 
B4_1eee:		asl a			; 0a
B4_1eef:		asl a			; 0a
B4_1ef0:		asl a			; 0a
B4_1ef1:		tay				; a8 
B4_1ef2:		lda ($9a), y	; b1 9a
B4_1ef4:		cmp #$ff		; c9 ff
B4_1ef6:		beq B4_1ee1 ; f0 e9

B4_1ef8:		sta $01			; 85 01
B4_1efa:		iny				; c8 
B4_1efb:		lda ($9a), y	; b1 9a
B4_1efd:		sta $00			; 85 00
B4_1eff:		iny				; c8 
B4_1f00:		sty $07			; 84 07
B4_1f02:		lda $00			; a5 00
B4_1f04:		sec				; 38 
B4_1f05:		sbc $56			; e5 56
B4_1f07:		sta $02			; 85 02
B4_1f09:		lda $01			; a5 01
B4_1f0b:		sbc $57			; e5 57
B4_1f0d:		sta $03			; 85 03
B4_1f0f:		bpl B4_1f42 ; 10 31

B4_1f11:		sec				; 38 
B4_1f12:		lda $57			; a5 57
B4_1f14:		sbc $01			; e5 01
B4_1f16:		beq B4_1f27 ; f0 0f

B4_1f18:		tay				; a8 
B4_1f19:		dey				; 88 
B4_1f1a:		bne B4_1ee1 ; d0 c5

B4_1f1c:		lda $02			; a5 02
B4_1f1e:		clc				; 18 
B4_1f1f:		adc #$10		; 69 10
B4_1f21:		sta $02			; 85 02
B4_1f23:		bcc B4_1f27 ; 90 02

B4_1f25:		inc $03			; e6 03
B4_1f27:		lda $02			; a5 02
B4_1f29:		clc				; 18 
B4_1f2a:		ldy $07			; a4 07
B4_1f2c:		adc ($9a), y	; 71 9a
B4_1f2e:		sta $04			; 85 04
B4_1f30:		lda $03			; a5 03
B4_1f32:		adc #$00		; 69 00
B4_1f34:		sta $05			; 85 05
B4_1f36:		lda $05			; a5 05
B4_1f38:		bne B4_1ee1 ; d0 a7

B4_1f3a:		lda $04			; a5 04
B4_1f3c:		cmp #$b9		; c9 b9
B4_1f3e:		bcs B4_1ee1 ; b0 a1

B4_1f40:		bcc B4_1f7d ; 90 3b

B4_1f42:		sec				; 38 
B4_1f43:		lda $01			; a5 01
B4_1f45:		sbc $57			; e5 57
B4_1f47:		beq B4_1f58 ; f0 0f

B4_1f49:		tay				; a8 
B4_1f4a:		dey				; 88 
B4_1f4b:		bne B4_1ee1 ; d0 94

B4_1f4d:		sec				; 38 
B4_1f4e:		lda $02			; a5 02
B4_1f50:		sbc #$10		; e9 10
B4_1f52:		sta $02			; 85 02
B4_1f54:		bcs B4_1f58 ; b0 02

B4_1f56:		dec $03			; c6 03
B4_1f58:		lda $03			; a5 03
B4_1f5a:		bne B4_1f62 ; d0 06

B4_1f5c:		lda $02			; a5 02
B4_1f5e:		cmp #$b9		; c9 b9
B4_1f60:		bcc B4_1f7d ; 90 1b

B4_1f62:		lda $02			; a5 02
B4_1f64:		sec				; 38 
B4_1f65:		ldy $07			; a4 07
B4_1f67:		sbc ($9a), y	; f1 9a
B4_1f69:		sta $04			; 85 04
B4_1f6b:		lda $03			; a5 03
B4_1f6d:		sbc #$00		; e9 00
B4_1f6f:		sta $05			; 85 05
B4_1f71:		lda $05			; a5 05
B4_1f73:		bne B4_1fb5 ; d0 40

B4_1f75:		lda $04			; a5 04
B4_1f77:		cmp #$b9		; c9 b9
B4_1f79:		bcc B4_1f7d ; 90 02

B4_1f7b:		bne B4_1fb5 ; d0 38

B4_1f7d:		stx $6c			; 86 6c
B4_1f7f:		lda $65			; a5 65
B4_1f81:		beq B4_1f88 ; f0 05

B4_1f83:		inc $07a2		; ee a2 07
B4_1f86:		bne B4_1f8b ; d0 03

B4_1f88:		dec $07a1		; ce a1 07
B4_1f8b:		lda $02			; a5 02
B4_1f8d:		clc				; 18 
B4_1f8e:		adc #$37		; 69 37
B4_1f90:		sta $02			; 85 02
B4_1f92:		bcc B4_1f96 ; 90 02

B4_1f94:		inc $03			; e6 03
B4_1f96:		ldy $07			; a4 07
B4_1f98:		iny				; c8 
B4_1f99:		lda ($9a), y	; b1 9a
B4_1f9b:		asl a			; 0a
B4_1f9c:		tax				; aa 
B4_1f9d:		lda $a04f, x	; bd 4f a0
B4_1fa0:		sta $08			; 85 08
B4_1fa2:		lda $a050, x	; bd 50 a0
B4_1fa5:		sta $09			; 85 09
B4_1fa7:	.db $6c $08 $00
B4_1faa:		lda $96			; a5 96
B4_1fac:		beq B4_1fb5 ; f0 07

B4_1fae:		ldy $65			; a4 65
B4_1fb0:		beq B4_1fb6 ; f0 04

B4_1fb2:		dey				; 88 
B4_1fb3:		beq B4_1ff8 ; f0 43

B4_1fb5:		rts				; 60 


B4_1fb6:		ldx $07a1		; ae a1 07
B4_1fb9:		bmi B4_1fb5 ; 30 fa

B4_1fbb:		lda $0782, x	; bd 82 07
B4_1fbe:		bne B4_1fb5 ; d0 f5

B4_1fc0:		txa				; 8a 
B4_1fc1:		asl a			; 0a
B4_1fc2:		asl a			; 0a
B4_1fc3:		asl a			; 0a
B4_1fc4:		tay				; a8 
B4_1fc5:		lda ($9a), y	; b1 9a
B4_1fc7:		sta $01			; 85 01
B4_1fc9:		iny				; c8 
B4_1fca:		lda ($9a), y	; b1 9a
B4_1fcc:		sta $00			; 85 00
B4_1fce:		iny				; c8 
B4_1fcf:		lda $00			; a5 00
B4_1fd1:		sec				; 38 
B4_1fd2:		sbc $56			; e5 56
B4_1fd4:		sta $02			; 85 02
B4_1fd6:		lda $01			; a5 01
B4_1fd8:		sbc $57			; e5 57
B4_1fda:		sta $03			; 85 03
B4_1fdc:		beq B4_1fed ; f0 0f

B4_1fde:		lda $02			; a5 02
B4_1fe0:		clc				; 18 
B4_1fe1:		adc ($9a), y	; 71 9a
B4_1fe3:		sta $04			; 85 04
B4_1fe5:		lda $03			; a5 03
B4_1fe7:		adc #$00		; 69 00
B4_1fe9:		sta $05			; 85 05
B4_1feb:		bne B4_1fb5 ; d0 c8

B4_1fed:		lda #$01		; a9 01
B4_1fef:		sta $0782, x	; 9d 82 07
B4_1ff2:		dec $07a1		; ce a1 07
B4_1ff5:		jmp $a03b		; 4c 3b a0


B4_1ff8:		ldx $07a2		; ae a2 07
B4_1ffb:		lda $0782, x	; bd 82 07
		.db $d0
		.db $b5
