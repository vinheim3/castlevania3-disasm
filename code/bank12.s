
func_12_0001:
B18_0001:		jsr $8240		; 20 40 82
B18_0004:		ldy $054e, x	; bc 4e 05
B18_0007:		cpy #$2d		; c0 2d
B18_0009:		beq B18_000f ; f0 04

B18_000b:		cpy #$10		; c0 10
B18_000d:		bcs B18_001a ; b0 0b

B18_000f:		jsr $8478		; 20 78 84
B18_0012:		beq B18_0020 ; f0 0c

B18_0014:		jsr $826d		; 20 6d 82
B18_0017:		bcc B18_0020 ; 90 07

B18_0019:		rts				; 60 


B18_001a:		jsr $8252		; 20 52 82
B18_001d:		bcc B18_0020 ; 90 01

B18_001f:		rts				; 60 


B18_0020:		jsr $834f		; 20 4f 83
B18_0023:		bcc B18_0026 ; 90 01

B18_0025:		rts				; 60 


B18_0026:		lda $07f3		; ad f3 07
B18_0029:		and #$7f		; 29 7f
B18_002b:		cmp #$02		; c9 02
B18_002d:		bcc B18_003b ; 90 0c

B18_002f:		lda $054e, x	; bd 4e 05
B18_0032:		cmp #$16		; c9 16
B18_0034:		beq B18_003b ; f0 05

B18_0036:		cmp #$1a		; c9 1a
B18_0038:		beq B18_003b ; f0 01

B18_003a:		rts				; 60 


B18_003b:		lda $054e, x	; bd 4e 05
B18_003e:		cmp #$10		; c9 10
B18_0040:		bcc B18_0054 ; 90 12

B18_0042:		cmp #$2d		; c9 2d
B18_0044:		beq B18_0054 ; f0 0e

B18_0046:		lda wEntityAI_idx.w, x	; bd ef 05
B18_0049:		bmi B18_004e ; 30 03

B18_004b:		jsr $e604		; 20 04 e6
B18_004e:		lda $054e, x	; bd 4e 05
B18_0051:		bne B18_0054 ; d0 01

B18_0053:		rts				; 60 


B18_0054:		lda $78			; a5 78
B18_0056:		bne B18_007a ; d0 22

B18_0058:		jsr $84bf		; 20 bf 84
B18_005b:		bcs B18_007a ; b0 1d

B18_005d:		lda wCurrScrollXWithinRoom			; a5 56
B18_005f:		bne B18_007a ; d0 19

B18_0061:		lda #$01		; a9 01
B18_0063:		sta $78			; 85 78
B18_0065:		jsr setBank_c000_toRom07h		; 20 d6 e2
B18_0068:		jsr $ffba		; 20 ba ff
B18_006b:		lda #$00		; a9 00
B18_006d:		sta $6e			; 85 6e
B18_006f:		lda wCurrRoomGroup		; a5 32
B18_0071:		cmp #$0e		; c9 0e
B18_0073:		beq B18_007a ; f0 05

B18_0075:		lda #$5f		; a9 5f
B18_0077:		jsr playSound		; 20 5f e2
B18_007a:		lda $07f3		; ad f3 07
B18_007d:		and #$80		; 29 80
B18_007f:		beq B18_00ae ; f0 2d

B18_0081:		lda $054e, x	; bd 4e 05
B18_0084:		cmp #$26		; c9 26
B18_0086:		beq B18_00ae ; f0 26

B18_0088:		asl a			; 0a
B18_0089:		tay				; a8 
B18_008a:		lda $8178, y	; b9 78 81
B18_008d:		sta $00			; 85 00
B18_008f:		lda $8179, y	; b9 79 81
B18_0092:		sta $01			; 85 01
B18_0094:		jsr $813d		; 20 3d 81
B18_0097:		lda #$00		; a9 00
B18_0099:		sta $0657, x	; 9d 57 06
B18_009c:		lda $07f3		; ad f3 07
B18_009f:		and #$bf		; 29 bf
B18_00a1:		bne B18_00c5 ; d0 22

B18_00a3:		lda wEntityState.w, x	; bd 70 04
B18_00a6:		and #$ef		; 29 ef
B18_00a8:		sta wEntityState.w, x	; 9d 70 04
B18_00ab:		jmp $80d4		; 4c d4 80


B18_00ae:		lda wCurrScrollXWithinRoom			; a5 56
B18_00b0:		beq B18_00b3 ; f0 01

B18_00b2:		rts				; 60 


B18_00b3:		lda $054e, x	; bd 4e 05
B18_00b6:		asl a			; 0a
B18_00b7:		tay				; a8 
B18_00b8:		lda $81d4, y	; b9 d4 81
B18_00bb:		sta $00			; 85 00
B18_00bd:		lda $81d5, y	; b9 d5 81
B18_00c0:		sta $01			; 85 01
B18_00c2:		jsr $813d		; 20 3d 81
B18_00c5:		lda $07f3		; ad f3 07
B18_00c8:		and #$bf		; 29 bf
B18_00ca:		beq B18_00d4 ; f0 08

B18_00cc:		lda wEntityState.w, x	; bd 70 04
B18_00cf:		ora #$10		; 09 10
B18_00d1:		sta wEntityState.w, x	; 9d 70 04
B18_00d4:		ldy $054e, x	; bc 4e 05
B18_00d7:		cpy #$2d		; c0 2d
B18_00d9:		beq B18_00df ; f0 04

B18_00db:		cpy #$10		; c0 10
B18_00dd:		bcs B18_00e5 ; b0 06

B18_00df:		jsr $8252		; 20 52 82
B18_00e2:		jsr $8437		; 20 37 84
B18_00e5:		lda wEntityAI_idx.w, x	; bd ef 05
B18_00e8:		asl a			; 0a
B18_00e9:		beq B18_00b2 ; f0 c7

B18_00eb:		tay				; a8 
B18_00ec:		lda $89ef, y	; b9 ef 89
B18_00ef:		sta $04			; 85 04
B18_00f1:		lda $89f0, y	; b9 f0 89
B18_00f4:		sta $05			; 85 05
B18_00f6:		lda wEntityPhase.w, x	; bd c1 05
B18_00f9:		asl a			; 0a
B18_00fa:		tay				; a8 
B18_00fb:		lda ($04), y	; b1 04
B18_00fd:		sta $12			; 85 12
B18_00ff:		iny				; c8 
B18_0100:		lda ($04), y	; b1 04
B18_0102:		tay				; a8 
B18_0103:		asl a			; 0a
B18_0104:		clc				; 18 
B18_0105:		adc $8138		; 6d 38 81
B18_0108:		sta $00			; 85 00
B18_010a:		lda $8139		; ad 39 81
B18_010d:		adc #$00		; 69 00
B18_010f:		sta $01			; 85 01
B18_0111:		lda ($00), y	; b1 00
B18_0113:		sta $13			; 85 13
B18_0115:		iny				; c8 
B18_0116:		lda ($00), y	; b1 00
B18_0118:		sta $14			; 85 14
B18_011a:		iny				; c8 
B18_011b:		lda ($00), y	; b1 00
B18_011d:		sta $15			; 85 15
B18_011f:		lda #$12		; a9 12
B18_0121:		sta $02			; 85 02
B18_0123:		lda #$00		; a9 00
B18_0125:		sta $03			; 85 03
B18_0127:		lda $12			; a5 12
B18_0129:		asl a			; 0a
B18_012a:		tay				; a8 
B18_012b:		lda $8671, y	; b9 71 86
B18_012e:		sta $00			; 85 00
B18_0130:		lda $8672, y	; b9 72 86
B18_0133:		sta $01			; 85 01
B18_0135:		jmp $813a		; 4c 3a 81


B18_0138:	.db $a7
B18_0139:		;removed
	.db $90 $6c

B18_013b:		.db $00				; 00
B18_013c:		.db $00				; 00
B18_013d:		ldy $054e, x	; bc 4e 05
B18_0140:		lda $8148, y	; b9 48 81
B18_0143:		;removed
	.db $f0 $f5

B18_0145:		jmp $e62f		; 4c 2f e6


B18_0148:		.db $00				; 00
B18_0149:		.db $00				; 00
B18_014a:		.db $00				; 00
B18_014b:		stx $00			; 86 00
B18_014d:		.db $00				; 00
B18_014e:		.db $00				; 00
B18_014f:		stx $86			; 86 86
B18_0151:		stx $86			; 86 86
B18_0153:		tya				; 98 
B18_0154:		stx $00			; 86 00
B18_0156:		stx $98			; 86 98
B18_0158:		.db $00				; 00
B18_0159:		.db $00				; 00
B18_015a:		.db $00				; 00
B18_015b:		.db $00				; 00
B18_015c:		stx $86			; 86 86
B18_015e:		bcc B18_0160 ; 90 00

B18_0160:		stx $86			; 86 86
B18_0162:		.db $00				; 00
B18_0163:		stx $86			; 86 86
B18_0165:		stx $86			; 86 86
B18_0167:		.db $00				; 00
B18_0168:		.db $00				; 00
B18_0169:		.db $00				; 00
B18_016a:		.db $00				; 00
B18_016b:		stx $00			; 86 00
B18_016d:		.db $00				; 00
B18_016e:		.db $00				; 00
B18_016f:		stx $00			; 86 00
B18_0171:		.db $00				; 00
B18_0172:		stx $86			; 86 86
B18_0174:		txa				; 8a 
B18_0175:		.db $00				; 00
B18_0176:		.db $00				; 00
B18_0177:		.db $00				; 00
B18_0178:		;removed
	.db $30 $82

B18_017a:	.db $4f
B18_017b:		lda ($c9, x)	; a1 c9
B18_017d:		ldy $d7			; a4 d7
B18_017f:		sta $a931		; 8d 31 a9
B18_0182:	.db $af
B18_0183:	.db $ab
B18_0184:		sbc #$ae		; e9 ae
B18_0186:	.db $1b
B18_0187:	.db $93
B18_0188:	.db $04
B18_0189:	.db $80
B18_018a:	.db $1a
B18_018b:		sta $0f			; 85 0f
B18_018d:		sta $9b, x		; 95 9b
B18_018f:		lda $be			; a5 be
B18_0191:		sta $b4ef, y	; 99 ef b4
B18_0194:		jsr $3080		; 20 80 30
B18_0197:	.db $82
B18_0198:		;removed
	.db $30 $82

B18_019a:		;removed
	.db $30 $82

B18_019c:		;removed
	.db $30 $82

B18_019e:		;removed
	.db $30 $82

B18_01a0:		jsr $2080		; 20 80 20
B18_01a3:	.db $80
B18_01a4:		;removed
	.db $30 $82

B18_01a6:		bmi B18_012a ; 30 82

B18_01a8:		;removed
	.db $30 $82

B18_01aa:		bmi B18_012e ; 30 82

B18_01ac:	.db $b3
B18_01ad:	.db $89
B18_01ae:		;removed
	.db $30 $82

B18_01b0:		;removed
	.db $30 $82

B18_01b2:		jsr $2080		; 20 80 20
B18_01b5:	.db $80
B18_01b6:		;removed
	.db $30 $82

B18_01b8:		bmi B18_013c ; 30 82

B18_01ba:		;removed
	.db $30 $82

B18_01bc:		bmi B18_0140 ; 30 82

B18_01be:		jsr $3080		; 20 80 30
B18_01c1:	.db $82
B18_01c2:		;removed
	.db $30 $82

B18_01c4:		jsr $2080		; 20 80 20
B18_01c7:	.db $80
B18_01c8:	.db $8b
B18_01c9:	.db $89
B18_01ca:		clv				; b8 
B18_01cb:		ldy $8020, x	; bc 20 80
B18_01ce:		inc $9c, x		; f6 9c
B18_01d0:		adc $bc, x		; 75 bc
B18_01d2:		sbc #$ae		; e9 ae
B18_01d4:		bmi B18_0158 ; 30 82

B18_01d6:		sbc $a1, x		; f5 a1
B18_01d8:	.db $df
B18_01d9:		lda $12			; a5 12
B18_01db:		stx $a992		; 8e 92 a9
B18_01de:		and $86ac, x	; 3d ac 86
B18_01e1:	.db $af
B18_01e2:	.db $7c
B18_01e3:	.db $93
B18_01e4:		and ($80, x)	; 21 80
B18_01e6:	.db $34
B18_01e7:		txa				; 8a 
B18_01e8:	.db $8f
B18_01e9:		stx $10, y		; 96 10
B18_01eb:		ldx $14			; a6 14
B18_01ed:		txs				; 9a 
B18_01ee:		ldy $3fb5		; ac b5 3f
B18_01f1:		txa				; 8a 
B18_01f2:	.db $64
B18_01f3:		ldy $9a			; a4 9a
B18_01f5:		ldy $4b			; a4 4b
B18_01f7:		ldy $03			; a4 03
B18_01f9:		tay				; a8 
B18_01fa:	.db $7f
B18_01fb:		tay				; a8 
B18_01fc:		adc $92, x		; 75 92
B18_01fe:		lda $d992, y	; b9 92 d9
B18_0201:		ldx $aebb, y	; be bb ae
B18_0204:	.db $bb
B18_0205:		sty $d4, x		; 94 d4
B18_0207:		sty $b3, x		; 94 b3
B18_0209:	.db $89
B18_020a:		asl $84, x		; 16 84
B18_020c:		dex				; ca 
B18_020d:		sty $6a			; 84 6a
B18_020f:		tya				; 98 
B18_0210:		nop				; ea 
B18_0211:		tya				; 98 
B18_0212:		;removed
	.db $30 $a5

B18_0214:		sty $a5			; 84 a5
B18_0216:		ora ($ac, x)	; 01 ac
B18_0218:	.db $93
B18_0219:		lda ($a2, x)	; a1 a2
B18_021b:		sta $b8a9		; 8d a9 b8
B18_021e:		ror $9fb5		; 6e b5 9f
B18_0221:		ldy $02, x		; b4 02
B18_0223:		sty $898b		; 8c 8b 89
B18_0226:		clv				; b8 
B18_0227:		ldy $8020, x	; bc 20 80
B18_022a:		inc $9c, x		; f6 9c
B18_022c:		adc $bc, x		; 75 bc
B18_022e:		lsr $b0			; 46 b0
B18_0230:		rts				; 60 


B18_0231:		lda $0669, x	; bd 69 06
B18_0234:		beq B18_0230 ; f0 fa

B18_0236:		lda #$00		; a9 00
B18_0238:		sta $0669, x	; 9d 69 06
B18_023b:		lda #$28		; a9 28
B18_023d:		jmp playSound		; 4c 5f e2


B18_0240:		lda $78			; a5 78
B18_0242:		beq B18_0251 ; f0 0d

B18_0244:		lda $ab			; a5 ab
B18_0246:		beq B18_0251 ; f0 09

B18_0248:		ldy $ac			; a4 ac
B18_024a:		dey				; 88 
B18_024b:		beq B18_0251 ; f0 04

B18_024d:		lda #$01		; a9 01
B18_024f:		sta $ac			; 85 ac
B18_0251:		rts				; 60 


B18_0252:		ldy $054e, x	; bc 4e 05
B18_0255:		lda $8317, y	; b9 17 83
B18_0258:		sta $02			; 85 02
B18_025a:		beq B18_02c8 ; f0 6c

B18_025c:		jsr $8478		; 20 78 84
B18_025f:		bne B18_026d ; d0 0c

B18_0261:		lda $0669, x	; bd 69 06
B18_0264:		and #$0f		; 29 0f
B18_0266:		cmp #$02		; c9 02
B18_0268:		bne B18_02c8 ; d0 5e

B18_026a:		jmp $83c5		; 4c c5 83


B18_026d:		lda $0669, x	; bd 69 06
B18_0270:		and #$f0		; 29 f0
B18_0272:		bne B18_02ca ; d0 56

B18_0274:		dec $0790, x	; de 90 07
B18_0277:		bne B18_02b5 ; d0 3c

B18_0279:		lda wEntityPaletteOverride.w, x	; bd 54 04
B18_027c:		and #$f3		; 29 f3
B18_027e:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_0281:		lda $054e, x	; bd 4e 05
B18_0284:		cmp #$23		; c9 23
B18_0286:		beq B18_0290 ; f0 08

B18_0288:		cmp #$06		; c9 06
B18_028a:		beq B18_0290 ; f0 04

B18_028c:		cmp #$2d		; c9 2d
B18_028e:		bne B18_0294 ; d0 04

B18_0290:		lda #$60		; a9 60
B18_0292:		bne B18_029b ; d0 07

B18_0294:		lda wEntityState.w, x	; bd 70 04
B18_0297:		and #$df		; 29 df
B18_0299:		ora #$40		; 09 40
B18_029b:		sta wEntityState.w, x	; 9d 70 04
B18_029e:		jsr $848a		; 20 8a 84
B18_02a1:		ldy $00			; a4 00
B18_02a3:		lda #$ff		; a9 ff
B18_02a5:		sec				; 38 
B18_02a6:		sbc $01			; e5 01
B18_02a8:	.db $39 $c4 $00
B18_02ab:	.db $99 $c4 $00
B18_02ae:		lda #$00		; a9 00
B18_02b0:		sta $0669, x	; 9d 69 06
B18_02b3:		sec				; 38 
B18_02b4:		rts				; 60 


B18_02b5:		ldy $0790, x	; bc 90 07
B18_02b8:		cpy #$0e		; c0 0e
B18_02ba:		bne B18_02c6 ; d0 0a

B18_02bc:		lda $054e, x	; bd 4e 05
B18_02bf:		cmp #$06		; c9 06
B18_02c1:		bne B18_02c6 ; d0 03

B18_02c3:		jsr $83ad		; 20 ad 83
B18_02c6:		sec				; 38 
B18_02c7:		rts				; 60 


B18_02c8:		clc				; 18 
B18_02c9:		rts				; 60 


B18_02ca:		lda $054e, x	; bd 4e 05
B18_02cd:		cmp #$06		; c9 06
B18_02cf:		beq B18_030f ; f0 3e

B18_02d1:		cmp #$10		; c9 10
B18_02d3:		bcc B18_02f0 ; 90 1b

B18_02d5:		cmp #$2d		; c9 2d
B18_02d7:		beq B18_030f ; f0 36

B18_02d9:		lda $84bd		; ad bd 84
B18_02dc:		sta $00			; 85 00
B18_02de:		lda $84be		; ad be 84
B18_02e1:		sta $01			; 85 01
B18_02e3:		lda #$8a		; a9 8a
B18_02e5:		jsr $e62f		; 20 2f e6
B18_02e8:		ldx $6c			; a6 6c
B18_02ea:		jsr $873a		; 20 3a 87
B18_02ed:		jmp $829e		; 4c 9e 82


B18_02f0:		cmp #$0c		; c9 0c
B18_02f2:		beq B18_030f ; f0 1b

B18_02f4:		cmp #$08		; c9 08
B18_02f6:		bne B18_02fd ; d0 05

B18_02f8:		lda $0606, x	; bd 06 06
B18_02fb:		bmi B18_030f ; 30 12

B18_02fd:		lda #$01		; a9 01
B18_02ff:		jsr $8905		; 20 05 89
B18_0302:		lda $067b, x	; bd 7b 06
B18_0305:		bne B18_030f ; d0 08

B18_0307:		lda #$00		; a9 00
B18_0309:		sta $0790, x	; 9d 90 07
B18_030c:		jmp $8279		; 4c 79 82


B18_030f:		lda #$00		; a9 00
B18_0311:		sta $0669, x	; 9d 69 06
B18_0314:		jmp $8274		; 4c 74 82


B18_0317:		.db $00				; 00
B18_0318:		jsr $2020		; 20 20 20
B18_031b:		bpl B18_033d ; 10 20

B18_031d:		;removed
	.db $10 $20

B18_031f:		jsr $2020		; 20 20 20
B18_0322:		jsr $203c		; 20 3c 20
B18_0325:	.db $20 $00 $00
B18_0328:		rti				; 40 


B18_0329:		.db $00				; 00
B18_032a:		.db $00				; 00
B18_032b:		rti				; 40 


B18_032c:		rti				; 40 


B18_032d:		.db $00				; 00
B18_032e:		rti				; 40 


B18_032f:		rti				; 40 


B18_0330:		rti				; 40 


B18_0331:		.db $00				; 00
B18_0332:		.db $00				; 00
B18_0333:		.db $00				; 00
B18_0334:		rti				; 40 


B18_0335:		.db $00				; 00
B18_0336:		.db $00				; 00
B18_0337:		.db $00				; 00
B18_0338:		.db $00				; 00
B18_0339:		.db $00				; 00
B18_033a:		rti				; 40 


B18_033b:		.db $00				; 00
B18_033c:		.db $00				; 00
B18_033d:		.db $00				; 00
B18_033e:	.db $20 $00 $00
B18_0341:		.db $00				; 00
B18_0342:		rti				; 40 


B18_0343:		.db $00				; 00
B18_0344:		bpl B18_0346 ; 10 00

B18_0346:		.db $00				; 00
B18_0347:		ora ($02, x)	; 01 02
B18_0349:	.db $04
B18_034a:		php				; 08 
B18_034b:		;removed
	.db $10 $20

B18_034d:		rti				; 40 


B18_034e:	.db $80
B18_034f:		jsr $8481		; 20 81 84
B18_0352:		beq B18_03a7 ; f0 53

B18_0354:		lda wEntityState.w, x	; bd 70 04
B18_0357:		ora #$20		; 09 20
B18_0359:		sta wEntityState.w, x	; 9d 70 04
B18_035c:		dec $0790, x	; de 90 07
B18_035f:		bne B18_037e ; d0 1d

B18_0361:		lda wEntityState.w, x	; bd 70 04
B18_0364:		and #$df		; 29 df
B18_0366:		ora #$40		; 09 40
B18_0368:		sta wEntityState.w, x	; 9d 70 04
B18_036b:		jsr $848a		; 20 8a 84
B18_036e:		ldy $00			; a4 00
B18_0370:		lda #$ff		; a9 ff
B18_0372:		sec				; 38 
B18_0373:		sbc $01			; e5 01
B18_0375:	.db $39 $cc $00
B18_0378:	.db $99 $cc $00
B18_037b:		jmp $83a5		; 4c a5 83


B18_037e:		ldy $054e, x	; bc 4e 05
B18_0381:		lda $849d, y	; b9 9d 84
B18_0384:		beq B18_03a5 ; f0 1f

B18_0386:		lda $0790, x	; bd 90 07
B18_0389:		and #$03		; 29 03
B18_038b:		bne B18_03a5 ; d0 18

B18_038d:		lda #$02		; a9 02
B18_038f:		sta $00			; 85 00
B18_0391:		lda $0790, x	; bd 90 07
B18_0394:		and #$04		; 29 04
B18_0396:		beq B18_039c ; f0 04

B18_0398:		lda #$fe		; a9 fe
B18_039a:		sta $00			; 85 00
B18_039c:		lda wEntityBaseX.w, x	; bd 38 04
B18_039f:		clc				; 18 
B18_03a0:		adc $00			; 65 00
B18_03a2:		sta wEntityBaseX.w, x	; 9d 38 04
B18_03a5:		sec				; 38 
B18_03a6:		rts				; 60 


B18_03a7:		clc				; 18 
B18_03a8:		rts				; 60 


B18_03a9:		lda #$11		; a9 11
B18_03ab:		bne B18_03af ; d0 02

B18_03ad:		lda #$10		; a9 10
B18_03af:		sta $02			; 85 02
B18_03b1:		ldx #$02		; a2 02
B18_03b3:		lda $054e, x	; bd 4e 05
B18_03b6:		cmp #$2d		; c9 2d
B18_03b8:		bne B18_03c2 ; d0 08

B18_03ba:		jsr $840d		; 20 0d 84
B18_03bd:		inx				; e8 
B18_03be:		cpx #$0d		; e0 0d
B18_03c0:		bne B18_03b3 ; d0 f1

B18_03c2:		ldx $6c			; a6 6c
B18_03c4:		rts				; 60 


B18_03c5:		lda $054e, x	; bd 4e 05
B18_03c8:		cmp #$08		; c9 08
B18_03ca:		beq B18_03d9 ; f0 0d

B18_03cc:		cmp #$06		; c9 06
B18_03ce:		beq B18_03f8 ; f0 28

B18_03d0:		cmp #$2d		; c9 2d
B18_03d2:		beq B18_03fd ; f0 29

B18_03d4:		jsr $8412		; 20 12 84
B18_03d7:		sec				; 38 
B18_03d8:		rts				; 60 


B18_03d9:		lda $0645, x	; bd 45 06
B18_03dc:		sta $0e			; 85 0e
B18_03de:		ldx #$01		; a2 01
B18_03e0:		lda $054e, x	; bd 4e 05
B18_03e3:		cmp #$08		; c9 08
B18_03e5:		bne B18_03f1 ; d0 0a

B18_03e7:		lda $0645, x	; bd 45 06
B18_03ea:		cmp $0e			; c5 0e
B18_03ec:		bne B18_03f1 ; d0 03

B18_03ee:		jsr $840d		; 20 0d 84
B18_03f1:		inx				; e8 
B18_03f2:		cpx #$0d		; e0 0d
B18_03f4:		bcc B18_03e0 ; 90 ea

B18_03f6:		bcs B18_0409 ; b0 11

B18_03f8:		jsr $83a9		; 20 a9 83
B18_03fb:		dec $02			; c6 02
B18_03fd:		ldx #$01		; a2 01
B18_03ff:		lda $054e, x	; bd 4e 05
B18_0402:		cmp #$06		; c9 06
B18_0404:		bne B18_0409 ; d0 03

B18_0406:		jsr $840d		; 20 0d 84
B18_0409:		ldx $6c			; a6 6c
B18_040b:		sec				; 38 
B18_040c:		rts				; 60 


B18_040d:		jsr $8478		; 20 78 84
B18_0410:		bne B18_040c ; d0 fa

B18_0412:		lda $01			; a5 01
B18_0414:	.db $19 $c4 $00
B18_0417:	.db $99 $c4 $00
B18_041a:		lda $02			; a5 02
B18_041c:		sta $0790, x	; 9d 90 07
B18_041f:		lda wEntityPaletteOverride.w, x	; bd 54 04
B18_0422:		ora #$04		; 09 04
B18_0424:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_0427:		lda wEntityState.w, x	; bd 70 04
B18_042a:		and #$bf		; 29 bf
B18_042c:		ora #$20		; 09 20
B18_042e:		sta wEntityState.w, x	; 9d 70 04
B18_0431:		lda #$00		; a9 00
B18_0433:		sta $0669, x	; 9d 69 06
B18_0436:		rts				; 60 


