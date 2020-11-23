B2_0000:	.db $82
B2_0001:		ldy #$00		; a0 00
B2_0003:		jsr $890c		; 20 0c 89
B2_0006:		rts				; 60 


B2_0007:	.db $27
B2_0008:	.db $80
B2_0009:		txa				; 8a 
B2_000a:	.db $83
B2_000b:		sec				; 38 
B2_000c:	.db $80
B2_000d:		txa				; 8a 
B2_000e:	.db $83
B2_000f:	.db $80
B2_0010:	.db $80
B2_0011:	.db $87
B2_0012:	.db $80
B2_0013:		txa				; 8a 
B2_0014:	.db $83
B2_0015:	.db $c3
B2_0016:	.db $80
B2_0017:		txa				; 8a 
B2_0018:	.db $83
B2_0019:		nop				; ea 
B2_001a:	.db $80
B2_001b:		sed				; f8 
B2_001c:	.db $80
B2_001d:		txa				; 8a 
B2_001e:	.db $83
B2_001f:		asl $81, x		; 16 81
B2_0021:		pha				; 48 
B2_0022:	.db $80
B2_0023:		sta ($81), y	; 91 81
B2_0025:	.db $77
B2_0026:	.db $82
B2_0027:		lda #$00		; a9 00
B2_0029:		sta $041a		; 8d 1a 04
B2_002c:		sta $041b		; 8d 1b 04
B2_002f:		lda #$ff		; a9 ff
B2_0031:		sta $07f3		; 8d f3 07
B2_0034:		inc $07ed		; ee ed 07
B2_0037:		rts				; 60 


B2_0038:		lda $32			; a5 32
B2_003a:		cmp #$0e		; c9 0e
B2_003c:		bne B2_0042 ; d0 04

B2_003e:		lda #$d0		; a9 d0
B2_0040:		bne B2_0031 ; d0 ef

B2_0042:		inc $07ed		; ee ed 07
B2_0045:		jmp $8034		; 4c 34 80


B2_0048:		ldy $32			; a4 32
B2_004a:		lda $8078, y	; b9 78 80
B2_004d:		sta $00			; 85 00
B2_004f:		ldx #$01		; a2 01
B2_0051:		lda $054e, x	; bd 4e 05
B2_0054:		cmp $00			; c5 00
B2_0056:		beq B2_005b ; f0 03

B2_0058:		jsr $966f		; 20 6f 96
B2_005b:		inx				; e8 
B2_005c:		cpx #$0d		; e0 0d
B2_005e:		bne B2_0051 ; d0 f1

B2_0060:		inc $07ed		; ee ed 07
B2_0063:		lda #$00		; a9 00
B2_0065:		sta $0413		; 8d 13 04
B2_0068:		sta $0414		; 8d 14 04
B2_006b:		sta $0415		; 8d 15 04
B2_006e:		sta $0416		; 8d 16 04
B2_0071:		sta $0418		; 8d 18 04
B2_0074:		sta $0419		; 8d 19 04
B2_0077:		rts				; 60 


B2_0078:		.db $00				; 00
B2_0079:	.db $03
B2_007a:	.db $02
B2_007b:		.db $00				; 00
B2_007c:		.db $00				; 00
B2_007d:		.db $00				; 00
B2_007e:		.db $00				; 00
B2_007f:		ora $a9			; 05 a9
B2_0081:		bpl B2_0010 ; 10 8d

B2_0083:	.db $f3
B2_0084:	.db $07
B2_0085:		bne B2_00a6 ; d0 1f

B2_0087:		lda $7e			; a5 7e
B2_0089:		ora $7f			; 05 7f
B2_008b:		beq B2_009d ; f0 10

B2_008d:		jsr $e656		; 20 56 e6
B2_0090:		jmp $80aa		; 4c aa 80


B2_0093:		lda #$02		; a9 02
B2_0095:		sta $07f3		; 8d f3 07
B2_0098:		rts				; 60 


B2_0099:		dec $07f3		; ce f3 07
B2_009c:		rts				; 60 


B2_009d:		lda #$12		; a9 12
B2_009f:		bne B2_00a3 ; d0 02

B2_00a1:		lda #$40		; a9 40
B2_00a3:		sta $07f3		; 8d f3 07
B2_00a6:		inc $07ed		; ee ed 07
B2_00a9:		rts				; 60 


B2_00aa:		lda #$10		; a9 10
B2_00ac:		sta $00			; 85 00
B2_00ae:		lda $07f3		; ad f3 07
B2_00b1:		bne B2_00bd ; d0 0a

B2_00b3:		lda #$08		; a9 08
B2_00b5:		sta $07f3		; 8d f3 07
B2_00b8:		lda #$19		; a9 19
B2_00ba:		jmp $83be		; 4c be 83


B2_00bd:		dec $07f3		; ce f3 07
B2_00c0:		jmp $83c1		; 4c c1 83


B2_00c3:		lda $07f3		; ad f3 07
B2_00c6:		bne B2_0099 ; d0 d1

B2_00c8:		lda $84			; a5 84
B2_00ca:		beq B2_00a1 ; f0 d5

B2_00cc:		dec $84			; c6 84
B2_00ce:		lda $84			; a5 84
B2_00d0:		and #$0f		; 29 0f
B2_00d2:		cmp #$0a		; c9 0a
B2_00d4:		bcc B2_00de ; 90 08

B2_00d6:		lda $84			; a5 84
B2_00d8:		and #$f0		; 29 f0
B2_00da:		ora #$09		; 09 09
B2_00dc:		sta $84			; 85 84
B2_00de:		jsr $8093		; 20 93 80
B2_00e1:		lda #$20		; a9 20
B2_00e3:		sta $00			; 85 00
B2_00e5:		lda #$1a		; a9 1a
B2_00e7:		jmp $83be		; 4c be 83


B2_00ea:		lda $3c			; a5 3c
B2_00ec:		cmp #$40		; c9 40
B2_00ee:		beq B2_00f5 ; f0 05

B2_00f0:		lda #$2c		; a9 2c
B2_00f2:		jsr playSound		; 20 5f e2
B2_00f5:		jmp $80a6		; 4c a6 80


B2_00f8:		lda $07f3		; ad f3 07
B2_00fb:		bne B2_0099 ; d0 9c

B2_00fd:		lda $3c			; a5 3c
B2_00ff:		clc				; 18 
B2_0100:		adc #$04		; 69 04
B2_0102:		cmp #$40		; c9 40
B2_0104:		bcs B2_010f ; b0 09

B2_0106:		sta $3c			; 85 3c
B2_0108:		lda #$00		; a9 00
B2_010a:		sta $00			; 85 00
B2_010c:		jmp $83c1		; 4c c1 83


B2_010f:		lda #$40		; a9 40
B2_0111:		sta $3c			; 85 3c
B2_0113:		jmp $80a1		; 4c a1 80


B2_0116:		lda $32			; a5 32
B2_0118:		cmp #$01		; c9 01
B2_011a:		bne B2_011e ; d0 02

B2_011c:		sta $2f			; 85 2f
B2_011e:		ldy $32			; a4 32
B2_0120:		lda $8171, y	; b9 71 81
B2_0123:		beq B2_015f ; f0 3a

B2_0125:		cmp #$02		; c9 02
B2_0127:		beq B2_014c ; f0 23

B2_0129:		cpy #$01		; c0 01
B2_012b:		bne B2_0133 ; d0 06

B2_012d:		lda $33			; a5 33
B2_012f:		cmp #$05		; c9 05
B2_0131:		beq B2_0168 ; f0 35

B2_0133:		lda $07f6		; ad f6 07
B2_0136:		bne B2_015f ; d0 27

B2_0138:		jsr $e593		; 20 93 e5
B2_013b:		bcs B2_015f ; b0 22

B2_013d:		ldy $32			; a4 32
B2_013f:		cpy #$07		; c0 07
B2_0141:		bne B2_0149 ; d0 06

B2_0143:		lda $33			; a5 33
B2_0145:		cmp #$06		; c9 06
B2_0147:		beq B2_015f ; f0 16

B2_0149:		jmp $80a6		; 4c a6 80


B2_014c:		lda $32			; a5 32
B2_014e:		cmp #$0e		; c9 0e
B2_0150:		bne B2_0156 ; d0 04

B2_0152:		lda #$0c		; a9 0c
B2_0154:		bne B2_0158 ; d0 02

B2_0156:		lda #$08		; a9 08
B2_0158:		sta $18			; 85 18
B2_015a:		lda #$00		; a9 00
B2_015c:		sta $19			; 85 19
B2_015e:		rts				; 60 


B2_015f:		lda #$1e		; a9 1e
B2_0161:		sta $2a			; 85 2a
B2_0163:		lda #$00		; a9 00
B2_0165:		sta $6b			; 85 6b
B2_0167:		rts				; 60 


B2_0168:		lda #$18		; a9 18
B2_016a:		sta $2a			; 85 2a
B2_016c:		lda #$02		; a9 02
B2_016e:		sta $6b			; 85 6b
B2_0170:		rts				; 60 


B2_0171:	.db $02
B2_0172:		ora ($01, x)	; 01 01
B2_0174:		.db $00				; 00
B2_0175:		.db $00				; 00
B2_0176:		.db $00				; 00
B2_0177:		.db $00				; 00
B2_0178:		ora ($00, x)	; 01 00
B2_017a:		.db $00				; 00
B2_017b:		.db $00				; 00
B2_017c:		.db $00				; 00
B2_017d:		.db $00				; 00
B2_017e:		.db $00				; 00
B2_017f:	.db $02
B2_0180:		.db $00				; 00
B2_0181:		.db $00				; 00
B2_0182:		.db $00				; 00
B2_0183:		.db $00				; 00
B2_0184:		.db $00				; 00
B2_0185:		.db $00				; 00
B2_0186:		.db $00				; 00
B2_0187:		.db $00				; 00
B2_0188:		.db $00				; 00
B2_0189:		.db $00				; 00
B2_018a:		.db $00				; 00
B2_018b:		.db $00				; 00
B2_018c:		.db $00				; 00
B2_018d:		.db $00				; 00
B2_018e:		.db $00				; 00
B2_018f:		.db $00				; 00
B2_0190:		.db $00				; 00
B2_0191:		lda #$04		; a9 04
B2_0193:		sta $00			; 85 00
B2_0195:		lda #$00		; a9 00
B2_0197:		sta $01			; 85 01
B2_0199:		ldx #$01		; a2 01
B2_019b:		lda $054e, x	; bd 4e 05
B2_019e:		beq B2_01ba ; f0 1a

B2_01a0:		ldy $32			; a4 32
B2_01a2:		cpy #$02		; c0 02
B2_01a4:		bne B2_01ac ; d0 06

B2_01a6:		jsr $966f		; 20 6f 96
B2_01a9:		jmp $8263		; 4c 63 82


B2_01ac:		lda $826f, y	; b9 6f 82
B2_01af:		sta $054e, x	; 9d 4e 05
B2_01b2:		lda #$03		; a9 03
B2_01b4:		sta $0606, x	; 9d 06 06
B2_01b7:		jmp $8263		; 4c 63 82


B2_01ba:		lda $00			; a5 00
B2_01bc:		cmp #$01		; c9 01
B2_01be:		bne B2_01c3 ; d0 03

B2_01c0:		jmp $8245		; 4c 45 82


B2_01c3:		lda $01			; a5 01
B2_01c5:		bne B2_020d ; d0 46

B2_01c7:		lda $054e		; ad 4e 05
B2_01ca:		beq B2_01d0 ; f0 04

B2_01cc:		lda #$02		; a9 02
B2_01ce:		bne B2_01d2 ; d0 02

B2_01d0:		lda #$01		; a9 01
B2_01d2:		sta $0606, x	; 9d 06 06
B2_01d5:		ldy $054e		; ac 4e 05
B2_01d8:		iny				; c8 
B2_01d9:		tya				; 98 
B2_01da:		sta $054e, x	; 9d 4e 05
B2_01dd:		lda $0400		; ad 00 04
B2_01e0:		sta $0400, x	; 9d 00 04
B2_01e3:		lda $048c		; ad 8c 04
B2_01e6:		sta $048c, x	; 9d 8c 04
B2_01e9:		lda $04a8		; ad a8 04
B2_01ec:		sta $04a8, x	; 9d a8 04
B2_01ef:		lda #$40		; a9 40
B2_01f1:		sta $0470, x	; 9d 70 04
B2_01f4:		lda $0438		; ad 38 04
B2_01f7:		sta $0438, x	; 9d 38 04
B2_01fa:		lda $041c		; ad 1c 04
B2_01fd:		sta $041c, x	; 9d 1c 04
B2_0200:		lda $0470		; ad 70 04
B2_0203:		ora #$80		; 09 80
B2_0205:		sta $0470		; 8d 70 04
B2_0208:		inc $01			; e6 01
B2_020a:		jmp $8263		; 4c 63 82


B2_020d:		ldy $3a			; a4 3a
B2_020f:		cpy #$ff		; c0 ff
B2_0211:		beq B2_0263 ; f0 50

B2_0213:		lda $054e		; ad 4e 05
B2_0216:		bne B2_021c ; d0 04

B2_0218:		lda #$02		; a9 02
B2_021a:		bne B2_021e ; d0 02

B2_021c:		lda #$01		; a9 01
B2_021e:		sta $0606, x	; 9d 06 06
B2_0221:		ldy $054e		; ac 4e 05
B2_0224:		bne B2_022a ; d0 04

B2_0226:		ldy $3a			; a4 3a
B2_0228:		bne B2_022c ; d0 02

B2_022a:		ldy $39			; a4 39
B2_022c:		lda $8286, y	; b9 86 82
B2_022f:		sta $0400, x	; 9d 00 04
B2_0232:		lda $828a, y	; b9 8a 82
B2_0235:		sta $048c, x	; 9d 8c 04
B2_0238:		iny				; c8 
B2_0239:		tya				; 98 
B2_023a:		sta $054e, x	; 9d 4e 05
B2_023d:		lda #$80		; a9 80
B2_023f:		sta $0470, x	; 9d 70 04
B2_0242:		jmp $8263		; 4c 63 82


B2_0245:		lda $32			; a5 32
B2_0247:		cmp #$02		; c9 02
B2_0249:		bne B2_0263 ; d0 18

B2_024b:		lda #$06		; a9 06
B2_024d:		sta $054e, x	; 9d 4e 05
B2_0250:		lda #$80		; a9 80
B2_0252:		sta $0470, x	; 9d 70 04
B2_0255:		lda #$00		; a9 00
B2_0257:		sta $0400, x	; 9d 00 04
B2_025a:		sta $048c, x	; 9d 8c 04
B2_025d:		sta $0606, x	; 9d 06 06
B2_0260:		sta $061d, x	; 9d 1d 06
B2_0263:		inx				; e8 
B2_0264:		dec $00			; c6 00
B2_0266:		beq B2_026b ; f0 03

B2_0268:		jmp $819b		; 4c 9b 81


B2_026b:		inc $07ed		; ee ed 07
B2_026e:		rts				; 60 


B2_026f:		.db $00				; 00
B2_0270:	.db $03
B2_0271:	.db $02
B2_0272:		.db $00				; 00
B2_0273:		.db $00				; 00
B2_0274:		.db $00				; 00
B2_0275:		.db $00				; 00
B2_0276:	.db $04
B2_0277:		lda #$00		; a9 00
B2_0279:		sta $07ed		; 8d ed 07
B2_027c:		sta $07f3		; 8d f3 07
B2_027f:		inc $07ec		; ee ec 07
B2_0282:		jsr setBank_c000_toRom1eh		; 20 da e2
B2_0285:		rts				; 60 


B2_0286:	.db $02
B2_0287:	.db $02
B2_0288:	.db $02
B2_0289:	.db $02
B2_028a:		.db $00				; 00
B2_028b:	.db $02
B2_028c:	.db $04
B2_028d:		asl $a0			; 06 a0
B2_028f:	.db $02
B2_0290:		jsr $890c		; 20 0c 89
B2_0293:		rts				; 60 


B2_0294:		ldy #$82		; a0 82
B2_0296:		bcs B2_021a ; b0 82

B2_0298:		cpy $5b82		; cc 82 5b
B2_029b:	.db $83
B2_029c:		txa				; 8a 
B2_029d:	.db $83
B2_029e:	.db $93
B2_029f:	.db $83
B2_02a0:		lda $32			; a5 32
B2_02a2:		cmp #$02		; c9 02
B2_02a4:		bne B2_02a7 ; d0 01

B2_02a6:		rts				; 60 


B2_02a7:		inc $07ed		; ee ed 07
B2_02aa:		lda #$00		; a9 00
B2_02ac:		sta $07f0		; 8d f0 07
B2_02af:		rts				; 60 


B2_02b0:		ldy $32			; a4 32
B2_02b2:		lda $82bb, y	; b9 bb 82
B2_02b5:		sta $07ef		; 8d ef 07
B2_02b8:		jmp $82c3		; 4c c3 82


B2_02bb:		.db $00				; 00
B2_02bc:		ora ($02, x)	; 01 02
B2_02be:		.db $00				; 00
B2_02bf:		.db $00				; 00
B2_02c0:		.db $00				; 00
B2_02c1:		.db $00				; 00
B2_02c2:	.db $03
B2_02c3:		lda #$01		; a9 01
B2_02c5:		sta $b5			; 85 b5
B2_02c7:		lda #$00		; a9 00
B2_02c9:		sta $b4			; 85 b4
B2_02cb:		rts				; 60 


B2_02cc:		lda $b4			; a5 b4
B2_02ce:		cmp #$ff		; c9 ff
B2_02d0:		beq B2_030a ; f0 38

B2_02d2:		lda $1d			; a5 1d
B2_02d4:		pha				; 48 
B2_02d5:		jsr $831e		; 20 1e 83
B2_02d8:		lda $07ec		; ad ec 07
B2_02db:		cmp #$02		; c9 02
B2_02dd:		bcs B2_02f3 ; b0 14

B2_02df:		pla				; 68 
B2_02e0:		sta $15			; 85 15
B2_02e2:		ldy #$00		; a0 00
B2_02e4:		lda $831a, y	; b9 1a 83
B2_02e7:		sta $00			; 85 00
B2_02e9:		lda $831b, y	; b9 1b 83
B2_02ec:		sta $01			; 85 01
B2_02ee:		lda #$80		; a9 80
B2_02f0:		jmp $e62f		; 4c 2f e6


B2_02f3:		pla				; 68 
B2_02f4:		sta $15			; 85 15
B2_02f6:		pha				; 48 
B2_02f7:		ldy #$02		; a0 02
B2_02f9:		jsr $82e4		; 20 e4 82
B2_02fc:		pla				; 68 
B2_02fd:		sta $15			; 85 15
B2_02ff:		lda $b4			; a5 b4
B2_0301:		cmp #$05		; c9 05
B2_0303:		bne B2_0309 ; d0 04

B2_0305:		lda #$ff		; a9 ff
B2_0307:		sta $b4			; 85 b4
B2_0309:		rts				; 60 


B2_030a:		lda #$b0		; a9 b0
B2_030c:		sta $ff			; 85 ff
B2_030e:		inc $07ed		; ee ed 07
B2_0311:		lda #$00		; a9 00
B2_0313:		sta $07f1		; 8d f1 07
B2_0316:		sta $07f2		; 8d f2 07
B2_0319:		rts				; 60 


B2_031a:	.db $74
B2_031b:	.db $8b
B2_031c:		;removed
	.db $70 $8b

B2_031e:		ldy #$00		; a0 00
B2_0320:		lda $8332, y	; b9 32 83
B2_0323:		sta $00			; 85 00
B2_0325:		lda $8333, y	; b9 33 83
B2_0328:		sta $01			; 85 01
B2_032a:		lda #$80		; a9 80
B2_032c:		jsr $e62f		; 20 2f e6
B2_032f:		jmp $8334		; 4c 34 83


B2_0332:		bit $a585		; 2c 85 a5
B2_0335:		ora $e938, x	; 1d 38 e9
B2_0338:		ora $a0aa, y	; 19 aa a0
B2_033b:		.db $00				; 00
B2_033c:		lda $9d69, y	; b9 69 9d
B2_033f:		sta $00			; 85 00
B2_0341:		lda $9d6a, y	; b9 6a 9d
B2_0344:		sta $01			; 85 01
B2_0346:		ldy #$02		; a0 02
B2_0348:		lda ($00), y	; b1 00
B2_034a:		jsr $8356		; 20 56 83
B2_034d:		cmp #$ff		; c9 ff
B2_034f:		beq B2_0355 ; f0 04

B2_0351:		iny				; c8 
B2_0352:		jmp $8348		; 4c 48 83


B2_0355:		rts				; 60 


B2_0356:		sta $0300, x	; 9d 00 03
B2_0359:		inx				; e8 
B2_035a:		rts				; 60 


B2_035b:		lda #$04		; a9 04
B2_035d:		sta $07ef		; 8d ef 07
B2_0360:		lda #$00		; a9 00
B2_0362:		sta $00			; 85 00
B2_0364:		ldx #$01		; a2 01
B2_0366:		lda $054e, x	; bd 4e 05
B2_0369:		beq B2_036d ; f0 02

B2_036b:		inc $00			; e6 00
B2_036d:		inx				; e8 
B2_036e:		cpx #$0d		; e0 0d
B2_0370:		bne B2_0366 ; d0 f4

B2_0372:		lda $07f0		; ad f0 07
B2_0375:		cmp $00			; c5 00
B2_0377:		bcc B2_0389 ; 90 10

B2_0379:		inc $07ed		; ee ed 07
B2_037c:		lda #$00		; a9 00
B2_037e:		sta $07ef		; 8d ef 07
B2_0381:		sta $07f0		; 8d f0 07
B2_0384:		lda #$01		; a9 01
B2_0386:		sta $07f3		; 8d f3 07
B2_0389:		rts				; 60 


B2_038a:		dec $07f3		; ce f3 07
B2_038d:		bne B2_0392 ; d0 03

B2_038f:		inc $07ed		; ee ed 07
B2_0392:		rts				; 60 


B2_0393:		lda #$1d		; a9 1d
B2_0395:		sta $49			; 85 49
B2_0397:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_039a:		lda #$41		; a9 41
B2_039c:		sta $4a			; 85 4a
B2_039e:		lda #$6f		; a9 6f
B2_03a0:		sta $4d			; 85 4d
B2_03a2:		jsr chrSwitchAllMirrored		; 20 5d e3
B2_03a5:		jsr $9181		; 20 81 91
B2_03a8:		lda #$00		; a9 00
B2_03aa:		sta $07ed		; 8d ed 07
B2_03ad:		inc $07ec		; ee ec 07
B2_03b0:		lda #$00		; a9 00
B2_03b2:		sta $72			; 85 72
B2_03b4:		lda #$80		; a9 80
B2_03b6:		sta $3f			; 85 3f
B2_03b8:		lda #$6b		; a9 6b
B2_03ba:		jsr playSound		; 20 5f e2
B2_03bd:		rts				; 60 


B2_03be:		jsr playSound		; 20 5f e2
B2_03c1:		lda $00			; a5 00
B2_03c3:		sta $01			; 85 01
B2_03c5:		lda #$00		; a9 00
B2_03c7:		sta $02			; 85 02
B2_03c9:		sta $03			; 85 03
B2_03cb:		jsr $e777		; 20 77 e7
B2_03ce:		rts				; 60 


B2_03cf:		ldy #$04		; a0 04
B2_03d1:		jsr $890c		; 20 0c 89
B2_03d4:		rts				; 60 


B2_03d5:		cmp $fd83, x	; dd 83 fd
B2_03d8:	.db $83
B2_03d9:		lsr a			; 4a
B2_03da:		sty $4d			; 84 4d
B2_03dc:		sty $20			; 84 20
B2_03de:		and ($89), y	; 31 89
B2_03e0:		lda #$0b		; a9 0b
B2_03e2:		sta $00			; 85 00
B2_03e4:		ldx #$01		; a2 01
B2_03e6:		lda $0606, x	; bd 06 06
B2_03e9:		cmp #$01		; c9 01
B2_03eb:		bne B2_03f4 ; d0 07

B2_03ed:		txa				; 8a 
B2_03ee:		sta $07f1		; 8d f1 07
B2_03f1:		jmp $83f9		; 4c f9 83


B2_03f4:		inx				; e8 
B2_03f5:		dec $00			; c6 00
B2_03f7:		bne B2_03e6 ; d0 ed

B2_03f9:		inc $07ed		; ee ed 07
B2_03fc:		rts				; 60 


B2_03fd:		lda #$0b		; a9 0b
B2_03ff:		sta $00			; 85 00
B2_0401:		ldx #$01		; a2 01
B2_0403:		lda $0606, x	; bd 06 06
B2_0406:		cmp #$02		; c9 02
B2_0408:		bne B2_0435 ; d0 2b

B2_040a:		stx $01			; 86 01
B2_040c:		ldy $07f1		; ac f1 07
B2_040f:		lda $054e		; ad 4e 05
B2_0412:		beq B2_0419 ; f0 05

B2_0414:		txa				; 8a 
B2_0415:		tay				; a8 
B2_0416:		ldx $07f1		; ae f1 07
B2_0419:		lda $041c, y	; b9 1c 04
B2_041c:		sta $041c, x	; 9d 1c 04
B2_041f:		lda $0438, y	; b9 38 04
B2_0422:		clc				; 18 
B2_0423:		adc #$10		; 69 10
B2_0425:		sta $0438, x	; 9d 38 04
B2_0428:		lda $0470, x	; bd 70 04
B2_042b:		and #$7f		; 29 7f
B2_042d:		sta $0470, x	; 9d 70 04
B2_0430:		ldx $01			; a6 01
B2_0432:		jmp $843a		; 4c 3a 84


B2_0435:		inx				; e8 
B2_0436:		dec $00			; c6 00
B2_0438:		bne B2_0403 ; d0 c9

