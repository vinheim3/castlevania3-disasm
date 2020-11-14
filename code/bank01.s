B1_0000:		rti				; 40 


B1_0001:		sta $30			; 85 30
B1_0003:		lda #$20		; a9 20
B1_0005:		jmp $a272		; 4c 72 a2


B1_0008:		ldy $07f3		; ac f3 07
B1_000b:		bne B1_001b ; d0 0e

B1_000d:		dec $30			; c6 30
B1_000f:		bne B1_004f ; d0 3e

B1_0011:		lda #$20		; a9 20
B1_0013:		sta $30			; 85 30
B1_0015:		inc $07f3		; ee f3 07
B1_0018:		jmp $a442		; 4c 42 a4


B1_001b:		jsr $a303		; 20 03 a3
B1_001e:		dec $30			; c6 30
B1_0020:		bne B1_004f ; d0 2d

B1_0022:		jsr $a3ad		; 20 ad a3
B1_0025:		jmp $9e49		; 4c 49 9e


B1_0028:		jsr $a303		; 20 03 a3
B1_002b:		jsr $a0d0		; 20 d0 a0
B1_002e:		inc $07f2		; ee f2 07
B1_0031:		lda $07f2		; ad f2 07
B1_0034:		and #$0f		; 29 0f
B1_0036:		bne B1_003d ; d0 05

B1_0038:		lda #$09		; a9 09
B1_003a:		jsr playSound		; 20 5f e2
B1_003d:		lda $0401		; ad 01 04
B1_0040:		ora $0402		; 0d 02 04
B1_0043:		bne B1_004f ; d0 0a

B1_0045:		ldy #$00		; a0 00
B1_0047:		sty $b4			; 84 b4
B1_0049:		iny				; c8 
B1_004a:		sty $b5			; 84 b5
B1_004c:		jmp $9e49		; 4c 49 9e


B1_004f:		rts				; 60 


B1_0050:		jsr $a303		; 20 03 a3
B1_0053:		lda $1d			; a5 1d
B1_0055:		sta $15			; 85 15
B1_0057:		lda #$29		; a9 29
B1_0059:		jsr func_1f_0ce9		; 20 e9 ec
B1_005c:		lda #$04		; a9 04
B1_005e:		jsr func_1f_0ce9		; 20 e9 ec
B1_0061:		jsr $fbaf		; 20 af fb
B1_0064:		lda $b4			; a5 b4
B1_0066:		cmp #$ff		; c9 ff
B1_0068:		bne B1_004f ; d0 e5

B1_006a:		jmp $a0f1		; 4c f1 a0


B1_006d:		ldy #$1e		; a0 1e
B1_006f:		ldx #$01		; a2 01
B1_0071:		lda #$1a		; a9 1a
B1_0073:		jsr func_1f_05bf		; 20 bf e5
B1_0076:		lda #$80		; a9 80
B1_0078:		sta $0783		; 8d 83 07
B1_007b:		lda $07ee		; ad ee 07
B1_007e:		and #$02		; 29 02
B1_0080:		sta $0782		; 8d 82 07
B1_0083:		rts				; 60 


B1_0084:		lda #$00		; a9 00
B1_0086:		sta $0403		; 8d 03 04
B1_0089:		sta $0404		; 8d 04 04
B1_008c:		sta $0405		; 8d 05 04
B1_008f:		sta $0406		; 8d 06 04
B1_0092:		rts				; 60 


B1_0093:		lda #$d6		; a9 d6
B1_0095:		sta $0404		; 8d 04 04
B1_0098:		lda #$d8		; a9 d8
B1_009a:		sta $0405		; 8d 05 04
B1_009d:		lda #$d8		; a9 d8
B1_009f:		sta $0406		; 8d 06 04
B1_00a2:		lda #$aa		; a9 aa
B1_00a4:		sta $0403		; 8d 03 04
B1_00a7:		rts				; 60 


B1_00a8:		jsr $a0be		; 20 be a0
B1_00ab:		lda $a0c6, y	; b9 c6 a0
B1_00ae:		jmp $a0b7		; 4c b7 a0


B1_00b1:		jsr $a0be		; 20 be a0
B1_00b4:		lda $a0cb, y	; b9 cb a0
B1_00b7:		and $30			; 25 30
B1_00b9:		beq B1_00a2 ; f0 e7

B1_00bb:		jmp $a084		; 4c 84 a0


B1_00be:		lda $30			; a5 30
B1_00c0:		lsr a			; 4a
B1_00c1:		lsr a			; 4a
B1_00c2:		lsr a			; 4a
B1_00c3:		lsr a			; 4a
B1_00c4:		tay				; a8 
B1_00c5:		rts				; 60 


B1_00c6:		;removed
	.db $10 $08

B1_00c8:	.db $04
B1_00c9:	.db $02
B1_00ca:		ora ($01, x)	; 01 01
B1_00cc:	.db $02
B1_00cd:	.db $04
B1_00ce:		php				; 08 
B1_00cf:		bpl B1_0073 ; 10 a2

B1_00d1:		ora ($bd, x)	; 01 bd
B1_00d3:		.db $00				; 00
B1_00d4:	.db $04
B1_00d5:		beq B1_00e0 ; f0 09

B1_00d7:		jsr $a41d		; 20 1d a4
B1_00da:		jsr $ef75		; 20 75 ef
B1_00dd:		jsr $a3ee		; 20 ee a3
B1_00e0:		lda $3a			; a5 3a
B1_00e2:		bmi B1_011c ; 30 38

B1_00e4:		ldx #$02		; a2 02
B1_00e6:		lda $0400, x	; bd 00 04
B1_00e9:		beq B1_011c ; f0 31

B1_00eb:		jsr $a41d		; 20 1d a4
B1_00ee:		jmp $ef75		; 4c 75 ef


B1_00f1:		jsr $e666		; 20 66 e6
B1_00f4:		lda #$44		; a9 44
B1_00f6:		sta $25			; 85 25
B1_00f8:		lda $ff			; a5 ff
B1_00fa:		and #$fc		; 29 fc
B1_00fc:		sta $ff			; 85 ff
B1_00fe:		lda #$00		; a9 00
B1_0100:		sta $6b			; 85 6b
B1_0102:		lda #$1f		; a9 1f
B1_0104:		sta $2a			; 85 2a
B1_0106:		lda $a4			; a5 a4
B1_0108:		asl a			; 0a
B1_0109:		clc				; 18 
B1_010a:		adc $a4			; 65 a4
B1_010c:		tay				; a8 
B1_010d:		lda $a11d, y	; b9 1d a1
B1_0110:		sta $32			; 85 32
B1_0112:		lda $a11e, y	; b9 1e a1
B1_0115:		sta $33			; 85 33
B1_0117:		lda $a11f, y	; b9 1f a1
B1_011a:		sta $34			; 85 34
B1_011c:		rts				; 60 


B1_011d:		.db $00				; 00
B1_011e:		.db $00				; 00
B1_011f:		.db $00				; 00
B1_0120:		ora ($03, x)	; 01 03
B1_0122:	.db $02
B1_0123:	.db $02
B1_0124:		ora ($00, x)	; 01 00
B1_0126:	.db $03
B1_0127:		.db $00				; 00
B1_0128:	.db $02
B1_0129:	.db $04
B1_012a:		.db $00				; 00
B1_012b:		.db $00				; 00
B1_012c:		ora $00			; 05 00
B1_012e:		.db $00				; 00
B1_012f:	.db $0b
B1_0130:		.db $00				; 00
B1_0131:		.db $00				; 00
B1_0132:	.db $07
B1_0133:		.db $00				; 00
B1_0134:		ora ($07, x)	; 01 07
B1_0136:		ora $00			; 05 00
B1_0138:		ora #$00		; 09 00
B1_013a:		.db $00				; 00
B1_013b:		asl a			; 0a
B1_013c:		.db $00				; 00
B1_013d:		.db $00				; 00
B1_013e:		asl a			; 0a
B1_013f:		.db $00				; 00
B1_0140:		.db $00				; 00
B1_0141:	.db $0c
B1_0142:		.db $00				; 00
B1_0143:		.db $00				; 00
B1_0144:	.db $0c
B1_0145:		.db $00				; 00
B1_0146:		.db $00				; 00
B1_0147:	.db $0d $00 $00
B1_014a:		asl $0200		; 0e 00 02
B1_014d:		ror a			; 6a
B1_014e:		tsx				; ba 
B1_014f:		ldx $fcbb, y	; be bb fc
B1_0152:		lda $ba5e, y	; b9 5e ba
B1_0155:	.db $80
B1_0156:		bit $2fc8		; 2c c8 2f
B1_0159:		.db $00				; 00
B1_015a:		rol $2fe0		; 2e e0 2f
B1_015d:	.db $0c
B1_015e:		inc $1c0c, x	; fe 0c 1c
B1_0161:		;removed
	.db $10 $12

B1_0163:	.db $ff
B1_0164:	.db $1c
B1_0165:		asl $1014		; 0e 14 10
B1_0168:	.db $12
B1_0169:	.db $ff
B1_016a:		.db $00				; 00
B1_016b:	.db $02
B1_016c:		.db $00				; 00
B1_016d:	.db $07
B1_016e:	.db $44
B1_016f:	.db $44
B1_0170:	.db $44
B1_0171:		bvc B1_0120 ; 50 ad

B1_0173:		inc $2907		; ee 07 29
B1_0176:	.db $03
B1_0177:		tay				; a8 
B1_0178:		lda $a16a, y	; b9 6a a1
B1_017b:		sta $10			; 85 10
B1_017d:		lda $a16e, y	; b9 6e a1
B1_0180:		sta $25			; 85 25
B1_0182:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B1_0185:		ldy $10			; a4 10
B1_0187:		lda #$8a		; a9 8a
B1_0189:		ldx $a15d, y	; be 5d a1
B1_018c:		bmi B1_019c ; 30 0e

B1_018e:		cpx #$0c		; e0 0c
B1_0190:		bne B1_0194 ; d0 02

B1_0192:		lda #$98		; a9 98
B1_0194:		jsr $ebd5		; 20 d5 eb
B1_0197:		inc $10			; e6 10
B1_0199:		jmp $a185		; 4c 85 a1


B1_019c:		cpx #$ff		; e0 ff
B1_019e:		bcs B1_01c6 ; b0 26

B1_01a0:		lda #$00		; a9 00
B1_01a2:		sta $10			; 85 10
B1_01a4:		ldy $10			; a4 10
B1_01a6:		lda $a14d, y	; b9 4d a1
B1_01a9:		sta $00			; 85 00
B1_01ab:		lda $a14e, y	; b9 4e a1
B1_01ae:		sta $01			; 85 01
B1_01b0:		ldx $a155, y	; be 55 a1
B1_01b3:		lda $a156, y	; b9 56 a1
B1_01b6:		tay				; a8 
B1_01b7:		lda #$8a		; a9 8a
B1_01b9:		jsr $ebe0		; 20 e0 eb
B1_01bc:		inc $10			; e6 10
B1_01be:		inc $10			; e6 10
B1_01c0:		lda $10			; a5 10
B1_01c2:		cmp #$08		; c9 08
B1_01c4:		bcc B1_01a4 ; 90 de

B1_01c6:		lda $07f1		; ad f1 07
B1_01c9:		cmp #$03		; c9 03
B1_01cb:		bcc B1_01df ; 90 12

B1_01cd:		lda #$17		; a9 17
B1_01cf:		jmp func_1f_0ce9		; 4c e9 ec


B1_01d2:		jsr $a1e0		; 20 e0 a1
B1_01d5:		lda #$7f		; a9 7f
B1_01d7:		sta $4a			; 85 4a
B1_01d9:		sta $4b			; 85 4b
B1_01db:		sta $4c			; 85 4c
B1_01dd:		sta $4d			; 85 4d
B1_01df:		rts				; 60 


B1_01e0:		lda #$00		; a9 00
B1_01e2:		sta $46			; 85 46
B1_01e4:		ldy $3a			; a4 3a
B1_01e6:		iny				; c8 
B1_01e7:		lda $a1f5, y	; b9 f5 a1
B1_01ea:		sta $47			; 85 47
B1_01ec:		lda #$7e		; a9 7e
B1_01ee:		sta $48			; 85 48
B1_01f0:		lda #$7b		; a9 7b
B1_01f2:		sta $49			; 85 49
B1_01f4:		rts				; 60 


B1_01f5:		.db $00				; 00
B1_01f6:		.db $00				; 00
B1_01f7:	.db $04
B1_01f8:	.db $02
B1_01f9:		asl $a5			; 06 a5
B1_01fb:		bmi B1_0226 ; 30 29

B1_01fd:	.db $0f
B1_01fe:		bne B1_020b ; d0 0b

B1_0200:		lda $30			; a5 30
B1_0202:		cmp #$d0		; c9 d0
B1_0204:		bcs B1_020b ; b0 05

B1_0206:		lda #$3a		; a9 3a
B1_0208:		jsr playSound		; 20 5f e2
B1_020b:		lda $30			; a5 30
B1_020d:		lsr a			; 4a
B1_020e:		lsr a			; 4a
B1_020f:		lsr a			; 4a
B1_0210:		lsr a			; 4a
B1_0211:		tay				; a8 
B1_0212:		lda $a237, y	; b9 37 a2
B1_0215:		sta $00			; 85 00
B1_0217:		lda $1a			; a5 1a
B1_0219:		and #$02		; 29 02
B1_021b:		beq B1_0224 ; f0 07

B1_021d:		sec				; 38 
B1_021e:		lda #$00		; a9 00
B1_0220:		sbc $00			; e5 00
B1_0222:		sta $00			; 85 00
B1_0224:		lda $00			; a5 00
B1_0226:		sta $fd			; 85 fd
B1_0228:		asl a			; 0a
B1_0229:		lda $ff			; a5 ff
B1_022b:		and #$fe		; 29 fe
B1_022d:		sta $00			; 85 00
B1_022f:		lda #$00		; a9 00
B1_0231:		rol a			; 2a
B1_0232:		ora $00			; 05 00
B1_0234:		sta $ff			; 85 ff
B1_0236:		rts				; 60 


B1_0237:		ora ($01, x)	; 01 01
B1_0239:		ora ($01, x)	; 01 01
B1_023b:		ora ($01, x)	; 01 01
B1_023d:	.db $02
B1_023e:	.db $02
B1_023f:	.db $02
B1_0240:	.db $02
B1_0241:	.db $02
B1_0242:		ora ($00, x)	; 01 00
B1_0244:		.db $00				; 00
B1_0245:		.db $00				; 00
B1_0246:		.db $00				; 00
B1_0247:		ldx #$00		; a2 00
B1_0249:		jmp $a24e		; 4c 4e a2


B1_024c:		ldx #$03		; a2 03
B1_024e:		jsr $a257		; 20 57 a2
B1_0251:		inx				; e8 
B1_0252:		cpx #$1c		; e0 1c
B1_0254:		bne B1_024e ; d0 f8

B1_0256:		rts				; 60 


B1_0257:		lda #$00		; a9 00
B1_0259:		sta $0400, x	; 9d 00 04
B1_025c:		sta $048c, x	; 9d 8c 04
B1_025f:		sta $0438, x	; 9d 38 04
B1_0262:		sta $041c, x	; 9d 1c 04
B1_0265:		sta $0454, x	; 9d 54 04
B1_0268:		sta $0470, x	; 9d 70 04
B1_026b:		sta $04a8, x	; 9d a8 04
B1_026e:		sta $05aa, x	; 9d aa 05
B1_0271:		rts				; 60 


B1_0272:		sta $07c1		; 8d c1 07
B1_0275:		jmp $a299		; 4c 99 a2


B1_0278:		lda $07ee		; ad ee 07
B1_027b:		and #$02		; 29 02
B1_027d:		beq B1_0289 ; f0 0a

B1_027f:		ldy #$00		; a0 00
B1_0281:		ldx #$18		; a2 18
B1_0283:		jsr $a2a3		; 20 a3 a2
B1_0286:		jsr $a2a3		; 20 a3 a2
B1_0289:		lda $3a			; a5 3a
B1_028b:		bmi B1_0299 ; 30 0c

B1_028d:		cmp #$02		; c9 02
B1_028f:		bcc B1_0299 ; 90 08

B1_0291:		asl a			; 0a
B1_0292:		asl a			; 0a
B1_0293:		tay				; a8 
B1_0294:		ldx #$14		; a2 14
B1_0296:		jsr $a2a3		; 20 a3 a2
B1_0299:		lda #$29		; a9 29
B1_029b:		jsr func_1f_0ce9		; 20 e9 ec
B1_029e:		lda #$04		; a9 04
B1_02a0:		jmp func_1f_0ce9		; 4c e9 ec


B1_02a3:		lda #$04		; a9 04
B1_02a5:		sta $00			; 85 00
B1_02a7:		lda $a2d3, y	; b9 d3 a2
B1_02aa:		sta $07a2, x	; 9d a2 07
B1_02ad:		iny				; c8 
B1_02ae:		inx				; e8 
B1_02af:		dec $00			; c6 00
B1_02b1:		bne B1_02a7 ; d0 f4

B1_02b3:		rts				; 60 


B1_02b4:		ldy #$10		; a0 10
B1_02b6:		ldx #$00		; a2 00
B1_02b8:		lda #$08		; a9 08
B1_02ba:		sta $02			; 85 02
B1_02bc:		jsr $a2a3		; 20 a3 a2
B1_02bf:		dec $02			; c6 02
B1_02c1:		bne B1_02bc ; d0 f9

B1_02c3:		lda #$00		; a9 00
B1_02c5:		sta $07a0		; 8d a0 07
B1_02c8:		lda #$3f		; a9 3f
B1_02ca:		sta $07a1		; 8d a1 07
B1_02cd:		lda #$ff		; a9 ff
B1_02cf:		sta $07c2		; 8d c2 07
B1_02d2:		rts				; 60 


B1_02d3:	.db $0f
B1_02d4:	.db $0f
B1_02d5:		asl $24, x		; 16 24
B1_02d7:	.db $0f
B1_02d8:	.db $0f
B1_02d9:		ora $16			; 05 16
B1_02db:	.db $0f
B1_02dc:		php				; 08 
B1_02dd:		ora $38, x		; 15 38
B1_02df:	.db $0f
B1_02e0:	.db $0f
B1_02e1:		ora $36, x		; 15 36
B1_02e3:	.db $0f
B1_02e4:		.db $00				; 00
B1_02e5:	.db $07
B1_02e6:	.db $17
B1_02e7:	.db $0f
B1_02e8:	.db $07
B1_02e9:	.db $17
B1_02ea:	.db $20 $0f $00
B1_02ed:	.db $03
B1_02ee:	.db $13
B1_02ef:	.db $0f
B1_02f0:	.db $02
B1_02f1:	.db $03
B1_02f2:		ora ($0f), y	; 11 0f
B1_02f4:		php				; 08 
B1_02f5:		plp				; 28 
B1_02f6:	.db $37
B1_02f7:	.db $0f
B1_02f8:		and ($11, x)	; 21 11
B1_02fa:		jsr $0f0f		; 20 0f 0f
B1_02fd:		and ($20, x)	; 21 20
B1_02ff:	.db $0f
B1_0300:	.db $0f
B1_0301:	.db $07
B1_0302:		jsr $01a0		; 20 a0 01
B1_0305:		lda $07f1		; ad f1 07
B1_0308:		beq B1_032b ; f0 21

B1_030a:		cmp #$06		; c9 06
B1_030c:		beq B1_0310 ; f0 02

B1_030e:		ldy #$00		; a0 00
B1_0310:		sty $11			; 84 11
B1_0312:		inc $07ec		; ee ec 07
B1_0315:		lda $07ed		; ad ed 07
B1_0318:		and #$1f		; 29 1f
B1_031a:		cmp #$0e		; c9 0e
B1_031c:		bcs B1_0340 ; b0 22

B1_031e:		lda $07ec		; ad ec 07
B1_0321:		and #$3f		; 29 3f
B1_0323:		cmp #$1f		; c9 1f
B1_0325:		beq B1_0377 ; f0 50

B1_0327:		cmp #$3f		; c9 3f
B1_0329:		beq B1_032c ; f0 01

B1_032b:		rts				; 60 


B1_032c:		lda $11			; a5 11
B1_032e:		bne B1_038b ; d0 5b

B1_0330:		ldx #$03		; a2 03
B1_0332:		lda $0470, x	; bd 70 04
B1_0335:		and #$7f		; 29 7f
B1_0337:		sta $0470, x	; 9d 70 04
B1_033a:		inx				; e8 
B1_033b:		cpx #$0a		; e0 0a
B1_033d:		bne B1_0332 ; d0 f3

B1_033f:		rts				; 60 


B1_0340:		lda $07ec		; ad ec 07
B1_0343:		and #$7f		; 29 7f
B1_0345:		sta $00			; 85 00
B1_0347:		lda $07ec		; ad ec 07
B1_034a:		and #$20		; 29 20
B1_034c:		asl a			; 0a
B1_034d:		asl a			; 0a
B1_034e:		ora $00			; 05 00
B1_0350:		sta $0473		; 8d 73 04
B1_0353:		ldx #$04		; a2 04
B1_0355:		jsr $a367		; 20 67 a3
B1_0358:		jsr $ef75		; 20 75 ef
B1_035b:		lda $0405		; ad 05 04
B1_035e:		beq B1_0376 ; f0 16

B1_0360:		inx				; e8 
B1_0361:		jsr $a367		; 20 67 a3
B1_0364:		jmp $ef75		; 4c 75 ef


B1_0367:		ldy #$3a		; a0 3a
B1_0369:		lda $07f1		; ad f1 07
B1_036c:		cmp #$16		; c9 16
B1_036e:		bne B1_0372 ; d0 02

B1_0370:		ldy #$3b		; a0 3b
B1_0372:		tya				; 98 
B1_0373:		sta $05aa, x	; 9d aa 05
B1_0376:		rts				; 60 


B1_0377:		lda $11			; a5 11
B1_0379:		bne B1_039c ; d0 21

B1_037b:		ldx #$03		; a2 03
B1_037d:		lda $0470, x	; bd 70 04
B1_0380:		ora #$80		; 09 80
B1_0382:		sta $0470, x	; 9d 70 04
B1_0385:		inx				; e8 
B1_0386:		cpx #$0a		; e0 0a
B1_0388:		bne B1_037d ; d0 f3

B1_038a:		rts				; 60 


B1_038b:		jsr $a084		; 20 84 a0
B1_038e:		lda #$06		; a9 06
B1_0390:		ldx #$03		; a2 03
B1_0392:		jsr $a447		; 20 47 a4
B1_0395:		lda #$17		; a9 17
B1_0397:		sta $10			; 85 10
B1_0399:		jmp $a272		; 4c 72 a2


B1_039c:		jsr $a0a2		; 20 a2 a0
B1_039f:		lda #$07		; a9 07
B1_03a1:		ldx #$03		; a2 03
B1_03a3:		jsr $a447		; 20 47 a4
B1_03a6:		lda #$20		; a9 20
B1_03a8:		sta $10			; 85 10
B1_03aa:		jmp $a272		; 4c 72 a2


B1_03ad:		ldy $3b			; a4 3b
B1_03af:	.db $b9 $39 $00
B1_03b2:		tay				; a8 
B1_03b3:		ldx #$01		; a2 01
B1_03b5:		lda $a419, y	; b9 19 a4
B1_03b8:		sta $0454, x	; 9d 54 04
B1_03bb:		lda $a415, y	; b9 15 a4
B1_03be:		sta $041c, x	; 9d 1c 04
B1_03c1:		lda $a411, y	; b9 11 a4
B1_03c4:		sta $05aa, x	; 9d aa 05
B1_03c7:		lda $a40d, y	; b9 0d a4
B1_03ca:		sta $048c, x	; 9d 8c 04
B1_03cd:		lda #$01		; a9 01
B1_03cf:		sta $057c, x	; 9d 7c 05
B1_03d2:		lda #$00		; a9 00
B1_03d4:		sta $0593, x	; 9d 93 05
B1_03d7:		ldy #$01		; a0 01
B1_03d9:		lda $07ed		; ad ed 07
B1_03dc:		and #$40		; 29 40
B1_03de:		beq B1_03e2 ; f0 02

B1_03e0:		ldy #$ff		; a0 ff
B1_03e2:		tya				; 98 
B1_03e3:		sta $0438, x	; 9d 38 04
B1_03e6:		bpl B1_03eb ; 10 03

B1_03e8:		inc $04a8, x	; fe a8 04
B1_03eb:		jmp $ef75		; 4c 75 ef


B1_03ee:		lda $0439		; ad 39 04
B1_03f1:		cmp #$20		; c9 20
B1_03f3:		beq B1_03f9 ; f0 04

B1_03f5:		cmp #$e0		; c9 e0
B1_03f7:		bne B1_0433 ; d0 3a

B1_03f9:		ldx #$02		; a2 02
B1_03fb:		lda $0400, x	; bd 00 04
B1_03fe:		bne B1_0433 ; d0 33

B1_0400:		ldy $3a			; a4 3a
B1_0402:		bmi B1_0433 ; 30 2f

B1_0404:		lda $3b			; a5 3b
B1_0406:		beq B1_040a ; f0 02

B1_0408:		ldy #$00		; a0 00
B1_040a:		jmp $a3b5		; 4c b5 a3


B1_040d:		.db $00				; 00
B1_040e:	.db $0c
B1_040f:	.db $0c
B1_0410:	.db $0c
B1_0411:		.db $00				; 00
B1_0412:		rol $37, x		; 36 37
B1_0414:		sec				; 38 
B1_0415:		cpy #$c0		; c0 c0
B1_0417:		cpy $c0			; c4 c0
B1_0419:		.db $00				; 00
B1_041a:		ora ($01, x)	; 01 01
B1_041c:		ora ($bd, x)	; 01 bd
B1_041e:		.db $00				; 00
B1_041f:	.db $04
B1_0420:		beq B1_043e ; f0 1c

