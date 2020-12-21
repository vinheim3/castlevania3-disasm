
B6_0001:		jmp $834a

B6_0004:		lda $78			; a5 78
B6_0006:		bne B6_000e ; d0 06

B6_0008:		lda #$98		; a9 98
B6_000a:		sta wEntityState.w, x	; 9d 70 04
B6_000d:		rts				; 60 


B6_000e:		lda #$00		; a9 00
B6_0010:		sta $05d8, x	; 9d d8 05
B6_0013:		lda $07f3		; ad f3 07
B6_0016:		and #$7f		; 29 7f
B6_0018:		sta $07f3		; 8d f3 07
B6_001b:		lda #$40		; a9 40
B6_001d:		sta wEntityState.w, x	; 9d 70 04
B6_0020:		rts				; 60 


B6_0021:		lda #$08		; a9 08
B6_0023:		sta $ba			; 85 ba
B6_0025:		lda #$06		; a9 06
B6_0027:		sta $bb			; 85 bb
B6_0029:		jsr $993b		; 20 3b 99
B6_002c:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_002f:		;removed
	.db $30 $d0

B6_0031:		lda $07f1		; ad f1 07
B6_0034:		and #$0c		; 29 0c
B6_0036:		cmp #$0c		; c9 0c
B6_0038:		bne B6_004c ; d0 12

B6_003a:		lda #$50		; a9 50
B6_003c:		jsr $9978		; 20 78 99
B6_003f:		lda #$02		; a9 02
B6_0041:		sta $07f3		; 8d f3 07
B6_0044:		lda #$00		; a9 00
B6_0046:		jsr $9956		; 20 56 99
B6_0049:		jmp $9952		; 4c 52 99


B6_004c:		ldy $0645, x	; bc 45 06
B6_004f:		lda $8138, y	; b9 38 81
B6_0052:		sta $00			; 85 00
B6_0054:		lda $00			; a5 00
B6_0056:		and $07f1		; 2d f1 07
B6_0059:		beq B6_005e ; f0 03

B6_005b:		jmp $9952		; 4c 52 99


B6_005e:		lda $0645, x	; bd 45 06
B6_0061:		clc				; 18 
B6_0062:		adc #$01		; 69 01
B6_0064:		and $07f1		; 2d f1 07
B6_0067:		beq B6_00d7 ; f0 6e

B6_0069:		lda $061d, x	; bd 1d 06
B6_006c:		beq B6_0091 ; f0 23

B6_006e:		lda $05d8, x	; bd d8 05
B6_0071:		cmp #$20		; c9 20
B6_0073:		bcc B6_008d ; 90 18

B6_0075:		lda $0645, x	; bd 45 06
B6_0078:		asl a			; 0a
B6_0079:		tay				; a8 
B6_007a:		lda #$fe		; a9 fe
B6_007c:		sta $07ed, y	; 99 ed 07
B6_007f:		lda $061d, x	; bd 1d 06
B6_0082:		sta $07ee, y	; 99 ee 07
B6_0085:		dec $061d, x	; de 1d 06
B6_0088:		lda #$00		; a9 00
B6_008a:		sta $05d8, x	; 9d d8 05
B6_008d:		inc $05d8, x	; fe d8 05
B6_0090:		rts				; 60 


B6_0091:		lda wEntityAI_idx.w, x	; bd ef 05
B6_0094:		and #$7f		; 29 7f
B6_0096:		cmp #$35		; c9 35
B6_0098:		bcs B6_00a3 ; b0 09

B6_009a:		lda #$35		; a9 35
B6_009c:		clc				; 18 
B6_009d:		adc $0645, x	; 7d 45 06
B6_00a0:		jmp $994c		; 4c 4c 99


B6_00a3:		sta $00			; 85 00
B6_00a5:		lda #$35		; a9 35
B6_00a7:		clc				; 18 
B6_00a8:		adc $0645, x	; 7d 45 06
B6_00ab:		cmp $00			; c5 00
B6_00ad:		bne B6_00c3 ; d0 14

B6_00af:		lda wEntityPhase.w, x	; bd c1 05
B6_00b2:		cmp #$01		; c9 01
B6_00b4:		bne B6_00c3 ; d0 0d

B6_00b6:		lda wEntityBaseY.w, x	; bd 1c 04
B6_00b9:		cmp #$c0		; c9 c0
B6_00bb:		bcc B6_00c3 ; 90 06

B6_00bd:		inc wEntityPhase.w, x	; fe c1 05
B6_00c0:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B6_00c3:		lda wEntityPhase.w, x	; bd c1 05
B6_00c6:		cmp #$11		; c9 11
B6_00c8:		bne B6_00d6 ; d0 0c

B6_00ca:		ldy $0645, x	; bc 45 06
B6_00cd:		lda $8138, y	; b9 38 81
B6_00d0:		ora $07f1		; 0d f1 07
B6_00d3:		sta $07f1		; 8d f1 07
B6_00d6:		rts				; 60 


B6_00d7:		lda $061d, x	; bd 1d 06
B6_00da:		cmp #$02		; c9 02
B6_00dc:		bcc B6_00e3 ; 90 05

B6_00de:		lda #$01		; a9 01
B6_00e0:		jsr $9962		; 20 62 99
B6_00e3:		lda #$00		; a9 00
B6_00e5:		sta $0669, x	; 9d 69 06
B6_00e8:		lda $067b, x	; bd 7b 06
B6_00eb:		bne B6_0130 ; d0 43

B6_00ed:		lda #$7b		; a9 7b
B6_00ef:		jsr playSound		; 20 5f e2
B6_00f2:		lda $0645, x	; bd 45 06
B6_00f5:		clc				; 18 
B6_00f6:		adc #$01		; 69 01
B6_00f8:		ora $07f1		; 0d f1 07
B6_00fb:		sta $07f1		; 8d f1 07
B6_00fe:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0101:		lda $061d, x	; bd 1d 06
B6_0104:		sta $09			; 85 09
B6_0106:		jsr $83cd		; 20 cd 83
B6_0109:		lda #$10		; a9 10
B6_010b:		sta wEntityState.w, y	; 99 70 04
B6_010e:		lda $09			; a5 09
B6_0110:		sta $061d, y	; 99 1d 06
B6_0113:		txa				; 8a 
B6_0114:		sta $0633, y	; 99 33 06
B6_0117:		sty $08			; 84 08
B6_0119:		ldy $09			; a4 09
B6_011b:		lda $83c0, y	; b9 c0 83
B6_011e:		ldy $08			; a4 08
B6_0120:		clc				; 18 
B6_0121:		adc wEntityBaseY.w, x	; 7d 1c 04
B6_0124:		sta wEntityBaseY.w, y	; 99 1c 04
B6_0127:		dec $09			; c6 09
B6_0129:		lda $09			; a5 09
B6_012b:		cmp #$01		; c9 01
B6_012d:		bne B6_0106 ; d0 d7

B6_012f:		rts				; 60 


B6_0130:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_0133:		beq B6_013a ; f0 05

B6_0135:		jmp $81e6		; 4c e6 81


B6_0138:	.db $04
B6_0139:		php				; 08 
B6_013a:		lda #$98		; a9 98
B6_013c:		sta wEntityState.w, x	; 9d 70 04
B6_013f:		lda $05d8, x	; bd d8 05
B6_0142:		beq B6_0147 ; f0 03

B6_0144:		jmp $81c2		; 4c c2 81


B6_0147:		lda wHardMode.w		; ad f6 07
B6_014a:		bne B6_015c ; d0 10

B6_014c:		lda $0633, x	; bd 33 06
B6_014f:		clc				; 18 
B6_0150:		adc $0645, x	; 7d 45 06
B6_0153:		and #$0f		; 29 0f
B6_0155:		tay				; a8 
B6_0156:		lda $81d6, y	; b9 d6 81
B6_0159:		jmp $816a		; 4c 6a 81


B6_015c:		lda $1f			; a5 1f
B6_015e:		adc $0633, x	; 7d 33 06
B6_0161:		adc $0645, x	; 7d 45 06
B6_0164:		and #$0f		; 29 0f
B6_0166:		tay				; a8 
B6_0167:		lda $81c6, y	; b9 c6 81
B6_016a:		tay				; a8 
B6_016b:		sta $03			; 85 03
B6_016d:		lda $83f9, y	; b9 f9 83
B6_0170:		jsr $84e7		; 20 e7 84
B6_0173:		sta wEntityBaseX.w, x	; 9d 38 04
B6_0176:		lda #$c0		; a9 c0
B6_0178:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_017b:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_017e:		lda #$fe		; a9 fe
B6_0180:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_0183:		lda #$30		; a9 30
B6_0185:		jsr playSound		; 20 5f e2
B6_0188:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_018b:		lda #$00		; a9 00
B6_018d:		sta $061d, x	; 9d 1d 06
B6_0190:		inc $0633, x	; fe 33 06
B6_0193:		lda $0633, x	; bd 33 06
B6_0196:		and #$07		; 29 07
B6_0198:		sta $0633, x	; 9d 33 06
B6_019b:		lda $0645, x	; bd 45 06
B6_019e:		asl a			; 0a
B6_019f:		tay				; a8 
B6_01a0:		lda #$00		; a9 00
B6_01a2:		sta $07ee, y	; 99 ee 07
B6_01a5:		sta $07ed, y	; 99 ed 07
B6_01a8:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_01ab:		lda wEntityBaseX.w		; ad 38 04
B6_01ae:		cmp wEntityBaseX.w, x	; dd 38 04
B6_01b1:		bcs B6_01b8 ; b0 05

B6_01b3:		lda #$01		; a9 01
B6_01b5:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_01b8:		jsr $8319		; 20 19 83
B6_01bb:		lda #$10		; a9 10
B6_01bd:		ldy #$08		; a0 08
B6_01bf:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_01c2:		dec $05d8, x	; de d8 05
B6_01c5:		rts				; 60 


B6_01c6:		ora ($00, x)	; 01 00
B6_01c8:	.db $03
B6_01c9:	.db $02
B6_01ca:		ora ($00, x)	; 01 00
B6_01cc:	.db $02
B6_01cd:		ora ($03, x)	; 01 03
B6_01cf:	.db $02
B6_01d0:		ora ($00, x)	; 01 00
B6_01d2:		ora ($00, x)	; 01 00
B6_01d4:		ora ($02, x)	; 01 02
B6_01d6:		ora ($00, x)	; 01 00
B6_01d8:	.db $03
B6_01d9:	.db $02
B6_01da:		ora ($00, x)	; 01 00
B6_01dc:	.db $03
B6_01dd:	.db $02
B6_01de:		ora ($00, x)	; 01 00
B6_01e0:		ora ($00, x)	; 01 00
B6_01e2:		ora ($02, x)	; 01 02
B6_01e4:		ora ($00, x)	; 01 00
B6_01e6:		dey				; 88 
B6_01e7:		bne B6_024c ; d0 63

B6_01e9:		lda #$40		; a9 40
B6_01eb:		sta wEntityState.w, x	; 9d 70 04
B6_01ee:		lda $0633, x	; bd 33 06
B6_01f1:		clc				; 18 
B6_01f2:		adc $0645, x	; 7d 45 06
B6_01f5:		tay				; a8 
B6_01f6:		lda $83fd, y	; b9 fd 83
B6_01f9:		cmp wEntityBaseY.w, x	; dd 1c 04
B6_01fc:		bcc B6_020a ; 90 0c

B6_01fe:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_0201:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_0204:		lda #$20		; a9 20
B6_0206:		sta $05d8, x	; 9d d8 05
B6_0209:		rts				; 60 


B6_020a:		jsr $83e7		; 20 e7 83
B6_020d:		cmp #$0e		; c9 0e
B6_020f:		bcc B6_0236 ; 90 25

B6_0211:		inc $061d, x	; fe 1d 06
B6_0214:		lda $061d, x	; bd 1d 06
B6_0217:		cmp #$02		; c9 02
B6_0219:		bcs B6_0236 ; b0 1b

B6_021b:		jsr $83cd		; 20 cd 83
B6_021e:		lda #$00		; a9 00
B6_0220:		sta wEntityState.w, y	; 99 70 04
B6_0223:		lda $061d, x	; bd 1d 06
B6_0226:		sta $061d, y	; 99 1d 06
B6_0229:		txa				; 8a 
B6_022a:		sta $0633, y	; 99 33 06
B6_022d:		lda wEntityBaseY.w, y	; b9 1c 04
B6_0230:		clc				; 18 
B6_0231:		adc #$10		; 69 10
B6_0233:		sta wEntityBaseY.w, y	; 99 1c 04
B6_0236:		ldy #$08		; a0 08
B6_0238:		lda wEntityBaseY.w, x	; bd 1c 04
B6_023b:		cmp #$a8		; c9 a8
B6_023d:		bcs B6_0247 ; b0 08

B6_023f:		ldy #$09		; a0 09
B6_0241:		cmp #$a0		; c9 a0
B6_0243:		bcs B6_0247 ; b0 02

B6_0245:		ldy #$0a		; a0 0a
B6_0247:		lda #$10		; a9 10
B6_0249:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_024c:		dey				; 88 
B6_024d:		beq B6_0252 ; f0 03

B6_024f:		jmp $82de		; 4c de 82


B6_0252:		lda $05d8, x	; bd d8 05
B6_0255:		beq B6_0260 ; f0 09

B6_0257:		dec $05d8, x	; de d8 05
B6_025a:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_025d:		sta $12			; 85 12
B6_025f:		rts				; 60 


B6_0260:		lda #$00		; a9 00
B6_0262:		sta $12			; 85 12
B6_0264:		lda #$1b		; a9 1b
B6_0266:		jsr $996e		; 20 6e 99
B6_0269:		bcc B6_02ca ; 90 5f

B6_026b:		lda #$28		; a9 28
B6_026d:		sta wEntityState.w, y	; 99 70 04
B6_0270:		lda #$52		; a9 52
B6_0272:		sta wOamSpecIdxDoubled.w, y	; 99 00 04
B6_0275:		lda #$a2		; a9 a2
B6_0277:		sta wEntityAI_idx.w, y	; 99 ef 05
B6_027a:		lda #$01		; a9 01
B6_027c:		sta $05d8, y	; 99 d8 05
B6_027f:		lda #$14		; a9 14
B6_0281:		sta wEntityOamSpecGroupDoubled.w, y	; 99 8c 04
B6_0284:		lda #$00		; a9 00
B6_0286:		sta wEntityPhase.w, y	; 99 c1 05
B6_0289:		lda wEntityBaseY.w, y	; b9 1c 04
B6_028c:		sec				; 38 
B6_028d:		sbc #$0c		; e9 0c
B6_028f:		sta wEntityBaseY.w, y	; 99 1c 04
B6_0292:		lda #$10		; a9 10
B6_0294:		sta $11			; 85 11
B6_0296:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0299:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_029c:		beq B6_02a2 ; f0 04

B6_029e:		lda #$f0		; a9 f0
B6_02a0:		sta $11			; 85 11
B6_02a2:		lda wEntityBaseX.w, y	; b9 38 04
B6_02a5:		clc				; 18 
B6_02a6:		adc $11			; 65 11
B6_02a8:		sta wEntityBaseX.w, y	; 99 38 04
B6_02ab:		sta $0633, y	; 99 33 06
B6_02ae:		jsr $84bb		; 20 bb 84
B6_02b1:		lda #$00		; a9 00
B6_02b3:		sta $17			; 85 17
B6_02b5:		lda $12			; a5 12
B6_02b7:		beq B6_02bd ; f0 04

B6_02b9:		lda #$08		; a9 08
B6_02bb:		sta $17			; 85 17
B6_02bd:		lda $17			; a5 17
B6_02bf:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B6_02c2:		inc $12			; e6 12
B6_02c4:		lda $12			; a5 12
B6_02c6:		cmp #$02		; c9 02
B6_02c8:		bcc B6_0264 ; 90 9a

B6_02ca:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_02cd:		lda #$58		; a9 58
B6_02cf:		sta $05d8, x	; 9d d8 05
B6_02d2:		lda #$24		; a9 24
B6_02d4:		jsr playSound		; 20 5f e2
B6_02d7:		ldy #$0b		; a0 0b
B6_02d9:		lda #$10		; a9 10
B6_02db:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_02de:		dey				; 88 
B6_02df:		bne B6_02f9 ; d0 18

B6_02e1:		lda $05d8, x	; bd d8 05
B6_02e4:		bne B6_02f5 ; d0 0f

B6_02e6:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_02e9:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_02ec:		lda #$02		; a9 02
B6_02ee:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_02f1:		ldy #$0a		; a0 0a
B6_02f3:		bne B6_02d9 ; d0 e4

B6_02f5:		dec $05d8, x	; de d8 05
B6_02f8:		rts				; 60 


B6_02f9:		lda wEntityBaseY.w, x	; bd 1c 04
B6_02fc:		cmp #$c0		; c9 c0
B6_02fe:		bcc B6_032f ; 90 2f

B6_0300:		lda #$31		; a9 31
B6_0302:		jsr playSound		; 20 5f e2
B6_0305:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0308:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_030b:		lda $1f			; a5 1f
B6_030d:		adc $0645, x	; 7d 45 06
B6_0310:		and #$0f		; 29 0f
B6_0312:		tay				; a8 
B6_0313:		lda $8406, y	; b9 06 84
B6_0316:		sta $05d8, x	; 9d d8 05
B6_0319:		lda #$1c		; a9 1c
B6_031b:		jsr $996e		; 20 6e 99
B6_031e:		bcc B6_032e ; 90 0e

B6_0320:		lda #$10		; a9 10
B6_0322:		sta wEntityState.w, y	; 99 70 04
B6_0325:		lda wEntityBaseY.w, y	; b9 1c 04
B6_0328:		sec				; 38 
B6_0329:		sbc #$10		; e9 10
B6_032b:		sta wEntityBaseY.w, y	; 99 1c 04
B6_032e:		rts				; 60 


B6_032f:		jsr $83e7		; 20 e7 83
B6_0332:		cmp #$02		; c9 02
B6_0334:		bcs B6_0349 ; b0 13

B6_0336:		lda $0645, x	; bd 45 06
B6_0339:		asl a			; 0a
B6_033a:		tay				; a8 
B6_033b:		lda $061d, x	; bd 1d 06
B6_033e:		sta $07ee, y	; 99 ee 07
B6_0341:		dec $061d, x	; de 1d 06
B6_0344:		lda #$ff		; a9 ff
B6_0346:		sta $07ed, y	; 99 ed 07
B6_0349:		rts				; 60 


B6_034a:		jsr $997e		; 20 7e 99
B6_034d:		lda $0645, x	; bd 45 06
B6_0350:		asl a			; 0a
B6_0351:		tay				; a8 
B6_0352:		lda $061d, x	; bd 1d 06
B6_0355:		cmp $07ee, y	; d9 ee 07
B6_0358:		bne B6_0366 ; d0 0c

B6_035a:		lda $07ed, y	; b9 ed 07
B6_035d:		beq B6_0366 ; f0 07

B6_035f:		cmp #$fe		; c9 fe
B6_0361:		beq B6_0392 ; f0 2f

B6_0363:		jmp $9952		; 4c 52 99


B6_0366:		ldy $061d, x	; bc 1d 06
B6_0369:		lda $83c0, y	; b9 c0 83
B6_036c:		ldy $0633, x	; bc 33 06
B6_036f:		clc				; 18 
B6_0370:		adc wEntityBaseY.w, y	; 79 1c 04
B6_0373:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_0376:		lda $0645, x	; bd 45 06
B6_0379:		clc				; 18 
B6_037a:		adc #$01		; 69 01
B6_037c:		and $07f1		; 2d f1 07
B6_037f:		bne B6_038e ; d0 0d

B6_0381:		lda $061d, y	; b9 1d 06
B6_0384:		tay				; a8 
B6_0385:		lda $83c7, y	; b9 c7 83
B6_0388:		tay				; a8 
B6_0389:		lda #$10		; a9 10
B6_038b:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_038e:		ldy #$0c		; a0 0c
B6_0390:		bne B6_0389 ; d0 f7

B6_0392:		lda wEntityAI_idx.w, x	; bd ef 05
B6_0395:		and #$7f		; 29 7f
B6_0397:		cmp #$34		; c9 34
B6_0399:		beq B6_03ac ; f0 11

B6_039b:		lda #$40		; a9 40
B6_039d:		sta wEntityState.w, x	; 9d 70 04
B6_03a0:		lda #$10		; a9 10
B6_03a2:		ldy #$0d		; a0 0d
B6_03a4:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_03a7:		lda #$34		; a9 34
B6_03a9:		jmp $994c		; 4c 4c 99


B6_03ac:		lda wEntityPhase.w, x	; bd c1 05
B6_03af:		cmp #$01		; c9 01
B6_03b1:		bne B6_03f8 ; d0 45

B6_03b3:		lda wEntityBaseY.w, x	; bd 1c 04
B6_03b6:		cmp #$c0		; c9 c0
B6_03b8:		bcc B6_03f8 ; 90 3e

B6_03ba:		inc wEntityPhase.w, x	; fe c1 05
B6_03bd:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B6_03c0:		.db $00				; 00
B6_03c1:		php				; 08 
B6_03c2:		clc				; 18 
B6_03c3:		plp				; 28 
B6_03c4:		sec				; 38 
B6_03c5:		pha				; 48 
B6_03c6:		cli				; 58 
B6_03c7:	.db $0c
B6_03c8:	.db $0c
B6_03c9:	.db $0f
B6_03ca:		bpl B6_03dd ; 10 11

B6_03cc:	.db $12
B6_03cd:		lda #$08		; a9 08
B6_03cf:		jsr $996e		; 20 6e 99
B6_03d2:		lda $0645, x	; bd 45 06
B6_03d5:		sta $0645, y	; 99 45 06
B6_03d8:		lda #$80		; a9 80
B6_03da:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B6_03dd:		jsr $84bb		; 20 bb 84
B6_03e0:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_03e3:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_03e6:		rts				; 60 


B6_03e7:		ldy $061d, x	; bc 1d 06
B6_03ea:		lda $83c0, y	; b9 c0 83
B6_03ed:		sta $00			; 85 00
B6_03ef:		lda #$c0		; a9 c0
B6_03f1:		sec				; 38 
B6_03f2:		sbc $00			; e5 00
B6_03f4:		sec				; 38 
B6_03f5:		sbc wEntityBaseY.w, x	; fd 1c 04
B6_03f8:		rts				; 60 


B6_03f9:		;removed
	.db $10 $50

B6_03fb:		bcs B6_03ed ; b0 f0

B6_03fd:		;removed
	.db $70 $90

B6_03ff:		bvs B6_0399 ; 70 98