B18_0437:		ldy $054e, x	; bc 4e 05
B18_043a:		cpy #$2d		; c0 2d
B18_043c:		beq B18_0442 ; f0 04

B18_043e:		cpy #$10		; c0 10
B18_0440:		bcs B18_0472 ; b0 30

B18_0442:		lda $84ad, y	; b9 ad 84
B18_0445:		sta $02			; 85 02
B18_0447:		beq B18_0472 ; f0 29

B18_0449:		jsr $8478		; 20 78 84
B18_044c:		bne B18_0472 ; d0 24

B18_044e:		jsr $8481		; 20 81 84
B18_0451:		bne B18_0472 ; d0 1f

B18_0453:		lda $0669, x	; bd 69 06
B18_0456:		and #$f0		; 29 f0
B18_0458:		beq B18_0472 ; f0 18

B18_045a:		jsr $848a		; 20 8a 84
B18_045d:		ldy $00			; a4 00
B18_045f:	.db $19 $cc $00
B18_0462:	.db $99 $cc $00
B18_0465:		lda $02			; a5 02
B18_0467:		sta $0790, x	; 9d 90 07
B18_046a:		lda wEntityState.w, x	; bd 70 04
B18_046d:		and #$bf		; 29 bf
B18_046f:		sta wEntityState.w, x	; 9d 70 04
B18_0472:		lda #$00		; a9 00
B18_0474:		sta $0669, x	; 9d 69 06
B18_0477:		rts				; 60 


B18_0478:		jsr $848a		; 20 8a 84
B18_047b:		ldy $00			; a4 00
B18_047d:	.db $39 $c4 $00
B18_0480:		rts				; 60 


B18_0481:		jsr $848a		; 20 8a 84
B18_0484:		ldy $00			; a4 00
B18_0486:	.db $39 $cc $00
B18_0489:		rts				; 60 


B18_048a:		ldy #$00		; a0 00
B18_048c:		cpx #$08		; e0 08
B18_048e:		bcc B18_0491 ; 90 01

B18_0490:		iny				; c8 
B18_0491:		sty $00			; 84 00
B18_0493:		txa				; 8a 
B18_0494:		and #$07		; 29 07
B18_0496:		tay				; a8 
B18_0497:		lda $8347, y	; b9 47 83
B18_049a:		sta $01			; 85 01
B18_049c:		rts				; 60 


B18_049d:		.db $00				; 00
B18_049e:		ora ($01, x)	; 01 01
B18_04a0:		ora ($00, x)	; 01 00
B18_04a2:		.db $00				; 00
B18_04a3:		.db $00				; 00
B18_04a4:		ora ($00, x)	; 01 00
B18_04a6:		ora ($01, x)	; 01 01
B18_04a8:		.db $00				; 00
B18_04a9:		.db $00				; 00
B18_04aa:		.db $00				; 00
B18_04ab:		.db $00				; 00
B18_04ac:		.db $00				; 00
B18_04ad:		.db $00				; 00
B18_04ae:		php				; 08 
B18_04af:		php				; 08 
B18_04b0:		php				; 08 
B18_04b1:		.db $00				; 00
B18_04b2:		.db $00				; 00
B18_04b3:		.db $00				; 00
B18_04b4:		php				; 08 
B18_04b5:		.db $00				; 00
B18_04b6:	.db $04
B18_04b7:		php				; 08 
B18_04b8:		.db $00				; 00
B18_04b9:	.db $0c
B18_04ba:		.db $00				; 00
B18_04bb:		php				; 08 
B18_04bc:		.db $00				; 00
B18_04bd:		cmp ($bb, x)	; c1 bb
B18_04bf:		ldy $054e, x	; bc 4e 05
B18_04c2:		cpy #$2d		; c0 2d
B18_04c4:		bne B18_04ca ; d0 04

B18_04c6:		ldy #$06		; a0 06
B18_04c8:		bne B18_04d0 ; d0 06

B18_04ca:		cpy #$10		; c0 10
B18_04cc:		bcc B18_04d0 ; 90 02

B18_04ce:		clc				; 18 
B18_04cf:		rts				; 60 


B18_04d0:		lda $859a, y	; b9 9a 85
B18_04d3:		beq B18_04d8 ; f0 03

B18_04d5:		jmp $8555		; 4c 55 85


B18_04d8:		lda wEntityState.w, x	; bd 70 04
B18_04db:		and #$01		; 29 01
B18_04dd:		beq B18_0553 ; f0 74

B18_04df:		tay				; a8 
B18_04e0:		lda $85ae, y	; b9 ae 85
B18_04e3:		beq B18_0553 ; f0 6e

B18_04e5:		lda wCurrRoomGroup		; a5 32
B18_04e7:		cmp $85ce, y	; d9 ce 85
B18_04ea:		beq B18_04f2 ; f0 06

B18_04ec:		lda $85de, y	; b9 de 85
B18_04ef:		jmp $84f5		; 4c f5 84


B18_04f2:		lda $85be, y	; b9 be 85
B18_04f5:		beq B18_0505 ; f0 0e

B18_04f7:		cmp #$ff		; c9 ff
B18_04f9:		beq B18_0553 ; f0 58

B18_04fb:		lda wEntityBaseX.w, x	; bd 38 04
B18_04fe:		cmp #$20		; c9 20
B18_0500:		bcc B18_0553 ; 90 51

B18_0502:		jmp $850c		; 4c 0c 85


B18_0505:		lda wEntityBaseX.w, x	; bd 38 04
B18_0508:		cmp #$e0		; c9 e0
B18_050a:		bcs B18_0553 ; b0 47

B18_050c:		ldy $c3			; a4 c3
B18_050e:		lda $07c2, y	; b9 c2 07
B18_0511:		cmp #$05		; c9 05
B18_0513:		bcc B18_0526 ; 90 11

B18_0515:		cmp #$0b		; c9 0b
B18_0517:		bcc B18_0521 ; 90 08

B18_0519:		cmp #$1b		; c9 1b
B18_051b:		bcc B18_0526 ; 90 09

B18_051d:		cmp #$27		; c9 27
B18_051f:		bcs B18_0526 ; b0 05

B18_0521:		lda #$00		; a9 00
B18_0523:		sta $07c8, y	; 99 c8 07
B18_0526:		lda #$00		; a9 00
B18_0528:		sta $c1			; 85 c1
B18_052a:		ldy #$02		; a0 02
B18_052c:		jsr $857f		; 20 7f 85
B18_052f:		lda #$80		; a9 80
B18_0531:		jsr $e62f		; 20 2f e6
B18_0534:		ldy #$00		; a0 00
B18_0536:		jsr $857f		; 20 7f 85
B18_0539:		lda #$80		; a9 80
B18_053b:		jsr $e62f		; 20 2f e6
B18_053e:		ldx #$01		; a2 01
B18_0540:		lda $054e, x	; bd 4e 05
B18_0543:		cmp #$40		; c9 40
B18_0545:		bcs B18_054a ; b0 03

B18_0547:		jsr $873a		; 20 3a 87
B18_054a:		inx				; e8 
B18_054b:		cpx #$0d		; e0 0d
B18_054d:		bne B18_0540 ; d0 f1

B18_054f:		ldx $6c			; a6 6c
B18_0551:		sec				; 38 
B18_0552:		rts				; 60 


B18_0553:		clc				; 18 
B18_0554:		rts				; 60 


B18_0555:		lda wCurrScrollXWithinRoom			; a5 56
B18_0557:		bne B18_0553 ; d0 fa

B18_0559:		cpy #$06		; c0 06
B18_055b:		bne B18_0567 ; d0 0a

B18_055d:		lda wCurrRoomSection			; a5 33
B18_055f:		cmp #$02		; c9 02
B18_0561:		beq B18_0575 ; f0 12

B18_0563:		lda #$00		; a9 00
B18_0565:		beq B18_0578 ; f0 11

B18_0567:		cpy #$07		; c0 07
B18_0569:		bne B18_0575 ; d0 0a

B18_056b:		lda wCurrRoomGroup		; a5 32
B18_056d:		cmp #$04		; c9 04
B18_056f:		beq B18_0575 ; f0 04

B18_0571:		lda #$01		; a9 01
B18_0573:		bne B18_0578 ; d0 03

B18_0575:		lda $858a, y	; b9 8a 85
B18_0578:		cmp wCurrScrollXRoom			; c5 57
B18_057a:		beq B18_0553 ; f0 d7

B18_057c:		jmp $850c		; 4c 0c 85


B18_057f:		lda $85aa, y	; b9 aa 85
B18_0582:		sta $00			; 85 00
B18_0584:		lda $85ab, y	; b9 ab 85
B18_0587:		sta $01			; 85 01
B18_0589:		rts				; 60 


B18_058a:		.db $00				; 00
B18_058b:		.db $00				; 00
B18_058c:		.db $00				; 00
B18_058d:		.db $00				; 00
B18_058e:		.db $00				; 00
B18_058f:		ora ($02, x)	; 01 02
B18_0591:	.db $02
B18_0592:		ora ($00, x)	; 01 00
B18_0594:		ora ($00, x)	; 01 00
B18_0596:		.db $00				; 00
B18_0597:		.db $00				; 00
B18_0598:		.db $00				; 00
B18_0599:		.db $00				; 00
B18_059a:		.db $00				; 00
B18_059b:		.db $00				; 00
B18_059c:		.db $00				; 00
B18_059d:		.db $00				; 00
B18_059e:		.db $00				; 00
B18_059f:		ora ($01, x)	; 01 01
B18_05a1:		ora ($01, x)	; 01 01
B18_05a3:		.db $00				; 00
B18_05a4:		ora ($00, x)	; 01 00
B18_05a6:		.db $00				; 00
B18_05a7:		.db $00				; 00
B18_05a8:		.db $00				; 00
B18_05a9:		.db $00				; 00
B18_05aa:	.db $13
B18_05ab:	.db $80
B18_05ac:	.db $9e
B18_05ad:		sta $00			; 85 00
B18_05af:	.db $02
B18_05b0:		ora ($01, x)	; 01 01
B18_05b2:	.db $02
B18_05b3:		ora ($01, x)	; 01 01
B18_05b5:	.db $02
B18_05b6:		ora ($01, x)	; 01 01
B18_05b8:		ora ($01, x)	; 01 01
B18_05ba:		ora ($01, x)	; 01 01
B18_05bc:		.db $00				; 00
B18_05bd:		.db $00				; 00
B18_05be:		.db $00				; 00
B18_05bf:		.db $00				; 00
B18_05c0:		.db $00				; 00
B18_05c1:		ora ($ff, x)	; 01 ff
B18_05c3:		.db $00				; 00
B18_05c4:		.db $00				; 00
B18_05c5:		.db $00				; 00
B18_05c6:		.db $00				; 00
B18_05c7:		.db $00				; 00
B18_05c8:		.db $00				; 00
B18_05c9:		ora ($00, x)	; 01 00
B18_05cb:		ora ($00, x)	; 01 00
B18_05cd:		.db $00				; 00
B18_05ce:		.db $00				; 00
B18_05cf:		.db $00				; 00
B18_05d0:		.db $00				; 00
B18_05d1:		.db $00				; 00
B18_05d2:		asl $00			; 06 00
B18_05d4:		.db $00				; 00
B18_05d5:	.db $04
B18_05d6:		.db $00				; 00
B18_05d7:		.db $00				; 00
B18_05d8:		.db $00				; 00
B18_05d9:		.db $00				; 00
B18_05da:		.db $00				; 00
B18_05db:		.db $00				; 00
B18_05dc:		.db $00				; 00
B18_05dd:		.db $00				; 00
B18_05de:		.db $00				; 00
B18_05df:		ora ($00, x)	; 01 00
B18_05e1:		.db $00				; 00
B18_05e2:		.db $00				; 00
B18_05e3:		.db $00				; 00
B18_05e4:		.db $00				; 00
B18_05e5:		.db $00				; 00
B18_05e6:		.db $00				; 00
B18_05e7:		.db $00				; 00
B18_05e8:		.db $00				; 00
B18_05e9:		.db $00				; 00
B18_05ea:		.db $00				; 00
B18_05eb:		.db $00				; 00
B18_05ec:		.db $00				; 00
B18_05ed:		.db $00				; 00
B18_05ee:		lda wEntityState.w, x	; bd 70 04
B18_05f1:		and #$01		; 29 01
B18_05f3:		bne B18_05ff ; d0 0a

B18_05f5:		lda wEntityState.w, x	; bd 70 04
B18_05f8:		and #$77		; 29 77
B18_05fa:		ora #$40		; 09 40
B18_05fc:		jmp $8604		; 4c 04 86


B18_05ff:		lda wEntityState.w, x	; bd 70 04
B18_0602:		ora #$88		; 09 88
B18_0604:		sta wEntityState.w, x	; 9d 70 04
B18_0607:		rts				; 60 


B18_0608:		lda #$00		; a9 00
B18_060a:		sta $17			; 85 17
B18_060c:		lda wEntityBaseX.w		; ad 38 04
B18_060f:		sec				; 38 
B18_0610:		sbc wEntityBaseX.w, x	; fd 38 04
B18_0613:		sta $00			; 85 00
B18_0615:		bcs B18_0624 ; b0 0d

B18_0617:		lda #$01		; a9 01
B18_0619:		sta $17			; 85 17
B18_061b:		lda $00			; a5 00
B18_061d:		eor #$ff		; 49 ff
B18_061f:		clc				; 18 
B18_0620:		adc #$01		; 69 01
B18_0622:		sta $00			; 85 00
B18_0624:		lda wEntityBaseY.w		; ad 1c 04
B18_0627:		sec				; 38 
B18_0628:		sbc wEntityBaseY.w, x	; fd 1c 04
B18_062b:		bcs B18_0632 ; b0 05

B18_062d:		eor #$ff		; 49 ff
B18_062f:		clc				; 18 
B18_0630:		adc #$01		; 69 01
B18_0632:		cmp #$28		; c9 28
B18_0634:		bcc B18_0642 ; 90 0c

B18_0636:		lda $054e, x	; bd 4e 05
B18_0639:		cmp #$01		; c9 01
B18_063b:		bne B18_0642 ; d0 05

B18_063d:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_0640:		sta $17			; 85 17
B18_0642:		rts				; 60 


B18_0643:		lda $17			; a5 17
B18_0645:		sta wEntityFacingLeft.w, x	; 9d a8 04
B18_0648:		tay				; a8 
B18_0649:		lda $864d, y	; b9 4d 86
B18_064c:		rts				; 60 


B18_064d:	.db $04
B18_064e:	.db $0c
B18_064f:		sta $00			; 85 00
B18_0651:		lda wEntityAI_idx.w, x	; bd ef 05
B18_0654:		and #$80		; 29 80
B18_0656:		ora $00			; 05 00
B18_0658:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_065b:		lda #$00		; a9 00
B18_065d:		sta wEntityPhase.w, x	; 9d c1 05
B18_0660:		rts				; 60 


B18_0661:		sta $02			; 85 02
B18_0663:		txa				; 8a 
B18_0664:		pha				; 48 
B18_0665:		lda #$00		; a9 00
B18_0667:		sta $01			; 85 01
B18_0669:		sta $03			; 85 03
B18_066b:		jsr $e777		; 20 77 e7
B18_066e:		pla				; 68 
B18_066f:		tax				; aa 
B18_0670:		rts				; 60 


B18_0671:		sty $95			; 84 95
B18_0673:		ora $5396, y	; 19 96 53
B18_0676:		stx $71, y		; 96 71
B18_0678:		sta $60, x		; 95 60
B18_067a:		sta $07, x		; 95 07
B18_067c:	.db $97
B18_067d:		;removed
	.db $10 $97

B18_067f:		adc $3197, y	; 79 97 31
B18_0682:		tya				; 98 
B18_0683:		lsr a			; 4a
B18_0684:	.db $97
B18_0685:	.db $2b
B18_0686:	.db $97
B18_0687:	.db $52
B18_0688:		sta $17, x		; 95 17
B18_068a:		sta $55, x		; 95 55
B18_068c:		sta $e0, x		; 95 e0
B18_068e:		sta $77, x		; 95 77
B18_0690:		sta $f4, x		; 95 f4
B18_0692:		sty $73, x		; 94 73
B18_0694:		sty $9d, x		; 94 9d
B18_0696:		sty $5b, x		; 94 5b
B18_0698:		sty $41, x		; 94 41
B18_069a:		sty wChrBankBG_0800, x		; 94 4c
B18_069c:		sty $ba, x		; 94 ba
B18_069e:	.db $93
B18_069f:		ora ($94, x)	; 01 94
B18_06a1:	.db $53
B18_06a2:		stx $00, y		; 96 00
B18_06a4:	.db $9b
B18_06a5:		cpx $9b			; e4 9b
B18_06a7:	.db $1f
B18_06a8:	.db $97
B18_06a9:		adc #$95		; 69 95
B18_06ab:	.db $0c
B18_06ac:	.db $92
B18_06ad:		jmp $6993		; 4c 93 69


B18_06b0:	.db $93
B18_06b1:		pha				; 48 
B18_06b2:	.db $9e
B18_06b3:		asl a			; 0a
B18_06b4:	.db $87
B18_06b5:	.db $5a
B18_06b6:		sta $9921, y	; 99 21 99
B18_06b9:		and ($99, x)	; 21 99
B18_06bb:		.db $00				; 00
B18_06bc:	.db $9f
B18_06bd:		ror $9f, x		; 76 9f
B18_06bf:		cpy $9f			; c4 9f
B18_06c1:	.db $f7
B18_06c2:	.db $9f
B18_06c3:		ora #$a0		; 09 a0
B18_06c5:	.db $07
B18_06c6:	.db $87
B18_06c7:		rti				; 40 


B18_06c8:	.db $9e
B18_06c9:	.db $0c
B18_06ca:		ldy #$82		; a0 82
B18_06cc:		ldy #$eb		; a0 eb
B18_06ce:		ldy #$f5		; a0 f5
B18_06d0:		ldy #$01		; a0 01
B18_06d2:		lda ($26, x)	; a1 26
B18_06d4:		lda ($ef, x)	; a1 ef
B18_06d6:		sta $9dd7, x	; 9d d7 9d
B18_06d9:		lda $a39d, y	; b9 9d a3
B18_06dc:		sta $9dae, x	; 9d ae 9d
B18_06df:		stx $9d, y		; 96 9d
B18_06e1:		ror a			; 6a
B18_06e2:		sta $9d5e, x	; 9d 5e 9d
B18_06e5:	.db $54
B18_06e6:		sta $9d2c, x	; 9d 2c 9d
B18_06e9:		rol $9d, x		; 36 9d
B18_06eb:		rti				; 40 


B18_06ec:		sta $9d21, x	; 9d 21 9d
B18_06ef:		cpy $9c			; c4 9c
B18_06f1:		eor $9d			; 45 9d
B18_06f3:		lsr $619c, x	; 5e 9c 61
B18_06f6:		sta $9af6, y	; 99 f6 9a
B18_06f9:	.db $53
B18_06fa:		stx $78, y		; 96 78
B18_06fc:		sta $9c2c, x	; 9d 2c 9c
B18_06ff:		eor $9d			; 45 9d
B18_0701:	.db $27
B18_0702:		ldy #$04		; a0 04
B18_0704:	.db $9c
B18_0705:		clc				; 18 
B18_0706:	.db $9c
B18_0707:		inc wEntityPhase.w, x	; fe c1 05
B18_070a:		rts				; 60 


B18_070b:		lda $0606, x	; bd 06 06
B18_070e:		cmp #$02		; c9 02
B18_0710:		bcc B18_0714 ; 90 02

B18_0712:		clc				; 18 
B18_0713:		rts				; 60 


B18_0714:		stx $10			; 86 10
B18_0716:		jsr $feb9		; 20 b9 fe
B18_0719:		bne B18_0736 ; d0 1b

B18_071b:		lda #$00		; a9 00
B18_071d:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_0720:		lda #$11		; a9 11
B18_0722:		sta $054e, x	; 9d 4e 05
B18_0725:		jsr $8779		; 20 79 87
B18_0728:		lda #$04		; a9 04
B18_072a:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_072d:		txa				; 8a 
B18_072e:		tay				; a8 
B18_072f:		ldx $10			; a6 10
B18_0731:		inc $0606, x	; fe 06 06
B18_0734:		sec				; 38 
B18_0735:		rts				; 60 


B18_0736:		ldx $10			; a6 10
B18_0738:		clc				; 18 
B18_0739:		rts				; 60 


B18_073a:		lda #$00		; a9 00
B18_073c:		sta $054e, x	; 9d 4e 05
B18_073f:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B18_0742:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B18_0745:		lda #$00		; a9 00
B18_0747:		sta $05d8, x	; 9d d8 05
B18_074a:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_074d:		sta $0606, x	; 9d 06 06
B18_0750:		sta $061d, x	; 9d 1d 06
B18_0753:		sta $0633, x	; 9d 33 06
B18_0756:		sta $0645, x	; 9d 45 06
B18_0759:		sta $0657, x	; 9d 57 06
B18_075c:		sta $0669, x	; 9d 69 06
B18_075f:		sta $067b, x	; 9d 7b 06
B18_0762:		sta $068d, x	; 9d 8d 06
B18_0765:		rts				; 60 


B18_0766:		sta $11			; 85 11
B18_0768:		stx $10			; 86 10
B18_076a:		jsr $feb9		; 20 b9 fe
B18_076d:		bne B18_0775 ; d0 06

B18_076f:		jsr $8779		; 20 79 87
B18_0772:		jmp $87d1		; 4c d1 87


B18_0775:		ldx $10			; a6 10
B18_0777:		clc				; 18 
B18_0778:		rts				; 60 


B18_0779:		jsr $8745		; 20 45 87
B18_077c:		ldy $10			; a4 10
B18_077e:		lda wEntityBaseX.w, y	; b9 38 04
B18_0781:		sta wEntityBaseX.w, x	; 9d 38 04
B18_0784:		lda $11			; a5 11
B18_0786:		cmp #$29		; c9 29
B18_0788:		beq B18_079d ; f0 13

B18_078a:		cmp #$18		; c9 18
B18_078c:		beq B18_07b1 ; f0 23

B18_078e:		cmp #$1a		; c9 1a
B18_0790:		beq B18_07bb ; f0 29

B18_0792:		cmp #$1b		; c9 1b
B18_0794:		beq B18_07a7 ; f0 11

B18_0796:		lda wEntityBaseY.w, y	; b9 1c 04
B18_0799:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_079c:		rts				; 60 


B18_079d:		clc				; 18 
B18_079e:		lda wEntityBaseY.w, y	; b9 1c 04
B18_07a1:		adc #$18		; 69 18
B18_07a3:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_07a6:		rts				; 60 


B18_07a7:		clc				; 18 
B18_07a8:		lda wEntityBaseY.w, y	; b9 1c 04
B18_07ab:		adc #$08		; 69 08
B18_07ad:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_07b0:		rts				; 60 


B18_07b1:		clc				; 18 
B18_07b2:		lda wEntityBaseY.w, y	; b9 1c 04
B18_07b5:		adc #$10		; 69 10
B18_07b7:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_07ba:		rts				; 60 


B18_07bb:		lda wCurrRoomGroup		; a5 32
B18_07bd:		beq B18_07a7 ; f0 e8

B18_07bf:		cmp #$07		; c9 07
B18_07c1:		beq B18_07a7 ; f0 e4

B18_07c3:		bne B18_0796 ; d0 d1

B18_07c5:		sta $11			; 85 11
B18_07c7:		stx $10			; 86 10
B18_07c9:		jsr $87e5		; 20 e5 87
B18_07cc:		bne B18_07e1 ; d0 13

B18_07ce:		jsr $8779		; 20 79 87
B18_07d1:		lda #$00		; a9 00
B18_07d3:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_07d6:		txa				; 8a 
B18_07d7:		tay				; a8 
B18_07d8:		lda $11			; a5 11
B18_07da:		sta $054e, x	; 9d 4e 05
B18_07dd:		ldx $10			; a6 10
B18_07df:		sec				; 38 
B18_07e0:		rts				; 60 


B18_07e1:		ldx $10			; a6 10
B18_07e3:		clc				; 18 
B18_07e4:		rts				; 60 


B18_07e5:		ldx #$01		; a2 01
B18_07e7:		lda $054e, x	; bd 4e 05
B18_07ea:		beq B18_07f3 ; f0 07

B18_07ec:		inx				; e8 
B18_07ed:		cpx #$13		; e0 13
B18_07ef:		bne B18_07e7 ; d0 f6

B18_07f1:		lda #$01		; a9 01
B18_07f3:		rts				; 60 


B18_07f4:		sta $08			; 85 08
B18_07f6:		lda $07f3		; ad f3 07
B18_07f9:		bne B18_0829 ; d0 2e

B18_07fb:		lda $067b, x	; bd 7b 06
B18_07fe:		beq B18_0803 ; f0 03

B18_0800:		jmp $88cb		; 4c cb 88


B18_0803:		lda wCurrRoomGroup		; a5 32
B18_0805:		cmp #$0e		; c9 0e
B18_0807:		bne B18_0814 ; d0 0b

B18_0809:		lda $07ec		; ad ec 07
B18_080c:		cmp #$02		; c9 02
B18_080e:		bne B18_0814 ; d0 04

B18_0810:		lda #$7c		; a9 7c
B18_0812:		bne B18_0816 ; d0 02

B18_0814:		lda #$7b		; a9 7b
B18_0816:		jsr playSound		; 20 5f e2
B18_0819:		lda #$01		; a9 01
B18_081b:		sta $07f3		; 8d f3 07
B18_081e:		lda #$00		; a9 00
B18_0820:		sta $0657, x	; 9d 57 06
B18_0823:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_0826:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B18_0829:		lda $07f3		; ad f3 07
B18_082c:		cmp #$02		; c9 02
B18_082e:		beq B18_0833 ; f0 03

B18_0830:		jmp $88c9		; 4c c9 88


B18_0833:		lda wCurrRoomGroup		; a5 32
B18_0835:		cmp #$0a		; c9 0a
B18_0837:		bne B18_0842 ; d0 09

B18_0839:		lda wCurrRoomSection			; a5 33
B18_083b:		cmp #$03		; c9 03
B18_083d:		bne B18_0842 ; d0 03