B1_0422:		lda $07ed		; ad ed 07
B1_0425:		and #$40		; 29 40
B1_0427:		bne B1_0434 ; d0 0b

B1_0429:		inc $0438, x	; fe 38 04
B1_042c:		lda $0438, x	; bd 38 04
B1_042f:		cmp #$fc		; c9 fc
B1_0431:		bcs B1_043f ; b0 0c

B1_0433:		rts				; 60 


B1_0434:		dec $0438, x	; de 38 04
B1_0437:		lda $0438, x	; bd 38 04
B1_043a:		cmp #$04		; c9 04
B1_043c:		bcc B1_043f ; 90 01

B1_043e:		rts				; 60 


B1_043f:		jmp $a257		; 4c 57 a2


B1_0442:		ldx #$03		; a2 03
B1_0444:		lda $07f1		; ad f1 07
B1_0447:		asl a			; 0a
B1_0448:		tay				; a8 
B1_0449:		lda $a4ad, y	; b9 ad a4
B1_044c:		sta $00			; 85 00
B1_044e:		lda $a4ae, y	; b9 ae a4
B1_0451:		sta $01			; 85 01
B1_0453:		ldy #$00		; a0 00
B1_0455:		lda ($00), y	; b1 00
B1_0457:		beq B1_048a ; f0 31

B1_0459:		sta $02			; 85 02
B1_045b:		iny				; c8 
B1_045c:		lda #$0c		; a9 0c
B1_045e:		sta $048c, x	; 9d 8c 04
B1_0461:		lda #$00		; a9 00
B1_0463:		sta $0470, x	; 9d 70 04
B1_0466:		lda #$00		; a9 00
B1_0468:		sta $0454, x	; 9d 54 04
B1_046b:		lda #$01		; a9 01
B1_046d:		sta $04a8, x	; 9d a8 04
B1_0470:		sta $057c, x	; 9d 7c 05
B1_0473:		lda ($00), y	; b1 00
B1_0475:		sta $0400, x	; 9d 00 04
B1_0478:		iny				; c8 
B1_0479:		lda ($00), y	; b1 00
B1_047b:		sta $0438, x	; 9d 38 04
B1_047e:		iny				; c8 
B1_047f:		lda ($00), y	; b1 00
B1_0481:		sta $041c, x	; 9d 1c 04
B1_0484:		iny				; c8 
B1_0485:		inx				; e8 
B1_0486:		dec $02			; c6 02
B1_0488:		bne B1_045c ; d0 d2

B1_048a:		rts				; 60 


B1_048b:		ora ($c2, x)	; 01 c2
B1_048d:	.db $04
B1_048e:		asl $08			; 06 08
B1_0490:		eor #$33		; 49 33
B1_0492:	.db $0b
B1_0493:	.db $0c
B1_0494:		adc ($f2), y	; 71 f2
B1_0496:	.db $52
B1_0497:	.db $14
B1_0498:	.db $14
B1_0499:		ora $56, x		; 15 56
B1_049b:		asl $00, x		; 16 00
B1_049d:		.db $00				; 00
B1_049e:		.db $00				; 00
B1_049f:		.db $00				; 00
B1_04a0:		.db $00				; 00
B1_04a1:		.db $00				; 00
B1_04a2:		.db $00				; 00
B1_04a3:		.db $00				; 00
B1_04a4:		.db $00				; 00
B1_04a5:		ora ($d1, x)	; 01 d1
B1_04a7:	.db $d3
B1_04a8:	.db $73
B1_04a9:	.db $02
B1_04aa:	.db $02
B1_04ab:	.db $02
B1_04ac:	.db $02
B1_04ad:	.db $db
B1_04ae:		ldy $db			; a4 db
B1_04b0:		ldy $e5			; a4 e5
B1_04b2:		ldy $ef			; a4 ef
B1_04b4:		ldy $ef			; a4 ef
B1_04b6:		ldy $fc			; a4 fc
B1_04b8:		ldy $fc			; a4 fc
B1_04ba:		ldy $00			; a4 00
B1_04bc:		lda $0a			; a5 0a
B1_04be:		lda $14			; a5 14
B1_04c0:		lda $1e			; a5 1e
B1_04c2:		lda $1e			; a5 1e
B1_04c4:		lda $28			; a5 28
B1_04c6:		lda $32			; a5 32
B1_04c8:		lda $43			; a5 43
B1_04ca:		lda $32			; a5 32
B1_04cc:		lda $39			; a5 39
B1_04ce:		lda $32			; a5 32
B1_04d0:		lda $39			; a5 39
B1_04d2:		lda $43			; a5 43
B1_04d4:		lda $4a			; a5 4a
B1_04d6:		lda $51			; a5 51
B1_04d8:		lda $58			; a5 58
B1_04da:		lda $03			; a5 03
B1_04dc:		ldy #$31		; a0 31
B1_04de:		eor #$d6		; 49 d6
B1_04e0:		and $2b, x		; 35 2b
B1_04e2:		cld				; d8 
B1_04e3:	.db $3f
B1_04e4:		eor ($03), y	; 51 03
B1_04e6:		ldx #$58		; a2 58
B1_04e8:	.db $4f
B1_04e9:		dec $55, x		; d6 55
B1_04eb:	.db $33
B1_04ec:		cld				; d8 
B1_04ed:		lsr a			; 4a
B1_04ee:	.db $57
B1_04ef:	.db $04
B1_04f0:		ldx $35			; a6 35
B1_04f2:		adc $a8, x		; 75 a8
B1_04f4:	.db $4f
B1_04f5:	.db $87
B1_04f6:		dec $40, x		; d6 40
B1_04f8:		eor $59d8, y	; 59 d8 59
B1_04fb:	.db $83
B1_04fc:		ora ($aa, x)	; 01 aa
B1_04fe:	.db $77
B1_04ff:	.db $7b
B1_0500:	.db $03
B1_0501:		ldy $7b77		; ac 77 7b
B1_0504:		dec $5f, x		; d6 5f
B1_0506:	.db $73
B1_0507:		cld				; d8 
B1_0508:		sta ($62, x)	; 81 62
B1_050a:	.db $03
B1_050b:		ldx $60b2		; ae b2 60
B1_050e:		dec $af, x		; d6 af
B1_0510:		lsr $b5d8, x	; 5e d8 b5
B1_0513:	.db $44
B1_0514:	.db $03
B1_0515:		bcs B1_04b8 ; b0 a1

B1_0517:	.db $4f
B1_0518:		dec $ac, x		; d6 ac
B1_051a:	.db $52
B1_051b:		cld				; d8 
B1_051c:		stx $42			; 86 42
B1_051e:	.db $03
B1_051f:		ldy $7f, x		; b4 7f
B1_0521:	.db $97
B1_0522:		dec $64, x		; d6 64
B1_0524:		sta ($d8), y	; 91 d8
B1_0526:		sta $87, x		; 95 87
B1_0528:	.db $03
B1_0529:		ldx $aa, y		; b6 aa
B1_052b:		sta $d6			; 85 d6
B1_052d:	.db $9b
B1_052e:		sei				; 78 
B1_052f:		cld				; d8 
B1_0530:	.db $ab
B1_0531:		adc $ea02		; 6d 02 ea
B1_0534:		bcc B1_05b5 ; 90 7f

B1_0536:		cpx $6f96		; ec 96 6f
B1_0539:	.db $03
B1_053a:		nop				; ea 
B1_053b:		tya				; 98 
B1_053c:	.db $7f
B1_053d:		cpx $7578		; ec 78 75
B1_0540:		cpx $376f		; ec 6f 37
B1_0543:	.db $02
B1_0544:		nop				; ea 
B1_0545:	.db $22
B1_0546:	.db $77
B1_0547:		cpx $7f6e		; ec 6e 7f
B1_054a:	.db $02
B1_054b:		nop				; ea 
B1_054c:	.db $7a
B1_054d:	.db $87
B1_054e:		cpx $6fbf		; ec bf 6f
B1_0551:	.db $02
B1_0552:		nop				; ea 
B1_0553:	.db $b7
B1_0554:	.db $5c
B1_0555:		cpx $2fac		; ec ac 2f
B1_0558:	.db $02
B1_0559:		nop				; ea 
B1_055a:	.db $9b
B1_055b:	.db $27
B1_055c:		beq B1_05c7 ; f0 69

B1_055e:	.db $2f
B1_055f:		sta $00			; 85 00
B1_0561:		lda #$01		; a9 01
B1_0563:		jsr func_1f_0d14		; 20 14 ed
B1_0566:		lda $00			; a5 00
B1_0568:		asl a			; 0a
B1_0569:		adc $00			; 65 00
B1_056b:		tay				; a8 
B1_056c:		lda $a581, y	; b9 81 a5
B1_056f:		jsr func_1f_0d16		; 20 16 ed
B1_0572:		lda $a582, y	; b9 82 a5
B1_0575:		jsr func_1f_0d16		; 20 16 ed
B1_0578:		lda $a583, y	; b9 83 a5
B1_057b:		jsr func_1f_0d16		; 20 16 ed
B1_057e:		jmp $ed12		; 4c 12 ed


B1_0581:		bit $3821		; 2c 21 38
B1_0584:		and $3921		; 2d 21 39
B1_0587:		rol $3a21		; 2e 21 3a
B1_058a:		jmp $5521		; 4c 21 55


B1_058d:		eor $5621		; 4d 21 56
B1_0590:		jmp ($7521)		; 6c 21 75


B1_0593:		adc $7621		; 6d 21 76
B1_0596:		ror $b121		; 6e 21 b1
B1_0599:		sta $8721		; 8d 21 87
B1_059c:		sec				; 38 
B1_059d:	.db $22
B1_059e:	.db $df
B1_059f:		and $ab22, y	; 39 22 ab
B1_05a2:	.db $3a
B1_05a3:	.db $22
B1_05a4:	.db $d4
B1_05a5:	.db $57
B1_05a6:	.db $22
B1_05a7:	.db $ab
B1_05a8:		cli				; 58 
B1_05a9:	.db $22
B1_05aa:	.db $ef
B1_05ab:		eor $ab22, y	; 59 22 ab
B1_05ae:	.db $5a
B1_05af:	.db $22
B1_05b0:	.db $ef
B1_05b1:	.db $77
B1_05b2:	.db $22
B1_05b3:	.db $d2
B1_05b4:		sei				; 78 
B1_05b5:	.db $22
B1_05b6:	.db $d3
B1_05b7:		lda $19			; a5 19
B1_05b9:		jsr jumpTablePreserveY		; 20 6d e8
B1_05bc:		dec $a5, x		; d6 a5
B1_05be:	.db $f3
B1_05bf:		lda $45			; a5 45
B1_05c1:		ldx $57			; a6 57
B1_05c3:		ldx $b1			; a6 b1
B1_05c5:		ldx $24			; a6 24
B1_05c7:	.db $a7
B1_05c8:	.db $cb
B1_05c9:		tay				; a8 
B1_05ca:		bpl B1_0575 ; 10 a9

B1_05cc:	.db $4b
B1_05cd:		lda #$c0		; a9 c0
B1_05cf:		lda #$ea		; a9 ea
B1_05d1:		lda #$04		; a9 04
B1_05d3:		tax				; aa 
B1_05d4:	.db $04
B1_05d5:		tax				; aa 
B1_05d6:		jsr initSound		; 20 27 e2
B1_05d9:		jsr $ebfd		; 20 fd eb
B1_05dc:		jsr $e78a		; 20 8a e7
B1_05df:		ldy #$00		; a0 00
B1_05e1:		lda $32			; a5 32
B1_05e3:		cmp #$00		; c9 00
B1_05e5:		beq B1_05ed ; f0 06

B1_05e7:		iny				; c8 
B1_05e8:		cmp #$02		; c9 02
B1_05ea:		beq B1_05ed ; f0 01

B1_05ec:		iny				; c8 
B1_05ed:		sty $0780		; 8c 80 07
B1_05f0:		inc $19			; e6 19
B1_05f2:		rts				; 60 


B1_05f3:		jsr $e73d		; 20 3d e7
B1_05f6:		ldy #$00		; a0 00
B1_05f8:		lda $a63f, y	; b9 3f a6
B1_05fb:	.db $99 $48 $00
B1_05fe:		iny				; c8 
B1_05ff:		cpy #$06		; c0 06
B1_0601:		bne B1_05f8 ; d0 f5

B1_0603:		lda #$18		; a9 18
B1_0605:		jsr func_1f_0ce9		; 20 e9 ec
B1_0608:		lda #$04		; a9 04
B1_060a:		jsr func_1f_0ce9		; 20 e9 ec
B1_060d:		ldx #$0c		; a2 0c
B1_060f:		lda #$98		; a9 98
B1_0611:		jsr $ebd5		; 20 d5 eb
B1_0614:		lda $0780		; ad 80 07
B1_0617:		beq B1_061e ; f0 05

B1_0619:		lda #$17		; a9 17
B1_061b:		jsr func_1f_0ce9		; 20 e9 ec
B1_061e:		lda $0780		; ad 80 07
B1_0621:		asl a			; 0a
B1_0622:		tay				; a8 
B1_0623:		lda $ae1f, y	; b9 1f ae
B1_0626:		sta $08			; 85 08
B1_0628:		lda $ae20, y	; b9 20 ae
B1_062b:		sta $09			; 85 09
B1_062d:		jsr $ad48		; 20 48 ad
B1_0630:		lda #$78		; a9 78
B1_0632:		ldy #$00		; a0 00
B1_0634:		jsr $e58e		; 20 8e e5
B1_0637:		lda #$6c		; a9 6c
B1_0639:		jsr playSound		; 20 5f e2
B1_063c:		inc $19			; e6 19
B1_063e:		rts				; 60 


B1_063f:		ror $747b, x	; 7e 7b 74
B1_0642:		adc $76, x		; 75 76
B1_0644:	.db $77
B1_0645:		jsr $e579		; 20 79 e5
B1_0648:		beq B1_064b ; f0 01

B1_064a:		rts				; 60 


B1_064b:		ldy #$00		; a0 00
B1_064d:		sty $0781		; 8c 81 07
B1_0650:		iny				; c8 
B1_0651:		sty $0782		; 8c 82 07
B1_0654:		inc $19			; e6 19
B1_0656:		rts				; 60 


B1_0657:		dec $0782		; ce 82 07
B1_065a:		beq B1_065d ; f0 01

B1_065c:		rts				; 60 


B1_065d:		lda $0781		; ad 81 07
B1_0660:		asl a			; 0a
B1_0661:		asl a			; 0a
B1_0662:		tay				; a8 
B1_0663:		lda $a69c, y	; b9 9c a6
B1_0666:		cmp #$ff		; c9 ff
B1_0668:		beq B1_0694 ; f0 2a

B1_066a:		sty $07			; 84 07
B1_066c:		lda #$18		; a9 18
B1_066e:		jsr func_1f_0ce9		; 20 e9 ec
B1_0671:		ldy $07			; a4 07
B1_0673:		lda $a69c, y	; b9 9c a6
B1_0676:		sta $02f4, x	; 9d f4 02
B1_0679:		lda $a69d, y	; b9 9d a6
B1_067c:		sta $02f5, x	; 9d f5 02
B1_067f:		lda $a69e, y	; b9 9e a6
B1_0682:		sta $02f6, x	; 9d f6 02
B1_0685:		lda $a69f, y	; b9 9f a6
B1_0688:		sta $0782		; 8d 82 07
B1_068b:		lda #$04		; a9 04
B1_068d:		jsr func_1f_0ce9		; 20 e9 ec
B1_0690:		inc $0781		; ee 81 07
B1_0693:		rts				; 60 


B1_0694:		lda #$00		; a9 00
B1_0696:		sta $0781		; 8d 81 07
B1_0699:		inc $19			; e6 19
B1_069b:		rts				; 60 


B1_069c:	.db $07
B1_069d:	.db $17
B1_069e:		jsr $0704		; 20 04 07
B1_06a1:	.db $07
B1_06a2:		bpl B1_06a8 ; 10 04

B1_06a4:	.db $0f
B1_06a5:	.db $07
B1_06a6:		bpl B1_06ac ; 10 04

B1_06a8:	.db $0f
B1_06a9:	.db $0f
B1_06aa:		bpl B1_06b0 ; 10 04

B1_06ac:	.db $0f
B1_06ad:	.db $0f
B1_06ae:	.db $0f
B1_06af:	.db $04
B1_06b0:	.db $ff
B1_06b1:		lda $0780		; ad 80 07
B1_06b4:		asl a			; 0a
B1_06b5:		tay				; a8 
B1_06b6:		lda $ae25, y	; b9 25 ae
B1_06b9:		sta $0a			; 85 0a
B1_06bb:		lda $ae26, y	; b9 26 ae
B1_06be:		sta $0b			; 85 0b
B1_06c0:		lda $0781		; ad 81 07
B1_06c3:		asl a			; 0a
B1_06c4:		tay				; a8 
B1_06c5:		lda ($0a), y	; b1 0a
B1_06c7:		sta $08			; 85 08
B1_06c9:		iny				; c8 
B1_06ca:		cmp #$ff		; c9 ff
B1_06cc:		beq B1_06d9 ; f0 0b

B1_06ce:		lda ($0a), y	; b1 0a
B1_06d0:		sta $09			; 85 09
B1_06d2:		jsr $ad48		; 20 48 ad
B1_06d5:		inc $0781		; ee 81 07
B1_06d8:		rts				; 60 


B1_06d9:		lda ($0a), y	; b1 0a
B1_06db:		cmp #$ff		; c9 ff
B1_06dd:		bne B1_06d0 ; d0 f1

B1_06df:		lda $0780		; ad 80 07
B1_06e2:		asl a			; 0a
B1_06e3:		asl a			; 0a
B1_06e4:		clc				; 18 
B1_06e5:		adc $0780		; 6d 80 07
B1_06e8:		tay				; a8 
B1_06e9:		lda $a715, y	; b9 15 a7
B1_06ec:		sta $0783		; 8d 83 07
B1_06ef:		lda $a716, y	; b9 16 a7
B1_06f2:		sta $0784		; 8d 84 07
B1_06f5:		lda $a717, y	; b9 17 a7
B1_06f8:		sta $0785		; 8d 85 07
B1_06fb:		lda $a718, y	; b9 18 a7
B1_06fe:		sta $0786		; 8d 86 07
B1_0701:		lda $a719, y	; b9 19 a7
B1_0704:		sta $0787		; 8d 87 07
B1_0707:		lda #$00		; a9 00
B1_0709:		sta $0788		; 8d 88 07
B1_070c:		sta $0789		; 8d 89 07
B1_070f:		sta $0789		; 8d 89 07
B1_0712:		inc $19			; e6 19
B1_0714:		rts				; 60 


B1_0715:		.db $00				; 00
B1_0716:		ora ($00, x)	; 01 00
B1_0718:		ora ($28, x)	; 01 28
B1_071a:		.db $00				; 00
B1_071b:		ora ($80, x)	; 01 80
B1_071d:		ora ($30, x)	; 01 30
B1_071f:	.db $80
B1_0720:	.db $ff
B1_0721:		jsr $4001		; 20 01 40
B1_0724:		lda #$00		; a9 00
B1_0726:		ldy $0784		; ac 84 07
B1_0729:		bpl B1_072d ; 10 02

B1_072b:		lda #$ff		; a9 ff
B1_072d:		sta $01			; 85 01
B1_072f:		lda $0788		; ad 88 07
B1_0732:		sec				; 38 
B1_0733:		sbc $0783		; ed83 07
B1_0736:		sta $0788		; 8d 88 07
B1_0739:		lda $fd			; a5 fd
B1_073b:		sbc $0784		; ed84 07
B1_073e:		sta $fd			; 85 fd
B1_0740:		lda $0789		; ad 89 07
B1_0743:		sbc $01			; e5 01
B1_0745:		sta $0789		; 8d 89 07
B1_0748:		and #$01		; 29 01
B1_074a:		sta $00			; 85 00
B1_074c:		lda $ff			; a5 ff
B1_074e:		and #$fe		; 29 fe
B1_0750:		ora $00			; 05 00
B1_0752:		sta $ff			; 85 ff
B1_0754:		lda $0789		; ad 89 07
B1_0757:		clc				; 18 
B1_0758:		adc $0785		; 6d 85 07
B1_075b:		sta $0789		; 8d 89 07
B1_075e:		lda $fc			; a5 fc
B1_0760:		adc $0786		; 6d 86 07
B1_0763:		sta $fc			; 85 fc
B1_0765:		dec $0787		; ce 87 07
B1_0768:		bne B1_07a9 ; d0 3f

B1_076a:		jsr $a871		; 20 71 a8
B1_076d:		jsr $a8ad		; 20 ad a8
B1_0770:		ldy $0780		; ac 80 07
B1_0773:		lda $a7aa, y	; b9 aa a7
B1_0776:		jsr func_1f_0ce9		; 20 e9 ec
B1_0779:		lda #$04		; a9 04
B1_077b:		jsr func_1f_0ce9		; 20 e9 ec
B1_077e:		ldx #$59		; a2 59
B1_0780:		lda #$19		; a9 19
B1_0782:		jsr func_1f_05c1		; 20 c1 e5
B1_0785:		lda $0780		; ad 80 07
B1_0788:		asl a			; 0a
B1_0789:		tay				; a8 
B1_078a:		lda $a7ad, y	; b9 ad a7
B1_078d:		sta $078d		; 8d 8d 07
B1_0790:		lda $a7ae, y	; b9 ae a7
B1_0793:		sta $078c		; 8d 8c 07
B1_0796:		lda #$00		; a9 00
B1_0798:		sta $078a		; 8d 8a 07
B1_079b:		lda $ff			; a5 ff
B1_079d:		ora #$01		; 09 01
B1_079f:		sta $078b		; 8d 8b 07
B1_07a2:		lda #$00		; a9 00
B1_07a4:		sta $0781		; 8d 81 07
B1_07a7:		inc $19			; e6 19
B1_07a9:		rts				; 60 


B1_07aa:	.db $14
B1_07ab:		ora $16, x		; 15 16
B1_07ad:	.db $22
B1_07ae:		jsr $e022		; 20 22 e0
B1_07b1:	.db $22
B1_07b2:		ldy #$a5		; a0 a5
B1_07b4:	.db $1a
B1_07b5:		and #$10		; 29 10
B1_07b7:		beq B1_07d1 ; f0 18

B1_07b9:		lda #$00		; a9 00
B1_07bb:		sta $07			; 85 07
B1_07bd:		ldy #$00		; a0 00
B1_07bf:		lda $0791, y	; b9 91 07
B1_07c2:		clc				; 18 
B1_07c3:		adc #$01		; 69 01
B1_07c5:		tax				; aa 
B1_07c6:		lda $07			; a5 07
B1_07c8:		sta $0470, x	; 9d 70 04
B1_07cb:		iny				; c8 
B1_07cc:		cpy #$04		; c0 04
B1_07ce:		bne B1_07bf ; d0 ef

B1_07d0:		rts				; 60 


B1_07d1:		lda #$80		; a9 80
B1_07d3:		bne B1_07bb ; d0 e6

B1_07d5:		lda $0780		; ad 80 07
B1_07d8:		asl a			; 0a
B1_07d9:		asl a			; 0a
B1_07da:		sta $07			; 85 07
B1_07dc:		tay				; a8 
B1_07dd:		lda $a826, y	; b9 26 a8
B1_07e0:		sta $08			; 85 08
B1_07e2:		lda $a827, y	; b9 27 a8
B1_07e5:		sta $09			; 85 09
B1_07e7:		ldx #$01		; a2 01
B1_07e9:		ldy #$00		; a0 00
B1_07eb:		lda ($08), y	; b1 08
B1_07ed:		cmp #$ff		; c9 ff
B1_07ef:		beq B1_07f8 ; f0 07

B1_07f1:		sta $0470, x	; 9d 70 04
B1_07f4:		inx				; e8 
B1_07f5:		iny				; c8 
B1_07f6:		bne B1_07eb ; d0 f3

B1_07f8:		ldy $07			; a4 07
B1_07fa:		lda $a828, y	; b9 28 a8
B1_07fd:		sta $08			; 85 08
B1_07ff:		lda $a829, y	; b9 29 a8
B1_0802:		sta $09			; 85 09
B1_0804:		ldy #$00		; a0 00
B1_0806:		lda $041c		; ad 1c 04
B1_0809:		cmp ($08), y	; d1 08
B1_080b:		bcc B1_080f ; 90 02

B1_080d:		iny				; c8 
B1_080e:		iny				; c8 
B1_080f:		iny				; c8 
B1_0810:		lda ($08), y	; b1 08
B1_0812:		sta $0a			; 85 0a
B1_0814:		iny				; c8 
B1_0815:		lda ($08), y	; b1 08
B1_0817:		sta $0b			; 85 0b
B1_0819:		ldy #$00		; a0 00
B1_081b:		lda ($0a), y	; b1 0a
B1_081d:		sta $0791, y	; 99 91 07
B1_0820:		iny				; c8 
B1_0821:		cpy #$04		; c0 04
B1_0823:		bne B1_081b ; d0 f6

B1_0825:		rts				; 60 