B6_0401:		sei				; 78 
B6_0402:		tya				; 98 
B6_0403:		bvs B6_0395 ; 70 90

B6_0405:		;removed
	.db $70 $60

B6_0407:		plp				; 28 
B6_0408:		cli				; 58 
B6_0409:		bvc B6_0453 ; 50 48

B6_040b:		jmp $3078		; 4c 78 30


B6_040e:		jmp $6c20		; 4c 20 6c


B6_0411:	.db $7c
B6_0412:	.db $44
B6_0413:		bit $5434		; 2c 34 54
B6_0416:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0419:		cmp #$08		; c9 08
B6_041b:		bcc B6_0420 ; 90 03

B6_041d:		sec				; 38 
B6_041e:		sbc #$08		; e9 08
B6_0420:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $8433
	.dw $8436
	.dw $8436
	.dw $8447
	.dw $8436
	.dw $8453
	.dw $8436
	.dw $843f
B6_0433:		jsr $993b
B6_0436:		jsr $8461
B6_0439:		bcc B6_043e
B6_043b:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_043e:		rts				; 60 


B6_043f:		dec $05d8, x	; de d8 05
B6_0442:		bne B6_0489 ; d0 45

B6_0444:		jmp $9952		; 4c 52 99


B6_0447:		jsr $8461		; 20 61 84
B6_044a:		bcc B6_043e ; 90 f2

B6_044c:		lda #$05		; a9 05
B6_044e:		sta $061d, x	; 9d 1d 06
B6_0451:		bne B6_043b ; d0 e8

B6_0453:		jsr $8461		; 20 61 84
B6_0456:		bcc B6_043e ; 90 e6

B6_0458:		dec $061d, x	; de 1d 06
B6_045b:		beq B6_043b ; f0 de

B6_045d:		dec wEntityAlarmOrStartYforSinusoidalMovement.w, x	; de 06 06
B6_0460:		rts				; 60 


B6_0461:		dec $05d8, x	; de d8 05
B6_0464:		bne B6_0488 ; d0 22

B6_0466:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_0469:		lda #$04		; a9 04
B6_046b:		sta $05d8, x	; 9d d8 05
B6_046e:		jsr $848a		; 20 8a 84
B6_0471:		cpy #$08		; c0 08
B6_0473:		bcs B6_047b ; b0 06

B6_0475:		lda $84a5, y	; b9 a5 84
B6_0478:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B6_047b:		lda #$20		; a9 20
B6_047d:		cpy #$07		; c0 07
B6_047f:		bcc B6_0483 ; 90 02

B6_0481:		lda #$28		; a9 28
B6_0483:		sta wEntityState.w, x	; 9d 70 04
B6_0486:		sec				; 38 
B6_0487:		rts				; 60 


B6_0488:		clc				; 18 
B6_0489:		rts				; 60 


B6_048a:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_048d:		bne B6_049a ; d0 0b

B6_048f:		clc				; 18 
B6_0490:		lda $0633, x	; bd 33 06
B6_0493:		adc $84ac, y	; 79 ac 84
B6_0496:		sta wEntityBaseX.w, x	; 9d 38 04
B6_0499:		rts				; 60 


B6_049a:		sec				; 38 
B6_049b:		lda $0633, x	; bd 33 06
B6_049e:		sbc $84ac, y	; f9 ac 84
B6_04a1:		sta wEntityBaseX.w, x	; 9d 38 04
B6_04a4:		rts				; 60 


B6_04a5:	.db $44
B6_04a6:		lsr $48			; 46 48
B6_04a8:		lsr a			; 4a
B6_04a9:		jmp $504e		; 4c 4e 50


B6_04ac:		.db $00				; 00
B6_04ad:		.db $00				; 00
B6_04ae:		.db $00				; 00
B6_04af:		.db $00				; 00
B6_04b0:		.db $00				; 00
B6_04b1:		.db $00				; 00
B6_04b2:	.db $20 $00 $00
B6_04b5:		php				; 08 
B6_04b6:		;removed
	.db $10 $18

B6_04b8:		jsr $2020		; 20 20 20
B6_04bb:		lda #$00		; a9 00
B6_04bd:		sta wEntityHorizSpeed.w, y	; 99 f2 04
B6_04c0:		sta wEntityHorizSubSpeed.w, y	; 99 09 05
B6_04c3:		sta wEntityVertSpeed.w, y	; 99 20 05
B6_04c6:		sta wEntityVertSubSpeed.w, y	; 99 37 05
B6_04c9:		rts				; 60 


B6_04ca:		lda wEntityAI_idx.w, x	; bd ef 05
B6_04cd:		and #$7f		; 29 7f
B6_04cf:		beq B6_04db ; f0 0a

B6_04d1:		lda wEntityPhase.w, x	; bd c1 05
B6_04d4:		cmp #$0f		; c9 0f
B6_04d6:		bne B6_04c9 ; d0 f1

B6_04d8:		jmp $9952		; 4c 52 99


B6_04db:		lda #$0a		; a9 0a
B6_04dd:		ldy #$43		; a0 43
B6_04df:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_04e2:		lda #$25		; a9 25
B6_04e4:		jmp $994c		; 4c 4c 99


B6_04e7:		sta $00			; 85 00
B6_04e9:		stx $01			; 86 01
B6_04eb:		ldx #$01		; a2 01
B6_04ed:		cpx $01			; e4 01
B6_04ef:		beq B6_04f8 ; f0 07

B6_04f1:		lda $054e, x	; bd 4e 05
B6_04f4:		cmp #$08		; c9 08
B6_04f6:		beq B6_0502 ; f0 0a

B6_04f8:		inx				; e8 
B6_04f9:		cpx #$0d		; e0 0d
B6_04fb:		bcc B6_04ed ; 90 f0

B6_04fd:		lda $00			; a5 00
B6_04ff:		ldx $01			; a6 01
B6_0501:		rts				; 60 


B6_0502:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0505:		bmi B6_04f8 ; 30 f1

B6_0507:		lda $00			; a5 00
B6_0509:		cmp wEntityBaseX.w, x	; dd 38 04
B6_050c:		bne B6_04fd ; d0 ef

B6_050e:		inc $03			; e6 03
B6_0510:		lda $03			; a5 03
B6_0512:		and #$03		; 29 03
B6_0514:		tay				; a8 
B6_0515:		lda $83f9, y	; b9 f9 83
B6_0518:		bne B6_04ff ; d0 e5

B6_051a:		lda $78			; a5 78
B6_051c:		bne B6_053f ; d0 21

B6_051e:		lda $061d, x	; bd 1d 06
B6_0521:		bne B6_053e ; d0 1b

B6_0523:		ldy wCurrRoomGroup			; a4 32
B6_0525:		cpy #$03		; c0 03
B6_0527:		beq B6_0534 ; f0 0b

B6_0529:		lda #$30		; a9 30
B6_052b:		cpy #$0a		; c0 0a
B6_052d:		beq B6_0531 ; f0 02

B6_052f:		lda #$50		; a9 50
B6_0531:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_0534:		inc $061d, x	; fe 1d 06
B6_0537:		lda #$10		; a9 10
B6_0539:		ldy #$39		; a0 39
B6_053b:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_053e:		rts				; 60 


B6_053f:		lda $07ee		; ad ee 07
B6_0542:		beq B6_0558 ; f0 14

B6_0544:		cmp #$01		; c9 01
B6_0546:		beq B6_055b ; f0 13

B6_0548:		lda wCurrRoomGroup		; a5 32
B6_054a:		cmp #$03		; c9 03
B6_054c:		beq B6_055e ; f0 10

B6_054e:		lda $07ee		; ad ee 07
B6_0551:		cmp #$03		; c9 03
B6_0553:		beq B6_055e ; f0 09

B6_0555:		jmp $8627		; 4c 27 86


B6_0558:		jmp $86d0		; 4c d0 86


B6_055b:		jmp $867f		; 4c 7f 86


B6_055e:		lda #$40		; a9 40
B6_0560:		sta wEntityState.w, x	; 9d 70 04
B6_0563:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_0566:		bne B6_0585 ; d0 1d

B6_0568:		lda #$10		; a9 10
B6_056a:		ldy #$39		; a0 39
B6_056c:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_056f:		lda #$26		; a9 26
B6_0571:		sta wChrBankSpr_0800			; 85 48
B6_0573:		lda #$29		; a9 29
B6_0575:		sta wChrBankSpr_0c00			; 85 49
B6_0577:		jsr updateSprChrBanks_0_to_c00_1400		; 20 3c e3
B6_057a:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_057d:		lda #$40		; a9 40
B6_057f:		sta $05d8, x	; 9d d8 05
B6_0582:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B6_0585:		dey				; 88 
B6_0586:		bne B6_05dd ; d0 55

B6_0588:		lda $05d8, x	; bd d8 05
B6_058b:		beq B6_0591 ; f0 04

B6_058d:		dec $05d8, x	; de d8 05
B6_0590:		rts				; 60 


B6_0591:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0594:		cmp #$70		; c9 70
B6_0596:		bcs B6_05ce ; b0 36

B6_0598:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_059b:		lda #$00		; a9 00
B6_059d:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_05a0:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_05a3:		lda #$07		; a9 07
B6_05a5:		sta $17			; 85 17
B6_05a7:		lda #$09		; a9 09
B6_05a9:		jsr $9968		; 20 68 99
B6_05ac:		lda $17			; a5 17
B6_05ae:		sta $061d, y	; 99 1d 06
B6_05b1:		asl a			; 0a
B6_05b2:		asl a			; 0a
B6_05b3:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_05b6:		lda #$02		; a9 02
B6_05b8:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B6_05bb:		dec $17			; c6 17
B6_05bd:		bne B6_05a7 ; d0 e8

B6_05bf:		lda $17			; a5 17
B6_05c1:		sta $061d, x	; 9d 1d 06
B6_05c4:		asl a			; 0a
B6_05c5:		asl a			; 0a
B6_05c6:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_05c9:		lda #$43		; a9 43
B6_05cb:		jmp playSound		; 4c 5f e2


B6_05ce:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_05d1:		lda #$fe		; a9 fe
B6_05d3:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_05d6:		lda #$10		; a9 10
B6_05d8:		ldy #$47		; a0 47
B6_05da:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_05dd:		jsr $9509		; 20 09 95
B6_05e0:		cmp #$5a		; c9 5a
B6_05e2:		beq B6_05f0 ; f0 0c

B6_05e4:		lda #$10		; a9 10
B6_05e6:		ldy #$3a		; a0 3a
B6_05e8:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_05eb:		lda #$da		; a9 da
B6_05ed:		jmp $994c		; 4c 4c 99


B6_05f0:		lda wEntityBaseX.w, x	; bd 38 04
B6_05f3:		cmp #$08		; c9 08
B6_05f5:		bcc B6_0607 ; 90 10

B6_05f7:		cmp #$f8		; c9 f8
B6_05f9:		bcs B6_0607 ; b0 0c

B6_05fb:		lda wEntityBaseY.w, x	; bd 1c 04
B6_05fe:		cmp #$28		; c9 28
B6_0600:		bcc B6_0607 ; 90 05

B6_0602:		cmp #$f8		; c9 f8
B6_0604:		bcs B6_0607 ; b0 01

B6_0606:		rts				; 60 


B6_0607:		jsr $9952		; 20 52 99
B6_060a:		ldy #$0d		; a0 0d
B6_060c:		lda $054e, y	; b9 4e 05
B6_060f:		bne B6_0626 ; d0 15

B6_0611:		dey				; 88 
B6_0612:		bne B6_060c ; d0 f8

B6_0614:		lda #$09		; a9 09
B6_0616:		sta $054e, x	; 9d 4e 05
B6_0619:		lda #$02		; a9 02
B6_061b:		sta $07f3		; 8d f3 07
B6_061e:		jsr $9956		; 20 56 99
B6_0621:		lda #$00		; a9 00
B6_0623:		sta $054e, x	; 9d 4e 05
B6_0626:		rts				; 60 


B6_0627:		lda $07ef		; ad ef 07
B6_062a:		beq B6_062f ; f0 03

B6_062c:		jmp $875e		; 4c 5e 87


B6_062f:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0632:		and #$80		; 29 80
B6_0634:		bne B6_063c ; d0 06

B6_0636:		jsr $87c9		; 20 c9 87
B6_0639:		bcs B6_063c ; b0 01

B6_063b:		rts				; 60 


B6_063c:		lda $061d, x	; bd 1d 06
B6_063f:		bne B6_0656 ; d0 15

B6_0641:		lda #$80		; a9 80
B6_0643:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0646:		lda #$10		; a9 10
B6_0648:		ldy #$2b		; a0 2b
B6_064a:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_064d:		lda #$00		; a9 00
B6_064f:		jsr $87bf		; 20 bf 87
B6_0652:		inc $061d, x	; fe 1d 06
B6_0655:		rts				; 60 


B6_0656:		jsr $88f0		; 20 f0 88
B6_0659:		bcc B6_0675 ; 90 1a

B6_065b:		jsr $8676		; 20 76 86
B6_065e:		lda #$40		; a9 40
B6_0660:		sta wBossHealth			; 85 3d
B6_0662:		sta $067b, x	; 9d 7b 06
B6_0665:		lda #$00		; a9 00
B6_0667:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B6_066a:		inc $07ef		; ee ef 07
B6_066d:		lda $07f3		; ad f3 07
B6_0670:		and #$80		; 29 80
B6_0672:		sta $07f3		; 8d f3 07
B6_0675:		rts				; 60 


B6_0676:		lda #$00		; a9 00
B6_0678:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_067b:		sta $061d, x	; 9d 1d 06
B6_067e:		rts				; 60 


B6_067f:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0682:		and #$80		; 29 80
B6_0684:		bne B6_068c ; d0 06

B6_0686:		jsr $87c9		; 20 c9 87
B6_0689:		bcs B6_068c ; b0 01

B6_068b:		rts				; 60 


B6_068c:		lda $061d, x	; bd 1d 06
B6_068f:		bne B6_06ac ; d0 1b

B6_0691:		lda #$80		; a9 80
B6_0693:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0696:		lda #$0a		; a9 0a
B6_0698:		ldy #$06		; a0 06
B6_069a:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_069d:		lda wCurrRoomGroup		; a5 32
B6_069f:		cmp #$03		; c9 03
B6_06a1:		bne B6_06a8 ; d0 05

B6_06a3:		lda #$0c		; a9 0c
B6_06a5:		jsr playSound		; 20 5f e2
B6_06a8:		inc $061d, x	; fe 1d 06
B6_06ab:		rts				; 60 


B6_06ac:		jsr $88f0		; 20 f0 88
B6_06af:		bcc B6_06ab ; 90 fa

B6_06b1:		lda $07f3		; ad f3 07
B6_06b4:		and #$7f		; 29 7f
B6_06b6:		sta $07f3		; 8d f3 07
B6_06b9:		jsr $8676		; 20 76 86
B6_06bc:		lda #$02		; a9 02
B6_06be:		sta $054e, x	; 9d 4e 05
B6_06c1:		lda #$40		; a9 40
B6_06c3:		sta wBossHealth			; 85 3d
B6_06c5:		sta $067b, x	; 9d 7b 06
B6_06c8:		lda #$00		; a9 00
B6_06ca:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B6_06cd:		jmp $9974		; 4c 74 99


B6_06d0:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_06d3:		and #$80		; 29 80
B6_06d5:		bne B6_06dd ; d0 06

B6_06d7:		jsr $87c9		; 20 c9 87
B6_06da:		bcs B6_06dd ; b0 01

B6_06dc:		rts				; 60 


B6_06dd:		lda $061d, x	; bd 1d 06
B6_06e0:		bne B6_06f2 ; d0 10

B6_06e2:		lda #$80		; a9 80
B6_06e4:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_06e7:		lda #$10		; a9 10
B6_06e9:		ldy #$3b		; a0 3b
B6_06eb:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_06ee:		inc $061d, x	; fe 1d 06
B6_06f1:		rts				; 60 


B6_06f2:		jsr $88f0		; 20 f0 88
B6_06f5:		bcc B6_0735 ; 90 3e

B6_06f7:		lda $07f3		; ad f3 07
B6_06fa:		and #$7f		; 29 7f
B6_06fc:		sta $07f3		; 8d f3 07
B6_06ff:		jsr $8676		; 20 76 86
B6_0702:		lda #$0e		; a9 0e
B6_0704:		sta $054e, x	; 9d 4e 05
B6_0707:		jsr $9968		; 20 68 99
B6_070a:		lda #$40		; a9 40
B6_070c:		sta wBossHealth			; 85 3d
B6_070e:		sta wEntityState.w, y	; 99 70 04
B6_0711:		lsr a			; 4a
B6_0712:		sta $067b, y	; 99 7b 06
B6_0715:		sta $067b, x	; 9d 7b 06
B6_0718:		lda #$01		; a9 01
B6_071a:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B6_071d:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0720:		stx $17			; 86 17
B6_0722:		tya				; 98 
B6_0723:		tax				; aa 
B6_0724:		lda #$10		; a9 10
B6_0726:		ldy #$3b		; a0 3b
B6_0728:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_072b:		ldx $17			; a6 17
B6_072d:		lda #$00		; a9 00
B6_072f:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B6_0732:		sta $07f1		; 8d f1 07
B6_0735:		rts				; 60 


B6_0736:		lda #$c8		; a9 c8
B6_0738:		sta wEntityState.w, x	; 9d 70 04
B6_073b:		lda #$02		; a9 02
B6_073d:		sta $07ee		; 8d ee 07
B6_0740:		lda #$00		; a9 00
B6_0742:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0745:		lda #$40		; a9 40
B6_0747:		sta $067b, x	; 9d 7b 06
B6_074a:		sta wBossHealth, x		; 95 3d
B6_074c:		lda #$a0		; a9 a0
B6_074e:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_0751:		sta wEntityBaseX.w, x	; 9d 38 04
B6_0754:		ldy #$26		; a0 26
B6_0756:		sty $48			; 84 48
B6_0758:		iny				; c8 
B6_0759:		sty $49			; 84 49
B6_075b:		jmp updateSprChrBanks_0_to_c00_1400		; 4c 3c e3


B6_075e:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_0761:		bne B6_0775 ; d0 12

B6_0763:		lda $061d, x	; bd 1d 06
B6_0766:		jsr $87bf		; 20 bf 87
B6_0769:		lda #$00		; a9 00
B6_076b:		sta $061d, x	; 9d 1d 06
B6_076e:		lda #$04		; a9 04
B6_0770:		sta $05d8, x	; 9d d8 05
B6_0773:		bne B6_0798 ; d0 23

B6_0775:		dey				; 88 
B6_0776:		bne B6_079c ; d0 24

B6_0778:		lda #$40		; a9 40
B6_077a:		sta wEntityState.w, x	; 9d 70 04
B6_077d:		dec $05d8, x	; de d8 05
B6_0780:		bne B6_0797 ; d0 15

B6_0782:		lda $061d, x	; bd 1d 06
B6_0785:		jsr $87bf		; 20 bf 87
B6_0788:		inc $061d, x	; fe 1d 06
B6_078b:		lda $061d, x	; bd 1d 06
B6_078e:		cmp #$03		; c9 03
B6_0790:		beq B6_0798 ; f0 06

B6_0792:		lda #$04		; a9 04
B6_0794:		sta $05d8, x	; 9d d8 05
B6_0797:		rts				; 60 


B6_0798:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_079b:		rts				; 60 


B6_079c:		dey				; 88 
B6_079d:		bne B6_07ae ; d0 0f

B6_079f:		lda #$10		; a9 10
B6_07a1:		ldy #$2b		; a0 2b
B6_07a3:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_07a6:		lda #$4a		; a9 4a
B6_07a8:		jsr $994c		; 20 4c 99
B6_07ab:		jmp $8798		; 4c 98 87


B6_07ae:		jsr $9509		; 20 09 95
B6_07b1:		beq B6_07b4 ; f0 01

B6_07b3:		rts				; 60 


B6_07b4:		lda $07f3		; ad f3 07
B6_07b7:		and #$7f		; 29 7f
B6_07b9:		sta $07f3		; 8d f3 07
B6_07bc:		jmp $8676		; 4c 76 86


B6_07bf:		stx $02			; 86 02
B6_07c1:		clc				; 18 
B6_07c2:		adc #$11		; 69 11
B6_07c4:		sta $c1			; 85 c1
B6_07c6:		jmp $e61e		; 4c 1e e6


B6_07c9:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_07cc:		bne B6_07f0 ; d0 22

B6_07ce:		lda #$26		; a9 26
B6_07d0:		sta wChrBankSpr_0800			; 85 48
B6_07d2:		lda #$29		; a9 29
B6_07d4:		sta wChrBankSpr_0c00			; 85 49
B6_07d6:		jsr updateSprChrBanks_0_to_c00_1400		; 20 3c e3
B6_07d9:		lda #$00		; a9 00
B6_07db:		sta $061d, x	; 9d 1d 06
B6_07de:		lda #$40		; a9 40
B6_07e0:		sta wEntityState.w, x	; 9d 70 04
B6_07e3:		lda #$10		; a9 10
B6_07e5:		ldy #$39		; a0 39
B6_07e7:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_07ea:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_07ed:		jmp $88da		; 4c da 88


B6_07f0:		dey				; 88 
B6_07f1:		bne B6_0815 ; d0 22

B6_07f3:		lda wEntityBaseY.w, x	; bd 1c 04
B6_07f6:		cmp #$70		; c9 70
B6_07f8:		bcs B6_0805 ; b0 0b

B6_07fa:		lda #$00		; a9 00
B6_07fc:		sta $061d, x	; 9d 1d 06
B6_07ff:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_0802:		jmp $88da		; 4c da 88


B6_0805:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0808:		lda #$ff		; a9 ff
B6_080a:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_080d:		lda #$80		; a9 80
B6_080f:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_0812:		jmp $88da		; 4c da 88


B6_0815:		dey				; 88 
B6_0816:		bne B6_088b ; d0 73

B6_0818:		lda #$00		; a9 00
B6_081a:		sta $00			; 85 00
B6_081c:		ldy $061d, x	; bc 1d 06
B6_081f:		cpy #$02		; c0 02
B6_0821:		bne B6_082e ; d0 0b

B6_0823:		lda #$80		; a9 80
B6_0825:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_0828:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_082b:		jmp $88da		; 4c da 88


B6_082e:		jsr $88c7		; 20 c7 88
B6_0831:		tya				; 98 
B6_0832:		asl a			; 0a
B6_0833:		clc				; 18 
B6_0834:		adc $061d, x	; 7d 1d 06
B6_0837:		tay				; a8 
B6_0838:		lda $88dc, y	; b9 dc 88
B6_083b:		cmp #$ff		; c9 ff
B6_083d:		bne B6_0845 ; d0 06

