B19_0000:		iny				; c8 
B19_0001:		lda ($02), y	; b1 02
B19_0003:		tay				; a8 
B19_0004:		lda $00			; a5 00
B19_0006:		jmp $ef5c		; 4c 5c ef


B19_0009:		jmp $873a		; 4c 3a 87


B19_000c:		dec $05d8, x	; de d8 05
B19_000f:		beq B19_0023 ; f0 12

B19_0011:		lda #$50		; a9 50
B19_0013:		sta $0470, x	; 9d 70 04
B19_0016:		lda $05d8, x	; bd d8 05
B19_0019:		and #$03		; 29 03
B19_001b:		beq B19_0026 ; f0 09

B19_001d:		lda #$98		; a9 98
B19_001f:		sta $0470, x	; 9d 70 04
B19_0022:		rts				; 60 


B19_0023:		inc $05c1, x	; fe c1 05
B19_0026:		rts				; 60 


B19_0027:		ldy #$01		; a0 01
B19_0029:		lda ($02), y	; b1 02
B19_002b:		asl a			; 0a
B19_002c:		tay				; a8 
B19_002d:		lda $a03a, y	; b9 3a a0
B19_0030:		sta $00			; 85 00
B19_0032:		lda $a03b, y	; b9 3b a0
B19_0035:		sta $01			; 85 01
B19_0037:		jmp $a092		; 4c 92 a0


B19_003a:		rti				; 40 


B19_003b:		ldy #$56		; a0 56
B19_003d:		ldy #$6c		; a0 6c
B19_003f:		ldy #$04		; a0 04
B19_0041:		.db $00				; 00
B19_0042:	.db $fc
B19_0043:		.db $00				; 00
B19_0044:	.db $fa
B19_0045:		.db $00				; 00
B19_0046:		asl $00			; 06 00
B19_0048:		.db $00				; 00
B19_0049:		.db $00				; 00
B19_004a:		inc $00, x		; f6 00
B19_004c:		asl a			; 0a
B19_004d:		.db $00				; 00
B19_004e:		sed				; f8 
B19_004f:		.db $00				; 00
B19_0050:		inc $0200, x	; fe 00 02
B19_0053:		.db $00				; 00
B19_0054:		php				; 08 
B19_0055:		.db $00				; 00
B19_0056:		.db $00				; 00
B19_0057:		.db $00				; 00
B19_0058:		.db $00				; 00
B19_0059:		.db $00				; 00
B19_005a:		inc $02f8, x	; fe f8 02
B19_005d:		sbc $f700, y	; f9 00 f7
B19_0060:		.db $00				; 00
B19_0061:		sed				; f8 
B19_0062:		.db $00				; 00
B19_0063:		sbc $f800, y	; f9 00 f8
B19_0066:		.db $00				; 00
B19_0067:	.db $f7
B19_0068:		.db $00				; 00
B19_0069:		sed				; f8 
B19_006a:		.db $00				; 00
B19_006b:	.db $f9 $00 $00
B19_006e:		.db $00				; 00
B19_006f:		.db $00				; 00
B19_0070:		.db $00				; 00
B19_0071:		.db $00				; 00
B19_0072:		.db $00				; 00
B19_0073:		.db $00				; 00
B19_0074:		.db $00				; 00
B19_0075:		.db $00				; 00
B19_0076:		.db $00				; 00
B19_0077:		beq B19_0079 ; f0 00

B19_0079:		sbc $f900, y	; f9 00 f9
B19_007c:		.db $00				; 00
B19_007d:		sbc $f000, y	; f9 00 f0
B19_0080:		.db $00				; 00
B19_0081:		sbc $01a0, y	; f9 a0 01
B19_0084:		lda ($02), y	; b1 02
B19_0086:		asl a			; 0a
B19_0087:		tay				; a8 
B19_0088:		lda $a0b5, y	; b9 b5 a0
B19_008b:		sta $00			; 85 00
B19_008d:		lda $a0b6, y	; b9 b6 a0
B19_0090:		sta $01			; 85 01
B19_0092:		lda $0606, x	; bd 06 06
B19_0095:		asl a			; 0a
B19_0096:		tay				; a8 
B19_0097:		lda ($00), y	; b1 00
B19_0099:		clc				; 18 
B19_009a:		adc $0438, x	; 7d 38 04
B19_009d:		sta $0438, x	; 9d 38 04
B19_00a0:		iny				; c8 
B19_00a1:		lda ($00), y	; b1 00
B19_00a3:		clc				; 18 
B19_00a4:		adc $041c, x	; 7d 1c 04
B19_00a7:		sta $041c, x	; 9d 1c 04
B19_00aa:		inc $05c1, x	; fe c1 05
B19_00ad:		ldy #$02		; a0 02
B19_00af:		lda ($02), y	; b1 02
B19_00b1:		sta $05d8, x	; 9d d8 05
B19_00b4:		rts				; 60 


B19_00b5:	.db $bb
B19_00b6:		ldy #$cb		; a0 cb
B19_00b8:		ldy #$db		; a0 db
B19_00ba:		ldy #$04		; a0 04
B19_00bc:		.db $00				; 00
B19_00bd:	.db $fc
B19_00be:		.db $00				; 00
B19_00bf:	.db $fa
B19_00c0:		.db $00				; 00
B19_00c1:		asl $00			; 06 00
B19_00c3:		.db $00				; 00
B19_00c4:		.db $00				; 00
B19_00c5:	.db $fc
B19_00c6:		.db $00				; 00
B19_00c7:		asl $00			; 06 00
B19_00c9:	.db $fa
B19_00ca:		.db $00				; 00
B19_00cb:		.db $00				; 00
B19_00cc:		.db $00				; 00
B19_00cd:		.db $00				; 00
B19_00ce:		.db $00				; 00
B19_00cf:		inc $02f8, x	; fe f8 02
B19_00d2:		sbc $f700, y	; f9 00 f7
B19_00d5:		.db $00				; 00
B19_00d6:		sed				; f8 
B19_00d7:		.db $00				; 00
B19_00d8:		sbc $f800, y	; f9 00 f8
B19_00db:		.db $00				; 00
B19_00dc:		.db $00				; 00
B19_00dd:		.db $00				; 00
B19_00de:		.db $00				; 00
B19_00df:		.db $00				; 00
B19_00e0:		.db $00				; 00
B19_00e1:		.db $00				; 00
B19_00e2:		.db $00				; 00
B19_00e3:		.db $00				; 00
B19_00e4:		.db $00				; 00
B19_00e5:		.db $00				; 00
B19_00e6:		beq B19_00e8 ; f0 00

B19_00e8:		sbc $f900, y	; f9 00 f9
B19_00eb:		ldy #$01		; a0 01
B19_00ed:		lda ($02), y	; b1 02
B19_00ef:		sta $0565, x	; 9d 65 05
B19_00f2:		jmp $a0fe		; 4c fe a0


B19_00f5:		jsr $a13b		; 20 3b a1
B19_00f8:		clc				; 18 
B19_00f9:		adc #$01		; 69 01
B19_00fb:		sta $05d8, x	; 9d d8 05
B19_00fe:		jmp $9d66		; 4c 66 9d


B19_0101:		lda #$00		; a9 00
B19_0103:		sta $00			; 85 00
B19_0105:		ldy #$01		; a0 01
B19_0107:		lda $054e, y	; b9 4e 05
B19_010a:		cmp #$1a		; c9 1a
B19_010c:		bne B19_0110 ; d0 02

B19_010e:		inc $00			; e6 00
B19_0110:		iny				; c8 
B19_0111:		cpy #$0d		; c0 0d
B19_0113:		bne B19_0107 ; d0 f2

B19_0115:		ldy $00			; a4 00
B19_0117:		dey				; 88 
B19_0118:		bne B19_0123 ; d0 09

B19_011a:		lda #$88		; a9 88
B19_011c:		sta $0470, x	; 9d 70 04
B19_011f:		inc $05c1, x	; fe c1 05
B19_0122:		rts				; 60 


B19_0123:		jmp $873a		; 4c 3a 87


B19_0126:		lda #$02		; a9 02
B19_0128:		sta $07f3		; 8d f3 07
B19_012b:		lda #$00		; a9 00
B19_012d:		jsr $87f4		; 20 f4 87
B19_0130:		bcc B19_0135 ; 90 03

B19_0132:		jmp $873a		; 4c 3a 87


B19_0135:		lda #$01		; a9 01
B19_0137:		sta $07f3		; 8d f3 07
B19_013a:		rts				; 60 


B19_013b:		lda $1f			; a5 1f
B19_013d:		bne B19_0141 ; d0 02

B19_013f:		lda #$65		; a9 65
B19_0141:		asl a			; 0a
B19_0142:		sta $00			; 85 00
B19_0144:		lda $1f			; a5 1f
B19_0146:		lsr a			; 4a
B19_0147:		clc				; 18 
B19_0148:		adc $00			; 65 00
B19_014a:		sta $1f			; 85 1f
B19_014c:		and #$0f		; 29 0f
B19_014e:		rts				; 60 


B19_014f:		lda #$00		; a9 00
B19_0151:		sta $0657, x	; 9d 57 06
B19_0154:		jsr $a4c3		; 20 c3 a4
B19_0157:		bne B19_0178 ; d0 1f

B19_0159:		lda #$40		; a9 40
B19_015b:		sta $0470, x	; 9d 70 04
B19_015e:		lda #$01		; a9 01
B19_0160:		sta $04a8, x	; 9d a8 04
B19_0163:		lda #$0c		; a9 0c
B19_0165:		sta $0565, x	; 9d 65 05
B19_0168:		lda #$10		; a9 10
B19_016a:		ldy #$26		; a0 26
B19_016c:		jsr $ef6e		; 20 6e ef
B19_016f:		lda $78			; a5 78
B19_0171:		beq B19_0192 ; f0 1f

B19_0173:		lda #$44		; a9 44
B19_0175:		jmp $864f		; 4c 4f 86


B19_0178:		lda $05c1, x	; bd c1 05
B19_017b:		cmp #$08		; c9 08
B19_017d:		bne B19_0192 ; d0 13

B19_017f:		lda #$00		; a9 00
B19_0181:		sta $0633, x	; 9d 33 06
B19_0184:		sta $05ef, x	; 9d ef 05
B19_0187:		sta $05c1, x	; 9d c1 05
B19_018a:		lda $07f3		; ad f3 07
B19_018d:		and #$7f		; 29 7f
B19_018f:		sta $07f3		; 8d f3 07
B19_0192:		rts				; 60 


B19_0193:		lda #$00		; a9 00
B19_0195:		sta $0669, x	; 9d 69 06
B19_0198:		sta $0657, x	; 9d 57 06
B19_019b:		lda #$c8		; a9 c8
B19_019d:		sta $0470, x	; 9d 70 04
B19_01a0:		ldy $061d, x	; bc 1d 06
B19_01a3:		lda $05ef, y	; b9 ef 05
B19_01a6:		and #$7f		; 29 7f
B19_01a8:		cmp #$0a		; c9 0a
B19_01aa:		bne B19_01db ; d0 2f

B19_01ac:		lda $05c1, y	; b9 c1 05
B19_01af:		cmp #$06		; c9 06
B19_01b1:		bne B19_01d2 ; d0 1f

B19_01b3:		lda #$1c		; a9 1c
B19_01b5:		sta $00			; 85 00
B19_01b7:		lda $04a8, y	; b9 a8 04
B19_01ba:		beq B19_01c0 ; f0 04

B19_01bc:		lda #$e4		; a9 e4
B19_01be:		sta $00			; 85 00
B19_01c0:		lda $0438, y	; b9 38 04
B19_01c3:		clc				; 18 
B19_01c4:		adc $00			; 65 00
B19_01c6:		sta $0438, x	; 9d 38 04
B19_01c9:		lda $041c, y	; b9 1c 04
B19_01cc:		sta $041c, x	; 9d 1c 04
B19_01cf:		jmp $a1de		; 4c de a1


B19_01d2:		lda #$20		; a9 20
B19_01d4:		sta $0438, x	; 9d 38 04
B19_01d7:		sta $041c, x	; 9d 1c 04
B19_01da:		rts				; 60 


B19_01db:		jmp $873a		; 4c 3a 87


B19_01de:		lda $07f6		; ad f6 07
B19_01e1:		bne B19_01f1 ; d0 0e

B19_01e3:		lda $32			; a5 32
B19_01e5:		beq B19_01eb ; f0 04

B19_01e7:		lda #$20		; a9 20
B19_01e9:		bne B19_01ed ; d0 02

B19_01eb:		lda #$10		; a9 10
B19_01ed:		sta $0657, x	; 9d 57 06
B19_01f0:		rts				; 60 


B19_01f1:		lda #$30		; a9 30
B19_01f3:		bne B19_01ed ; d0 f8

B19_01f5:		jsr $a1de		; 20 de a1
B19_01f8:		ldy $07f3		; ac f3 07
B19_01fb:		dey				; 88 
B19_01fc:		bne B19_021f ; d0 21

B19_01fe:		jsr $a4c3		; 20 c3 a4
B19_0201:		cmp #$31		; c9 31
B19_0203:		beq B19_0219 ; f0 14

B19_0205:		lda #$10		; a9 10
B19_0207:		jsr $8661		; 20 61 86
B19_020a:		jsr func_1f_1ec8		; 20 c8 fe
B19_020d:		lda #$10		; a9 10
B19_020f:		ldy #$03		; a0 03
B19_0211:		jsr $ef6e		; 20 6e ef
B19_0214:		lda #$31		; a9 31
B19_0216:		jmp $864f		; 4c 4f 86


B19_0219:		lda #$00		; a9 00
B19_021b:		sta $0657, x	; 9d 57 06
B19_021e:		rts				; 60 


B19_021f:		lda #$00		; a9 00
B19_0221:		jsr $87f4		; 20 f4 87
B19_0224:		lda $32			; a5 32
B19_0226:		beq B19_0246 ; f0 1e

B19_0228:		lda $0669, x	; bd 69 06
B19_022b:		beq B19_0246 ; f0 19

B19_022d:		jsr $870b		; 20 0b 87
B19_0230:		bcc B19_0246 ; 90 14

B19_0232:		txa				; 8a 
B19_0233:		sta $0606, y	; 99 06 06
B19_0236:		lda $068d, x	; bd 8d 06
B19_0239:		sta $068d, y	; 99 8d 06
B19_023c:		lda #$80		; a9 80
B19_023e:		sta $05ef, y	; 99 ef 05
B19_0241:		lda #$88		; a9 88
B19_0243:		sta $0470, y	; 99 70 04
B19_0246:		lda $32			; a5 32
B19_0248:		beq B19_024c ; f0 02

B19_024a:		lda #$03		; a9 03
B19_024c:		sta $00			; 85 00
B19_024e:		lda $0657, x	; bd 57 06
B19_0251:		and #$03		; 29 03
B19_0253:		bne B19_025a ; d0 05

B19_0255:		lda $00			; a5 00
B19_0257:		clc				; 18 
B19_0258:		adc #$01		; 69 01
B19_025a:		jsr $88e0		; 20 e0 88
B19_025d:		lda $0669, x	; bd 69 06
B19_0260:		and #$0f		; 29 0f
B19_0262:		cmp #$02		; c9 02
B19_0264:		beq B19_0272 ; f0 0c

B19_0266:		jsr $a4c3		; 20 c3 a4
B19_0269:		cmp #$0a		; c9 0a
B19_026b:		bne B19_0272 ; d0 05

B19_026d:		lda #$00		; a9 00
B19_026f:		sta $0669, x	; 9d 69 06
B19_0272:		lda $0438, x	; bd 38 04
B19_0275:		bpl B19_0285 ; 10 0e

B19_0277:		cmp #$fb		; c9 fb
B19_0279:		bcc B19_028e ; 90 13

B19_027b:		jsr $a2fd		; 20 fd a2
B19_027e:		lda #$fa		; a9 fa
B19_0280:		sta $0438, x	; 9d 38 04
B19_0283:		bne B19_028e ; d0 09

B19_0285:		cmp #$02		; c9 02
B19_0287:		bcs B19_028e ; b0 05

B19_0289:		lda #$02		; a9 02
B19_028b:		sta $0438, x	; 9d 38 04
B19_028e:		jsr $8608		; 20 08 86
B19_0291:		jsr $a4c3		; 20 c3 a4
B19_0294:		bne B19_0299 ; d0 03

B19_0296:		jmp $a329		; 4c 29 a3


B19_0299:		cmp #$01		; c9 01
B19_029b:		bne B19_02e6 ; d0 49

B19_029d:		lda $041c, x	; bd 1c 04
B19_02a0:		cmp #$a8		; c9 a8
B19_02a2:		bcs B19_02b8 ; b0 14

B19_02a4:		lda $17			; a5 17
B19_02a6:		beq B19_02ac ; f0 04

B19_02a8:		lda #$fc		; a9 fc
B19_02aa:		bne B19_02ae ; d0 02

B19_02ac:		lda #$04		; a9 04
B19_02ae:		ldy #$1c		; a0 1c
B19_02b0:		jsr $fc1e		; 20 1e fc
B19_02b3:		bne B19_02b8 ; d0 03

B19_02b5:		jmp $a42a		; 4c 2a a4


B19_02b8:		lda $04a8, x	; bd a8 04
B19_02bb:		beq B19_02c1 ; f0 04

B19_02bd:		lda #$f4		; a9 f4
B19_02bf:		bne B19_02c3 ; d0 02

B19_02c1:		lda #$0c		; a9 0c
B19_02c3:		sta $00			; 85 00
B19_02c5:		ldy #$10		; a0 10
B19_02c7:		jsr $fc1e		; 20 1e fc
B19_02ca:		beq B19_02d5 ; f0 09

B19_02cc:		jsr $a2f0		; 20 f0 a2
B19_02cf:		bcc B19_02d2 ; 90 01

B19_02d1:		rts				; 60 


B19_02d2:		jmp $a435		; 4c 35 a4


B19_02d5:		lda $00			; a5 00
B19_02d7:		ldy #$04		; a0 04
B19_02d9:		jsr $fc1e		; 20 1e fc
B19_02dc:		beq B19_02ef ; f0 11

B19_02de:		jsr $a2f0		; 20 f0 a2
B19_02e1:		bcs B19_02ef ; b0 0c

B19_02e3:		jmp $a43c		; 4c 3c a4


B19_02e6:		cmp #$0a		; c9 0a
B19_02e8:		beq B19_02ef ; f0 05

B19_02ea:		lda #$00		; a9 00
B19_02ec:		sta $0633, x	; 9d 33 06
B19_02ef:		rts				; 60 


B19_02f0:		lda $32			; a5 32
B19_02f2:		cmp #$07		; c9 07
B19_02f4:		bne B19_0327 ; d0 31

B19_02f6:		lda $0438, x	; bd 38 04
B19_02f9:		cmp #$30		; c9 30
B19_02fb:		bcs B19_0327 ; b0 2a

B19_02fd:		lda $04a8, x	; bd a8 04
B19_0300:		eor #$01		; 49 01
B19_0302:		sta $04a8, x	; 9d a8 04
B19_0305:		lda $0565, x	; bd 65 05
B19_0308:		clc				; 18 
B19_0309:		adc #$08		; 69 08
B19_030b:		and #$0f		; 29 0f
B19_030d:		sta $0565, x	; 9d 65 05
B19_0310:		lda $0509, x	; bd 09 05
B19_0313:		eor #$ff		; 49 ff
B19_0315:		clc				; 18 
B19_0316:		adc #$01		; 69 01
B19_0318:		sta $0509, x	; 9d 09 05
B19_031b:		lda $04f2, x	; bd f2 04
B19_031e:		eor #$ff		; 49 ff
B19_0320:		adc #$00		; 69 00
B19_0322:		sta $04f2, x	; 9d f2 04
B19_0325:		sec				; 38 
B19_0326:		rts				; 60 


B19_0327:		clc				; 18 
B19_0328:		rts				; 60 


B19_0329:		lda $17			; a5 17
B19_032b:		cmp $04a8, x	; dd a8 04
B19_032e:		beq B19_0333 ; f0 03

B19_0330:		jmp $a3c5		; 4c c5 a3


B19_0333:		lda $00			; a5 00
B19_0335:		cmp #$50		; c9 50
B19_0337:		bcc B19_033c ; 90 03

B19_0339:		jmp $a3c5		; 4c c5 a3


B19_033c:		cmp #$30		; c9 30
B19_033e:		bcc B19_038a ; 90 4a

B19_0340:		sec				; 38 
B19_0341:		lda $041c		; ad 1c 04
B19_0344:		sbc #$08		; e9 08
B19_0346:		sbc $041c, x	; fd 1c 04
B19_0349:		bcs B19_0350 ; b0 05

B19_034b:		eor #$ff		; 49 ff
B19_034d:		clc				; 18 
B19_034e:		adc #$01		; 69 01
B19_0350:		cmp #$08		; c9 08
B19_0352:		bcc B19_0356 ; 90 02

B19_0354:		bcs B19_03c5 ; b0 6f

B19_0356:		lda $28			; a5 28
B19_0358:		and #$40		; 29 40
B19_035a:		bne B19_03b0 ; d0 54

B19_035c:		lda $0633, x	; bd 33 06
B19_035f:		bne B19_03c5 ; d0 64

B19_0361:		lda #$22		; a9 22
B19_0363:		jsr $8766		; 20 66 87
B19_0366:		bcc B19_0371 ; 90 09

B19_0368:		txa				; 8a 
B19_0369:		sta $061d, y	; 99 1d 06
B19_036c:		lda #$c8		; a9 c8
B19_036e:		sta $0470, y	; 99 70 04
B19_0371:		lda $061d, x	; bd 1d 06
B19_0374:		and #$7f		; 29 7f
B19_0376:		sta $061d, x	; 9d 1d 06
B19_0379:		lda #$01		; a9 01
B19_037b:		sta $0633, x	; 9d 33 06
B19_037e:		lda #$0a		; a9 0a
B19_0380:		ldy #$01		; a0 01
B19_0382:		jsr $ef6e		; 20 6e ef
B19_0385:		lda #$0a		; a9 0a
B19_0387:		jmp $864f		; 4c 4f 86


B19_038a:		lda $061d, x	; bd 1d 06
B19_038d:		and #$80		; 29 80
B19_038f:		bne B19_03c5 ; d0 34

B19_0391:		lda $061d, x	; bd 1d 06
B19_0394:		ora #$80		; 09 80
B19_0396:		sta $061d, x	; 9d 1d 06
B19_0399:		lda $17			; a5 17
B19_039b:		sta $04a8, x	; 9d a8 04
B19_039e:		jsr $8643		; 20 43 86
B19_03a1:		sta $0565, x	; 9d 65 05
B19_03a4:		lda #$0a		; a9 0a
B19_03a6:		ldy #$00		; a0 00
B19_03a8:		jsr $ef6e		; 20 6e ef
B19_03ab:		lda #$0c		; a9 0c
B19_03ad:		jmp $864f		; 4c 4f 86


B19_03b0:		lda $32			; a5 32
B19_03b2:		beq B19_03b9 ; f0 05

B19_03b4:		lda #$13		; a9 13
B19_03b6:		sta $0657, x	; 9d 57 06
B19_03b9:		lda #$10		; a9 10
B19_03bb:		ldy #$4b		; a0 4b
B19_03bd:		jsr $ef6e		; 20 6e ef
B19_03c0:		lda #$09		; a9 09
B19_03c2:		jmp $864f		; 4c 4f 86


B19_03c5:		lda $054e, x	; bd 4e 05
B19_03c8:		and #$1f		; 29 1f
B19_03ca:		cmp #$01		; c9 01
B19_03cc:		bne B19_0408 ; d0 3a

B19_03ce:		lda $32			; a5 32
B19_03d0:		bne B19_03ed ; d0 1b

B19_03d2:		lda $0438, x	; bd 38 04
B19_03d5:		cmp #$18		; c9 18
B19_03d7:		bcs B19_0408 ; b0 2f

B19_03d9:		lda $041c, x	; bd 1c 04
B19_03dc:		cmp #$8c		; c9 8c
B19_03de:		bcs B19_040e ; b0 2e

B19_03e0:		lda #$04		; a9 04
B19_03e2:		sta $0565, x	; 9d 65 05
B19_03e5:		lda #$00		; a9 00
B19_03e7:		sta $04a8, x	; 9d a8 04
B19_03ea:		jmp $a43c		; 4c 3c a4