B1_0826:	.db $32
B1_0827:		tay				; a8 
B1_0828:		lsr a			; 4a
B1_0829:		tay				; a8 
B1_082a:	.db $3a
B1_082b:		tay				; a8 
B1_082c:	.db $4f
B1_082d:		tay				; a8 
B1_082e:	.db $42
B1_082f:		tay				; a8 
B1_0830:	.db $54
B1_0831:		tay				; a8 
B1_0832:		.db $00				; 00
B1_0833:	.db $80
B1_0834:	.db $80
B1_0835:	.db $80
B1_0836:	.db $80
B1_0837:	.db $80
B1_0838:	.db $80
B1_0839:	.db $ff
B1_083a:		.db $00				; 00
B1_083b:	.db $80
B1_083c:	.db $80
B1_083d:	.db $80
B1_083e:	.db $80
B1_083f:	.db $80
B1_0840:	.db $80
B1_0841:	.db $ff
B1_0842:		.db $00				; 00
B1_0843:	.db $80
B1_0844:	.db $80
B1_0845:	.db $80
B1_0846:	.db $80
B1_0847:	.db $80
B1_0848:	.db $80
B1_0849:	.db $ff
B1_084a:		ldy #$61		; a0 61
B1_084c:		tay				; a8 
B1_084d:		adc $a8			; 65 a8
B1_084f:		ldy #$59		; a0 59
B1_0851:		tay				; a8 
B1_0852:		eor $a0a8, x	; 5d a8 a0
B1_0855:		adc #$a8		; 69 a8
B1_0857:		adc $01a8		; 6d a8 01
B1_085a:	.db $02
B1_085b:	.db $03
B1_085c:		php				; 08 
B1_085d:	.db $04
B1_085e:		ora $06			; 05 06
B1_0860:		php				; 08 
B1_0861:		ora ($02, x)	; 01 02
B1_0863:	.db $03
B1_0864:		php				; 08 
B1_0865:	.db $04
B1_0866:		ora $06			; 05 06
B1_0868:		php				; 08 
B1_0869:		ora ($02, x)	; 01 02
B1_086b:	.db $03
B1_086c:		php				; 08 
B1_086d:	.db $04
B1_086e:		ora $06			; 05 06
B1_0870:		php				; 08 
B1_0871:		lda $0780		; ad 80 07
B1_0874:		asl a			; 0a
B1_0875:		tay				; a8 
B1_0876:		lda $add7, y	; b9 d7 ad
B1_0879:		sta $08			; 85 08
B1_087b:		lda $add8, y	; b9 d8 ad
B1_087e:		sta $09			; 85 09
B1_0880:		ldx #$01		; a2 01
B1_0882:		ldy #$00		; a0 00
B1_0884:		lda ($08), y	; b1 08
B1_0886:		cmp #$ff		; c9 ff
B1_0888:		beq B1_08ac ; f0 22

B1_088a:		sta $0400, x	; 9d 00 04
B1_088d:		lda #$0c		; a9 0c
B1_088f:		sta $048c, x	; 9d 8c 04
B1_0892:		lda #$01		; a9 01
B1_0894:		sta $04a8, x	; 9d a8 04
B1_0897:		lda #$80		; a9 80
B1_0899:		sta $0470, x	; 9d 70 04
B1_089c:		iny				; c8 
B1_089d:		lda ($08), y	; b1 08
B1_089f:		sta $0438, x	; 9d 38 04
B1_08a2:		iny				; c8 
B1_08a3:		lda ($08), y	; b1 08
B1_08a5:		sta $041c, x	; 9d 1c 04
B1_08a8:		iny				; c8 
B1_08a9:		inx				; e8 
B1_08aa:		bne B1_0884 ; d0 d8

B1_08ac:		rts				; 60 


B1_08ad:		jsr $e716		; 20 16 e7
B1_08b0:		ldy #$00		; a0 00
B1_08b2:		lda #$08		; a9 08
B1_08b4:		sta $0c			; 85 0c
B1_08b6:		lda $a8c3, y	; b9 c3 a8
B1_08b9:		sta $02ef, x	; 9d ef 02
B1_08bc:		iny				; c8 
B1_08bd:		inx				; e8 
B1_08be:		dec $0c			; c6 0c
B1_08c0:		bne B1_08b6 ; d0 f4

B1_08c2:		rts				; 60 


B1_08c3:	.db $0f
B1_08c4:	.db $0f
B1_08c5:		and ($20, x)	; 21 20
B1_08c7:	.db $0f
B1_08c8:	.db $0f
B1_08c9:	.db $07
B1_08ca:		jsr $b320		; 20 20 b3
B1_08cd:	.db $a7
B1_08ce:		lda $0780		; ad 80 07
B1_08d1:		asl a			; 0a
B1_08d2:		tay				; a8 
B1_08d3:		lda $ae2b, y	; b9 2b ae
B1_08d6:		sta $0a			; 85 0a
B1_08d8:		lda $ae2c, y	; b9 2c ae
B1_08db:		sta $0b			; 85 0b
B1_08dd:		lda $0781		; ad 81 07
B1_08e0:		asl a			; 0a
B1_08e1:		tay				; a8 
B1_08e2:		lda ($0a), y	; b1 0a
B1_08e4:		sta $08			; 85 08
B1_08e6:		iny				; c8 
B1_08e7:		cmp #$ff		; c9 ff
B1_08e9:		beq B1_08f6 ; f0 0b

B1_08eb:		lda ($0a), y	; b1 0a
B1_08ed:		sta $09			; 85 09
B1_08ef:		jsr $ad48		; 20 48 ad
B1_08f2:		inc $0781		; ee 81 07
B1_08f5:		rts				; 60 


B1_08f6:		lda ($0a), y	; b1 0a
B1_08f8:		cmp #$ff		; c9 ff
B1_08fa:		bne B1_08ed ; d0 f1

B1_08fc:		ldy $0780		; ac 80 07
B1_08ff:		lda $a90d, y	; b9 0d a9
B1_0902:		sta $0784		; 8d 84 07
B1_0905:		lda #$01		; a9 01
B1_0907:		sta $0782		; 8d 82 07
B1_090a:		inc $19			; e6 19
B1_090c:		rts				; 60 


B1_090d:	.db $02
B1_090e:	.db $02
B1_090f:		inc $d520, x	; fe 20 d5
B1_0912:	.db $a7
B1_0913:		lda #$00		; a9 00
B1_0915:		ldy $0784		; ac 84 07
B1_0918:		bpl B1_091c ; 10 02

B1_091a:		lda #$ff		; a9 ff
B1_091c:		sta $01			; 85 01
B1_091e:		sec				; 38 
B1_091f:		lda $078a		; ad 8a 07
B1_0922:		sbc $0784		; ed84 07
B1_0925:		sta $078a		; 8d 8a 07
B1_0928:		lda $0782		; ad 82 07
B1_092b:		sbc $01			; e5 01
B1_092d:		sta $0782		; 8d 82 07
B1_0930:		and #$01		; 29 01
B1_0932:		sta $00			; 85 00
B1_0934:		lda $078b		; ad 8b 07
B1_0937:		and #$fe		; 29 fe
B1_0939:		ora $00			; 05 00
B1_093b:		sta $078b		; 8d 8b 07
B1_093e:		lda $078a		; ad 8a 07
B1_0941:		bne B1_094a ; d0 07

B1_0943:		lda #$00		; a9 00
B1_0945:		sta $0565		; 8d 65 05
B1_0948:		inc $19			; e6 19
B1_094a:		rts				; 60 


B1_094b:		jsr $a7d5		; 20 d5 a7
B1_094e:		lda $0565		; ad 65 05
B1_0951:		cmp #$10		; c9 10
B1_0953:		beq B1_095f ; f0 0a

B1_0955:		cmp #$12		; c9 12
B1_0957:		beq B1_095f ; f0 06

B1_0959:		jsr $a7b3		; 20 b3 a7
B1_095c:		jmp $a962		; 4c 62 a9


B1_095f:		jsr $a7b9		; 20 b9 a7
B1_0962:		jsr $aa05		; 20 05 aa
B1_0965:		lda $0565		; ad 65 05
B1_0968:		cmp #$12		; c9 12
B1_096a:		bne B1_09a4 ; d0 38

B1_096c:		lda $0780		; ad 80 07
B1_096f:		asl a			; 0a
B1_0970:		tay				; a8 
B1_0971:		lda $a9a5, y	; b9 a5 a9
B1_0974:		sta $08			; 85 08
B1_0976:		lda $a9a6, y	; b9 a6 a9
B1_0979:		sta $09			; 85 09
B1_097b:		lda $0790		; ad 90 07
B1_097e:		asl a			; 0a
B1_097f:		clc				; 18 
B1_0980:		adc $0790		; 6d 90 07
B1_0983:		tay				; a8 
B1_0984:		lda ($08), y	; b1 08
B1_0986:		sta $32			; 85 32
B1_0988:		iny				; c8 
B1_0989:		lda ($08), y	; b1 08
B1_098b:		sta $33			; 85 33
B1_098d:		iny				; c8 
B1_098e:		lda ($08), y	; b1 08
B1_0990:		sta $34			; 85 34
B1_0992:		lda #$07		; a9 07
B1_0994:		sta $0160		; 8d 60 01
B1_0997:		lda #$b4		; a9 b4
B1_0999:		sta $30			; 85 30
B1_099b:		ldy #$00		; a0 00
B1_099d:		sty $b4			; 84 b4
B1_099f:		iny				; c8 
B1_09a0:		sty $b5			; 84 b5
B1_09a2:		inc $19			; e6 19
B1_09a4:		rts				; 60 


B1_09a5:	.db $ab
B1_09a6:		lda #$b4		; a9 b4
B1_09a8:		lda #$ba		; a9 ba
B1_09aa:		lda #$01		; a9 01
B1_09ac:		.db $00				; 00
B1_09ad:		.db $00				; 00
B1_09ae:		.db $00				; 00
B1_09af:		.db $00				; 00
B1_09b0:		.db $00				; 00
B1_09b1:	.db $02
B1_09b2:		.db $00				; 00
B1_09b3:		.db $00				; 00
B1_09b4:	.db $02
B1_09b5:	.db $03
B1_09b6:	.db $02
B1_09b7:		asl $00			; 06 00
B1_09b9:		ora ($07, x)	; 01 07
B1_09bb:		asl $00			; 06 00
B1_09bd:		php				; 08 
B1_09be:		.db $00				; 00
B1_09bf:		.db $00				; 00
B1_09c0:		dec $30			; c6 30
B1_09c2:		beq B1_09cc ; f0 08

B1_09c4:		lda $30			; a5 30
B1_09c6:		cmp #$30		; c9 30
B1_09c8:		bcs B1_09ce ; b0 04

B1_09ca:		bcc B1_09cf ; 90 03

B1_09cc:		inc $19			; e6 19
B1_09ce:		rts				; 60 


B1_09cf:		lda $b4			; a5 b4
B1_09d1:		cmp #$ff		; c9 ff
B1_09d3:		beq B1_09ce ; f0 f9

B1_09d5:		lda $1d			; a5 1d
B1_09d7:		pha				; 48 
B1_09d8:		ldy $0780		; ac 80 07
B1_09db:		lda $a7aa, y	; b9 aa a7
B1_09de:		jsr func_1f_0ce9		; 20 e9 ec
B1_09e1:		jsr $a8ad		; 20 ad a8
B1_09e4:		pla				; 68 
B1_09e5:		sta $15			; 85 15
B1_09e7:		jmp $fbaf		; 4c af fb


B1_09ea:		jsr $ebfd		; 20 fd eb
B1_09ed:		lda $0780		; ad 80 07
B1_09f0:		bne B1_09f5 ; d0 03

B1_09f2:		jsr $90c0		; 20 c0 90
B1_09f5:		jsr $e78a		; 20 8a e7
B1_09f8:		jsr $e68f		; 20 8f e6
B1_09fb:		lda #$04		; a9 04
B1_09fd:		sta $18			; 85 18
B1_09ff:		lda #$00		; a9 00
B1_0a01:		sta $2a			; 85 2a
B1_0a03:		rts				; 60 


B1_0a04:		rts				; 60 


B1_0a05:		lda $0565		; ad 65 05
B1_0a08:		cmp #$00		; c9 00
B1_0a0a:		beq B1_0a46 ; f0 3a

B1_0a0c:		cmp #$02		; c9 02
B1_0a0e:		beq B1_0a46 ; f0 36

B1_0a10:		cmp #$10		; c9 10
B1_0a12:		beq B1_0a46 ; f0 32

B1_0a14:		lda $0780		; ad 80 07
B1_0a17:		asl a			; 0a
B1_0a18:		tay				; a8 
B1_0a19:		lda $0438		; ad 38 04
B1_0a1c:		cmp $aa61, y	; d9 61 aa
B1_0a1f:		bcc B1_0a26 ; 90 05

B1_0a21:		cmp $aa62, y	; d9 62 aa
B1_0a24:		bcc B1_0a46 ; 90 20

B1_0a26:		lda $04a8		; ad a8 04
B1_0a29:		asl a			; 0a
B1_0a2a:		tay				; a8 
B1_0a2b:		lda $aa67, y	; b9 67 aa
B1_0a2e:		sta $04f2		; 8d f2 04
B1_0a31:		lda $aa68, y	; b9 68 aa
B1_0a34:		sta $0509		; 8d 09 05
B1_0a37:		lda #$10		; a9 10
B1_0a39:		sta $0565		; 8d 65 05
B1_0a3c:		lda #$58		; a9 58
B1_0a3e:		sta $0787		; 8d 87 07
B1_0a41:		lda #$00		; a9 00
B1_0a43:		jsr $ef57		; 20 57 ef
B1_0a46:		ldy $0565		; ac 65 05
B1_0a49:		jsr jumpTableNoPreserveY		; 20 86 e8
B1_0a4c:	.db $6b
B1_0a4d:		tax				; aa 
B1_0a4e:		;removed
	.db $f0 $aa

B1_0a50:		rol a			; 2a
B1_0a51:	.db $ab
B1_0a52:	.db $bb
B1_0a53:	.db $ab
B1_0a54:	.db $89
B1_0a55:		ldy $ac9d		; ac 9d ac
B1_0a58:		tay				; a8 
B1_0a59:		ldy $acea		; ac ea ac
B1_0a5c:		beq B1_0a08 ; f0 aa

B1_0a5e:		rts				; 60 


B1_0a5f:		tax				; aa 
B1_0a60:		rts				; 60 


B1_0a61:		.db $00				; 00
B1_0a62:		cpy #$00		; c0 00
B1_0a64:		cpy #$40		; c0 40
B1_0a66:	.db $ff
B1_0a67:		.db $00				; 00
B1_0a68:		cpy #$ff		; c0 ff
B1_0a6a:		rti				; 40 


B1_0a6b:		ldy $054e		; ac 4e 05
B1_0a6e:		lda $aada, y	; b9 da aa
B1_0a71:		sta $048c		; 8d 8c 04
B1_0a74:		lda #$02		; a9 02
B1_0a76:		sta $0400		; 8d 00 04
B1_0a79:		lda $0780		; ad 80 07
B1_0a7c:		asl a			; 0a
B1_0a7d:		sta $00			; 85 00
B1_0a7f:		asl a			; 0a
B1_0a80:		clc				; 18 
B1_0a81:		adc $00			; 65 00
B1_0a83:		tay				; a8 
B1_0a84:		lda $aade, y	; b9 de aa
B1_0a87:		sta $0438		; 8d 38 04
B1_0a8a:		lda $aadf, y	; b9 df aa
B1_0a8d:		ldx $054e		; ae 4e 05
B1_0a90:		cpx #$02		; e0 02
B1_0a92:		bne B1_0a97 ; d0 03

B1_0a94:		clc				; 18 
B1_0a95:		adc #$04		; 69 04
B1_0a97:		sta $041c		; 8d 1c 04
B1_0a9a:		lda $aae0, y	; b9 e0 aa
B1_0a9d:		sta $04a8		; 8d a8 04
B1_0aa0:		lda $aae1, y	; b9 e1 aa
B1_0aa3:		sta $04f2		; 8d f2 04
B1_0aa6:		lda $aae2, y	; b9 e2 aa
B1_0aa9:		sta $0509		; 8d 09 05
B1_0aac:		lda $aae3, y	; b9 e3 aa
B1_0aaf:		sta $0790		; 8d 90 07
B1_0ab2:		lda #$44		; a9 44
B1_0ab4:		sta $0787		; 8d 87 07
B1_0ab7:		lda #$00		; a9 00
B1_0ab9:		sta $68			; 85 68
B1_0abb:		sta $56			; 85 56
B1_0abd:		sta $57			; 85 57
B1_0abf:		lda $0780		; ad 80 07
B1_0ac2:		asl a			; 0a
B1_0ac3:		tay				; a8 
B1_0ac4:		lda $ad96, y	; b9 96 ad
B1_0ac7:		sta $69			; 85 69
B1_0ac9:		lda $ad97, y	; b9 97 ad
B1_0acc:		sta $6a			; 85 6a
B1_0ace:		lda #$00		; a9 00
B1_0ad0:		jsr $ef57		; 20 57 ef
B1_0ad3:		inc $0565		; ee 65 05
B1_0ad6:		inc $0565		; ee 65 05
B1_0ad9:		rts				; 60 


B1_0ada:		.db $00				; 00
B1_0adb:	.db $02
B1_0adc:	.db $04
B1_0add:		asl $08			; 06 08
B1_0adf:		ldy #$00		; a0 00
B1_0ae1:		.db $00				; 00
B1_0ae2:		cpy #$01		; c0 01
B1_0ae4:		php				; 08 
B1_0ae5:	.db $80
B1_0ae6:		.db $00				; 00
B1_0ae7:		.db $00				; 00
B1_0ae8:		cpy #$00		; c0 00
B1_0aea:		sed				; f8 
B1_0aeb:	.db $80
B1_0aec:		ora ($ff, x)	; 01 ff
B1_0aee:		rti				; 40 


B1_0aef:		.db $00				; 00
B1_0af0:		lda $1a			; a5 1a
B1_0af2:		and #$0f		; 29 0f
B1_0af4:		bne B1_0afb ; d0 05

B1_0af6:		lda #$09		; a9 09
B1_0af8:		jsr playSound		; 20 5f e2
B1_0afb:		jsr $ef73		; 20 73 ef
B1_0afe:		lda $04c4		; ad c4 04
B1_0b01:		clc				; 18 
B1_0b02:		adc $0509		; 6d 09 05
B1_0b05:		sta $04c4		; 8d c4 04
B1_0b08:		lda $0438		; ad 38 04
B1_0b0b:		adc $04f2		; 6d f2 04
B1_0b0e:		sta $0438		; 8d 38 04
B1_0b11:		cmp #$fe		; c9 fe
B1_0b13:		bcs B1_0b1e ; b0 09

B1_0b15:		cmp #$02		; c9 02
B1_0b17:		bcc B1_0b1e ; 90 05

B1_0b19:		dec $0787		; ce 87 07
B1_0b1c:		bne B1_0b29 ; d0 0b

B1_0b1e:		lda #$00		; a9 00
B1_0b20:		sta $0400		; 8d 00 04
B1_0b23:		inc $0565		; ee 65 05
B1_0b26:		inc $0565		; ee 65 05
B1_0b29:		rts				; 60 


B1_0b2a:		lda $28			; a5 28
B1_0b2c:		lsr a			; 4a
B1_0b2d:		bcs B1_0ba0 ; b0 71

B1_0b2f:		lsr a			; 4a
B1_0b30:		bcs B1_0ba4 ; b0 72

B1_0b32:		lsr a			; 4a
B1_0b33:		bcs B1_0b3e ; b0 09

B1_0b35:		lsr a			; 4a
B1_0b36:		bcs B1_0b4c ; b0 14

B1_0b38:		lda #$02		; a9 02
B1_0b3a:		sta $0400		; 8d 00 04
B1_0b3d:		rts				; 60 


B1_0b3e:		jsr $e6d4		; 20 d4 e6
B1_0b41:		bcc B1_0b38 ; 90 f5

B1_0b43:		lda #$00		; a9 00
B1_0b45:		sta $05c1		; 8d c1 05
B1_0b48:		ldx #$01		; a2 01
B1_0b4a:		bne B1_0b58 ; d0 0c

B1_0b4c:		jsr $e6df		; 20 df e6
B1_0b4f:		bcc B1_0b38 ; 90 e7

B1_0b51:		lda #$01		; a9 01
B1_0b53:		sta $05c1		; 8d c1 05
B1_0b56:		ldx #$00		; a2 00
B1_0b58:		ldy #$00		; a0 00
B1_0b5a:		lda $0a			; a5 0a
B1_0b5c:		asl a			; 0a
B1_0b5d:		bcc B1_0b64 ; 90 05

B1_0b5f:		txa				; 8a 
B1_0b60:		eor #$01		; 49 01
B1_0b62:		tax				; aa 
B1_0b63:		iny				; c8 
B1_0b64:		sty $05ef		; 8c ef 05
B1_0b67:		stx $04a8		; 8e a8 04
B1_0b6a:		lda $0b			; a5 0b
B1_0b6c:		sta $061d		; 8d 1d 06
B1_0b6f:		ldy #$00		; a0 00
B1_0b71:		asl a			; 0a
B1_0b72:		bcc B1_0b75 ; 90 01

B1_0b74:		iny				; c8 
B1_0b75:		sty $0606		; 8c 06 06
B1_0b78:		lda $0d			; a5 0d
B1_0b7a:		beq B1_0b82 ; f0 06

B1_0b7c:		lda #$ff		; a9 ff
B1_0b7e:		ldy #$00		; a0 00
B1_0b80:		beq B1_0b86 ; f0 04

B1_0b82:		lda #$01		; a9 01
B1_0b84:		ldy #$00		; a0 00
B1_0b86:		sty $0509		; 8c 09 05
B1_0b89:		sta $04f2		; 8d f2 04
B1_0b8c:		lda #$08		; a9 08
B1_0b8e:		sta $0565		; 8d 65 05
B1_0b91:		lda #$00		; a9 00
B1_0b93:		sta $05aa		; 8d aa 05
B1_0b96:		ldy #$02		; a0 02
B1_0b98:		sty $0593		; 8c 93 05
B1_0b9b:		dey				; 88 
B1_0b9c:		sty $057c		; 8c 7c 05
B1_0b9f:		rts				; 60 


B1_0ba0:		lda #$00		; a9 00
B1_0ba2:		beq B1_0ba6 ; f0 02

B1_0ba4:		lda #$01		; a9 01
B1_0ba6:		sta $04a8		; 8d a8 04
B1_0ba9:		lda #$00		; a9 00
B1_0bab:		sta $04f2		; 8d f2 04
B1_0bae:		sta $0509		; 8d 09 05
B1_0bb1:		lda #$06		; a9 06
B1_0bb3:		sta $0565		; 8d 65 05
B1_0bb6:		lda #$00		; a9 00
B1_0bb8:		jmp $ab93		; 4c 93 ab


B1_0bbb:		lda $28			; a5 28
B1_0bbd:		lsr a			; 4a
B1_0bbe:		bcs B1_0bdf ; b0 1f

B1_0bc0:		lsr a			; 4a
B1_0bc1:		bcs B1_0bfc ; b0 39

B1_0bc3:		lda #$04		; a9 04
B1_0bc5:		sta $0565		; 8d 65 05
B1_0bc8:		jsr $ef73		; 20 73 ef
B1_0bcb:		lda $04c4		; ad c4 04
B1_0bce:		clc				; 18 
B1_0bcf:		adc $0509		; 6d 09 05
B1_0bd2:		sta $04c4		; 8d c4 04
B1_0bd5:		lda $0438		; ad 38 04
B1_0bd8:		adc $04f2		; 6d f2 04
B1_0bdb:		sta $0438		; 8d 38 04
B1_0bde:		rts				; 60 


B1_0bdf:		lda #$00		; a9 00
B1_0be1:		sta $04a8		; 8d a8 04
B1_0be4:		jsr $ac28		; 20 28 ac
B1_0be7:		ldy #$02		; a0 02
B1_0be9:		lda ($0a), y	; b1 0a
B1_0beb:		cmp $0438		; cd 38 04
B1_0bee:		bcc B1_0bf7 ; 90 07

B1_0bf0:		lda #$01		; a9 01
B1_0bf2:		ldy #$00		; a0 00
B1_0bf4:		jmp $ac11		; 4c 11 ac


B1_0bf7:		lda #$00		; a9 00
B1_0bf9:		tay				; a8 
B1_0bfa:		beq B1_0c11 ; f0 15

B1_0bfc:		lda #$01		; a9 01
B1_0bfe:		sta $04a8		; 8d a8 04
B1_0c01:		jsr $ac28		; 20 28 ac
B1_0c04:		ldy #$01		; a0 01
B1_0c06:		lda ($0a), y	; b1 0a
B1_0c08:		cmp $0438		; cd 38 04
B1_0c0b:		bcs B1_0bf7 ; b0 ea

B1_0c0d:		lda #$ff		; a9 ff
B1_0c0f:		ldy #$00		; a0 00
B1_0c11:		sty $0509		; 8c 09 05
B1_0c14:		sta $04f2		; 8d f2 04
B1_0c17:		lda #$00		; a9 00
B1_0c19:		sta $0520		; 8d 20 05
B1_0c1c:		sta $0537		; 8d 37 05
B1_0c1f:		jmp $abc8		; 4c c8 ab


B1_0c22:		lda #$ff		; a9 ff
B1_0c24:		ldy #$e0		; a0 e0
B1_0c26:		bne B1_0c11 ; d0 e9