B2_043a:		inc $07ed		; ee ed 07
B2_043d:		lda #$00		; a9 00
B2_043f:		sta $07f3		; 8d f3 07
B2_0442:		lda #$06		; a9 06
B2_0444:		sta $07ef		; 8d ef 07
B2_0447:		jmp $82c3		; 4c c3 82


B2_044a:		jmp $82cc		; 4c cc 82


B2_044d:		lda $07ef		; ad ef 07
B2_0450:		bne B2_045d ; d0 0b

B2_0452:		inc $07ec		; ee ec 07
B2_0455:		lda #$00		; a9 00
B2_0457:		sta $07ed		; 8d ed 07
B2_045a:		sta $07f3		; 8d f3 07
B2_045d:		rts				; 60 


B2_045e:		ldy #$06		; a0 06
B2_0460:		jsr $890c		; 20 0c 89
B2_0463:		rts				; 60 


B2_0464:	.db $b2
B2_0465:		sty $c6			; 84 c6
B2_0467:		sty $31			; 84 31
B2_0469:		sta $91			; 85 91
B2_046b:		sta $f1			; 85 f1
B2_046d:		sta $09			; 85 09
B2_046f:		stx $31			; 86 31
B2_0471:		sta $4d			; 85 4d
B2_0473:		sta $f1			; 85 f1
B2_0475:		sta $09			; 85 09
B2_0477:		stx $31			; 86 31
B2_0479:		sta $56			; 85 56
B2_047b:		sta $6a			; 85 6a
B2_047d:		stx $76			; 86 76
B2_047f:		stx $e4			; 86 e4
B2_0481:		stx $09			; 86 09
B2_0483:		stx $31			; 86 31
B2_0485:		sta $78			; 85 78
B2_0487:		sta $f1			; 85 f1
B2_0489:		sta $09			; 85 09
B2_048b:		stx $0e			; 86 0e
B2_048d:	.db $87
B2_048e:		rol $5a87, x	; 3e 87 5a
B2_0491:	.db $87
B2_0492:	.db $74
B2_0493:	.db $87
B2_0494:		ldx $1487		; ae 87 14
B2_0497:		sta $5f			; 85 5f
B2_0499:		sta $f1			; 85 f1
B2_049b:		sta $09			; 85 09
B2_049d:		stx $f5			; 86 f5
B2_049f:	.db $87
B2_04a0:	.db $14
B2_04a1:		dey				; 88 
B2_04a2:		ora $3688, x	; 1d 88 36
B2_04a5:		dey				; 88 
B2_04a6:	.db $72
B2_04a7:		dey				; 88 
B2_04a8:	.db $9b
B2_04a9:		dey				; 88 
B2_04aa:	.db $dc
B2_04ab:		dey				; 88 
B2_04ac:		cpx #$88		; e0 88
B2_04ae:		sbc ($85), y	; f1 85
B2_04b0:		sbc $ee88		; ed88 ee
B2_04b3:		sbc $a907		; ed07 a9
B2_04b6:	.db $07
B2_04b7:		sta $07f0		; 8d f0 07
B2_04ba:		lda #$00		; a9 00
B2_04bc:		sta $07f2		; 8d f2 07
B2_04bf:		sta $07f1		; 8d f1 07
B2_04c2:		sta $07f3		; 8d f3 07
B2_04c5:		rts				; 60 


B2_04c6:		lda $07f3		; ad f3 07
B2_04c9:		cmp #$07		; c9 07
B2_04cb:		bcs B2_04e5 ; b0 18

B2_04cd:		and #$01		; 29 01
B2_04cf:		bne B2_04db ; d0 0a

B2_04d1:		lda #$20		; a9 20
B2_04d3:		sta $17			; 85 17
B2_04d5:		lda $ff			; a5 ff
B2_04d7:		ora #$01		; 09 01
B2_04d9:		bne B2_04e3 ; d0 08

B2_04db:		lda #$24		; a9 24
B2_04dd:		sta $17			; 85 17
B2_04df:		lda $ff			; a5 ff
B2_04e1:		and #$fe		; 29 fe
B2_04e3:		sta $ff			; 85 ff
B2_04e5:		lda $07f3		; ad f3 07
B2_04e8:		cmp #$07		; c9 07
B2_04ea:		beq B2_04f4 ; f0 08

B2_04ec:		cmp #$08		; c9 08
B2_04ee:		beq B2_0508 ; f0 18

B2_04f0:		jsr $8d86		; 20 86 8d
B2_04f3:		rts				; 60 


B2_04f4:		lda #$24		; a9 24
B2_04f6:		sta $17			; 85 17
B2_04f8:		lda $ff			; a5 ff
B2_04fa:		and #$fe		; 29 fe
B2_04fc:		sta $ff			; 85 ff
B2_04fe:		dec $07f3		; ce f3 07
B2_0501:		jsr $8d86		; 20 86 8d
B2_0504:		inc $07f3		; ee f3 07
B2_0507:		rts				; 60 


B2_0508:		inc $07ed		; ee ed 07
B2_050b:		lda #$00		; a9 00
B2_050d:		sta $07f1		; 8d f1 07
B2_0510:		sta $07f0		; 8d f0 07
B2_0513:		rts				; 60 


B2_0514:		ldx #$01		; a2 01
B2_0516:		ldy $054e, x	; bc 4e 05
B2_0519:		beq B2_0522 ; f0 07

B2_051b:		lda $0606, x	; bd 06 06
B2_051e:		cmp #$03		; c9 03
B2_0520:		beq B2_0527 ; f0 05

B2_0522:		inx				; e8 
B2_0523:		cpx #$0d		; e0 0d
B2_0525:		bne B2_0516 ; d0 ef

B2_0527:		dey				; 88 
B2_0528:		lda $852d, y	; b9 2d 85
B2_052b:		bne B2_0536 ; d0 09

B2_052d:		.db $00				; 00
B2_052e:		ora $0e07		; 0d 07 0e
B2_0531:		ldy $32			; a4 32
B2_0533:		lda $8545, y	; b9 45 85
B2_0536:		sta $07ef		; 8d ef 07
B2_0539:		inc $07ed		; ee ed 07
B2_053c:		lda #$00		; a9 00
B2_053e:		sta $07f3		; 8d f3 07
B2_0541:		sta $07f2		; 8d f2 07
B2_0544:		rts				; 60 


B2_0545:		.db $00				; 00
B2_0546:	.db $07
B2_0547:	.db $0d $00 $00
B2_054a:		.db $00				; 00
B2_054b:		.db $00				; 00
B2_054c:		asl $32a4		; 0e a4 32
B2_054f:		lda $85d1, y	; b9 d1 85
B2_0552:		tay				; a8 
B2_0553:		jmp $8597		; 4c 97 85


B2_0556:		lda #$00		; a9 00
B2_0558:		sta $07ef		; 8d ef 07
B2_055b:		ldy #$04		; a0 04
B2_055d:		bne B2_0597 ; d0 38

B2_055f:		lda $3a			; a5 3a
B2_0561:		cmp #$ff		; c9 ff
B2_0563:		beq B2_056e ; f0 09

B2_0565:		ldy $32			; a4 32
B2_0567:		lda $85e9, y	; b9 e9 85
B2_056a:		tay				; a8 
B2_056b:		jmp $8597		; 4c 97 85


B2_056e:		lda #$03		; a9 03
B2_0570:		clc				; 18 
B2_0571:		adc $07ed		; 6d ed 07
B2_0574:		sta $07ed		; 8d ed 07
B2_0577:		rts				; 60 


B2_0578:		lda $07ed		; ad ed 07
B2_057b:		and #$80		; 29 80
B2_057d:		bne B2_0588 ; d0 09

B2_057f:		ldy $32			; a4 32
B2_0581:		lda $85d9, y	; b9 d9 85
B2_0584:		tay				; a8 
B2_0585:		jmp $8597		; 4c 97 85


B2_0588:		ldy $32			; a4 32
B2_058a:		lda $85e1, y	; b9 e1 85
B2_058d:		tay				; a8 
B2_058e:		jmp $8597		; 4c 97 85


B2_0591:		ldy $32			; a4 32
B2_0593:		lda $85c9, y	; b9 c9 85
B2_0596:		tay				; a8 
B2_0597:		lda $07f3		; ad f3 07
B2_059a:		bne B2_05b1 ; d0 15

B2_059c:		jsr $8944		; 20 44 89
B2_059f:		bcs B2_05b5 ; b0 14

B2_05a1:		lda #$04		; a9 04
B2_05a3:		sta $07f3		; 8d f3 07
B2_05a6:		lda $28			; a5 28
B2_05a8:		and #$80		; 29 80
B2_05aa:		beq B2_05b1 ; f0 05

B2_05ac:		lda #$02		; a9 02
B2_05ae:		sta $07f3		; 8d f3 07
B2_05b1:		dec $07f3		; ce f3 07
B2_05b4:		rts				; 60 


B2_05b5:		lda #$00		; a9 00
B2_05b7:		sta $07ef		; 8d ef 07
B2_05ba:		sta $07f3		; 8d f3 07
B2_05bd:		sta $07f1		; 8d f1 07
B2_05c0:		inc $07ed		; ee ed 07
B2_05c3:		lda #$ff		; a9 ff
B2_05c5:		sta $07f2		; 8d f2 07
B2_05c8:		rts				; 60 


B2_05c9:		.db $00				; 00
B2_05ca:		.db $00				; 00
B2_05cb:	.db $0c
B2_05cc:		.db $00				; 00
B2_05cd:		.db $00				; 00
B2_05ce:		.db $00				; 00
B2_05cf:		.db $00				; 00
B2_05d0:	.db $14
B2_05d1:		.db $00				; 00
B2_05d2:	.db $02
B2_05d3:	.db $0e $00 $00
B2_05d6:		.db $00				; 00
B2_05d7:		.db $00				; 00
B2_05d8:		asl $00, x		; 16 00
B2_05da:		asl $10			; 06 10
B2_05dc:		.db $00				; 00
B2_05dd:		.db $00				; 00
B2_05de:		.db $00				; 00
B2_05df:		.db $00				; 00
B2_05e0:		clc				; 18 
B2_05e1:		.db $00				; 00
B2_05e2:		php				; 08 
B2_05e3:	.db $12
B2_05e4:		.db $00				; 00
B2_05e5:		.db $00				; 00
B2_05e6:		.db $00				; 00
B2_05e7:		.db $00				; 00
B2_05e8:	.db $1a
B2_05e9:		.db $00				; 00
B2_05ea:		asl a			; 0a
B2_05eb:		asl a			; 0a
B2_05ec:		.db $00				; 00
B2_05ed:		.db $00				; 00
B2_05ee:		.db $00				; 00
B2_05ef:		.db $00				; 00
B2_05f0:		asl a			; 0a
B2_05f1:		lda $07f2		; ad f2 07
B2_05f4:		bne B2_05fa ; d0 04

B2_05f6:		inc $07ed		; ee ed 07
B2_05f9:		rts				; 60 


B2_05fa:		dec $07f2		; ce f2 07
B2_05fd:		lda $28			; a5 28
B2_05ff:		and #$80		; 29 80
B2_0601:		beq B2_0608 ; f0 05

B2_0603:		lda #$00		; a9 00
B2_0605:		sta $07f2		; 8d f2 07
B2_0608:		rts				; 60 


B2_0609:		ldx $1d			; a6 1d
B2_060b:		lda #$02		; a9 02
B2_060d:		sta $03			; 85 03
B2_060f:		lda $07f1		; ad f1 07
B2_0612:		asl a			; 0a
B2_0613:		asl a			; 0a
B2_0614:		asl a			; 0a
B2_0615:		asl a			; 0a
B2_0616:		asl a			; 0a
B2_0617:		asl a			; 0a
B2_0618:		clc				; 18 
B2_0619:		adc #$c6		; 69 c6
B2_061b:		sta $00			; 85 00
B2_061d:		lda #$20		; a9 20
B2_061f:		adc #$00		; 69 00
B2_0621:		sta $01			; 85 01
B2_0623:		lda #$01		; a9 01
B2_0625:		jsr $8356		; 20 56 83
B2_0628:		lda $00			; a5 00
B2_062a:		jsr $8356		; 20 56 83
B2_062d:		lda $01			; a5 01
B2_062f:		jsr $8356		; 20 56 83
B2_0632:		lda #$14		; a9 14
B2_0634:		sta $02			; 85 02
B2_0636:		lda #$00		; a9 00
B2_0638:		jsr $8356		; 20 56 83
B2_063b:		dec $02			; c6 02
B2_063d:		bne B2_0638 ; d0 f9

B2_063f:		lda #$ff		; a9 ff
B2_0641:		jsr $8356		; 20 56 83
B2_0644:		lda $00			; a5 00
B2_0646:		clc				; 18 
B2_0647:		adc #$20		; 69 20
B2_0649:		sta $00			; 85 00
B2_064b:		lda $01			; a5 01
B2_064d:		adc #$00		; 69 00
B2_064f:		sta $01			; 85 01
B2_0651:		dec $03			; c6 03
B2_0653:		bne B2_0623 ; d0 ce

B2_0655:		stx $1d			; 86 1d
B2_0657:		inc $07f1		; ee f1 07
B2_065a:		lda $07f1		; ad f1 07
B2_065d:		cmp #$03		; c9 03
B2_065f:		bne B2_0669 ; d0 08

B2_0661:		lda #$00		; a9 00
B2_0663:		sta $07f1		; 8d f1 07
B2_0666:		inc $07ed		; ee ed 07
B2_0669:		rts				; 60 


B2_066a:		inc $07ed		; ee ed 07
B2_066d:		lda $07ed		; ad ed 07
B2_0670:		and #$7f		; 29 7f
B2_0672:		sta $07ed		; 8d ed 07
B2_0675:		rts				; 60 


B2_0676:		lda $26			; a5 26
B2_0678:		and #$0c		; 29 0c
B2_067a:		beq B2_068a ; f0 0e

B2_067c:		lda #$72		; a9 72
B2_067e:		jsr playSound		; 20 5f e2
B2_0681:		lda $07ed		; ad ed 07
B2_0684:		clc				; 18 
B2_0685:		adc #$80		; 69 80
B2_0687:		sta $07ed		; 8d ed 07
B2_068a:		jsr $86a8		; 20 a8 86
B2_068d:		lda $26			; a5 26
B2_068f:		and #$80		; 29 80
B2_0691:		bne B2_0694 ; d0 01

B2_0693:		rts				; 60 


B2_0694:		inc $07ed		; ee ed 07
B2_0697:		lda #$00		; a9 00
B2_0699:		sta $07ef		; 8d ef 07
B2_069c:		sta $07f0		; 8d f0 07
B2_069f:		sta $07f3		; 8d f3 07
B2_06a2:		lda #$20		; a9 20
B2_06a4:		sta $07f2		; 8d f2 07
B2_06a7:		rts				; 60 


B2_06a8:		ldy #$00		; a0 00
B2_06aa:		lda $07ed		; ad ed 07
B2_06ad:		and #$80		; 29 80
B2_06af:		beq B2_06b3 ; f0 02

B2_06b1:		ldy #$03		; a0 03
B2_06b3:		ldx $1d			; a6 1d
B2_06b5:		lda #$02		; a9 02
B2_06b7:		jsr $8356		; 20 56 83
B2_06ba:		lda #$26		; a9 26
B2_06bc:		jsr $8356		; 20 56 83
B2_06bf:		lda #$21		; a9 21
B2_06c1:		jsr $8356		; 20 56 83
B2_06c4:		lda #$03		; a9 03
B2_06c6:		sta $00			; 85 00
B2_06c8:		lda $86db, y	; b9 db 86
B2_06cb:		jsr $8356		; 20 56 83
B2_06ce:		iny				; c8 
B2_06cf:		dec $00			; c6 00
B2_06d1:		bne B2_06c8 ; d0 f5

B2_06d3:		lda #$ff		; a9 ff
B2_06d5:		jsr $8356		; 20 56 83
B2_06d8:		stx $1d			; 86 1d
B2_06da:		rts				; 60 


B2_06db:		rol $00, x		; 36 00
B2_06dd:		.db $00				; 00
B2_06de:		.db $00				; 00
B2_06df:		.db $00				; 00
B2_06e0:		rol $00, x		; 36 00
B2_06e2:		.db $00				; 00
B2_06e3:		.db $00				; 00
B2_06e4:		lda $07f2		; ad f2 07
B2_06e7:		beq B2_070a ; f0 21

B2_06e9:		dec $07f2		; ce f2 07
B2_06ec:		lda #$0f		; a9 0f
B2_06ee:		sta $07ef		; 8d ef 07
B2_06f1:		lda $07ed		; ad ed 07
B2_06f4:		and #$80		; 29 80
B2_06f6:		beq B2_06fb ; f0 03

B2_06f8:		inc $07ef		; ee ef 07
B2_06fb:		lda $07f2		; ad f2 07
B2_06fe:		and #$04		; 29 04
B2_0700:		bne B2_0705 ; d0 03

B2_0702:		jmp $86a8		; 4c a8 86


B2_0705:		ldy #$06		; a0 06
B2_0707:		jmp $86b3		; 4c b3 86


B2_070a:		inc $07ed		; ee ed 07
B2_070d:		rts				; 60 


B2_070e:		lda $07ed		; ad ed 07
B2_0711:		and #$80		; 29 80
B2_0713:		bne B2_0734 ; d0 1f

B2_0715:		lda $07ef		; ad ef 07
B2_0718:		bne B2_072e ; d0 14

B2_071a:		lda $07f3		; ad f3 07
B2_071d:		beq B2_072e ; f0 0f

B2_071f:		inc $07ed		; ee ed 07
B2_0722:		lda #$00		; a9 00
B2_0724:		sta $07ef		; 8d ef 07
B2_0727:		sta $07f3		; 8d f3 07
B2_072a:		sta $07f0		; 8d f0 07
B2_072d:		rts				; 60 


B2_072e:		lda #$08		; a9 08
B2_0730:		sta $07ef		; 8d ef 07
B2_0733:		rts				; 60 


B2_0734:		lda #$0b		; a9 0b
B2_0736:		clc				; 18 
B2_0737:		adc $07ed		; 6d ed 07
B2_073a:		sta $07ed		; 8d ed 07
B2_073d:		rts				; 60 


B2_073e:		lda $07f3		; ad f3 07
B2_0741:		bne B2_0749 ; d0 06

B2_0743:		lda #$09		; a9 09
B2_0745:		sta $07ef		; 8d ef 07
B2_0748:		rts				; 60 


B2_0749:		inc $07ed		; ee ed 07
B2_074c:		lda #$00		; a9 00
B2_074e:		sta $07f3		; 8d f3 07
B2_0751:		sta $07ef		; 8d ef 07
B2_0754:		lda #$40		; a9 40
B2_0756:		sta $07f0		; 8d f0 07
B2_0759:		rts				; 60 


B2_075a:		lda $07f3		; ad f3 07
B2_075d:		bne B2_0765 ; d0 06

B2_075f:		lda #$0a		; a9 0a
B2_0761:		sta $07ef		; 8d ef 07
B2_0764:		rts				; 60 


B2_0765:		inc $07ed		; ee ed 07
B2_0768:		lda #$00		; a9 00
B2_076a:		sta $07ef		; 8d ef 07
B2_076d:		sta $07f0		; 8d f0 07
B2_0770:		sta $07f3		; 8d f3 07
B2_0773:		rts				; 60 


B2_0774:		lda $3a			; a5 3a
B2_0776:		cmp #$ff		; c9 ff
B2_0778:		beq B2_0783 ; f0 09

B2_077a:		lda #$11		; a9 11
B2_077c:		sta $07ef		; 8d ef 07
B2_077f:		inc $07ed		; ee ed 07
B2_0782:		rts				; 60 


B2_0783:		ldx #$01		; a2 01
B2_0785:		lda $054e, x	; bd 4e 05
B2_0788:		beq B2_079f ; f0 15

B2_078a:		lda $0606, x	; bd 06 06
B2_078d:		cmp #$03		; c9 03
B2_078f:		bne B2_079f ; d0 0e

B2_0791:		dec $0606, x	; de 06 06
B2_0794:		lda $054e, x	; bd 4e 05
B2_0797:		sec				; 38 
B2_0798:		sbc #$01		; e9 01
B2_079a:		sta $3a			; 85 3a
B2_079c:		jsr $87ec		; 20 ec 87
B2_079f:		inx				; e8 
B2_07a0:		cpx #$0d		; e0 0d
B2_07a2:		bne B2_0785 ; d0 e1

B2_07a4:		lda #$08		; a9 08
B2_07a6:		clc				; 18 
B2_07a7:		adc $07ed		; 6d ed 07
B2_07aa:		sta $07ed		; 8d ed 07
B2_07ad:		rts				; 60 


B2_07ae:		lda $07ef		; ad ef 07
B2_07b1:		bne B2_07eb ; d0 38

B2_07b3:		inc $07ed		; ee ed 07
B2_07b6:		ldx #$01		; a2 01
B2_07b8:		lda $054e, x	; bd 4e 05
B2_07bb:		beq B2_07e6 ; f0 29

B2_07bd:		lda $0606, x	; bd 06 06
B2_07c0:		cmp #$02		; c9 02
B2_07c2:		beq B2_07e3 ; f0 1f

B2_07c4:		cmp #$03		; c9 03
B2_07c6:		bne B2_07e6 ; d0 1e

B2_07c8:		dec $0606, x	; de 06 06
B2_07cb:		lda $054e, x	; bd 4e 05
B2_07ce:		sec				; 38 
B2_07cf:		sbc #$01		; e9 01
B2_07d1:		sta $3a			; 85 3a
B2_07d3:		jsr $87ec		; 20 ec 87
B2_07d6:		lda $054e		; ad 4e 05
B2_07d9:		beq B2_07e6 ; f0 0b

B2_07db:		lda $3a			; a5 3a
B2_07dd:		sta $054e		; 8d 4e 05
B2_07e0:		jmp $87e6		; 4c e6 87


B2_07e3:		inc $0606, x	; fe 06 06
B2_07e6:		inx				; e8 
B2_07e7:		cpx #$0d		; e0 0d
B2_07e9:		bne B2_07b8 ; d0 cd

B2_07eb:		rts				; 60 


B2_07ec:		lda #$00		; a9 00
B2_07ee:		sta $8f			; 85 8f
B2_07f0:		sta $86			; 85 86
B2_07f2:		sta $88			; 85 88
B2_07f4:		rts				; 60 


B2_07f5:		lda #$12		; a9 12
B2_07f7:		sta $07ef		; 8d ef 07
B2_07fa:		lda $32			; a5 32
B2_07fc:		cmp #$01		; c9 01
B2_07fe:		beq B2_080b ; f0 0b

B2_0800:		lda #$00		; a9 00
B2_0802:		sta $07ef		; 8d ef 07
B2_0805:		inc $07ed		; ee ed 07
B2_0808:		jmp $8810		; 4c 10 88


B2_080b:		lda #$80		; a9 80
B2_080d:		sta $07f2		; 8d f2 07
B2_0810:		inc $07ed		; ee ed 07
B2_0813:		rts				; 60 


B2_0814:		dec $07f2		; ce f2 07
B2_0817:		bne B2_081c ; d0 03

B2_0819:		inc $07ed		; ee ed 07
B2_081c:		rts				; 60 


B2_081d:		inc $07ed		; ee ed 07
B2_0820:		lda #$07		; a9 07
B2_0822:		sta $07f0		; 8d f0 07
B2_0825:		lda #$06		; a9 06
B2_0827:		sta $07f3		; 8d f3 07
B2_082a:		lda #$00		; a9 00
B2_082c:		sta $07f2		; 8d f2 07
B2_082f:		sta $07f1		; 8d f1 07
B2_0832:		sta $07ef		; 8d ef 07
B2_0835:		rts				; 60 


B2_0836:		lda $07f3		; ad f3 07
B2_0839:		and #$01		; 29 01
B2_083b:		bne B2_0847 ; d0 0a

B2_083d:		lda #$20		; a9 20
B2_083f:		sta $17			; 85 17
B2_0841:		lda $ff			; a5 ff
B2_0843:		ora #$01		; 09 01
B2_0845:		bne B2_084f ; d0 08

B2_0847:		lda #$24		; a9 24
B2_0849:		sta $17			; 85 17
B2_084b:		lda $ff			; a5 ff
B2_084d:		and #$fe		; 29 fe
B2_084f:		sta $ff			; 85 ff
B2_0851:		lda $07f3		; ad f3 07
B2_0854:		cmp #$ff		; c9 ff
B2_0856:		beq B2_085c ; f0 04

B2_0858:		jsr $8d82		; 20 82 8d
B2_085b:		rts				; 60 


B2_085c:		inc $07ed		; ee ed 07
B2_085f:		lda #$00		; a9 00
B2_0861:		sta $07f1		; 8d f1 07
B2_0864:		sta $07f0		; 8d f0 07
B2_0867:		sta $07f2		; 8d f2 07
B2_086a:		lda #$43		; a9 43
B2_086c:		sta $4d			; 85 4d
B2_086e:		jsr chrSwitchAllMirrored		; 20 5d e3
B2_0871:		rts				; 60 


B2_0872:		lda #$0b		; a9 0b
B2_0874:		sta $07ef		; 8d ef 07
B2_0877:		lda $32			; a5 32
B2_0879:		cmp #$01		; c9 01
B2_087b:		bne B2_0892 ; d0 15

B2_087d:		lda #$03		; a9 03
B2_087f:		sta $00			; 85 00
B2_0881:		jsr $feb9		; 20 b9 fe
B2_0884:		lda #$05		; a9 05
B2_0886:		sta $054e, x	; 9d 4e 05
B2_0889:		lda $00			; a5 00
B2_088b:		sta $0606, x	; 9d 06 06
B2_088e:		dec $00			; c6 00
B2_0890:		bne B2_0881 ; d0 ef