B19_03ed:		lda $0438, x	; bd 38 04
B19_03f0:		cmp #$e8		; c9 e8
B19_03f2:		bcc B19_0408 ; 90 14

B19_03f4:		lda $041c, x	; bd 1c 04
B19_03f7:		cmp #$8c		; c9 8c
B19_03f9:		bcs B19_040e ; b0 13

B19_03fb:		lda #$0c		; a9 0c
B19_03fd:		sta $0565, x	; 9d 65 05
B19_0400:		lda #$01		; a9 01
B19_0402:		sta $04a8, x	; 9d a8 04
B19_0405:		jmp $a43c		; 4c 3c a4


B19_0408:		lda $1f			; a5 1f
B19_040a:		cmp #$80		; c9 80
B19_040c:		bcc B19_041f ; 90 11

B19_040e:		lda $00			; a5 00
B19_0410:		cmp #$08		; c9 08
B19_0412:		bcc B19_041f ; 90 0b

B19_0414:		lda $17			; a5 17
B19_0416:		sta $04a8, x	; 9d a8 04
B19_0419:		jsr $8643		; 20 43 86
B19_041c:		sta $0565, x	; 9d 65 05
B19_041f:		lda #$0a		; a9 0a
B19_0421:		ldy #$0d		; a0 0d
B19_0423:		jsr $ef6e		; 20 6e ef
B19_0426:		lda #$01		; a9 01
B19_0428:		bne B19_0441 ; d0 17

B19_042a:		lda #$0a		; a9 0a
B19_042c:		ldy #$04		; a0 04
B19_042e:		jsr $ef6e		; 20 6e ef
B19_0431:		lda #$62		; a9 62
B19_0433:		bne B19_0441 ; d0 0c

B19_0435:		jsr $a444		; 20 44 a4
B19_0438:		lda #$0b		; a9 0b
B19_043a:		bne B19_0441 ; d0 05

B19_043c:		jsr $a444		; 20 44 a4
B19_043f:		lda #$02		; a9 02
B19_0441:		jmp $864f		; 4c 4f 86


B19_0444:		lda #$0a		; a9 0a
B19_0446:		ldy #$04		; a0 04
B19_0448:		jmp $ef6e		; 4c 6e ef


B19_044b:		jsr $a4b6		; 20 b6 a4
B19_044e:		lda $0669, x	; bd 69 06
B19_0451:		bne B19_0493 ; d0 40

B19_0453:		lda $07f3		; ad f3 07
B19_0456:		bne B19_0493 ; d0 3b

B19_0458:		jsr $a4c3		; 20 c3 a4
B19_045b:		bne B19_046e ; d0 11

B19_045d:		lda #$87		; a9 87
B19_045f:		jsr $864f		; 20 4f 86
B19_0462:		lda #$0a		; a9 0a
B19_0464:		ldy #$05		; a0 05
B19_0466:		jsr $ef6e		; 20 6e ef
B19_0469:		lda #$40		; a9 40
B19_046b:		sta $0470, x	; 9d 70 04
B19_046e:		lda $0438, x	; bd 38 04
B19_0471:		cmp #$fc		; c9 fc
B19_0473:		bcc B19_0477 ; 90 02

B19_0475:		lda #$fb		; a9 fb
B19_0477:		cmp #$04		; c9 04
B19_0479:		bcs B19_047d ; b0 02

B19_047b:		lda #$04		; a9 04
B19_047d:		sta $0438, x	; 9d 38 04
B19_0480:		lda $041c, x	; bd 1c 04
B19_0483:		cmp #$f8		; c9 f8
B19_0485:		bcc B19_0489 ; 90 02

B19_0487:		lda #$f7		; a9 f7
B19_0489:		cmp #$40		; c9 40
B19_048b:		bcs B19_048f ; b0 02

B19_048d:		lda #$40		; a9 40
B19_048f:		sta $041c, x	; 9d 1c 04
B19_0492:		rts				; 60 


B19_0493:		lda #$00		; a9 00
B19_0495:		sta $0657, x	; 9d 57 06
B19_0498:		ldy $0606, x	; bc 06 06
B19_049b:		lda $0606, y	; b9 06 06
B19_049e:		beq B19_04aa ; f0 0a

B19_04a0:		sec				; 38 
B19_04a1:		sbc #$01		; e9 01
B19_04a3:		bcs B19_04a7 ; b0 02

B19_04a5:		lda #$00		; a9 00
B19_04a7:		sta $0606, y	; 99 06 06
B19_04aa:		jsr $a4c3		; 20 c3 a4
B19_04ad:		cmp #$32		; c9 32
B19_04af:		beq B19_0492 ; f0 e1

B19_04b1:		lda #$32		; a9 32
B19_04b3:		jmp $864f		; 4c 4f 86


B19_04b6:		lda #$20		; a9 20
B19_04b8:		ldy $07f6		; ac f6 07
B19_04bb:		beq B19_04bf ; f0 02

B19_04bd:		lda #$30		; a9 30
B19_04bf:		sta $0657, x	; 9d 57 06
B19_04c2:		rts				; 60 


B19_04c3:		lda $05ef, x	; bd ef 05
B19_04c6:		and #$7f		; 29 7f
B19_04c8:		rts				; 60 


B19_04c9:		lda $78			; a5 78
B19_04cb:		beq B19_04da ; f0 0d

B19_04cd:		lda $05d8, x	; bd d8 05
B19_04d0:		cmp #$80		; c9 80
B19_04d2:		bcs B19_04f2 ; b0 1e

B19_04d4:		inc $05d8, x	; fe d8 05
B19_04d7:		jmp $a4e7		; 4c e7 a4


B19_04da:		jsr $85ee		; 20 ee 85
B19_04dd:		jsr $a4e7		; 20 e7 a4
B19_04e0:		lda #$10		; a9 10
B19_04e2:		ldy #$06		; a0 06
B19_04e4:		jmp $ef6e		; 4c 6e ef


B19_04e7:		lda #$01		; a9 01
B19_04e9:		sta $04a8, x	; 9d a8 04
B19_04ec:		lda #$0c		; a9 0c
B19_04ee:		sta $0565, x	; 9d 65 05
B19_04f1:		rts				; 60 


B19_04f2:		jsr $a500		; 20 00 a5
B19_04f5:		lda #$00		; a9 00
B19_04f7:		sta $0606, x	; 9d 06 06
B19_04fa:		sta $05d8, x	; 9d d8 05
B19_04fd:		jmp $a18a		; 4c 8a a1


B19_0500:		lda #$02		; a9 02
B19_0502:		sta $12			; 85 12
B19_0504:		lda #$1f		; a9 1f
B19_0506:		sta $13			; 85 13
B19_0508:		lda $13			; a5 13
B19_050a:		jsr $8766		; 20 66 87
B19_050d:		bcc B19_04f1 ; 90 e2

B19_050f:		lda $12			; a5 12
B19_0511:		sta $061d, y	; 99 1d 06
B19_0514:		lda #$c8		; a9 c8
B19_0516:		sta $0470, y	; 99 70 04
B19_0519:		txa				; 8a 
B19_051a:		sta $0633, y	; 99 33 06
B19_051d:		lda #$40		; a9 40
B19_051f:		sta $067b, y	; 99 7b 06
B19_0522:		inc $13			; e6 13
B19_0524:		dec $12			; c6 12
B19_0526:		bne B19_0508 ; d0 e0

B19_0528:		lda $12			; a5 12
B19_052a:		sta $061d, x	; 9d 1d 06
B19_052d:		jmp $a4e7		; 4c e7 a4


B19_0530:		lda $07f3		; ad f3 07
B19_0533:		beq B19_0538 ; f0 03

B19_0535:		jmp $a5dc		; 4c dc a5


B19_0538:		lda #$00		; a9 00
B19_053a:		sta $0657, x	; 9d 57 06
B19_053d:		sta $0669, x	; 9d 69 06
B19_0540:		ldy $0633, x	; bc 33 06
B19_0543:		lda $05ef, y	; b9 ef 05
B19_0546:		and #$7f		; 29 7f
B19_0548:		cmp #$0e		; c9 0e
B19_054a:		bne B19_057b ; d0 2f

B19_054c:		lda $05c1, y	; b9 c1 05
B19_054f:		cmp #$05		; c9 05
B19_0551:		bcc B19_057b ; 90 28

B19_0553:		lda #$30		; a9 30
B19_0555:		sta $0657, x	; 9d 57 06
B19_0558:		ldy $0633, x	; bc 33 06
B19_055b:		lda #$10		; a9 10
B19_055d:		sta $00			; 85 00
B19_055f:		lda $04a8, y	; b9 a8 04
B19_0562:		beq B19_0568 ; f0 04

B19_0564:		lda #$f0		; a9 f0
B19_0566:		sta $00			; 85 00
B19_0568:		lda $0438, y	; b9 38 04
B19_056b:		clc				; 18 
B19_056c:		adc $00			; 65 00
B19_056e:		sta $0438, x	; 9d 38 04
B19_0571:		lda $041c, y	; b9 1c 04
B19_0574:		clc				; 18 
B19_0575:		adc #$10		; 69 10
B19_0577:		sta $041c, x	; 9d 1c 04
B19_057a:		rts				; 60 


B19_057b:		lda #$00		; a9 00
B19_057d:		sta $0438, x	; 9d 38 04
B19_0580:		sta $041c, x	; 9d 1c 04
B19_0583:		rts				; 60 


B19_0584:		lda $07f3		; ad f3 07
B19_0587:		bne B19_05dc ; d0 53

B19_0589:		ldy $0633, x	; bc 33 06
B19_058c:		lda $05ef, y	; b9 ef 05
B19_058f:		and #$7f		; 29 7f
B19_0591:		cmp #$2f		; c9 2f
B19_0593:		beq B19_05db ; f0 46

B19_0595:		lda $0438, y	; b9 38 04
B19_0598:		sta $0438, x	; 9d 38 04
B19_059b:		lda $041c, y	; b9 1c 04
B19_059e:		sec				; 38 
B19_059f:		sbc #$18		; e9 18
B19_05a1:		sta $041c, x	; 9d 1c 04
B19_05a4:		jsr $a1de		; 20 de a1
B19_05a7:		lda $3d			; a5 3d
B19_05a9:		sta $067b, x	; 9d 7b 06
B19_05ac:		lda #$02		; a9 02
B19_05ae:		jsr $88e0		; 20 e0 88
B19_05b1:		ldy $0633, x	; bc 33 06
B19_05b4:		lda $067b, x	; bd 7b 06
B19_05b7:		sta $067b, y	; 99 7b 06
B19_05ba:		lda #$00		; a9 00
B19_05bc:		sta $0669, x	; 9d 69 06
B19_05bf:		lda $0669, y	; b9 69 06
B19_05c2:		and #$0f		; 29 0f
B19_05c4:		cmp #$02		; c9 02
B19_05c6:		beq B19_05d6 ; f0 0e

B19_05c8:		lda $05ef, y	; b9 ef 05
B19_05cb:		and #$7f		; 29 7f
B19_05cd:		cmp #$0d		; c9 0d
B19_05cf:		bne B19_05d6 ; d0 05

B19_05d1:		lda #$00		; a9 00
B19_05d3:		sta $0669, x	; 9d 69 06
B19_05d6:		lda #$c8		; a9 c8
B19_05d8:		sta $0470, x	; 9d 70 04
B19_05db:		rts				; 60 


B19_05dc:		jmp $873a		; 4c 3a 87


B19_05df:		jsr $a4c3		; 20 c3 a4
B19_05e2:		cmp #$2f		; c9 2f
B19_05e4:		beq B19_0665 ; f0 7f

B19_05e6:		lda #$00		; a9 00
B19_05e8:		sta $0454, x	; 9d 54 04
B19_05eb:		lda $0606, x	; bd 06 06
B19_05ee:		beq B19_0636 ; f0 46

B19_05f0:		lda #$20		; a9 20
B19_05f2:		sta $0470, x	; 9d 70 04
B19_05f5:		lda $0606, x	; bd 06 06
B19_05f8:		and #$04		; 29 04
B19_05fa:		beq B19_0600 ; f0 04

B19_05fc:		lda #$00		; a9 00
B19_05fe:		beq B19_0602 ; f0 02

B19_0600:		lda #$02		; a9 02
B19_0602:		sta $0454, x	; 9d 54 04
B19_0605:		dec $0606, x	; de 06 06
B19_0608:		bne B19_0635 ; d0 2b

B19_060a:		lda $067b, x	; bd 7b 06
B19_060d:		sec				; 38 
B19_060e:		sbc #$10		; e9 10
B19_0610:		bcs B19_0614 ; b0 02

B19_0612:		lda #$00		; a9 00
B19_0614:		sta $067b, x	; 9d 7b 06
B19_0617:		sta $3d			; 85 3d
B19_0619:		ldy #$0d		; a0 0d
B19_061b:		lda $054e, y	; b9 4e 05
B19_061e:		cmp #$02		; c9 02
B19_0620:		bne B19_0632 ; d0 10

B19_0622:		lda $061d, x	; bd 1d 06
B19_0625:		cmp #$01		; c9 01
B19_0627:		bne B19_0632 ; d0 09

B19_0629:		lda $067b, x	; bd 7b 06
B19_062c:		sta $067b, y	; 99 7b 06
B19_062f:		jmp $a636		; 4c 36 a6


B19_0632:		dey				; 88 
B19_0633:		bne B19_061b ; d0 e6

B19_0635:		rts				; 60 


B19_0636:		lda #$40		; a9 40
B19_0638:		sta $0470, x	; 9d 70 04
B19_063b:		lda $07ec		; ad ec 07
B19_063e:		beq B19_0665 ; f0 25

B19_0640:		lda $05f6		; ad f6 05
B19_0643:		cmp #$91		; c9 91
B19_0645:		beq B19_0665 ; f0 1e

B19_0647:		lda $05c8		; ad c8 05
B19_064a:		cmp #$05		; c9 05
B19_064c:		bcc B19_0665 ; 90 17

B19_064e:		lda $043f		; ad 3f 04
B19_0651:		sec				; 38 
B19_0652:		sbc $0438, x	; fd 38 04
B19_0655:		bcs B19_065c ; b0 05

B19_0657:		eor #$ff		; 49 ff
B19_0659:		clc				; 18 
B19_065a:		adc #$01		; 69 01
B19_065c:		cmp #$10		; c9 10
B19_065e:		bcs B19_0665 ; b0 05

B19_0660:		lda #$40		; a9 40
B19_0662:		sta $0606, x	; 9d 06 06
B19_0665:		lda $07f3		; ad f3 07
B19_0668:		cmp #$01		; c9 01
B19_066a:		beq B19_0674 ; f0 08

B19_066c:		lda #$30		; a9 30
B19_066e:		sta $0657, x	; 9d 57 06
B19_0671:		jmp $a6fd		; 4c fd a6


B19_0674:		jsr $a4c3		; 20 c3 a4
B19_0677:		cmp #$2f		; c9 2f
B19_0679:		beq B19_06c5 ; f0 4a

B19_067b:		lda $32			; a5 32
B19_067d:		cmp #$02		; c9 02
B19_067f:		beq B19_06aa ; f0 29

B19_0681:		ldy #$01		; a0 01
B19_0683:		stx $00			; 86 00
B19_0685:		cpy $00			; c4 00
B19_0687:		beq B19_06a3 ; f0 1a

B19_0689:		lda #$00		; a9 00
B19_068b:		sta $054e, y	; 99 4e 05
B19_068e:		sta $05ef, y	; 99 ef 05
B19_0691:		sta $0400, y	; 99 00 04
B19_0694:		sta $048c, y	; 99 8c 04
B19_0697:		sta $0606, y	; 99 06 06
B19_069a:		sta $061d, y	; 99 1d 06
B19_069d:		sta $0633, y	; 99 33 06
B19_06a0:		sta $0645, y	; 99 45 06
B19_06a3:		iny				; c8 
B19_06a4:		cpy #$0d		; c0 0d
B19_06a6:		bne B19_0685 ; d0 dd

B19_06a8:		beq B19_06b1 ; f0 07

B19_06aa:		txa				; 8a 
B19_06ab:		pha				; 48 
B19_06ac:		jsr $9d04		; 20 04 9d
B19_06af:		pla				; 68 
B19_06b0:		tax				; aa 
B19_06b1:		lda #$30		; a9 30
B19_06b3:		jsr $8661		; 20 61 86
B19_06b6:		jsr func_1f_1ec8		; 20 c8 fe
B19_06b9:		lda #$10		; a9 10
B19_06bb:		ldy #$06		; a0 06
B19_06bd:		jsr $ef6e		; 20 6e ef
B19_06c0:		lda #$2f		; a9 2f
B19_06c2:		jmp $864f		; 4c 4f 86


B19_06c5:		lda $32			; a5 32
B19_06c7:		cmp #$02		; c9 02
B19_06c9:		beq B19_06fc ; f0 31

B19_06cb:		lda $05c1, x	; bd c1 05
B19_06ce:		cmp #$09		; c9 09
B19_06d0:		bne B19_06fc ; d0 2a

B19_06d2:		inc $07ee		; ee ee 07
B19_06d5:		lda $07f3		; ad f3 07
B19_06d8:		ora #$81		; 09 81
B19_06da:		sta $07f3		; 8d f3 07
B19_06dd:		lda #$00		; a9 00
B19_06df:		sta $0606, x	; 9d 06 06
B19_06e2:		sta $061d, x	; 9d 1d 06
B19_06e5:		sta $0633, x	; 9d 33 06
B19_06e8:		sta $05ef, x	; 9d ef 05
B19_06eb:		sta $05c1, x	; 9d c1 05
B19_06ee:		lda #$09		; a9 09
B19_06f0:		sta $054e, x	; 9d 4e 05
B19_06f3:		lda $041c, x	; bd 1c 04
B19_06f6:		sec				; 38 
B19_06f7:		sbc #$10		; e9 10
B19_06f9:		sta $041c, x	; 9d 1c 04
B19_06fc:		rts				; 60 


B19_06fd:		lda #$00		; a9 00
B19_06ff:		jsr $87f4		; 20 f4 87
B19_0702:		lda $07f3		; ad f3 07
B19_0705:		and #$40		; 29 40
B19_0707:		beq B19_0710 ; f0 07

B19_0709:		lda #$20		; a9 20
B19_070b:		sta $0470, x	; 9d 70 04
B19_070e:		bne B19_0715 ; d0 05

B19_0710:		lda #$40		; a9 40
B19_0712:		sta $0470, x	; 9d 70 04
B19_0715:		lda $0669, x	; bd 69 06
B19_0718:		and #$0f		; 29 0f
B19_071a:		cmp #$02		; c9 02
B19_071c:		beq B19_0721 ; f0 03

B19_071e:		jsr $8231		; 20 31 82
B19_0721:		jsr $8608		; 20 08 86
B19_0724:		jsr $a4c3		; 20 c3 a4
B19_0727:		cmp #$0e		; c9 0e
B19_0729:		beq B19_0752 ; f0 27

B19_072b:		cmp #$10		; c9 10
B19_072d:		beq B19_0753 ; f0 24

B19_072f:		lda $00			; a5 00
B19_0731:		cmp #$1a		; c9 1a
B19_0733:		bcs B19_0753 ; b0 1e

B19_0735:		jsr $a7f2		; 20 f2 a7
B19_0738:		cmp #$10		; c9 10
B19_073a:		bcs B19_0753 ; b0 17

B19_073c:		lda $04a8, x	; bd a8 04
B19_073f:		cmp $17			; c5 17
B19_0741:		beq B19_0746 ; f0 03

B19_0743:		jsr $a7e0		; 20 e0 a7
B19_0746:		lda #$0a		; a9 0a
B19_0748:		ldy #$08		; a0 08
B19_074a:		jsr $ef6e		; 20 6e ef
B19_074d:		lda #$0e		; a9 0e
B19_074f:		jmp $864f		; 4c 4f 86


B19_0752:		rts				; 60 


B19_0753:		jsr $a4c3		; 20 c3 a4
B19_0756:		beq B19_0779 ; f0 21

B19_0758:		ldy $0438, x	; bc 38 04
B19_075b:		lda $04a8, x	; bd a8 04
B19_075e:		beq B19_0766 ; f0 06

B19_0760:		cpy #$10		; c0 10
B19_0762:		bcc B19_076a ; 90 06

B19_0764:		bcs B19_0779 ; b0 13

B19_0766:		cpy #$f0		; c0 f0
B19_0768:		bcc B19_0779 ; 90 0f

B19_076a:		jsr $a7e0		; 20 e0 a7
B19_076d:		lda #$0a		; a9 0a
B19_076f:		ldy #$06		; a0 06
B19_0771:		jsr $ef6e		; 20 6e ef
B19_0774:		lda #$0d		; a9 0d
B19_0776:		jmp $864f		; 4c 4f 86


B19_0779:		jsr $a4c3		; 20 c3 a4
B19_077c:		cmp #$10		; c9 10
B19_077e:		bne B19_0781 ; d0 01

B19_0780:		rts				; 60 


B19_0781:		lda $0633, x	; bd 33 06
B19_0784:		bne B19_079f ; d0 19

B19_0786:		lda $0438, x	; bd 38 04
B19_0789:		cmp #$18		; c9 18
B19_078b:		bcc B19_07a2 ; 90 15

B19_078d:		cmp #$e8		; c9 e8
B19_078f:		bcs B19_07a2 ; b0 11

B19_0791:		lda #$48		; a9 48
B19_0793:		sta $0633, x	; 9d 33 06
B19_0796:		jsr $a13b		; 20 3b a1
B19_0799:		cmp #$0a		; c9 0a
B19_079b:		bcs B19_079f ; b0 02

B19_079d:		bcc B19_07c7 ; 90 28

B19_079f:		dec $0633, x	; de 33 06
B19_07a2:		lda $17			; a5 17
B19_07a4:		cmp $04a8, x	; dd a8 04
B19_07a7:		beq B19_07ba ; f0 11

B19_07a9:		lda $0645, x	; bd 45 06
B19_07ac:		bne B19_07b5 ; d0 07

B19_07ae:		lda $1f			; a5 1f
B19_07b0:		asl a			; 0a
B19_07b1:		asl a			; 0a
B19_07b2:		sta $0645, x	; 9d 45 06
B19_07b5:		dec $0645, x	; de 45 06
B19_07b8:		beq B19_076a ; f0 b0

B19_07ba:		jsr $a4c3		; 20 c3 a4
B19_07bd:		beq B19_07c3 ; f0 04

B19_07bf:		cmp #$0d		; c9 0d
B19_07c1:		beq B19_07c6 ; f0 03

B19_07c3:		jmp $a76d		; 4c 6d a7


B19_07c6:		rts				; 60 


B19_07c7:		jsr $a7f2		; 20 f2 a7
B19_07ca:		cmp #$08		; c9 08
B19_07cc:		bcs B19_07a2 ; b0 d4

B19_07ce:		jsr $8643		; 20 43 86
B19_07d1:		sta $0565, x	; 9d 65 05
B19_07d4:		lda #$0a		; a9 0a
B19_07d6:		ldy #$07		; a0 07
B19_07d8:		jsr $ef6e		; 20 6e ef
B19_07db:		lda #$10		; a9 10
B19_07dd:		jmp $864f		; 4c 4f 86


B19_07e0:		lda $04a8, x	; bd a8 04
B19_07e3:		eor #$01		; 49 01
B19_07e5:		and #$01		; 29 01
B19_07e7:		sta $04a8, x	; 9d a8 04
B19_07ea:		tay				; a8 
B19_07eb:		lda $a801, y	; b9 01 a8
B19_07ee:		sta $0565, x	; 9d 65 05
B19_07f1:		rts				; 60 


B19_07f2:		lda $041c		; ad 1c 04
B19_07f5:		sec				; 38 
B19_07f6:		sbc $041c, x	; fd 1c 04
B19_07f9:		bcs B19_0800 ; b0 05

B19_07fb:		eor #$ff		; 49 ff
B19_07fd:		clc				; 18 
B19_07fe:		adc #$01		; 69 01
B19_0800:		rts				; 60 


B19_0801:	.db $04
B19_0802:	.db $0c
B19_0803:		lda $07f3		; ad f3 07
B19_0806:		bpl B19_080b ; 10 03

B19_0808:		jmp $873a		; 4c 3a 87


