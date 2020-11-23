B29_0000:		sta $04f2		; 8d f2 04
B29_0003:		sta $0509		; 8d 09 05
B29_0006:		lda $041c		; ad 1c 04
B29_0009:		sta $06			; 85 06
B29_000b:		jsr $a0d1		; 20 d1 a0
B29_000e:		lda $05c1		; ad c1 05
B29_0011:		beq B29_006a ; f0 57

B29_0013:		ldx #$0c		; a2 0c
B29_0015:		lda #$fb		; a9 fb
B29_0017:		jsr func_1f_1cdd		; 20 dd fc
B29_001a:		bne B29_003e ; d0 22

B29_001c:		ldx #$0c		; a2 0c
B29_001e:		lda #$05		; a9 05
B29_0020:		jsr func_1f_1cdd		; 20 dd fc
B29_0023:		bne B29_003e ; d0 19

B29_0025:		lda $8b			; a5 8b
B29_0027:		cmp #$01		; c9 01
B29_0029:		beq B29_0036 ; f0 0b

B29_002b:		cmp #$05		; c9 05
B29_002d:		beq B29_0082 ; f0 53

B29_002f:		cmp #$06		; c9 06
B29_0031:		beq B29_0082 ; f0 4f

B29_0033:		jmp $a064		; 4c 64 a0


B29_0036:		ldx $91			; a6 91
B29_0038:		jsr $fe9c		; 20 9c fe
B29_003b:		jmp $a05d		; 4c 5d a0


B29_003e:		lda $05d8		; ad d8 05
B29_0041:		bne B29_0051 ; d0 0e

B29_0043:		lda #$0b		; a9 0b
B29_0045:		jsr playSound		; 20 5f e2
B29_0048:		lda #$0c		; a9 0c
B29_004a:		sta $b9			; 85 b9
B29_004c:		lda #$0e		; a9 0e
B29_004e:		sta $0400		; 8d 00 04
B29_0051:		jsr $8a02		; 20 02 8a
B29_0054:		lda $041c		; ad 1c 04
B29_0057:		clc				; 18 
B29_0058:		adc #$04		; 69 04
B29_005a:		sta $041c		; 8d 1c 04
B29_005d:		lda #$02		; a9 02
B29_005f:		sta $0565		; 8d 65 05
B29_0062:		bne B29_0067 ; d0 03

B29_0064:		jsr $8712		; 20 12 87
B29_0067:		jmp $873a		; 4c 3a 87


B29_006a:		ldx #$00		; a2 00
B29_006c:		lda #$05		; a9 05
B29_006e:		jsr $840b		; 20 0b 84
B29_0071:		bne B29_007c ; d0 09

B29_0073:		ldx #$00		; a2 00
B29_0075:		lda #$fb		; a9 fb
B29_0077:		jsr $840b		; 20 0b 84
B29_007a:		beq B29_0064 ; f0 e8

B29_007c:		jsr $a08d		; 20 8d a0
B29_007f:		jmp $a064		; 4c 64 a0


B29_0082:		lda $06			; a5 06
B29_0084:		clc				; 18 
B29_0085:		adc $91			; 65 91
B29_0087:		sta $041c		; 8d 1c 04
B29_008a:		jmp $a05d		; 4c 5d a0


B29_008d:		lda #$0c		; a9 0c
B29_008f:		sta $0565		; 8d 65 05
B29_0092:		lda $cf			; a5 cf
B29_0094:		cmp #$01		; c9 01
B29_0096:		beq B29_009c ; f0 04

B29_0098:		cmp #$06		; c9 06
B29_009a:		bne B29_00a0 ; d0 04

B29_009c:		lda #$10		; a9 10
B29_009e:		sta $af			; 85 af
B29_00a0:		lda #$01		; a9 01
B29_00a2:		sta $05c1		; 8d c1 05
B29_00a5:		lda #$38		; a9 38
B29_00a7:		sta $05d8		; 8d d8 05
B29_00aa:		lda #$00		; a9 00
B29_00ac:		sta $05ef		; 8d ef 05
B29_00af:		sta $0606		; 8d 06 06
B29_00b2:		sta $9d			; 85 9d
B29_00b4:		sta $b9			; 85 b9
B29_00b6:		lda #$01		; a9 01
B29_00b8:		sta $061d		; 8d 1d 06
B29_00bb:		lda $04a8		; ad a8 04
B29_00be:		bne B29_00c6 ; d0 06

B29_00c0:		lda #$00		; a9 00
B29_00c2:		ldy #$20		; a0 20
B29_00c4:		bne B29_00ca ; d0 04

B29_00c6:		lda #$ff		; a9 ff
B29_00c8:		ldy #$e0		; a0 e0
B29_00ca:		sta $04f2		; 8d f2 04
B29_00cd:		sty $0509		; 8c 09 05
B29_00d0:		rts				; 60 


B29_00d1:		lda $0565		; ad 65 05
B29_00d4:		cmp #$08		; c9 08
B29_00d6:		bne B29_00e5 ; d0 0d

B29_00d8:		lda $b9			; a5 b9
B29_00da:		beq B29_00e5 ; f0 09

B29_00dc:		dec $b9			; c6 b9
B29_00de:		bne B29_00e5 ; d0 05

B29_00e0:		lda #$16		; a9 16
B29_00e2:		sta $0400		; 8d 00 04
B29_00e5:		lda $05c1		; ad c1 05
B29_00e8:		bne B29_00f6 ; d0 0c

B29_00ea:		lda $9d			; a5 9d
B29_00ec:		bne B29_0100 ; d0 12

B29_00ee:		lda $28			; a5 28
B29_00f0:		and #$80		; 29 80
B29_00f2:		bne B29_0100 ; d0 0c

B29_00f4:		inc $9d			; e6 9d
B29_00f6:		lda #$02		; a9 02
B29_00f8:		sta $061d		; 8d 1d 06
B29_00fb:		lda #$00		; a9 00
B29_00fd:		sta $0606		; 8d 06 06
B29_0100:		lda $041c		; ad 1c 04
B29_0103:		cmp #$08		; c9 08
B29_0105:		bcs B29_010f ; b0 08

B29_0107:		lda $05c1		; ad c1 05
B29_010a:		bne B29_010f ; d0 03

B29_010c:		jsr $a0a0		; 20 a0 a0
B29_010f:		jmp $a112		; 4c 12 a1


B29_0112:		lda #$00		; a9 00
B29_0114:		sta $0537		; 8d 37 05
B29_0117:		sta $04db		; 8d db 04
B29_011a:		ldy $05d8		; ac d8 05
B29_011d:		lda $05c1		; ad c1 05
B29_0120:		bne B29_0159 ; d0 37

B29_0122:		lda $9e58, y	; b9 58 9e
B29_0125:		cmp #$81		; c9 81
B29_0127:		beq B29_0146 ; f0 1d

B29_0129:		sta $0520		; 8d 20 05
B29_012c:		clc				; 18 
B29_012d:		lda $05ef		; ad ef 05
B29_0130:		adc $0606		; 6d 06 06
B29_0133:		sta $05ef		; 8d ef 05
B29_0136:		lda $05d8		; ad d8 05
B29_0139:		adc $061d		; 6d 1d 06
B29_013c:		cmp #$39		; c9 39
B29_013e:		bcc B29_0142 ; 90 02

B29_0140:		lda #$39		; a9 39
B29_0142:		sta $05d8		; 8d d8 05
B29_0145:		rts				; 60 


B29_0146:		lda #$00		; a9 00
B29_0148:		sta $0520		; 8d 20 05
B29_014b:		ldy #$01		; a0 01
B29_014d:		sty $05c1		; 8c c1 05
B29_0150:		dec $05d8		; ce d8 05
B29_0153:		lda #$00		; a9 00
B29_0155:		sta $05ef		; 8d ef 05
B29_0158:		rts				; 60 


B29_0159:		lda $9e58, y	; b9 58 9e
B29_015c:		cmp #$80		; c9 80
B29_015e:		beq B29_0183 ; f0 23

B29_0160:		sec				; 38 
B29_0161:		lda $05ef		; ad ef 05
B29_0164:		sbc $0606		; ed06 06
B29_0167:		sta $05ef		; 8d ef 05
B29_016a:		lda $05d8		; ad d8 05
B29_016d:		sbc $061d		; ed1d 06
B29_0170:		bpl B29_0174 ; 10 02

B29_0172:		lda #$00		; a9 00
B29_0174:		sta $05d8		; 8d d8 05
B29_0177:		lda $9e58, y	; b9 58 9e
B29_017a:		eor #$ff		; 49 ff
B29_017c:		clc				; 18 
B29_017d:		adc #$01		; 69 01
B29_017f:		sta $0520		; 8d 20 05
B29_0182:		rts				; 60 


B29_0183:		lda $9e59, y	; b9 59 9e
B29_0186:		bne B29_017a ; d0 f2

B29_0188:		dec $05d8		; ce d8 05
B29_018b:		beq B29_01b5 ; f0 28

B29_018d:		ldx #$f8		; a2 f8
B29_018f:		lda #$00		; a9 00
B29_0191:		jsr $840b		; 20 0b 84
B29_0194:		bne B29_01b5 ; d0 1f

B29_0196:		lda $041c		; ad 1c 04
B29_0199:		cmp #$08		; c9 08
B29_019b:		bcc B29_01b0 ; 90 13

B29_019d:		lda #$08		; a9 08
B29_019f:		ldx $04a8		; ae a8 04
B29_01a2:		beq B29_01a6 ; f0 02

B29_01a4:		lda #$f7		; a9 f7
B29_01a6:		ldx #$00		; a2 00
B29_01a8:		jsr $840b		; 20 0b 84
B29_01ab:		beq B29_01c5 ; f0 18

B29_01ad:		jmp $8712		; 4c 12 87


B29_01b0:		lda #$08		; a9 08
B29_01b2:		sta $041c		; 8d 1c 04
B29_01b5:		lda #$00		; a9 00
B29_01b7:		sta $05d8		; 8d d8 05
B29_01ba:		lda #$18		; a9 18
B29_01bc:		sta $0400		; 8d 00 04
B29_01bf:		lda #$30		; a9 30
B29_01c1:		sta $0565		; 8d 65 05
B29_01c4:		rts				; 60 


B29_01c5:		lda #$06		; a9 06
B29_01c7:		sta $0565		; 8d 65 05
B29_01ca:		rts				; 60 


B29_01cb:		lda #$00		; a9 00
B29_01cd:		sta $05c1		; 8d c1 05
B29_01d0:		lda $0438		; ad 38 04
B29_01d3:		clc				; 18 
B29_01d4:		adc #$08		; 69 08
B29_01d6:		jmp $a1e4		; 4c e4 a1


B29_01d9:		lda #$01		; a9 01
B29_01db:		sta $05c1		; 8d c1 05
B29_01de:		lda $0438		; ad 38 04
B29_01e1:		sec				; 38 
B29_01e2:		sbc #$08		; e9 08
B29_01e4:		sta $05d8		; 8d d8 05
B29_01e7:		jsr $a53b		; 20 3b a5
B29_01ea:		lda #$3c		; a9 3c
B29_01ec:		sta $0565		; 8d 65 05
B29_01ef:		ldy #$00		; a0 00
B29_01f1:		sty $0593		; 8c 93 05
B29_01f4:		iny				; c8 
B29_01f5:		sty $057c		; 8c 7c 05
B29_01f8:		rts				; 60 


B29_01f9:		lda #$00		; a9 00
B29_01fb:		sta $05c1		; 8d c1 05
B29_01fe:		lda $0438		; ad 38 04
B29_0201:		clc				; 18 
B29_0202:		adc #$08		; 69 08
B29_0204:		jmp $a212		; 4c 12 a2


B29_0207:		lda #$01		; a9 01
B29_0209:		sta $05c1		; 8d c1 05
B29_020c:		lda $0438		; ad 38 04
B29_020f:		sec				; 38 
B29_0210:		sbc #$08		; e9 08
B29_0212:		sta $05d8		; 8d d8 05
B29_0215:		clc				; 18 
B29_0216:		lda #$01		; a9 01
B29_0218:		adc $041c		; 6d 1c 04
B29_021b:		sta $041c		; 8d 1c 04
B29_021e:		jsr $a535		; 20 35 a5
B29_0221:		lda #$38		; a9 38
B29_0223:		jmp $a1ec		; 4c ec a1


B29_0226:		jsr $baf2		; 20 f2 ba
B29_0229:		bcs B29_022c ; b0 01

B29_022b:		rts				; 60 


B29_022c:		ldy #$00		; a0 00
B29_022e:		sty $0593		; 8c 93 05
B29_0231:		iny				; c8 
B29_0232:		sty $057c		; 8c 7c 05
B29_0235:		lda #$30		; a9 30
B29_0237:		sta $0565		; 8d 65 05
B29_023a:		rts				; 60 


B29_023b:		lda $26			; a5 26
B29_023d:		and #$40		; 29 40
B29_023f:		beq B29_024b ; f0 0a

B29_0241:		jsr $b9f5		; 20 f5 b9
B29_0244:		bcc B29_024b ; 90 05

B29_0246:		lda #$46		; a9 46
B29_0248:		jmp $94aa		; 4c aa 94


B29_024b:		lda $26			; a5 26
B29_024d:		and #$80		; 29 80
B29_024f:		beq B29_026b ; f0 1a

B29_0251:		lda #$44		; a9 44
B29_0253:		sta $0565		; 8d 65 05
B29_0256:		lda #$08		; a9 08
B29_0258:		sta $05d8		; 8d d8 05
B29_025b:		lda #$1a		; a9 1a
B29_025d:		sta $0400		; 8d 00 04
B29_0260:		lda #$fe		; a9 fe
B29_0262:		sta $0520		; 8d 20 05
B29_0265:		lda #$00		; a9 00
B29_0267:		sta $0537		; 8d 37 05
B29_026a:		rts				; 60 


B29_026b:		lda $05d8		; ad d8 05
B29_026e:		beq B29_0274 ; f0 04

B29_0270:		dec $05d8		; ce d8 05
B29_0273:		rts				; 60 


B29_0274:		lda $05c1		; ad c1 05
B29_0277:		beq B29_02bd ; f0 44

B29_0279:		lda $28			; a5 28
B29_027b:		and #$02		; 29 02
B29_027d:		beq B29_02a0 ; f0 21

B29_027f:		ldx #$00		; a2 00
B29_0281:		lda #$f7		; a9 f7
B29_0283:		jsr $840b		; 20 0b 84
B29_0286:		beq B29_02ba ; f0 32

B29_0288:		ldx #$01		; a2 01
B29_028a:		lda #$f7		; a9 f7
B29_028c:		jsr $840b		; 20 0b 84
B29_028f:		bne B29_0294 ; d0 03

B29_0291:		jmp $a207		; 4c 07 a2


B29_0294:		ldx #$ff		; a2 ff
B29_0296:		lda #$f7		; a9 f7
B29_0298:		jsr $840b		; 20 0b 84
B29_029b:		bne B29_02e4 ; d0 47

B29_029d:		jmp $a1d9		; 4c d9 a1


B29_02a0:		lda $28			; a5 28
B29_02a2:		and #$08		; 29 08
B29_02a4:		beq B29_02ba ; f0 14

B29_02a6:		ldx #$f8		; a2 f8
B29_02a8:		lda #$00		; a9 00
B29_02aa:		jsr func_1f_1cdd		; 20 dd fc
B29_02ad:		beq B29_02ba ; f0 0b

B29_02af:		lda $04a8		; ad a8 04
B29_02b2:		eor #$01		; 49 01
B29_02b4:		sta $04a8		; 8d a8 04
B29_02b7:		jmp $9f0b		; 4c 0b 9f


B29_02ba:		jmp $a08d		; 4c 8d a0


B29_02bd:		lda $28			; a5 28
B29_02bf:		and #$01		; 29 01
B29_02c1:		beq B29_02a0 ; f0 dd

B29_02c3:		ldx #$00		; a2 00
B29_02c5:		lda #$08		; a9 08
B29_02c7:		jsr $840b		; 20 0b 84
B29_02ca:		beq B29_02ba ; f0 ee

B29_02cc:		ldx #$01		; a2 01
B29_02ce:		lda #$08		; a9 08
B29_02d0:		jsr $840b		; 20 0b 84
B29_02d3:		bne B29_02d8 ; d0 03

B29_02d5:		jmp $a1f9		; 4c f9 a1


B29_02d8:		ldx #$ff		; a2 ff
B29_02da:		lda #$08		; a9 08
B29_02dc:		jsr $840b		; 20 0b 84
B29_02df:		bne B29_02e4 ; d0 03

B29_02e1:		jmp $a1cb		; 4c cb a1


B29_02e4:		lda $28			; a5 28
B29_02e6:		and #$04		; 29 04
B29_02e8:		bne B29_02f1 ; d0 07

B29_02ea:		lda $28			; a5 28
B29_02ec:		and #$08		; 29 08
B29_02ee:		bne B29_030f ; d0 1f

B29_02f0:		rts				; 60 


B29_02f1:		lda #$0d		; a9 0d
B29_02f3:		sta $05aa		; 8d aa 05
B29_02f6:		ldx #$0c		; a2 0c
B29_02f8:		lda #$00		; a9 00
B29_02fa:		jsr $840b		; 20 0b 84
B29_02fd:		bne B29_030c ; d0 0d

B29_02ff:		lda #$01		; a9 01
B29_0301:		sta $0520		; 8d 20 05
B29_0304:		lda #$00		; a9 00
B29_0306:		sta $0537		; 8d 37 05
B29_0309:		jsr $8712		; 20 12 87
B29_030c:		jmp $ef73		; 4c 73 ef


B29_030f:		lda #$01		; a9 01
B29_0311:		sta $05aa		; 8d aa 05
B29_0314:		lda $041c		; ad 1c 04
B29_0317:		cmp #$08		; c9 08
B29_0319:		bcs B29_0322 ; b0 07

B29_031b:		lda #$08		; a9 08
B29_031d:		sta $041c		; 8d 1c 04
B29_0320:		bne B29_030c ; d0 ea

B29_0322:		ldx #$f8		; a2 f8
B29_0324:		lda #$00		; a9 00
B29_0326:		jsr $840b		; 20 0b 84
B29_0329:		bne B29_030c ; d0 e1

B29_032b:		lda #$ff		; a9 ff
B29_032d:		sta $0520		; 8d 20 05
B29_0330:		jmp $a304		; 4c 04 a3


B29_0333:		jsr $baf2		; 20 f2 ba
B29_0336:		bcs B29_0339 ; b0 01

B29_0338:		rts				; 60 


B29_0339:		lda #$02		; a9 02
B29_033b:		jsr $ef57		; 20 57 ef
B29_033e:		lda #$32		; a9 32
B29_0340:		sta $0565		; 8d 65 05
B29_0343:		rts				; 60 


B29_0344:		jsr $a08d		; 20 8d a0
B29_0347:		sec				; 38 
B29_0348:		rts				; 60 


B29_0349:		ldx #$f8		; a2 f8
B29_034b:		lda #$00		; a9 00
B29_034d:		jsr $840b		; 20 0b 84
B29_0350:		beq B29_0344 ; f0 f2

B29_0352:		cmp #$05		; c9 05
B29_0354:		beq B29_035c ; f0 06

B29_0356:		cmp #$07		; c9 07
B29_0358:		beq B29_035c ; f0 02

B29_035a:		clc				; 18 
B29_035b:		rts				; 60 


B29_035c:		lda $80			; a5 80
B29_035e:		bne B29_035a ; d0 fa

B29_0360:		jsr $83f4		; 20 f4 83
B29_0363:		sec				; 38 
B29_0364:		rts				; 60 


B29_0365:		lda $26			; a5 26
B29_0367:		and #$40		; 29 40
B29_0369:		beq B29_0375 ; f0 0a

B29_036b:		jsr $b9f5		; 20 f5 b9
B29_036e:		bcc B29_0375 ; 90 05

B29_0370:		lda #$48		; a9 48
B29_0372:		jmp $94aa		; 4c aa 94


B29_0375:		lda $28			; a5 28
B29_0377:		and #$08		; 29 08
B29_0379:		bne B29_03b6 ; d0 3b

B29_037b:		lda $28			; a5 28
B29_037d:		lsr a			; 4a
B29_037e:		bcs B29_039e ; b0 1e

B29_0380:		lsr a			; 4a
B29_0381:		bcs B29_0386 ; b0 03

B29_0383:		jmp $a08d		; 4c 8d a0


B29_0386:		ldx #$00		; a2 00
B29_0388:		lda #$f4		; a9 f4
B29_038a:		jsr $840b		; 20 0b 84
B29_038d:		bne B29_0392 ; d0 03

B29_038f:		jmp $a08d		; 4c 8d a0


B29_0392:		lda $0438		; ad 38 04
B29_0395:		sec				; 38 
B29_0396:		sbc #$04		; e9 04
B29_0398:		sta $0438		; 8d 38 04
B29_039b:		jmp $9e0b		; 4c 0b 9e


B29_039e:		ldx #$00		; a2 00
B29_03a0:		lda #$0c		; a9 0c
B29_03a2:		jsr $840b		; 20 0b 84
B29_03a5:		bne B29_03aa ; d0 03

B29_03a7:		jmp $a08d		; 4c 8d a0


B29_03aa:		lda $0438		; ad 38 04
B29_03ad:		clc				; 18 
B29_03ae:		adc #$04		; 69 04
B29_03b0:		sta $0438		; 8d 38 04
B29_03b3:		jmp $9e1b		; 4c 1b 9e


B29_03b6:		jsr $a349		; 20 49 a3
B29_03b9:		bcs B29_03f6 ; b0 3b

B29_03bb:		ldx #$f8		; a2 f8
B29_03bd:		lda #$ff		; a9 ff
B29_03bf:		jsr $840b		; 20 0b 84
B29_03c2:		beq B29_03d0 ; f0 0c

B29_03c4:		ldx #$f8		; a2 f8
B29_03c6:		lda #$01		; a9 01
B29_03c8:		jsr $840b		; 20 0b 84
B29_03cb:		beq B29_03d4 ; f0 07

B29_03cd:		jmp $a3e9		; 4c e9 a3


B29_03d0:		lda #$01		; a9 01
B29_03d2:		bne B29_03d6 ; d0 02

B29_03d4:		lda #$00		; a9 00
B29_03d6:		sta $05c1		; 8d c1 05
B29_03d9:		jsr $a54a		; 20 4a a5
B29_03dc:		lda $041c		; ad 1c 04
B29_03df:		sec				; 38 
B29_03e0:		sbc #$08		; e9 08
B29_03e2:		sta $d3			; 85 d3
B29_03e4:		lda #$34		; a9 34
B29_03e6:		jmp $a1ec		; 4c ec a1


B29_03e9:		lda $28			; a5 28
B29_03eb:		lsr a			; 4a
B29_03ec:		bcs B29_03f7 ; b0 09

B29_03ee:		lsr a			; 4a
B29_03ef:		bcs B29_040b ; b0 1a

B29_03f1:		lda #$1e		; a9 1e
B29_03f3:		sta $0400		; 8d 00 04
B29_03f6:		rts				; 60 


B29_03f7:		lda #$00		; a9 00
B29_03f9:		sta $04a8		; 8d a8 04
B29_03fc:		ldx #$00		; a2 00
B29_03fe:		lda #$0c		; a9 0c
B29_0400:		jsr $840b		; 20 0b 84
B29_0403:		bne B29_0419 ; d0 14

B29_0405:		lda #$01		; a9 01
B29_0407:		ldy #$40		; a0 40
B29_0409:		bne B29_0422 ; d0 17

B29_040b:		lda #$01		; a9 01
B29_040d:		sta $04a8		; 8d a8 04
B29_0410:		ldx #$00		; a2 00
B29_0412:		lda #$f4		; a9 f4
B29_0414:		jsr $840b		; 20 0b 84
B29_0417:		beq B29_041e ; f0 05

B29_0419:		lda #$00		; a9 00
B29_041b:		tay				; a8 
B29_041c:		beq B29_0422 ; f0 04

B29_041e:		lda #$fe		; a9 fe
B29_0420:		ldy #$c0		; a0 c0
B29_0422:		sta $04f2		; 8d f2 04
B29_0425:		sty $0509		; 8c 09 05
B29_0428:		jsr $ef73		; 20 73 ef
B29_042b:		jmp $873a		; 4c 3a 87


B29_042e:		ldy #$00		; a0 00
B29_0430:		jsr $a4cc		; 20 cc a4
B29_0433:		bcs B29_0436 ; b0 01

B29_0435:		rts				; 60 