B18_083f:		jmp $88cd		; 4c cd 88


B18_0842:		lda wCurrRoomGroup		; a5 32
B18_0844:		cmp #$03		; c9 03
B18_0846:		bne B18_0877 ; d0 2f

B18_0848:		lda wCurrRoomSection			; a5 33
B18_084a:		cmp #$02		; c9 02
B18_084c:		bne B18_0877 ; d0 29

B18_084e:		lda #$74		; a9 74
B18_0850:		jsr $8766		; 20 66 87
B18_0853:		lda #$b0		; a9 b0
B18_0855:		sta wEntityBaseX.w, y	; 99 38 04
B18_0858:		sta wEntityBaseY.w, y	; 99 1c 04
B18_085b:		lda #$a8		; a9 a8
B18_085d:		sta wEntityState.w, y	; 99 70 04
B18_0860:		lda #$00		; a9 00
B18_0862:		sta wEntityAI_idx.w, y	; 99 ef 05
B18_0865:		lda #$02		; a9 02
B18_0867:		sta wOamSpecIdxDoubled.w, y	; 99 00 04
B18_086a:		lda #$0e		; a9 0e
B18_086c:		sta $0657, y	; 99 57 06
B18_086f:		lda #$03		; a9 03
B18_0871:		sta $07f3		; 8d f3 07
B18_0874:		jmp $87f4		; 4c f4 87


B18_0877:		lda #$16		; a9 16
B18_0879:		jsr $8766		; 20 66 87
B18_087c:		bcc B18_08cb ; 90 4d

B18_087e:		lda #$03		; a9 03
B18_0880:		sta $07f3		; 8d f3 07
B18_0883:		lda #$63		; a9 63
B18_0885:		sta wEntityAI_idx.w, y	; 99 ef 05
B18_0888:		lda #$80		; a9 80
B18_088a:		sta wEntityBaseX.w, y	; 99 38 04
B18_088d:		sta wEntityBaseY.w, y	; 99 1c 04
B18_0890:		lda wCurrRoomGroup		; a5 32
B18_0892:		cmp #$08		; c9 08
B18_0894:		bne B18_08a6 ; d0 10

B18_0896:		lda wCurrRoomSection			; a5 33
B18_0898:		cmp #$02		; c9 02
B18_089a:		beq B18_08a6 ; f0 0a

B18_089c:		lda #$60		; a9 60
B18_089e:		sta wEntityBaseY.w, y	; 99 1c 04
B18_08a1:		lda #$90		; a9 90
B18_08a3:		sta wEntityBaseX.w, y	; 99 38 04
B18_08a6:		lda #$48		; a9 48
B18_08a8:		jsr playSound		; 20 5f e2
B18_08ab:		jsr set_2c_to_01h		; 20 ce e5
B18_08ae:		lda #$00		; a9 00
B18_08b0:		sta wEntityPhase.w, y	; 99 c1 05
B18_08b3:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B18_08b6:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_08b9:		sta $0657, x	; 9d 57 06
B18_08bc:		lda $08			; a5 08
B18_08be:		bne B18_08c9 ; d0 09

B18_08c0:		sta $054e, x	; 9d 4e 05
B18_08c3:		sta wEntityState.w, x	; 9d 70 04
B18_08c6:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B18_08c9:		sec				; 38 
B18_08ca:		rts				; 60 


B18_08cb:		clc				; 18 
B18_08cc:		rts				; 60 


B18_08cd:		lda #$73		; a9 73
B18_08cf:		jsr $8766		; 20 66 87
B18_08d2:		lda #$d0		; a9 d0
B18_08d4:		sta wEntityBaseX.w, y	; 99 38 04
B18_08d7:		lda #$b0		; a9 b0
B18_08d9:		sta wEntityBaseY.w, y	; 99 1c 04
B18_08dc:		jmp $885b		; 4c 5b 88


B18_08df:		tya				; 98 
B18_08e0:		sta $00			; 85 00
B18_08e2:		lda $0669, x	; bd 69 06
B18_08e5:		and #$f0		; 29 f0
B18_08e7:		beq B18_0904 ; f0 1b

B18_08e9:		lda wCurrRoomGroup		; a5 32
B18_08eb:		cmp #$0e		; c9 0e
B18_08ed:		bne B18_08fa ; d0 0b

B18_08ef:		lda $07ec		; ad ec 07
B18_08f2:		cmp #$02		; c9 02
B18_08f4:		bne B18_08fa ; d0 04

B18_08f6:		lda #$47		; a9 47
B18_08f8:		bne B18_08fc ; d0 02

B18_08fa:		lda #$2b		; a9 2b
B18_08fc:		jsr playSound		; 20 5f e2
B18_08ff:		jsr $8922		; 20 22 89
B18_0902:		sta $3d			; 85 3d
B18_0904:		rts				; 60 


B18_0905:		sta $00			; 85 00
B18_0907:		lda $0669, x	; bd 69 06
B18_090a:		and #$f0		; 29 f0
B18_090c:		beq B18_0921 ; f0 13

B18_090e:		lda #$2b		; a9 2b
B18_0910:		jsr playSound		; 20 5f e2
B18_0913:		jsr $8922		; 20 22 89
B18_0916:		lda $3d			; a5 3d
B18_0918:		sec				; 38 
B18_0919:		sbc $00			; e5 00
B18_091b:		bcs B18_091f ; b0 02

B18_091d:		lda #$00		; a9 00
B18_091f:		sta $3d			; 85 3d
B18_0921:		rts				; 60 


B18_0922:		lda $0669, x	; bd 69 06
B18_0925:		clc				; 18 
B18_0926:		adc #$10		; 69 10
B18_0928:		lsr a			; 4a
B18_0929:		lsr a			; 4a
B18_092a:		and #$f8		; 29 f8
B18_092c:		clc				; 18 
B18_092d:		adc $00			; 65 00
B18_092f:		tay				; a8 
B18_0930:		lda $8953, y	; b9 53 89
B18_0933:		sta $00			; 85 00
B18_0935:		lda $067b, x	; bd 7b 06
B18_0938:		sec				; 38 
B18_0939:		sbc $00			; e5 00
B18_093b:		bcs B18_094f ; b0 12

B18_093d:		clc				; 18 
B18_093e:		adc $00			; 65 00
B18_0940:		sta $00			; 85 00
B18_0942:		lda $067b, x	; bd 7b 06
B18_0945:		bne B18_094d ; d0 06

B18_0947:		lda #$00		; a9 00
B18_0949:		sta $00			; 85 00
B18_094b:		beq B18_094f ; f0 02

B18_094d:		lda #$00		; a9 00
B18_094f:		sta $067b, x	; 9d 7b 06
B18_0952:		rts				; 60 


B18_0953:		.db $00				; 00
B18_0954:		.db $00				; 00
B18_0955:		.db $00				; 00
B18_0956:		.db $00				; 00
B18_0957:		.db $00				; 00
B18_0958:		.db $00				; 00
B18_0959:		.db $00				; 00
B18_095a:		.db $00				; 00
B18_095b:	.db $04
B18_095c:	.db $03
B18_095d:	.db $03
B18_095e:	.db $02
B18_095f:		ora ($01, x)	; 01 01
B18_0961:		.db $00				; 00
B18_0962:		.db $00				; 00
B18_0963:		asl $05			; 06 05
B18_0965:	.db $04
B18_0966:	.db $03
B18_0967:	.db $02
B18_0968:		ora ($00, x)	; 01 00
B18_096a:		.db $00				; 00
B18_096b:		php				; 08 
B18_096c:	.db $07
B18_096d:		asl $04			; 06 04
B18_096f:	.db $03
B18_0970:	.db $02
B18_0971:		.db $00				; 00
B18_0972:		.db $00				; 00
B18_0973:		asl a			; 0a
B18_0974:		ora #$08		; 09 08
B18_0976:		ora $04			; 05 04
B18_0978:	.db $02
B18_0979:		.db $00				; 00
B18_097a:		.db $00				; 00
B18_097b:	.db $0c
B18_097c:	.db $0b
B18_097d:		asl a			; 0a
B18_097e:		asl $05			; 06 05
B18_0980:	.db $03
B18_0981:		.db $00				; 00
B18_0982:		.db $00				; 00
B18_0983:		asl $0c0d		; 0e 0d 0c
B18_0986:		php				; 08 
B18_0987:		asl $04			; 06 04
B18_0989:		.db $00				; 00
B18_098a:		.db $00				; 00
B18_098b:		lda wEntityAI_idx.w, x	; bd ef 05
B18_098e:		and #$7f		; 29 7f
B18_0990:		cmp #$5c		; c9 5c
B18_0992:		beq B18_09c8 ; f0 34

B18_0994:		lda #$00		; a9 00
B18_0996:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_0999:		lda #$40		; a9 40
B18_099b:		sta wEntityState.w, x	; 9d 70 04
B18_099e:		lda wEntityBaseY.w, x	; bd 1c 04
B18_09a1:		clc				; 18 
B18_09a2:		adc #$10		; 69 10
B18_09a4:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_09a7:		lda #$0e		; a9 0e
B18_09a9:		ldy #$08		; a0 08
B18_09ab:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B18_09ae:		lda #$dc		; a9 dc
B18_09b0:		jmp $864f		; 4c 4f 86


B18_09b3:		lda wEntityAI_idx.w, x	; bd ef 05
B18_09b6:		and #$7f		; 29 7f
B18_09b8:		cmp #$30		; c9 30
B18_09ba:		beq B18_09c8 ; f0 0c

B18_09bc:		lda #$0e		; a9 0e
B18_09be:		ldy #$08		; a0 08
B18_09c0:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B18_09c3:		lda #$30		; a9 30
B18_09c5:		jmp $864f		; 4c 4f 86


B18_09c8:		lda wEntityPhase.w, x	; bd c1 05
B18_09cb:		cmp #$0d		; c9 0d
B18_09cd:		bne B18_09ee ; d0 1f

B18_09cf:		lda wCurrRoomGroup		; a5 32
B18_09d1:		cmp #$0a		; c9 0a
B18_09d3:		beq B18_09e3 ; f0 0e

B18_09d5:		cmp #$0b		; c9 0b
B18_09d7:		beq B18_09e3 ; f0 0a

B18_09d9:		cmp #$03		; c9 03
B18_09db:		bne B18_09ee ; d0 11

B18_09dd:		lda wCurrRoomSection			; a5 33
B18_09df:		cmp #$04		; c9 04
B18_09e1:		bne B18_09ee ; d0 0b

B18_09e3:		jmp $873a		; 4c 3a 87


B18_09e6:		lda wEntityAI_idx.w, x	; bd ef 05
B18_09e9:		and #$80		; 29 80
B18_09eb:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_09ee:		rts				; 60 


B18_09ef:	.db $bb
B18_09f0:		txa				; 8a 
B18_09f1:		lda $d58a, x	; bd 8a d5
B18_09f4:		txa				; 8a 
B18_09f5:		sbc ($8a, x)	; e1 8a
B18_09f7:	.db $eb
B18_09f8:		txa				; 8a 
B18_09f9:	.db $f3
B18_09fa:		txa				; 8a 
B18_09fb:		sbc $038a, x	; fd 8a 03
B18_09fe:	.db $8b
B18_09ff:	.db $0b
B18_0a00:	.db $8b
B18_0a01:		ora ($8b), y	; 11 8b
B18_0a03:	.db $17
B18_0a04:	.db $8b
B18_0a05:	.db $2b
B18_0a06:	.db $8b
B18_0a07:		and ($8b), y	; 31 8b
B18_0a09:	.db $37
B18_0a0a:	.db $8b
B18_0a0b:		and $7b8b, x	; 3d 8b 7b
B18_0a0e:	.db $8b
B18_0a0f:		adc ($8b), y	; 71 8b
B18_0a11:	.db $4b
B18_0a12:	.db $8b
B18_0a13:		sta $ad8b		; 8d 8b ad
B18_0a16:	.db $8b
B18_0a17:	.db $9b
B18_0a18:	.db $8b
B18_0a19:	.db $a7
B18_0a1a:	.db $8b
B18_0a1b:	.db $af
B18_0a1c:	.db $8b
B18_0a1d:		lda $bf8b, y	; b9 8b bf
B18_0a20:	.db $8b
B18_0a21:		cmp $db8b		; cd 8b db
B18_0a24:	.db $8b
B18_0a25:		sbc $8b			; e5 8b
B18_0a27:		sbc $058b		; ed8b 05
B18_0a2a:		sty $8c0b		; 8c 0b 8c
B18_0a2d:		ora $8c, x		; 15 8c
B18_0a2f:	.db $1f
B18_0a30:		sty $8c33		; 8c 33 8c
B18_0a33:		and $3b8c, y	; 39 8c 3b
B18_0a36:		sty $8c4d		; 8c 4d 8c
B18_0a39:		adc #$8c		; 69 8c
B18_0a3b:	.db $5b
B18_0a3c:		sty $8c89		; 8c 89 8c
B18_0a3f:	.db $97
B18_0a40:		sty $8cb5		; 8c b5 8c
B18_0a43:		cmp $e58c		; cd 8c e5
B18_0a46:		sty $8ceb		; 8c eb 8c
B18_0a49:	.db $03
B18_0a4a:		sta $8d1b		; 8d 1b 8d
B18_0a4d:		and ($8d, x)	; 21 8d
B18_0a4f:		adc #$8d		; 69 8d
B18_0a51:		sta $8d			; 85 8d
B18_0a53:		lda ($8d, x)	; a1 8d
B18_0a55:		lda $b58d		; ad 8d b5
B18_0a58:		sta $8dbb		; 8d bb 8d
B18_0a5b:		cmp ($8d, x)	; c1 8d
B18_0a5d:	.db $c7
B18_0a5e:		sta $8deb		; 8d eb 8d
B18_0a61:		ora #$8e		; 09 8e
B18_0a63:	.db $0f
B18_0a64:		stx $8e21		; 8e 21 8e
B18_0a67:	.db $2b
B18_0a68:		stx $8e33		; 8e 33 8e
B18_0a6b:		eor #$8e		; 49 8e
B18_0a6d:	.db $57
B18_0a6e:		stx $8e5d		; 8e 5d 8e
B18_0a71:	.db $63
B18_0a72:		stx $8e77		; 8e 77 8e
B18_0a75:	.db $89
B18_0a76:		stx $8e8f		; 8e 8f 8e
B18_0a79:		lda ($8e, x)	; a1 8e
B18_0a7b:	.db $ab
B18_0a7c:		stx $8eb1		; 8e b1 8e
B18_0a7f:	.db $b7
B18_0a80:		stx $8ebd		; 8e bd 8e
B18_0a83:	.db $d7
B18_0a84:		stx $8ef5		; 8e f5 8e
B18_0a87:	.db $fb
B18_0a88:		stx $8f27		; 8e 27 8f
B18_0a8b:		sbc $8e, x		; f5 8e
B18_0a8d:	.db $4f
B18_0a8e:	.db $8f
B18_0a8f:	.db $53
B18_0a90:	.db $8f
B18_0a91:	.db $57
B18_0a92:	.db $8f
B18_0a93:	.db $67
B18_0a94:	.db $8f
B18_0a95:	.db $83
B18_0a96:	.db $8f
B18_0a97:	.db $d3
B18_0a98:	.db $8f
B18_0a99:		ora ($90), y	; 11 90
B18_0a9b:	.db $b7
B18_0a9c:	.db $8b
B18_0a9d:		ora $90, x		; 15 90
B18_0a9f:		and $3190		; 2d 90 31
B18_0aa2:		;removed
	.db $90 $49

B18_0aa4:		bcc B18_0add ; 90 37

B18_0aa6:		sta $8d4d		; 8d 4d 8d
B18_0aa9:		eor $5b90		; 4d 90 5b
B18_0aac:		;removed
	.db $90 $5f

B18_0aae:		bcc B18_0b2b ; 90 7b

B18_0ab0:		;removed
	.db $90 $95

B18_0ab2:		bcc B18_0a49 ; 90 95

B18_0ab4:		;removed
	.db $90 $a1

B18_0ab6:		;removed
	.db $90 $53

B18_0ab8:		stx $8abb		; 8e bb 8a
B18_0abb:		lsr a			; 4a
B18_0abc:		ora ($0b, x)	; 01 0b
B18_0abe:	.db $0f
B18_0abf:		ora $01			; 05 01
B18_0ac1:	.db $0c
B18_0ac2:	.db $02
B18_0ac3:		ora $050f		; 0d 0f 05
B18_0ac6:		ora ($0c, x)	; 01 0c
B18_0ac8:	.db $02
B18_0ac9:		ora $050f		; 0d 0f 05
B18_0acc:		ora ($0c, x)	; 01 0c
B18_0ace:	.db $02
B18_0acf:		ora $050f		; 0d 0f 05
B18_0ad2:		ora ($1c, x)	; 01 1c
B18_0ad4:		ora ($01, x)	; 01 01
B18_0ad6:	.db $03
B18_0ad7:	.db $02
B18_0ad8:	.db $03
B18_0ad9:		plp				; 28 
B18_0ada:	.db $67
B18_0adb:	.db $0b
B18_0adc:	.db $0f
B18_0add:		ora $01			; 05 01
B18_0adf:	.db $04
B18_0ae0:		ora ($00, x)	; 01 00
B18_0ae2:	.db $04
B18_0ae3:		ora $01			; 05 01
B18_0ae5:		asl $01			; 06 01
B18_0ae7:		.db $00				; 00
B18_0ae8:	.db $04
B18_0ae9:	.db $07
B18_0aea:		ora $08			; 05 08
B18_0aec:		asl $05			; 06 05
B18_0aee:		ora ($06, x)	; 01 06
B18_0af0:		ora ($03, x)	; 01 03
B18_0af2:		ora ($00, x)	; 01 00
B18_0af4:	.db $04
B18_0af5:		ora $01			; 05 01
B18_0af7:		asl $01			; 06 01
B18_0af9:		.db $00				; 00
B18_0afa:	.db $04
B18_0afb:		ora #$07		; 09 07
B18_0afd:		php				; 08 
B18_0afe:		php				; 08 
B18_0aff:		ora $01			; 05 01
B18_0b01:	.db $04
B18_0b02:		ora ($41, x)	; 01 41
B18_0b04:		ora #$42		; 09 42
B18_0b06:	.db $22
B18_0b07:		ora $01			; 05 01
B18_0b09:	.db $03
B18_0b0a:		ora ($0e, x)	; 01 0e
B18_0b0c:		ora ($02, x)	; 01 02
B18_0b0e:		asl a			; 0a
B18_0b0f:	.db $04
B18_0b10:		ora ($0b, x)	; 01 0b
B18_0b12:	.db $0b
B18_0b13:		ora $01			; 05 01
B18_0b15:	.db $04
B18_0b16:		ora ($0b, x)	; 01 0b
B18_0b18:		ora $0105		; 0d 05 01
B18_0b1b:	.db $0c
B18_0b1c:		ora ($0d, x)	; 01 0d
B18_0b1e:		.db $00				; 00
B18_0b1f:		ora $01			; 05 01
B18_0b21:	.db $0c
B18_0b22:	.db $0b
B18_0b23:		ora $050e		; 0d 0e 05
B18_0b26:		ora ($0c, x)	; 01 0c
B18_0b28:		adc $0104		; 6d 04 01
B18_0b2b:		ora ($04, x)	; 01 04
B18_0b2d:	.db $02
B18_0b2e:	.db $04
B18_0b2f:	.db $04
B18_0b30:		ora ($0f, x)	; 01 0f
B18_0b32:		;removed
	.db $10 $05

B18_0b34:		ora ($04, x)	; 01 04
B18_0b36:		ora ($00, x)	; 01 00
B18_0b38:		ora ($05), y	; 11 05
B18_0b3a:		ora ($03, x)	; 01 03
B18_0b3c:		ora ($0b, x)	; 01 0b
B18_0b3e:		ror $05, x		; 76 05
B18_0b40:		ora ($3a, x)	; 01 3a
B18_0b42:	.db $13
B18_0b43:	.db $0c
B18_0b44:		ora ($0d, x)	; 01 0d
B18_0b46:	.db $14
B18_0b47:		ora $01			; 05 01
B18_0b49:	.db $04
B18_0b4a:		ora ($0b, x)	; 01 0b
B18_0b4c:		ora $3f, x		; 15 3f
B18_0b4e:		asl $0b, x		; 16 0b
B18_0b50:		ora $39, x		; 15 39
B18_0b52:		ora ($05, x)	; 01 05
B18_0b54:		ora ($3e, x)	; 01 3e
B18_0b56:		ora ($0d, x)	; 01 0d
B18_0b58:	.db $17
B18_0b59:		ora $01			; 05 01
B18_0b5b:	.db $3c
B18_0b5c:		ora $39, x		; 15 39
B18_0b5e:		ora ($3b, x)	; 01 3b
B18_0b60:		ora $0d, x		; 15 0d
B18_0b62:		ora $0105		; 0d 05 01
B18_0b65:		rol $0d01, x	; 3e 01 0d
B18_0b68:		ora $05, x		; 15 05
B18_0b6a:		ora ($3d, x)	; 01 3d
B18_0b6c:		clc				; 18 
B18_0b6d:	.db $3b
B18_0b6e:		ora ($04, x)	; 01 04
B18_0b70:		ora ($0b, x)	; 01 0b
B18_0b72:		ora $0105, y	; 19 05 01
B18_0b75:		.db $00				; 00
B18_0b76:	.db $1a
B18_0b77:		ora $01			; 05 01
B18_0b79:		rti				; 40 