B19_080b:		jsr func_1f_1ec8		; 20 c8 fe
B19_080e:		lda #$80		; a9 80
B19_0810:		sta $05ef, x	; 9d ef 05
B19_0813:		lda $07ec		; ad ec 07
B19_0816:		beq B19_0828 ; f0 10

B19_0818:		cmp #$02		; c9 02
B19_081a:		bcc B19_0822 ; 90 06

B19_081c:		lda #$58		; a9 58
B19_081e:		sta $0470, x	; 9d 70 04
B19_0821:		rts				; 60 


B19_0822:		lda #$50		; a9 50
B19_0824:		sta $0470, x	; 9d 70 04
B19_0827:		rts				; 60 


B19_0828:		lda $0645, x	; bd 45 06
B19_082b:		and #$80		; 29 80
B19_082d:		bne B19_084b ; d0 1c

B19_082f:		lda $0633, x	; bd 33 06
B19_0832:		bne B19_0847 ; d0 13

B19_0834:		lda #$08		; a9 08
B19_0836:		sta $0633, x	; 9d 33 06
B19_0839:		lda #$50		; a9 50
B19_083b:		sta $0470, x	; 9d 70 04
B19_083e:		lda $0645, x	; bd 45 06
B19_0841:		ora #$80		; 09 80
B19_0843:		sta $0645, x	; 9d 45 06
B19_0846:		rts				; 60 


B19_0847:		dec $0633, x	; de 33 06
B19_084a:		rts				; 60 


B19_084b:		lda $0633, x	; bd 33 06
B19_084e:		bne B19_0847 ; d0 f7

B19_0850:		lda #$58		; a9 58
B19_0852:		sta $0470, x	; 9d 70 04
B19_0855:		inc $0645, x	; fe 45 06
B19_0858:		lda $0645, x	; bd 45 06
B19_085b:		and #$7f		; 29 7f
B19_085d:		tay				; a8 
B19_085e:		cpy #$10		; c0 10
B19_0860:		bne B19_0864 ; d0 02

B19_0862:		ldy #$00		; a0 00
B19_0864:		tya				; 98 
B19_0865:		sta $0645, x	; 9d 45 06
B19_0868:		lda $a86f, y	; b9 6f a8
B19_086b:		sta $0633, x	; 9d 33 06
B19_086e:		rts				; 60 


B19_086f:		rti				; 40 


B19_0870:		jsr $1080		; 20 80 10
B19_0873:		rts				; 60 


B19_0874:		bcc B19_08a6 ; 90 30

B19_0876:		cpy #$08		; c0 08
B19_0878:		;removed
	.db $70 $f0

B19_087a:		;removed
	.db $50 $d0

B19_087c:		ldy #$e0		; a0 e0
B19_087e:		;removed
	.db $b0 $20

B19_0880:		dec $ada1, x	; de a1 ad
B19_0883:	.db $f3
B19_0884:	.db $07
B19_0885:		beq B19_088a ; f0 03

B19_0887:		jmp $873a		; 4c 3a 87


B19_088a:		jsr $a4c3		; 20 c3 a4
B19_088d:		cmp #$0f		; c9 0f
B19_088f:		bne B19_0892 ; d0 01

B19_0891:		rts				; 60 


B19_0892:		lda $07ec		; ad ec 07
B19_0895:		bne B19_08d1 ; d0 3a

B19_0897:		jsr $a91d		; 20 1d a9
B19_089a:		bne B19_08bd ; d0 21

B19_089c:		lda $0470, x	; bd 70 04
B19_089f:		ora #$98		; 09 98
B19_08a1:		sta $0470, x	; 9d 70 04
B19_08a4:		lda #$00		; a9 00
B19_08a6:		sta $05d8, x	; 9d d8 05
B19_08a9:		lda #$80		; a9 80
B19_08ab:		sta $0645, x	; 9d 45 06
B19_08ae:		lda #$01		; a9 01
B19_08b0:		sta $07ec		; 8d ec 07
B19_08b3:		lda #$d8		; a9 d8
B19_08b5:		sta $0470, x	; 9d 70 04
B19_08b8:		lda #$0f		; a9 0f
B19_08ba:		jmp $864f		; 4c 4f 86


B19_08bd:		dec $0645, x	; de 45 06
B19_08c0:		bpl B19_08d0 ; 10 0e

B19_08c2:		ldy $0645, x	; bc 45 06
B19_08c5:		iny				; c8 
B19_08c6:		bne B19_08d0 ; d0 08

B19_08c8:		lda $05d8, x	; bd d8 05
B19_08cb:		beq B19_08d0 ; f0 03

B19_08cd:		dec $05d8, x	; de d8 05
B19_08d0:		rts				; 60 


B19_08d1:		lda $05c1, x	; bd c1 05
B19_08d4:		sta $07ec		; 8d ec 07
B19_08d7:		jsr $a4c3		; 20 c3 a4
B19_08da:		bne B19_08f9 ; d0 1d

B19_08dc:		lda #$00		; a9 00
B19_08de:		sta $07ec		; 8d ec 07
B19_08e1:		sta $0645, x	; 9d 45 06
B19_08e4:		lda #$01		; a9 01
B19_08e6:		sta $05d8, x	; 9d d8 05
B19_08e9:		lda #$d8		; a9 d8
B19_08eb:		sta $0470, x	; 9d 70 04
B19_08ee:		lda #$48		; a9 48
B19_08f0:		sta $0438, x	; 9d 38 04
B19_08f3:		sta $041c, x	; 9d 1c 04
B19_08f6:		jsr $a926		; 20 26 a9
B19_08f9:		lda $05ef, x	; bd ef 05
B19_08fc:		cmp #$0f		; c9 0f
B19_08fe:		bne B19_0914 ; d0 14

B19_0900:		lda $05c1, x	; bd c1 05
B19_0903:		cmp #$05		; c9 05
B19_0905:		bcc B19_0914 ; 90 0d

B19_0907:		cmp #$08		; c9 08
B19_0909:		bcs B19_0914 ; b0 09

B19_090b:		lda $0470, x	; bd 70 04
B19_090e:		and #$ef		; 29 ef
B19_0910:		sta $0470, x	; 9d 70 04
B19_0913:		rts				; 60 


B19_0914:		lda $0470, x	; bd 70 04
B19_0917:		ora #$10		; 09 10
B19_0919:		sta $0470, x	; 9d 70 04
B19_091c:		rts				; 60 


B19_091d:		lda $0645, x	; bd 45 06
B19_0920:		bne B19_0925 ; d0 03

B19_0922:		lda $05d8, x	; bd d8 05
B19_0925:		rts				; 60 


B19_0926:		lda #$03		; a9 03
B19_0928:		sta $05d8, x	; 9d d8 05
B19_092b:		lda #$80		; a9 80
B19_092d:		sta $0645, x	; 9d 45 06
B19_0930:		rts				; 60 


B19_0931:		lda $78			; a5 78
B19_0933:		beq B19_0953 ; f0 1e

B19_0935:		jsr $a4c3		; 20 c3 a4
B19_0938:		bne B19_094b ; d0 11

B19_093a:		dec $05d8, x	; de d8 05
B19_093d:		bne B19_095b ; d0 1c

B19_093f:		lda #$0a		; a9 0a
B19_0941:		ldy #$20		; a0 20
B19_0943:		jsr $ef5c		; 20 5c ef
B19_0946:		lda #$46		; a9 46
B19_0948:		jmp $864f		; 4c 4f 86


B19_094b:		lda $05c1, x	; bd c1 05
B19_094e:		cmp #$02		; c9 02
B19_0950:		beq B19_096c ; f0 1a

B19_0952:		rts				; 60 


B19_0953:		jsr $85ee		; 20 ee 85
B19_0956:		lda #$80		; a9 80
B19_0958:		sta $05d8, x	; 9d d8 05
B19_095b:		lda #$00		; a9 00
B19_095d:		sta $04a8, x	; 9d a8 04
B19_0960:		lda #$04		; a9 04
B19_0962:		sta $0565, x	; 9d 65 05
B19_0965:		lda #$0a		; a9 0a
B19_0967:		ldy #$1f		; a0 1f
B19_0969:		jmp $ef5c		; 4c 5c ef


B19_096c:		lda #$40		; a9 40
B19_096e:		sta $0470, x	; 9d 70 04
B19_0971:		jsr $a18a		; 20 8a a1
B19_0974:		lda #$00		; a9 00
B19_0976:		sta $05d8, x	; 9d d8 05
B19_0979:		sta $05ef, x	; 9d ef 05
B19_097c:		sta $05c1, x	; 9d c1 05
B19_097f:		rts				; 60 


B19_0980:		lda #$00		; a9 00
B19_0982:		sta $054e, x	; 9d 4e 05
B19_0985:		sta $0400, x	; 9d 00 04
B19_0988:		sta $048c, x	; 9d 8c 04
B19_098b:		beq B19_0979 ; f0 ec

B19_098d:		sta $0300, x	; 9d 00 03
B19_0990:		inx				; e8 
B19_0991:		rts				; 60 


B19_0992:		lda $3d			; a5 3d
B19_0994:		bne B19_0999 ; d0 03

B19_0996:		jmp $e6a5		; 4c a5 e6


B19_0999:		jsr $a4c3		; 20 c3 a4
B19_099c:		cmp #$48		; c9 48
B19_099e:		bne B19_09a7 ; d0 07

B19_09a0:		lda #$00		; a9 00
B19_09a2:		sta $ba			; 85 ba
B19_09a4:		jmp $ab56		; 4c 56 ab


B19_09a7:		lda #$ff		; a9 ff
B19_09a9:		sta $ba			; 85 ba
B19_09ab:		lda $0606, x	; bd 06 06
B19_09ae:		bne B19_09b6 ; d0 06

B19_09b0:		sta $07ec		; 8d ec 07
B19_09b3:		sta $07ee		; 8d ee 07
B19_09b6:		ldy #$02		; a0 02
B19_09b8:		lda $061d, x	; bd 1d 06
B19_09bb:		beq B19_09c6 ; f0 09

B19_09bd:		and #$08		; 29 08
B19_09bf:		bne B19_09c2 ; d0 01

B19_09c1:		dey				; 88 
B19_09c2:		tya				; 98 
B19_09c3:		sta $0454, x	; 9d 54 04
B19_09c6:		lda $0438, x	; bd 38 04
B19_09c9:		cmp #$04		; c9 04
B19_09cb:		bcs B19_09cf ; b0 02

B19_09cd:		lda #$04		; a9 04
B19_09cf:		cmp #$fc		; c9 fc
B19_09d1:		bcc B19_09d5 ; 90 02

B19_09d3:		lda #$fb		; a9 fb
B19_09d5:		sta $0438, x	; 9d 38 04
B19_09d8:		lda $041c, x	; bd 1c 04
B19_09db:		cmp #$40		; c9 40
B19_09dd:		bcs B19_09e1 ; b0 02

B19_09df:		lda #$40		; a9 40
B19_09e1:		cmp #$a0		; c9 a0
B19_09e3:		bcc B19_09e7 ; 90 02

B19_09e5:		lda #$9f		; a9 9f
B19_09e7:		sta $041c, x	; 9d 1c 04
B19_09ea:		ldy $061d, x	; bc 1d 06
B19_09ed:		beq B19_09fc ; f0 0d

B19_09ef:		dey				; 88 
B19_09f0:		beq B19_0a68 ; f0 76

B19_09f2:		tya				; 98 
B19_09f3:		sta $061d, x	; 9d 1d 06
B19_09f6:		lda #$0f		; a9 0f
B19_09f8:		sta $068d, x	; 9d 8d 06
B19_09fb:		rts				; 60 


B19_09fc:		lda $0565, x	; bd 65 05
B19_09ff:		and #$08		; 29 08
B19_0a01:		beq B19_0a05 ; f0 02

B19_0a03:		lda #$01		; a9 01
B19_0a05:		sta $04a8, x	; 9d a8 04
B19_0a08:		lda $0669, x	; bd 69 06
B19_0a0b:		and #$f0		; 29 f0
B19_0a0d:		bne B19_0a12 ; d0 03

B19_0a0f:		jmp $aaa0		; 4c a0 aa


B19_0a12:		lda #$2b		; a9 2b
B19_0a14:		jsr playSound		; 20 5f e2
B19_0a17:		lda #$00		; a9 00
B19_0a19:		sta $07ee		; 8d ee 07
B19_0a1c:		sta $0669, x	; 9d 69 06
B19_0a1f:		jsr func_1f_1ec8		; 20 c8 fe
B19_0a22:		lda $05ef, x	; bd ef 05
B19_0a25:		and #$80		; 29 80
B19_0a27:		sta $05ef, x	; 9d ef 05
B19_0a2a:		ldy #$04		; a0 04
B19_0a2c:		lda $0606, x	; bd 06 06
B19_0a2f:		bne B19_0a33 ; d0 02

B19_0a31:		ldy #$08		; a0 08
B19_0a33:		sty $00			; 84 00
B19_0a35:		lda $3d			; a5 3d
B19_0a37:		sec				; 38 
B19_0a38:		sbc $00			; e5 00
B19_0a3a:		bcs B19_0a3e ; b0 02

B19_0a3c:		lda #$00		; a9 00
B19_0a3e:		sta $3d			; 85 3d
B19_0a40:		lda $0606, x	; bd 06 06
B19_0a43:		cmp #$03		; c9 03
B19_0a45:		bne B19_0a5d ; d0 16

B19_0a47:		cpx $07ec		; ec ec 07
B19_0a4a:		bne B19_0a51 ; d0 05

B19_0a4c:		lda #$00		; a9 00
B19_0a4e:		sta $07ec		; 8d ec 07
B19_0a51:		ldy #$04		; a0 04
B19_0a53:		lda #$0e		; a9 0e
B19_0a55:		jsr $ef5c		; 20 5c ef
B19_0a58:		lda #$c8		; a9 c8
B19_0a5a:		jmp $864f		; 4c 4f 86


B19_0a5d:		lda #$40		; a9 40
B19_0a5f:		sta $061d, x	; 9d 1d 06
B19_0a62:		lda #$0f		; a9 0f
B19_0a64:		sta $068d, x	; 9d 8d 06
B19_0a67:		rts				; 60 


B19_0a68:		lda #$04		; a9 04
B19_0a6a:		jsr $8766		; 20 66 87
B19_0a6d:		inc $0606, x	; fe 06 06
B19_0a70:		lda $0606, x	; bd 06 06
B19_0a73:		sta $0606, y	; 99 06 06
B19_0a76:		lda #$40		; a9 40
B19_0a78:		sta $0470, y	; 99 70 04
B19_0a7b:		lda #$00		; a9 00
B19_0a7d:		sta $061d, x	; 9d 1d 06
B19_0a80:		sta $061d, y	; 99 1d 06
B19_0a83:		sta $0454, x	; 9d 54 04
B19_0a86:		sta $0454, y	; 99 54 04
B19_0a89:		lda $068d, x	; bd 8d 06
B19_0a8c:		and #$f0		; 29 f0
B19_0a8e:		sta $068d, x	; 9d 8d 06
B19_0a91:		sta $068d, y	; 99 8d 06
B19_0a94:		stx $17			; 86 17
B19_0a96:		tya				; 98 
B19_0a97:		tax				; aa 
B19_0a98:		jsr $ab29		; 20 29 ab
B19_0a9b:		ldx $17			; a6 17
B19_0a9d:		jmp $ab29		; 4c 29 ab


B19_0aa0:		jsr $a1de		; 20 de a1
B19_0aa3:		lda $0606, x	; bd 06 06
B19_0aa6:		asl a			; 0a
B19_0aa7:		tay				; a8 
B19_0aa8:		lda $ab86, y	; b9 86 ab
B19_0aab:		sta $00			; 85 00
B19_0aad:		lda $ab87, y	; b9 87 ab
B19_0ab0:		ldy $00			; a4 00
B19_0ab2:		jsr $fc1e		; 20 1e fc
B19_0ab5:		sta $00			; 85 00
B19_0ab7:		lda $0606, x	; bd 06 06
B19_0aba:		bne B19_0ad7 ; d0 1b

B19_0abc:		lda $00			; a5 00
B19_0abe:		beq B19_0ad7 ; f0 17

B19_0ac0:		jsr $a4c3		; 20 c3 a4
B19_0ac3:		bne B19_0ad7 ; d0 12

B19_0ac5:		lda $1f			; a5 1f
B19_0ac7:		and #$01		; 29 01
B19_0ac9:		beq B19_0ad7 ; f0 0c

B19_0acb:		lda #$0a		; a9 0a
B19_0acd:		ldy #$1f		; a0 1f
B19_0acf:		jsr $ef5c		; 20 5c ef
B19_0ad2:		lda #$09		; a9 09
B19_0ad4:		jmp $864f		; 4c 4f 86


B19_0ad7:		jsr $a4c3		; 20 c3 a4
B19_0ada:		bne B19_0b30 ; d0 54

B19_0adc:		ldy #$01		; a0 01
B19_0ade:		lda $054e, y	; b9 4e 05
B19_0ae1:		bne B19_0ae8 ; d0 05

B19_0ae3:		iny				; c8 
B19_0ae4:		cpy #$0d		; c0 0d
B19_0ae6:		bne B19_0ade ; d0 f6

B19_0ae8:		sty $00			; 84 00
B19_0aea:		cpx $00			; e4 00
B19_0aec:		bne B19_0b16 ; d0 28

B19_0aee:		lda $07ee		; ad ee 07
B19_0af1:		beq B19_0af8 ; f0 05

B19_0af3:		cmp #$03		; c9 03
B19_0af5:		beq B19_0b16 ; f0 1f

B19_0af7:		rts				; 60 


B19_0af8:		lda $1f			; a5 1f
B19_0afa:		cmp #$20		; c9 20
B19_0afc:		bcs B19_0b16 ; b0 18

B19_0afe:		lda $0606, x	; bd 06 06
B19_0b01:		beq B19_0b16 ; f0 13

B19_0b03:		lda #$01		; a9 01
B19_0b05:		sta $07ee		; 8d ee 07
B19_0b08:		jsr $ab3d		; 20 3d ab
B19_0b0b:		jsr $a4c3		; 20 c3 a4
B19_0b0e:		cmp #$1a		; c9 1a
B19_0b10:		beq B19_0b30 ; f0 1e

B19_0b12:		lda #$1a		; a9 1a
B19_0b14:		bne B19_0b26 ; d0 10

B19_0b16:		lda #$00		; a9 00
B19_0b18:		sta $0633, x	; 9d 33 06
B19_0b1b:		lda $1f			; a5 1f
B19_0b1d:		and #$01		; 29 01
B19_0b1f:		beq B19_0b29 ; f0 08

B19_0b21:		jsr $ab31		; 20 31 ab
B19_0b24:		lda #$19		; a9 19
B19_0b26:		jmp $864f		; 4c 4f 86


B19_0b29:		jsr $ab31		; 20 31 ab
B19_0b2c:		lda #$18		; a9 18
B19_0b2e:		bne B19_0b26 ; d0 f6

B19_0b30:		rts				; 60 


B19_0b31:		lda #$1b		; a9 1b
B19_0b33:		clc				; 18 
B19_0b34:		adc $0606, x	; 7d 06 06
B19_0b37:		tay				; a8 
B19_0b38:		lda #$0a		; a9 0a
B19_0b3a:		jmp $ef5c		; 4c 5c ef


B19_0b3d:		ldy #$01		; a0 01
B19_0b3f:		lda $054e, y	; b9 4e 05
B19_0b42:		cmp #$04		; c9 04
B19_0b44:		bne B19_0b50 ; d0 0a

B19_0b46:		lda #$9a		; a9 9a
B19_0b48:		sta $05ef, y	; 99 ef 05
B19_0b4b:		lda #$00		; a9 00
B19_0b4d:		sta $05c1, y	; 99 c1 05
B19_0b50:		iny				; c8 
B19_0b51:		cpy #$0d		; c0 0d
B19_0b53:		bne B19_0b3f ; d0 ea

B19_0b55:		rts				; 60 


B19_0b56:		lda $05c1, x	; bd c1 05
B19_0b59:		cmp #$02		; c9 02
B19_0b5b:		beq B19_0b55 ; f0 f8

B19_0b5d:		lda #$00		; a9 00
B19_0b5f:		sta $10			; 85 10
B19_0b61:		ldy #$01		; a0 01
B19_0b63:		lda $054e, y	; b9 4e 05
B19_0b66:		cmp #$04		; c9 04
B19_0b68:		bne B19_0b6c ; d0 02

B19_0b6a:		inc $10			; e6 10
B19_0b6c:		iny				; c8 
B19_0b6d:		cpy #$0d		; c0 0d
B19_0b6f:		bne B19_0b63 ; d0 f2

B19_0b71:		dec $10			; c6 10
B19_0b73:		bne B19_0b78 ; d0 03

B19_0b75:		jsr $ab98		; 20 98 ab
B19_0b78:		jsr $a980		; 20 80 a9
B19_0b7b:		lda #$68		; a9 68
B19_0b7d:		sta $054e, x	; 9d 4e 05
B19_0b80:		lda #$65		; a9 65
B19_0b82:		sta $05ef, x	; 9d ef 05
B19_0b85:		rts				; 60 


B19_0b86:		beq B19_0b90 ; f0 08

B19_0b88:		sed				; f8 
B19_0b89:		php				; 08 
B19_0b8a:		sed				; f8 
B19_0b8b:	.db $04
B19_0b8c:	.db $fc
B19_0b8d:	.db $04
B19_0b8e:	.db $0f
B19_0b8f:	.db $0f
B19_0b90:	.db $23
B19_0b91:	.db $1b
B19_0b92:	.db $ff
B19_0b93:	.db $0f
B19_0b94:		and ($23), y	; 31 23
B19_0b96:	.db $13
B19_0b97:	.db $ff
B19_0b98:		lda #$50		; a9 50
B19_0b9a:		jsr $8661		; 20 61 86
B19_0b9d:		lda #$02		; a9 02
B19_0b9f:		sta $07f3		; 8d f3 07
B19_0ba2:		jsr $e5ce		; 20 ce e5
B19_0ba5:		lda #$01		; a9 01
B19_0ba7:		jsr $87f4		; 20 f4 87
B19_0baa:		lda #$7b		; a9 7b
B19_0bac:		jmp playSound		; 4c 5f e2


B19_0baf:		lda $78			; a5 78
B19_0bb1:		beq B19_0bbb ; f0 08

B19_0bb3:		lda $05c1, x	; bd c1 05
B19_0bb6:		cmp #$04		; c9 04
B19_0bb8:		beq B19_0bd4 ; f0 1a

B19_0bba:		rts				; 60 


B19_0bbb:		lda #$cc		; a9 cc
B19_0bbd:		sta $0470, x	; 9d 70 04
B19_0bc0:		lda #$00		; a9 00
B19_0bc2:		sta $04a8, x	; 9d a8 04
B19_0bc5:		sta $0565, x	; 9d 65 05
B19_0bc8:		lda #$0a		; a9 0a
B19_0bca:		ldy #$24		; a0 24
B19_0bcc:		jsr $ef5c		; 20 5c ef
B19_0bcf:		lda #$45		; a9 45
B19_0bd1:		jmp $864f		; 4c 4f 86


B19_0bd4:		txa				; 8a 
B19_0bd5:		cmp #$06		; c9 06
B19_0bd7:		bne B19_0bee ; d0 15

B19_0bd9:		jsr $a18a		; 20 8a a1
B19_0bdc:		ldy #$00		; a0 00
B19_0bde:		sty $07ee		; 8c ee 07
B19_0be1:		iny				; c8 
B19_0be2:		sty $07ec		; 8c ec 07
B19_0be5:		iny				; c8 
B19_0be6:		sty $07ef		; 8c ef 07
B19_0be9:		lda #$06		; a9 06
B19_0beb:		sta $07f0		; 8d f0 07
B19_0bee:		lda #$00		; a9 00
B19_0bf0:		sta $05d8, x	; 9d d8 05
B19_0bf3:		sta $05ef, x	; 9d ef 05
B19_0bf6:		sta $05c1, x	; 9d c1 05
B19_0bf9:		lda #$40		; a9 40
B19_0bfb:		sta $0470, x	; 9d 70 04
B19_0bfe:		jmp $adaf		; 4c af ad


B19_0c01:		ldy $07ef		; ac ef 07
B19_0c04:		dey				; 88 
B19_0c05:		beq B19_0c3a ; f0 33