B1_0c28:		lda $0780		; ad 80 07
B1_0c2b:		asl a			; 0a
B1_0c2c:		tay				; a8 
B1_0c2d:		lda $adae, y	; b9 ae ad
B1_0c30:		sta $08			; 85 08
B1_0c32:		lda $adaf, y	; b9 af ad
B1_0c35:		sta $09			; 85 09
B1_0c37:		lda $0790		; ad 90 07
B1_0c3a:		asl a			; 0a
B1_0c3b:		tay				; a8 
B1_0c3c:		lda ($08), y	; b1 08
B1_0c3e:		sta $0a			; 85 0a
B1_0c40:		iny				; c8 
B1_0c41:		lda ($08), y	; b1 08
B1_0c43:		sta $0b			; 85 0b
B1_0c45:		rts				; 60 


B1_0c46:		lda $0780		; ad 80 07
B1_0c49:		asl a			; 0a
B1_0c4a:		tay				; a8 
B1_0c4b:		lda $ad9c, y	; b9 9c ad
B1_0c4e:		sta $08			; 85 08
B1_0c50:		lda $ad9d, y	; b9 9d ad
B1_0c53:		sta $09			; 85 09
B1_0c55:		ldy #$00		; a0 00
B1_0c57:		lda ($08), y	; b1 08
B1_0c59:		cmp #$ff		; c9 ff
B1_0c5b:		beq B1_0c7f ; f0 22

B1_0c5d:		sta $00			; 85 00
B1_0c5f:		ldx $054e		; ae 4e 05
B1_0c62:		cpx #$02		; e0 02
B1_0c64:		bne B1_0c6b ; d0 05

B1_0c66:		clc				; 18 
B1_0c67:		adc #$04		; 69 04
B1_0c69:		sta $00			; 85 00
B1_0c6b:		lda $00			; a5 00
B1_0c6d:		sec				; 38 
B1_0c6e:		sbc $041c		; ed1c 04
B1_0c71:		bcs B1_0c77 ; b0 04

B1_0c73:		eor #$ff		; 49 ff
B1_0c75:		adc #$01		; 69 01
B1_0c77:		cmp #$04		; c9 04
B1_0c79:		bcc B1_0c81 ; 90 06

B1_0c7b:		iny				; c8 
B1_0c7c:		iny				; c8 
B1_0c7d:		bne B1_0c57 ; d0 d8

B1_0c7f:		clc				; 18 
B1_0c80:		rts				; 60 


B1_0c81:		lda $00			; a5 00
B1_0c83:		tax				; aa 
B1_0c84:		iny				; c8 
B1_0c85:		lda ($08), y	; b1 08
B1_0c87:		sec				; 38 
B1_0c88:		rts				; 60 


B1_0c89:		lda $061d		; ad 1d 06
B1_0c8c:		beq B1_0c97 ; f0 09

B1_0c8e:		dec $061d		; ce 1d 06
B1_0c91:		jsr $ef73		; 20 73 ef
B1_0c94:		jmp $abcb		; 4c cb ab


B1_0c97:		lda #$0a		; a9 0a
B1_0c99:		sta $0565		; 8d 65 05
B1_0c9c:		rts				; 60 


B1_0c9d:		lda $05c1		; ad c1 05
B1_0ca0:		bne B1_0ca5 ; d0 03

B1_0ca2:		jmp $ad3c		; 4c 3c ad


B1_0ca5:		jmp $ad33		; 4c 33 ad


B1_0ca8:		lda $28			; a5 28
B1_0caa:		lsr a			; 4a
B1_0cab:		bcs B1_0cba ; b0 0d

B1_0cad:		lsr a			; 4a
B1_0cae:		bcs B1_0cd2 ; b0 22

B1_0cb0:		lsr a			; 4a
B1_0cb1:		bcc B1_0cb6 ; 90 03

B1_0cb3:		jmp $ad3c		; 4c 3c ad


B1_0cb6:		lsr a			; 4a
B1_0cb7:		bcs B1_0d33 ; b0 7a

B1_0cb9:		rts				; 60 


B1_0cba:		lda #$00		; a9 00
B1_0cbc:		sta $04a8		; 8d a8 04
B1_0cbf:		lda $05ef		; ad ef 05
B1_0cc2:		beq B1_0ccb ; f0 07

B1_0cc4:		ldx #$00		; a2 00
B1_0cc6:		ldy #$00		; a0 00
B1_0cc8:		jmp $ad42		; 4c 42 ad


B1_0ccb:		ldx #$02		; a2 02
B1_0ccd:		ldy #$08		; a0 08
B1_0ccf:		jmp $ad42		; 4c 42 ad


B1_0cd2:		lda #$01		; a9 01
B1_0cd4:		sta $04a8		; 8d a8 04
B1_0cd7:		lda $05ef		; ad ef 05
B1_0cda:		beq B1_0ce3 ; f0 07

B1_0cdc:		ldx #$02		; a2 02
B1_0cde:		ldy #$0c		; a0 0c
B1_0ce0:		jmp $ad42		; 4c 42 ad


B1_0ce3:		ldx #$00		; a2 00
B1_0ce5:		ldy #$04		; a0 04
B1_0ce7:		jmp $ad42		; 4c 42 ad


B1_0cea:		jsr $abcb		; 20 cb ab
B1_0ced:		lda $04db		; ad db 04
B1_0cf0:		clc				; 18 
B1_0cf1:		adc $0537		; 6d 37 05
B1_0cf4:		sta $04db		; 8d db 04
B1_0cf7:		lda $041c		; ad 1c 04
B1_0cfa:		adc $0520		; 6d 20 05
B1_0cfd:		sta $041c		; 8d 1c 04
B1_0d00:		lda $061d		; ad 1d 06
B1_0d03:		beq B1_0d14 ; f0 0f

B1_0d05:		dec $061d		; ce 1d 06
B1_0d08:		lda $057c		; ad 7c 05
B1_0d0b:		beq B1_0d11 ; f0 04

B1_0d0d:		dec $057c		; ce 7c 05
B1_0d10:		rts				; 60 


B1_0d11:		jmp $e6ea		; 4c ea e6


B1_0d14:		lda #$00		; a9 00
B1_0d16:		sta $04c4		; 8d c4 04
B1_0d19:		sta $04db		; 8d db 04
B1_0d1c:		jsr $ac46		; 20 46 ac
B1_0d1f:		bcc B1_0d2d ; 90 0c

B1_0d21:		sta $0790		; 8d 90 07
B1_0d24:		stx $041c		; 8e 1c 04
B1_0d27:		lda #$04		; a9 04
B1_0d29:		sta $0565		; 8d 65 05
B1_0d2c:		rts				; 60 


B1_0d2d:		lda #$0c		; a9 0c
B1_0d2f:		sta $0565		; 8d 65 05
B1_0d32:		rts				; 60 


B1_0d33:		jsr $e6f5		; 20 f5 e6
B1_0d36:		lda #$0e		; a9 0e
B1_0d38:		sta $0565		; 8d 65 05
B1_0d3b:		rts				; 60 


B1_0d3c:		jsr $e700		; 20 00 e7
B1_0d3f:		jmp $ad36		; 4c 36 ad


B1_0d42:		jsr $e70b		; 20 0b e7
B1_0d45:		jmp $ad36		; 4c 36 ad


B1_0d48:		ldy #$00		; a0 00
B1_0d4a:		lda ($08), y	; b1 08
B1_0d4c:		sta $62			; 85 62
B1_0d4e:		iny				; c8 
B1_0d4f:		lda ($08), y	; b1 08
B1_0d51:		sta $61			; 85 61
B1_0d53:		iny				; c8 
B1_0d54:		jsr $e8b5		; 20 b5 e8
B1_0d57:		lda ($08), y	; b1 08
B1_0d59:		beq B1_0d76 ; f0 1b

B1_0d5b:		cmp #$ff		; c9 ff
B1_0d5d:		beq B1_0d91 ; f0 32

B1_0d5f:		cmp #$fe		; c9 fe
B1_0d61:		beq B1_0d89 ; f0 26

B1_0d63:		iny				; c8 
B1_0d64:		lda ($08), y	; b1 08
B1_0d66:		sta $0a			; 85 0a
B1_0d68:		iny				; c8 
B1_0d69:		lda ($08), y	; b1 08
B1_0d6b:		sta $0300, x	; 9d 00 03
B1_0d6e:		iny				; c8 
B1_0d6f:		inx				; e8 
B1_0d70:		dec $0a			; c6 0a
B1_0d72:		bne B1_0d69 ; d0 f5

B1_0d74:		beq B1_0d57 ; f0 e1

B1_0d76:		iny				; c8 
B1_0d77:		lda ($08), y	; b1 08
B1_0d79:		sta $0a			; 85 0a
B1_0d7b:		iny				; c8 
B1_0d7c:		lda ($08), y	; b1 08
B1_0d7e:		iny				; c8 
B1_0d7f:		sta $0300, x	; 9d 00 03
B1_0d82:		inx				; e8 
B1_0d83:		dec $0a			; c6 0a
B1_0d85:		bne B1_0d7f ; d0 f8

B1_0d87:		beq B1_0d57 ; f0 ce

B1_0d89:		stx $1d			; 86 1d
B1_0d8b:		jsr $ed12		; 20 12 ed
B1_0d8e:		iny				; c8 
B1_0d8f:		bne B1_0d4a ; d0 b9

B1_0d91:		stx $1d			; 86 1d
B1_0d93:		jmp $ed12		; 4c 12 ed


B1_0d96:	.db $64
B1_0d97:		clv				; b8 
B1_0d98:		adc ($b8), y	; 71 b8
B1_0d9a:		sei				; 78 
B1_0d9b:		clv				; b8 
B1_0d9c:		ldx #$ad		; a2 ad
B1_0d9e:		lda #$ad		; a9 ad
B1_0da0:		lda #$ad		; a9 ad
B1_0da2:	.db $80
B1_0da3:		.db $00				; 00
B1_0da4:		ldy #$01		; a0 01
B1_0da6:		cpy #$02		; c0 02
B1_0da8:	.db $ff
B1_0da9:	.db $80
B1_0daa:		.db $00				; 00
B1_0dab:		cpy #$01		; c0 01
B1_0dad:	.db $ff
B1_0dae:		ldy $ad, x		; b4 ad
B1_0db0:		tsx				; ba 
B1_0db1:		lda $adbe		; ad be ad
B1_0db4:	.db $c2
B1_0db5:		lda $adc5		; ad c5 ad
B1_0db8:		iny				; c8 
B1_0db9:		lda $adcb		; ad cb ad
B1_0dbc:		dec $d1ad		; ce ad d1
B1_0dbf:		lda $add4		; ad d4 ad
B1_0dc2:	.db $80
B1_0dc3:	.db $80
B1_0dc4:		sed				; f8 
B1_0dc5:		ldy #$08		; a0 08
B1_0dc7:	.db $80
B1_0dc8:		cpy #$70		; c0 70
B1_0dca:		sed				; f8 
B1_0dcb:	.db $80
B1_0dcc:		php				; 08 
B1_0dcd:		sed				; f8 
B1_0dce:		cpy #$88		; c0 88
B1_0dd0:		sed				; f8 
B1_0dd1:	.db $80
B1_0dd2:		php				; 08 
B1_0dd3:		sed				; f8 
B1_0dd4:		cpy #$08		; c0 08
B1_0dd6:	.db $80
B1_0dd7:		cmp $f3ad, x	; dd ad f3
B1_0dda:		lda $ae09		; ad 09 ae
B1_0ddd:		ldy #$59		; a0 59
B1_0ddf:		and ($a2, x)	; 21 a2
B1_0de1:	.db $80
B1_0de2:		and #$d6		; 29 d6
B1_0de4:		bvs B1_0e0e ; 70 28

B1_0de6:		cld				; d8 
B1_0de7:	.db $72
B1_0de8:		ora $6aa4		; 0d a4 6a
B1_0deb:		bmi B1_0d93 ; 30 a6

B1_0ded:		adc ($4d, x)	; 61 4d
B1_0def:		dec $6e, x		; d6 6e
B1_0df1:		bit $ff			; 24 ff
B1_0df3:		ldx $65			; a6 65
B1_0df5:		and $7fa8		; 2d a8 7f
B1_0df8:	.db $3f
B1_0df9:		dec $71, x		; d6 71
B1_0dfb:		and $89d8		; 2d d8 89
B1_0dfe:	.db $3b
B1_0dff:	.db $b2
B1_0e00:		ror $d648		; 6e 48 d6
B1_0e03:		adc ($2d), y	; 71 2d
B1_0e05:		cld				; d8 
B1_0e06:		sei				; 78 
B1_0e07:		eor $b4ff		; 4d ff b4
B1_0e0a:	.db $64
B1_0e0b:		jmp $8ab6		; 4c b6 8a


B1_0e0e:		and $7bd6, x	; 3d d6 7b
B1_0e11:		bmi B1_0deb ; 30 d8

B1_0e13:	.db $8b
B1_0e14:	.db $22
B1_0e15:		clv				; b8 
B1_0e16:		sta $d64c, x	; 9d 4c d6
B1_0e19:	.db $80
B1_0e1a:	.db $32
B1_0e1b:		cld				; d8 
B1_0e1c:		lda #$37		; a9 37
B1_0e1e:	.db $ff
B1_0e1f:	.db $a3
B1_0e20:		ldx $aeaf		; ae af ae
B1_0e23:	.db $bb
B1_0e24:		ldx $ae31		; ae 31 ae
B1_0e27:	.db $43
B1_0e28:		ldx $ae55		; ae 55 ae
B1_0e2b:	.db $67
B1_0e2c:		ldx $ae7b		; ae 7b ae
B1_0e2f:	.db $8f
B1_0e30:		ldx $aec7		; ae c7 ae
B1_0e33:	.db $d3
B1_0e34:		ldx $aeeb		; ae eb ae
B1_0e37:	.db $03
B1_0e38:	.db $af
B1_0e39:	.db $1b
B1_0e3a:	.db $af
B1_0e3b:	.db $4b
B1_0e3c:	.db $af
B1_0e3d:	.db $7b
B1_0e3e:	.db $af
B1_0e3f:	.db $ab
B1_0e40:	.db $af
B1_0e41:	.db $ff
B1_0e42:	.db $ff
B1_0e43:	.db $c7
B1_0e44:		ldx $aedf		; ae df ae
B1_0e47:	.db $f7
B1_0e48:		ldx $af0f		; ae 0f af
B1_0e4b:	.db $3f
B1_0e4c:	.db $af
B1_0e4d:	.db $6f
B1_0e4e:	.db $af
B1_0e4f:	.db $9f
B1_0e50:	.db $af
B1_0e51:	.db $cf
B1_0e52:	.db $af
B1_0e53:	.db $ff
B1_0e54:	.db $ff
B1_0e55:	.db $c7
B1_0e56:		ldx $aedf		; ae df ae
B1_0e59:	.db $f7
B1_0e5a:		ldx $af0f		; ae 0f af
B1_0e5d:	.db $27
B1_0e5e:	.db $af
B1_0e5f:	.db $57
B1_0e60:	.db $af
B1_0e61:	.db $87
B1_0e62:	.db $af
B1_0e63:	.db $b7
B1_0e64:	.db $af
B1_0e65:	.db $ff
B1_0e66:	.db $ff
B1_0e67:		and $42b1		; 2d b1 42
B1_0e6a:		lda ($69), y	; b1 69
B1_0e6c:		lda ($8c), y	; b1 8c
B1_0e6e:		lda ($c2), y	; b1 c2
B1_0e70:		lda ($ec), y	; b1 ec
B1_0e72:		lda ($22), y	; b1 22
B1_0e74:	.db $b2
B1_0e75:	.db $3c
B1_0e76:	.db $b2
B1_0e77:		lsr $ffb2		; 4e b2 ff
B1_0e7a:	.db $ff
B1_0e7b:	.db $db
B1_0e7c:	.db $af
B1_0e7d:	.db $f7
B1_0e7e:	.db $af
B1_0e7f:	.db $3c
B1_0e80:		bcs B1_0ee3 ; b0 61

B1_0e82:		bcs B1_0e06 ; b0 82

B1_0e84:		bcs B1_0e27 ; b0 a1

B1_0e86:		bcs B1_0e4e ; b0 c6

B1_0e88:		bcs B1_0e76 ; b0 ec

B1_0e8a:		;removed
	.db $b0 $fb

B1_0e8c:		;removed
	.db $b0 $ff

B1_0e8e:	.db $ff
B1_0e8f:		dey				; 88 
B1_0e90:	.db $b2
B1_0e91:		lda $f2b2		; ad b2 f2
B1_0e94:	.db $b2
B1_0e95:	.db $17
B1_0e96:	.db $b3
B1_0e97:	.db $33
B1_0e98:	.db $b3
B1_0e99:	.db $53
B1_0e9a:	.db $b3
B1_0e9b:		adc $a2b3, x	; 7d b3 a2
B1_0e9e:	.db $b3
B1_0e9f:		lda ($b3), y	; b1 b3
B1_0ea1:	.db $ff
B1_0ea2:	.db $ff
B1_0ea3:	.db $23
B1_0ea4:		bne B1_0ea6 ; d0 00

B1_0ea6:		ora $00			; 05 00
B1_0ea8:		inc $d823, x	; fe 23 d8
B1_0eab:		.db $00				; 00
B1_0eac:		ora $00			; 05 00
B1_0eae:	.db $ff
B1_0eaf:	.db $23
B1_0eb0:		cld				; d8 
B1_0eb1:		.db $00				; 00
B1_0eb2:	.db $04
B1_0eb3:		.db $00				; 00
B1_0eb4:		inc $e023, x	; fe 23 e0
B1_0eb7:		.db $00				; 00
B1_0eb8:	.db $04
B1_0eb9:		.db $00				; 00
B1_0eba:	.db $ff
B1_0ebb:	.db $23
B1_0ebc:	.db $db
B1_0ebd:		.db $00				; 00
B1_0ebe:	.db $04
B1_0ebf:		.db $00				; 00
B1_0ec0:		inc $e323, x	; fe 23 e3
B1_0ec3:		.db $00				; 00
B1_0ec4:	.db $04
B1_0ec5:		.db $00				; 00
B1_0ec6:	.db $ff
B1_0ec7:	.db $20 $83 $00
B1_0eca:	.db $1a
B1_0ecb:		.db $00				; 00
B1_0ecc:		inc $a320, x	; fe 20 a3
B1_0ecf:		.db $00				; 00
B1_0ed0:	.db $1a
B1_0ed1:		.db $00				; 00
B1_0ed2:	.db $ff
B1_0ed3:	.db $20 $c3 $00
B1_0ed6:	.db $1a
B1_0ed7:		.db $00				; 00
B1_0ed8:		inc $e320, x	; fe 20 e3
B1_0edb:		.db $00				; 00
B1_0edc:	.db $1a
B1_0edd:		.db $00				; 00
B1_0ede:	.db $ff
B1_0edf:	.db $20 $c3 $00
B1_0ee2:	.db $1a
B1_0ee3:		.db $00				; 00
B1_0ee4:		inc $e320, x	; fe 20 e3
B1_0ee7:		.db $00				; 00
B1_0ee8:	.db $1a
B1_0ee9:		.db $00				; 00
B1_0eea:	.db $ff
B1_0eeb:		and ($14, x)	; 21 14
B1_0eed:		.db $00				; 00
B1_0eee:		ora #$00		; 09 00
B1_0ef0:		inc $3421, x	; fe 21 34
B1_0ef3:		.db $00				; 00
B1_0ef4:		ora #$00		; 09 00
B1_0ef6:	.db $ff
B1_0ef7:		and ($03, x)	; 21 03
B1_0ef9:		.db $00				; 00
B1_0efa:	.db $1a
B1_0efb:		.db $00				; 00
B1_0efc:		inc $2321, x	; fe 21 23
B1_0eff:		.db $00				; 00
B1_0f00:	.db $1a
B1_0f01:		.db $00				; 00
B1_0f02:	.db $ff
B1_0f03:		and ($54, x)	; 21 54
B1_0f05:		.db $00				; 00
B1_0f06:		ora #$00		; 09 00
B1_0f08:		inc $7421, x	; fe 21 74
B1_0f0b:		.db $00				; 00
B1_0f0c:		ora #$00		; 09 00
B1_0f0e:	.db $ff
B1_0f0f:		and ($43, x)	; 21 43
B1_0f11:		.db $00				; 00
B1_0f12:	.db $1a
B1_0f13:		.db $00				; 00
B1_0f14:		inc $6321, x	; fe 21 63
B1_0f17:		.db $00				; 00
B1_0f18:	.db $1a
B1_0f19:		.db $00				; 00
B1_0f1a:	.db $ff
B1_0f1b:		and ($94, x)	; 21 94
B1_0f1d:		.db $00				; 00
B1_0f1e:		ora #$00		; 09 00
B1_0f20:		inc $b421, x	; fe 21 b4
B1_0f23:		.db $00				; 00
B1_0f24:		ora #$00		; 09 00
B1_0f26:	.db $ff
B1_0f27:		and ($83, x)	; 21 83
B1_0f29:		.db $00				; 00
B1_0f2a:		ora #$00		; 09 00
B1_0f2c:		inc $9c21, x	; fe 21 9c
B1_0f2f:		.db $00				; 00
B1_0f30:		ora ($00, x)	; 01 00
B1_0f32:		inc $a321, x	; fe 21 a3
B1_0f35:		.db $00				; 00
B1_0f36:		ora #$00		; 09 00
B1_0f38:		inc $bc21, x	; fe 21 bc
B1_0f3b:		.db $00				; 00
B1_0f3c:		ora ($00, x)	; 01 00
B1_0f3e:	.db $ff
B1_0f3f:		and ($90, x)	; 21 90
B1_0f41:		.db $00				; 00
B1_0f42:		ora $fe00		; 0d 00 fe
B1_0f45:		and ($b0, x)	; 21 b0
B1_0f47:		.db $00				; 00
B1_0f48:		ora $ff00		; 0d 00 ff
B1_0f4b:		and ($d4, x)	; 21 d4
B1_0f4d:		.db $00				; 00
B1_0f4e:		ora #$00		; 09 00
B1_0f50:		inc $f421, x	; fe 21 f4
B1_0f53:		.db $00				; 00
B1_0f54:		ora #$00		; 09 00
B1_0f56:	.db $ff
B1_0f57:		and ($c3, x)	; 21 c3
B1_0f59:		.db $00				; 00
B1_0f5a:		ora #$00		; 09 00
B1_0f5c:		inc $dc21, x	; fe 21 dc
B1_0f5f:		.db $00				; 00
B1_0f60:		ora ($00, x)	; 01 00
B1_0f62:		inc $e321, x	; fe 21 e3
B1_0f65:		.db $00				; 00
B1_0f66:		ora #$00		; 09 00
B1_0f68:		inc $fc21, x	; fe 21 fc
B1_0f6b:		.db $00				; 00
B1_0f6c:		ora ($00, x)	; 01 00
B1_0f6e:	.db $ff
B1_0f6f:		and ($d0, x)	; 21 d0
B1_0f71:		.db $00				; 00
B1_0f72:		ora $fe00		; 0d 00 fe
B1_0f75:		and ($f0, x)	; 21 f0
B1_0f77:		.db $00				; 00
B1_0f78:		ora $ff00		; 0d 00 ff
B1_0f7b:	.db $22
B1_0f7c:	.db $03
B1_0f7d:		.db $00				; 00
B1_0f7e:	.db $1a
B1_0f7f:		.db $00				; 00
B1_0f80:		inc $2322, x	; fe 22 23
B1_0f83:		.db $00				; 00
B1_0f84:	.db $1a
B1_0f85:		.db $00				; 00
B1_0f86:	.db $ff
B1_0f87:	.db $22
B1_0f88:	.db $03
B1_0f89:		.db $00				; 00
B1_0f8a:		ora #$00		; 09 00
B1_0f8c:		inc $1c22, x	; fe 22 1c
B1_0f8f:		.db $00				; 00
B1_0f90:		ora ($00, x)	; 01 00
B1_0f92:		inc $2322, x	; fe 22 23
B1_0f95:		.db $00				; 00
B1_0f96:		ora #$00		; 09 00
B1_0f98:		inc $3c22, x	; fe 22 3c
B1_0f9b:		.db $00				; 00
B1_0f9c:		ora ($00, x)	; 01 00
B1_0f9e:	.db $ff
B1_0f9f:	.db $22
B1_0fa0:		bpl B1_0fa2 ; 10 00

B1_0fa2:		ora $fe00		; 0d 00 fe
B1_0fa5:	.db $22
B1_0fa6:		bmi B1_0fa8 ; 30 00

B1_0fa8:		ora $ff00		; 0d 00 ff
B1_0fab:	.db $22
B1_0fac:	.db $43
B1_0fad:		.db $00				; 00
B1_0fae:	.db $1a
B1_0faf:		.db $00				; 00
B1_0fb0:		inc $6322, x	; fe 22 63
B1_0fb3:		.db $00				; 00
B1_0fb4:	.db $1a
B1_0fb5:		.db $00				; 00
B1_0fb6:	.db $ff
B1_0fb7:	.db $22
B1_0fb8:	.db $43
B1_0fb9:		.db $00				; 00
B1_0fba:		ora #$00		; 09 00
B1_0fbc:		inc $5c22, x	; fe 22 5c
B1_0fbf:		.db $00				; 00
B1_0fc0:		ora ($00, x)	; 01 00
B1_0fc2:		inc $6322, x	; fe 22 63
B1_0fc5:		.db $00				; 00
B1_0fc6:		ora #$00		; 09 00
B1_0fc8:		inc $7c22, x	; fe 22 7c
B1_0fcb:		.db $00				; 00
B1_0fcc:		ora ($00, x)	; 01 00
B1_0fce:	.db $ff
B1_0fcf:	.db $22
B1_0fd0:		bvc B1_0fd2 ; 50 00

B1_0fd2:		ora $fe00		; 0d 00 fe
B1_0fd5:	.db $22
B1_0fd6:		bvs B1_0fd8 ; 70 00