B6_083f:		jsr $88c7		; 20 c7 88
B6_0842:		lda $88e6, y	; b9 e6 88
B6_0845:		sec				; 38 
B6_0846:		sbc wEntityBaseX.w, x	; fd 38 04
B6_0849:		bcs B6_0852 ; b0 07

B6_084b:		eor #$ff		; 49 ff
B6_084d:		clc				; 18 
B6_084e:		adc #$01		; 69 01
B6_0850:		inc $00			; e6 00
B6_0852:		cmp #$02		; c9 02
B6_0854:		bcs B6_0861 ; b0 0b

B6_0856:		inc $061d, x	; fe 1d 06
B6_0859:		lda #$00		; a9 00
B6_085b:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_085e:		jmp $88da		; 4c da 88


B6_0861:		lda #$00		; a9 00
B6_0863:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_0866:		lda #$80		; a9 80
B6_0868:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_086b:		lda $00			; a5 00
B6_086d:		beq B6_0879 ; f0 0a

B6_086f:		lda #$ff		; a9 ff
B6_0871:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_0874:		lda #$80		; a9 80
B6_0876:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_0879:		lda #$00		; a9 00
B6_087b:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_087e:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_0881:		lda #$50		; a9 50
B6_0883:		ora #$80		; 09 80
B6_0885:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_0888:		jmp $88da		; 4c da 88


B6_088b:		jsr $88c7		; 20 c7 88
B6_088e:		lda $88eb, y	; b9 eb 88
B6_0891:		cmp wEntityBaseY.w, x	; dd 1c 04
B6_0894:		bcs B6_08a4 ; b0 0e

B6_0896:		jsr $99a0		; 20 a0 99
B6_0899:		lda #$00		; a9 00
B6_089b:		sta $0645, x	; 9d 45 06
B6_089e:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_08a1:		jmp $88d8		; 4c d8 88


B6_08a4:		lda wEntityBaseY.w, x	; bd 1c 04
B6_08a7:		cmp #$98		; c9 98
B6_08a9:		bcc B6_08b0 ; 90 05

B6_08ab:		lda #$c8		; a9 c8
B6_08ad:		sta wEntityState.w, x	; 9d 70 04
B6_08b0:		lda wEntityBaseY.w, x	; bd 1c 04
B6_08b3:		cmp #$80		; c9 80
B6_08b5:		bcc B6_08bc ; 90 05

B6_08b7:		lda #$21		; a9 21
B6_08b9:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B6_08bc:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_08bf:		lda #$01		; a9 01
B6_08c1:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_08c4:		jmp $88da		; 4c da 88


B6_08c7:		ldy #$00		; a0 00
B6_08c9:		lda wCurrRoomGroup		; a5 32
B6_08cb:		cmp #$03		; c9 03
B6_08cd:		beq B6_08d1 ; f0 02

B6_08cf:		ldy #$02		; a0 02
B6_08d1:		tya				; 98 
B6_08d2:		clc				; 18 
B6_08d3:		adc $07ee		; 6d ee 07
B6_08d6:		tay				; a8 
B6_08d7:		rts				; 60 


B6_08d8:		sec				; 38 
B6_08d9:		rts				; 60 


B6_08da:		clc				; 18 
B6_08db:		rts				; 60 


B6_08dc:		;removed
	.db $10 $ff

B6_08de:		;removed
	.db $d0 $ff

B6_08e0:		;removed
	.db $10 $ff

B6_08e2:		;removed
	.db $d0 $ff

B6_08e4:		rts				; 60 


B6_08e5:	.db $ff
B6_08e6:		;removed
	.db $50 $b0

B6_08e8:		;removed
	.db $50 $b0

B6_08ea:	.db $80
B6_08eb:		tay				; a8 
B6_08ec:		bcs B6_0896 ; b0 a8

B6_08ee:		;removed
	.db $b0 $a0

B6_08f0:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_08f3:		and #$7f		; 29 7f
B6_08f5:		tay				; a8 
B6_08f6:		bne B6_0919 ; d0 21

B6_08f8:		lda #$08		; a9 08
B6_08fa:		sta $05d8, x	; 9d d8 05
B6_08fd:		lda #$51		; a9 51
B6_08ff:		sta wChrBankBG_0400			; 85 4b
B6_0901:		lda $07ee		; ad ee 07
B6_0904:		asl a			; 0a
B6_0905:		tay				; a8 
B6_0906:		lda $89c1, y	; b9 c1 89
B6_0909:		sta wChrBankSpr_0800			; 85 48
B6_090b:		lda $89c2, y	; b9 c2 89
B6_090e:		sta wChrBankSpr_0c00			; 85 49
B6_0910:		jsr updateSprChrBanks_0_to_c00_1400		; 20 3c e3
B6_0913:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_0916:		jmp $88da		; 4c da 88


B6_0919:		dey				; 88 
B6_091a:		bne B6_0930 ; d0 14

B6_091c:		dec $05d8, x	; de d8 05
B6_091f:		bne B6_092d ; d0 0c

B6_0921:		lda #$40		; a9 40
B6_0923:		sta wEntityState.w, x	; 9d 70 04
B6_0926:		lda #$00		; a9 00
B6_0928:		sta $04			; 85 04
B6_092a:		jsr $8956		; 20 56 89
B6_092d:		jmp $88da		; 4c da 88


B6_0930:		dey				; 88 
B6_0931:		bne B6_0942 ; d0 0f

B6_0933:		dec $05d8, x	; de d8 05
B6_0936:		bne B6_092d ; d0 f5

B6_0938:		lda #$01		; a9 01
B6_093a:		sta $04			; 85 04
B6_093c:		jsr $8956		; 20 56 89
B6_093f:		jmp $88da		; 4c da 88


B6_0942:		dec $05d8, x	; de d8 05
B6_0945:		bne B6_092d ; d0 e6

B6_0947:		lda #$02		; a9 02
B6_0949:		sta $04			; 85 04
B6_094b:		jsr $8956		; 20 56 89
B6_094e:		lda #$00		; a9 00
B6_0950:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0953:		jmp $88d8		; 4c d8 88


B6_0956:		ldy #$00		; a0 00
B6_0958:		lda wCurrRoomGroup		; a5 32
B6_095a:		cmp #$03		; c9 03
B6_095c:		beq B6_0960 ; f0 02

B6_095e:		ldy #$02		; a0 02
B6_0960:		tya				; 98 
B6_0961:		clc				; 18 
B6_0962:		adc $07ee		; 6d ee 07
B6_0965:		asl a			; 0a
B6_0966:		tay				; a8 
B6_0967:		lda $8a2a, y	; b9 2a 8a
B6_096a:		sta wVramQueueDest			; 85 61
B6_096c:		lda wCurrScrollRoomScreen			; a5 57
B6_096e:		and #$01		; 29 01
B6_0970:		eor $75			; 45 75
B6_0972:		beq B6_0976 ; f0 02

B6_0974:		lda #$04		; a9 04
B6_0976:		ora $8a2b, y	; 19 2b 8a
B6_0979:		sta wVramQueueDest+1			; 85 62
B6_097b:		jsr $8987		; 20 87 89
B6_097e:		lda #$04		; a9 04
B6_0980:		sta $05d8, x	; 9d d8 05
B6_0983:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_0986:		rts				; 60 


B6_0987:		lda #$00		; a9 00
B6_0989:		sta $16			; 85 16
B6_098b:		jsr vramQueueSetControlByte2_destToCopy_noData		; 20 af e8
B6_098e:		lda $16			; a5 16
B6_0990:		asl a			; 0a
B6_0991:		asl a			; 0a
B6_0992:		asl a			; 0a
B6_0993:		ldy $04			; a4 04
B6_0995:		clc				; 18 
B6_0996:		adc $89c7, y	; 79 c7 89
B6_0999:		tay				; a8 
B6_099a:		lda #$08		; a9 08
B6_099c:		sta $15			; 85 15
B6_099e:		lda $89ca, y	; b9 ca 89
B6_09a1:		jsr storeByteInVramQueueIdxedX		; 20 16 ed
B6_09a4:		iny				; c8 
B6_09a5:		dec $15			; c6 15
B6_09a7:		bne B6_099e ; d0 f5

B6_09a9:		inc wVramQueueDest			; e6 61
B6_09ab:		lda wVramQueueDest			; a5 61
B6_09ad:		bne B6_09b1 ; d0 02

B6_09af:		inc $62			; e6 62
B6_09b1:		lda #$ff		; a9 ff
B6_09b3:		jsr storeByteInVramQueueIdxedX		; 20 16 ed
B6_09b6:		inc $16			; e6 16
B6_09b8:		lda $16			; a5 16
B6_09ba:		cmp #$04		; c9 04
B6_09bc:		bne B6_098b ; d0 cd

B6_09be:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_09c0:		rts				; 60 


B6_09c1:		rol $29			; 26 29
B6_09c3:	.db $1c
B6_09c4:	.db $7b
B6_09c5:		rol $27			; 26 27
B6_09c7:		.db $00				; 00
B6_09c8:	.db $20 $40 $00
B6_09cb:		lsr a			; 4a
B6_09cc:	.db $4b
B6_09cd:		adc $5c4c, y	; 79 4c 5c
B6_09d0:	.db $6c $7c $00
B6_09d3:	.db $4b
B6_09d4:		ror a			; 6a
B6_09d5:	.db $7a
B6_09d6:		eor $6d3f		; 4d 3f 6d
B6_09d9:		adc $5a00, x	; 7d 00 5a
B6_09dc:	.db $6b
B6_09dd:	.db $7b
B6_09de:		lsr $6e5e		; 4e 5e 6e
B6_09e1:		ror $5b00, x	; 7e 00 5b
B6_09e4:	.db $5a
B6_09e5:		eor $5f4f, x	; 5d 4f 5f
B6_09e8:	.db $6f
B6_09e9:	.db $7f
B6_09ea:	.db $44
B6_09eb:	.db $54
B6_09ec:		rti				; 40 


B6_09ed:		;removed
	.db $50 $60

B6_09ef:		jmp $6c5c		; 4c 5c 6c


B6_09f2:		.db $00				; 00
B6_09f3:	.db $47
B6_09f4:		eor ($51, x)	; 41 51
B6_09f6:		adc ($71, x)	; 61 71
B6_09f8:	.db $64
B6_09f9:	.db $74
B6_09fa:		.db $00				; 00
B6_09fb:		bvs B6_0a3f ; 70 42

B6_09fd:	.db $52
B6_09fe:	.db $62
B6_09ff:	.db $72
B6_0a00:		adc $75			; 65 75
B6_0a02:		eor $55			; 45 55
B6_0a04:	.db $43
B6_0a05:	.db $53
B6_0a06:	.db $63
B6_0a07:	.db $4f
B6_0a08:	.db $5f
B6_0a09:	.db $6f
B6_0a0a:		lsr $56			; 46 56
B6_0a0c:		ror $66			; 66 66
B6_0a0e:		ror $66			; 66 66
B6_0a10:	.db $57
B6_0a11:	.db $67
B6_0a12:		.db $00				; 00
B6_0a13:	.db $47
B6_0a14:		.db $00				; 00
B6_0a15:		.db $00				; 00
B6_0a16:		.db $00				; 00
B6_0a17:		.db $00				; 00
B6_0a18:		.db $00				; 00
B6_0a19:	.db $77
B6_0a1a:		.db $00				; 00
B6_0a1b:		pha				; 48 
B6_0a1c:		.db $00				; 00
B6_0a1d:		.db $00				; 00
B6_0a1e:		.db $00				; 00
B6_0a1f:		.db $00				; 00
B6_0a20:		.db $00				; 00
B6_0a21:	.db $77
B6_0a22:		eor #$59		; 49 59
B6_0a24:		adc #$69		; 69 69
B6_0a26:		adc #$68		; 69 68
B6_0a28:		pla				; 68 
B6_0a29:		sei				; 78 
B6_0a2a:		php				; 08 
B6_0a2b:	.db $22
B6_0a2c:	.db $14
B6_0a2d:	.db $22
B6_0a2e:		php				; 08 
B6_0a2f:	.db $22
B6_0a30:	.db $14
B6_0a31:	.db $22
B6_0a32:		asl $ad22		; 0e 22 ad
B6_0a35:		inc $c907		; ee 07 c9
B6_0a38:	.db $02
B6_0a39:		bne B6_0a3e ; d0 03

B6_0a3b:		jmp $8c40		; 4c 40 8c


B6_0a3e:		rts				; 60 


B6_0a3f:		jsr $993b		; 20 3b 99
B6_0a42:		lda wCurrRoomGroup		; a5 32
B6_0a44:		cmp #$03		; c9 03
B6_0a46:		beq B6_0a4c ; f0 04

B6_0a48:		lda #$04		; a9 04
B6_0a4a:		bne B6_0a4e ; d0 02

B6_0a4c:		lda #$03		; a9 03
B6_0a4e:		jsr $9962		; 20 62 99
B6_0a51:		lda $067b, x	; bd 7b 06
B6_0a54:		bne B6_0ac6 ; d0 70

B6_0a56:		lda #$00		; a9 00
B6_0a58:		sta $0669, x	; 9d 69 06
B6_0a5b:		sta $0657, x	; 9d 57 06
B6_0a5e:		jsr $9509		; 20 09 95
B6_0a61:		cmp #$59		; c9 59
B6_0a63:		beq B6_0a7d ; f0 18

B6_0a65:		lda #$33		; a9 33
B6_0a67:		jsr playSound		; 20 5f e2
B6_0a6a:		lda #$40		; a9 40
B6_0a6c:		sta wEntityState.w, x	; 9d 70 04
B6_0a6f:		lda #$10		; a9 10
B6_0a71:		ldy #$3f		; a0 3f
B6_0a73:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0a76:		lda #$59		; a9 59
B6_0a78:		ora #$80		; 09 80
B6_0a7a:		jmp $994c		; 4c 4c 99


B6_0a7d:		lda wEntityPhase.w, x	; bd c1 05
B6_0a80:		cmp #$0b		; c9 0b
B6_0a82:		bne B6_0ac5 ; d0 41

B6_0a84:		lda wBossHealth			; a5 3d
B6_0a86:		bne B6_0abd ; d0 35

B6_0a88:		lda $07f1		; ad f1 07
B6_0a8b:		beq B6_0abd ; f0 30

B6_0a8d:		lda #$30		; a9 30
B6_0a8f:		jsr $9978		; 20 78 99
B6_0a92:		lda #$10		; a9 10
B6_0a94:		ldy #$39		; a0 39
B6_0a96:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0a99:		inc $07ee		; ee ee 07
B6_0a9c:		lda #$09		; a9 09
B6_0a9e:		sta $054e, x	; 9d 4e 05
B6_0aa1:		lda #$00		; a9 00
B6_0aa3:		sta $07f1		; 8d f1 07
B6_0aa6:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_0aa9:		sta wEntityPhase.w, x	; 9d c1 05
B6_0aac:		jsr $99a0		; 20 a0 99
B6_0aaf:		lda #$00		; a9 00
B6_0ab1:		sta $0645, x	; 9d 45 06
B6_0ab4:		lda $07f3		; ad f3 07
B6_0ab7:		ora #$80		; 09 80
B6_0ab9:		sta $07f3		; 8d f3 07
B6_0abc:		rts				; 60 


B6_0abd:		lda #$01		; a9 01
B6_0abf:		sta $07f1		; 8d f1 07
B6_0ac2:		jmp $9952		; 4c 52 99


B6_0ac5:		rts				; 60 


B6_0ac6:		lda $0645, x	; bd 45 06
B6_0ac9:		bne B6_0ad3 ; d0 08

B6_0acb:		jsr $8b95		; 20 95 8b
B6_0ace:		lda #$60		; a9 60
B6_0ad0:		sta $0645, x	; 9d 45 06
B6_0ad3:		dec $0645, x	; de 45 06
B6_0ad6:		lda #$40		; a9 40
B6_0ad8:		sta wEntityState.w, x	; 9d 70 04
B6_0adb:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0ade:		and #$80		; 29 80
B6_0ae0:		bne B6_0b42 ; d0 60

B6_0ae2:		lda #$01		; a9 01
B6_0ae4:		sta $00			; 85 00
B6_0ae6:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0ae9:		and #$7f		; 29 7f
B6_0aeb:		beq B6_0af3 ; f0 06

B6_0aed:		lda #$30		; a9 30
B6_0aef:		sta $02			; 85 02
B6_0af1:		bne B6_0af7 ; d0 04

B6_0af3:		lda #$c0		; a9 c0
B6_0af5:		sta $02			; 85 02
B6_0af7:		lda wEntityBaseX.w, x	; bd 38 04
B6_0afa:		sec				; 38 
B6_0afb:		sbc $02			; e5 02
B6_0afd:		bcs B6_0b06 ; b0 07

B6_0aff:		eor #$ff		; 49 ff
B6_0b01:		clc				; 18 
B6_0b02:		adc #$01		; 69 01
B6_0b04:		dec $00			; c6 00
B6_0b06:		cmp #$04		; c9 04
B6_0b08:		bcs B6_0b1f ; b0 15

B6_0b0a:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0b0d:		and #$80		; 29 80
B6_0b0f:		beq B6_0b14 ; f0 03

B6_0b11:		jsr $8bd2		; 20 d2 8b
B6_0b14:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0b17:		ora #$80		; 09 80
B6_0b19:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0b1c:		jmp $8b30		; 4c 30 8b


B6_0b1f:		lda #$04		; a9 04
B6_0b21:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0b24:		lda $00			; a5 00
B6_0b26:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0b29:		beq B6_0b30 ; f0 05

B6_0b2b:		lda #$0c		; a9 0c
B6_0b2d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0b30:		jsr $9509		; 20 09 95
B6_0b33:		bne B6_0b41 ; d0 0c

B6_0b35:		lda #$10		; a9 10
B6_0b37:		ldy #$3b		; a0 3b
B6_0b39:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0b3c:		lda #$57		; a9 57
B6_0b3e:		jmp $994c		; 4c 4c 99


B6_0b41:		rts				; 60 


B6_0b42:		lda $0633, x	; bd 33 06
B6_0b45:		bne B6_0b75 ; d0 2e

B6_0b47:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0b4a:		and #$7f		; 29 7f
B6_0b4c:		asl a			; 0a
B6_0b4d:		tay				; a8 
B6_0b4e:		lda $8bde, y	; b9 de 8b
B6_0b51:		sta $00			; 85 00
B6_0b53:		lda $8bdf, y	; b9 df 8b
B6_0b56:		sta $01			; 85 01
B6_0b58:		ldy $061d, x	; bc 1d 06
B6_0b5b:		lda ($00), y	; b1 00
B6_0b5d:		cmp #$ff		; c9 ff
B6_0b5f:		beq B6_0b6a ; f0 09

B6_0b61:		sta $02			; 85 02
B6_0b63:		lda #$01		; a9 01
B6_0b65:		sta $00			; 85 00
B6_0b67:		jmp $8af7		; 4c f7 8a


B6_0b6a:		lda #$40		; a9 40
B6_0b6c:		sta $0633, x	; 9d 33 06
B6_0b6f:		lda #$20		; a9 20
B6_0b71:		sta wEntityState.w, x	; 9d 70 04
B6_0b74:		rts				; 60 


B6_0b75:		dec $0633, x	; de 33 06
B6_0b78:		bne B6_0b82 ; d0 08

B6_0b7a:		lda #$40		; a9 40
B6_0b7c:		sta wEntityState.w, x	; 9d 70 04
B6_0b7f:		jsr $8bd2		; 20 d2 8b
B6_0b82:		lda #$00		; a9 00
B6_0b84:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0b87:		lda wEntityBaseX.w		; ad 38 04
B6_0b8a:		cmp wEntityBaseX.w, x	; dd 38 04
B6_0b8d:		bcs B6_0b94 ; b0 05

B6_0b8f:		lda #$01		; a9 01
B6_0b91:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0b94:		rts				; 60 


B6_0b95:		lda #$27		; a9 27
B6_0b97:		jsr $9968		; 20 68 99
B6_0b9a:		lda #$40		; a9 40
B6_0b9c:		sta wEntityState.w, y	; 99 70 04
B6_0b9f:		lda #$80		; a9 80
B6_0ba1:		sta wEntityAI_idx.w, y	; 99 ef 05
B6_0ba4:		lda #$04		; a9 04
B6_0ba6:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_0ba9:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0bac:		beq B6_0bb3 ; f0 05

B6_0bae:		lda #$0c		; a9 0c
B6_0bb0:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_0bb3:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0bb6:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_0bb9:		lda #$f8		; a9 f8
B6_0bbb:		sta $00			; 85 00
B6_0bbd:		lda $061d, x	; bd 1d 06
B6_0bc0:		and #$02		; 29 02
B6_0bc2:		beq B6_0bc8 ; f0 04

B6_0bc4:		lda #$0c		; a9 0c
B6_0bc6:		sta $00			; 85 00
B6_0bc8:		lda wEntityBaseY.w, y	; b9 1c 04
B6_0bcb:		clc				; 18 
B6_0bcc:		adc $00			; 65 00
B6_0bce:		sta wEntityBaseY.w, y	; 99 1c 04
B6_0bd1:		rts				; 60 


B6_0bd2:		inc $061d, x	; fe 1d 06
B6_0bd5:		lda $061d, x	; bd 1d 06
B6_0bd8:		and #$0f		; 29 0f
B6_0bda:		sta $061d, x	; 9d 1d 06
B6_0bdd:		rts				; 60 


B6_0bde:	.db $e2
B6_0bdf:	.db $8b
B6_0be0:	.db $f2
B6_0be1:	.db $8b
B6_0be2:		ldy #$ff		; a0 ff
B6_0be4:		;removed
	.db $d0 $ff

B6_0be6:		;removed
	.db $90 $ff

B6_0be8:		;removed
	.db $d0 $ff

B6_0bea:	.db $80
B6_0beb:	.db $ff
B6_0bec:		;removed
	.db $d0 $ff

B6_0bee:		;removed
	.db $70 $ff

B6_0bf0:		;removed
	.db $d0 $ff

B6_0bf2:		rts				; 60 


B6_0bf3:	.db $ff
B6_0bf4:		jsr $70ff		; 20 ff 70
B6_0bf7:	.db $ff
B6_0bf8:		jsr $80ff		; 20 ff 80
B6_0bfb:	.db $ff
B6_0bfc:		jsr $90ff		; 20 ff 90
B6_0bff:	.db $ff
B6_0c00:		jsr $a5ff		; 20 ff a5
B6_0c03:		and $37f0, x	; 3d f0 37
B6_0c06:		jsr $993b		; 20 3b 99
B6_0c09:		lda $0669, x	; bd 69 06
B6_0c0c:		bne B6_0c38 ; d0 2a