B29_0436:		lda #$36		; a9 36
B29_0438:		sta $0565		; 8d 65 05
B29_043b:		lda #$08		; a9 08
B29_043d:		sta $057c		; 8d 7c 05
B29_0440:		rts				; 60 


B29_0441:		dec $057c		; ce 7c 05
B29_0444:		beq B29_0447 ; f0 01

B29_0446:		rts				; 60 


B29_0447:		lda $05c1		; ad c1 05
B29_044a:		beq B29_0452 ; f0 06

B29_044c:		jsr $9e1b		; 20 1b 9e
B29_044f:		jmp $a455		; 4c 55 a4


B29_0452:		jsr $9e0b		; 20 0b 9e
B29_0455:		ldy #$00		; a0 00
B29_0457:		sty $0593		; 8c 93 05
B29_045a:		iny				; c8 
B29_045b:		sty $057c		; 8c 7c 05
B29_045e:		lda #$00		; a9 00
B29_0460:		sta $05d8		; 8d d8 05
B29_0463:		rts				; 60 


B29_0464:		ldy #$02		; a0 02
B29_0466:		jsr $a4cc		; 20 cc a4
B29_0469:		bcs B29_046c ; b0 01

B29_046b:		rts				; 60 


B29_046c:		lda #$3a		; a9 3a
B29_046e:		sta $0565		; 8d 65 05
B29_0471:		lda #$10		; a9 10
B29_0473:		sta $057c		; 8d 7c 05
B29_0476:		rts				; 60 


B29_0477:		dec $057c		; ce 7c 05
B29_047a:		beq B29_047d ; f0 01

B29_047c:		rts				; 60 


B29_047d:		jmp $9f0b		; 4c 0b 9f


B29_0480:		ldy #$04		; a0 04
B29_0482:		jsr $a4cc		; 20 cc a4
B29_0485:		bcs B29_0488 ; b0 01

B29_0487:		rts				; 60 


B29_0488:		lda #$3e		; a9 3e
B29_048a:		sta $0565		; 8d 65 05
B29_048d:		lda #$08		; a9 08
B29_048f:		sta $057c		; 8d 7c 05
B29_0492:		rts				; 60 


B29_0493:		dec $057c		; ce 7c 05
B29_0496:		beq B29_0499 ; f0 01

B29_0498:		rts				; 60 


B29_0499:		lda #$02		; a9 02
B29_049b:		sta $0565		; 8d 65 05
B29_049e:		rts				; 60 


B29_049f:		ldy #$06		; a0 06
B29_04a1:		jsr $a4cc		; 20 cc a4
B29_04a4:		bcs B29_04a7 ; b0 01

B29_04a6:		rts				; 60 


B29_04a7:		lda #$42		; a9 42
B29_04a9:		sta $0565		; 8d 65 05
B29_04ac:		lda #$08		; a9 08
B29_04ae:		sta $057c		; 8d 7c 05
B29_04b1:		rts				; 60 


B29_04b2:		dec $057c		; ce 7c 05
B29_04b5:		beq B29_04b8 ; f0 01

B29_04b7:		rts				; 60 


B29_04b8:		lda $05c1		; ad c1 05
B29_04bb:		beq B29_04c3 ; f0 06

B29_04bd:		jsr $9e17		; 20 17 9e
B29_04c0:		jmp $a4c6		; 4c c6 a4


B29_04c3:		jsr $9e07		; 20 07 9e
B29_04c6:		lda #$00		; a9 00
B29_04c8:		sta $05d8		; 8d d8 05
B29_04cb:		rts				; 60 


B29_04cc:		dec $057c		; ce 7c 05
B29_04cf:		beq B29_04d5 ; f0 04

B29_04d1:		clc				; 18 
B29_04d2:		rts				; 60 


B29_04d3:		sec				; 38 
B29_04d4:		rts				; 60 


B29_04d5:		lda $a574, y	; b9 74 a5
B29_04d8:		sta $08			; 85 08
B29_04da:		lda $a575, y	; b9 75 a5
B29_04dd:		sta $09			; 85 09
B29_04df:		lda $0593		; ad 93 05
B29_04e2:		asl a			; 0a
B29_04e3:		asl a			; 0a
B29_04e4:		clc				; 18 
B29_04e5:		adc $0593		; 6d 93 05
B29_04e8:		tay				; a8 
B29_04e9:		lda ($08), y	; b1 08
B29_04eb:		cmp #$ff		; c9 ff
B29_04ed:		beq B29_04d3 ; f0 e4

B29_04ef:		sta $0400		; 8d 00 04
B29_04f2:		iny				; c8 
B29_04f3:		lda $05c1		; ad c1 05
B29_04f6:		beq B29_0501 ; f0 09

B29_04f8:		lda $05d8		; ad d8 05
B29_04fb:		sec				; 38 
B29_04fc:		sbc ($08), y	; f1 08
B29_04fe:		jmp $a507		; 4c 07 a5


B29_0501:		lda $05d8		; ad d8 05
B29_0504:		clc				; 18 
B29_0505:		adc ($08), y	; 71 08
B29_0507:		sta $0438		; 8d 38 04
B29_050a:		iny				; c8 
B29_050b:		lda ($08), y	; b1 08
B29_050d:		clc				; 18 
B29_050e:		adc $d3			; 65 d3
B29_0510:		sta $041c		; 8d 1c 04
B29_0513:		iny				; c8 
B29_0514:		lda ($08), y	; b1 08
B29_0516:		sta $057c		; 8d 7c 05
B29_0519:		iny				; c8 
B29_051a:		lda ($08), y	; b1 08
B29_051c:		eor $05c1		; 4d c1 05
B29_051f:		sta $04a8		; 8d a8 04
B29_0522:		inc $0593		; ee 93 05
B29_0525:		clc				; 18 
B29_0526:		rts				; 60 


B29_0527:		lda $05c1		; ad c1 05
B29_052a:		beq B29_0558 ; f0 2c

B29_052c:		lda #$07		; a9 07
B29_052e:		clc				; 18 
B29_052f:		adc $0438		; 6d 38 04
B29_0532:		jmp $a55e		; 4c 5e a5


B29_0535:		jsr $8a02		; 20 02 8a
B29_0538:		sta $d3			; 85 d3
B29_053a:		rts				; 60 


B29_053b:		lda $041c		; ad 1c 04
B29_053e:		clc				; 18 
B29_053f:		adc #$01		; 69 01
B29_0541:		sta $041c		; 8d 1c 04
B29_0544:		jsr $8a02		; 20 02 8a
B29_0547:		sta $d3			; 85 d3
B29_0549:		rts				; 60 


B29_054a:		lda $05c1		; ad c1 05
B29_054d:		beq B29_0558 ; f0 09

B29_054f:		lda #$02		; a9 02
B29_0551:		clc				; 18 
B29_0552:		adc $0438		; 6d 38 04
B29_0555:		jmp $a55e		; 4c 5e a5


B29_0558:		clc				; 18 
B29_0559:		lda #$01		; a9 01
B29_055b:		adc $0438		; 6d 38 04
B29_055e:		ldy $68			; a4 68
B29_0560:		bmi B29_056e ; 30 0c

B29_0562:		clc				; 18 
B29_0563:		adc $56			; 65 56
B29_0565:		and #$f8		; 29 f8
B29_0567:		sec				; 38 
B29_0568:		sbc $56			; e5 56
B29_056a:		sta $05d8		; 8d d8 05
B29_056d:		rts				; 60 


B29_056e:		and #$f8		; 29 f8
B29_0570:		sta $05d8		; 8d d8 05
B29_0573:		rts				; 60 


B29_0574:	.db $7c
B29_0575:		lda $87			; a5 87
B29_0577:		lda $92			; a5 92
B29_0579:		lda $9d			; a5 9d
B29_057b:		lda $3c			; a5 3c
B29_057d:		.db $00				; 00
B29_057e:		.db $00				; 00
B29_057f:		php				; 08 
B29_0580:		.db $00				; 00
B29_0581:		clc				; 18 
B29_0582:		php				; 08 
B29_0583:		sed				; f8 
B29_0584:		ora ($01, x)	; 01 01
B29_0586:	.db $ff
B29_0587:	.db $42
B29_0588:		.db $00				; 00
B29_0589:		.db $00				; 00
B29_058a:		php				; 08 
B29_058b:		.db $00				; 00
B29_058c:		asl $0408, x	; 1e 08 04
B29_058f:		ora ($00, x)	; 01 00
B29_0591:	.db $ff
B29_0592:		rti				; 40 


B29_0593:		.db $00				; 00
B29_0594:		.db $00				; 00
B29_0595:		php				; 08 
B29_0596:		.db $00				; 00
B29_0597:		asl $f400		; 0e 00 f4
B29_059a:		ora ($00, x)	; 01 00
B29_059c:	.db $ff
B29_059d:	.db $3e $00 $00
B29_05a0:		php				; 08 
B29_05a1:		.db $00				; 00
B29_05a2:		rol $08, x		; 36 08
B29_05a4:		php				; 08 
B29_05a5:		ora ($01, x)	; 01 01
B29_05a7:	.db $ff
B29_05a8:		jsr $a6a7		; 20 a7 a6
B29_05ab:		jsr $a64f		; 20 4f a6
B29_05ae:		ldy $0565		; ac 65 05
B29_05b1:		jsr jumpTableNoPreserveY		; 20 86 e8
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
	.dw $a5f8
	.dw $a5f8
	.dw $a5f9
	.dw $a5f8
	.dw $94b8
	.dw $94d4
	.dw $94ff
	.dw $831c
	.dw $93b1
	.dw $93b1
	.dw $8b57
	.dw $8ade
	.dw $a6bb
	.dw $a6d3
	.dw $a856
	.dw $ac8f
	.dw $acc7
	.dw $ad07
	.dw $a726
	.dw $a737
	.dw $a7ed
	.dw $a78b
B29_05f8:		rts				; 60 


B29_05f9:		jsr $8421		; 20 21 84
B29_05fc:		bcs B29_0601 ; b0 03

B29_05fe:		jmp $973a		; 4c 3a 97


B29_0601:		jsr $918e		; 20 8e 91
B29_0604:		jsr $9936		; 20 36 99
B29_0607:		lda $0565		; ad 65 05
B29_060a:		cmp #$02		; c9 02
B29_060c:		bne B29_0616 ; d0 08

B29_060e:		lda #$20		; a9 20
B29_0610:		sta $0565		; 8d 65 05
B29_0613:		jmp $94b8		; 4c b8 94


B29_0616:		jsr $baf2		; 20 f2 ba
B29_0619:		bcs B29_061c ; b0 01

B29_061b:		rts				; 60 


B29_061c:		lda #$0a		; a9 0a
B29_061e:		sta $0565		; 8d 65 05
B29_0621:		lda #$0e		; a9 0e
B29_0623:		sta $0400		; 8d 00 04
B29_0626:		rts				; 60 


B29_0627:		lda #$05		; a9 05
B29_0629:		ldx #$f0		; a2 f0
B29_062b:		jsr $840b		; 20 0b 84
B29_062e:		beq B29_064d ; f0 1d

B29_0630:		lda #$05		; a9 05
B29_0632:		ldx #$10		; a2 10
B29_0634:		jsr $840b		; 20 0b 84
B29_0637:		beq B29_064d ; f0 14

B29_0639:		lda #$fb		; a9 fb
B29_063b:		ldx #$f0		; a2 f0
B29_063d:		jsr $840b		; 20 0b 84
B29_0640:		beq B29_064d ; f0 0b

B29_0642:		lda #$fb		; a9 fb
B29_0644:		ldx #$10		; a2 10
B29_0646:		jsr $840b		; 20 0b 84
B29_0649:		beq B29_064d ; f0 02

B29_064b:		sec				; 38 
B29_064c:		rts				; 60 


B29_064d:		clc				; 18 
B29_064e:		rts				; 60 


B29_064f:		lda $3c			; a5 3c
B29_0651:		beq B29_0674 ; f0 21

B29_0653:		lda $84			; a5 84
B29_0655:		beq B29_0674 ; f0 1d

B29_0657:		lda $26			; a5 26
B29_0659:		and #$80		; 29 80
B29_065b:		beq B29_0674 ; f0 17

B29_065d:		lda $28			; a5 28
B29_065f:		and #$04		; 29 04
B29_0661:		beq B29_0674 ; f0 11

B29_0663:		ldy #$00		; a0 00
B29_0665:		lda $a697, y	; b9 97 a6
B29_0668:		cmp #$ff		; c9 ff
B29_066a:		beq B29_0675 ; f0 09

B29_066c:		cmp $0565		; cd 65 05
B29_066f:		beq B29_0674 ; f0 03

B29_0671:		iny				; c8 
B29_0672:		bne B29_0665 ; d0 f1

B29_0674:		rts				; 60 


B29_0675:		ldy #$00		; a0 00
B29_0677:		lda $a6a2, y	; b9 a2 a6
B29_067a:		cmp #$ff		; c9 ff
B29_067c:		beq B29_0691 ; f0 13

B29_067e:		cmp $0565		; cd 65 05
B29_0681:		beq B29_0686 ; f0 03

B29_0683:		iny				; c8 
B29_0684:		bne B29_0677 ; d0 f1

B29_0686:		jsr $a627		; 20 27 a6
B29_0689:		bcs B29_0674 ; b0 e9

B29_068b:		lda #$3c		; a9 3c
B29_068d:		sta $0565		; 8d 65 05
B29_0690:		rts				; 60 


B29_0691:		lda #$30		; a9 30
B29_0693:		sta $0565		; 8d 65 05
B29_0696:		rts				; 60 


B29_0697:		.db $00				; 00
B29_0698:		asl $30, x		; 16 30
B29_069a:	.db $32
B29_069b:	.db $3c
B29_069c:		rol $2a28, x	; 3e 28 2a
B29_069f:		bit $ff2e		; 2c 2e ff
B29_06a2:	.db $34
B29_06a3:		rol $38, x		; 36 38
B29_06a5:	.db $3a
B29_06a6:	.db $ff
B29_06a7:		ldy #$00		; a0 00
B29_06a9:		lda $a6a2, y	; b9 a2 a6
B29_06ac:		bmi B29_06ba ; 30 0c

B29_06ae:		cmp $0565		; cd 65 05
B29_06b1:		beq B29_06b6 ; f0 03

B29_06b3:		iny				; c8 
B29_06b4:		bne B29_06a9 ; d0 f3

B29_06b6:		lda #$08		; a9 08
B29_06b8:		sta $82			; 85 82
B29_06ba:		rts				; 60 


B29_06bb:		lda #$2f		; a9 2f
B29_06bd:		jsr playSound		; 20 5f e2
B29_06c0:		lda #$05		; a9 05
B29_06c2:		jsr $ef57		; 20 57 ef
B29_06c5:		lda #$01		; a9 01
B29_06c7:		sta $05c1		; 8d c1 05
B29_06ca:		sta $ae			; 85 ae
B29_06cc:		inc $0565		; ee 65 05
B29_06cf:		inc $0565		; ee 65 05
B29_06d2:		rts				; 60 


B29_06d3:		lda $05c1		; ad c1 05
B29_06d6:		beq B29_06de ; f0 06

B29_06d8:		dec $05c1		; ce c1 05
B29_06db:		jmp $a6ea		; 4c ea a6


B29_06de:		lda $0593		; ad 93 05
B29_06e1:		bne B29_06ea ; d0 07

B29_06e3:		lda $057c		; ad 7c 05
B29_06e6:		cmp #$01		; c9 01
B29_06e8:		beq B29_06ed ; f0 03

B29_06ea:		jmp $ef73		; 4c 73 ef


B29_06ed:		lda #$03		; a9 03
B29_06ef:		jsr $ef57		; 20 57 ef
B29_06f2:		jsr $a70a		; 20 0a a7
B29_06f5:		lda #$00		; a9 00
B29_06f7:		sta $0537		; 8d 37 05
B29_06fa:		sta $0520		; 8d 20 05
B29_06fd:		sta $04f2		; 8d f2 04
B29_0700:		sta $0509		; 8d 09 05
B29_0703:		inc $0565		; ee 65 05
B29_0706:		inc $0565		; ee 65 05
B29_0709:		rts				; 60 


B29_070a:		lda #$00		; a9 00
B29_070c:		tax				; aa 
B29_070d:		jsr $840b		; 20 0b 84
B29_0710:		bne B29_0713 ; d0 01

B29_0712:		rts				; 60 


B29_0713:		lda #$00		; a9 00
B29_0715:		ldx #$08		; a2 08
B29_0717:		jsr $840b		; 20 0b 84
B29_071a:		bne B29_0712 ; d0 f6

B29_071c:		lda $041c		; ad 1c 04
B29_071f:		clc				; 18 
B29_0720:		adc #$08		; 69 08
B29_0722:		sta $041c		; 8d 1c 04
B29_0725:		rts				; 60 


B29_0726:		lda #$06		; a9 06
B29_0728:		jsr $ef57		; 20 57 ef
B29_072b:		lda #$01		; a9 01
B29_072d:		sta $05c1		; 8d c1 05
B29_0730:		inc $0565		; ee 65 05
B29_0733:		inc $0565		; ee 65 05
B29_0736:		rts				; 60 


B29_0737:		lda $05c1		; ad c1 05
B29_073a:		beq B29_0742 ; f0 06

B29_073c:		dec $05c1		; ce c1 05
B29_073f:		jmp $a74e		; 4c 4e a7


B29_0742:		lda $0593		; ad 93 05
B29_0745:		bne B29_074e ; d0 07

B29_0747:		lda $057c		; ad 7c 05
B29_074a:		cmp #$01		; c9 01
B29_074c:		beq B29_0751 ; f0 03

B29_074e:		jmp $ef73		; 4c 73 ef


B29_0751:		lda #$05		; a9 05
B29_0753:		ldx #$10		; a2 10
B29_0755:		jsr func_1f_1cdd		; 20 dd fc
B29_0758:		bne B29_076c ; d0 12

B29_075a:		lda #$fb		; a9 fb
B29_075c:		ldx #$10		; a2 10
B29_075e:		jsr func_1f_1cdd		; 20 dd fc
B29_0761:		bne B29_076c ; d0 09

B29_0763:		jsr $973a		; 20 3a 97
B29_0766:		lda #$0e		; a9 0e
B29_0768:		sta $0400		; 8d 00 04
B29_076b:		rts				; 60 


B29_076c:		jsr $8a02		; 20 02 8a
B29_076f:		jmp $a763		; 4c 63 a7


B29_0772:		sta $05aa		; 8d aa 05
B29_0775:		rts				; 60 


B29_0776:		lda #$fc		; a9 fc
B29_0778:		sta $0520		; 8d 20 05
B29_077b:		lda #$00		; a9 00
B29_077d:		sta $0537		; 8d 37 05
B29_0780:		lda #$15		; a9 15
B29_0782:		sta $05c1		; 8d c1 05
B29_0785:		lda #$3a		; a9 3a
B29_0787:		sta $0565		; 8d 65 05
B29_078a:		rts				; 60 


B29_078b:		lda $28			; a5 28
B29_078d:		and #$08		; 29 08
B29_078f:		bne B29_07ab ; d0 1a

B29_0791:		lda $28			; a5 28
B29_0793:		beq B29_07c8 ; f0 33

B29_0795:		ldx #$06		; a2 06
B29_0797:		lda #$00		; a9 00
B29_0799:		jsr func_1f_1cdd		; 20 dd fc
B29_079c:		bne B29_07c8 ; d0 2a

B29_079e:		lda #$40		; a9 40
B29_07a0:		sta $0537		; 8d 37 05
B29_07a3:		lda #$00		; a9 00
B29_07a5:		sta $0520		; 8d 20 05
B29_07a8:		jmp $a7b5		; 4c b5 a7


B29_07ab:		lda #$c0		; a9 c0
B29_07ad:		sta $0537		; 8d 37 05
B29_07b0:		lda #$ff		; a9 ff
B29_07b2:		sta $0520		; 8d 20 05
B29_07b5:		clc				; 18 
B29_07b6:		lda $04db		; ad db 04
B29_07b9:		adc $0537		; 6d 37 05
B29_07bc:		sta $04db		; 8d db 04
B29_07bf:		lda $041c		; ad 1c 04
B29_07c2:		adc $0520		; 6d 20 05
B29_07c5:		sta $041c		; 8d 1c 04
B29_07c8:		ldx #$10		; a2 10
B29_07ca:		lda #$00		; a9 00
B29_07cc:		jsr func_1f_1cdd		; 20 dd fc
B29_07cf:		cmp #$02		; c9 02
B29_07d1:		beq B29_07dd ; f0 0a

B29_07d3:		cmp #$03		; c9 03
B29_07d5:		bne B29_082a ; d0 53

B29_07d7:		lda #$fe		; a9 fe
B29_07d9:		ldy #$80		; a0 80
B29_07db:		bne B29_07e1 ; d0 04

B29_07dd:		lda #$01		; a9 01
B29_07df:		ldy #$80		; a0 80
B29_07e1:		sta $04f2		; 8d f2 04
B29_07e4:		sty $0509		; 8c 09 05
B29_07e7:		jsr $ef73		; 20 73 ef
B29_07ea:		jmp $873a		; 4c 3a 87


B29_07ed:		ldx #$10		; a2 10
B29_07ef:		lda #$00		; a9 00
B29_07f1:		jsr func_1f_1cdd		; 20 dd fc
B29_07f4:		cmp #$02		; c9 02
B29_07f6:		beq B29_0802 ; f0 0a

B29_07f8:		cmp #$03		; c9 03
B29_07fa:		bne B29_082a ; d0 2e

B29_07fc:		lda #$fe		; a9 fe
B29_07fe:		ldy #$80		; a0 80
B29_0800:		bne B29_0806 ; d0 04

B29_0802:		lda #$01		; a9 01
B29_0804:		ldy #$80		; a0 80
B29_0806:		sta $04f2		; 8d f2 04
B29_0809:		sty $0509		; 8c 09 05
B29_080c:		lda $041c		; ad 1c 04
B29_080f:		clc				; 18 
B29_0810:		adc #$01		; 69 01
B29_0812:		sta $041c		; 8d 1c 04
B29_0815:		ldx #$06		; a2 06
B29_0817:		lda #$00		; a9 00
B29_0819:		jsr func_1f_1cdd		; 20 dd fc
B29_081c:		bne B29_0821 ; d0 03

B29_081e:		jmp $873a		; 4c 3a 87


B29_0821:		inc $0565		; ee 65 05
B29_0824:		inc $0565		; ee 65 05
B29_0827:		jmp $873a		; 4c 3a 87


B29_082a:		lda #$34		; a9 34
B29_082c:		sta $0565		; 8d 65 05
B29_082f:		rts				; 60 


B29_0830:		lda #$40		; a9 40
B29_0832:		sta $0565		; 8d 65 05
B29_0835:		rts				; 60 


B29_0836:		lda $84			; a5 84
B29_0838:		beq B29_0849 ; f0 0f

B29_083a:		dec $ae			; c6 ae
B29_083c:		bne B29_0847 ; d0 09

B29_083e:		lda #$3c		; a9 3c
B29_0840:		sta $ae			; 85 ae
B29_0842:		lda #$01		; a9 01
B29_0844:		jsr $e753		; 20 53 e7
B29_0847:		clc				; 18 
B29_0848:		rts				; 60 


B29_0849:		jsr $a627		; 20 27 a6
B29_084c:		bcs B29_0847 ; b0 f9

B29_084e:		sec				; 38 
B29_084f:		rts				; 60 


B29_0850:		lda #$3c		; a9 3c
B29_0852:		sta $0565		; 8d 65 05
B29_0855:		rts				; 60 


B29_0856:		jsr $a836		; 20 36 a8
B29_0859:		bcs B29_0850 ; b0 f5

B29_085b:		ldx #$10		; a2 10
B29_085d:		lda #$00		; a9 00
B29_085f:		jsr func_1f_1cdd		; 20 dd fc
B29_0862:		cmp #$02		; c9 02
B29_0864:		beq B29_0830 ; f0 ca

B29_0866:		cmp #$03		; c9 03
B29_0868:		beq B29_0830 ; f0 c6

B29_086a:		lda $04f2		; ad f2 04
B29_086d:		ora $0509		; 0d 09 05
B29_0870:		beq B29_0880 ; f0 0e

B29_0872:		lda $04f2		; ad f2 04
B29_0875:		bpl B29_087b ; 10 04

B29_0877:		ldy #$01		; a0 01
B29_0879:		bne B29_087d ; d0 02

B29_087b:		ldy #$00		; a0 00
B29_087d:		sty $04a8		; 8c a8 04
B29_0880:		lda $26			; a5 26
B29_0882:		and #$80		; 29 80
B29_0884:		beq B29_0889 ; f0 03