B2_0892:		inc $07ed		; ee ed 07
B2_0895:		lda #$00		; a9 00
B2_0897:		sta $07f3		; 8d f3 07
B2_089a:		rts				; 60 


B2_089b:		lda $07f3		; ad f3 07
B2_089e:		cmp #$d0		; c9 d0
B2_08a0:		beq B2_08c3 ; f0 21

B2_08a2:		lsr a			; 4a
B2_08a3:		and #$0f		; 29 0f
B2_08a5:		tay				; a8 
B2_08a6:		lda $32			; a5 32
B2_08a8:		cmp #$01		; c9 01
B2_08aa:		bne B2_08bf ; d0 13

B2_08ac:		lda $88cc, y	; b9 cc 88
B2_08af:		sta $fc			; 85 fc
B2_08b1:		sta $fd			; 85 fd
B2_08b3:		lda $07f3		; ad f3 07
B2_08b6:		and #$0f		; 29 0f
B2_08b8:		bne B2_08bf ; d0 05

B2_08ba:		lda #$3a		; a9 3a
B2_08bc:		jsr playSound		; 20 5f e2
B2_08bf:		inc $07f3		; ee f3 07
B2_08c2:		rts				; 60 


B2_08c3:		inc $07ed		; ee ed 07
B2_08c6:		lda #$00		; a9 00
B2_08c8:		sta $07ef		; 8d ef 07
B2_08cb:		rts				; 60 


B2_08cc:		.db $00				; 00
B2_08cd:	.db $02
B2_08ce:		ora ($03, x)	; 01 03
B2_08d0:		.db $00				; 00
B2_08d1:		ora ($01, x)	; 01 01
B2_08d3:	.db $02
B2_08d4:		ora ($03, x)	; 01 03
B2_08d6:		.db $00				; 00
B2_08d7:		ora ($00, x)	; 01 00
B2_08d9:	.db $02
B2_08da:	.db $03
B2_08db:		.db $00				; 00
B2_08dc:		inc $07ed		; ee ed 07
B2_08df:		rts				; 60 


B2_08e0:		lda #$07		; a9 07
B2_08e2:		sta $0160		; 8d 60 01
B2_08e5:		lda #$b4		; a9 b4
B2_08e7:		sta $07f2		; 8d f2 07
B2_08ea:		jmp $88dc		; 4c dc 88


B2_08ed:		lda #$1e		; a9 1e
B2_08ef:		sta $2a			; 85 2a
B2_08f1:		lda #$00		; a9 00
B2_08f3:		sta $07ec		; 8d ec 07
B2_08f6:		sta $07ed		; 8d ed 07
B2_08f9:		sta $07ee		; 8d ee 07
B2_08fc:		sta $07ef		; 8d ef 07
B2_08ff:		sta $07f0		; 8d f0 07
B2_0902:		sta $07f1		; 8d f1 07
B2_0905:		sta $07f2		; 8d f2 07
B2_0908:		sta $07f3		; 8d f3 07
B2_090b:		rts				; 60 


B2_090c:		lda $8929, y	; b9 29 89
B2_090f:		sta $00			; 85 00
B2_0911:		lda $892a, y	; b9 2a 89
B2_0914:		sta $01			; 85 01
B2_0916:		lda $07ed		; ad ed 07
B2_0919:		and #$7f		; 29 7f
B2_091b:		asl a			; 0a
B2_091c:		tay				; a8 
B2_091d:		lda ($00), y	; b1 00
B2_091f:		sta $02			; 85 02
B2_0921:		iny				; c8 
B2_0922:		lda ($00), y	; b1 00
B2_0924:		sta $03			; 85 03
B2_0926:	.db $6c $02 $00
B2_0929:	.db $07
B2_092a:	.db $80
B2_092b:		sty $82, x		; 94 82
B2_092d:		cmp $83, x		; d5 83
B2_092f:	.db $64
B2_0930:		sty $a2			; 84 a2
B2_0932:	.db $0d $a9 $00
B2_0935:		sta $0400, x	; 9d 00 04
B2_0938:		sta $054e, x	; 9d 4e 05
B2_093b:		sta $0470, x	; 9d 70 04
B2_093e:		inx				; e8 
B2_093f:		cpx #$13		; e0 13
B2_0941:		;removed
	.db $90 $f0

B2_0943:		rts				; 60 


B2_0944:		lda $8a26, y	; b9 26 8a
B2_0947:		sta $00			; 85 00
B2_0949:		lda $8a27, y	; b9 27 8a
B2_094c:		sta $01			; 85 01
B2_094e:		lda $07f2		; ad f2 07
B2_0951:		asl a			; 0a
B2_0952:		tay				; a8 
B2_0953:		lda ($00), y	; b1 00
B2_0955:		cmp #$ff		; c9 ff
B2_0957:		bne B2_0966 ; d0 0d

B2_0959:		iny				; c8 
B2_095a:		lda ($00), y	; b1 00
B2_095c:		cmp #$ff		; c9 ff
B2_095e:		bne B2_0963 ; d0 03

B2_0960:		jmp $8a1f		; 4c 1f 8a


B2_0963:		dey				; 88 
B2_0964:		lda ($00), y	; b1 00
B2_0966:		sta $02			; 85 02
B2_0968:		iny				; c8 
B2_0969:		lda ($00), y	; b1 00
B2_096b:		sta $03			; 85 03
B2_096d:		ldy $07f1		; ac f1 07
B2_0970:		lda ($02), y	; b1 02
B2_0972:		cmp #$ff		; c9 ff
B2_0974:		bne B2_0979 ; d0 03

B2_0976:		jmp $8a15		; 4c 15 8a


B2_0979:		sta $04			; 85 04
B2_097b:		ldx $1d			; a6 1d
B2_097d:		lda #$01		; a9 01
B2_097f:		jsr $8a21		; 20 21 8a
B2_0982:		lda $07f2		; ad f2 07
B2_0985:		asl a			; 0a
B2_0986:		asl a			; 0a
B2_0987:		asl a			; 0a
B2_0988:		asl a			; 0a
B2_0989:		asl a			; 0a
B2_098a:		asl a			; 0a
B2_098b:		clc				; 18 
B2_098c:		adc $07f1		; 6d f1 07
B2_098f:		clc				; 18 
B2_0990:		adc #$e6		; 69 e6
B2_0992:		sta $00			; 85 00
B2_0994:		lda #$20		; a9 20
B2_0996:		adc #$00		; 69 00
B2_0998:		sta $01			; 85 01
B2_099a:		lda $00			; a5 00
B2_099c:		jsr $8a21		; 20 21 8a
B2_099f:		lda $01			; a5 01
B2_09a1:		jsr $8a21		; 20 21 8a
B2_09a4:		lda $04			; a5 04
B2_09a6:		cmp #$40		; c9 40
B2_09a8:		bcc B2_09ba ; 90 10

B2_09aa:		cmp #$c0		; c9 c0
B2_09ac:		bcs B2_09ba ; b0 0c

B2_09ae:		cmp #$80		; c9 80
B2_09b0:		bcc B2_09b8 ; 90 06

B2_09b2:		and #$1f		; 29 1f
B2_09b4:		ora #$c0		; 09 c0
B2_09b6:		bne B2_09ba ; d0 02

B2_09b8:		and #$1f		; 29 1f
B2_09ba:		jsr $8a21		; 20 21 8a
B2_09bd:		lda #$ff		; a9 ff
B2_09bf:		jsr $8a21		; 20 21 8a
B2_09c2:		stx $1d			; 86 1d
B2_09c4:		lda $04			; a5 04
B2_09c6:		cmp #$40		; c9 40
B2_09c8:		bcc B2_0a10 ; 90 46

B2_09ca:		cmp #$c0		; c9 c0
B2_09cc:		bcs B2_0a10 ; b0 42

B2_09ce:		cmp #$80		; c9 80
B2_09d0:		bcc B2_09d8 ; 90 06

B2_09d2:		cmp #$a0		; c9 a0
B2_09d4:		bcs B2_09e4 ; b0 0e

B2_09d6:		bcc B2_09e0 ; 90 08

B2_09d8:		cmp #$60		; c9 60
B2_09da:		bcs B2_09e4 ; b0 08

B2_09dc:		lda #$10		; a9 10
B2_09de:		bne B2_09e6 ; d0 06

B2_09e0:		lda #$10		; a9 10
B2_09e2:		bne B2_09e6 ; d0 02

B2_09e4:		lda #$c0		; a9 c0
B2_09e6:		sta $04			; 85 04
B2_09e8:		lda $00			; a5 00
B2_09ea:		sec				; 38 
B2_09eb:		sbc #$20		; e9 20
B2_09ed:		sta $00			; 85 00
B2_09ef:		lda $01			; a5 01
B2_09f1:		sbc #$00		; e9 00
B2_09f3:		sta $01			; 85 01
B2_09f5:		lda #$01		; a9 01
B2_09f7:		jsr $8a21		; 20 21 8a
B2_09fa:		lda $00			; a5 00
B2_09fc:		jsr $8a21		; 20 21 8a
B2_09ff:		lda $01			; a5 01
B2_0a01:		jsr $8a21		; 20 21 8a
B2_0a04:		lda $04			; a5 04
B2_0a06:		jsr $8a21		; 20 21 8a
B2_0a09:		lda #$ff		; a9 ff
B2_0a0b:		jsr $8a21		; 20 21 8a
B2_0a0e:		stx $1d			; 86 1d
B2_0a10:		inc $07f1		; ee f1 07
B2_0a13:		clc				; 18 
B2_0a14:		rts				; 60 


B2_0a15:		inc $07f2		; ee f2 07
B2_0a18:		lda #$00		; a9 00
B2_0a1a:		sta $07f1		; 8d f1 07
B2_0a1d:		clc				; 18 
B2_0a1e:		rts				; 60 


B2_0a1f:		sec				; 38 
B2_0a20:		rts				; 60 


B2_0a21:		sta $0300, x	; 9d 00 03
B2_0a24:		inx				; e8 
B2_0a25:		rts				; 60 


B2_0a26:	.db $42
B2_0a27:		txa				; 8a 
B2_0a28:		lsr a			; 4a
B2_0a29:		txa				; 8a 
B2_0a2a:	.db $52
B2_0a2b:		txa				; 8a 
B2_0a2c:	.db $5a
B2_0a2d:		txa				; 8a 
B2_0a2e:	.db $62
B2_0a2f:		txa				; 8a 
B2_0a30:		ror a			; 6a
B2_0a31:		txa				; 8a 
B2_0a32:	.db $72
B2_0a33:		txa				; 8a 
B2_0a34:	.db $7a
B2_0a35:		txa				; 8a 
B2_0a36:	.db $82
B2_0a37:		txa				; 8a 
B2_0a38:		txa				; 8a 
B2_0a39:		txa				; 8a 
B2_0a3a:	.db $92
B2_0a3b:		txa				; 8a 
B2_0a3c:		txs				; 9a 
B2_0a3d:		txa				; 8a 
B2_0a3e:		ldx #$8a		; a2 8a
B2_0a40:		tax				; aa 
B2_0a41:		txa				; 8a 
B2_0a42:	.db $b2
B2_0a43:		txa				; 8a 
B2_0a44:		cpy $8a			; c4 8a
B2_0a46:	.db $d4
B2_0a47:		txa				; 8a 
B2_0a48:	.db $ff
B2_0a49:	.db $ff
B2_0a4a:		sbc #$8a		; e9 8a
B2_0a4c:		sbc $118a, x	; fd 8a 11
B2_0a4f:	.db $8b
B2_0a50:	.db $ff
B2_0a51:	.db $ff
B2_0a52:		bit $8b			; 24 8b
B2_0a54:		rol $8b, x		; 36 8b
B2_0a56:	.db $4b
B2_0a57:	.db $8b
B2_0a58:	.db $ff
B2_0a59:	.db $ff
B2_0a5a:	.db $5f
B2_0a5b:	.db $8b
B2_0a5c:		ror $7e8b		; 6e 8b 7e
B2_0a5f:	.db $8b
B2_0a60:	.db $ff
B2_0a61:	.db $ff
B2_0a62:		sty $9f8b		; 8c 8b 9f
B2_0a65:	.db $8b
B2_0a66:	.db $b2
B2_0a67:	.db $8b
B2_0a68:	.db $ff
B2_0a69:	.db $ff
B2_0a6a:		cpy $8b			; c4 8b
B2_0a6c:	.db $d4
B2_0a6d:	.db $8b
B2_0a6e:		sbc $8b			; e5 8b
B2_0a70:	.db $ff
B2_0a71:	.db $ff
B2_0a72:	.db $f7
B2_0a73:	.db $8b
B2_0a74:		asl a			; 0a
B2_0a75:		sty $8c1d		; 8c 1d 8c
B2_0a78:	.db $ff
B2_0a79:	.db $ff
B2_0a7a:		and $3b8c		; 2d 8c 3b
B2_0a7d:		sty $8c4b		; 8c 4b 8c
B2_0a80:	.db $ff
B2_0a81:	.db $ff
B2_0a82:	.db $54
B2_0a83:		sty $8c63		; 8c 63 8c
B2_0a86:	.db $74
B2_0a87:		sty $ffff		; 8c ff ff
B2_0a8a:	.db $82
B2_0a8b:		sty $8c95		; 8c 95 8c
B2_0a8e:		tay				; a8 
B2_0a8f:		sty $ffff		; 8c ff ff
B2_0a92:		ldy $8c, x		; b4 8c
B2_0a94:		dec $8c			; c6 8c
B2_0a96:	.db $da
B2_0a97:		sty $ffff		; 8c ff ff
B2_0a9a:	.db $eb
B2_0a9b:		sty $8cf9		; 8c f9 8c
B2_0a9e:		ora #$8d		; 09 8d
B2_0aa0:	.db $ff
B2_0aa1:	.db $ff
B2_0aa2:	.db $12
B2_0aa3:		sta $8d23		; 8d 23 8d
B2_0aa6:	.db $34
B2_0aa7:		sta $ffff		; 8d ff ff
B2_0aaa:		eor #$8d		; 49 8d
B2_0aac:	.db $5c
B2_0aad:		sta $8d6f		; 8d 6f 8d
B2_0ab0:	.db $ff
B2_0ab1:	.db $ff
B2_0ab2:	.db $cc $f8 $00
B2_0ab5:		sbc $ece0		; ede0 ec
B2_0ab8:		cpx $00			; e4 00
B2_0aba:		inx				; e8 
B2_0abb:	.db $f2
B2_0abc:		.db $00				; 00
B2_0abd:		dec $f1			; c6 f1
B2_0abf:		cpx #$ed		; e0 ed
B2_0ac1:	.db $f3
B2_0ac2:	.db $db
B2_0ac3:	.db $ff
B2_0ac4:		iny				; c8 
B2_0ac5:		.db $00				; 00
B2_0ac6:	.db $e3
B2_0ac7:		sbc ($e4), y	; f1 e4
B2_0ac9:		cpx #$ec		; e0 ec
B2_0acb:		cpx $e3			; e4 e3
B2_0acd:		.db $00				; 00
B2_0ace:		iny				; c8 
B2_0acf:		.db $00				; 00
B2_0ad0:		inc $e0, x		; f6 e0
B2_0ad2:	.db $f2
B2_0ad3:	.db $ff
B2_0ad4:	.db $f3
B2_0ad5:	.db $f4
B2_0ad6:		sbc ($ed), y	; f1 ed
B2_0ad8:		cpx $e3			; e4 e3
B2_0ada:		.db $00				; 00
B2_0adb:		inx				; e8 
B2_0adc:		sbc $eef3		; edf3 ee
B2_0adf:		.db $00				; 00
B2_0ae0:		cpx #$00		; e0 00
B2_0ae2:		inc $e7			; e6 e7
B2_0ae4:		inc $f3f2		; ee f2 f3
B2_0ae7:	.db $db
B2_0ae8:	.db $ff
B2_0ae9:	.db $cf
B2_0aea:	.db $eb
B2_0aeb:		cpx $e0			; e4 e0
B2_0aed:	.db $f2
B2_0aee:		cpx $00			; e4 00
B2_0af0:	.db $f3
B2_0af1:		cpx #$ea		; e0 ea
B2_0af3:		cpx $00			; e4 00
B2_0af5:	.db $ec $e4 $00
B2_0af8:		inc $e8, x		; f6 e8
B2_0afa:	.db $f3
B2_0afb:	.db $e7
B2_0afc:	.db $ff
B2_0afd:		sed				; f8 
B2_0afe:		inc $dbf4		; ee f4 db
B2_0b01:		.db $00				; 00
B2_0b02:		.db $00				; 00
B2_0b03:	.db $cc $f8 $00
B2_0b06:		sbc $e0			; e5 e0
B2_0b08:		cpx $ebe8		; ec e8 eb
B2_0b0b:		sed				; f8 
B2_0b0c:		.db $00				; 00
B2_0b0d:		inc $e0, x		; f6 e0
B2_0b0f:	.db $f2
B2_0b10:	.db $ff
B2_0b11:		nop				; ea 
B2_0b12:		inx				; e8 
B2_0b13:	.db $eb
B2_0b14:	.db $eb
B2_0b15:		cpx $e3			; e4 e3
B2_0b17:		.db $00				; 00
B2_0b18:		sbc ($f8, x)	; e1 f8
B2_0b1a:		.db $00				; 00
B2_0b1b:	.db $c3
B2_0b1c:		sbc ($e0), y	; f1 e0
B2_0b1e:	.db $e2
B2_0b1f:	.db $f4
B2_0b20:	.db $eb
B2_0b21:		cpx #$db		; e0 db
B2_0b23:	.db $ff
B2_0b24:		dec $e7, x		; d6 e7
B2_0b26:		cpx #$f3		; e0 f3
B2_0b28:		.db $00				; 00
B2_0b29:		inc $e8, x		; f6 e8
B2_0b2b:	.db $eb
B2_0b2c:	.db $eb
B2_0b2d:		.db $00				; 00
B2_0b2e:		sed				; f8 
B2_0b2f:	.db $ee $f4 $00
B2_0b32:	.db $e3
B2_0b33:		inc $fffb		; ee fb ff
B2_0b36:		.db $00				; 00
B2_0b37:		.db $00				; 00
B2_0b38:	.db $d3
B2_0b39:		cpx #$ea		; e0 ea
B2_0b3b:		cpx $00			; e4 00
B2_0b3d:	.db $e7
B2_0b3e:		inx				; e8 
B2_0b3f:		cpx $f600		; ec 00 f6
B2_0b42:		inx				; e8 
B2_0b43:	.db $f3
B2_0b44:	.db $e7
B2_0b45:		.db $00				; 00
B2_0b46:		sed				; f8 
B2_0b47:		inc $fbf4		; ee f4 fb
B2_0b4a:	.db $ff
B2_0b4b:		.db $00				; 00
B2_0b4c:		.db $00				; 00
B2_0b4d:	.db $cb
B2_0b4e:		cpx $e0			; e4 e0
B2_0b50:		sbc $e4, x		; f5 e4
B2_0b52:		.db $00				; 00
B2_0b53:	.db $e7
B2_0b54:		inx				; e8 
B2_0b55:		cpx $e100		; ec 00 e1
B2_0b58:		cpx $e7			; e4 e7
B2_0b5a:		inx				; e8 
B2_0b5b:		sbc $fbe3		; ede3 fb
B2_0b5e:	.db $ff
B2_0b5f:		iny				; c8 
B2_0b60:		.db $00				; 00
B2_0b61:	.db $e2
B2_0b62:		cpx #$ed		; e0 ed
B2_0b64:		.db $00				; 00
B2_0b65:	.db $e7
B2_0b66:		cpx $eb			; e4 eb
B2_0b68:	.db $ef
B2_0b69:		.db $00				; 00
B2_0b6a:		sed				; f8 
B2_0b6b:		inc $fff4		; ee f4 ff
B2_0b6e:		cpx #$00		; e0 00
B2_0b70:	.db $eb
B2_0b71:	.db $ee $f3 $00
B2_0b74:		sbc ($e4, x)	; e1 e4
B2_0b76:	.db $e2
B2_0b77:		cpx #$f4		; e0 f4
B2_0b79:	.db $f2
B2_0b7a:		cpx $00			; e4 00
B2_0b7c:		iny				; c8 
B2_0b7d:	.db $ff
B2_0b7e:		cpx #$ec		; e0 ec
B2_0b80:		.db $00				; 00
B2_0b81:		sbc $e4, x		; f5 e4
B2_0b83:		sbc ($f8), y	; f1 f8
B2_0b85:		.db $00				; 00
B2_0b86:		sbc $e0			; e5 e0
B2_0b88:	.db $f2
B2_0b89:	.db $f3
B2_0b8a:	.db $db
B2_0b8b:	.db $ff
B2_0b8c:	.db $d3
B2_0b8d:	.db $e7
B2_0b8e:		cpx #$ed		; e0 ed
B2_0b90:		nop				; ea 
B2_0b91:	.db $f2
B2_0b92:		.db $00				; 00
B2_0b93:		sbc $ee			; e5 ee
B2_0b95:		sbc ($00), y	; f1 00
B2_0b97:	.db $e7
B2_0b98:		cpx $eb			; e4 eb
B2_0b9a:	.db $ef
B2_0b9b:		inx				; e8 
B2_0b9c:		sbc $ffe6		; ede6 ff
B2_0b9f:		cpx $dbe4		; ec e4 db
B2_0ba2:		.db $00				; 00
B2_0ba3:		.db $00				; 00
B2_0ba4:		iny				; c8 
B2_0ba5:		.db $00				; 00
B2_0ba6:	.db $e7
B2_0ba7:		inc $e4ef		; ee ef e4
B2_0baa:		.db $00				; 00
B2_0bab:		inc $e4, x		; f6 e4
B2_0bad:		.db $00				; 00
B2_0bae:	.db $f2
B2_0baf:		cpx $e4			; e4 e4
B2_0bb1:	.db $ff
B2_0bb2:		cpx $e0			; e4 e0
B2_0bb4:	.db $e2
B2_0bb5:	.db $e7
B2_0bb6:		.db $00				; 00
B2_0bb7:		inc $e7f3		; ee f3 e7
B2_0bba:		cpx $f1			; e4 f1
B2_0bbc:		.db $00				; 00
B2_0bbd:		cpx #$e6		; e0 e6
B2_0bbf:		cpx #$e8		; e0 e8
B2_0bc1:		sbc $ffdb		; eddb ff
B2_0bc4:	.db $cc $f8 $00
B2_0bc7:		sbc #$ee		; e9 ee
B2_0bc9:		sbc ($00, x)	; e1 00
B2_0bcb:		inx				; e8 
B2_0bcc:	.db $f2
B2_0bcd:		.db $00				; 00
B2_0bce:	.db $e3
B2_0bcf:		inc $e4ed		; ee ed e4
B2_0bd2:	.db $dc
B2_0bd3:	.db $ff
B2_0bd4:	.db $f2
B2_0bd5:		inc $f800		; ee 00 f8
B2_0bd8:	.db $ee $f4 $00
B2_0bdb:	.db $f2
B2_0bdc:	.db $e7
B2_0bdd:		inc $ebf4		; ee f4 eb
B2_0be0:	.db $e3
B2_0be1:		.db $00				; 00
B2_0be2:		inc $ee			; e6 ee
B2_0be4:	.db $ff
B2_0be5:		inc $e8, x		; f6 e8
B2_0be7:	.db $f3
B2_0be8:	.db $e7
B2_0be9:		.db $00				; 00
B2_0bea:	.db $e7
B2_0beb:		inx				; e8 
B2_0bec:		cpx $e500		; ec 00 e5
B2_0bef:	.db $ee $f1 $00
B2_0bf2:		sbc $f6ee		; edee f6
B2_0bf5:	.db $db
B2_0bf6:	.db $ff
B2_0bf7:	.db $d3
B2_0bf8:	.db $e7
B2_0bf9:		cpx #$ed		; e0 ed
B2_0bfb:		nop				; ea 
B2_0bfc:	.db $f2
B2_0bfd:		.db $00				; 00
B2_0bfe:		sbc $ee			; e5 ee
B2_0c00:		sbc ($00), y	; f1 00
B2_0c02:	.db $e7
B2_0c03:		cpx $eb			; e4 eb
B2_0c05:	.db $ef
B2_0c06:		inx				; e8 
B2_0c07:		sbc $ffe6		; ede6 ff
B2_0c0a:		cpx $dbe4		; ec e4 db
B2_0c0d:		.db $00				; 00
B2_0c0e:		.db $00				; 00
B2_0c0f:		iny				; c8 
B2_0c10:	.db $da
B2_0c11:		cpx $d200		; ec 00 d2
B2_0c14:		sed				; f8 
B2_0c15:		sbc $e0			; e5 e0
B2_0c17:	.db $dc
B2_0c18:		.db $00				; 00
B2_0c19:	.db $f3
B2_0c1a:	.db $e7
B2_0c1b:		cpx $ff			; e4 ff
B2_0c1d:		cmp $e0, x		; d5 e0
B2_0c1f:		cpx $e8ef		; ec ef e8
B2_0c22:		sbc ($e4), y	; f1 e4
B2_0c24:		.db $00				; 00
B2_0c25:	.db $c7
B2_0c26:	.db $f4
B2_0c27:		sbc $e4f3		; edf3 e4
B2_0c2a:		sbc ($db), y	; f1 db
B2_0c2c:	.db $ff
B2_0c2d:		iny				; c8 
B2_0c2e:		.db $00				; 00
B2_0c2f:		inc $e8, x		; f6 e8
B2_0c31:	.db $eb
B2_0c32:	.db $eb
B2_0c33:		.db $00				; 00
B2_0c34:		sbc $ee			; e5 ee
B2_0c36:	.db $eb
B2_0c37:	.db $eb
B2_0c38:		inc $fff6		; ee f6 ff
B2_0c3b:		sed				; f8 
B2_0c3c:	.db $ee $f4 $00
B2_0c3f:		inx				; e8 
B2_0c40:		sbc $00			; e5 00
B2_0c42:		sed				; f8 
B2_0c43:	.db $ee $f4 $00
B2_0c46:		sbc $e4e4		; ede4 e4
B2_0c49:	.db $e3
B2_0c4a:	.db $ff
B2_0c4b:	.db $ec $f8 $00
B2_0c4e:	.db $e7
B2_0c4f:		cpx $eb			; e4 eb
B2_0c51:	.db $ef
B2_0c52:	.db $db
B2_0c53:	.db $ff
B2_0c54:		iny				; c8 
B2_0c55:		.db $00				; 00
B2_0c56:	.db $e7
B2_0c57:		inc $e4ef		; ee ef e4
B2_0c5a:		.db $00				; 00
B2_0c5b:		cpx #$00		; e0 00
B2_0c5d:		cpy $e6e0		; cc e0 e6
B2_0c60:		inx				; e8 
B2_0c61:	.db $e2
B2_0c62:	.db $ff
B2_0c63:	.db $d2
B2_0c64:	.db $ef
B2_0c65:		inx				; e8 
B2_0c66:		sbc ($e8), y	; f1 e8
B2_0c68:	.db $f3
B2_0c69:		.db $00				; 00
B2_0c6a:		inc $e8, x		; f6 e8
B2_0c6c:	.db $eb
B2_0c6d:	.db $eb
B2_0c6e:		.db $00				; 00
B2_0c6f:		inc $e8			; e6 e8
B2_0c71:		sbc $e4, x		; f5 e4
B2_0c73:	.db $ff
B2_0c74:	.db $f4
B2_0c75:	.db $f2
B2_0c76:		.db $00				; 00
B2_0c77:	.db $f3
B2_0c78:	.db $e7
B2_0c79:		cpx $00			; e4 00
B2_0c7b:	.db $ef
B2_0c7c:		inc $e4f6		; ee f6 e4
B2_0c7f:		sbc ($db), y	; f1 db
B2_0c81:	.db $ff
B2_0c82:	.db $cf
B2_0c83:	.db $eb
B2_0c84:		cpx $e0			; e4 e0
B2_0c86:	.db $f2
B2_0c87:		cpx $00			; e4 00
B2_0c89:		sbc ($e4, x)	; e1 e4
B2_0c8b:		.db $00				; 00
B2_0c8c:	.db $e2
B2_0c8d:		cpx #$f1		; e0 f1
B2_0c8f:		cpx $e5			; e4 e5
B2_0c91:	.db $f4
B2_0c92:	.db $eb
B2_0c93:	.db $db
B2_0c94:	.db $ff
B2_0c95:		iny				; c8 
B2_0c96:		.db $00				; 00
B2_0c97:	.db $e7
B2_0c98:		inc $e4ef		; ee ef e4
B2_0c9b:		.db $00				; 00
B2_0c9c:		sed				; f8 
B2_0c9d:	.db $ee $f4 $00
B2_0ca0:		inc $e8, x		; f6 e8
B2_0ca2:	.db $eb
B2_0ca3:	.db $eb
B2_0ca4:		.db $00				; 00
B2_0ca5:		sbc ($e4, x)	; e1 e4
B2_0ca7:	.db $ff
B2_0ca8:		sbc $e8, x		; f5 e8
B2_0caa:	.db $e2
B2_0cab:	.db $f3
B2_0cac:		inc $e8f1		; ee f1 e8
B2_0caf:		inc $f2f4		; ee f4 f2
B2_0cb2:	.db $db
B2_0cb3:	.db $ff
B2_0cb4:		iny				; c8 
B2_0cb5:	.db $da
B2_0cb6:		cpx $f200		; ec 00 f2
B2_0cb9:	.db $f4
B2_0cba:		sbc ($ef), y	; f1 ef
B2_0cbc:		sbc ($e8), y	; f1 e8
B2_0cbe:	.db $f2
B2_0cbf:		cpx $e3			; e4 e3
B2_0cc1:		.db $00				; 00
B2_0cc2:		sed				; f8 
B2_0cc3:		inc $fff4		; ee f4 ff
B2_0cc6:		sbc ($e4, x)	; e1 e4
B2_0cc8:		cpx #$f3		; e0 f3
B2_0cca:		.db $00				; 00
B2_0ccb:		cpx $dbe4		; ec e4 db
B2_0cce:		.db $00				; 00
B2_0ccf:		.db $00				; 00
B2_0cd0:		iny				; c8 
B2_0cd1:	.db $da
B2_0cd2:		sbc $e4, x		; f5 e4
B2_0cd4:		.db $00				; 00
B2_0cd5:		sbc ($e4, x)	; e1 e4
B2_0cd7:		cpx $ed			; e4 ed
B2_0cd9:	.db $ff
B2_0cda:		inc $e0, x		; f6 e0
B2_0cdc:		inx				; e8 
B2_0cdd:	.db $f3
B2_0cde:		inx				; e8 
B2_0cdf:	.db $ed $e6 $00
B2_0ce2:		sbc $ee			; e5 ee
B2_0ce4:		sbc ($00), y	; f1 00
B2_0ce6:		sed				; f8 
B2_0ce7:		inc $dbf4		; ee f4 db
B2_0cea:	.db $ff
B2_0ceb:		iny				; c8 
B2_0cec:		.db $00				; 00
B2_0ced:		sbc $e4e4		; ede4 e4
B2_0cf0:	.db $e3
B2_0cf1:		.db $00				; 00
B2_0cf2:		sed				; f8 
B2_0cf3:	.db $ee $f4 $00
B2_0cf6:	.db $f3
B2_0cf7:		inc $e7ff		; ee ff e7
B2_0cfa:		cpx $eb			; e4 eb
B2_0cfc:	.db $ef
B2_0cfd:		.db $00				; 00
B2_0cfe:	.db $ec $e4 $00
B2_0d01:	.db $e3
B2_0d02:		cpx $f2			; e4 f2
B2_0d04:	.db $f3
B2_0d05:		sbc ($ee), y	; f1 ee
B2_0d07:		sed				; f8 
B2_0d08:	.db $ff
B2_0d09:	.db $c3
B2_0d0a:		sbc ($e0), y	; f1 e0
B2_0d0c:	.db $e2
B2_0d0d:	.db $f4
B2_0d0e:	.db $eb
B2_0d0f:		cpx #$db		; e0 db
B2_0d11:	.db $ff
B2_0d12:		iny				; c8 
B2_0d13:	.db $da
B2_0d14:		cpx $e600		; ec 00 e6
B2_0d17:	.db $eb
B2_0d18:		cpx #$e3		; e0 e3
B2_0d1a:		.db $00				; 00
B2_0d1b:	.db $f3
B2_0d1c:		inc $e700		; ee 00 e7
B2_0d1f:		cpx $e0			; e4 e0
B2_0d21:		sbc ($ff), y	; f1 ff
B2_0d23:	.db $f3
B2_0d24:	.db $e7
B2_0d25:		cpx #$f3		; e0 f3
B2_0d27:	.db $db
B2_0d28:		.db $00				; 00
B2_0d29:		.db $00				; 00
B2_0d2a:	.db $cb
B2_0d2b:		cpx $f3			; e4 f3
B2_0d2d:	.db $da
B2_0d2e:	.db $f2
B2_0d2f:		.db $00				; 00
B2_0d30:		inc $e4			; e6 e4
B2_0d32:	.db $f3
B2_0d33:	.db $ff
B2_0d34:	.db $e7
B2_0d35:		inx				; e8 
B2_0d36:		cpx $db00		; ec 00 db
B2_0d39:		.db $00				; 00
B2_0d3a:		.db $00				; 00
B2_0d3b:		iny				; c8 
B2_0d3c:		.db $00				; 00
B2_0d3d:		cpx #$ec		; e0 ec
B2_0d3f:		.db $00				; 00
B2_0d40:		cpy #$eb		; c0 eb
B2_0d42:	.db $f4
B2_0d43:	.db $e2
B2_0d44:		cpx #$f1		; e0 f1
B2_0d46:	.db $e3
B2_0d47:	.db $db
B2_0d48:	.db $ff
B2_0d49:		dec $e4, x		; d6 e4
B2_0d4b:	.db $eb
B2_0d4c:	.db $eb
B2_0d4d:	.db $dc
B2_0d4e:		.db $00				; 00
B2_0d4f:		iny				; c8 
B2_0d50:	.db $da
B2_0d51:	.db $eb
B2_0d52:	.db $eb
B2_0d53:		.db $00				; 00
B2_0d54:	.db $e7
B2_0d55:		cpx #$f5		; e0 f5
B2_0d57:		cpx $00			; e4 00
B2_0d59:	.db $f3
B2_0d5a:		inc $e5ff		; ee ff e5
B2_0d5d:		inx				; e8 
B2_0d5e:	.db $ed $e3 $00
B2_0d61:	.db $f2
B2_0d62:		inc $e4ec		; ee ec e4
B2_0d65:		inc $e4ed		; ee ed e4
B2_0d68:		.db $00				; 00
B2_0d69:		cpx $eb			; e4 eb
B2_0d6b:	.db $f2
B2_0d6c:		cpx $db			; e4 db
B2_0d6e:	.db $ff
B2_0d6f:	.db $cf
B2_0d70:	.db $eb
B2_0d71:		cpx $e0			; e4 e0
B2_0d73:	.db $f2
B2_0d74:		cpx $00			; e4 00
B2_0d76:		sbc ($e4, x)	; e1 e4
B2_0d78:		.db $00				; 00
B2_0d79:	.db $e2
B2_0d7a:		cpx #$f1		; e0 f1
B2_0d7c:		cpx $e5			; e4 e5
B2_0d7e:	.db $f4
B2_0d7f:	.db $eb
B2_0d80:	.db $fa
B2_0d81:	.db $ff
B2_0d82:		ldy #$01		; a0 01
B2_0d84:		bne B2_0d88 ; d0 02