B6_0c0e:		jsr $9509		; 20 09 95
B6_0c11:		bne B6_0c21 ; d0 0e

B6_0c13:		lda #$10		; a9 10
B6_0c15:		ldy #$43		; a0 43
B6_0c17:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0c1a:		lda #$58		; a9 58
B6_0c1c:		ora #$80		; 09 80
B6_0c1e:		jmp $994c		; 4c 4c 99


B6_0c21:		lda wEntityBaseX.w, x	; bd 38 04
B6_0c24:		cmp #$08		; c9 08
B6_0c26:		bcc B6_0c3d ; 90 15

B6_0c28:		cmp #$f8		; c9 f8
B6_0c2a:		bcs B6_0c3d ; b0 11

B6_0c2c:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0c2f:		cmp #$20		; c9 20
B6_0c31:		bcc B6_0c3d ; 90 0a

B6_0c33:		cmp #$f8		; c9 f8
B6_0c35:		bcs B6_0c3d ; b0 06

B6_0c37:		rts				; 60 


B6_0c38:		lda #$33		; a9 33
B6_0c3a:		jsr playSound		; 20 5f e2
B6_0c3d:		jmp $9952		; 4c 52 99


B6_0c40:		lda wEntityBaseX.w, x	; bd 38 04
B6_0c43:		and #$fc		; 29 fc
B6_0c45:		beq B6_0c4d ; f0 06

B6_0c47:		cmp #$fc		; c9 fc
B6_0c49:		bne B6_0c52 ; d0 07

B6_0c4b:		beq B6_0c4f ; f0 02

B6_0c4d:		lda #$04		; a9 04
B6_0c4f:		sta wEntityBaseX.w, x	; 9d 38 04
B6_0c52:		lda $07f3		; ad f3 07
B6_0c55:		cmp #$01		; c9 01
B6_0c57:		bne B6_0c9b ; d0 42

B6_0c59:		lda #$01		; a9 01
B6_0c5b:		sta wBaseIRQFuncIdx			; 85 3f
B6_0c5d:		jsr $9509		; 20 09 95
B6_0c60:		cmp #$5b		; c9 5b
B6_0c62:		beq B6_0c78 ; f0 14

B6_0c64:		lda #$50		; a9 50
B6_0c66:		jsr $9978		; 20 78 99
B6_0c69:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0c6c:		lda #$10		; a9 10
B6_0c6e:		ldy #$45		; a0 45
B6_0c70:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0c73:		lda #$5b		; a9 5b
B6_0c75:		jmp $994c		; 4c 4c 99


B6_0c78:		lda wEntityPhase.w, x	; bd c1 05
B6_0c7b:		cmp #$09		; c9 09
B6_0c7d:		bne B6_0c9a ; d0 1b

B6_0c7f:		inc $07ee		; ee ee 07
B6_0c82:		lda $07f3		; ad f3 07
B6_0c85:		ora #$80		; 09 80
B6_0c87:		sta $07f3		; 8d f3 07
B6_0c8a:		jsr $99a0		; 20 a0 99
B6_0c8d:		lda #$00		; a9 00
B6_0c8f:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_0c92:		sta wEntityPhase.w, x	; 9d c1 05
B6_0c95:		lda #$09		; a9 09
B6_0c97:		sta $054e, x	; 9d 4e 05
B6_0c9a:		rts				; 60 


B6_0c9b:		jsr $9956		; 20 56 99
B6_0c9e:		lda $07f3		; ad f3 07
B6_0ca1:		bne B6_0c9a ; d0 f7

B6_0ca3:		lda #$30		; a9 30
B6_0ca5:		sta $0657, x	; 9d 57 06
B6_0ca8:		lda #$05		; a9 05
B6_0caa:		jsr $995c		; 20 5c 99
B6_0cad:		jsr $9509		; 20 09 95
B6_0cb0:		beq B6_0cea ; f0 38

B6_0cb2:		cmp #$4c		; c9 4c
B6_0cb4:		beq B6_0cc2 ; f0 0c

B6_0cb6:		cmp #$4d		; c9 4d
B6_0cb8:		beq B6_0cc6 ; f0 0c

B6_0cba:		cmp #$4e		; c9 4e
B6_0cbc:		bne B6_0cc1 ; d0 03

B6_0cbe:		jmp $8d2c		; 4c 2c 8d


B6_0cc1:		rts				; 60 


B6_0cc2:		lda #$10		; a9 10
B6_0cc4:		bne B6_0cc8 ; d0 02

B6_0cc6:		lda #$0e		; a9 0e
B6_0cc8:		cmp wEntityPhase.w, x	; dd c1 05
B6_0ccb:		bne B6_0ce9 ; d0 1c

B6_0ccd:		lda #$00		; a9 00
B6_0ccf:		ldy #$20		; a0 20
B6_0cd1:		jsr func_1f_1c1e		; 20 1e fc
B6_0cd4:		beq B6_0ce9 ; f0 13

B6_0cd6:		inc wEntityPhase.w, x	; fe c1 05
B6_0cd9:		lda #$37		; a9 37
B6_0cdb:		jsr playSound		; 20 5f e2
B6_0cde:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_0ce1:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0ce4:		and #$f0		; 29 f0
B6_0ce6:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_0ce9:		rts				; 60 


B6_0cea:		lda #$00		; a9 00
B6_0cec:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0cef:		lda #$04		; a9 04
B6_0cf1:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0cf4:		lda wEntityBaseX.w		; ad 38 04
B6_0cf7:		cmp wEntityBaseX.w, x	; dd 38 04
B6_0cfa:		bcs B6_0d06 ; b0 0a

B6_0cfc:		lda #$01		; a9 01
B6_0cfe:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0d01:		lda #$0c		; a9 0c
B6_0d03:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0d06:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_0d09:		lda $8d8e, y	; b9 8e 8d
B6_0d0c:		asl a			; 0a
B6_0d0d:		tay				; a8 
B6_0d0e:		sty $06			; 84 06
B6_0d10:		lda $8d97, y	; b9 97 8d
B6_0d13:		tay				; a8 
B6_0d14:		lda #$10		; a9 10
B6_0d16:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0d19:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_0d1c:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0d1f:		and #$07		; 29 07
B6_0d21:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0d24:		ldy $06			; a4 06
B6_0d26:		lda $8d96, y	; b9 96 8d
B6_0d29:		jmp $994c		; 4c 4c 99


B6_0d2c:		lda wEntityPhase.w, x	; bd c1 05
B6_0d2f:		cmp #$02		; c9 02
B6_0d31:		bne B6_0d8d ; d0 5a

B6_0d33:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0d36:		asl a			; 0a
B6_0d37:		tay				; a8 
B6_0d38:		lda $8d9e, y	; b9 9e 8d
B6_0d3b:		sta $08			; 85 08
B6_0d3d:		lda $8d9f, y	; b9 9f 8d
B6_0d40:		sta $09			; 85 09
B6_0d42:		lda #$01		; a9 01
B6_0d44:		sta $17			; 85 17
B6_0d46:		lda #$23		; a9 23
B6_0d48:		jsr $9968		; 20 68 99
B6_0d4b:		lda wEntityBaseX.w, x	; bd 38 04
B6_0d4e:		sta wEntityBaseX.w, y	; 99 38 04
B6_0d51:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0d54:		sta wEntityBaseY.w, y	; 99 1c 04
B6_0d57:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0d5a:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_0d5d:		lda #$cf		; a9 cf
B6_0d5f:		sta wEntityAI_idx.w, y	; 99 ef 05
B6_0d62:		lda #$00		; a9 00
B6_0d64:		sta wEntityPhase.w, y	; 99 c1 05
B6_0d67:		lda #$40		; a9 40
B6_0d69:		sta wEntityState.w, y	; 99 70 04
B6_0d6c:		lda $17			; a5 17
B6_0d6e:		clc				; 18 
B6_0d6f:		adc wPlayerStateDoubled.w, x	; 7d 65 05
B6_0d72:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_0d75:		txa				; 8a 
B6_0d76:		pha				; 48 
B6_0d77:		tya				; 98 
B6_0d78:		tax				; aa 
B6_0d79:		ldy #$0a		; a0 0a
B6_0d7b:		lda #$14		; a9 14
B6_0d7d:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_0d80:		jsr updateEntityXanimationFrame		; 20 75 ef
B6_0d83:		pla				; 68 
B6_0d84:		tax				; aa 
B6_0d85:		dec $17			; c6 17
B6_0d87:		lda $17			; a5 17
B6_0d89:		cmp #$fe		; c9 fe
B6_0d8b:		bne B6_0d46 ; d0 b9

B6_0d8d:		rts				; 60 


B6_0d8e:		.db $00				; 00
B6_0d8f:		ora ($00, x)	; 01 00
B6_0d91:		ora ($00, x)	; 01 00
B6_0d93:	.db $02
B6_0d94:		.db $00				; 00
B6_0d95:	.db $03
B6_0d96:	.db $4b
B6_0d97:		bmi B6_0de5 ; 30 4c

B6_0d99:		and ($4d), y	; 31 4d
B6_0d9b:		and ($4e), y	; 31 4e
B6_0d9d:		bmi B6_0d9f ; 30 00

B6_0d9f:		.db $00				; 00
B6_0da0:		.db $00				; 00
B6_0da1:		.db $00				; 00
B6_0da2:		lda #$40		; a9 40
B6_0da4:		sta wEntityState.w, x	; 9d 70 04
B6_0da7:		lda $07f3		; ad f3 07
B6_0daa:		cmp #$01		; c9 01
B6_0dac:		beq B6_0dba ; f0 0c

B6_0dae:		lda #$30		; a9 30
B6_0db0:		sta $0657, x	; 9d 57 06
B6_0db3:		lda $0669, x	; bd 69 06
B6_0db6:		and #$f0		; 29 f0
B6_0db8:		beq B6_0dc2 ; f0 08

B6_0dba:		lda #$00		; a9 00
B6_0dbc:		sta $0669, x	; 9d 69 06
B6_0dbf:		jmp $9952		; 4c 52 99


B6_0dc2:		lda #$00		; a9 00
B6_0dc4:		sec				; 38 
B6_0dc5:		sbc wEntityBaseX.w, x	; fd 38 04
B6_0dc8:		bcs B6_0dcf ; b0 05

B6_0dca:		eor #$ff		; 49 ff
B6_0dcc:		clc				; 18 
B6_0dcd:		adc #$01		; 69 01
B6_0dcf:		cmp #$04		; c9 04
B6_0dd1:		bcs B6_0dd6 ; b0 03

B6_0dd3:		jmp $9952		; 4c 52 99


B6_0dd6:		rts				; 60 


B6_0dd7:		lda $78			; a5 78
B6_0dd9:		beq B6_0de6 ; f0 0b

B6_0ddb:		lda $05d8, x	; bd d8 05
B6_0dde:		cmp #$40		; c9 40
B6_0de0:		bcs B6_0dfc ; b0 1a

B6_0de2:		inc $05d8, x	; fe d8 05
B6_0de5:		rts				; 60 


B6_0de6:		lda #$40		; a9 40
B6_0de8:		sta wEntityState.w, x	; 9d 70 04
B6_0deb:		lda #$00		; a9 00
B6_0ded:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0df0:		lda #$04		; a9 04
B6_0df2:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0df5:		lda #$0a		; a9 0a
B6_0df7:		ldy #$19		; a0 19
B6_0df9:		jmp setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 4c 6e ef


B6_0dfc:		lda #$00		; a9 00
B6_0dfe:		sta $05d8, x	; 9d d8 05
B6_0e01:		sta $07ed		; 8d ed 07
B6_0e04:		lda $07f3		; ad f3 07
B6_0e07:		and #$7f		; 29 7f
B6_0e09:		sta $07f3		; 8d f3 07
B6_0e0c:		lda #$1a		; a9 1a
B6_0e0e:		sta $0645, x	; 9d 45 06
B6_0e11:		rts				; 60 


B6_0e12:		lda $07f3		; ad f3 07
B6_0e15:		cmp #$01		; c9 01
B6_0e17:		bne B6_0e24 ; d0 0b

B6_0e19:		lda #$00		; a9 00
B6_0e1b:		sta $0657, x	; 9d 57 06
B6_0e1e:		sta $0669, x	; 9d 69 06
B6_0e21:		jmp $9240		; 4c 40 92


B6_0e24:		lda #$01		; a9 01
B6_0e26:		jsr $9956		; 20 56 99
B6_0e29:		bcs B6_0e11 ; b0 e6

B6_0e2b:		jsr $993b		; 20 3b 99
B6_0e2e:		lda #$01		; a9 01
B6_0e30:		jsr $995c		; 20 5c 99
B6_0e33:		lda $0669, x	; bd 69 06
B6_0e36:		sta $16			; 85 16
B6_0e38:		and #$0f		; 29 0f
B6_0e3a:		cmp #$02		; c9 02
B6_0e3c:		beq B6_0e4e ; f0 10

B6_0e3e:		jsr $9309		; 20 09 93
B6_0e41:		cmp #$41		; c9 41
B6_0e43:		beq B6_0e49 ; f0 04

B6_0e45:		cmp #$42		; c9 42
B6_0e47:		bne B6_0e4e ; d0 05

B6_0e49:		lda #$00		; a9 00
B6_0e4b:		sta $0669, x	; 9d 69 06
B6_0e4e:		jsr $9309		; 20 09 93
B6_0e51:		cmp #$41		; c9 41
B6_0e53:		bcc B6_0e56 ; 90 01

B6_0e55:		rts				; 60 


B6_0e56:		jsr $999c		; 20 9c 99
B6_0e59:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0e5c:		cmp #$60		; c9 60
B6_0e5e:		bcs B6_0e8a ; b0 2a

B6_0e60:		lda wEntityBaseX.w, x	; bd 38 04
B6_0e63:		cmp #$70		; c9 70
B6_0e65:		bcc B6_0e6b ; 90 04

B6_0e67:		lda $16			; a5 16
B6_0e69:		bne B6_0e7f ; d0 14

B6_0e6b:		lda wEntityBaseX.w, x	; bd 38 04
B6_0e6e:		cmp #$50		; c9 50
B6_0e70:		bcc B6_0e8a ; 90 18

B6_0e72:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0e75:		and #$01		; 29 01
B6_0e77:		beq B6_0e8a ; f0 11

B6_0e79:		lda $00			; a5 00
B6_0e7b:		cmp #$20		; c9 20
B6_0e7d:		bcs B6_0e8a ; b0 0b

B6_0e7f:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0e82:		and #$fe		; 29 fe
B6_0e84:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_0e87:		jmp $9159		; 4c 59 91


B6_0e8a:		jsr $9309		; 20 09 93
B6_0e8d:		cmp #$14		; c9 14
B6_0e8f:		bne B6_0ea4 ; d0 13

B6_0e91:		lda wEntityBaseX.w, x	; bd 38 04
B6_0e94:		cmp #$40		; c9 40
B6_0e96:		bcs B6_0ea4 ; b0 0c

B6_0e98:		lda #$00		; a9 00
B6_0e9a:		ldy #$f0		; a0 f0
B6_0e9c:		jsr func_1f_1c1e		; 20 1e fc
B6_0e9f:		beq B6_0ea4 ; f0 03

B6_0ea1:		jmp $9159		; 4c 59 91


B6_0ea4:		jsr $9309		; 20 09 93
B6_0ea7:		cmp #$40		; c9 40
B6_0ea9:		beq B6_0eb2 ; f0 07

B6_0eab:		cmp #$12		; c9 12
B6_0ead:		beq B6_0eb2 ; f0 03

B6_0eaf:		jmp $8f35		; 4c 35 8f


B6_0eb2:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0eb5:		cmp #$50		; c9 50
B6_0eb7:		bcs B6_0ef1 ; b0 38

B6_0eb9:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_0ebc:		and #$04		; 29 04
B6_0ebe:		beq B6_0f35 ; f0 75

B6_0ec0:		lda $061d, x	; bd 1d 06
B6_0ec3:		and #$fd		; 29 fd
B6_0ec5:		sta $061d, x	; 9d 1d 06
B6_0ec8:		and #$01		; 29 01
B6_0eca:		bne B6_0f35 ; d0 69

B6_0ecc:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_0ecf:		and #$01		; 29 01
B6_0ed1:		bne B6_0f35 ; d0 62

B6_0ed3:		lda $00			; a5 00
B6_0ed5:		cmp #$20		; c9 20
B6_0ed7:		bcs B6_0f35 ; b0 5c

B6_0ed9:		lda wEntityBaseX.w, x	; bd 38 04
B6_0edc:		cmp #$30		; c9 30
B6_0ede:		bcc B6_0f35 ; 90 55

B6_0ee0:		cmp #$d0		; c9 d0
B6_0ee2:		bcs B6_0f35 ; b0 51

B6_0ee4:		lda $061d, x	; bd 1d 06
B6_0ee7:		ora #$01		; 09 01
B6_0ee9:		sta $061d, x	; 9d 1d 06
B6_0eec:		lda #$42		; a9 42
B6_0eee:		jmp $9215		; 4c 15 92


B6_0ef1:		lda $061d, x	; bd 1d 06
B6_0ef4:		and #$fe		; 29 fe
B6_0ef6:		sta $061d, x	; 9d 1d 06
B6_0ef9:		and #$02		; 29 02
B6_0efb:		bne B6_0f35 ; d0 38

B6_0efd:		lda $17			; a5 17
B6_0eff:		cmp wEntityFacingLeft.w, x	; dd a8 04
B6_0f02:		bne B6_0f35 ; d0 31

B6_0f04:		lda $00			; a5 00
B6_0f06:		cmp #$10		; c9 10
B6_0f08:		bcc B6_0f35 ; 90 2b

B6_0f0a:		lda wEntityBaseY.w		; ad 1c 04
B6_0f0d:		sec				; 38 
B6_0f0e:		sbc wEntityBaseY.w, x	; fd 1c 04
B6_0f11:		bcs B6_0f18 ; b0 05

B6_0f13:		eor #$ff		; 49 ff
B6_0f15:		clc				; 18 
B6_0f16:		adc #$01		; 69 01
B6_0f18:		cmp #$0c		; c9 0c
B6_0f1a:		bcs B6_0f35 ; b0 19

B6_0f1c:		lda $061d, x	; bd 1d 06
B6_0f1f:		ora #$02		; 09 02
B6_0f21:		sta $061d, x	; 9d 1d 06
B6_0f24:		lda #$10		; a9 10
B6_0f26:		ldy #$29		; a0 29
B6_0f28:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_0f2b:		lda #$00		; a9 00
B6_0f2d:		sta wEntityState.w, x	; 9d 70 04
B6_0f30:		lda #$41		; a9 41
B6_0f32:		jmp $9215		; 4c 15 92


B6_0f35:		lda wEntityBaseX.w, x	; bd 38 04
B6_0f38:		cmp #$f0		; c9 f0
B6_0f3a:		bcc B6_0f69 ; 90 2d

B6_0f3c:		lda #$ef		; a9 ef
B6_0f3e:		sta wEntityBaseX.w, x	; 9d 38 04
B6_0f41:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0f44:		eor #$01		; 49 01
B6_0f46:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_0f49:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_0f4c:		clc				; 18 
B6_0f4d:		adc #$08		; 69 08
B6_0f4f:		and #$0f		; 29 0f
B6_0f51:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_0f54:		lda wEntityHorizSubSpeed.w, x	; bd 09 05
B6_0f57:		eor #$ff		; 49 ff
B6_0f59:		clc				; 18 
B6_0f5a:		adc #$01		; 69 01
B6_0f5c:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_0f5f:		lda wEntityHorizSpeed.w, x	; bd f2 04
B6_0f62:		eor #$ff		; 49 ff
B6_0f64:		adc #$00		; 69 00
B6_0f66:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_0f69:		lda #$00		; a9 00
B6_0f6b:		sta $07			; 85 07
B6_0f6d:		jsr $9309		; 20 09 93
B6_0f70:		cmp #$14		; c9 14
B6_0f72:		bcs B6_0f9d ; b0 29

B6_0f74:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_0f77:		and #$04		; 29 04
B6_0f79:		beq B6_0f8a ; f0 0f

B6_0f7b:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0f7e:		cmp #$60		; c9 60
B6_0f80:		bcc B6_0f9d ; 90 1b

B6_0f82:		ldy #$00		; a0 00
B6_0f84:		lda #$10		; a9 10
B6_0f86:		sta $01			; 85 01
B6_0f88:		bne B6_0fa3 ; d0 19

B6_0f8a:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_0f8d:		and #$08		; 29 08
B6_0f8f:		bne B6_0f95 ; d0 04

B6_0f91:		ldy #$f0		; a0 f0
B6_0f93:		bne B6_0f97 ; d0 02

B6_0f95:		ldy #$10		; a0 10
B6_0f97:		lda #$00		; a9 00
B6_0f99:		sta $01			; 85 01
B6_0f9b:		beq B6_0fb1 ; f0 14

B6_0f9d:		ldy #$00		; a0 00
B6_0f9f:		lda #$08		; a9 08
B6_0fa1:		sta $01			; 85 01
B6_0fa3:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0fa6:		beq B6_0fb1 ; f0 09

B6_0fa8:		lda $01			; a5 01
B6_0faa:		eor #$ff		; 49 ff
B6_0fac:		clc				; 18 
B6_0fad:		adc #$01		; 69 01
B6_0faf:		sta $01			; 85 01
B6_0fb1:		lda $01			; a5 01
B6_0fb3:		jsr func_1f_1c1e		; 20 1e fc
B6_0fb6:		beq B6_0fbc ; f0 04

B6_0fb8:		lda #$01		; a9 01
B6_0fba:		sta $07			; 85 07
B6_0fbc:		jsr $9309		; 20 09 93
B6_0fbf:		cmp #$14		; c9 14
B6_0fc1:		bcs B6_0fd7 ; b0 14

B6_0fc3:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_0fc6:		and #$04		; 29 04
B6_0fc8:		beq B6_0fdd ; f0 13

B6_0fca:		lda wEntityBaseY.w, x	; bd 1c 04
B6_0fcd:		cmp #$60		; c9 60
B6_0fcf:		bcs B6_0fd7 ; b0 06

B6_0fd1:		lda #$00		; a9 00
B6_0fd3:		ldy #$f0		; a0 f0
B6_0fd5:		bne B6_0fea ; d0 13

B6_0fd7:		lda #$00		; a9 00
B6_0fd9:		ldy #$10		; a0 10
B6_0fdb:		bne B6_0fea ; d0 0d