B29_0886:		jmp $a776		; 4c 76 a7


B29_0889:		lda $28			; a5 28
B29_088b:		lsr a			; 4a
B29_088c:		bcs B29_08d5 ; b0 47

B29_088e:		lsr a			; 4a
B29_088f:		bcs B29_08fc ; b0 6b

B29_0891:		lda $04f2		; ad f2 04
B29_0894:		bmi B29_08b7 ; 30 21

B29_0896:		lda $0509		; ad 09 05
B29_0899:		sec				; 38 
B29_089a:		sbc $a9f9		; edf9 a9
B29_089d:		sta $0509		; 8d 09 05
B29_08a0:		lda $04f2		; ad f2 04
B29_08a3:		sbc #$00		; e9 00
B29_08a5:		sta $04f2		; 8d f2 04
B29_08a8:		bcc B29_08ad ; 90 03

B29_08aa:		jmp $a929		; 4c 29 a9


B29_08ad:		lda #$00		; a9 00
B29_08af:		sta $04f2		; 8d f2 04
B29_08b2:		sta $0509		; 8d 09 05
B29_08b5:		beq B29_0929 ; f0 72

B29_08b7:		lda $0509		; ad 09 05
B29_08ba:		clc				; 18 
B29_08bb:		adc $a9f9		; 6d f9 a9
B29_08be:		sta $0509		; 8d 09 05
B29_08c1:		lda $04f2		; ad f2 04
B29_08c4:		adc #$00		; 69 00
B29_08c6:		sta $04f2		; 8d f2 04
B29_08c9:		bcc B29_0929 ; 90 5e

B29_08cb:		lda #$00		; a9 00
B29_08cd:		sta $04f2		; 8d f2 04
B29_08d0:		sta $0509		; 8d 09 05
B29_08d3:		beq B29_0929 ; f0 54

B29_08d5:		lda $0509		; ad 09 05
B29_08d8:		clc				; 18 
B29_08d9:		adc $a9fb		; 6d fb a9
B29_08dc:		sta $0509		; 8d 09 05
B29_08df:		lda $04f2		; ad f2 04
B29_08e2:		adc #$00		; 69 00
B29_08e4:		sta $04f2		; 8d f2 04
B29_08e7:		bmi B29_0929 ; 30 40

B29_08e9:		cmp $a9fd		; cd fd a9
B29_08ec:		bne B29_0929 ; d0 3b

B29_08ee:		lda $a9fe		; ad fe a9
B29_08f1:		cmp $0509		; cd 09 05
B29_08f4:		bcs B29_0929 ; b0 33

B29_08f6:		sta $0509		; 8d 09 05
B29_08f9:		jmp $a929		; 4c 29 a9


B29_08fc:		lda $0509		; ad 09 05
B29_08ff:		sec				; 38 
B29_0900:		sbc $a9fb		; edfb a9
B29_0903:		sta $0509		; 8d 09 05
B29_0906:		lda $04f2		; ad f2 04
B29_0909:		sbc #$00		; e9 00
B29_090b:		sta $04f2		; 8d f2 04
B29_090e:		bpl B29_0929 ; 10 19

B29_0910:		lda $aa01		; ad 01 aa
B29_0913:		cmp $04f2		; cd f2 04
B29_0916:		bcc B29_0929 ; 90 11

B29_0918:		lda $aa02		; ad 02 aa
B29_091b:		cmp $0509		; cd 09 05
B29_091e:		bcc B29_0929 ; 90 09

B29_0920:		sta $0509		; 8d 09 05
B29_0923:		lda $aa01		; ad 01 aa
B29_0926:		sta $04f2		; 8d f2 04
B29_0929:		lda $28			; a5 28
B29_092b:		and #$04		; 29 04
B29_092d:		beq B29_0932 ; f0 03

B29_092f:		jmp $a9b7		; 4c b7 a9


B29_0932:		lda $28			; a5 28
B29_0934:		and #$08		; 29 08
B29_0936:		bne B29_097d ; d0 45

B29_0938:		lda $0520		; ad 20 05
B29_093b:		bmi B29_095f ; 30 22

B29_093d:		lda $0537		; ad 37 05
B29_0940:		sec				; 38 
B29_0941:		sbc $a9fa		; edfa a9
B29_0944:		sta $0537		; 8d 37 05
B29_0947:		lda $0520		; ad 20 05
B29_094a:		sbc #$00		; e9 00
B29_094c:		sta $0520		; 8d 20 05
B29_094f:		bcc B29_0954 ; 90 03

B29_0951:		jmp $a9db		; 4c db a9


B29_0954:		lda #$00		; a9 00
B29_0956:		sta $0520		; 8d 20 05
B29_0959:		sta $0537		; 8d 37 05
B29_095c:		jmp $a9db		; 4c db a9


B29_095f:		lda $0537		; ad 37 05
B29_0962:		clc				; 18 
B29_0963:		adc $a9fa		; 6d fa a9
B29_0966:		sta $0537		; 8d 37 05
B29_0969:		lda $0520		; ad 20 05
B29_096c:		adc #$00		; 69 00
B29_096e:		sta $0520		; 8d 20 05
B29_0971:		bcc B29_09db ; 90 68

B29_0973:		lda #$00		; a9 00
B29_0975:		sta $0520		; 8d 20 05
B29_0978:		sta $0537		; 8d 37 05
B29_097b:		beq B29_09db ; f0 5e

B29_097d:		lda $0537		; ad 37 05
B29_0980:		sec				; 38 
B29_0981:		sbc $a9fc		; edfc a9
B29_0984:		sta $0537		; 8d 37 05
B29_0987:		lda $0520		; ad 20 05
B29_098a:		sbc #$00		; e9 00
B29_098c:		sta $0520		; 8d 20 05
B29_098f:		bpl B29_09db ; 10 4a

B29_0991:		lda $aa03		; ad 03 aa
B29_0994:		cmp $0520		; cd 20 05
B29_0997:		bcc B29_09db ; 90 42

B29_0999:		beq B29_099d ; f0 02

B29_099b:		bcs B29_09b1 ; b0 14

B29_099d:		lda $aa04		; ad 04 aa
B29_09a0:		cmp $0537		; cd 37 05
B29_09a3:		bcc B29_09db ; 90 36

B29_09a5:		sta $0537		; 8d 37 05
B29_09a8:		lda $aa03		; ad 03 aa
B29_09ab:		sta $0520		; 8d 20 05
B29_09ae:		jmp $a9db		; 4c db a9


B29_09b1:		lda $aa04		; ad 04 aa
B29_09b4:		jmp $a9a5		; 4c a5 a9


B29_09b7:		lda $0537		; ad 37 05
B29_09ba:		clc				; 18 
B29_09bb:		adc $a9fc		; 6d fc a9
B29_09be:		sta $0537		; 8d 37 05
B29_09c1:		lda $0520		; ad 20 05
B29_09c4:		adc #$00		; 69 00
B29_09c6:		sta $0520		; 8d 20 05
B29_09c9:		bmi B29_09db ; 30 10

B29_09cb:		cmp $a9ff		; cd ff a9
B29_09ce:		bne B29_09db ; d0 0b

B29_09d0:		lda $aa00		; ad 00 aa
B29_09d3:		cmp $0537		; cd 37 05
B29_09d6:		bcs B29_09db ; b0 03

B29_09d8:		sta $0537		; 8d 37 05
B29_09db:		lda $28			; a5 28
B29_09dd:		and #$0f		; 29 0f
B29_09df:		beq B29_09e5 ; f0 04

B29_09e1:		lda #$04		; a9 04
B29_09e3:		bne B29_09e7 ; d0 02

B29_09e5:		lda #$03		; a9 03
B29_09e7:		jsr $a772		; 20 72 a7
B29_09ea:		jsr $aa05		; 20 05 aa
B29_09ed:		jsr $ab26		; 20 26 ab
B29_09f0:		jsr $ef73		; 20 73 ef
B29_09f3:		jsr $873a		; 20 3a 87
B29_09f6:		jmp $8712		; 4c 12 87


B29_09f9:		php				; 08 
B29_09fa:		php				; 08 
B29_09fb:		;removed
	.db $10 $10

B29_09fd:		ora ($40, x)	; 01 40
B29_09ff:		ora ($00, x)	; 01 00
B29_0a01:		inc $ffc0, x	; fe c0 ff
B29_0a04:		.db $00				; 00
B29_0a05:		lda $0565		; ad 65 05
B29_0a08:		cmp #$36		; c9 36
B29_0a0a:		beq B29_0a56 ; f0 4a

B29_0a0c:		lda $04f2		; ad f2 04
B29_0a0f:		bmi B29_0a2f ; 30 1e

B29_0a11:		ora $0509		; 0d 09 05
B29_0a14:		beq B29_0a56 ; f0 40

B29_0a16:		lda $7d			; a5 7d
B29_0a18:		cmp #$60		; c9 60
B29_0a1a:		beq B29_0a84 ; f0 68

B29_0a1c:		ldx #$fa		; a2 fa
B29_0a1e:		lda #$08		; a9 08
B29_0a20:		jsr func_1f_1cdd		; 20 dd fc
B29_0a23:		bne B29_0a48 ; d0 23

B29_0a25:		ldx #$06		; a2 06
B29_0a27:		lda #$08		; a9 08
B29_0a29:		jsr func_1f_1cdd		; 20 dd fc
B29_0a2c:		bne B29_0a48 ; d0 1a

B29_0a2e:		rts				; 60 


B29_0a2f:		lda $7d			; a5 7d
B29_0a31:		cmp #$60		; c9 60
B29_0a33:		beq B29_0a57 ; f0 22

B29_0a35:		ldx #$fa		; a2 fa
B29_0a37:		lda #$f8		; a9 f8
B29_0a39:		jsr func_1f_1cdd		; 20 dd fc
B29_0a3c:		bne B29_0a4c ; d0 0e

B29_0a3e:		ldx #$06		; a2 06
B29_0a40:		lda #$f8		; a9 f8
B29_0a42:		jsr func_1f_1cdd		; 20 dd fc
B29_0a45:		bne B29_0a4c ; d0 05

B29_0a47:		rts				; 60 


B29_0a48:		lda #$01		; a9 01
B29_0a4a:		bne B29_0a4e ; d0 02

B29_0a4c:		lda #$00		; a9 00
B29_0a4e:		sta $05d8		; 8d d8 05
B29_0a51:		lda #$36		; a9 36
B29_0a53:		sta $0565		; 8d 65 05
B29_0a56:		rts				; 60 


B29_0a57:		lda $041c		; ad 1c 04
B29_0a5a:		cmp #$b0		; c9 b0
B29_0a5c:		bcc B29_0a35 ; 90 d7

B29_0a5e:		jsr $aadd		; 20 dd aa
B29_0a61:		lda $0a			; a5 0a
B29_0a63:		sec				; 38 
B29_0a64:		sbc #$3e		; e9 3e
B29_0a66:		sta $0c			; 85 0c
B29_0a68:		lda $0b			; a5 0b
B29_0a6a:		sbc #$01		; e9 01
B29_0a6c:		bmi B29_0a78 ; 30 0a

B29_0a6e:		bne B29_0a35 ; d0 c5

B29_0a70:		lda $0c			; a5 0c
B29_0a72:		cmp #$04		; c9 04
B29_0a74:		bcs B29_0a35 ; b0 bf

B29_0a76:		bcc B29_0a4c ; 90 d4

B29_0a78:		cmp #$ff		; c9 ff
B29_0a7a:		bne B29_0a35 ; d0 b9

B29_0a7c:		lda $0c			; a5 0c
B29_0a7e:		cmp #$fc		; c9 fc
B29_0a80:		bcs B29_0a4c ; b0 ca

B29_0a82:		bcc B29_0a35 ; 90 b1

B29_0a84:		lda $041c		; ad 1c 04
B29_0a87:		cmp #$b0		; c9 b0
B29_0a89:		bcc B29_0a1c ; 90 91

B29_0a8b:		jsr $aadd		; 20 dd aa
B29_0a8e:		lda $0a			; a5 0a
B29_0a90:		sec				; 38 
B29_0a91:		sbc #$20		; e9 20
B29_0a93:		sta $0c			; 85 0c
B29_0a95:		lda $0b			; a5 0b
B29_0a97:		sbc #$01		; e9 01
B29_0a99:		bmi B29_0aa5 ; 30 0a

B29_0a9b:		bne B29_0aaf ; d0 12

B29_0a9d:		lda $0c			; a5 0c
B29_0a9f:		cmp #$04		; c9 04
B29_0aa1:		bcs B29_0aaf ; b0 0c

B29_0aa3:		bcc B29_0a48 ; 90 a3

B29_0aa5:		cmp #$ff		; c9 ff
B29_0aa7:		bne B29_0a35 ; d0 8c

B29_0aa9:		lda $0c			; a5 0c
B29_0aab:		cmp #$fc		; c9 fc
B29_0aad:		bcs B29_0a48 ; b0 99

B29_0aaf:		lda $0a			; a5 0a
B29_0ab1:		sec				; 38 
B29_0ab2:		sbc #$c0		; e9 c0
B29_0ab4:		sta $0c			; 85 0c
B29_0ab6:		lda $0b			; a5 0b
B29_0ab8:		sbc #$02		; e9 02
B29_0aba:		bmi B29_0aca ; 30 0e

B29_0abc:		beq B29_0ac1 ; f0 03

B29_0abe:		jmp $aa1c		; 4c 1c aa


B29_0ac1:		lda $0c			; a5 0c
B29_0ac3:		cmp #$04		; c9 04
B29_0ac5:		bcc B29_0a48 ; 90 81

B29_0ac7:		jmp $aa1c		; 4c 1c aa


B29_0aca:		cmp #$ff		; c9 ff
B29_0acc:		beq B29_0ad1 ; f0 03

B29_0ace:		jmp $aa35		; 4c 35 aa


B29_0ad1:		lda $0c			; a5 0c
B29_0ad3:		cmp #$fc		; c9 fc
B29_0ad5:		bcc B29_0ada ; 90 03

B29_0ad7:		jmp $aa48		; 4c 48 aa


B29_0ada:		jmp $aa1c		; 4c 1c aa


B29_0add:		lda $0438		; ad 38 04
B29_0ae0:		clc				; 18 
B29_0ae1:		adc $56			; 65 56
B29_0ae3:		sta $0a			; 85 0a
B29_0ae5:		lda $57			; a5 57
B29_0ae7:		adc #$00		; 69 00
B29_0ae9:		sta $0b			; 85 0b
B29_0aeb:		rts				; 60 


B29_0aec:		lda $8b			; a5 8b
B29_0aee:		and #$0f		; 29 0f
B29_0af0:		cmp #$01		; c9 01
B29_0af2:		beq B29_0afb ; f0 07

B29_0af4:		cmp #$0c		; c9 0c
B29_0af6:		beq B29_0afb ; f0 03

B29_0af8:		lda #$80		; a9 80
B29_0afa:		rts				; 60 


B29_0afb:		ldx $91			; a6 91
B29_0afd:		lda $054e, x	; bd 4e 05
B29_0b00:		cmp #$7d		; c9 7d
B29_0b02:		beq B29_0b08 ; f0 04

B29_0b04:		cmp #$82		; c9 82
B29_0b06:		bne B29_0af8 ; d0 f0

B29_0b08:		lda $041c, x	; bd 1c 04
B29_0b0b:		sec				; 38 
B29_0b0c:		sbc $041c		; ed1c 04
B29_0b0f:		rts				; 60 


B29_0b10:		jsr $8398		; 20 98 83
B29_0b13:		clc				; 18 
B29_0b14:		rts				; 60 


B29_0b15:		jsr func_1f_1cdd		; 20 dd fc
B29_0b18:		beq B29_0b24 ; f0 0a

B29_0b1a:		cmp #$05		; c9 05
B29_0b1c:		beq B29_0b10 ; f0 f2

B29_0b1e:		cmp #$07		; c9 07
B29_0b20:		beq B29_0b10 ; f0 ee

B29_0b22:		sec				; 38 
B29_0b23:		rts				; 60 


B29_0b24:		clc				; 18 
B29_0b25:		rts				; 60 


B29_0b26:		lda $0565		; ad 65 05
B29_0b29:		cmp #$36		; c9 36
B29_0b2b:		beq B29_0b9f ; f0 72

B29_0b2d:		lda $0520		; ad 20 05
B29_0b30:		bmi B29_0b62 ; 30 30

B29_0b32:		ora $0537		; 0d 37 05
B29_0b35:		beq B29_0b9f ; f0 68

B29_0b37:		lda $7d			; a5 7d
B29_0b39:		and #$f0		; 29 f0
B29_0b3b:		cmp #$50		; c9 50
B29_0b3d:		beq B29_0bb8 ; f0 79

B29_0b3f:		cmp #$60		; c9 60
B29_0b41:		bne B29_0b46 ; d0 03

B29_0b43:		jmp $abcb		; 4c cb ab


B29_0b46:		jsr $aaec		; 20 ec aa
B29_0b49:		cmp #$80		; c9 80
B29_0b4b:		beq B29_0b4f ; f0 02

B29_0b4d:		bcc B29_0ba0 ; 90 51

B29_0b4f:		ldx #$06		; a2 06
B29_0b51:		lda #$fa		; a9 fa
B29_0b53:		jsr $ab15		; 20 15 ab
B29_0b56:		bcs B29_0ba0 ; b0 48

B29_0b58:		ldx #$06		; a2 06
B29_0b5a:		lda #$06		; a9 06
B29_0b5c:		jsr $ab15		; 20 15 ab
B29_0b5f:		bcs B29_0ba0 ; b0 3f

B29_0b61:		rts				; 60 


B29_0b62:		lda $041c		; ad 1c 04
B29_0b65:		cmp #$40		; c9 40
B29_0b67:		bcc B29_0b84 ; 90 1b

B29_0b69:		jsr $aaec		; 20 ec aa
B29_0b6c:		cmp #$80		; c9 80
B29_0b6e:		beq B29_0b72 ; f0 02

B29_0b70:		bcs B29_0b84 ; b0 12

B29_0b72:		ldx #$fa		; a2 fa
B29_0b74:		lda #$fa		; a9 fa
B29_0b76:		jsr $ab15		; 20 15 ab
B29_0b79:		bcs B29_0b84 ; b0 09

B29_0b7b:		ldx #$fa		; a2 fa
B29_0b7d:		lda #$06		; a9 06
B29_0b7f:		jsr $ab15		; 20 15 ab
B29_0b82:		bcc B29_0b9f ; 90 1b

B29_0b84:		jsr $8a02		; 20 02 8a
B29_0b87:		clc				; 18 
B29_0b88:		adc #$06		; 69 06
B29_0b8a:		sta $041c		; 8d 1c 04
B29_0b8d:		lda #$02		; a9 02
B29_0b8f:		sta $05d8		; 8d d8 05
B29_0b92:		lda #$00		; a9 00
B29_0b94:		sta $0537		; 8d 37 05
B29_0b97:		sta $0520		; 8d 20 05
B29_0b9a:		lda #$36		; a9 36
B29_0b9c:		sta $0565		; 8d 65 05
B29_0b9f:		rts				; 60 


B29_0ba0:		lda $0565		; ad 65 05
B29_0ba3:		cmp #$2e		; c9 2e
B29_0ba5:		beq B29_0b9f ; f0 f8

B29_0ba7:		jsr $8a02		; 20 02 8a
B29_0baa:		lda $041c		; ad 1c 04
B29_0bad:		clc				; 18 
B29_0bae:		adc #$02		; 69 02
B29_0bb0:		sta $041c		; 8d 1c 04
B29_0bb3:		lda #$03		; a9 03
B29_0bb5:		jmp $ab8f		; 4c 8f ab


B29_0bb8:		lda $7d			; a5 7d
B29_0bba:		and #$0f		; 29 0f
B29_0bbc:		tay				; a8 
B29_0bbd:		lda $041c		; ad 1c 04
B29_0bc0:		cmp $ac0d, y	; d9 0d ac
B29_0bc3:		bcc B29_0b46 ; 90 81

B29_0bc5:		jsr $8c58		; 20 58 8c
B29_0bc8:		jmp $aba0		; 4c a0 ab


B29_0bcb:		lda $7d			; a5 7d
B29_0bcd:		and #$0f		; 29 0f
B29_0bcf:		beq B29_0bd4 ; f0 03

B29_0bd1:		jmp $ab46		; 4c 46 ab


B29_0bd4:		lda $041c		; ad 1c 04
B29_0bd7:		cmp #$bc		; c9 bc
B29_0bd9:		bcs B29_0bde ; b0 03

B29_0bdb:		jmp $ab46		; 4c 46 ab


B29_0bde:		lda $0438		; ad 38 04
B29_0be1:		clc				; 18 
B29_0be2:		adc $56			; 65 56
B29_0be4:		sta $0a			; 85 0a
B29_0be6:		lda $57			; a5 57
B29_0be8:		adc #$00		; 69 00
B29_0bea:		sta $0b			; 85 0b
B29_0bec:		cmp #$01		; c9 01
B29_0bee:		bcc B29_0bc5 ; 90 d5

B29_0bf0:		bne B29_0bfb ; d0 09

B29_0bf2:		lda $0a			; a5 0a
B29_0bf4:		cmp #$20		; c9 20
B29_0bf6:		bcc B29_0bc5 ; 90 cd

B29_0bf8:		jmp $ab46		; 4c 46 ab


B29_0bfb:		cmp #$02		; c9 02
B29_0bfd:		bcs B29_0c02 ; b0 03

B29_0bff:		jmp $ab46		; 4c 46 ab


B29_0c02:		bne B29_0bc5 ; d0 c1

B29_0c04:		lda $0a			; a5 0a
B29_0c06:		cmp #$c0		; c9 c0
B29_0c08:		bcs B29_0bc5 ; b0 bb

B29_0c0a:		jmp $ab46		; 4c 46 ab


B29_0c0d:	.db $9c
B29_0c0e:		ldy $bcbc, x	; bc bc bc
B29_0c11:		lda $04f2		; ad f2 04
B29_0c14:		bmi B29_0c29 ; 30 13

B29_0c16:		ldx #$fa		; a2 fa
B29_0c18:		lda #$08		; a9 08
B29_0c1a:		jsr func_1f_1cdd		; 20 dd fc
B29_0c1d:		bne B29_0c3b ; d0 1c

B29_0c1f:		ldx #$06		; a2 06
B29_0c21:		lda #$08		; a9 08
B29_0c23:		jsr func_1f_1cdd		; 20 dd fc
B29_0c26:		bne B29_0c3b ; d0 13

B29_0c28:		rts				; 60 


B29_0c29:		ldx #$fa		; a2 fa
B29_0c2b:		lda #$f8		; a9 f8
B29_0c2d:		jsr func_1f_1cdd		; 20 dd fc
B29_0c30:		bne B29_0c3b ; d0 09

B29_0c32:		ldx #$06		; a2 06
B29_0c34:		lda #$f8		; a9 f8
B29_0c36:		jsr func_1f_1cdd		; 20 dd fc
B29_0c39:		beq B29_0c43 ; f0 08

B29_0c3b:		lda #$00		; a9 00
B29_0c3d:		sta $0509		; 8d 09 05
B29_0c40:		sta $04f2		; 8d f2 04
B29_0c43:		rts				; 60 


B29_0c44:		lda $0520		; ad 20 05
B29_0c47:		bmi B29_0c5c ; 30 13

B29_0c49:		ldx #$06		; a2 06
B29_0c4b:		lda #$fa		; a9 fa
B29_0c4d:		jsr func_1f_1cdd		; 20 dd fc
B29_0c50:		bne B29_0c80 ; d0 2e

B29_0c52:		ldx #$06		; a2 06
B29_0c54:		lda #$06		; a9 06
B29_0c56:		jsr func_1f_1cdd		; 20 dd fc
B29_0c59:		bne B29_0c80 ; d0 25

B29_0c5b:		rts				; 60 


B29_0c5c:		ldx #$fa		; a2 fa
B29_0c5e:		lda #$fa		; a9 fa
B29_0c60:		jsr func_1f_1cdd		; 20 dd fc
B29_0c63:		bne B29_0c6e ; d0 09

B29_0c65:		ldx #$fa		; a2 fa
B29_0c67:		lda #$06		; a9 06
B29_0c69:		jsr func_1f_1cdd		; 20 dd fc
B29_0c6c:		beq B29_0c7f ; f0 11