B2_0d86:		ldy #$00		; a0 00
B2_0d88:		lda $07f0		; ad f0 07
B2_0d8b:		bpl B2_0db1 ; 10 24

B2_0d8d:		dec $07f0		; ce f0 07
B2_0d90:		lda $07f0		; ad f0 07
B2_0d93:		and #$7f		; 29 7f
B2_0d95:		bne B2_0db0 ; d0 19

B2_0d97:		tya				; 98 
B2_0d98:		pha				; 48 
B2_0d99:		jsr $92da		; 20 da 92
B2_0d9c:		pla				; 68 
B2_0d9d:		tay				; a8 
B2_0d9e:		cpy #$00		; c0 00
B2_0da0:		beq B2_0da8 ; f0 06

B2_0da2:		dec $07f3		; ce f3 07
B2_0da5:		jmp $8dab		; 4c ab 8d


B2_0da8:		inc $07f3		; ee f3 07
B2_0dab:		lda #$07		; a9 07
B2_0dad:		sta $07f0		; 8d f0 07
B2_0db0:		rts				; 60 


B2_0db1:		dec $07f0		; ce f0 07
B2_0db4:		beq B2_0d97 ; f0 e1

B2_0db6:		lda $07f3		; ad f3 07
B2_0db9:		asl a			; 0a
B2_0dba:		tay				; a8 
B2_0dbb:		lda $9173, y	; b9 73 91
B2_0dbe:		sta $06			; 85 06
B2_0dc0:		lda $9174, y	; b9 74 91
B2_0dc3:		sta $07			; 85 07
B2_0dc5:		lda $8f50, y	; b9 50 8f
B2_0dc8:		sta $04			; 85 04
B2_0dca:		lda $8f51, y	; b9 51 8f
B2_0dcd:		sta $05			; 85 05
B2_0dcf:		lda #$00		; a9 00
B2_0dd1:		sta $10			; 85 10
B2_0dd3:		lda $07f1		; ad f1 07
B2_0dd6:		asl a			; 0a
B2_0dd7:		rol $10			; 26 10
B2_0dd9:		asl a			; 0a
B2_0dda:		rol $10			; 26 10
B2_0ddc:		asl a			; 0a
B2_0ddd:		rol $10			; 26 10
B2_0ddf:		asl a			; 0a
B2_0de0:		rol $10			; 26 10
B2_0de2:		asl a			; 0a
B2_0de3:		rol $10			; 26 10
B2_0de5:		clc				; 18 
B2_0de6:		adc $06			; 65 06
B2_0de8:		sta $06			; 85 06
B2_0dea:		sta $08			; 85 08
B2_0dec:		lda $07			; a5 07
B2_0dee:		adc $10			; 65 10
B2_0df0:		sta $07			; 85 07
B2_0df2:		ora $17			; 05 17
B2_0df4:		sta $09			; 85 09
B2_0df6:		ldx $1d			; a6 1d
B2_0df8:		lda #$01		; a9 01
B2_0dfa:		jsr $8a21		; 20 21 8a
B2_0dfd:		lda $08			; a5 08
B2_0dff:		jsr $8a21		; 20 21 8a
B2_0e02:		lda $09			; a5 09
B2_0e04:		jsr $8a21		; 20 21 8a
B2_0e07:		ldy $07f2		; ac f2 07
B2_0e0a:		lda ($04), y	; b1 04
B2_0e0c:		cmp #$ff		; c9 ff
B2_0e0e:		beq B2_0e6e ; f0 5e

B2_0e10:		cmp #$fe		; c9 fe
B2_0e12:		beq B2_0e87 ; f0 73

B2_0e14:		cmp #$03		; c9 03
B2_0e16:		beq B2_0e58 ; f0 40

B2_0e18:		cmp #$01		; c9 01
B2_0e1a:		beq B2_0e3a ; f0 1e

B2_0e1c:		sta $0e			; 85 0e
B2_0e1e:		iny				; c8 
B2_0e1f:		lda ($04), y	; b1 04
B2_0e21:		sta $0f			; 85 0f
B2_0e23:		clc				; 18 
B2_0e24:		adc $06			; 65 06
B2_0e26:		sta $06			; 85 06
B2_0e28:		sta $08			; 85 08
B2_0e2a:		lda $0e			; a5 0e
B2_0e2c:		jsr $8a21		; 20 21 8a
B2_0e2f:		dec $0f			; c6 0f
B2_0e31:		bne B2_0e2c ; d0 f9

B2_0e33:		iny				; c8 
B2_0e34:		sty $07f2		; 8c f2 07
B2_0e37:		jmp $8e07		; 4c 07 8e


B2_0e3a:		iny				; c8 
B2_0e3b:		sty $07f2		; 8c f2 07
B2_0e3e:		lda ($04), y	; b1 04
B2_0e40:		sta $0d			; 85 0d
B2_0e42:		jsr $8e9f		; 20 9f 8e
B2_0e45:		ldy $07f2		; ac f2 07
B2_0e48:		lda ($04), y	; b1 04
B2_0e4a:		clc				; 18 
B2_0e4b:		adc $06			; 65 06
B2_0e4d:		sta $06			; 85 06
B2_0e4f:		sta $08			; 85 08
B2_0e51:		iny				; c8 
B2_0e52:		sty $07f2		; 8c f2 07
B2_0e55:		jmp $8e07		; 4c 07 8e


B2_0e58:		iny				; c8 
B2_0e59:		lda ($04), y	; b1 04
B2_0e5b:		clc				; 18 
B2_0e5c:		adc $06			; 65 06
B2_0e5e:		sta $06			; 85 06
B2_0e60:		sta $08			; 85 08
B2_0e62:		iny				; c8 
B2_0e63:		sty $07f2		; 8c f2 07
B2_0e66:		lda #$ff		; a9 ff
B2_0e68:		jsr $8a21		; 20 21 8a
B2_0e6b:		jmp $8df8		; 4c f8 8d


B2_0e6e:		iny				; c8 
B2_0e6f:		sty $07f2		; 8c f2 07
B2_0e72:		inc $07f1		; ee f1 07
B2_0e75:		lda #$ff		; a9 ff
B2_0e77:		jsr $8a21		; 20 21 8a
B2_0e7a:		stx $1d			; 86 1d
B2_0e7c:		lda $07f1		; ad f1 07
B2_0e7f:		and #$01		; 29 01
B2_0e81:		beq B2_0e86 ; f0 03

B2_0e83:		jmp $8db6		; 4c b6 8d


B2_0e86:		rts				; 60 


B2_0e87:		lda #$ff		; a9 ff
B2_0e89:		jsr $8a21		; 20 21 8a
B2_0e8c:		stx $1d			; 86 1d
B2_0e8e:		lda $07f0		; ad f0 07
B2_0e91:		ora #$80		; 09 80
B2_0e93:		sta $07f0		; 8d f0 07
B2_0e96:		lda #$00		; a9 00
B2_0e98:		sta $07f2		; 8d f2 07
B2_0e9b:		sta $07f1		; 8d f1 07
B2_0e9e:		rts				; 60 


B2_0e9f:		jsr $8ebd		; 20 bd 8e
B2_0ea2:		jsr $8efa		; 20 fa 8e
B2_0ea5:		jsr $8a21		; 20 21 8a
B2_0ea8:		inc $0c			; e6 0c
B2_0eaa:		dec $0d			; c6 0d
B2_0eac:		beq B2_0ebc ; f0 0e

B2_0eae:		lda $0c			; a5 0c
B2_0eb0:		cmp #$04		; c9 04
B2_0eb2:		bne B2_0ea2 ; d0 ee

B2_0eb4:		inc $0a			; e6 0a
B2_0eb6:		lda #$00		; a9 00
B2_0eb8:		sta $0c			; 85 0c
B2_0eba:		beq B2_0ea2 ; f0 e6

B2_0ebc:		rts				; 60 


B2_0ebd:		lda $06			; a5 06
B2_0ebf:		sec				; 38 
B2_0ec0:		sbc #$80		; e9 80
B2_0ec2:		sta $0c			; 85 0c
B2_0ec4:		lda $07			; a5 07
B2_0ec6:		sbc #$00		; e9 00
B2_0ec8:		sta $0b			; 85 0b
B2_0eca:		lda $0c			; a5 0c
B2_0ecc:		and #$80		; 29 80
B2_0ece:		sta $01			; 85 01
B2_0ed0:		lda $0b			; a5 0b
B2_0ed2:		and #$03		; 29 03
B2_0ed4:		lsr a			; 4a
B2_0ed5:		ror $01			; 66 01
B2_0ed7:		lsr a			; 4a
B2_0ed8:		ror $01			; 66 01
B2_0eda:		lsr a			; 4a
B2_0edb:		ror $01			; 66 01
B2_0edd:		lsr a			; 4a
B2_0ede:		ror $01			; 66 01
B2_0ee0:		lda $0c			; a5 0c
B2_0ee2:		and #$1f		; 29 1f
B2_0ee4:		lsr a			; 4a
B2_0ee5:		lsr a			; 4a
B2_0ee6:		ora $01			; 05 01
B2_0ee8:		sta $0a			; 85 0a
B2_0eea:		lda $0c			; a5 0c
B2_0eec:		and #$60		; 29 60
B2_0eee:		lsr a			; 4a
B2_0eef:		lsr a			; 4a
B2_0ef0:		lsr a			; 4a
B2_0ef1:		sta $0b			; 85 0b
B2_0ef3:		lda $0c			; a5 0c
B2_0ef5:		and #$03		; 29 03
B2_0ef7:		sta $0c			; 85 0c
B2_0ef9:		rts				; 60 


B2_0efa:		jsr $8f3c		; 20 3c 8f
B2_0efd:		ldy $0a			; a4 0a
B2_0eff:		iny				; c8 
B2_0f00:		jsr $eb86		; 20 86 eb
B2_0f03:		lda $32			; a5 32
B2_0f05:		asl a			; 0a
B2_0f06:		tay				; a8 
B2_0f07:		jsr $eb66		; 20 66 eb
B2_0f0a:		lda #$00		; a9 00
B2_0f0c:		asl $00			; 06 00
B2_0f0e:		rol a			; 2a
B2_0f0f:		asl $00			; 06 00
B2_0f11:		rol a			; 2a
B2_0f12:		asl $00			; 06 00
B2_0f14:		rol a			; 2a
B2_0f15:		asl $00			; 06 00
B2_0f17:		rol a			; 2a
B2_0f18:		sta $01			; 85 01
B2_0f1a:		lda $02			; a5 02
B2_0f1c:		clc				; 18 
B2_0f1d:		adc $00			; 65 00
B2_0f1f:		sta $00			; 85 00
B2_0f21:		lda $01			; a5 01
B2_0f23:		adc $03			; 65 03
B2_0f25:		sta $01			; 85 01
B2_0f27:		lda $0b			; a5 0b
B2_0f29:		clc				; 18 
B2_0f2a:		adc $0c			; 65 0c
B2_0f2c:		sta $02			; 85 02
B2_0f2e:		jsr $eb9c		; 20 9c eb
B2_0f31:		lda $02			; a5 02
B2_0f33:		rts				; 60 


B2_0f34:		.db $00				; 00
B2_0f35:		.db $00				; 00
B2_0f36:		bmi B2_0f38 ; 30 00

B2_0f38:		.db $00				; 00
B2_0f39:		.db $00				; 00
B2_0f3a:		.db $00				; 00
B2_0f3b:		bmi B2_0f5d ; 30 20

B2_0f3d:		eor $a4eb, x	; 5d eb a4
B2_0f40:	.db $32
B2_0f41:		lda $8f34, y	; b9 34 8f
B2_0f44:		clc				; 18 
B2_0f45:		adc $00			; 65 00
B2_0f47:		sta $00			; 85 00
B2_0f49:		lda $01			; a5 01
B2_0f4b:		adc #$00		; 69 00
B2_0f4d:		sta $01			; 85 01
B2_0f4f:		rts				; 60 


B2_0f50:		lsr $7f8f, x	; 5e 8f 7f
B2_0f53:	.db $8f
B2_0f54:		lda $8f			; a5 8f
B2_0f56:	.db $e3
B2_0f57:	.db $8f
B2_0f58:		and $a790, y	; 39 90 a7
B2_0f5b:		bcc B2_0f8a ; 90 2d

B2_0f5d:		sta ($01), y	; 91 01
B2_0f5f:		clc				; 18 
B2_0f60:	.db $ff
B2_0f61:		ora ($18, x)	; 01 18
B2_0f63:	.db $ff
B2_0f64:		ora ($18, x)	; 01 18
B2_0f66:	.db $ff
B2_0f67:		ora ($18, x)	; 01 18
B2_0f69:	.db $ff
B2_0f6a:		ora ($18, x)	; 01 18
B2_0f6c:	.db $ff
B2_0f6d:		ora ($18, x)	; 01 18
B2_0f6f:	.db $ff
B2_0f70:		ora ($18, x)	; 01 18
B2_0f72:	.db $ff
B2_0f73:		ora ($18, x)	; 01 18
B2_0f75:	.db $ff
B2_0f76:		ora ($18, x)	; 01 18
B2_0f78:	.db $ff
B2_0f79:		ora ($18, x)	; 01 18
B2_0f7b:	.db $ff
B2_0f7c:		ora ($18, x)	; 01 18
B2_0f7e:		inc $1801, x	; fe 01 18
B2_0f81:	.db $ff
B2_0f82:		ora ($18, x)	; 01 18
B2_0f84:	.db $ff
B2_0f85:		ora ($18, x)	; 01 18
B2_0f87:	.db $ff
B2_0f88:		ora ($18, x)	; 01 18
B2_0f8a:	.db $ff
B2_0f8b:		ora ($0a, x)	; 01 0a
B2_0f8d:		.db $00				; 00
B2_0f8e:	.db $04
B2_0f8f:		ora ($0a, x)	; 01 0a
B2_0f91:	.db $ff
B2_0f92:		ora ($0a, x)	; 01 0a
B2_0f94:		.db $00				; 00
B2_0f95:	.db $04
B2_0f96:		ora ($0a, x)	; 01 0a
B2_0f98:	.db $ff
B2_0f99:		ora ($18, x)	; 01 18
B2_0f9b:	.db $ff
B2_0f9c:		ora ($18, x)	; 01 18
B2_0f9e:	.db $ff
B2_0f9f:		ora ($18, x)	; 01 18
B2_0fa1:	.db $ff
B2_0fa2:		ora ($18, x)	; 01 18
B2_0fa4:		inc $1801, x	; fe 01 18
B2_0fa7:	.db $ff
B2_0fa8:		ora ($18, x)	; 01 18
B2_0faa:	.db $ff
B2_0fab:		ora ($18, x)	; 01 18
B2_0fad:	.db $ff
B2_0fae:		ora ($09, x)	; 01 09
B2_0fb0:		.db $00				; 00
B2_0fb1:		asl $01			; 06 01
B2_0fb3:		ora #$ff		; 09 ff
B2_0fb5:		ora ($09, x)	; 01 09
B2_0fb7:		.db $00				; 00
B2_0fb8:		ora ($31, x)	; 01 31
B2_0fba:		ora ($32, x)	; 01 32
B2_0fbc:	.db $02
B2_0fbd:	.db $33
B2_0fbe:		ora ($00, x)	; 01 00
B2_0fc0:		ora ($01, x)	; 01 01
B2_0fc2:		ora #$ff		; 09 ff
B2_0fc4:		ora ($09, x)	; 01 09
B2_0fc6:		.db $00				; 00
B2_0fc7:		ora ($34, x)	; 01 34
B2_0fc9:		ora ($32, x)	; 01 32
B2_0fcb:	.db $02
B2_0fcc:		and $01, x		; 35 01
B2_0fce:		.db $00				; 00
B2_0fcf:		ora ($01, x)	; 01 01
B2_0fd1:		ora #$ff		; 09 ff
B2_0fd3:		ora ($09, x)	; 01 09
B2_0fd5:		.db $00				; 00
B2_0fd6:		asl $01			; 06 01
B2_0fd8:		ora #$ff		; 09 ff
B2_0fda:		ora ($18, x)	; 01 18
B2_0fdc:	.db $ff
B2_0fdd:		ora ($18, x)	; 01 18
B2_0fdf:	.db $ff
B2_0fe0:		ora ($18, x)	; 01 18
B2_0fe2:		inc $1801, x	; fe 01 18
B2_0fe5:	.db $ff
B2_0fe6:		ora ($18, x)	; 01 18
B2_0fe8:	.db $ff
B2_0fe9:		ora ($07, x)	; 01 07
B2_0feb:		.db $00				; 00
B2_0fec:		asl a			; 0a
B2_0fed:		ora ($07, x)	; 01 07
B2_0fef:	.db $ff
B2_0ff0:		ora ($07, x)	; 01 07
B2_0ff2:		.db $00				; 00
B2_0ff3:		ora ($31, x)	; 01 31
B2_0ff5:		ora ($32, x)	; 01 32
B2_0ff7:		asl $33			; 06 33
B2_0ff9:		ora ($00, x)	; 01 00
B2_0ffb:		ora ($01, x)	; 01 01
B2_0ffd:	.db $07
B2_0ffe:	.db $ff
B2_0fff:		ora ($07, x)	; 01 07
B2_1001:		.db $00				; 00
B2_1002:		ora ($30, x)	; 01 30
B2_1004:		ora ($00, x)	; 01 00
B2_1006:		asl $30			; 06 30
B2_1008:		ora ($00, x)	; 01 00
B2_100a:		ora ($01, x)	; 01 01
B2_100c:	.db $07
B2_100d:	.db $ff
B2_100e:		ora ($07, x)	; 01 07
B2_1010:		.db $00				; 00
B2_1011:		ora ($30, x)	; 01 30
B2_1013:		ora ($00, x)	; 01 00
B2_1015:		asl $30			; 06 30
B2_1017:		ora ($00, x)	; 01 00
B2_1019:		ora ($01, x)	; 01 01
B2_101b:	.db $07
B2_101c:	.db $ff
B2_101d:		ora ($07, x)	; 01 07
B2_101f:		.db $00				; 00
B2_1020:		ora ($34, x)	; 01 34
B2_1022:		ora ($32, x)	; 01 32
B2_1024:		asl $35			; 06 35
B2_1026:		ora ($00, x)	; 01 00
B2_1028:		ora ($01, x)	; 01 01
B2_102a:	.db $07
B2_102b:	.db $ff
B2_102c:		ora ($07, x)	; 01 07
B2_102e:		.db $00				; 00
B2_102f:		asl a			; 0a
B2_1030:		ora ($07, x)	; 01 07
B2_1032:	.db $ff
B2_1033:		ora ($18, x)	; 01 18
B2_1035:	.db $ff
B2_1036:		ora ($18, x)	; 01 18
B2_1038:		inc $1801, x	; fe 01 18
B2_103b:	.db $ff
B2_103c:		ora ($05, x)	; 01 05
B2_103e:		.db $00				; 00
B2_103f:		asl $0501		; 0e 01 05
B2_1042:	.db $ff
B2_1043:		ora ($05, x)	; 01 05
B2_1045:		.db $00				; 00
B2_1046:		ora ($31, x)	; 01 31
B2_1048:		ora ($32, x)	; 01 32
B2_104a:		asl a			; 0a
B2_104b:	.db $33
B2_104c:		ora ($00, x)	; 01 00
B2_104e:		ora ($01, x)	; 01 01
B2_1050:		ora $ff			; 05 ff
B2_1052:		ora ($05, x)	; 01 05
B2_1054:		.db $00				; 00
B2_1055:		ora ($30, x)	; 01 30
B2_1057:		ora ($00, x)	; 01 00
B2_1059:		asl a			; 0a
B2_105a:		bmi B2_105d ; 30 01