B1_0fd8:		ora $ff00		; 0d 00 ff
B1_0fdb:	.db $23
B1_0fdc:		jsr $0c00		; 20 00 0c
B1_0fdf:		.db $00				; 00
B1_0fe0:	.db $80
B1_0fe1:	.db $14
B1_0fe2:	.db $7a
B1_0fe3:		.db $00				; 00
B1_0fe4:		eor $82			; 45 82
B1_0fe6:		eor $82			; 45 82
B1_0fe8:		.db $00				; 00
B1_0fe9:		.db $00				; 00
B1_0fea:		eor $44			; 45 44
B1_0fec:		eor $46			; 45 46
B1_0fee:		lsr $46, x		; 56 46
B1_0ff0:		.db $00				; 00
B1_0ff1:		lsr $56			; 46 56
B1_0ff3:		.db $00				; 00
B1_0ff4:		.db $00				; 00
B1_0ff5:		.db $00				; 00
B1_0ff6:	.db $ff
B1_0ff7:	.db $23
B1_0ff8:		rti				; 40 


B1_0ff9:	.db $80
B1_0ffa:		rti				; 40 


B1_0ffb:		.db $00				; 00
B1_0ffc:		.db $00				; 00
B1_0ffd:	.db $7a
B1_0ffe:	.db $7a
B1_0fff:	.db $5f
B1_1000:	.db $5f
B1_1001:	.db $6f
B1_1002:	.db $5f
B1_1003:		.db $00				; 00
B1_1004:		.db $00				; 00
B1_1005:		sta ($82, x)	; 81 82
B1_1007:	.db $82
B1_1008:		.db $00				; 00
B1_1009:	.db $8b
B1_100a:	.db $64
B1_100b:	.db $80
B1_100c:	.db $80
B1_100d:	.db $82
B1_100e:		.db $00				; 00
B1_100f:	.db $8b
B1_1010:	.db $80
B1_1011:		;removed
	.db $90 $91

B1_1013:		eor $79			; 45 79
B1_1015:	.db $9b
B1_1016:	.db $7a
B1_1017:		.db $00				; 00
B1_1018:		lsr $00			; 46 00
B1_101a:		.db $00				; 00
B1_101b:		.db $00				; 00
B1_101c:		.db $00				; 00
B1_101d:	.db $5f
B1_101e:	.db $6f
B1_101f:	.db $5f
B1_1020:	.db $7a
B1_1021:	.db $7a
B1_1022:	.db $6f
B1_1023:	.db $5f
B1_1024:		.db $00				; 00
B1_1025:		sta ($8b), y	; 91 8b
B1_1027:		bcc B1_1029 ; 90 00

B1_1029:		.db $00				; 00
B1_102a:		.db $00				; 00
B1_102b:		sta ($8b), y	; 91 8b
B1_102d:		bcc B1_102f ; 90 00

B1_102f:		.db $00				; 00
B1_1030:	.db $64
B1_1031:		.db $00				; 00
B1_1032:		.db $00				; 00
B1_1033:		.db $00				; 00
B1_1034:		.db $00				; 00
B1_1035:	.db $ab
B1_1036:		.db $00				; 00
B1_1037:	.db $ac $00 $00
B1_103a:		.db $00				; 00
B1_103b:	.db $ff
B1_103c:	.db $23
B1_103d:	.db $80
B1_103e:	.db $80
B1_103f:	.db $20 $00 $00
B1_1042:	.db $7a
B1_1043:	.db $7a
B1_1044:	.db $6f
B1_1045:	.db $5f
B1_1046:	.db $6f
B1_1047:	.db $5f
B1_1048:	.db $7a
B1_1049:	.db $6f
B1_104a:	.db $5f
B1_104b:	.db $7a
B1_104c:	.db $5f
B1_104d:	.db $7a
B1_104e:	.db $7a
B1_104f:		txa				; 8a 
B1_1050:	.db $89
B1_1051:		txa				; 8a 
B1_1052:	.db $89
B1_1053:	.db $89
B1_1054:		txa				; 8a 
B1_1055:		txa				; 8a 
B1_1056:	.db $7a
B1_1057:		adc $7a8e, y	; 79 8e 7a
B1_105a:		stx $8e79		; 8e 79 8e
B1_105d:	.db $7a
B1_105e:		.db $00				; 00
B1_105f:		.db $00				; 00
B1_1060:	.db $ff
B1_1061:		jsr $8000		; 20 00 80
B1_1064:		asl $7c7c		; 0e 7c 7c
B1_1067:	.db $7f
B1_1068:	.db $7f
B1_1069:	.db $7f
B1_106a:	.db $7f
B1_106b:	.db $7f
B1_106c:	.db $7f
B1_106d:	.db $7f
B1_106e:	.db $7f
B1_106f:	.db $7f
B1_1070:	.db $7f
B1_1071:	.db $7e $7d $00
B1_1074:		bpl B1_10f5 ; 10 7f

B1_1076:		.db $00				; 00
B1_1077:	.db $02
B1_1078:	.db $7c
B1_1079:		.db $00				; 00
B1_107a:		ora $8000		; 0d 00 80
B1_107d:	.db $03
B1_107e:	.db $bf
B1_107f:		.db $00				; 00
B1_1080:		.db $00				; 00
B1_1081:	.db $ff
B1_1082:	.db $20 $40 $00
B1_1085:		asl $8000		; 0e 00 80
B1_1088:		ora ($bf, x)	; 01 bf
B1_108a:		.db $00				; 00
B1_108b:		jsr $8000		; 20 00 80
B1_108e:		ora ($bf), y	; 11 bf
B1_1090:		.db $00				; 00
B1_1091:		sta ($81, x)	; 81 81
B1_1093:		adc $4445, y	; 79 45 44
B1_1096:	.db $7a
B1_1097:		.db $00				; 00
B1_1098:		.db $00				; 00
B1_1099:		adc $4445, y	; 79 45 44
B1_109c:	.db $79 $7a $00
B1_109f:		.db $00				; 00
B1_10a0:	.db $ff
B1_10a1:		jsr $8090		; 20 90 80
B1_10a4:	.db $0c
B1_10a5:	.db $bf
B1_10a6:		.db $00				; 00
B1_10a7:	.db $64
B1_10a8:		bcc B1_103b ; 90 91

B1_10aa:		bcc B1_10ac ; 90 00

B1_10ac:		.db $00				; 00
B1_10ad:	.db $87
B1_10ae:		dey				; 88 
B1_10af:		sta ($90), y	; 91 90
B1_10b1:		.db $00				; 00
B1_10b2:		ora $00, x		; 15 00
B1_10b4:	.db $80
B1_10b5:	.db $0f
B1_10b6:	.db $bf
B1_10b7:		.db $00				; 00
B1_10b8:		.db $00				; 00
B1_10b9:		.db $00				; 00
B1_10ba:		.db $00				; 00
B1_10bb:	.db $87
B1_10bc:		dey				; 88 
B1_10bd:	.db $97
B1_10be:		tya				; 98 
B1_10bf:		.db $00				; 00
B1_10c0:	.db $99 $9a $00
B1_10c3:		.db $00				; 00
B1_10c4:		.db $00				; 00
B1_10c5:	.db $ff
B1_10c6:	.db $20 $c0 $00
B1_10c9:		asl $8000		; 0e 00 80
B1_10cc:		;removed
	.db $10 $7c

B1_10ce:	.db $7c
B1_10cf:		.db $00				; 00
B1_10d0:		.db $00				; 00
B1_10d1:	.db $bf
B1_10d2:		.db $00				; 00
B1_10d3:		tax				; aa 
B1_10d4:		lda #$a7		; a9 a7
B1_10d6:		tay				; a8 
B1_10d7:	.db $a7
B1_10d8:		tay				; a8 
B1_10d9:		lda $a9			; a5 a9
B1_10db:		tax				; aa 
B1_10dc:		lda $00			; a5 00
B1_10de:		bpl B1_10e0 ; 10 00

B1_10e0:	.db $80
B1_10e1:		asl $7c			; 06 7c
B1_10e3:	.db $7c
B1_10e4:		.db $00				; 00
B1_10e5:		.db $00				; 00
B1_10e6:		.db $00				; 00
B1_10e7:	.db $bf
B1_10e8:		.db $00				; 00
B1_10e9:	.db $0c
B1_10ea:		.db $00				; 00
B1_10eb:	.db $ff
B1_10ec:		and ($00, x)	; 21 00
B1_10ee:		.db $00				; 00
B1_10ef:	.db $0e $00 $00
B1_10f2:	.db $02
B1_10f3:	.db $7c
B1_10f4:		.db $00				; 00
B1_10f5:	.db $0e $7f $00
B1_10f8:	.db $02
B1_10f9:	.db $7c
B1_10fa:	.db $ff
B1_10fb:	.db $23
B1_10fc:		beq B1_107e ; f0 80

B1_10fe:		bpl B1_1155 ; 10 55

B1_1100:		eor $55, x		; 55 55
B1_1102:		eor $55, x		; 55 55
B1_1104:		eor $55, x		; 55 55
B1_1106:		ora ($05), y	; 11 05
B1_1108:		ora $05			; 05 05
B1_110a:		ora #$0a		; 09 0a
B1_110c:		asl $05			; 06 05
B1_110e:		ora ($fe, x)	; 01 fe
B1_1110:	.db $23
B1_1111:		cpy #$80		; c0 80
B1_1113:		clc				; 18 
B1_1114:		.db $00				; 00
B1_1115:		.db $00				; 00
B1_1116:		.db $00				; 00
B1_1117:		.db $00				; 00
B1_1118:		bvc B1_116a ; 50 50

B1_111a:		bvc B1_112c ; 50 10

B1_111c:		.db $00				; 00
B1_111d:		.db $00				; 00
B1_111e:		.db $00				; 00
B1_111f:		.db $00				; 00
B1_1120:		php				; 08 
B1_1121:		inc $32fb, x	; fe fb 32
B1_1124:		.db $00				; 00
B1_1125:		.db $00				; 00
B1_1126:		.db $00				; 00
B1_1127:		.db $00				; 00
B1_1128:		.db $00				; 00
B1_1129:		.db $00				; 00
B1_112a:		.db $00				; 00
B1_112b:		.db $00				; 00
B1_112c:	.db $ff
B1_112d:	.db $22
B1_112e:		rts				; 60 


B1_112f:		.db $00				; 00
B1_1130:	.db $13
B1_1131:		.db $00				; 00
B1_1132:	.db $80
B1_1133:		ora $4581		; 0d 81 45
B1_1136:	.db $44
B1_1137:		ldx #$a3		; a2 a3
B1_1139:		.db $00				; 00
B1_113a:	.db $83
B1_113b:		sty $85			; 84 85
B1_113d:		stx $a3			; 86 a3
B1_113f:		.db $00				; 00
B1_1140:		.db $00				; 00
B1_1141:	.db $ff
B1_1142:	.db $22
B1_1143:	.db $80
B1_1144:		.db $00				; 00
B1_1145:	.db $12
B1_1146:		.db $00				; 00
B1_1147:	.db $80
B1_1148:	.db $0c
B1_1149:		sta ($65, x)	; 81 65
B1_114b:	.db $80
B1_114c:	.db $80
B1_114d:		ldx #$a3		; a2 a3
B1_114f:		.db $00				; 00
B1_1150:		stx $94, y		; 96 94
B1_1152:		sta $96, x		; 95 96
B1_1154:	.db $a3
B1_1155:		.db $00				; 00
B1_1156:	.db $14
B1_1157:		.db $00				; 00
B1_1158:	.db $80
B1_1159:		asl $8065		; 0e 65 80
B1_115c:	.db $80
B1_115d:	.db $80
B1_115e:		ldx #$a3		; a2 a3
B1_1160:		ldy $a6			; a4 a6
B1_1162:		ldy $94			; a4 94
B1_1164:		ldx $b3			; a6 b3
B1_1166:		.db $00				; 00
B1_1167:		.db $00				; 00
B1_1168:	.db $ff
B1_1169:	.db $22
B1_116a:		cpy #$00		; c0 00
B1_116c:	.db $12
B1_116d:		.db $00				; 00
B1_116e:	.db $80
B1_116f:	.db $0c
B1_1170:	.db $92
B1_1171:		tsx				; ba 
B1_1172:	.db $bb
B1_1173:		ldy $b3b2, x	; bc b2 b3
B1_1176:		ldy $a6			; a4 a6
B1_1178:		ldy $b5, x		; b4 b5
B1_117a:		ldx $a3			; a6 a3
B1_117c:		.db $00				; 00
B1_117d:		ora $00			; 05 00
B1_117f:	.db $80
B1_1180:	.db $07
B1_1181:		sta ($45, x)	; 81 45
B1_1183:	.db $44
B1_1184:		eor $44			; 45 44
B1_1186:		eor $81			; 45 81
B1_1188:		.db $00				; 00
B1_1189:		asl $00, x		; 16 00
B1_118b:	.db $ff
B1_118c:	.db $23
B1_118d:		.db $00				; 00
B1_118e:		.db $00				; 00
B1_118f:	.db $03
B1_1190:		.db $00				; 00
B1_1191:	.db $80
B1_1192:		php				; 08 
B1_1193:		sta ($90), y	; 91 90
B1_1195:		sta ($92), y	; 91 92
B1_1197:	.db $80
B1_1198:	.db $80
B1_1199:	.db $82
B1_119a:		adc $0500, y	; 79 00 05
B1_119d:		.db $00				; 00
B1_119e:	.db $80
B1_119f:		ora $7f			; 05 7f
B1_11a1:	.db $7f
B1_11a2:	.db $7f
B1_11a3:	.db $7e $7d $00
B1_11a6:		ora #$7f		; 09 7f
B1_11a8:	.db $80
B1_11a9:		asl $7c7c		; 0e 7c 7c
B1_11ac:		.db $00				; 00
B1_11ad:		.db $00				; 00
B1_11ae:		.db $00				; 00
B1_11af:		lda ($00, x)	; a1 00
B1_11b1:		lda ($00, x)	; a1 00
B1_11b3:		.db $00				; 00
B1_11b4:		sta ($80), y	; 91 80
B1_11b6:	.db $8b
B1_11b7:	.db $7a
B1_11b8:		.db $00				; 00
B1_11b9:		asl $00			; 06 00
B1_11bb:	.db $80
B1_11bc:		ora ($7e, x)	; 01 7e
B1_11be:		.db $00				; 00
B1_11bf:		ora $ff00		; 0d 00 ff
B1_11c2:	.db $23
B1_11c3:		rti				; 40 


B1_11c4:	.db $80
B1_11c5:	.db $0c
B1_11c6:		.db $00				; 00
B1_11c7:		.db $00				; 00
B1_11c8:		.db $00				; 00
B1_11c9:		lda ($b0), y	; b1 b0
B1_11cb:		lda ($a0), y	; b1 a0
B1_11cd:		ldy #$00		; a0 00
B1_11cf:		bcs B1_11d1 ; b0 00

B1_11d1:		ldy #$00		; a0 00
B1_11d3:		ora $00			; 05 00
B1_11d5:	.db $80
B1_11d6:		ora ($bf, x)	; 01 bf
B1_11d8:		.db $00				; 00
B1_11d9:		asl $8000, x	; 1e 00 80
B1_11dc:		ora ($bf, x)	; 01 bf
B1_11de:		.db $00				; 00
B1_11df:	.db $07
B1_11e0:		.db $00				; 00
B1_11e1:	.db $80
B1_11e2:		php				; 08 
B1_11e3:		sty $8d8d		; 8c 8d 8d
B1_11e6:	.db $8f
B1_11e7:	.db $8c $00 $00
B1_11ea:		.db $00				; 00
B1_11eb:	.db $ff
B1_11ec:	.db $23
B1_11ed:	.db $80
B1_11ee:		.db $00				; 00
B1_11ef:	.db $02
B1_11f0:	.db $7c
B1_11f1:		.db $00				; 00
B1_11f2:		asl a			; 0a
B1_11f3:	.db $7f
B1_11f4:	.db $80
B1_11f5:		ora ($7e), y	; 11 7e
B1_11f7:		adc $7f7f, x	; 7d 7f 7f
B1_11fa:		.db $00				; 00
B1_11fb:		sta ($44, x)	; 81 44
B1_11fd:	.db $b7
B1_11fe:		clv				; b8 
B1_11ff:	.db $b7
B1_1200:		eor $81			; 45 81
B1_1202:	.db $9c
B1_1203:		sta $9f9e, x	; 9d 9e 9f
B1_1206:	.db $9c
B1_1207:		.db $00				; 00
B1_1208:		bpl B1_120a ; 10 00

B1_120a:	.db $80
B1_120b:		ora ($bf, x)	; 01 bf
B1_120d:		.db $00				; 00
B1_120e:	.db $03
B1_120f:		.db $00				; 00
B1_1210:	.db $80
B1_1211:	.db $0f
B1_1212:	.db $64
B1_1213:	.db $8b
B1_1214:	.db $b7
B1_1215:		lda $8bb7, y	; b9 b7 8b
B1_1218:	.db $64
B1_1219:		sta ($ad, x)	; 81 ad
B1_121b:		ldx $adaf		; ae af ad
B1_121e:		.db $00				; 00
B1_121f:		.db $00				; 00
B1_1220:		.db $00				; 00
B1_1221:	.db $ff
B1_1222:	.db $20 $00 $00
B1_1225:		asl $8000		; 0e 00 80
B1_1228:	.db $12
B1_1229:	.db $bf
B1_122a:		.db $00				; 00
B1_122b:		.db $00				; 00
B1_122c:		.db $00				; 00
B1_122d:		.db $00				; 00
B1_122e:	.db $b7
B1_122f:		.db $00				; 00
B1_1230:	.db $b7
B1_1231:		sta ($bd, x)	; 81 bd
B1_1233:		lda $be00, x	; bd 00 be
B1_1236:		adc $bd, x		; 75 bd
B1_1238:		.db $00				; 00
B1_1239:		.db $00				; 00
B1_123a:		.db $00				; 00
B1_123b:	.db $ff
B1_123c:	.db $20 $20 $00
B1_123f:	.db $0f
B1_1240:		.db $00				; 00
B1_1241:	.db $80
B1_1242:		ora ($bf, x)	; 01 bf
B1_1244:		.db $00				; 00
B1_1245:	.db $1e $00 $00
B1_1248:		bpl B1_12c9 ; 10 7f

B1_124a:		.db $00				; 00
B1_124b:	.db $02
B1_124c:	.db $7c
B1_124d:	.db $ff
B1_124e:	.db $23
B1_124f:		cpx #$80		; e0 80
B1_1251:	.db $20 $00 $00
B1_1254:		.db $00				; 00
B1_1255:		.db $00				; 00
B1_1256:		cpy #$f0		; c0 f0
B1_1258:		;removed
	.db $f0 $30

B1_125a:		bvc B1_12ac ; 50 50

B1_125c:		bvc B1_126e ; 50 10

B1_125e:		cpy $ffff		; cc ff ff
B1_1261:	.db $33
B1_1262:		eor $d5, x		; 55 d5
B1_1264:		cmp $11, x		; d5 11
B1_1266:	.db $80
B1_1267:		ldy #$a0		; a0 a0
B1_1269:	.db $20 $00 $00
B1_126c:		.db $00				; 00
B1_126d:		.db $00				; 00
B1_126e:	.db $0f
B1_126f:	.db $0b
B1_1270:		asl a			; 0a
B1_1271:	.db $02
B1_1272:		inc $c023, x	; fe 23 c0
B1_1275:	.db $80
B1_1276:		bpl B1_1278 ; 10 00

B1_1278:		.db $00				; 00
B1_1279:		.db $00				; 00
B1_127a:		.db $00				; 00
B1_127b:	.db $0f
B1_127c:	.db $0b
B1_127d:		asl a			; 0a
B1_127e:	.db $02
B1_127f:		.db $00				; 00
B1_1280:		.db $00				; 00
B1_1281:		.db $00				; 00
B1_1282:		.db $00				; 00
B1_1283:		.db $00				; 00
B1_1284:		.db $00				; 00
B1_1285:		.db $00				; 00
B1_1286:		.db $00				; 00
B1_1287:	.db $ff
B1_1288:	.db $22
B1_1289:		cpx #$80		; e0 80
B1_128b:	.db $20 $00 $00
B1_128e:	.db $7a
B1_128f:	.db $4b
B1_1290:	.db $4f
B1_1291:		.db $00				; 00
B1_1292:		lsr $4f4c		; 4e 4c 4f
B1_1295:		eor $494a		; 4d 4a 49
B1_1298:	.db $4f
B1_1299:	.db $7a
B1_129a:		.db $00				; 00
B1_129b:		lsr a			; 4a
B1_129c:	.db $67
B1_129d:		jmp $4f4e		; 4c 4e 4f


B1_12a0:	.db $4f
B1_12a1:	.db $47
B1_12a2:		lsr $b84c		; 4e 4c b8
B1_12a5:		clv				; b8 
B1_12a6:	.db $83
B1_12a7:	.db $93
B1_12a8:		stx $b8			; 86 b8
B1_12aa:		.db $00				; 00
B1_12ab:		.db $00				; 00
B1_12ac:	.db $ff
B1_12ad:	.db $23
B1_12ae:		.db $00				; 00
B1_12af:	.db $80
B1_12b0:		rti				; 40 


B1_12b1:		.db $00				; 00
B1_12b2:		.db $00				; 00
B1_12b3:	.db $4b
B1_12b4:	.db $4b
B1_12b5:	.db $57
B1_12b6:	.db $5d $5e $00
B1_12b9:		cli				; 58 
B1_12ba:		eor $5b5a, y	; 59 5a 5b
B1_12bd:		cli				; 58 
B1_12be:		.db $00				; 00
B1_12bf:		.db $00				; 00
B1_12c0:		.db $00				; 00
B1_12c1:		adc #$58		; 69 58
B1_12c3:		lsr $5769, x	; 5e 69 57
B1_12c6:		ror $574a		; 6e 4a 57
B1_12c9:	.db $93
B1_12ca:		clv				; b8 
B1_12cb:	.db $4b
B1_12cc:		lda ($4b, x)	; a1 4b
B1_12ce:	.db $93
B1_12cf:		.db $00				; 00
B1_12d0:		.db $00				; 00
B1_12d1:		.db $00				; 00
B1_12d2:		.db $00				; 00
B1_12d3:		ror a			; 6a
B1_12d4:		ror $68			; 66 68
B1_12d6:		adc $6c6e, y	; 79 6e 6c
B1_12d9:		adc #$6a		; 69 6a
B1_12db:		ror a			; 6a
B1_12dc:		ror $4b			; 66 4b
B1_12de:	.db $7a
B1_12df:		.db $00				; 00
B1_12e0:		.db $00				; 00
B1_12e1:		adc $7a, x		; 75 7a
B1_12e3:		ror $6875		; 6e 75 68
B1_12e6:		eor $5b5a, y	; 59 5a 5b
B1_12e9:		.db $00				; 00
B1_12ea:	.db $4b
B1_12eb:	.db $4b
B1_12ec:		lda ($4b), y	; b1 4b
B1_12ee:	.db $4b
B1_12ef:		.db $00				; 00
B1_12f0:		.db $00				; 00
B1_12f1:	.db $ff
B1_12f2:	.db $23
B1_12f3:		rti				; 40 


B1_12f4:	.db $80
B1_12f5:	.db $20 $00 $00
B1_12f8:		jmp $6d49		; 4c 49 6d


B1_12fb:	.db $5c
B1_12fc:	.db $6b
B1_12fd:	.db $7b
B1_12fe:		eor #$48		; 49 48
B1_1300:		eor $4b58		; 4d 58 4b
B1_1303:	.db $4b
B1_1304:		.db $00				; 00
B1_1305:		.db $00				; 00
B1_1306:		.db $00				; 00
B1_1307:	.db $4f
B1_1308:		eor #$5c		; 49 5c
B1_130a:		adc $6a69		; 6d 69 6a
B1_130d:	.db $6b
B1_130e:		.db $00				; 00
B1_130f:	.db $4b
B1_1310:		ror $77, x		; 76 77
B1_1312:		sei				; 78 
B1_1313:		.db $00				; 00
B1_1314:		.db $00				; 00
B1_1315:		.db $00				; 00
B1_1316:	.db $ff
B1_1317:	.db $23
B1_1318:	.db $80
B1_1319:		.db $00				; 00
B1_131a:	.db $02
B1_131b:	.db $7c
B1_131c:		.db $00				; 00
B1_131d:		ora ($7f), y	; 11 7f
B1_131f:	.db $80
B1_1320:	.db $02
B1_1321:	.db $7e $7d $00
B1_1324:		ora #$7f		; 09 7f
B1_1326:		.db $00				; 00
B1_1327:	.db $02
B1_1328:	.db $7c
B1_1329:		.db $00				; 00
B1_132a:	.db $12
B1_132b:		.db $00				; 00
B1_132c:	.db $80
B1_132d:		ora ($7e, x)	; 01 7e
B1_132f:		.db $00				; 00
B1_1330:		ora $ff00		; 0d 00 ff
B1_1333:	.db $20 $00 $00
B1_1336:		ora ($00), y	; 11 00
B1_1338:	.db $80
B1_1339:		ora ($bf, x)	; 01 bf
B1_133b:		.db $00				; 00
B1_133c:		bpl B1_133e ; 10 00