B6_0fdd:		ldy #$00		; a0 00
B6_0fdf:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_0fe2:		bne B6_0fe8 ; d0 04

B6_0fe4:		lda #$11		; a9 11
B6_0fe6:		bne B6_0fea ; d0 02

B6_0fe8:		lda #$ef		; a9 ef
B6_0fea:		jsr func_1f_1c1e		; 20 1e fc
B6_0fed:		beq B6_0ff5 ; f0 06

B6_0fef:		lda $07			; a5 07
B6_0ff1:		ora #$02		; 09 02
B6_0ff3:		sta $07			; 85 07
B6_0ff5:		jsr $9309		; 20 09 93
B6_0ff8:		beq B6_1005 ; f0 0b

B6_0ffa:		cmp #$40		; c9 40
B6_0ffc:		beq B6_1005 ; f0 07

B6_0ffe:		cmp #$14		; c9 14
B6_1000:		bcs B6_1008 ; b0 06

B6_1002:		jmp $9148		; 4c 48 91


B6_1005:		jmp $9104		; 4c 04 91


B6_1008:		lda $07			; a5 07
B6_100a:		and #$01		; 29 01
B6_100c:		beq B6_105a ; f0 4c

B6_100e:		lda wEntityBaseX.w, x	; bd 38 04
B6_1011:		and #$0f		; 29 0f
B6_1013:		beq B6_1032 ; f0 1d

B6_1015:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_1018:		beq B6_1027 ; f0 0d

B6_101a:		lda wEntityBaseX.w, x	; bd 38 04
B6_101d:		clc				; 18 
B6_101e:		adc #$10		; 69 10
B6_1020:		and #$f0		; 29 f0
B6_1022:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1025:		bne B6_1032 ; d0 0b

B6_1027:		lda wEntityBaseX.w, x	; bd 38 04
B6_102a:		sec				; 38 
B6_102b:		sbc #$10		; e9 10
B6_102d:		and #$f0		; 29 f0
B6_102f:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1032:		jsr $9309		; 20 09 93
B6_1035:		cmp #$15		; c9 15
B6_1037:		bne B6_1043 ; d0 0a

B6_1039:		lda wEntityBaseX.w, x	; bd 38 04
B6_103c:		cmp #$38		; c9 38
B6_103e:		bcc B6_1043 ; 90 03

B6_1040:		jmp $9155		; 4c 55 91


B6_1043:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_1046:		and #$0f		; 29 0f
B6_1048:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_104b:		lda #$00		; a9 00
B6_104d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1050:		lda #$13		; a9 13
B6_1052:		sta $0633, x	; 9d 33 06
B6_1055:		lda #$12		; a9 12
B6_1057:		jmp $9215		; 4c 15 92


B6_105a:		lda $07			; a5 07
B6_105c:		and #$02		; 29 02
B6_105e:		bne B6_1063 ; d0 03

B6_1060:		jmp $9103		; 4c 03 91


B6_1063:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_1066:		and #$04		; 29 04
B6_1068:		bne B6_1075 ; d0 0b

B6_106a:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_106d:		clc				; 18 
B6_106e:		adc #$10		; 69 10
B6_1070:		ora #$04		; 09 04
B6_1072:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_1075:		lda $07ed		; ad ed 07
B6_1078:		cmp #$03		; c9 03
B6_107a:		bcc B6_1096 ; 90 1a

B6_107c:		lda wEntityBaseY.w, x	; bd 1c 04
B6_107f:		cmp #$a0		; c9 a0
B6_1081:		bcc B6_108a ; 90 07

B6_1083:		lda wEntityBaseX.w, x	; bd 38 04
B6_1086:		cmp #$60		; c9 60
B6_1088:		bcc B6_1096 ; 90 0c

B6_108a:		lda #$0c		; a9 0c
B6_108c:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_108f:		lda #$01		; a9 01
B6_1091:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1094:		bne B6_10b4 ; d0 1e

B6_1096:		lda $17			; a5 17
B6_1098:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_109b:		lda #$04		; a9 04
B6_109d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_10a0:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_10a3:		beq B6_10b4 ; f0 0f

B6_10a5:		lda #$0c		; a9 0c
B6_10a7:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_10aa:		bne B6_10b4 ; d0 08

B6_10ac:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_10af:		and #$fb		; 29 fb
B6_10b1:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_10b4:		jsr $9309		; 20 09 93
B6_10b7:		cmp #$14		; c9 14
B6_10b9:		bne B6_10c2 ; d0 07

B6_10bb:		lda wEntityPhase.w, x	; bd c1 05
B6_10be:		cmp #$04		; c9 04
B6_10c0:		bcc B6_1103 ; 90 41

B6_10c2:		lda #$0a		; a9 0a
B6_10c4:		ldy #$19		; a0 19
B6_10c6:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_10c9:		lda #$1a		; a9 1a
B6_10cb:		sta $0645, x	; 9d 45 06
B6_10ce:		lda wEntityState.w, x	; bd 70 04
B6_10d1:		and #$df		; 29 df
B6_10d3:		sta wEntityState.w, x	; 9d 70 04
B6_10d6:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_10d9:		bne B6_10e3 ; d0 08

B6_10db:		lda $17			; a5 17
B6_10dd:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_10e0:		jsr $930f		; 20 0f 93
B6_10e3:		lda #$00		; a9 00
B6_10e5:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_10e8:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_10eb:		jsr $9309		; 20 09 93
B6_10ee:		cmp #$40		; c9 40
B6_10f0:		beq B6_10fe ; f0 0c

B6_10f2:		lda #$0a		; a9 0a
B6_10f4:		ldy #$12		; a0 12
B6_10f6:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_10f9:		lda #$1a		; a9 1a
B6_10fb:		sta $0645, x	; 9d 45 06
B6_10fe:		lda #$c0		; a9 c0
B6_1100:		jmp $9215		; 4c 15 92


B6_1103:		rts				; 60 


B6_1104:		lda $07			; a5 07
B6_1106:		and #$02		; 29 02
B6_1108:		bne B6_110d ; d0 03

B6_110a:		jmp $9159		; 4c 59 91


B6_110d:		lda wEntityBaseX.w, x	; bd 38 04
B6_1110:		lsr a			; 4a
B6_1111:		lsr a			; 4a
B6_1112:		lsr a			; 4a
B6_1113:		lsr a			; 4a
B6_1114:		tay				; a8 
B6_1115:		lda $9138, y	; b9 38 91
B6_1118:		bne B6_112b ; d0 11

B6_111a:		lda $00			; a5 00
B6_111c:		cmp #$18		; c9 18
B6_111e:		bcc B6_112b ; 90 0b

B6_1120:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_1123:		and #$fd		; 29 fd
B6_1125:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_1128:		jmp $90d6		; 4c d6 90


B6_112b:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_112e:		and #$fd		; 29 fd
B6_1130:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_1133:		lda #$94		; a9 94
B6_1135:		jmp $9215		; 4c 15 92


B6_1138:		.db $00				; 00
B6_1139:		.db $00				; 00
B6_113a:		ora ($00, x)	; 01 00
B6_113c:		ora ($02, x)	; 01 02
B6_113e:		.db $00				; 00
B6_113f:		.db $00				; 00
B6_1140:		ora ($00, x)	; 01 00
B6_1142:		.db $00				; 00
B6_1143:		.db $00				; 00
B6_1144:		.db $00				; 00
B6_1145:		ora ($00, x)	; 01 00
B6_1147:		.db $00				; 00
B6_1148:		lda $07			; a5 07
B6_114a:		and #$01		; 29 01
B6_114c:		bne B6_1174 ; d0 26

B6_114e:		lda $07			; a5 07
B6_1150:		and #$02		; 29 02
B6_1152:		beq B6_1159 ; f0 05

B6_1154:		rts				; 60 


B6_1155:		lda #$43		; a9 43
B6_1157:		bne B6_115b ; d0 02

B6_1159:		lda #$15		; a9 15
B6_115b:		sta $16			; 85 16
B6_115d:		jsr $930f		; 20 0f 93
B6_1160:		lda #$0a		; a9 0a
B6_1162:		ldy #$19		; a0 19
B6_1164:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1167:		lda wEntityState.w, x	; bd 70 04
B6_116a:		and #$df		; 29 df
B6_116c:		sta wEntityState.w, x	; 9d 70 04
B6_116f:		lda $16			; a5 16
B6_1171:		jmp $9215		; 4c 15 92


B6_1174:		lda $07			; a5 07
B6_1176:		and #$02		; 29 02
B6_1178:		beq B6_1159 ; f0 df

B6_117a:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_117d:		and #$04		; 29 04
B6_117f:		beq B6_11c5 ; f0 44

B6_1181:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_1184:		and #$0f		; 29 0f
B6_1186:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_1189:		lda #$00		; a9 00
B6_118b:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_118e:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1191:		cmp #$60		; c9 60
B6_1193:		bcs B6_11c1 ; b0 2c

B6_1195:		lda #$08		; a9 08
B6_1197:		sta $01			; 85 01
B6_1199:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_119c:		bne B6_11a7 ; d0 09

B6_119e:		lda $01			; a5 01
B6_11a0:		eor #$ff		; 49 ff
B6_11a2:		clc				; 18 
B6_11a3:		adc #$01		; 69 01
B6_11a5:		sta $01			; 85 01
B6_11a7:		lda wEntityBaseX.w, x	; bd 38 04
B6_11aa:		and #$f8		; 29 f8
B6_11ac:		clc				; 18 
B6_11ad:		adc $01			; 65 01
B6_11af:		cmp #$28		; c9 28
B6_11b1:		bcs B6_11b5 ; b0 02

B6_11b3:		lda #$28		; a9 28
B6_11b5:		sta wEntityBaseX.w, x	; 9d 38 04
B6_11b8:		lda #$08		; a9 08
B6_11ba:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_11bd:		ldy #$15		; a0 15
B6_11bf:		bne B6_1207 ; d0 46

B6_11c1:		ldy #$13		; a0 13
B6_11c3:		bne B6_1207 ; d0 42

B6_11c5:		lda $1f			; a5 1f
B6_11c7:		and #$01		; 29 01
B6_11c9:		ora wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 1d 06 06
B6_11cc:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_11cf:		lda wEntityBaseY.w, x	; bd 1c 04
B6_11d2:		and #$f0		; 29 f0
B6_11d4:		sta $01			; 85 01
B6_11d6:		cmp #$60		; c9 60
B6_11d8:		bcc B6_11de ; 90 04

B6_11da:		lda $01			; a5 01
B6_11dc:		bne B6_11e3 ; d0 05

B6_11de:		lda $01			; a5 01
B6_11e0:		clc				; 18 
B6_11e1:		adc #$0f		; 69 0f
B6_11e3:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_11e6:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_11e9:		eor #$01		; 49 01
B6_11eb:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_11ee:		ldy #$14		; a0 14
B6_11f0:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_11f3:		and #$08		; 29 08
B6_11f5:		beq B6_11f9 ; f0 02

B6_11f7:		ldy #$12		; a0 12
B6_11f9:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_11fc:		bne B6_1202 ; d0 04

B6_11fe:		lda #$04		; a9 04
B6_1200:		bne B6_1204 ; d0 02

B6_1202:		lda #$0c		; a9 0c
B6_1204:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1207:		tya				; 98 
B6_1208:		sta $0633, x	; 9d 33 06
B6_120b:		lda #$0a		; a9 0a
B6_120d:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1210:		jsr updateEntityXanimationFrame		; 20 75 ef
B6_1213:		lda #$13		; a9 13
B6_1215:		sta $07			; 85 07
B6_1217:		jsr $9309		; 20 09 93
B6_121a:		cmp $07			; c5 07
B6_121c:		beq B6_1233 ; f0 15

B6_121e:		cmp #$14		; c9 14
B6_1220:		bne B6_1225 ; d0 03

B6_1222:		inc $07ed		; ee ed 07
B6_1225:		cmp #$12		; c9 12
B6_1227:		bne B6_122e ; d0 05

B6_1229:		lda #$00		; a9 00
B6_122b:		sta $07ed		; 8d ed 07
B6_122e:		lda $07			; a5 07
B6_1230:		jmp $994c		; 4c 4c 99


B6_1233:		rts				; 60 


B6_1234:		.db $00				; 00
B6_1235:	.db $02
B6_1236:		ora ($03, x)	; 01 03
B6_1238:	.db $14
B6_1239:	.db $13
B6_123a:	.db $12
B6_123b:	.db $13
B6_123c:	.db $12
B6_123d:	.db $13
B6_123e:	.db $14
B6_123f:	.db $13
B6_1240:		jsr $9309		; 20 09 93
B6_1243:		cmp #$22		; c9 22
B6_1245:		beq B6_125c ; f0 15

B6_1247:		cmp #$21		; c9 21
B6_1249:		beq B6_1263 ; f0 18

B6_124b:		lda #$20		; a9 20
B6_124d:		jsr $9978		; 20 78 99
B6_1250:		lda #$0a		; a9 0a
B6_1252:		ldy #$18		; a0 18
B6_1254:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1257:		lda #$21		; a9 21
B6_1259:		jmp $994c		; 4c 4c 99


B6_125c:		inc $07f3		; ee f3 07
B6_125f:		jsr $9956		; 20 56 99
B6_1262:		rts				; 60 


B6_1263:		lda #$40		; a9 40
B6_1265:		sta wEntityState.w, x	; 9d 70 04
B6_1268:		lda #$04		; a9 04
B6_126a:		ldy #$0c		; a0 0c
B6_126c:		jsr func_1f_1c1e		; 20 1e fc
B6_126f:		beq B6_1274 ; f0 03

B6_1271:		inc wEntityPhase.w, x	; fe c1 05
B6_1274:		rts				; 60 


B6_1275:		jsr $993b		; 20 3b 99
B6_1278:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_127b:		bne B6_129c ; d0 1f

B6_127d:		lda #$00		; a9 00
B6_127f:		sta $00			; 85 00
B6_1281:		lda #$fa		; a9 fa
B6_1283:		sta $01			; 85 01
B6_1285:		lda #$04		; a9 04
B6_1287:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_128a:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_128d:		beq B6_1294 ; f0 05

B6_128f:		lda #$0c		; a9 0c
B6_1291:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1294:		jsr $92f3		; 20 f3 92
B6_1297:		lda #$96		; a9 96
B6_1299:		jsr $994c		; 20 4c 99
B6_129c:		lda $07f3		; ad f3 07
B6_129f:		and #$3f		; 29 3f
B6_12a1:		bne B6_12b6 ; d0 13

B6_12a3:		lda wEntityBaseY.w, x	; bd 1c 04
B6_12a6:		cmp #$f8		; c9 f8
B6_12a8:		bcs B6_12b6 ; b0 0c

B6_12aa:		lda wEntityBaseX.w, x	; bd 38 04
B6_12ad:		cmp #$08		; c9 08
B6_12af:		bcc B6_12b6 ; 90 05

B6_12b1:		cmp #$f8		; c9 f8
B6_12b3:		bcs B6_12b6 ; b0 01

B6_12b5:		rts				; 60 


B6_12b6:		jmp $9952		; 4c 52 99


B6_12b9:		jsr $993b		; 20 3b 99
B6_12bc:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_12bf:		bne B6_12f0 ; d0 2f

B6_12c1:		lda #$10		; a9 10
B6_12c3:		sta $00			; 85 00
B6_12c5:		lda #$f8		; a9 f8
B6_12c7:		sta $01			; 85 01
B6_12c9:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_12cc:		beq B6_12d6 ; f0 08

B6_12ce:		lda #$f0		; a9 f0
B6_12d0:		sta $00			; 85 00
B6_12d2:		lda #$f8		; a9 f8
B6_12d4:		sta $01			; 85 01
B6_12d6:		jsr $92f3		; 20 f3 92
B6_12d9:		lda wEntityBaseX.w		; ad 38 04
B6_12dc:		sta $04			; 85 04
B6_12de:		lda wEntityBaseY.w		; ad 1c 04
B6_12e1:		sta $05			; 85 05
B6_12e3:		jsr $ff30		; 20 30 ff
B6_12e6:		lda $00			; a5 00
B6_12e8:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_12eb:		lda #$e4		; a9 e4
B6_12ed:		jsr $994c		; 20 4c 99
B6_12f0:		jmp $929c		; 4c 9c 92


B6_12f3:		lda wEntityBaseX.w, x	; bd 38 04
B6_12f6:		clc				; 18 
B6_12f7:		adc $00			; 65 00
B6_12f9:		sta wEntityBaseX.w, x	; 9d 38 04
B6_12fc:		lda wEntityBaseY.w, x	; bd 1c 04
B6_12ff:		clc				; 18 
B6_1300:		adc $01			; 65 01
B6_1302:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1305:		inc wEntityAlarmOrStartYforSinusoidalMovement.w, x	; fe 06 06
B6_1308:		rts				; 60 


B6_1309:		lda wEntityAI_idx.w, x	; bd ef 05
B6_130c:		and #$7f		; 29 7f
B6_130e:		rts				; 60 


B6_130f:		ldy wEntityFacingLeft.w, x	; bc a8 04
B6_1312:		lda $9319, y	; b9 19 93
B6_1315:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1318:		rts				; 60 


B6_1319:	.db $04
B6_131a:	.db $0c
B6_131b:		lda $78			; a5 78
B6_131d:		beq B6_1345 ; f0 26

B6_131f:		jsr $9509		; 20 09 95
B6_1322:		bne B6_1330 ; d0 0c

B6_1324:		lda #$0a		; a9 0a
B6_1326:		ldy #$49		; a0 49
B6_1328:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_132b:		lda #$2a		; a9 2a
B6_132d:		jmp $994c		; 4c 4c 99


B6_1330:		lda wEntityBaseX.w, x	; bd 38 04
B6_1333:		and #$f0		; 29 f0
B6_1335:		bne B6_1340 ; d0 09

B6_1337:		lda wEntityState.w, x	; bd 70 04
B6_133a:		and #$76		; 29 76
B6_133c:		sta wEntityState.w, x	; 9d 70 04
B6_133f:		rts				; 60 


B6_1340:		cmp #$40		; c9 40
B6_1342:		beq B6_1360 ; f0 1c

B6_1344:		rts				; 60 


B6_1345:		lda #$c9		; a9 c9
B6_1347:		sta wEntityState.w, x	; 9d 70 04
B6_134a:		lda #$00		; a9 00
B6_134c:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_134f:		lda #$04		; a9 04
B6_1351:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1354:		lda #$f0		; a9 f0
B6_1356:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1359:		lda #$0a		; a9 0a
B6_135b:		ldy #$49		; a0 49
B6_135d:		jmp setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 4c 6e ef


B6_1360:		lda #$00		; a9 00
B6_1362:		sta $05d8, x	; 9d d8 05
B6_1365:		sta $0633, x	; 9d 33 06
B6_1368:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_136b:		sta wEntityPhase.w, x	; 9d c1 05
B6_136e:		lda #$40		; a9 40
B6_1370:		sta wEntityState.w, x	; 9d 70 04
B6_1373:		lda $07f3		; ad f3 07
B6_1376:		and #$7f		; 29 7f
B6_1378:		sta $07f3		; 8d f3 07
B6_137b:		rts				; 60 


B6_137c:		lda $07f3		; ad f3 07
B6_137f:		cmp #$01		; c9 01
B6_1381:		bne B6_13b2 ; d0 2f

B6_1383:		sta wBaseIRQFuncIdx			; 85 3f
B6_1385:		lda #$00		; a9 00
B6_1387:		sta $0657, x	; 9d 57 06
B6_138a:		sta $0669, x	; 9d 69 06
B6_138d:		jsr $9509		; 20 09 95
B6_1390:		cmp #$2f		; c9 2f
B6_1392:		beq B6_13b1 ; f0 1d

B6_1394:		lda #$30		; a9 30
B6_1396:		jsr $9978		; 20 78 99
B6_1399:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_139c:		lda #$0a		; a9 0a
B6_139e:		ldy #$52		; a0 52
B6_13a0:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_13a3:		clc				; 18 
B6_13a4:		lda wEntityBaseY.w, x	; bd 1c 04
B6_13a7:		adc #$10		; 69 10
B6_13a9:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_13ac:		lda #$2f		; a9 2f
B6_13ae:		jmp $994c		; 4c 4c 99


B6_13b1:		rts				; 60 


B6_13b2:		jsr $993b		; 20 3b 99
B6_13b5:		lda #$00		; a9 00
B6_13b7:		jsr $9956		; 20 56 99
B6_13ba:		lda $0669, x	; bd 69 06
B6_13bd:		and #$f0		; 29 f0
B6_13bf:		beq B6_13e7 ; f0 26

B6_13c1:		lda #$03		; a9 03
B6_13c3:		jsr $995c		; 20 5c 99
B6_13c6:		jsr $9509		; 20 09 95
B6_13c9:		cmp #$2a		; c9 2a
B6_13cb:		beq B6_13d1 ; f0 04

B6_13cd:		cmp #$2e		; c9 2e
B6_13cf:		bne B6_13e7 ; d0 16

B6_13d1:		lda #$0f		; a9 0f
B6_13d3:		sta $068d, x	; 9d 8d 06
B6_13d6:		lda #$01		; a9 01
B6_13d8:		sta $0633, x	; 9d 33 06
B6_13db:		lda #$0a		; a9 0a
B6_13dd:		ldy #$54		; a0 54
B6_13df:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_13e2:		lda #$2b		; a9 2b
B6_13e4:		jmp $994c		; 4c 4c 99


B6_13e7:		jsr $9509		; 20 09 95
B6_13ea:		cmp #$29		; c9 29
B6_13ec:		beq B6_13f2 ; f0 04

B6_13ee:		cmp #$28		; c9 28
B6_13f0:		bne B6_13f7 ; d0 05

B6_13f2:		lda #$00		; a9 00
B6_13f4:		sta $0669, x	; 9d 69 06
B6_13f7:		jsr $9509		; 20 09 95
B6_13fa:		beq B6_13ff ; f0 03

B6_13fc:		jmp $949c		; 4c 9c 94


B6_13ff:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_1402:		bne B6_1427 ; d0 23

B6_1404:		lda #$04		; a9 04
B6_1406:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_1409:		lda $1f			; a5 1f
B6_140b:		and #$03		; 29 03
B6_140d:		bne B6_141b ; d0 0c

B6_140f:		lda #$10		; a9 10
B6_1411:		ldy #$00		; a0 00
B6_1413:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1416:		lda #$29		; a9 29
B6_1418:		jmp $994c		; 4c 4c 99


B6_141b:		lda #$0a		; a9 0a
B6_141d:		ldy #$4d		; a0 4d
B6_141f:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1422:		lda #$28		; a9 28
B6_1424:		jmp $994c		; 4c 4c 99