B19_0c07:		lda #$01		; a9 01
B19_0c09:		jsr $88e0		; 20 e0 88
B19_0c0c:		ldy $0606, x	; bc 06 06
B19_0c0f:		lda #$04		; a9 04
B19_0c11:		sta $00			; 85 00
B19_0c13:		lda $04a8, y	; b9 a8 04
B19_0c16:		bne B19_0c1c ; d0 04

B19_0c18:		lda #$fc		; a9 fc
B19_0c1a:		sta $00			; 85 00
B19_0c1c:		lda $0438, y	; b9 38 04
B19_0c1f:		clc				; 18 
B19_0c20:		adc $00			; 65 00
B19_0c22:		sta $0438, x	; 9d 38 04
B19_0c25:		lda $041c, y	; b9 1c 04
B19_0c28:		sec				; 38 
B19_0c29:		sbc #$20		; e9 20
B19_0c2b:		sta $041c, x	; 9d 1c 04
B19_0c2e:		lda $067b, x	; bd 7b 06
B19_0c31:		sta $067b, y	; 99 7b 06
B19_0c34:		lda #$00		; a9 00
B19_0c36:		sta $0669, x	; 9d 69 06
B19_0c39:		rts				; 60 


B19_0c3a:		jmp $873a		; 4c 3a 87


B19_0c3d:		jsr $a1de		; 20 de a1
B19_0c40:		lda #$50		; a9 50
B19_0c42:		sta $0470, x	; 9d 70 04
B19_0c45:		jsr $a4c3		; 20 c3 a4
B19_0c48:		cmp #$1e		; c9 1e
B19_0c4a:		beq B19_0c70 ; f0 24

B19_0c4c:		lda $0438, x	; bd 38 04
B19_0c4f:		cmp #$10		; c9 10
B19_0c51:		bcs B19_0c55 ; b0 02

B19_0c53:		lda #$10		; a9 10
B19_0c55:		cmp #$f0		; c9 f0
B19_0c57:		bcc B19_0c5b ; 90 02

B19_0c59:		lda #$ef		; a9 ef
B19_0c5b:		sta $0438, x	; 9d 38 04
B19_0c5e:		lda $041c, x	; bd 1c 04
B19_0c61:		cmp #$40		; c9 40
B19_0c63:		bcs B19_0c67 ; b0 02

B19_0c65:		lda #$40		; a9 40
B19_0c67:		cmp #$f0		; c9 f0
B19_0c69:		bcc B19_0c6d ; 90 02

B19_0c6b:		lda #$ef		; a9 ef
B19_0c6d:		sta $041c, x	; 9d 1c 04
B19_0c70:		lda $0669, x	; bd 69 06
B19_0c73:		sta $00			; 85 00
B19_0c75:		lda $0669, x	; bd 69 06
B19_0c78:		and #$02		; 29 02
B19_0c7a:		bne B19_0c8e ; d0 12

B19_0c7c:		lda $07ef		; ad ef 07
B19_0c7f:		bne B19_0c89 ; d0 08

B19_0c81:		jsr $8231		; 20 31 82
B19_0c84:		lda #$40		; a9 40
B19_0c86:		sta $0470, x	; 9d 70 04
B19_0c89:		lda #$00		; a9 00
B19_0c8b:		sta $0669, x	; 9d 69 06
B19_0c8e:		ldy $07ef		; ac ef 07
B19_0c91:		bne B19_0cfc ; d0 69

B19_0c93:		ldy $07f3		; ac f3 07
B19_0c96:		dey				; 88 
B19_0c97:		bne B19_0ca1 ; d0 08

B19_0c99:		lda #$00		; a9 00
B19_0c9b:		sta $0657, x	; 9d 57 06
B19_0c9e:		jmp $ae64		; 4c 64 ae


B19_0ca1:		lda #$01		; a9 01
B19_0ca3:		jsr $87f4		; 20 f4 87
B19_0ca6:		lda $07f3		; ad f3 07
B19_0ca9:		bne B19_0cba ; d0 0f

B19_0cab:		lda $0606, x	; bd 06 06
B19_0cae:		beq B19_0cbb ; f0 0b

B19_0cb0:		jsr $a4c3		; 20 c3 a4
B19_0cb3:		bne B19_0cba ; d0 05

B19_0cb5:		lda #$01		; a9 01
B19_0cb7:		sta $07ef		; 8d ef 07
B19_0cba:		rts				; 60 


B19_0cbb:		lda #$21		; a9 21
B19_0cbd:		jsr $8766		; 20 66 87
B19_0cc0:		lda $3d			; a5 3d
B19_0cc2:		sta $067b, y	; 99 7b 06
B19_0cc5:		lda #$c8		; a9 c8
B19_0cc7:		sta $0470, y	; 99 70 04
B19_0cca:		txa				; 8a 
B19_0ccb:		sta $0606, y	; 99 06 06
B19_0cce:		sta $07ec		; 8d ec 07
B19_0cd1:		lda #$01		; a9 01
B19_0cd3:		sta $0606, x	; 9d 06 06
B19_0cd6:		lda $0438		; ad 38 04
B19_0cd9:		cmp $0438, x	; dd 38 04
B19_0cdc:		bcs B19_0ce2 ; b0 04

B19_0cde:		lda #$0c		; a9 0c
B19_0ce0:		bne B19_0ce4 ; d0 02

B19_0ce2:		lda #$04		; a9 04
B19_0ce4:		sta $0565, x	; 9d 65 05
B19_0ce7:		and #$08		; 29 08
B19_0ce9:		beq B19_0ced ; f0 02

B19_0ceb:		lda #$01		; a9 01
B19_0ced:		sta $04a8, x	; 9d a8 04
B19_0cf0:		lda #$0a		; a9 0a
B19_0cf2:		ldy #$21		; a0 21
B19_0cf4:		jsr $ef5c		; 20 5c ef
B19_0cf7:		lda #$1c		; a9 1c
B19_0cf9:		jmp $864f		; 4c 4f 86


B19_0cfc:		dey				; 88 
B19_0cfd:		bne B19_0d6f ; d0 70

B19_0cff:		cpx $07ec		; ec ec 07
B19_0d02:		bne B19_0d58 ; d0 54

B19_0d04:		lda $0606, x	; bd 06 06
B19_0d07:		cmp #$01		; c9 01
B19_0d09:		beq B19_0d59 ; f0 4e

B19_0d0b:		jsr $a4c3		; 20 c3 a4
B19_0d0e:		bne B19_0d58 ; d0 48

B19_0d10:		lda #$05		; a9 05
B19_0d12:		jsr $8766		; 20 66 87
B19_0d15:		bcc B19_0d3d ; 90 26

B19_0d17:		lda #$00		; a9 00
B19_0d19:		sta $0669, y	; 99 69 06
B19_0d1c:		lda #$02		; a9 02
B19_0d1e:		sta $0606, y	; 99 06 06
B19_0d21:		lda #$40		; a9 40
B19_0d23:		sta $0470, y	; 99 70 04
B19_0d26:		lda #$80		; a9 80
B19_0d28:		sta $05ef, x	; 9d ef 05
B19_0d2b:		stx $00			; 86 00
B19_0d2d:		tya				; 98 
B19_0d2e:		tax				; aa 
B19_0d2f:		lda #$0a		; a9 0a
B19_0d31:		ldy #$24		; a0 24
B19_0d33:		jsr $ef5c		; 20 5c ef
B19_0d36:		ldx $00			; a6 00
B19_0d38:		dec $07f0		; ce f0 07
B19_0d3b:		bne B19_0d10 ; d0 d3

B19_0d3d:		lda #$0a		; a9 0a
B19_0d3f:		ldy #$24		; a0 24
B19_0d41:		jsr $ef5c		; 20 5c ef
B19_0d44:		lda #$02		; a9 02
B19_0d46:		sta $07ef		; 8d ef 07
B19_0d49:		lda #$00		; a9 00
B19_0d4b:		sta $07ee		; 8d ee 07
B19_0d4e:		lda #$80		; a9 80
B19_0d50:		sta $05ef, x	; 9d ef 05
B19_0d53:		lda #$c0		; a9 c0
B19_0d55:		sta $061d, x	; 9d 1d 06
B19_0d58:		rts				; 60 


B19_0d59:		lda #$02		; a9 02
B19_0d5b:		sta $0606, x	; 9d 06 06
B19_0d5e:		lda #$06		; a9 06
B19_0d60:		sta $07f0		; 8d f0 07
B19_0d63:		lda #$0a		; a9 0a
B19_0d65:		ldy #$28		; a0 28
B19_0d67:		jsr $ef5c		; 20 5c ef
B19_0d6a:		lda #$20		; a9 20
B19_0d6c:		jmp $864f		; 4c 4f 86


B19_0d6f:		lda #$00		; a9 00
B19_0d71:		sta $0657, x	; 9d 57 06
B19_0d74:		dey				; 88 
B19_0d75:		bne B19_0ded ; d0 76

B19_0d77:		lda $07ee		; ad ee 07
B19_0d7a:		cmp #$02		; c9 02
B19_0d7c:		bcc B19_0d8a ; 90 0c

B19_0d7e:		lda $061e		; ad 1e 06
B19_0d81:		beq B19_0dc6 ; f0 43

B19_0d83:		dec $061d, x	; de 1d 06
B19_0d86:		lda $00			; a5 00
B19_0d88:		bne B19_0dc6 ; d0 3c

B19_0d8a:		txa				; 8a 
B19_0d8b:		cmp $07ec		; cd ec 07
B19_0d8e:		bne B19_0d9d ; d0 0d

B19_0d90:		lda $07ee		; ad ee 07
B19_0d93:		bne B19_0daf ; d0 1a

B19_0d95:		lda #$01		; a9 01
B19_0d97:		sta $07ee		; 8d ee 07
B19_0d9a:		jsr $ae4b		; 20 4b ae
B19_0d9d:		jsr $a4c3		; 20 c3 a4
B19_0da0:		cmp #$1e		; c9 1e
B19_0da2:		beq B19_0dc0 ; f0 1c

B19_0da4:		cmp #$1b		; c9 1b
B19_0da6:		beq B19_0dc0 ; f0 18

B19_0da8:		lda #$0a		; a9 0a
B19_0daa:		ldy #$24		; a0 24
B19_0dac:		jmp $ef5c		; 4c 5c ef


B19_0daf:		jsr $a4c3		; 20 c3 a4
B19_0db2:		bne B19_0dc0 ; d0 0c

B19_0db4:		lda #$0a		; a9 0a
B19_0db6:		ldy #$24		; a0 24
B19_0db8:		jsr $ef5c		; 20 5c ef
B19_0dbb:		lda #$19		; a9 19
B19_0dbd:		jmp $864f		; 4c 4f 86


B19_0dc0:		lda #$03		; a9 03
B19_0dc2:		sta $0606, x	; 9d 06 06
B19_0dc5:		rts				; 60 


B19_0dc6:		lda #$03		; a9 03
B19_0dc8:		sta $07ef		; 8d ef 07
B19_0dcb:		ldy $07ec		; ac ec 07
B19_0dce:		lda $054e, y	; b9 4e 05
B19_0dd1:		cmp #$05		; c9 05
B19_0dd3:		bne B19_0ddf ; d0 0a

B19_0dd5:		lda #$9f		; a9 9f
B19_0dd7:		sta $05ef, y	; 99 ef 05
B19_0dda:		lda #$00		; a9 00
B19_0ddc:		sta $05c1, y	; 99 c1 05
B19_0ddf:		iny				; c8 
B19_0de0:		cpy #$0d		; c0 0d
B19_0de2:		bne B19_0dce ; d0 ea

B19_0de4:		lda #$00		; a9 00
B19_0de6:		sta $07ed		; 8d ed 07
B19_0de9:		sta $07ee		; 8d ee 07
B19_0dec:		rts				; 60 


B19_0ded:		dey				; 88 
B19_0dee:		bne B19_0e00 ; d0 10

B19_0df0:		lda $07ee		; ad ee 07
B19_0df3:		beq B19_0dff ; f0 0a

B19_0df5:		cpx $07ec		; ec ec 07
B19_0df8:		bne B19_0dff ; d0 05

B19_0dfa:		lda #$04		; a9 04
B19_0dfc:		sta $07ef		; 8d ef 07
B19_0dff:		rts				; 60 


B19_0e00:		cpx $07ec		; ec ec 07
B19_0e03:		beq B19_0e17 ; f0 12

B19_0e05:		lda #$00		; a9 00
B19_0e07:		sta $054e, x	; 9d 4e 05
B19_0e0a:		sta $0400, x	; 9d 00 04
B19_0e0d:		sta $048c, x	; 9d 8c 04
B19_0e10:		sta $0606, x	; 9d 06 06
B19_0e13:		sta $05ef, x	; 9d ef 05
B19_0e16:		rts				; 60 


B19_0e17:		lda $0606, x	; bd 06 06
B19_0e1a:		cmp #$03		; c9 03
B19_0e1c:		beq B19_0e35 ; f0 17

B19_0e1e:		jsr $a4c3		; 20 c3 a4
B19_0e21:		bne B19_0e34 ; d0 11

B19_0e23:		lda #$00		; a9 00
B19_0e25:		sta $07ec		; 8d ec 07
B19_0e28:		sta $07ed		; 8d ed 07
B19_0e2b:		sta $07ee		; 8d ee 07
B19_0e2e:		sta $07ef		; 8d ef 07
B19_0e31:		sta $0606, x	; 9d 06 06
B19_0e34:		rts				; 60 


B19_0e35:		lda #$04		; a9 04
B19_0e37:		sta $0606, x	; 9d 06 06
B19_0e3a:		lda #$06		; a9 06
B19_0e3c:		sta $07f0		; 8d f0 07
B19_0e3f:		lda #$0a		; a9 0a
B19_0e41:		ldy #$2c		; a0 2c
B19_0e43:		jsr $ef5c		; 20 5c ef
B19_0e46:		lda #$20		; a9 20
B19_0e48:		jmp $864f		; 4c 4f 86


B19_0e4b:		ldy #$01		; a0 01
B19_0e4d:		lda $054e, y	; b9 4e 05
B19_0e50:		cmp #$05		; c9 05
B19_0e52:		bne B19_0e5e ; d0 0a

B19_0e54:		lda #$9e		; a9 9e
B19_0e56:		sta $05ef, y	; 99 ef 05
B19_0e59:		lda #$00		; a9 00
B19_0e5b:		sta $05c1, y	; 99 c1 05
B19_0e5e:		iny				; c8 
B19_0e5f:		cpy #$0d		; c0 0d
B19_0e61:		bne B19_0e4d ; d0 ea

B19_0e63:		rts				; 60 


B19_0e64:		jsr $a4c3		; 20 c3 a4
B19_0e67:		cmp #$22		; c9 22
B19_0e69:		beq B19_0e80 ; f0 15

B19_0e6b:		cmp #$23		; c9 23
B19_0e6d:		beq B19_0e63 ; f0 f4

B19_0e6f:		lda #$50		; a9 50
B19_0e71:		jsr $8661		; 20 61 86
B19_0e74:		lda #$0a		; a9 0a
B19_0e76:		ldy #$30		; a0 30
B19_0e78:		jsr $ef5c		; 20 5c ef
B19_0e7b:		lda #$23		; a9 23
B19_0e7d:		jmp $864f		; 4c 4f 86


B19_0e80:		lda #$06		; a9 06
B19_0e82:		sta $48			; 85 48
B19_0e84:		lda #$1f		; a9 1f
B19_0e86:		sta $49			; 85 49
B19_0e88:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B19_0e8b:		jsr $ae96		; 20 96 ae
B19_0e8e:		inc $07f3		; ee f3 07
B19_0e91:		lda #$01		; a9 01
B19_0e93:		jmp $87f4		; 4c f4 87


B19_0e96:		ldy #$01		; a0 01
B19_0e98:		lda $054e, y	; b9 4e 05
B19_0e9b:		beq B19_0eb5 ; f0 18

B19_0e9d:		cmp #$05		; c9 05
B19_0e9f:		beq B19_0eb5 ; f0 14

B19_0ea1:		lda #$00		; a9 00
B19_0ea3:		sta $054e, y	; 99 4e 05
B19_0ea6:		sta $05ef, y	; 99 ef 05
B19_0ea9:		sta $0400, y	; 99 00 04
B19_0eac:		sta $048c, y	; 99 8c 04
B19_0eaf:		sta $0438, y	; 99 38 04
B19_0eb2:		sta $041c, y	; 99 1c 04
B19_0eb5:		iny				; c8 
B19_0eb6:		cpy #$0d		; c0 0d
B19_0eb8:		bne B19_0e98 ; d0 de

B19_0eba:		rts				; 60 


B19_0ebb:		jsr $a1de		; 20 de a1
B19_0ebe:		lda $0669, x	; bd 69 06
B19_0ec1:		beq B19_0ecb ; f0 08

B19_0ec3:		lda #$33		; a9 33
B19_0ec5:		jsr playSound		; 20 5f e2
B19_0ec8:		jmp $873a		; 4c 3a 87


B19_0ecb:		lda $0438, x	; bd 38 04
B19_0ece:		cmp #$08		; c9 08
B19_0ed0:		bcc B19_0ee6 ; 90 14

B19_0ed2:		cmp #$f8		; c9 f8
B19_0ed4:		bcs B19_0ee6 ; b0 10

B19_0ed6:		lda $041c, x	; bd 1c 04
B19_0ed9:		cmp #$40		; c9 40
B19_0edb:		bcc B19_0ee6 ; 90 09

B19_0edd:		cmp #$f0		; c9 f0
B19_0edf:		bcs B19_0ee6 ; b0 05

B19_0ee1:		lda #$1d		; a9 1d
B19_0ee3:		jmp $864f		; 4c 4f 86


B19_0ee6:		jmp $873a		; 4c 3a 87


B19_0ee9:		lda $78			; a5 78
B19_0eeb:		beq B19_0f20 ; f0 33

B19_0eed:		lda $0606, x	; bd 06 06
B19_0ef0:		beq B19_0ef8 ; f0 06

B19_0ef2:		jsr $af62		; 20 62 af
B19_0ef5:		jmp $b04e		; 4c 4e b0


B19_0ef8:		lda $05ef, x	; bd ef 05
B19_0efb:		and #$7f		; 29 7f
B19_0efd:		bne B19_0f15 ; d0 16

B19_0eff:		lda $33			; a5 33
B19_0f01:		cmp #$02		; c9 02
B19_0f03:		beq B19_0f10 ; f0 0b

B19_0f05:		lda #$06		; a9 06
B19_0f07:		sta $17			; 85 17
B19_0f09:		jsr $b454		; 20 54 b4
B19_0f0c:		dec $17			; c6 17
B19_0f0e:		bne B19_0f09 ; d0 f9

B19_0f10:		lda #$47		; a9 47
B19_0f12:		jmp $864f		; 4c 4f 86


B19_0f15:		jsr $af62		; 20 62 af
B19_0f18:		bcs B19_0f1b ; b0 01

B19_0f1a:		rts				; 60 


B19_0f1b:		cmp #$80		; c9 80
B19_0f1d:		beq B19_0f42 ; f0 23

B19_0f1f:		rts				; 60 


B19_0f20:		lda #$e9		; a9 e9
B19_0f22:		sta $0470, x	; 9d 70 04
B19_0f25:		lda #$00		; a9 00
B19_0f27:		sta $04a8, x	; 9d a8 04
B19_0f2a:		lda #$08		; a9 08
B19_0f2c:		sta $0565, x	; 9d 65 05
B19_0f2f:		lda $0606, x	; bd 06 06
B19_0f32:		beq B19_0f37 ; f0 03

B19_0f34:		jmp $b03f		; 4c 3f b0


B19_0f37:		lda #$9e		; a9 9e
B19_0f39:		sta $0400, x	; 9d 00 04
B19_0f3c:		lda #$0a		; a9 0a
B19_0f3e:		sta $048c, x	; 9d 8c 04
B19_0f41:		rts				; 60 


B19_0f42:		lda $0470, x	; bd 70 04
B19_0f45:		and #$01		; 29 01
B19_0f47:		bne B19_0f61 ; d0 18

B19_0f49:		lda #$00		; a9 00
B19_0f4b:		sta $05d8, x	; 9d d8 05
B19_0f4e:		sta $05ef, x	; 9d ef 05
B19_0f51:		sta $05c1, x	; 9d c1 05
B19_0f54:		lda #$60		; a9 60
B19_0f56:		sta $0470, x	; 9d 70 04
B19_0f59:		lda $07f3		; ad f3 07
B19_0f5c:		and #$7f		; 29 7f
B19_0f5e:		sta $07f3		; 8d f3 07
B19_0f61:		rts				; 60 


B19_0f62:		lda $33			; a5 33
B19_0f64:		cmp #$02		; c9 02
B19_0f66:		beq B19_0f73 ; f0 0b

B19_0f68:		lda $0438, x	; bd 38 04
B19_0f6b:		and #$f0		; 29 f0
B19_0f6d:		cmp #$20		; c9 20
B19_0f6f:		beq B19_0f7a ; f0 09

B19_0f71:		bne B19_0f84 ; d0 11

B19_0f73:		lda $0438, x	; bd 38 04
B19_0f76:		and #$f0		; 29 f0
B19_0f78:		bne B19_0f84 ; d0 0a

B19_0f7a:		lda $0470, x	; bd 70 04
B19_0f7d:		and #$76		; 29 76
B19_0f7f:		sta $0470, x	; 9d 70 04
B19_0f82:		clc				; 18 
B19_0f83:		rts				; 60 


B19_0f84:		sec				; 38 
B19_0f85:		rts				; 60 


B19_0f86:		lda #$60		; a9 60
B19_0f88:		sta $0470, x	; 9d 70 04
B19_0f8b:		jsr $a1de		; 20 de a1
B19_0f8e:		lda $33			; a5 33
B19_0f90:		cmp #$02		; c9 02
B19_0f92:		bne B19_0fb6 ; d0 22

B19_0f94:		lda $3d			; a5 3d
B19_0f96:		cmp #$18		; c9 18
B19_0f98:		bcs B19_0fb6 ; b0 1c

B19_0f9a:		lda #$17		; a9 17
B19_0f9c:		sta $3d			; 85 3d
B19_0f9e:		sta $067b, x	; 9d 7b 06
B19_0fa1:		jsr $b01c		; 20 1c b0
B19_0fa4:		lda $05ef, x	; bd ef 05
B19_0fa7:		and #$7f		; 29 7f
B19_0fa9:		bne B19_0fb0 ; d0 05

B19_0fab:		lda #$49		; a9 49
B19_0fad:		jmp $864f		; 4c 4f 86


B19_0fb0:		jsr $b416		; 20 16 b4
B19_0fb3:		jmp $b2db		; 4c db b2


B19_0fb6:		lda $061d, x	; bd 1d 06
B19_0fb9:		cmp #$ff		; c9 ff
B19_0fbb:		bne B19_0fd7 ; d0 1a

B19_0fbd:		jsr $b07d		; 20 7d b0
B19_0fc0:		bcc B19_0fd6 ; 90 14

B19_0fc2:		lda #$30		; a9 30
B19_0fc4:		jsr $8661		; 20 61 86
B19_0fc7:		lda #$06		; a9 06
B19_0fc9:		sta $054e, x	; 9d 4e 05
B19_0fcc:		lda #$02		; a9 02
B19_0fce:		sta $07f3		; 8d f3 07
B19_0fd1:		lda #$00		; a9 00
B19_0fd3:		jsr $87f4		; 20 f4 87
B19_0fd6:		rts				; 60 


B19_0fd7:		lda $07f3		; ad f3 07
B19_0fda:		cmp #$01		; c9 01
B19_0fdc:		bne B19_0fdf ; d0 01

B19_0fde:		rts				; 60 


B19_0fdf:		lda #$00		; a9 00
B19_0fe1:		jsr $87f4		; 20 f4 87
B19_0fe4:		lda $0669, x	; bd 69 06
B19_0fe7:		and #$f0		; 29 f0
B19_0fe9:		beq B19_0ff3 ; f0 08

B19_0feb:		lda #$01		; a9 01
B19_0fed:		jsr $88e0		; 20 e0 88
B19_0ff0:		jsr $b364		; 20 64 b3
B19_0ff3:		lda $3d			; a5 3d
B19_0ff5:		bne B19_0fff ; d0 08