B18_0b7a:	.db $1b
B18_0b7b:		ora $0519		; 0d 19 05
B18_0b7e:		ora ($3f, x)	; 01 3f
B18_0b80:	.db $1c
B18_0b81:		ora ($01), y	; 11 01
B18_0b83:	.db $12
B18_0b84:		ora $3f, x		; 15 3f
B18_0b86:		asl $0b, x		; 16 0b
B18_0b88:		ora $0105		; 0d 05 01
B18_0b8b:	.db $04
B18_0b8c:		ora ($17, x)	; 01 17
B18_0b8e:		ora $0116, x	; 1d 16 01
B18_0b91:		ora $01			; 05 01
B18_0b93:	.db $17
B18_0b94:		asl $0b16, x	; 1e 16 0b
B18_0b97:		ora $01			; 05 01
B18_0b99:	.db $03
B18_0b9a:		ora ($0b, x)	; 01 0b
B18_0b9c:	.db $0f
B18_0b9d:		ora $01			; 05 01
B18_0b9f:	.db $14
B18_0ba0:		ora ($01, x)	; 01 01
B18_0ba2:	.db $1f
B18_0ba3:	.db $02
B18_0ba4:	.db $1f
B18_0ba5:	.db $04
B18_0ba6:		ora ($0e, x)	; 01 0e
B18_0ba8:		ora ($02, x)	; 01 02
B18_0baa:		asl a			; 0a
B18_0bab:	.db $04
B18_0bac:		ora ($15, x)	; 01 15
B18_0bae:		jsr $0b0b		; 20 0b 0b
B18_0bb1:		ora $01			; 05 01
B18_0bb3:		.db $00				; 00
B18_0bb4:		and ($21, x)	; 21 21
B18_0bb6:		ora ($05, x)	; 01 05
B18_0bb8:		ora ($0e, x)	; 01 0e
B18_0bba:		ora ($18, x)	; 01 18
B18_0bbc:	.db $03
B18_0bbd:		and ($01, x)	; 21 01
B18_0bbf:		ora $0817, y	; 19 17 08
B18_0bc2:	.db $22
B18_0bc3:		ora $01			; 05 01
B18_0bc5:	.db $03
B18_0bc6:		ora ($08, x)	; 01 08
B18_0bc8:	.db $22
B18_0bc9:		ora $01			; 05 01
B18_0bcb:	.db $1c
B18_0bcc:		ora ($1a, x)	; 01 1a
B18_0bce:	.db $17
B18_0bcf:		php				; 08 
B18_0bd0:	.db $22
B18_0bd1:		ora $01			; 05 01
B18_0bd3:	.db $03
B18_0bd4:		ora ($08, x)	; 01 08
B18_0bd6:	.db $23
B18_0bd7:		ora $01			; 05 01
B18_0bd9:	.db $1c
B18_0bda:		ora ($1d, x)	; 01 1d
B18_0bdc:	.db $17
B18_0bdd:		php				; 08 
B18_0bde:	.db $22
B18_0bdf:		ora $01			; 05 01
B18_0be1:	.db $03
B18_0be2:		ora ($1e, x)	; 01 1e
B18_0be4:		bit $1f			; 24 1f
B18_0be6:	.db $17
B18_0be7:		php				; 08 
B18_0be8:	.db $22
B18_0be9:		ora $01			; 05 01
B18_0beb:	.db $03
B18_0bec:		ora ($0b, x)	; 01 0b
B18_0bee:	.db $0f
B18_0bef:		ora $01			; 05 01
B18_0bf1:	.db $0c
B18_0bf2:		ora ($0d, x)	; 01 0d
B18_0bf4:	.db $0f
B18_0bf5:		ora $01			; 05 01
B18_0bf7:	.db $0c
B18_0bf8:		ora ($0d, x)	; 01 0d
B18_0bfa:		asl $0105		; 0e 05 01
B18_0bfd:		jsr $0d25		; 20 25 0d
B18_0c00:		asl $0105		; 0e 05 01
B18_0c03:	.db $04
B18_0c04:		ora ($08, x)	; 01 08
B18_0c06:		ror $0105		; 6e 05 01
B18_0c09:	.db $03
B18_0c0a:		ora ($1d, x)	; 01 1d
B18_0c0c:		rol $08			; 26 08
B18_0c0e:	.db $22
B18_0c0f:		ora $01			; 05 01
B18_0c11:	.db $03
B18_0c12:		ora ($1e, x)	; 01 1e
B18_0c14:		bit $1d			; 24 1d
B18_0c16:		rol $08			; 26 08
B18_0c18:	.db $22
B18_0c19:		ora $01			; 05 01
B18_0c1b:	.db $03
B18_0c1c:		ora ($04, x)	; 01 04
B18_0c1e:		ora ($0b, x)	; 01 0b
B18_0c20:	.db $17
B18_0c21:		ora $01			; 05 01
B18_0c23:	.db $0c
B18_0c24:		ora ($0d, x)	; 01 0d
B18_0c26:	.db $17
B18_0c27:		ora $01			; 05 01
B18_0c29:	.db $0c
B18_0c2a:		ora ($0d, x)	; 01 0d
B18_0c2c:	.db $27
B18_0c2d:		ora $01			; 05 01
B18_0c2f:	.db $0c
B18_0c30:		ora ($04, x)	; 01 04
B18_0c32:		ora ($0e, x)	; 01 0e
B18_0c34:		ora ($18, x)	; 01 18
B18_0c36:		asl a			; 0a
B18_0c37:		ora $28, x		; 15 28
B18_0c39:		and ($01, x)	; 21 01
B18_0c3b:	.db $0b
B18_0c3c:	.db $0f
B18_0c3d:		ora $01			; 05 01
B18_0c3f:	.db $0c
B18_0c40:		ora ($0d, x)	; 01 0d
B18_0c42:	.db $0f
B18_0c43:		ora $01			; 05 01
B18_0c45:	.db $0c
B18_0c46:		ora ($0d, x)	; 01 0d
B18_0c48:	.db $0f
B18_0c49:		ora $01			; 05 01
B18_0c4b:		ora $28, x		; 15 28
B18_0c4d:	.db $1a
B18_0c4e:		and #$23		; 29 23
B18_0c50:		rol a			; 2a
B18_0c51:		ora $01			; 05 01
B18_0c53:	.db $03
B18_0c54:		ora ($24, x)	; 01 24
B18_0c56:		rol a			; 2a
B18_0c57:		ora $01			; 05 01
B18_0c59:	.db $1c
B18_0c5a:		ora ($19, x)	; 01 19
B18_0c5c:		and #$23		; 29 23
B18_0c5e:	.db $22
B18_0c5f:		ora $01			; 05 01
B18_0c61:	.db $03
B18_0c62:		ora ($23, x)	; 01 23
B18_0c64:	.db $22
B18_0c65:		ora $01			; 05 01
B18_0c67:	.db $1c
B18_0c68:		ora ($0b, x)	; 01 0b
B18_0c6a:	.db $2b
B18_0c6b:		ora $01			; 05 01
B18_0c6d:	.db $0c
B18_0c6e:		ora ($0d, x)	; 01 0d
B18_0c70:	.db $2b
B18_0c71:		ora $01			; 05 01
B18_0c73:	.db $0c
B18_0c74:		ora ($0d, x)	; 01 0d
B18_0c76:	.db $2b
B18_0c77:		ora $01			; 05 01
B18_0c79:	.db $0c
B18_0c7a:		ora ($0d, x)	; 01 0d
B18_0c7c:	.db $2b
B18_0c7d:		ora $01			; 05 01
B18_0c7f:	.db $0c
B18_0c80:		ora ($0d, x)	; 01 0d
B18_0c82:	.db $2b
B18_0c83:		ora $01			; 05 01
B18_0c85:	.db $0c
B18_0c86:		ora ($04, x)	; 01 04
B18_0c88:		ora ($0b, x)	; 01 0b
B18_0c8a:		bit $0125		; 2c 25 01
B18_0c8d:		ora $01			; 05 01
B18_0c8f:	.db $0c
B18_0c90:		ora ($0d, x)	; 01 0d
B18_0c92:	.db $0f
B18_0c93:		ora $01			; 05 01
B18_0c95:	.db $04
B18_0c96:		ora ($0b, x)	; 01 0b
B18_0c98:	.db $0f
B18_0c99:		ora $01			; 05 01
B18_0c9b:	.db $0c
B18_0c9c:		ora ($0d, x)	; 01 0d
B18_0c9e:	.db $0f
B18_0c9f:		ora $01			; 05 01
B18_0ca1:	.db $0c
B18_0ca2:		ora ($3a, x)	; 01 3a
B18_0ca4:		and $0f0d		; 2d 0d 0f
B18_0ca7:		ora $01			; 05 01
B18_0ca9:		ora $2612		; 0d 12 26
B18_0cac:		ora ($20, x)	; 01 20
B18_0cae:		rol $120d		; 2e 0d 12
B18_0cb1:		rol $01			; 26 01
B18_0cb3:	.db $04
B18_0cb4:		ora ($0b, x)	; 01 0b
B18_0cb6:	.db $0b
B18_0cb7:		ora $01			; 05 01
B18_0cb9:	.db $0c
B18_0cba:		ora ($3a, x)	; 01 3a
B18_0cbc:		and $2b0d		; 2d 0d 2b
B18_0cbf:		ora $01			; 05 01
B18_0cc1:		ora $2612		; 0d 12 26
B18_0cc4:		ora $2f20		; 0d 20 2f
B18_0cc7:		ora $2612		; 0d 12 26
B18_0cca:		ora $0104		; 0d 04 01
B18_0ccd:	.db $0b
B18_0cce:	.db $0b
B18_0ccf:		ora $01			; 05 01
B18_0cd1:	.db $0c
B18_0cd2:	.db $0f
B18_0cd3:		ora $050b		; 0d 0b 05
B18_0cd6:		ora ($0c, x)	; 01 0c
B18_0cd8:	.db $0f
B18_0cd9:		ora $050b		; 0d 0b 05
B18_0cdc:		ora ($0c, x)	; 01 0c
B18_0cde:	.db $0f
B18_0cdf:		ora $050b		; 0d 0b 05
B18_0ce2:		ora ($1c, x)	; 01 1c
B18_0ce4:		ora ($0b, x)	; 01 0b
B18_0ce6:	.db $0b
B18_0ce7:		ora $01			; 05 01
B18_0ce9:	.db $04
B18_0cea:		ora ($2a, x)	; 01 2a
B18_0cec:		ora $0d2a		; 0d 2a 0d
B18_0cef:		rol a			; 2a
B18_0cf0:		ora $300e		; 0d 0e 30
B18_0cf3:		clc				; 18 
B18_0cf4:		asl a			; 0a
B18_0cf5:		plp				; 28 
B18_0cf6:		and ($0b), y	; 31 0b
B18_0cf8:	.db $0f
B18_0cf9:		ora $01			; 05 01
B18_0cfb:	.db $0c
B18_0cfc:		ora ($0d, x)	; 01 0d
B18_0cfe:	.db $0f
B18_0cff:		ora $01			; 05 01
B18_0d01:		and #$01		; 29 01
B18_0d03:	.db $27
B18_0d04:		ora ($05, x)	; 01 05
B18_0d06:		ora ($2b, x)	; 01 2b
B18_0d08:		ora ($0e, x)	; 01 0e
B18_0d0a:	.db $32
B18_0d0b:		clc				; 18 
B18_0d0c:		asl a			; 0a
B18_0d0d:		plp				; 28 
B18_0d0e:		and ($0b), y	; 31 0b
B18_0d10:	.db $0f
B18_0d11:		ora $01			; 05 01
B18_0d13:	.db $0c
B18_0d14:		ora ($0d, x)	; 01 0d
B18_0d16:	.db $0f
B18_0d17:		ora $01			; 05 01
B18_0d19:		and #$01		; 29 01
B18_0d1b:	.db $0b
B18_0d1c:		ora $0105, y	; 19 05 01
B18_0d1f:	.db $04
B18_0d20:		ora ($0b, x)	; 01 0b
B18_0d22:	.db $14
B18_0d23:		ora $01			; 05 01
B18_0d25:		jsr $0d33		; 20 33 0d
B18_0d28:	.db $14
B18_0d29:		ora $01			; 05 01
B18_0d2b:	.db $0c
B18_0d2c:		ora ($2e, x)	; 01 2e
B18_0d2e:	.db $0f
B18_0d2f:		.db $00				; 00
B18_0d30:	.db $34
B18_0d31:		bit $0501		; 2c 01 05
B18_0d34:		ora ($29, x)	; 01 29
B18_0d36:		ora ($0b, x)	; 01 0b
B18_0d38:	.db $14
B18_0d39:		ora $01			; 05 01
B18_0d3b:		jsr $0d35		; 20 35 0d
B18_0d3e:	.db $14
B18_0d3f:		ora $01			; 05 01
B18_0d41:	.db $0c
B18_0d42:		ora ($2e, x)	; 01 2e
B18_0d44:	.db $0f
B18_0d45:		.db $00				; 00
B18_0d46:	.db $34
B18_0d47:		bit $0501		; 2c 01 05
B18_0d4a:		ora ($29, x)	; 01 29
B18_0d4c:		ora ($48, x)	; 01 48
B18_0d4e:		rol $05, x		; 36 05
B18_0d50:		ora ($48, x)	; 01 48
B18_0d52:	.db $37
B18_0d53:		ora $01			; 05 01
B18_0d55:		pha				; 48 
B18_0d56:		sec				; 38 
B18_0d57:		ora $01			; 05 01
B18_0d59:	.db $0b
B18_0d5a:		and $0105, y	; 39 05 01
B18_0d5d:	.db $2f
B18_0d5e:		ora ($05, x)	; 01 05
B18_0d60:		ora ($30, x)	; 01 30
B18_0d62:		ora ($0d, x)	; 01 0d
B18_0d64:	.db $0b
B18_0d65:		ora $01			; 05 01
B18_0d67:		and ($01), y	; 31 01
B18_0d69:		and $0536		; 2d 36 05
B18_0d6c:		ora ($2d, x)	; 01 2d
B18_0d6e:	.db $37
B18_0d6f:		ora $01			; 05 01
B18_0d71:		and $0538		; 2d 38 05
B18_0d74:		ora ($0b, x)	; 01 0b
B18_0d76:		and $0105, y	; 39 05 01
B18_0d79:	.db $2f
B18_0d7a:		ora ($05, x)	; 01 05
B18_0d7c:		ora ($30, x)	; 01 30
B18_0d7e:		ora ($0d, x)	; 01 0d
B18_0d80:	.db $0b
B18_0d81:		ora $01			; 05 01
B18_0d83:		and ($01), y	; 31 01
B18_0d85:	.db $0b
B18_0d86:	.db $0f
B18_0d87:		ora $01			; 05 01
B18_0d89:	.db $0c
B18_0d8a:		ora ($0d, x)	; 01 0d
B18_0d8c:	.db $0f
B18_0d8d:		ora $01			; 05 01
B18_0d8f:	.db $0c
B18_0d90:		ora ($0d, x)	; 01 0d
B18_0d92:	.db $12
B18_0d93:		ora $01			; 05 01
B18_0d95:	.db $0b
B18_0d96:	.db $14
B18_0d97:		ora $01			; 05 01
B18_0d99:		jsr $0d33		; 20 33 0d
B18_0d9c:	.db $0b
B18_0d9d:		ora $01			; 05 01
B18_0d9f:		and #$01		; 29 01
B18_0da1:	.db $0b
B18_0da2:	.db $0f
B18_0da3:		ora $01			; 05 01
B18_0da5:		plp				; 28 
B18_0da6:	.db $3a
B18_0da7:		ora $0514		; 0d 14 05
B18_0daa:		ora ($29, x)	; 01 29
B18_0dac:		ora ($32, x)	; 01 32
B18_0dae:		ora ($22, x)	; 01 22
B18_0db0:	.db $3b
B18_0db1:		ora $01			; 05 01
B18_0db3:		and #$01		; 29 01
B18_0db5:		asl $1832		; 0e 32 18
B18_0db8:		asl a			; 0a
B18_0db9:		and #$01		; 29 01
B18_0dbb:		asl $1832		; 0e 32 18
B18_0dbe:		asl a			; 0a
B18_0dbf:		ora $3c, x		; 15 3c
B18_0dc1:		asl $1832		; 0e 32 18
B18_0dc4:		asl a			; 0a
B18_0dc5:		ora $3c, x		; 15 3c
B18_0dc7:	.db $33
B18_0dc8:		and $3e28, x	; 3d 28 3e
B18_0dcb:	.db $0b
B18_0dcc:	.db $2b
B18_0dcd:		ora $01			; 05 01
B18_0dcf:	.db $0c
B18_0dd0:		ora ($0d, x)	; 01 0d
B18_0dd2:	.db $2b
B18_0dd3:		ora $01			; 05 01
B18_0dd5:	.db $0c
B18_0dd6:		ora ($0d, x)	; 01 0d
B18_0dd8:	.db $2b
B18_0dd9:		ora $01			; 05 01
B18_0ddb:	.db $0c
B18_0ddc:		ora ($0d, x)	; 01 0d
B18_0dde:	.db $2b
B18_0ddf:		ora $01			; 05 01
B18_0de1:	.db $0c
B18_0de2:		ora ($0d, x)	; 01 0d
B18_0de4:	.db $2b
B18_0de5:		ora $01			; 05 01
B18_0de7:	.db $0c
B18_0de8:		ora ($21, x)	; 01 21
B18_0dea:		ora ($0b, x)	; 01 0b
B18_0dec:	.db $12
B18_0ded:		ora $01			; 05 01
B18_0def:	.db $0c
B18_0df0:		ora ($0d, x)	; 01 0d
B18_0df2:		.db $00				; 00
B18_0df3:		ora $01			; 05 01
B18_0df5:	.db $0c
B18_0df6:		ora ($0d, x)	; 01 0d
B18_0df8:		.db $00				; 00
B18_0df9:		ora $01			; 05 01
B18_0dfb:	.db $0c
B18_0dfc:		ora ($0d, x)	; 01 0d
B18_0dfe:		.db $00				; 00
B18_0dff:		ora $01			; 05 01
B18_0e01:	.db $0c
B18_0e02:	.db $3f
B18_0e03:		ora $0517		; 0d 17 05
B18_0e06:		ora ($21, x)	; 01 21
B18_0e08:		ora ($0b, x)	; 01 0b
B18_0e0a:	.db $14
B18_0e0b:		ora $01			; 05 01
B18_0e0d:	.db $04
B18_0e0e:		ora ($0b, x)	; 01 0b
B18_0e10:	.db $0b
B18_0e11:		ora $01			; 05 01
B18_0e13:	.db $0c
B18_0e14:		ora ($0d, x)	; 01 0d
B18_0e16:	.db $0f
B18_0e17:		ora $01			; 05 01
B18_0e19:	.db $0c
B18_0e1a:		ora ($0d, x)	; 01 0d
B18_0e1c:	.db $0b
B18_0e1d:		ora $01			; 05 01
B18_0e1f:	.db $04
B18_0e20:		ora ($0b, x)	; 01 0b
B18_0e22:	.db $12
B18_0e23:		ora $01			; 05 01
B18_0e25:		.db $00				; 00
B18_0e26:		rti				; 40 


B18_0e27:		ora $01			; 05 01
B18_0e29:	.db $04
B18_0e2a:		ora ($00, x)	; 01 00
B18_0e2c:		eor ($05, x)	; 41 05
B18_0e2e:		ora ($38, x)	; 01 38
B18_0e30:		ora ($03, x)	; 01 03
B18_0e32:		ora ($05, x)	; 01 05
B18_0e34:		ora ($22, x)	; 01 22
B18_0e36:	.db $72
B18_0e37:		ora $050b		; 0d 0b 05
B18_0e3a:		ora ($0c, x)	; 01 0c
B18_0e3c:		ora ($0d, x)	; 01 0d
B18_0e3e:	.db $0b
B18_0e3f:		ora $01			; 05 01
B18_0e41:	.db $0c
B18_0e42:		ora ($0d, x)	; 01 0d
B18_0e44:	.db $0f
B18_0e45:		ora $01			; 05 01
B18_0e47:		and ($01, x)	; 21 01
B18_0e49:	.db $0b
B18_0e4a:	.db $42
B18_0e4b:		ora $01			; 05 01
B18_0e4d:	.db $3a
B18_0e4e:	.db $43
B18_0e4f:	.db $22
B18_0e50:	.db $6f
B18_0e51:		and ($01, x)	; 21 01
B18_0e53:	.db $22
B18_0e54:	.db $23
B18_0e55:		eor #$0b		; 49 0b
B18_0e57:		.db $00				; 00
B18_0e58:	.db $44
B18_0e59:		ora $01			; 05 01
B18_0e5b:	.db $04
B18_0e5c:		ora ($00, x)	; 01 00
B18_0e5e:		eor $05			; 45 05
B18_0e60:		ora ($04, x)	; 01 04
B18_0e62:		ora ($35, x)	; 01 35
B18_0e64:		ora ($34, x)	; 01 34
B18_0e66:		asl $0b0d		; 0e 0d 0b
B18_0e69:		ora $01			; 05 01
B18_0e6b:	.db $0c
B18_0e6c:		ora ($0d, x)	; 01 0d
B18_0e6e:	.db $0f
B18_0e6f:		ora $01			; 05 01
B18_0e71:		rol $01, x		; 36 01
B18_0e73:		plp				; 28 
B18_0e74:		lsr $15			; 46 15
B18_0e76:	.db $14
B18_0e77:		and $01, x		; 35 01
B18_0e79:		ora $0512		; 0d 12 05
B18_0e7c:		ora ($34, x)	; 01 34
B18_0e7e:	.db $47
B18_0e7f:		ora $050f		; 0d 0f 05
B18_0e82:		ora ($36, x)	; 01 36
B18_0e84:		ora ($28, x)	; 01 28
B18_0e86:		pha				; 48 
B18_0e87:		ora $20, x		; 15 20
B18_0e89:		asl $0249		; 0e 49 02
B18_0e8c:		asl a			; 0a
B18_0e8d:	.db $04
B18_0e8e:		ora ($0b, x)	; 01 0b
B18_0e90:	.db $14
B18_0e91:		ora $01			; 05 01
B18_0e93:	.db $0c
B18_0e94:		ora ($0d, x)	; 01 0d
B18_0e96:	.db $0f
B18_0e97:		ora $01			; 05 01
B18_0e99:	.db $0c
B18_0e9a:		ora ($0d, x)	; 01 0d
B18_0e9c:	.db $0f
B18_0e9d:		ora $01			; 05 01
B18_0e9f:		and ($01, x)	; 21 01
B18_0ea1:		ora $01			; 05 01
B18_0ea3:		and $0801, y	; 39 01 08
B18_0ea6:		lsr a			; 4a
B18_0ea7:		ora $01			; 05 01
B18_0ea9:		and ($01, x)	; 21 01
B18_0eab:		ora $050c		; 0d 0c 05
B18_0eae:		ora ($21, x)	; 01 21
B18_0eb0:		ora ($22, x)	; 01 22
B18_0eb2:		rol a			; 2a
B18_0eb3:		ora $01			; 05 01
B18_0eb5:		and ($01, x)	; 21 01
B18_0eb7:	.db $0b
B18_0eb8:	.db $12
B18_0eb9:		ora $01			; 05 01
B18_0ebb:		and ($01, x)	; 21 01
B18_0ebd:	.db $43
B18_0ebe:	.db $4b
B18_0ebf:	.db $23
B18_0ec0:	.db $22
B18_0ec1:		ora $01			; 05 01
B18_0ec3:	.db $03
B18_0ec4:		ora ($23, x)	; 01 23
B18_0ec6:		lsr a			; 4a
B18_0ec7:		ora $01			; 05 01
B18_0ec9:	.db $43
B18_0eca:		jmp $2223		; 4c 23 22


B18_0ecd:		ora $01			; 05 01
B18_0ecf:	.db $47
B18_0ed0:		eor $2223		; 4d 23 22
B18_0ed3:		ora $01			; 05 01
B18_0ed5:	.db $47
B18_0ed6:		lsr $0f0b		; 4e 0b 0f
B18_0ed9:		ora $01			; 05 01
B18_0edb:	.db $0c
B18_0edc:		ora ($0d, x)	; 01 0d
B18_0ede:	.db $0f
B18_0edf:		ora $01			; 05 01
B18_0ee1:	.db $0c
B18_0ee2:		ora ($0d, x)	; 01 0d
B18_0ee4:	.db $0f
B18_0ee5:		ora $01			; 05 01
B18_0ee7:	.db $0c
B18_0ee8:		ora ($0d, x)	; 01 0d
B18_0eea:	.db $0f
B18_0eeb:		ora $01			; 05 01
B18_0eed:	.db $0c
B18_0eee:		ora ($0d, x)	; 01 0d
B18_0ef0:	.db $0f
B18_0ef1:		ora $01			; 05 01
B18_0ef3:	.db $04
B18_0ef4:		ora ($0b, x)	; 01 0b
B18_0ef6:	.db $12
B18_0ef7:		ora $01			; 05 01
B18_0ef9:	.db $04
B18_0efa:		ora ($0b, x)	; 01 0b
B18_0efc:	.db $0f
B18_0efd:		ora $01			; 05 01
B18_0eff:	.db $0c
B18_0f00:		ora ($0d, x)	; 01 0d
B18_0f02:	.db $0f
B18_0f03:		ora $01			; 05 01
B18_0f05:	.db $0c
B18_0f06:		ora ($01, x)	; 01 01
B18_0f08:	.db $4f
B18_0f09:	.db $44
B18_0f0a:	.db $4f
B18_0f0b:		plp				; 28 
B18_0f0c:		bvc B18_0f1b ; 50 0d

B18_0f0e:		ora $05, x		; 15 05
B18_0f10:		ora ($0c, x)	; 01 0c
B18_0f12:		ora ($0d, x)	; 01 0d
B18_0f14:		ora $05, x		; 15 05
B18_0f16:		ora ($28, x)	; 01 28
B18_0f18:		eor ($0e), y	; 51 0e
B18_0f1a:	.db $27
B18_0f1b:		clc				; 18 
B18_0f1c:	.db $4f
B18_0f1d:	.db $0c
B18_0f1e:		ora ($0d, x)	; 01 0d
B18_0f20:	.db $12
B18_0f21:		rol $01			; 26 01
B18_0f23:	.db $0c
B18_0f24:		ora ($04, x)	; 01 04
B18_0f26:		ora ($0b, x)	; 01 0b
B18_0f28:	.db $0f
B18_0f29:		ora $01			; 05 01
B18_0f2b:	.db $0c
B18_0f2c:		ora ($0d, x)	; 01 0d
B18_0f2e:	.db $0f
B18_0f2f:		ora $01			; 05 01
B18_0f31:	.db $0c
B18_0f32:		ora ($01, x)	; 01 01
B18_0f34:	.db $4f
B18_0f35:	.db $44
B18_0f36:	.db $4f
B18_0f37:		plp				; 28 
B18_0f38:	.db $52
B18_0f39:		.db $00				; 00
B18_0f3a:	.db $53
B18_0f3b:		ora $0519		; 0d 19 05
B18_0f3e:		ora ($28, x)	; 01 28
B18_0f40:		eor ($0e), y	; 51 0e
B18_0f42:	.db $27
B18_0f43:		clc				; 18 
B18_0f44:	.db $4f
B18_0f45:	.db $0c
B18_0f46:		ora ($0d, x)	; 01 0d
B18_0f48:	.db $12
B18_0f49:		rol $01			; 26 01
B18_0f4b:	.db $0c
B18_0f4c:		ora ($04, x)	; 01 04
B18_0f4e:		ora ($08, x)	; 01 08
B18_0f50:		;removed
	.db $70 $21

B18_0f52:		ora ($07, x)	; 01 07
B18_0f54:	.db $54
B18_0f55:	.db $03
B18_0f56:		ora ($46, x)	; 01 46
B18_0f58:		eor $0b, x		; 55 0b
B18_0f5a:		adc $05, x		; 75 05
B18_0f5c:		ora ($46, x)	; 01 46
B18_0f5e:	.db $5c
B18_0f5f:		ora $0575		; 0d 75 05
B18_0f62:		ora ($46, x)	; 01 46
B18_0f64:	.db $5c
B18_0f65:		and ($01, x)	; 21 01
B18_0f67:		lsr $57			; 46 57
B18_0f69:	.db $0b
B18_0f6a:		ora $05, x		; 15 05
B18_0f6c:		ora ($46, x)	; 01 46
B18_0f6e:		cli				; 58 
B18_0f6f:		ora $0515		; 0d 15 05
B18_0f72:		ora ($46, x)	; 01 46
B18_0f74:		cli				; 58 
B18_0f75:		ora $0512		; 0d 12 05
B18_0f78:		ora ($46, x)	; 01 46
B18_0f7a:		eor $150d, y	; 59 0d 15
B18_0f7d:		ora $01			; 05 01
B18_0f7f:		lsr $59			; 46 59
B18_0f81:		and ($01, x)	; 21 01
B18_0f83:		lsr $5a			; 46 5a
B18_0f85:	.db $0b
B18_0f86:	.db $73
B18_0f87:		ora $01			; 05 01
B18_0f89:		lsr $56			; 46 56
B18_0f8b:	.db $33
B18_0f8c:	.db $5b
B18_0f8d:	.db $3a
B18_0f8e:		pla				; 68 
B18_0f8f:		ora $0574		; 0d 74 05
B18_0f92:		ora ($46, x)	; 01 46
B18_0f94:		lsr $0d, x		; 56 0d
B18_0f96:	.db $74
B18_0f97:		ora $01			; 05 01
B18_0f99:		lsr $5c			; 46 5c
B18_0f9b:		ora $0574		; 0d 74 05
B18_0f9e:		ora ($33, x)	; 01 33
B18_0fa0:	.db $6b
B18_0fa1:		lsr $56			; 46 56
B18_0fa3:		ora $0574		; 0d 74 05
B18_0fa6:		ora ($3c, x)	; 01 3c
B18_0fa8:	.db $0b
B18_0fa9:		lsr $5d			; 46 5d
B18_0fab:		ora $0574		; 0d 74 05
B18_0fae:		ora ($46, x)	; 01 46
B18_0fb0:		lsr $740d, x	; 5e 0d 74
B18_0fb3:		ora $01			; 05 01
B18_0fb5:		and $464e, x	; 3d 4e 46
B18_0fb8:	.db $5f
B18_0fb9:		ora $0517		; 0d 17 05
B18_0fbc:		ora ($46, x)	; 01 46
B18_0fbe:		rts				; 60 


B18_0fbf:	.db $33
B18_0fc0:		jmp ($170d)		; 6c 0d 17


B18_0fc3:		ora $01			; 05 01
B18_0fc5:		lsr $5f			; 46 5f
B18_0fc7:		ora $0517		; 0d 17 05
B18_0fca:		ora ($46, x)	; 01 46
B18_0fcc:		rts				; 60 