B6_1427:		dec wEntityAlarmOrStartYforSinusoidalMovement.w, x	; de 06 06
B6_142a:		lda $0633, x	; bd 33 06
B6_142d:		bne B6_144a ; d0 1b

B6_142f:		lda #$18		; a9 18
B6_1431:		ldy wEntityFacingLeft.w, x	; bc a8 04
B6_1434:		beq B6_1438 ; f0 02

B6_1436:		lda #$e8		; a9 e8
B6_1438:		ldy #$0c		; a0 0c
B6_143a:		jsr func_1f_1c1e		; 20 1e fc
B6_143d:		beq B6_1442 ; f0 03

B6_143f:		jsr $948a		; 20 8a 94
B6_1442:		jsr $949c		; 20 9c 94
B6_1445:		lda $061d, x	; bd 1d 06
B6_1448:		bne B6_1470 ; d0 26

B6_144a:		ldy #$04		; a0 04
B6_144c:		lda wEntityBaseX.w		; ad 38 04
B6_144f:		cmp wEntityBaseX.w, x	; dd 38 04
B6_1452:		bcs B6_1456 ; b0 02

B6_1454:		ldy #$0c		; a0 0c
B6_1456:		tya				; 98 
B6_1457:		jsr $948f		; 20 8f 94
B6_145a:		lda #$0a		; a9 0a
B6_145c:		sta $061d, x	; 9d 1d 06
B6_145f:		lda #$00		; a9 00
B6_1461:		sta $0633, x	; 9d 33 06
B6_1464:		lda #$0a		; a9 0a
B6_1466:		ldy #$50		; a0 50
B6_1468:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_146b:		lda #$27		; a9 27
B6_146d:		jmp $994c		; 4c 4c 99


B6_1470:		dec $061d, x	; de 1d 06
B6_1473:		jsr $9948		; 20 48 99
B6_1476:		lda $1f			; a5 1f
B6_1478:		and #$03		; 29 03
B6_147a:		cmp #$01		; c9 01
B6_147c:		beq B6_148a ; f0 0c

B6_147e:		lda #$0a		; a9 0a
B6_1480:		ldy #$49		; a0 49
B6_1482:		jsr setEntitySpecGroupA_animationDefIdxY_immediatelyAnimate		; 20 6e ef
B6_1485:		lda #$2a		; a9 2a
B6_1487:		jmp $994c		; 4c 4c 99


B6_148a:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_148d:		eor #$08		; 49 08
B6_148f:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1492:		and #$08		; 29 08
B6_1494:		beq B6_1498 ; f0 02

B6_1496:		lda #$01		; a9 01
B6_1498:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_149b:		rts				; 60 


B6_149c:		ldy #$00		; a0 00
B6_149e:		lda wEntityBaseX.w, x	; bd 38 04
B6_14a1:		cmp #$18		; c9 18
B6_14a3:		bcc B6_14aa ; 90 05

B6_14a5:		cmp #$d8		; c9 d8
B6_14a7:		bcc B6_14b6 ; 90 0d

B6_14a9:		iny				; c8 
B6_14aa:		lda $94b7, y	; b9 b7 94
B6_14ad:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_14b0:		lda $94b9, y	; b9 b9 94
B6_14b3:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_14b6:		rts				; 60 


B6_14b7:		.db $00				; 00
B6_14b8:		ora ($04, x)	; 01 04
B6_14ba:	.db $0c
B6_14bb:		jsr $993b		; 20 3b 99
B6_14be:		jsr $9509		; 20 09 95
B6_14c1:		beq B6_14cf ; f0 0c

B6_14c3:		lda wEntityBaseY.w, x	; bd 1c 04
B6_14c6:		cmp #$70		; c9 70
B6_14c8:		bcc B6_14dc ; 90 12

B6_14ca:		cmp #$90		; c9 90
B6_14cc:		bcs B6_14dc ; b0 0e

B6_14ce:		rts				; 60 


B6_14cf:		lda #$2c		; a9 2c
B6_14d1:		jmp $994c		; 4c 4c 99


B6_14d4:		jsr $993b		; 20 3b 99
B6_14d7:		jsr $9509		; 20 09 95
B6_14da:		beq B6_1504 ; f0 28

B6_14dc:		lda wEntityPhase.w, x	; bd c1 05
B6_14df:		cmp #$04		; c9 04
B6_14e1:		bne B6_1503 ; d0 20

B6_14e3:		lda wEntityBaseY.w, x	; bd 1c 04
B6_14e6:		cmp #$60		; c9 60
B6_14e8:		bcc B6_1503 ; 90 19

B6_14ea:		lda #$00		; a9 00
B6_14ec:		ldy #$08		; a0 08
B6_14ee:		jsr func_1f_1c1e		; 20 1e fc
B6_14f1:		beq B6_14fc ; f0 09

B6_14f3:		lda #$11		; a9 11
B6_14f5:		jsr playSound		; 20 5f e2
B6_14f8:		inc wEntityPhase.w, x	; fe c1 05
B6_14fb:		rts				; 60 


B6_14fc:		lda wEntityBaseY.w, x	; bd 1c 04
B6_14ff:		cmp #$b8		; c9 b8
B6_1501:		bcs B6_14f8 ; b0 f5

B6_1503:		rts				; 60 


B6_1504:		lda #$2d		; a9 2d
B6_1506:		jmp $994c		; 4c 4c 99


B6_1509:		lda wEntityAI_idx.w, x	; bd ef 05
B6_150c:		and #$7f		; 29 7f
B6_150e:		rts				; 60 


B6_150f:		lda wEntityState.w, x	; bd 70 04
B6_1512:		and #$01		; 29 01
B6_1514:		beq B6_151a ; f0 04

B6_1516:		ora #$88		; 09 88
B6_1518:		bne B6_151c ; d0 02

B6_151a:		lda #$40		; a9 40
B6_151c:		sta wEntityState.w, x	; 9d 70 04
B6_151f:		lda $78			; a5 78
B6_1521:		bne B6_152a ; d0 07

B6_1523:		lda #$10		; a9 10
B6_1525:		ldy #$1b		; a0 1b
B6_1527:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_152a:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_152d:		cmp #$03		; c9 03
B6_152f:		beq B6_1534 ; f0 03

B6_1531:		jmp $95d3		; 4c d3 95


B6_1534:		stx $07ec		; 8e ec 07
B6_1537:		lda $07ed		; ad ed 07
B6_153a:		cmp #$07		; c9 07
B6_153c:		bne B6_15b8 ; d0 7a

B6_153e:		lda wEntityPhase.w, x	; bd c1 05
B6_1541:		cmp #$0e		; c9 0e
B6_1543:		bne B6_15b8 ; d0 73

B6_1545:		lda $0633, x	; bd 33 06
B6_1548:		cmp #$04		; c9 04
B6_154a:		bcs B6_1550 ; b0 04

B6_154c:		inc $0633, x	; fe 33 06
B6_154f:		rts				; 60 


B6_1550:		lda #$00		; a9 00
B6_1552:		sta $0633, x	; 9d 33 06
B6_1555:		lda #$08		; a9 08
B6_1557:		sta $00			; 85 00
B6_1559:		lda #$10		; a9 10
B6_155b:		sta $01			; 85 01
B6_155d:		ldy #$1f		; a0 1f
B6_155f:		lda $061d, x	; bd 1d 06
B6_1562:		and #$01		; 29 01
B6_1564:		beq B6_1570 ; f0 0a

B6_1566:		lda #$f8		; a9 f8
B6_1568:		sta $00			; 85 00
B6_156a:		lda #$f0		; a9 f0
B6_156c:		sta $01			; 85 01
B6_156e:		ldy #$20		; a0 20
B6_1570:		lda wEntityBaseX.w, x	; bd 38 04
B6_1573:		sec				; 38 
B6_1574:		sbc $00			; e5 00
B6_1576:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1579:		lda wEntityBaseY.w, x	; bd 1c 04
B6_157c:		clc				; 18 
B6_157d:		adc $01			; 65 01
B6_157f:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1582:		lda #$10		; a9 10
B6_1584:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1587:		inc $061d, x	; fe 1d 06
B6_158a:		lda $061d, x	; bd 1d 06
B6_158d:		cmp #$12		; c9 12
B6_158f:		beq B6_1592 ; f0 01

B6_1591:		rts				; 60 


B6_1592:		lda $07f3		; ad f3 07
B6_1595:		and #$7f		; 29 7f
B6_1597:		sta $07f3		; 8d f3 07
B6_159a:		lda #$00		; a9 00
B6_159c:		sta $07ec		; 8d ec 07
B6_159f:		sta $07ed		; 8d ed 07
B6_15a2:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_15a5:		sta wEntityPhase.w, x	; 9d c1 05
B6_15a8:		lda #$60		; a9 60
B6_15aa:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_15ad:		lda #$01		; a9 01
B6_15af:		sta $061d, x	; 9d 1d 06
B6_15b2:		lda #$0c		; a9 0c
B6_15b4:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_15b7:		rts				; 60 


B6_15b8:		lda #$00		; a9 00
B6_15ba:		sta $061d, x	; 9d 1d 06
B6_15bd:		jsr $9509		; 20 09 95
B6_15c0:		bne B6_15b7 ; d0 f5

B6_15c2:		lda #$01		; a9 01
B6_15c4:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_15c7:		lda #$10		; a9 10
B6_15c9:		ldy #$1c		; a0 1c
B6_15cb:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_15ce:		lda #$38		; a9 38
B6_15d0:		jmp $994c		; 4c 4c 99


B6_15d3:		ldy $07ec		; ac ec 07
B6_15d6:		lda #$00		; a9 00
B6_15d8:		sta $01			; 85 01
B6_15da:		lda wEntityBaseX.w, y	; b9 38 04
B6_15dd:		sec				; 38 
B6_15de:		sbc wEntityBaseX.w, x	; fd 38 04
B6_15e1:		sta $00			; 85 00
B6_15e3:		bcs B6_15ee ; b0 09

B6_15e5:		eor #$ff		; 49 ff
B6_15e7:		clc				; 18 
B6_15e8:		adc #$01		; 69 01
B6_15ea:		sta $00			; 85 00
B6_15ec:		inc $01			; e6 01
B6_15ee:		lda $00			; a5 00
B6_15f0:		cmp #$04		; c9 04
B6_15f2:		bcs B6_1628 ; b0 34

B6_15f4:		lda #$00		; a9 00
B6_15f6:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_15f9:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_15fc:		lda #$00		; a9 00
B6_15fe:		sta $03			; 85 03
B6_1600:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_1603:		lda #$b8		; a9 b8
B6_1605:		sec				; 38 
B6_1606:		sbc $965c, y	; f9 5c 96
B6_1609:		cmp wEntityBaseY.w, x	; dd 1c 04
B6_160c:		bcc B6_161d ; 90 0f

B6_160e:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_1611:		lda $9654, y	; b9 54 96
B6_1614:		ora $07ed		; 0d ed 07
B6_1617:		sta $07ed		; 8d ed 07
B6_161a:		jmp $9952		; 4c 52 99


B6_161d:		lda #$ff		; a9 ff
B6_161f:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_1622:		lda #$00		; a9 00
B6_1624:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_1627:		rts				; 60 


B6_1628:		lda $01			; a5 01
B6_162a:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_162d:		lda #$01		; a9 01
B6_162f:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_1632:		lda #$00		; a9 00
B6_1634:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_1637:		lda $01			; a5 01
B6_1639:		beq B6_1645 ; f0 0a

B6_163b:		lda #$ff		; a9 ff
B6_163d:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_1640:		lda #$00		; a9 00
B6_1642:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_1645:		lda $061d, x	; bd 1d 06
B6_1648:		bne B6_1627 ; d0 dd

B6_164a:		inc $061d, x	; fe 1d 06
B6_164d:		lda #$10		; a9 10
B6_164f:		ldy #$1b		; a0 1b
B6_1651:		jmp setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 4c 5c ef


B6_1654:		ora ($02, x)	; 01 02
B6_1656:	.db $04
B6_1657:		php				; 08 
B6_1658:		bpl B6_167a ; 10 20

B6_165a:		rti				; 40 


B6_165b:		.db $00				; 00
B6_165c:		;removed
	.db $10 $08

B6_165e:	.db $0c
B6_165f:	.db $12
B6_1660:	.db $13
B6_1661:	.db $14
B6_1662:	.db $12
B6_1663:		lda #$00		; a9 00
B6_1665:		sta $0669, x	; 9d 69 06
B6_1668:		sta $0657, x	; 9d 57 06
B6_166b:		jsr $9509		; 20 09 95
B6_166e:		cmp #$2f		; c9 2f
B6_1670:		beq B6_16b5 ; f0 43

B6_1672:		lda #$50		; a9 50
B6_1674:		jsr $9978		; 20 78 99
B6_1677:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_167a:		lda #$10		; a9 10
B6_167c:		ldy #$1b		; a0 1b
B6_167e:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1681:		clc				; 18 
B6_1682:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1685:		adc #$08		; 69 08
B6_1687:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_168a:		lda #$2f		; a9 2f
B6_168c:		jmp $994c		; 4c 4c 99


B6_168f:		lda $07f3		; ad f3 07
B6_1692:		cmp #$01		; c9 01
B6_1694:		beq B6_1663 ; f0 cd

B6_1696:		lda #$00		; a9 00
B6_1698:		jsr $9956		; 20 56 99
B6_169b:		lda $07f3		; ad f3 07
B6_169e:		cmp #$03		; c9 03
B6_16a0:		beq B6_16b5 ; f0 13

B6_16a2:		lda #$01		; a9 01
B6_16a4:		jsr $995c		; 20 5c 99
B6_16a7:		jsr $993b		; 20 3b 99
B6_16aa:		jsr $9509		; 20 09 95
B6_16ad:		cmp #$39		; c9 39
B6_16af:		beq B6_16b5 ; f0 04

B6_16b1:		cmp #$3a		; c9 3a
B6_16b3:		bne B6_16b6 ; d0 01

B6_16b5:		rts				; 60 


B6_16b6:		lda $a3			; a5 a3
B6_16b8:		and #$7f		; 29 7f
B6_16ba:		bne B6_1708 ; d0 4c

B6_16bc:		lda $061d, x	; bd 1d 06
B6_16bf:		bne B6_1705 ; d0 44

B6_16c1:		lda #$04		; a9 04
B6_16c3:		sta $05			; 85 05
B6_16c5:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_16c8:		beq B6_16ce ; f0 04

B6_16ca:		lda #$0c		; a9 0c
B6_16cc:		sta $05			; 85 05
B6_16ce:		lda #$04		; a9 04
B6_16d0:		sta $04			; 85 04
B6_16d2:		lda #$1e		; a9 1e
B6_16d4:		jsr $9968		; 20 68 99
B6_16d7:		lda $05			; a5 05
B6_16d9:		asl a			; 0a
B6_16da:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_16dd:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_16e0:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_16e3:		lda $04			; a5 04
B6_16e5:		sec				; 38 
B6_16e6:		sbc #$01		; e9 01
B6_16e8:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, y	; 99 06 06
B6_16eb:		dec $04			; c6 04
B6_16ed:		bne B6_16d2 ; d0 e3

B6_16ef:		lda #$06		; a9 06
B6_16f1:		jsr playSound		; 20 5f e2
B6_16f4:		lda #$01		; a9 01
B6_16f6:		sta $061d, x	; 9d 1d 06
B6_16f9:		lda #$10		; a9 10
B6_16fb:		ldy #$1a		; a0 1a
B6_16fd:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1700:		lda #$39		; a9 39
B6_1702:		jmp $994c		; 4c 4c 99


B6_1705:		dec $061d, x	; de 1d 06
B6_1708:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B6_170b:		bne B6_173b ; d0 2e

B6_170d:		jsr $97af		; 20 af 97
B6_1710:		lda #$1d		; a9 1d
B6_1712:		jsr $9968		; 20 68 99
B6_1715:		lda $05			; a5 05
B6_1717:		sta wPlayerStateDoubled.w, y	; 99 65 05
B6_171a:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_171d:		sta wEntityFacingLeft.w, y	; 99 a8 04
B6_1720:		jsr $979f		; 20 9f 97
B6_1723:		lda $05			; a5 05
B6_1725:		ldy #$14		; a0 14
B6_1727:		cmp #$1a		; c9 1a
B6_1729:		bcs B6_172f ; b0 04

B6_172b:		cmp #$07		; c9 07
B6_172d:		bcs B6_1731 ; b0 02

B6_172f:		ldy #$17		; a0 17
B6_1731:		lda #$10		; a9 10
B6_1733:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1736:		lda #$3a		; a9 3a
B6_1738:		jmp $994c		; 4c 4c 99


B6_173b:		dec wEntityAlarmOrStartYforSinusoidalMovement.w, x	; de 06 06
B6_173e:		lda wEntityBaseX.w, x	; bd 38 04
B6_1741:		cmp #$38		; c9 38
B6_1743:		bcs B6_1747 ; b0 02

B6_1745:		lda #$38		; a9 38
B6_1747:		cmp #$e0		; c9 e0
B6_1749:		bcc B6_174d ; 90 02

B6_174b:		lda #$df		; a9 df
B6_174d:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1750:		jsr $9509		; 20 09 95
B6_1753:		cmp #$3b		; c9 3b
B6_1755:		beq B6_179e ; f0 47

B6_1757:		cmp #$3f		; c9 3f
B6_1759:		beq B6_179e ; f0 43

B6_175b:		cmp #$00		; c9 00
B6_175d:		bne B6_1766 ; d0 07

B6_175f:		lda #$10		; a9 10
B6_1761:		ldy #$13		; a0 13
B6_1763:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1766:		jsr $985b		; 20 5b 98
B6_1769:		jsr $999c		; 20 9c 99
B6_176c:		lda $00			; a5 00
B6_176e:		cmp #$58		; c9 58
B6_1770:		bcs B6_178e ; b0 1c

B6_1772:		lda wEntityBaseX.w, x	; bd 38 04
B6_1775:		cmp #$d0		; c9 d0
B6_1777:		bcs B6_1781 ; b0 08

B6_1779:		cmp #$40		; c9 40
B6_177b:		bcc B6_1781 ; 90 04

B6_177d:		lda #$3f		; a9 3f
B6_177f:		bne B6_1790 ; d0 0f

B6_1781:		lda $1f			; a5 1f
B6_1783:		and #$01		; 29 01
B6_1785:		beq B6_177d ; f0 f6

B6_1787:		jsr $983a		; 20 3a 98
B6_178a:		lda #$3b		; a9 3b
B6_178c:		bne B6_1790 ; d0 02

B6_178e:		lda #$3c		; a9 3c
B6_1790:		sta $01			; 85 01
B6_1792:		jsr $9509		; 20 09 95
B6_1795:		cmp $01			; c5 01
B6_1797:		beq B6_179e ; f0 05

B6_1799:		lda $01			; a5 01
B6_179b:		jmp $994c		; 4c 4c 99


B6_179e:		rts				; 60 


B6_179f:		lda wGameStateLoopCounter			; a5 1a
B6_17a1:		and #$03		; 29 03
B6_17a3:		tay				; a8 
B6_17a4:		lda $97ab, y	; b9 ab 97
B6_17a7:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B6_17aa:		rts				; 60 


B6_17ab:		bmi B6_17ed ; 30 40

B6_17ad:		;removed
	.db $50 $60

B6_17af:		lda wEntityBaseX.w		; ad 38 04
B6_17b2:		sta $04			; 85 04
B6_17b4:		ldy #$00		; a0 00
B6_17b6:		lda $82			; a5 82
B6_17b8:		and #$04		; 29 04
B6_17ba:		beq B6_17bd ; f0 01

B6_17bc:		iny				; c8 
B6_17bd:		lda $980d, y	; b9 0d 98
B6_17c0:		clc				; 18 
B6_17c1:		adc wEntityBaseY.w		; 6d 1c 04
B6_17c4:		sta $05			; 85 05
B6_17c6:		jsr $ff30		; 20 30 ff
B6_17c9:		jsr $9813		; 20 13 98
B6_17cc:		lda $00			; a5 00
B6_17ce:		ldy wEntityFacingLeft.w, x	; bc a8 04
B6_17d1:		beq B6_17fc ; f0 29

B6_17d3:		and #$10		; 29 10
B6_17d5:		bne B6_17f7 ; d0 20

B6_17d7:		ldy #$00		; a0 00
B6_17d9:		lda $980f, y	; b9 0f 98
B6_17dc:		sta $01			; 85 01
B6_17de:		lda $9811, y	; b9 11 98
B6_17e1:		sta $02			; 85 02
B6_17e3:		lda $00			; a5 00
B6_17e5:		and $02			; 25 02
B6_17e7:		pha				; 48 
B6_17e8:		sec				; 38 
B6_17e9:		sbc #$04		; e9 04
B6_17eb:		tay				; a8 
B6_17ec:		pla				; 68 
B6_17ed:		eor $9804, y	; 59 04 98
B6_17f0:		sta $00			; 85 00
B6_17f2:		ora $01			; 05 01
B6_17f4:		sta $05			; 85 05
B6_17f6:		rts				; 60 


B6_17f7:		lda $00			; a5 00
B6_17f9:		sta $05			; 85 05
B6_17fb:		rts				; 60 


B6_17fc:		and #$10		; 29 10
B6_17fe:		beq B6_17f7 ; f0 f7

B6_1800:		ldy #$01		; a0 01
B6_1802:		bne B6_17d9 ; d0 d5

B6_1804:		php				; 08 
B6_1805:		asl $0e0c		; 0e 0c 0e
B6_1808:		.db $00				; 00
B6_1809:		asl $0e0c		; 0e 0c 0e
B6_180c:		php				; 08 
B6_180d:		.db $00				; 00
B6_180e:		;removed
	.db $10 $10

B6_1810:		.db $00				; 00
B6_1811:	.db $ff
B6_1812:	.db $0f
B6_1813:		lda $00			; a5 00
B6_1815:		and #$1f		; 29 1f
B6_1817:		sta $00			; 85 00
B6_1819:		ldy #$00		; a0 00
B6_181b:		and #$10		; 29 10
B6_181d:		bne B6_1832 ; d0 13

B6_181f:		lda $00			; a5 00
B6_1821:		and #$0f		; 29 0f
B6_1823:		cmp #$04		; c9 04
B6_1825:		bcc B6_182c ; 90 05

B6_1827:		cmp #$0d		; c9 0d
B6_1829:		bcc B6_1831 ; 90 06

B6_182b:		iny				; c8 
B6_182c:		lda $9836, y	; b9 36 98
B6_182f:		sta $00			; 85 00
B6_1831:		rts				; 60 


B6_1832:		ldy #$02		; a0 02
B6_1834:		bne B6_181f ; d0 e9