B19_0ff7:		lda #$7b		; a9 7b
B19_0ff9:		jsr playSound		; 20 5f e2
B19_0ffc:		jmp $b3c2		; 4c c2 b3


B19_0fff:		jsr $b416		; 20 16 b4
B19_1002:		jsr $b01c		; 20 1c b0
B19_1005:		lda $05ef, x	; bd ef 05
B19_1008:		and #$7f		; 29 7f
B19_100a:		bne B19_0fde ; d0 d2

B19_100c:		lda $1f			; a5 1f
B19_100e:		cmp #$a0		; c9 a0
B19_1010:		bcs B19_1017 ; b0 05

B19_1012:		lda #$24		; a9 24
B19_1014:		jmp $864f		; 4c 4f 86


B19_1017:		lda #$26		; a9 26
B19_1019:		jmp $864f		; 4c 4f 86


B19_101c:		lda $0565, x	; bd 65 05
B19_101f:		and #$10		; 29 10
B19_1021:		beq B19_1025 ; f0 02

B19_1023:		lda #$01		; a9 01
B19_1025:		sta $04a8, x	; 9d a8 04
B19_1028:		lda $0565, x	; bd 65 05
B19_102b:		cmp #$12		; c9 12
B19_102d:		bcc B19_1035 ; 90 06

B19_102f:		lda #$1f		; a9 1f
B19_1031:		sec				; 38 
B19_1032:		sbc $0565, x	; fd 65 05
B19_1035:		lsr a			; 4a
B19_1036:		and #$fe		; 29 fe
B19_1038:		clc				; 18 
B19_1039:		adc #$9a		; 69 9a
B19_103b:		sta $0400, x	; 9d 00 04
B19_103e:		rts				; 60 


B19_103f:		lda #$0a		; a9 0a
B19_1041:		sta $048c, x	; 9d 8c 04
B19_1044:		bne B19_104e ; d0 08

B19_1046:		lda #$60		; a9 60
B19_1048:		sta $0470, x	; 9d 70 04
B19_104b:		jsr $a1de		; 20 de a1
B19_104e:		lda $33			; a5 33
B19_1050:		cmp #$02		; c9 02
B19_1052:		bne B19_1072 ; d0 1e

B19_1054:		lda $0606, x	; bd 06 06
B19_1057:		cmp #$ff		; c9 ff
B19_1059:		beq B19_107d ; f0 22

B19_105b:		lda $3d			; a5 3d
B19_105d:		cmp #$18		; c9 18
B19_105f:		bcs B19_1072 ; b0 11

B19_1061:		jsr $b2bd		; 20 bd b2
B19_1064:		lda $054e, x	; bd 4e 05
B19_1067:		bne B19_106a ; d0 01

B19_1069:		rts				; 60 


B19_106a:		lda #$00		; a9 00
B19_106c:		sta $0669, x	; 9d 69 06
B19_106f:		jmp $b105		; 4c 05 b1


B19_1072:		lda $0606, x	; bd 06 06
B19_1075:		cmp #$80		; c9 80
B19_1077:		bcc B19_10f4 ; 90 7b

B19_1079:		cmp #$fe		; c9 fe
B19_107b:		beq B19_10dc ; f0 5f

B19_107d:		lda #$00		; a9 00
B19_107f:		sta $0657, x	; 9d 57 06
B19_1082:		sta $0509, x	; 9d 09 05
B19_1085:		sta $04f2, x	; 9d f2 04
B19_1088:		lda $33			; a5 33
B19_108a:		cmp #$02		; c9 02
B19_108c:		bne B19_109a ; d0 0c

B19_108e:		lda $041c, x	; bd 1c 04
B19_1091:		cmp #$f8		; c9 f8
B19_1093:		bcc B19_10da ; 90 45

B19_1095:		jsr $873a		; 20 3a 87
B19_1098:		sec				; 38 
B19_1099:		rts				; 60 


B19_109a:		lda $05ef, x	; bd ef 05
B19_109d:		and #$7f		; 29 7f
B19_109f:		cmp #$56		; c9 56
B19_10a1:		bne B19_10ab ; d0 08

B19_10a3:		lda $05c1, x	; bd c1 05
B19_10a6:		cmp #$02		; c9 02
B19_10a8:		beq B19_10ab ; f0 01

B19_10aa:		rts				; 60 


B19_10ab:		lda $041c, x	; bd 1c 04
B19_10ae:		cmp $ca			; c5 ca
B19_10b0:		bcc B19_10da ; 90 28

B19_10b2:		lda $05ef, x	; bd ef 05
B19_10b5:		and #$7f		; 29 7f
B19_10b7:		cmp #$25		; c9 25
B19_10b9:		bne B19_10c4 ; d0 09

B19_10bb:		lda $05c1, x	; bd c1 05
B19_10be:		cmp #$0f		; c9 0f
B19_10c0:		bne B19_10da ; d0 18

B19_10c2:		sec				; 38 
B19_10c3:		rts				; 60 


B19_10c4:		txa				; 8a 
B19_10c5:		cmp #$01		; c9 01
B19_10c7:		beq B19_10ce ; f0 05

B19_10c9:		lda #$fe		; a9 fe
B19_10cb:		sta $0606, x	; 9d 06 06
B19_10ce:		lda #$0a		; a9 0a
B19_10d0:		ldy #$43		; a0 43
B19_10d2:		jsr $ef5c		; 20 5c ef
B19_10d5:		lda #$25		; a9 25
B19_10d7:		jsr $864f		; 20 4f 86
B19_10da:		clc				; 18 
B19_10db:		rts				; 60 


B19_10dc:		lda #$00		; a9 00
B19_10de:		sta $0657, x	; 9d 57 06
B19_10e1:		lda $05ef, x	; bd ef 05
B19_10e4:		and #$7f		; 29 7f
B19_10e6:		bne B19_10f3 ; d0 0b

B19_10e8:		lda #$00		; a9 00
B19_10ea:		sta $054e, x	; 9d 4e 05
B19_10ed:		sta $0400, x	; 9d 00 04
B19_10f0:		sta $048c, x	; 9d 8c 04
B19_10f3:		rts				; 60 


B19_10f4:		lda $0669, x	; bd 69 06
B19_10f7:		and #$f0		; 29 f0
B19_10f9:		beq B19_1105 ; f0 0a

B19_10fb:		lda #$28		; a9 28
B19_10fd:		jsr playSound		; 20 5f e2
B19_1100:		lda #$00		; a9 00
B19_1102:		sta $0669, x	; 9d 69 06
B19_1105:		lda $07f3		; ad f3 07
B19_1108:		and #$80		; 29 80
B19_110a:		bne B19_110f ; d0 03

B19_110c:		jsr $b416		; 20 16 b4
B19_110f:		lda $04f2, x	; bd f2 04
B19_1112:		ora $0509, x	; 1d 09 05
B19_1115:		ora $0520, x	; 1d 20 05
B19_1118:		ora $0537, x	; 1d 37 05
B19_111b:		bne B19_1188 ; d0 6b

B19_111d:		lda $04f3		; ad f3 04
B19_1120:		ora $050a		; 0d 0a 05
B19_1123:		ora $0521		; 0d 21 05
B19_1126:		ora $0538		; 0d 38 05
B19_1129:		beq B19_114f ; f0 24

B19_112b:		lda $04f3		; ad f3 04
B19_112e:		sta $04f2, x	; 9d f2 04
B19_1131:		sta $05c1, x	; 9d c1 05
B19_1134:		lda $050a		; ad 0a 05
B19_1137:		sta $0509, x	; 9d 09 05
B19_113a:		sta $05d8, x	; 9d d8 05
B19_113d:		lda $0521		; ad 21 05
B19_1140:		sta $0520, x	; 9d 20 05
B19_1143:		sta $0633, x	; 9d 33 06
B19_1146:		lda $0538		; ad 38 05
B19_1149:		sta $0537, x	; 9d 37 05
B19_114c:		sta $0645, x	; 9d 45 06
B19_114f:		lda $0566		; ad 66 05
B19_1152:		sta $0565, x	; 9d 65 05
B19_1155:		jsr $b43b		; 20 3b b4
B19_1158:		lda $0565, x	; bd 65 05
B19_115b:		clc				; 18 
B19_115c:		adc #$10		; 69 10
B19_115e:		and #$1f		; 29 1f
B19_1160:		asl a			; 0a
B19_1161:		cpx #$02		; e0 02
B19_1163:		bne B19_1168 ; d0 03

B19_1165:		clc				; 18 
B19_1166:		adc #$40		; 69 40
B19_1168:		tay				; a8 
B19_1169:		lda $b223, y	; b9 23 b2
B19_116c:		sta $08			; 85 08
B19_116e:		lda $b224, y	; b9 24 b2
B19_1171:		sta $09			; 85 09
B19_1173:		ldy $00			; a4 00
B19_1175:		lda $0438, y	; b9 38 04
B19_1178:		clc				; 18 
B19_1179:		adc $08			; 65 08
B19_117b:		sta $0438, x	; 9d 38 04
B19_117e:		lda $041c, y	; b9 1c 04
B19_1181:		clc				; 18 
B19_1182:		adc $09			; 65 09
B19_1184:		sta $041c, x	; 9d 1c 04
B19_1187:		rts				; 60 


B19_1188:		lda $0606, x	; bd 06 06
B19_118b:		cmp #$0b		; c9 0b
B19_118d:		bne B19_11a5 ; d0 16

B19_118f:		lda #$40		; a9 40
B19_1191:		ora $0470, x	; 1d 70 04
B19_1194:		sta $0470, x	; 9d 70 04
B19_1197:		jsr $b2b7		; 20 b7 b2
B19_119a:		jsr $b158		; 20 58 b1
B19_119d:		lda $054e, y	; b9 4e 05
B19_11a0:		bne B19_11a5 ; d0 03

B19_11a2:		jsr $b33d		; 20 3d b3
B19_11a5:		jsr $b2b7		; 20 b7 b2
B19_11a8:		lda $061d, x	; bd 1d 06
B19_11ab:		bne B19_11ec ; d0 3f

B19_11ad:		lda $05c1, x	; bd c1 05
B19_11b0:		sta $04f2, x	; 9d f2 04
B19_11b3:		lda $05d8, x	; bd d8 05
B19_11b6:		sta $0509, x	; 9d 09 05
B19_11b9:		lda $0633, x	; bd 33 06
B19_11bc:		sta $0520, x	; 9d 20 05
B19_11bf:		lda $0645, x	; bd 45 06
B19_11c2:		sta $0537, x	; 9d 37 05
B19_11c5:		lda $04f2, y	; b9 f2 04
B19_11c8:		sta $05c1, x	; 9d c1 05
B19_11cb:		lda $0509, y	; b9 09 05
B19_11ce:		sta $05d8, x	; 9d d8 05
B19_11d1:		lda $0520, y	; b9 20 05
B19_11d4:		sta $0633, x	; 9d 33 06
B19_11d7:		lda $0537, y	; b9 37 05
B19_11da:		sta $0645, x	; 9d 45 06
B19_11dd:		jsr $b43b		; 20 3b b4
B19_11e0:		ldy $061e		; ac 1e 06
B19_11e3:		lda $9940, y	; b9 40 99
B19_11e6:		sta $061d, x	; 9d 1d 06
B19_11e9:		jmp $b1f3		; 4c f3 b1


B19_11ec:		jsr $b44a		; 20 4a b4
B19_11ef:		dec $061d, x	; de 1d 06
B19_11f2:		rts				; 60 


B19_11f3:		ldy #$a4		; a0 a4
B19_11f5:		lda $0606, x	; bd 06 06
B19_11f8:		cmp #$0b		; c9 0b
B19_11fa:		bne B19_11fe ; d0 02

B19_11fc:		ldy #$ae		; a0 ae
B19_11fe:		sty $02			; 84 02
B19_1200:		lda $0565, x	; bd 65 05
B19_1203:		and #$10		; 29 10
B19_1205:		beq B19_1209 ; f0 02

B19_1207:		lda #$01		; a9 01
B19_1209:		sta $04a8, x	; 9d a8 04
B19_120c:		lda $0565, x	; bd 65 05
B19_120f:		cmp #$12		; c9 12
B19_1211:		bcc B19_1219 ; 90 06

B19_1213:		lda #$1f		; a9 1f
B19_1215:		sec				; 38 
B19_1216:		sbc $0565, x	; fd 65 05
B19_1219:		lsr a			; 4a
B19_121a:		and #$fe		; 29 fe
B19_121c:		clc				; 18 
B19_121d:		adc $02			; 65 02
B19_121f:		sta $0400, x	; 9d 00 04
B19_1222:		rts				; 60 


B19_1223:		.db $00				; 00
B19_1224:		inc $02, x		; f6 02
B19_1226:		inc $04, x		; f6 04
B19_1228:	.db $f7
B19_1229:		asl $f8			; 06 f8
B19_122b:	.db $07
B19_122c:		sbc $fa08, y	; f9 08 fa
B19_122f:		ora #$fc		; 09 fc
B19_1231:		asl a			; 0a
B19_1232:	.db $fe $0a $00
B19_1235:		asl a			; 0a
B19_1236:	.db $02
B19_1237:		ora #$04		; 09 04
B19_1239:		php				; 08 
B19_123a:		asl $07			; 06 07
B19_123c:	.db $07
B19_123d:		asl $08			; 06 08
B19_123f:	.db $04
B19_1240:		ora #$02		; 09 02
B19_1242:		asl a			; 0a
B19_1243:		.db $00				; 00
B19_1244:		asl a			; 0a
B19_1245:		inc $fc0a, x	; fe 0a fc
B19_1248:		ora #$fa		; 09 fa
B19_124a:		php				; 08 
B19_124b:		sbc $f807, y	; f9 07 f8
B19_124e:		asl $f7			; 06 f7
B19_1250:	.db $04
B19_1251:		inc $02, x		; f6 02
B19_1253:		inc $00, x		; f6 00
B19_1255:		inc $fe, x		; f6 fe
B19_1257:	.db $f7
B19_1258:	.db $fc
B19_1259:		sed				; f8 
B19_125a:	.db $fa
B19_125b:		sbc $faf9, y	; f9 f9 fa
B19_125e:		sed				; f8 
B19_125f:	.db $fc
B19_1260:	.db $f7
B19_1261:	.db $fe $f6 $00
B19_1264:	.db $f2
B19_1265:	.db $03
B19_1266:	.db $f2
B19_1267:		asl $f3			; 06 f3
B19_1269:		php				; 08 
B19_126a:		sbc $0a, x		; f5 0a
B19_126c:		inc $0b, x		; f6 0b
B19_126e:		sed				; f8 
B19_126f:		ora $0efa		; 0d fa 0e
B19_1272:	.db $fd $0e $00
B19_1275:		asl $0d03		; 0e 03 0d
B19_1278:		asl $0b			; 06 0b
B19_127a:		php				; 08 
B19_127b:		asl a			; 0a
B19_127c:		asl a			; 0a
B19_127d:		php				; 08 
B19_127e:	.db $0b
B19_127f:		asl $0d			; 06 0d
B19_1281:	.db $03
B19_1282:		asl $0e00		; 0e 00 0e
B19_1285:		sbc $fa0e, x	; fd 0e fa
B19_1288:		ora $0bf8		; 0d f8 0b
B19_128b:		inc $0a, x		; f6 0a
B19_128d:		sbc $08, x		; f5 08
B19_128f:	.db $f3
B19_1290:		asl $f2			; 06 f2
B19_1292:	.db $03
B19_1293:	.db $f2
B19_1294:		.db $00				; 00
B19_1295:	.db $f2
B19_1296:		sbc $faf3, x	; fd f3 fa
B19_1299:	.db $f2
B19_129a:		sbc $f6f6, x	; fd f6 f6
B19_129d:		sed				; f8 
B19_129e:		sbc $fa, x		; f5 fa
B19_12a0:	.db $f3
B19_12a1:		sbc $08f2, x	; fd f2 08
B19_12a4:		php				; 08 
B19_12a5:		php				; 08 
B19_12a6:		php				; 08 
B19_12a7:		php				; 08 
B19_12a8:		php				; 08 
B19_12a9:		php				; 08 
B19_12aa:		php				; 08 
B19_12ab:		php				; 08 
B19_12ac:		php				; 08 
B19_12ad:		php				; 08 
B19_12ae:		php				; 08 
B19_12af:		php				; 08 
B19_12b0:		php				; 08 
B19_12b1:		php				; 08 
B19_12b2:		php				; 08 
B19_12b3:		php				; 08 
B19_12b4:		php				; 08 
B19_12b5:		php				; 08 
B19_12b6:		php				; 08 
B19_12b7:		txa				; 8a 
B19_12b8:		tay				; a8 
B19_12b9:		dey				; 88 
B19_12ba:		sty $00			; 84 00
B19_12bc:		rts				; 60 


B19_12bd:		lda $054f		; ad 4f 05
B19_12c0:		bne B19_12da ; d0 18

B19_12c2:		lda $0438, x	; bd 38 04
B19_12c5:		sta $00			; 85 00
B19_12c7:		lda $d1			; a5 d1
B19_12c9:		and #$80		; 29 80
B19_12cb:		beq B19_12d2 ; f0 05

B19_12cd:		lda $041c, x	; bd 1c 04
B19_12d0:		sta $00			; 85 00
B19_12d2:		lda $d1			; a5 d1
B19_12d4:		asl a			; 0a
B19_12d5:		sta $01			; 85 01
B19_12d7:		jmp $b307		; 4c 07 b3


B19_12da:		rts				; 60 


B19_12db:		lda $05f0		; ad f0 05
B19_12de:		and #$7f		; 29 7f
B19_12e0:		cmp #$49		; c9 49
B19_12e2:		bne B19_12eb ; d0 07

B19_12e4:		lda $05c2		; ad c2 05
B19_12e7:		cmp #$06		; c9 06
B19_12e9:		bcs B19_12ec ; b0 01

B19_12eb:		rts				; 60 


B19_12ec:		lda $0438, x	; bd 38 04
B19_12ef:		sta $00			; 85 00
B19_12f1:		lda #$80		; a9 80
B19_12f3:		sta $01			; 85 01
B19_12f5:		lda #$38		; a9 38
B19_12f7:		sta $02			; 85 02
B19_12f9:		jsr $b355		; 20 55 b3
B19_12fc:		bcs B19_1354 ; b0 56

B19_12fe:		lda $041c, x	; bd 1c 04
B19_1301:		sta $00			; 85 00
B19_1303:		lda #$40		; a9 40
B19_1305:		sta $01			; 85 01
B19_1307:		lda #$04		; a9 04
B19_1309:		sta $02			; 85 02
B19_130b:		jsr $b355		; 20 55 b3
B19_130e:		bcs B19_1354 ; b0 44

B19_1310:		cpx #$01		; e0 01
B19_1312:		bne B19_133d ; d0 29

B19_1314:		lda $0520, x	; bd 20 05
B19_1317:		beq B19_1326 ; f0 0d

B19_1319:		cmp #$ff		; c9 ff
B19_131b:		bne B19_132d ; d0 10

B19_131d:		lda $0537, x	; bd 37 05
B19_1320:		cmp #$c0		; c9 c0
B19_1322:		bcs B19_1337 ; b0 13

B19_1324:		bcc B19_132d ; 90 07

B19_1326:		lda $0537, x	; bd 37 05
B19_1329:		cmp #$40		; c9 40
B19_132b:		bcc B19_1337 ; 90 0a

B19_132d:		lda $041c, x	; bd 1c 04
B19_1330:		lsr a			; 4a
B19_1331:		ora #$80		; 09 80
B19_1333:		sta $d1			; 85 d1
B19_1335:		bne B19_133d ; d0 06

B19_1337:		lda $0438, x	; bd 38 04
B19_133a:		lsr a			; 4a
B19_133b:		sta $d1			; 85 d1
B19_133d:		lda #$00		; a9 00
B19_133f:		sta $054e, x	; 9d 4e 05
B19_1342:		sta $0400, x	; 9d 00 04
B19_1345:		sta $05aa, x	; 9d aa 05
B19_1348:		sta $048c, x	; 9d 8c 04
B19_134b:		sta $05ef, x	; 9d ef 05
B19_134e:		sta $05c1, x	; 9d c1 05
B19_1351:		jsr $b39e		; 20 9e b3
B19_1354:		rts				; 60 


B19_1355:		lda $00			; a5 00
B19_1357:		sec				; 38 
B19_1358:		sbc $01			; e5 01
B19_135a:		bcs B19_1361 ; b0 05

B19_135c:		eor #$ff		; 49 ff
B19_135e:		clc				; 18 
B19_135f:		adc #$01		; 69 01
B19_1361:		cmp $02			; c5 02
B19_1363:		rts				; 60 


B19_1364:		ldy $061d, x	; bc 1d 06
B19_1367:		dey				; 88 
B19_1368:		beq B19_1363 ; f0 f9

B19_136a:		tya				; 98 
B19_136b:		sta $061d, x	; 9d 1d 06
B19_136e:		ldy #$02		; a0 02
B19_1370:		lda $054e, y	; b9 4e 05
B19_1373:		cmp #$2d		; c9 2d
B19_1375:		bne B19_138e ; d0 17

B19_1377:		lda $0606, y	; b9 06 06
B19_137a:		cmp #$80		; c9 80
B19_137c:		bcs B19_138e ; b0 10

B19_137e:		lda #$00		; a9 00
B19_1380:		sta $0669, y	; 99 69 06
B19_1383:		lda $068d, x	; bd 8d 06
B19_1386:		sta $068d, y	; 99 8d 06
B19_1389:		iny				; c8 
B19_138a:		cpy #$0e		; c0 0e
B19_138c:		bne B19_1370 ; d0 e2

B19_138e:		dey				; 88 
B19_138f:		lda #$ff		; a9 ff
B19_1391:		sta $0606, y	; 99 06 06
B19_1394:		tya				; 98 
B19_1395:		tax				; aa 
B19_1396:		lda #$17		; a9 17
B19_1398:		jsr $864f		; 20 4f 86
B19_139b:		ldx $6c			; a6 6c
B19_139d:		rts				; 60 


B19_139e:		lda #$00		; a9 00
B19_13a0:		sta $00			; 85 00
B19_13a2:		ldy #$01		; a0 01
B19_13a4:		lda $054e, y	; b9 4e 05
B19_13a7:		beq B19_13ab ; f0 02

B19_13a9:		inc $00			; e6 00
B19_13ab:		iny				; c8 
B19_13ac:		cpy #$0d		; c0 0d
B19_13ae:		bne B19_13a4 ; d0 f4

B19_13b0:		lda $00			; a5 00
B19_13b2:		bne B19_13c1 ; d0 0d

B19_13b4:		lda $061e		; ad 1e 06
B19_13b7:		sta $be			; 85 be
B19_13b9:		lda #$1c		; a9 1c
B19_13bb:		sta $2a			; 85 2a
B19_13bd:		lda $3d			; a5 3d
B19_13bf:		sta $bd			; 85 bd
B19_13c1:		rts				; 60 


B19_13c2:		ldy #$01		; a0 01
B19_13c4:		lda $054e, y	; b9 4e 05
B19_13c7:		cmp #$06		; c9 06
B19_13c9:		beq B19_13cf ; f0 04

B19_13cb:		cmp #$2d		; c9 2d
B19_13cd:		bne B19_1400 ; d0 31

B19_13cf:		lda #$00		; a9 00
B19_13d1:		sta $0669, y	; 99 69 06
B19_13d4:		cpy #$01		; c0 01
B19_13d6:		bne B19_13df ; d0 07

B19_13d8:		lda #$ff		; a9 ff
B19_13da:		sta $061d, y	; 99 1d 06
B19_13dd:		bne B19_13e4 ; d0 05

B19_13df:		lda #$ff		; a9 ff
B19_13e1:		sta $0606, y	; 99 06 06
B19_13e4:		lda $b406, y	; b9 06 b4
B19_13e7:		sta $05d8, y	; 99 d8 05
B19_13ea:		lda #$d6		; a9 d6
B19_13ec:		sta $05ef, y	; 99 ef 05
B19_13ef:		lda #$00		; a9 00
B19_13f1:		sta $05c1, y	; 99 c1 05
B19_13f4:		sta $04f2, y	; 99 f2 04
B19_13f7:		sta $0509, y	; 99 09 05
B19_13fa:		sta $0520, y	; 99 20 05
B19_13fd:		sta $0537, y	; 99 37 05
B19_1400:		iny				; c8 
B19_1401:		cpy #$0e		; c0 0e
B19_1403:		bne B19_13c4 ; d0 bf