B18_0fcd:		ora $0517		; 0d 17 05
B18_0fd0:		ora ($29, x)	; 01 29
B18_0fd2:		ora ($46, x)	; 01 46
B18_0fd4:	.db $5a
B18_0fd5:		ora $0573		; 0d 73 05
B18_0fd8:		ora ($46, x)	; 01 46
B18_0fda:		adc ($33, x)	; 61 33
B18_0fdc:	.db $5b
B18_0fdd:		ora $0574		; 0d 74 05
B18_0fe0:		ora ($46, x)	; 01 46
B18_0fe2:		lsr $0d, x		; 56 0d
B18_0fe4:	.db $74
B18_0fe5:		ora $01			; 05 01
B18_0fe7:		lsr $56			; 46 56
B18_0fe9:		ora $0574		; 0d 74 05
B18_0fec:		ora ($3c, x)	; 01 3c
B18_0fee:	.db $0b
B18_0fef:		lsr $62			; 46 62
B18_0ff1:		ora $0517		; 0d 17 05
B18_0ff4:		ora ($46, x)	; 01 46
B18_0ff6:	.db $63
B18_0ff7:		ora $0517		; 0d 17 05
B18_0ffa:		ora ($3d, x)	; 01 3d
B18_0ffc:		lsr $170d		; 4e 0d 17
B18_0fff:		ora $01			; 05 01
B18_1001:		lsr $60			; 46 60
B18_1003:		ora $0517		; 0d 17 05
B18_1006:		ora ($46, x)	; 01 46
B18_1008:		rts				; 60 


B18_1009:		ora $0517		; 0d 17 05
B18_100c:		ora ($46, x)	; 01 46
B18_100e:		rts				; 60 


B18_100f:		and #$01		; 29 01
B18_1011:		clc				; 18 
B18_1012:		asl a			; 0a
B18_1013:		and #$01		; 29 01
B18_1015:	.db $0b
B18_1016:	.db $0f
B18_1017:		ora $01			; 05 01
B18_1019:	.db $0c
B18_101a:	.db $02
B18_101b:		ora $050f		; 0d 0f 05
B18_101e:		ora ($0c, x)	; 01 0c
B18_1020:	.db $02
B18_1021:		ora $050f		; 0d 0f 05
B18_1024:		ora ($0c, x)	; 01 0c
B18_1026:	.db $02
B18_1027:		ora $050f		; 0d 0f 05
B18_102a:		ora ($1c, x)	; 01 1c
B18_102c:		ora ($00, x)	; 01 00
B18_102e:	.db $1a
B18_102f:	.db $07
B18_1030:		adc ($0b), y	; 71 0b
B18_1032:	.db $17
B18_1033:		ora $01			; 05 01
B18_1035:	.db $0c
B18_1036:		ora ($0d, x)	; 01 0d
B18_1038:	.db $17
B18_1039:		ora $01			; 05 01
B18_103b:	.db $0c
B18_103c:		ora ($0d, x)	; 01 0d
B18_103e:	.db $17
B18_103f:		ora $01			; 05 01
B18_1041:	.db $0c
B18_1042:		ora ($0d, x)	; 01 0d
B18_1044:	.db $17
B18_1045:		ora $01			; 05 01
B18_1047:		and ($01, x)	; 21 01
B18_1049:	.db $22
B18_104a:	.db $22
B18_104b:		and ($01, x)	; 21 01
B18_104d:		clc				; 18 
B18_104e:		asl a			; 0a
B18_104f:	.db $0b
B18_1050:	.db $0f
B18_1051:		ora $01			; 05 01
B18_1053:		plp				; 28 
B18_1054:		ror a			; 6a
B18_1055:		ora $0514		; 0d 14 05
B18_1058:		ora ($21, x)	; 01 21
B18_105a:		ora ($22, x)	; 01 22
B18_105c:	.db $64
B18_105d:		and ($01, x)	; 21 01
B18_105f:		lsr $65			; 46 65
B18_1061:	.db $0b
B18_1062:	.db $0f
B18_1063:		ora $00			; 05 00
B18_1065:		lsr $56			; 46 56
B18_1067:		asl $1832		; 0e 32 18
B18_106a:		asl a			; 0a
B18_106b:	.db $0b
B18_106c:	.db $0f
B18_106d:		lsr $56			; 46 56
B18_106f:		ora $00			; 05 00
B18_1071:		lsr $56			; 46 56
B18_1073:	.db $0b
B18_1074:	.db $0f
B18_1075:		ora $00			; 05 00
B18_1077:		lsr $56			; 46 56
B18_1079:		and #$01		; 29 01
B18_107b:		and $0b01, y	; 39 01 0b
B18_107e:	.db $0f
B18_107f:		ora $00			; 05 00
B18_1081:		lsr $58			; 46 58
B18_1083:	.db $0b
B18_1084:	.db $0f
B18_1085:		ora $00			; 05 00
B18_1087:		lsr $59			; 46 59
B18_1089:	.db $0b
B18_108a:	.db $0f
B18_108b:		ora $00			; 05 00
B18_108d:		lsr $58			; 46 58
B18_108f:		jsr $3e66		; 20 66 3e
B18_1092:		ora ($1c, x)	; 01 1c
B18_1094:		ora ($0e, x)	; 01 0e
B18_1096:		ora ($02, x)	; 01 02
B18_1098:		asl a			; 0a
B18_1099:		plp				; 28 
B18_109a:	.db $67
B18_109b:	.db $0b
B18_109c:	.db $0f
B18_109d:		ora $01			; 05 01
B18_109f:	.db $04
B18_10a0:		ora ($0e, x)	; 01 0e
B18_10a2:		ora ($18, x)	; 01 18
B18_10a4:		asl a			; 0a
B18_10a5:	.db $04
B18_10a6:		ora ($0c, x)	; 01 0c
B18_10a8:		.db $00				; 00
B18_10a9:		.db $00				; 00
B18_10aa:		.db $00				; 00
B18_10ab:		.db $00				; 00
B18_10ac:		.db $00				; 00
B18_10ad:		asl $00			; 06 00
B18_10af:		.db $00				; 00
B18_10b0:		.db $00				; 00
B18_10b1:		.db $00				; 00
B18_10b2:		bmi B18_10b5 ; 30 01

B18_10b4:		.db $00				; 00
B18_10b5:		jsr $0404		; 20 04 04
B18_10b8:		.db $00				; 00
B18_10b9:		ora $20			; 05 20
B18_10bb:		.db $00				; 00
B18_10bc:	.db $04
B18_10bd:	.db $03
B18_10be:		.db $00				; 00
B18_10bf:		ora wPPUCtrl			; 05 ff
B18_10c1:		.db $00				; 00
B18_10c2:		ora ($38, x)	; 01 38
B18_10c4:		.db $00				; 00
B18_10c5:		.db $00				; 00
B18_10c6:		.db $00				; 00
B18_10c7:	.db $20 $10 $00
B18_10ca:		.db $00				; 00
B18_10cb:		clc				; 18 
B18_10cc:		.db $00				; 00
B18_10cd:		.db $00				; 00
B18_10ce:		ora ($00, x)	; 01 00
B18_10d0:		.db $00				; 00
B18_10d1:	.db $14
B18_10d2:		.db $00				; 00
B18_10d3:		.db $00				; 00
B18_10d4:		php				; 08 
B18_10d5:		.db $00				; 00
B18_10d6:		.db $00				; 00
B18_10d7:		.db $00				; 00
B18_10d8:	.db $80
B18_10d9:		php				; 08 
B18_10da:		.db $00				; 00
B18_10db:		cpy #$20		; c0 20
B18_10dd:	.db $3c
B18_10de:		.db $00				; 00
B18_10df:		.db $00				; 00
B18_10e0:		rol a			; 2a
B18_10e1:		.db $00				; 00
B18_10e2:		.db $00				; 00
B18_10e3:		rti				; 40 


B18_10e4:		.db $00				; 00
B18_10e5:		.db $00				; 00
B18_10e6:	.db $0c
B18_10e7:		.db $00				; 00
B18_10e8:		.db $00				; 00
B18_10e9:	.db $03
B18_10ea:		ora ($02, x)	; 01 02
B18_10ec:	.db $04
B18_10ed:		.db $00				; 00
B18_10ee:		.db $00				; 00
B18_10ef:	.db $f9 $00 $00
B18_10f2:		bmi B18_10f4 ; 30 00

B18_10f4:		.db $00				; 00
B18_10f5:		ora ($80, x)	; 01 80
B18_10f7:	.db $20 $fe $00
B18_10fa:		.db $00				; 00
B18_10fb:	.db $03
B18_10fc:		ora ($20, x)	; 01 20
B18_10fe:		.db $00				; 00
B18_10ff:	.db $14
B18_1100:		.db $00				; 00
B18_1101:		ora ($06, x)	; 01 06
B18_1103:		.db $00				; 00
B18_1104:	.db $02
B18_1105:	.db $02
B18_1106:	.db $20 $12 $00
B18_1109:		.db $00				; 00
B18_110a:	.db $03
B18_110b:		.db $00				; 00
B18_110c:		bpl B18_1115 ; 10 07

B18_110e:		php				; 08 
B18_110f:		.db $00				; 00
B18_1110:	.db $07
B18_1111:		jsr $1900		; 20 00 19
B18_1114:	.db $1b
B18_1115:		.db $00				; 00
B18_1116:	.db $17
B18_1117:	.db $03
B18_1118:		.db $00				; 00
B18_1119:	.db $04
B18_111a:		ora ($01, x)	; 01 01
B18_111c:	.db $03
B18_111d:		.db $00				; 00
B18_111e:		.db $00				; 00
B18_111f:	.db $22
B18_1120:		.db $00				; 00
B18_1121:		.db $00				; 00
B18_1122:	.db $04
B18_1123:		ora ($00, x)	; 01 00
B18_1125:	.db $04
B18_1126:		php				; 08 
B18_1127:		.db $00				; 00
B18_1128:		ora $00			; 05 00
B18_112a:		.db $00				; 00
B18_112b:		asl a			; 0a
B18_112c:		.db $00				; 00
B18_112d:		.db $00				; 00
B18_112e:	.db $39 $00 $00
B18_1131:		ora $0108, y	; 19 08 01
B18_1134:		ora $0104, y	; 19 04 01
B18_1137:		.db $00				; 00
B18_1138:		sbc $0eff, x	; fd ff 0e
B18_113b:		asl $00			; 06 00
B18_113d:		.db $00				; 00
B18_113e:		.db $00				; 00
B18_113f:	.db $03
B18_1140:	.db $1a
B18_1141:		php				; 08 
B18_1142:	.db $02
B18_1143:		ora ($00, x)	; 01 00
B18_1145:		rti				; 40 


B18_1146:		plp				; 28 
B18_1147:		php				; 08 
B18_1148:	.db $02
B18_1149:		.db $00				; 00
B18_114a:		php				; 08 
B18_114b:		.db $00				; 00
B18_114c:		ora ($08, x)	; 01 08
B18_114e:		.db $00				; 00
B18_114f:	.db $02
B18_1150:		php				; 08 
B18_1151:		.db $00				; 00
B18_1152:		tay				; a8 
B18_1153:		.db $00				; 00
B18_1154:		.db $00				; 00
B18_1155:	.db $0e $04 $00
B18_1158:	.db $04
B18_1159:		rts				; 60 


B18_115a:		.db $00				; 00
B18_115b:	.db $37
B18_115c:		.db $00				; 00
B18_115d:		.db $00				; 00
B18_115e:		.db $00				; 00
B18_115f:		beq B18_1161 ; f0 00

B18_1161:		asl a			; 0a
B18_1162:	.db $43
B18_1163:		.db $00				; 00
B18_1164:		sed				; f8 
B18_1165:		beq B18_1167 ; f0 00

B18_1167:		.db $00				; 00
B18_1168:		cpx #$50		; e0 50
B18_116a:		.db $00				; 00
B18_116b:		ldy #$10		; a0 10
B18_116d:		clc				; 18 
B18_116e:		.db $00				; 00
B18_116f:		.db $00				; 00
B18_1170:		asl $00			; 06 00
B18_1172:		.db $00				; 00
B18_1173:		.db $00				; 00
B18_1174:		ldy #$20		; a0 20
B18_1176:		.db $00				; 00
B18_1177:	.db $80
B18_1178:		bpl B18_1184 ; 10 0a

B18_117a:	.db $12
B18_117b:		.db $00				; 00
B18_117c:		ora $00, x		; 15 00
B18_117e:		.db $00				; 00
B18_117f:		asl a			; 0a
B18_1180:		ora $00, x		; 15 00
B18_1182:		.db $00				; 00
B18_1183:	.db $03
B18_1184:		.db $00				; 00
B18_1185:	.db $07
B18_1186:		rti				; 40 


B18_1187:		.db $00				; 00
B18_1188:	.db $04
B18_1189:		ora ($08, x)	; 01 08
B18_118b:	.db $04
B18_118c:		ora ($09, x)	; 01 09
B18_118e:	.db $fd $00 $00
B18_1191:	.db $fa
B18_1192:		.db $00				; 00
B18_1193:		.db $00				; 00
B18_1194:	.db $03
B18_1195:		.db $00				; 00
B18_1196:		bvs B18_11a8 ; 70 10

B18_1198:	.db $34
B18_1199:		.db $00				; 00
B18_119a:		bpl B18_11d2 ; 10 36

B18_119c:		.db $00				; 00
B18_119d:		bpl B18_11cf ; 10 30

B18_119f:		.db $00				; 00
B18_11a0:		.db $00				; 00
B18_11a1:	.db $80
B18_11a2:		.db $00				; 00
B18_11a3:		php				; 08 
B18_11a4:		ora $00			; 05 00
B18_11a6:		bpl B18_1134 ; 10 8c

B18_11a8:		ora ($ff, x)	; 01 ff
B18_11aa:		.db $00				; 00
B18_11ab:		.db $00				; 00
B18_11ac:		bpl B18_113e ; 10 90

B18_11ae:	.db $ff
B18_11af:	.db $ff
B18_11b0:		.db $00				; 00
B18_11b1:	.db $ff
B18_11b2:		inc $ff00, x	; fe 00 ff
B18_11b5:		;removed
	.db $10 $96

B18_11b7:		.db $00				; 00
B18_11b8:		.db $00				; 00
B18_11b9:		sed				; f8 
B18_11ba:		.db $00				; 00
B18_11bb:	.db $ff
B18_11bc:		.db $00				; 00
B18_11bd:		ora ($10, x)	; 01 10
B18_11bf:		ldy #$01		; a0 01
B18_11c1:		bpl B18_1163 ; 10 a0

B18_11c3:		.db $00				; 00
B18_11c4:		inc $0100, x	; fe 00 01
B18_11c7:	.db $fe $00 $00
B18_11ca:		bpl B18_116e ; 10 a2

B18_11cc:		.db $00				; 00
B18_11cd:		bpl B18_1177 ; 10 a8

B18_11cf:		.db $00				; 00
B18_11d0:		bpl B18_117a ; 10 a8

B18_11d2:		ora ($08, x)	; 01 08
B18_11d4:		php				; 08 
B18_11d5:		.db $00				; 00
B18_11d6:		bpl B18_11ae ; 10 d6

B18_11d8:		.db $00				; 00
B18_11d9:		bit $0401		; 2c 01 04
B18_11dc:		;removed
	.db $10 $4c

B18_11de:		.db $00				; 00
B18_11df:	.db $42
B18_11e0:		.db $00				; 00
B18_11e1:		.db $00				; 00
B18_11e2:	.db $44
B18_11e3:		.db $00				; 00
B18_11e4:		.db $00				; 00
B18_11e5:	.db $0e $08 $00
B18_11e8:		.db $00				; 00
B18_11e9:		bne B18_11eb ; d0 00

B18_11eb:		.db $00				; 00
B18_11ec:		bmi B18_11ee ; 30 00

B18_11ee:		beq B18_11f0 ; f0 00

B18_11f0:		.db $00				; 00
B18_11f1:		php				; 08 
B18_11f2:		jsr $0a00		; 20 00 0a
B18_11f5:		jsr $0900		; 20 00 09
B18_11f8:		php				; 08 
B18_11f9:		.db $00				; 00
B18_11fa:	.db $04
B18_11fb:	.db $04
B18_11fc:		.db $00				; 00
B18_11fd:		ora #$20		; 09 20
B18_11ff:		.db $00				; 00
B18_1200:		bpl B18_1202 ; 10 00

B18_1202:		.db $00				; 00
B18_1203:	.db $02
B18_1204:		.db $00				; 00
B18_1205:		.db $00				; 00
B18_1206:	.db $0c
B18_1207:		.db $00				; 00
B18_1208:		.db $00				; 00
B18_1209:	.db $14
B18_120a:		.db $00				; 00
B18_120b:		.db $00				; 00
B18_120c:		lda $07ec		; ad ec 07
B18_120f:		bne B18_1214 ; d0 03

B18_1211:		jsr $92ff		; 20 ff 92
B18_1214:		txa				; 8a 
B18_1215:		cmp $07ec		; cd ec 07
B18_1218:		beq B18_121c ; f0 02

B18_121a:		bcs B18_124a ; b0 2e

B18_121c:		sta $07ec		; 8d ec 07
B18_121f:		ldy #$00		; a0 00
B18_1221:		sty $07ed		; 8c ed 07
B18_1224:		iny				; c8 
B18_1225:		sty $07f1		; 8c f1 07
B18_1228:		ldy $07ec		; ac ec 07
B18_122b:		lda $054e, y	; b9 4e 05
B18_122e:		beq B18_1244 ; f0 14

B18_1230:		lda wEntityAI_idx.w, y	; b9 ef 05
B18_1233:		and #$7f		; 29 7f
B18_1235:		cmp #$1f		; c9 1f
B18_1237:		beq B18_1241 ; f0 08

B18_1239:		cmp #$1e		; c9 1e
B18_123b:		beq B18_1241 ; f0 04

B18_123d:		cmp #$1a		; c9 1a
B18_123f:		bne B18_1244 ; d0 03

B18_1241:		inc $07ed		; ee ed 07
B18_1244:		iny				; c8 
B18_1245:		cpy #$0d		; c0 0d
B18_1247:		bne B18_122b ; d0 e2

B18_1249:		txa				; 8a 
B18_124a:		sec				; 38 
B18_124b:		sbc #$01		; e9 01
B18_124d:		asl a			; 0a
B18_124e:		sta $04			; 85 04
B18_1250:		ldy #$02		; a0 02
B18_1252:		lda ($02), y	; b1 02
B18_1254:		asl a			; 0a
B18_1255:		tay				; a8 
B18_1256:		lda $9318, y	; b9 18 93
B18_1259:		sta $00			; 85 00
B18_125b:		lda $9319, y	; b9 19 93
B18_125e:		sta $01			; 85 01
B18_1260:		ldy $04			; a4 04
B18_1262:		lda ($00), y	; b1 00
B18_1264:		sta $04			; 85 04
B18_1266:		iny				; c8 
B18_1267:		lda ($00), y	; b1 00
B18_1269:		sta $05			; 85 05
B18_126b:		ldy #$03		; a0 03
B18_126d:		lda ($02), y	; b1 02
B18_126f:		beq B18_1283 ; f0 12

B18_1271:		ldy $07ec		; ac ec 07
B18_1274:		lda wEntityBaseX.w, y	; b9 38 04
B18_1277:		clc				; 18 
B18_1278:		adc $04			; 65 04
B18_127a:		sta $04			; 85 04
B18_127c:		lda #$b0		; a9 b0
B18_127e:		clc				; 18 
B18_127f:		adc $05			; 65 05
B18_1281:		sta $05			; 85 05
B18_1283:		lda wEntityBaseX.w, x	; bd 38 04
B18_1286:		sec				; 38 
B18_1287:		sbc $04			; e5 04
B18_1289:		bcs B18_1290 ; b0 05

B18_128b:		eor #$ff		; 49 ff
B18_128d:		clc				; 18 
B18_128e:		adc #$01		; 69 01
B18_1290:		cmp #$08		; c9 08
B18_1292:		bcs B18_12c1 ; b0 2d

B18_1294:		lda wEntityBaseY.w, x	; bd 1c 04
B18_1297:		sec				; 38 
B18_1298:		sbc $05			; e5 05
B18_129a:		bcs B18_12a1 ; b0 05

B18_129c:		eor #$ff		; 49 ff
B18_129e:		clc				; 18 
B18_129f:		adc #$01		; 69 01
B18_12a1:		cmp #$08		; c9 08
B18_12a3:		bcs B18_12c1 ; b0 1c

B18_12a5:		lda $05			; a5 05
B18_12a7:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_12aa:		cpx $07ec		; ec ec 07
B18_12ad:		beq B18_12b4 ; f0 05

B18_12af:		lda $07f1		; ad f1 07
B18_12b2:		bne B18_12be ; d0 0a

B18_12b4:		dec $07ed		; ce ed 07
B18_12b7:		beq B18_12d0 ; f0 17

B18_12b9:		lda #$00		; a9 00
B18_12bb:		sta $07f1		; 8d f1 07
B18_12be:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B18_12c1:		jsr $ff30		; 20 30 ff
B18_12c4:		lda $00			; a5 00
B18_12c6:		lsr a			; 4a
B18_12c7:		and #$0f		; 29 0f
B18_12c9:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_12cc:		inc wEntityPhase.w, x	; fe c1 05
B18_12cf:		rts				; 60 


B18_12d0:		ldy #$01		; a0 01
B18_12d2:		lda ($02), y	; b1 02
B18_12d4:		sta $00			; 85 00
B18_12d6:		ldy $07ec		; ac ec 07
B18_12d9:		lda $054e, y	; b9 4e 05
B18_12dc:		beq B18_12f4 ; f0 16

B18_12de:		lda wEntityAI_idx.w, x	; bd ef 05
B18_12e1:		and #$7f		; 29 7f
B18_12e3:		cmp #$1f		; c9 1f
B18_12e5:		beq B18_12ef ; f0 08

B18_12e7:		cmp #$1e		; c9 1e
B18_12e9:		beq B18_12ef ; f0 04

B18_12eb:		cmp #$1a		; c9 1a
B18_12ed:		bne B18_12f4 ; d0 05

B18_12ef:		lda $00			; a5 00
B18_12f1:		sta wEntityPhase.w, y	; 99 c1 05
B18_12f4:		iny				; c8 
B18_12f5:		cpy #$0d		; c0 0d
B18_12f7:		bne B18_12d9 ; d0 e0

B18_12f9:		lda #$02		; a9 02
B18_12fb:		sta $07ee		; 8d ee 07
B18_12fe:		rts				; 60 


B18_12ff:		ldy #$01		; a0 01
B18_1301:		lda $054e, y	; b9 4e 05
B18_1304:		beq B18_130f ; f0 09

B18_1306:		lda wEntityAI_idx.w, y	; b9 ef 05
B18_1309:		and #$7f		; 29 7f
B18_130b:		cmp #$48		; c9 48
B18_130d:		bne B18_1314 ; d0 05

B18_130f:		iny				; c8 
B18_1310:		cpy #$0d		; c0 0d
B18_1312:		bne B18_1301 ; d0 ed

B18_1314:		sty $07ec		; 8c ec 07
B18_1317:		rts				; 60 


B18_1318:	.db $1c
B18_1319:	.db $93
B18_131a:	.db $34
B18_131b:	.db $93
B18_131c:		rts				; 60 


B18_131d:		bvc B18_138f ; 50 70

B18_131f:		rts				; 60 


B18_1320:		;removed
	.db $70 $50

B18_1322:		;removed
	.db $70 $40

B18_1324:	.db $80
B18_1325:	.db $80
B18_1326:	.db $80
B18_1327:		rts				; 60 


B18_1328:	.db $80
B18_1329:		;removed
	.db $50 $80

B18_132b:		rti				; 40 


B18_132c:	.db $80
B18_132d:		bmi B18_132f ; 30 00

B18_132f:		.db $00				; 00
B18_1330:		.db $00				; 00
B18_1331:		.db $00				; 00
B18_1332:		.db $00				; 00
B18_1333:		.db $00				; 00
B18_1334:		.db $00				; 00
B18_1335:		.db $00				; 00
B18_1336:		.db $00				; 00
B18_1337:		.db $00				; 00
B18_1338:		.db $00				; 00
B18_1339:		.db $00				; 00
B18_133a:		.db $00				; 00
B18_133b:		.db $00				; 00
B18_133c:		.db $00				; 00
B18_133d:		cpx #$00		; e0 00
B18_133f:		beq B18_1341 ; f0 00

B18_1341:		cpx #$00		; e0 00
B18_1343:		beq B18_1345 ; f0 00

B18_1345:		cpx #$00		; e0 00
B18_1347:		beq B18_1349 ; f0 00

B18_1349:		cpx #$00		; e0 00
B18_134b:		beq B18_12ed ; f0 a0

B18_134d:	.db $03
B18_134e:		sty $07ee		; 8c ee 07
B18_1351:		dey				; 88 
B18_1352:		txa				; 8a 
B18_1353:		cmp $07ec		; cd ec 07
B18_1356:		bne B18_1359 ; d0 01

B18_1358:		dey				; 88 
B18_1359:		lda wEntityAI_idx.w, x	; bd ef 05
B18_135c:		and #$80		; 29 80
B18_135e:		ora ($02), y	; 11 02
B18_1360:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1363:		lda #$00		; a9 00
B18_1365:		sta wEntityPhase.w, x	; 9d c1 05
B18_1368:		rts				; 60 


B18_1369:		inc wEntityPhase.w, x	; fe c1 05
B18_136c:		ldy $07ec		; ac ec 07
B18_136f:		beq B18_13b7 ; f0 46

B18_1371:		lda $054e, y	; b9 4e 05
B18_1374:		bne B18_137b ; d0 05

B18_1376:		lda #$03		; a9 03
B18_1378:		sta $07ee		; 8d ee 07
B18_137b:		lda $07ee		; ad ee 07
B18_137e:		beq B18_13b4 ; f0 34

B18_1380:		iny				; c8 
B18_1381:		lda wEntityAI_idx.w, y	; b9 ef 05
B18_1384:		and #$7f		; 29 7f
B18_1386:		cmp #$1b		; c9 1b
B18_1388:		bne B18_1380 ; d0 f6

B18_138a:		lda $054e, y	; b9 4e 05
B18_138d:		beq B18_1380 ; f0 f1

B18_138f:		stx $00			; 86 00
B18_1391:		tya				; 98 
B18_1392:		cmp $00			; c5 00
B18_1394:		bne B18_13a3 ; d0 0d

B18_1396:		ldy $07ec		; ac ec 07
B18_1399:		lda wPlayerStateDoubled.w, y	; b9 65 05
B18_139c:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_139f:		sta $07ed		; 8d ed 07
B18_13a2:		rts				; 60 