B29_0c6e:		jsr $8a02		; 20 02 8a
B29_0c71:		clc				; 18 
B29_0c72:		adc #$06		; 69 06
B29_0c74:		sta $041c		; 8d 1c 04
B29_0c77:		lda #$00		; a9 00
B29_0c79:		sta $0537		; 8d 37 05
B29_0c7c:		sta $0520		; 8d 20 05
B29_0c7f:		rts				; 60 


B29_0c80:		jsr $8a02		; 20 02 8a
B29_0c83:		lda $041c		; ad 1c 04
B29_0c86:		clc				; 18 
B29_0c87:		adc #$02		; 69 02
B29_0c89:		sta $041c		; 8d 1c 04
B29_0c8c:		jmp $ac77		; 4c 77 ac


B29_0c8f:		inc $0565		; ee 65 05
B29_0c92:		inc $0565		; ee 65 05
B29_0c95:		lda #$03		; a9 03
B29_0c97:		sta $05c1		; 8d c1 05
B29_0c9a:		lda $05d8		; ad d8 05
B29_0c9d:		cmp #$02		; c9 02
B29_0c9f:		bcs B29_0cb0 ; b0 0f

B29_0ca1:		asl a			; 0a
B29_0ca2:		tay				; a8 
B29_0ca3:		lda $acbf, y	; b9 bf ac
B29_0ca6:		sta $04f2		; 8d f2 04
B29_0ca9:		lda $acc0, y	; b9 c0 ac
B29_0cac:		sta $0509		; 8d 09 05
B29_0caf:		rts				; 60 


B29_0cb0:		asl a			; 0a
B29_0cb1:		tay				; a8 
B29_0cb2:		lda $acbf, y	; b9 bf ac
B29_0cb5:		sta $0520		; 8d 20 05
B29_0cb8:		lda $acc0, y	; b9 c0 ac
B29_0cbb:		sta $0537		; 8d 37 05
B29_0cbe:		rts				; 60 


B29_0cbf:		ora ($00, x)	; 01 00
B29_0cc1:	.db $ff
B29_0cc2:		.db $00				; 00
B29_0cc3:		ora ($00, x)	; 01 00
B29_0cc5:	.db $ff
B29_0cc6:		.db $00				; 00
B29_0cc7:		jsr $a836		; 20 36 a8
B29_0cca:		bcc B29_0ccf ; 90 03

B29_0ccc:		jmp $a850		; 4c 50 a8


B29_0ccf:		dec $05c1		; ce c1 05
B29_0cd2:		beq B29_0ce8 ; f0 14

B29_0cd4:		lda #$04		; a9 04
B29_0cd6:		jsr $a772		; 20 72 a7
B29_0cd9:		jsr $ac11		; 20 11 ac
B29_0cdc:		jsr $ac44		; 20 44 ac
B29_0cdf:		jsr $ef73		; 20 73 ef
B29_0ce2:		jsr $873a		; 20 3a 87
B29_0ce5:		jmp $8712		; 4c 12 87


B29_0ce8:		lda $05d8		; ad d8 05
B29_0ceb:		cmp #$02		; c9 02
B29_0ced:		bcs B29_0cf9 ; b0 0a

B29_0cef:		lda #$00		; a9 00
B29_0cf1:		sta $04f2		; 8d f2 04
B29_0cf4:		sta $0509		; 8d 09 05
B29_0cf7:		beq B29_0d01 ; f0 08

B29_0cf9:		lda #$00		; a9 00
B29_0cfb:		sta $0520		; 8d 20 05
B29_0cfe:		sta $0537		; 8d 37 05
B29_0d01:		lda #$34		; a9 34
B29_0d03:		sta $0565		; 8d 65 05
B29_0d06:		rts				; 60 


B29_0d07:		jsr $a836		; 20 36 a8
B29_0d0a:		bcc B29_0d0f ; 90 03

B29_0d0c:		jmp $a850		; 4c 50 a8


B29_0d0f:		dec $05c1		; ce c1 05
B29_0d12:		bne B29_0d1a ; d0 06

B29_0d14:		lda #$34		; a9 34
B29_0d16:		sta $0565		; 8d 65 05
B29_0d19:		rts				; 60 


B29_0d1a:		lda $04f2		; ad f2 04
B29_0d1d:		ora $0509		; 0d 09 05
B29_0d20:		beq B29_0d30 ; f0 0e

B29_0d22:		lda $04f2		; ad f2 04
B29_0d25:		bpl B29_0d2b ; 10 04

B29_0d27:		ldy #$01		; a0 01
B29_0d29:		bne B29_0d2d ; d0 02

B29_0d2b:		ldy #$00		; a0 00
B29_0d2d:		sty $04a8		; 8c a8 04
B29_0d30:		lda $28			; a5 28
B29_0d32:		lsr a			; 4a
B29_0d33:		bcs B29_0d7c ; b0 47

B29_0d35:		lsr a			; 4a
B29_0d36:		bcs B29_0da3 ; b0 6b

B29_0d38:		lda $04f2		; ad f2 04
B29_0d3b:		bmi B29_0d5e ; 30 21

B29_0d3d:		lda $0509		; ad 09 05
B29_0d40:		sec				; 38 
B29_0d41:		sbc $a9f9		; edf9 a9
B29_0d44:		sta $0509		; 8d 09 05
B29_0d47:		lda $04f2		; ad f2 04
B29_0d4a:		sbc #$00		; e9 00
B29_0d4c:		sta $04f2		; 8d f2 04
B29_0d4f:		bcc B29_0d54 ; 90 03

B29_0d51:		jmp $add0		; 4c d0 ad


B29_0d54:		lda #$00		; a9 00
B29_0d56:		sta $04f2		; 8d f2 04
B29_0d59:		sta $0509		; 8d 09 05
B29_0d5c:		beq B29_0dd0 ; f0 72

B29_0d5e:		lda $0509		; ad 09 05
B29_0d61:		clc				; 18 
B29_0d62:		adc $a9f9		; 6d f9 a9
B29_0d65:		sta $0509		; 8d 09 05
B29_0d68:		lda $04f2		; ad f2 04
B29_0d6b:		adc #$00		; 69 00
B29_0d6d:		sta $04f2		; 8d f2 04
B29_0d70:		bcc B29_0dd0 ; 90 5e

B29_0d72:		lda #$00		; a9 00
B29_0d74:		sta $04f2		; 8d f2 04
B29_0d77:		sta $0509		; 8d 09 05
B29_0d7a:		beq B29_0dd0 ; f0 54

B29_0d7c:		lda $0509		; ad 09 05
B29_0d7f:		clc				; 18 
B29_0d80:		adc $a9fb		; 6d fb a9
B29_0d83:		sta $0509		; 8d 09 05
B29_0d86:		lda $04f2		; ad f2 04
B29_0d89:		adc #$00		; 69 00
B29_0d8b:		sta $04f2		; 8d f2 04
B29_0d8e:		bmi B29_0dd0 ; 30 40

B29_0d90:		cmp $a9fd		; cd fd a9
B29_0d93:		bne B29_0dd0 ; d0 3b

B29_0d95:		lda $a9fe		; ad fe a9
B29_0d98:		cmp $0509		; cd 09 05
B29_0d9b:		bcs B29_0dd0 ; b0 33

B29_0d9d:		sta $0509		; 8d 09 05
B29_0da0:		jmp $add0		; 4c d0 ad


B29_0da3:		lda $0509		; ad 09 05
B29_0da6:		sec				; 38 
B29_0da7:		sbc $a9fb		; edfb a9
B29_0daa:		sta $0509		; 8d 09 05
B29_0dad:		lda $04f2		; ad f2 04
B29_0db0:		sbc #$00		; e9 00
B29_0db2:		sta $04f2		; 8d f2 04
B29_0db5:		bpl B29_0dd0 ; 10 19

B29_0db7:		lda $aa01		; ad 01 aa
B29_0dba:		cmp $04f2		; cd f2 04
B29_0dbd:		bcc B29_0dd0 ; 90 11

B29_0dbf:		lda $aa02		; ad 02 aa
B29_0dc2:		cmp $0509		; cd 09 05
B29_0dc5:		bcc B29_0dd0 ; 90 09

B29_0dc7:		sta $0509		; 8d 09 05
B29_0dca:		lda $aa01		; ad 01 aa
B29_0dcd:		sta $04f2		; 8d f2 04
B29_0dd0:		lda $0537		; ad 37 05
B29_0dd3:		clc				; 18 
B29_0dd4:		adc #$40		; 69 40
B29_0dd6:		sta $0537		; 8d 37 05
B29_0dd9:		lda $0520		; ad 20 05
B29_0ddc:		adc #$00		; 69 00
B29_0dde:		sta $0520		; 8d 20 05
B29_0de1:		lda #$04		; a9 04
B29_0de3:		jsr $a772		; 20 72 a7
B29_0de6:		jsr $ab26		; 20 26 ab
B29_0de9:		jsr $aa05		; 20 05 aa
B29_0dec:		lda $0565		; ad 65 05
B29_0def:		cmp #$36		; c9 36
B29_0df1:		beq B29_0dfc ; f0 09

B29_0df3:		jsr $ef73		; 20 73 ef
B29_0df6:		jsr $873a		; 20 3a 87
B29_0df9:		jmp $8712		; 4c 12 87


B29_0dfc:		lda $05d8		; ad d8 05
B29_0dff:		cmp #$02		; c9 02
B29_0e01:		bcs B29_0df3 ; b0 f0

B29_0e03:		lda #$00		; a9 00
B29_0e05:		sta $0537		; 8d 37 05
B29_0e08:		sta $0520		; 8d 20 05
B29_0e0b:		beq B29_0df3 ; f0 e6

B29_0e0d:		sta $02			; 85 02
B29_0e0f:		sty $03			; 84 03
B29_0e11:		lda #$00		; a9 00
B29_0e13:		sta $04			; 85 04
B29_0e15:		sta $05			; 85 05
B29_0e17:		ldy #$10		; a0 10
B29_0e19:		asl $00			; 06 00
B29_0e1b:		rol $01			; 26 01
B29_0e1d:		rol $04			; 26 04
B29_0e1f:		rol $05			; 26 05
B29_0e21:		lda $05			; a5 05
B29_0e23:		cmp $03			; c5 03
B29_0e25:		bne B29_0e2b ; d0 04

B29_0e27:		lda $04			; a5 04
B29_0e29:		cmp $02			; c5 02
B29_0e2b:		bcc B29_0e3b ; 90 0e

B29_0e2d:		lda $04			; a5 04
B29_0e2f:		sbc $02			; e5 02
B29_0e31:		sta $04			; 85 04
B29_0e33:		lda $05			; a5 05
B29_0e35:		sbc $03			; e5 03
B29_0e37:		sta $05			; 85 05
B29_0e39:		inc $00			; e6 00
B29_0e3b:		dey				; 88 
B29_0e3c:		bne B29_0e19 ; d0 db

B29_0e3e:		rts				; 60 


B29_0e3f:		lda #$01		; a9 01
B29_0e41:		sta $10			; 85 10
B29_0e43:		lda $07ec		; ad ec 07
B29_0e46:		sta $12			; 85 12
B29_0e48:		lda #$01		; a9 01
B29_0e4a:		sta $17			; 85 17
B29_0e4c:		lda $054e, x	; bd 4e 05
B29_0e4f:		jmp $ae6d		; 4c 6d ae


B29_0e52:		lda #$00		; a9 00
B29_0e54:		sta $10			; 85 10
B29_0e56:		ldx #$14		; a2 14
B29_0e58:		lda $82			; a5 82
B29_0e5a:		sta $12			; 85 12
B29_0e5c:		lda #$03		; a9 03
B29_0e5e:		sta $17			; 85 17
B29_0e60:		lda $054e, x	; bd 4e 05
B29_0e63:		bne B29_0e6d ; d0 08

B29_0e65:		dec $17			; c6 17
B29_0e67:		beq B29_0e6c ; f0 03

B29_0e69:		inx				; e8 
B29_0e6a:		bne B29_0e60 ; d0 f4

B29_0e6c:		rts				; 60 


B29_0e6d:		cmp #$0c		; c9 0c
B29_0e6f:		beq B29_0e75 ; f0 04

B29_0e71:		lda $bf			; a5 bf
B29_0e73:		bmi B29_0e6c ; 30 f7

B29_0e75:		lda $aefd		; ad fd ae
B29_0e78:		pha				; 48 
B29_0e79:		lda $aefc		; ad fc ae
B29_0e7c:		pha				; 48 
B29_0e7d:		lda $054e, x	; bd 4e 05
B29_0e80:		asl a			; 0a
B29_0e81:		tay				; a8 
B29_0e82:		lda $aee0, y	; b9 e0 ae
B29_0e85:		sta $00			; 85 00
B29_0e87:		lda $aee1, y	; b9 e1 ae
B29_0e8a:		sta $01			; 85 01
B29_0e8c:		ldy $0565, x	; bc 65 05
B29_0e8f:		lda ($00), y	; b1 00
B29_0e91:		sta $02			; 85 02
B29_0e93:		iny				; c8 
B29_0e94:		lda ($00), y	; b1 00
B29_0e96:		sta $03			; 85 03
B29_0e98:	.db $6c $02 $00
B29_0e9b:		lda $0565, x	; bd 65 05
B29_0e9e:		cmp #$02		; c9 02
B29_0ea0:		beq B29_0e65 ; f0 c3

B29_0ea2:		lda $0438, x	; bd 38 04
B29_0ea5:		cmp #$09		; c9 09
B29_0ea7:		bcc B29_0ebb ; 90 12

B29_0ea9:		cmp #$f8		; c9 f8
B29_0eab:		bcs B29_0ebb ; b0 0e

B29_0ead:		lda $041c, x	; bd 1c 04
B29_0eb0:		cmp #$10		; c9 10
B29_0eb2:		bcc B29_0ebb ; 90 07

B29_0eb4:		cmp #$e0		; c9 e0
B29_0eb6:		bcs B29_0ebb ; b0 03

B29_0eb8:		jmp $ae65		; 4c 65 ae


B29_0ebb:		lda $054e, x	; bd 4e 05
B29_0ebe:		cmp #$06		; c9 06
B29_0ec0:		beq B29_0ed3 ; f0 11

B29_0ec2:		lda #$00		; a9 00
B29_0ec4:		sta $054e, x	; 9d 4e 05
B29_0ec7:		sta $0400, x	; 9d 00 04
B29_0eca:		sta $0438, x	; 9d 38 04
B29_0ecd:		sta $041c, x	; 9d 1c 04
B29_0ed0:		jmp $ae65		; 4c 65 ae


B29_0ed3:		lda #$00		; a9 00
B29_0ed5:		sta $0438, x	; 9d 38 04
B29_0ed8:		lda #$80		; a9 80
B29_0eda:		sta $0470, x	; 9d 70 04
B29_0edd:		jmp $ae65		; 4c 65 ae


B29_0ee0:		inc $feae, x	; fe ae fe
B29_0ee3:		ldx $af04		; ae 04 af
B29_0ee6:	.db $0c
B29_0ee7:	.db $af
B29_0ee8:	.db $12
B29_0ee9:	.db $af
B29_0eea:	.db $1a
B29_0eeb:	.db $af
B29_0eec:		jsr $26af		; 20 af 26
B29_0eef:	.db $af
B29_0ef0:	.db $34
B29_0ef1:	.db $af
B29_0ef2:	.db $3a
B29_0ef3:	.db $af
B29_0ef4:		rti				; 40 


B29_0ef5:	.db $af
B29_0ef6:		lsr $af			; 46 af
B29_0ef8:		pha				; 48 
B29_0ef9:	.db $af
B29_0efa:		lsr $9aaf		; 4e af 9a
B29_0efd:		ldx $b45c		; ae 5c b4
B29_0f00:		sta $b4, x		; 95 b4
B29_0f02:	.db $d7
B29_0f03:		ldy $5c, x		; b4 5c
B29_0f05:		ldy $f4, x		; b4 f4
B29_0f07:		ldy $2d, x		; b4 2d
B29_0f09:		lda $6f, x		; b5 6f
B29_0f0b:		lda $5c, x		; b5 5c
B29_0f0d:		ldy $b2, x		; b4 b2
B29_0f0f:		ldx $f4, y		; b6 f4
B29_0f11:		ldx $5c, y		; b6 5c
B29_0f13:		ldy $52, x		; b4 52
B29_0f15:	.db $b7
B29_0f16:	.db $92
B29_0f17:	.db $b7
B29_0f18:		;removed
	.db $d0 $b7

B29_0f1a:	.db $5c
B29_0f1b:		ldy $90, x		; b4 90
B29_0f1d:	.db $b3
B29_0f1e:	.db $dc
B29_0f1f:	.db $b3
B29_0f20:		nop				; ea 
B29_0f21:	.db $b7
B29_0f22:	.db $23
B29_0f23:		clv				; b8 
B29_0f24:		ldy $b8			; a4 b8
B29_0f26:	.db $3a
B29_0f27:		;removed
	.db $b0 $73

B29_0f29:		;removed
	.db $b0 $fa

B29_0f2b:		bcs B29_0f63 ; b0 36

B29_0f2d:		lda ($7d), y	; b1 7d
B29_0f2f:		lda ($f6), y	; b1 f6
B29_0f31:		lda ($46), y	; b1 46
B29_0f33:	.db $b2
B29_0f34:	.db $5c
B29_0f35:		ldy $2a, x		; b4 2a
B29_0f37:		ldx $f4, y		; b6 f4
B29_0f39:		ldx $5c, y		; b6 5c
B29_0f3b:		ldy $b9, x		; b4 b9
B29_0f3d:		lda $d7, x		; b5 d7
B29_0f3f:		ldy $5c, x		; b4 5c
B29_0f41:		ldy $77, x		; b4 77
B29_0f43:	.db $af
B29_0f44:		nop				; ea 
B29_0f45:	.db $af
B29_0f46:		ror $af			; 66 af
B29_0f48:	.db $9f
B29_0f49:		lda $b9ba, y	; b9 ba b9
B29_0f4c:		cpy #$b9		; c0 b9
B29_0f4e:		sty $b9			; 84 b9
B29_0f50:		tsx				; ba 
B29_0f51:		lda $b9c0, y	; b9 c0 b9
B29_0f54:		jsr $bc55		; 20 55 bc
B29_0f57:		inc $0565, x	; fe 65 05
B29_0f5a:		inc $0565, x	; fe 65 05
B29_0f5d:		ldy $054e, x	; bc 4e 05
B29_0f60:		lda $af67, y	; b9 67 af
B29_0f63:		sta $0606, x	; 9d 06 06
B29_0f66:		rts				; 60 


B29_0f67:		.db $00				; 00
B29_0f68:		rts				; 60 


B29_0f69:		rts				; 60 


B29_0f6a:		rti				; 40 


B29_0f6b:		bmi B29_0f2d ; 30 c0

B29_0f6d:	.db $02
B29_0f6e:		cpy #$40		; c0 40
B29_0f70:		rts				; 60 


B29_0f71:	.db $20 $00 $00
B29_0f74:		.db $00				; 00
B29_0f75:		.db $00				; 00
B29_0f76:		.db $00				; 00
B29_0f77:		dec $05c1, x	; de c1 05
B29_0f7a:		bne B29_0f66 ; d0 ea

B29_0f7c:		lda $05d8, x	; bd d8 05
B29_0f7f:		bne B29_0f86 ; d0 05

B29_0f81:		lda #$1f		; a9 1f
B29_0f83:		jsr playSound		; 20 5f e2
B29_0f86:		lda #$06		; a9 06
B29_0f88:		ldy #$0b		; a0 0b
B29_0f8a:		jsr func_1f_0f5c		; 20 5c ef
B29_0f8d:		ldy $10			; a4 10
B29_0f8f:		lda $04a8, y	; b9 a8 04
B29_0f92:		sta $00			; 85 00
B29_0f94:		ldy #$00		; a0 00
B29_0f96:		lda $b006, y	; b9 06 b0
B29_0f99:		sta $08			; 85 08
B29_0f9b:		lda $b007, y	; b9 07 b0
B29_0f9e:		sta $09			; 85 09
B29_0fa0:		lda $05d8, x	; bd d8 05
B29_0fa3:		asl a			; 0a
B29_0fa4:		asl a			; 0a
B29_0fa5:		tay				; a8 
B29_0fa6:		lda $00			; a5 00
B29_0fa8:		beq B29_0faf ; f0 05

B29_0faa:		tya				; 98 
B29_0fab:		clc				; 18 
B29_0fac:		adc #$0c		; 69 0c
B29_0fae:		tay				; a8 
B29_0faf:		lda ($08), y	; b1 08
B29_0fb1:		sta $0509, x	; 9d 09 05
B29_0fb4:		iny				; c8 
B29_0fb5:		lda ($08), y	; b1 08
B29_0fb7:		sta $04f2, x	; 9d f2 04
B29_0fba:		iny				; c8 
B29_0fbb:		lda ($08), y	; b1 08
B29_0fbd:		sta $0537, x	; 9d 37 05
B29_0fc0:		iny				; c8 
B29_0fc1:		lda ($08), y	; b1 08
B29_0fc3:		sta $0520, x	; 9d 20 05
B29_0fc6:		lda #$00		; a9 00
B29_0fc8:		sta $04a8, x	; 9d a8 04
B29_0fcb:		ldy $10			; a4 10
B29_0fcd:		lda $0438, y	; b9 38 04
B29_0fd0:		sta $0438, x	; 9d 38 04
B29_0fd3:		lda $041c, y	; b9 1c 04
B29_0fd6:		ldy $12			; a4 12
B29_0fd8:		cpy #$07		; c0 07
B29_0fda:		bne B29_0fdf ; d0 03

B29_0fdc:		clc				; 18 
B29_0fdd:		adc #$06		; 69 06
B29_0fdf:		sta $041c, x	; 9d 1c 04
B29_0fe2:		lda #$18		; a9 18
B29_0fe4:		sta $05c1, x	; 9d c1 05
B29_0fe7:		jmp $af54		; 4c 54 af


B29_0fea:		lda $061d, x	; bd 1d 06
B29_0fed:		bne B29_1000 ; d0 11

B29_0fef:		dec $05c1, x	; de c1 05
B29_0ff2:		beq B29_1000 ; f0 0c

B29_0ff4:		jsr func_1f_0f75		; 20 75 ef
B29_0ff7:		jsr $b916		; 20 16 b9
B29_0ffa:		jsr $b92f		; 20 2f b9
B29_0ffd:		jmp $b951		; 4c 51 b9


B29_1000:		lda #$00		; a9 00
B29_1002:		sta $0438, x	; 9d 38 04
B29_1005:		rts				; 60 


B29_1006:		asl a			; 0a
B29_1007:		;removed
	.db $b0 $22

B29_1009:		;removed
	.db $b0 $80

B29_100b:	.db $04
B29_100c:		.db $00				; 00
B29_100d:		.db $00				; 00
B29_100e:		rol $04			; 26 04
B29_1010:		jmp $26fe		; 4c fe 26


B29_1013:	.db $04
B29_1014:		ldy $01, x		; b4 01
B29_1016:	.db $80
B29_1017:	.db $fb
B29_1018:		.db $00				; 00
B29_1019:		.db $00				; 00
B29_101a:	.db $da
B29_101b:	.db $fb
B29_101c:		jmp $dafe		; 4c fe da


B29_101f:	.db $fb
B29_1020:		ldy $01, x		; b4 01
B29_1022:		.db $00				; 00
B29_1023:		ora $00			; 05 00
B29_1025:		.db $00				; 00
B29_1026:	.db $9c
B29_1027:	.db $04
B29_1028:	.db $1b
B29_1029:		inc $049c, x	; fe 9c 04
B29_102c:		sbc $01			; e5 01
B29_102e:		.db $00				; 00
B29_102f:	.db $fb
B29_1030:		.db $00				; 00
B29_1031:		.db $00				; 00
B29_1032:	.db $64
B29_1033:	.db $fb
B29_1034:	.db $1b
B29_1035:		inc $fb64, x	; fe 64 fb
B29_1038:		sbc $01			; e5 01
B29_103a:		jsr $b46e		; 20 6e b4
B29_103d:		clc				; 18 
B29_103e:		adc #$01		; 69 01
B29_1040:		sta $05c2, x	; 9d c2 05
B29_1043:		sta $05c3, x	; 9d c3 05
B29_1046:		lda #$00		; a9 00
B29_1048:		sta $0438, x	; 9d 38 04
B29_104b:		sta $0439, x	; 9d 39 04
B29_104e:		sta $043a, x	; 9d 3a 04
B29_1051:		sta $041c, x	; 9d 1c 04
B29_1054:		sta $041d, x	; 9d 1d 04
B29_1057:		sta $041e, x	; 9d 1e 04
B29_105a:		inc $0565, x	; fe 65 05
B29_105d:		inc $0565, x	; fe 65 05
B29_1060:		lda $054e, x	; bd 4e 05
B29_1063:		sta $054f, x	; 9d 4f 05
B29_1066:		sta $0550, x	; 9d 50 05
B29_1069:		lda $0565, x	; bd 65 05
B29_106c:		sta $0566, x	; 9d 66 05
B29_106f:		sta $0567, x	; 9d 67 05
B29_1072:		rts				; 60 