B19_1405:		rts				; 60 


B19_1406:		cpy #$b0		; c0 b0
B19_1408:		ldy #$90		; a0 90
B19_140a:	.db $80
B19_140b:		;removed
	.db $70 $60

B19_140d:		;removed
	.db $50 $40

B19_140f:		bmi B19_1431 ; 30 20

B19_1411:		bpl B19_1423 ; 10 10

B19_1413:		bpl B19_1425 ; 10 10

B19_1415:		bpl B19_13d4 ; 10 bd

B19_1417:		sec				; 38 
B19_1418:	.db $04
B19_1419:		cmp #$04		; c9 04
B19_141b:		bcs B19_141f ; b0 02

B19_141d:		lda #$04		; a9 04
B19_141f:		cmp #$fc		; c9 fc
B19_1421:		bcc B19_1425 ; 90 02

B19_1423:		lda #$fb		; a9 fb
B19_1425:		sta $0438, x	; 9d 38 04
B19_1428:		lda $041c, x	; bd 1c 04
B19_142b:		cmp #$30		; c9 30
B19_142d:		bcs B19_1431 ; b0 02

B19_142f:		lda #$30		; a9 30
B19_1431:		cmp #$f0		; c9 f0
B19_1433:		bcc B19_1437 ; 90 02

B19_1435:		lda #$ef		; a9 ef
B19_1437:		sta $041c, x	; 9d 1c 04
B19_143a:		rts				; 60 


B19_143b:		txa				; 8a 
B19_143c:		tay				; a8 
B19_143d:		dey				; 88 
B19_143e:		sty $00			; 84 00
B19_1440:		lda $0565, y	; b9 65 05
B19_1443:		ldy $0606, x	; bc 06 06
B19_1446:		sta $0782, y	; 99 82 07
B19_1449:		rts				; 60 


B19_144a:		ldy $0606, x	; bc 06 06
B19_144d:		lda $0782, y	; b9 82 07
B19_1450:		sta $0565, x	; 9d 65 05
B19_1453:		rts				; 60 


B19_1454:		lda #$26		; a9 26
B19_1456:		jsr $87c5		; 20 c5 87
B19_1459:		lda #$88		; a9 88
B19_145b:		sta $0470, y	; 99 70 04
B19_145e:		lda #$48		; a9 48
B19_1460:		sta $041c, y	; 99 1c 04
B19_1463:		lda #$20		; a9 20
B19_1465:		sta $0438, y	; 99 38 04
B19_1468:		sty $16			; 84 16
B19_146a:		lda $17			; a5 17
B19_146c:		and #$07		; 29 07
B19_146e:		asl a			; 0a
B19_146f:		tay				; a8 
B19_1470:		lda $b4d3, y	; b9 d3 b4
B19_1473:		sta $00			; 85 00
B19_1475:		lda $b4d4, y	; b9 d4 b4
B19_1478:		sta $01			; 85 01
B19_147a:		lda $b4e1, y	; b9 e1 b4
B19_147d:		sta $02			; 85 02
B19_147f:		lda $b4e2, y	; b9 e2 b4
B19_1482:		sta $03			; 85 03
B19_1484:		ldy $16			; a4 16
B19_1486:		lda $00			; a5 00
B19_1488:		sta $0509, y	; 99 09 05
B19_148b:		lda $01			; a5 01
B19_148d:		sta $04f2, y	; 99 f2 04
B19_1490:		lda $02			; a5 02
B19_1492:		sta $0537, y	; 99 37 05
B19_1495:		lda $03			; a5 03
B19_1497:		sta $0520, y	; 99 20 05
B19_149a:		txa				; 8a 
B19_149b:		sta $0606, y	; 99 06 06
B19_149e:		rts				; 60 


B19_149f:		ldy $0606, x	; bc 06 06
B19_14a2:		lda $0470, y	; b9 70 04
B19_14a5:		and #$88		; 29 88
B19_14a7:		bne B19_149e ; d0 f5

B19_14a9:		lda $05ef, x	; bd ef 05
B19_14ac:		and #$7f		; 29 7f
B19_14ae:		bne B19_14c9 ; d0 19

B19_14b0:		lda #$34		; a9 34
B19_14b2:		jsr playSound		; 20 5f e2
B19_14b5:		lda #$0e		; a9 0e
B19_14b7:		sta $048c, x	; 9d 8c 04
B19_14ba:		lda #$18		; a9 18
B19_14bc:		sta $0400, x	; 9d 00 04
B19_14bf:		lda #$60		; a9 60
B19_14c1:		sta $0470, x	; 9d 70 04
B19_14c4:		lda #$55		; a9 55
B19_14c6:		jmp $864f		; 4c 4f 86


B19_14c9:		lda $041c, x	; bd 1c 04
B19_14cc:		cmp #$f8		; c9 f8
B19_14ce:		bcc B19_149e ; 90 ce

B19_14d0:		jmp $873a		; 4c 3a 87


B19_14d3:		bpl B19_14d5 ; 10 00

B19_14d5:		jsr $3000		; 20 00 30
B19_14d8:		.db $00				; 00
B19_14d9:		rti				; 40 


B19_14da:		.db $00				; 00
B19_14db:		bvc B19_14dd ; 50 00

B19_14dd:		rts				; 60 


B19_14de:		.db $00				; 00
B19_14df:		bvs B19_14e1 ; 70 00

B19_14e1:		.db $00				; 00
B19_14e2:	.db $ff
B19_14e3:		cpx #$ff		; e0 ff
B19_14e5:		bne B19_14e5 ; d0 fe

B19_14e7:		cpy #$ff		; c0 ff
B19_14e9:		bcs B19_14e9 ; b0 fe

B19_14eb:		ldy #$ff		; a0 ff
B19_14ed:		;removed
	.db $90 $fd

B19_14ef:		lda $07ec		; ad ec 07
B19_14f2:		beq B19_14f7 ; f0 03

B19_14f4:		jmp $b5b7		; 4c b7 b5


B19_14f7:		lda $78			; a5 78
B19_14f9:		bne B19_1515 ; d0 1a

B19_14fb:		lda #$3c		; a9 3c
B19_14fd:		sta $0606, x	; 9d 06 06
B19_1500:		lda #$01		; a9 01
B19_1502:		sta $04a8, x	; 9d a8 04
B19_1505:		lda #$a8		; a9 a8
B19_1507:		sta $041c, x	; 9d 1c 04
B19_150a:		lda #$10		; a9 10
B19_150c:		ldy #$44		; a0 44
B19_150e:		jmp $ef5c		; 4c 5c ef


B19_1511:		dec $0606, x	; de 06 06
B19_1514:		rts				; 60 


B19_1515:		lda $0606, x	; bd 06 06
B19_1518:		bne B19_1511 ; d0 f7

B19_151a:		lda #$60		; a9 60
B19_151c:		sta $0470, x	; 9d 70 04
B19_151f:		lda $05ef, x	; bd ef 05
B19_1522:		and #$7f		; 29 7f
B19_1524:		bne B19_154b ; d0 25

B19_1526:		lda #$25		; a9 25
B19_1528:		jsr $8766		; 20 66 87
B19_152b:		lda #$80		; a9 80
B19_152d:		sta $05ef, y	; 99 ef 05
B19_1530:		lda #$e8		; a9 e8
B19_1532:		sta $0470, y	; 99 70 04
B19_1535:		txa				; 8a 
B19_1536:		sta $0606, y	; 99 06 06
B19_1539:		lda #$02		; a9 02
B19_153b:		sta $0400, y	; 99 00 04
B19_153e:		lda #$40		; a9 40
B19_1540:		sta $067b, y	; 99 7b 06
B19_1543:		sta $067b, x	; 9d 7b 06
B19_1546:		lda #$d1		; a9 d1
B19_1548:		jmp $864f		; 4c 4f 86


B19_154b:		lda $05c1, x	; bd c1 05
B19_154e:		cmp #$07		; c9 07
B19_1550:		beq B19_1553 ; f0 01

B19_1552:		rts				; 60 


B19_1553:		lda $07f3		; ad f3 07
B19_1556:		and #$7f		; 29 7f
B19_1558:		sta $07f3		; 8d f3 07
B19_155b:		jsr $b562		; 20 62 b5
B19_155e:		sta $05ef, x	; 9d ef 05
B19_1561:		rts				; 60 


B19_1562:		lda #$00		; a9 00
B19_1564:		sta $0606, x	; 9d 06 06
B19_1567:		sta $061d, x	; 9d 1d 06
B19_156a:		sta $0633, x	; 9d 33 06
B19_156d:		rts				; 60 


B19_156e:		lda #$e8		; a9 e8
B19_1570:		sta $0470, x	; 9d 70 04
B19_1573:		lda #$02		; a9 02
B19_1575:		sta $0400, x	; 9d 00 04
B19_1578:		ldy $0606, x	; bc 06 06
B19_157b:		lda $0606, y	; b9 06 06
B19_157e:		cmp #$03		; c9 03
B19_1580:		bcs B19_158b ; b0 09

B19_1582:		lda #$01		; a9 01
B19_1584:		jsr $88e0		; 20 e0 88
B19_1587:		lda $3d			; a5 3d
B19_1589:		beq B19_15a9 ; f0 1e

B19_158b:		lda #$00		; a9 00
B19_158d:		sta $0669, x	; 9d 69 06
B19_1590:		ldy $0606, x	; bc 06 06
B19_1593:		lda $041c, y	; b9 1c 04
B19_1596:		sec				; 38 
B19_1597:		sbc #$10		; e9 10
B19_1599:		sta $041c, x	; 9d 1c 04
B19_159c:		lda $0438, y	; b9 38 04
B19_159f:		sta $0438, x	; 9d 38 04
B19_15a2:		lda $0657, y	; b9 57 06
B19_15a5:		sta $0657, x	; 9d 57 06
B19_15a8:		rts				; 60 


B19_15a9:		jmp $873a		; 4c 3a 87


B19_15ac:		lda #$00		; a9 00
B19_15ae:		sta $bb			; 85 bb
B19_15b0:		sta $ba			; 85 ba
B19_15b2:		lda $07ec		; ad ec 07
B19_15b5:		beq B19_15cd ; f0 16

B19_15b7:		lda #$03		; a9 03
B19_15b9:		sta $ba			; 85 ba
B19_15bb:		ldy $07ec		; ac ec 07
B19_15be:		dey				; 88 
B19_15bf:		sty $bc			; 84 bc
B19_15c1:		ldy $07ec		; ac ec 07
B19_15c4:		dey				; 88 
B19_15c5:		bne B19_15ca ; d0 03

B19_15c7:		jmp $b963		; 4c 63 b9


B19_15ca:		jmp $bd5f		; 4c 5f bd


B19_15cd:		jsr $8231		; 20 31 82
B19_15d0:		lda $3d			; a5 3d
B19_15d2:		beq B19_15d7 ; f0 03

B19_15d4:		jmp $b6a1		; 4c a1 b6


B19_15d7:		lda $07ed		; ad ed 07
B19_15da:		bne B19_1654 ; d0 78

B19_15dc:		lda #$00		; a9 00
B19_15de:		sta $07ee		; 8d ee 07
B19_15e1:		lda #$06		; a9 06
B19_15e3:		sta $17			; 85 17
B19_15e5:		lda #$0d		; a9 0d
B19_15e7:		jsr $8766		; 20 66 87
B19_15ea:		lda $17			; a5 17
B19_15ec:		sta $0606, y	; 99 06 06
B19_15ef:		lda #$de		; a9 de
B19_15f1:		sta $05ef, y	; 99 ef 05
B19_15f4:		lda #$60		; a9 60
B19_15f6:		sta $0470, y	; 99 70 04
B19_15f9:		lda #$10		; a9 10
B19_15fb:		sta $048c, y	; 99 8c 04
B19_15fe:		lda #$00		; a9 00
B19_1600:		sta $05c1, y	; 99 c1 05
B19_1603:		sty $16			; 84 16
B19_1605:		ldy $17			; a4 17
B19_1607:		dey				; 88 
B19_1608:		lda $b895, y	; b9 95 b8
B19_160b:		sta $15			; 85 15
B19_160d:		lda $b89b, y	; b9 9b b8
B19_1610:		ldy $16			; a4 16
B19_1612:		sta $0565, y	; 99 65 05
B19_1615:		lda $15			; a5 15
B19_1617:		sta $0400, y	; 99 00 04
B19_161a:		inc $07ee		; ee ee 07
B19_161d:		dec $17			; c6 17
B19_161f:		bne B19_15e5 ; d0 c4

B19_1621:		lda $17			; a5 17
B19_1623:		sta $0606, x	; 9d 06 06
B19_1626:		lda $041c, x	; bd 1c 04
B19_1629:		sec				; 38 
B19_162a:		sbc #$10		; e9 10
B19_162c:		sta $041c, x	; 9d 1c 04
B19_162f:		lda #$80		; a9 80
B19_1631:		sta $05ef, x	; 9d ef 05
B19_1634:		lda #$f0		; a9 f0
B19_1636:		sta $0400, x	; 9d 00 04
B19_1639:		lda #$10		; a9 10
B19_163b:		sta $048c, x	; 9d 8c 04
B19_163e:		lda #$20		; a9 20
B19_1640:		sta $0470, x	; 9d 70 04
B19_1643:		inc $07ed		; ee ed 07
B19_1646:		lda #$7b		; a9 7b
B19_1648:		jsr playSound		; 20 5f e2
B19_164b:		lda #$43		; a9 43
B19_164d:		jmp playSound		; 4c 5f e2


B19_1650:		sta $041c, x	; 9d 1c 04
B19_1653:		rts				; 60 


B19_1654:		lda $0606, x	; bd 06 06
B19_1657:		bne B19_1684 ; d0 2b

B19_1659:		lda $041c, x	; bd 1c 04
B19_165c:		sec				; 38 
B19_165d:		sbc #$01		; e9 01
B19_165f:		cmp #$80		; c9 80
B19_1661:		bcs B19_1650 ; b0 ed

B19_1663:		lda $07ee		; ad ee 07
B19_1666:		bne B19_1653 ; d0 eb

B19_1668:		inc $07ec		; ee ec 07
B19_166b:		lda #$80		; a9 80
B19_166d:		sta $07f3		; 8d f3 07
B19_1670:		lda #$40		; a9 40
B19_1672:		sta $3d			; 85 3d
B19_1674:		sta $067b, x	; 9d 7b 06
B19_1677:		lda #$00		; a9 00
B19_1679:		sta $0645, x	; 9d 45 06
B19_167c:		jsr $b562		; 20 62 b5
B19_167f:		lda #$30		; a9 30
B19_1681:		jmp $8661		; 4c 61 86


B19_1684:		lda $041c, x	; bd 1c 04
B19_1687:		and #$f8		; 29 f8
B19_1689:		beq B19_169b ; f0 10

B19_168b:		cmp #$f8		; c9 f8
B19_168d:		beq B19_169b ; f0 0c

B19_168f:		lda $0438, x	; bd 38 04
B19_1692:		and #$f8		; 29 f8
B19_1694:		beq B19_169b ; f0 05

B19_1696:		cmp #$f8		; c9 f8
B19_1698:		beq B19_169b ; f0 01

B19_169a:		rts				; 60 


B19_169b:		dec $07ee		; ce ee 07
B19_169e:		jmp $873a		; 4c 3a 87


B19_16a1:		lda #$60		; a9 60
B19_16a3:		sta $0470, x	; 9d 70 04
B19_16a6:		lda #$30		; a9 30
B19_16a8:		sta $0657, x	; 9d 57 06
B19_16ab:		ldy $0606, x	; bc 06 06
B19_16ae:		bne B19_1700 ; d0 50

B19_16b0:		lda $05ef, x	; bd ef 05
B19_16b3:		and #$7f		; 29 7f
B19_16b5:		bne B19_16bf ; d0 08

B19_16b7:		jsr $b885		; 20 85 b8
B19_16ba:		lda #$d2		; a9 d2
B19_16bc:		jmp $864f		; 4c 4f 86


B19_16bf:		lda $05c1, x	; bd c1 05
B19_16c2:		cmp #$07		; c9 07
B19_16c4:		beq B19_16cb ; f0 05

B19_16c6:		cmp #$0d		; c9 0d
B19_16c8:		beq B19_16f2 ; f0 28

B19_16ca:		rts				; 60 


B19_16cb:		lda #$01		; a9 01
B19_16cd:		sta $17			; 85 17
B19_16cf:		lda #$24		; a9 24
B19_16d1:		jsr $8766		; 20 66 87
B19_16d4:		lda #$00		; a9 00
B19_16d6:		sta $0606, y	; 99 06 06
B19_16d9:		lda $17			; a5 17
B19_16db:		sta $061d, y	; 99 1d 06
B19_16de:		lda #$60		; a9 60
B19_16e0:		sta $0470, y	; 99 70 04
B19_16e3:		lda #$80		; a9 80
B19_16e5:		sta $05ef, y	; 99 ef 05
B19_16e8:		lda #$c0		; a9 c0
B19_16ea:		sta $041c, y	; 99 1c 04
B19_16ed:		dec $17			; c6 17
B19_16ef:		bpl B19_16cf ; 10 de

B19_16f1:		rts				; 60 


B19_16f2:		inc $0606, x	; fe 06 06
B19_16f5:		lda #$30		; a9 30
B19_16f7:		sta $061d, x	; 9d 1d 06
B19_16fa:		lda #$80		; a9 80
B19_16fc:		sta $05ef, x	; 9d ef 05
B19_16ff:		rts				; 60 


B19_1700:		dey				; 88 
B19_1701:		bne B19_1754 ; d0 51

B19_1703:		lda $061d, x	; bd 1d 06
B19_1706:		bne B19_1750 ; d0 48

B19_1708:		lda $05ef, x	; bd ef 05
B19_170b:		and #$7f		; 29 7f
B19_170d:		bne B19_1717 ; d0 08

B19_170f:		jsr $b885		; 20 85 b8
B19_1712:		lda #$d2		; a9 d2
B19_1714:		jmp $864f		; 4c 4f 86


B19_1717:		lda $05c1, x	; bd c1 05
B19_171a:		cmp #$07		; c9 07
B19_171c:		beq B19_1723 ; f0 05

B19_171e:		cmp #$0d		; c9 0d
B19_1720:		beq B19_1742 ; f0 20

B19_1722:		rts				; 60 


B19_1723:		lda #$24		; a9 24
B19_1725:		jsr $8766		; 20 66 87
B19_1728:		lda #$01		; a9 01
B19_172a:		sta $0606, y	; 99 06 06
B19_172d:		lda #$00		; a9 00
B19_172f:		sta $061d, y	; 99 1d 06
B19_1732:		lda #$60		; a9 60
B19_1734:		sta $0470, y	; 99 70 04
B19_1737:		lda #$80		; a9 80
B19_1739:		sta $05ef, y	; 99 ef 05
B19_173c:		lda #$c0		; a9 c0
B19_173e:		sta $041c, y	; 99 1c 04
B19_1741:		rts				; 60 


B19_1742:		inc $0606, x	; fe 06 06
B19_1745:		lda #$20		; a9 20
B19_1747:		sta $061d, x	; 9d 1d 06
B19_174a:		lda #$80		; a9 80
B19_174c:		sta $05ef, x	; 9d ef 05
B19_174f:		rts				; 60 


B19_1750:		dec $061d, x	; de 1d 06
B19_1753:		rts				; 60 


B19_1754:		dey				; 88 
B19_1755:		bne B19_1781 ; d0 2a

B19_1757:		lda $061d, x	; bd 1d 06
B19_175a:		bne B19_1750 ; d0 f4

B19_175c:		lda $0438, x	; bd 38 04
B19_175f:		sta $061d, x	; 9d 1d 06
B19_1762:		and #$f0		; 29 f0
B19_1764:		sta $0645, x	; 9d 45 06
B19_1767:		lda #$00		; a9 00
B19_1769:		sta $0565, x	; 9d 65 05
B19_176c:		sta $05c1, x	; 9d c1 05
B19_176f:		ldy $0633, x	; bc 33 06
B19_1772:		lda $b8a1, y	; b9 a1 b8
B19_1775:		cmp $061d, x	; dd 1d 06
B19_1778:		bcs B19_177d ; b0 03

B19_177a:		inc $0565, x	; fe 65 05
B19_177d:		inc $0606, x	; fe 06 06
B19_1780:		rts				; 60 


B19_1781:		lda #$00		; a9 00
B19_1783:		sta $0657, x	; 9d 57 06
B19_1786:		dey				; 88 
B19_1787:		bne B19_1805 ; d0 7c

B19_1789:		lda $05d8, x	; bd d8 05
B19_178c:		bne B19_1801 ; d0 73

B19_178e:		lda $0565, x	; bd 65 05
B19_1791:		beq B19_17a9 ; f0 16

B19_1793:		lda $0438, x	; bd 38 04
B19_1796:		sec				; 38 
B19_1797:		sbc #$10		; e9 10
B19_1799:		sta $0438, x	; 9d 38 04
B19_179c:		and #$f0		; 29 f0
B19_179e:		cmp $0645, x	; dd 45 06
B19_17a1:		beq B19_17fb ; f0 58

B19_17a3:		bcc B19_17bf ; 90 1a

B19_17a5:		lda #$00		; a9 00
B19_17a7:		beq B19_17fd ; f0 54

B19_17a9:		lda $0438, x	; bd 38 04
B19_17ac:		clc				; 18 
B19_17ad:		adc #$10		; 69 10
B19_17af:		sta $0438, x	; 9d 38 04
B19_17b2:		and #$f0		; 29 f0
B19_17b4:		cmp $0645, x	; dd 45 06
B19_17b7:		beq B19_17fb ; f0 42

B19_17b9:		bcs B19_17bf ; b0 04

B19_17bb:		lda #$00		; a9 00
B19_17bd:		beq B19_17fd ; f0 3e

B19_17bf:		lda $061d, x	; bd 1d 06
B19_17c2:		sta $0438, x	; 9d 38 04
B19_17c5:		inc $05c1, x	; fe c1 05
B19_17c8:		lda $05c1, x	; bd c1 05
B19_17cb:		cmp #$04		; c9 04
B19_17cd:		bne B19_17fb ; d0 2c

B19_17cf:		lda #$00		; a9 00
B19_17d1:		sta $05c1, x	; 9d c1 05
B19_17d4:		ldy $0633, x	; bc 33 06
B19_17d7:		lda $b8a1, y	; b9 a1 b8
B19_17da:		cmp $0645, x	; dd 45 06
B19_17dd:		bne B19_17e3 ; d0 04

B19_17df:		inc $0606, x	; fe 06 06
B19_17e2:		rts				; 60 


B19_17e3:		lda #$10		; a9 10
B19_17e5:		sta $00			; 85 00
B19_17e7:		lda $0565, x	; bd 65 05
B19_17ea:		beq B19_17f0 ; f0 04

B19_17ec:		lda #$f0		; a9 f0
B19_17ee:		sta $00			; 85 00
B19_17f0:		lda $0645, x	; bd 45 06
B19_17f3:		clc				; 18 
B19_17f4:		adc $00			; 65 00
B19_17f6:		and #$f0		; 29 f0
B19_17f8:		sta $0645, x	; 9d 45 06
B19_17fb:		lda #$00		; a9 00
B19_17fd:		sta $05d8, x	; 9d d8 05
B19_1800:		rts				; 60 


B19_1801:		dec $05d8, x	; de d8 05
B19_1804:		rts				; 60 


B19_1805:		jsr $b885		; 20 85 b8
B19_1808:		lda $05d8, x	; bd d8 05
B19_180b:		bne B19_1801 ; d0 f4

B19_180d:		lda $0565, x	; bd 65 05
B19_1810:		beq B19_1828 ; f0 16

B19_1812:		lda $0438, x	; bd 38 04
B19_1815:		sec				; 38 
B19_1816:		sbc #$10		; e9 10
B19_1818:		sta $0438, x	; 9d 38 04
B19_181b:		and #$f0		; 29 f0
B19_181d:		cmp $0645, x	; dd 45 06
B19_1820:		beq B19_17fb ; f0 d9

B19_1822:		bcc B19_183e ; 90 1a