B2_105c:		.db $00				; 00
B2_105d:		ora ($01, x)	; 01 01
B2_105f:		ora $ff			; 05 ff
B2_1061:		ora ($05, x)	; 01 05
B2_1063:		.db $00				; 00
B2_1064:		ora ($30, x)	; 01 30
B2_1066:		ora ($00, x)	; 01 00
B2_1068:		asl a			; 0a
B2_1069:		bmi B2_106c ; 30 01

B2_106b:		.db $00				; 00
B2_106c:		ora ($01, x)	; 01 01
B2_106e:		ora $ff			; 05 ff
B2_1070:		ora ($05, x)	; 01 05
B2_1072:		.db $00				; 00
B2_1073:		ora ($30, x)	; 01 30
B2_1075:		ora ($00, x)	; 01 00
B2_1077:		asl a			; 0a
B2_1078:		bmi B2_107b ; 30 01

B2_107a:		.db $00				; 00
B2_107b:		ora ($01, x)	; 01 01
B2_107d:		ora $ff			; 05 ff
B2_107f:		ora ($05, x)	; 01 05
B2_1081:		.db $00				; 00
B2_1082:		ora ($30, x)	; 01 30
B2_1084:		ora ($00, x)	; 01 00
B2_1086:		asl a			; 0a
B2_1087:		bmi B2_108a ; 30 01

B2_1089:		.db $00				; 00
B2_108a:		ora ($01, x)	; 01 01
B2_108c:		ora $ff			; 05 ff
B2_108e:		ora ($05, x)	; 01 05
B2_1090:		.db $00				; 00
B2_1091:		ora ($34, x)	; 01 34
B2_1093:		ora ($32, x)	; 01 32
B2_1095:		asl a			; 0a
B2_1096:		and $01, x		; 35 01
B2_1098:		.db $00				; 00
B2_1099:		ora ($01, x)	; 01 01
B2_109b:		ora $ff			; 05 ff
B2_109d:		ora ($05, x)	; 01 05
B2_109f:		.db $00				; 00
B2_10a0:		asl $0501		; 0e 01 05
B2_10a3:	.db $ff
B2_10a4:		ora ($18, x)	; 01 18
B2_10a6:		inc $0201, x	; fe 01 02
B2_10a9:		.db $00				; 00
B2_10aa:	.db $14
B2_10ab:		ora ($02, x)	; 01 02
B2_10ad:	.db $ff
B2_10ae:		ora ($02, x)	; 01 02
B2_10b0:		.db $00				; 00
B2_10b1:		ora ($31, x)	; 01 31
B2_10b3:		ora ($32, x)	; 01 32
B2_10b5:		bpl B2_10ea ; 10 33

B2_10b7:		ora ($00, x)	; 01 00
B2_10b9:		ora ($01, x)	; 01 01
B2_10bb:	.db $02
B2_10bc:	.db $ff
B2_10bd:		ora ($02, x)	; 01 02
B2_10bf:		.db $00				; 00
B2_10c0:		ora ($30, x)	; 01 30
B2_10c2:		ora ($00, x)	; 01 00
B2_10c4:		;removed
	.db $10 $30

B2_10c6:		ora ($00, x)	; 01 00
B2_10c8:		ora ($01, x)	; 01 01
B2_10ca:	.db $02
B2_10cb:	.db $ff
B2_10cc:		ora ($02, x)	; 01 02
B2_10ce:		.db $00				; 00
B2_10cf:		ora ($30, x)	; 01 30
B2_10d1:		ora ($00, x)	; 01 00
B2_10d3:		;removed
	.db $10 $30

B2_10d5:		ora ($00, x)	; 01 00
B2_10d7:		ora ($01, x)	; 01 01
B2_10d9:	.db $02
B2_10da:	.db $ff
B2_10db:		ora ($02, x)	; 01 02
B2_10dd:		.db $00				; 00
B2_10de:		ora ($30, x)	; 01 30
B2_10e0:		ora ($00, x)	; 01 00
B2_10e2:		;removed
	.db $10 $30

B2_10e4:		ora ($00, x)	; 01 00
B2_10e6:		ora ($01, x)	; 01 01
B2_10e8:	.db $02
B2_10e9:	.db $ff
B2_10ea:		ora ($02, x)	; 01 02
B2_10ec:		.db $00				; 00
B2_10ed:		ora ($30, x)	; 01 30
B2_10ef:		ora ($00, x)	; 01 00
B2_10f1:		;removed
	.db $10 $30

B2_10f3:		ora ($00, x)	; 01 00
B2_10f5:		ora ($01, x)	; 01 01
B2_10f7:	.db $02
B2_10f8:	.db $ff
B2_10f9:		ora ($02, x)	; 01 02
B2_10fb:		.db $00				; 00
B2_10fc:		ora ($30, x)	; 01 30
B2_10fe:		ora ($00, x)	; 01 00
B2_1100:		bpl B2_1132 ; 10 30

B2_1102:		ora ($00, x)	; 01 00
B2_1104:		ora ($01, x)	; 01 01
B2_1106:	.db $02
B2_1107:	.db $ff
B2_1108:		ora ($02, x)	; 01 02
B2_110a:		.db $00				; 00
B2_110b:		ora ($30, x)	; 01 30
B2_110d:		ora ($00, x)	; 01 00
B2_110f:		;removed
	.db $10 $30

B2_1111:		ora ($00, x)	; 01 00
B2_1113:		ora ($01, x)	; 01 01
B2_1115:	.db $02
B2_1116:	.db $ff
B2_1117:		ora ($02, x)	; 01 02
B2_1119:		.db $00				; 00
B2_111a:		ora ($34, x)	; 01 34
B2_111c:		ora ($32, x)	; 01 32
B2_111e:		bpl B2_1155 ; 10 35

B2_1120:		ora ($00, x)	; 01 00
B2_1122:		ora ($01, x)	; 01 01
B2_1124:	.db $02
B2_1125:	.db $ff
B2_1126:		ora ($02, x)	; 01 02
B2_1128:		.db $00				; 00
B2_1129:	.db $14
B2_112a:		ora ($02, x)	; 01 02
B2_112c:		inc $0131, x	; fe 31 01
B2_112f:	.db $32
B2_1130:		asl $33, x		; 16 33
B2_1132:		ora ($ff, x)	; 01 ff
B2_1134:		bmi B2_1137 ; 30 01

B2_1136:		.db $00				; 00
B2_1137:		asl $30, x		; 16 30
B2_1139:		ora ($ff, x)	; 01 ff
B2_113b:		bmi B2_113e ; 30 01

B2_113d:		.db $00				; 00
B2_113e:		asl $30, x		; 16 30
B2_1140:		ora ($ff, x)	; 01 ff
B2_1142:		bmi B2_1145 ; 30 01

B2_1144:		.db $00				; 00
B2_1145:		asl $30, x		; 16 30
B2_1147:		ora ($ff, x)	; 01 ff
B2_1149:		bmi B2_114c ; 30 01

B2_114b:		.db $00				; 00
B2_114c:		asl $30, x		; 16 30
B2_114e:		ora ($ff, x)	; 01 ff
B2_1150:		bmi B2_1153 ; 30 01

B2_1152:		.db $00				; 00
B2_1153:		asl $30, x		; 16 30
B2_1155:		ora ($ff, x)	; 01 ff
B2_1157:		bmi B2_115a ; 30 01

B2_1159:		.db $00				; 00
B2_115a:		asl $30, x		; 16 30
B2_115c:		ora ($ff, x)	; 01 ff
B2_115e:		bmi B2_1161 ; 30 01

B2_1160:		.db $00				; 00
B2_1161:		asl $30, x		; 16 30
B2_1163:		ora ($ff, x)	; 01 ff
B2_1165:		bmi B2_1168 ; 30 01

B2_1167:		.db $00				; 00
B2_1168:		asl $30, x		; 16 30
B2_116a:		ora ($ff, x)	; 01 ff
B2_116c:	.db $34
B2_116d:		ora ($32, x)	; 01 32
B2_116f:		asl $35, x		; 16 35
B2_1171:		ora ($fe, x)	; 01 fe
B2_1173:		sty $00			; 84 00
B2_1175:		sty $00			; 84 00
B2_1177:		sty $00			; 84 00
B2_1179:		sty $00			; 84 00
B2_117b:		sty $00			; 84 00
B2_117d:		sty $00			; 84 00
B2_117f:		sty $00			; 84 00
B2_1181:		jsr func_1f_0182		; 20 82 e1
B2_1184:		lda #$00		; a9 00
B2_1186:		sta $fd			; 85 fd
B2_1188:		sta $fc			; 85 fc
B2_118a:		lda #$20		; a9 20
B2_118c:		sta $00			; 85 00
B2_118e:		jsr $921c		; 20 1c 92
B2_1191:		lda #$24		; a9 24
B2_1193:		sta $00			; 85 00
B2_1195:		jsr $921c		; 20 1c 92
B2_1198:		lda #$24		; a9 24
B2_119a:		sta $07			; 85 07
B2_119c:		jsr $91cf		; 20 cf 91
B2_119f:		lda #$20		; a9 20
B2_11a1:		sta $07			; 85 07
B2_11a3:		jsr $91cf		; 20 cf 91
B2_11a6:		lda #$23		; a9 23
B2_11a8:		sta $00			; 85 00
B2_11aa:		jsr $923c		; 20 3c 92
B2_11ad:		lda #$27		; a9 27
B2_11af:		sta $00			; 85 00
B2_11b1:		jsr $923c		; 20 3c 92
B2_11b4:		lda $ff			; a5 ff
B2_11b6:		and #$67		; 29 67
B2_11b8:		ora #$04		; 09 04
B2_11ba:		sta PPUCTRL.w		; 8d 00 20
B2_11bd:		lda #$20		; a9 20
B2_11bf:		sta $00			; 85 00
B2_11c1:		jsr $9265		; 20 65 92
B2_11c4:		lda #$24		; a9 24
B2_11c6:		sta $00			; 85 00
B2_11c8:		jsr $9265		; 20 65 92
B2_11cb:		jsr $ed66		; 20 66 ed
B2_11ce:		rts				; 60 


B2_11cf:		lda PPUSTATUS.w		; ad 02 20
B2_11d2:		lda $07			; a5 07
B2_11d4:		sta PPUADDR.w		; 8d 06 20
B2_11d7:		lda #$80		; a9 80
B2_11d9:		sta $06			; 85 06
B2_11db:		sta PPUADDR.w		; 8d 06 20
B2_11de:		lda #$18		; a9 18
B2_11e0:		sta $08			; 85 08
B2_11e2:		lda #$20		; a9 20
B2_11e4:		sta $0d			; 85 0d
B2_11e6:		jsr $91fe		; 20 fe 91
B2_11e9:		dec $08			; c6 08
B2_11eb:		beq B2_11fd ; f0 10

B2_11ed:		lda $06			; a5 06
B2_11ef:		clc				; 18 
B2_11f0:		adc #$20		; 69 20
B2_11f2:		sta $06			; 85 06
B2_11f4:		lda $07			; a5 07
B2_11f6:		adc #$00		; 69 00
B2_11f8:		sta $07			; 85 07
B2_11fa:		jmp $91e2		; 4c e2 91


B2_11fd:		rts				; 60 


B2_11fe:		jsr $8ebd		; 20 bd 8e
B2_1201:		jsr $8efa		; 20 fa 8e
B2_1204:		sta PPUDATA.w		; 8d 07 20
B2_1207:		inc $0c			; e6 0c
B2_1209:		dec $0d			; c6 0d
B2_120b:		beq B2_121b ; f0 0e

B2_120d:		lda $0c			; a5 0c
B2_120f:		cmp #$04		; c9 04
B2_1211:		bne B2_1201 ; d0 ee

B2_1213:		inc $0a			; e6 0a
B2_1215:		lda #$00		; a9 00
B2_1217:		sta $0c			; 85 0c
B2_1219:		beq B2_1201 ; f0 e6

B2_121b:		rts				; 60 


B2_121c:		lda PPUSTATUS.w		; ad 02 20
B2_121f:		lda $00			; a5 00
B2_1221:		sta PPUADDR.w		; 8d 06 20
B2_1224:		lda #$00		; a9 00
B2_1226:		sta PPUADDR.w		; 8d 06 20
B2_1229:		ldx #$80		; a2 80
B2_122b:		lda #$00		; a9 00
B2_122d:		sta PPUDATA.w		; 8d 07 20
B2_1230:		dex				; ca 
B2_1231:		bne B2_122d ; d0 fa

B2_1233:		rts				; 60 


B2_1234:		.db $00				; 00
B2_1235:		.db $00				; 00
B2_1236:		ora ($00, x)	; 01 00
B2_1238:		.db $00				; 00
B2_1239:		.db $00				; 00
B2_123a:		.db $00				; 00
B2_123b:		ora ($ad, x)	; 01 ad
B2_123d:	.db $02
B2_123e:	.db $20 $a5 $00
B2_1241:		sta PPUADDR.w		; 8d 06 20
B2_1244:		lda #$c8		; a9 c8
B2_1246:		sta PPUADDR.w		; 8d 06 20
B2_1249:		lda #$00		; a9 00
B2_124b:		sta $07			; 85 07
B2_124d:		jsr $8f3c		; 20 3c 8f
B2_1250:		lda $07			; a5 07
B2_1252:		sta $02			; 85 02
B2_1254:		inc $02			; e6 02
B2_1256:		jsr $93ff		; 20 ff 93
B2_1259:		sta PPUDATA.w		; 8d 07 20
B2_125c:		inc $07			; e6 07
B2_125e:		lda $07			; a5 07
B2_1260:		cmp #$38		; c9 38
B2_1262:		bne B2_124d ; d0 e9

B2_1264:		rts				; 60 


B2_1265:		ldy $32			; a4 32
B2_1267:		lda $9296, y	; b9 96 92
B2_126a:		tay				; a8 
B2_126b:		lda $929e, y	; b9 9e 92
B2_126e:		cmp #$fe		; c9 fe
B2_1270:		beq B2_1295 ; f0 23

B2_1272:		lda PPUSTATUS.w		; ad 02 20
B2_1275:		lda $929e, y	; b9 9e 92
B2_1278:		ora $00			; 05 00
B2_127a:		sta PPUADDR.w		; 8d 06 20
B2_127d:		iny				; c8 
B2_127e:		lda $929e, y	; b9 9e 92
B2_1281:		sta PPUADDR.w		; 8d 06 20
B2_1284:		iny				; c8 
B2_1285:		lda $929e, y	; b9 9e 92
B2_1288:		tax				; aa 
B2_1289:		lda #$00		; a9 00
B2_128b:		sta PPUDATA.w		; 8d 07 20
B2_128e:		dex				; ca 
B2_128f:		bne B2_128b ; d0 fa

B2_1291:		iny				; c8 
B2_1292:		jmp $926b		; 4c 6b 92


B2_1295:		rts				; 60 


B2_1296:		.db $00				; 00
B2_1297:		.db $00				; 00
B2_1298:	.db $13
B2_1299:		.db $00				; 00
B2_129a:		.db $00				; 00
B2_129b:		.db $00				; 00
B2_129c:		.db $00				; 00
B2_129d:		bit $4202		; 2c 02 42
B2_12a0:		asl $02			; 06 02
B2_12a2:	.db $43
B2_12a3:		asl $02			; 06 02
B2_12a5:	.db $9c
B2_12a6:	.db $04
B2_12a7:	.db $02
B2_12a8:		sta $0204, x	; 9d 04 02
B2_12ab:	.db $9e
B2_12ac:	.db $04
B2_12ad:	.db $02
B2_12ae:	.db $9f
B2_12af:	.db $04
B2_12b0:		inc $8402, x	; fe 02 84
B2_12b3:	.db $02
B2_12b4:	.db $02
B2_12b5:		sta $02			; 85 02
B2_12b7:	.db $02
B2_12b8:		lsr $0204		; 4e 04 02
B2_12bb:	.db $4f
B2_12bc:	.db $04
B2_12bd:	.db $02
B2_12be:	.db $9c
B2_12bf:	.db $02
B2_12c0:	.db $02
B2_12c1:		sta $0202, x	; 9d 02 02
B2_12c4:	.db $9e
B2_12c5:	.db $02
B2_12c6:	.db $02
B2_12c7:	.db $9f
B2_12c8:	.db $02
B2_12c9:		inc $8002, x	; fe 02 80
B2_12cc:	.db $04
B2_12cd:	.db $02
B2_12ce:		sta ($04, x)	; 81 04
B2_12d0:	.db $02
B2_12d1:	.db $c2
B2_12d2:	.db $02
B2_12d3:	.db $02
B2_12d4:	.db $c3
B2_12d5:	.db $02
B2_12d6:	.db $02
B2_12d7:		lsr $fe06, x	; 5e 06 fe
B2_12da:		ldy $07f3		; ac f3 07
B2_12dd:		lda $9415, y	; b9 15 94
B2_12e0:		sta $06			; 85 06
B2_12e2:		lda $07f3		; ad f3 07
B2_12e5:		asl a			; 0a
B2_12e6:		tay				; a8 
B2_12e7:		lda $9423, y	; b9 23 94
B2_12ea:		sta $10			; 85 10
B2_12ec:		lda $9424, y	; b9 24 94
B2_12ef:		sta $11			; 85 11
B2_12f1:		ldy $07f3		; ac f3 07
B2_12f4:		lda $941c, y	; b9 1c 94
B2_12f7:		sta $0a			; 85 0a
B2_12f9:		ldy #$00		; a0 00
B2_12fb:		ldx $1d			; a6 1d
B2_12fd:		lda $0a			; a5 0a
B2_12ff:		and #$0f		; 29 0f
B2_1301:		lsr a			; 4a
B2_1302:		sta $09			; 85 09
B2_1304:		lda $0a			; a5 0a
B2_1306:		and #$e0		; 29 e0
B2_1308:		lsr a			; 4a
B2_1309:		lsr a			; 4a
B2_130a:		ora $09			; 05 09
B2_130c:		clc				; 18 
B2_130d:		adc #$c0		; 69 c0
B2_130f:		sta $09			; 85 09
B2_1311:		lda $17			; a5 17
B2_1313:		ora #$03		; 09 03
B2_1315:		sta $08			; 85 08
B2_1317:		lda #$0a		; a9 0a
B2_1319:		jsr $8a21		; 20 21 8a
B2_131c:		lda $09			; a5 09
B2_131e:		jsr $8a21		; 20 21 8a
B2_1321:		lda $08			; a5 08
B2_1323:		jsr $8a21		; 20 21 8a
B2_1326:		lda $06			; a5 06
B2_1328:		jsr $8a21		; 20 21 8a
B2_132b:		stx $15			; 86 15
B2_132d:		lda $0a			; a5 0a
B2_132f:		sta $0b			; 85 0b
B2_1331:		lda ($10), y	; b1 10
B2_1333:		cmp #$fe		; c9 fe
B2_1335:		bne B2_133a ; d0 03

B2_1337:		jmp $93d3		; 4c d3 93


B2_133a:		cmp #$ff		; c9 ff
B2_133c:		beq B2_137d ; f0 3f

B2_133e:		sta $12			; 85 12
B2_1340:		iny				; c8 
B2_1341:		lda ($10), y	; b1 10
B2_1343:		sta $07			; 85 07
B2_1345:		lda $0b			; a5 0b
B2_1347:		and #$01		; 29 01
B2_1349:		beq B2_1351 ; f0 06

B2_134b:		lda #$f3		; a9 f3
B2_134d:		sta $14			; 85 14
B2_134f:		bne B2_135d ; d0 0c

B2_1351:		jsr $93d6		; 20 d6 93
B2_1354:		lda $16			; a5 16
B2_1356:		sta $0300, x	; 9d 00 03
B2_1359:		lda #$fc		; a9 fc
B2_135b:		sta $14			; 85 14
B2_135d:		lda $12			; a5 12
B2_135f:		beq B2_1364 ; f0 03

B2_1361:		jmp $936c		; 4c 6c 93


B2_1364:		lda $0300, x	; bd 00 03
B2_1367:		and $14			; 25 14
B2_1369:		sta $0300, x	; 9d 00 03
B2_136c:		lda $0b			; a5 0b
B2_136e:		and #$01		; 29 01
B2_1370:		beq B2_1373 ; f0 01

B2_1372:		inx				; e8 
B2_1373:		inc $0b			; e6 0b
B2_1375:		dec $07			; c6 07
B2_1377:		bne B2_1345 ; d0 cc

B2_1379:		iny				; c8 
B2_137a:		jmp $9331		; 4c 31 93


B2_137d:		iny				; c8 
B2_137e:		lda $0a			; a5 0a
B2_1380:		clc				; 18 
B2_1381:		adc #$10		; 69 10
B2_1383:		sta $0a			; 85 0a
B2_1385:		ldx $15			; a6 15
B2_1387:		lda ($10), y	; b1 10
B2_1389:		cmp #$fe		; c9 fe
B2_138b:		beq B2_13d3 ; f0 46

B2_138d:		cmp #$ff		; c9 ff
B2_138f:		beq B2_13c8 ; f0 37

B2_1391:		sta $12			; 85 12
B2_1393:		iny				; c8 
B2_1394:		lda ($10), y	; b1 10
B2_1396:		sta $07			; 85 07
B2_1398:		lda $0b			; a5 0b
B2_139a:		and #$01		; 29 01
B2_139c:		beq B2_13a4 ; f0 06

B2_139e:		lda #$3f		; a9 3f
B2_13a0:		sta $14			; 85 14
B2_13a2:		bne B2_13a8 ; d0 04

B2_13a4:		lda #$cf		; a9 cf
B2_13a6:		sta $14			; 85 14
B2_13a8:		lda $12			; a5 12
B2_13aa:		beq B2_13af ; f0 03

B2_13ac:		jmp $93b7		; 4c b7 93


B2_13af:		lda $0300, x	; bd 00 03
B2_13b2:		and $14			; 25 14
B2_13b4:		sta $0300, x	; 9d 00 03
B2_13b7:		lda $0b			; a5 0b
B2_13b9:		and #$01		; 29 01
B2_13bb:		beq B2_13be ; f0 01