B18_13a3:		lda $07ed		; ad ed 07
B18_13a6:		sta $00			; 85 00
B18_13a8:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_13ab:		sta $07ed		; 8d ed 07
B18_13ae:		lda $00			; a5 00
B18_13b0:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_13b3:		rts				; 60 


B18_13b4:		jmp $9569		; 4c 69 95


B18_13b7:		jmp $9560		; 4c 60 95


B18_13ba:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B18_13bd:		inc wEntityPhase.w, x	; fe c1 05
B18_13c0:		ldy #$01		; a0 01
B18_13c2:		lda ($02), y	; b1 02
B18_13c4:		sta $00			; 85 00
B18_13c6:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_13c9:		and #$04		; 29 04
B18_13cb:		beq B18_13e7 ; f0 1a

B18_13cd:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_13d0:		and #$08		; 29 08
B18_13d2:		beq B18_13dd ; f0 09

B18_13d4:		lda $00			; a5 00
B18_13d6:		eor #$ff		; 49 ff
B18_13d8:		clc				; 18 
B18_13d9:		adc #$01		; 69 01
B18_13db:		sta $00			; 85 00
B18_13dd:		lda wEntityBaseX.w, x	; bd 38 04
B18_13e0:		clc				; 18 
B18_13e1:		adc $00			; 65 00
B18_13e3:		sta wEntityBaseX.w, x	; 9d 38 04
B18_13e6:		rts				; 60 


B18_13e7:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_13ea:		and #$08		; 29 08
B18_13ec:		bne B18_13f7 ; d0 09

B18_13ee:		lda $00			; a5 00
B18_13f0:		eor #$ff		; 49 ff
B18_13f2:		clc				; 18 
B18_13f3:		adc #$01		; 69 01
B18_13f5:		sta $00			; 85 00
B18_13f7:		lda wEntityBaseY.w, x	; bd 1c 04
B18_13fa:		clc				; 18 
B18_13fb:		adc $00			; 65 00
B18_13fd:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_1400:		rts				; 60 


B18_1401:		ldy #$0a		; a0 0a
B18_1403:		lda $efb4, y	; b9 b4 ef
B18_1406:		sta $00			; 85 00
B18_1408:		lda $efb5, y	; b9 b5 ef
B18_140b:		sta $01			; 85 01
B18_140d:		lda $0633, x	; bd 33 06
B18_1410:		asl a			; 0a
B18_1411:		clc				; 18 
B18_1412:		adc $0633, x	; 7d 33 06
B18_1415:		clc				; 18 
B18_1416:		adc $00			; 65 00
B18_1418:		sta $00			; 85 00
B18_141a:		lda $01			; a5 01
B18_141c:		adc #$00		; 69 00
B18_141e:		sta $01			; 85 01
B18_1420:		inc wEntityPhase.w, x	; fe c1 05
B18_1423:		ldy #$01		; a0 01
B18_1425:		lda ($02), y	; b1 02
B18_1427:		dey				; 88 
B18_1428:		asl a			; 0a
B18_1429:		clc				; 18 
B18_142a:		adc ($00), y	; 71 00
B18_142c:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B18_142f:		lda wEntityState.w, x	; bd 70 04
B18_1432:		and #$40		; 29 40
B18_1434:		ora #$20		; 09 20
B18_1436:		sta wEntityState.w, x	; 9d 70 04
B18_1439:		ldy #$02		; a0 02
B18_143b:		lda ($02), y	; b1 02
B18_143d:		sta $05d8, x	; 9d d8 05
B18_1440:		rts				; 60 


B18_1441:		inc wEntityPhase.w, x	; fe c1 05
B18_1444:		ldy $0645, x	; bc 45 06
B18_1447:		lda #$0a		; a9 0a
B18_1449:		jmp setEntitySpecGroupA_animationDefIdxY_startAnimate		; 4c 5c ef


B18_144c:		ldy #$01		; a0 01
B18_144e:		lda ($02), y	; b1 02
B18_1450:		ora #$80		; 09 80
B18_1452:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1455:		lda #$00		; a9 00
B18_1457:		sta wEntityPhase.w, x	; 9d c1 05
B18_145a:		rts				; 60 


B18_145b:		inc wEntityPhase.w, x	; fe c1 05
B18_145e:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1461:		clc				; 18 
B18_1462:		adc #$08		; 69 08
B18_1464:		and #$0f		; 29 0f
B18_1466:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1469:		and #$08		; 29 08
B18_146b:		beq B18_146f ; f0 02

B18_146d:		lda #$01		; a9 01
B18_146f:		sta wEntityFacingLeft.w, x	; 9d a8 04
B18_1472:		rts				; 60 


B18_1473:		inc wEntityPhase.w, x	; fe c1 05
B18_1476:		jsr $94de		; 20 de 94
B18_1479:		bcc B18_1481 ; 90 06

B18_147b:		lda $044c, y	; b9 4c 04
B18_147e:		jmp $9484		; 4c 84 94


B18_1481:		lda wEntityBaseX.w		; ad 38 04
B18_1484:		sta $00			; 85 00
B18_1486:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_1489:		beq B18_148f ; f0 04

B18_148b:		lda #$fc		; a9 fc
B18_148d:		bne B18_1491 ; d0 02

B18_148f:		lda #$04		; a9 04
B18_1491:		clc				; 18 
B18_1492:		adc $00			; 65 00
B18_1494:		sta wEntityBaseX.w, x	; 9d 38 04
B18_1497:		lda #$30		; a9 30
B18_1499:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_149c:		rts				; 60 


B18_149d:		jsr $94de		; 20 de 94
B18_14a0:		bcc B18_14c0 ; 90 1e

B18_14a2:		lda #$70		; a9 70
B18_14a4:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_14a7:		inc wEntityPhase.w, x	; fe c1 05
B18_14aa:		ldy #$01		; a0 01
B18_14ac:		lda ($02), y	; b1 02
B18_14ae:		sta $05d8, x	; 9d d8 05
B18_14b1:		lda wEntityState.w, x	; bd 70 04
B18_14b4:		and #$77		; 29 77
B18_14b6:		sta wEntityState.w, x	; 9d 70 04
B18_14b9:		lda #$0a		; a9 0a
B18_14bb:		ldy #$0c		; a0 0c
B18_14bd:		jmp setEntitySpecGroupA_animationDefIdxY_startAnimate		; 4c 5c ef


B18_14c0:		lda #$01		; a9 01
B18_14c2:		sta wEntityPhase.w, x	; 9d c1 05
B18_14c5:		lda wEntityState.w, x	; bd 70 04
B18_14c8:		and #$77		; 29 77
B18_14ca:		sta wEntityState.w, x	; 9d 70 04
B18_14cd:		lda #$10		; a9 10
B18_14cf:		sta $05d8, x	; 9d d8 05
B18_14d2:		lda #$91		; a9 91
B18_14d4:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_14d7:		lda #$0a		; a9 0a
B18_14d9:		ldy #$0b		; a0 0b
B18_14db:		jmp setEntitySpecGroupA_animationDefIdxY_startAnimate		; 4c 5c ef


B18_14de:		ldy #$02		; a0 02
B18_14e0:		lda $0562, y	; b9 62 05
B18_14e3:		cmp #$03		; c9 03
B18_14e5:		beq B18_14f2 ; f0 0b

B18_14e7:		cmp #$08		; c9 08
B18_14e9:		beq B18_14f2 ; f0 07

B18_14eb:		dey				; 88 
B18_14ec:		cpy #$ff		; c0 ff
B18_14ee:		bne B18_14e0 ; d0 f0

B18_14f0:		clc				; 18 
B18_14f1:		rts				; 60 


B18_14f2:		sec				; 38 
B18_14f3:		rts				; 60 


B18_14f4:		lda #$ff		; a9 ff
B18_14f6:		sec				; 38 
B18_14f7:		sbc wEntityBaseX.w, x	; fd 38 04
B18_14fa:		sta $01			; 85 01
B18_14fc:		lda #$00		; a9 00
B18_14fe:		asl $01			; 06 01
B18_1500:		rol a			; 2a
B18_1501:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_1504:		lda $01			; a5 01
B18_1506:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_1509:		inc wEntityPhase.w, x	; fe c1 05
B18_150c:		lda #$00		; a9 00
B18_150e:		sta wEntityFacingLeft.w, x	; 9d a8 04
B18_1511:		lda #$04		; a9 04
B18_1513:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1516:		rts				; 60 


B18_1517:		lda wEntityOamSpecGroupDoubled.w, x	; bd 8c 04
B18_151a:		ldy wEntityAnimationDefIdxInSpecGroup.w, x	; bc aa 05
B18_151d:		iny				; c8 
B18_151e:		jsr setEntitySpecGroupA_animationDefIdxY_startAnimate		; 20 5c ef
B18_1521:		inc wEntityPhase.w, x	; fe c1 05
B18_1524:		ldy #$01		; a0 01
B18_1526:		lda ($02), y	; b1 02
B18_1528:		sta $00			; 85 00
B18_152a:		beq B18_153a ; f0 0e

B18_152c:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_152f:		beq B18_153d ; f0 0c

B18_1531:		lda wEntityBaseX.w, x	; bd 38 04
B18_1534:		sec				; 38 
B18_1535:		sbc $00			; e5 00
B18_1537:		sta wEntityBaseX.w, x	; 9d 38 04
B18_153a:		jmp $9546		; 4c 46 95


B18_153d:		lda wEntityBaseX.w, x	; bd 38 04
B18_1540:		clc				; 18 
B18_1541:		adc $00			; 65 00
B18_1543:		sta wEntityBaseX.w, x	; 9d 38 04
B18_1546:		ldy #$02		; a0 02
B18_1548:		lda ($02), y	; b1 02
B18_154a:		clc				; 18 
B18_154b:		adc wEntityBaseY.w, x	; 7d 1c 04
B18_154e:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_1551:		rts				; 60 


B18_1552:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B18_1555:		inc wEntityPhase.w, x	; fe c1 05
B18_1558:		ldy #$01		; a0 01
B18_155a:		lda ($02), y	; b1 02
B18_155c:		sta $05d8, x	; 9d d8 05
B18_155f:		rts				; 60 


B18_1560:		lda #$00		; a9 00
B18_1562:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1565:		sta wEntityPhase.w, x	; 9d c1 05
B18_1568:		rts				; 60 


B18_1569:		lda wEntityAI_idx.w, x	; bd ef 05
B18_156c:		and #$80		; 29 80
B18_156e:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1571:		lda #$00		; a9 00
B18_1573:		sta wEntityPhase.w, x	; 9d c1 05
B18_1576:		rts				; 60 


B18_1577:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_157a:		clc				; 18 
B18_157b:		adc #$08		; 69 08
B18_157d:		and #$0f		; 29 0f
B18_157f:		sta $05			; 85 05
B18_1581:		jmp $9589		; 4c 89 95


B18_1584:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1587:		sta $05			; 85 05
B18_1589:		inc wEntityPhase.w, x	; fe c1 05
B18_158c:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B18_158f:		ldy #$01		; a0 01
B18_1591:		lda ($02), y	; b1 02
B18_1593:		sta $00			; 85 00
B18_1595:		iny				; c8 
B18_1596:		lda ($02), y	; b1 02
B18_1598:		sta $01			; 85 01
B18_159a:		iny				; c8 
B18_159b:		lda ($02), y	; b1 02
B18_159d:		sta $05d8, x	; 9d d8 05
B18_15a0:		lda $05			; a5 05
B18_15a2:		and #$07		; 29 07
B18_15a4:		beq B18_15ba ; f0 14

B18_15a6:		lda $05			; a5 05
B18_15a8:		and #$08		; 29 08
B18_15aa:		beq B18_15af ; f0 03

B18_15ac:		jsr $95ce		; 20 ce 95
B18_15af:		lda $00			; a5 00
B18_15b1:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_15b4:		lda $01			; a5 01
B18_15b6:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_15b9:		rts				; 60 


B18_15ba:		lda $05			; a5 05
B18_15bc:		and #$08		; 29 08
B18_15be:		bne B18_15c3 ; d0 03

B18_15c0:		jsr $95ce		; 20 ce 95
B18_15c3:		lda $00			; a5 00
B18_15c5:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_15c8:		lda $01			; a5 01
B18_15ca:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_15cd:		rts				; 60 


B18_15ce:		lda $01			; a5 01
B18_15d0:		eor #$ff		; 49 ff
B18_15d2:		clc				; 18 
B18_15d3:		adc #$01		; 69 01
B18_15d5:		sta $01			; 85 01
B18_15d7:		lda $00			; a5 00
B18_15d9:		eor #$ff		; 49 ff
B18_15db:		adc #$00		; 69 00
B18_15dd:		sta $00			; 85 00
B18_15df:		rts				; 60 


B18_15e0:		ldy #$03		; a0 03
B18_15e2:		lda ($02), y	; b1 02
B18_15e4:		cmp #$ff		; c9 ff
B18_15e6:		beq B18_1608 ; f0 20

B18_15e8:		asl a			; 0a
B18_15e9:		tay				; a8 
B18_15ea:		lda $96db, y	; b9 db 96
B18_15ed:		sta $00			; 85 00
B18_15ef:		lda $96dc, y	; b9 dc 96
B18_15f2:		sta $01			; 85 01
B18_15f4:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_15f7:		and #$08		; 29 08
B18_15f9:		beq B18_15fe ; f0 03

B18_15fb:		jsr $95ce		; 20 ce 95
B18_15fe:		lda $00			; a5 00
B18_1600:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_1603:		lda $01			; a5 01
B18_1605:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_1608:		ldy #$01		; a0 01
B18_160a:		lda ($02), y	; b1 02
B18_160c:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_160f:		iny				; c8 
B18_1610:		lda ($02), y	; b1 02
B18_1612:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_1615:		inc wEntityPhase.w, x	; fe c1 05
B18_1618:		rts				; 60 


B18_1619:		ldy #$02		; a0 02
B18_161b:		lda ($02), y	; b1 02
B18_161d:		asl a			; 0a
B18_161e:		tay				; a8 
B18_161f:		lda $96db, y	; b9 db 96
B18_1622:		sta $00			; 85 00
B18_1624:		lda $96dc, y	; b9 dc 96
B18_1627:		sta $01			; 85 01
B18_1629:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_162c:		and #$08		; 29 08
B18_162e:		beq B18_1633 ; f0 03

B18_1630:		jsr $95ce		; 20 ce 95
B18_1633:		lda $00			; a5 00
B18_1635:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_1638:		lda $01			; a5 01
B18_163a:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_163d:		ldy #$01		; a0 01
B18_163f:		lda ($02), y	; b1 02
B18_1641:		asl a			; 0a
B18_1642:		tay				; a8 
B18_1643:		lda $96d3, y	; b9 d3 96
B18_1646:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_1649:		lda $96d4, y	; b9 d4 96
B18_164c:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_164f:		inc wEntityPhase.w, x	; fe c1 05
B18_1652:		rts				; 60 


B18_1653:		ldy #$03		; a0 03
B18_1655:		lda ($02), y	; b1 02
B18_1657:		sta $00			; 85 00
B18_1659:		lda wEntityVertSubSpeed.w, x	; bd 37 05
B18_165c:		clc				; 18 
B18_165d:		adc $00			; 65 00
B18_165f:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_1662:		lda wEntityVertSpeed.w, x	; bd 20 05
B18_1665:		adc #$00		; 69 00
B18_1667:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_166a:		lda wEntityVertSpeed.w, x	; bd 20 05
B18_166d:		bmi B18_16d2 ; 30 63

B18_166f:		ldy #$00		; a0 00
B18_1671:		lda ($02), y	; b1 02
B18_1673:		cmp #$44		; c9 44
B18_1675:		beq B18_1699 ; f0 22

B18_1677:		cmp #$02		; c9 02
B18_1679:		bne B18_16a5 ; d0 2a

B18_167b:		ldy #$10		; a0 10
B18_167d:		lda $054e, x	; bd 4e 05
B18_1680:		cmp #$01		; c9 01
B18_1682:		bne B18_1686 ; d0 02

B18_1684:		ldy #$18		; a0 18
B18_1686:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_1689:		beq B18_168f ; f0 04

B18_168b:		lda #$fc		; a9 fc
B18_168d:		bne B18_1691 ; d0 02

B18_168f:		lda #$04		; a9 04
B18_1691:		jsr func_1f_1c1e		; 20 1e fc
B18_1694:		beq B18_16a5 ; f0 0f

B18_1696:		jmp $96e3		; 4c e3 96


B18_1699:		inc wEntityPhase.w, x	; fe c1 05
B18_169c:		lda #$00		; a9 00
B18_169e:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_16a1:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_16a4:		rts				; 60 


B18_16a5:		ldy #$01		; a0 01
B18_16a7:		lda ($02), y	; b1 02
B18_16a9:		asl a			; 0a
B18_16aa:		tay				; a8 
B18_16ab:		lda $96d3, y	; b9 d3 96
B18_16ae:		sta $01			; 85 01
B18_16b0:		lda $96d4, y	; b9 d4 96
B18_16b3:		sta $00			; 85 00
B18_16b5:		jsr $95ce		; 20 ce 95
B18_16b8:		lda wEntityVertSpeed.w, x	; bd 20 05
B18_16bb:		cmp $00			; c5 00
B18_16bd:		bcs B18_16c8 ; b0 09

B18_16bf:		bne B18_16d2 ; d0 11

B18_16c1:		lda wEntityVertSubSpeed.w, x	; bd 37 05
B18_16c4:		cmp $01			; c5 01
B18_16c6:		bcs B18_16d2 ; b0 0a

B18_16c8:		lda $00			; a5 00
B18_16ca:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_16cd:		lda $01			; a5 01
B18_16cf:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_16d2:		rts				; 60 


B18_16d3:		.db $00				; 00
B18_16d4:	.db $fc
B18_16d5:		.db $00				; 00
B18_16d6:		inc $fd00, x	; fe 00 fd
B18_16d9:		.db $00				; 00
B18_16da:		sed				; f8 
B18_16db:		.db $00				; 00
B18_16dc:	.db $80
B18_16dd:		.db $00				; 00
B18_16de:		rti				; 40 


B18_16df:		.db $00				; 00
B18_16e0:		cpx #$00		; e0 00
B18_16e2:		.db $00				; 00
B18_16e3:		inc wEntityPhase.w, x	; fe c1 05
B18_16e6:		lda #$00		; a9 00
B18_16e8:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_16eb:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_16ee:		lda $054e, x	; bd 4e 05
B18_16f1:		cmp #$01		; c9 01
B18_16f3:		beq B18_16fe ; f0 09

B18_16f5:		lda wEntityBaseY.w, x	; bd 1c 04
B18_16f8:		and #$f0		; 29 f0
B18_16fa:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_16fd:		rts				; 60 


B18_16fe:		lda wEntityBaseY.w, x	; bd 1c 04
B18_1701:		and #$f8		; 29 f8
B18_1703:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_1706:		rts				; 60 


B18_1707:		dec $05d8, x	; de d8 05
B18_170a:		bne B18_170f ; d0 03

B18_170c:		inc wEntityPhase.w, x	; fe c1 05
B18_170f:		rts				; 60 


B18_1710:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1713:		clc				; 18 
B18_1714:		adc #$04		; 69 04
B18_1716:		and #$0f		; 29 0f
B18_1718:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_171b:		inc wEntityPhase.w, x	; fe c1 05
B18_171e:		rts				; 60 


B18_171f:		dec $05d8, x	; de d8 05
B18_1722:		beq B18_1727 ; f0 03

B18_1724:		jmp $9779		; 4c 79 97


B18_1727:		inc wEntityPhase.w, x	; fe c1 05
B18_172a:		rts				; 60 


B18_172b:		lda $0645, x	; bd 45 06
B18_172e:		cmp #$10		; c9 10
B18_1730:		bcc B18_1774 ; 90 42

B18_1732:		jsr $9753		; 20 53 97
B18_1735:		lda $0645, x	; bd 45 06
B18_1738:		cmp #$10		; c9 10
B18_173a:		bcs B18_1749 ; b0 0d

B18_173c:		lda wEntityHorizSpeed.w, x	; bd f2 04
B18_173f:		bmi B18_1749 ; 30 08

B18_1741:		inc wEntityPhase.w, x	; fe c1 05
B18_1744:		lda #$00		; a9 00
B18_1746:		sta $0645, x	; 9d 45 06
B18_1749:		rts				; 60 


B18_174a:		lda $0645, x	; bd 45 06
B18_174d:		and #$7f		; 29 7f
B18_174f:		cmp #$10		; c9 10
B18_1751:		bcc B18_1774 ; 90 21

B18_1753:		lda $0633, x	; bd 33 06
B18_1756:		bne B18_1779 ; d0 21

B18_1758:		lda wEntityHorizSubSpeed.w, x	; bd 09 05
B18_175b:		eor #$ff		; 49 ff
B18_175d:		clc				; 18 
B18_175e:		adc #$01		; 69 01
B18_1760:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_1763:		lda wEntityHorizSpeed.w, x	; bd f2 04
B18_1766:		eor #$ff		; 49 ff
B18_1768:		adc #$00		; 69 00
B18_176a:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_176d:		lda #$01		; a9 01
B18_176f:		sta $0633, x	; 9d 33 06
B18_1772:		bne B18_1779 ; d0 05

B18_1774:		lda #$00		; a9 00
B18_1776:		sta $0633, x	; 9d 33 06
B18_1779:		lda #$00		; a9 00
B18_177b:		sta $00			; 85 00
B18_177d:		jsr $97d6		; 20 d6 97
B18_1780:		sta $01			; 85 01
B18_1782:		ldy #$01		; a0 01
B18_1784:		lda ($02), y	; b1 02
B18_1786:		clc				; 18 
B18_1787:		adc $0645, x	; 7d 45 06
B18_178a:		sta $0645, x	; 9d 45 06
B18_178d:		jsr $97d6		; 20 d6 97
B18_1790:		sec				; 38 
B18_1791:		sbc $01			; e5 01
B18_1793:		sta $01			; 85 01
B18_1795:		bcs B18_17a4 ; b0 0d

B18_1797:		lda $01			; a5 01
B18_1799:		eor #$ff		; 49 ff
B18_179b:		clc				; 18 
B18_179c:		adc #$01		; 69 01
B18_179e:		sta $01			; 85 01
B18_17a0:		lda #$ff		; a9 ff
B18_17a2:		sta $00			; 85 00
B18_17a4:		ldy #$02		; a0 02
B18_17a6:		lda ($02), y	; b1 02
B18_17a8:		sta $02			; 85 02
B18_17aa:		beq B18_17b2 ; f0 06

B18_17ac:		lsr $01			; 46 01
B18_17ae:		dec $02			; c6 02
B18_17b0:		bne B18_17ac ; d0 fa

B18_17b2:		lda $0645, x	; bd 45 06
B18_17b5:		and #$80		; 29 80
B18_17b7:		beq B18_17bf ; f0 06

B18_17b9:		lda $00			; a5 00
B18_17bb:		eor #$ff		; 49 ff
B18_17bd:		sta $00			; 85 00
B18_17bf:		lda $00			; a5 00
B18_17c1:		beq B18_17cc ; f0 09

B18_17c3:		lda $01			; a5 01
B18_17c5:		eor #$ff		; 49 ff
B18_17c7:		clc				; 18 
B18_17c8:		adc #$01		; 69 01
B18_17ca:		sta $01			; 85 01
B18_17cc:		lda wEntityBaseY.w, x	; bd 1c 04
B18_17cf:		clc				; 18 
B18_17d0:		adc $01			; 65 01
B18_17d2:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_17d5:		rts				; 60 


B18_17d6:		lda $0645, x	; bd 45 06
B18_17d9:		and #$3f		; 29 3f
B18_17db:		sta $08			; 85 08
B18_17dd:		lda $0645, x	; bd 45 06
B18_17e0:		and #$40		; 29 40
B18_17e2:		beq B18_17eb ; f0 07

B18_17e4:		lda #$3f		; a9 3f
B18_17e6:		sec				; 38 
B18_17e7:		sbc $08			; e5 08
B18_17e9:		sta $08			; 85 08
B18_17eb:		ldy $08			; a4 08
B18_17ed:		lda $97f1, y	; b9 f1 97
B18_17f0:		rts				; 60 


B18_17f1:		.db $00				; 00
B18_17f2:		asl $0d			; 06 0d
B18_17f4:	.db $13
B18_17f5:		ora $251f, y	; 19 1f 25
B18_17f8:		bit $3832		; 2c 32 38
B18_17fb:		rol $4a44, x	; 3e 44 4a
B18_17fe:		;removed
	.db $50 $56

B18_1800:	.db $5c
B18_1801:	.db $62
B18_1802:	.db $67
B18_1803:		adc $7873		; 6d 73 78
B18_1806:		ror $8883, x	; 7e 83 88
B18_1809:		stx $9893		; 8e 93 98
B18_180c:		sta $a7a2, x	; 9d a2 a7
B18_180f:	.db $ab
B18_1810:		;removed
	.db $b0 $b4

B18_1812:		lda $c1bd, y	; b9 bd c1
B18_1815:		cmp $c9			; c5 c9
B18_1817:		cmp $d4d0		; cd d0 d4
B18_181a:	.db $d7
B18_181b:	.db $db
B18_181c:		dec $e4e1, x	; de e1 e4
B18_181f:	.db $e7
B18_1820:		sbc #$ec		; e9 ec
B18_1822:		inc $f2f0		; ee f0 f2
B18_1825:	.db $f4
B18_1826:		inc $f7, x		; f6 f7
B18_1828:		sbc $fbfa, y	; f9 fa fb
B18_182b:	.db $fc
B18_182c:		sbc $fefe, x	; fd fe fe
B18_182f:	.db $ff
B18_1830:	.db $ff
B18_1831:		ldy #$02		; a0 02
B18_1833:		lda ($02), y	; b1 02
B18_1835:		sta $05d8, x	; 9d d8 05
B18_1838:		dey				; 88 
B18_1839:		lda ($02), y	; b1 02
B18_183b:		asl a			; 0a
B18_183c:		asl a			; 0a
B18_183d:		sta $08			; 85 08
B18_183f:		inc wEntityPhase.w, x	; fe c1 05
B18_1842:		ldy wPlayerStateDoubled.w, x	; bc 65 05
B18_1845:		tya				; 98 
B18_1846:		pha				; 48 
B18_1847:		lda $9893, y	; b9 93 98
B18_184a:		pha				; 48 
B18_184b:		asl a			; 0a
B18_184c:		tay				; a8 
B18_184d:		lda $98a3, y	; b9 a3 98
B18_1850:		sta $00			; 85 00
B18_1852:		lda $98a4, y	; b9 a4 98
B18_1855:		sta $01			; 85 01
B18_1857:		ldy $08			; a4 08
B18_1859:		jsr $9866		; 20 66 98
B18_185c:		pla				; 68 
B18_185d:		bpl B18_1862 ; 10 03