B29_1073:		dec $05c1, x	; de c1 05
B29_1076:		bne B29_1072 ; d0 fa

B29_1078:		cpx #$14		; e0 14
B29_107a:		bne B29_1081 ; d0 05

B29_107c:		lda #$1e		; a9 1e
B29_107e:		jsr playSound		; 20 5f e2
B29_1081:		lda $0438		; ad 38 04
B29_1084:		sta $0438, x	; 9d 38 04
B29_1087:		lda $041c		; ad 1c 04
B29_108a:		sta $041c, x	; 9d 1c 04
B29_108d:		lda #$00		; a9 00
B29_108f:		sta $061d, x	; 9d 1d 06
B29_1092:		cpx #$14		; e0 14
B29_1094:		bne B29_109b ; d0 05

B29_1096:		jsr $b0ac		; 20 ac b0
B29_1099:		ldx #$14		; a2 14
B29_109b:		txa				; 8a 
B29_109c:		sec				; 38 
B29_109d:		sbc #$14		; e9 14
B29_109f:		tay				; a8 
B29_10a0:		lda $b0a9, y	; b9 a9 b0
B29_10a3:		sta $05c1, x	; 9d c1 05
B29_10a6:		jmp $af54		; 4c 54 af


B29_10a9:	.db $03
B29_10aa:	.db $02
B29_10ab:		ora ($a9, x)	; 01 a9
B29_10ad:		.db $00				; 00
B29_10ae:		sta $08			; 85 08
B29_10b0:		ldy #$01		; a0 01
B29_10b2:		lda $054e, y	; b9 4e 05
B29_10b5:		bne B29_10c7 ; d0 10

B29_10b7:		iny				; c8 
B29_10b8:		cpy #$0d		; c0 0d
B29_10ba:		bcc B29_10b2 ; 90 f6

B29_10bc:		lda #$ff		; a9 ff
B29_10be:		sta $05d8, x	; 9d d8 05
B29_10c1:		inx				; e8 
B29_10c2:		cpx #$17		; e0 17
B29_10c4:		bcc B29_10be ; 90 f8

B29_10c6:		rts				; 60 


B29_10c7:		lda $0470, y	; b9 70 04
B29_10ca:		bmi B29_10b7 ; 30 eb

B29_10cc:		lda $0438, y	; b9 38 04
B29_10cf:		sec				; 38 
B29_10d0:		sbc $0438, x	; fd 38 04
B29_10d3:		bcs B29_10da ; b0 05

B29_10d5:		eor #$ff		; 49 ff
B29_10d7:		clc				; 18 
B29_10d8:		adc #$01		; 69 01
B29_10da:		cmp #$40		; c9 40
B29_10dc:		bcs B29_10b7 ; b0 d9

B29_10de:		lda $041c, y	; b9 1c 04
B29_10e1:		sec				; 38 
B29_10e2:		sbc $041c, x	; fd 1c 04
B29_10e5:		bcs B29_10ec ; b0 05

B29_10e7:		eor #$ff		; 49 ff
B29_10e9:		clc				; 18 
B29_10ea:		adc #$01		; 69 01
B29_10ec:		cmp #$80		; c9 80
B29_10ee:		bcs B29_10b7 ; b0 c7

B29_10f0:		tya				; 98 
B29_10f1:		sta $05d8, x	; 9d d8 05
B29_10f4:		inx				; e8 
B29_10f5:		cpx #$17		; e0 17
B29_10f7:		bcs B29_10b7 ; b0 be

B29_10f9:		rts				; 60 


B29_10fa:		lda $05d8, x	; bd d8 05
B29_10fd:		bmi B29_1106 ; 30 07

B29_10ff:		inc $0565, x	; fe 65 05
B29_1102:		inc $0565, x	; fe 65 05
B29_1105:		rts				; 60 


B29_1106:		jsr $b112		; 20 12 b1
B29_1109:		bcs B29_10ff ; b0 f4

B29_110b:		tya				; 98 
B29_110c:		sta $05d8, x	; 9d d8 05
B29_110f:		jmp $b0ff		; 4c ff b0


B29_1112:		ldy #$01		; a0 01
B29_1114:		lda $054e, y	; b9 4e 05
B29_1117:		bne B29_1120 ; d0 07

B29_1119:		iny				; c8 
B29_111a:		cpy #$0d		; c0 0d
B29_111c:		bcc B29_1114 ; 90 f6

B29_111e:		sec				; 38 
B29_111f:		rts				; 60 


B29_1120:		lda $0470, y	; b9 70 04
B29_1123:		bmi B29_1119 ; 30 f4

B29_1125:		cpy $05ec		; cc ec 05
B29_1128:		beq B29_1119 ; f0 ef

B29_112a:		cpy $05ed		; cc ed 05
B29_112d:		beq B29_1119 ; f0 ea

B29_112f:		cpy $05ee		; cc ee 05
B29_1132:		beq B29_1119 ; f0 e5

B29_1134:		clc				; 18 
B29_1135:		rts				; 60 


B29_1136:		dec $05c1, x	; de c1 05
B29_1139:		bne B29_10f9 ; d0 be

B29_113b:		lda #$02		; a9 02
B29_113d:		ldy #$0a		; a0 0a
B29_113f:		jsr func_1f_0f5c		; 20 5c ef
B29_1142:		lda $b17a		; ad 7a b1
B29_1145:		sta $05c1, x	; 9d c1 05
B29_1148:		lda #$01		; a9 01
B29_114a:		sta $0509, x	; 9d 09 05
B29_114d:		txa				; 8a 
B29_114e:		sec				; 38 
B29_114f:		sbc #$14		; e9 14
B29_1151:		tay				; a8 
B29_1152:		lda $04a8		; ad a8 04
B29_1155:		beq B29_115a ; f0 03

B29_1157:		iny				; c8 
B29_1158:		iny				; c8 
B29_1159:		iny				; c8 
B29_115a:		lda $b174, y	; b9 74 b1
B29_115d:		sta $05ef, x	; 9d ef 05
B29_1160:		lda #$00		; a9 00
B29_1162:		sta $04a8, x	; 9d a8 04
B29_1165:		lda $0438		; ad 38 04
B29_1168:		sta $0438, x	; 9d 38 04
B29_116b:		lda $041c		; ad 1c 04
B29_116e:		sta $041c, x	; 9d 1c 04
B29_1171:		jmp $af54		; 4c 54 af


B29_1174:		.db $00				; 00
B29_1175:	.db $04
B29_1176:	.db $1c
B29_1177:		bpl B29_1185 ; 10 0c

B29_1179:	.db $14
B29_117a:		;removed
	.db $10 $10

B29_117c:	.db $02
B29_117d:		dec $05c1, x	; de c1 05
B29_1180:		beq B29_1195 ; f0 13

B29_1182:		jsr func_1f_0f75		; 20 75 ef
B29_1185:		jsr $b2bb		; 20 bb b2
B29_1188:		jsr $b30a		; 20 0a b3
B29_118b:		jmp $b951		; 4c 51 b9


B29_118e:		lda #$ff		; a9 ff
B29_1190:		sta $05d8, x	; 9d d8 05
B29_1193:		bne B29_1182 ; d0 ed

B29_1195:		ldy $05d8, x	; bc d8 05
B29_1198:		bmi B29_1182 ; 30 e8

B29_119a:		beq B29_1182 ; f0 e6

B29_119c:		lda $054e, y	; b9 4e 05
B29_119f:		beq B29_118e ; f0 ed

B29_11a1:		lda $0470, y	; b9 70 04
B29_11a4:		bmi B29_118e ; 30 e8

B29_11a6:		lda $061d, x	; bd 1d 06
B29_11a9:		bne B29_118e ; d0 e3

B29_11ab:		lda #$00		; a9 00
B29_11ad:		sta $08			; 85 08
B29_11af:		lda $0438, y	; b9 38 04
B29_11b2:		sec				; 38 
B29_11b3:		sbc $0438, x	; fd 38 04
B29_11b6:		bcs B29_11c1 ; b0 09

B29_11b8:		eor #$ff		; 49 ff
B29_11ba:		clc				; 18 
B29_11bb:		adc #$01		; 69 01
B29_11bd:		inc $08			; e6 08
B29_11bf:		inc $08			; e6 08
B29_11c1:		sta $09			; 85 09
B29_11c3:		lda $041c, y	; b9 1c 04
B29_11c6:		sec				; 38 
B29_11c7:		sbc $041c, x	; fd 1c 04
B29_11ca:		bcs B29_11d3 ; b0 07

B29_11cc:		eor #$ff		; 49 ff
B29_11ce:		clc				; 18 
B29_11cf:		adc #$01		; 69 01
B29_11d1:		inc $08			; e6 08
B29_11d3:		sta $01			; 85 01
B29_11d5:		lda $09			; a5 09
B29_11d7:		ldy #$00		; a0 00
B29_11d9:		sty $00			; 84 00
B29_11db:		jsr $ae0d		; 20 0d ae
B29_11de:		lda $01			; a5 01
B29_11e0:		sta $0520, x	; 9d 20 05
B29_11e3:		lda $00			; a5 00
B29_11e5:		sta $0537, x	; 9d 37 05
B29_11e8:		lda $08			; a5 08
B29_11ea:		sta $04f2, x	; 9d f2 04
B29_11ed:		inc $0565, x	; fe 65 05
B29_11f0:		inc $0565, x	; fe 65 05
B29_11f3:		jmp $b182		; 4c 82 b1


B29_11f6:		jsr $b208		; 20 08 b2
B29_11f9:		inc $0565, x	; fe 65 05
B29_11fc:		inc $0565, x	; fe 65 05
B29_11ff:		lda $b17c		; ad 7c b1
B29_1202:		sta $0520, x	; 9d 20 05
B29_1205:		jmp $b182		; 4c 82 b1


B29_1208:		ldy #$00		; a0 00
B29_120a:		lda $0520, x	; bd 20 05
B29_120d:		cmp $b37e, y	; d9 7e b3
B29_1210:		bcc B29_1224 ; 90 12

B29_1212:		bne B29_121e ; d0 0a

B29_1214:		lda $0537, x	; bd 37 05
B29_1217:		cmp $b37f, y	; d9 7f b3
B29_121a:		bcc B29_1224 ; 90 08

B29_121c:		beq B29_1224 ; f0 06

B29_121e:		iny				; c8 
B29_121f:		iny				; c8 
B29_1220:		cpy #$10		; c0 10
B29_1222:		bcc B29_120a ; 90 e6

B29_1224:		tya				; 98 
B29_1225:		lsr a			; 4a
B29_1226:		sta $00			; 85 00
B29_1228:		ldy $04f2, x	; bc f2 04
B29_122b:		beq B29_1242 ; f0 15

B29_122d:		dey				; 88 
B29_122e:		beq B29_123d ; f0 0d

B29_1230:		dey				; 88 
B29_1231:		beq B29_1239 ; f0 06

B29_1233:		clc				; 18 
B29_1234:		adc #$10		; 69 10
B29_1236:		jmp $b242		; 4c 42 b2


B29_1239:		lda #$10		; a9 10
B29_123b:		bne B29_123f ; d0 02

B29_123d:		lda #$20		; a9 20
B29_123f:		sec				; 38 
B29_1240:		sbc $00			; e5 00
B29_1242:		sta $04f2, x	; 9d f2 04
B29_1245:		rts				; 60 


B29_1246:		jsr $b259		; 20 59 b2
B29_1249:		bcc B29_1256 ; 90 0b

B29_124b:		lda $b17b		; ad 7b b1
B29_124e:		sta $05c1, x	; 9d c1 05
B29_1251:		lda #$08		; a9 08
B29_1253:		sta $0565, x	; 9d 65 05
B29_1256:		jmp $b182		; 4c 82 b1


B29_1259:		dec $0520, x	; de 20 05
B29_125c:		bne B29_1297 ; d0 39

B29_125e:		lda $b17c		; ad 7c b1
B29_1261:		sta $0520, x	; 9d 20 05
B29_1264:		lda $04f2, x	; bd f2 04
B29_1267:		sec				; 38 
B29_1268:		sbc $05ef, x	; fd ef 05
B29_126b:		sta $00			; 85 00
B29_126d:		bcs B29_127a ; b0 0b

B29_126f:		cmp #$f0		; c9 f0
B29_1271:		bcc B29_1299 ; 90 26

B29_1273:		lda #$00		; a9 00
B29_1275:		sec				; 38 
B29_1276:		sbc $00			; e5 00
B29_1278:		bcc B29_1283 ; 90 09

B29_127a:		cmp #$11		; c9 11
B29_127c:		bcc B29_129c ; 90 1e

B29_127e:		lda #$20		; a9 20
B29_1280:		sec				; 38 
B29_1281:		sbc $00			; e5 00
B29_1283:		cmp $0509, x	; dd 09 05
B29_1286:		bcc B29_12b3 ; 90 2b

B29_1288:		lda $05ef, x	; bd ef 05
B29_128b:		sec				; 38 
B29_128c:		sbc $0509, x	; fd 09 05
B29_128f:		bpl B29_1294 ; 10 03

B29_1291:		sec				; 38 
B29_1292:		sbc #$e0		; e9 e0
B29_1294:		sta $05ef, x	; 9d ef 05
B29_1297:		clc				; 18 
B29_1298:		rts				; 60 


B29_1299:		sec				; 38 
B29_129a:		sbc #$e0		; e9 e0
B29_129c:		cmp $0509, x	; dd 09 05
B29_129f:		bcc B29_12b3 ; 90 12

B29_12a1:		lda $05ef, x	; bd ef 05
B29_12a4:		clc				; 18 
B29_12a5:		adc $0509, x	; 7d 09 05
B29_12a8:		cmp #$20		; c9 20
B29_12aa:		bcc B29_12ae ; 90 02

B29_12ac:		sbc #$20		; e9 20
B29_12ae:		sta $05ef, x	; 9d ef 05
B29_12b1:		clc				; 18 
B29_12b2:		rts				; 60 


B29_12b3:		lda $04f2, x	; bd f2 04
B29_12b6:		sta $05ef, x	; 9d ef 05
B29_12b9:		sec				; 38 
B29_12ba:		rts				; 60 


B29_12bb:		lda $05ef, x	; bd ef 05
B29_12be:		cmp #$08		; c9 08
B29_12c0:		bcc B29_12f4 ; 90 32

B29_12c2:		cmp #$10		; c9 10
B29_12c4:		bcc B29_12db ; 90 15

B29_12c6:		cmp #$18		; c9 18
B29_12c8:		bcc B29_12d2 ; 90 08

B29_12ca:		lda #$20		; a9 20
B29_12cc:		sec				; 38 
B29_12cd:		sbc $05ef, x	; fd ef 05
B29_12d0:		bne B29_12f4 ; d0 22

B29_12d2:		lda #$18		; a9 18
B29_12d4:		sec				; 38 
B29_12d5:		sbc $05ef, x	; fd ef 05
B29_12d8:		jmp $b2de		; 4c de b2


B29_12db:		sec				; 38 
B29_12dc:		sbc #$08		; e9 08
B29_12de:		asl a			; 0a
B29_12df:		tay				; a8 
B29_12e0:		sec				; 38 
B29_12e1:		lda $04c4, x	; bd c4 04
B29_12e4:		sbc $b36d, y	; f9 6d b3
B29_12e7:		sta $04c4, x	; 9d c4 04
B29_12ea:		lda $0438, x	; bd 38 04
B29_12ed:		sbc $b36c, y	; f9 6c b3
B29_12f0:		sta $0438, x	; 9d 38 04
B29_12f3:		rts				; 60 


B29_12f4:		asl a			; 0a
B29_12f5:		tay				; a8 
B29_12f6:		clc				; 18 
B29_12f7:		lda $b35b, y	; b9 5b b3
B29_12fa:		adc $04c4, x	; 7d c4 04
B29_12fd:		sta $04c4, x	; 9d c4 04
B29_1300:		lda $b35a, y	; b9 5a b3
B29_1303:		adc $0438, x	; 7d 38 04
B29_1306:		sta $0438, x	; 9d 38 04
B29_1309:		rts				; 60 


B29_130a:		lda $05ef, x	; bd ef 05
B29_130d:		cmp #$08		; c9 08
B29_130f:		bcc B29_1344 ; 90 33

B29_1311:		cmp #$10		; c9 10
B29_1313:		bcc B29_133e ; 90 29

B29_1315:		cmp #$18		; c9 18
B29_1317:		bcc B29_1322 ; 90 09

B29_1319:		lda $05ef, x	; bd ef 05
B29_131c:		sec				; 38 
B29_131d:		sbc #$18		; e9 18
B29_131f:		jmp $b328		; 4c 28 b3


B29_1322:		lda #$18		; a9 18
B29_1324:		sec				; 38 
B29_1325:		sbc $05ef, x	; fd ef 05
B29_1328:		asl a			; 0a
B29_1329:		tay				; a8 
B29_132a:		sec				; 38 
B29_132b:		lda $04db, x	; bd db 04
B29_132e:		sbc $b35b, y	; f9 5b b3
B29_1331:		sta $04db, x	; 9d db 04
B29_1334:		lda $041c, x	; bd 1c 04
B29_1337:		sbc $b35a, y	; f9 5a b3
B29_133a:		sta $041c, x	; 9d 1c 04
B29_133d:		rts				; 60 


B29_133e:		lda #$10		; a9 10
B29_1340:		sec				; 38 
B29_1341:		sbc $05ef, x	; fd ef 05
B29_1344:		asl a			; 0a
B29_1345:		tay				; a8 
B29_1346:		clc				; 18 
B29_1347:		lda $b36d, y	; b9 6d b3
B29_134a:		adc $04db, x	; 7d db 04
B29_134d:		sta $04db, x	; 9d db 04
B29_1350:		lda $b36c, y	; b9 6c b3
B29_1353:		adc $041c, x	; 7d 1c 04
B29_1356:		sta $041c, x	; 9d 1c 04
B29_1359:		rts				; 60 


B29_135a:	.db $02
B29_135b:		.db $00				; 00
B29_135c:		ora ($f6, x)	; 01 f6
B29_135e:		ora ($d9, x)	; 01 d9
B29_1360:		ora ($a9, x)	; 01 a9
B29_1362:		ora ($6a, x)	; 01 6a
B29_1364:		ora ($1c, x)	; 01 1c
B29_1366:		.db $00				; 00
B29_1367:	.db $c3
B29_1368:		.db $00				; 00
B29_1369:	.db $63
B29_136a:		.db $00				; 00
B29_136b:		.db $00				; 00
B29_136c:		.db $00				; 00
B29_136d:		.db $00				; 00
B29_136e:		.db $00				; 00
B29_136f:	.db $63
B29_1370:		.db $00				; 00
B29_1371:	.db $c3
B29_1372:		ora ($1c, x)	; 01 1c
B29_1374:		ora ($69, x)	; 01 69
B29_1376:		ora ($a9, x)	; 01 a9
B29_1378:		ora ($d9, x)	; 01 d9
B29_137a:		ora ($f6, x)	; 01 f6
B29_137c:	.db $02
B29_137d:		.db $00				; 00
B29_137e:		.db $00				; 00
B29_137f:		.db $00				; 00
B29_1380:		.db $00				; 00
B29_1381:	.db $32
B29_1382:		.db $00				; 00
B29_1383:		ror a			; 6a
B29_1384:		.db $00				; 00
B29_1385:		cpy $01			; c4 01
B29_1387:		.db $00				; 00
B29_1388:		ora ($7f, x)	; 01 7f
B29_138a:	.db $02
B29_138b:		ror a			; 6a
B29_138c:		ora $06			; 05 06
B29_138e:	.db $ff
B29_138f:	.db $ff
B29_1390:		dec $05c1, x	; de c1 05
B29_1393:		bne B29_13f5 ; d0 60

B29_1395:		lda #$24		; a9 24
B29_1397:		jsr playSound		; 20 5f e2
B29_139a:		ldy $10			; a4 10
B29_139c:		lda $0438, y	; b9 38 04
B29_139f:		sta $0c			; 85 0c
B29_13a1:		lda $041c, y	; b9 1c 04
B29_13a4:		sta $0d			; 85 0d
B29_13a6:		lda $04a8, y	; b9 a8 04
B29_13a9:		sta $0e			; 85 0e
B29_13ab:		lda #$00		; a9 00
B29_13ad:		sta $0593, x	; 9d 93 05
B29_13b0:		lda #$02		; a9 02
B29_13b2:		sta $048c, x	; 9d 8c 04
B29_13b5:		lda #$01		; a9 01
B29_13b7:		sta $057c, x	; 9d 7c 05
B29_13ba:		lda $0d			; a5 0d
B29_13bc:		sec				; 38 
B29_13bd:		sbc #$08		; e9 08
B29_13bf:		sta $041c, x	; 9d 1c 04
B29_13c2:		ldy $0c			; a4 0c
B29_13c4:		lda $0e			; a5 0e
B29_13c6:		sta $04a8, x	; 9d a8 04
B29_13c9:		beq B29_13d2 ; f0 07

B29_13cb:		tya				; 98 
B29_13cc:		sec				; 38 
B29_13cd:		sbc #$18		; e9 18
B29_13cf:		jmp $b3d6		; 4c d6 b3


B29_13d2:		tya				; 98 
B29_13d3:		clc				; 18 
B29_13d4:		adc #$18		; 69 18
B29_13d6:		sta $0438, x	; 9d 38 04
B29_13d9:		jmp $af54		; 4c 54 af


B29_13dc:		jsr $b3f6		; 20 f6 b3
B29_13df:		bcs B29_13e7 ; b0 06

B29_13e1:		jsr $b916		; 20 16 b9
B29_13e4:		jmp $b951		; 4c 51 b9


B29_13e7:		lda #$00		; a9 00
B29_13e9:		sta $054e, x	; 9d 4e 05
B29_13ec:		sta $0438, x	; 9d 38 04
B29_13ef:		sta $041c, x	; 9d 1c 04
B29_13f2:		sta $0400, x	; 9d 00 04
B29_13f5:		rts				; 60 


B29_13f6:		lda #$00		; a9 00
B29_13f8:		sta $0509, x	; 9d 09 05
B29_13fb:		dec $057c, x	; de 7c 05
B29_13fe:		beq B29_1407 ; f0 07

B29_1400:		lda #$00		; a9 00
B29_1402:		sta $04f2, x	; 9d f2 04
B29_1405:		clc				; 18 
B29_1406:		rts				; 60 


B29_1407:		lda $0593, x	; bd 93 05
B29_140a:		sta $08			; 85 08
B29_140c:		asl a			; 0a
B29_140d:		clc				; 18 
B29_140e:		adc $08			; 65 08
B29_1410:		tay				; a8 
B29_1411:		lda $b440, y	; b9 40 b4
B29_1414:		cmp #$ff		; c9 ff
B29_1416:		beq B29_143e ; f0 26

B29_1418:		sta $00			; 85 00
B29_141a:		lda $04a8, x	; bd a8 04
B29_141d:		beq B29_1428 ; f0 09

B29_141f:		lda $00			; a5 00
B29_1421:		eor #$ff		; 49 ff
B29_1423:		clc				; 18 
B29_1424:		adc #$01		; 69 01
B29_1426:		bne B29_142a ; d0 02

B29_1428:		lda $00			; a5 00
B29_142a:		sta $04f2, x	; 9d f2 04
B29_142d:		lda $b441, y	; b9 41 b4
B29_1430:		sta $057c, x	; 9d 7c 05
B29_1433:		lda $b442, y	; b9 42 b4
B29_1436:		sta $0400, x	; 9d 00 04
B29_1439:		inc $0593, x	; fe 93 05
B29_143c:		clc				; 18 
B29_143d:		rts				; 60 


B29_143e:		sec				; 38 
B29_143f:		rts				; 60 


B29_1440:		.db $00				; 00
B29_1441:	.db $03
B29_1442:	.db $3c
B29_1443:	.db $04
B29_1444:	.db $03
B29_1445:		rol $0304, x	; 3e 04 03
B29_1448:		rol $030c, x	; 3e 0c 03
B29_144b:		rti				; 40 


B29_144c:		php				; 08 
B29_144d:	.db $03
B29_144e:		rti				; 40 