B19_1824:		lda #$00		; a9 00
B19_1826:		beq B19_17fd ; f0 d5

B19_1828:		lda $0438, x	; bd 38 04
B19_182b:		clc				; 18 
B19_182c:		adc #$10		; 69 10
B19_182e:		sta $0438, x	; 9d 38 04
B19_1831:		and #$f0		; 29 f0
B19_1833:		cmp $0645, x	; dd 45 06
B19_1836:		beq B19_17fb ; f0 c3

B19_1838:		bcs B19_183e ; b0 04

B19_183a:		lda #$00		; a9 00
B19_183c:		beq B19_17fd ; f0 bf

B19_183e:		lda $061d, x	; bd 1d 06
B19_1841:		sta $0438, x	; 9d 38 04
B19_1844:		inc $05c1, x	; fe c1 05
B19_1847:		lda $05c1, x	; bd c1 05
B19_184a:		cmp #$04		; c9 04
B19_184c:		bne B19_17fb ; d0 ad

B19_184e:		lda #$00		; a9 00
B19_1850:		sta $05c1, x	; 9d c1 05
B19_1853:		lda $061d, x	; bd 1d 06
B19_1856:		and #$f0		; 29 f0
B19_1858:		cmp $0645, x	; dd 45 06
B19_185b:		bne B19_186e ; d0 11

B19_185d:		lda #$00		; a9 00
B19_185f:		sta $0606, x	; 9d 06 06
B19_1862:		inc $0633, x	; fe 33 06
B19_1865:		lda $0633, x	; bd 33 06
B19_1868:		and #$07		; 29 07
B19_186a:		sta $0633, x	; 9d 33 06
B19_186d:		rts				; 60 


B19_186e:		lda #$10		; a9 10
B19_1870:		sta $00			; 85 00
B19_1872:		lda $0565, x	; bd 65 05
B19_1875:		beq B19_187b ; f0 04

B19_1877:		lda #$f0		; a9 f0
B19_1879:		sta $00			; 85 00
B19_187b:		lda $061d, x	; bd 1d 06
B19_187e:		clc				; 18 
B19_187f:		adc $00			; 65 00
B19_1881:		sta $061d, x	; 9d 1d 06
B19_1884:		rts				; 60 


B19_1885:		ldy #$00		; a0 00
B19_1887:		lda $0438		; ad 38 04
B19_188a:		cmp $0438, x	; dd 38 04
B19_188d:		bcs B19_1890 ; b0 01

B19_188f:		iny				; c8 
B19_1890:		tya				; 98 
B19_1891:		sta $04a8, x	; 9d a8 04
B19_1894:		rts				; 60 


B19_1895:	.db $f4
B19_1896:		inc $f8, x		; f6 f8
B19_1898:	.db $fa
B19_1899:	.db $fc
B19_189a:		inc $0804, x	; fe 04 08
B19_189d:	.db $0c
B19_189e:	.db $14
B19_189f:		clc				; 18 
B19_18a0:	.db $1c
B19_18a1:	.db $80
B19_18a2:		bmi B19_1824 ; 30 80

B19_18a4:		;removed
	.db $d0 $a0

B19_18a6:		;removed
	.db $50 $a0

B19_18a8:		;removed
	.db $d0 $a5

B19_18aa:		and $03d0, x	; 3d d0 03
B19_18ad:		jmp $873a		; 4c 3a 87


B19_18b0:		lda #$00		; a9 00
B19_18b2:		sta $0657, x	; 9d 57 06
B19_18b5:		jsr func_1f_1ec8		; 20 c8 fe
B19_18b8:		lda $05ef, x	; bd ef 05
B19_18bb:		and #$7f		; 29 7f
B19_18bd:		bne B19_1908 ; d0 49

B19_18bf:		lda $0606, x	; bd 06 06
B19_18c2:		beq B19_18cf ; f0 0b

B19_18c4:		lda $0438		; ad 38 04
B19_18c7:		sta $0438, x	; 9d 38 04
B19_18ca:		lda #$d3		; a9 d3
B19_18cc:		jmp $864f		; 4c 4f 86


B19_18cf:		lda $0438		; ad 38 04
B19_18d2:		sec				; 38 
B19_18d3:		sbc $0438, x	; fd 38 04
B19_18d6:		bcs B19_18ee ; b0 16

B19_18d8:		eor #$ff		; 49 ff
B19_18da:		clc				; 18 
B19_18db:		adc #$01		; 69 01
B19_18dd:		lsr a			; 4a
B19_18de:		sta $00			; 85 00
B19_18e0:		lda $061d, x	; bd 1d 06
B19_18e3:		bne B19_18f6 ; d0 11

B19_18e5:		lda $0438		; ad 38 04
B19_18e8:		sec				; 38 
B19_18e9:		sbc $00			; e5 00
B19_18eb:		jmp $b8fc		; 4c fc b8


B19_18ee:		lsr a			; 4a
B19_18ef:		sta $00			; 85 00
B19_18f1:		lda $061d, x	; bd 1d 06
B19_18f4:		bne B19_18e5 ; d0 ef

B19_18f6:		lda $0438		; ad 38 04
B19_18f9:		clc				; 18 
B19_18fa:		adc $00			; 65 00
B19_18fc:		and #$f0		; 29 f0
B19_18fe:		ora #$08		; 09 08
B19_1900:		sta $0438, x	; 9d 38 04
B19_1903:		lda #$d4		; a9 d4
B19_1905:		jmp $864f		; 4c 4f 86


B19_1908:		lda $80			; a5 80
B19_190a:		bne B19_1959 ; d0 4d

B19_190c:		lda $05c1, x	; bd c1 05
B19_190f:		cmp #$04		; c9 04
B19_1911:		bcc B19_1959 ; 90 46

B19_1913:		lda $0438		; ad 38 04
B19_1916:		sec				; 38 
B19_1917:		sbc $0438, x	; fd 38 04
B19_191a:		bcs B19_1921 ; b0 05

B19_191c:		eor #$ff		; 49 ff
B19_191e:		clc				; 18 
B19_191f:		adc #$01		; 69 01
B19_1921:		sta $00			; 85 00
B19_1923:		lda $0606, x	; bd 06 06
B19_1926:		beq B19_1930 ; f0 08

B19_1928:		lda $00			; a5 00
B19_192a:		cmp #$10		; c9 10
B19_192c:		bcs B19_1959 ; b0 2b

B19_192e:		bcc B19_1936 ; 90 06

B19_1930:		lda $00			; a5 00
B19_1932:		cmp #$08		; c9 08
B19_1934:		bcs B19_1959 ; b0 23

B19_1936:		lda $0400, x	; bd 00 04
B19_1939:		sec				; 38 
B19_193a:		sbc #$98		; e9 98
B19_193c:		lsr a			; 4a
B19_193d:		tay				; a8 
B19_193e:		lda $b95a, y	; b9 5a b9
B19_1941:		sta $00			; 85 00
B19_1943:		lda $041c, x	; bd 1c 04
B19_1946:		sec				; 38 
B19_1947:		sbc $041c		; ed1c 04
B19_194a:		bcs B19_1951 ; b0 05

B19_194c:		eor #$ff		; 49 ff
B19_194e:		clc				; 18 
B19_194f:		adc #$01		; 69 01
B19_1951:		cmp $00			; c5 00
B19_1953:		bcs B19_1959 ; b0 04

B19_1955:		lda #$30		; a9 30
B19_1957:		sta $81			; 85 81
B19_1959:		rts				; 60 


B19_195a:		php				; 08 
B19_195b:		clc				; 18 
B19_195c:		sec				; 38 
B19_195d:		cli				; 58 
B19_195e:		bcc B19_1968 ; 90 08

B19_1960:		bpl B19_198a ; 10 28

B19_1962:		rol $06bd		; 2e bd 06
B19_1965:		asl $f0			; 06 f0
B19_1967:	.db $03
B19_1968:		jmp $babe		; 4c be ba


B19_196b:		lda $07f3		; ad f3 07
B19_196e:		and #$80		; 29 80
B19_1970:		bne B19_1975 ; d0 03

B19_1972:		jmp $ba13		; 4c 13 ba


B19_1975:		lda $0645, x	; bd 45 06
B19_1978:		bne B19_19ea ; d0 70

B19_197a:		sta $0669, x	; 9d 69 06
B19_197d:		sta $0657, x	; 9d 57 06
B19_1980:		ldy #$32		; a0 32
B19_1982:		sty $4b			; 84 4b
B19_1984:		iny				; c8 
B19_1985:		sty $4c			; 84 4c
B19_1987:		iny				; c8 
B19_1988:		sty $48			; 84 48
B19_198a:		iny				; c8 
B19_198b:		sty $49			; 84 49
B19_198d:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B19_1990:		jsr chrSwitchAllMirrored		; 20 5d e3
B19_1993:		lda #$f0		; a9 f0
B19_1995:		jsr $bbcb		; 20 cb bb
B19_1998:		lda #$05		; a9 05
B19_199a:		sta $17			; 85 17
B19_199c:		lda #$0d		; a9 0d
B19_199e:		jsr $8766		; 20 66 87
B19_19a1:		txa				; 8a 
B19_19a2:		sta $05d8, y	; 99 d8 05
B19_19a5:		lda $17			; a5 17
B19_19a7:		sta $0606, y	; 99 06 06
B19_19aa:		lda #$f0		; a9 f0
B19_19ac:		jsr $bbd4		; 20 d4 bb
B19_19af:		lda #$80		; a9 80
B19_19b1:		sta $05ef, y	; 99 ef 05
B19_19b4:		lda $17			; a5 17
B19_19b6:		sta $0633, y	; 99 33 06
B19_19b9:		lda #$01		; a9 01
B19_19bb:		sta $061d, y	; 99 1d 06
B19_19be:		lda #$20		; a9 20
B19_19c0:		sta $0470, y	; 99 70 04
B19_19c3:		lda #$0d		; a9 0d
B19_19c5:		sta $067b, y	; 99 7b 06
B19_19c8:		dec $17			; c6 17
B19_19ca:		bne B19_199c ; d0 d0

B19_19cc:		lda #$00		; a9 00
B19_19ce:		sta $0633, x	; 9d 33 06
B19_19d1:		lda #$01		; a9 01
B19_19d3:		sta $061d, x	; 9d 1d 06
B19_19d6:		inc $0645, x	; fe 45 06
B19_19d9:		lda #$60		; a9 60
B19_19db:		sta $0470, x	; 9d 70 04
B19_19de:		lda #$40		; a9 40
B19_19e0:		sta $3d			; 85 3d
B19_19e2:		sta $067b, x	; 9d 7b 06
B19_19e5:		lda #$60		; a9 60
B19_19e7:		jmp playSound		; 4c 5f e2


B19_19ea:		ldy #$d2		; a0 d2
B19_19ec:		jsr $bbdd		; 20 dd bb
B19_19ef:		jsr $bbed		; 20 ed bb
B19_19f2:		bne B19_1a12 ; d0 1e

B19_19f4:		lda #$d2		; a9 d2
B19_19f6:		jsr $bbcb		; 20 cb bb
B19_19f9:		lda $07f3		; ad f3 07
B19_19fc:		and #$7f		; 29 7f
B19_19fe:		sta $07f3		; 8d f3 07
B19_1a01:		lda #$30		; a9 30
B19_1a03:		sta $0658, x	; 9d 58 06
B19_1a06:		sta $0659, x	; 9d 59 06
B19_1a09:		sta $065a, x	; 9d 5a 06
B19_1a0c:		sta $065b, x	; 9d 5b 06
B19_1a0f:		sta $065c, x	; 9d 5c 06
B19_1a12:		rts				; 60 


B19_1a13:		lda #$60		; a9 60
B19_1a15:		sta $0470, x	; 9d 70 04
B19_1a18:		ldy $3d			; a4 3d
B19_1a1a:		bne B19_1a39 ; d0 1d

B19_1a1c:		iny				; c8 
B19_1a1d:		sty $07f3		; 8c f3 07
B19_1a20:		lda $05ef, x	; bd ef 05
B19_1a23:		and #$7f		; 29 7f
B19_1a25:		cmp #$5d		; c9 5d
B19_1a27:		beq B19_1a36 ; f0 0d

B19_1a29:		lda #$40		; a9 40
B19_1a2b:		jsr $8661		; 20 61 86
B19_1a2e:		lda #$7b		; a9 7b
B19_1a30:		jsr playSound		; 20 5f e2
B19_1a33:		jmp $bc04		; 4c 04 bc


B19_1a36:		jmp $bc2c		; 4c 2c bc


B19_1a39:		lda #$00		; a9 00
B19_1a3b:		sta $04f2, x	; 9d f2 04
B19_1a3e:		lda #$60		; a9 60
B19_1a40:		sta $0509, x	; 9d 09 05
B19_1a43:		lda $0645, x	; bd 45 06
B19_1a46:		and #$0f		; 29 0f
B19_1a48:		tay				; a8 
B19_1a49:		lda $bd1b, y	; b9 1b bd
B19_1a4c:		cmp #$ff		; c9 ff
B19_1a4e:		bne B19_1a53 ; d0 03

B19_1a50:		lda $0438		; ad 38 04
B19_1a53:		sec				; 38 
B19_1a54:		sbc $0438, x	; fd 38 04
B19_1a57:		sta $00			; 85 00
B19_1a59:		bcs B19_1a6c ; b0 11

B19_1a5b:		eor #$ff		; 49 ff
B19_1a5d:		clc				; 18 
B19_1a5e:		adc #$01		; 69 01
B19_1a60:		sta $00			; 85 00
B19_1a62:		lda #$ff		; a9 ff
B19_1a64:		sta $04f2, x	; 9d f2 04
B19_1a67:		lda #$a0		; a9 a0
B19_1a69:		sta $0509, x	; 9d 09 05
B19_1a6c:		lda $00			; a5 00
B19_1a6e:		cmp #$04		; c9 04
B19_1a70:		bcs B19_1a7d ; b0 0b

B19_1a72:		inc $0645, x	; fe 45 06
B19_1a75:		lda $0645, x	; bd 45 06
B19_1a78:		and #$f3		; 29 f3
B19_1a7a:		sta $0645, x	; 9d 45 06
B19_1a7d:		jsr $bbed		; 20 ed bb
B19_1a80:		bne B19_1aab ; d0 29

B19_1a82:		lda $0645, x	; bd 45 06
B19_1a85:		clc				; 18 
B19_1a86:		adc #$10		; 69 10
B19_1a88:		and #$3f		; 29 3f
B19_1a8a:		sta $0645, x	; 9d 45 06
B19_1a8d:		and #$f0		; 29 f0
B19_1a8f:		lsr a			; 4a
B19_1a90:		lsr a			; 4a
B19_1a91:		lsr a			; 4a
B19_1a92:		tay				; a8 
B19_1a93:		lda $bd1f, y	; b9 1f bd
B19_1a96:		sta $0633, x	; 9d 33 06
B19_1a99:		lda $bd20, y	; b9 20 bd
B19_1a9c:		sta $061d, x	; 9d 1d 06
B19_1a9f:		lda $bd27, y	; b9 27 bd
B19_1aa2:		sta $0537, x	; 9d 37 05
B19_1aa5:		lda $bd28, y	; b9 28 bd
B19_1aa8:		sta $0520, x	; 9d 20 05
B19_1aab:		lda $041c, x	; bd 1c 04
B19_1aae:		cmp #$30		; c9 30
B19_1ab0:		bcs B19_1ab4 ; b0 02

B19_1ab2:		lda #$30		; a9 30
B19_1ab4:		cmp #$80		; c9 80
B19_1ab6:		bcc B19_1aba ; 90 02

B19_1ab8:		lda #$7f		; a9 7f
B19_1aba:		sta $041c, x	; 9d 1c 04
B19_1abd:		rts				; 60 


B19_1abe:		lda $07f3		; ad f3 07
B19_1ac1:		and #$80		; 29 80
B19_1ac3:		beq B19_1ad7 ; f0 12

B19_1ac5:		lda #$00		; a9 00
B19_1ac7:		sta $0645, x	; 9d 45 06
B19_1aca:		jsr $bc86		; 20 86 bc
B19_1acd:		jsr $bbed		; 20 ed bb
B19_1ad0:		jsr $bcab		; 20 ab bc
B19_1ad3:		tay				; a8 
B19_1ad4:		jmp $bbdd		; 4c dd bb


B19_1ad7:		lda #$20		; a9 20
B19_1ad9:		sta $0470, x	; 9d 70 04
B19_1adc:		ldy $07f3		; ac f3 07
B19_1adf:		dey				; 88 
B19_1ae0:		bne B19_1b0e ; d0 2c

B19_1ae2:		lda #$60		; a9 60
B19_1ae4:		sta $0470, x	; 9d 70 04
B19_1ae7:		lda $05ef, x	; bd ef 05
B19_1aea:		and #$7f		; 29 7f
B19_1aec:		cmp #$5d		; c9 5d
B19_1aee:		beq B19_1af3 ; f0 03

B19_1af0:		jmp $bc09		; 4c 09 bc


B19_1af3:		jsr $bc2c		; 20 2c bc
B19_1af6:		bcc B19_1abd ; 90 c5

B19_1af8:		jmp $873a		; 4c 3a 87


B19_1afb:		lda $0669, x	; bd 69 06
B19_1afe:		and #$f0		; 29 f0
B19_1b00:		beq B19_1b23 ; f0 21

B19_1b02:		lda #$28		; a9 28
B19_1b04:		jsr playSound		; 20 5f e2
B19_1b07:		jmp $bb23		; 4c 23 bb


B19_1b0a:		lda #$7a		; a9 7a
B19_1b0c:		bne B19_1b04 ; d0 f6

B19_1b0e:		jsr $bc86		; 20 86 bc
B19_1b11:		lda $067b, x	; bd 7b 06
B19_1b14:		beq B19_1afb ; f0 e5

B19_1b16:		lda #$04		; a9 04
B19_1b18:		jsr $8905		; 20 05 89
B19_1b1b:		lda $067b, x	; bd 7b 06
B19_1b1e:		beq B19_1b0a ; f0 ea

B19_1b20:		jsr $bbac		; 20 ac bb
B19_1b23:		lda #$00		; a9 00
B19_1b25:		sta $0669, x	; 9d 69 06
B19_1b28:		lda $067b, x	; bd 7b 06
B19_1b2b:		bne B19_1b37 ; d0 0a

B19_1b2d:		jsr $bcab		; 20 ab bc
B19_1b30:		clc				; 18 
B19_1b31:		adc #$04		; 69 04
B19_1b33:		sta $0400, x	; 9d 00 04
B19_1b36:		rts				; 60 


B19_1b37:		ldy $0645, x	; bc 45 06
B19_1b3a:		bne B19_1b48 ; d0 0c

B19_1b3c:		jsr $bcab		; 20 ab bc
B19_1b3f:		sta $0400, x	; 9d 00 04
B19_1b42:		inc $0645, x	; fe 45 06
B19_1b45:		jmp $bb98		; 4c 98 bb


B19_1b48:		dey				; 88 
B19_1b49:		bne B19_1b62 ; d0 17

B19_1b4b:		jsr $bbed		; 20 ed bb
B19_1b4e:		bne B19_1b61 ; d0 11

B19_1b50:		lda #$08		; a9 08
B19_1b52:		sta $0633, x	; 9d 33 06
B19_1b55:		jsr $bcab		; 20 ab bc
B19_1b58:		clc				; 18 
B19_1b59:		adc #$02		; 69 02
B19_1b5b:		sta $0400, x	; 9d 00 04
B19_1b5e:		inc $0645, x	; fe 45 06
B19_1b61:		rts				; 60 


B19_1b62:		dey				; 88 
B19_1b63:		bne B19_1b87 ; d0 22

B19_1b65:		dec $0633, x	; de 33 06
B19_1b68:		bne B19_1b61 ; d0 f7

B19_1b6a:		lda #$40		; a9 40
B19_1b6c:		sta $0633, x	; 9d 33 06
B19_1b6f:		lda #$29		; a9 29
B19_1b71:		jsr $8766		; 20 66 87
B19_1b74:		lda #$df		; a9 df
B19_1b76:		sta $05ef, y	; 99 ef 05
B19_1b79:		lda #$00		; a9 00
B19_1b7b:		sta $05c1, y	; 99 c1 05
B19_1b7e:		lda #$60		; a9 60
B19_1b80:		sta $0470, y	; 99 70 04
B19_1b83:		inc $0645, x	; fe 45 06
B19_1b86:		rts				; 60 


B19_1b87:		dec $0633, x	; de 33 06
B19_1b8a:		bne B19_1b61 ; d0 d5

B19_1b8c:		lda #$00		; a9 00
B19_1b8e:		sta $0645, x	; 9d 45 06
B19_1b91:		jsr $bcab		; 20 ab bc
B19_1b94:		sta $0400, x	; 9d 00 04
B19_1b97:		rts				; 60 


B19_1b98:		lda $0606, x	; bd 06 06
B19_1b9b:		and #$03		; 29 03
B19_1b9d:		asl a			; 0a
B19_1b9e:		tay				; a8 
B19_1b9f:		lda $bd53, y	; b9 53 bd
B19_1ba2:		sta $0633, x	; 9d 33 06
B19_1ba5:		lda $bd54, y	; b9 54 bd
B19_1ba8:		sta $061d, x	; 9d 1d 06
B19_1bab:		rts				; 60 


B19_1bac:		lda $0669, x	; bd 69 06
B19_1baf:		beq B19_1bca ; f0 19

B19_1bb1:		ldy #$01		; a0 01
B19_1bb3:		lda $054e, y	; b9 4e 05
B19_1bb6:		cmp #$0d		; c9 0d
B19_1bb8:		bne B19_1bc5 ; d0 0b

B19_1bba:		lda #$00		; a9 00
B19_1bbc:		sta $0669, y	; 99 69 06
B19_1bbf:		lda $068d, x	; bd 8d 06
B19_1bc2:		sta $068d, y	; 99 8d 06
B19_1bc5:		iny				; c8 
B19_1bc6:		cpy #$0d		; c0 0d
B19_1bc8:		bne B19_1bb3 ; d0 e9

B19_1bca:		rts				; 60 


B19_1bcb:		sta $0400, x	; 9d 00 04
B19_1bce:		lda #$10		; a9 10
B19_1bd0:		sta $048c, x	; 9d 8c 04
B19_1bd3:		rts				; 60 


B19_1bd4:		sta $0400, y	; 99 00 04
B19_1bd7:		lda #$10		; a9 10
B19_1bd9:		sta $048c, y	; 99 8c 04
B19_1bdc:		rts				; 60 


B19_1bdd:		lda $0633, x	; bd 33 06
B19_1be0:		and #$03		; 29 03
B19_1be2:		bne B19_1be7 ; d0 03

B19_1be4:		tya				; 98 
B19_1be5:		bne B19_1be9 ; d0 02

B19_1be7:		lda #$f0		; a9 f0
B19_1be9:		sta $0400, x	; 9d 00 04
B19_1bec:		rts				; 60 


B19_1bed:		lda $061d, x	; bd 1d 06
B19_1bf0:		ora $0633, x	; 1d 33 06
B19_1bf3:		beq B19_1c03 ; f0 0e

B19_1bf5:		dec $0633, x	; de 33 06
B19_1bf8:		ldy $0633, x	; bc 33 06
B19_1bfb:		iny				; c8 
B19_1bfc:		bne B19_1c01 ; d0 03

B19_1bfe:		dec $061d, x	; de 1d 06
B19_1c01:		lda #$01		; a9 01
B19_1c03:		rts				; 60 


B19_1c04:		lda #$3f		; a9 3f
B19_1c06:		sta $07ed		; 8d ed 07
B19_1c09:		lda #$00		; a9 00
B19_1c0b:		sta $0669, x	; 9d 69 06
B19_1c0e:		sta $0657, x	; 9d 57 06
B19_1c11:		lda #$60		; a9 60
B19_1c13:		sta $0470, x	; 9d 70 04
B19_1c16:		lda $0606, x	; bd 06 06
B19_1c19:		asl a			; 0a
B19_1c1a:		tay				; a8 
B19_1c1b:		lda $bd2f, y	; b9 2f bd
B19_1c1e:		sta $0509, x	; 9d 09 05
B19_1c21:		lda $bd30, y	; b9 30 bd
B19_1c24:		sta $04f2, x	; 9d f2 04
B19_1c27:		lda #$dd		; a9 dd
B19_1c29:		jmp $864f		; 4c 4f 86