B2_13bd:		inx				; e8 
B2_13be:		inc $0b			; e6 0b
B2_13c0:		dec $07			; c6 07
B2_13c2:		bne B2_1398 ; d0 d4

B2_13c4:		iny				; c8 
B2_13c5:		jmp $9387		; 4c 87 93


B2_13c8:		iny				; c8 
B2_13c9:		lda $0a			; a5 0a
B2_13cb:		clc				; 18 
B2_13cc:		adc #$10		; 69 10
B2_13ce:		sta $0a			; 85 0a
B2_13d0:		jmp $92fd		; 4c fd 92


B2_13d3:		stx $1d			; 86 1d
B2_13d5:		rts				; 60 


B2_13d6:		sty $0e			; 84 0e
B2_13d8:		lda $10			; a5 10
B2_13da:		pha				; 48 
B2_13db:		lda $11			; a5 11
B2_13dd:		pha				; 48 
B2_13de:		jsr $8f3c		; 20 3c 8f
B2_13e1:		pla				; 68 
B2_13e2:		sta $11			; 85 11
B2_13e4:		pla				; 68 
B2_13e5:		sta $10			; 85 10
B2_13e7:		lda $0b			; a5 0b
B2_13e9:		sec				; 38 
B2_13ea:		sbc #$20		; e9 20
B2_13ec:		sta $0c			; 85 0c
B2_13ee:		and #$e0		; 29 e0
B2_13f0:		lsr a			; 4a
B2_13f1:		lsr a			; 4a
B2_13f2:		sta $0f			; 85 0f
B2_13f4:		lda $0c			; a5 0c
B2_13f6:		and #$0f		; 29 0f
B2_13f8:		lsr a			; 4a
B2_13f9:		ora $0f			; 05 0f
B2_13fb:		sta $02			; 85 02
B2_13fd:		inc $02			; e6 02
B2_13ff:		jsr $eb9c		; 20 9c eb
B2_1402:		lda $02			; a5 02
B2_1404:		sta $00			; 85 00
B2_1406:		lda $32			; a5 32
B2_1408:		asl a			; 0a
B2_1409:		tay				; a8 
B2_140a:		jsr $eb76		; 20 76 eb
B2_140d:		jsr $eb90		; 20 90 eb
B2_1410:		lda $16			; a5 16
B2_1412:		ldy $0e			; a4 0e
B2_1414:		rts				; 60 


B2_1415:	.db $02
B2_1416:	.db $02
B2_1417:	.db $04
B2_1418:		asl $06			; 06 06
B2_141a:		asl $06			; 06 06
B2_141c:		lsr $26			; 46 26
B2_141e:		bit $22			; 24 22
B2_1420:	.db $22
B2_1421:	.db $22
B2_1422:	.db $22
B2_1423:		and ($94), y	; 31 94
B2_1425:	.db $34
B2_1426:		sty $40, x		; 94 40
B2_1428:		sty $50, x		; 94 50
B2_142a:		sty $6b, x		; 94 6b
B2_142c:		sty $86, x		; 94 86
B2_142e:		sty $a9, x		; 94 a9
B2_1430:		sty $01, x		; 94 01
B2_1432:	.db $04
B2_1433:		inc $0401, x	; fe 01 04
B2_1436:	.db $ff
B2_1437:		ora ($04, x)	; 01 04
B2_1439:	.db $ff
B2_143a:		ora ($04, x)	; 01 04
B2_143c:	.db $ff
B2_143d:		ora ($04, x)	; 01 04
B2_143f:		inc $0801, x	; fe 01 08
B2_1442:	.db $ff
B2_1443:		ora ($08, x)	; 01 08
B2_1445:	.db $ff
B2_1446:		ora ($03, x)	; 01 03
B2_1448:		.db $00				; 00
B2_1449:	.db $02
B2_144a:		ora ($03, x)	; 01 03
B2_144c:	.db $ff
B2_144d:		ora ($08, x)	; 01 08
B2_144f:		inc $0c01, x	; fe 01 0c
B2_1452:	.db $ff
B2_1453:		ora ($04, x)	; 01 04
B2_1455:		.db $00				; 00
B2_1456:	.db $04
B2_1457:		ora ($04, x)	; 01 04
B2_1459:	.db $ff
B2_145a:		ora ($04, x)	; 01 04
B2_145c:		.db $00				; 00
B2_145d:	.db $04
B2_145e:		ora ($04, x)	; 01 04
B2_1460:	.db $ff
B2_1461:		ora ($04, x)	; 01 04
B2_1463:		.db $00				; 00
B2_1464:	.db $04
B2_1465:		ora ($04, x)	; 01 04
B2_1467:	.db $ff
B2_1468:		ora ($0c, x)	; 01 0c
B2_146a:		inc $0c01, x	; fe 01 0c
B2_146d:	.db $ff
B2_146e:		ora ($03, x)	; 01 03
B2_1470:		.db $00				; 00
B2_1471:		asl $01			; 06 01
B2_1473:	.db $03
B2_1474:	.db $ff
B2_1475:		ora ($03, x)	; 01 03
B2_1477:		.db $00				; 00
B2_1478:		asl $01			; 06 01
B2_147a:	.db $03
B2_147b:	.db $ff
B2_147c:		ora ($03, x)	; 01 03
B2_147e:		.db $00				; 00
B2_147f:		asl $01			; 06 01
B2_1481:	.db $03
B2_1482:	.db $ff
B2_1483:		ora ($0c, x)	; 01 0c
B2_1485:		inc $0101, x	; fe 01 01
B2_1488:		.db $00				; 00
B2_1489:		asl a			; 0a
B2_148a:		ora ($01, x)	; 01 01
B2_148c:	.db $ff
B2_148d:		ora ($01, x)	; 01 01
B2_148f:		.db $00				; 00
B2_1490:		asl a			; 0a
B2_1491:		ora ($01, x)	; 01 01
B2_1493:	.db $ff
B2_1494:		ora ($01, x)	; 01 01
B2_1496:		.db $00				; 00
B2_1497:		asl a			; 0a
B2_1498:		ora ($01, x)	; 01 01
B2_149a:	.db $ff
B2_149b:		ora ($01, x)	; 01 01
B2_149d:		.db $00				; 00
B2_149e:		asl a			; 0a
B2_149f:		ora ($01, x)	; 01 01
B2_14a1:	.db $ff
B2_14a2:		ora ($01, x)	; 01 01
B2_14a4:		.db $00				; 00
B2_14a5:		asl a			; 0a
B2_14a6:		ora ($01, x)	; 01 01
B2_14a8:		inc $0c00, x	; fe 00 0c
B2_14ab:	.db $ff
B2_14ac:		.db $00				; 00
B2_14ad:	.db $0c
B2_14ae:	.db $ff
B2_14af:		.db $00				; 00
B2_14b0:	.db $0c
B2_14b1:	.db $ff
B2_14b2:		.db $00				; 00
B2_14b3:	.db $0c
B2_14b4:	.db $ff
B2_14b5:		.db $00				; 00
B2_14b6:	.db $0c
B2_14b7:		inc $ecad, x	; fe ad ec
B2_14ba:	.db $07
B2_14bb:		bne B2_14be ; d0 01

B2_14bd:		rts				; 60 


B2_14be:		lda #$00		; a9 00
B2_14c0:		sta $07			; 85 07
B2_14c2:		ldx #$01		; a2 01
B2_14c4:		lda $054e, x	; bd 4e 05
B2_14c7:		beq B2_14d8 ; f0 0f

B2_14c9:		asl a			; 0a
B2_14ca:		tay				; a8 
B2_14cb:		lda $94e1, y	; b9 e1 94
B2_14ce:		sta $00			; 85 00
B2_14d0:		lda $94e2, y	; b9 e2 94
B2_14d3:		sta $01			; 85 01
B2_14d5:		jsr $94de		; 20 de 94
B2_14d8:		inx				; e8 
B2_14d9:		cpx #$0c		; e0 0c
B2_14db:		bne B2_14c4 ; d0 e7

B2_14dd:		rts				; 60 


B2_14de:	.db $6c $00 $00
B2_14e1:	.db $ef
B2_14e2:	.db $97
B2_14e3:		sbc ($94), y	; f1 94
B2_14e5:		eor #$95		; 49 95
B2_14e7:		ora $7595, x	; 1d 95 75
B2_14ea:		sta $c4, x		; 95 c4
B2_14ec:		sta $9a, x		; 95 9a
B2_14ee:		stx $7b, y		; 96 7b
B2_14f0:	.db $97
B2_14f1:		ldy #$00		; a0 00
B2_14f3:		jsr $95a9		; 20 a9 95
B2_14f6:		rts				; 60 


B2_14f7:	.db $ef
B2_14f8:	.db $97
B2_14f9:	.db $ef
B2_14fa:	.db $97
B2_14fb:	.db $ef
B2_14fc:	.db $97
B2_14fd:	.db $ef
B2_14fe:	.db $97
B2_14ff:	.db $77
B2_1500:		tya				; 98 
B2_1501:		rol $3f9d		; 2e 9d 3f
B2_1504:		txs				; 9a 
B2_1505:	.db $ef
B2_1506:	.db $97
B2_1507:	.db $0b
B2_1508:	.db $9b
B2_1509:		jsr $ed9b		; 20 9b ed
B2_150c:	.db $9b
B2_150d:		jsr $8f9c		; 20 9c 8f
B2_1510:	.db $9c
B2_1511:	.db $ef
B2_1512:	.db $97
B2_1513:	.db $ef
B2_1514:	.db $97
B2_1515:		ldx $b99b		; ae 9b b9
B2_1518:	.db $9b
B2_1519:		rol a			; 2a
B2_151a:		txs				; 9a 
B2_151b:		clc				; 18 
B2_151c:	.db $9c
B2_151d:		ldy #$04		; a0 04
B2_151f:		jsr $95a9		; 20 a9 95
B2_1522:		rts				; 60 


B2_1523:	.db $ef
B2_1524:	.db $97
B2_1525:		ora ($98, x)	; 01 98
B2_1527:		nop				; ea 
B2_1528:	.db $97
B2_1529:	.db $ef
B2_152a:	.db $97
B2_152b:	.db $77
B2_152c:		tya				; 98 
B2_152d:		rol $3f9d		; 2e 9d 3f
B2_1530:		txs				; 9a 
B2_1531:	.db $da
B2_1532:	.db $9b
B2_1533:	.db $0b
B2_1534:	.db $9b
B2_1535:		jsr $ed9b		; 20 9b ed
B2_1538:	.db $9b
B2_1539:		jsr $8f9c		; 20 9c 8f
B2_153c:	.db $9c
B2_153d:	.db $ef
B2_153e:	.db $97
B2_153f:	.db $ef
B2_1540:	.db $97
B2_1541:	.db $ef
B2_1542:	.db $97
B2_1543:	.db $ef
B2_1544:	.db $97
B2_1545:		rol a			; 2a
B2_1546:		txs				; 9a 
B2_1547:		clc				; 18 
B2_1548:	.db $9c
B2_1549:		ldy #$02		; a0 02
B2_154b:		jsr $95a9		; 20 a9 95
B2_154e:		rts				; 60 


B2_154f:	.db $ef
B2_1550:	.db $97
B2_1551:	.db $ef
B2_1552:	.db $97
B2_1553:	.db $c2
B2_1554:		tya				; 98 
B2_1555:	.db $ef
B2_1556:	.db $97
B2_1557:	.db $77
B2_1558:		tya				; 98 
B2_1559:		rol $3f9d		; 2e 9d 3f
B2_155c:		txs				; 9a 
B2_155d:	.db $ef
B2_155e:	.db $97
B2_155f:	.db $0b
B2_1560:	.db $9b
B2_1561:		jsr $ed9b		; 20 9b ed
B2_1564:	.db $9b
B2_1565:		jsr $8f9c		; 20 9c 8f
B2_1568:	.db $9c
B2_1569:		cpy $9b			; c4 9b
B2_156b:	.db $ef
B2_156c:	.db $97
B2_156d:	.db $ef
B2_156e:	.db $97
B2_156f:	.db $ef
B2_1570:	.db $97
B2_1571:		rol a			; 2a
B2_1572:		txs				; 9a 
B2_1573:		clc				; 18 
B2_1574:	.db $9c
B2_1575:		ldy #$06		; a0 06
B2_1577:		jsr $95a9		; 20 a9 95
B2_157a:		rts				; 60 


B2_157b:	.db $ef
B2_157c:	.db $97
B2_157d:	.db $ef
B2_157e:	.db $97
B2_157f:	.db $ef
B2_1580:	.db $97
B2_1581:		cmp $7799		; cd 99 77
B2_1584:		tya				; 98 
B2_1585:		rol $3f9d		; 2e 9d 3f
B2_1588:		txs				; 9a 
B2_1589:	.db $ef
B2_158a:	.db $97
B2_158b:	.db $0b
B2_158c:	.db $9b
B2_158d:		jsr $ed9b		; 20 9b ed
B2_1590:	.db $9b
B2_1591:		jsr $8f9c		; 20 9c 8f
B2_1594:	.db $9c
B2_1595:	.db $ef
B2_1596:	.db $97
B2_1597:	.db $cf
B2_1598:	.db $9b
B2_1599:	.db $ef
B2_159a:	.db $97
B2_159b:	.db $ef
B2_159c:	.db $97
B2_159d:		rol a			; 2a
B2_159e:		txs				; 9a 
B2_159f:		clc				; 18 
B2_15a0:	.db $9c
B2_15a1:	.db $f7
B2_15a2:		sty $4f, x		; 94 4f
B2_15a4:		sta $23, x		; 95 23
B2_15a6:		sta $7b, x		; 95 7b
B2_15a8:		sta $b9, x		; 95 b9
B2_15aa:		lda ($95, x)	; a1 95
B2_15ac:		sta $00			; 85 00
B2_15ae:		lda $95a2, y	; b9 a2 95
B2_15b1:		sta $01			; 85 01
B2_15b3:		lda $07ef		; ad ef 07
B2_15b6:		asl a			; 0a
B2_15b7:		tay				; a8 
B2_15b8:		lda ($00), y	; b1 00
B2_15ba:		sta $02			; 85 02
B2_15bc:		iny				; c8 
B2_15bd:		lda ($00), y	; b1 00
B2_15bf:		sta $03			; 85 03
B2_15c1:	.db $6c $02 $00
B2_15c4:		ldy $061d, x	; bc 1d 06
B2_15c7:		bne B2_1607 ; d0 3e

B2_15c9:		lda #$88		; a9 88
B2_15cb:		sta $0470, x	; 9d 70 04
B2_15ce:		lda #$00		; a9 00
B2_15d0:		sta $041c, x	; 9d 1c 04
B2_15d3:		lda $0606, x	; bd 06 06
B2_15d6:		clc				; 18 
B2_15d7:		adc $0633, x	; 7d 33 06
B2_15da:		and #$0f		; 29 0f
B2_15dc:		tay				; a8 
B2_15dd:		lda $968a, y	; b9 8a 96
B2_15e0:		sta $0438, x	; 9d 38 04
B2_15e3:		inc $061d, x	; fe 1d 06
B2_15e6:		lda #$00		; a9 00
B2_15e8:		sta $04f2, x	; 9d f2 04
B2_15eb:		sta $0509, x	; 9d 09 05
B2_15ee:		sta $0520, x	; 9d 20 05
B2_15f1:		sta $0537, x	; 9d 37 05
B2_15f4:		lda #$0c		; a9 0c
B2_15f6:		ldy #$09		; a0 09
B2_15f8:		jsr $9dfd		; 20 fd 9d
B2_15fb:		jsr $9e0d		; 20 0d 9e
B2_15fe:		lda $0606, x	; bd 06 06
B2_1601:		asl a			; 0a
B2_1602:		asl a			; 0a
B2_1603:		sta $0645, x	; 9d 45 06
B2_1606:		rts				; 60 


B2_1607:		dey				; 88 
B2_1608:		bne B2_161b ; d0 11

B2_160a:		dec $0645, x	; de 45 06
B2_160d:		lda $0645, x	; bd 45 06
B2_1610:		bne B2_161a ; d0 08

B2_1612:		inc $061d, x	; fe 1d 06
B2_1615:		lda #$40		; a9 40
B2_1617:		sta $0470, x	; 9d 70 04
B2_161a:		rts				; 60 


B2_161b:		dey				; 88 
B2_161c:		bne B2_1642 ; d0 24

B2_161e:		lda $0537, x	; bd 37 05
B2_1621:		clc				; 18 
B2_1622:		adc #$20		; 69 20
B2_1624:		sta $0537, x	; 9d 37 05
B2_1627:		lda $0520, x	; bd 20 05
B2_162a:		adc #$00		; 69 00
B2_162c:		sta $0520, x	; 9d 20 05
B2_162f:		jsr $9dd6		; 20 d6 9d
B2_1632:		lda $041c, x	; bd 1c 04
B2_1635:		cmp #$b8		; c9 b8
B2_1637:		bcc B2_1641 ; 90 08

B2_1639:		lda #$11		; a9 11
B2_163b:		jsr playSound		; 20 5f e2
B2_163e:		inc $061d, x	; fe 1d 06
B2_1641:		rts				; 60 


B2_1642:		dey				; 88 
B2_1643:		bne B2_1653 ; d0 0e

B2_1645:		lda #$0e		; a9 0e
B2_1647:		ldy #$0a		; a0 0a
B2_1649:		jsr $9dfd		; 20 fd 9d
B2_164c:		jsr $9e0d		; 20 0d 9e
B2_164f:		inc $061d, x	; fe 1d 06
B2_1652:		rts				; 60 


B2_1653:		dey				; 88 
B2_1654:		bne B2_165f ; d0 09

B2_1656:		jsr $9e0d		; 20 0d 9e
B2_1659:		bcc B2_165e ; 90 03

B2_165b:		inc $061d, x	; fe 1d 06
B2_165e:		rts				; 60 


B2_165f:		lda #$00		; a9 00
B2_1661:		sta $061d, x	; 9d 1d 06
B2_1664:		inc $0633, x	; fe 33 06
B2_1667:		lda $0633, x	; bd 33 06
B2_166a:		cmp #$02		; c9 02
B2_166c:		beq B2_166f ; f0 01

B2_166e:		rts				; 60 


B2_166f:		lda #$00		; a9 00
B2_1671:		sta $054e, x	; 9d 4e 05
B2_1674:		sta $0606, x	; 9d 06 06
B2_1677:		sta $061d, x	; 9d 1d 06
B2_167a:		sta $0633, x	; 9d 33 06
B2_167d:		sta $0645, x	; 9d 45 06
B2_1680:		sta $0400, x	; 9d 00 04
B2_1683:		sta $048c, x	; 9d 8c 04
B2_1686:		sta $05aa, x	; 9d aa 05
B2_1689:		rts				; 60 


B2_168a:		;removed
	.db $10 $30

B2_168c:		jsr $6050		; 20 50 60
B2_168f:		rti				; 40 


B2_1690:		;removed
	.db $30 $40

B2_1692:	.db $80
B2_1693:		;removed
	.db $50 $70

B2_1695:		ldy #$90		; a0 90
B2_1697:		;removed
	.db $b0 $60

B2_1699:		cpy #$bc		; c0 bc
B2_169b:		ora $d006, x	; 1d 06 d0
B2_169e:		and $a9, x		; 35 a9
B2_16a0:	.db $3f
B2_16a1:		jsr playSound		; 20 5f e2
B2_16a4:		lda #$0c		; a9 0c
B2_16a6:		sta $07ef		; 8d ef 07
B2_16a9:		lda #$7b		; a9 7b
B2_16ab:		sta $49			; 85 49
B2_16ad:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_16b0:		lda #$00		; a9 00
B2_16b2:		sta $0633, x	; 9d 33 06
B2_16b5:		sta $0645, x	; 9d 45 06
B2_16b8:		sta $05d8, x	; 9d d8 05
B2_16bb:		lda #$80		; a9 80
B2_16bd:		sta $0470, x	; 9d 70 04
B2_16c0:		lda #$78		; a9 78
B2_16c2:		sta $0438, x	; 9d 38 04
B2_16c5:		lda #$90		; a9 90
B2_16c7:		sta $041c, x	; 9d 1c 04
B2_16ca:		inc $061d, x	; fe 1d 06
B2_16cd:		lda #$0a		; a9 0a
B2_16cf:		ldy #$0c		; a0 0c
B2_16d1:		jmp $9dfd		; 4c fd 9d


B2_16d4:		dey				; 88 
B2_16d5:		bne B2_1732 ; d0 5b

B2_16d7:		lda $05d8, x	; bd d8 05
B2_16da:		bne B2_172c ; d0 50

B2_16dc:		lda $0633, x	; bd 33 06
B2_16df:		asl a			; 0a
B2_16e0:		tay				; a8 
B2_16e1:		lda $976c, y	; b9 6c 97
B2_16e4:		sta $05d8, x	; 9d d8 05
B2_16e7:		inc $0633, x	; fe 33 06
B2_16ea:		lda $976b, y	; b9 6b 97
B2_16ed:		beq B2_1725 ; f0 36

B2_16ef:		cmp #$01		; c9 01
B2_16f1:		beq B2_171e ; f0 2b

B2_16f3:		inc $061d, x	; fe 1d 06
B2_16f6:		lda #$04		; a9 04
B2_16f8:		sta $05d8, x	; 9d d8 05
B2_16fb:		lda #$07		; a9 07
B2_16fd:		sta $01			; 85 01
B2_16ff:		lda #$07		; a9 07
B2_1701:		jsr $9d02		; 20 02 9d
B2_1704:		bcc B2_171d ; 90 17

B2_1706:		lda #$00		; a9 00
B2_1708:		sta $061d, y	; 99 1d 06
B2_170b:		lda $01			; a5 01
B2_170d:		sta $0606, y	; 99 06 06
B2_1710:		asl a			; 0a
B2_1711:		asl a			; 0a
B2_1712:		clc				; 18 
B2_1713:		adc $041c, y	; 79 1c 04
B2_1716:		sta $041c, y	; 99 1c 04
B2_1719:		dec $01			; c6 01
B2_171b:		bpl B2_16ff ; 10 e2

B2_171d:		rts				; 60 


B2_171e:		lda #$00		; a9 00
B2_1720:		sta $0470, x	; 9d 70 04
B2_1723:		beq B2_172f ; f0 0a

B2_1725:		lda #$80		; a9 80
B2_1727:		sta $0470, x	; 9d 70 04
B2_172a:		bne B2_172f ; d0 03

B2_172c:		dec $05d8, x	; de d8 05
B2_172f:		jmp $9e0d		; 4c 0d 9e


B2_1732:		dey				; 88 
B2_1733:		bne B2_1755 ; d0 20

B2_1735:		lda $05d8, x	; bd d8 05
B2_1738:		beq B2_1745 ; f0 0b

B2_173a:		dec $05d8, x	; de d8 05
B2_173d:		lda #$00		; a9 00
B2_173f:		sta $0470, x	; 9d 70 04
B2_1742:		jmp $9e0d		; 4c 0d 9e


B2_1745:		lda #$80		; a9 80
B2_1747:		sta $0470, x	; 9d 70 04
B2_174a:		inc $061d, x	; fe 1d 06
B2_174d:		lda #$17		; a9 17
B2_174f:		sta $48			; 85 48
B2_1751:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_1754:		rts				; 60 


B2_1755:		inc $07ed		; ee ed 07
B2_1758:		lda #$00		; a9 00
B2_175a:		sta $07f0		; 8d f0 07
B2_175d:		jsr $966f		; 20 6f 96
B2_1760:		lda #$02		; a9 02
B2_1762:		sta $054e, x	; 9d 4e 05
B2_1765:		lda #$80		; a9 80
B2_1767:		sta $0470, x	; 9d 70 04
B2_176a:		rts				; 60 


B2_176b:		.db $00				; 00
B2_176c:	.db $04
B2_176d:		ora ($02, x)	; 01 02
B2_176f:		.db $00				; 00
B2_1770:		ora ($01, x)	; 01 01
B2_1772:		ora ($00, x)	; 01 00
B2_1774:		ora ($01, x)	; 01 01
B2_1776:		ora ($00, x)	; 01 00
B2_1778:		php				; 08 
B2_1779:	.db $ff
B2_177a:		.db $00				; 00
B2_177b:		ldy $061d, x	; bc 1d 06
B2_177e:		bne B2_17ab ; d0 2b

B2_1780:		lda #$18		; a9 18
B2_1782:		sta $0400, x	; 9d 00 04
B2_1785:		lda #$0e		; a9 0e
B2_1787:		sta $048c, x	; 9d 8c 04
B2_178a:		lda $0606, x	; bd 06 06
B2_178d:		asl a			; 0a
B2_178e:		tay				; a8 
B2_178f:		lda $97ca, y	; b9 ca 97
B2_1792:		sta $0537, x	; 9d 37 05
B2_1795:		lda $97cb, y	; b9 cb 97
B2_1798:		sta $0520, x	; 9d 20 05
B2_179b:		lda $97da, y	; b9 da 97
B2_179e:		sta $0509, x	; 9d 09 05
B2_17a1:		lda $97db, y	; b9 db 97
B2_17a4:		sta $04f2, x	; 9d f2 04
B2_17a7:		inc $061d, x	; fe 1d 06
B2_17aa:		rts				; 60 


B2_17ab:		lda $0537, x	; bd 37 05
B2_17ae:		clc				; 18 
B2_17af:		adc #$20		; 69 20
B2_17b1:		sta $0537, x	; 9d 37 05
B2_17b4:		lda $0520, x	; bd 20 05
B2_17b7:		adc #$00		; 69 00
B2_17b9:		sta $0520, x	; 9d 20 05
B2_17bc:		jsr $9dd6		; 20 d6 9d
B2_17bf:		lda $041c, x	; bd 1c 04
B2_17c2:		cmp #$f8		; c9 f8
B2_17c4:		bcc B2_17c9 ; 90 03