B18_185f:		jsr $987a		; 20 7a 98
B18_1862:		pla				; 68 
B18_1863:		jmp $9991		; 4c 91 99


B18_1866:		lda ($00), y	; b1 00
B18_1868:		sta $08			; 85 08
B18_186a:		iny				; c8 
B18_186b:		lda ($00), y	; b1 00
B18_186d:		sta $09			; 85 09
B18_186f:		iny				; c8 
B18_1870:		lda ($00), y	; b1 00
B18_1872:		sta $0a			; 85 0a
B18_1874:		iny				; c8 
B18_1875:		lda ($00), y	; b1 00
B18_1877:		sta $0b			; 85 0b
B18_1879:		rts				; 60 


B18_187a:		lda $08			; a5 08
B18_187c:		ldy $0a			; a4 0a
B18_187e:		sty $08			; 84 08
B18_1880:		sta $0a			; 85 0a
B18_1882:		lda $09			; a5 09
B18_1884:		ldy $0b			; a4 0b
B18_1886:		sty $09			; 84 09
B18_1888:		sta $0b			; 85 0b
B18_188a:		rts				; 60 


B18_188b:		ora ($00, x)	; 01 00
B18_188d:		.db $00				; 00
B18_188e:		ora ($00, x)	; 01 00
B18_1890:		.db $00				; 00
B18_1891:		ora ($01, x)	; 01 01
B18_1893:		.db $00				; 00
B18_1894:		ora ($02, x)	; 01 02
B18_1896:		sta ($80, x)	; 81 80
B18_1898:		sta ($02, x)	; 81 02
B18_189a:		ora ($00, x)	; 01 00
B18_189c:		ora ($02, x)	; 01 02
B18_189e:		sta ($80, x)	; 81 80
B18_18a0:		sta ($02, x)	; 81 02
B18_18a2:		ora ($a9, x)	; 01 a9
B18_18a4:		tya				; 98 
B18_18a5:		cmp ($98), y	; d1 98
B18_18a7:	.db $f9 $98 $00
B18_18aa:		.db $00				; 00
B18_18ab:		.db $00				; 00
B18_18ac:		.db $00				; 00
B18_18ad:		.db $00				; 00
B18_18ae:		.db $00				; 00
B18_18af:		.db $00				; 00
B18_18b0:	.db $20 $00 $00
B18_18b3:		.db $00				; 00
B18_18b4:		rti				; 40 


B18_18b5:		.db $00				; 00
B18_18b6:		.db $00				; 00
B18_18b7:		.db $00				; 00
B18_18b8:		rts				; 60 


B18_18b9:		.db $00				; 00
B18_18ba:		.db $00				; 00
B18_18bb:		.db $00				; 00
B18_18bc:	.db $80
B18_18bd:		.db $00				; 00
B18_18be:		.db $00				; 00
B18_18bf:		.db $00				; 00
B18_18c0:		ldy #$00		; a0 00
B18_18c2:		.db $00				; 00
B18_18c3:		.db $00				; 00
B18_18c4:		cpy #$00		; c0 00
B18_18c6:		.db $00				; 00
B18_18c7:		.db $00				; 00
B18_18c8:		cpx #$00		; e0 00
B18_18ca:		.db $00				; 00
B18_18cb:		ora ($80, x)	; 01 80
B18_18cd:		.db $00				; 00
B18_18ce:		.db $00				; 00
B18_18cf:	.db $02
B18_18d0:		.db $00				; 00
B18_18d1:		.db $00				; 00
B18_18d2:		.db $00				; 00
B18_18d3:		.db $00				; 00
B18_18d4:		.db $00				; 00
B18_18d5:		.db $00				; 00
B18_18d6:	.db $0c
B18_18d7:		.db $00				; 00
B18_18d8:		asl $1800, x	; 1e 00 18
B18_18db:		.db $00				; 00
B18_18dc:	.db $3b
B18_18dd:		.db $00				; 00
B18_18de:		and $00			; 25 00
B18_18e0:		eor $3100, y	; 59 00 31
B18_18e3:		.db $00				; 00
B18_18e4:		ror $00, x		; 76 00
B18_18e6:		and $9400, x	; 3d 00 94
B18_18e9:		.db $00				; 00
B18_18ea:		eor #$00		; 49 00
B18_18ec:		lda ($00), y	; b1 00
B18_18ee:		lsr $00, x		; 56 00
B18_18f0:	.db $cf
B18_18f1:		.db $00				; 00
B18_18f2:	.db $93
B18_18f3:		ora ($63, x)	; 01 63
B18_18f5:		.db $00				; 00
B18_18f6:	.db $c3
B18_18f7:		ora ($d9, x)	; 01 d9
B18_18f9:		.db $00				; 00
B18_18fa:		.db $00				; 00
B18_18fb:		.db $00				; 00
B18_18fc:		.db $00				; 00
B18_18fd:		.db $00				; 00
B18_18fe:	.db $17
B18_18ff:		.db $00				; 00
B18_1900:	.db $17
B18_1901:		.db $00				; 00
B18_1902:		and $2d00		; 2d 00 2d
B18_1905:		.db $00				; 00
B18_1906:	.db $44
B18_1907:		.db $00				; 00
B18_1908:	.db $44
B18_1909:		.db $00				; 00
B18_190a:	.db $5b
B18_190b:		.db $00				; 00
B18_190c:	.db $5b
B18_190d:		.db $00				; 00
B18_190e:		adc ($00), y	; 71 00
B18_1910:		adc ($00), y	; 71 00
B18_1912:		dey				; 88 
B18_1913:		.db $00				; 00
B18_1914:		dey				; 88 
B18_1915:		.db $00				; 00
B18_1916:	.db $9e
B18_1917:		.db $00				; 00
B18_1918:	.db $9e
B18_1919:		ora ($10, x)	; 01 10
B18_191b:		ora ($10, x)	; 01 10
B18_191d:		ora ($6a, x)	; 01 6a
B18_191f:		ora ($6a, x)	; 01 6a
B18_1921:		lda #$00		; a9 00
B18_1923:		sta $00			; 85 00
B18_1925:		ldy $061e		; ac 1e 06
B18_1928:		lda $9940, y	; b9 40 99
B18_192b:		sta $05d8, x	; 9d d8 05
B18_192e:		lda $994d, y	; b9 4d 99
B18_1931:		sta $05			; 85 05
B18_1933:		lda $00			; a5 00
B18_1935:		beq B18_1967 ; f0 30

B18_1937:		asl $05d8, x	; 1e d8 05
B18_193a:		asl $05d8, x	; 1e d8 05
B18_193d:		jmp $9967		; 4c 67 99


B18_1940:		ora $05			; 05 05
B18_1942:		ora $05			; 05 05
B18_1944:		asl $06			; 06 06
B18_1946:		asl $07			; 06 07
B18_1948:	.db $07
B18_1949:	.db $07
B18_194a:		php				; 08 
B18_194b:		php				; 08 
B18_194c:		php				; 08 
B18_194d:	.db $07
B18_194e:	.db $07
B18_194f:	.db $07
B18_1950:	.db $07
B18_1951:		asl $06			; 06 06
B18_1953:		asl $05			; 06 05
B18_1955:		ora $05			; 05 05
B18_1957:	.db $04
B18_1958:	.db $04
B18_1959:	.db $04
B18_195a:		ldy #$02		; a0 02
B18_195c:		lda ($02), y	; b1 02
B18_195e:		sta $05d8, x	; 9d d8 05
B18_1961:		ldy #$01		; a0 01
B18_1963:		lda ($02), y	; b1 02
B18_1965:		sta $05			; 85 05
B18_1967:		inc wEntityPhase.w, x	; fe c1 05
B18_196a:		ldy wPlayerStateDoubled.w, x	; bc 65 05
B18_196d:		tya				; 98 
B18_196e:		pha				; 48 
B18_196f:		lda $99cd, y	; b9 cd 99
B18_1972:		sta $04			; 85 04
B18_1974:		asl a			; 0a
B18_1975:		tay				; a8 
B18_1976:		lda $99ed, y	; b9 ed 99
B18_1979:		sta $00			; 85 00
B18_197b:		lda $99ee, y	; b9 ee 99
B18_197e:		sta $01			; 85 01
B18_1980:		lda $05			; a5 05
B18_1982:		asl a			; 0a
B18_1983:		asl a			; 0a
B18_1984:		tay				; a8 
B18_1985:		jsr $9866		; 20 66 98
B18_1988:		lda $04			; a5 04
B18_198a:		bpl B18_198f ; 10 03

B18_198c:		jsr $987a		; 20 7a 98
B18_198f:		pla				; 68 
B18_1990:		lsr a			; 4a
B18_1991:		lsr a			; 4a
B18_1992:		lsr a			; 4a
B18_1993:		tay				; a8 
B18_1994:		lda $988b, y	; b9 8b 98
B18_1997:		beq B18_19a6 ; f0 0d

B18_1999:		sec				; 38 
B18_199a:		lda #$00		; a9 00
B18_199c:		sbc $0b			; e5 0b
B18_199e:		sta $0b			; 85 0b
B18_19a0:		lda #$00		; a9 00
B18_19a2:		sbc $0a			; e5 0a
B18_19a4:		sta $0a			; 85 0a
B18_19a6:		lda $988f, y	; b9 8f 98
B18_19a9:		beq B18_19b8 ; f0 0d

B18_19ab:		sec				; 38 
B18_19ac:		lda #$00		; a9 00
B18_19ae:		sbc $09			; e5 09
B18_19b0:		sta $09			; 85 09
B18_19b2:		lda #$00		; a9 00
B18_19b4:		sbc $08			; e5 08
B18_19b6:		sta $08			; 85 08
B18_19b8:		lda $08			; a5 08
B18_19ba:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_19bd:		lda $09			; a5 09
B18_19bf:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_19c2:		lda $0a			; a5 0a
B18_19c4:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_19c7:		lda $0b			; a5 0b
B18_19c9:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_19cc:		rts				; 60 


B18_19cd:		.db $00				; 00
B18_19ce:		ora ($02, x)	; 01 02
B18_19d0:	.db $03
B18_19d1:	.db $04
B18_19d2:	.db $83
B18_19d3:	.db $82
B18_19d4:		sta ($80, x)	; 81 80
B18_19d6:		sta ($82, x)	; 81 82
B18_19d8:	.db $83
B18_19d9:	.db $04
B18_19da:	.db $03
B18_19db:	.db $02
B18_19dc:		ora ($00, x)	; 01 00
B18_19de:		ora ($02, x)	; 01 02
B18_19e0:	.db $03
B18_19e1:	.db $04
B18_19e2:	.db $83
B18_19e3:	.db $82
B18_19e4:		sta ($80, x)	; 81 80
B18_19e6:		sta ($82, x)	; 81 82
B18_19e8:	.db $83
B18_19e9:	.db $04
B18_19ea:	.db $03
B18_19eb:	.db $02
B18_19ec:		ora ($f7, x)	; 01 f7
B18_19ee:		sta $9a27, y	; 99 27 9a
B18_19f1:	.db $57
B18_19f2:		txs				; 9a 
B18_19f3:	.db $87
B18_19f4:		txs				; 9a 
B18_19f5:	.db $b7
B18_19f6:		txs				; 9a 
B18_19f7:		.db $00				; 00
B18_19f8:		.db $00				; 00
B18_19f9:		.db $00				; 00
B18_19fa:		.db $00				; 00
B18_19fb:		.db $00				; 00
B18_19fc:		.db $00				; 00
B18_19fd:		.db $00				; 00
B18_19fe:		rti				; 40 


B18_19ff:		.db $00				; 00
B18_1a00:		.db $00				; 00
B18_1a01:		.db $00				; 00
B18_1a02:	.db $80
B18_1a03:		.db $00				; 00
B18_1a04:		.db $00				; 00
B18_1a05:		.db $00				; 00
B18_1a06:		cpy #$00		; c0 00
B18_1a08:		.db $00				; 00
B18_1a09:		ora ($00, x)	; 01 00
B18_1a0b:		.db $00				; 00
B18_1a0c:		.db $00				; 00
B18_1a0d:		ora ($40, x)	; 01 40
B18_1a0f:		.db $00				; 00
B18_1a10:		.db $00				; 00
B18_1a11:		ora ($80, x)	; 01 80
B18_1a13:		.db $00				; 00
B18_1a14:		.db $00				; 00
B18_1a15:		ora ($c0, x)	; 01 c0
B18_1a17:		.db $00				; 00
B18_1a18:		.db $00				; 00
B18_1a19:	.db $04
B18_1a1a:		.db $00				; 00
B18_1a1b:		.db $00				; 00
B18_1a1c:		.db $00				; 00
B18_1a1d:	.db $02
B18_1a1e:		.db $00				; 00
B18_1a1f:		.db $00				; 00
B18_1a20:		.db $00				; 00
B18_1a21:	.db $02
B18_1a22:	.db $80
B18_1a23:		.db $00				; 00
B18_1a24:		.db $00				; 00
B18_1a25:	.db $03
B18_1a26:		.db $00				; 00
B18_1a27:		.db $00				; 00
B18_1a28:		.db $00				; 00
B18_1a29:		.db $00				; 00
B18_1a2a:		.db $00				; 00
B18_1a2b:		.db $00				; 00
B18_1a2c:	.db $0c
B18_1a2d:		.db $00				; 00
B18_1a2e:	.db $3f
B18_1a2f:		.db $00				; 00
B18_1a30:		ora $7e00, y	; 19 00 7e
B18_1a33:		.db $00				; 00
B18_1a34:		and $00			; 25 00
B18_1a36:		ldy $3200, x	; bc 00 32
B18_1a39:		.db $00				; 00
B18_1a3a:	.db $fb
B18_1a3b:		.db $00				; 00
B18_1a3c:		rol $3a01, x	; 3e 01 3a
B18_1a3f:		.db $00				; 00
B18_1a40:	.db $4b
B18_1a41:		ora ($79, x)	; 01 79
B18_1a43:		.db $00				; 00
B18_1a44:	.db $57
B18_1a45:		ora ($b7, x)	; 01 b7
B18_1a47:		.db $00				; 00
B18_1a48:	.db $c7
B18_1a49:	.db $03
B18_1a4a:		cpx $6300		; ec 00 63
B18_1a4d:		ora ($f6, x)	; 01 f6
B18_1a4f:		.db $00				; 00
B18_1a50:	.db $7c
B18_1a51:	.db $02
B18_1a52:	.db $73
B18_1a53:		.db $00				; 00
B18_1a54:		sta $02, x		; 95 02
B18_1a56:		sbc ($00), y	; f1 00
B18_1a58:		.db $00				; 00
B18_1a59:		.db $00				; 00
B18_1a5a:		.db $00				; 00
B18_1a5b:		.db $00				; 00
B18_1a5c:		clc				; 18 
B18_1a5d:		.db $00				; 00
B18_1a5e:	.db $3b
B18_1a5f:		.db $00				; 00
B18_1a60:		and ($00), y	; 31 00
B18_1a62:		ror $00, x		; 76 00
B18_1a64:		eor #$00		; 49 00
B18_1a66:		lda ($00), y	; b1 00
B18_1a68:	.db $62
B18_1a69:		.db $00				; 00
B18_1a6a:		sbc $7a00		; ed00 7a
B18_1a6d:		ora ($28, x)	; 01 28
B18_1a6f:		.db $00				; 00
B18_1a70:	.db $93
B18_1a71:		ora ($63, x)	; 01 63
B18_1a73:		.db $00				; 00
B18_1a74:	.db $ab
B18_1a75:		ora ($9e, x)	; 01 9e
B18_1a77:		ora ($87, x)	; 01 87
B18_1a79:	.db $03
B18_1a7a:	.db $b2
B18_1a7b:		.db $00				; 00
B18_1a7c:	.db $c3
B18_1a7d:		ora ($d9, x)	; 01 d9
B18_1a7f:		.db $00				; 00
B18_1a80:	.db $f4
B18_1a81:	.db $02
B18_1a82:	.db $4f
B18_1a83:		ora ($25, x)	; 01 25
B18_1a85:	.db $02
B18_1a86:		cmp $00			; c5 00
B18_1a88:		.db $00				; 00
B18_1a89:		.db $00				; 00
B18_1a8a:		.db $00				; 00
B18_1a8b:		.db $00				; 00
B18_1a8c:		bit $00			; 24 00
B18_1a8e:		and $00, x		; 35 00
B18_1a90:	.db $47
B18_1a91:		.db $00				; 00
B18_1a92:		ror a			; 6a
B18_1a93:		.db $00				; 00
B18_1a94:	.db $6b
B18_1a95:		.db $00				; 00
B18_1a96:		ldy #$00		; a0 00
B18_1a98:		stx $d500		; 8e 00 d5
B18_1a9b:		.db $00				; 00
B18_1a9c:	.db $b2
B18_1a9d:		ora ($0a, x)	; 01 0a
B18_1a9f:		.db $00				; 00
B18_1aa0:		cmp $01, x		; d5 01
B18_1aa2:	.db $3f
B18_1aa3:		.db $00				; 00
B18_1aa4:		sbc $7401, y	; f9 01 74
B18_1aa7:	.db $02
B18_1aa8:		sec				; 38 
B18_1aa9:	.db $03
B18_1aaa:	.db $53
B18_1aab:		ora ($1c, x)	; 01 1c
B18_1aad:		ora ($a9, x)	; 01 a9
B18_1aaf:		ora ($63, x)	; 01 63
B18_1ab1:	.db $02
B18_1ab2:	.db $14
B18_1ab3:		ora ($aa, x)	; 01 aa
B18_1ab5:	.db $02
B18_1ab6:	.db $7e $00 $00
B18_1ab9:		.db $00				; 00
B18_1aba:		.db $00				; 00
B18_1abb:		.db $00				; 00
B18_1abc:		and $2d00		; 2d 00 2d
B18_1abf:		.db $00				; 00
B18_1ac0:	.db $5b
B18_1ac1:		.db $00				; 00
B18_1ac2:	.db $5b
B18_1ac3:		.db $00				; 00
B18_1ac4:		dey				; 88 
B18_1ac5:		.db $00				; 00
B18_1ac6:		dey				; 88 
B18_1ac7:		.db $00				; 00
B18_1ac8:		lda $00, x		; b5 00
B18_1aca:		lda $00, x		; b5 00
B18_1acc:	.db $e2
B18_1acd:		.db $00				; 00
B18_1ace:	.db $e2
B18_1acf:		ora ($10, x)	; 01 10
B18_1ad1:		ora ($10, x)	; 01 10
B18_1ad3:		ora ($3d, x)	; 01 3d
B18_1ad5:		ora ($3d, x)	; 01 3d
B18_1ad7:	.db $02
B18_1ad8:	.db $d4
B18_1ad9:	.db $02
B18_1ada:	.db $d4
B18_1adb:		ora ($6a, x)	; 01 6a
B18_1add:		ora ($6a, x)	; 01 6a
B18_1adf:		ora ($c4, x)	; 01 c4
B18_1ae1:		ora ($c4, x)	; 01 c4
B18_1ae3:	.db $02
B18_1ae4:	.db $1f
B18_1ae5:	.db $02
B18_1ae6:	.db $1f
B18_1ae7:		lda $00			; a5 00
B18_1ae9:		sec				; 38 
B18_1aea:		sbc $01			; e5 01
B18_1aec:		bpl B18_1af2 ; 10 04

B18_1aee:		inc wPlayerStateDoubled.w, x	; fe 65 05
B18_1af1:		rts				; 60 


B18_1af2:		dec wPlayerStateDoubled.w, x	; de 65 05
B18_1af5:		rts				; 60 


B18_1af6:		ldy #$02		; a0 02
B18_1af8:		sty $17			; 84 17
B18_1afa:		iny				; c8 
B18_1afb:		lda ($02), y	; b1 02
B18_1afd:		jmp $9b08		; 4c 08 9b


B18_1b00:		lda #$01		; a9 01
B18_1b02:		sta $17			; 85 17
B18_1b04:		lda $1f			; a5 1f
B18_1b06:		and #$07		; 29 07
B18_1b08:		sta $00			; 85 00
B18_1b0a:		lda $0633, x	; bd 33 06
B18_1b0d:		and #$80		; 29 80
B18_1b0f:		beq B18_1b14 ; f0 03

B18_1b11:		jmp $9bc7		; 4c c7 9b


B18_1b14:		lda $0633, x	; bd 33 06
B18_1b17:		ora #$80		; 09 80
B18_1b19:		sta $0633, x	; 9d 33 06
B18_1b1c:		lda $00			; a5 00
B18_1b1e:		asl a			; 0a
B18_1b1f:		tay				; a8 
B18_1b20:		lda $9bd0, y	; b9 d0 9b
B18_1b23:		sta $04			; 85 04
B18_1b25:		lda $9bd1, y	; b9 d1 9b
B18_1b28:		sta $05			; 85 05
B18_1b2a:		jsr $ff30		; 20 30 ff
B18_1b2d:		ldy #$02		; a0 02
B18_1b2f:		lda ($02), y	; b1 02
B18_1b31:		bne B18_1b36 ; d0 03

B18_1b33:		jmp $9b7b		; 4c 7b 9b


B18_1b36:		lda $00			; a5 00
B18_1b38:		and #$1f		; 29 1f
B18_1b3a:		ora #$80		; 09 80
B18_1b3c:		sta $0633, x	; 9d 33 06
B18_1b3f:		lda $0633, x	; bd 33 06
B18_1b42:		and #$7f		; 29 7f
B18_1b44:		sec				; 38 
B18_1b45:		sbc wPlayerStateDoubled.w, x	; fd 65 05
B18_1b48:		beq B18_1bb3 ; f0 69

B18_1b4a:		bpl B18_1b68 ; 10 1c

B18_1b4c:		eor #$ff		; 49 ff
B18_1b4e:		clc				; 18 
B18_1b4f:		adc #$01		; 69 01
B18_1b51:		cmp #$03		; c9 03
B18_1b53:		bcc B18_1bb3 ; 90 5e

B18_1b55:		cmp #$10		; c9 10
B18_1b57:		bcs B18_1b70 ; b0 17

B18_1b59:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1b5c:		sec				; 38 
B18_1b5d:		sbc $17			; e5 17
B18_1b5f:		and #$1f		; 29 1f
B18_1b61:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1b64:		inc wEntityPhase.w, x	; fe c1 05
B18_1b67:		rts				; 60 


B18_1b68:		cmp #$03		; c9 03
B18_1b6a:		bcc B18_1bb3 ; 90 47

B18_1b6c:		cmp #$10		; c9 10
B18_1b6e:		bcs B18_1b59 ; b0 e9

B18_1b70:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1b73:		clc				; 18 
B18_1b74:		adc $17			; 65 17
B18_1b76:		and #$1f		; 29 1f
B18_1b78:		jmp $9b61		; 4c 61 9b


B18_1b7b:		lda $00			; a5 00
B18_1b7d:		lsr a			; 4a
B18_1b7e:		and #$0f		; 29 0f
B18_1b80:		ora #$80		; 09 80
B18_1b82:		sta $0633, x	; 9d 33 06
B18_1b85:		lda $0633, x	; bd 33 06
B18_1b88:		and #$7f		; 29 7f
B18_1b8a:		sec				; 38 
B18_1b8b:		sbc wPlayerStateDoubled.w, x	; fd 65 05
B18_1b8e:		beq B18_1bb3 ; f0 23

B18_1b90:		bpl B18_1ba5 ; 10 13

B18_1b92:		eor #$ff		; 49 ff
B18_1b94:		clc				; 18 
B18_1b95:		adc #$01		; 69 01
B18_1b97:		cmp #$08		; c9 08
B18_1b99:		bcs B18_1ba9 ; b0 0e

B18_1b9b:		ldy wPlayerStateDoubled.w, x	; bc 65 05
B18_1b9e:		dey				; 88 
B18_1b9f:		tya				; 98 
B18_1ba0:		and #$0f		; 29 0f
B18_1ba2:		jmp $9b61		; 4c 61 9b


B18_1ba5:		cmp #$08		; c9 08
B18_1ba7:		bcs B18_1b9b ; b0 f2

B18_1ba9:		ldy wPlayerStateDoubled.w, x	; bc 65 05
B18_1bac:		iny				; c8 
B18_1bad:		tya				; 98 
B18_1bae:		and #$0f		; 29 0f
B18_1bb0:		jmp $9b61		; 4c 61 9b


B18_1bb3:		ldy #$01		; a0 01
B18_1bb5:		lda ($02), y	; b1 02
B18_1bb7:		clc				; 18 
B18_1bb8:		adc wEntityPhase.w, x	; 7d c1 05
B18_1bbb:		sta wEntityPhase.w, x	; 9d c1 05
B18_1bbe:		lda $0633, x	; bd 33 06
B18_1bc1:		and #$7f		; 29 7f
B18_1bc3:		sta $0633, x	; 9d 33 06
B18_1bc6:		rts				; 60 


B18_1bc7:		ldy #$02		; a0 02
B18_1bc9:		lda ($02), y	; b1 02
B18_1bcb:		beq B18_1b85 ; f0 b8

B18_1bcd:		jmp $9b3f		; 4c 3f 9b


B18_1bd0:		rti				; 40 


B18_1bd1:		;removed
	.db $50 $70

B18_1bd3:		;removed
	.db $50 $a0

B18_1bd5:		bvc B18_1ba7 ; 50 d0

B18_1bd7:		;removed
	.db $50 $40

B18_1bd9:		;removed
	.db $70 $70

B18_1bdb:		bvs B18_1b7d ; 70 a0

B18_1bdd:		;removed
	.db $70 $d0

B18_1bdf:		bvs B18_1b61 ; 70 80

B18_1be1:		ldy #$80		; a0 80
B18_1be3:		bvc B18_1b8e ; 50 a9

B18_1be5:	.db $02
B18_1be6:		sta $17			; 85 17
B18_1be8:		lda $0633, x	; bd 33 06
B18_1beb:		and #$80		; 29 80
B18_1bed:		bne B18_1bc7 ; d0 d8