B19_1c2c:		lda #$00		; a9 00
B19_1c2e:		sta $0669, x	; 9d 69 06
B19_1c31:		sta $0657, x	; 9d 57 06
B19_1c34:		lda $05c1, x	; bd c1 05
B19_1c37:		cmp #$00		; c9 00
B19_1c39:		bne B19_1c53 ; d0 18

B19_1c3b:		lda #$00		; a9 00
B19_1c3d:		ldy #$08		; a0 08
B19_1c3f:		jsr $fc1e		; 20 1e fc
B19_1c42:		beq B19_1c53 ; f0 0f

B19_1c44:		inc $05c1, x	; fe c1 05
B19_1c47:		lda #$0e		; a9 0e
B19_1c49:		ldy #$08		; a0 08
B19_1c4b:		jsr $ef5c		; 20 5c ef
B19_1c4e:		lda #$40		; a9 40
B19_1c50:		sta $0470, x	; 9d 70 04
B19_1c53:		lda $05c1, x	; bd c1 05
B19_1c56:		cmp #$06		; c9 06
B19_1c58:		bne B19_1c84 ; d0 2a

B19_1c5a:		ldy $0606, x	; bc 06 06
B19_1c5d:		lda $bd13, y	; b9 13 bd
B19_1c60:		eor #$ff		; 49 ff
B19_1c62:		and $07ed		; 2d ed 07
B19_1c65:		sta $07ed		; 8d ed 07
B19_1c68:		bne B19_1c82 ; d0 18

B19_1c6a:		lda #$61		; a9 61
B19_1c6c:		jsr playSound		; 20 5f e2
B19_1c6f:		inc $07ec		; ee ec 07
B19_1c72:		lda #$80		; a9 80
B19_1c74:		sta $07f3		; 8d f3 07
B19_1c77:		lda #$00		; a9 00
B19_1c79:		sta $07ee		; 8d ee 07
B19_1c7c:		sta $07ef		; 8d ef 07
B19_1c7f:		jsr $bf6b		; 20 6b bf
B19_1c82:		sec				; 38 
B19_1c83:		rts				; 60 


B19_1c84:		clc				; 18 
B19_1c85:		rts				; 60 


B19_1c86:		lda $0606, x	; bd 06 06
B19_1c89:		asl a			; 0a
B19_1c8a:		tay				; a8 
B19_1c8b:		lda $bd3b, y	; b9 3b bd
B19_1c8e:		sta $00			; 85 00
B19_1c90:		lda $bd3c, y	; b9 3c bd
B19_1c93:		sta $01			; 85 01
B19_1c95:		ldy $05d8, x	; bc d8 05
B19_1c98:		lda $0438, y	; b9 38 04
B19_1c9b:		clc				; 18 
B19_1c9c:		adc $00			; 65 00
B19_1c9e:		sta $0438, x	; 9d 38 04
B19_1ca1:		lda $041c, y	; b9 1c 04
B19_1ca4:		clc				; 18 
B19_1ca5:		adc $01			; 65 01
B19_1ca7:		sta $041c, x	; 9d 1c 04
B19_1caa:		rts				; 60 


B19_1cab:		ldy $0606, x	; bc 06 06
B19_1cae:		lda $bd4d, y	; b9 4d bd
B19_1cb1:		sta $04a8, x	; 9d a8 04
B19_1cb4:		lda $bd47, y	; b9 47 bd
B19_1cb7:		rts				; 60 


B19_1cb8:		ldy $07f3		; ac f3 07
B19_1cbb:		dey				; 88 
B19_1cbc:		bne B19_1cc5 ; d0 07

B19_1cbe:		lda $07ec		; ad ec 07
B19_1cc1:		cmp #$02		; c9 02
B19_1cc3:		beq B19_1ced ; f0 28

B19_1cc5:		lda #$30		; a9 30
B19_1cc7:		sta $0657, x	; 9d 57 06
B19_1cca:		ldy $07ec		; ac ec 07
B19_1ccd:		dey				; 88 
B19_1cce:		beq B19_1cf0 ; f0 20

B19_1cd0:		lda $041c, x	; bd 1c 04
B19_1cd3:		jsr $bce1		; 20 e1 bc
B19_1cd6:		bcs B19_1ced ; b0 15

B19_1cd8:		lda $0438, x	; bd 38 04
B19_1cdb:		jsr $bce1		; 20 e1 bc
B19_1cde:		bcs B19_1ced ; b0 0d

B19_1ce0:		rts				; 60 


B19_1ce1:		and #$f8		; 29 f8
B19_1ce3:		beq B19_1ceb ; f0 06

B19_1ce5:		cmp #$f8		; c9 f8
B19_1ce7:		beq B19_1ceb ; f0 02

B19_1ce9:		clc				; 18 
B19_1cea:		rts				; 60 


B19_1ceb:		sec				; 38 
B19_1cec:		rts				; 60 


B19_1ced:		jmp $873a		; 4c 3a 87


B19_1cf0:		lda $05c1, x	; bd c1 05
B19_1cf3:		cmp #$05		; c9 05
B19_1cf5:		bne B19_1d12 ; d0 1b

B19_1cf7:		lda #$00		; a9 00
B19_1cf9:		ldy #$08		; a0 08
B19_1cfb:		jsr $fc1e		; 20 1e fc
B19_1cfe:		beq B19_1d12 ; f0 12

B19_1d00:		lda #$0a		; a9 0a
B19_1d02:		jsr playSound		; 20 5f e2
B19_1d05:		lda $041c, x	; bd 1c 04
B19_1d08:		and #$f0		; 29 f0
B19_1d0a:		ora #$08		; 09 08
B19_1d0c:		sta $041c, x	; 9d 1c 04
B19_1d0f:		inc $05c1, x	; fe c1 05
B19_1d12:		rts				; 60 


B19_1d13:		ora ($02, x)	; 01 02
B19_1d15:	.db $04
B19_1d16:		php				; 08 
B19_1d17:		;removed
	.db $10 $20

B19_1d19:		rti				; 40 


B19_1d1a:	.db $80
B19_1d1b:	.db $80
B19_1d1c:		bne B19_1d4e ; d0 30

B19_1d1e:	.db $ff
B19_1d1f:	.db $80
B19_1d20:		.db $00				; 00
B19_1d21:		.db $00				; 00
B19_1d22:		ora ($00, x)	; 01 00
B19_1d24:		ora ($c0, x)	; 01 c0
B19_1d26:		.db $00				; 00
B19_1d27:		cpx #$ff		; e0 ff
B19_1d29:		jsr $c000		; 20 00 c0
B19_1d2c:	.db $ff
B19_1d2d:		rti				; 40 


B19_1d2e:		.db $00				; 00
B19_1d2f:		.db $00				; 00
B19_1d30:	.db $ff
B19_1d31:	.db $80
B19_1d32:		.db $00				; 00
B19_1d33:	.db $80
B19_1d34:	.db $ff
B19_1d35:		.db $00				; 00
B19_1d36:	.db $ff
B19_1d37:		jsr $e001		; 20 01 e0
B19_1d3a:	.db $fe $00 $00
B19_1d3d:		beq B19_1d47 ; f0 08

B19_1d3f:		sed				; f8 
B19_1d40:		plp				; 28 
B19_1d41:		.db $00				; 00
B19_1d42:		clc				; 18 
B19_1d43:		bpl B19_1d4d ; 10 08

B19_1d45:		php				; 08 
B19_1d46:		plp				; 28 
B19_1d47:	.db $d2
B19_1d48:		cpy #$c6		; c0 c6
B19_1d4a:		cpy $c6c0		; cc c0 c6
B19_1d4d:		.db $00				; 00
B19_1d4e:		ora ($01, x)	; 01 01
B19_1d50:		.db $00				; 00
B19_1d51:		.db $00				; 00
B19_1d52:		.db $00				; 00
B19_1d53:		rts				; 60 


B19_1d54:		.db $00				; 00
B19_1d55:		jsr $4000		; 20 00 40
B19_1d58:		.db $00				; 00
B19_1d59:		bvs B19_1d5b ; 70 00

B19_1d5b:	.db $80
B19_1d5c:		.db $00				; 00
B19_1d5d:		bmi B19_1d5f ; 30 00

B19_1d5f:		lda $07f3		; ad f3 07
B19_1d62:		and #$80		; 29 80
B19_1d64:		bne B19_1d69 ; d0 03

B19_1d66:		jmp $be67		; 4c 67 be


B19_1d69:		lda #$88		; a9 88
B19_1d6b:		sta $0470, x	; 9d 70 04
B19_1d6e:		lda $07ed		; ad ed 07
B19_1d71:		cmp #$0e		; c9 0e
B19_1d73:		bcs B19_1dde ; b0 69

B19_1d75:		lda #$02		; a9 02
B19_1d77:		sta $04			; 85 04
B19_1d79:		stx $16			; 86 16
B19_1d7b:		lda #$00		; a9 00
B19_1d7d:		sta $00			; 85 00
B19_1d7f:		sta $62			; 85 62
B19_1d81:		lda $07ed		; ad ed 07
B19_1d84:		ldy #$05		; a0 05
B19_1d86:		asl a			; 0a
B19_1d87:		rol $62			; 26 62
B19_1d89:		dey				; 88 
B19_1d8a:		bne B19_1d86 ; d0 fa

B19_1d8c:		clc				; 18 
B19_1d8d:		adc #$4a		; 69 4a
B19_1d8f:		sta $61			; 85 61
B19_1d91:		lda $62			; a5 62
B19_1d93:		adc #$21		; 69 21
B19_1d95:		sta $62			; 85 62
B19_1d97:		jsr $e8b5		; 20 b5 e8
B19_1d9a:		ldy $07ee		; ac ee 07
B19_1d9d:		lda $bf6e, y	; b9 6e bf
B19_1da0:		cmp #$c0		; c9 c0
B19_1da2:		bcc B19_1db3 ; 90 0f

B19_1da4:		and #$0f		; 29 0f
B19_1da6:		sta $03			; 85 03
B19_1da8:		lda #$00		; a9 00
B19_1daa:		jsr $bf66		; 20 66 bf
B19_1dad:		dec $03			; c6 03
B19_1daf:		bne B19_1daa ; d0 f9

B19_1db1:		beq B19_1db6 ; f0 03

B19_1db3:		jsr $bf66		; 20 66 bf
B19_1db6:		iny				; c8 
B19_1db7:		lda $00			; a5 00
B19_1db9:		cmp #$0c		; c9 0c
B19_1dbb:		bne B19_1d9d ; d0 e0

B19_1dbd:		sty $07ee		; 8c ee 07
B19_1dc0:		inc $07ed		; ee ed 07
B19_1dc3:		jsr $ed12		; 20 12 ed
B19_1dc6:		dec $04			; c6 04
B19_1dc8:		bne B19_1d7b ; d0 b1

B19_1dca:		lda $07ed		; ad ed 07
B19_1dcd:		cmp #$0e		; c9 0e
B19_1dcf:		bcc B19_1ddb ; 90 0a

B19_1dd1:		lda #$00		; a9 00
B19_1dd3:		sta $07ee		; 8d ee 07
B19_1dd6:		lda #$08		; a9 08
B19_1dd8:		sta $07ef		; 8d ef 07
B19_1ddb:		ldx $16			; a6 16
B19_1ddd:		rts				; 60 


B19_1dde:		dec $07ef		; ce ef 07
B19_1de1:		bne B19_1dfb ; d0 18

B19_1de3:		lda $07ee		; ad ee 07
B19_1de6:		jsr $bf6b		; 20 6b bf
B19_1de9:		lda $07ee		; ad ee 07
B19_1dec:		clc				; 18 
B19_1ded:		adc #$08		; 69 08
B19_1def:		cmp #$20		; c9 20
B19_1df1:		bcs B19_1dfc ; b0 09

B19_1df3:		sta $07ee		; 8d ee 07
B19_1df6:		lda #$08		; a9 08
B19_1df8:		sta $07ef		; 8d ef 07
B19_1dfb:		rts				; 60 


B19_1dfc:		lda #$31		; a9 31
B19_1dfe:		sta $49			; 85 49
B19_1e00:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B19_1e03:		lda #$00		; a9 00
B19_1e05:		sta $07f3		; 8d f3 07
B19_1e08:		sta $07f1		; 8d f1 07
B19_1e0b:		sta $07f0		; 8d f0 07
B19_1e0e:		sta $07ee		; 8d ee 07
B19_1e11:		sta $07ed		; 8d ed 07
B19_1e14:		sta $0606, x	; 9d 06 06
B19_1e17:		lda #$88		; a9 88
B19_1e19:		sta $0470, x	; 9d 70 04
B19_1e1c:		lda #$80		; a9 80
B19_1e1e:		sta $0438, x	; 9d 38 04
B19_1e21:		lda #$60		; a9 60
B19_1e23:		sta $041c, x	; 9d 1c 04
B19_1e26:		lda #$40		; a9 40
B19_1e28:		sta $3d			; 85 3d
B19_1e2a:		sta $067b, x	; 9d 7b 06
B19_1e2d:		lda #$0d		; a9 0d
B19_1e2f:		jsr $8766		; 20 66 87
B19_1e32:		lda #$01		; a9 01
B19_1e34:		sta $0606, y	; 99 06 06
B19_1e37:		sta $17			; 85 17
B19_1e39:		lda #$88		; a9 88
B19_1e3b:		sta $0470, y	; 99 70 04
B19_1e3e:		lda #$8a		; a9 8a
B19_1e40:		jsr $8766		; 20 66 87
B19_1e43:		lda #$80		; a9 80
B19_1e45:		sta $05ef, y	; 99 ef 05
B19_1e48:		lda #$00		; a9 00
B19_1e4a:		sta $05c1, y	; 99 c1 05
B19_1e4d:		sta $0645, y	; 99 45 06
B19_1e50:		lda $17			; a5 17
B19_1e52:		beq B19_1e56 ; f0 02

B19_1e54:		lda #$04		; a9 04
B19_1e56:		sta $0633, y	; 99 33 06
B19_1e59:		lda #$60		; a9 60
B19_1e5b:		sta $0470, y	; 99 70 04
B19_1e5e:		dec $17			; c6 17
B19_1e60:		bpl B19_1e3e ; 10 dc

B19_1e62:		rts				; 60 


B19_1e63:		dec $07ef		; ce ef 07
B19_1e66:		rts				; 60 


B19_1e67:		lda $0606, x	; bd 06 06
B19_1e6a:		beq B19_1ed5 ; f0 69

B19_1e6c:		lda #$00		; a9 00
B19_1e6e:		sta $0657, x	; 9d 57 06
B19_1e71:		lda $07f3		; ad f3 07
B19_1e74:		bne B19_1ecc ; d0 56

B19_1e76:		jsr $bbed		; 20 ed bb
B19_1e79:		bne B19_1ecc ; d0 51

B19_1e7b:		lda #$00		; a9 00
B19_1e7d:		sta $04a8, x	; 9d a8 04
B19_1e80:		ldy $07f1		; ac f1 07
B19_1e83:		lda $bf55, y	; b9 55 bf
B19_1e86:		cmp #$01		; c9 01
B19_1e88:		bne B19_1e8d ; d0 03

B19_1e8a:		sta $04a8, x	; 9d a8 04
B19_1e8d:		tay				; a8 
B19_1e8e:		lda $bf5d, y	; b9 5d bf
B19_1e91:		sta $10			; 85 10
B19_1e93:		lda $bf60, y	; b9 60 bf
B19_1e96:		sta $11			; 85 11
B19_1e98:		lda $bf63, y	; b9 63 bf
B19_1e9b:		jsr $bbcb		; 20 cb bb
B19_1e9e:		lda #$e0		; a9 e0
B19_1ea0:		sta $05ef, x	; 9d ef 05
B19_1ea3:		lda #$00		; a9 00
B19_1ea5:		sta $05c1, x	; 9d c1 05
B19_1ea8:		lda $10			; a5 10
B19_1eaa:		sta $0438, x	; 9d 38 04
B19_1ead:		lda $11			; a5 11
B19_1eaf:		sta $041c, x	; 9d 1c 04
B19_1eb2:		inc $07f1		; ee f1 07
B19_1eb5:		lda $07f1		; ad f1 07
B19_1eb8:		and #$07		; 29 07
B19_1eba:		sta $07f1		; 8d f1 07
B19_1ebd:		lda #$c0		; a9 c0
B19_1ebf:		sta $0633, x	; 9d 33 06
B19_1ec2:		lda #$00		; a9 00
B19_1ec4:		sta $061d, x	; 9d 1d 06
B19_1ec7:		lda #$20		; a9 20
B19_1ec9:		sta $0470, x	; 9d 70 04
B19_1ecc:		ldy $07f3		; ac f3 07
B19_1ecf:		dey				; 88 
B19_1ed0:		bne B19_1ef6 ; d0 24

B19_1ed2:		jmp $873a		; 4c 3a 87


B19_1ed5:		ldy $07f3		; ac f3 07
B19_1ed8:		dey				; 88 
B19_1ed9:		bne B19_1f0d ; d0 32

B19_1edb:		dec $07ef		; ce ef 07
B19_1ede:		bne B19_1ef6 ; d0 16

B19_1ee0:		lda $07ee		; ad ee 07
B19_1ee3:		jsr $bf6b		; 20 6b bf
B19_1ee6:		lda $07ee		; ad ee 07
B19_1ee9:		sec				; 38 
B19_1eea:		sbc #$08		; e9 08
B19_1eec:		bcc B19_1ef7 ; 90 09

B19_1eee:		sta $07ee		; 8d ee 07
B19_1ef1:		lda #$08		; a9 08
B19_1ef3:		sta $07ef		; 8d ef 07
B19_1ef6:		rts				; 60 


B19_1ef7:		lda $07f0		; ad f0 07
B19_1efa:		cmp #$02		; c9 02
B19_1efc:		bne B19_1f54 ; d0 56

B19_1efe:		lda #$80		; a9 80
B19_1f00:		jsr $8661		; 20 61 86
B19_1f03:		lda #$02		; a9 02
B19_1f05:		sta $07f3		; 8d f3 07
B19_1f08:		lda #$00		; a9 00
B19_1f0a:		jmp $87f4		; 4c f4 87


B19_1f0d:		lda $061d, x	; bd 1d 06
B19_1f10:		beq B19_1f29 ; f0 17

B19_1f12:		and #$04		; 29 04
B19_1f14:		beq B19_1f1a ; f0 04

B19_1f16:		lda #$28		; a9 28
B19_1f18:		bne B19_1f1c ; d0 02

B19_1f1a:		lda #$20		; a9 20
B19_1f1c:		dec $061d, x	; de 1d 06
B19_1f1f:		bne B19_1f23 ; d0 02

B19_1f21:		lda #$18		; a9 18
B19_1f23:		jsr $bf6b		; 20 6b bf
B19_1f26:		jmp $bf4c		; 4c 4c bf


B19_1f29:		lda #$03		; a9 03
B19_1f2b:		jsr $88e0		; 20 e0 88
B19_1f2e:		lda #$00		; a9 00
B19_1f30:		jsr $87f4		; 20 f4 87
B19_1f33:		lda $07f3		; ad f3 07
B19_1f36:		beq B19_1f42 ; f0 0a

B19_1f38:		lda #$18		; a9 18
B19_1f3a:		sta $07ee		; 8d ee 07
B19_1f3d:		lda #$01		; a9 01
B19_1f3f:		sta $07ef		; 8d ef 07
B19_1f42:		lda $0669, x	; bd 69 06
B19_1f45:		beq B19_1f4c ; f0 05

B19_1f47:		lda #$20		; a9 20
B19_1f49:		sta $061d, x	; 9d 1d 06
B19_1f4c:		lda #$00		; a9 00
B19_1f4e:		sta $0669, x	; 9d 69 06
B19_1f51:		sta $0657, x	; 9d 57 06
B19_1f54:		rts				; 60 


B19_1f55:		.db $00				; 00
B19_1f56:		ora ($02, x)	; 01 02
B19_1f58:		ora ($00, x)	; 01 00
B19_1f5a:	.db $02
B19_1f5b:		ora ($02, x)	; 01 02
B19_1f5d:	.db $80
B19_1f5e:		rts				; 60 


B19_1f5f:		ldy #$60		; a0 60
B19_1f61:		sty $e48c		; 8c 8c e4
B19_1f64:		cpx #$e0		; e0 e0
B19_1f66:		inc $00			; e6 00
B19_1f68:		jmp func_1f_0d16		; 4c 16 ed


B19_1f6b:		jmp $e5a0		; 4c a0 e5


B19_1f6e:		rti				; 40 


B19_1f6f:	.db $53
B19_1f70:	.db $c3
B19_1f71:		eor ($42, x)	; 41 42
B19_1f73:	.db $c3
B19_1f74:		stx $507a		; 8e 7a 50
B19_1f77:		lsr a			; 4a
B19_1f78:		jmp ($51c2)		; 6c c2 51


B19_1f7b:	.db $52
B19_1f7c:	.db $c2
B19_1f7d:	.db $80
B19_1f7e:	.db $9e
B19_1f7f:	.db $89
B19_1f80:	.db $43
B19_1f81:		eor $6f7c		; 4d 7c 6f
B19_1f84:		rts				; 60 


B19_1f85:		adc ($62, x)	; 61 62
B19_1f87:	.db $63
B19_1f88:		adc $98, x		; 75 98
B19_1f8a:	.db $9e
B19_1f8b:		dey				; 88 
B19_1f8c:		.db $00				; 00
B19_1f8d:	.db $5c
B19_1f8e:	.db $5f
B19_1f8f:	.db $7f
B19_1f90:		;removed
	.db $70 $71

B19_1f92:	.db $72
B19_1f93:	.db $73
B19_1f94:	.db $83
B19_1f95:		sty $96			; 84 96
B19_1f97:		.db $00				; 00
B19_1f98:		.db $00				; 00
B19_1f99:	.db $43
B19_1f9a:	.db $44
B19_1f9b:		eor $46			; 45 46
B19_1f9d:	.db $47
B19_1f9e:		pha				; 48 
B19_1f9f:		eor #$00		; 49 00
B19_1fa1:	.db $4b
B19_1fa2:	.db $c2
B19_1fa3:	.db $c2
B19_1fa4:	.db $54
B19_1fa5:		eor $56, x		; 55 56
B19_1fa7:	.db $57
B19_1fa8:		cli				; 58 
B19_1fa9:		eor $5b5a, y	; 59 5a 5b
B19_1fac:	.db $c2
B19_1fad:		txa				; 8a 
B19_1fae:	.db $8b
B19_1faf:	.db $64
B19_1fb0:		adc $66			; 65 66
B19_1fb2:	.db $67
B19_1fb3:		pla				; 68 
B19_1fb4:		adc #$6a		; 69 6a
B19_1fb6:	.db $6b
B19_1fb7:		sty $9a8d		; 8c 8d 9a
B19_1fba:	.db $9b
B19_1fbb:	.db $74
B19_1fbc:		.db $00				; 00
B19_1fbd:		ror $77, x		; 76 77
B19_1fbf:		sei				; 78 
B19_1fc0:		adc $7b00, y	; 79 00 7b
B19_1fc3:	.db $9c
B19_1fc4:		sta $4ec4, x	; 9d c4 4e
B19_1fc7:	.db $4f
B19_1fc8:		dey				; 88 
B19_1fc9:	.db $89
B19_1fca:		cpy $c3			; c4 c3
B19_1fcc:		eor $4f5e, x	; 5d 5e 4f
B19_1fcf:		.db $00				; 00
B19_1fd0:		sta $c3c4, y	; 99 c4 c3
B19_1fd3:		adc $c26e		; 6d 6e c2
B19_1fd6:	.db $87
B19_1fd7:		cpy $c3			; c4 c3
B19_1fd9:		adc $c27e, x	; 7d 7e c2
B19_1fdc:	.db $97
B19_1fdd:		cpy $c3			; c4 c3
B19_1fdf:		sta ($82, x)	; 81 82
B19_1fe1:	.db $c2
B19_1fe2:		sta $c4			; 85 c4
B19_1fe4:	.db $c2
B19_1fe5:		bcc B19_1f78 ; 90 91

B19_1fe7:	.db $92
B19_1fe8:		.db $00				; 00
B19_1fe9:		sty $95, x		; 94 95
B19_1feb:		.db $c4