B2_17c6:		jmp $966f		; 4c 6f 96


B2_17c9:		rts				; 60 


B2_17ca:		.db $00				; 00
B2_17cb:	.db $ff
B2_17cc:		cpy #$fe		; c0 fe
B2_17ce:		cpx #$fe		; e0 fe
B2_17d0:		bcs B2_17d0 ; b0 fe

B2_17d2:		.db $00				; 00
B2_17d3:	.db $ff
B2_17d4:		cpy #$fe		; c0 fe
B2_17d6:		cpx #$fe		; e0 fe
B2_17d8:		bcs B2_17d8 ; b0 fe

B2_17da:		rti				; 40 


B2_17db:		.db $00				; 00
B2_17dc:	.db $80
B2_17dd:	.db $ff
B2_17de:		rts				; 60 


B2_17df:		.db $00				; 00
B2_17e0:		rts				; 60 


B2_17e1:	.db $ff
B2_17e2:		;removed
	.db $b0 $ff

B2_17e4:		bcc B2_17e6 ; 90 00

B2_17e6:		;removed
	.db $90 $ff

B2_17e8:		bcs B2_17ea ; b0 00

B2_17ea:		lda #$01		; a9 01
B2_17ec:		sta $0454, x	; 9d 54 04
B2_17ef:		lda #$00		; a9 00
B2_17f1:		sta $0537, x	; 9d 37 05
B2_17f4:		sta $0520, x	; 9d 20 05
B2_17f7:		sta $04f2, x	; 9d f2 04
B2_17fa:		sta $04f2, x	; 9d f2 04
B2_17fd:		sta $061d, x	; 9d 1d 06
B2_1800:		rts				; 60 


B2_1801:		ldy $07f0		; ac f0 07
B2_1804:		bne B2_1827 ; d0 21

B2_1806:		jsr $9a25		; 20 25 9a
B2_1809:		lda #$2a		; a9 2a
B2_180b:		sta $47			; 85 47
B2_180d:		lda #$2b		; a9 2b
B2_180f:		sta $48			; 85 48
B2_1811:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_1814:		inc $07f0		; ee f0 07
B2_1817:		lda #$a0		; a9 a0
B2_1819:		sta $061d, x	; 9d 1d 06
B2_181c:		lda #$0a		; a9 0a
B2_181e:		ldy #$00		; a0 00
B2_1820:		jsr $9dfd		; 20 fd 9d
B2_1823:		jsr $9e0d		; 20 0d 9e
B2_1826:		rts				; 60 


B2_1827:		dey				; 88 
B2_1828:		bne B2_1866 ; d0 3c

B2_182a:		dec $061d, x	; de 1d 06
B2_182d:		lda #$00		; a9 00
B2_182f:		sta $0454, x	; 9d 54 04
B2_1832:		lda $061d, x	; bd 1d 06
B2_1835:		beq B2_1853 ; f0 1c

B2_1837:		lda $061d, x	; bd 1d 06
B2_183a:		cmp #$20		; c9 20
B2_183c:		bcc B2_184b ; 90 0d

B2_183e:		bne B2_1843 ; d0 03

B2_1840:		jsr $9d33		; 20 33 9d
B2_1843:		and #$04		; 29 04
B2_1845:		beq B2_1850 ; f0 09

B2_1847:		lda #$01		; a9 01
B2_1849:		bne B2_184d ; d0 02

B2_184b:		lda #$01		; a9 01
B2_184d:		sta $0454, x	; 9d 54 04
B2_1850:		jmp $9e0d		; 4c 0d 9e


B2_1853:		lda #$01		; a9 01
B2_1855:		sta $0454, x	; 9d 54 04
B2_1858:		inc $07f0		; ee f0 07
B2_185b:		lda #$0a		; a9 0a
B2_185d:		ldy #$0b		; a0 0b
B2_185f:		jsr $9dfd		; 20 fd 9d
B2_1862:		jsr $9e0d		; 20 0d 9e
B2_1865:		rts				; 60 


B2_1866:		inc $07ed		; ee ed 07
B2_1869:		lda #$00		; a9 00
B2_186b:		sta $07ef		; 8d ef 07
B2_186e:		sta $07f0		; 8d f0 07
B2_1871:		lda #$00		; a9 00
B2_1873:		sta $061d, x	; 9d 1d 06
B2_1876:		rts				; 60 


B2_1877:		ldy $32			; a4 32
B2_1879:		lda $98b6, y	; b9 b6 98
B2_187c:		ldy $054e, x	; bc 4e 05
B2_187f:		dey				; 88 
B2_1880:		clc				; 18 
B2_1881:		adc $98be, y	; 79 be 98
B2_1884:		sta $00			; 85 00
B2_1886:		lda #$00		; a9 00
B2_1888:		sta $0509, x	; 9d 09 05
B2_188b:		sta $04f2, x	; 9d f2 04
B2_188e:		lda $0537, x	; bd 37 05
B2_1891:		clc				; 18 
B2_1892:		adc #$20		; 69 20
B2_1894:		sta $0537, x	; 9d 37 05
B2_1897:		lda $0520, x	; bd 20 05
B2_189a:		adc #$00		; 69 00
B2_189c:		sta $0520, x	; 9d 20 05
B2_189f:		jsr $9dd6		; 20 d6 9d
B2_18a2:		lda $041c, x	; bd 1c 04
B2_18a5:		cmp $00			; c5 00
B2_18a7:		bcc B2_18b5 ; 90 0c

B2_18a9:		lda $00			; a5 00
B2_18ab:		sta $041c, x	; 9d 1c 04
B2_18ae:		inc $07			; e6 07
B2_18b0:		lda $07			; a5 07
B2_18b2:		sta $07f0		; 8d f0 07
B2_18b5:		rts				; 60 


B2_18b6:		;removed
	.db $b0 $b0

B2_18b8:		;removed
	.db $b0 $b0

B2_18ba:		;removed
	.db $b0 $b0

B2_18bc:		bcs B2_186e ; b0 b0

B2_18be:		.db $00				; 00
B2_18bf:		.db $00				; 00
B2_18c0:		.db $00				; 00
B2_18c1:		sed				; f8 
B2_18c2:		ldy $061d, x	; bc 1d 06
B2_18c5:		bne B2_18e3 ; d0 1c

B2_18c7:		jsr $9d2f		; 20 2f 9d
B2_18ca:		inc $061d, x	; fe 1d 06
B2_18cd:		lda #$78		; a9 78
B2_18cf:		sta $0438, x	; 9d 38 04
B2_18d2:		lda #$a8		; a9 a8
B2_18d4:		sta $041c, x	; 9d 1c 04
B2_18d7:		lda #$00		; a9 00
B2_18d9:		sta $0470, x	; 9d 70 04
B2_18dc:		lda #$40		; a9 40
B2_18de:		ldy #$0d		; a0 0d
B2_18e0:		jmp $99c5		; 4c c5 99


B2_18e3:		dey				; 88 
B2_18e4:		bne B2_18fe ; d0 18

B2_18e6:		lda $05d8, x	; bd d8 05
B2_18e9:		beq B2_18f1 ; f0 06

B2_18eb:		dec $05d8, x	; de d8 05
B2_18ee:		jmp $9e0d		; 4c 0d 9e


B2_18f1:		inc $061d, x	; fe 1d 06
B2_18f4:		jsr $9a25		; 20 25 9a
B2_18f7:		lda #$40		; a9 40
B2_18f9:		ldy #$0e		; a0 0e
B2_18fb:		jmp $99c5		; 4c c5 99


B2_18fe:		dey				; 88 
B2_18ff:		bne B2_1916 ; d0 15

B2_1901:		lda $05d8, x	; bd d8 05
B2_1904:		beq B2_190c ; f0 06

B2_1906:		dec $05d8, x	; de d8 05
B2_1909:		jmp $9e0d		; 4c 0d 9e


B2_190c:		inc $061d, x	; fe 1d 06
B2_190f:		lda #$40		; a9 40
B2_1911:		ldy #$0f		; a0 0f
B2_1913:		jmp $99c5		; 4c c5 99


B2_1916:		dey				; 88 
B2_1917:		bne B2_1931 ; d0 18

B2_1919:		lda $05d8, x	; bd d8 05
B2_191c:		beq B2_1924 ; f0 06

B2_191e:		dec $05d8, x	; de d8 05
B2_1921:		jmp $9e0d		; 4c 0d 9e


B2_1924:		jsr $9d93		; 20 93 9d
B2_1927:		inc $061d, x	; fe 1d 06
B2_192a:		lda #$10		; a9 10
B2_192c:		ldy #$10		; a0 10
B2_192e:		jmp $99c5		; 4c c5 99


B2_1931:		dey				; 88 
B2_1932:		bne B2_1979 ; d0 45

B2_1934:		lda $05d8, x	; bd d8 05
B2_1937:		beq B2_194e ; f0 15

B2_1939:		dec $05d8, x	; de d8 05
B2_193c:		jsr $9e0d		; 20 0d 9e
B2_193f:		lda #$00		; a9 00
B2_1941:		sta $0520, x	; 9d 20 05
B2_1944:		sta $0537, x	; 9d 37 05
B2_1947:		sta $04f2, x	; 9d f2 04
B2_194a:		sta $0509, x	; 9d 09 05
B2_194d:		rts				; 60 


B2_194e:		lda $0537, x	; bd 37 05
B2_1951:		clc				; 18 
B2_1952:		adc #$10		; 69 10
B2_1954:		sta $0537, x	; 9d 37 05
B2_1957:		lda $0520, x	; bd 20 05
B2_195a:		adc #$00		; 69 00
B2_195c:		sta $0520, x	; 9d 20 05
B2_195f:		jsr $9dd6		; 20 d6 9d
B2_1962:		lda $041c, x	; bd 1c 04
B2_1965:		cmp #$b8		; c9 b8
B2_1967:		bcc B2_1978 ; 90 0f

B2_1969:		lda #$b8		; a9 b8
B2_196b:		sta $041c, x	; 9d 1c 04
B2_196e:		inc $061d, x	; fe 1d 06
B2_1971:		lda #$10		; a9 10
B2_1973:		ldy #$11		; a0 11
B2_1975:		jmp $99c5		; 4c c5 99


B2_1978:		rts				; 60 


B2_1979:		dey				; 88 
B2_197a:		bne B2_1996 ; d0 1a

B2_197c:		lda $05d8, x	; bd d8 05
B2_197f:		beq B2_1987 ; f0 06

B2_1981:		dec $05d8, x	; de d8 05
B2_1984:		jmp $9e0d		; 4c 0d 9e


B2_1987:		lda #$b0		; a9 b0
B2_1989:		sta $041c, x	; 9d 1c 04
B2_198c:		inc $061d, x	; fe 1d 06
B2_198f:		lda #$04		; a9 04
B2_1991:		ldy #$13		; a0 13
B2_1993:		jmp $99c5		; 4c c5 99


B2_1996:		lda $05d8, x	; bd d8 05
B2_1999:		beq B2_19a1 ; f0 06

B2_199b:		dec $05d8, x	; de d8 05
B2_199e:		jmp $9e0d		; 4c 0d 9e


B2_19a1:		inc $07ed		; ee ed 07
B2_19a4:		lda #$00		; a9 00
B2_19a6:		sta $07ef		; 8d ef 07
B2_19a9:		sta $07f0		; 8d f0 07
B2_19ac:		lda #$00		; a9 00
B2_19ae:		sta $061d, x	; 9d 1d 06
B2_19b1:		jsr $993f		; 20 3f 99
B2_19b4:		lda #$2a		; a9 2a
B2_19b6:		sta $47			; 85 47
B2_19b8:		lda #$2b		; a9 2b
B2_19ba:		sta $48			; 85 48
B2_19bc:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_19bf:		lda #$03		; a9 03
B2_19c1:		sta $0606, x	; 9d 06 06
B2_19c4:		rts				; 60 


B2_19c5:		sta $05d8, x	; 9d d8 05
B2_19c8:		lda #$14		; a9 14
B2_19ca:		jmp $9dfd		; 4c fd 9d


B2_19cd:		ldy $07f0		; ac f0 07
B2_19d0:		bne B2_19f0 ; d0 1e

B2_19d2:		jsr $9a25		; 20 25 9a
B2_19d5:		lda #$2a		; a9 2a
B2_19d7:		sta $47			; 85 47
B2_19d9:		lda #$2b		; a9 2b
B2_19db:		sta $48			; 85 48
B2_19dd:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B2_19e0:		inc $07f0		; ee f0 07
B2_19e3:		lda #$0a		; a9 0a
B2_19e5:		ldy #$18		; a0 18
B2_19e7:		jsr $9dfd		; 20 fd 9d
B2_19ea:		lda #$a0		; a9 a0
B2_19ec:		sta $061d, x	; 9d 1d 06
B2_19ef:		rts				; 60 


B2_19f0:		dey				; 88 
B2_19f1:		bne B2_19ff ; d0 0c

B2_19f3:		dec $061d, x	; de 1d 06
B2_19f6:		bne B2_19fc ; d0 04

B2_19f8:		inc $07f0		; ee f0 07
B2_19fb:		rts				; 60 


B2_19fc:		jmp $9e0d		; 4c 0d 9e


B2_19ff:		dey				; 88 
B2_1a00:		bne B2_1a0d ; d0 0b

B2_1a02:		lda #$0a		; a9 0a
B2_1a04:		ldy #$33		; a0 33
B2_1a06:		jsr $9db4		; 20 b4 9d
B2_1a09:		inc $07f0		; ee f0 07
B2_1a0c:		rts				; 60 


B2_1a0d:		dey				; 88 
B2_1a0e:		bne B2_1a19 ; d0 09

B2_1a10:		jsr $9dc4		; 20 c4 9d
B2_1a13:		bcc B2_1a18 ; 90 03

B2_1a15:		inc $07f0		; ee f0 07
B2_1a18:		rts				; 60 


B2_1a19:		inc $07ed		; ee ed 07
B2_1a1c:		lda #$00		; a9 00
B2_1a1e:		sta $07ef		; 8d ef 07
B2_1a21:		sta $07f0		; 8d f0 07
B2_1a24:		rts				; 60 


B2_1a25:		lda #$41		; a9 41
B2_1a27:		jmp playSound		; 4c 5f e2


B2_1a2a:		lda $0606, x	; bd 06 06
B2_1a2d:		sec				; 38 
B2_1a2e:		sbc #$01		; e9 01
B2_1a30:		sta $01			; 85 01
B2_1a32:		ldy $01			; a4 01
B2_1a34:		lda $9a3c, y	; b9 3c 9a
B2_1a37:		sta $00			; 85 00
B2_1a39:		jmp $9a4e		; 4c 4e 9a


B2_1a3c:		;removed
	.db $b0 $50

B2_1a3e:		cpy #$bd		; c0 bd
B2_1a40:		asl $06			; 06 06
B2_1a42:		sec				; 38 
B2_1a43:		sbc #$01		; e9 01
B2_1a45:		sta $01			; 85 01
B2_1a47:		ldy $01			; a4 01
B2_1a49:		lda $9b00, y	; b9 00 9b
B2_1a4c:		sta $00			; 85 00
B2_1a4e:		lda $061d, x	; bd 1d 06
B2_1a51:		bne B2_1a70 ; d0 1d

B2_1a53:		lda $054e, x	; bd 4e 05
B2_1a56:		sec				; 38 
B2_1a57:		sbc #$01		; e9 01
B2_1a59:		tay				; a8 
B2_1a5a:		lda $9b07, y	; b9 07 9b
B2_1a5d:		sta $0454, x	; 9d 54 04
B2_1a60:		lda $9b03, y	; b9 03 9b
B2_1a63:		tay				; a8 
B2_1a64:		lda #$0c		; a9 0c
B2_1a66:		jsr $9dfd		; 20 fd 9d
B2_1a69:		jsr $9e0d		; 20 0d 9e
B2_1a6c:		inc $061d, x	; fe 1d 06
B2_1a6f:		rts				; 60 


B2_1a70:		lda #$01		; a9 01
B2_1a72:		sta $04f2, x	; 9d f2 04
B2_1a75:		lda #$00		; a9 00
B2_1a77:		sta $0509, x	; 9d 09 05
B2_1a7a:		lda #$00		; a9 00
B2_1a7c:		sta $04a8, x	; 9d a8 04
B2_1a7f:		lda $0470, x	; bd 70 04
B2_1a82:		and #$01		; 29 01
B2_1a84:		beq B2_1a91 ; f0 0b

B2_1a86:		lda #$80		; a9 80
B2_1a88:		sta $00			; 85 00
B2_1a8a:		lda $0438, x	; bd 38 04
B2_1a8d:		bmi B2_1ab1 ; 30 22

B2_1a8f:		bpl B2_1a9b ; 10 0a

B2_1a91:		lda $00			; a5 00
B2_1a93:		sec				; 38 
B2_1a94:		sbc $0438, x	; fd 38 04
B2_1a97:		sta $00			; 85 00
B2_1a99:		bcs B2_1ab1 ; b0 16

B2_1a9b:		eor #$ff		; 49 ff
B2_1a9d:		clc				; 18 
B2_1a9e:		adc #$01		; 69 01
B2_1aa0:		sta $00			; 85 00
B2_1aa2:		lda #$ff		; a9 ff
B2_1aa4:		sta $04f2, x	; 9d f2 04
B2_1aa7:		lda #$00		; a9 00
B2_1aa9:		sta $0509, x	; 9d 09 05
B2_1aac:		lda #$01		; a9 01
B2_1aae:		sta $04a8, x	; 9d a8 04
B2_1ab1:		lda $00			; a5 00
B2_1ab3:		cmp #$03		; c9 03
B2_1ab5:		bcs B2_1af2 ; b0 3b

B2_1ab7:		lda #$00		; a9 00
B2_1ab9:		sta $04f2, x	; 9d f2 04
B2_1abc:		sta $0509, x	; 9d 09 05
B2_1abf:		lda #$0e		; a9 0e
B2_1ac1:		ldy $3a			; a4 3a
B2_1ac3:		cpy #$ff		; c0 ff
B2_1ac5:		bne B2_1ac9 ; d0 02

B2_1ac7:		lda #$0a		; a9 0a
B2_1ac9:		sta $00			; 85 00
B2_1acb:		lda #$00		; a9 00
B2_1acd:		sta $04a8, x	; 9d a8 04
B2_1ad0:		lda $0438, x	; bd 38 04
B2_1ad3:		cmp #$80		; c9 80
B2_1ad5:		bcc B2_1adc ; 90 05

B2_1ad7:		lda #$01		; a9 01
B2_1ad9:		sta $04a8, x	; 9d a8 04
B2_1adc:		ldy $0606, x	; bc 06 06
B2_1adf:		lda $9af8, y	; b9 f8 9a
B2_1ae2:		ora $07f3		; 0d f3 07
B2_1ae5:		sta $07f3		; 8d f3 07
B2_1ae8:		cmp $00			; c5 00
B2_1aea:		bne B2_1af2 ; d0 06

B2_1aec:		lda #$00		; a9 00
B2_1aee:		sta $07ef		; 8d ef 07
B2_1af1:		rts				; 60 


B2_1af2:		jsr $9dd6		; 20 d6 9d
B2_1af5:		jmp $9e0d		; 4c 0d 9e


B2_1af8:		ora ($02, x)	; 01 02
B2_1afa:	.db $04
B2_1afb:		php				; 08 
B2_1afc:		;removed
	.db $10 $20

B2_1afe:		rti				; 40 


B2_1aff:	.db $80
B2_1b00:		;removed
	.db $b0 $d0

B2_1b02:		bvc B2_1b05 ; 50 01

B2_1b04:	.db $02
B2_1b05:	.db $03
B2_1b06:	.db $04
B2_1b07:		.db $00				; 00
B2_1b08:	.db $02
B2_1b09:		ora ($03, x)	; 01 03
B2_1b0b:		lda $0606, x	; bd 06 06
B2_1b0e:		sec				; 38 
B2_1b0f:		sbc #$01		; e9 01
B2_1b11:		sta $01			; 85 01
B2_1b13:		ldy $01			; a4 01
B2_1b15:		lda $9b1d, y	; b9 1d 9b
B2_1b18:		sta $00			; 85 00
B2_1b1a:		jmp $9a4e		; 4c 4e 9a


B2_1b1d:		bcc B2_1adf ; 90 c0

B2_1b1f:		ror $ad, x		; 76 ad
B2_1b21:		beq B2_1b2a ; f0 07

B2_1b23:		bne B2_1b59 ; d0 34

B2_1b25:		lda #$4c		; a9 4c
B2_1b27:		jsr playSound		; 20 5f e2
B2_1b2a:		lda $0606, x	; bd 06 06
B2_1b2d:		cmp #$03		; c9 03
B2_1b2f:		bne B2_1b97 ; d0 66

B2_1b31:		inc $07f0		; ee f0 07
B2_1b34:		lda #$00		; a9 00
B2_1b36:		sta $0454, x	; 9d 54 04
B2_1b39:		lda #$80		; a9 80
B2_1b3b:		sta $0438, x	; 9d 38 04
B2_1b3e:		lda $04a8, x	; bd a8 04
B2_1b41:		eor #$01		; 49 01
B2_1b43:		sta $04a8, x	; 9d a8 04
B2_1b46:		lda $054e, x	; bd 4e 05
B2_1b49:		sec				; 38 
B2_1b4a:		sbc #$01		; e9 01
B2_1b4c:		tay				; a8 
B2_1b4d:		lda $9baa, y	; b9 aa 9b
B2_1b50:		tay				; a8 
B2_1b51:		lda #$0c		; a9 0c
B2_1b53:		jsr $9dfd		; 20 fd 9d
B2_1b56:		jmp $9e0d		; 4c 0d 9e


B2_1b59:		lda $0606, x	; bd 06 06
B2_1b5c:		cmp #$03		; c9 03
B2_1b5e:		bne B2_1b97 ; d0 37

B2_1b60:		lda $07f0		; ad f0 07
B2_1b63:		cmp #$80		; c9 80
B2_1b65:		bcc B2_1b91 ; 90 2a

B2_1b67:		lda $054e, x	; bd 4e 05
B2_1b6a:		sec				; 38 
B2_1b6b:		sbc #$01		; e9 01
B2_1b6d:		tay				; a8 
B2_1b6e:		lda $9b07, y	; b9 07 9b
B2_1b71:		sta $0454, x	; 9d 54 04
B2_1b74:		lda #$76		; a9 76
B2_1b76:		sta $0438, x	; 9d 38 04
B2_1b79:		lda #$00		; a9 00
B2_1b7b:		sta $07ef		; 8d ef 07
B2_1b7e:		sta $07f0		; 8d f0 07
B2_1b81:		lda $04a8, x	; bd a8 04
B2_1b84:		eor #$01		; 49 01
B2_1b86:		sta $04a8, x	; 9d a8 04
B2_1b89:		lda #$01		; a9 01
B2_1b8b:		sta $07f3		; 8d f3 07
B2_1b8e:		jmp $9bff		; 4c ff 9b


B2_1b91:		inc $07f0		; ee f0 07
B2_1b94:		jmp $9e0d		; 4c 0d 9e


B2_1b97:		cmp #$02		; c9 02
B2_1b99:		beq B2_1ba9 ; f0 0e

B2_1b9b:		lda $07f0		; ad f0 07
B2_1b9e:		bpl B2_1ba4 ; 10 04

B2_1ba0:		lda #$00		; a9 00
B2_1ba2:		beq B2_1ba6 ; f0 02

B2_1ba4:		lda #$88		; a9 88
B2_1ba6:		sta $0470, x	; 9d 70 04
B2_1ba9:		rts				; 60 


B2_1baa:		.db $00				; 00
B2_1bab:		asl $07			; 06 07
B2_1bad:		php				; 08 
B2_1bae:		lda $07f0		; ad f0 07
B2_1bb1:		bne B2_1bea ; d0 37

B2_1bb3:		ldy #$16		; a0 16
B2_1bb5:		lda #$0c		; a9 0c
B2_1bb7:		bne B2_1be3 ; d0 2a

B2_1bb9:		lda $07f0		; ad f0 07
B2_1bbc:		bne B2_1bea ; d0 2c

B2_1bbe:		ldy #$17		; a0 17
B2_1bc0:		lda #$0c		; a9 0c
B2_1bc2:		bne B2_1be3 ; d0 1f

B2_1bc4:		lda $07f0		; ad f0 07
B2_1bc7:		bne B2_1bea ; d0 21

B2_1bc9:		ldy #$14		; a0 14
B2_1bcb:		lda #$0c		; a9 0c
B2_1bcd:		bne B2_1be3 ; d0 14

B2_1bcf:		lda $07f0		; ad f0 07
B2_1bd2:		bne B2_1bea ; d0 16

B2_1bd4:		ldy #$15		; a0 15
B2_1bd6:		lda #$0c		; a9 0c
B2_1bd8:		bne B2_1be3 ; d0 09

B2_1bda:		lda $07f0		; ad f0 07
B2_1bdd:		bne B2_1bea ; d0 0b

B2_1bdf:		ldy #$05		; a0 05
B2_1be1:		lda #$0c		; a9 0c
B2_1be3:		jsr $9dfd		; 20 fd 9d
B2_1be6:		inc $07f0		; ee f0 07
B2_1be9:		rts				; 60 


B2_1bea:		jmp $9e0d		; 4c 0d 9e


B2_1bed:		lda $07f0		; ad f0 07
B2_1bf0:		beq B2_1c12 ; f0 20

B2_1bf2:		dec $07f0		; ce f0 07
B2_1bf5:		lda #$00		; a9 00
B2_1bf7:		sta $0470, x	; 9d 70 04
B2_1bfa:		lda #$00		; a9 00
B2_1bfc:		sta $061d, x	; 9d 1d 06
B2_1bff:		lda $054e, x	; bd 4e 05
B2_1c02:		sec				; 38 
B2_1c03:		sbc #$01		; e9 01
B2_1c05:		tay				; a8 
B2_1c06:		lda $9b03, y	; b9 03 9b
B2_1c09:		tay				; a8 
B2_1c0a:		lda #$0c		; a9 0c
B2_1c0c:		jsr $9dfd		; 20 fd 9d
B2_1c0f:		jmp $9e0d		; 4c 0d 9e