B6_1836:	.db $04
B6_1837:	.db $0c
B6_1838:	.db $14
B6_1839:	.db $1c
B6_183a:		lda #$00		; a9 00
B6_183c:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_183f:		lda wEntityBaseX.w		; ad 38 04
B6_1842:		cmp wEntityBaseX.w, x	; dd 38 04
B6_1845:		bcs B6_1855 ; b0 0e

B6_1847:		lda #$0c		; a9 0c
B6_1849:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_184c:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_184f:		eor #$01		; 49 01
B6_1851:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1854:		rts				; 60 


B6_1855:		lda #$04		; a9 04
B6_1857:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_185a:		rts				; 60 


B6_185b:		lda #$01		; a9 01
B6_185d:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1860:		lda wEntityBaseX.w		; ad 38 04
B6_1863:		cmp wEntityBaseX.w, x	; dd 38 04
B6_1866:		bcc B6_1855 ; 90 ed

B6_1868:		bcs B6_1847 ; b0 dd

B6_186a:		jsr $993b		; 20 3b 99
B6_186d:		jsr $9509		; 20 09 95
B6_1870:		cmp #$3e		; c9 3e
B6_1872:		beq B6_18ca ; f0 56

B6_1874:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_1877:		ldy #$01		; a0 01
B6_1879:		cmp #$07		; c9 07
B6_187b:		bcc B6_1882 ; 90 05

B6_187d:		cmp #$1a		; c9 1a
B6_187f:		bcs B6_1882 ; b0 01

B6_1881:		dey				; 88 
B6_1882:		lda $98e4, y	; b9 e4 98
B6_1885:		sta $00			; 85 00
B6_1887:		lda $98e6, y	; b9 e6 98
B6_188a:		sta $01			; 85 01
B6_188c:		lda $98e8, y	; b9 e8 98
B6_188f:		sta $02			; 85 02
B6_1891:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1894:		sec				; 38 
B6_1895:		sbc $00			; e5 00
B6_1897:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_189a:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_189d:		beq B6_18a3 ; f0 04

B6_189f:		lda $01			; a5 01
B6_18a1:		bne B6_18a5 ; d0 02

B6_18a3:		lda $02			; a5 02
B6_18a5:		clc				; 18 
B6_18a6:		adc wEntityBaseX.w, x	; 7d 38 04
B6_18a9:		sta wEntityBaseX.w, x	; 9d 38 04
B6_18ac:		lda #$40		; a9 40
B6_18ae:		sta wEntityState.w, x	; 9d 70 04
B6_18b1:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_18b4:		ldy #$22		; a0 22
B6_18b6:		cmp #$07		; c9 07
B6_18b8:		bcc B6_18c0 ; 90 06

B6_18ba:		cmp #$1a		; c9 1a
B6_18bc:		bcs B6_18c0 ; b0 02

B6_18be:		ldy #$21		; a0 21
B6_18c0:		lda #$10		; a9 10
B6_18c2:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_18c5:		lda #$3e		; a9 3e
B6_18c7:		jmp $994c		; 4c 4c 99


B6_18ca:		lda wEntityBaseX.w, x	; bd 38 04
B6_18cd:		cmp #$f8		; c9 f8
B6_18cf:		bcs B6_18e0 ; b0 0f

B6_18d1:		cmp #$08		; c9 08
B6_18d3:		bcc B6_18e0 ; 90 0b

B6_18d5:		lda wEntityBaseY.w, x	; bd 1c 04
B6_18d8:		cmp #$20		; c9 20
B6_18da:		bcc B6_18e0 ; 90 04

B6_18dc:		cmp #$f8		; c9 f8
B6_18de:		bcc B6_18e3 ; 90 03

B6_18e0:		jmp $9952		; 4c 52 99


B6_18e3:		rts				; 60 


B6_18e4:		asl $0c			; 06 0c
B6_18e6:		inx				; e8 
B6_18e7:		;removed
	.db $f0 $18

B6_18e9:		bpl B6_1894 ; 10 a9

B6_18eb:		ora $579d		; 0d 9d 57
B6_18ee:		asl $20			; 06 20
B6_18f0:		ora #$95		; 09 95
B6_18f2:		cmp #$3d		; c9 3d
B6_18f4:		beq B6_1934 ; f0 3e

B6_18f6:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_18f9:		lda wEntityBaseY.w, x	; bd 1c 04
B6_18fc:		sec				; 38 
B6_18fd:		sbc #$0e		; e9 0e
B6_18ff:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1902:		lda wEntityFacingLeft.w, x	; bd a8 04
B6_1905:		bne B6_190b ; d0 04

B6_1907:		lda #$10		; a9 10
B6_1909:		bne B6_190d ; d0 02

B6_190b:		lda #$f0		; a9 f0
B6_190d:		clc				; 18 
B6_190e:		adc wEntityBaseX.w, x	; 7d 38 04
B6_1911:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1914:		lda #$40		; a9 40
B6_1916:		sta wEntityState.w, x	; 9d 70 04
B6_1919:		lda wEntityBaseX.w, x	; bd 38 04
B6_191c:		sta $061d, x	; 9d 1d 06
B6_191f:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B6_1922:		lda $9937, y	; b9 37 99
B6_1925:		sta $05d8, x	; 9d d8 05
B6_1928:		lda #$10		; a9 10
B6_192a:		ldy #$23		; a0 23
B6_192c:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_192f:		lda #$3d		; a9 3d
B6_1931:		jmp $994c		; 4c 4c 99


B6_1934:		jmp $98ca		; 4c ca 98


B6_1937:		and ($31, x)	; 21 31
B6_1939:		eor ($51, x)	; 41 51
B6_193b:		lda #$20		; a9 20
B6_193d:		ldy wHardMode.w		; ac f6 07
B6_1940:		beq B6_1944 ; f0 02

B6_1942:		lda #$30		; a9 30
B6_1944:		sta $0657, x	; 9d 57 06
B6_1947:		rts				; 60 


B6_1948:		ldy #$00		; a0 00
B6_194a:		beq B6_1982 ; f0 36

B6_194c:		sta $0e			; 85 0e
B6_194e:		ldy #$02		; a0 02
B6_1950:		bne B6_198f ; d0 3d

B6_1952:		ldy #$04		; a0 04
B6_1954:		bne B6_1982 ; d0 2c

B6_1956:		sta $0e			; 85 0e
B6_1958:		ldy #$06		; a0 06
B6_195a:		bne B6_198f ; d0 33

B6_195c:		sta $0e			; 85 0e
B6_195e:		ldy #$08		; a0 08
B6_1960:		bne B6_198f ; d0 2d

B6_1962:		sta $0e			; 85 0e
B6_1964:		ldy #$0a		; a0 0a
B6_1966:		bne B6_198f ; d0 27

B6_1968:		sta $0e			; 85 0e
B6_196a:		ldy #$0c		; a0 0c
B6_196c:		bne B6_198f ; d0 21

B6_196e:		sta $0e			; 85 0e
B6_1970:		ldy #$0e		; a0 0e
B6_1972:		bne B6_198f ; d0 1b

B6_1974:		ldy #$10		; a0 10
B6_1976:		bne B6_1982 ; d0 0a

B6_1978:		sta $0e			; 85 0e
B6_197a:		ldy #$12		; a0 12
B6_197c:		bne B6_198f ; d0 11

B6_197e:		ldy #$14		; a0 14
B6_1980:		bne B6_198f ; d0 0d

B6_1982:		lda $99a4, y	; b9 a4 99
B6_1985:		sta $00			; 85 00
B6_1987:		lda $99a5, y	; b9 a5 99
B6_198a:		sta $01			; 85 01
B6_198c:		jmp $e62d		; 4c 2d e6


B6_198f:		lda $99a4, y	; b9 a4 99
B6_1992:		sta $00			; 85 00
B6_1994:		lda $99a5, y	; b9 a5 99
B6_1997:		sta $01			; 85 01
B6_1999:		jmp $e641		; 4c 41 e6


B6_199c:		ldy #$16		; a0 16
B6_199e:		bne B6_198f ; d0 ef

B6_19a0:		ldy #$18		; a0 18
B6_19a2:		bne B6_198f ; d0 eb

B6_19a4:	.db $3b
B6_19a5:		lda ($4f, x)	; a1 4f
B6_19a7:		stx $3a			; 86 3a
B6_19a9:	.db $87
B6_19aa:	.db $f4
B6_19ab:	.db $87
B6_19ac:		cpx #$88		; e0 88
B6_19ae:		ora $89			; 05 89
B6_19b0:		ror $87			; 66 87
B6_19b2:		cmp $87			; c5 87
B6_19b4:		.db $00				; 00
B6_19b5:		lda wVramQueueDest			; a5 61
B6_19b7:		stx $31			; 86 31
B6_19b9:	.db $82
B6_19ba:		php				; 08 
B6_19bb:		stx wVramQueueDest+1			; 86 62
B6_19bd:		lda $bd, x		; b5 bd
B6_19bf:		adc $05			; 65 05
B6_19c1:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $99c8
	.dw $99f1
B6_19c8:		lda #$10		; a9 10
B6_19ca:		ldy #$48		; a0 48
B6_19cc:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_19cf:		lda #$58		; a9 58
B6_19d1:		sta wEntityState.w, x	; 9d 70 04
B6_19d4:		lda $78			; a5 78
B6_19d6:		beq B6_19f0 ; f0 18

B6_19d8:		dec $0645, x	; de 45 06
B6_19db:		dec $0645, x	; de 45 06
B6_19de:		bne B6_19f0 ; d0 10

B6_19e0:		jsr $9c01		; 20 01 9c
B6_19e3:		lda #$a7		; a9 a7
B6_19e5:		sta $07ed		; 8d ed 07
B6_19e8:		lda #$78		; a9 78
B6_19ea:		sta $0645, x	; 9d 45 06
B6_19ed:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_19f0:		rts				; 60 


B6_19f1:		lda wEntityState.w, x	; bd 70 04
B6_19f4:		eor #$08		; 49 08
B6_19f6:		sta wEntityState.w, x	; 9d 70 04
B6_19f9:		dec $0645, x	; de 45 06
B6_19fc:		bne B6_1a13 ; d0 15

B6_19fe:		lda #$40		; a9 40
B6_1a00:		sta wEntityState.w, x	; 9d 70 04
B6_1a03:		inc $0645, x	; fe 45 06
B6_1a06:		lda #$00		; a9 00
B6_1a08:		sta $07f3		; 8d f3 07
B6_1a0b:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1a0e:		lda #$04		; a9 04
B6_1a10:		sta $07ee		; 8d ee 07
B6_1a13:		rts				; 60 


B6_1a14:		jsr $9a1a		; 20 1a 9a
B6_1a17:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1a19:		rts				; 60 


B6_1a1a:		lda #$00		; a9 00
B6_1a1c:		jsr $9956		; 20 56 99
B6_1a1f:		inc $07ed		; ee ed 07
B6_1a22:		jsr $9b0a		; 20 0a 9b
B6_1a25:		jsr $9c0e		; 20 0e 9c
B6_1a28:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1a2a:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_1a2d:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $9a48
	.dw $9a66
	.dw $9a99
	.dw $9ab4
	.dw $9d8f
	.dw $9dc4
	.dw $9e00
	.dw $9e12
	.dw $9e31
	.dw $9e61
	.dw $9ef4
	.dw $9f01
B6_1a48:		lda #$30		; a9 30
B6_1a4a:		sta $0657, x	; 9d 57 06
B6_1a4d:		jsr $9b47		; 20 47 9b
B6_1a50:		dec $0645, x	; de 45 06
B6_1a53:		bne B6_1a65 ; d0 10

B6_1a55:		jsr $9b6a		; 20 6a 9b
B6_1a58:		lda #$bf		; a9 bf
B6_1a5a:		sta $0645, x	; 9d 45 06
B6_1a5d:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1a60:		lda #$40		; a9 40
B6_1a62:		sta wEntityState.w, x	; 9d 70 04
B6_1a65:		rts				; 60 


B6_1a66:		jsr $9a60		; 20 60 9a
B6_1a69:		jsr $9b47		; 20 47 9b
B6_1a6c:		jsr $9bef		; 20 ef 9b
B6_1a6f:		jsr $9ba5		; 20 a5 9b
B6_1a72:		lda wEntityVertSubSpeed.w, x	; bd 37 05
B6_1a75:		adc #$04		; 69 04
B6_1a77:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_1a7a:		lda wEntityVertSpeed.w, x	; bd 20 05
B6_1a7d:		adc #$00		; 69 00
B6_1a7f:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_1a82:		lda #$80		; a9 80
B6_1a84:		sta $07ec		; 8d ec 07
B6_1a87:		dec $0645, x	; de 45 06
B6_1a8a:		bne B6_1a65 ; d0 d9

B6_1a8c:		lda #$00		; a9 00
B6_1a8e:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1a91:		lda #$3f		; a9 3f
B6_1a93:		sta $0645, x	; 9d 45 06
B6_1a96:		jmp clearEntityHorizVertSpeeds		; 4c c8 fe


B6_1a99:		inc wEntityAnimationDefIdxInSpecGroup.w, x	; fe aa 05
B6_1a9c:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1a9f:		lda #$80		; a9 80
B6_1aa1:		sta $0645, x	; 9d 45 06
B6_1aa4:		lda #$00		; a9 00
B6_1aa6:		sta $07f0		; 8d f0 07
B6_1aa9:		lda #$40		; a9 40
B6_1aab:		sta $07ec		; 8d ec 07
B6_1aae:		jsr $9a96		; 20 96 9a
B6_1ab1:		jmp $9af2		; 4c f2 9a


B6_1ab4:		lda $07f1		; ad f1 07
B6_1ab7:		bmi B6_1abc ; 30 03

B6_1ab9:		jsr $ff60		; 20 60 ff
B6_1abc:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1abe:		lda wEntityState.w, x	; bd 70 04
B6_1ac1:		eor #$28		; 49 28
B6_1ac3:		sta wEntityState.w, x	; 9d 70 04
B6_1ac6:		dec $0645, x	; de 45 06
B6_1ac9:		bne B6_1b09 ; d0 3e

B6_1acb:		jsr $ff50		; 20 50 ff
B6_1ace:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1ad0:		lda #$78		; a9 78
B6_1ad2:		sta wEntityState.w, x	; 9d 70 04
B6_1ad5:		lda #$00		; a9 00
B6_1ad7:		sta $061d, x	; 9d 1d 06
B6_1ada:		sta $07f3		; 8d f3 07
B6_1add:		lda #$40		; a9 40
B6_1adf:		sta $067b, x	; 9d 7b 06
B6_1ae2:		sta wBossHealth			; 85 3d
B6_1ae4:		lda #$80		; a9 80
B6_1ae6:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1ae9:		lda #$84		; a9 84
B6_1aeb:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1aee:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1af1:		rts				; 60 


B6_1af2:		ldx #$01		; a2 01
B6_1af4:		lda $054e, x	; bd 4e 05
B6_1af7:		cmp #$2b		; c9 2b
B6_1af9:		bne B6_1b04 ; d0 09

B6_1afb:		jsr func_1f_1ed7		; 20 d7 fe
B6_1afe:		sta $054e, x	; 9d 4e 05
B6_1b01:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B6_1b04:		inx				; e8 
B6_1b05:		cpx #$17		; e0 17
B6_1b07:		bcc B6_1af4 ; 90 eb

B6_1b09:		rts				; 60 


B6_1b0a:		bit $07ec		; 2c ec 07
B6_1b0d:		bvc B6_1b3b ; 50 2c

B6_1b0f:		ldy $0669, x	; bc 69 06
B6_1b12:		beq B6_1b1f ; f0 0b

B6_1b14:		cpy #$02		; c0 02
B6_1b16:		bne B6_1b1f ; d0 07

B6_1b18:		pla				; 68 
B6_1b19:		pla				; 68 
B6_1b1a:		lda #$20		; a9 20
B6_1b1c:		jmp $9ff0		; 4c f0 9f


B6_1b1f:		lda $0669, x	; bd 69 06
B6_1b22:		and #$0f		; 29 0f
B6_1b24:		cmp #$03		; c9 03
B6_1b26:		bne B6_1b3b ; d0 13

B6_1b28:		lda #$28		; a9 28
B6_1b2a:		jsr playSound		; 20 5f e2
B6_1b2d:		lda #$03		; a9 03
B6_1b2f:		ldy $0669, x	; bc 69 06
B6_1b32:		cpy #$70		; c0 70
B6_1b34:		bcc B6_1b38 ; 90 02

B6_1b36:		lda #$33		; a9 33
B6_1b38:		sta $0669, x	; 9d 69 06
B6_1b3b:		lda #$02		; a9 02
B6_1b3d:		bit $07ec		; 2c ec 07
B6_1b40:		bvc B6_1b44 ; 50 02

B6_1b42:		lda #$03		; a9 03
B6_1b44:		jmp $995c		; 4c 5c 99


B6_1b47:		lda $07f3		; ad f3 07
B6_1b4a:		and #$3f		; 29 3f
B6_1b4c:		cmp #$01		; c9 01
B6_1b4e:		bne B6_1b69 ; d0 19

B6_1b50:		lda $07ec		; ad ec 07
B6_1b53:		and #$7f		; 29 7f
B6_1b55:		sta $07ec		; 8d ec 07
B6_1b58:		lda #$02		; a9 02
B6_1b5a:		bit $07ec		; 2c ec 07
B6_1b5d:		bvc B6_1b61 ; 50 02

B6_1b5f:		lda #$0a		; a9 0a
B6_1b61:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1b64:		lda #$00		; a9 00
B6_1b66:		sta $07f3		; 8d f3 07
B6_1b69:		rts				; 60 


B6_1b6a:		lda $07ed		; ad ed 07
B6_1b6d:		and #$06		; 29 06
B6_1b6f:		tay				; a8 
B6_1b70:		lda $9b9d, y	; b9 9d 9b
B6_1b73:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_1b76:		lda $9b9e, y	; b9 9e 9b
B6_1b79:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_1b7c:		lda $07ed		; ad ed 07
B6_1b7f:		and #$08		; 29 08
B6_1b81:		beq B6_1b86 ; f0 03

B6_1b83:		jsr $9bdd		; 20 dd 9b
B6_1b86:		lda $07ed		; ad ed 07
B6_1b89:		lsr a			; 4a
B6_1b8a:		lsr a			; 4a
B6_1b8b:		and #$06		; 29 06
B6_1b8d:		tay				; a8 
B6_1b8e:		lda $9b9d, y	; b9 9d 9b
B6_1b91:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_1b94:		lda $9b9e, y	; b9 9e 9b
B6_1b97:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_1b9a:		jmp $9bc3		; 4c c3 9b


B6_1b9d:		.db $00				; 00
B6_1b9e:		.db $00				; 00
B6_1b9f:		tsx				; ba 
B6_1ba0:		.db $00				; 00
B6_1ba1:		.db $00				; 00
B6_1ba2:		ora ($40, x)	; 01 40
B6_1ba4:		ora ($bd, x)	; 01 bd
B6_1ba6:		sec				; 38 
B6_1ba7:	.db $04
B6_1ba8:		cmp #$f0		; c9 f0
B6_1baa:		bcs B6_1bd5 ; b0 29

B6_1bac:		cmp #$10		; c9 10
B6_1bae:		bcc B6_1bd5 ; 90 25

B6_1bb0:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1bb3:		cmp #$40		; c9 40
B6_1bb5:		bcc B6_1bbb ; 90 04

B6_1bb7:		cmp #$b0		; c9 b0
B6_1bb9:		bcc B6_1bd4 ; 90 19

B6_1bbb:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1bbe:		eor wEntityVertSpeed.w, x	; 5d 20 05
B6_1bc1:		bpl B6_1bd4 ; 10 11

B6_1bc3:		sec				; 38 
B6_1bc4:		lda #$00		; a9 00
B6_1bc6:		sbc wEntityVertSubSpeed.w, x	; fd 37 05
B6_1bc9:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B6_1bcc:		lda #$00		; a9 00
B6_1bce:		sbc wEntityVertSpeed.w, x	; fd 20 05
B6_1bd1:		sta wEntityVertSpeed.w, x	; 9d 20 05
B6_1bd4:		rts				; 60 


B6_1bd5:		lda wEntityBaseX.w, x	; bd 38 04
B6_1bd8:		eor wEntityHorizSpeed.w, x	; 5d f2 04
B6_1bdb:		bpl B6_1bd4 ; 10 f7

B6_1bdd:		sec				; 38 
B6_1bde:		lda #$00		; a9 00
B6_1be0:		sbc wEntityHorizSubSpeed.w, x	; fd 09 05
B6_1be3:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B6_1be6:		lda #$00		; a9 00
B6_1be8:		sbc wEntityHorizSpeed.w, x	; fd f2 04
B6_1beb:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B6_1bee:		rts				; 60 


B6_1bef:		ldy #$00		; a0 00
B6_1bf1:		lda wEntityHorizSpeed.w, x	; bd f2 04
B6_1bf4:		bmi B6_1bfc ; 30 06

B6_1bf6:		iny				; c8 
B6_1bf7:		ora wEntityHorizSpeed.w, x	; 1d f2 04
B6_1bfa:		beq B6_1c0d ; f0 11

B6_1bfc:		tya				; 98 
B6_1bfd:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1c00:		rts				; 60 


B6_1c01:		lda wEntityBaseX.w, x	; bd 38 04
B6_1c04:		cmp wEntityBaseX.w		; cd 38 04
B6_1c07:		lda #$00		; a9 00
B6_1c09:		rol a			; 2a
B6_1c0a:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1c0d:		rts				; 60 


B6_1c0e:		lda $07ec		; ad ec 07
B6_1c11:		bpl B6_1c57 ; 10 44

B6_1c13:		jsr $9c58		; 20 58 9c
B6_1c16:		lda $03			; a5 03
B6_1c18:		cmp $07ee		; cd ee 07
B6_1c1b:		bcs B6_1c57 ; b0 3a

B6_1c1d:		lda $07ef		; ad ef 07
B6_1c20:		sta $01			; 85 01
B6_1c22:		jsr $feb9		; 20 b9 fe
B6_1c25:		ldy $07ef		; ac ef 07
B6_1c28:		jsr $9c94		; 20 94 9c
B6_1c2b:		bcc B6_1c41 ; 90 14