B29_144f:		php				; 08 
B29_1450:	.db $03
B29_1451:	.db $42
B29_1452:	.db $04
B29_1453:	.db $03
B29_1454:	.db $42
B29_1455:		php				; 08 
B29_1456:	.db $03
B29_1457:	.db $44
B29_1458:		.db $00				; 00
B29_1459:	.db $03
B29_145a:		lsr $ff, x		; 56 ff
B29_145c:		jsr $b46e		; 20 6e b4
B29_145f:		lda #$00		; a9 00
B29_1461:		sta $0438, x	; 9d 38 04
B29_1464:		sta $041c, x	; 9d 1c 04
B29_1467:		inc $0565, x	; fe 65 05
B29_146a:		inc $0565, x	; fe 65 05
B29_146d:		rts				; 60 


B29_146e:		ldy $054e, x	; bc 4e 05
B29_1471:		lda $b478, y	; b9 78 b4
B29_1474:		sta $05c1, x	; 9d c1 05
B29_1477:		rts				; 60 


B29_1478:		.db $00				; 00
B29_1479:		asl a			; 0a
B29_147a:		asl a			; 0a
B29_147b:		asl a			; 0a
B29_147c:		asl a			; 0a
B29_147d:	.db $0c
B29_147e:		php				; 08 
B29_147f:		php				; 08 
B29_1480:		php				; 08 
B29_1481:		php				; 08 
B29_1482:		;removed
	.db $10 $02

B29_1484:		.db $00				; 00
B29_1485:		inc $fa00, x	; fe 00 fa
B29_1488:	.db $80
B29_1489:	.db $02
B29_148a:		.db $00				; 00
B29_148b:		inc $0400, x	; fe 00 04
B29_148e:		.db $00				; 00
B29_148f:	.db $fc
B29_1490:		.db $00				; 00
B29_1491:		ora ($80, x)	; 01 80
B29_1493:		inc $de80, x	; fe 80 de
B29_1496:		cmp ($05, x)	; c1 05
B29_1498:		bne B29_146d ; d0 d3

B29_149a:		lda #$13		; a9 13
B29_149c:		jsr playSound		; 20 5f e2
B29_149f:		lda #$00		; a9 00
B29_14a1:		ldy #$08		; a0 08
B29_14a3:		jsr func_1f_0f5c		; 20 5c ef
B29_14a6:		lda $04a8		; ad a8 04
B29_14a9:		asl a			; 0a
B29_14aa:		tay				; a8 
B29_14ab:		lda $b483, y	; b9 83 b4
B29_14ae:		sta $04f2, x	; 9d f2 04
B29_14b1:		lda $b484, y	; b9 84 b4
B29_14b4:		sta $0509, x	; 9d 09 05
B29_14b7:		lda $b487		; ad 87 b4
B29_14ba:		sta $0520, x	; 9d 20 05
B29_14bd:		lda $b488		; ad 88 b4
B29_14c0:		sta $0537, x	; 9d 37 05
B29_14c3:		lda #$00		; a9 00
B29_14c5:		sta $04a8, x	; 9d a8 04
B29_14c8:		lda $0438		; ad 38 04
B29_14cb:		sta $0438, x	; 9d 38 04
B29_14ce:		lda $041c		; ad 1c 04
B29_14d1:		sta $041c, x	; 9d 1c 04
B29_14d4:		jmp $af54		; 4c 54 af


B29_14d7:		lda $0537, x	; bd 37 05
B29_14da:		clc				; 18 
B29_14db:		adc #$40		; 69 40
B29_14dd:		sta $0537, x	; 9d 37 05
B29_14e0:		lda $0520, x	; bd 20 05
B29_14e3:		adc #$00		; 69 00
B29_14e5:		sta $0520, x	; 9d 20 05
B29_14e8:		jsr func_1f_0f75		; 20 75 ef
B29_14eb:		jsr $b916		; 20 16 b9
B29_14ee:		jsr $b92f		; 20 2f b9
B29_14f1:		jmp $b951		; 4c 51 b9


B29_14f4:		dec $05c1, x	; de c1 05
B29_14f7:		beq B29_14fa ; f0 01

B29_14f9:		rts				; 60 


B29_14fa:		lda #$00		; a9 00
B29_14fc:		ldy #$07		; a0 07
B29_14fe:		jsr func_1f_0f5c		; 20 5c ef
B29_1501:		ldy $10			; a4 10
B29_1503:		lda $04a8, y	; b9 a8 04
B29_1506:		asl a			; 0a
B29_1507:		tay				; a8 
B29_1508:		lda $b489, y	; b9 89 b4
B29_150b:		sta $04f2, x	; 9d f2 04
B29_150e:		lda $b48a, y	; b9 8a b4
B29_1511:		sta $0509, x	; 9d 09 05
B29_1514:		lda #$00		; a9 00
B29_1516:		sta $04a8, x	; 9d a8 04
B29_1519:		ldy $10			; a4 10
B29_151b:		lda $0438, y	; b9 38 04
B29_151e:		sta $0438, x	; 9d 38 04
B29_1521:		sec				; 38 
B29_1522:		lda $041c, y	; b9 1c 04
B29_1525:		sbc #$04		; e9 04
B29_1527:		sta $041c, x	; 9d 1c 04
B29_152a:		jmp $af54		; 4c 54 af


B29_152d:		lda $061d, x	; bd 1d 06
B29_1530:		and #$0f		; 29 0f
B29_1532:		cmp #$03		; c9 03
B29_1534:		beq B29_1541 ; f0 0b

B29_1536:		lda $0438, x	; bd 38 04
B29_1539:		cmp #$f1		; c9 f1
B29_153b:		bcs B29_1541 ; b0 04

B29_153d:		cmp #$10		; c9 10
B29_153f:		bcs B29_155b ; b0 1a

B29_1541:		jsr $bc55		; 20 55 bc
B29_1544:		lda #$00		; a9 00
B29_1546:		sec				; 38 
B29_1547:		sbc $0509, x	; fd 09 05
B29_154a:		sta $0509, x	; 9d 09 05
B29_154d:		lda #$00		; a9 00
B29_154f:		sbc $04f2, x	; fd f2 04
B29_1552:		sta $04f2, x	; 9d f2 04
B29_1555:		inc $0565, x	; fe 65 05
B29_1558:		inc $0565, x	; fe 65 05
B29_155b:		lda $1a			; a5 1a
B29_155d:		and #$0f		; 29 0f
B29_155f:		bne B29_1566 ; d0 05

B29_1561:		lda #$15		; a9 15
B29_1563:		jsr playSound		; 20 5f e2
B29_1566:		jsr func_1f_0f75		; 20 75 ef
B29_1569:		jsr $b916		; 20 16 b9
B29_156c:		jmp $b951		; 4c 51 b9


B29_156f:		ldy $10			; a4 10
B29_1571:		lda $0438, y	; b9 38 04
B29_1574:		sec				; 38 
B29_1575:		sbc $0438, x	; fd 38 04
B29_1578:		bcs B29_157f ; b0 05

B29_157a:		eor #$ff		; 49 ff
B29_157c:		clc				; 18 
B29_157d:		adc #$01		; 69 01
B29_157f:		cmp #$10		; c9 10
B29_1581:		bcs B29_155b ; b0 d8

B29_1583:		lda $041c, y	; b9 1c 04
B29_1586:		sec				; 38 
B29_1587:		sbc $041c, x	; fd 1c 04
B29_158a:		bcs B29_1591 ; b0 05

B29_158c:		eor #$ff		; 49 ff
B29_158e:		clc				; 18 
B29_158f:		adc #$01		; 69 01
B29_1591:		cmp #$10		; c9 10
B29_1593:		bcs B29_155b ; b0 c6

B29_1595:		lda #$00		; a9 00
B29_1597:		sta $0438, x	; 9d 38 04
B29_159a:		rts				; 60 


B29_159b:		lda $10			; a5 10
B29_159d:		cmp #$01		; c9 01
B29_159f:		beq B29_15b3 ; f0 12

B29_15a1:		ldy #$00		; a0 00
B29_15a3:		lda $b708, y	; b9 08 b7
B29_15a6:		cmp #$ff		; c9 ff
B29_15a8:		beq B29_15b3 ; f0 09

B29_15aa:		cmp $0565		; cd 65 05
B29_15ad:		beq B29_15b7 ; f0 08

B29_15af:		iny				; c8 
B29_15b0:		iny				; c8 
B29_15b1:		bne B29_15a3 ; d0 f0

B29_15b3:		ldy #$00		; a0 00
B29_15b5:		sec				; 38 
B29_15b6:		rts				; 60 


B29_15b7:		clc				; 18 
B29_15b8:		rts				; 60 


B29_15b9:		dec $05c1, x	; de c1 05
B29_15bc:		bne B29_15b8 ; d0 fa

B29_15be:		ldy $10			; a4 10
B29_15c0:		lda $0438, y	; b9 38 04
B29_15c3:		sta $0c			; 85 0c
B29_15c5:		lda $041c, y	; b9 1c 04
B29_15c8:		sta $0d			; 85 0d
B29_15ca:		lda $04a8, y	; b9 a8 04
B29_15cd:		sta $0e			; 85 0e
B29_15cf:		lda #$13		; a9 13
B29_15d1:		jsr playSound		; 20 5f e2
B29_15d4:		jsr $b59b		; 20 9b b5
B29_15d7:		bcs B29_15e8 ; b0 0f

B29_15d9:		lda $b709, y	; b9 09 b7
B29_15dc:		asl a			; 0a
B29_15dd:		sta $00			; 85 00
B29_15df:		asl a			; 0a
B29_15e0:		asl a			; 0a
B29_15e1:		clc				; 18 
B29_15e2:		adc $00			; 65 00
B29_15e4:		adc $b709, y	; 79 09 b7
B29_15e7:		tay				; a8 
B29_15e8:		lda $b70d, y	; b9 0d b7
B29_15eb:		clc				; 18 
B29_15ec:		adc $0c			; 65 0c
B29_15ee:		sta $0438, x	; 9d 38 04
B29_15f1:		lda $b70e, y	; b9 0e b7
B29_15f4:		clc				; 18 
B29_15f5:		adc $0d			; 65 0d
B29_15f7:		sta $041c, x	; 9d 1c 04
B29_15fa:		lda $0e			; a5 0e
B29_15fc:		eor $b70f, y	; 59 0f b7
B29_15ff:		sta $04a8, x	; 9d a8 04
B29_1602:		beq B29_1608 ; f0 04

B29_1604:		iny				; c8 
B29_1605:		iny				; c8 
B29_1606:		iny				; c8 
B29_1607:		iny				; c8 
B29_1608:		lda $b710, y	; b9 10 b7
B29_160b:		sta $04f2, x	; 9d f2 04
B29_160e:		lda $b711, y	; b9 11 b7
B29_1611:		sta $0509, x	; 9d 09 05
B29_1614:		lda $b712, y	; b9 12 b7
B29_1617:		sta $0520, x	; 9d 20 05
B29_161a:		lda $b713, y	; b9 13 b7
B29_161d:		sta $0537, x	; 9d 37 05
B29_1620:		lda #$00		; a9 00
B29_1622:		ldy #$08		; a0 08
B29_1624:		jsr func_1f_0f5c		; 20 5c ef
B29_1627:		jmp $af54		; 4c 54 af


B29_162a:		dec $05c1, x	; de c1 05
B29_162d:		bne B29_15b8 ; d0 89

B29_162f:		ldy $10			; a4 10
B29_1631:		lda $0438, y	; b9 38 04
B29_1634:		sta $0c			; 85 0c
B29_1636:		lda $041c, y	; b9 1c 04
B29_1639:		sta $0d			; 85 0d
B29_163b:		lda $04a8, y	; b9 a8 04
B29_163e:		sta $0e			; 85 0e
B29_1640:		lda #$14		; a9 14
B29_1642:		jsr playSound		; 20 5f e2
B29_1645:		jsr $b59b		; 20 9b b5
B29_1648:		bcs B29_1656 ; b0 0c

B29_164a:		lda $b709, y	; b9 09 b7
B29_164d:		asl a			; 0a
B29_164e:		asl a			; 0a
B29_164f:		sta $00			; 85 00
B29_1651:		asl a			; 0a
B29_1652:		clc				; 18 
B29_1653:		adc $00			; 65 00
B29_1655:		tay				; a8 
B29_1656:		lda $b72e, y	; b9 2e b7
B29_1659:		sta $0400, x	; 9d 00 04
B29_165c:		lda $b72f, y	; b9 2f b7
B29_165f:		clc				; 18 
B29_1660:		adc $0c			; 65 0c
B29_1662:		sta $0438, x	; 9d 38 04
B29_1665:		lda $b730, y	; b9 30 b7
B29_1668:		clc				; 18 
B29_1669:		adc $0d			; 65 0d
B29_166b:		sta $041c, x	; 9d 1c 04
B29_166e:		lda $10			; a5 10
B29_1670:		cmp #$01		; c9 01
B29_1672:		beq B29_1684 ; f0 10

B29_1674:		lda $0565		; ad 65 05
B29_1677:		cmp #$1c		; c9 1c
B29_1679:		bne B29_1684 ; d0 09

B29_167b:		clc				; 18 
B29_167c:		lda $041c, x	; bd 1c 04
B29_167f:		adc #$06		; 69 06
B29_1681:		sta $041c, x	; 9d 1c 04
B29_1684:		lda $0e			; a5 0e
B29_1686:		eor $b731, y	; 59 31 b7
B29_1689:		sta $04a8, x	; 9d a8 04
B29_168c:		beq B29_1692 ; f0 04

B29_168e:		iny				; c8 
B29_168f:		iny				; c8 
B29_1690:		iny				; c8 
B29_1691:		iny				; c8 
B29_1692:		lda $b732, y	; b9 32 b7
B29_1695:		sta $04f2, x	; 9d f2 04
B29_1698:		lda $b733, y	; b9 33 b7
B29_169b:		sta $0509, x	; 9d 09 05
B29_169e:		lda $b734, y	; b9 34 b7
B29_16a1:		sta $0520, x	; 9d 20 05
B29_16a4:		lda $b735, y	; b9 35 b7
B29_16a7:		sta $0537, x	; 9d 37 05
B29_16aa:		lda #$00		; a9 00
B29_16ac:		sta $048c, x	; 9d 8c 04
B29_16af:		jmp $af54		; 4c 54 af


B29_16b2:		dec $05c1, x	; de c1 05
B29_16b5:		bne B29_1707 ; d0 50

B29_16b7:		lda #$14		; a9 14
B29_16b9:		jsr playSound		; 20 5f e2
B29_16bc:		lda #$00		; a9 00
B29_16be:		sta $048c, x	; 9d 8c 04
B29_16c1:		lda #$4e		; a9 4e
B29_16c3:		sta $0400, x	; 9d 00 04
B29_16c6:		lda $04a8		; ad a8 04
B29_16c9:		sta $04a8, x	; 9d a8 04
B29_16cc:		asl a			; 0a
B29_16cd:		tay				; a8 
B29_16ce:		lda $b48d, y	; b9 8d b4
B29_16d1:		sta $04f2, x	; 9d f2 04
B29_16d4:		lda $b48e, y	; b9 8e b4
B29_16d7:		sta $0509, x	; 9d 09 05
B29_16da:		lda #$00		; a9 00
B29_16dc:		sta $0537, x	; 9d 37 05
B29_16df:		sta $0520, x	; 9d 20 05
B29_16e2:		lda $0438		; ad 38 04
B29_16e5:		sta $0438, x	; 9d 38 04
B29_16e8:		sec				; 38 
B29_16e9:		lda $041c		; ad 1c 04
B29_16ec:		sbc #$04		; e9 04
B29_16ee:		sta $041c, x	; 9d 1c 04
B29_16f1:		jmp $af54		; 4c 54 af


B29_16f4:		lda $061d, x	; bd 1d 06
B29_16f7:		bne B29_1702 ; d0 09

B29_16f9:		jsr $b916		; 20 16 b9
B29_16fc:		jsr $b92f		; 20 2f b9
B29_16ff:		jmp $b951		; 4c 51 b9


B29_1702:		lda #$00		; a9 00
B29_1704:		sta $0438, x	; 9d 38 04
B29_1707:		rts				; 60 


B29_1708:		lsr $01			; 46 01
B29_170a:		pha				; 48 
B29_170b:	.db $02
B29_170c:	.db $ff
B29_170d:		.db $00				; 00
B29_170e:		.db $00				; 00
B29_170f:		.db $00				; 00
B29_1710:	.db $02
B29_1711:		.db $00				; 00
B29_1712:	.db $fa
B29_1713:	.db $80
B29_1714:		inc $fa00, x	; fe 00 fa
B29_1717:	.db $80
B29_1718:		.db $00				; 00
B29_1719:		.db $00				; 00
B29_171a:		ora ($02, x)	; 01 02
B29_171c:		.db $00				; 00
B29_171d:	.db $fa
B29_171e:	.db $80
B29_171f:		inc $fa00, x	; fe 00 fa
B29_1722:	.db $80
B29_1723:		.db $00				; 00
B29_1724:		.db $00				; 00
B29_1725:		.db $00				; 00
B29_1726:		.db $00				; 00
B29_1727:		.db $00				; 00
B29_1728:		.db $00				; 00
B29_1729:		.db $00				; 00
B29_172a:		.db $00				; 00
B29_172b:		.db $00				; 00
B29_172c:		.db $00				; 00
B29_172d:		.db $00				; 00
B29_172e:		lsr $fc00		; 4e 00 fc
B29_1731:		.db $00				; 00
B29_1732:	.db $04
B29_1733:		.db $00				; 00
B29_1734:		.db $00				; 00
B29_1735:		.db $00				; 00
B29_1736:	.db $fc
B29_1737:		.db $00				; 00
B29_1738:		.db $00				; 00
B29_1739:		.db $00				; 00
B29_173a:	.db $4e $00 $00
B29_173d:		ora ($04, x)	; 01 04
B29_173f:		.db $00				; 00
B29_1740:		.db $00				; 00
B29_1741:		.db $00				; 00
B29_1742:	.db $fc
B29_1743:		.db $00				; 00
B29_1744:		.db $00				; 00
B29_1745:		.db $00				; 00
B29_1746:	.db $64
B29_1747:		.db $00				; 00
B29_1748:		.db $00				; 00
B29_1749:		.db $00				; 00
B29_174a:		.db $00				; 00
B29_174b:		.db $00				; 00
B29_174c:	.db $04
B29_174d:		.db $00				; 00
B29_174e:		.db $00				; 00
B29_174f:		.db $00				; 00
B29_1750:	.db $04
B29_1751:		.db $00				; 00
B29_1752:		dec $05c1, x	; de c1 05
B29_1755:		bne B29_1791 ; d0 3a

B29_1757:		lda #$00		; a9 00
B29_1759:		sta $048c, x	; 9d 8c 04
B29_175c:		lda #$52		; a9 52
B29_175e:		sta $0400, x	; 9d 00 04
B29_1761:		lda $04a8		; ad a8 04
B29_1764:		asl a			; 0a
B29_1765:		tay				; a8 
B29_1766:		lda $b491, y	; b9 91 b4
B29_1769:		sta $04f2, x	; 9d f2 04
B29_176c:		lda $b492, y	; b9 92 b4
B29_176f:		sta $0509, x	; 9d 09 05
B29_1772:		lda #$fe		; a9 fe
B29_1774:		sta $0520, x	; 9d 20 05
B29_1777:		lda #$80		; a9 80
B29_1779:		sta $0537, x	; 9d 37 05
B29_177c:		lda $04a8		; ad a8 04
B29_177f:		sta $04a8, x	; 9d a8 04
B29_1782:		lda $0438		; ad 38 04
B29_1785:		sta $0438, x	; 9d 38 04
B29_1788:		lda $041c		; ad 1c 04
B29_178b:		sta $041c, x	; 9d 1c 04
B29_178e:		jmp $af54		; 4c 54 af


B29_1791:		rts				; 60 


B29_1792:		lda #$00		; a9 00
B29_1794:		ldy #$08		; a0 08
B29_1796:		jsr $fc1e		; 20 1e fc
B29_1799:		bne B29_17b5 ; d0 1a

B29_179b:		lda $0537, x	; bd 37 05
B29_179e:		clc				; 18 
B29_179f:		adc #$20		; 69 20
B29_17a1:		sta $0537, x	; 9d 37 05
B29_17a4:		lda $0520, x	; bd 20 05
B29_17a7:		adc #$00		; 69 00
B29_17a9:		sta $0520, x	; 9d 20 05
B29_17ac:		jsr $b916		; 20 16 b9
B29_17af:		jsr $b92f		; 20 2f b9
B29_17b2:		jmp $b951		; 4c 51 b9


B29_17b5:		lda #$16		; a9 16
B29_17b7:		jsr playSound		; 20 5f e2
B29_17ba:		jsr $bc55		; 20 55 bc
B29_17bd:		lda #$4c		; a9 4c
B29_17bf:		sta $05c1, x	; 9d c1 05
B29_17c2:		lda #$00		; a9 00
B29_17c4:		ldy #$0c		; a0 0c
B29_17c6:		jsr func_1f_0f5c		; 20 5c ef
B29_17c9:		inc $0565, x	; fe 65 05
B29_17cc:		inc $0565, x	; fe 65 05
B29_17cf:		rts				; 60 


B29_17d0:		dec $05c1, x	; de c1 05
B29_17d3:		bne B29_17db ; d0 06

B29_17d5:		lda #$00		; a9 00
B29_17d7:		sta $0438, x	; 9d 38 04
B29_17da:		rts				; 60 


B29_17db:		lda $1a			; a5 1a
B29_17dd:		and #$0f		; 29 0f
B29_17df:		bne B29_17e4 ; d0 03

B29_17e1:		jsr $bc55		; 20 55 bc
B29_17e4:		jsr func_1f_0f75		; 20 75 ef
B29_17e7:		jmp $b951		; 4c 51 b9


B29_17ea:		lda $054e, x	; bd 4e 05
B29_17ed:		sta $054f, x	; 9d 4f 05
B29_17f0:		sta $0550, x	; 9d 50 05
B29_17f3:		jsr $b46e		; 20 6e b4
B29_17f6:		clc				; 18 
B29_17f7:		adc #$01		; 69 01
B29_17f9:		sta $05c2, x	; 9d c2 05
B29_17fc:		sta $05c3, x	; 9d c3 05
B29_17ff:		lda #$00		; a9 00
B29_1801:		sta $0438, x	; 9d 38 04
B29_1804:		sta $0439, x	; 9d 39 04
B29_1807:		sta $043a, x	; 9d 3a 04
B29_180a:		sta $041c, x	; 9d 1c 04
B29_180d:		sta $041d, x	; 9d 1d 04
B29_1810:		sta $041e, x	; 9d 1e 04
B29_1813:		inc $0565, x	; fe 65 05
B29_1816:		inc $0565, x	; fe 65 05
B29_1819:		lda $0565, x	; bd 65 05
B29_181c:		sta $0566, x	; 9d 66 05
B29_181f:		sta $0567, x	; 9d 67 05
B29_1822:		rts				; 60 


B29_1823:		dec $05c1, x	; de c1 05
B29_1826:		beq B29_1829 ; f0 01

B29_1828:		rts				; 60 


B29_1829:		lda #$21		; a9 21
B29_182b:		jsr playSound		; 20 5f e2
B29_182e:		lda #$02		; a9 02
B29_1830:		ldy #$09		; a0 09
B29_1832:		jsr func_1f_0f5c		; 20 5c ef
B29_1835:		txa				; 8a 
B29_1836:		sec				; 38 
B29_1837:		sbc #$14		; e9 14
B29_1839:		asl a			; 0a
B29_183a:		asl a			; 0a
B29_183b:		tay				; a8 
B29_183c:		lda $b8f1, y	; b9 f1 b8
B29_183f:		sta $04f2, x	; 9d f2 04
B29_1842:		lda $b8f2, y	; b9 f2 b8
B29_1845:		sta $0509, x	; 9d 09 05
B29_1848:		lda $b8f3, y	; b9 f3 b8
B29_184b:		sta $0520, x	; 9d 20 05
B29_184e:		lda $b8f4, y	; b9 f4 b8
B29_1851:		sta $0537, x	; 9d 37 05
B29_1854:		lda #$00		; a9 00
B29_1856:		sta $04a8, x	; 9d a8 04
B29_1859:		lda $0438		; ad 38 04
B29_185c:		sta $0438, x	; 9d 38 04
B29_185f:		sta $05ef, x	; 9d ef 05
B29_1862:		lda $04c4		; ad c4 04
B29_1865:		sta $04c4, x	; 9d c4 04
B29_1868:		sta $05d8, x	; 9d d8 05
B29_186b:		lda $041c		; ad 1c 04
B29_186e:		sta $041c, x	; 9d 1c 04
B29_1871:		lda #$20		; a9 20
B29_1873:		sta $05c1, x	; 9d c1 05
B29_1876:		jmp $af54		; 4c 54 af