B1_133e:	.db $80
B1_133f:		ora #$41		; 09 41
B1_1341:	.db $42
B1_1342:		eor ($42, x)	; 41 42
B1_1344:	.db $42
B1_1345:	.db $43
B1_1346:	.db $44
B1_1347:		eor $7a			; 45 7a
B1_1349:		.db $00				; 00
B1_134a:		ora $00			; 05 00
B1_134c:	.db $80
B1_134d:		ora ($bf, x)	; 01 bf
B1_134f:		.db $00				; 00
B1_1350:	.db $0f
B1_1351:		.db $00				; 00
B1_1352:	.db $ff
B1_1353:		jsr $8040		; 20 40 80
B1_1356:		bpl B1_1358 ; 10 00

B1_1358:		.db $00				; 00
B1_1359:		rti				; 40 


B1_135a:		eor $63, x		; 55 63
B1_135c:	.db $54
B1_135d:		rti				; 40 


B1_135e:	.db $52
B1_135f:	.db $53
B1_1360:	.db $54
B1_1361:		eor $82, x		; 55 82
B1_1363:	.db $7a
B1_1364:		.db $00				; 00
B1_1365:		.db $00				; 00
B1_1366:	.db $bf
B1_1367:		.db $00				; 00
B1_1368:	.db $12
B1_1369:		.db $00				; 00
B1_136a:	.db $80
B1_136b:		ora $5150		; 0d 50 51
B1_136e:		bvc B1_13d0 ; 50 60

B1_1370:		bvc B1_1372 ; 50 00

B1_1372:		adc ($00, x)	; 61 00
B1_1374:	.db $62
B1_1375:	.db $64
B1_1376:		.db $00				; 00
B1_1377:		.db $00				; 00
B1_1378:	.db $bf
B1_1379:		.db $00				; 00
B1_137a:		ora ($00), y	; 11 00
B1_137c:	.db $ff
B1_137d:		jsr $8080		; 20 80 80
B1_1380:	.db $12
B1_1381:		.db $00				; 00
B1_1382:		.db $00				; 00
B1_1383:	.db $72
B1_1384:	.db $74
B1_1385:	.db $72
B1_1386:	.db $74
B1_1387:	.db $72
B1_1388:		;removed
	.db $70 $71

B1_138a:	.db $74
B1_138b:	.db $72
B1_138c:	.db $74
B1_138d:		.db $00				; 00
B1_138e:	.db $bf
B1_138f:		.db $00				; 00
B1_1390:		.db $00				; 00
B1_1391:	.db $7c
B1_1392:	.db $7c
B1_1393:		.db $00				; 00
B1_1394:	.db $1a
B1_1395:		.db $00				; 00
B1_1396:	.db $80
B1_1397:		asl $bf			; 06 bf
B1_1399:		.db $00				; 00
B1_139a:		.db $00				; 00
B1_139b:		.db $00				; 00
B1_139c:	.db $7c
B1_139d:	.db $7c
B1_139e:		.db $00				; 00
B1_139f:		asl $ff00		; 0e 00 ff
B1_13a2:	.db $20 $c0 $00
B1_13a5:	.db $02
B1_13a6:	.db $7c
B1_13a7:		.db $00				; 00
B1_13a8:	.db $0e $7f $00
B1_13ab:	.db $02
B1_13ac:	.db $7c
B1_13ad:		.db $00				; 00
B1_13ae:		asl $ff00		; 0e 00 ff
B1_13b1:	.db $23
B1_13b2:		inx				; e8 
B1_13b3:	.db $80
B1_13b4:		clc				; 18 
B1_13b5:		;removed
	.db $d0 $50

B1_13b7:		bvc B1_1349 ; 50 90

B1_13b9:		ldy #$a0		; a0 a0
B1_13bb:		;removed
	.db $f0 $b0

B1_13bd:		eor $5555		; 4d 55 55
B1_13c0:	.db $bb
B1_13c1:		tax				; aa 
B1_13c2:		tax				; aa 
B1_13c3:	.db $3f
B1_13c4:	.db $8b
B1_13c5:		.db $00				; 00
B1_13c6:		.db $00				; 00
B1_13c7:		.db $00				; 00
B1_13c8:		.db $00				; 00
B1_13c9:		.db $00				; 00
B1_13ca:		.db $00				; 00
B1_13cb:		.db $00				; 00
B1_13cc:		.db $00				; 00
B1_13cd:		inc $c023, x	; fe 23 c0
B1_13d0:	.db $80
B1_13d1:		;removed
	.db $10 $ff

B1_13d3:	.db $ff
B1_13d4:	.db $ff
B1_13d5:	.db $33
B1_13d6:		.db $00				; 00
B1_13d7:		.db $00				; 00
B1_13d8:		.db $00				; 00
B1_13d9:		.db $00				; 00
B1_13da:	.db $0f
B1_13db:	.db $0f
B1_13dc:	.db $0f
B1_13dd:		.db $00				; 00
B1_13de:		.db $00				; 00
B1_13df:		.db $00				; 00
B1_13e0:		.db $00				; 00
B1_13e1:		.db $00				; 00
B1_13e2:	.db $ff
B1_13e3:		lda #$00		; a9 00
B1_13e5:		sta $74			; 85 74
B1_13e7:		jmp $e795		; 4c 95 e7


B1_13ea:		lda $6b			; a5 6b
B1_13ec:		jsr jumpTablePreserveY		; 20 6d e8
B1_13ef:	.db $13
B1_13f0:		ldy $13, x		; b4 13
B1_13f2:		ldy $1f, x		; b4 1f
B1_13f4:		ldy $36, x		; b4 36
B1_13f6:		ldy $9a, x		; b4 9a
B1_13f8:		ldy $ce, x		; b4 ce
B1_13fa:		ldy $eb, x		; b4 eb
B1_13fc:		ldy $01, x		; b4 01
B1_13fe:		lda $0c, x		; b5 0c
B1_1400:		lda $1c, x		; b5 1c
B1_1402:		lda $36, x		; b5 36
B1_1404:		lda $61, x		; b5 61
B1_1406:		lda $a9, x		; b5 a9
B1_1408:		ora ($85, x)	; 01 85
B1_140a:		sei				; 78 
B1_140b:		jsr $e6c5		; 20 c5 e6
B1_140e:		lda #$00		; a9 00
B1_1410:		sta $78			; 85 78
B1_1412:		rts				; 60 


B1_1413:		jsr setBank_c000_toRom1eh		; 20 da e2
B1_1416:		jsr $b3e3		; 20 e3 b3
B1_1419:		jsr $e5ce		; 20 ce e5
B1_141c:		inc $6b			; e6 6b
B1_141e:		rts				; 60 


B1_141f:		jsr $b83a		; 20 3a b8
B1_1422:		jsr $b7b0		; 20 b0 b7
B1_1425:		lda #$00		; a9 00
B1_1427:		jsr $b71d		; 20 1d b7
B1_142a:		inc $6b			; e6 6b
B1_142c:		rts				; 60 


B1_142d:		lda #$00		; a9 00
B1_142f:		sta $56			; 85 56
B1_1431:		lda #$02		; a9 02
B1_1433:		sta $57			; 85 57
B1_1435:		rts				; 60 


B1_1436:		jsr $8f0b		; 20 0b 8f
B1_1439:		jsr $b42d		; 20 2d b4
B1_143c:		jsr $b407		; 20 07 b4
B1_143f:		jsr $b83a		; 20 3a b8
B1_1442:		lda $0565		; ad 65 05
B1_1445:		cmp #$02		; c9 02
B1_1447:		beq B1_144a ; f0 01

B1_1449:		rts				; 60 


B1_144a:		lda $054e		; ad 4e 05
B1_144d:		cmp #$02		; c9 02
B1_144f:		bne B1_1455 ; d0 04

B1_1451:		ldx #$0c		; a2 0c
B1_1453:		bne B1_1457 ; d0 02

B1_1455:		ldx #$10		; a2 10
B1_1457:		stx $08			; 86 08
B1_1459:		ldx #$f0		; a2 f0
B1_145b:		lda #$fb		; a9 fb
B1_145d:		jsr $fcdd		; 20 dd fc
B1_1460:		bne B1_1449 ; d0 e7

B1_1462:		ldx #$f0		; a2 f0
B1_1464:		lda #$05		; a9 05
B1_1466:		jsr $fcdd		; 20 dd fc
B1_1469:		bne B1_1449 ; d0 de

B1_146b:		ldx $08			; a6 08
B1_146d:		lda #$fb		; a9 fb
B1_146f:		jsr $fcdd		; 20 dd fc
B1_1472:		bne B1_147e ; d0 0a

B1_1474:		lda #$05		; a9 05
B1_1476:		ldx $08			; a6 08
B1_1478:		jsr $fcdd		; 20 dd fc
B1_147b:		bne B1_147e ; d0 01

B1_147d:		rts				; 60 


B1_147e:		lda #$00		; a9 00
B1_1480:		sta $b9			; 85 b9
B1_1482:		sta $0413		; 8d 13 04
B1_1485:		sta $0414		; 8d 14 04
B1_1488:		sta $0415		; 8d 15 04
B1_148b:		sta $0416		; 8d 16 04
B1_148e:		sta $0562		; 8d 62 05
B1_1491:		sta $0563		; 8d 63 05
B1_1494:		sta $0564		; 8d 64 05
B1_1497:		inc $6b			; e6 6b
B1_1499:		rts				; 60 


B1_149a:		lda $0438		; ad 38 04
B1_149d:		cmp #$d0		; c9 d0
B1_149f:		bcs B1_14bc ; b0 1b

B1_14a1:		jsr $b7ee		; 20 ee b7
B1_14a4:		bcs B1_14b0 ; b0 0a

B1_14a6:		lda $054e, x	; bd 4e 05
B1_14a9:		cmp #$05		; c9 05
B1_14ab:		beq B1_14bc ; f0 0f

B1_14ad:		jsr $b716		; 20 16 b7
B1_14b0:		jsr $b72a		; 20 2a b7
B1_14b3:		jsr $b42d		; 20 2d b4
B1_14b6:		jsr $b407		; 20 07 b4
B1_14b9:		jmp $b83a		; 4c 3a b8


B1_14bc:		jsr $b83a		; 20 3a b8
B1_14bf:		lda #$02		; a9 02
B1_14c1:		sta $0400		; 8d 00 04
B1_14c4:		jsr $b8a5		; 20 a5 b8
B1_14c7:		lda #$10		; a9 10
B1_14c9:		sta $30			; 85 30
B1_14cb:		jmp $b47e		; 4c 7e b4


B1_14ce:		jsr $b83a		; 20 3a b8
B1_14d1:		jsr $b859		; 20 59 b8
B1_14d4:		dec $30			; c6 30
B1_14d6:		beq B1_14d9 ; f0 01

B1_14d8:		rts				; 60 


B1_14d9:		ldy #$00		; a0 00
B1_14db:		sty $0785		; 8c 85 07
B1_14de:		sty $0786		; 8c 86 07
B1_14e1:		iny				; c8 
B1_14e2:		sty $0784		; 8c 84 07
B1_14e5:		sty $0787		; 8c 87 07
B1_14e8:		inc $6b			; e6 6b
B1_14ea:		rts				; 60 


B1_14eb:		jsr $b82c		; 20 2c b8
B1_14ee:		jsr $b859		; 20 59 b8
B1_14f1:		jsr $b5f2		; 20 f2 b5
B1_14f4:		jsr $b90e		; 20 0e b9
B1_14f7:		bcs B1_14fa ; b0 01

B1_14f9:		rts				; 60 


B1_14fa:		lda #$00		; a9 00
B1_14fc:		sta $c9			; 85 c9
B1_14fe:		inc $6b			; e6 6b
B1_1500:		rts				; 60 


B1_1501:		jsr $b82c		; 20 2c b8
B1_1504:		jsr $b63e		; 20 3e b6
B1_1507:		bcc B1_150b ; 90 02

B1_1509:		inc $6b			; e6 6b
B1_150b:		rts				; 60 


B1_150c:		jsr $b82c		; 20 2c b8
B1_150f:		jsr $b5f2		; 20 f2 b5
B1_1512:		jsr $d5c3		; 20 c3 d5
B1_1515:		lda #$03		; a9 03
B1_1517:		sta $72			; 85 72
B1_1519:		inc $6b			; e6 6b
B1_151b:		rts				; 60 


B1_151c:		jsr $b82c		; 20 2c b8
B1_151f:		jsr $b5f2		; 20 f2 b5
B1_1522:		jsr $b5de		; 20 de b5
B1_1525:		lda $ca			; a5 ca
B1_1527:		cmp #$a0		; c9 a0
B1_1529:		bcs B1_1535 ; b0 0a

B1_152b:		jsr $b79d		; 20 9d b7
B1_152e:		lda #$06		; a9 06
B1_1530:		jsr $b71d		; 20 1d b7
B1_1533:		inc $6b			; e6 6b
B1_1535:		rts				; 60 


B1_1536:		jsr $b5f2		; 20 f2 b5
B1_1539:		lda $0438		; ad 38 04
B1_153c:		cmp #$e8		; c9 e8
B1_153e:		bcs B1_1557 ; b0 17

B1_1540:		jsr $b7ee		; 20 ee b7
B1_1543:		bcs B1_154b ; b0 06

B1_1545:		lda $054e, x	; bd 4e 05
B1_1548:		jsr $b716		; 20 16 b7
B1_154b:		jsr $b72a		; 20 2a b7
B1_154e:		jsr $b42d		; 20 2d b4
B1_1551:		jsr $b407		; 20 07 b4
B1_1554:		jmp $b82c		; 4c 2c b8


B1_1557:		jsr $b82c		; 20 2c b8
B1_155a:		lda #$02		; a9 02
B1_155c:		sta $1c			; 85 1c
B1_155e:		inc $6b			; e6 6b
B1_1560:		rts				; 60 


B1_1561:		lda #$02		; a9 02
B1_1563:		sta $1c			; 85 1c
B1_1565:		jsr $e5ca		; 20 ca e5
B1_1568:		jsr $b3e3		; 20 e3 b3
B1_156b:		lda #$00		; a9 00
B1_156d:		sta $3f			; 85 3f
B1_156f:		sta $6d			; 85 6d
B1_1571:		lda #$40		; a9 40
B1_1573:		sta $3d			; 85 3d
B1_1575:		jsr $fb85		; 20 85 fb
B1_1578:		inc $33			; e6 33
B1_157a:		lda #$00		; a9 00
B1_157c:		sta $34			; 85 34
B1_157e:		lda #$01		; a9 01
B1_1580:		sta $2a			; 85 2a
B1_1582:		rts				; 60 


B1_1583:		lda $bf			; a5 bf
B1_1585:		bne B1_15ed ; d0 66

B1_1587:		lda $ca			; a5 ca
B1_1589:		cmp #$32		; c9 32
B1_158b:		bcc B1_1599 ; 90 0c

B1_158d:		lda $041c		; ad 1c 04
B1_1590:		sec				; 38 
B1_1591:		sbc #$10		; e9 10
B1_1593:		bcc B1_15cd ; 90 38

B1_1595:		cmp $ca			; c5 ca
B1_1597:		bcc B1_15cd ; 90 34

B1_1599:		lda $0565		; ad 65 05
B1_159c:		cmp #$08		; c9 08
B1_159e:		beq B1_15c7 ; f0 27

B1_15a0:		cmp #$0c		; c9 0c
B1_15a2:		beq B1_15c7 ; f0 23

B1_15a4:		cmp #$1a		; c9 1a
B1_15a6:		beq B1_15c7 ; f0 1f

B1_15a8:		cmp #$22		; c9 22
B1_15aa:		beq B1_15c7 ; f0 1b

B1_15ac:		cmp #$0c		; c9 0c
B1_15ae:		beq B1_15c7 ; f0 17

B1_15b0:		cmp #$2c		; c9 2c
B1_15b2:		beq B1_15c7 ; f0 13

B1_15b4:		cmp #$26		; c9 26
B1_15b6:		bne B1_15bd ; d0 05

B1_15b8:		lda $0602		; ad 02 06
B1_15bb:		beq B1_15c7 ; f0 0a

B1_15bd:		lda #$2e		; a9 2e
B1_15bf:		sta $0565		; 8d 65 05
B1_15c2:		lda #$80		; a9 80
B1_15c4:		sta $bf			; 85 bf
B1_15c6:		rts				; 60 


B1_15c7:		jsr $e5af		; 20 af e5
B1_15ca:		jmp $b5bd		; 4c bd b5


B1_15cd:		lda $c0			; a5 c0
B1_15cf:		bne B1_15ed ; d0 1c

B1_15d1:		lda $07f6		; ad f6 07
B1_15d4:		bne B1_15da ; d0 04

B1_15d6:		lda #$08		; a9 08
B1_15d8:		bne B1_15e0 ; d0 06

B1_15da:		lda #$0c		; a9 0c
B1_15dc:		bne B1_15e0 ; d0 02

B1_15de:		lda #$10		; a9 10
B1_15e0:		sta $0e			; 85 0e
B1_15e2:		lda $cb			; a5 cb
B1_15e4:		sec				; 38 
B1_15e5:		sbc $0e			; e5 0e
B1_15e7:		sta $cb			; 85 cb
B1_15e9:		bcs B1_15ed ; b0 02

B1_15eb:		dec $ca			; c6 ca
B1_15ed:		lda $ca			; a5 ca
B1_15ef:		sta $42			; 85 42
B1_15f1:		rts				; 60 


B1_15f2:		dec $0787		; ce 87 07
B1_15f5:		beq B1_15f8 ; f0 01

B1_15f7:		rts				; 60 


B1_15f8:		lda $1d			; a5 1d
B1_15fa:		pha				; 48 
B1_15fb:		jsr $852c		; 20 2c 85
B1_15fe:		pla				; 68 
B1_15ff:		tax				; aa 
B1_1600:		lda $0786		; ad 86 07
B1_1603:		asl a			; 0a
B1_1604:		clc				; 18 
B1_1605:		adc $0786		; 6d 86 07
B1_1608:		tay				; a8 
B1_1609:		lda $b62f, y	; b9 2f b6
B1_160c:		cmp #$ff		; c9 ff
B1_160e:		beq B1_1628 ; f0 18

B1_1610:		sta $0308, x	; 9d 08 03
B1_1613:		lda $b630, y	; b9 30 b6
B1_1616:		sta $0309, x	; 9d 09 03
B1_1619:		lda $b631, y	; b9 31 b6
B1_161c:		sta $030a, x	; 9d 0a 03
B1_161f:		inc $0786		; ee 86 07
B1_1622:		lda #$08		; a9 08
B1_1624:		sta $0787		; 8d 87 07
B1_1627:		rts				; 60 


B1_1628:		lda #$00		; a9 00
B1_162a:		sta $0786		; 8d 86 07
B1_162d:		beq B1_1608 ; f0 d9

B1_162f:		ora ($11, x)	; 01 11
B1_1631:		jsr $3101		; 20 01 31
B1_1634:		ora ($01), y	; 11 01
B1_1636:		ora ($31), y	; 11 31
B1_1638:		ora ($20, x)	; 01 20
B1_163a:		ora ($ff), y	; 11 ff
B1_163c:		sec				; 38 
B1_163d:		rts				; 60 


B1_163e:		ldy #$00		; a0 00
B1_1640:		lda $c9			; a5 c9
B1_1642:		cmp #$10		; c9 10
B1_1644:		beq B1_163c ; f0 f6

B1_1646:		lsr a			; 4a
B1_1647:		bcc B1_164b ; 90 02

B1_1649:		ldy #$05		; a0 05
B1_164b:		sta $03			; 85 03
B1_164d:		lda $b6e0, y	; b9 e0 b6
B1_1650:		sta $62			; 85 62
B1_1652:		lda $b6e1, y	; b9 e1 b6
B1_1655:		sta $61			; 85 61
B1_1657:		lda $b6e2, y	; b9 e2 b6
B1_165a:		sta $0f			; 85 0f
B1_165c:		lda $b6e3, y	; b9 e3 b6
B1_165f:		sta $0e			; 85 0e
B1_1661:		lda $b6e4, y	; b9 e4 b6
B1_1664:		sta $02			; 85 02
B1_1666:		lda $03			; a5 03
B1_1668:		asl a			; 0a
B1_1669:		asl a			; 0a
B1_166a:		ldx #$61		; a2 61
B1_166c:		jsr incPointerXByA		; 20 99 e8
B1_166f:		lda $03			; a5 03
B1_1671:		ldx #$0e		; a2 0e
B1_1673:		jsr incPointerXByA		; 20 99 e8
B1_1676:		lda #$03		; a9 03
B1_1678:		sta $03			; 85 03
B1_167a:		lda $02			; a5 02
B1_167c:		asl a			; 0a
B1_167d:		tay				; a8 
B1_167e:		lda $b6ea, y	; b9 ea b6
B1_1681:		sta $08			; 85 08
B1_1683:		lda $b6eb, y	; b9 eb b6
B1_1686:		sta $09			; 85 09
B1_1688:		lda $02			; a5 02
B1_168a:		cmp #$05		; c9 05
B1_168c:		beq B1_1699 ; f0 0b

B1_168e:		lda #$04		; a9 04
B1_1690:		sta $01			; 85 01
B1_1692:		jsr func_1f_08c6		; 20 c6 e8
B1_1695:		ldy #$00		; a0 00
B1_1697:		beq B1_16a5 ; f0 0c

B1_1699:		jsr func_1f_08c0		; 20 c0 e8
B1_169c:		lda #$02		; a9 02
B1_169e:		sta $01			; 85 01
B1_16a0:		bne B1_1695 ; d0 f3

B1_16a2:		jsr func_1f_08bb		; 20 bb e8
B1_16a5:		lda #$04		; a9 04
B1_16a7:		sta $00			; 85 00
B1_16a9:		lda ($08), y	; b1 08
B1_16ab:		jsr func_1f_0d16		; 20 16 ed
B1_16ae:		iny				; c8 
B1_16af:		dec $00			; c6 00
B1_16b1:		bne B1_16a9 ; d0 f6

B1_16b3:		lda #$20		; a9 20
B1_16b5:		ldx #$61		; a2 61
B1_16b7:		jsr incPointerXByA		; 20 99 e8
B1_16ba:		dec $01			; c6 01
B1_16bc:		bne B1_16a2 ; d0 e4

B1_16be:		ldx $1d			; a6 1d
B1_16c0:		lda $0e			; a5 0e
B1_16c2:		jsr func_1f_0d16		; 20 16 ed
B1_16c5:		lda $0f			; a5 0f
B1_16c7:		jsr func_1f_0d16		; 20 16 ed
B1_16ca:		lda #$55		; a9 55
B1_16cc:		jsr func_1f_0d16		; 20 16 ed
B1_16cf:		lda #$08		; a9 08
B1_16d1:		ldx #$0e		; a2 0e
B1_16d3:		jsr incPointerXByA		; 20 99 e8
B1_16d6:		inc $02			; e6 02
B1_16d8:		dec $03			; c6 03
B1_16da:		bne B1_167a ; d0 9e

B1_16dc:		inc $c9			; e6 c9
B1_16de:		clc				; 18 
B1_16df:		rts				; 60 


B1_16e0:		and #$00		; 29 00
B1_16e2:	.db $2b
B1_16e3:		bne B1_16e5 ; d0 00

B1_16e5:		rol a			; 2a
B1_16e6:	.db $80
B1_16e7:	.db $2b
B1_16e8:		inx				; e8 
B1_16e9:	.db $03
B1_16ea:		inc $b6, x		; f6 b6
B1_16ec:		asl $b7			; 06 b7
B1_16ee:		asl $b7			; 06 b7
B1_16f0:		asl $b7			; 06 b7
B1_16f2:		asl $b7			; 06 b7
B1_16f4:		asl $b7			; 06 b7
B1_16f6:	.db $8b
B1_16f7:	.db $8b
B1_16f8:	.db $8b
B1_16f9:	.db $8b
B1_16fa:	.db $9b
B1_16fb:		and $3d9b, x	; 3d 9b 3d
B1_16fe:		and $3d9b, x	; 3d 9b 3d
B1_1701:	.db $9b
B1_1702:		and $3d3d, x	; 3d 3d 3d
B1_1705:		and $3d3d, x	; 3d 3d 3d
B1_1708:		and $3d3d, x	; 3d 3d 3d
B1_170b:		and $3d3d, x	; 3d 3d 3d
B1_170e:		and $3d3d, x	; 3d 3d 3d
B1_1711:		and $3d3d, x	; 3d 3d 3d
B1_1714:		and $483d, x	; 3d 3d 48
B1_1717:		lda #$00		; a9 00
B1_1719:		sta $054e, x	; 9d 4e 05
B1_171c:		pla				; 68 
B1_171d:		sta $0781		; 8d 81 07
B1_1720:		ldy #$00		; a0 00
B1_1722:		sty $0782		; 8c 82 07
B1_1725:		iny				; c8 
B1_1726:		sty $0780		; 8c 80 07
B1_1729:		rts				; 60 


B1_172a:		lda $0783		; ad 83 07
B1_172d:		sta $28			; 85 28
B1_172f:		sta $26			; 85 26
B1_1731:		dec $0780		; ce 80 07
B1_1734:		beq B1_1737 ; f0 01

B1_1736:		rts				; 60 


B1_1737:		lda $0781		; ad 81 07
B1_173a:		asl a			; 0a
B1_173b:		tay				; a8 
B1_173c:		lda $b771, y	; b9 71 b7
B1_173f:		sta $08			; 85 08
B1_1741:		lda $b772, y	; b9 72 b7
B1_1744:		sta $09			; 85 09
B1_1746:		lda $0782		; ad 82 07
B1_1749:		asl a			; 0a
B1_174a:		tay				; a8 
B1_174b:		lda ($08), y	; b1 08
B1_174d:		sta $0783		; 8d 83 07
B1_1750:		iny				; c8 
B1_1751:		lda ($08), y	; b1 08
B1_1753:		sta $0780		; 8d 80 07
B1_1756:		inc $0782		; ee 82 07
B1_1759:		rts				; 60 