B6_1c2d:		jsr $9c6d		; 20 6d 9c
B6_1c30:		lda #$3d		; a9 3d
B6_1c32:		sta $0645, x	; 9d 45 06
B6_1c35:		lda #$70		; a9 70
B6_1c37:		sta wEntityState.w, x	; 9d 70 04
B6_1c3a:		lda #$00		; a9 00
B6_1c3c:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1c3f:		inc $03			; e6 03
B6_1c41:		inc $07ef		; ee ef 07
B6_1c44:		lda $07ef		; ad ef 07
B6_1c47:		and #$07		; 29 07
B6_1c49:		sta $07ef		; 8d ef 07
B6_1c4c:		cmp $01			; c5 01
B6_1c4e:		beq B6_1c57 ; f0 07

B6_1c50:		lda $03			; a5 03
B6_1c52:		cmp $07ee		; cd ee 07
B6_1c55:		bcc B6_1c22 ; 90 cb

B6_1c57:		rts				; 60 


B6_1c58:		lda #$00		; a9 00
B6_1c5a:		sta $03			; 85 03
B6_1c5c:		ldy #$02		; a0 02
B6_1c5e:		lda $054e, y	; b9 4e 05
B6_1c61:		cmp #$2b		; c9 2b
B6_1c63:		bne B6_1c67 ; d0 02

B6_1c65:		inc $03			; e6 03
B6_1c67:		iny				; c8 
B6_1c68:		cpy #$17		; c0 17
B6_1c6a:		bcc B6_1c5e ; 90 f2

B6_1c6c:		rts				; 60 


B6_1c6d:		jsr func_1f_1ed7		; 20 d7 fe
B6_1c70:		lda #$10		; a9 10
B6_1c72:		ldy #$4a		; a0 4a
B6_1c74:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1c77:		lda #$2b		; a9 2b
B6_1c79:		sta $054e, x	; 9d 4e 05
B6_1c7c:		lda #$b8		; a9 b8
B6_1c7e:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B6_1c81:		lda #$30		; a9 30
B6_1c83:		sta $0657, x	; 9d 57 06
B6_1c86:		lda #$80		; a9 80
B6_1c88:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_1c8b:		lda #$00		; a9 00
B6_1c8d:		sta wEntityFacingLeft.w, x	; 9d a8 04
B6_1c90:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B6_1c93:		rts				; 60 


B6_1c94:		lda $9cba, y	; b9 ba 9c
B6_1c97:		adc wEntityBaseX.w		; 6d 38 04
B6_1c9a:		cmp #$10		; c9 10
B6_1c9c:		bcc B6_1cb8 ; 90 1a

B6_1c9e:		cmp #$f0		; c9 f0
B6_1ca0:		bcs B6_1cb8 ; b0 16

B6_1ca2:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1ca5:		lda $9cc2, y	; b9 c2 9c
B6_1ca8:		adc wEntityBaseY.w		; 6d 1c 04
B6_1cab:		cmp #$30		; c9 30
B6_1cad:		bcc B6_1cb8 ; 90 09

B6_1caf:		cmp #$c8		; c9 c8
B6_1cb1:		bcs B6_1cb8 ; b0 05

B6_1cb3:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1cb6:		sec				; 38 
B6_1cb7:		rts				; 60 


B6_1cb8:		clc				; 18 
B6_1cb9:		rts				; 60 


B6_1cba:		sed				; f8 
B6_1cbb:		cpx #$30		; e0 30
B6_1cbd:		cpy #$08		; c0 08
B6_1cbf:		ldy #$50		; a0 50
B6_1cc1:		ldy #$98		; a0 98
B6_1cc3:		jsr $1000		; 20 00 10
B6_1cc6:		ldy #$10		; a0 10
B6_1cc8:		cpy #$d0		; c0 d0
B6_1cca:		jsr func_1f_1ed7		; 20 d7 fe
B6_1ccd:		lda #$0e		; a9 0e
B6_1ccf:		ldy #$04		; a0 04
B6_1cd1:		jsr setEntitySpecGroupA_animationDefIdxY_animateNextFrame		; 20 5c ef
B6_1cd4:		lda #$03		; a9 03
B6_1cd6:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1cd9:		lda #$80		; a9 80
B6_1cdb:		sta wEntityAI_idx.w, x	; 9d ef 05
B6_1cde:		asl a			; 0a
B6_1cdf:		sta $0669, x	; 9d 69 06
B6_1ce2:		sta $0657, x	; 9d 57 06
B6_1ce5:		lda #$20		; a9 20
B6_1ce7:		sta $0645, x	; 9d 45 06
B6_1cea:		lsr a			; 4a
B6_1ceb:		sta wEntityState.w, x	; 9d 70 04
B6_1cee:		lda #$33		; a9 33
B6_1cf0:		jsr playSound		; 20 5f e2
B6_1cf3:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1cf5:		rts				; 60 


B6_1cf6:		lda $0669, x	; bd 69 06
B6_1cf9:		and #$f0		; 29 f0
B6_1cfb:		bne B6_1cca ; d0 cd

B6_1cfd:		lda wPlayerStateDoubled.w, x	; bd 65 05
B6_1d00:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $9d0d
	.dw $9d25
	.dw $9d15
	.dw $9d38
	.dw $9d4b
B6_1d0d:		lda #$01		; a9 01
B6_1d0f:		eor wEntityState.w, x	; 5d 70 04
B6_1d12:		sta wEntityState.w, x	; 9d 70 04
B6_1d15:		dec $0645, x	; de 45 06
B6_1d18:		bne B6_1d59 ; d0 3f

B6_1d1a:		lda #$40		; a9 40
B6_1d1c:		sta wEntityState.w, x	; 9d 70 04
B6_1d1f:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1d22:		jmp $9d5a		; 4c 5a 9d


B6_1d25:		jsr $9d73		; 20 73 9d
B6_1d28:		dec $0645, x	; de 45 06
B6_1d2b:		bne B6_1d59 ; d0 2c

B6_1d2d:		lda #$40		; a9 40
B6_1d2f:		sta $0645, x	; 9d 45 06
B6_1d32:		dec wPlayerStateDoubled.w, x	; de 65 05
B6_1d35:		jmp $9a96		; 4c 96 9a


B6_1d38:		dec $0645, x	; de 45 06
B6_1d3b:		bne B6_1d59 ; d0 1c

B6_1d3d:		lda #$00		; a9 00
B6_1d3f:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B6_1d42:		lda #$60		; a9 60
B6_1d44:		sta wEntityState.w, x	; 9d 70 04
B6_1d47:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1d4a:		rts				; 60 


B6_1d4b:		dec $0645, x	; de 45 06
B6_1d4e:		dec $0645, x	; de 45 06
B6_1d51:		bne B6_1d59 ; d0 06

B6_1d53:		jsr func_1f_1ed7		; 20 d7 fe
B6_1d56:		sta $054e, x	; 9d 4e 05
B6_1d59:		rts				; 60 


B6_1d5a:		lda wEntityBaseX.w		; ad 38 04
B6_1d5d:		ldy wEntityBaseY.w		; ac 1c 04
B6_1d60:		sta $04			; 85 04
B6_1d62:		sty $05			; 84 05
B6_1d64:		jsr $ff30		; 20 30 ff
B6_1d67:		ldy $00			; a4 00
B6_1d69:		lda #$04		; a9 04
B6_1d6b:		sta $05			; 85 05
B6_1d6d:		jmp $ff40		; 4c 40 ff


B6_1d70:		jmp $9bbb		; 4c bb 9b


B6_1d73:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1d76:		cmp #$30		; c9 30
B6_1d78:		bcc B6_1d70 ; 90 f6

B6_1d7a:		cmp #$e8		; c9 e8
B6_1d7c:		bcs B6_1d70 ; b0 f2

B6_1d7e:		lda wEntityState.w, x	; bd 70 04
B6_1d81:		lsr a			; 4a
B6_1d82:		bcc B6_1d59 ; 90 d5

B6_1d84:		lda #$00		; a9 00
B6_1d86:		sta $054e, x	; 9d 4e 05
B6_1d89:		lda #$f8		; a9 f8
B6_1d8b:		sta wEntityState.w, x	; 9d 70 04
B6_1d8e:		rts				; 60 


B6_1d8f:		lda $07ec		; ad ec 07
B6_1d92:		and #$08		; 29 08
B6_1d94:		bne B6_1daf ; d0 19

B6_1d96:		lda #$08		; a9 08
B6_1d98:		ora $07ec		; 0d ec 07
B6_1d9b:		sta $07ec		; 8d ec 07
B6_1d9e:		lda #$00		; a9 00
B6_1da0:		sta $c1			; 85 c1
B6_1da2:		lda #$40		; a9 40
B6_1da4:		sta $0657, x	; 9d 57 06
B6_1da7:		jsr func_1f_05d3		; 20 d3 e5
B6_1daa:		lda #$2d		; a9 2d
B6_1dac:		sta wChrBankSpr_0c00			; 85 49
B6_1dae:		rts				; 60 


B6_1daf:		lda #$00		; a9 00
B6_1db1:		sta $07f0		; 8d f0 07
B6_1db4:		sta $07f1		; 8d f1 07
B6_1db7:		lda #$06		; a9 06
B6_1db9:		sta $b4			; 85 b4
B6_1dbb:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1dbe:		jsr $ff6d		; 20 6d ff
B6_1dc1:		jmp updateSprChrBanks_800_c00_1400		; 4c 42 e3


B6_1dc4:		lda #$5f		; a9 5f
B6_1dc6:		jsr $9fa1		; 20 a1 9f
B6_1dc9:		lda $b4			; a5 b4
B6_1dcb:		bpl B6_1dff ; 10 32

B6_1dcd:		lda #$01		; a9 01
B6_1dcf:		sta $c2			; 85 c2
B6_1dd1:		ldx #$01		; a2 01
B6_1dd3:		ldy #$2f		; a0 2f
B6_1dd5:		lda #$29		; a9 29
B6_1dd7:		jsr func_1f_05bf		; 20 bf e5
B6_1dda:		lda #$a0		; a9 a0
B6_1ddc:		sta $0785		; 8d 85 07
B6_1ddf:		lda #$2c		; a9 2c
B6_1de1:		sta $0786		; 8d 86 07
B6_1de4:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1de6:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1de9:		sta $07f0		; 8d f0 07
B6_1dec:		jsr $9f22		; 20 22 9f
B6_1def:		lda #$00		; a9 00
B6_1df1:		sta $0787		; 8d 87 07
B6_1df4:		sta $0645, x	; 9d 45 06
B6_1df7:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1dfa:		lda #$01		; a9 01
B6_1dfc:		sta $07f0		; 8d f0 07
B6_1dff:		rts				; 60 


B6_1e00:		jsr $ff60		; 20 60 ff
B6_1e03:		lda $07f1		; ad f1 07
B6_1e06:		bpl B6_1e11 ; 10 09

B6_1e08:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1e0a:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1e0d:		lda #$00		; a9 00
B6_1e0f:		sta $b4			; 85 b4
B6_1e11:		rts				; 60 


B6_1e12:		lda $0645, x	; bd 45 06
B6_1e15:		clc				; 18 
B6_1e16:		adc #$47		; 69 47
B6_1e18:		jsr displayStaticLayoutA		; 20 e9 ec
B6_1e1b:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1e1d:		inc $0645, x	; fe 45 06
B6_1e20:		lda $0645, x	; bd 45 06
B6_1e23:		cmp #$03		; c9 03
B6_1e25:		bcc B6_1e60 ; 90 39

B6_1e27:		lda #$2e		; a9 2e
B6_1e29:		sta wChrBankBG_0400			; 85 4b
B6_1e2b:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1e2e:		jmp $9f22		; 4c 22 9f


B6_1e31:		lda #$4a		; a9 4a
B6_1e33:		jsr $9fa1		; 20 a1 9f
B6_1e36:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1e38:		lda $b4			; a5 b4
B6_1e3a:		bpl B6_1e60 ; 10 24

B6_1e3c:		lda #$04		; a9 04
B6_1e3e:		sta $ba			; 85 ba
B6_1e40:		lda #$00		; a9 00
B6_1e42:		sta $bc			; 85 bc
B6_1e44:		lda #$05		; a9 05
B6_1e46:		sta $bb			; 85 bb
B6_1e48:		lda #$33		; a9 33
B6_1e4a:		sta $0657, x	; 9d 57 06
B6_1e4d:		inc wPlayerStateDoubled.w, x	; fe 65 05
B6_1e50:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1e53:		sta $07f0		; 8d f0 07
B6_1e56:		lda #$40		; a9 40
B6_1e58:		sta $07ec		; 8d ec 07
B6_1e5b:		lda #$01		; a9 01
B6_1e5d:		sta $07ee		; 8d ee 07
B6_1e60:		rts				; 60 


B6_1e61:		jsr $9b47		; 20 47 9b
B6_1e64:		jsr $9f22		; 20 22 9f
B6_1e67:		lda #$48		; a9 48
B6_1e69:		sta wEntityState.w, x	; 9d 70 04
B6_1e6c:		sec				; 38 
B6_1e6d:		lda wEntityFractionalX.w, x	; bd c4 04
B6_1e70:		sbc #$40		; e9 40
B6_1e72:		sta wEntityFractionalX.w, x	; 9d c4 04
B6_1e75:		bcs B6_1e7a ; b0 03

B6_1e77:		dec wEntityBaseX.w, x	; de 38 04
B6_1e7a:		inc $061d, x	; fe 1d 06
B6_1e7d:		lda $061d, x	; bd 1d 06
B6_1e80:		lsr a			; 4a
B6_1e81:		lsr a			; 4a
B6_1e82:		lsr a			; 4a
B6_1e83:		tay				; a8 
B6_1e84:		jsr $9d69		; 20 69 9d
B6_1e87:		inc $0645, x	; fe 45 06
B6_1e8a:		lda $0645, x	; bd 45 06
B6_1e8d:		cmp #$0c		; c9 0c
B6_1e8f:		bcc B6_1e93 ; 90 02

B6_1e91:		lda #$00		; a9 00
B6_1e93:		sta $0645, x	; 9d 45 06
B6_1e96:		bne B6_1e60 ; d0 c8

B6_1e98:		inc $05d8, x	; fe d8 05
B6_1e9b:		lda $05d8, x	; bd d8 05
B6_1e9e:		and #$1f		; 29 1f
B6_1ea0:		pha				; 48 
B6_1ea1:		sec				; 38 
B6_1ea2:		sbc #$1c		; e9 1c
B6_1ea4:		bcs B6_1ea8 ; b0 02

B6_1ea6:		lda #$00		; a9 00
B6_1ea8:		tay				; a8 
B6_1ea9:		lda $9ef0, y	; b9 f0 9e
B6_1eac:		jsr $9ff0		; 20 f0 9f
B6_1eaf:		pla				; 68 
B6_1eb0:		cmp #$1c		; c9 1c
B6_1eb2:		bne B6_1eb9 ; d0 05

B6_1eb4:		lda #$77		; a9 77
B6_1eb6:		jmp playSound		; 4c 5f e2


B6_1eb9:		cmp #$00		; c9 00
B6_1ebb:		bne B6_1e60 ; d0 a3

B6_1ebd:		jsr $9c58		; 20 58 9c
B6_1ec0:		lda $03			; a5 03
B6_1ec2:		bne B6_1e60 ; d0 9c

B6_1ec4:		jsr $feb9		; 20 b9 fe
B6_1ec7:		jsr func_1f_1ed7		; 20 d7 fe
B6_1eca:		jsr $9c6d		; 20 6d 9c
B6_1ecd:		ldy $6c			; a4 6c
B6_1ecf:		lda wEntityBaseY.w, y	; b9 1c 04
B6_1ed2:		clc				; 18 
B6_1ed3:		adc #$10		; 69 10
B6_1ed5:		sta wEntityBaseY.w, x	; 9d 1c 04
B6_1ed8:		lda wEntityBaseX.w, y	; b9 38 04
B6_1edb:		sta wEntityBaseX.w, x	; 9d 38 04
B6_1ede:		lda #$40		; a9 40
B6_1ee0:		sta wEntityState.w, x	; 9d 70 04
B6_1ee3:		lda #$b4		; a9 b4
B6_1ee5:		sta $0645, x	; 9d 45 06
B6_1ee8:		lda #$01		; a9 01
B6_1eea:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B6_1eed:		jmp $9d5a		; 4c 5a 9d


B6_1ef0:		lsr a			; 4a
B6_1ef1:	.db $4b
B6_1ef2:		jmp $fe4b		; 4c 4b fe


B6_1ef5:		adc $05			; 65 05
B6_1ef7:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B6_1efa:		lda #$06		; a9 06
B6_1efc:		sta $b4			; 85 b4
B6_1efe:		jmp $9af2		; 4c f2 9a


B6_1f01:		lda #$00		; a9 00
B6_1f03:		sta $ba			; 85 ba
B6_1f05:		lda #$40		; a9 40
B6_1f07:		sta $07ec		; 8d ec 07
B6_1f0a:		lda #$4a		; a9 4a
B6_1f0c:		jsr $9fa1		; 20 a1 9f
B6_1f0f:		lda $b4			; a5 b4
B6_1f11:		bpl B6_1f57 ; 10 44

B6_1f13:		lda #$02		; a9 02
B6_1f15:		sta $07f3		; 8d f3 07
B6_1f18:		lda #$80		; a9 80
B6_1f1a:		jsr $9978		; 20 78 99
B6_1f1d:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B6_1f1f:		jmp $9956		; 4c 56 99


B6_1f22:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1f25:		and #$07		; 29 07
B6_1f27:		sta $00			; 85 00
B6_1f29:		clc				; 18 
B6_1f2a:		adc #$2f		; 69 2f
B6_1f2c:		sta $42			; 85 42
B6_1f2e:		sec				; 38 
B6_1f2f:		lda #$0a		; a9 0a
B6_1f31:		sbc $00			; e5 00
B6_1f33:		sta $0783		; 8d 83 07
B6_1f36:		lda #$86		; a9 86
B6_1f38:		sta $0784		; 8d 84 07
B6_1f3b:		lda $07f0		; ad f0 07
B6_1f3e:		eor wEntityBaseY.w, x	; 5d 1c 04
B6_1f41:		and #$08		; 29 08
B6_1f43:		beq B6_1f48 ; f0 03

B6_1f45:		jsr $9f58		; 20 58 9f
B6_1f48:		lda wEntityBaseY.w, x	; bd 1c 04
B6_1f4b:		sta $07f0		; 8d f0 07
B6_1f4e:		sec				; 38 
B6_1f4f:		lda #$88		; a9 88
B6_1f51:		sbc wEntityBaseX.w, x	; fd 38 04
B6_1f54:		sta $0787		; 8d 87 07
B6_1f57:		rts				; 60 


B6_1f58:		lda wEntityVertSpeed.w, x	; bd 20 05
B6_1f5b:		bpl B6_1f81 ; 10 24

B6_1f5d:		clc				; 18 
B6_1f5e:		lda #$20		; a9 20
B6_1f60:		adc $0785		; 6d 85 07
B6_1f63:		sta $0785		; 8d 85 07
B6_1f66:		bcc B6_1f6b ; 90 03

B6_1f68:		inc $0786		; ee 86 07
B6_1f6b:		ldy $0786		; ac 86 07
B6_1f6e:		cpy #$2f		; c0 2f
B6_1f70:		bcc B6_1f80 ; 90 0e

B6_1f72:		cmp #$c0		; c9 c0
B6_1f74:		bcc B6_1f80 ; 90 0a

B6_1f76:		lda #$00		; a9 00
B6_1f78:		sta $0785		; 8d 85 07
B6_1f7b:		lda #$2c		; a9 2c
B6_1f7d:		sta $0786		; 8d 86 07
B6_1f80:		rts				; 60 


B6_1f81:		sec				; 38 
B6_1f82:		lda $0785		; ad 85 07
B6_1f85:		sbc #$20		; e9 20
B6_1f87:		sta $0785		; 8d 85 07
B6_1f8a:		bcs B6_1f8f ; b0 03

B6_1f8c:		dec $0786		; ce 86 07
B6_1f8f:		ldy $0786		; ac 86 07
B6_1f92:		cpy #$2c		; c0 2c
B6_1f94:		bcs B6_1fa0 ; b0 0a

B6_1f96:		lda #$a0		; a9 a0
B6_1f98:		sta $0785		; 8d 85 07
B6_1f9b:		lda #$2f		; a9 2f
B6_1f9d:		sta $0786		; 8d 86 07
B6_1fa0:		rts				; 60 


B6_1fa1:		sta $01			; 85 01
B6_1fa3:		lda wGameStateLoopCounter			; a5 1a
B6_1fa5:		and #$07		; 29 07
B6_1fa7:		bne B6_1fb6 ; d0 0d

B6_1fa9:		ldy $b4			; a4 b4
B6_1fab:		lda $9fe4, y	; b9 e4 9f
B6_1fae:		sta $04			; 85 04
B6_1fb0:		cmp #$ff		; c9 ff
B6_1fb2:		bne B6_1fb7 ; d0 03

B6_1fb4:		sta $b4			; 85 b4
B6_1fb6:		rts				; 60 


B6_1fb7:		lda $1d			; a5 1d
B6_1fb9:		clc				; 18 
B6_1fba:		adc #$07		; 69 07
B6_1fbc:		pha				; 48 
B6_1fbd:		lda $01			; a5 01
B6_1fbf:		jsr $9ff0		; 20 f0 9f
B6_1fc2:		pla				; 68 
B6_1fc3:		tax				; aa 
B6_1fc4:		jsr $9fd0		; 20 d0 9f
B6_1fc7:		jsr $9fd0		; 20 d0 9f
B6_1fca:		jsr $9fd0		; 20 d0 9f
B6_1fcd:		inc $b4			; e6 b4
B6_1fcf:		rts				; 60 


B6_1fd0:		ldy #$04		; a0 04
B6_1fd2:		lda $04			; a5 04
B6_1fd4:		clc				; 18 
B6_1fd5:		adc $0300, x	; 7d 00 03
B6_1fd8:		bpl B6_1fdc ; 10 02

B6_1fda:		lda #$0f		; a9 0f
B6_1fdc:		sta wVramQueue.w, x	; 9d 00 03
B6_1fdf:		inx				; e8 
B6_1fe0:		dey				; 88 
B6_1fe1:		bne B6_1fd2 ; d0 ef

B6_1fe3:		rts				; 60 


B6_1fe4:		cpy #$d0		; c0 d0
B6_1fe6:		cpx #$f0		; e0 f0
B6_1fe8:		.db $00				; 00
B6_1fe9:	.db $ff
B6_1fea:		.db $00				; 00
B6_1feb:		beq B6_1fcd ; f0 e0

B6_1fed:		;removed
	.db $d0 $c0

B6_1fef:	.db $ff
B6_1ff0:		jsr displayStaticLayoutA		; 20 e9 ec
B6_1ff3:		lda #$04		; a9 04
B6_1ff5:		jmp displayStaticLayoutA		; 4c e9 ec