B29_1879:		lda #$00		; a9 00
B29_187b:		sta $054e, x	; 9d 4e 05
B29_187e:		sta $0400, x	; 9d 00 04
B29_1881:		sta $0438, x	; 9d 38 04
B29_1884:		sta $041c, x	; 9d 1c 04
B29_1887:		inx				; e8 
B29_1888:		cpx #$17		; e0 17
B29_188a:		bcc B29_187b ; 90 ef

B29_188c:		jsr $b969		; 20 69 b9
B29_188f:		bcc B29_18a1 ; 90 10

B29_1891:		lda $0565		; ad 65 05
B29_1894:		ora #$80		; 09 80
B29_1896:		sta $0565		; 8d 65 05
B29_1899:		lda #$1a		; a9 1a
B29_189b:		sta $2a			; 85 2a
B29_189d:		lda #$00		; a9 00
B29_189f:		sta $6b			; 85 6b
B29_18a1:		pla				; 68 
B29_18a2:		pla				; 68 
B29_18a3:		rts				; 60 


B29_18a4:		dec $05c1, x	; de c1 05
B29_18a7:		beq B29_1879 ; f0 d0

B29_18a9:		lda #$00		; a9 00
B29_18ab:		sta $0470, x	; 9d 70 04
B29_18ae:		lda $0438, x	; bd 38 04
B29_18b1:		sta $09			; 85 09
B29_18b3:		lda $04c4, x	; bd c4 04
B29_18b6:		sta $08			; 85 08
B29_18b8:		lda $05ef, x	; bd ef 05
B29_18bb:		sta $0438, x	; 9d 38 04
B29_18be:		lda $05d8, x	; bd d8 05
B29_18c1:		sta $04c4, x	; 9d c4 04
B29_18c4:		lda $09			; a5 09
B29_18c6:		sta $05ef, x	; 9d ef 05
B29_18c9:		lda $08			; a5 08
B29_18cb:		sta $05d8, x	; 9d d8 05
B29_18ce:		lda #$00		; a9 00
B29_18d0:		sec				; 38 
B29_18d1:		sbc $0509, x	; fd 09 05
B29_18d4:		sta $0509, x	; 9d 09 05
B29_18d7:		lda #$00		; a9 00
B29_18d9:		sbc $04f2, x	; fd f2 04
B29_18dc:		sta $04f2, x	; 9d f2 04
B29_18df:		jsr func_1f_0f75		; 20 75 ef
B29_18e2:		jsr $b916		; 20 16 b9
B29_18e5:		jsr $b8fd		; 20 fd b8
B29_18e8:		jsr $b92f		; 20 2f b9
B29_18eb:		jsr $b951		; 20 51 b9
B29_18ee:		jmp $b943		; 4c 43 b9


B29_18f1:	.db $02
B29_18f2:		.db $00				; 00
B29_18f3:		.db $00				; 00
B29_18f4:		.db $00				; 00
B29_18f5:		ora ($9e, x)	; 01 9e
B29_18f7:	.db $fe $d4 $00
B29_18fa:	.db $9e
B29_18fb:		inc $bd1a, x	; fe 1a bd
B29_18fe:	.db $ef
B29_18ff:		ora $f0			; 05 f0
B29_1901:	.db $13
B29_1902:		lda $05d8, x	; bd d8 05
B29_1905:		sec				; 38 
B29_1906:		sbc $0509, x	; fd 09 05
B29_1909:		sta $05d8, x	; 9d d8 05
B29_190c:		lda $05ef, x	; bd ef 05
B29_190f:		sbc $04f2, x	; fd f2 04
B29_1912:		sta $05ef, x	; 9d ef 05
B29_1915:		rts				; 60 


B29_1916:		lda $0438, x	; bd 38 04
B29_1919:		beq B29_192e ; f0 13

B29_191b:		lda $04c4, x	; bd c4 04
B29_191e:		clc				; 18 
B29_191f:		adc $0509, x	; 7d 09 05
B29_1922:		sta $04c4, x	; 9d c4 04
B29_1925:		lda $0438, x	; bd 38 04
B29_1928:		adc $04f2, x	; 7d f2 04
B29_192b:		sta $0438, x	; 9d 38 04
B29_192e:		rts				; 60 


B29_192f:		lda $04db, x	; bd db 04
B29_1932:		clc				; 18 
B29_1933:		adc $0537, x	; 7d 37 05
B29_1936:		sta $04db, x	; 9d db 04
B29_1939:		lda $041c, x	; bd 1c 04
B29_193c:		adc $0520, x	; 7d 20 05
B29_193f:		sta $041c, x	; 9d 1c 04
B29_1942:		rts				; 60 


B29_1943:		lda $68			; a5 68
B29_1945:		bmi B29_1950 ; 30 09

B29_1947:		lda $05ef, x	; bd ef 05
B29_194a:		sec				; 38 
B29_194b:		sbc $6e			; e5 6e
B29_194d:		sta $05ef, x	; 9d ef 05
B29_1950:		rts				; 60 


B29_1951:		lda $68			; a5 68
B29_1953:		bmi B29_195f ; 30 0a

B29_1955:		lda $0438, x	; bd 38 04
B29_1958:		sec				; 38 
B29_1959:		sbc $6e			; e5 6e
B29_195b:		sta $0438, x	; 9d 38 04
B29_195e:		rts				; 60 


B29_195f:		lda $041c, x	; bd 1c 04
B29_1962:		clc				; 18 
B29_1963:		adc $6e			; 65 6e
B29_1965:		sta $041c, x	; 9d 1c 04
B29_1968:		rts				; 60 


B29_1969:		lda $7d			; a5 7d
B29_196b:		and #$f0		; 29 f0
B29_196d:		cmp #$30		; c9 30
B29_196f:		bne B29_1980 ; d0 0f

B29_1971:		lda #$00		; a9 00
B29_1973:		ldx #$10		; a2 10
B29_1975:		jsr func_1f_1cdd		; 20 dd fc
B29_1978:		cmp #$02		; c9 02
B29_197a:		beq B29_1982 ; f0 06

B29_197c:		cmp #$03		; c9 03
B29_197e:		beq B29_1982 ; f0 02

B29_1980:		clc				; 18 
B29_1981:		rts				; 60 


B29_1982:		sec				; 38 
B29_1983:		rts				; 60 


B29_1984:		lda #$0e		; a9 0e
B29_1986:		sta $048c, x	; 9d 8c 04
B29_1989:		lda #$18		; a9 18
B29_198b:		sta $0400, x	; 9d 00 04
B29_198e:		lda #$00		; a9 00
B29_1990:		sta $0470, x	; 9d 70 04
B29_1993:		lda #$20		; a9 20
B29_1995:		sta $05c1, x	; 9d c1 05
B29_1998:		inc $0565, x	; fe 65 05
B29_199b:		inc $0565, x	; fe 65 05
B29_199e:		rts				; 60 


B29_199f:		lda #$0e		; a9 0e
B29_19a1:		sta $048c, x	; 9d 8c 04
B29_19a4:		lda #$1a		; a9 1a
B29_19a6:		sta $0400, x	; 9d 00 04
B29_19a9:		lda #$00		; a9 00
B29_19ab:		sta $0470, x	; 9d 70 04
B29_19ae:		lda #$20		; a9 20
B29_19b0:		sta $05c1, x	; 9d c1 05
B29_19b3:		inc $0565, x	; fe 65 05
B29_19b6:		inc $0565, x	; fe 65 05
B29_19b9:		rts				; 60 


B29_19ba:		inc $0565, x	; fe 65 05
B29_19bd:		inc $0565, x	; fe 65 05
B29_19c0:		dec $05c1, x	; de c1 05
B29_19c3:		bne B29_19ce ; d0 09

B29_19c5:		lda #$00		; a9 00
B29_19c7:		sta $0400, x	; 9d 00 04
B29_19ca:		sta $054e, x	; 9d 4e 05
B29_19cd:		rts				; 60 


B29_19ce:		lda $061d, x	; bd 1d 06
B29_19d1:		bne B29_19ed ; d0 1a

B29_19d3:		lda $0537, x	; bd 37 05
B29_19d6:		clc				; 18 
B29_19d7:		adc #$40		; 69 40
B29_19d9:		sta $0537, x	; 9d 37 05
B29_19dc:		lda $0520, x	; bd 20 05
B29_19df:		adc #$00		; 69 00
B29_19e1:		sta $0520, x	; 9d 20 05
B29_19e4:		jsr $b916		; 20 16 b9
B29_19e7:		jsr $b92f		; 20 2f b9
B29_19ea:		jmp $b951		; 4c 51 b9


B29_19ed:		lda #$00		; a9 00
B29_19ef:		sta $0438, x	; 9d 38 04
B29_19f2:		rts				; 60 


B29_19f3:		clc				; 18 
B29_19f4:		rts				; 60 


B29_19f5:		ldx #$14		; a2 14
B29_19f7:		ldy $3b			; a4 3b
B29_19f9:	.db $b9 $85 $00
B29_19fc:		beq B29_1a2c ; f0 2e

B29_19fe:		sta $08			; 85 08
B29_1a00:		jsr $baa2		; 20 a2 ba
B29_1a03:		bcc B29_1a2c ; 90 27

B29_1a05:		ldy $3b			; a4 3b
B29_1a07:		lda $08			; a5 08
B29_1a09:		cmp #$06		; c9 06
B29_1a0b:		beq B29_1a5c ; f0 4f

B29_1a0d:		cmp #$07		; c9 07
B29_1a0f:		beq B29_1a5c ; f0 4b

B29_1a11:		cmp #$0b		; c9 0b
B29_1a13:		beq B29_1a43 ; f0 2e

B29_1a15:	.db $b9 $87 $00
B29_1a18:		sta $09			; 85 09
B29_1a1a:		lda #$03		; a9 03
B29_1a1c:		sta $0a			; 85 0a
B29_1a1e:		lda $054e, x	; bd 4e 05
B29_1a21:		beq B29_1a2e ; f0 0b

B29_1a23:		dec $09			; c6 09
B29_1a25:		bmi B29_1a2c ; 30 05

B29_1a27:		inx				; e8 
B29_1a28:		dec $0a			; c6 0a
B29_1a2a:		bne B29_1a1e ; d0 f2

B29_1a2c:		clc				; 18 
B29_1a2d:		rts				; 60 


B29_1a2e:		jsr $baaa		; 20 aa ba
B29_1a31:		lda $08			; a5 08
B29_1a33:		sta $054e, x	; 9d 4e 05
B29_1a36:		lda #$00		; a9 00
B29_1a38:		sta $0565, x	; 9d 65 05
B29_1a3b:		sta $061d, x	; 9d 1d 06
B29_1a3e:		sta $0470, x	; 9d 70 04
B29_1a41:		sec				; 38 
B29_1a42:		rts				; 60 


B29_1a43:		lda $ab			; a5 ab
B29_1a45:		bne B29_1a5a ; d0 13

B29_1a47:		jsr $baaa		; 20 aa ba
B29_1a4a:		lda #$b4		; a9 b4
B29_1a4c:		sta $ac			; 85 ac
B29_1a4e:		lda #$01		; a9 01
B29_1a50:		sta $ab			; 85 ab
B29_1a52:		sta $06c9		; 8d c9 06
B29_1a55:		jsr $e199		; 20 99 e1
B29_1a58:		clc				; 18 
B29_1a59:		rts				; 60 


B29_1a5a:		clc				; 18 
B29_1a5b:		rts				; 60 


B29_1a5c:		lda $0562		; ad 62 05
B29_1a5f:		ora $0563		; 0d 63 05
B29_1a62:		ora $0564		; 0d 64 05
B29_1a65:		beq B29_1a2e ; f0 c7

B29_1a67:		bne B29_1a2c ; d0 c3

B29_1a69:		ldx #$14		; a2 14
B29_1a6b:		ldy $3b			; a4 3b
B29_1a6d:	.db $b9 $8e $00
B29_1a70:		sta $09			; 85 09
B29_1a72:		lda #$03		; a9 03
B29_1a74:		sta $0a			; 85 0a
B29_1a76:		ldy #$00		; a0 00
B29_1a78:		lda $054e, x	; bd 4e 05
B29_1a7b:		beq B29_1a8e ; f0 11

B29_1a7d:		dec $09			; c6 09
B29_1a7f:		bmi B29_1a86 ; 30 05

B29_1a81:		inx				; e8 
B29_1a82:		dec $0a			; c6 0a
B29_1a84:		bne B29_1a78 ; d0 f2

B29_1a86:		cpy #$00		; c0 00
B29_1a88:		beq B29_1a8c ; f0 02

B29_1a8a:		sec				; 38 
B29_1a8b:		rts				; 60 


B29_1a8c:		clc				; 18 
B29_1a8d:		rts				; 60 


B29_1a8e:		tya				; 98 
B29_1a8f:		sta $05d8, x	; 9d d8 05
B29_1a92:		iny				; c8 
B29_1a93:		lda #$0a		; a9 0a
B29_1a95:		sta $054e, x	; 9d 4e 05
B29_1a98:		lda #$00		; a9 00
B29_1a9a:		sta $0565, x	; 9d 65 05
B29_1a9d:		sta $061d, x	; 9d 1d 06
B29_1aa0:		beq B29_1a7d ; f0 db

B29_1aa2:		ldy $08			; a4 08
B29_1aa4:		lda $84			; a5 84
B29_1aa6:		cmp $bab6, y	; d9 b6 ba
B29_1aa9:		rts				; 60 


B29_1aaa:		cpx #$14		; e0 14
B29_1aac:		bcc B29_1aa9 ; 90 fb

B29_1aae:		ldy $08			; a4 08
B29_1ab0:		lda $bab6, y	; b9 b6 ba
B29_1ab3:		jmp $e753		; 4c 53 e7


B29_1ab6:		.db $00				; 00
B29_1ab7:		ora ($01, x)	; 01 01
B29_1ab9:		ora ($01, x)	; 01 01
B29_1abb:		ora ($01, x)	; 01 01
B29_1abd:		ora ($01, x)	; 01 01
B29_1abf:		ora ($00, x)	; 01 00
B29_1ac1:		ora $ad			; 05 ad
B29_1ac3:	.db $7a
B29_1ac4:	.db $bb
B29_1ac5:		sta $08			; 85 08
B29_1ac7:		lda $bb7b		; ad 7b bb
B29_1aca:		sta $09			; 85 09
B29_1acc:		ldy #$00		; a0 00
B29_1ace:		lda $bb6f, y	; b9 6f bb
B29_1ad1:		cmp #$ff		; c9 ff
B29_1ad3:		beq B29_1b0e ; f0 39

B29_1ad5:		cmp $0565, x	; dd 65 05
B29_1ad8:		beq B29_1ade ; f0 04

B29_1ada:		iny				; c8 
B29_1adb:		iny				; c8 
B29_1adc:		bne B29_1ace ; d0 f0

B29_1ade:		cmp #$46		; c9 46
B29_1ae0:		bne B29_1aeb ; d0 09

B29_1ae2:		lda $05aa		; ad aa 05
B29_1ae5:		cmp #$0d		; c9 0d
B29_1ae7:		bne B29_1aeb ; d0 02

B29_1ae9:		iny				; c8 
B29_1aea:		iny				; c8 
B29_1aeb:		lda $bb70, y	; b9 70 bb
B29_1aee:		tay				; a8 
B29_1aef:		jmp $bb3f		; 4c 3f bb


B29_1af2:		ldx #$00		; a2 00
B29_1af4:		dec $057c, x	; de 7c 05
B29_1af7:		beq B29_1afb ; f0 02

B29_1af9:		clc				; 18 
B29_1afa:		rts				; 60 


B29_1afb:		lda $054e, x	; bd 4e 05
B29_1afe:		cmp #$02		; c9 02
B29_1b00:		;removed
	.db $f0 $c0

B29_1b02:		asl a			; 0a
B29_1b03:		tay				; a8 
B29_1b04:		lda $bb76, y	; b9 76 bb
B29_1b07:		sta $08			; 85 08
B29_1b09:		lda $bb77, y	; b9 77 bb
B29_1b0c:		sta $09			; 85 09
B29_1b0e:		ldy #$00		; a0 00
B29_1b10:		lda $bb64, y	; b9 64 bb
B29_1b13:		cmp #$ff		; c9 ff
B29_1b15:		beq B29_1b39 ; f0 22

B29_1b17:		cmp $0565, x	; dd 65 05
B29_1b1a:		beq B29_1b20 ; f0 04

B29_1b1c:		iny				; c8 
B29_1b1d:		iny				; c8 
B29_1b1e:		bne B29_1b10 ; d0 f0

B29_1b20:		cmp #$24		; c9 24
B29_1b22:		bne B29_1b3b ; d0 17

B29_1b24:		lda $04a8, x	; bd a8 04
B29_1b27:		beq B29_1b32 ; f0 09

B29_1b29:		lda $05ef, x	; bd ef 05
B29_1b2c:		beq B29_1b3b ; f0 0d

B29_1b2e:		iny				; c8 
B29_1b2f:		iny				; c8 
B29_1b30:		bne B29_1b3b ; d0 09

B29_1b32:		lda $05ef, x	; bd ef 05
B29_1b35:		bne B29_1b3b ; d0 04

B29_1b37:		beq B29_1b2e ; f0 f5

B29_1b39:		ldy #$00		; a0 00
B29_1b3b:		lda $bb65, y	; b9 65 bb
B29_1b3e:		tay				; a8 
B29_1b3f:		lda ($08), y	; b1 08
B29_1b41:		sta $0a			; 85 0a
B29_1b43:		iny				; c8 
B29_1b44:		lda ($08), y	; b1 08
B29_1b46:		sta $0b			; 85 0b
B29_1b48:		ldy $0593, x	; bc 93 05
B29_1b4b:		lda ($0a), y	; b1 0a
B29_1b4d:		cmp #$ff		; c9 ff
B29_1b4f:		beq B29_1b62 ; f0 11

B29_1b51:		sta $0400, x	; 9d 00 04
B29_1b54:		iny				; c8 
B29_1b55:		lda ($0a), y	; b1 0a
B29_1b57:		sta $057c, x	; 9d 7c 05
B29_1b5a:		inc $0593, x	; fe 93 05
B29_1b5d:		inc $0593, x	; fe 93 05
B29_1b60:		clc				; 18 
B29_1b61:		rts				; 60 


B29_1b62:		sec				; 38 
B29_1b63:		rts				; 60 


B29_1b64:		jsr $2200		; 20 00 22
B29_1b67:		.db $00				; 00
B29_1b68:	.db $1c
B29_1b69:	.db $02
B29_1b6a:		bit $04			; 24 04
B29_1b6c:		bit $06			; 24 06
B29_1b6e:	.db $ff
B29_1b6f:		lsr $08			; 46 08
B29_1b71:		lsr $0a			; 46 0a
B29_1b73:		pha				; 48 
B29_1b74:	.db $0c
B29_1b75:	.db $ff
B29_1b76:		ror $86bb, x	; 7e bb 86
B29_1b79:	.db $bb
B29_1b7a:		stx $9cbb		; 8e bb 9c
B29_1b7d:	.db $bb
B29_1b7e:		ldy $bb			; a4 bb
B29_1b80:	.db $ab
B29_1b81:	.db $bb
B29_1b82:	.db $b2
B29_1b83:	.db $bb
B29_1b84:	.db $bb
B29_1b85:	.db $bb
B29_1b86:		cpy $bb			; c4 bb
B29_1b88:		cmp #$bb		; c9 bb
B29_1b8a:		dec $d5bb		; ce bb d5
B29_1b8d:	.db $bb
B29_1b8e:	.db $dc
B29_1b8f:	.db $bb
B29_1b90:		sbc ($bb, x)	; e1 bb
B29_1b92:		inc $bb			; e6 bb
B29_1b94:		sbc $f4bb		; edbb f4
B29_1b97:	.db $bb
B29_1b98:	.db $fb
B29_1b99:	.db $bb
B29_1b9a:	.db $02
B29_1b9b:		ldy $bc09, x	; bc 09 bc
B29_1b9e:		;removed
	.db $10 $bc

B29_1ba0:	.db $17
B29_1ba1:		ldy $bc20, x	; bc 20 bc
B29_1ba4:		clc				; 18 
B29_1ba5:		ora $1a			; 05 1a
B29_1ba7:	.db $07
B29_1ba8:	.db $1c
B29_1ba9:		ora #$ff		; 09 ff
B29_1bab:		asl $2005, x	; 1e 05 20
B29_1bae:	.db $07
B29_1baf:	.db $22
B29_1bb0:		ora #$ff		; 09 ff
B29_1bb2:	.db $34
B29_1bb3:		ora $36			; 05 36
B29_1bb5:	.db $07
B29_1bb6:		sec				; 38 
B29_1bb7:		ora #$0a		; 09 0a
B29_1bb9:		ora ($ff, x)	; 01 ff
B29_1bbb:	.db $3a
B29_1bbc:		ora $3c			; 05 3c
B29_1bbe:	.db $07
B29_1bbf:		rol $0c09, x	; 3e 09 0c
B29_1bc2:		ora ($ff, x)	; 01 ff
B29_1bc4:	.db $34
B29_1bc5:		php				; 08 
B29_1bc6:		bit $ff10		; 2c 10 ff
B29_1bc9:		rol $08, x		; 36 08
B29_1bcb:		rol $ff10		; 2e 10 ff
B29_1bce:		sec				; 38 
B29_1bcf:		php				; 08 
B29_1bd0:		bmi B29_1be2 ; 30 10

B29_1bd2:		asl a			; 0a
B29_1bd3:		ora ($ff, x)	; 01 ff
B29_1bd5:	.db $3a
B29_1bd6:		php				; 08 
B29_1bd7:	.db $32
B29_1bd8:		;removed
	.db $10 $0c

B29_1bda:		ora ($ff, x)	; 01 ff
B29_1bdc:		bit $08			; 24 08
B29_1bde:		rol $0d			; 26 0d
B29_1be0:	.db $ff
B29_1be1:	.db $32
B29_1be2:		php				; 08 
B29_1be3:	.db $34
B29_1be4:		ora $2aff		; 0d ff 2a
B29_1be7:		php				; 08 
B29_1be8:		bit $0a0d		; 2c 0d 0a
B29_1beb:		ora ($ff, x)	; 01 ff
B29_1bed:		rol $3008		; 2e 08 30
B29_1bf0:		ora $010c		; 0d 0c 01
B29_1bf3:	.db $ff
B29_1bf4:		clc				; 18 
B29_1bf5:		php				; 08 
B29_1bf6:	.db $1c
B29_1bf7:		ora $0118		; 0d 18 01
B29_1bfa:	.db $ff
B29_1bfb:		rol $08, x		; 36 08
B29_1bfd:	.db $3a
B29_1bfe:		ora $0136		; 0d 36 01
B29_1c01:	.db $ff
B29_1c02:		asl $2208, x	; 1e 08 22
B29_1c05:		ora $011e		; 0d 1e 01
B29_1c08:	.db $ff
B29_1c09:		clc				; 18 
B29_1c0a:		php				; 08 
B29_1c0b:	.db $1a
B29_1c0c:		php				; 08 
B29_1c0d:	.db $1c
B29_1c0e:		php				; 08 
B29_1c0f:	.db $ff
B29_1c10:		asl $2008, x	; 1e 08 20
B29_1c13:		php				; 08 
B29_1c14:	.db $22
B29_1c15:		php				; 08 
B29_1c16:	.db $ff
B29_1c17:		clc				; 18 
B29_1c18:		php				; 08 
B29_1c19:	.db $1a
B29_1c1a:		php				; 08 
B29_1c1b:	.db $1c
B29_1c1c:		php				; 08 
B29_1c1d:		asl a			; 0a
B29_1c1e:		ora ($ff, x)	; 01 ff
B29_1c20:		clc				; 18 
B29_1c21:		php				; 08 
B29_1c22:	.db $1a
B29_1c23:		php				; 08 
B29_1c24:	.db $1c
B29_1c25:		php				; 08 
B29_1c26:	.db $0c
B29_1c27:		ora ($ff, x)	; 01 ff
B29_1c29:		lda $74			; a5 74
B29_1c2b:		beq B29_1c2e ; f0 01

B29_1c2d:		rts				; 60 