B1_175a:		lsr $6eb7, x	; 5e b7 6e
B1_175d:	.db $b7
B1_175e:		jsr $0180		; 20 80 01
B1_1761:		rti				; 40 


B1_1762:		ldy #$02		; a0 02
B1_1764:		;removed
	.db $90 $b0

B1_1766:	.db $03
B1_1767:		ldx $0490, y	; be 90 04
B1_176a:		;removed
	.db $d0 $70

B1_176c:		ora $ff			; 05 ff
B1_176e:		cpx $70			; e4 70
B1_1770:	.db $07
B1_1771:		sta ($b7, x)	; 81 b7
B1_1773:	.db $83
B1_1774:	.db $b7
B1_1775:	.db $87
B1_1776:	.db $b7
B1_1777:	.db $8b
B1_1778:	.db $b7
B1_1779:	.db $93
B1_177a:	.db $b7
B1_177b:	.db $9b
B1_177c:	.db $b7
B1_177d:		sta ($b7, x)	; 81 b7
B1_177f:	.db $87
B1_1780:	.db $b7
B1_1781:		ora ($ff, x)	; 01 ff
B1_1783:		ora ($01, x)	; 01 01
B1_1785:		ora ($ff, x)	; 01 ff
B1_1787:		sta ($04, x)	; 81 04
B1_1789:		ora ($ff, x)	; 01 ff
B1_178b:		sta ($08, x)	; 81 08
B1_178d:		ora ($10, x)	; 01 10
B1_178f:		sta ($04, x)	; 81 04
B1_1791:		ora ($ff, x)	; 01 ff
B1_1793:		sta ($08, x)	; 81 08
B1_1795:		ora ($20, x)	; 01 20
B1_1797:		sta ($04, x)	; 81 04
B1_1799:		ora ($ff, x)	; 01 ff
B1_179b:		.db $00				; 00
B1_179c:	.db $ff
B1_179d:		ldy #$02		; a0 02
B1_179f:		lda $b75a, y	; b9 5a b7
B1_17a2:		sta $08			; 85 08
B1_17a4:		lda $b75b, y	; b9 5b b7
B1_17a7:		sta $09			; 85 09
B1_17a9:		ldy #$00		; a0 00
B1_17ab:		ldx #$01		; a2 01
B1_17ad:		jmp $b7c9		; 4c c9 b7


B1_17b0:		ldy #$00		; a0 00
B1_17b2:		lda $b75a, y	; b9 5a b7
B1_17b5:		sta $08			; 85 08
B1_17b7:		lda $b75b, y	; b9 5b b7
B1_17ba:		sta $09			; 85 09
B1_17bc:		ldy #$00		; a0 00
B1_17be:		ldx #$01		; a2 01
B1_17c0:		jsr $b7c9		; 20 c9 b7
B1_17c3:		inx				; e8 
B1_17c4:		cpx #$06		; e0 06
B1_17c6:		bcc B1_17c0 ; 90 f8

B1_17c8:		rts				; 60 


B1_17c9:		lda #$00		; a9 00
B1_17cb:		sta $048c, x	; 9d 8c 04
B1_17ce:		lda #$00		; a9 00
B1_17d0:		sta $0400, x	; 9d 00 04
B1_17d3:		lda #$00		; a9 00
B1_17d5:		sta $0454, x	; 9d 54 04
B1_17d8:		sta $0470, x	; 9d 70 04
B1_17db:		lda ($08), y	; b1 08
B1_17dd:		sta $0438, x	; 9d 38 04
B1_17e0:		iny				; c8 
B1_17e1:		lda ($08), y	; b1 08
B1_17e3:		sta $041c, x	; 9d 1c 04
B1_17e6:		iny				; c8 
B1_17e7:		lda ($08), y	; b1 08
B1_17e9:		sta $054e, x	; 9d 4e 05
B1_17ec:		iny				; c8 
B1_17ed:		rts				; 60 


B1_17ee:		lda $0565		; ad 65 05
B1_17f1:		cmp #$02		; c9 02
B1_17f3:		beq B1_17fa ; f0 05

B1_17f5:		cmp #$04		; c9 04
B1_17f7:		beq B1_17fa ; f0 01

B1_17f9:		rts				; 60 


B1_17fa:		ldx #$01		; a2 01
B1_17fc:		lda $054e, x	; bd 4e 05
B1_17ff:		bne B1_1807 ; d0 06

B1_1801:		inx				; e8 
B1_1802:		cpx #$06		; e0 06
B1_1804:		bcc B1_17fc ; 90 f6

B1_1806:		rts				; 60 


B1_1807:		lda $0438, x	; bd 38 04
B1_180a:		sec				; 38 
B1_180b:		sbc $0438		; ed38 04
B1_180e:		bcs B1_1815 ; b0 05

B1_1810:		eor #$ff		; 49 ff
B1_1812:		clc				; 18 
B1_1813:		adc #$01		; 69 01
B1_1815:		cmp #$08		; c9 08
B1_1817:		bcs B1_1801 ; b0 e8

B1_1819:		lda $041c, x	; bd 1c 04
B1_181c:		sec				; 38 
B1_181d:		sbc $041c		; ed1c 04
B1_1820:		bcs B1_1827 ; b0 05

B1_1822:		eor #$ff		; 49 ff
B1_1824:		clc				; 18 
B1_1825:		adc #$01		; 69 01
B1_1827:		cmp #$08		; c9 08
B1_1829:		bcs B1_1801 ; b0 d6

B1_182b:		rts				; 60 


B1_182c:		lda $1a			; a5 1a
B1_182e:		and #$0f		; 29 0f
B1_1830:		bne B1_1845 ; d0 13

B1_1832:		lda #$3d		; a9 3d
B1_1834:		jsr playSound		; 20 5f e2
B1_1837:		jmp $b845		; 4c 45 b8


B1_183a:		lda $1a			; a5 1a
B1_183c:		and #$0f		; 29 0f
B1_183e:		bne B1_1845 ; d0 05

B1_1840:		lda #$3b		; a9 3b
B1_1842:		jsr playSound		; 20 5f e2
B1_1845:		lda $1a			; a5 1a
B1_1847:		and #$02		; 29 02
B1_1849:		tay				; a8 
B1_184a:		lda $b855, y	; b9 55 b8
B1_184d:		sta $57			; 85 57
B1_184f:		lda $b856, y	; b9 56 b8
B1_1852:		sta $56			; 85 56
B1_1854:		rts				; 60 


B1_1855:	.db $02
B1_1856:		ora ($01, x)	; 01 01
B1_1858:	.db $ff
B1_1859:		ldx #$01		; a2 01
B1_185b:		lda $05d8, x	; bd d8 05
B1_185e:		bne B1_186b ; d0 0b

B1_1860:		lda #$00		; a9 00
B1_1862:		sta $0400, x	; 9d 00 04
B1_1865:		inx				; e8 
B1_1866:		cpx #$06		; e0 06
B1_1868:		bcc B1_185b ; 90 f1

B1_186a:		rts				; 60 


B1_186b:		dec $05d8, x	; de d8 05
B1_186e:		lda #$40		; a9 40
B1_1870:		clc				; 18 
B1_1871:		adc $0537, x	; 7d 37 05
B1_1874:		sta $0537, x	; 9d 37 05
B1_1877:		bcc B1_187c ; 90 03

B1_1879:		inc $0520, x	; fe 20 05
B1_187c:		lda $04c4, x	; bd c4 04
B1_187f:		clc				; 18 
B1_1880:		adc $0509, x	; 7d 09 05
B1_1883:		sta $04c4, x	; 9d c4 04
B1_1886:		lda $0438, x	; bd 38 04
B1_1889:		adc $04f2, x	; 7d f2 04
B1_188c:		sta $0438, x	; 9d 38 04
B1_188f:		lda $04db, x	; bd db 04
B1_1892:		clc				; 18 
B1_1893:		adc $0537, x	; 7d 37 05
B1_1896:		sta $04db, x	; 9d db 04
B1_1899:		lda $041c, x	; bd 1c 04
B1_189c:		adc $0520, x	; 7d 20 05
B1_189f:		sta $041c, x	; 9d 1c 04
B1_18a2:		jmp $b865		; 4c 65 b8


B1_18a5:		ldx #$01		; a2 01
B1_18a7:		ldy #$00		; a0 00
B1_18a9:		lda #$20		; a9 20
B1_18ab:		sta $05d8, x	; 9d d8 05
B1_18ae:		lda #$0e		; a9 0e
B1_18b0:		sta $048c, x	; 9d 8c 04
B1_18b3:		lda #$18		; a9 18
B1_18b5:		sta $0400, x	; 9d 00 04
B1_18b8:		lda #$00		; a9 00
B1_18ba:		sta $0454, x	; 9d 54 04
B1_18bd:		sta $0470, x	; 9d 70 04
B1_18c0:		lda $b8f0, y	; b9 f0 b8
B1_18c3:		sta $04f2, x	; 9d f2 04
B1_18c6:		iny				; c8 
B1_18c7:		lda $b8f0, y	; b9 f0 b8
B1_18ca:		sta $0509, x	; 9d 09 05
B1_18cd:		iny				; c8 
B1_18ce:		lda $b8f0, y	; b9 f0 b8
B1_18d1:		sta $0520, x	; 9d 20 05
B1_18d4:		iny				; c8 
B1_18d5:		lda $b8f0, y	; b9 f0 b8
B1_18d8:		sta $0537, x	; 9d 37 05
B1_18db:		iny				; c8 
B1_18dc:		lda $b8f0, y	; b9 f0 b8
B1_18df:		sta $0438, x	; 9d 38 04
B1_18e2:		iny				; c8 
B1_18e3:		lda $b8f0, y	; b9 f0 b8
B1_18e6:		sta $041c, x	; 9d 1c 04
B1_18e9:		iny				; c8 
B1_18ea:		inx				; e8 
B1_18eb:		cpx #$06		; e0 06
B1_18ed:		bcc B1_18a9 ; 90 ba

B1_18ef:		rts				; 60 


B1_18f0:	.db $ff
B1_18f1:	.db $80
B1_18f2:		.db $00				; 00
B1_18f3:		cpy #$80		; c0 80
B1_18f5:		sec				; 38 
B1_18f6:		ora ($c0, x)	; 01 c0
B1_18f8:		ora ($40, x)	; 01 40
B1_18fa:		sei				; 78 
B1_18fb:	.db $3c
B1_18fc:		inc $0100, x	; fe 00 01
B1_18ff:		cpy #$90		; c0 90
B1_1901:	.db $34
B1_1902:	.db $02
B1_1903:		rti				; 40 


B1_1904:		ora ($80, x)	; 01 80
B1_1906:	.db $74
B1_1907:		rti				; 40 


B1_1908:		.db $00				; 00
B1_1909:		cpy #$01		; c0 01
B1_190b:		rti				; 40 


B1_190c:	.db $7c
B1_190d:	.db $3c
B1_190e:		dec $0784		; ce 84 07
B1_1911:		beq B1_1915 ; f0 02

B1_1913:		clc				; 18 
B1_1914:		rts				; 60 


B1_1915:		jsr $b990		; 20 90 b9
B1_1918:		jsr $b92e		; 20 2e b9
B1_191b:		inc $0785		; ee 85 07
B1_191e:		lda $0785		; ad 85 07
B1_1921:		cmp #$0c		; c9 0c
B1_1923:		beq B1_192c ; f0 07

B1_1925:		lda #$06		; a9 06
B1_1927:		sta $0784		; 8d 84 07
B1_192a:		clc				; 18 
B1_192b:		rts				; 60 


B1_192c:		sec				; 38 
B1_192d:		rts				; 60 


B1_192e:		lda $0785		; ad 85 07
B1_1931:		asl a			; 0a
B1_1932:		tay				; a8 
B1_1933:		lda $ba12, y	; b9 12 ba
B1_1936:		sta $62			; 85 62
B1_1938:		lda $ba13, y	; b9 13 ba
B1_193b:		sta $61			; 85 61
B1_193d:		jsr $e8b5		; 20 b5 e8
B1_1940:		ldy $0785		; ac 85 07
B1_1943:		iny				; c8 
B1_1944:		tya				; 98 
B1_1945:		and #$fe		; 29 fe
B1_1947:		tay				; a8 
B1_1948:		lda $ba3a, y	; b9 3a ba
B1_194b:		sta $01			; 85 01
B1_194d:		lda $ba3b, y	; b9 3b ba
B1_1950:		sta $02			; 85 02
B1_1952:		lda $ba2a		; ad 2a ba
B1_1955:		sta $08			; 85 08
B1_1957:		lda $ba2b		; ad 2b ba
B1_195a:		sta $09			; 85 09
B1_195c:		jsr $b977		; 20 77 b9
B1_195f:		lda $02			; a5 02
B1_1961:		sta $01			; 85 01
B1_1963:		lda $ba2c		; ad 2c ba
B1_1966:		sta $08			; 85 08
B1_1968:		lda $ba2d		; ad 2d ba
B1_196b:		sta $09			; 85 09
B1_196d:		jsr $b977		; 20 77 b9
B1_1970:		jmp $e8de		; 4c de e8


B1_1973:		lda #$02		; a9 02
B1_1975:		bne B1_1980 ; d0 09

B1_1977:		ldy $0785		; ac 85 07
B1_197a:		beq B1_1973 ; f0 f7

B1_197c:		iny				; c8 
B1_197d:		tya				; 98 
B1_197e:		and #$01		; 29 01
B1_1980:		asl a			; 0a
B1_1981:		tay				; a8 
B1_1982:		lda ($08), y	; b1 08
B1_1984:		and $01			; 25 01
B1_1986:		iny				; c8 
B1_1987:		ora ($08), y	; 11 08
B1_1989:		sta $0300, x	; 9d 00 03
B1_198c:		inx				; e8 
B1_198d:		stx $1d			; 86 1d
B1_198f:		rts				; 60 


B1_1990:		lda $0785		; ad 85 07
B1_1993:		asl a			; 0a
B1_1994:		tay				; a8 
B1_1995:		lda $b9fa, y	; b9 fa b9
B1_1998:		sta $62			; 85 62
B1_199a:		lda $b9fb, y	; b9 fb b9
B1_199d:		sta $61			; 85 61
B1_199f:		jsr $e8b5		; 20 b5 e8
B1_19a2:		lda $0785		; ad 85 07
B1_19a5:		bne B1_19ab ; d0 04

B1_19a7:		ldy #$08		; a0 08
B1_19a9:		bne B1_19b5 ; d0 0a

B1_19ab:		cmp #$0b		; c9 0b
B1_19ad:		bne B1_19b3 ; d0 04

B1_19af:		ldy #$11		; a0 11
B1_19b1:		bne B1_19b5 ; d0 02

B1_19b3:		ldy #$00		; a0 00
B1_19b5:		lda #$04		; a9 04
B1_19b7:		sta $00			; 85 00
B1_19b9:		lda $b9e0, y	; b9 e0 b9
B1_19bc:		cmp #$ff		; c9 ff
B1_19be:		beq B1_19dd ; f0 1d

B1_19c0:		sta $0300, x	; 9d 00 03
B1_19c3:		iny				; c8 
B1_19c4:		inx				; e8 
B1_19c5:		dec $00			; c6 00
B1_19c7:		bne B1_19b9 ; d0 f0

B1_19c9:		jsr $e8de		; 20 de e8
B1_19cc:		lda #$20		; a9 20
B1_19ce:		clc				; 18 
B1_19cf:		adc $61			; 65 61
B1_19d1:		sta $61			; 85 61
B1_19d3:		bcc B1_19d7 ; 90 02

B1_19d5:		inc $62			; e6 62
B1_19d7:		jsr $e8b5		; 20 b5 e8
B1_19da:		jmp $b9b5		; 4c b5 b9


B1_19dd:		jmp $e8de		; 4c de e8


B1_19e0:		eor $79, x		; 55 79
B1_19e2:		sei				; 78 
B1_19e3:		eor $5a, x		; 55 5a
B1_19e5:	.db $5b
B1_19e6:	.db $5b
B1_19e7:		sei				; 78 
B1_19e8:		jmp $6c5c		; 4c 5c 6c


B1_19eb:	.db $7c
B1_19ec:		eor $6d5d		; 4d 5d 6d
B1_19ef:		adc $55ff, x	; 7d ff 55
B1_19f2:		adc $5578, y	; 79 78 55
B1_19f5:	.db $5a
B1_19f6:	.db $5b
B1_19f7:	.db $5b
B1_19f8:		sei				; 78 
B1_19f9:	.db $ff
B1_19fa:		jsr $20ce		; 20 ce 20
B1_19fd:		dec $0e21		; ce 21 0e
B1_1a00:		and ($4e, x)	; 21 4e
B1_1a02:		and ($8e, x)	; 21 8e
B1_1a04:		and ($ce, x)	; 21 ce
B1_1a06:	.db $22
B1_1a07:		asl $4e22		; 0e 22 4e
B1_1a0a:	.db $22
B1_1a0b:		stx $ce22		; 8e 22 ce
B1_1a0e:	.db $23
B1_1a0f:		asl $4e23		; 0e 23 4e
B1_1a12:	.db $23
B1_1a13:	.db $cb
B1_1a14:	.db $23
B1_1a15:	.db $d3
B1_1a16:	.db $23
B1_1a17:	.db $d3
B1_1a18:	.db $23
B1_1a19:	.db $db
B1_1a1a:	.db $23
B1_1a1b:	.db $db
B1_1a1c:	.db $23
B1_1a1d:	.db $e3
B1_1a1e:	.db $23
B1_1a1f:	.db $e3
B1_1a20:	.db $23
B1_1a21:	.db $eb
B1_1a22:	.db $23
B1_1a23:	.db $eb
B1_1a24:	.db $23
B1_1a25:	.db $f3
B1_1a26:	.db $23
B1_1a27:	.db $f3
B1_1a28:	.db $ff
B1_1a29:	.db $ff
B1_1a2a:		rol $34ba		; 2e ba 34
B1_1a2d:		tsx				; ba 
B1_1a2e:	.db $f3
B1_1a2f:	.db $04
B1_1a30:	.db $33
B1_1a31:	.db $44
B1_1a32:	.db $33
B1_1a33:		rti				; 40 


B1_1a34:	.db $fc
B1_1a35:		ora ($cc, x)	; 01 cc
B1_1a37:		ora ($cc), y	; 11 cc
B1_1a39:		;removed
	.db $10 $a0

B1_1a3b:		ldy #$2a		; a0 2a
B1_1a3d:		txa				; 8a 
B1_1a3e:	.db $bb
B1_1a3f:		cpx #$ba		; e0 ba
B1_1a41:		nop				; ea 
B1_1a42:		asl a			; 0a
B1_1a43:		asl a			; 0a
B1_1a44:		.db $00				; 00
B1_1a45:		.db $00				; 00
B1_1a46:		lda $6b			; a5 6b
B1_1a48:		jsr jumpTablePreserveY		; 20 6d e8
B1_1a4b:		eor ($ba), y	; 51 ba
B1_1a4d:		eor $7fba, y	; 59 ba 7f
B1_1a50:		tsx				; ba 
B1_1a51:		lda #$00		; a9 00
B1_1a53:		sta $0788		; 8d 88 07
B1_1a56:		inc $6b			; e6 6b
B1_1a58:		rts				; 60 


B1_1a59:		lda $1a			; a5 1a
B1_1a5b:		and #$03		; 29 03
B1_1a5d:		beq B1_1a60 ; f0 01

B1_1a5f:		rts				; 60 


B1_1a60:		ldy $0788		; ac 88 07
B1_1a63:		lda $ba7b, y	; b9 7b ba
B1_1a66:		jsr func_1f_0ce9		; 20 e9 ec
B1_1a69:		lda #$04		; a9 04
B1_1a6b:		jsr func_1f_0ce9		; 20 e9 ec
B1_1a6e:		inc $0788		; ee 88 07
B1_1a71:		lda $0788		; ad 88 07
B1_1a74:		cmp #$04		; c9 04
B1_1a76:		bne B1_1a7a ; d0 02

B1_1a78:		inc $6b			; e6 6b
B1_1a7a:		rts				; 60 


B1_1a7b:	.db $1c
B1_1a7c:	.db $1b
B1_1a7d:	.db $1a
B1_1a7e:		ora $9520, y	; 19 20 95
B1_1a81:		tsx				; ba 
B1_1a82:		lda $7d			; a5 7d
B1_1a84:		and #$0f		; 29 0f
B1_1a86:		beq B1_1a8c ; f0 04

B1_1a88:		lda #$24		; a9 24
B1_1a8a:		bne B1_1a8e ; d0 02

B1_1a8c:		lda #$13		; a9 13
B1_1a8e:		sta $3f			; 85 3f
B1_1a90:		lda #$03		; a9 03
B1_1a92:		sta $2a			; 85 2a
B1_1a94:		rts				; 60 


B1_1a95:		jsr $bdda		; 20 da bd
B1_1a98:		ldy #$00		; a0 00
B1_1a9a:		lda ($08), y	; b1 08
B1_1a9c:		asl a			; 0a
B1_1a9d:		sec				; 38 
B1_1a9e:		sbc #$02		; e9 02
B1_1aa0:		sta $0c			; 85 0c
B1_1aa2:		ldy #$01		; a0 01
B1_1aa4:		lda ($08), y	; b1 08
B1_1aa6:		sta $0a			; 85 0a
B1_1aa8:		iny				; c8 
B1_1aa9:		lda ($08), y	; b1 08
B1_1aab:		sta $0b			; 85 0b
B1_1aad:		jsr $bac2		; 20 c2 ba
B1_1ab0:		lda $0c			; a5 0c
B1_1ab2:		clc				; 18 
B1_1ab3:		adc #$02		; 69 02
B1_1ab5:		sta $0c			; 85 0c
B1_1ab7:		ldy #$03		; a0 03
B1_1ab9:		lda ($08), y	; b1 08
B1_1abb:		sta $0a			; 85 0a
B1_1abd:		iny				; c8 
B1_1abe:		lda ($08), y	; b1 08
B1_1ac0:		sta $0b			; 85 0b
B1_1ac2:		ldy $59			; a4 59
B1_1ac4:		sty $0f			; 84 0f
B1_1ac6:		lda #$0c		; a9 0c
B1_1ac8:		sta $00			; 85 00
B1_1aca:		lda ($0a), y	; b1 0a
B1_1acc:		cmp #$ff		; c9 ff
B1_1ace:		beq B1_1ae5 ; f0 15

B1_1ad0:		cmp #$aa		; c9 aa
B1_1ad2:		beq B1_1afa ; f0 26

B1_1ad4:		cmp #$0a		; c9 0a
B1_1ad6:		beq B1_1af0 ; f0 18

B1_1ad8:		cmp #$a5		; c9 a5
B1_1ada:		beq B1_1ae6 ; f0 0a

B1_1adc:		ldy $0f			; a4 0f
B1_1ade:		iny				; c8 
B1_1adf:		sty $0f			; 84 0f
B1_1ae1:		dec $00			; c6 00
B1_1ae3:		bne B1_1aca ; d0 e5

B1_1ae5:		rts				; 60 


B1_1ae6:		jsr $bb07		; 20 07 bb
B1_1ae9:		lda #$00		; a9 00
B1_1aeb:		sta $06e1, y	; 99 e1 06
B1_1aee:		beq B1_1adc ; f0 ec

B1_1af0:		jsr $bb07		; 20 07 bb
B1_1af3:		lda #$00		; a9 00
B1_1af5:		sta $06e0, y	; 99 e0 06
B1_1af8:		beq B1_1adc ; f0 e2

B1_1afa:		jsr $bb07		; 20 07 bb
B1_1afd:		lda #$00		; a9 00
B1_1aff:		sta $06e0, y	; 99 e0 06
B1_1b02:		sta $06e1, y	; 99 e1 06
B1_1b05:		beq B1_1adc ; f0 d5

B1_1b07:		tya				; 98 
B1_1b08:		cmp #$0c		; c9 0c
B1_1b0a:		bcc B1_1b11 ; 90 05

B1_1b0c:		sbc #$0c		; e9 0c
B1_1b0e:		jmp $bb08		; 4c 08 bb


B1_1b11:		tay				; a8 
B1_1b12:		lda $fd4c, y	; b9 4c fd
B1_1b15:		clc				; 18 
B1_1b16:		adc $0c			; 65 0c
B1_1b18:		tay				; a8 
B1_1b19:		rts				; 60 


B1_1b1a:		lda $6b			; a5 6b
B1_1b1c:		jsr jumpTablePreserveY		; 20 6d e8
B1_1b1f:	.db $27
B1_1b20:	.db $bb
B1_1b21:		jmp (func_1f_08bb)		; 6c bb e8