B2_1c12:		lda #$01		; a9 01
B2_1c14:		sta $07f3		; 8d f3 07
B2_1c17:		rts				; 60 


B2_1c18:		lda $0606, x	; bd 06 06
B2_1c1b:		cmp #$03		; c9 03
B2_1c1d:		beq B2_1c20 ; f0 01

B2_1c1f:		rts				; 60 


B2_1c20:		lda #$01		; a9 01
B2_1c22:		sta $04f2, x	; 9d f2 04
B2_1c25:		lda #$00		; a9 00
B2_1c27:		sta $0509, x	; 9d 09 05
B2_1c2a:		lda $0606, x	; bd 06 06
B2_1c2d:		cmp #$03		; c9 03
B2_1c2f:		bne B2_1c3b ; d0 0a

B2_1c31:		lda #$ff		; a9 ff
B2_1c33:		sta $04f2, x	; 9d f2 04
B2_1c36:		lda #$00		; a9 00
B2_1c38:		sta $0509, x	; 9d 09 05
B2_1c3b:		jsr $9dd6		; 20 d6 9d
B2_1c3e:		lda $0606, x	; bd 06 06
B2_1c41:		cmp #$03		; c9 03
B2_1c43:		bne B2_1c53 ; d0 0e

B2_1c45:		lda $0438, x	; bd 38 04
B2_1c48:		cmp #$04		; c9 04
B2_1c4a:		bcc B2_1c80 ; 90 34

B2_1c4c:		lda #$01		; a9 01
B2_1c4e:		sta $04a8, x	; 9d a8 04
B2_1c51:		bne B2_1c5f ; d0 0c

B2_1c53:		lda $0438, x	; bd 38 04
B2_1c56:		cmp #$fc		; c9 fc
B2_1c58:		bcs B2_1c80 ; b0 26

B2_1c5a:		lda #$00		; a9 00
B2_1c5c:		sta $04a8, x	; 9d a8 04
B2_1c5f:		lda $061d, x	; bd 1d 06
B2_1c62:		bne B2_1c7c ; d0 18

B2_1c64:		inc $061d, x	; fe 1d 06
B2_1c67:		lda $054e, x	; bd 4e 05
B2_1c6a:		sec				; 38 
B2_1c6b:		sbc #$01		; e9 01
B2_1c6d:		tay				; a8 
B2_1c6e:		lda $9b03, y	; b9 03 9b
B2_1c71:		tay				; a8 
B2_1c72:		lda #$0c		; a9 0c
B2_1c74:		jsr $9dfd		; 20 fd 9d
B2_1c77:		lda #$40		; a9 40
B2_1c79:		sta $0470, x	; 9d 70 04
B2_1c7c:		jmp $9e0d		; 4c 0d 9e


B2_1c7f:		rts				; 60 


B2_1c80:		lda #$00		; a9 00
B2_1c82:		sta $054e, x	; 9d 4e 05
B2_1c85:		sta $0400, x	; 9d 00 04
B2_1c88:		sta $048c, x	; 9d 8c 04
B2_1c8b:		sta $05aa, x	; 9d aa 05
B2_1c8e:		rts				; 60 


B2_1c8f:		lda $054e		; ad 4e 05
B2_1c92:		beq B2_1c9c ; f0 08

B2_1c94:		lda $0606, x	; bd 06 06
B2_1c97:		cmp #$02		; c9 02
B2_1c99:		beq B2_1ca4 ; f0 09

B2_1c9b:		rts				; 60 


B2_1c9c:		lda $0606, x	; bd 06 06
B2_1c9f:		cmp #$01		; c9 01
B2_1ca1:		beq B2_1ca4 ; f0 01

B2_1ca3:		rts				; 60 


B2_1ca4:		lda $061d, x	; bd 1d 06
B2_1ca7:		bne B2_1cba ; d0 11

B2_1ca9:		jsr $9cc0		; 20 c0 9c
B2_1cac:		inc $061d, x	; fe 1d 06
B2_1caf:		ldy $054e, x	; bc 4e 05
B2_1cb2:		dey				; 88 
B2_1cb3:		tya				; 98 
B2_1cb4:		asl a			; 0a
B2_1cb5:		ldy #$12		; a0 12
B2_1cb7:		jmp $9dfd		; 4c fd 9d


B2_1cba:		jsr $9cc0		; 20 c0 9c
B2_1cbd:		jmp $9e0d		; 4c 0d 9e


B2_1cc0:		lda #$00		; a9 00
B2_1cc2:		sta $00			; 85 00
B2_1cc4:		lda #$70		; a9 70
B2_1cc6:		sec				; 38 
B2_1cc7:		sbc $0438, x	; fd 38 04
B2_1cca:		bcs B2_1cd3 ; b0 07

B2_1ccc:		eor #$ff		; 49 ff
B2_1cce:		clc				; 18 
B2_1ccf:		adc #$01		; 69 01
B2_1cd1:		inc $00			; e6 00
B2_1cd3:		cmp #$20		; c9 20
B2_1cd5:		bcs B2_1cf4 ; b0 1d

B2_1cd7:		lda #$ff		; a9 ff
B2_1cd9:		sta $04f2, x	; 9d f2 04
B2_1cdc:		lda $00			; a5 00
B2_1cde:		beq B2_1ce5 ; f0 05

B2_1ce0:		lda #$01		; a9 01
B2_1ce2:		sta $04f2, x	; 9d f2 04
B2_1ce5:		lda #$00		; a9 00
B2_1ce7:		sta $0509, x	; 9d 09 05
B2_1cea:		sta $0520, x	; 9d 20 05
B2_1ced:		sta $0537, x	; 9d 37 05
B2_1cf0:		jsr $9dd6		; 20 d6 9d
B2_1cf3:		rts				; 60 


B2_1cf4:		lda $00			; a5 00
B2_1cf6:		sta $04a8, x	; 9d a8 04
B2_1cf9:		lda #$00		; a9 00
B2_1cfb:		sta $061d, x	; 9d 1d 06
B2_1cfe:		sta $07ef		; 8d ef 07
B2_1d01:		rts				; 60 


B2_1d02:		sta $10			; 85 10
B2_1d04:		stx $16			; 86 16
B2_1d06:		jsr $feb9		; 20 b9 fe
B2_1d09:		bne B2_1d2a ; d0 1f

B2_1d0b:		jsr $966f		; 20 6f 96
B2_1d0e:		txa				; 8a 
B2_1d0f:		tay				; a8 
B2_1d10:		ldx $16			; a6 16
B2_1d12:		lda $0438, x	; bd 38 04
B2_1d15:		sta $0438, y	; 99 38 04
B2_1d18:		lda $041c, x	; bd 1c 04
B2_1d1b:		sta $041c, y	; 99 1c 04
B2_1d1e:		lda $10			; a5 10
B2_1d20:		sta $054e, y	; 99 4e 05
B2_1d23:		lda #$00		; a9 00
B2_1d25:		sta $0454, y	; 99 54 04
B2_1d28:		sec				; 38 
B2_1d29:		rts				; 60 


B2_1d2a:		ldx $16			; a6 16
B2_1d2c:		clc				; 18 
B2_1d2d:		rts				; 60 


B2_1d2e:		rts				; 60 


B2_1d2f:		ldy #$02		; a0 02
B2_1d31:		bne B2_1d35 ; d0 02

B2_1d33:		ldy #$00		; a0 00
B2_1d35:		lda $9d69, y	; b9 69 9d
B2_1d38:		sta $00			; 85 00
B2_1d3a:		lda $9d6a, y	; b9 6a 9d
B2_1d3d:		sta $01			; 85 01
B2_1d3f:		stx $16			; 86 16
B2_1d41:		ldx $1d			; a6 1d
B2_1d43:		ldy #$00		; a0 00
B2_1d45:		lda #$01		; a9 01
B2_1d47:		sta $0300, x	; 9d 00 03
B2_1d4a:		inx				; e8 
B2_1d4b:		lda ($00), y	; b1 00
B2_1d4d:		cmp #$ff		; c9 ff
B2_1d4f:		beq B2_1d59 ; f0 08

B2_1d51:		sta $0300, x	; 9d 00 03
B2_1d54:		iny				; c8 
B2_1d55:		inx				; e8 
B2_1d56:		jmp $9d4b		; 4c 4b 9d


B2_1d59:		lda #$ff		; a9 ff
B2_1d5b:		sta $0300, x	; 9d 00 03
B2_1d5e:		inx				; e8 
B2_1d5f:		stx $1d			; 86 1d
B2_1d61:		lda #$04		; a9 04
B2_1d63:		jsr func_1f_0ce9		; 20 e9 ec
B2_1d66:		ldx $16			; a6 16
B2_1d68:		rts				; 60 


B2_1d69:		adc $809d		; 6d 9d 80
B2_1d6c:		sta $3f10, x	; 9d 10 3f
B2_1d6f:	.db $0f
B2_1d70:		php				; 08 
B2_1d71:		rol $37			; 26 37
B2_1d73:	.db $0f
B2_1d74:		php				; 08 
B2_1d75:		ora $35, x		; 15 35
B2_1d77:	.db $0f
B2_1d78:		and ($11, x)	; 21 11
B2_1d7a:		jsr $0f0f		; 20 0f 0f
B2_1d7d:		ora $36, x		; 15 36
B2_1d7f:	.db $ff
B2_1d80:		;removed
	.db $10 $3f

B2_1d82:	.db $0f
B2_1d83:		php				; 08 
B2_1d84:		rol $37			; 26 37
B2_1d86:	.db $0f
B2_1d87:		php				; 08 
B2_1d88:		ora $35, x		; 15 35
B2_1d8a:	.db $0f
B2_1d8b:		and ($11, x)	; 21 11
B2_1d8d:		jsr $0f0f		; 20 0f 0f
B2_1d90:		rol $15, x		; 36 15
B2_1d92:	.db $ff
B2_1d93:		stx $16			; 86 16
B2_1d95:		ldx $1d			; a6 1d
B2_1d97:		ldy #$00		; a0 00
B2_1d99:		lda $9daa, y	; b9 aa 9d
B2_1d9c:		sta $0300, x	; 9d 00 03
B2_1d9f:		iny				; c8 
B2_1da0:		inx				; e8 
B2_1da1:		cpy #$0a		; c0 0a
B2_1da3:		bne B2_1d99 ; d0 f4

B2_1da5:		stx $1d			; 86 1d
B2_1da7:		ldx $16			; a6 16
B2_1da9:		rts				; 60 


B2_1daa:	.db $03
B2_1dab:		ror $0426		; 6e 26 04
B2_1dae:		.db $00				; 00
B2_1daf:	.db $03
B2_1db0:	.db $6f
B2_1db1:		rol $04			; 26 04
B2_1db3:		.db $00				; 00
B2_1db4:		sta $048c, x	; 9d 8c 04
B2_1db7:		tya				; 98 
B2_1db8:		sta $05aa, x	; 9d aa 05
B2_1dbb:		lda #$00		; a9 00
B2_1dbd:		sta $0593, x	; 9d 93 05
B2_1dc0:		jsr $ef7b		; 20 7b ef
B2_1dc3:		rts				; 60 


B2_1dc4:		lda $0593, x	; bd 93 05
B2_1dc7:		bne B2_1dcf ; d0 06

B2_1dc9:		ldy $057c, x	; bc 7c 05
B2_1dcc:		dey				; 88 
B2_1dcd:		beq B2_1dd4 ; f0 05

B2_1dcf:		jsr func_1f_0f75		; 20 75 ef
B2_1dd2:		clc				; 18 
B2_1dd3:		rts				; 60 


B2_1dd4:		sec				; 38 
B2_1dd5:		rts				; 60 


B2_1dd6:		clc				; 18 
B2_1dd7:		lda $0509, x	; bd 09 05
B2_1dda:		adc $04c4, x	; 7d c4 04
B2_1ddd:		sta $04c4, x	; 9d c4 04
B2_1de0:		lda $04f2, x	; bd f2 04
B2_1de3:		adc $0438, x	; 7d 38 04
B2_1de6:		sta $0438, x	; 9d 38 04
B2_1de9:		clc				; 18 
B2_1dea:		lda $0537, x	; bd 37 05
B2_1ded:		adc $04db, x	; 7d db 04
B2_1df0:		sta $04db, x	; 9d db 04
B2_1df3:		lda $0520, x	; bd 20 05
B2_1df6:		adc $041c, x	; 7d 1c 04
B2_1df9:		sta $041c, x	; 9d 1c 04
B2_1dfc:		rts				; 60 


B2_1dfd:		sta $048c, x	; 9d 8c 04
B2_1e00:		tya				; 98 
B2_1e01:		sta $05aa, x	; 9d aa 05
B2_1e04:		lda #$00		; a9 00
B2_1e06:		sta $0593, x	; 9d 93 05
B2_1e09:		sta $057c, x	; 9d 7c 05
B2_1e0c:		rts				; 60 


B2_1e0d:		lda $057c, x	; bd 7c 05
B2_1e10:		bne B2_1e40 ; d0 2e

B2_1e12:		lda $05aa, x	; bd aa 05
B2_1e15:		asl a			; 0a
B2_1e16:		tay				; a8 
B2_1e17:		lda $9e5b, y	; b9 5b 9e
B2_1e1a:		sta $00			; 85 00
B2_1e1c:		lda $9e5c, y	; b9 5c 9e
B2_1e1f:		sta $01			; 85 01
B2_1e21:		lda $0593, x	; bd 93 05
B2_1e24:		cmp #$ff		; c9 ff
B2_1e26:		beq B2_1e59 ; f0 31

B2_1e28:		asl a			; 0a
B2_1e29:		tay				; a8 
B2_1e2a:		lda ($00), y	; b1 00
B2_1e2c:		cmp #$fe		; c9 fe
B2_1e2e:		beq B2_1e4f ; f0 1f

B2_1e30:		cmp #$ff		; c9 ff
B2_1e32:		beq B2_1e45 ; f0 11

B2_1e34:		sta $057c, x	; 9d 7c 05
B2_1e37:		iny				; c8 
B2_1e38:		lda ($00), y	; b1 00
B2_1e3a:		sta $0400, x	; 9d 00 04
B2_1e3d:		inc $0593, x	; fe 93 05
B2_1e40:		dec $057c, x	; de 7c 05
B2_1e43:		clc				; 18 
B2_1e44:		rts				; 60 


B2_1e45:		lda #$00		; a9 00
B2_1e47:		sta $0593, x	; 9d 93 05
B2_1e4a:		sta $057c, x	; 9d 7c 05
B2_1e4d:		clc				; 18 
B2_1e4e:		rts				; 60 


B2_1e4f:		lda #$00		; a9 00
B2_1e51:		sta $057c, x	; 9d 7c 05
B2_1e54:		lda #$ff		; a9 ff
B2_1e56:		sta $0593, x	; 9d 93 05
B2_1e59:		sec				; 38 
B2_1e5a:		rts				; 60 


B2_1e5b:		sta $969e		; 8d 9e 96
B2_1e5e:	.db $9e
B2_1e5f:	.db $9f
B2_1e60:	.db $9e
B2_1e61:		tay				; a8 
B2_1e62:	.db $9e
B2_1e63:		lda ($9e), y	; b1 9e
B2_1e65:		tsx				; ba 
B2_1e66:	.db $9e
B2_1e67:	.db $c3
B2_1e68:	.db $9e
B2_1e69:		iny				; c8 
B2_1e6a:	.db $9e
B2_1e6b:		cmp $d29e		; cd 9e d2
B2_1e6e:	.db $9e
B2_1e6f:		cmp $9e, x		; d5 9e
B2_1e71:	.db $da
B2_1e72:	.db $9e
B2_1e73:		cmp $e09e, x	; dd 9e e0
B2_1e76:	.db $9e
B2_1e77:		sbc $9e			; e5 9e
B2_1e79:		cpx $f59e		; ec 9e f5
B2_1e7c:	.db $9e
B2_1e7d:		sed				; f8 
B2_1e7e:	.db $9e
B2_1e7f:	.db $fb
B2_1e80:	.db $9e
B2_1e81:	.db $04
B2_1e82:	.db $9f
B2_1e83:	.db $07
B2_1e84:	.db $9f
B2_1e85:		bpl B2_1e26 ; 10 9f

B2_1e87:		ora $209f, y	; 19 9f 20
B2_1e8a:	.db $9f
B2_1e8b:		bit $029f		; 2c 9f 02
B2_1e8e:		lsr a			; 4a
B2_1e8f:	.db $02
B2_1e90:		sty $02, x		; 94 02
B2_1e92:		stx $02, y		; 96 02
B2_1e94:		tya				; 98 
B2_1e95:	.db $ff
B2_1e96:		php				; 08 
B2_1e97:		;removed
	.db $70 $08

B2_1e99:	.db $72
B2_1e9a:		php				; 08 
B2_1e9b:	.db $74
B2_1e9c:		php				; 08 
B2_1e9d:	.db $72
B2_1e9e:	.db $ff
B2_1e9f:		php				; 08 
B2_1ea0:		sty $08, x		; 94 08
B2_1ea2:		stx $08, y		; 96 08
B2_1ea4:		tya				; 98 
B2_1ea5:		php				; 08 
B2_1ea6:		stx $ff, y		; 96 ff
B2_1ea8:		php				; 08 
B2_1ea9:	.db $7c
B2_1eaa:		php				; 08 
B2_1eab:		ror $8008, x	; 7e 08 80
B2_1eae:		php				; 08 
B2_1eaf:		ror $08ff, x	; 7e ff 08
B2_1eb2:		dey				; 88 
B2_1eb3:		php				; 08 
B2_1eb4:		txa				; 8a 
B2_1eb5:		php				; 08 
B2_1eb6:		sty $8a08		; 8c 08 8a
B2_1eb9:	.db $ff
B2_1eba:		clc				; 18 
B2_1ebb:	.db $7c
B2_1ebc:		php				; 08 
B2_1ebd:		stx $10			; 86 10
B2_1ebf:	.db $7c
B2_1ec0:	.db $04
B2_1ec1:		stx $ff			; 86 ff
B2_1ec3:		php				; 08 
B2_1ec4:		txs				; 9a 
B2_1ec5:		php				; 08 
B2_1ec6:	.db $9c
B2_1ec7:	.db $ff
B2_1ec8:		php				; 08 
B2_1ec9:	.db $82
B2_1eca:		php				; 08 
B2_1ecb:		sty $ff			; 84 ff
B2_1ecd:		php				; 08 
B2_1ece:		stx $9008		; 8e 08 90
B2_1ed1:	.db $ff
B2_1ed2:		php				; 08 
B2_1ed3:		ror $08ff		; 6e ff 08
B2_1ed6:		pha				; 48 
B2_1ed7:		php				; 08 
B2_1ed8:		lsr a			; 4a
B2_1ed9:		inc $9808, x	; fe 08 98
B2_1edc:	.db $ff
B2_1edd:		php				; 08 
B2_1ede:		rol $02ff		; 2e ff 02
B2_1ee1:	.db $02
B2_1ee2:	.db $02
B2_1ee3:	.db $04
B2_1ee4:	.db $ff
B2_1ee5:	.db $02
B2_1ee6:	.db $02
B2_1ee7:	.db $02
B2_1ee8:	.db $04
B2_1ee9:	.db $02
B2_1eea:		asl $ff			; 06 ff
B2_1eec:	.db $02
B2_1eed:	.db $02
B2_1eee:	.db $02
B2_1eef:	.db $04
B2_1ef0:	.db $02
B2_1ef1:		asl $02			; 06 02
B2_1ef3:		php				; 08 
B2_1ef4:	.db $ff
B2_1ef5:		php				; 08 
B2_1ef6:		asl a			; 0a
B2_1ef7:	.db $ff
B2_1ef8:		php				; 08 
B2_1ef9:	.db $0c
B2_1efa:	.db $ff
B2_1efb:		php				; 08 
B2_1efc:	.db $02
B2_1efd:		php				; 08 
B2_1efe:	.db $04
B2_1eff:		php				; 08 
B2_1f00:		asl $08			; 06 08
B2_1f02:		php				; 08 
B2_1f03:	.db $ff
B2_1f04:		php				; 08 
B2_1f05:		asl $18ff		; 0e ff 18
B2_1f08:		tya				; 98 
B2_1f09:		php				; 08 
B2_1f0a:	.db $9e
B2_1f0b:		bpl B2_1ea5 ; 10 98

B2_1f0d:	.db $04
B2_1f0e:	.db $9e
B2_1f0f:	.db $ff
B2_1f10:		clc				; 18 
B2_1f11:		sty $9208		; 8c 08 92
B2_1f14:		bpl B2_1ea2 ; 10 8c

B2_1f16:	.db $04
B2_1f17:	.db $92
B2_1f18:	.db $ff
B2_1f19:		php				; 08 
B2_1f1a:	.db $74
B2_1f1b:	.db $04
B2_1f1c:		ror $10, x		; 76 10
B2_1f1e:	.db $74
B2_1f1f:	.db $ff
B2_1f20:		php				; 08 
B2_1f21:		sei				; 78 
B2_1f22:	.db $04
B2_1f23:	.db $74
B2_1f24:		php				; 08 
B2_1f25:	.db $7a
B2_1f26:	.db $ff
B2_1f27:	.db $04
B2_1f28:	.db $74
B2_1f29:		;removed
	.db $10 $78

B2_1f2b:	.db $ff
B2_1f2c:	.db $02
B2_1f2d:		dey				; 88 
B2_1f2e:	.db $02
B2_1f2f:		txa				; 8a 
B2_1f30:	.db $ff


irqFuncs:
	.dw irqFunc_end
	.dw func_03_00bc
	.dw $a0ef
	.dw $a12f
	.dw $a13c
	.dw $a179
	.dw func_03_0190
	.dw $a1bf
	.dw $a1e8
	.dw $a274
	.dw $a2a1
	.dw $a179
	.dw func_03_0190
	.dw $a21e
	.dw $a24b
	.dw $a2a1
	.dw $a2dc
	.dw $a2f2
	.dw $a2f8
	.dw $a345
	.dw $a39b
	.dw $a3ee
	.dw $a05a
	.dw $a00d
	.dw $a023
	.dw $9fd9
	.dw $a3f4
	.dw $a41d
	.dw $a434
	.dw $a458
	.dw $a488
	.dw $a4c8
	.dw $a4e6
	.dw $a488
	.dw $a501
	.dw $9fd1
	.dw $a345
	.dw $a39b
	.dw $a3da
	.dw $a3c1
	.dw $a3ee
	.dw $a578
	.dw $a5a0
	.dw $a5d2
	.dw $a5e5
	.dw $a16a

	
B2_1f8d:		dec $0781
B2_1f90:		bne B2_1fb8 ; d0 26

B2_1f92:		lda $7d			; a5 7d
B2_1f94:		and #$0f		; 29 0f
B2_1f96:		asl a			; 0a
B2_1f97:		tay				; a8 
B2_1f98:		lda $9fbd, y	; b9 bd 9f
B2_1f9b:		sta $44			; 85 44
B2_1f9d:		lda $9fbe, y	; b9 be 9f
B2_1fa0:		sta $45			; 85 45
B2_1fa2:		ldy #$00		; a0 00
B2_1fa4:		lda ($44), y	; b1 44
B2_1fa6:		sta $0781		; 8d 81 07
B2_1fa9:		ldy $0780		; ac 80 07
B2_1fac:		iny				; c8 

B2_1fad:		lda ($44), y	; b1 44
B2_1faf:		cmp #$ff		; c9 ff
B2_1fb1:		beq B2_1fb9 ; f0 06

B2_1fb3:		sta wChrBankBG_0400			; 85 4b
B2_1fb5:		sty $0780		; 8c 80 07
B2_1fb8:		rts				; 60 

B2_1fb9:		ldy #$01		; a0 01
B2_1fbb:		bne B2_1fad ; d0 f0


B2_1fbd:		cmp ($9f, x)	; c1 9f
B2_1fbf:		dec $9f			; c6 9f
B2_1fc1:		asl a			; 0a
B2_1fc2:	.db $54
B2_1fc3:		eor $56, x		; 55 56
B2_1fc5:	.db $ff
B2_1fc6:		asl $54			; 06 54
B2_1fc8:		eor $56, x		; 55 56
B2_1fca:	.db $ff


b2_setNametableVerticalMirroring:
	lda #NT_VERTICAL_MIRROR
	sta NAMETABLE_MAPPING.w
	rts


B2_1fd1:		lda #$7f		; a9 7f
B2_1fd3:		sta CHR_BANK_0800.w		; 8d 22 51
B2_1fd6:		jmp irqFunc_end		; 4c 3a e1


B2_1fd9:		lda PPUSTATUS.w		; ad 02 20
B2_1fdc:		ldx $078c		; ae 8c 07
B2_1fdf:		lda $078d		; ad 8d 07
B2_1fe2:		sta PPUADDR.w		; 8d 06 20
B2_1fe5:		stx $2006		; 8e 06 20
B2_1fe8:		lda $078a		; ad 8a 07
B2_1feb:		sta PPUSCROLL.w		; 8d 05 20
B2_1fee:		lda #$00		; a9 00
B2_1ff0:		sta PPUSCROLL.w		; 8d 05 20
B2_1ff3:		lda $078b		; ad 8b 07
B2_1ff6:		sta PPUCTRL.w		; 8d 00 20
B2_1ff9:		ldy #$7c		; a0 7c
B2_1ffb:		sty $4b			; 84 4b
B2_1ffd:		iny				; c8 
		.db $84
		.db $4c