B29_1c2e:		inc $74			; e6 74
B29_1c30:		ldy $32			; a4 32
B29_1c32:		cpy #$0e		; c0 0e
B29_1c34:		beq B29_1c3c ; f0 06

B29_1c36:		lda $bc45, y	; b9 45 bc
B29_1c39:		jmp playSound		; 4c 5f e2


B29_1c3c:		lda $33			; a5 33
B29_1c3e:		cmp #$02		; c9 02
B29_1c40:		bne B29_1c36 ; d0 f4

B29_1c42:		iny				; c8 
B29_1c43:		bne B29_1c36 ; d0 f1

B29_1c45:	.db $4f
B29_1c46:	.db $53
B29_1c47:		;removed
	.db $50 $56

B29_1c49:		eor $51, x		; 55 51
B29_1c4b:	.db $52
B29_1c4c:	.db $57
B29_1c4d:	.db $54
B29_1c4e:		cli				; 58 
B29_1c4f:		eor $5b5a, y	; 59 5a 5b
B29_1c52:	.db $5c
B29_1c53:		eor $865e, x	; 5d 5e 86
B29_1c56:		lda ($8a), y	; b1 8a
B29_1c58:		sec				; 38 
B29_1c59:		sbc #$13		; e9 13
B29_1c5b:		cmp #$04		; c9 04
B29_1c5d:		bcs B29_1c7a ; b0 1b

B29_1c5f:		tay				; a8 
B29_1c60:		bne B29_1c6a ; d0 08

B29_1c62:		stx $b1			; 86 b1
B29_1c64:		cpx #$13		; e0 13
B29_1c66:		bne B29_1c7a ; d0 12

B29_1c68:		ldy #$00		; a0 00
B29_1c6a:		ldx #$01		; a2 01
B29_1c6c:		lda $068d, x	; bd 8d 06
B29_1c6f:		and $bc7d, y	; 39 7d bc
B29_1c72:		sta $068d, x	; 9d 8d 06
B29_1c75:		inx				; e8 
B29_1c76:		cpx #$13		; e0 13
B29_1c78:		bcc B29_1c6c ; 90 f2

B29_1c7a:		ldx $b1			; a6 b1
B29_1c7c:		rts				; 60 


B29_1c7d:		inc $fbfd, x	; fe fd fb
B29_1c80:	.db $f7
B29_1c81:		lda #$01		; a9 01
B29_1c83:		sta $10			; 85 10
B29_1c85:		ldx #$05		; a2 05
B29_1c87:		bne B29_1c8f ; d0 06

B29_1c89:		lda #$00		; a9 00
B29_1c8b:		sta $10			; 85 10
B29_1c8d:		ldx #$13		; a2 13
B29_1c8f:		ldy $10			; a4 10
B29_1c91:		lda $054e, y	; b9 4e 05
B29_1c94:		sta $11			; 85 11
B29_1c96:		lda $0565, y	; b9 65 05
B29_1c99:		sta $12			; 85 12
B29_1c9b:		lda $04a8, y	; b9 a8 04
B29_1c9e:		sta $13			; 85 13
B29_1ca0:		lda $0438, y	; b9 38 04
B29_1ca3:		sta $14			; 85 14
B29_1ca5:		lda $041c, y	; b9 1c 04
B29_1ca8:		sta $15			; 85 15
B29_1caa:		lda $05ef, y	; b9 ef 05
B29_1cad:		sta $16			; 85 16
B29_1caf:		lda $0565, x	; bd 65 05
B29_1cb2:		bne B29_1cf8 ; d0 44

B29_1cb4:		jsr $bc62		; 20 62 bc
B29_1cb7:		lda $11			; a5 11
B29_1cb9:		cmp #$01		; c9 01
B29_1cbb:		beq B29_1cc7 ; f0 0a

B29_1cbd:		cmp #$02		; c9 02
B29_1cbf:		bne B29_1ccb ; d0 0a

B29_1cc1:		ldy #$80		; a0 80
B29_1cc3:		lda #$04		; a9 04
B29_1cc5:		bne B29_1ccf ; d0 08

B29_1cc7:		lda #$03		; a9 03
B29_1cc9:		bne B29_1ccd ; d0 02

B29_1ccb:		lda $8e			; a5 8e
B29_1ccd:		ldy #$00		; a0 00
B29_1ccf:		sty $0483		; 8c 83 04
B29_1cd2:		sta $054e, x	; 9d 4e 05
B29_1cd5:		lda #$00		; a9 00
B29_1cd7:		sta $0593, x	; 9d 93 05
B29_1cda:		sta $0454, x	; 9d 54 04
B29_1cdd:		sta $0400, x	; 9d 00 04
B29_1ce0:		lda #$01		; a9 01
B29_1ce2:		sta $057c, x	; 9d 7c 05
B29_1ce5:		ldy $10			; a4 10
B29_1ce7:		lda $048c, y	; b9 8c 04
B29_1cea:		sta $048c, x	; 9d 8c 04
B29_1ced:		lda $04a8, y	; b9 a8 04
B29_1cf0:		sta $04a8, x	; 9d a8 04
B29_1cf3:		inc $0565, x	; fe 65 05
B29_1cf6:		clc				; 18 
B29_1cf7:		rts				; 60 


B29_1cf8:		lda $054e, x	; bd 4e 05
B29_1cfb:		cmp #$01		; c9 01
B29_1cfd:		beq B29_1d03 ; f0 04

B29_1cff:		cmp #$02		; c9 02
B29_1d01:		bne B29_1d0a ; d0 07

B29_1d03:		lda $1a			; a5 1a
B29_1d05:		and #$03		; 29 03
B29_1d07:		sta $0454, x	; 9d 54 04
B29_1d0a:		lda $11			; a5 11
B29_1d0c:		asl a			; 0a
B29_1d0d:		tay				; a8 
B29_1d0e:		lda $bdda, y	; b9 da bd
B29_1d11:		sta $0c			; 85 0c
B29_1d13:		lda $bddb, y	; b9 db bd
B29_1d16:		sta $0d			; 85 0d
B29_1d18:		lda $14			; a5 14
B29_1d1a:		sta $0438, x	; 9d 38 04
B29_1d1d:		lda $15			; a5 15
B29_1d1f:		ldy $12			; a4 12
B29_1d21:		cpy #$1c		; c0 1c
B29_1d23:		bne B29_1d28 ; d0 03

B29_1d25:		clc				; 18 
B29_1d26:		adc #$08		; 69 08
B29_1d28:		sta $041c, x	; 9d 1c 04
B29_1d2b:		ldy #$00		; a0 00
B29_1d2d:		lda ($0c), y	; b1 0c
B29_1d2f:		cmp #$ff		; c9 ff
B29_1d31:		bne B29_1d36 ; d0 03

B29_1d33:		jmp $bdc6		; 4c c6 bd


B29_1d36:		cmp $12			; c5 12
B29_1d38:		beq B29_1d3e ; f0 04

B29_1d3a:		iny				; c8 
B29_1d3b:		iny				; c8 
B29_1d3c:		bne B29_1d2d ; d0 ef

B29_1d3e:		cmp #$1e		; c9 1e
B29_1d40:		bne B29_1d54 ; d0 12

B29_1d42:		lda $13			; a5 13
B29_1d44:		beq B29_1d4e ; f0 08

B29_1d46:		lda $16			; a5 16
B29_1d48:		beq B29_1d54 ; f0 0a

B29_1d4a:		iny				; c8 
B29_1d4b:		iny				; c8 
B29_1d4c:		bne B29_1d54 ; d0 06

B29_1d4e:		lda $16			; a5 16
B29_1d50:		bne B29_1d54 ; d0 02

B29_1d52:		iny				; c8 
B29_1d53:		iny				; c8 
B29_1d54:		iny				; c8 
B29_1d55:		lda ($0c), y	; b1 0c
B29_1d57:		tay				; a8 
B29_1d58:		lda $be01, y	; b9 01 be
B29_1d5b:		sta $08			; 85 08
B29_1d5d:		lda $be02, y	; b9 02 be
B29_1d60:		sta $09			; 85 09
B29_1d62:		dec $057c, x	; de 7c 05
B29_1d65:		beq B29_1d69 ; f0 02

B29_1d67:		clc				; 18 
B29_1d68:		rts				; 60 


B29_1d69:		lda $0593, x	; bd 93 05
B29_1d6c:		sta $0f			; 85 0f
B29_1d6e:		asl a			; 0a
B29_1d6f:		clc				; 18 
B29_1d70:		adc $0f			; 65 0f
B29_1d72:		tay				; a8 
B29_1d73:		lda ($08), y	; b1 08
B29_1d75:		cmp #$ff		; c9 ff
B29_1d77:		beq B29_1dc6 ; f0 4d

B29_1d79:		sty $00			; 84 00
B29_1d7b:		ldy $10			; a4 10
B29_1d7d:		sta $0400, y	; 99 00 04
B29_1d80:		ldy $00			; a4 00
B29_1d82:		iny				; c8 
B29_1d83:		lda ($08), y	; b1 08
B29_1d85:		sta $057c, x	; 9d 7c 05
B29_1d88:		iny				; c8 
B29_1d89:		lda $13			; a5 13
B29_1d8b:		beq B29_1d95 ; f0 08

B29_1d8d:		lda #$00		; a9 00
B29_1d8f:		sec				; 38 
B29_1d90:		sbc ($08), y	; f1 08
B29_1d92:		jmp $bd97		; 4c 97 bd


B29_1d95:		lda ($08), y	; b1 08
B29_1d97:		clc				; 18 
B29_1d98:		adc $14			; 65 14
B29_1d9a:		ldy $10			; a4 10
B29_1d9c:		sta $0438, y	; 99 38 04
B29_1d9f:		lda $054e, x	; bd 4e 05
B29_1da2:		beq B29_1dd0 ; f0 2c

B29_1da4:		asl a			; 0a
B29_1da5:		tay				; a8 
B29_1da6:		lda $be91, y	; b9 91 be
B29_1da9:		sta $08			; 85 08
B29_1dab:		lda $be92, y	; b9 92 be
B29_1dae:		sta $09			; 85 09
B29_1db0:		lda $0f			; a5 0f
B29_1db2:		asl a			; 0a
B29_1db3:		tay				; a8 
B29_1db4:		lda ($08), y	; b1 08
B29_1db6:		sta $0400, x	; 9d 00 04
B29_1db9:		iny				; c8 
B29_1dba:		lda ($08), y	; b1 08
B29_1dbc:		sta $061d, x	; 9d 1d 06
B29_1dbf:		inc $0593, x	; fe 93 05
B29_1dc2:		clc				; 18 
B29_1dc3:		rts				; 60 


B29_1dc4:		ldx #$13		; a2 13
B29_1dc6:		lda #$00		; a9 00
B29_1dc8:		sta $0400, x	; 9d 00 04
B29_1dcb:		sta $061d, x	; 9d 1d 06
B29_1dce:		sec				; 38 
B29_1dcf:		rts				; 60 


B29_1dd0:		ldy $12			; a4 12
B29_1dd2:		cpy #$1c		; c0 1c
B29_1dd4:		bne B29_1da4 ; d0 ce

B29_1dd6:		lda #$05		; a9 05
B29_1dd8:		bne B29_1da4 ; d0 ca

B29_1dda:		cpx #$bd		; e0 bd
B29_1ddc:	.db $eb
B29_1ddd:		lda $bdf6, x	; bd f6 bd
B29_1de0:		clc				; 18 
B29_1de1:		.db $00				; 00
B29_1de2:	.db $1a
B29_1de3:		.db $00				; 00
B29_1de4:	.db $1c
B29_1de5:	.db $02
B29_1de6:		asl $1e04, x	; 1e 04 1e
B29_1de9:		asl $ff			; 06 ff
B29_1deb:		clc				; 18 
B29_1dec:		php				; 08 
B29_1ded:	.db $1a
B29_1dee:		php				; 08 
B29_1def:	.db $1c
B29_1df0:		asl a			; 0a
B29_1df1:		asl $1e0c, x	; 1e 0c 1e
B29_1df4:		asl $18ff		; 0e ff 18
B29_1df7:		bpl B29_1e13 ; 10 1a

B29_1df9:		bpl B29_1e17 ; 10 1c

B29_1dfb:	.db $12
B29_1dfc:		asl $1e14, x	; 1e 14 1e
B29_1dff:		asl $ff, x		; 16 ff
B29_1e01:		ora $23be, y	; 19 be 23
B29_1e04:		ldx $be2d, y	; be 2d be
B29_1e07:	.db $3a
B29_1e08:		ldx $be47, y	; be 47 be
B29_1e0b:		lsr $55be		; 4e be 55
B29_1e0e:		ldx $be5f, y	; be 5f be
B29_1e11:		adc #$be		; 69 be
B29_1e13:	.db $73
B29_1e14:		ldx $be7d, y	; be 7d be
B29_1e17:	.db $87
B29_1e18:		ldx $0518, y	; be 18 05
B29_1e1b:		.db $00				; 00
B29_1e1c:	.db $1a
B29_1e1d:	.db $07
B29_1e1e:		.db $00				; 00
B29_1e1f:	.db $1c
B29_1e20:		ora #$00		; 09 00
B29_1e22:	.db $ff
B29_1e23:	.db $1e $05 $00
B29_1e26:	.db $20 $07 $00
B29_1e29:	.db $22
B29_1e2a:		ora #$00		; 09 00
B29_1e2c:	.db $ff
B29_1e2d:	.db $34
B29_1e2e:		ora $00			; 05 00
B29_1e30:		rol $07, x		; 36 07
B29_1e32:		.db $00				; 00
B29_1e33:		sec				; 38 
B29_1e34:		ora #$00		; 09 00
B29_1e36:		asl a			; 0a
B29_1e37:		ora ($00, x)	; 01 00
B29_1e39:	.db $ff
B29_1e3a:	.db $3a
B29_1e3b:		ora $00			; 05 00
B29_1e3d:	.db $3c
B29_1e3e:	.db $07
B29_1e3f:		.db $00				; 00
B29_1e40:	.db $3e $09 $00
B29_1e43:	.db $0c
B29_1e44:		ora ($00, x)	; 01 00
B29_1e46:	.db $ff
B29_1e47:		clc				; 18 
B29_1e48:		ora $00			; 05 00
B29_1e4a:	.db $1a
B29_1e4b:		ora #$00		; 09 00
B29_1e4d:	.db $ff
B29_1e4e:	.db $1c
B29_1e4f:		ora $00			; 05 00
B29_1e51:	.db $1e $09 $00
B29_1e54:	.db $ff
B29_1e55:		bit $05			; 24 05
B29_1e57:		.db $00				; 00
B29_1e58:		rol $09			; 26 09
B29_1e5a:		.db $00				; 00
B29_1e5b:		asl a			; 0a
B29_1e5c:		ora ($00, x)	; 01 00
B29_1e5e:	.db $ff
B29_1e5f:		plp				; 28 
B29_1e60:		ora $00			; 05 00
B29_1e62:		rol a			; 2a
B29_1e63:		ora #$00		; 09 00
B29_1e65:	.db $0c
B29_1e66:		ora ($00, x)	; 01 00
B29_1e68:	.db $ff
B29_1e69:		plp				; 28 
B29_1e6a:	.db $03
B29_1e6b:		.db $00				; 00
B29_1e6c:	.db $44
B29_1e6d:		ora #$00		; 09 00
B29_1e6f:		plp				; 28 
B29_1e70:	.db $02
B29_1e71:		.db $00				; 00
B29_1e72:	.db $ff
B29_1e73:		lsr $03			; 46 03
B29_1e75:		.db $00				; 00
B29_1e76:		lsr a			; 4a
B29_1e77:		ora #$00		; 09 00
B29_1e79:		lsr $02			; 46 02
B29_1e7b:		.db $00				; 00
B29_1e7c:	.db $ff
B29_1e7d:		;removed
	.db $50 $03

B29_1e7f:		.db $00				; 00
B29_1e80:	.db $52
B29_1e81:		ora #$00		; 09 00
B29_1e83:		bvc B29_1e87 ; 50 02

B29_1e85:		.db $00				; 00
B29_1e86:	.db $ff
B29_1e87:	.db $4c $03 $00
B29_1e8a:	.db $4e $09 $00
B29_1e8d:	.db $4c $02 $00
B29_1e90:	.db $ff
B29_1e91:		lda $be			; a5 be
B29_1e93:		lda $b5be		; ad be b5
B29_1e96:		ldx $bebd, y	; be bd be
B29_1e99:		sta $c3be, x	; 9d be c3
B29_1e9c:	.db $be $00 $00
B29_1e9f:	.db $02
B29_1ea0:		rti				; 40 


B29_1ea1:		.db $00				; 00
B29_1ea2:		.db $00				; 00
B29_1ea3:		.db $00				; 00
B29_1ea4:		.db $00				; 00
B29_1ea5:		bit $00			; 24 00
B29_1ea7:		rol $00			; 26 00
B29_1ea9:		plp				; 28 
B29_1eaa:		rti				; 40 


B29_1eab:		.db $00				; 00
B29_1eac:		.db $00				; 00
B29_1ead:		bit $2e00		; 2c 00 2e
B29_1eb0:		.db $00				; 00
B29_1eb1:		bmi B29_1f13 ; 30 60

B29_1eb3:		.db $00				; 00
B29_1eb4:		.db $00				; 00
B29_1eb5:		bit $2e00		; 2c 00 2e
B29_1eb8:		.db $00				; 00
B29_1eb9:	.db $32
B29_1eba:		rts				; 60 


B29_1ebb:		.db $00				; 00
B29_1ebc:		.db $00				; 00
B29_1ebd:		jsr $2200		; 20 00 22
B29_1ec0:		rti				; 40 


B29_1ec1:		.db $00				; 00
B29_1ec2:		.db $00				; 00
B29_1ec3:		rol a			; 2a
B29_1ec4:		.db $00				; 00
B29_1ec5:		rol $00			; 26 00
B29_1ec7:		plp				; 28 
B29_1ec8:		rti				; 40 


B29_1ec9:		.db $00				; 00
B29_1eca:		.db $00				; 00
B29_1ecb:		lda $054e		; ad 4e 05
B29_1ece:		asl a			; 0a
B29_1ecf:		tay				; a8 
B29_1ed0:		lda $bdda		; ad da bd
B29_1ed3:		sta $0c			; 85 0c
B29_1ed5:		lda $bddb, y	; b9 db bd
B29_1ed8:		sta $0d			; 85 0d
B29_1eda:		ldy #$01		; a0 01
B29_1edc:		lda ($0c), y	; b1 0c
B29_1ede:		tay				; a8 
B29_1edf:		lda $be01, y	; b9 01 be
B29_1ee2:		sta $08			; 85 08
B29_1ee4:		lda $be02, y	; b9 02 be
B29_1ee7:		sta $09			; 85 09
B29_1ee9:		ldy $05a6		; ac a6 05
B29_1eec:		dey				; 88 
B29_1eed:		bmi B29_1efc ; 30 0d

B29_1eef:		tya				; 98 
B29_1ef0:		sta $0f			; 85 0f
B29_1ef2:		asl a			; 0a
B29_1ef3:		clc				; 18 
B29_1ef4:		adc $0f			; 65 0f
B29_1ef6:		tay				; a8 
B29_1ef7:		lda ($08), y	; b1 08
B29_1ef9:		sta $0400		; 8d 00 04
B29_1efc:		rts				; 60 


B29_1efd:		and ($02, x)	; 21 02
B29_1eff:		.db $00				; 00
B29_1f00:		.db $00				; 00
B29_1f01:		.db $00				; 00
B29_1f02:	.db $02
B29_1f03:	.db $bf
B29_1f04:		ldx #$01		; a2 01
B29_1f06:	.db $12
B29_1f07:		asl a			; 0a
B29_1f08:	.db $74
B29_1f09:	.db $72
B29_1f0a:		.db $00				; 00
B29_1f0b:	.db $12
B29_1f0c:	.db $04
B29_1f0d:		;removed
	.db $b0 $80

B29_1f0f:		.db $00				; 00
B29_1f10:		asl $100c		; 0e 0c 10
B29_1f13:		ldy #$00		; a0 00
B29_1f15:	.db $ff
B29_1f16:		eor ($20, x)	; 41 20
B29_1f18:		ora ($01, x)	; 01 01
B29_1f1a:	.db $02
B29_1f1b:		bit $6030		; 2c 30 60
B29_1f1e:		.db $00				; 00
B29_1f1f:	.db $02
B29_1f20:		lsr a			; 4a
B29_1f21:		bpl B29_1f67 ; 10 44

B29_1f23:		.db $00				; 00
B29_1f24:	.db $02
B29_1f25:		lsr a			; 4a
B29_1f26:		bit $34			; 24 34
B29_1f28:		.db $00				; 00
B29_1f29:	.db $02
B29_1f2a:		lsr a			; 4a
B29_1f2b:	.db $3c
B29_1f2c:	.db $34
B29_1f2d:		.db $00				; 00
B29_1f2e:	.db $02
B29_1f2f:		lsr a			; 4a
B29_1f30:		;removed
	.db $50 $44

B29_1f32:		.db $00				; 00
B29_1f33:	.db $02
B29_1f34:		lsr a			; 4a
B29_1f35:		cli				; 58 
B29_1f36:		cli				; 58 
B29_1f37:		.db $00				; 00
B29_1f38:		php				; 08 
B29_1f39:		sty $40a8		; 8c a8 40
B29_1f3c:		ora ($08, x)	; 01 08
B29_1f3e:		stx $70c8		; 8e c8 70
B29_1f41:		ora ($0e, x)	; 01 0e
B29_1f43:	.db $04
B29_1f44:		bcc B29_1f8e ; 90 48

B29_1f46:		ora ($0e, x)	; 01 0e
B29_1f48:	.db $04
B29_1f49:		bne B29_1f93 ; d0 48

B29_1f4b:		ora ($ff, x)	; 01 ff
B29_1f4d:		ora ($01), y	; 11 01
B29_1f4f:		.db $00				; 00
B29_1f50:	.db $02
B29_1f51:	.db $04
B29_1f52:	.db $1c
B29_1f53:		cld				; d8 
B29_1f54:	.db $42
B29_1f55:		.db $00				; 00
B29_1f56:		.db $00				; 00
B29_1f57:		lsr $42a4		; 4e a4 42
B29_1f5a:		ora ($08, x)	; 01 08
B29_1f5c:		ldx $5f, y		; b6 5f
B29_1f5e:		rti				; 40 


B29_1f5f:		.db $00				; 00
B29_1f60:	.db $0c
B29_1f61:	.db $3c
B29_1f62:	.db $5b
B29_1f63:		ldx $01, y		; b6 01
B29_1f65:	.db $0c
B29_1f66:	.db $3a
B29_1f67:		lsr $9c			; 46 9c
B29_1f69:		ora ($0c, x)	; 01 0c
B29_1f6b:		rol $26, x		; 36 26
B29_1f6d:		stx $0c01		; 8e 01 0c
B29_1f70:		sec				; 38 
B29_1f71:		php				; 08 
B29_1f72:	.db $93
B29_1f73:		.db $00				; 00
B29_1f74:	.db $ff
B29_1f75:		sta ($03, x)	; 81 03
B29_1f77:		ora ($03, x)	; 01 03
B29_1f79:		asl $36			; 06 36
B29_1f7b:	.db $1d $75 $00
B29_1f7e:		php				; 08 
B29_1f7f:		lsr $56			; 46 56
B29_1f81:		eor #$01		; 49 01
B29_1f83:		php				; 08 
B29_1f84:		lsr $63			; 46 63
B29_1f86:		adc ($01), y	; 71 01
B29_1f88:		php				; 08 
B29_1f89:	.db $44
B29_1f8a:		;removed
	.db $d0 $90

B29_1f8c:		ora ($ff, x)	; 01 ff
B29_1f8e:		lda ($02), y	; b1 02
B29_1f90:		.db $00				; 00
B29_1f91:		.db $00				; 00
B29_1f92:		.db $00				; 00
B29_1f93:	.db $02
B29_1f94:		bcs B29_1f36 ; b0 a0

B29_1f96:		ora ($08, x)	; 01 08
B29_1f98:	.db $32
B29_1f99:		pha				; 48 
B29_1f9a:		bvc B29_1f9c ; 50 00

B29_1f9c:		asl $7038		; 0e 38 70
B29_1f9f:		jmp $0e00		; 4c 00 0e


B29_1fa2:	.db $04
B29_1fa3:		cli				; 58 
B29_1fa4:	.db $7c
B29_1fa5:		ora ($0e, x)	; 01 0e
B29_1fa7:	.db $04
B29_1fa8:		cpy #$38		; c0 38
B29_1faa:		.db $01