B1_1b24:		ldy $bcf5, x	; bc f5 bc
B1_1b27:		lda #$35		; a9 35
B1_1b29:		jsr playSound		; 20 5f e2
B1_1b2c:		lda $0438		; ad 38 04
B1_1b2f:		clc				; 18 
B1_1b30:		adc $56			; 65 56
B1_1b32:		sta $00			; 85 00
B1_1b34:		lda #$00		; a9 00
B1_1b36:		adc $57			; 65 57
B1_1b38:		lsr a			; 4a
B1_1b39:		ror $00			; 66 00
B1_1b3b:		lsr a			; 4a
B1_1b3c:		ror $00			; 66 00
B1_1b3e:		lsr a			; 4a
B1_1b3f:		ror $00			; 66 00
B1_1b41:		lsr a			; 4a
B1_1b42:		ror $00			; 66 00
B1_1b44:		lda $00			; a5 00
B1_1b46:		sta $0782		; 8d 82 07
B1_1b49:		sta $0784		; 8d 84 07
B1_1b4c:		sta $0786		; 8d 86 07
B1_1b4f:		lda $041c		; ad 1c 04
B1_1b52:		lsr a			; 4a
B1_1b53:		lsr a			; 4a
B1_1b54:		lsr a			; 4a
B1_1b55:		lsr a			; 4a
B1_1b56:		lsr a			; 4a
B1_1b57:		sta $0783		; 8d 83 07
B1_1b5a:		sta $0785		; 8d 85 07
B1_1b5d:		sta $0787		; 8d 87 07
B1_1b60:		lda #$0c		; a9 0c
B1_1b62:		sta $0788		; 8d 88 07
B1_1b65:		lda #$01		; a9 01
B1_1b67:		sta $3f			; 85 3f
B1_1b69:		inc $6b			; e6 6b
B1_1b6b:		rts				; 60 


B1_1b6c:		lda $1a			; a5 1a
B1_1b6e:		and #$01		; 29 01
B1_1b70:		beq B1_1b79 ; f0 07

B1_1b72:		dec $0788		; ce 88 07
B1_1b75:		bne B1_1b7a ; d0 03

B1_1b77:		inc $6b			; e6 6b
B1_1b79:		rts				; 60 


B1_1b7a:		jsr $bde0		; 20 e0 bd
B1_1b7d:		ldx #$00		; a2 00
B1_1b7f:		jsr $bbde		; 20 de bb
B1_1b82:		ldy $0784		; ac 84 07
B1_1b85:		dey				; 88 
B1_1b86:		tya				; 98 
B1_1b87:		lsr a			; 4a
B1_1b88:		tay				; a8 
B1_1b89:		lda ($0a), y	; b1 0a
B1_1b8b:		cmp #$0a		; c9 0a
B1_1b8d:		beq B1_1bab ; f0 1c

B1_1b8f:		cmp #$a5		; c9 a5
B1_1b91:		beq B1_1bab ; f0 18

B1_1b93:		cmp #$aa		; c9 aa
B1_1b95:		beq B1_1bab ; f0 14

B1_1b97:		ldy #$00		; a0 00
B1_1b99:		lda $0785		; ad 85 07
B1_1b9c:		sec				; 38 
B1_1b9d:		sbc ($08), y	; f1 08
B1_1b9f:		bne B1_1ba6 ; d0 05

B1_1ba1:		inc $0785		; ee 85 07
B1_1ba4:		bne B1_1bae ; d0 08

B1_1ba6:		dec $0785		; ce 85 07
B1_1ba9:		bne B1_1bae ; d0 03

B1_1bab:		dec $0784		; ce 84 07
B1_1bae:		ldx #$02		; a2 02
B1_1bb0:		jsr $bbde		; 20 de bb
B1_1bb3:		ldy $0786		; ac 86 07
B1_1bb6:		iny				; c8 
B1_1bb7:		tya				; 98 
B1_1bb8:		lsr a			; 4a
B1_1bb9:		tay				; a8 
B1_1bba:		lda ($0a), y	; b1 0a
B1_1bbc:		cmp #$0a		; c9 0a
B1_1bbe:		beq B1_1bda ; f0 1a

B1_1bc0:		cmp #$a5		; c9 a5
B1_1bc2:		beq B1_1bda ; f0 16

B1_1bc4:		cmp #$aa		; c9 aa
B1_1bc6:		beq B1_1bda ; f0 12

B1_1bc8:		ldy #$00		; a0 00
B1_1bca:		lda $0787		; ad 87 07
B1_1bcd:		sec				; 38 
B1_1bce:		sbc ($08), y	; f1 08
B1_1bd0:		bne B1_1bd6 ; d0 04

B1_1bd2:		inc $0787		; ee 87 07
B1_1bd5:		rts				; 60 


B1_1bd6:		dec $0787		; ce 87 07
B1_1bd9:		rts				; 60 


B1_1bda:		inc $0786		; ee 86 07
B1_1bdd:		rts				; 60 


B1_1bde:		stx $0f			; 86 0f
B1_1be0:		ldy #$00		; a0 00
B1_1be2:		lda $0785, x	; bd 85 07
B1_1be5:		sec				; 38 
B1_1be6:		sbc ($08), y	; f1 08
B1_1be8:		asl a			; 0a
B1_1be9:		tay				; a8 
B1_1bea:		iny				; c8 
B1_1beb:		lda ($08), y	; b1 08
B1_1bed:		sta $0a			; 85 0a
B1_1bef:		iny				; c8 
B1_1bf0:		lda ($08), y	; b1 08
B1_1bf2:		sta $0b			; 85 0b
B1_1bf4:		lda $0784, x	; bd 84 07
B1_1bf7:		lsr a			; 4a
B1_1bf8:		bcs B1_1c31 ; b0 37

B1_1bfa:		tay				; a8 
B1_1bfb:		lda $0f			; a5 0f
B1_1bfd:		beq B1_1c18 ; f0 19

B1_1bff:		lda ($0a), y	; b1 0a
B1_1c01:		cmp #$aa		; c9 aa
B1_1c03:		beq B1_1c13 ; f0 0e

B1_1c05:		cmp #$a5		; c9 a5
B1_1c07:		beq B1_1c0e ; f0 05

B1_1c09:		ora #$03		; 09 03
B1_1c0b:		jmp $bc65		; 4c 65 bc


B1_1c0e:		ora #$30		; 09 30
B1_1c10:		jmp $bc65		; 4c 65 bc


B1_1c13:		ora #$33		; 09 33
B1_1c15:		jmp $bc65		; 4c 65 bc


B1_1c18:		lda ($0a), y	; b1 0a
B1_1c1a:		cmp #$aa		; c9 aa
B1_1c1c:		beq B1_1c2c ; f0 0e

B1_1c1e:		cmp #$a5		; c9 a5
B1_1c20:		beq B1_1c27 ; f0 05

B1_1c22:		ora #$0f		; 09 0f
B1_1c24:		jmp $bc65		; 4c 65 bc


B1_1c27:		ora #$f0		; 09 f0
B1_1c29:		jmp $bc65		; 4c 65 bc


B1_1c2c:		ora #$ff		; 09 ff
B1_1c2e:		jmp $bc65		; 4c 65 bc


B1_1c31:		tay				; a8 
B1_1c32:		lda $0f			; a5 0f
B1_1c34:		beq B1_1c4f ; f0 19

B1_1c36:		lda ($0a), y	; b1 0a
B1_1c38:		cmp #$aa		; c9 aa
B1_1c3a:		beq B1_1c4a ; f0 0e

B1_1c3c:		cmp #$a5		; c9 a5
B1_1c3e:		beq B1_1c45 ; f0 05

B1_1c40:		ora #$0f		; 09 0f
B1_1c42:		jmp $bc65		; 4c 65 bc


B1_1c45:		ora #$f0		; 09 f0
B1_1c47:		jmp $bc65		; 4c 65 bc


B1_1c4a:		ora #$ff		; 09 ff
B1_1c4c:		jmp $bc65		; 4c 65 bc


B1_1c4f:		lda ($0a), y	; b1 0a
B1_1c51:		cmp #$aa		; c9 aa
B1_1c53:		beq B1_1c63 ; f0 0e

B1_1c55:		cmp #$a5		; c9 a5
B1_1c57:		beq B1_1c5e ; f0 05

B1_1c59:		ora #$0c		; 09 0c
B1_1c5b:		jmp $bc65		; 4c 65 bc


B1_1c5e:		ora #$c0		; 09 c0
B1_1c60:		jmp $bc65		; 4c 65 bc


B1_1c63:		ora #$cc		; 09 cc
B1_1c65:		sta $00			; 85 00
B1_1c67:		sty $01			; 84 01
B1_1c69:		tya				; 98 
B1_1c6a:		and #$07		; 29 07
B1_1c6c:		sta $61			; 85 61
B1_1c6e:		lda $0785, x	; bd 85 07
B1_1c71:		asl a			; 0a
B1_1c72:		asl a			; 0a
B1_1c73:		asl a			; 0a
B1_1c74:		clc				; 18 
B1_1c75:		adc $61			; 65 61
B1_1c77:		clc				; 18 
B1_1c78:		adc #$c0		; 69 c0
B1_1c7a:		sta $61			; 85 61
B1_1c7c:		lda $75			; a5 75
B1_1c7e:		asl a			; 0a
B1_1c7f:		asl a			; 0a
B1_1c80:		asl a			; 0a
B1_1c81:		and #$08		; 29 08
B1_1c83:		sta $02			; 85 02
B1_1c85:		lda $01			; a5 01
B1_1c87:		and #$08		; 29 08
B1_1c89:		eor $02			; 45 02
B1_1c8b:		bne B1_1c91 ; d0 04

B1_1c8d:		lda #$23		; a9 23
B1_1c8f:		bne B1_1c93 ; d0 02

B1_1c91:		lda #$27		; a9 27
B1_1c93:		sta $62			; 85 62
B1_1c95:		jsr $e8b5		; 20 b5 e8
B1_1c98:		lda $00			; a5 00
B1_1c9a:		sta $0300, x	; 9d 00 03
B1_1c9d:		inx				; e8 
B1_1c9e:		stx $1d			; 86 1d
B1_1ca0:		jsr $ed12		; 20 12 ed
B1_1ca3:		lda #$02		; a9 02
B1_1ca5:		sta $01			; 85 01
B1_1ca7:		ldx $0f			; a6 0f
B1_1ca9:		lda $0785, x	; bd 85 07
B1_1cac:		asl a			; 0a
B1_1cad:		sec				; 38 
B1_1cae:		sbc #$02		; e9 02
B1_1cb0:		sta $00			; 85 00
B1_1cb2:		lda $7d			; a5 7d
B1_1cb4:		and #$0f		; 29 0f
B1_1cb6:		beq B1_1cc0 ; f0 08

B1_1cb8:		lda $041c		; ad 1c 04
B1_1cbb:		bpl B1_1cc0 ; 10 03

B1_1cbd:		clc				; 18 
B1_1cbe:		inc $00			; e6 00
B1_1cc0:		lda $0784, x	; bd 84 07
B1_1cc3:		lsr a			; 4a
B1_1cc4:		lsr a			; 4a
B1_1cc5:		lsr a			; 4a
B1_1cc6:		lsr a			; 4a
B1_1cc7:		tay				; a8 
B1_1cc8:		lda $0784, x	; bd 84 07
B1_1ccb:		and #$0f		; 29 0f
B1_1ccd:		lsr a			; 4a
B1_1cce:		ora $fd61, y	; 19 61 fd
B1_1cd1:		cmp #$0c		; c9 0c
B1_1cd3:		bcc B1_1cda ; 90 05

B1_1cd5:		sbc #$0c		; e9 0c
B1_1cd7:		jmp $bcd1		; 4c d1 bc


B1_1cda:		tay				; a8 
B1_1cdb:		lda $fd4c, y	; b9 4c fd
B1_1cde:		clc				; 18 
B1_1cdf:		adc $00			; 65 00
B1_1ce1:		tay				; a8 
B1_1ce2:		lda #$88		; a9 88
B1_1ce4:		sta $06e0, y	; 99 e0 06
B1_1ce7:		rts				; 60 


B1_1ce8:		lda #$1c		; a9 1c
B1_1cea:		jsr func_1f_0ce9		; 20 e9 ec
B1_1ced:		lda #$04		; a9 04
B1_1cef:		jsr func_1f_0ce9		; 20 e9 ec
B1_1cf2:		inc $6b			; e6 6b
B1_1cf4:		rts				; 60 


B1_1cf5:		jsr $bdda		; 20 da bd
B1_1cf8:		ldy #$00		; a0 00
B1_1cfa:		lda ($08), y	; b1 08
B1_1cfc:		asl a			; 0a
B1_1cfd:		asl a			; 0a
B1_1cfe:		asl a			; 0a
B1_1cff:		clc				; 18 
B1_1d00:		adc #$c0		; 69 c0
B1_1d02:		sta $61			; 85 61
B1_1d04:		lda $56			; a5 56
B1_1d06:		sta $0c			; 85 0c
B1_1d08:		lda $57			; a5 57
B1_1d0a:		lsr a			; 4a
B1_1d0b:		ror $0c			; 66 0c
B1_1d0d:		lsr a			; 4a
B1_1d0e:		ror $0c			; 66 0c
B1_1d10:		lsr a			; 4a
B1_1d11:		ror $0c			; 66 0c
B1_1d13:		lsr a			; 4a
B1_1d14:		ror $0c			; 66 0c
B1_1d16:		lsr a			; 4a
B1_1d17:		ror $0c			; 66 0c
B1_1d19:		lda $0c			; a5 0c
B1_1d1b:		sec				; 38 
B1_1d1c:		sbc #$02		; e9 02
B1_1d1e:		bpl B1_1d22 ; 10 02

B1_1d20:		lda #$00		; a9 00
B1_1d22:		sta $0c			; 85 0c
B1_1d24:		lda $75			; a5 75
B1_1d26:		asl a			; 0a
B1_1d27:		asl a			; 0a
B1_1d28:		asl a			; 0a
B1_1d29:		and #$08		; 29 08
B1_1d2b:		sta $00			; 85 00
B1_1d2d:		lda $0c			; a5 0c
B1_1d2f:		and #$07		; 29 07
B1_1d31:		sta $02			; 85 02
B1_1d33:		lda $0c			; a5 0c
B1_1d35:		and #$08		; 29 08
B1_1d37:		eor $00			; 45 00
B1_1d39:		beq B1_1d3f ; f0 04

B1_1d3b:		lda #$27		; a9 27
B1_1d3d:		bne B1_1d41 ; d0 02

B1_1d3f:		lda #$23		; a9 23
B1_1d41:		sta $62			; 85 62
B1_1d43:		sta $04			; 85 04
B1_1d45:		lda $02			; a5 02
B1_1d47:		clc				; 18 
B1_1d48:		adc $61			; 65 61
B1_1d4a:		sta $61			; 85 61
B1_1d4c:		sta $05			; 85 05
B1_1d4e:		ldy #$01		; a0 01
B1_1d50:		lda ($08), y	; b1 08
B1_1d52:		sta $0a			; 85 0a
B1_1d54:		iny				; c8 
B1_1d55:		lda ($08), y	; b1 08
B1_1d57:		sta $0b			; 85 0b
B1_1d59:		jsr $bd86		; 20 86 bd
B1_1d5c:		lda $04			; a5 04
B1_1d5e:		sta $62			; 85 62
B1_1d60:		lda $05			; a5 05
B1_1d62:		clc				; 18 
B1_1d63:		adc #$08		; 69 08
B1_1d65:		sta $61			; 85 61
B1_1d67:		ldy #$03		; a0 03
B1_1d69:		lda ($08), y	; b1 08
B1_1d6b:		sta $0a			; 85 0a
B1_1d6d:		iny				; c8 
B1_1d6e:		lda ($08), y	; b1 08
B1_1d70:		sta $0b			; 85 0b
B1_1d72:		jsr $bd86		; 20 86 bd
B1_1d75:		lda $0565		; ad 65 05
B1_1d78:		and #$7f		; 29 7f
B1_1d7a:		sta $0565		; 8d 65 05
B1_1d7d:		lda #$68		; a9 68
B1_1d7f:		sta $c7			; 85 c7
B1_1d81:		lda #$1b		; a9 1b
B1_1d83:		sta $2a			; 85 2a
B1_1d85:		rts				; 60 


B1_1d86:		ldy $0c			; a4 0c
B1_1d88:		lda #$0c		; a9 0c
B1_1d8a:		sta $0f			; 85 0f
B1_1d8c:		lda ($0a), y	; b1 0a
B1_1d8e:		cmp #$ff		; c9 ff
B1_1d90:		beq B1_1dc5 ; f0 33

B1_1d92:		cmp #$0a		; c9 0a
B1_1d94:		beq B1_1dc6 ; f0 30

B1_1d96:		cmp #$a5		; c9 a5
B1_1d98:		beq B1_1dc6 ; f0 2c

B1_1d9a:		cmp #$aa		; c9 aa
B1_1d9c:		beq B1_1dc6 ; f0 28

B1_1d9e:		dec $0f			; c6 0f
B1_1da0:		beq B1_1dc5 ; f0 23

B1_1da2:		lda $61			; a5 61
B1_1da4:		and #$08		; 29 08
B1_1da6:		sta $01			; 85 01
B1_1da8:		inc $61			; e6 61
B1_1daa:		lda $61			; a5 61
B1_1dac:		and #$08		; 29 08
B1_1dae:		eor $01			; 45 01
B1_1db0:		bne B1_1db5 ; d0 03

B1_1db2:		iny				; c8 
B1_1db3:		bne B1_1d8c ; d0 d7

B1_1db5:		lda $61			; a5 61
B1_1db7:		sec				; 38 
B1_1db8:		sbc #$08		; e9 08
B1_1dba:		sta $61			; 85 61
B1_1dbc:		lda $62			; a5 62
B1_1dbe:		eor #$04		; 49 04
B1_1dc0:		sta $62			; 85 62
B1_1dc2:		jmp $bdb2		; 4c b2 bd


B1_1dc5:		rts				; 60 


B1_1dc6:		jsr $e8b5		; 20 b5 e8
B1_1dc9:		lda ($0a), y	; b1 0a
B1_1dcb:		sta $0300, x	; 9d 00 03
B1_1dce:		inx				; e8 
B1_1dcf:		lda #$ff		; a9 ff
B1_1dd1:		sta $0300, x	; 9d 00 03
B1_1dd4:		inx				; e8 
B1_1dd5:		stx $1d			; 86 1d
B1_1dd7:		bne B1_1d9e ; d0 c5

B1_1dd9:		rts				; 60 


B1_1dda:		lda $0789		; ad 89 07
B1_1ddd:		jmp $bdf1		; 4c f1 bd


B1_1de0:		lda $7d			; a5 7d
B1_1de2:		and #$0f		; 29 0f
B1_1de4:		beq B1_1dee ; f0 08

B1_1de6:		ldy $041c		; ac 1c 04
B1_1de9:		bpl B1_1dee ; 10 03

B1_1deb:		clc				; 18 
B1_1dec:		adc #$01		; 69 01
B1_1dee:		sta $0789		; 8d 89 07
B1_1df1:		asl a			; 0a
B1_1df2:		tay				; a8 
B1_1df3:		lda $bdfe, y	; b9 fe bd
B1_1df6:		sta $08			; 85 08
B1_1df8:		lda $bdff, y	; b9 ff bd
B1_1dfb:		sta $09			; 85 09
B1_1dfd:		rts				; 60 


B1_1dfe:	.db $72
B1_1dff:		ldx $be04, y	; be 04 be
B1_1e02:		ora #$be		; 09 be
B1_1e04:	.db $03
B1_1e05:		asl $27be		; 0e be 27
B1_1e08:		ldx $4005, y	; be 05 40
B1_1e0b:		ldx $be59, y	; be 59 be
B1_1e0e:		.db $00				; 00
B1_1e0f:		.db $00				; 00
B1_1e10:		.db $00				; 00
B1_1e11:		.db $00				; 00
B1_1e12:		.db $00				; 00
B1_1e13:		tax				; aa 
B1_1e14:		asl a			; 0a
B1_1e15:		asl a			; 0a
B1_1e16:		asl a			; 0a
B1_1e17:		asl a			; 0a
B1_1e18:		asl a			; 0a
B1_1e19:		asl a			; 0a
B1_1e1a:		asl a			; 0a
B1_1e1b:		asl a			; 0a
B1_1e1c:		asl a			; 0a
B1_1e1d:		asl a			; 0a
B1_1e1e:		asl a			; 0a
B1_1e1f:		tax				; aa 
B1_1e20:		.db $00				; 00
B1_1e21:		.db $00				; 00
B1_1e22:		.db $00				; 00
B1_1e23:		.db $00				; 00
B1_1e24:		.db $00				; 00
B1_1e25:		.db $00				; 00
B1_1e26:	.db $ff
B1_1e27:		.db $00				; 00
B1_1e28:		.db $00				; 00
B1_1e29:		.db $00				; 00
B1_1e2a:		.db $00				; 00
B1_1e2b:		.db $00				; 00
B1_1e2c:		tax				; aa 
B1_1e2d:		.db $00				; 00
B1_1e2e:		.db $00				; 00
B1_1e2f:		.db $00				; 00
B1_1e30:		.db $00				; 00
B1_1e31:		.db $00				; 00
B1_1e32:		.db $00				; 00
B1_1e33:		.db $00				; 00
B1_1e34:		.db $00				; 00
B1_1e35:		.db $00				; 00
B1_1e36:		.db $00				; 00
B1_1e37:		.db $00				; 00
B1_1e38:		tax				; aa 
B1_1e39:		.db $00				; 00
B1_1e3a:		.db $00				; 00
B1_1e3b:		.db $00				; 00
B1_1e3c:		.db $00				; 00
B1_1e3d:		.db $00				; 00
B1_1e3e:		.db $00				; 00
B1_1e3f:	.db $ff
B1_1e40:		.db $00				; 00
B1_1e41:		.db $00				; 00
B1_1e42:		lda $a5			; a5 a5
B1_1e44:		lda $aa			; a5 aa
B1_1e46:		lda $a5			; a5 a5
B1_1e48:		lda $a5			; a5 a5
B1_1e4a:		lda $a5			; a5 a5
B1_1e4c:		lda $a5			; a5 a5
B1_1e4e:		lda $a5			; a5 a5
B1_1e50:		lda $aa			; a5 aa
B1_1e52:		lda $a5			; a5 a5
B1_1e54:		lda $a5			; a5 a5
B1_1e56:		.db $00				; 00
B1_1e57:		.db $00				; 00
B1_1e58:	.db $ff
B1_1e59:		.db $00				; 00
B1_1e5a:		.db $00				; 00
B1_1e5b:		tax				; aa 
B1_1e5c:		.db $00				; 00
B1_1e5d:		.db $00				; 00
B1_1e5e:		.db $00				; 00
B1_1e5f:		.db $00				; 00
B1_1e60:		.db $00				; 00
B1_1e61:		.db $00				; 00
B1_1e62:		.db $00				; 00
B1_1e63:		.db $00				; 00
B1_1e64:		.db $00				; 00
B1_1e65:		.db $00				; 00
B1_1e66:		.db $00				; 00
B1_1e67:		.db $00				; 00
B1_1e68:		.db $00				; 00
B1_1e69:		.db $00				; 00
B1_1e6a:		.db $00				; 00
B1_1e6b:		.db $00				; 00
B1_1e6c:		.db $00				; 00
B1_1e6d:		.db $00				; 00
B1_1e6e:		tax				; aa 
B1_1e6f:		.db $00				; 00
B1_1e70:		.db $00				; 00
B1_1e71:	.db $ff
B1_1e72:	.db $04
B1_1e73:	.db $77
B1_1e74:		ldx $be98, y	; be 98 be
B1_1e77:		.db $00				; 00
B1_1e78:		.db $00				; 00
B1_1e79:		tax				; aa 
B1_1e7a:		asl a			; 0a
B1_1e7b:		asl a			; 0a
B1_1e7c:		asl a			; 0a
B1_1e7d:		asl a			; 0a
B1_1e7e:		asl a			; 0a
B1_1e7f:		asl a			; 0a
B1_1e80:		asl a			; 0a
B1_1e81:		asl a			; 0a
B1_1e82:		asl a			; 0a
B1_1e83:		asl a			; 0a
B1_1e84:		asl a			; 0a
B1_1e85:		asl a			; 0a
B1_1e86:		asl a			; 0a
B1_1e87:		asl a			; 0a
B1_1e88:		asl a			; 0a
B1_1e89:		asl a			; 0a
B1_1e8a:		asl a			; 0a
B1_1e8b:		asl a			; 0a
B1_1e8c:		asl a			; 0a
B1_1e8d:		asl a			; 0a
B1_1e8e:		asl a			; 0a
B1_1e8f:		asl a			; 0a
B1_1e90:		asl a			; 0a
B1_1e91:		asl a			; 0a
B1_1e92:		tax				; aa 
B1_1e93:		.db $00				; 00
B1_1e94:		.db $00				; 00
B1_1e95:		.db $00				; 00
B1_1e96:		.db $00				; 00
B1_1e97:	.db $ff
B1_1e98:		.db $00				; 00
B1_1e99:		.db $00				; 00
B1_1e9a:		asl a			; 0a
B1_1e9b:		.db $00				; 00
B1_1e9c:		.db $00				; 00
B1_1e9d:		.db $00				; 00
B1_1e9e:		.db $00				; 00
B1_1e9f:		.db $00				; 00
B1_1ea0:		.db $00				; 00
B1_1ea1:		.db $00				; 00
B1_1ea2:		.db $00				; 00
B1_1ea3:		.db $00				; 00
B1_1ea4:		.db $00				; 00
B1_1ea5:		.db $00				; 00
B1_1ea6:		.db $00				; 00
B1_1ea7:		.db $00				; 00
B1_1ea8:		.db $00				; 00
B1_1ea9:		.db $00				; 00
B1_1eaa:		.db $00				; 00
B1_1eab:		.db $00				; 00
B1_1eac:		.db $00				; 00
B1_1ead:		.db $00				; 00
B1_1eae:		.db $00				; 00
B1_1eaf:		.db $00				; 00
B1_1eb0:		.db $00				; 00
B1_1eb1:		.db $00				; 00
B1_1eb2:		.db $00				; 00
B1_1eb3:		tax				; aa 
B1_1eb4:		.db $00				; 00
B1_1eb5:		.db $00				; 00
B1_1eb6:		.db $00				; 00
B1_1eb7:		.db $00				; 00