B18_1bef:		lda $0633, x	; bd 33 06
B18_1bf2:		ora #$80		; 09 80
B18_1bf4:		sta $0633, x	; 9d 33 06
B18_1bf7:		lda wEntityBaseX.w		; ad 38 04
B18_1bfa:		sta $04			; 85 04
B18_1bfc:		lda wEntityBaseY.w		; ad 1c 04
B18_1bff:		sta $05			; 85 05
B18_1c01:		jmp $9b2a		; 4c 2a 9b


B18_1c04:		ldy #$01		; a0 01
B18_1c06:		lda ($02), y	; b1 02
B18_1c08:		clc				; 18 
B18_1c09:		adc wEntityVertSubSpeed.w, x	; 7d 37 05
B18_1c0c:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B18_1c0f:		lda #$00		; a9 00
B18_1c11:		adc wEntityVertSpeed.w, x	; 7d 20 05
B18_1c14:		sta wEntityVertSpeed.w, x	; 9d 20 05
B18_1c17:		rts				; 60 


B18_1c18:		lda #$18		; a9 18
B18_1c1a:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1c1d:		lda #$00		; a9 00
B18_1c1f:		sta wEntityPhase.w, x	; 9d c1 05
B18_1c22:		sta $0657, x	; 9d 57 06
B18_1c25:		sta wEntityState.w, x	; 9d 70 04
B18_1c28:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B18_1c2b:		rts				; 60 


B18_1c2c:		inc wEntityPhase.w, x	; fe c1 05
B18_1c2f:		ldy #$03		; a0 03
B18_1c31:		lda ($02), y	; b1 02
B18_1c33:		cmp #$ff		; c9 ff
B18_1c35:		beq B18_1c3a ; f0 03

B18_1c37:		sta wEntityFacingLeft.w, x	; 9d a8 04
B18_1c3a:		ldy #$01		; a0 01
B18_1c3c:		lda ($02), y	; b1 02
B18_1c3e:		cmp #$ff		; c9 ff
B18_1c40:		beq B18_1c57 ; f0 15

B18_1c42:		cmp #$fe		; c9 fe
B18_1c44:		beq B18_1c50 ; f0 0a

B18_1c46:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B18_1c49:		iny				; c8 
B18_1c4a:		lda ($02), y	; b1 02
B18_1c4c:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B18_1c4f:		rts				; 60 


B18_1c50:		dec wOamSpecIdxDoubled.w, x	; de 00 04
B18_1c53:		dec wOamSpecIdxDoubled.w, x	; de 00 04
B18_1c56:		rts				; 60 


B18_1c57:		inc wOamSpecIdxDoubled.w, x	; fe 00 04
B18_1c5a:		inc wOamSpecIdxDoubled.w, x	; fe 00 04
B18_1c5d:		rts				; 60 


B18_1c5e:		lda $0633, x	; bd 33 06
B18_1c61:		bne B18_1c7c ; d0 19

B18_1c63:		lda wEntityBaseX.w		; ad 38 04
B18_1c66:		sta $04			; 85 04
B18_1c68:		lda wEntityBaseY.w		; ad 1c 04
B18_1c6b:		sta $05			; 85 05
B18_1c6d:		jsr $ff30		; 20 30 ff
B18_1c70:		lda $00			; a5 00
B18_1c72:		and #$1e		; 29 1e
B18_1c74:		sta $0645, x	; 9d 45 06
B18_1c77:		lda #$01		; a9 01
B18_1c79:		sta $0633, x	; 9d 33 06
B18_1c7c:		lda $0645, x	; bd 45 06
B18_1c7f:		cmp wPlayerStateDoubled.w, x	; dd 65 05
B18_1c82:		beq B18_1caa ; f0 26

B18_1c84:		lda $061d, x	; bd 1d 06
B18_1c87:		beq B18_1c92 ; f0 09

B18_1c89:		inc wPlayerStateDoubled.w, x	; fe 65 05
B18_1c8c:		inc wPlayerStateDoubled.w, x	; fe 65 05
B18_1c8f:		jmp $9c98		; 4c 98 9c


B18_1c92:		dec wPlayerStateDoubled.w, x	; de 65 05
B18_1c95:		dec wPlayerStateDoubled.w, x	; de 65 05
B18_1c98:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1c9b:		and #$1e		; 29 1e
B18_1c9d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1ca0:		ldy #$01		; a0 01
B18_1ca2:		lda ($02), y	; b1 02
B18_1ca4:		sta $05d8, x	; 9d d8 05
B18_1ca7:		jmp $9d66		; 4c 66 9d


B18_1caa:		inc $061d, x	; fe 1d 06
B18_1cad:		lda $061d, x	; bd 1d 06
B18_1cb0:		and #$01		; 29 01
B18_1cb2:		sta $061d, x	; 9d 1d 06
B18_1cb5:		lda #$00		; a9 00
B18_1cb7:		sta $0633, x	; 9d 33 06
B18_1cba:		ldy #$02		; a0 02
B18_1cbc:		lda ($02), y	; b1 02
B18_1cbe:		sta $05d8, x	; 9d d8 05
B18_1cc1:		jmp $9d66		; 4c 66 9d


B18_1cc4:		stx $10			; 86 10
B18_1cc6:		ldy #$01		; a0 01
B18_1cc8:		lda ($02), y	; b1 02
B18_1cca:		asl a			; 0a
B18_1ccb:		asl a			; 0a
B18_1ccc:		iny				; c8 
B18_1ccd:		clc				; 18 
B18_1cce:		adc ($02), y	; 71 02
B18_1cd0:		clc				; 18 
B18_1cd1:		adc #$03		; 69 03
B18_1cd3:		clc				; 18 
B18_1cd4:		adc $1d			; 65 1d
B18_1cd6:		sta $16			; 85 16
B18_1cd8:		iny				; c8 
B18_1cd9:		lda ($02), y	; b1 02
B18_1cdb:		sta $15			; 85 15
B18_1cdd:		jsr $9d04		; 20 04 9d
B18_1ce0:		ldx $16			; a6 16
B18_1ce2:		lda $15			; a5 15
B18_1ce4:		jsr $9cec		; 20 ec 9c
B18_1ce7:		ldx $10			; a6 10
B18_1ce9:		jmp $9d66		; 4c 66 9d


B18_1cec:		sta wVramQueue.w, x	; 9d 00 03
B18_1cef:		inx				; e8 
B18_1cf0:		rts				; 60 


B18_1cf1:		.db $00				; 00
B18_1cf2:	.db $3f
B18_1cf3:	.db $0f
B18_1cf4:		asl $26, x		; 16 26
B18_1cf6:		jsr $0b0f		; 20 0f 0b
B18_1cf9:	.db $1c
B18_1cfa:		rol a			; 2a
B18_1cfb:	.db $0f
B18_1cfc:	.db $02
B18_1cfd:		ora #$08		; 09 08
B18_1cff:	.db $0f
B18_1d00:	.db $02
B18_1d01:		and ($12), y	; 31 12
B18_1d03:	.db $ff
B18_1d04:		ldx wVramQueueNextIdxToFill			; a6 1d
B18_1d06:		lda #$01		; a9 01
B18_1d08:		jsr $9cec		; 20 ec 9c
B18_1d0b:		ldy #$00		; a0 00
B18_1d0d:		lda $9cf1, y	; b9 f1 9c
B18_1d10:		jsr $9cec		; 20 ec 9c
B18_1d13:		cmp #$ff		; c9 ff
B18_1d15:		beq B18_1d1a ; f0 03

B18_1d17:		iny				; c8 
B18_1d18:		bne B18_1d0d ; d0 f3

B18_1d1a:		stx wVramQueueNextIdxToFill			; 86 1d
B18_1d1c:		lda #$04		; a9 04
B18_1d1e:		jmp displayStaticLayoutA		; 4c e9 ec


B18_1d21:		lda wEntityState.w, x	; bd 70 04
B18_1d24:		ora #$88		; 09 88
B18_1d26:		sta wEntityState.w, x	; 9d 70 04
B18_1d29:		jmp $9d66		; 4c 66 9d


B18_1d2c:		ldy #$01		; a0 01
B18_1d2e:		lda ($02), y	; b1 02
B18_1d30:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B18_1d33:		jmp $9d66		; 4c 66 9d


B18_1d36:		ldy #$01		; a0 01
B18_1d38:		lda ($02), y	; b1 02
B18_1d3a:		sta $0633, x	; 9d 33 06
B18_1d3d:		jmp $9d66		; 4c 66 9d


B18_1d40:		dec $0633, x	; de 33 06
B18_1d43:		beq B18_1d51 ; f0 0c

B18_1d45:		ldy #$01		; a0 01
B18_1d47:		lda ($02), y	; b1 02
B18_1d49:		clc				; 18 
B18_1d4a:		adc wEntityPhase.w, x	; 7d c1 05
B18_1d4d:		sta wEntityPhase.w, x	; 9d c1 05
B18_1d50:		rts				; 60 


B18_1d51:		jmp $9d66		; 4c 66 9d


B18_1d54:		ldy #$01		; a0 01
B18_1d56:		lda ($02), y	; b1 02
B18_1d58:		jsr playSound		; 20 5f e2
B18_1d5b:		jmp $9d66		; 4c 66 9d


B18_1d5e:		lda wEntityState.w, x	; bd 70 04
B18_1d61:		and #$77		; 29 77
B18_1d63:		sta wEntityState.w, x	; 9d 70 04
B18_1d66:		inc wEntityPhase.w, x	; fe c1 05
B18_1d69:		rts				; 60 


B18_1d6a:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1d6d:		clc				; 18 
B18_1d6e:		adc #$08		; 69 08
B18_1d70:		and #$0f		; 29 0f
B18_1d72:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1d75:		jmp $9d66		; 4c 66 9d


B18_1d78:		lda wEntityAI_idx.w, x	; bd ef 05
B18_1d7b:		sta $0645, x	; 9d 45 06
B18_1d7e:		inc wEntityPhase.w, x	; fe c1 05
B18_1d81:		lda wEntityPhase.w, x	; bd c1 05
B18_1d84:		sta $0633, x	; 9d 33 06
B18_1d87:		lda #$00		; a9 00
B18_1d89:		sta wEntityPhase.w, x	; 9d c1 05
B18_1d8c:		ldy #$01		; a0 01
B18_1d8e:		lda ($02), y	; b1 02
B18_1d90:		and #$80		; 29 80
B18_1d92:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1d95:		rts				; 60 


B18_1d96:		lda $0645, x	; bd 45 06
B18_1d99:		sta wEntityAI_idx.w, x	; 9d ef 05
B18_1d9c:		lda $0633, x	; bd 33 06
B18_1d9f:		sta wEntityPhase.w, x	; 9d c1 05
B18_1da2:		rts				; 60 


B18_1da3:		lda wEntityState.w, x	; bd 70 04
B18_1da6:		and #$bf		; 29 bf
B18_1da8:		sta wEntityState.w, x	; 9d 70 04
B18_1dab:		jmp $9d66		; 4c 66 9d


B18_1dae:		lda wEntityState.w, x	; bd 70 04
B18_1db1:		ora #$40		; 09 40
B18_1db3:		sta wEntityState.w, x	; 9d 70 04
B18_1db6:		jmp $9d66		; 4c 66 9d


B18_1db9:		ldy #$01		; a0 01
B18_1dbb:		lda ($02), y	; b1 02
B18_1dbd:		jsr $8766		; 20 66 87
B18_1dc0:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_1dc3:		sta wEntityFacingLeft.w, y	; 99 a8 04
B18_1dc6:		lda wPlayerStateDoubled.w, x	; bd 65 05
B18_1dc9:		sta wPlayerStateDoubled.w, y	; 99 65 05
B18_1dcc:		lda #$00		; a9 00
B18_1dce:		sta $0606, y	; 99 06 06
B18_1dd1:		sta wEntityPhase.w, y	; 99 c1 05
B18_1dd4:		jmp $9d66		; 4c 66 9d


B18_1dd7:		ldy #$01		; a0 01
B18_1dd9:		lda ($02), y	; b1 02
B18_1ddb:		clc				; 18 
B18_1ddc:		adc wEntityBaseX.w, x	; 7d 38 04
B18_1ddf:		sta wEntityBaseX.w, x	; 9d 38 04
B18_1de2:		iny				; c8 
B18_1de3:		lda ($02), y	; b1 02
B18_1de5:		clc				; 18 
B18_1de6:		adc wEntityBaseY.w, x	; 7d 1c 04
B18_1de9:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_1dec:		jmp $9d66		; 4c 66 9d


B18_1def:		lda wEntityBaseX.w		; ad 38 04
B18_1df2:		sta $04			; 85 04
B18_1df4:		lda wEntityBaseY.w		; ad 1c 04
B18_1df7:		sta $05			; 85 05
B18_1df9:		jsr $ff30		; 20 30 ff
B18_1dfc:		lda $00			; a5 00
B18_1dfe:		and #$10		; 29 10
B18_1e00:		beq B18_1e04 ; f0 02

B18_1e02:		lda #$01		; a9 01
B18_1e04:		cmp wEntityFacingLeft.w, x	; dd a8 04
B18_1e07:		beq B18_1e12 ; f0 09

B18_1e09:		lda $00			; a5 00
B18_1e0b:		clc				; 18 
B18_1e0c:		adc #$10		; 69 10
B18_1e0e:		and #$1f		; 29 1f
B18_1e10:		sta $00			; 85 00
B18_1e12:		lda $00			; a5 00
B18_1e14:		and #$10		; 29 10
B18_1e16:		beq B18_1e2a ; f0 12

B18_1e18:		lda $00			; a5 00
B18_1e1a:		cmp #$15		; c9 15
B18_1e1c:		bcs B18_1e22 ; b0 04

B18_1e1e:		lda #$15		; a9 15
B18_1e20:		bne B18_1e3a ; d0 18

B18_1e22:		cmp #$1c		; c9 1c
B18_1e24:		bcc B18_1e3a ; 90 14

B18_1e26:		lda #$1b		; a9 1b
B18_1e28:		bne B18_1e3a ; d0 10

B18_1e2a:		lda $00			; a5 00
B18_1e2c:		cmp #$05		; c9 05
B18_1e2e:		bcs B18_1e34 ; b0 04

B18_1e30:		lda #$05		; a9 05
B18_1e32:		bne B18_1e3a ; d0 06

B18_1e34:		cmp #$0c		; c9 0c
B18_1e36:		bcc B18_1e3a ; 90 02

B18_1e38:		lda #$0b		; a9 0b
B18_1e3a:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B18_1e3d:		jmp $9d66		; 4c 66 9d


B18_1e40:		lda #$40		; a9 40
B18_1e42:		sta wEntityState.w, x	; 9d 70 04
B18_1e45:		jmp $9d66		; 4c 66 9d


B18_1e48:		lda wEntityBaseY.w		; ad 1c 04
B18_1e4b:		sta $05			; 85 05
B18_1e4d:		lda wEntityBaseX.w		; ad 38 04
B18_1e50:		sta $04			; 85 04
B18_1e52:		jsr $ff30		; 20 30 ff
B18_1e55:		lda $00			; a5 00
B18_1e57:		sta $06			; 85 06
B18_1e59:		lsr a			; 4a
B18_1e5a:		and #$0f		; 29 0f
B18_1e5c:		sta $05			; 85 05
B18_1e5e:		ldy #$01		; a0 01
B18_1e60:		lda ($02), y	; b1 02
B18_1e62:		sta $00			; 85 00
B18_1e64:		iny				; c8 
B18_1e65:		lda ($02), y	; b1 02
B18_1e67:		sta $01			; 85 01
B18_1e69:		iny				; c8 
B18_1e6a:		lda ($02), y	; b1 02
B18_1e6c:		sta $02			; 85 02
B18_1e6e:		lda $00			; a5 00
B18_1e70:		jsr $8766		; 20 66 87
B18_1e73:		bcs B18_1e78 ; b0 03

B18_1e75:		jmp $9eea		; 4c ea 9e


B18_1e78:		sty $04			; 84 04
B18_1e7a:		lda $02			; a5 02
B18_1e7c:		beq B18_1eb0 ; f0 32

B18_1e7e:		cmp #$01		; c9 01
B18_1e80:		bne B18_1e85 ; d0 03

B18_1e82:		jmp $9ee3		; 4c e3 9e


B18_1e85:		cmp #$04		; c9 04
B18_1e87:		beq B18_1ecc ; f0 43

B18_1e89:		lda #$00		; a9 00
B18_1e8b:		sta wEntityHorizSpeed.w, y	; 99 f2 04
B18_1e8e:		sta wEntityHorizSubSpeed.w, y	; 99 09 05
B18_1e91:		sta wEntityVertSpeed.w, y	; 99 20 05
B18_1e94:		sta wEntityVertSubSpeed.w, y	; 99 37 05
B18_1e97:		lda $01			; a5 01
B18_1e99:		sec				; 38 
B18_1e9a:		sbc #$01		; e9 01
B18_1e9c:		sta $0606, y	; 99 06 06
B18_1e9f:		lda $02			; a5 02
B18_1ea1:		cmp #$03		; c9 03
B18_1ea3:		beq B18_1ea8 ; f0 03

B18_1ea5:		jmp $9ee3		; 4c e3 9e


B18_1ea8:		lda $05			; a5 05
B18_1eaa:		sta wPlayerStateDoubled.w, y	; 99 65 05
B18_1ead:		jmp $9ee3		; 4c e3 9e


B18_1eb0:		ldy $01			; a4 01
B18_1eb2:		dey				; 88 
B18_1eb3:		lda $9eed, y	; b9 ed 9e
B18_1eb6:		clc				; 18 
B18_1eb7:		adc $05			; 65 05
B18_1eb9:		and #$0f		; 29 0f
B18_1ebb:		ldy $04			; a4 04
B18_1ebd:		sta wPlayerStateDoubled.w, y	; 99 65 05
B18_1ec0:		and #$08		; 29 08
B18_1ec2:		beq B18_1ec6 ; f0 02

B18_1ec4:		lda #$01		; a9 01
B18_1ec6:		sta wEntityFacingLeft.w, y	; 99 a8 04
B18_1ec9:		jmp $9ee3		; 4c e3 9e


B18_1ecc:		ldy $04			; a4 04
B18_1ece:		lda #$00		; a9 00
B18_1ed0:		sta wEntityPhase.w, y	; 99 c1 05
B18_1ed3:		sta wOamSpecIdxDoubled.w, y	; 99 00 04
B18_1ed6:		sta wEntityState.w, y	; 99 70 04
B18_1ed9:		lda $06			; a5 06
B18_1edb:		sta wPlayerStateDoubled.w, y	; 99 65 05
B18_1ede:		lda #$80		; a9 80
B18_1ee0:		sta wEntityAI_idx.w, y	; 99 ef 05
B18_1ee3:		dec $01			; c6 01
B18_1ee5:		beq B18_1eea ; f0 03

B18_1ee7:		jmp $9e6e		; 4c 6e 9e


B18_1eea:		jmp $9d66		; 4c 66 9d


B18_1eed:	.db $ff
B18_1eee:		.db $00				; 00
B18_1eef:		ora ($03, x)	; 01 03
B18_1ef1:	.db $03
B18_1ef2:	.db $03
B18_1ef3:	.db $03
B18_1ef4:	.db $04
B18_1ef5:	.db $04
B18_1ef6:	.db $04
B18_1ef7:	.db $04
B18_1ef8:	.db $0c
B18_1ef9:	.db $0c
B18_1efa:	.db $0c
B18_1efb:	.db $0c
B18_1efc:		ora $0d0d		; 0d 0d 0d
B18_1eff:		ora $18a9		; 0d a9 18
B18_1f02:		jsr $8766		; 20 66 87
B18_1f05:		bcc B18_1f55 ; 90 4e

B18_1f07:		lda wEntityBaseY.w, y	; b9 1c 04
B18_1f0a:		sec				; 38 
B18_1f0b:		sbc #$20		; e9 20
B18_1f0d:		sta wEntityBaseY.w, y	; 99 1c 04
B18_1f10:		lda wEntityBaseX.w		; ad 38 04
B18_1f13:		sec				; 38 
B18_1f14:		sbc wEntityBaseX.w, y	; f9 38 04
B18_1f17:		bcs B18_1f1e ; b0 05

B18_1f19:		eor #$ff		; 49 ff
B18_1f1b:		clc				; 18 
B18_1f1c:		adc #$01		; 69 01
B18_1f1e:		and #$f0		; 29 f0
B18_1f20:		lsr a			; 4a
B18_1f21:		lsr a			; 4a
B18_1f22:		lsr a			; 4a
B18_1f23:		sty $05			; 84 05
B18_1f25:		tay				; a8 
B18_1f26:		lda $9f56, y	; b9 56 9f
B18_1f29:		sta $00			; 85 00
B18_1f2b:		lda $9f57, y	; b9 57 9f
B18_1f2e:		sta $01			; 85 01
B18_1f30:		lda wEntityFacingLeft.w, x	; bd a8 04
B18_1f33:		beq B18_1f46 ; f0 11

B18_1f35:		lda $00			; a5 00
B18_1f37:		eor #$ff		; 49 ff
B18_1f39:		clc				; 18 
B18_1f3a:		adc #$01		; 69 01
B18_1f3c:		sta $00			; 85 00
B18_1f3e:		lda $01			; a5 01
B18_1f40:		eor #$ff		; 49 ff
B18_1f42:		adc #$00		; 69 00
B18_1f44:		sta $01			; 85 01
B18_1f46:		ldy $05			; a4 05
B18_1f48:		lda $00			; a5 00
B18_1f4a:		sta wEntityHorizSubSpeed.w, y	; 99 09 05
B18_1f4d:		lda $01			; a5 01
B18_1f4f:		sta wEntityHorizSpeed.w, y	; 99 f2 04
B18_1f52:		inc wEntityPhase.w, x	; fe c1 05
B18_1f55:		rts				; 60 


B18_1f56:		rti				; 40 


B18_1f57:		.db $00				; 00
B18_1f58:		bvc B18_1f5a ; 50 00

B18_1f5a:		ldy #$00		; a0 00
B18_1f5c:		beq B18_1f5e ; f0 00

B18_1f5e:		rti				; 40 


B18_1f5f:		ora ($90, x)	; 01 90
B18_1f61:		ora ($e0, x)	; 01 e0
B18_1f63:		ora ($30, x)	; 01 30
B18_1f65:	.db $02
B18_1f66:	.db $80
B18_1f67:	.db $02
B18_1f68:		;removed
	.db $d0 $02

B18_1f6a:		jsr $7003		; 20 03 70
B18_1f6d:	.db $03
B18_1f6e:		cpy #$03		; c0 03
B18_1f70:		bpl B18_1f76 ; 10 04

B18_1f72:		rts				; 60 


B18_1f73:	.db $04
B18_1f74:		bcs B18_1f7a ; b0 04

B18_1f76:		lda #$16		; a9 16
B18_1f78:		sta wBaseIRQFuncIdx			; 85 3f
B18_1f7a:		lda $05d8, x	; bd d8 05
B18_1f7d:		bne B18_1f87 ; d0 08

B18_1f7f:		inc wEntityPhase.w, x	; fe c1 05
B18_1f82:		lda #$01		; a9 01
B18_1f84:		sta wBaseIRQFuncIdx			; 85 3f
B18_1f86:		rts				; 60 


B18_1f87:		ldy #$01		; a0 01
B18_1f89:		lda ($02), y	; b1 02
B18_1f8b:		bne B18_1f9c ; d0 0f

B18_1f8d:		lda $05d8, x	; bd d8 05
B18_1f90:		and #$0f		; 29 0f
B18_1f92:		tay				; a8 
B18_1f93:		lda $9fac, y	; b9 ac 9f
B18_1f96:		sta $07ed		; 8d ed 07
B18_1f99:		jmp $9fa8		; 4c a8 9f


B18_1f9c:		lda $05d8, x	; bd d8 05
B18_1f9f:		and #$07		; 29 07
B18_1fa1:		tay				; a8 
B18_1fa2:		lda $9fbc, y	; b9 bc 9f
B18_1fa5:		sta $07ed		; 8d ed 07
B18_1fa8:		dec $05d8, x	; de d8 05
B18_1fab:		rts				; 60 


B18_1fac:	.db $02
B18_1fad:	.db $03
B18_1fae:		ora ($07, x)	; 01 07
B18_1fb0:	.db $03
B18_1fb1:		asl $01			; 06 01
B18_1fb3:		ora #$00		; 09 00
B18_1fb5:		ora $04			; 05 04
B18_1fb7:		ora ($08, x)	; 01 08
B18_1fb9:	.db $02
B18_1fba:		asl $00			; 06 00
B18_1fbc:		.db $00				; 00
B18_1fbd:	.db $03
B18_1fbe:		ora ($02, x)	; 01 02
B18_1fc0:	.db $02
B18_1fc1:		ora ($03, x)	; 01 03
B18_1fc3:		.db $00				; 00
B18_1fc4:		jsr $a13b		; 20 3b a1
B18_1fc7:		lda $1f			; a5 1f
B18_1fc9:		asl a			; 0a
B18_1fca:		asl a			; 0a
B18_1fcb:		asl a			; 0a
B18_1fcc:		asl a			; 0a
B18_1fcd:		cmp #$d0		; c9 d0
B18_1fcf:		bcc B18_1fd4 ; 90 03

B18_1fd1:		clc				; 18 
B18_1fd2:		adc #$80		; 69 80
B18_1fd4:		sta wEntityBaseX.w, x	; 9d 38 04
B18_1fd7:		lda #$40		; a9 40
B18_1fd9:		sta wEntityBaseY.w, x	; 9d 1c 04
B18_1fdc:		lda #$00		; a9 00
B18_1fde:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B18_1fe1:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B18_1fe4:		inc wEntityPhase.w, x	; fe c1 05
B18_1fe7:		jsr $a13b		; 20 3b a1
B18_1fea:		bne B18_1fee ; d0 02

B18_1fec:		lda #$01		; a9 01
B18_1fee:		sta $05d8, x	; 9d d8 05
B18_1ff1:		lda #$88		; a9 88
B18_1ff3:		sta wEntityState.w, x	; 9d 70 04
B18_1ff6:		rts				; 60 


B18_1ff7:		inc wEntityPhase.w, x	; fe c1 05
B18_1ffa:		ldy #$01		; a0 01
B18_1ffc:		lda ($02), y	; b1 02
		.db $85
		.db $00
