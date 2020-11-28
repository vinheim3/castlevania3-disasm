
reverseEnemyDirection_todo:
B22_004b:		sec				; 38 
B22_004c:		lda #$00		; a9 00
B22_004e:		sbc wEntityHorizSubSpeed.w, x	; fd 09 05
B22_0051:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0054:		lda #$00		; a9 00
B22_0056:		sbc wEntityHorizSpeed.w, x	; fd f2 04
B22_0059:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_005c:		rts				; 60 


B22_005d:		sec				; 38 
B22_005e:		lda #$00		; a9 00
B22_0060:		sbc $0537, x	; fd 37 05
B22_0063:		sta $0537, x	; 9d 37 05
B22_0066:		lda #$00		; a9 00
B22_0068:		sbc $0520, x	; fd 20 05
B22_006b:		sta $0520, x	; 9d 20 05
B22_006e:		rts				; 60 


B22_006f:		clc				; 18 
B22_0070:		adc wEntityHorizSubSpeed.w, x	; 7d 09 05
B22_0073:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0076:		lda #$00		; a9 00
B22_0078:		adc wEntityHorizSpeed.w, x	; 7d f2 04
B22_007b:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_007e:		rts				; 60 


func_16_007f:
B22_007f:		clc				; 18 
B22_0080:		adc $0537, x	; 7d 37 05
B22_0083:		sta $0537, x	; 9d 37 05
B22_0086:		lda #$00		; a9 00
B22_0088:		adc $0520, x	; 7d 20 05
B22_008b:		sta $0520, x	; 9d 20 05
B22_008e:		rts				; 60 


B22_008f:		eor #$ff		; 49 ff
B22_0091:		sec				; 38 
B22_0092:		adc wEntityHorizSubSpeed.w, x	; 7d 09 05
B22_0095:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0098:		lda #$ff		; a9 ff
B22_009a:		adc wEntityHorizSpeed.w, x	; 7d f2 04
B22_009d:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_00a0:		rts				; 60 


B22_00a1:		eor #$ff		; 49 ff
B22_00a3:		sec				; 38 
B22_00a4:		adc $0537, x	; 7d 37 05
B22_00a7:		sta $0537, x	; 9d 37 05
B22_00aa:		lda #$ff		; a9 ff
B22_00ac:		adc $0520, x	; 7d 20 05
B22_00af:		sta $0520, x	; 9d 20 05
B22_00b2:		rts				; 60 


B22_00b3:		lda wEntityBaseX.w, x	; bd 38 04
B22_00b6:		sec				; 38 
B22_00b7:		sbc wEntityBaseX.w		; ed38 04
B22_00ba:		bcs B22_00c0 ; b0 04

B22_00bc:		eor #$ff		; 49 ff
B22_00be:		adc #$01		; 69 01
B22_00c0:		rts				; 60 


B22_00c1:		lda wEntityBaseY.w, x	; bd 1c 04
B22_00c4:		sec				; 38 
B22_00c5:		sbc $11			; e5 11
B22_00c7:		bcs B22_00c0 ; b0 f7

B22_00c9:		bcc B22_00bc ; 90 f1

B22_00cb:		lda wEntityBaseX.w, x	; bd 38 04
B22_00ce:		sec				; 38 
B22_00cf:		sbc $10			; e5 10
B22_00d1:		bcs B22_00c0 ; b0 ed

B22_00d3:		bcc B22_00bc ; 90 e7

B22_00d5:		lda wEntityBaseY.w, x	; bd 1c 04
B22_00d8:		sec				; 38 
B22_00d9:		sbc wEntityBaseY.w		; ed1c 04
B22_00dc:		bcs B22_00e2 ; b0 04

B22_00de:		eor #$ff		; 49 ff
B22_00e0:		adc #$01		; 69 01
B22_00e2:		rts				; 60 


B22_00e3:		ldx #$09		; a2 09
B22_00e5:		lda $054e, x	; bd 4e 05
B22_00e8:		beq B22_00f1 ; f0 07

B22_00ea:		inx				; e8 
B22_00eb:		cpx #$0d		; e0 0d
B22_00ed:		bcc B22_00e5 ; 90 f6

B22_00ef:		lda #$01		; a9 01
B22_00f1:		rts				; 60 


B22_00f2:		ldx #$07		; a2 07
B22_00f4:		lda $054e, x	; bd 4e 05
B22_00f7:		beq B22_00f1 ; f0 f8

B22_00f9:		inx				; e8 
B22_00fa:		cpx #$13		; e0 13
B22_00fc:		bcc B22_00f4 ; 90 f6

B22_00fe:		bcs B22_00ef ; b0 ef

B22_0100:		ldx #$01		; a2 01
B22_0102:		lda $054e, x	; bd 4e 05
B22_0105:		beq B22_010c ; f0 05

B22_0107:		inx				; e8 
B22_0108:		cpx #$13		; e0 13
B22_010a:		bcc B22_0102 ; 90 f6

B22_010c:		rts				; 60 


entityPhaseFunc_00_setEntityAIIdxTo0:
	lda #$00
	sta wEntityAI_idx.w, x

entityPhaseFunc_75_stub:
	rts


B22_0113:		lda wCurrRoomGroup		; a5 32
B22_0115:		cmp #$08		; c9 08
B22_0117:		bne B22_011e ; d0 05

B22_0119:		lda wCurrRoomSection			; a5 33
B22_011b:		cmp #$03		; c9 03
B22_011d:		rts				; 60 


B22_011e:		clc				; 18 
B22_011f:		rts				; 60 


entityPhaseFunc_a0:
B22_0120:		jsr $8113		; 20 13 81
B22_0123:		bcc B22_011f ; 90 fa

B22_0125:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0128:		cmp $ca			; c5 ca
B22_012a:		bcc B22_011f ; 90 f3

B22_012c:		jsr $84b2		; 20 b2 84
B22_012f:		sec				; 38 
B22_0130:		rts				; 60 


func_16_0131:
B22_0131:		lda wInGameSubstate			; a5 2a
B22_0133:		cmp #$1b		; c9 1b
B22_0135:		bne B22_014f ; d0 18

B22_0137:		lda $0470, x	; bd 70 04
B22_013a:		and #$02		; 29 02
B22_013c:		bne B22_014f ; d0 11

B22_013e:		jsr $b6e6		; 20 e6 b6
B22_0141:		clc				; 18 
B22_0142:		lda $c7			; a5 c7
B22_0144:		adc #$04		; 69 04
B22_0146:		sta $05d8, x	; 9d d8 05
B22_0149:		jsr func_1f_1f8a		; 20 8a ff
B22_014c:		lda #$00		; a9 00
B22_014e:		rts				; 60 

B22_014f:		lda wEntityAI_idx.w, x	; bd ef 05
B22_0152:		rts				; 60 


entityPhaseFunc_6d:
B22_0153:		lda #$10		; a9 10
B22_0155:		jsr func_16_007f		; 20 7f 80
B22_0158:		ldy #$06		; a0 06
B22_015a:		jsr func_17_17a6		; 20 a6 b7
B22_015d:		beq entityPhaseFunc_75_stub ; f0 b3

B22_015f:		ldx $6c			; a6 6c
B22_0161:		jsr func_16_0b91		; 20 91 8b
B22_0164:		inc wEntityPhase.w, x	; fe c1 05
B22_0167:		jmp func_1f_1ec8		; 4c c8 fe


entityPhaseFunc_a1:
B22_016a:		lda #$10		; a9 10
B22_016c:		jsr func_16_007f		; 20 7f 80
B22_016f:		ldy #$0e		; a0 0e
B22_0171:		jsr func_17_17a6		; 20 a6 b7
B22_0174:		beq B22_019a ; f0 24

B22_0176:		ldx $6c			; a6 6c
B22_0178:		lda wEntityBaseY.w, x	; bd 1c 04
B22_017b:		and #$f8		; 29 f8
B22_017d:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0180:		jmp $8164		; 4c 64 81


entityPhaseFunc_9e:
B22_0183:		jsr $81ef		; 20 ef 81
B22_0186:		lda #$10		; a9 10
B22_0188:		jsr func_16_007f		; 20 7f 80
B22_018b:		lda wEntityBaseY.w, x	; bd 1c 04
B22_018e:		cmp #$f8		; c9 f8
B22_0190:		bcc B22_019a ; 90 08

B22_0192:		lda #$23		; a9 23
B22_0194:		jsr playSound		; 20 5f e2
B22_0197:		inc wEntityPhase.w, x	; fe c1 05
B22_019a:		rts				; 60 


entityPhaseFunc_01:
B22_019b:		inc wEntityPhase.w, x	; fe c1 05

func_16_019e:
B22_019e:		lda $0470, x	; bd 70 04
B22_01a1:		and #$bf		; 29 bf
B22_01a3:		sta $0470, x	; 9d 70 04
B22_01a6:		rts				; 60 


entityPhaseFunc_2a:
B22_01a7:		inc wEntityPhase.w, x	; fe c1 05

func_16_01aa:
B22_01aa:		lda $0470, x	; bd 70 04
B22_01ad:		ora #$40		; 09 40
B22_01af:		sta $0470, x	; 9d 70 04
B22_01b2:		rts				; 60 


entityPhaseFunc_2b:
B22_01b3:		inc wEntityPhase.w, x	; fe c1 05
B22_01b6:		jmp reverseEnemyDirection_todo		; 4c 4b 80


entityPhaseFunc_03:
B22_01b9:		inc wEntityPhase.w, x	; fe c1 05
B22_01bc:		lda $0470, x	; bd 70 04
B22_01bf:		and #$f7		; 29 f7
B22_01c1:		sta $0470, x	; 9d 70 04
B22_01c4:		rts				; 60 


entityPhaseFunc_0a:
B22_01c5:		inc wEntityPhase.w, x	; fe c1 05
B22_01c8:		lda $0470, x	; bd 70 04
B22_01cb:		ora #$88		; 09 88
B22_01cd:		sta $0470, x	; 9d 70 04
B22_01d0:		rts				; 60 


entityPhaseFunc_54:
B22_01d1:		inc wEntityPhase.w, x	; fe c1 05
B22_01d4:		lda $0470, x	; bd 70 04
B22_01d7:		ora #$10		; 09 10
B22_01d9:		sta $0470, x	; 9d 70 04
B22_01dc:		rts				; 60 


entityPhaseFunc_53:
B22_01dd:		inc wEntityPhase.w, x	; fe c1 05
B22_01e0:		lda $0470, x	; bd 70 04
B22_01e3:		and #$ef		; 29 ef
B22_01e5:		sta $0470, x	; 9d 70 04
B22_01e8:		rts				; 60 


entityPhaseFunc_2d:
B22_01e9:		jsr func_16_019e		; 20 9e 81

func_16_01ec:
B22_01ec:		inc wEntityPhase.w, x	; fe c1 05
B22_01ef:		lda $0470, x	; bd 70 04
B22_01f2:		ora #$20		; 09 20
B22_01f4:		sta $0470, x	; 9d 70 04
B22_01f7:		rts				; 60 


func_16_01f8:
B22_01f8:		lda $0470, x	; bd 70 04
B22_01fb:		and #$df		; 29 df
B22_01fd:		sta $0470, x	; 9d 70 04
B22_0200:		rts				; 60 


entityPhaseFunc_55:
B22_0201:		inc wEntityPhase.w, x	; fe c1 05
B22_0204:		ldy #$01		; a0 01
B22_0206:		lda ($02), y	; b1 02
B22_0208:		sta $0657, x	; 9d 57 06
B22_020b:		rts				; 60 


entityPhaseFunc_04_setPhase:
	ldy #$01
	lda (wPhaseFuncDataAddr), y
	sta wEntityPhase.w, x
	rts


entityPhaseFunc_62:
B22_0214:		ldy #$01		; a0 01
B22_0216:		clc				; 18 
B22_0217:		lda ($02), y	; b1 02
B22_0219:		adc wEntityBaseX.w, x	; 7d 38 04
B22_021c:		sta wEntityBaseX.w, x	; 9d 38 04
B22_021f:		iny				; c8 
B22_0220:		clc				; 18 
B22_0221:		lda ($02), y	; b1 02
B22_0223:		adc wEntityBaseY.w, x	; 7d 1c 04
B22_0226:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0229:		inc wEntityPhase.w, x	; fe c1 05

entityPhaseFunc_72_stub:
B22_022c:		rts				; 60 


entityPhaseFunc_05:
B22_022d:		inc wEntityPhase.w, x	; fe c1 05

func_16_0230:
B22_0230:		lda #$00		; a9 00
B22_0232:		ldy wEntityBaseX.w, x	; bc 38 04
B22_0235:		cpy wEntityBaseX.w		; cc 38 04
B22_0238:		bcc B22_023c ; 90 02

B22_023a:		lda #$01		; a9 01

B22_023c:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_023f:		rts				; 60 


entityPhaseFunc_91:
B22_0240:		inc wEntityPhase.w, x	; fe c1 05
B22_0243:		jsr func_16_0230		; 20 30 82
B22_0246:		lda $0470, x	; bd 70 04
B22_0249:		and #$01		; 29 01
B22_024b:		beq B22_0255 ; f0 08

B22_024d:		lda wEntityXFlipped.w, x	; bd a8 04
B22_0250:		eor #$01		; 49 01
B22_0252:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0255:		rts				; 60 


entityPhaseFunc_06:
B22_0256:		inc wEntityPhase.w, x	; fe c1 05
B22_0259:		sec				; 38 
B22_025a:		lda $054e, x	; bd 4e 05
B22_025d:		sbc #$48		; e9 48
B22_025f:		tay				; a8 
B22_0260:		lda $826c, y	; b9 6c 82
B22_0263:		tay				; a8 
B22_0264:		lda #$08		; a9 08
B22_0266:		jsr func_1f_0f5c		; 20 5c ef
B22_0269:		jmp updateEntityXanimationFrame		; 4c 75 ef


B22_026c:		.db $00				; 00
B22_026d:		ora ($03, x)	; 01 03
B22_026f:	.db $04
B22_0270:	.db $02
B22_0271:		ora $06			; 05 06
B22_0273:		bpl B22_027c ; 10 07

B22_0275:		php				; 08 
B22_0276:		ora #$11		; 09 11
B22_0278:	.db $0b
B22_0279:		ora $0600		; 0d 00 06
B22_027c:	.db $0f
B22_027d:		.db $00				; 00
B22_027e:	.db $12
B22_027f:		ora $1b			; 05 1b
B22_0281:	.db $1c
B22_0282:		.db $00				; 00
B22_0283:		.db $00				; 00


entityPhaseFunc_13:
B22_0284:		inc wEntityPhase.w, x	; fe c1 05
B22_0287:		ldy #$01		; a0 01
B22_0289:		lda ($02), y	; b1 02
B22_028b:		sta $00			; 85 00
B22_028d:		iny				; c8 
B22_028e:		lda ($02), y	; b1 02
B22_0290:		tay				; a8 
B22_0291:		lda $00			; a5 00
B22_0293:		jsr func_1f_0f5c		; 20 5c ef
B22_0296:		jsr updateEntityXanimationFrame		; 20 75 ef
B22_0299:		jmp func_16_01f8		; 4c f8 81


entityPhaseFunc_8b:
B22_029c:		ldy #$07		; a0 07
B22_029e:		lda $48			; a5 48
B22_02a0:		cmp #$08		; c9 08
B22_02a2:		bne B22_02a6 ; d0 02

B22_02a4:		ldy #$0a		; a0 0a
B22_02a6:		lda #$12		; a9 12
B22_02a8:		inc wEntityPhase.w, x	; fe c1 05
B22_02ab:		jmp $8293		; 4c 93 82


entityPhaseFunc_a5:
B22_02ae:		ldy #$07		; a0 07
B22_02b0:		lda #$14		; a9 14
B22_02b2:		bne B22_02a8 ; d0 f4

entityPhaseFunc_8c:
B22_02b4:		ldy #$00		; a0 00
B22_02b6:		lda $48			; a5 48
B22_02b8:		cmp #$08		; c9 08
B22_02ba:		beq B22_02bd ; f0 01

B22_02bc:		iny				; c8 
B22_02bd:		lda $82d1, y	; b9 d1 82
B22_02c0:		sta $00			; 85 00
B22_02c2:		lda $82cd, y	; b9 cd 82
B22_02c5:		ldy $00			; a4 00
B22_02c7:		jsr $82a8		; 20 a8 82
B22_02ca:		jmp $82f0		; 4c f0 82


B22_02cd:		php				; 08 
B22_02ce:	.db $12
B22_02cf:		php				; 08 
B22_02d0:	.db $12
B22_02d1:		ora ($0b, x)	; 01 0b
B22_02d3:	.db $04
B22_02d4:	.db $0c

entityPhaseFunc_8d:
B22_02d5:		jsr func_16_0230		; 20 30 82
B22_02d8:		jsr func_16_01ec		; 20 ec 81
B22_02db:		ldy #$00		; a0 00
B22_02dd:		lda $48			; a5 48
B22_02df:		cmp #$08		; c9 08
B22_02e1:		beq B22_02e4 ; f0 01

B22_02e3:		iny				; c8 
B22_02e4:		lda $82cd, y	; b9 cd 82
B22_02e7:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_02ea:		lda $8305, y	; b9 05 83
B22_02ed:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_02f0:		lda wCurrRoomGroup		; a5 32
B22_02f2:		cmp #$05		; c9 05
B22_02f4:		bne B22_0304 ; d0 0e

B22_02f6:		lda wCurrRoomSection			; a5 33
B22_02f8:		cmp #$03		; c9 03
B22_02fa:		bne B22_0304 ; d0 08

B22_02fc:		lda wEntityPaletteOverride.w, x	; bd 54 04
B22_02ff:		ora #$03		; 09 03
B22_0301:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_0304:		rts				; 60 


B22_0305:	.db $12
B22_0306:		.db $70


entityPhaseFunc_95:
	ldy #$02
B22_0309:		lda $49			; a5 49
B22_030b:		cmp #$0f		; c9 0f
B22_030d:		beq B22_02bd ; f0 ae

B22_030f:		iny				; c8 
B22_0310:		jmp $82bd		; 4c bd 82


entityPhaseFunc_4f:
B22_0313:		lda #$01		; a9 01
B22_0315:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0318:		lda #$00		; a9 00
B22_031a:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_031d:		lda $054e, x	; bd 4e 05
B22_0320:		sec				; 38 
B22_0321:		sbc #$93		; e9 93
B22_0323:		tay				; a8 
B22_0324:		lda data_16_0333.w, y	; b9 33 83
B22_0327:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_032a:		lda data_16_0353.w, y	; b9 53 83
B22_032d:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0330:		jmp func_16_01ec		; 4c ec 81

data_16_0333:
	.db $00
	.db $00
	.db $00
	.db $00
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $00
	.db $00
	.db $00
	.db $00
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e
	.db $0e

data_16_0353:
	.db $46
	.db $42
	.db $4e
	.db $50
	.db $68
	.db $54
	.db $56
	.db $52
	.db $4e
	.db $46
	.db $54
	.db $54
	.db $6a
	.db $1c
	.db $1e
	.db $20
	.db $24
	.db $24
	.db $24
	.db $24
	.db $24
	.db $24
	.db $24
	.db $24
	.db $24
	.db $22
	.db $10
	.db $0e
	.db $58
	.db $5a
	.db $6a
	.db $10


entityPhaseFunc_87:
B22_0373:		inc wEntityPhase.w, x
B22_0376:		lda #$0e		; a9 0e
B22_0378:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_037b:		sec				; 38 
B22_037c:		lda $054e, x	; bd 4e 05
B22_037f:		sbc #$a3		; e9 a3
B22_0381:		tay				; a8 
B22_0382:		lda $8389, y	; b9 89 83
B22_0385:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0388:		rts				; 60 


B22_0389:		rol $28			; 26 28
B22_038b:		rol a			; 2a
B22_038c:		bit $302e		; 2c 2e 30
B22_038f:	.db $32
B22_0390:	.db $34
B22_0391:		.db $70


entityPhaseFunc_88:
	ldy #$00
B22_0394:		lda $48			; a5 48
B22_0396:		cmp #$14		; c9 14
B22_0398:		bne B22_039c ; d0 02

B22_039a:		ldy #$0e		; a0 0e
B22_039c:		sty $00			; 84 00
B22_039e:		lda #$12		; a9 12
B22_03a0:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_03a3:		ldy #$01		; a0 01
B22_03a5:		clc				; 18 
B22_03a6:		lda ($02), y	; b1 02
B22_03a8:		adc $00			; 65 00
B22_03aa:		jmp $83b7		; 4c b7 83


entityPhaseFunc_0b:
B22_03ad:		ldy #$01		; a0 01
B22_03af:		lda ($02), y	; b1 02
B22_03b1:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_03b4:		iny				; c8 
B22_03b5:		lda ($02), y	; b1 02
B22_03b7:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_03ba:		jmp func_16_01ec		; 4c ec 81


entityPhaseFunc_07:
B22_03bd:		jsr func_16_01f8		; 20 f8 81
B22_03c0:		jsr $8259		; 20 59 82

entityPhaseFunc_1e:
B22_03c3:		inc wEntityPhase.w, x	; fe c1 05
B22_03c6:		jsr func_16_01aa		; 20 aa 81
B22_03c9:		jsr func_16_0230		; 20 30 82
B22_03cc:		jsr func_1f_1ec8		; 20 c8 fe
B22_03cf:		ldy #$01		; a0 01
B22_03d1:		lda ($02), y	; b1 02
B22_03d3:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_03d6:		iny				; c8 
B22_03d7:		lda ($02), y	; b1 02
B22_03d9:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05

func_16_03dc:
B22_03dc:		ldy wEntityXFlipped.w, x	; bc a8 04
B22_03df:		beq B22_03e4 ; f0 03

B22_03e1:		jmp reverseEnemyDirection_todo		; 4c 4b 80

B22_03e4:		rts				; 60 


entityPhaseFunc_a6:
B22_03e5:		jsr func_16_01f8		; 20 f8 81
B22_03e8:		ldy #$08		; a0 08
B22_03ea:		lda #$14		; a9 14
B22_03ec:		jsr func_1f_0f5c		; 20 5c ef
B22_03ef:		jsr updateEntityXanimationFrame		; 20 75 ef
B22_03f2:		jmp $83c3		; 4c c3 83


entityPhaseFunc_08:
B22_03f5:		ldy #$01		; a0 01
B22_03f7:		lda ($02), y	; b1 02
B22_03f9:		jsr jumpTablePreserveY		; 20 6d e8
B22_03fc:	.db $04
B22_03fd:		sty $53			; 84 53
B22_03ff:		sty $10			; 84 10
B22_0401:		sty $28			; 84 28
B22_0403:		sty $20			; 84 20
B22_0405:	.db $1c
B22_0406:		sty $b9			; 84 b9
B22_0408:	.db $0c
B22_0409:		sty $d0			; 84 d0
B22_040b:		and $b0f8, y	; 39 f8 b0
B22_040e:		ldy #$c8		; a0 c8
B22_0410:		jsr $841c		; 20 1c 84
B22_0413:		lda $8418, y	; b9 18 84
B22_0416:		bne B22_0445 ; d0 2d

B22_0418:		pha				; 48 
B22_0419:		rts				; 60 


B22_041a:		;removed
	.db $50 $38

B22_041c:		txa				; 8a 
B22_041d:		adc wEntityBaseX.w		; 6d 38 04
B22_0420:		and $1f			; 25 1f
B22_0422:		adc $1a			; 65 1a
B22_0424:		and #$03		; 29 03
B22_0426:		tay				; a8 
B22_0427:		rts				; 60 


B22_0428:		jsr $841c		; 20 1c 84
B22_042b:		ldy $07f6		; ac f6 07
B22_042e:		beq B22_0433 ; f0 03

B22_0430:		clc				; 18 
B22_0431:		adc #$04		; 69 04
B22_0433:		tay				; a8 
B22_0434:		lda $8439, y	; b9 39 84
B22_0437:		bne B22_0445 ; d0 0c

B22_0439:		ldy #$60		; a0 60
B22_043b:		bvs B22_03bd ; 70 80

B22_043d:		;removed
	.db $30 $48

B22_043f:		sec				; 38 
B22_0440:		rti				; 40 


entityPhaseFunc_1f:
B22_0441:		ldy #$01		; a0 01
B22_0443:		lda ($02), y	; b1 02
B22_0445:		sta $0606, x	; 9d 06 06
B22_0448:		inc wEntityPhase.w, x	; fe c1 05
B22_044b:		rts				; 60 


entityPhaseFunc_20:
B22_044c:		dec $0606, x	; de 06 06
B22_044f:		bne B22_044b ; d0 fa

B22_0451:		beq B22_0448 ; f0 f5

B22_0453:		ldy $07f6		; ac f6 07
B22_0456:		txa				; 8a 
B22_0457:		adc $1f			; 65 1f
B22_0459:		and #$07		; 29 07
B22_045b:		clc				; 18 
B22_045c:		adc $8475, y	; 79 75 84
B22_045f:		tay				; a8 
B22_0460:		lda $8465, y	; b9 65 84
B22_0463:		bne B22_0445 ; d0 e0

B22_0465:		pla				; 68 
B22_0466:		sty $62			; 84 62
B22_0468:	.db $73
B22_0469:		sty $79, x		; 94 79
B22_046b:		sta ($a7, x)	; 81 a7
B22_046d:		cli				; 58 
B22_046e:	.db $74
B22_046f:	.db $42
B22_0470:	.db $63
B22_0471:		bit $49			; 24 49
B22_0473:		and ($47), y	; 31 47
B22_0475:		.db $00				; 00
B22_0476:		php				; 08 


entityPhaseFunc_9f:
B22_0477:		jsr $80d5		; 20 d5 80
B22_047a:		cmp #$30		; c9 30
B22_047c:		bcs B22_0481 ; b0 03

B22_047e:		inc wEntityPhase.w, x	; fe c1 05
B22_0481:		rts				; 60 


entityPhaseFunc_0c:
B22_0482:		ldy #$01		; a0 01
B22_0484:		lda ($02), y	; b1 02
B22_0486:		sta $0606, x	; 9d 06 06
B22_0489:		jsr $80b3		; 20 b3 80
B22_048c:		cmp $0606, x	; dd 06 06
B22_048f:		bcs B22_0494 ; b0 03

B22_0491:		inc wEntityPhase.w, x	; fe c1 05
B22_0494:		rts				; 60 


entityPhaseFunc_4d:
B22_0495:		ldy #$01		; a0 01
B22_0497:		lda ($02), y	; b1 02
B22_0499:		sta $09			; 85 09
B22_049b:		iny				; c8 
B22_049c:		lda ($02), y	; b1 02
B22_049e:		sta $08			; 85 08
B22_04a0:		jsr $80b3		; 20 b3 80
B22_04a3:		cmp $09			; c5 09
B22_04a5:		bcs B22_0494 ; b0 ed

B22_04a7:		jsr $80d5		; 20 d5 80
B22_04aa:		cmp $08			; c5 08
B22_04ac:		bcs B22_0494 ; b0 e6

B22_04ae:		bcc B22_0491 ; 90 e1

B22_04b0:		ldx $6c			; a6 6c

entityPhaseFunc_27_end:
B22_04b2:		jsr func_16_0e36		; 20 36 8e
	jmp entityPhaseFunc_00_setEntityAIIdxTo0


entityPhaseFunc_2e:
B22_04b8:		ldy #$04		; a0 04
B22_04ba:		lda #$00		; a9 00
B22_04bc:		jsr func_1f_1c1e		; 20 1e fc
B22_04bf:		beq B22_04c3 ; f0 02

B22_04c1:		bne B22_04b0 ; d0 ed

B22_04c3:		ldx $6c			; a6 6c
B22_04c5:		jmp $8e20		; 4c 20 8e


entityPhaseFunc_21:
B22_04c8:		jsr $8240		; 20 40 82
B22_04cb:		lda $061d, x	; bd 1d 06
B22_04ce:		cmp #$05		; c9 05
B22_04d0:		bcc B22_04da ; 90 08

B22_04d2:		lda wEntityXFlipped.w, x	; bd a8 04
B22_04d5:		eor #$01		; 49 01
B22_04d7:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_04da:		jsr func_16_01aa		; 20 aa 81
B22_04dd:		jsr $80b3		; 20 b3 80
B22_04e0:		cmp #$50		; c9 50
B22_04e2:		bcs B22_0505 ; b0 21

B22_04e4:		lda wEntityXFlipped.w		; ad a8 04
B22_04e7:		cmp wEntityXFlipped.w, x	; dd a8 04
B22_04ea:		beq B22_0505 ; f0 19

B22_04ec:		inc $061d, x	; fe 1d 06
B22_04ef:		lda #$1c		; a9 1c
B22_04f1:		sta $0606, x	; 9d 06 06
B22_04f4:		lda #$fc		; a9 fc
B22_04f6:		ldy #$c0		; a0 c0
B22_04f8:		jsr $8518		; 20 18 85
B22_04fb:		lda #$01		; a9 01
B22_04fd:		ldy #$00		; a0 00

func_16_04ff:
B22_04ff:		jsr $8520		; 20 20 85
B22_0502:		jmp func_16_03dc		; 4c dc 83


B22_0505:		lda #$24		; a9 24
B22_0507:		sta $0606, x	; 9d 06 06
B22_050a:		lda #$ff		; a9 ff
B22_050c:		ldy #$00		; a0 00
B22_050e:		jsr $8518		; 20 18 85
B22_0511:		lda #$02		; a9 02
B22_0513:		ldy #$00		; a0 00
B22_0515:		jmp func_16_04ff		; 4c ff 84


B22_0518:		sta $0520, x	; 9d 20 05
B22_051b:		tya				; 98 
B22_051c:		sta $0537, x	; 9d 37 05
B22_051f:		rts				; 60 


B22_0520:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_0523:		tya				; 98 
B22_0524:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0527:		rts				; 60 


entityPhaseFunc_0f:
B22_0528:		inc wEntityPhase.w, x	; fe c1 05
B22_052b:		jsr func_16_0230		; 20 30 82
B22_052e:		jsr func_16_01aa		; 20 aa 81
B22_0531:		jsr $80b3		; 20 b3 80
B22_0534:		cmp #$40		; c9 40
B22_0536:		bcs B22_0505 ; b0 cd

B22_0538:		lda wEntityXFlipped.w		; ad a8 04
B22_053b:		cmp wEntityXFlipped.w, x	; dd a8 04
B22_053e:		beq B22_0505 ; f0 c5

B22_0540:		inc $0633, x	; fe 33 06
B22_0543:		lda #$12		; a9 12
B22_0545:		sta $0606, x	; 9d 06 06
B22_0548:		lda #$fe		; a9 fe
B22_054a:		ldy #$00		; a0 00
B22_054c:		jsr $8518		; 20 18 85
B22_054f:		lda #$01		; a9 01
B22_0551:		ldy #$20		; a0 20
B22_0553:		jmp func_16_04ff		; 4c ff 84


entityPhaseFunc_44:
B22_0556:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0559:		cmp #$f8		; c9 f8
B22_055b:		bcc B22_056c ; 90 0f

B22_055d:		lda #$00		; a9 00
B22_055f:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0562:		ldy #$01		; a0 01
B22_0564:		lda ($02), y	; b1 02
B22_0566:		sta wEntityPhase.w, x	; 9d c1 05
B22_0569:		jmp func_1f_1ec8		; 4c c8 fe


entityPhaseFunc_10:
B22_056c:		lda $0606, x	; bd 06 06
B22_056f:		jsr func_16_007f		; 20 7f 80
B22_0572:		ldy #$04		; a0 04
B22_0574:		jsr func_17_17a6		; 20 a6 b7
B22_0577:		bne B22_05b2 ; d0 39

B22_0579:		ldy #$02		; a0 02
B22_057b:		ldx $6c			; a6 6c
B22_057d:		jsr func_17_17a6		; 20 a6 b7
B22_0580:		bne B22_05ad ; d0 2b

B22_0582:		lda $0520, x	; bd 20 05
B22_0585:		bmi B22_05ac ; 30 25

B22_0587:		ldy #$03		; a0 03
B22_0589:		jsr func_17_17a6		; 20 a6 b7
B22_058c:		beq B22_05ac ; f0 1e

B22_058e:		lda $054e, x	; bd 4e 05
B22_0591:		cmp #$53		; c9 53
B22_0593:		bne B22_059a ; d0 05

B22_0595:		lda #$0d		; a9 0d
B22_0597:		jsr playSound		; 20 5f e2
B22_059a:		ldx $6c			; a6 6c
B22_059c:		jsr func_1f_1ec8		; 20 c8 fe
B22_059f:		inc wEntityPhase.w, x	; fe c1 05
B22_05a2:		lda wEntityBaseY.w, x	; bd 1c 04
B22_05a5:		and #$f0		; 29 f0
B22_05a7:		ora #$08		; 09 08
B22_05a9:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_05ac:		rts				; 60 


B22_05ad:		ldx $6c			; a6 6c
B22_05af:		jmp func_16_095e		; 4c 5e 89


B22_05b2:		ldx $6c			; a6 6c
B22_05b4:		lda $0520, x	; bd 20 05
B22_05b7:		bpl B22_05ac ; 10 f3

B22_05b9:		jmp $805d		; 4c 5d 80


entityPhaseFunc_8a:
B22_05bc:		lda $0606, x	; bd 06 06
B22_05bf:		jsr func_16_007f		; 20 7f 80
B22_05c2:		lda $0520, x	; bd 20 05
B22_05c5:		bmi B22_05e7 ; 30 20

B22_05c7:		lda #$16		; a9 16
B22_05c9:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_05cc:		ldy #$08		; a0 08
B22_05ce:		jsr func_17_17a6		; 20 a6 b7
B22_05d1:		beq B22_05e7 ; f0 14

B22_05d3:		cmp #$01		; c9 01
B22_05d5:		beq B22_05e4 ; f0 0d

B22_05d7:		lda #$02		; a9 02
B22_05d9:		sta $061d, x	; 9d 1d 06
B22_05dc:		lda #$14		; a9 14
B22_05de:		sta wEntityPhase.w, x	; 9d c1 05
B22_05e1:		jmp $85fe		; 4c fe 85


B22_05e4:		inc wEntityPhase.w, x	; fe c1 05
B22_05e7:		rts				; 60 


entityPhaseFunc_5c:
B22_05e8:		lda $0606, x	; bd 06 06
B22_05eb:		jsr func_16_007f		; 20 7f 80
B22_05ee:		lda $0520, x	; bd 20 05
B22_05f1:		bmi B22_05ac ; 30 b9

B22_05f3:		ldy #$08		; a0 08
B22_05f5:		jsr func_17_17a6		; 20 a6 b7
B22_05f8:		beq B22_05ac ; f0 b2

B22_05fa:		cmp #$01		; c9 01
B22_05fc:		beq B22_061a ; f0 1c

B22_05fe:		clc				; 18 
B22_05ff:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0602:		and #$f0		; 29 f0
B22_0604:		adc #$08		; 69 08
B22_0606:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0609:		inc wEntityPhase.w, x	; fe c1 05
B22_060c:		inc wEntityPhase.w, x	; fe c1 05
B22_060f:		lda #$14		; a9 14
B22_0611:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0614:		jsr func_16_019e		; 20 9e 81
B22_0617:		jmp func_1f_1ec8		; 4c c8 fe


B22_061a:		clc				; 18 
B22_061b:		lda wEntityBaseY.w, x	; bd 1c 04
B22_061e:		and #$f0		; 29 f0
B22_0620:		adc #$10		; 69 10
B22_0622:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0625:		jmp $860c		; 4c 0c 86


B22_0628:		ldx $6c			; a6 6c
B22_062a:		lda $0520, x	; bd 20 05
B22_062d:		bmi B22_063d ; 30 0e

B22_062f:		cmp #$02		; c9 02
B22_0631:		bcc B22_063d ; 90 0a

B22_0633:		lda #$02		; a9 02
B22_0635:		sta $0520, x	; 9d 20 05
B22_0638:		lda #$00		; a9 00
B22_063a:		sta $0537, x	; 9d 37 05
B22_063d:		rts				; 60 


entityPhaseFunc_a8:
B22_063e:		ldy #$01		; a0 01
B22_0640:		lda ($02), y	; b1 02
B22_0642:		cmp wEntityBaseY.w, x	; dd 1c 04
B22_0645:		bcs B22_063d ; b0 f6

B22_0647:		jmp $84b2		; 4c b2 84


entityPhaseFunc_73:
B22_064a:		inc wEntityPhase.w, x	; fe c1 05
B22_064d:		lda #$00		; a9 00
B22_064f:		sta $0633, x	; 9d 33 06
B22_0652:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0655:		sta $0606, x	; 9d 06 06
B22_0658:		jmp $86ac		; 4c ac 86


entityPhaseFunc_58:
B22_065b:		ldy #$03		; a0 03
B22_065d:		lda ($02), y	; b1 02
B22_065f:		sta $061d, x	; 9d 1d 06

entityPhaseFunc_11:
B22_0662:		inc wEntityPhase.w, x	; fe c1 05
B22_0665:		ldy #$01		; a0 01
B22_0667:		lda ($02), y	; b1 02
B22_0669:		tay				; a8 
B22_066a:		lda $8682, y	; b9 82 86
B22_066d:		sta $0520, x	; 9d 20 05
B22_0670:		lda $868a, y	; b9 8a 86
B22_0673:		sta $0537, x	; 9d 37 05
B22_0676:		ldy #$02		; a0 02
B22_0678:		clc				; 18 
B22_0679:		lda wEntityBaseY.w, x	; bd 1c 04
B22_067c:		adc ($02), y	; 71 02
B22_067e:		sta $0606, x	; 9d 06 06
B22_0681:		rts				; 60 


B22_0682:		inc $fefe, x	; fe fe fe
B22_0685:	.db $ff
B22_0686:	.db $ff
B22_0687:	.db $ff
B22_0688:	.db $ff
B22_0689:	.db $02
B22_068a:		.db $00				; 00
B22_068b:	.db $80
B22_068c:		cpy #$00		; c0 00
B22_068e:		rti				; 40 


B22_068f:		beq B22_0631 ; f0 a0

B22_0691:		.db $00				; 00
B22_0692:	.db $ff
B22_0693:		ora ($fd, x)	; 01 fd
B22_0695:	.db $04
B22_0696:	.db $ff
B22_0697:		ora ($00, x)	; 01 00
B22_0699:		cpy #$00		; c0 00
B22_069b:		cpy #$00		; c0 00
B22_069d:		cpy #$3f		; c0 3f
B22_069f:	.db $27
B22_06a0:	.db $3c
B22_06a1:		ora $273f, x	; 1d 3f 27


entityPhaseFunc_74:
B22_06a4:		dec $061d, x	; de 1d 06
B22_06a7:		bne B22_06cb ; d0 22

B22_06a9:		inc $0633, x	; fe 33 06
B22_06ac:		ldy $0633, x	; bc 33 06
B22_06af:		lda $8692, y	; b9 92 86
B22_06b2:		sta $0520, x	; 9d 20 05
B22_06b5:		lda $8698, y	; b9 98 86
B22_06b8:		sta $0537, x	; 9d 37 05
B22_06bb:		lda $869e, y	; b9 9e 86
B22_06be:		sta $061d, x	; 9d 1d 06
B22_06c1:		rts				; 60 


entityPhaseFunc_59:
B22_06c2:		dec $061d, x	; de 1d 06
B22_06c5:		bne B22_06cb ; d0 04

B22_06c7:		inc wEntityPhase.w, x	; fe c1 05
B22_06ca:		rts				; 60 

entityPhaseFunc_12:
B22_06cb:		lda $68			; a5 68
B22_06cd:		bpl B22_06d8 ; 10 09

B22_06cf:		clc				; 18 
B22_06d0:		lda $0606, x	; bd 06 06
B22_06d3:		adc $6e			; 65 6e
B22_06d5:		sta $0606, x	; 9d 06 06
B22_06d8:		lda wEntityBaseY.w, x	; bd 1c 04
B22_06db:		sec				; 38 
B22_06dc:		sbc $0606, x	; fd 06 06
B22_06df:		ldy #$00		; a0 00
B22_06e1:		bcs B22_06e4 ; b0 01

B22_06e3:		dey				; 88 
B22_06e4:		sty $01			; 84 01
B22_06e6:		sta $00			; 85 00
B22_06e8:		lda $0537, x	; bd 37 05
B22_06eb:		sec				; 38 
B22_06ec:		sbc $00			; e5 00
B22_06ee:		sta $0537, x	; 9d 37 05
B22_06f1:		lda $0520, x	; bd 20 05
B22_06f4:		sbc $01			; e5 01
B22_06f6:		sta $0520, x	; 9d 20 05
B22_06f9:		rts				; 60 


entityPhaseFunc_9c:
B22_06fa:		lda #$01		; a9 01
B22_06fc:		sta $061d, x	; 9d 1d 06
B22_06ff:		jsr $8662		; 20 62 86

entityPhaseFunc_9d:
B22_0702:		lda $68			; a5 68
B22_0704:		bpl B22_06d8 ; 10 d2

B22_0706:		sec				; 38 
B22_0707:		lda wEntityBaseY.w, x	; bd 1c 04
B22_070a:		sbc $0606, x	; fd 06 06
B22_070d:		sta $00			; 85 00
B22_070f:		lda #$01		; a9 01
B22_0711:		sbc $061d, x	; fd 1d 06
B22_0714:		sta $01			; 85 01
B22_0716:		jmp $86e8		; 4c e8 86


entityPhaseFunc_a3:
B22_0719:		inc wEntityPhase.w, x	; fe c1 05
B22_071c:		lda #$00		; a9 00
B22_071e:		ldy wEntityBaseY.w, x	; bc 1c 04
B22_0721:		bmi B22_0725 ; 30 02

B22_0723:		lda #$04		; a9 04
B22_0725:		sta $0645, x	; 9d 45 06
B22_0728:		jsr $873f		; 20 3f 87
B22_072b:		lda #$01		; a9 01
B22_072d:		sta $0633, x	; 9d 33 06
B22_0730:		sta $061d, x	; 9d 1d 06
B22_0733:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0736:		sta $0606, x	; 9d 06 06
B22_0739:		rts				; 60 


entityPhaseFunc_a4:
B22_073a:		dec $0633, x	; de 33 06
B22_073d:		bne B22_0702 ; d0 c3

B22_073f:		lda $1f			; a5 1f
B22_0741:		and #$03		; 29 03
B22_0743:		clc				; 18 
B22_0744:		adc $0645, x	; 7d 45 06
B22_0747:		tay				; a8 
B22_0748:		lda $875b, y	; b9 5b 87
B22_074b:		sta $0520, x	; 9d 20 05
B22_074e:		lda $8763, y	; b9 63 87
B22_0751:		sta $0537, x	; 9d 37 05
B22_0754:		lda $876b, y	; b9 6b 87
B22_0757:		sta $0633, x	; 9d 33 06
B22_075a:		rts				; 60 


B22_075b:		inc $fffc, x	; fe fc ff
B22_075e:		sbc $0302, x	; fd 02 03
B22_0761:		ora ($02, x)	; 01 02
B22_0763:		.db $00				; 00
B22_0764:	.db $80
B22_0765:		.db $00				; 00
B22_0766:	.db $80
B22_0767:		.db $00				; 00
B22_0768:	.db $80
B22_0769:		.db $00				; 00
B22_076a:	.db $80
B22_076b:	.db $3f
B22_076c:		jmp $281b		; 4c 1b 28


B22_076f:	.db $3f
B22_0770:		jmp $281b		; 4c 1b 28


entityPhaseFunc_6f:
B22_0773:		ldy #$01		; a0 01
B22_0775:		lda ($02), y	; b1 02
B22_0777:		tay				; a8 
B22_0778:		lda $878f, y	; b9 8f 87
B22_077b:		sta $0520, x	; 9d 20 05
B22_077e:		lda $8791, y	; b9 91 87
B22_0781:		sta $0537, x	; 9d 37 05
B22_0784:		ldy #$02		; a0 02
B22_0786:		lda ($02), y	; b1 02
B22_0788:		sta $0606, x	; 9d 06 06
B22_078b:		inc wEntityPhase.w, x	; fe c1 05
B22_078e:		rts				; 60 


B22_078f:		ora ($00, x)	; 01 00
B22_0791:	.db $80
B22_0792:		.db $00				; 00


entityPhaseFunc_70:
B22_0793:		dec $0606, x	; de 06 06
B22_0796:		beq B22_078b ; f0 f3

B22_0798:		ldy #$01		; a0 01
B22_079a:		lda ($02), y	; b1 02
B22_079c:		jmp $80a1		; 4c a1 80


entityPhaseFunc_67:
B22_079f:		lda $1a			; a5 1a
B22_07a1:		and #$01		; 29 01
B22_07a3:		bne B22_07ad ; d0 08

B22_07a5:		lda $0470, x	; bd 70 04
B22_07a8:		eor #$08		; 49 08
B22_07aa:		sta $0470, x	; 9d 70 04
B22_07ad:		jsr $80b3		; 20 b3 80
B22_07b0:		cmp #$40		; c9 40
B22_07b2:		ldy $0606, x	; bc 06 06
B22_07b5:		bne B22_07ba ; d0 03

B22_07b7:		bcc B22_07bc ; 90 03

B22_07b9:		rts				; 60 


B22_07ba:		bcc B22_07bf ; 90 03

B22_07bc:		inc wEntityPhase.w, x	; fe c1 05
B22_07bf:		rts				; 60 


B22_07c0:		jmp entityPhaseFunc_59		; 4c c2 86


entityPhaseFunc_60:
B22_07c3:		jsr entityPhaseFunc_59		; 20 c2 86
B22_07c6:		ldy #$0a		; a0 0a
B22_07c8:		jsr func_17_17a6		; 20 a6 b7
B22_07cb:		bne B22_07dc ; d0 0f

B22_07cd:		ldx $6c			; a6 6c
B22_07cf:		jsr func_1f_1ec8		; 20 c8 fe
B22_07d2:		lda #$01		; a9 01
B22_07d4:		sta $0520, x	; 9d 20 05
B22_07d7:		lda #$16		; a9 16
B22_07d9:		sta wEntityPhase.w, x	; 9d c1 05
B22_07dc:		ldx $6c			; a6 6c
B22_07de:		rts				; 60 


entityPhaseFunc_61:
B22_07df:		lda #$14		; a9 14
B22_07e1:		jsr func_16_007f		; 20 7f 80
B22_07e4:		ldy #$01		; a0 01
B22_07e6:		lda ($02), y	; b1 02
B22_07e8:		sta $0606, x	; 9d 06 06
B22_07eb:		iny				; c8 
B22_07ec:		lda ($02), y	; b1 02
B22_07ee:		tay				; a8 
B22_07ef:		jsr func_17_17a6		; 20 a6 b7
B22_07f2:		beq B22_07dc ; f0 e8

B22_07f4:		ldx $6c			; a6 6c
B22_07f6:		lda $0606, x	; bd 06 06
B22_07f9:		sta wEntityPhase.w, x	; 9d c1 05
B22_07fc:		rts				; 60 


entityPhaseFunc_63:
B22_07fd:		inc wEntityPhase.w, x	; fe c1 05
B22_0800:		jsr func_1f_1ec8		; 20 c8 fe
B22_0803:		ldy #$01		; a0 01
B22_0805:		lda ($02), y	; b1 02
B22_0807:		sta $0520, x	; 9d 20 05
B22_080a:		iny				; c8 
B22_080b:		lda ($02), y	; b1 02
B22_080d:		sta $0606, x	; 9d 06 06
B22_0810:		rts				; 60 


entityPhaseFunc_98:
B22_0811:		inc wEntityPhase.w, x	; fe c1 05
B22_0814:		jsr func_1f_1ec8		; 20 c8 fe
B22_0817:		ldy #$01		; a0 01
B22_0819:		lda ($02), y	; b1 02
B22_081b:		bne B22_0870 ; d0 53

B22_081d:		ldy #$00		; a0 00
B22_081f:		sec				; 38 
B22_0820:		lda $ca			; a5 ca
B22_0822:		sbc wEntityBaseY.w		; ed1c 04
B22_0825:		bcs B22_082b ; b0 04

B22_0827:		eor #$ff		; 49 ff
B22_0829:		adc #$01		; 69 01
B22_082b:		cmp #$38		; c9 38
B22_082d:		bcc B22_083f ; 90 10

B22_082f:		iny				; c8 
B22_0830:		cmp #$48		; c9 48
B22_0832:		bcc B22_083f ; 90 0b

B22_0834:		iny				; c8 
B22_0835:		cmp #$58		; c9 58
B22_0837:		bcc B22_083f ; 90 06

B22_0839:		iny				; c8 
B22_083a:		cmp #$68		; c9 68
B22_083c:		bcc B22_083f ; 90 01

B22_083e:		iny				; c8 
B22_083f:		lda $8884, y	; b9 84 88
B22_0842:		sta $0537, x	; 9d 37 05
B22_0845:		lda $887f, y	; b9 7f 88
B22_0848:		sta $0520, x	; 9d 20 05
B22_084b:		lda wEntityBaseX.w, x	; bd 38 04
B22_084e:		ldy wEntityBaseY.w, x	; bc 1c 04
B22_0851:		jsr func_1f_1c1e		; 20 1e fc
B22_0854:		bne B22_0876 ; d0 20

B22_0856:		ldx $6c			; a6 6c
B22_0858:		lda #$22		; a9 22
B22_085a:		jsr playSound		; 20 5f e2
B22_085d:		jsr func_16_01aa		; 20 aa 81
B22_0860:		jsr func_16_0230		; 20 30 82
B22_0863:		lda #$08		; a9 08
B22_0865:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_0868:		lda #$46		; a9 46
B22_086a:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_086d:		jmp $81ef		; 4c ef 81


B22_0870:		lda #$ff		; a9 ff
B22_0872:		sta $0520, x	; 9d 20 05
B22_0875:		rts				; 60 


B22_0876:		ldx $6c			; a6 6c
B22_0878:		jsr $b584		; 20 84 b5
B22_087b:		sta $054e, x	; 9d 4e 05
B22_087e:		rts				; 60 


B22_087f:	.db $fc
B22_0880:	.db $fb
B22_0881:	.db $fb
B22_0882:	.db $fb
B22_0883:	.db $fa
B22_0884:		rti				; 40 


B22_0885:		cpy #$80		; c0 80
B22_0887:		rti				; 40 


B22_0888:	.db $80


entityPhaseFunc_99:
B22_0889:		lda #$20		; a9 20
B22_088b:		jsr func_16_007f		; 20 7f 80
B22_088e:		ldy #$01		; a0 01
B22_0890:		lda ($02), y	; b1 02
B22_0892:		beq B22_08a7 ; f0 13

B22_0894:		sec				; 38 
B22_0895:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0898:		sbc #$10		; e9 10
B22_089a:		cmp $ca			; c5 ca
B22_089c:		bcc B22_08a6 ; 90 08

B22_089e:		inc wEntityPhase.w, x	; fe c1 05
B22_08a1:		jsr $992b		; 20 2b 99
B22_08a4:		ldx $6c			; a6 6c
B22_08a6:		rts				; 60 


B22_08a7:		lda $0520, x	; bd 20 05
B22_08aa:		bmi B22_08a6 ; 30 fa

B22_08ac:		ldy #$06		; a0 06
B22_08ae:		jsr func_17_17a6		; 20 a6 b7
B22_08b1:		beq B22_08bc ; f0 09

B22_08b3:		inc wEntityPhase.w, x	; fe c1 05
B22_08b6:		jsr $8b95		; 20 95 8b
B22_08b9:		jmp func_1f_1ec8		; 4c c8 fe


B22_08bc:		sec				; 38 
B22_08bd:		lda wEntityBaseY.w, x	; bd 1c 04
B22_08c0:		sbc #$10		; e9 10
B22_08c2:		cmp $ca			; c5 ca
B22_08c4:		bcc B22_08a6 ; 90 e0

B22_08c6:		jsr $992b		; 20 2b 99
B22_08c9:		jmp $84b2		; 4c b2 84


entityPhaseFunc_64:
B22_08cc:		lda $0606, x	; bd 06 06
B22_08cf:		jsr func_16_007f		; 20 7f 80
B22_08d2:		ldy #$01		; a0 01
B22_08d4:		lda ($02), y	; b1 02
B22_08d6:		cmp #$01		; c9 01
B22_08d8:		beq B22_0909 ; f0 2f

B22_08da:		cmp #$02		; c9 02
B22_08dc:		beq B22_0914 ; f0 36

B22_08de:		ldy $0520, x	; bc 20 05
B22_08e1:		bmi B22_0913 ; 30 30

B22_08e3:		cmp #$03		; c9 03
B22_08e5:		bne B22_08fd ; d0 16

B22_08e7:		ldy #$00		; a0 00
B22_08e9:		lda wCurrRoomGroup		; a5 32
B22_08eb:		cmp #$08		; c9 08
B22_08ed:		bne B22_08f5 ; d0 06

B22_08ef:		iny				; c8 
B22_08f0:		lda wCurrRoomSection			; a5 33
B22_08f2:		bne B22_08f5 ; d0 01

B22_08f4:		iny				; c8 
B22_08f5:		lda wEntityBaseY.w, x	; bd 1c 04
B22_08f8:		cmp $8937, y	; d9 37 89
B22_08fb:		bcs B22_092b ; b0 2e

B22_08fd:		ldy #$06		; a0 06
B22_08ff:		jsr func_17_17a6		; 20 a6 b7
B22_0902:		beq B22_0913 ; f0 0f

B22_0904:		ldx $6c			; a6 6c
B22_0906:		jmp $88b3		; 4c b3 88


B22_0909:		lda wEntityBaseY.w, x	; bd 1c 04
B22_090c:		cmp #$f8		; c9 f8
B22_090e:		bcc B22_0913 ; 90 03

B22_0910:		inc wEntityPhase.w, x	; fe c1 05
B22_0913:		rts				; 60 


B22_0914:		ldy #$00		; a0 00
B22_0916:		lda wCurrRoomGroup		; a5 32
B22_0918:		cmp #$08		; c9 08
B22_091a:		beq B22_091d ; f0 01

B22_091c:		iny				; c8 
B22_091d:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0920:		cmp $8935, y	; d9 35 89
B22_0923:		bcc B22_0913 ; 90 ee

B22_0925:		inc wEntityPhase.w, x	; fe c1 05
B22_0928:		jmp $992b		; 4c 2b 99


B22_092b:		ldy #$02		; a0 02
B22_092d:		lda ($02), y	; b1 02
B22_092f:		sta wEntityPhase.w, x	; 9d c1 05
B22_0932:		jmp $992b		; 4c 2b 99


B22_0935:		;removed
	.db $b0 $d0

B22_0937:		;removed
	.db $d0 $c0

B22_0939:		;removed
	.db $b0
	

entityPhaseFunc_1c:
	ldy #$01
B22_093c:		jsr $b7a6
B22_093f:		bne B22_0957 ; d0 16

B22_0941:		ldx $6c			; a6 6c
B22_0943:		ldy #$06		; a0 06
B22_0945:		jsr func_17_17a6		; 20 a6 b7
B22_0948:		bne B22_0957 ; d0 0d

B22_094a:		ldx $6c			; a6 6c
B22_094c:		inc wEntityPhase.w, x	; fe c1 05
B22_094f:		jsr func_1f_1ec8		; 20 c8 fe
B22_0952:		lda #$01		; a9 01
B22_0954:		sta $0520, x	; 9d 20 05
B22_0957:		ldy #$00		; a0 00
B22_0959:		jsr func_17_17a6		; 20 a6 b7
B22_095c:		beq B22_0969 ; f0 0b

func_16_095e:
B22_095e:		lda wEntityXFlipped.w, x	; bd a8 04
B22_0961:		eor #$01		; 49 01
B22_0963:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0966:		jmp reverseEnemyDirection_todo		; 4c 4b 80


B22_0969:		lda wEntityAI_idx.w, x	; bd ef 05
B22_096c:		cmp #$02		; c9 02
B22_096e:		bne B22_097d ; d0 0d

B22_0970:		ldx $6c			; a6 6c
B22_0972:		dec $0606, x	; de 06 06
B22_0975:		bne B22_097d ; d0 06

B22_0977:		inc wEntityPhase.w, x	; fe c1 05
B22_097a:		inc wEntityPhase.w, x	; fe c1 05
B22_097d:		rts				; 60 


entityPhaseFunc_1d:
B22_097e:		ldy #$01		; a0 01
B22_0980:		lda ($02), y	; b1 02
B22_0982:		sta $0606, x	; 9d 06 06
B22_0985:		iny				; c8 
B22_0986:		lda ($02), y	; b1 02
B22_0988:		tay				; a8 
B22_0989:		jsr func_17_17a6		; 20 a6 b7
B22_098c:		beq B22_09a5 ; f0 17

B22_098e:		ldx $6c			; a6 6c
B22_0990:		jsr func_1f_1ec8		; 20 c8 fe
B22_0993:		jsr func_16_01f8		; 20 f8 81
B22_0996:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0999:		and #$f0		; 29 f0
B22_099b:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_099e:		lda $0606, x	; bd 06 06
B22_09a1:		sta wEntityPhase.w, x	; 9d c1 05
B22_09a4:		rts				; 60 


B22_09a5:		ldx $6c			; a6 6c
B22_09a7:		lda #$14		; a9 14
B22_09a9:		jmp func_16_007f		; 4c 7f 80


entityPhaseFunc_09:
B22_09ac:		jsr func_16_01ec		; 20 ec 81
B22_09af:		lda $1a			; a5 1a
B22_09b1:		adc wEntityBaseX.w, x	; 7d 38 04
B22_09b4:		and #$07		; 29 07
B22_09b6:		sta $00			; 85 00
B22_09b8:		lda wCurrRoomSection			; a5 33
B22_09ba:		beq B22_09be ; f0 02

B22_09bc:		lda #$01		; a9 01
B22_09be:		clc				; 18 
B22_09bf:		adc $07f6		; 6d f6 07
B22_09c2:		tay				; a8 
B22_09c3:		lda $89f5, y	; b9 f5 89
B22_09c6:		adc $00			; 65 00
B22_09c8:		tay				; a8 
B22_09c9:		lda $89dd, y	; b9 dd 89
B22_09cc:		adc wEntityBaseX.w		; 6d 38 04
B22_09cf:		sta wEntityBaseX.w, x	; 9d 38 04
B22_09d2:		lda wEntityAI_idx.w, x	; bd ef 05
B22_09d5:		cmp #$14		; c9 14
B22_09d7:		beq B22_09dc ; f0 03

B22_09d9:		jmp $81d4		; 4c d4 81


B22_09dc:		rts				; 60 


B22_09dd:		pla				; 68 
B22_09de:		ldy #$68		; a0 68
B22_09e0:		dey				; 88 
B22_09e1:		tya				; 98 
B22_09e2:		sei				; 78 
B22_09e3:		;removed
	.db $90 $70

B22_09e5:		cli				; 58 
B22_09e6:		jmp $a048		; 4c 48 a0


B22_09e9:	.db $5c
B22_09ea:		rts				; 60 


B22_09eb:		cpy #$50		; c0 50
B22_09ed:		;removed
	.db $30 $d8

B22_09ef:		sec				; 38 
B22_09f0:		rti				; 40 


B22_09f1:		sec				; 38 
B22_09f2:	.db $44
B22_09f3:		cpy #$2c		; c0 2c
B22_09f5:		.db $00				; 00
B22_09f6:		php				; 08 
B22_09f7:		.db $10


entityPhaseFunc_22:
	inc $05c1, x
B22_09fb:		lda $1a			; a5 1a
B22_09fd:		adc wEntityBaseX.w		; 6d 38 04
B22_0a00:		and #$07		; 29 07
B22_0a02:		sta $10			; 85 10
B22_0a04:		ldy #$01		; a0 01
B22_0a06:		lda ($02), y	; b1 02
B22_0a08:		clc				; 18 
B22_0a09:		adc $10			; 65 10
B22_0a0b:		tay				; a8 
B22_0a0c:		lda $8a16, y	; b9 16 8a
B22_0a0f:		adc wEntityBaseX.w		; 6d 38 04
B22_0a12:		sta wEntityBaseX.w, x	; 9d 38 04
B22_0a15:		rts				; 60 


B22_0a16:		rti				; 40 


B22_0a17:		bne B22_0a89 ; d0 70

B22_0a19:		bcc B22_0a7b ; 90 60

B22_0a1b:		cpy #$50		; c0 50
B22_0a1d:		ldy #$40		; a0 40
B22_0a1f:		jsr $d0e0		; 20 e0 d0
B22_0a22:		;removed
	.db $10 $f0

B22_0a24:		;removed
	.db $50 $70


entityPhaseFunc_a7:
B22_0a26:		jsr $81ef		; 20 ef 81

entityPhaseFunc_26:
B22_0a29:		inc wEntityPhase.w, x	; fe c1 05
B22_0a2c:		ldy #$01		; a0 01
B22_0a2e:		lda ($02), y	; b1 02
B22_0a30:		sta $061d, x	; 9d 1d 06
B22_0a33:		iny				; c8 
B22_0a34:		lda ($02), y	; b1 02
B22_0a36:		sta $0606, x	; 9d 06 06
B22_0a39:		rts				; 60 


entityPhaseFunc_30:
B22_0a3a:		inc wEntityPhase.w, x	; fe c1 05
B22_0a3d:		ldy #$01		; a0 01
B22_0a3f:		lda ($02), y	; b1 02
B22_0a41:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_0a44:		rts				; 60 


entityPhaseFunc_23:
B22_0a45:		dec $0606, x	; de 06 06
B22_0a48:		bne B22_0a64 ; d0 1a

B22_0a4a:		ldy #$01		; a0 01
B22_0a4c:		lda wEntityPaletteOverride.w, x	; bd 54 04
B22_0a4f:		eor ($02), y	; 51 02
B22_0a51:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_0a54:		jsr $8a33		; 20 33 8a
B22_0a57:		dec $061d, x	; de 1d 06
B22_0a5a:		bne B22_0a64 ; d0 08

B22_0a5c:		lda #$00		; a9 00
B22_0a5e:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_0a61:		inc wEntityPhase.w, x	; fe c1 05
B22_0a64:		rts				; 60 


entityPhaseFunc_25:
B22_0a65:		dec $0606, x	; de 06 06
B22_0a68:		bne B22_0a64 ; d0 fa

B22_0a6a:		dec $061d, x	; de 1d 06
B22_0a6d:		beq B22_0a61 ; f0 f2

B22_0a6f:		ldy #$01		; a0 01
B22_0a71:		lda wCurrRoomGroup		; a5 32
B22_0a73:		cmp #$09		; c9 09
B22_0a75:		bcc B22_0a79 ; 90 02

B22_0a77:		ldy #$02		; a0 02
B22_0a79:		lda ($02), y	; b1 02
B22_0a7b:		sta $0606, x	; 9d 06 06
B22_0a7e:		lda $0470, x	; bd 70 04
B22_0a81:		and #$81		; 29 81
B22_0a83:		bne B22_0a64 ; d0 df

B22_0a85:		lda wEntityXFlipped.w, x	; bd a8 04
B22_0a88:		asl a			; 0a
B22_0a89:		tay				; a8 
B22_0a8a:		lda wEntityBaseX.w		; ad 38 04
B22_0a8d:		cmp wEntityBaseX.w, x	; dd 38 04
B22_0a90:		bcc B22_0a93 ; 90 01

B22_0a92:		iny				; c8 
B22_0a93:		clc				; 18 
B22_0a94:		lda $8ac7, y	; b9 c7 8a
B22_0a97:		adc wEntityBaseX.w, x	; 7d 38 04
B22_0a9a:		sta $01			; 85 01
B22_0a9c:		clc				; 18 
B22_0a9d:		lda $8acb, y	; b9 cb 8a
B22_0aa0:		adc wEntityBaseY.w, x	; 7d 1c 04
B22_0aa3:		sta $02			; 85 02
B22_0aa5:		lda $8acf, y	; b9 cf 8a
B22_0aa8:		sta $0a			; 85 0a
B22_0aaa:		lda #$58		; a9 58
B22_0aac:		sta $07			; 85 07
B22_0aae:		lda #$40		; a9 40
B22_0ab0:		sta $00			; 85 00
B22_0ab2:		tya				; 98 
B22_0ab3:		and #$01		; 29 01
B22_0ab5:		eor #$01		; 49 01
B22_0ab7:		ldy $32			; a4 32
B22_0ab9:		cpy #$09		; c0 09
B22_0abb:		bcc B22_0ac0 ; 90 03

B22_0abd:		clc				; 18 
B22_0abe:		adc #$10		; 69 10
B22_0ac0:		tay				; a8 
B22_0ac1:		jsr $8e9f		; 20 9f 8e
B22_0ac4:		jmp $8dca		; 4c ca 8d


B22_0ac7:		sed				; f8 
B22_0ac8:		php				; 08 
B22_0ac9:		sed				; f8 
B22_0aca:		php				; 08 
B22_0acb:		ora #$fa		; 09 fa
B22_0acd:	.db $fa
B22_0ace:		ora #$00		; 09 00
B22_0ad0:		ora ($00, x)	; 01 00
B22_0ad2:		.db $01


entityPhaseFunc_24:
	jsr $8230
B22_0ad6:		jmp $844c		; 4c 4c 84


entityPhaseFunc_6e:
B22_0ad9:		jsr func_16_01ec		; 20 ec 81
B22_0adc:		lda $0633, x	; bd 33 06
B22_0adf:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0ae2:		rts				; 60 


entityPhaseFunc_52:
B22_0ae3:		inc wEntityPhase.w, x	; fe c1 05
B22_0ae6:		jmp $8a7e		; 4c 7e 8a


entityPhaseFunc_31:
entityPhaseFunc_32:
B22_0ae9:		ldy #$01		; a0 01
B22_0aeb:		lda ($02), y	; b1 02
B22_0aed:		jsr func_16_007f		; 20 7f 80
B22_0af0:		jmp $8e20		; 4c 20 8e


entityPhaseFunc_92:
B22_0af3:		clc				; 18 
B22_0af4:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0af7:		adc #$10		; 69 10
B22_0af9:		sta $00			; 85 00
B22_0afb:		lda wEntityBaseX.w, x	; bd 38 04
B22_0afe:		sta $01			; 85 01
B22_0b00:		lda wEntityXFlipped.w, x	; bd a8 04
B22_0b03:		sta $02			; 85 02
B22_0b05:		lda $0470, x	; bd 70 04
B22_0b08:		ora #$60		; 09 60
B22_0b0a:		sta $03			; 85 03
B22_0b0c:		stx $08			; 86 08
B22_0b0e:		jsr $8b5a		; 20 5a 8b
B22_0b11:		bne B22_0b4c ; d0 39

B22_0b13:		stx $09			; 86 09
B22_0b15:		ldx $08			; a6 08
B22_0b17:		jsr func_16_019e		; 20 9e 81
B22_0b1a:		jsr $81ef		; 20 ef 81
B22_0b1d:		ldx $09			; a6 09
B22_0b1f:		jsr func_1f_1ed7		; 20 d7 fe
B22_0b22:		jsr $8b4f		; 20 4f 8b
B22_0b25:		lda $02			; a5 02
B22_0b27:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0b2a:		lda $03			; a5 03
B22_0b2c:		sta $0470, x	; 9d 70 04
B22_0b2f:		jsr $9fc9		; 20 c9 9f
B22_0b32:		lda #$52		; a9 52
B22_0b34:		sta $054e, x	; 9d 4e 05
B22_0b37:		lda #$69		; a9 69
B22_0b39:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0b3c:		ldx $6c			; a6 6c
B22_0b3e:		lda #$72		; a9 72
B22_0b40:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0b43:		lda #$10		; a9 10
B22_0b45:		sta $0606, x	; 9d 06 06
B22_0b48:		inc wEntityPhase.w, x	; fe c1 05
B22_0b4b:		rts				; 60 


B22_0b4c:		ldx $6c			; a6 6c
B22_0b4e:		rts				; 60 


B22_0b4f:		lda $00			; a5 00
B22_0b51:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0b54:		lda $01			; a5 01
B22_0b56:		sta wEntityBaseX.w, x	; 9d 38 04
B22_0b59:		rts				; 60 


B22_0b5a:		ldx #$01		; a2 01
B22_0b5c:		lda $054e, x	; bd 4e 05
B22_0b5f:		beq B22_0b68 ; f0 07

B22_0b61:		inx				; e8 
B22_0b62:		cpx #$04		; e0 04
B22_0b64:		bcc B22_0b5c ; 90 f6

B22_0b66:		lda #$01		; a9 01
B22_0b68:		rts				; 60 


entityPhaseFunc_93:
B22_0b69:		jsr $81a7		; 20 a7 81
B22_0b6c:		jsr func_1f_1ec8		; 20 c8 fe
B22_0b6f:		lda #$14		; a9 14
B22_0b71:		sta $061d, x	; 9d 1d 06
B22_0b74:		rts				; 60 


entityPhaseFunc_94:
B22_0b75:		lda $061d, x	; bd 1d 06
B22_0b78:		jsr func_16_007f		; 20 7f 80
B22_0b7b:		ldy #$0e		; a0 0e
B22_0b7d:		jsr func_17_17a6		; 20 a6 b7
B22_0b80:		beq B22_0b8e ; f0 0c

B22_0b82:		jsr func_16_0b91		; 20 91 8b
B22_0b85:		jsr func_1f_1ec8		; 20 c8 fe
B22_0b88:		sta $061d, x	; 9d 1d 06
B22_0b8b:		inc wEntityPhase.w, x	; fe c1 05
B22_0b8e:		ldx $6c			; a6 6c
B22_0b90:		rts				; 60 


func_16_0b91:
B22_0b91:		lda $68			; a5 68
B22_0b93:		bmi B22_0b9e ; 30 09

B22_0b95:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0b98:		and #$f0		; 29 f0
B22_0b9a:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0b9d:		rts				; 60 


B22_0b9e:		clc				; 18 
B22_0b9f:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0ba2:		adc $56			; 65 56
B22_0ba4:		and #$f0		; 29 f0
B22_0ba6:		sec				; 38 
B22_0ba7:		sbc $56			; e5 56
B22_0ba9:		clc				; 18 
B22_0baa:		adc #$03		; 69 03
B22_0bac:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0baf:		rts				; 60 


entityPhaseFunc_90:
B22_0bb0:		inc wEntityPhase.w, x	; fe c1 05
B22_0bb3:		ldy #$00		; a0 00
B22_0bb5:		jsr $80b3		; 20 b3 80
B22_0bb8:		cmp #$40		; c9 40
B22_0bba:		bcs B22_0bbd ; b0 01

B22_0bbc:		iny				; c8 
B22_0bbd:		tya				; 98 
B22_0bbe:		sta $0606, x	; 9d 06 06
B22_0bc1:		rts				; 60 


entityPhaseFunc_8f:
B22_0bc2:		inc wEntityPhase.w, x	; fe c1 05
B22_0bc5:		lda #$32		; a9 32
B22_0bc7:		ldy wOamSpecIdx.w, x	; bc 00 04
B22_0bca:		cpy #$30		; c0 30
B22_0bcc:		beq B22_0bd0 ; f0 02

B22_0bce:		lda #$54		; a9 54
B22_0bd0:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0bd3:		rts				; 60 


entityPhaseFunc_3a:
B22_0bd4:		jsr $83ad		; 20 ad 83
B22_0bd7:		clc				; 18 
B22_0bd8:		ldy #$03		; a0 03
B22_0bda:		lda ($02), y	; b1 02
B22_0bdc:		adc wEntityXFlipped.w, x	; 7d a8 04
B22_0bdf:		tay				; a8 
B22_0be0:		lda $8bef, y	; b9 ef 8b
B22_0be3:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_0be6:		jsr func_16_019e		; 20 9e 81
B22_0be9:		jsr $8001		; 20 01 80
B22_0bec:		jmp func_1f_1ec8		; 4c c8 fe


B22_0bef:		php				; 08 
B22_0bf0:		sed				; f8 
B22_0bf1:		sed				; f8 
B22_0bf2:		php				; 08 
B22_0bf3:		;removed
	.db $10 $f0

B22_0bf5:		beq B22_0c07 ; f0 10


entityPhaseFunc_96:
B22_0bf7:		jsr $81d4		; 20 d4 81
B22_0bfa:		jsr $80e3		; 20 e3 80
B22_0bfd:		bne B22_0c1f ; d0 20

B22_0bff:		jsr $81d4		; 20 d4 81
B22_0c02:		lda #$68		; a9 68
B22_0c04:		sta $054e, x	; 9d 4e 05
B22_0c07:		lda #$00		; a9 00
B22_0c09:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0c0c:		sta wEntityPhase.w, x	; 9d c1 05
B22_0c0f:		txa				; 8a 
B22_0c10:		ldx $6c			; a6 6c
B22_0c12:		sta $061d, x	; 9d 1d 06
B22_0c15:		lda #$08		; a9 08
B22_0c17:		ldy #$0c		; a0 0c
B22_0c19:		jsr $8293		; 20 93 82
B22_0c1c:		jmp $81b9		; 4c b9 81


B22_0c1f:		ldx $6c			; a6 6c
B22_0c21:		rts				; 60 


entityPhaseFunc_50:
B22_0c22:		jsr func_1f_1ec8		; 20 c8 fe
B22_0c25:		jsr $81a7		; 20 a7 81
B22_0c28:		lda #$01		; a9 01
B22_0c2a:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0c2d:		ldy #$01		; a0 01
B22_0c2f:		lda ($02), y	; b1 02
B22_0c31:		tay				; a8 
B22_0c32:		lda $8c60, y	; b9 60 8c
B22_0c35:		sta $0520, x	; 9d 20 05
B22_0c38:		lda $8c62, y	; b9 62 8c
B22_0c3b:		sta $0537, x	; 9d 37 05
B22_0c3e:		lda #$50		; a9 50
B22_0c40:		sta $0606, x	; 9d 06 06
B22_0c43:		stx $08			; 86 08
B22_0c45:		lda $061d, x	; bd 1d 06
B22_0c48:		tax				; aa 
B22_0c49:		lda #$57		; a9 57
B22_0c4b:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0c4e:		lda #$00		; a9 00
B22_0c50:		sta wEntityPhase.w, x	; 9d c1 05
B22_0c53:		lda #$68		; a9 68
B22_0c55:		sta $054e, x	; 9d 4e 05
B22_0c58:		lda $08			; a5 08
B22_0c5a:		sta $0606, x	; 9d 06 06
B22_0c5d:		ldx $6c			; a6 6c
B22_0c5f:		rts				; 60 


B22_0c60:		ora ($fe, x)	; 01 fe
B22_0c62:		.db $20 $d0


entityPhaseFunc_51:
	lda $041c, x
B22_0c67:		cmp #$30		; c9 30
B22_0c69:		bcc B22_0c77 ; 90 0c

B22_0c6b:		dec $0606, x	; de 06 06
B22_0c6e:		bne B22_0c5f ; d0 ef

B22_0c70:		jsr func_1f_1ec8		; 20 c8 fe
B22_0c73:		inc wEntityPhase.w, x	; fe c1 05
B22_0c76:		rts				; 60 


B22_0c77:		jsr $81d4		; 20 d4 81
B22_0c7a:		jsr $81c5		; 20 c5 81
B22_0c7d:		lda #$30		; a9 30
B22_0c7f:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0c82:		jsr func_1f_1ec8		; 20 c8 fe
B22_0c85:		sta $04db, x	; 9d db 04
B22_0c88:		lda $061d, x	; bd 1d 06
B22_0c8b:		tax				; aa 
B22_0c8c:		lda #$00		; a9 00
B22_0c8e:		sta $054e, x	; 9d 4e 05
B22_0c91:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0c94:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0c97:		ldx $6c			; a6 6c
B22_0c99:		rts				; 60 


entityPhaseFunc_9b:
B22_0c9a:		lda $0606, x	; bd 06 06
B22_0c9d:		tax				; aa 
B22_0c9e:		lda wEntityBaseX.w, x	; bd 38 04
B22_0ca1:		sta $08			; 85 08
B22_0ca3:		lda $0470, x	; bd 70 04
B22_0ca6:		ora #$30		; 09 30
B22_0ca8:		and #$bb		; 29 bb
B22_0caa:		sta $09			; 85 09
B22_0cac:		lda #$30		; a9 30
B22_0cae:		sta $11			; 85 11
B22_0cb0:		jsr $80c1		; 20 c1 80
B22_0cb3:		lsr a			; 4a
B22_0cb4:		lsr a			; 4a
B22_0cb5:		lsr a			; 4a
B22_0cb6:		lsr a			; 4a
B22_0cb7:		tay				; a8 
B22_0cb8:		ldx $6c			; a6 6c
B22_0cba:		lda $8cdb, y	; b9 db 8c
B22_0cbd:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0cc0:		lda #$08		; a9 08
B22_0cc2:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_0cc5:		lda #$01		; a9 01
B22_0cc7:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0cca:		lda $8ce5, y	; b9 e5 8c
B22_0ccd:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0cd0:		lda $08			; a5 08
B22_0cd2:		sta wEntityBaseX.w, x	; 9d 38 04
B22_0cd5:		lda $09			; a5 09
B22_0cd7:		sta $0470, x	; 9d 70 04
B22_0cda:		rts				; 60 


B22_0cdb:		cpy #$c2		; c0 c2
B22_0cdd:		cpy $c6			; c4 c6
B22_0cdf:		iny				; c8 
B22_0ce0:		cld				; d8 
B22_0ce1:		cld				; d8 
B22_0ce2:		cld				; d8 
B22_0ce3:		cld				; d8 
B22_0ce4:		cld				; d8 
B22_0ce5:		bmi B22_0d1f ; 30 38

B22_0ce7:		rti				; 40 


B22_0ce8:		pha				; 48 
B22_0ce9:		;removed
	.db $50 $58

B22_0ceb:		rts				; 60 


B22_0cec:		pla				; 68 
B22_0ced:		bvs B22_0d67 ; 70 78


entityPhaseFunc_5d:
B22_0cef:		lda #$02		; a9 02
B22_0cf1:		sta $0606, x	; 9d 06 06
B22_0cf4:		ldy $0606, x	; bc 06 06
B22_0cf7:		lda $8d1c, y	; b9 1c 8d
B22_0cfa:		tay				; a8 
B22_0cfb:		lda wEntityBaseX.w, x	; bd 38 04
B22_0cfe:		jsr $fc16		; 20 16 fc
B22_0d01:		bne B22_0d0d ; d0 0a

B22_0d03:		ldx $6c			; a6 6c
B22_0d05:		dec $0606, x	; de 06 06
B22_0d08:		bne B22_0cf4 ; d0 ea

B22_0d0a:		jmp $84b2		; 4c b2 84


B22_0d0d:		ldx $6c			; a6 6c
B22_0d0f:		ldy $0606, x	; bc 06 06
B22_0d12:		lda $8d1f, y	; b9 1f 8d
B22_0d15:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0d18:		inc wEntityPhase.w, x	; fe c1 05
B22_0d1b:		rts				; 60 


B22_0d1c:		.db $00				; 00
B22_0d1d:		ldy $a4, x		; b4 a4
B22_0d1f:		.db $00				; 00
B22_0d20:		ldy #$90		; a0 90


entityPhaseFunc_89:
B22_0d22:		ldy #$01		; a0 01
B22_0d24:		lda ($02), y	; b1 02
B22_0d26:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0d29:		clc				; 18 
B22_0d2a:		adc #$10		; 69 10
B22_0d2c:		tay				; a8 
B22_0d2d:		lda wEntityBaseX.w, x	; bd 38 04
B22_0d30:		jsr $fc16		; 20 16 fc
B22_0d33:		cmp #$01		; c9 01
B22_0d35:		bne B22_0d57 ; d0 20

B22_0d37:		beq B22_0d72 ; f0 39


entityPhaseFunc_5f:
B22_0d39:		lda #$a8		; a9 a8
B22_0d3b:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0d3e:		clc				; 18 
B22_0d3f:		adc #$10		; 69 10
B22_0d41:		tay				; a8 
B22_0d42:		lda wEntityBaseX.w, x	; bd 38 04
B22_0d45:		jsr $fc16		; 20 16 fc
B22_0d48:		cmp #$01		; c9 01
B22_0d4a:		bne B22_0d57 ; d0 0b

B22_0d4c:		ldy wEntityBaseY.w, x	; bc 1c 04
B22_0d4f:		lda wEntityBaseX.w, x	; bd 38 04
B22_0d52:		jsr $fc16		; 20 16 fc
B22_0d55:		beq B22_0d5c ; f0 05

B22_0d57:		ldx $6c			; a6 6c
B22_0d59:		jmp $84b2		; 4c b2 84


B22_0d5c:		ldx $6c			; a6 6c
B22_0d5e:		sec				; 38 
B22_0d5f:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0d62:		sbc #$08		; e9 08
B22_0d64:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0d67:		lda #$00		; a9 00
B22_0d69:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0d6c:		jsr $81ef		; 20 ef 81
B22_0d6f:		jsr $81d4		; 20 d4 81
B22_0d72:		inc wEntityPhase.w, x	; fe c1 05
B22_0d75:		rts				; 60 


entityPhaseFunc_8e:
B22_0d76:		txa				; 8a 
B22_0d77:		and #$01		; 29 01
B22_0d79:		tay				; a8 
B22_0d7a:		lda $8d84, y	; b9 84 8d
B22_0d7d:		sta $0606, x	; 9d 06 06
B22_0d80:		inc wEntityPhase.w, x	; fe c1 05
B22_0d83:		rts				; 60 


B22_0d84:		rti				; 40 


B22_0d85:		;removed
	.db $d0
	
	
entityPhaseFunc_65:
	ldy #$01
B22_0d88:		lda ($02), y
B22_0d8a:		sta $00			; 85 00
B22_0d8c:		iny				; c8 
B22_0d8d:		lda ($02), y	; b1 02
B22_0d8f:		ldy $00			; a4 00
B22_0d91:		jsr func_1f_1c1e		; 20 1e fc
B22_0d94:		bne B22_0d57 ; d0 c1

B22_0d96:		ldx $6c			; a6 6c
B22_0d98:		inc wEntityPhase.w, x	; fe c1 05
B22_0d9b:		rts				; 60 


entityPhaseFunc_4e:
B22_0d9c:		lda #$0e		; a9 0e
B22_0d9e:		ldy #$01		; a0 01
B22_0da0:		jsr $8293		; 20 93 82
B22_0da3:		inc wEntityPhase.w, x	; fe c1 05
B22_0da6:		lda wCurrRoomSection			; a5 33
B22_0da8:		beq B22_0dbe ; f0 14

B22_0daa:		cmp #$01		; c9 01
B22_0dac:		beq B22_0dba ; f0 0c

B22_0dae:		cmp #$02		; c9 02
B22_0db0:		beq B22_0dba ; f0 08

B22_0db2:		cmp #$03		; c9 03
B22_0db4:		beq B22_0dc4 ; f0 0e

B22_0db6:		lda wCurrRoomIdx			; a5 34
B22_0db8:		bne B22_0dc4 ; d0 0a

B22_0dba:		lda #$00		; a9 00
B22_0dbc:		beq B22_0dc6 ; f0 08

B22_0dbe:		lda wCurrRoomIdx			; a5 34
B22_0dc0:		cmp #$02		; c9 02
B22_0dc2:		bne B22_0dba ; d0 f6

B22_0dc4:		lda #$03		; a9 03
B22_0dc6:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B22_0dc9:		rts				; 60 


B22_0dca:		jsr $80e3		; 20 e3 80
B22_0dcd:		bne B22_0e0c ; d0 3d

B22_0dcf:		jsr func_1f_1ed7		; 20 d7 fe
B22_0dd2:		lda $01			; a5 01
B22_0dd4:		sta wEntityBaseX.w, x	; 9d 38 04
B22_0dd7:		lda $02			; a5 02
B22_0dd9:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0ddc:		lda $03			; a5 03
B22_0dde:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_0de1:		lda $04			; a5 04
B22_0de3:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0de6:		lda $05			; a5 05
B22_0de8:		sta $0520, x	; 9d 20 05
B22_0deb:		lda $06			; a5 06
B22_0ded:		sta $0537, x	; 9d 37 05
B22_0df0:		lda #$60		; a9 60
B22_0df2:		sta $0470, x	; 9d 70 04
B22_0df5:		lda $00			; a5 00
B22_0df7:		sta $054e, x	; 9d 4e 05
B22_0dfa:		lda $0a			; a5 0a
B22_0dfc:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_0dff:		jsr $9fc9		; 20 c9 9f
B22_0e02:		lda $07			; a5 07
B22_0e04:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0e07:		stx $08			; 86 08
B22_0e09:		ldx $6c			; a6 6c
B22_0e0b:		rts				; 60 


B22_0e0c:		ldx $6c			; a6 6c
B22_0e0e:		lda #$00		; a9 00
B22_0e10:		rts				; 60 


B22_0e11:		jsr $8e6f		; 20 6f 8e
B22_0e14:		jsr $feb9		; 20 b9 fe
B22_0e17:		bne B22_0e0c ; d0 f3

B22_0e19:		lda #$00		; a9 00
B22_0e1b:		sta $0a			; 85 0a
B22_0e1d:		jmp $8dcf		; 4c cf 8d


entityPhaseFunc_0e:
B22_0e20:		lda wEntityBaseX.w, x	; bd 38 04
B22_0e23:		cmp #$04		; c9 04
B22_0e25:		bcc B22_0e36 ; 90 0f

B22_0e27:		cmp #$fc		; c9 fc
B22_0e29:		bcs B22_0e36 ; b0 0b

B22_0e2b:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0e2e:		cmp #$18		; c9 18
B22_0e30:		bcc B22_0e36 ; 90 04

B22_0e32:		cmp #$e8		; c9 e8
B22_0e34:		bcc B22_0e3e ; 90 08

func_16_0e36:
B22_0e36:		lda #$00		; a9 00
B22_0e38:		sta $054e, x	; 9d 4e 05
B22_0e3b:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_0e3e:		rts				; 60 


entityPhaseFunc_9a:
B22_0e3f:		lda $0470, x	; bd 70 04
B22_0e42:		and #$81		; 29 81
B22_0e44:		bne B22_0e51 ; d0 0b

B22_0e46:		lda wEntityBaseX.w, x	; bd 38 04
B22_0e49:		cmp #$f8		; c9 f8
B22_0e4b:		bcs B22_0e51 ; b0 04

B22_0e4d:		cmp #$08		; c9 08
B22_0e4f:		bcs B22_0e55 ; b0 04

B22_0e51:		inc wEntityPhase.w, x	; fe c1 05
B22_0e54:		rts				; 60 


B22_0e55:		lda #$32		; a9 32
B22_0e57:		jsr playSound		; 20 5f e2

entityPhaseFunc_0d:
B22_0e5a:		inc wEntityPhase.w, x	; fe c1 05
B22_0e5d:		lda $0470, x	; bd 70 04
B22_0e60:		and #$81		; 29 81
B22_0e62:		bne B22_0e3e ; d0 da

B22_0e64:		ldy #$01		; a0 01
B22_0e66:		lda ($02), y	; b1 02
B22_0e68:		tay				; a8 
B22_0e69:		jsr $8e6f		; 20 6f 8e
B22_0e6c:		jmp $8dca		; 4c ca 8d


B22_0e6f:		clc				; 18 
B22_0e70:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0e73:		adc $8ecc, y	; 79 cc 8e
B22_0e76:		sta $02			; 85 02
B22_0e78:		lda $8ed4, y	; b9 d4 8e
B22_0e7b:		sta $07			; 85 07
B22_0e7d:		lda $8ec4, y	; b9 c4 8e
B22_0e80:		sta $00			; 85 00
B22_0e82:		lda $8ebc, y	; b9 bc 8e
B22_0e85:		beq B22_0e8d ; f0 06

B22_0e87:		lda wEntityXFlipped.w, x	; bd a8 04
B22_0e8a:		eor $8eb4, y	; 59 b4 8e
B22_0e8d:		sta $0a			; 85 0a
B22_0e8f:		clc				; 18 
B22_0e90:		tya				; 98 
B22_0e91:		asl a			; 0a
B22_0e92:		adc wEntityXFlipped.w, x	; 7d a8 04
B22_0e95:		tay				; a8 
B22_0e96:		clc				; 18 
B22_0e97:		lda $8edc, y	; b9 dc 8e
B22_0e9a:		adc wEntityBaseX.w, x	; 7d 38 04
B22_0e9d:		sta $01			; 85 01
B22_0e9f:		lda $8eec, y	; b9 ec 8e
B22_0ea2:		sta $03			; 85 03
B22_0ea4:		lda $8efe, y	; b9 fe 8e
B22_0ea7:		sta $04			; 85 04
B22_0ea9:		lda $8f10, y	; b9 10 8f
B22_0eac:		sta $05			; 85 05
B22_0eae:		lda $8f22, y	; b9 22 8f
B22_0eb1:		sta $06			; 85 06
B22_0eb3:		rts				; 60 


B22_0eb4:		.db $00				; 00
B22_0eb5:		.db $00				; 00
B22_0eb6:		.db $00				; 00
B22_0eb7:		ora ($00, x)	; 01 00
B22_0eb9:		.db $00				; 00
B22_0eba:		.db $00				; 00
B22_0ebb:		.db $00				; 00
B22_0ebc:		ora ($00, x)	; 01 00
B22_0ebe:		.db $00				; 00
B22_0ebf:		ora ($00, x)	; 01 00
B22_0ec1:		ora ($00, x)	; 01 00
B22_0ec3:		.db $00				; 00
B22_0ec4:		rti				; 40 


B22_0ec5:		eor ($42, x)	; 41 42
B22_0ec7:		rti				; 40 


B22_0ec8:	.db $43
B22_0ec9:	.db $44
B22_0eca:		eor $41			; 45 41
B22_0ecc:		inc $04f6, x	; fe f6 04
B22_0ecf:	.db $f7
B22_0ed0:	.db $f4
B22_0ed1:	.db $fb
B22_0ed2:		.db $00				; 00
B22_0ed3:		ora #$58		; 09 58
B22_0ed5:		eor $585a, y	; 59 5a 58
B22_0ed8:	.db $5b
B22_0ed9:	.db $5c
B22_0eda:		eor $0859, x	; 5d 59 08
B22_0edd:		sed				; f8 
B22_0ede:	.db $14
B22_0edf:		cpx $fc04		; ec 04 fc
B22_0ee2:		php				; 08 
B22_0ee3:		sed				; f8 
B22_0ee4:		.db $00				; 00
B22_0ee5:		.db $00				; 00
B22_0ee6:		php				; 08 
B22_0ee7:		sed				; f8 
B22_0ee8:		.db $00				; 00
B22_0ee9:		.db $00				; 00
B22_0eea:		php				; 08 
B22_0eeb:		sed				; f8 
B22_0eec:	.db $02
B22_0eed:		inc $fe01, x	; fe 01 fe
B22_0ef0:		.db $00				; 00
B22_0ef1:		.db $00				; 00
B22_0ef2:		ora ($fe, x)	; 01 fe
B22_0ef4:		.db $00				; 00
B22_0ef5:	.db $ff
B22_0ef6:		ora ($fe, x)	; 01 fe
B22_0ef8:		ora ($fe, x)	; 01 fe
B22_0efa:		ora ($fe, x)	; 01 fe
B22_0efc:	.db $02
B22_0efd:	.db $fd $00 $00
B22_0f00:	.db $80
B22_0f01:	.db $80
B22_0f02:		.db $00				; 00
B22_0f03:		.db $00				; 00
B22_0f04:	.db $80
B22_0f05:	.db $80
B22_0f06:		cpy #$40		; c0 40
B22_0f08:	.db $80
B22_0f09:	.db $80
B22_0f0a:	.db $80
B22_0f0b:	.db $80
B22_0f0c:	.db $80
B22_0f0d:	.db $80
B22_0f0e:		rti				; 40 


B22_0f0f:		cpy #$00		; c0 00
B22_0f11:		.db $00				; 00
B22_0f12:		.db $00				; 00
B22_0f13:		.db $00				; 00
B22_0f14:		ora ($01, x)	; 01 01
B22_0f16:		.db $00				; 00
B22_0f17:		.db $00				; 00
B22_0f18:	.db $fd $fd $00
B22_0f1b:		.db $00				; 00
B22_0f1c:		.db $00				; 00
B22_0f1d:		.db $00				; 00
B22_0f1e:		.db $00				; 00
B22_0f1f:		.db $00				; 00
B22_0f20:		.db $00				; 00
B22_0f21:		.db $00				; 00
B22_0f22:		.db $00				; 00
B22_0f23:		.db $00				; 00
B22_0f24:		.db $00				; 00
B22_0f25:		.db $00				; 00
B22_0f26:	.db $80
B22_0f27:	.db $80
B22_0f28:		.db $00				; 00
B22_0f29:		.db $00				; 00
B22_0f2a:		rti				; 40 


B22_0f2b:		rti				; 40 


B22_0f2c:		.db $00				; 00
B22_0f2d:		.db $00				; 00
B22_0f2e:		.db $00				; 00
B22_0f2f:		.db $00				; 00
B22_0f30:		.db $00				; 00
B22_0f31:		.db $00				; 00
B22_0f32:		.db $00				; 00
B22_0f33:		.db $00				; 00


entityPhaseFunc_02:
B22_0f34:		inc wEntityPhase.w, x	; fe c1 05
B22_0f37:		lda #$04		; a9 04
B22_0f39:		sta $08			; 85 08
B22_0f3b:		lda wEntityBaseX.w, x	; bd 38 04
B22_0f3e:		sta $00			; 85 00
B22_0f40:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0f43:		sta $01			; 85 01
B22_0f45:		lda $0470, x	; bd 70 04
B22_0f48:		ora #$40		; 09 40
B22_0f4a:		and #$fb		; 29 fb
B22_0f4c:		sta $09			; 85 09
B22_0f4e:		jsr $80e3		; 20 e3 80
B22_0f51:		bne B22_0f8f ; d0 3c

B22_0f53:		jsr func_1f_1ed7		; 20 d7 fe
B22_0f56:		lda #$46		; a9 46
B22_0f58:		sta $054e, x	; 9d 4e 05
B22_0f5b:		lda #$5e		; a9 5e
B22_0f5d:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0f60:		lda $09			; a5 09
B22_0f62:		sta $0470, x	; 9d 70 04
B22_0f65:		lda $00			; a5 00
B22_0f67:		sta wEntityBaseX.w, x	; 9d 38 04
B22_0f6a:		lda $01			; a5 01
B22_0f6c:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_0f6f:		ldy $08			; a4 08
B22_0f71:		lda $8f92, y	; b9 92 8f
B22_0f74:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_0f77:		lda $8f97, y	; b9 97 8f
B22_0f7a:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_0f7d:		lda #$ff		; a9 ff
B22_0f7f:		sta $0520, x	; 9d 20 05
B22_0f82:		lda $8f9c, y	; b9 9c 8f
B22_0f85:		sta $0537, x	; 9d 37 05
B22_0f88:		jsr $9fc9		; 20 c9 9f
B22_0f8b:		dec $08			; c6 08
B22_0f8d:		bne B22_0f4e ; d0 bf

B22_0f8f:		ldx $6c			; a6 6c
B22_0f91:		rts				; 60 


B22_0f92:		.db $00				; 00
B22_0f93:	.db $ff
B22_0f94:	.db $ff
B22_0f95:		.db $00				; 00
B22_0f96:		.db $00				; 00
B22_0f97:		.db $00				; 00
B22_0f98:		ldy #$d8		; a0 d8
B22_0f9a:		plp				; 28 
B22_0f9b:		bvc B22_0f9d ; 50 00

B22_0f9d:		cpy #$80		; c0 80
B22_0f9f:	.db $80
B22_0fa0:		.db $c0


entityPhaseFunc_a2:
	lda #$38
B22_0fa3:		jsr playSound		; 20 5f e2
B22_0fa6:		lda $0470, x	; bd 70 04
B22_0fa9:		and #$f1		; 29 f1
B22_0fab:		ora #$60		; 09 60
B22_0fad:		sta $04			; 85 04
B22_0faf:		jsr $b52f		; 20 2f b5
B22_0fb2:		sta $054e, x	; 9d 4e 05
B22_0fb5:		lda wEntityBaseY.w, x	; bd 1c 04
B22_0fb8:		sta $00			; 85 00
B22_0fba:		lda wEntityBaseX.w, x	; bd 38 04
B22_0fbd:		sta $01			; 85 01
B22_0fbf:		lda #$03		; a9 03
B22_0fc1:		sta $03			; 85 03
B22_0fc3:		jsr $80e3		; 20 e3 80
B22_0fc6:		bne B22_0fe4 ; d0 1c

B22_0fc8:		dec $03			; c6 03
B22_0fca:		beq B22_0fe4 ; f0 18

B22_0fcc:		jsr $8b4f		; 20 4f 8b
B22_0fcf:		lda #$6c		; a9 6c
B22_0fd1:		sta $054e, x	; 9d 4e 05
B22_0fd4:		lda #$6c		; a9 6c
B22_0fd6:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_0fd9:		lda $04			; a5 04
B22_0fdb:		sta $0470, x	; 9d 70 04
B22_0fde:		jsr $b52f		; 20 2f b5
B22_0fe1:		jmp $8fc3		; 4c c3 8f


B22_0fe4:		ldx $6c			; a6 6c
B22_0fe6:		rts				; 60 


entityPhaseFunc_6c_playSound:
B22_0fe7:		inc wEntityPhase.w, x	; fe c1 05
B22_0fea:		ldy #$01		; a0 01
B22_0fec:		lda ($02), y	; b1 02
B22_0fee:		jmp playSound		; 4c 5f e2


entityPhaseFunc_29:
B22_0ff1:		jsr $90c2		; 20 c2 90
B22_0ff4:		jsr $93b0		; 20 b0 93
B22_0ff7:		ldy #$10		; a0 10
B22_0ff9:		jsr func_1f_1c1e		; 20 1e fc
B22_0ffc:		beq B22_1022 ; f0 24

B22_0ffe:		cmp #$04		; c9 04
B22_1000:		beq B22_1022 ; f0 20

B22_1002:		ldx $6c			; a6 6c
B22_1004:		jsr $93b0		; 20 b0 93
B22_1007:		ldy #$08		; a0 08
B22_1009:		jsr func_1f_1c1e		; 20 1e fc
B22_100c:		bne B22_1022 ; d0 14

B22_100e:		ldx $6c			; a6 6c
B22_1010:		jsr $93b0		; 20 b0 93
B22_1013:		ldy #$f8		; a0 f8
B22_1015:		jsr func_1f_1c1e		; 20 1e fc
B22_1018:		bne B22_1022 ; d0 08

B22_101a:		ldx $6c			; a6 6c
B22_101c:		dec $061d, x	; de 1d 06
B22_101f:		beq B22_103c ; f0 1b

B22_1021:		rts				; 60 


B22_1022:		ldx $6c			; a6 6c
B22_1024:		jmp reverseEnemyDirection_todo		; 4c 4b 80


entityPhaseFunc_28:
B22_1027:		jsr $8240		; 20 40 82
B22_102a:		jsr func_16_01aa		; 20 aa 81
B22_102d:		lda $0657, x	; bd 57 06
B22_1030:		ora #$03		; 09 03
B22_1032:		sta $0657, x	; 9d 57 06
B22_1035:		lda #$08		; a9 08
B22_1037:		ldy #$0d		; a0 0d
B22_1039:		jsr $8293		; 20 93 82
B22_103c:		lda $0633, x	; bd 33 06
B22_103f:		and #$80		; 29 80
B22_1041:		bne B22_1061 ; d0 1e

B22_1043:		lda $0633, x	; bd 33 06
B22_1046:		and #$30		; 29 30
B22_1048:		beq B22_1076 ; f0 2c

B22_104a:		lsr a			; 4a
B22_104b:		lsr a			; 4a
B22_104c:		lsr a			; 4a
B22_104d:		lsr a			; 4a
B22_104e:		tay				; a8 
B22_104f:		dey				; 88 
B22_1050:		tya				; 98 
B22_1051:		asl a			; 0a
B22_1052:		asl a			; 0a
B22_1053:		asl a			; 0a
B22_1054:		asl a			; 0a
B22_1055:		sta $00			; 85 00
B22_1057:		lda $0633, x	; bd 33 06
B22_105a:		and #$cf		; 29 cf
B22_105c:		ora $00			; 05 00
B22_105e:		sta $0633, x	; 9d 33 06
B22_1061:		lda #$21		; a9 21
B22_1063:		sta $061d, x	; 9d 1d 06
B22_1066:		jsr $8243		; 20 43 82
B22_1069:		jsr $80b3		; 20 b3 80
B22_106c:		cmp #$60		; c9 60
B22_106e:		bcc B22_10ac ; 90 3c

B22_1070:		jsr $9134		; 20 34 91
B22_1073:		jmp $90af		; 4c af 90


B22_1076:		jsr $907c		; 20 7c 90
B22_1079:		jmp $9061		; 4c 61 90


B22_107c:		lda $0470, x	; bd 70 04
B22_107f:		and #$81		; 29 81
B22_1081:		bne B22_10a9 ; d0 26

B22_1083:		jsr $feb9		; 20 b9 fe
B22_1086:		bne B22_10a9 ; d0 21

B22_1088:		ldx $6c			; a6 6c
B22_108a:		jsr $81ef		; 20 ef 81
B22_108d:		jsr func_16_019e		; 20 9e 81
B22_1090:		lda $1a			; a5 1a
B22_1092:		adc wEntityBaseX.w, x	; 7d 38 04
B22_1095:		and #$01		; 29 01
B22_1097:		tay				; a8 
B22_1098:		lda $90aa, y	; b9 aa 90
B22_109b:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_109e:		inc wEntityPhase.w, x	; fe c1 05
B22_10a1:		lda $0633, x	; bd 33 06
B22_10a4:		ora #$10		; 09 10
B22_10a6:		sta $0633, x	; 9d 33 06
B22_10a9:		rts				; 60 


B22_10aa:		bmi B22_10fe ; 30 52

B22_10ac:		jsr $9127		; 20 27 91
B22_10af:		lda $0470, x	; bd 70 04
B22_10b2:		and #$01		; 29 01
B22_10b4:		beq B22_10ba ; f0 04

B22_10b6:		tya				; 98 
B22_10b7:		eor #$01		; 49 01
B22_10b9:		tay				; a8 
B22_10ba:		tya				; 98 
B22_10bb:		clc				; 18 
B22_10bc:		adc #$02		; 69 02
B22_10be:		tay				; a8 
B22_10bf:		jmp $938b		; 4c 8b 93


B22_10c2:		lda $0633, x	; bd 33 06
B22_10c5:		and #$80		; 29 80
B22_10c7:		beq B22_10f5 ; f0 2c

B22_10c9:		lda $0633, x	; bd 33 06
B22_10cc:		and #$0f		; 29 0f
B22_10ce:		tay				; a8 
B22_10cf:		sty $00			; 84 00
B22_10d1:		lda $054e, y	; b9 4e 05
B22_10d4:		beq B22_10f6 ; f0 20

B22_10d6:		ldy $00			; a4 00
B22_10d8:		lda wEntityBaseX.w, y	; b9 38 04
B22_10db:		sta $10			; 85 10
B22_10dd:		ldx $6c			; a6 6c
B22_10df:		jsr $80cb		; 20 cb 80
B22_10e2:		cmp #$04		; c9 04
B22_10e4:		bcs B22_10f5 ; b0 0f

B22_10e6:		jsr $90f6		; 20 f6 90
B22_10e9:		lda #$00		; a9 00
B22_10eb:		ldy $00			; a4 00
B22_10ed:		sta wOamSpecIdx.w, y	; 99 00 04
B22_10f0:		sta $054e, y	; 99 4e 05
B22_10f3:		ldx $6c			; a6 6c
B22_10f5:		rts				; 60 


B22_10f6:		lda $0633, x	; bd 33 06
B22_10f9:		and #$7f		; 29 7f
B22_10fb:		sta $0633, x	; 9d 33 06
B22_10fe:		rts				; 60 


entityPhaseFunc_2c:
B22_10ff:		ldy #$01		; a0 01
B22_1101:		lda wOamSpecIdx.w, x	; bd 00 04
B22_1104:		cmp #$32		; c9 32
B22_1106:		beq B22_110a ; f0 02

B22_1108:		ldy #$07		; a0 07
B22_110a:		jsr $8e11		; 20 11 8e
B22_110d:		lda $08			; a5 08
B22_110f:		and #$0f		; 29 0f
B22_1111:		ora #$80		; 09 80
B22_1113:		sta $09			; 85 09
B22_1115:		lda $0633, x	; bd 33 06
B22_1118:		and #$70		; 29 70
B22_111a:		ora $09			; 05 09
B22_111c:		sta $0633, x	; 9d 33 06
B22_111f:		lda #$00		; a9 00
B22_1121:		sta wEntityPhase.w, x	; 9d c1 05
B22_1124:		jmp func_16_01f8		; 4c f8 81


B22_1127:		ldy #$01		; a0 01
B22_1129:		lda wEntityBaseX.w		; ad 38 04
B22_112c:		cmp wEntityBaseX.w, x	; dd 38 04
B22_112f:		bcc B22_1133 ; 90 02

B22_1131:		ldy #$00		; a0 00
B22_1133:		rts				; 60 


B22_1134:		ldy #$00		; a0 00
B22_1136:		lda wEntityBaseX.w		; ad 38 04
B22_1139:		cmp wEntityBaseX.w, x	; dd 38 04
B22_113c:		bcc B22_1133 ; 90 f5

B22_113e:		ldy #$01		; a0 01
B22_1140:		rts				; 60 


entityPhaseFunc_2f:
B22_1141:		lda wEntityAI_idx.w, x	; bd ef 05
B22_1144:		cmp #$14		; c9 14
B22_1146:		beq B22_114c ; f0 04

B22_1148:		cmp #$13		; c9 13
B22_114a:		bne B22_1153 ; d0 07

B22_114c:		ldy #$0d		; a0 0d
B22_114e:		jsr func_17_17a6		; 20 a6 b7
B22_1151:		beq B22_1192 ; f0 3f

B22_1153:		ldy #$05		; a0 05
B22_1155:		jsr func_17_17a6		; 20 a6 b7
B22_1158:		beq B22_117f ; f0 25

B22_115a:		jsr func_16_0b91		; 20 91 8b
B22_115d:		lda wEntityAI_idx.w, x	; bd ef 05
B22_1160:		cmp #$29		; c9 29
B22_1162:		bne B22_1178 ; d0 14

B22_1164:		lda wCurrRoomGroup		; a5 32
B22_1166:		cmp #$09		; c9 09
B22_1168:		bne B22_1178 ; d0 0e

B22_116a:		lda $57			; a5 57
B22_116c:		bne B22_1178 ; d0 0a

B22_116e:		clc				; 18 
B22_116f:		lda $56			; a5 56
B22_1171:		adc wEntityBaseX.w, x	; 7d 38 04
B22_1174:		cmp #$70		; c9 70
B22_1176:		bcc B22_117f ; 90 07

B22_1178:		ldy #$00		; a0 00
B22_117a:		jsr func_17_17a6		; 20 a6 b7
B22_117d:		beq B22_1184 ; f0 05

B22_117f:		ldx $6c			; a6 6c
B22_1181:		jmp func_16_095e		; 4c 5e 89

B22_1184:		ldx $6c			; a6 6c
B22_1186:		dec $0606, x	; de 06 06
B22_1189:		bne B22_1191 ; d0 06

B22_118b:		jsr func_16_019e		; 20 9e 81
B22_118e:		inc wEntityPhase.w, x	; fe c1 05
B22_1191:		rts				; 60 

B22_1192:		jsr func_1f_1ec8		; 20 c8 fe
B22_1195:		lda #$01		; a9 01
B22_1197:		sta $0520, x	; 9d 20 05
B22_119a:		lda wEntityAI_idx.w, x	; bd ef 05
B22_119d:		cmp #$14		; c9 14
B22_119f:		beq B22_11a5 ; f0 04

B22_11a1:		inc wEntityPhase.w, x	; fe c1 05
B22_11a4:		rts				; 60 

B22_11a5:		lda #$25		; a9 25
B22_11a7:		sta wEntityPhase.w, x	; 9d c1 05
B22_11aa:		rts				; 60 


entityPhaseFunc_66:
B22_11ab:		ldy #$05		; a0 05
B22_11ad:		jsr func_17_17a6		; 20 a6 b7
B22_11b0:		beq B22_117f ; f0 cd

B22_11b2:		ldx $6c			; a6 6c
B22_11b4:		ldy #$00		; a0 00
B22_11b6:		jsr func_17_17a6		; 20 a6 b7
B22_11b9:		bne B22_117f ; d0 c4

B22_11bb:		ldx $6c			; a6 6c
B22_11bd:		dec $0606, x	; de 06 06
B22_11c0:		bne B22_11e2 ; d0 20

B22_11c2:		lda #$40		; a9 40
B22_11c4:		sta $0606, x	; 9d 06 06
B22_11c7:		jsr func_16_0230		; 20 30 82
B22_11ca:		lda wEntityXFlipped.w, x	; bd a8 04
B22_11cd:		bne B22_11da ; d0 0b

B22_11cf:		lda wEntityHorizSpeed.w, x	; bd f2 04
B22_11d2:		bpl B22_11e2 ; 10 0e

B22_11d4:		jsr reverseEnemyDirection_todo		; 20 4b 80
B22_11d7:		jmp $91e2		; 4c e2 91


B22_11da:		lda wEntityHorizSpeed.w, x	; bd f2 04
B22_11dd:		bmi B22_11e2 ; 30 03

B22_11df:		jsr reverseEnemyDirection_todo		; 20 4b 80
B22_11e2:		lda wOamSpecIdx.w, x	; bd 00 04
B22_11e5:		cmp #$2c		; c9 2c
B22_11e7:		bne B22_124d ; d0 64

B22_11e9:		lda wEntityTimeUntilNextAnimation.w, x	; bd 7c 05
B22_11ec:		cmp #$10		; c9 10
B22_11ee:		bne B22_124d ; d0 5d

B22_11f0:		ldy #$0b		; a0 0b
B22_11f2:		jsr func_17_17a6		; 20 a6 b7
B22_11f5:		beq B22_124d ; f0 56

B22_11f7:		ldx $6c			; a6 6c
B22_11f9:		ldy wEntityXFlipped.w, x	; bc a8 04
B22_11fc:		clc				; 18 
B22_11fd:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1200:		adc #$07		; 69 07
B22_1202:		sta $01			; 85 01
B22_1204:		lda $0470, x	; bd 70 04
B22_1207:		and #$ba		; 29 ba
B22_1209:		ora #$20		; 09 20
B22_120b:		sta $09			; 85 09
B22_120d:		clc				; 18 
B22_120e:		lda $9250, y	; b9 50 92
B22_1211:		adc wEntityBaseX.w, x	; 7d 38 04
B22_1214:		sta $00			; 85 00
B22_1216:		lda $0470, x	; bd 70 04
B22_1219:		and #$01		; 29 01
B22_121b:		adc $9252, y	; 79 52 92
B22_121e:		and #$01		; 29 01
B22_1220:		ora $09			; 05 09
B22_1222:		sta $0a			; 85 0a
B22_1224:		jsr $80e3		; 20 e3 80
B22_1227:		bne B22_124d ; d0 24

B22_1229:		lda $00			; a5 00
B22_122b:		sta wEntityBaseX.w, x	; 9d 38 04
B22_122e:		lda $01			; a5 01
B22_1230:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1233:		lda $0a			; a5 0a
B22_1235:		sta $0470, x	; 9d 70 04
B22_1238:		lda #$00		; a9 00
B22_123a:		sta wEntityPhase.w, x	; 9d c1 05
B22_123d:		lda #$47		; a9 47
B22_123f:		sta $054e, x	; 9d 4e 05
B22_1242:		lda #$5f		; a9 5f
B22_1244:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_1247:		jsr $9fc9		; 20 c9 9f
B22_124a:		jsr func_1f_1ec8		; 20 c8 fe
B22_124d:		ldx $6c			; a6 6c
B22_124f:		rts				; 60 


B22_1250:	.db $fa
B22_1251:		asl $ff			; 06 ff
B22_1253:		.db $00				; 00
B22_1254:		jsr func_1f_1ec8		; 20 c8 fe
B22_1257:		lda #$01		; a9 01
B22_1259:		sta $0520, x	; 9d 20 05
B22_125c:		inc wEntityPhase.w, x	; fe c1 05
B22_125f:		rts				; 60 


entityPhaseFunc_3b:
B22_1260:		jsr $93a6		; 20 a6 93
B22_1263:		ldy #$10		; a0 10
B22_1265:		jsr func_1f_1c1e		; 20 1e fc
B22_1268:		beq B22_1254 ; f0 ea

B22_126a:		ldx $6c			; a6 6c
B22_126c:		jsr $93b0		; 20 b0 93
B22_126f:		ldy #$10		; a0 10
B22_1271:		jsr func_1f_1c1e		; 20 1e fc
B22_1274:		beq B22_12d6 ; f0 60

B22_1276:		cmp #$04		; c9 04
B22_1278:		beq B22_12d6 ; f0 5c

B22_127a:		ldx $6c			; a6 6c
B22_127c:		jsr $93b0		; 20 b0 93
B22_127f:		ldy #$08		; a0 08
B22_1281:		jsr func_1f_1c1e		; 20 1e fc
B22_1284:		bne B22_12d6 ; d0 50

B22_1286:		dec $061d, x	; de 1d 06
B22_1289:		bne B22_12c3 ; d0 38

B22_128b:		jsr func_1f_1ec8		; 20 c8 fe
B22_128e:		inc wEntityPhase.w, x	; fe c1 05
B22_1291:		inc wEntityPhase.w, x	; fe c1 05
B22_1294:		inc wEntityPhase.w, x	; fe c1 05
B22_1297:		rts				; 60 


entityPhaseFunc_34:
B22_1298:		jsr $93b0		; 20 b0 93
B22_129b:		ldy #$10		; a0 10
B22_129d:		jsr func_1f_1c1e		; 20 1e fc
B22_12a0:		beq B22_12db ; f0 39

B22_12a2:		ldx $6c			; a6 6c
B22_12a4:		jsr $93ba		; 20 ba 93
B22_12a7:		ldy #$08		; a0 08
B22_12a9:		jsr func_1f_1c1e		; 20 1e fc
B22_12ac:		beq B22_12bc ; f0 0e

B22_12ae:		ldx $6c			; a6 6c
B22_12b0:		jsr $93ba		; 20 ba 93
B22_12b3:		ldy #$f8		; a0 f8
B22_12b5:		jsr func_1f_1c1e		; 20 1e fc
B22_12b8:		bne B22_12d6 ; d0 1c

B22_12ba:		beq B22_12db ; f0 1f

B22_12bc:		ldx $6c			; a6 6c
B22_12be:		dec $061d, x	; de 1d 06
B22_12c1:		beq B22_12d0 ; f0 0d

B22_12c3:		lda #$04		; a9 04
B22_12c5:		ldy wEntityHorizSpeed.w, x	; bc f2 04
B22_12c8:		bpl B22_12cd ; 10 03

B22_12ca:		jmp $806f		; 4c 6f 80


B22_12cd:		jmp $808f		; 4c 8f 80


B22_12d0:		lda #$04		; a9 04
B22_12d2:		sta wEntityPhase.w, x	; 9d c1 05
B22_12d5:		rts				; 60 


B22_12d6:		ldx $6c			; a6 6c
B22_12d8:		jmp reverseEnemyDirection_todo		; 4c 4b 80


B22_12db:		ldx $6c			; a6 6c
B22_12dd:		inc wEntityPhase.w, x	; fe c1 05
B22_12e0:		lda #$01		; a9 01
B22_12e2:		ldy wEntityHorizSpeed.w, x	; bc f2 04
B22_12e5:		bpl B22_12e9 ; 10 02

B22_12e7:		lda #$ff		; a9 ff
B22_12e9:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_12ec:		lda #$fe		; a9 fe
B22_12ee:		sta $0520, x	; 9d 20 05
B22_12f1:		lda #$00		; a9 00
B22_12f3:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_12f6:		sta $0537, x	; 9d 37 05
B22_12f9:		jmp $81ef		; 4c ef 81


entityPhaseFunc_33:
B22_12fc:		ldy #$01		; a0 01
B22_12fe:		lda ($02), y	; b1 02
B22_1300:		sta $0606, x	; 9d 06 06
B22_1303:		lda #$14		; a9 14
B22_1305:		jsr func_16_007f		; 20 7f 80
B22_1308:		lda $0520, x	; bd 20 05
B22_130b:		bmi B22_131b ; 30 0e

B22_130d:		cmp #$02		; c9 02
B22_130f:		bcc B22_131b ; 90 0a

B22_1311:		lda #$02		; a9 02
B22_1313:		sta $0520, x	; 9d 20 05
B22_1316:		lda #$00		; a9 00
B22_1318:		sta $0537, x	; 9d 37 05
B22_131b:		jsr $93b0		; 20 b0 93
B22_131e:		ldy #$10		; a0 10
B22_1320:		jsr func_1f_1c1e		; 20 1e fc
B22_1323:		beq B22_1341 ; f0 1c

B22_1325:		ldx $6c			; a6 6c
B22_1327:		ldy #$06		; a0 06
B22_1329:		jsr func_17_17a6		; 20 a6 b7
B22_132c:		beq B22_1342 ; f0 14

B22_132e:		ldx $6c			; a6 6c
B22_1330:		jsr func_1f_1ec8		; 20 c8 fe
B22_1333:		inc wEntityPhase.w, x	; fe c1 05
B22_1336:		jsr func_16_01f8		; 20 f8 81
B22_1339:		lda wEntityBaseY.w, x	; bd 1c 04
B22_133c:		and #$f0		; 29 f0
B22_133e:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1341:		rts				; 60 


B22_1342:		ldx $6c			; a6 6c
B22_1344:		jsr func_1f_1ec8		; 20 c8 fe
B22_1347:		lda #$01		; a9 01
B22_1349:		sta $0520, x	; 9d 20 05
B22_134c:		lda #$80		; a9 80
B22_134e:		sta $0537, x	; 9d 37 05
B22_1351:		lda $0606, x	; bd 06 06
B22_1354:		sta wEntityPhase.w, x	; 9d c1 05
B22_1357:		rts				; 60 


entityPhaseFunc_35:
B22_1358:		inc wEntityPhase.w, x	; fe c1 05
B22_135b:		jsr func_16_01aa		; 20 aa 81
B22_135e:		jsr func_1f_1ec8		; 20 c8 fe
B22_1361:		lda #$28		; a9 28
B22_1363:		sta $061d, x	; 9d 1d 06
B22_1366:		jsr func_16_0230		; 20 30 82
B22_1369:		lda $0470, x	; bd 70 04
B22_136c:		and #$01		; 29 01
B22_136e:		bne B22_1379 ; d0 09

B22_1370:		jsr $80b3		; 20 b3 80
B22_1373:		cmp #$40		; c9 40
B22_1375:		bcc B22_13a0 ; 90 29

B22_1377:		bcs B22_1388 ; b0 0f

B22_1379:		lda wEntityXFlipped.w, x	; bd a8 04
B22_137c:		eor #$01		; 49 01
B22_137e:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_1381:		jsr $80b3		; 20 b3 80
B22_1384:		cmp #$40		; c9 40
B22_1386:		bcs B22_13a0 ; b0 18

B22_1388:		jsr $9134		; 20 34 91
B22_138b:		lda $9398, y	; b9 98 93
B22_138e:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_1391:		lda $939c, y	; b9 9c 93
B22_1394:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1397:		rts				; 60 


B22_1398:		inc $ff01, x	; fe 01 ff
B22_139b:		.db $00				; 00
B22_139c:		;removed
	.db $d0 $30

B22_139e:		ldy #$60		; a0 60
B22_13a0:		jsr $9127		; 20 27 91
B22_13a3:		jmp $938b		; 4c 8b 93


B22_13a6:		lda #$fb		; a9 fb
B22_13a8:		ldy wEntityXFlipped.w, x	; bc a8 04
B22_13ab:		beq B22_13b9 ; f0 0c

B22_13ad:		lda #$05		; a9 05
B22_13af:		rts				; 60 


B22_13b0:		lda #$f8		; a9 f8
B22_13b2:		ldy wEntityHorizSpeed.w, x	; bc f2 04
B22_13b5:		bmi B22_13b9 ; 30 02

B22_13b7:		lda #$08		; a9 08
B22_13b9:		rts				; 60 


B22_13ba:		lda #$e8		; a9 e8
B22_13bc:		ldy wEntityHorizSpeed.w, x	; bc f2 04
B22_13bf:		bmi B22_13b9 ; 30 f8

B22_13c1:		lda #$18		; a9 18
B22_13c3:		rts				; 60 


entityPhaseFunc_36:
B22_13c4:		jsr $80b3		; 20 b3 80
B22_13c7:		ldy #$01		; a0 01
B22_13c9:		cmp ($02), y	; d1 02
B22_13cb:		bcs B22_13d1 ; b0 04

B22_13cd:		inc wEntityPhase.w, x	; fe c1 05
B22_13d0:		rts				; 60 


B22_13d1:		ldy #$02		; a0 02
B22_13d3:		lda ($02), y	; b1 02
B22_13d5:		sta wEntityPhase.w, x	; 9d c1 05
B22_13d8:		rts				; 60 


entityPhaseFunc_7e:
B22_13d9:		inc wEntityPhase.w, x	; fe c1 05
B22_13dc:		lda #$0f		; a9 0f
B22_13de:		sta $0606, x	; 9d 06 06
B22_13e1:		lda #$00		; a9 00
B22_13e3:		sta $061d, x	; 9d 1d 06
B22_13e6:		lda wEntityBaseX.w, x	; bd 38 04
B22_13e9:		adc wEntityBaseY.w, x	; 7d 1c 04
B22_13ec:		lsr a			; 4a
B22_13ed:		lsr a			; 4a
B22_13ee:		lsr a			; 4a
B22_13ef:		adc $1f			; 65 1f
B22_13f1:		and #$07		; 29 07
B22_13f3:		tay				; a8 
B22_13f4:		lda $93fb, y	; b9 fb 93
B22_13f7:		sta $0633, x	; 9d 33 06
B22_13fa:		rts				; 60 


B22_13fb:	.db $73
B22_13fc:		pha				; 48 
B22_13fd:		pha				; 48 
B22_13fe:		adc $63			; 65 63
B22_1400:	.db $5c
B22_1401:	.db $8f
B22_1402:	.db $54


entityPhaseFunc_7d:
B22_1403:		lda $0470, x	; bd 70 04
B22_1406:		and #$01		; 29 01
B22_1408:		bne B22_13fa ; d0 f0

B22_140a:		dec $0606, x	; de 06 06
B22_140d:		bne B22_1426 ; d0 17

B22_140f:		lda $061d, x	; bd 1d 06
B22_1412:		eor #$01		; 49 01
B22_1414:		sta $061d, x	; 9d 1d 06
B22_1417:		tay				; a8 
B22_1418:		lda $9439, y	; b9 39 94
B22_141b:		sta $0606, x	; 9d 06 06
B22_141e:		lda $0470, x	; bd 70 04
B22_1421:		eor #$08		; 49 08
B22_1423:		sta $0470, x	; 9d 70 04
B22_1426:		lda $0633, x	; bd 33 06
B22_1429:		beq B22_1430 ; f0 05

B22_142b:		dec $0633, x	; de 33 06
B22_142e:		bne B22_1438 ; d0 08

B22_1430:		ldx $6c			; a6 6c
B22_1432:		jsr $81bc		; 20 bc 81
B22_1435:		inc wEntityPhase.w, x	; fe c1 05
B22_1438:		rts				; 60 


B22_1439:		plp				; 28 
B22_143a:	.db $07


entityPhaseFunc_7f:
B22_143b:		jsr $8240		; 20 40 82
B22_143e:		jsr $80b3		; 20 b3 80
B22_1441:		and #$f0		; 29 f0
B22_1443:		lsr a			; 4a
B22_1444:		lsr a			; 4a
B22_1445:		lsr a			; 4a
B22_1446:		lsr a			; 4a
B22_1447:		tay				; a8 
B22_1448:		lda $9473, y	; b9 73 94
B22_144b:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_144e:		lda $947d, y	; b9 7d 94
B22_1451:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1454:		lda wEntityXFlipped.w, x	; bd a8 04
B22_1457:		beq B22_145c ; f0 03

B22_1459:		jsr reverseEnemyDirection_todo		; 20 4b 80
B22_145c:		jsr $80d5		; 20 d5 80
B22_145f:		and #$f0		; 29 f0
B22_1461:		lsr a			; 4a
B22_1462:		lsr a			; 4a
B22_1463:		lsr a			; 4a
B22_1464:		lsr a			; 4a
B22_1465:		tay				; a8 
B22_1466:		lda $9487, y	; b9 87 94
B22_1469:		sta $0520, x	; 9d 20 05
B22_146c:		lda $9491, y	; b9 91 94
B22_146f:		sta $0537, x	; 9d 37 05
B22_1472:		rts				; 60 


B22_1473:		.db $00				; 00
B22_1474:		ora ($01, x)	; 01 01
B22_1476:	.db $02
B22_1477:	.db $02
B22_1478:	.db $02
B22_1479:	.db $03
B22_147a:	.db $03
B22_147b:	.db $03
B22_147c:	.db $04
B22_147d:		cpy #$80		; c0 80
B22_147f:		cpy #$00		; c0 00
B22_1481:	.db $80
B22_1482:		cpy #$00		; c0 00
B22_1484:	.db $80
B22_1485:		cpy #$80		; c0 80
B22_1487:		ora ($01, x)	; 01 01
B22_1489:	.db $02
B22_148a:	.db $02
B22_148b:	.db $02
B22_148c:	.db $03
B22_148d:	.db $03
B22_148e:	.db $03
B22_148f:	.db $04
B22_1490:	.db $04
B22_1491:	.db $80
B22_1492:		cpy #$00		; c0 00
B22_1494:	.db $80
B22_1495:		cpy #$00		; c0 00
B22_1497:	.db $80
B22_1498:		cpy #$00		; c0 00
B22_149a:	.db $80


entityPhaseFunc_80:
B22_149b:		lda $0520, x	; bd 20 05
B22_149e:		bpl B22_14b8 ; 10 18

B22_14a0:		lda #$26		; a9 26
B22_14a2:		jsr playSound		; 20 5f e2
B22_14a5:		jsr func_16_01f8		; 20 f8 81
B22_14a8:		ldy #$06		; a0 06
B22_14aa:		lda #$12		; a9 12
B22_14ac:		jsr func_1f_0f5c		; 20 5c ef
B22_14af:		lda #$30		; a9 30
B22_14b1:		sta $0606, x	; 9d 06 06
B22_14b4:		inc wEntityPhase.w, x	; fe c1 05
B22_14b7:		rts				; 60 


B22_14b8:		lda #$10		; a9 10
B22_14ba:		jmp $80a1		; 4c a1 80


entityPhaseFunc_81:
B22_14bd:		dec $0606, x	; de 06 06
B22_14c0:		beq B22_14b4 ; f0 f2

B22_14c2:		bne B22_14b8 ; d0 f4


entityPhaseFunc_82:
B22_14c4:		lda #$10		; a9 10
B22_14c6:		jsr $80a1		; 20 a1 80
B22_14c9:		lda wEntityBaseY.w, x	; bd 1c 04
B22_14cc:		cmp #$28		; c9 28
B22_14ce:		bcc B22_14d4 ; 90 04

B22_14d0:		cmp #$e8		; c9 e8
B22_14d2:		bcc B22_14b7 ; 90 e3

B22_14d4:		lda $0645, x	; bd 45 06
B22_14d7:		tax				; aa 
B22_14d8:		lda #$00		; a9 00
B22_14da:		sta $07c8, x	; 9d c8 07
B22_14dd:		ldx $6c			; a6 6c
B22_14df:		jmp $84b2		; 4c b2 84


entityPhaseFunc_83:
B22_14e2:		inc wEntityPhase.w, x	; fe c1 05
B22_14e5:		jsr func_1f_1ec8		; 20 c8 fe
B22_14e8:		lda #$ff		; a9 ff
B22_14ea:		sta $0520, x	; 9d 20 05
B22_14ed:		rts				; 60 


entityPhaseFunc_3c:
B22_14ee:		ldy #$01		; a0 01
B22_14f0:		lda $0633, x	; bd 33 06
B22_14f3:		cmp #$01		; c9 01
B22_14f5:		bcc B22_14fd ; 90 06

B22_14f7:		lda #$00		; a9 00
B22_14f9:		sta $0633, x	; 9d 33 06
B22_14fc:		iny				; c8 
B22_14fd:		lda ($02), y	; b1 02
B22_14ff:		sta wEntityPhase.w, x	; 9d c1 05
B22_1502:		rts				; 60 


entityPhaseFunc_3e:
B22_1503:		jsr func_1f_1ec8		; 20 c8 fe
B22_1506:		lda #$ff		; a9 ff
B22_1508:		sta $0520, x	; 9d 20 05
B22_150b:		inc wEntityPhase.w, x	; fe c1 05
B22_150e:		rts				; 60 


entityPhaseFunc_3d:
B22_150f:		lda #$10		; a9 10
B22_1511:		jsr $80a1		; 20 a1 80
B22_1514:		ldy #$04		; a0 04
B22_1516:		jsr func_17_17a6		; 20 a6 b7
B22_1519:		beq B22_1522 ; f0 07

B22_151b:		jsr func_1f_1ec8		; 20 c8 fe
B22_151e:		inc wEntityPhase.w, x	; fe c1 05
B22_1521:		rts				; 60 


B22_1522:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1525:		cmp #$30		; c9 30
B22_1527:		bcs B22_150e ; b0 e5

B22_1529:		lda #$00		; a9 00
B22_152b:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_152e:		jsr func_1f_1ec8		; 20 c8 fe
B22_1531:		ldy #$01		; a0 01
B22_1533:		lda ($02), y	; b1 02
B22_1535:		sta wEntityPhase.w, x	; 9d c1 05
B22_1538:		rts				; 60 


entityPhaseFunc_40:
B22_1539:		jsr func_16_0230		; 20 30 82
B22_153c:		lda #$00		; a9 00
B22_153e:		ldy #$c0		; a0 c0
B22_1540:		jsr func_16_04ff		; 20 ff 84
B22_1543:		lda #$01		; a9 01
B22_1545:		ldy #$80		; a0 80
B22_1547:		jsr $8518		; 20 18 85
B22_154a:		inc wEntityPhase.w, x	; fe c1 05
B22_154d:		rts				; 60 


entityPhaseFunc_41:
B22_154e:		ldy #$04		; a0 04
B22_1550:		jsr func_17_17a6		; 20 a6 b7
B22_1553:		beq B22_155d ; f0 08

B22_1555:		ldx $6c			; a6 6c
B22_1557:		inc $0633, x	; fe 33 06
B22_155a:		jmp $95ae		; 4c ae 95


B22_155d:		ldx $6c			; a6 6c
B22_155f:		lda #$14		; a9 14
B22_1561:		jsr $80a1		; 20 a1 80
B22_1564:		lda $0520, x	; bd 20 05
B22_1567:		bpl B22_154d ; 10 e4

B22_1569:		cmp #$fd		; c9 fd
B22_156b:		bcs B22_154d ; b0 e0

B22_156d:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1570:		cmp #$30		; c9 30
B22_1572:		bcc B22_157f ; 90 0b

B22_1574:		lda #$fd		; a9 fd
B22_1576:		sta $0520, x	; 9d 20 05
B22_1579:		lda #$00		; a9 00
B22_157b:		sta $0537, x	; 9d 37 05
B22_157e:		rts				; 60 


B22_157f:		jsr func_1f_1ec8		; 20 c8 fe
B22_1582:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_1585:		lda #$17		; a9 17
B22_1587:		sta wEntityPhase.w, x	; 9d c1 05
B22_158a:		rts				; 60 


entityPhaseFunc_42:
B22_158b:		lda #$30		; a9 30
B22_158d:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1590:		lda wEntityBaseX.w		; ad 38 04
B22_1593:		sta wEntityBaseX.w, x	; 9d 38 04

entityPhaseFunc_43:
B22_1596:		ldy #$01		; a0 01
B22_1598:		lda ($02), y	; b1 02
B22_159a:		sta $0520, x	; 9d 20 05
B22_159d:		iny				; c8 
B22_159e:		lda ($02), y	; b1 02
B22_15a0:		sta $0537, x	; 9d 37 05
B22_15a3:		inc wEntityPhase.w, x	; fe c1 05
B22_15a6:		rts				; 60 


entityPhaseFunc_3f:
B22_15a7:		ldy #$03		; a0 03
B22_15a9:		jsr func_17_17a6		; 20 a6 b7
B22_15ac:		beq B22_15b5 ; f0 07

B22_15ae:		jsr func_1f_1ec8		; 20 c8 fe
B22_15b1:		inc wEntityPhase.w, x	; fe c1 05
B22_15b4:		rts				; 60 


B22_15b5:		lda #$10		; a9 10
B22_15b7:		jsr func_16_007f		; 20 7f 80
B22_15ba:		lda $0520, x	; bd 20 05
B22_15bd:		cmp #$02		; c9 02
B22_15bf:		bcc B22_15b4 ; 90 f3

B22_15c1:		lda #$02		; a9 02
B22_15c3:		sta $0520, x	; 9d 20 05
B22_15c6:		lda #$00		; a9 00
B22_15c8:		sta $0537, x	; 9d 37 05
B22_15cb:		rts				; 60 


entityPhaseFunc_45:
B22_15cc:		ldy #$01		; a0 01
B22_15ce:		lda ($02), y	; b1 02
B22_15d0:		sta $061d, x	; 9d 1d 06
B22_15d3:		txa				; 8a 
B22_15d4:		adc $1a			; 65 1a
B22_15d6:		and #$07		; 29 07
B22_15d8:		tay				; a8 
B22_15d9:		lda $95fb, y	; b9 fb 95
B22_15dc:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_15df:		lda $9603, y	; b9 03 96
B22_15e2:		sta $0537, x	; 9d 37 05
B22_15e5:		lda $960b, y	; b9 0b 96
B22_15e8:		sta $0520, x	; 9d 20 05
B22_15eb:		lda $9613, y	; b9 13 96
B22_15ee:		sta $0537, x	; 9d 37 05
B22_15f1:		lda $961b, y	; b9 1b 96
B22_15f4:		sta $0606, x	; 9d 06 06
B22_15f7:		inc wEntityPhase.w, x	; fe c1 05
B22_15fa:		rts				; 60 


B22_15fb:		ora ($ff, x)	; 01 ff
B22_15fd:	.db $ff
B22_15fe:		.db $00				; 00
B22_15ff:	.db $ff
B22_1600:		.db $00				; 00
B22_1601:		inc $2000, x	; fe 00 20
B22_1604:		bpl B22_1626 ; 10 20

B22_1606:		sed				; f8 
B22_1607:		bpl B22_15d9 ; 10 d0

B22_1609:		bne B22_15cb ; d0 c0

B22_160b:	.db $ff
B22_160c:		inc $fefe, x	; fe fe fe
B22_160f:	.db $ff
B22_1610:		inc $fefe, x	; fe fe fe
B22_1613:		.db $00				; 00
B22_1614:		rti				; 40 


B22_1615:		cpy #$20		; c0 20
B22_1617:		jsr $40c0		; 20 c0 40
B22_161a:		sta ($20, x)	; 81 20
B22_161c:		bit $3c			; 24 3c
B22_161e:		pha				; 48 
B22_161f:		bmi B22_1649 ; 30 28

B22_1621:	.db $1c
B22_1622:		sec				; 38 


entityPhaseFunc_46:
B22_1623:		dec $061d, x	; de 1d 06
B22_1626:		beq B22_1631 ; f0 09

B22_1628:		lda $0606, x	; bd 06 06
B22_162b:		jsr func_16_007f		; 20 7f 80
B22_162e:		jmp $84b8		; 4c b8 84


B22_1631:		jmp $84b2		; 4c b2 84


entityPhaseFunc_5a:
B22_1634:		lda $1a			; a5 1a
B22_1636:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1639:		txa				; 8a 
B22_163a:		adc $1a			; 65 1a
B22_163c:		and #$07		; 29 07
B22_163e:		jsr func_16_007f		; 20 7f 80
B22_1641:		jmp $84b8		; 4c b8 84


entityPhaseFunc_47:
entityPhaseFunc_4a:
entityPhaseFunc_4b:
entityPhaseFunc_4c:
B22_1644:		lda #$00		; a9 00
B22_1646:		sta $0633, x	; 9d 33 06
B22_1649:		jsr $81a7		; 20 a7 81
B22_164c:		lda #$00		; a9 00
B22_164e:		sta $061d, x	; 9d 1d 06
B22_1651:		jsr func_1f_1ec8		; 20 c8 fe
B22_1654:		jsr $80d5		; 20 d5 80
B22_1657:		cmp #$40		; c9 40
B22_1659:		bcs B22_1667 ; b0 0c

B22_165b:		lda $1f			; a5 1f
B22_165d:		and #$03		; 29 03
B22_165f:		tay				; a8 
B22_1660:		lda $9673, y	; b9 73 96
B22_1663:		sta $0606, x	; 9d 06 06
B22_1666:		rts				; 60 


B22_1667:		lda $1f			; a5 1f
B22_1669:		and #$03		; 29 03
B22_166b:		tay				; a8 
B22_166c:		lda $9677, y	; b9 77 96
B22_166f:		sta $0606, x	; 9d 06 06
B22_1672:		rts				; 60 


B22_1673:		jsr $302c		; 20 2c 30
B22_1676:		sec				; 38 
B22_1677:		bpl B22_1691 ; 10 18

B22_1679:	.db $1c
B22_167a:	.db $14


entityPhaseFunc_48:
B22_167b:		dec $0606, x	; de 06 06
B22_167e:		beq B22_1686 ; f0 06

B22_1680:		jsr $8243		; 20 43 82
B22_1683:		jmp $975c		; 4c 5c 97


B22_1686:		lda $1a			; a5 1a
B22_1688:		and #$03		; 29 03
B22_168a:		tay				; a8 
B22_168b:		lda $9694, y	; b9 94 96
B22_168e:		sta $0606, x	; 9d 06 06
B22_1691:		jmp $819b		; 4c 9b 81


B22_1694:		jsr $1c18		; 20 18 1c
B22_1697:		plp				; 28 

entityPhaseFunc_49:
B22_1698:		dec $0606, x	; de 06 06
B22_169b:		bne B22_1672 ; d0 d5

B22_169d:		jsr func_16_01aa		; 20 aa 81
B22_16a0:		jsr func_1f_1ec8		; 20 c8 fe
B22_16a3:		inc $0633, x	; fe 33 06
B22_16a6:		lda $0633, x	; bd 33 06
B22_16a9:		cmp #$08		; c9 08
B22_16ab:		bcc B22_16c7 ; 90 1a

B22_16ad:		jsr func_16_0230		; 20 30 82
B22_16b0:		lda #$00		; a9 00
B22_16b2:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_16b5:		lda wEntityXFlipped.w, x	; bd a8 04
B22_16b8:		asl a			; 0a
B22_16b9:		tay				; a8 
B22_16ba:		lda $9750, y	; b9 50 97
B22_16bd:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_16c0:		lda $9751, y	; b9 51 97
B22_16c3:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_16c6:		rts				; 60 


B22_16c7:		dec wEntityPhase.w, x	; de c1 05
B22_16ca:		jsr $9779		; 20 79 97
B22_16cd:		jsr $80d5		; 20 d5 80
B22_16d0:		cmp #$20		; c9 20
B22_16d2:		bcc B22_1709 ; 90 35

B22_16d4:		lda $1f			; a5 1f
B22_16d6:		and #$03		; 29 03
B22_16d8:		asl a			; 0a
B22_16d9:		tay				; a8 
B22_16da:		lda $9738, y	; b9 38 97
B22_16dd:		sta $0520, x	; 9d 20 05
B22_16e0:		lda $9739, y	; b9 39 97
B22_16e3:		sta $0537, x	; 9d 37 05
B22_16e6:		tya				; 98 
B22_16e7:		lsr a			; 4a
B22_16e8:		tay				; a8 
B22_16e9:		lda $9748, y	; b9 48 97
B22_16ec:		sta $0606, x	; 9d 06 06
B22_16ef:		lda wEntityXFlipped.w, x	; bd a8 04
B22_16f2:		asl a			; 0a
B22_16f3:		tay				; a8 
B22_16f4:		lda $9754, y	; b9 54 97
B22_16f7:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_16fa:		lda $9755, y	; b9 55 97
B22_16fd:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1700:		lda $061d, x	; bd 1d 06
B22_1703:		beq B22_1708 ; f0 03

B22_1705:		jmp $805d		; 4c 5d 80


B22_1708:		rts				; 60 


B22_1709:		lda $1f			; a5 1f
B22_170b:		and #$03		; 29 03
B22_170d:		asl a			; 0a
B22_170e:		tay				; a8 
B22_170f:		lda $9740, y	; b9 40 97
B22_1712:		sta $0520, x	; 9d 20 05
B22_1715:		lda $9741, y	; b9 41 97
B22_1718:		sta $0537, x	; 9d 37 05
B22_171b:		tya				; 98 
B22_171c:		lsr a			; 4a
B22_171d:		tay				; a8 
B22_171e:		lda $974c, y	; b9 4c 97
B22_1721:		sta $0606, x	; 9d 06 06
B22_1724:		lda wEntityXFlipped.w, x	; bd a8 04
B22_1727:		asl a			; 0a
B22_1728:		tay				; a8 
B22_1729:		lda $9758, y	; b9 58 97
B22_172c:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_172f:		lda $9759, y	; b9 59 97
B22_1732:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1735:		jmp $9700		; 4c 00 97


B22_1738:		ora ($80, x)	; 01 80
B22_173a:		ora ($c0, x)	; 01 c0
B22_173c:	.db $02
B22_173d:		.db $00				; 00
B22_173e:	.db $02
B22_173f:		rti				; 40 


B22_1740:		ora ($00, x)	; 01 00
B22_1742:		.db $00				; 00
B22_1743:		ldy #$00		; a0 00
B22_1745:		cpy #$01		; c0 01
B22_1747:		jsr $7060		; 20 60 70
B22_174a:		cli				; 58 
B22_174b:		;removed
	.db $50 $30

B22_174d:		pha				; 48 
B22_174e:		sec				; 38 
B22_174f:	.db $2c $02 $00
B22_1752:	.db $fe $00 $00
B22_1755:		cpy #$ff		; c0 ff
B22_1757:		rti				; 40 


B22_1758:		.db $00				; 00
B22_1759:		rti				; 40 


B22_175a:	.db $ff
B22_175b:		cpy #$20		; c0 20
B22_175d:		jmp ($a997)		; 6c 97 a9


B22_1760:		php				; 08 
B22_1761:		ldy wEntityXFlipped.w, x	; bc a8 04
B22_1764:		bne B22_1769 ; d0 03

B22_1766:		jmp $806f		; 4c 6f 80


B22_1769:		jmp $808f		; 4c 8f 80


B22_176c:		lda #$08		; a9 08
B22_176e:		ldy $061d, x	; bc 1d 06
B22_1771:		beq B22_1776 ; f0 03

B22_1773:		jmp func_16_007f		; 4c 7f 80


B22_1776:		jmp $80a1		; 4c a1 80


B22_1779:		lda #$00		; a9 00
B22_177b:		ldy wEntityBaseY.w, x	; bc 1c 04
B22_177e:		cpy wEntityBaseY.w		; cc 1c 04
B22_1781:		bcc B22_1785 ; 90 02

B22_1783:		lda #$01		; a9 01
B22_1785:		sta $061d, x	; 9d 1d 06
B22_1788:		rts				; 60 


entityPhaseFunc_56:
B22_1789:		inc wEntityPhase.w, x	; fe c1 05
B22_178c:		ldy #$01		; a0 01
B22_178e:		lda ($02), y	; b1 02
B22_1790:		sta $10			; 85 10
B22_1792:		lda wEntityBaseX.w		; ad 38 04
B22_1795:		sta $04			; 85 04
B22_1797:		lda wEntityBaseY.w		; ad 1c 04
B22_179a:		sta $05			; 85 05
B22_179c:		jsr $ff30		; 20 30 ff
B22_179f:		lda $00			; a5 00
B22_17a1:		sta $00			; 85 00
B22_17a3:		tay				; a8 
B22_17a4:		lda $97e0, y	; b9 e0 97
B22_17a7:		ldy $10			; a4 10
B22_17a9:		clc				; 18 
B22_17aa:		adc $9800, y	; 79 00 98
B22_17ad:		asl a			; 0a
B22_17ae:		tay				; a8 
B22_17af:		lda $9803, y	; b9 03 98
B22_17b2:		sta $0520, x	; 9d 20 05
B22_17b5:		lda $9839, y	; b9 39 98
B22_17b8:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_17bb:		iny				; c8 
B22_17bc:		lda $9803, y	; b9 03 98
B22_17bf:		sta $0537, x	; 9d 37 05
B22_17c2:		lda $9839, y	; b9 39 98
B22_17c5:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_17c8:		lda $00			; a5 00
B22_17ca:		and #$10		; 29 10
B22_17cc:		beq B22_17d1 ; f0 03

B22_17ce:		jsr reverseEnemyDirection_todo		; 20 4b 80
B22_17d1:		clc				; 18 
B22_17d2:		lda $00			; a5 00
B22_17d4:		adc #$08		; 69 08
B22_17d6:		and #$10		; 29 10
B22_17d8:		beq B22_17dd ; f0 03

B22_17da:		jsr $805d		; 20 5d 80
B22_17dd:		ldx $6c			; a6 6c
B22_17df:		rts				; 60 


B22_17e0:		.db $00				; 00
B22_17e1:		ora ($02, x)	; 01 02
B22_17e3:	.db $03
B22_17e4:	.db $04
B22_17e5:		ora $06			; 05 06
B22_17e7:	.db $07
B22_17e8:		php				; 08 
B22_17e9:	.db $07
B22_17ea:		asl $05			; 06 05
B22_17ec:	.db $04
B22_17ed:	.db $03
B22_17ee:	.db $02
B22_17ef:		ora ($00, x)	; 01 00
B22_17f1:		ora ($02, x)	; 01 02
B22_17f3:	.db $03
B22_17f4:	.db $04
B22_17f5:		ora $06			; 05 06
B22_17f7:	.db $07
B22_17f8:		php				; 08 
B22_17f9:	.db $07
B22_17fa:		asl $05			; 06 05
B22_17fc:	.db $04
B22_17fd:	.db $03
B22_17fe:	.db $02
B22_17ff:		ora ($00, x)	; 01 00
B22_1801:	.db $12
B22_1802:		bit $ff			; 24 ff
B22_1804:		.db $00				; 00
B22_1805:	.db $ff
B22_1806:		asl $ff			; 06 ff
B22_1808:	.db $14
B22_1809:	.db $ff
B22_180a:		bit $4cff		; 2c ff 4c
B22_180d:	.db $ff
B22_180e:	.db $72
B22_180f:	.db $ff
B22_1810:	.db $9e
B22_1811:	.db $ff
B22_1812:	.db $cf
B22_1813:		.db $00				; 00
B22_1814:		.db $00				; 00
B22_1815:		inc $fe80, x	; fe 80 fe
B22_1818:		dey				; 88 
B22_1819:		inc $fe9e, x	; fe 9e fe
B22_181c:		cmp ($fe, x)	; c1 fe
B22_181e:		sbc ($ff), y	; f1 ff
B22_1820:	.db $2b
B22_1821:	.db $ff
B22_1822:	.db $6b
B22_1823:	.db $ff
B22_1824:		ldx $00, y		; b6 00
B22_1826:		.db $00				; 00
B22_1827:		inc $fe00, x	; fe 00 fe
B22_182a:	.db $0b
B22_182b:		inc $fe27, x	; fe 27 fe
B22_182e:	.db $57
B22_182f:		inc $fe97, x	; fe 97 fe
B22_1832:		cpx $fe			; e4 fe
B22_1834:	.db $3c
B22_1835:	.db $fe $9d $00
B22_1838:		.db $00				; 00
B22_1839:		.db $00				; 00
B22_183a:		.db $00				; 00
B22_183b:		.db $00				; 00
B22_183c:		and ($00), y	; 31 00
B22_183e:	.db $62
B22_183f:		.db $00				; 00
B22_1840:		stx $b400		; 8e 00 b4
B22_1843:		.db $00				; 00
B22_1844:	.db $d4
B22_1845:		.db $00				; 00
B22_1846:		cpx $fa00		; ec 00 fa
B22_1849:		ora ($00, x)	; 01 00
B22_184b:		.db $00				; 00
B22_184c:		.db $00				; 00
B22_184d:		.db $00				; 00
B22_184e:		lsr a			; 4a
B22_184f:		.db $00				; 00
B22_1850:	.db $93
B22_1851:		.db $00				; 00
B22_1852:		cmp $01, x		; d5 01
B22_1854:	.db $0f
B22_1855:		ora ($3f, x)	; 01 3f
B22_1857:		ora ($62, x)	; 01 62
B22_1859:		ora ($78, x)	; 01 78
B22_185b:		ora ($80, x)	; 01 80
B22_185d:		.db $00				; 00
B22_185e:		.db $00				; 00
B22_185f:		.db $00				; 00
B22_1860:	.db $63
B22_1861:		.db $00				; 00
B22_1862:		cpy $01			; c4 01
B22_1864:	.db $1c
B22_1865:		ora ($69, x)	; 01 69
B22_1867:		ora ($a9, x)	; 01 a9
B22_1869:		ora ($d9, x)	; 01 d9
B22_186b:		ora ($f5, x)	; 01 f5
B22_186d:	.db $02
B22_186e:		.db $00				; 00


entityPhaseFunc_57:
B22_186f:		jsr $8240		; 20 40 82
B22_1872:		clc				; 18 
B22_1873:		lda $07f6		; ad f6 07
B22_1876:		asl a			; 0a
B22_1877:		adc wEntityXFlipped.w, x	; 7d a8 04
B22_187a:		tay				; a8 
B22_187b:		lda $989f, y	; b9 9f 98
B22_187e:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_1881:		lda $98a3, y	; b9 a3 98
B22_1884:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1887:		ldy #$00		; a0 00
B22_1889:		lda wEntityBaseY.w, x	; bd 1c 04
B22_188c:		cmp wEntityBaseY.w		; cd 1c 04
B22_188f:		bcc B22_1892 ; 90 01

B22_1891:		iny				; c8 
B22_1892:		lda $98a7, y	; b9 a7 98
B22_1895:		sta $0520, x	; 9d 20 05
B22_1898:		lda $98a9, y	; b9 a9 98
B22_189b:		sta $0537, x	; 9d 37 05
B22_189e:		rts				; 60 


B22_189f:		.db $00				; 00
B22_18a0:	.db $ff
B22_18a1:		.db $00				; 00
B22_18a2:	.db $ff
B22_18a3:	.db $80
B22_18a4:	.db $80
B22_18a5:		cpy #$40		; c0 40
B22_18a7:		.db $00				; 00
B22_18a8:	.db $ff
B22_18a9:		rti				; 40 


B22_18aa:		.db $c0


entityPhaseFunc_5e:
	dec $0606, x
B22_18ae:		beq B22_18b7 ; f0 07

B22_18b0:		ldy #$03		; a0 03
B22_18b2:		jsr func_17_17a6		; 20 a6 b7
B22_18b5:		beq B22_18bd ; f0 06

B22_18b7:		jsr func_16_019e		; 20 9e 81
B22_18ba:		inc wEntityPhase.w, x	; fe c1 05
B22_18bd:		rts				; 60 


B22_18be:		lda #$17		; a9 17
B22_18c0:		sta wEntityPhase.w, x	; 9d c1 05
B22_18c3:		rts				; 60 


entityPhaseFunc_5b:
B22_18c4:		jsr $80d5		; 20 d5 80
B22_18c7:		cmp #$18		; c9 18
B22_18c9:		bcs B22_18d2 ; b0 07

B22_18cb:		jsr $80b3		; 20 b3 80
B22_18ce:		cmp #$30		; c9 30
B22_18d0:		bcc B22_18be ; 90 ec

B22_18d2:		lda wCurrRoomIdx			; a5 34
B22_18d4:		bne B22_18da ; d0 04

B22_18d6:		ldy #$00		; a0 00
B22_18d8:		beq B22_18df ; f0 05

B22_18da:		ldy #$01		; a0 01
B22_18dc:		lda ($02), y	; b1 02
B22_18de:		tay				; a8 
B22_18df:		lda $9921, y	; b9 21 99
B22_18e2:		sta $0520, x	; 9d 20 05
B22_18e5:		lda $9923, y	; b9 23 99
B22_18e8:		sta $0537, x	; 9d 37 05
B22_18eb:		lda $9925, y	; b9 25 99
B22_18ee:		sta $0606, x	; 9d 06 06
B22_18f1:		lda $9927, y	; b9 27 99
B22_18f4:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_18f7:		lda $9929, y	; b9 29 99
B22_18fa:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_18fd:		dec $061d, x	; de 1d 06
B22_1900:		bne B22_1907 ; d0 05

B22_1902:		lda #$29		; a9 29
B22_1904:		sta wEntityPhase.w, x	; 9d c1 05
B22_1907:		ldy #$08		; a0 08
B22_1909:		jsr func_17_17a6		; 20 a6 b7
B22_190c:		cmp #$01		; c9 01
B22_190e:		beq B22_1913 ; f0 03

B22_1910:		inc wEntityPhase.w, x	; fe c1 05
B22_1913:		inc wEntityPhase.w, x	; fe c1 05
B22_1916:		jsr func_16_01aa		; 20 aa 81
B22_1919:		lda wEntityXFlipped.w, x	; bd a8 04
B22_191c:		beq B22_18bd ; f0 9f

B22_191e:		jmp reverseEnemyDirection_todo		; 4c 4b 80


B22_1921:	.db $fd $fc $00
B22_1924:		.db $00				; 00
B22_1925:		plp				; 28 
B22_1926:	.db $20 $01 $00
B22_1929:		jsr $20c0		; 20 c0 20
B22_192c:		stx $3899		; 8e 99 38
B22_192f:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1932:		sbc #$18		; e9 18
B22_1934:		sta $01			; 85 01
B22_1936:		jsr $80e3		; 20 e3 80
B22_1939:		bne B22_1968 ; d0 2d

B22_193b:		jsr $996b		; 20 6b 99
B22_193e:		lda #$2a		; a9 2a
B22_1940:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_1943:		jmp $9936		; 4c 36 99


entityPhaseFunc_68:
B22_1946:		inc wEntityPhase.w, x	; fe c1 05
B22_1949:		jsr $998e		; 20 8e 99
B22_194c:		ldy #$01		; a0 01
B22_194e:		sec				; 38 
B22_194f:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1952:		sbc ($02), y	; f1 02
B22_1954:		sta $01			; 85 01
B22_1956:		jsr $80e3		; 20 e3 80
B22_1959:		bne B22_1968 ; d0 0d

B22_195b:		jsr $996b		; 20 6b 99
B22_195e:		ldy #$02		; a0 02
B22_1960:		lda ($02), y	; b1 02
B22_1962:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_1965:		jmp $9956		; 4c 56 99


B22_1968:		ldx $6c			; a6 6c
B22_196a:		rts				; 60 


B22_196b:		lda $00			; a5 00
B22_196d:		sta wEntityBaseX.w, x	; 9d 38 04
B22_1970:		lda $01			; a5 01
B22_1972:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1975:		lda #$68		; a9 68
B22_1977:		sta $054e, x	; 9d 4e 05
B22_197a:		lda $0e			; a5 0e
B22_197c:		sta $0470, x	; 9d 70 04
B22_197f:		lda #$00		; a9 00
B22_1981:		sta wEntityPhase.w, x	; 9d c1 05
B22_1984:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_1987:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_198a:		sta $0657, x	; 9d 57 06
B22_198d:		rts				; 60 


B22_198e:		lda wEntityBaseX.w, x	; bd 38 04
B22_1991:		sta $00			; 85 00
B22_1993:		lda $0470, x	; bd 70 04
B22_1996:		and #$fb		; 29 fb
B22_1998:		ora #$60		; 09 60
B22_199a:		sta $0e			; 85 0e
B22_199c:		rts				; 60 


entityPhaseFunc_6b:
B22_199d:		ldx $6c			; a6 6c
B22_199f:		ldy #$06		; a0 06
B22_19a1:		jsr func_17_17a6		; 20 a6 b7
B22_19a4:		bne B22_19b4 ; d0 0e

B22_19a6:		ldx $6c			; a6 6c
B22_19a8:		jsr func_1f_1ec8		; 20 c8 fe
B22_19ab:		lda #$01		; a9 01
B22_19ad:		sta $0520, x	; 9d 20 05
B22_19b0:		inc wEntityPhase.w, x	; fe c1 05
B22_19b3:		rts				; 60 


B22_19b4:		jsr func_16_0b91		; 20 91 8b
B22_19b7:		ldx $6c			; a6 6c
B22_19b9:		ldy #$08		; a0 08
B22_19bb:		jsr func_17_17a6		; 20 a6 b7
B22_19be:		beq B22_19ee ; f0 2e

B22_19c0:		ldx $6c			; a6 6c
B22_19c2:		ldy #$0c		; a0 0c
B22_19c4:		jsr func_17_17a6		; 20 a6 b7
B22_19c7:		bne B22_19ee ; d0 25

B22_19c9:		lda wEntityAI_idx.w, x	; bd ef 05
B22_19cc:		cmp #$71		; c9 71
B22_19ce:		bne B22_19d5 ; d0 05

B22_19d0:		jsr $9a0e		; 20 0e 9a
B22_19d3:		bne B22_1a09 ; d0 34

B22_19d5:		ldx $6c			; a6 6c
B22_19d7:		dec $0606, x	; de 06 06
B22_19da:		beq B22_19ee ; f0 12

B22_19dc:		ldy wEntityBaseX.w, x	; bc 38 04
B22_19df:		lda wEntityXFlipped.w, x	; bd a8 04
B22_19e2:		bne B22_19e9 ; d0 05

B22_19e4:		cpy #$f4		; c0 f4
B22_19e6:		bcs B22_19ee ; b0 06

B22_19e8:		rts				; 60 


B22_19e9:		cpy #$0c		; c0 0c
B22_19eb:		bcc B22_19ee ; 90 01

B22_19ed:		rts				; 60 


B22_19ee:		ldx $6c			; a6 6c
B22_19f0:		lda wEntityXFlipped.w, x	; bd a8 04
B22_19f3:		eor #$01		; 49 01
B22_19f5:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_19f8:		jsr reverseEnemyDirection_todo		; 20 4b 80
B22_19fb:		lda $1a			; a5 1a
B22_19fd:		adc wEntityBaseX.w		; 6d 38 04
B22_1a00:		and #$03		; 29 03
B22_1a02:		tay				; a8 
B22_1a03:		lda $9a0a, y	; b9 0a 9a
B22_1a06:		sta $0606, x	; 9d 06 06
B22_1a09:		rts				; 60 


B22_1a0a:		lda #$d1		; a9 d1
B22_1a0c:	.db $97
B22_1a0d:	.db $c3
B22_1a0e:		jsr $80d5		; 20 d5 80
B22_1a11:		cmp #$08		; c9 08
B22_1a13:		bcs B22_1a36 ; b0 21

B22_1a15:		jsr $80b3		; 20 b3 80
B22_1a18:		cmp #$20		; c9 20
B22_1a1a:		bcs B22_1a36 ; b0 1a

B22_1a1c:		lda #$00		; a9 00
B22_1a1e:		ldy wEntityBaseX.w, x	; bc 38 04
B22_1a21:		cpy wEntityBaseX.w		; cc 38 04
B22_1a24:		bcc B22_1a28 ; 90 02

B22_1a26:		lda #$01		; a9 01
B22_1a28:		cmp wEntityXFlipped.w, x	; dd a8 04
B22_1a2b:		bne B22_1a36 ; d0 09

B22_1a2d:		jsr func_1f_1ec8		; 20 c8 fe
B22_1a30:		lda #$05		; a9 05
B22_1a32:		sta wEntityPhase.w, x	; 9d c1 05
B22_1a35:		rts				; 60 


B22_1a36:		lda #$00		; a9 00
B22_1a38:		rts				; 60 


entityPhaseFunc_79:
B22_1a39:		jsr $9dc5		; 20 c5 9d
B22_1a3c:		ldx $6c			; a6 6c
B22_1a3e:		rts				; 60 


entityPhaseFunc_77:
B22_1a3f:		lda $0470, x	; bd 70 04
B22_1a42:		and #$01		; 29 01
B22_1a44:		bne B22_1a6f ; d0 29

B22_1a46:		lda $0633, x	; bd 33 06
B22_1a49:		sta $07ed		; 8d ed 07
B22_1a4c:		lda #$02		; a9 02
B22_1a4e:		sta $061d, x	; 9d 1d 06
B22_1a51:		jsr $81a7		; 20 a7 81
B22_1a54:		jsr func_1f_1ec8		; 20 c8 fe
B22_1a57:		lda #$30		; a9 30
B22_1a59:		sta $07ee		; 8d ee 07
B22_1a5c:		lda #$00		; a9 00
B22_1a5e:		sta $07ef		; 8d ef 07
B22_1a61:		ldy $07ed		; ac ed 07
B22_1a64:		lda $9a70, y	; b9 70 9a
B22_1a67:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_1a6a:		lda #$09		; a9 09
B22_1a6c:		sta $0606, x	; 9d 06 06
B22_1a6f:		rts				; 60 


B22_1a70:		ora ($ff, x)	; 01 ff
B22_1a72:		sed				; f8 
B22_1a73:		php				; 08 
B22_1a74:		.db $00				; 00
B22_1a75:		ora ($08, x)	; 01 08
B22_1a77:		clc				; 18 


entityPhaseFunc_76:
B22_1a78:		dec $0606, x	; de 06 06
B22_1a7b:		bne B22_1a6f ; d0 f2

B22_1a7d:		lda $061d, x	; bd 1d 06
B22_1a80:		cmp #$08		; c9 08
B22_1a82:		beq B22_1b02 ; f0 7e

B22_1a84:		ldy $07ed		; ac ed 07
B22_1a87:		lda $9a74, y	; b9 74 9a
B22_1a8a:		sta $00			; 85 00
B22_1a8c:		lda $9b72, y	; b9 72 9b
B22_1a8f:		sta $09			; 85 09
B22_1a91:		clc				; 18 
B22_1a92:		lda wEntityBaseX.w, x	; bd 38 04
B22_1a95:		adc $9a72, y	; 79 72 9a
B22_1a98:		ldy $061d, x	; bc 1d 06
B22_1a9b:		sta wEntityBaseX.w, y	; 99 38 04
B22_1a9e:		lda $0470, x	; bd 70 04
B22_1aa1:		and #$be		; 29 be
B22_1aa3:		sta $08			; 85 08
B22_1aa5:		lda $0470, x	; bd 70 04
B22_1aa8:		and #$01		; 29 01
B22_1aaa:		adc $09			; 65 09
B22_1aac:		and #$01		; 29 01
B22_1aae:		ora $08			; 05 08
B22_1ab0:		sta $0470, y	; 99 70 04
B22_1ab3:		lda $00			; a5 00
B22_1ab5:		sta wEntityXFlipped.w, y	; 99 a8 04
B22_1ab8:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1abb:		sta wEntityBaseY.w, y	; 99 1c 04
B22_1abe:		lda #$12		; a9 12
B22_1ac0:		sta wEntityOamSpecGroupDoubled.w, y	; 99 8c 04
B22_1ac3:		lda #$2d		; a9 2d
B22_1ac5:		sta wEntityAI_idx.w, y	; 99 ef 05
B22_1ac8:		lda #$59		; a9 59
B22_1aca:		sta $054e, y	; 99 4e 05
B22_1acd:		lda #$00		; a9 00
B22_1acf:		sta wEntityPaletteOverride.w, y	; 99 54 04
B22_1ad2:		sta wEntityHorizSpeed.w, y	; 99 f2 04
B22_1ad5:		sta wEntityHorizSubSpeed.w, y	; 99 09 05
B22_1ad8:		sta $0520, y	; 99 20 05
B22_1adb:		sta $0537, y	; 99 37 05
B22_1ade:		sta wEntityPhase.w, y	; 99 c1 05
B22_1ae1:		lda #$20		; a9 20
B22_1ae3:		sta $067b, y	; 99 7b 06
B22_1ae6:		lda #$20		; a9 20
B22_1ae8:		sta $0657, y	; 99 57 06
B22_1aeb:		sty $11			; 84 11
B22_1aed:		lda #$42		; a9 42
B22_1aef:		ldy $48			; a4 48
B22_1af1:		cpy #$14		; c0 14
B22_1af3:		bne B22_1af7 ; d0 02

B22_1af5:		lda #$50		; a9 50
B22_1af7:		ldy $11			; a4 11
B22_1af9:		sta wOamSpecIdx.w, y	; 99 00 04
B22_1afc:		inc $061d, x	; fe 1d 06
B22_1aff:		jmp $9a6a		; 4c 6a 9a


B22_1b02:		inc wEntityPhase.w, x	; fe c1 05
B22_1b05:		jsr func_1f_1ec8		; 20 c8 fe
B22_1b08:		lda #$00		; a9 00
B22_1b0a:		sta $07ec		; 8d ec 07
B22_1b0d:		jsr func_16_019e		; 20 9e 81
B22_1b10:		ldy $07ed		; ac ed 07
B22_1b13:		lda $9a76, y	; b9 76 9a
B22_1b16:		sta $07			; 85 07
B22_1b18:		ldx #$01		; a2 01
B22_1b1a:		lda $07			; a5 07
B22_1b1c:		sta $0606, x	; 9d 06 06
B22_1b1f:		sta $061d, x	; 9d 1d 06
B22_1b22:		jsr $9b3c		; 20 3c 9b
B22_1b25:		jsr $9b4e		; 20 4e 9b
B22_1b28:		inx				; e8 
B22_1b29:		cpx #$09		; e0 09
B22_1b2b:		bcc B22_1b1a ; 90 ed

B22_1b2d:		ldx #$01		; a2 01
B22_1b2f:		lda #$02		; a9 02
B22_1b31:		sta wEntityPhase.w, x	; 9d c1 05
B22_1b34:		inx				; e8 
B22_1b35:		cpx #$08		; e0 08
B22_1b37:		bcc B22_1b2f ; 90 f6

B22_1b39:		ldx $6c			; a6 6c
B22_1b3b:		rts				; 60 


B22_1b3c:		txa				; 8a 
B22_1b3d:		tay				; a8 
B22_1b3e:		lda $0633, x	; bd 33 06
B22_1b41:		and #$f0		; 29 f0
B22_1b43:		sta $01			; 85 01
B22_1b45:		lda $9b60, y	; b9 60 9b
B22_1b48:		ora $01			; 05 01
B22_1b4a:		sta $0633, x	; 9d 33 06
B22_1b4d:		rts				; 60 


B22_1b4e:		txa				; 8a 
B22_1b4f:		tay				; a8 
B22_1b50:		lda $0633, x	; bd 33 06
B22_1b53:		and #$0f		; 29 0f
B22_1b55:		sta $01			; 85 01
B22_1b57:		lda $9b69, y	; b9 69 9b
B22_1b5a:		ora $01			; 05 01
B22_1b5c:		sta $0633, x	; 9d 33 06
B22_1b5f:		rts				; 60 


B22_1b60:	.db $02
B22_1b61:	.db $02
B22_1b62:	.db $02
B22_1b63:	.db $02
B22_1b64:	.db $02
B22_1b65:	.db $02
B22_1b66:	.db $02
B22_1b67:	.db $02
B22_1b68:	.db $02
B22_1b69:	.db $80
B22_1b6a:	.db $80
B22_1b6b:	.db $80
B22_1b6c:	.db $80
B22_1b6d:	.db $80
B22_1b6e:	.db $80
B22_1b6f:	.db $80
B22_1b70:	.db $80
B22_1b71:	.db $80
B22_1b72:	.db $ff
B22_1b73:		.db $00				; 00


entityPhaseFunc_78:
B22_1b74:		jsr $9b83		; 20 83 9b
B22_1b77:		jsr $9bf8		; 20 f8 9b
B22_1b7a:		jsr $9de9		; 20 e9 9d
B22_1b7d:		jsr $9dc5		; 20 c5 9d
B22_1b80:		ldx $6c			; a6 6c
B22_1b82:		rts				; 60 


B22_1b83:		ldx #$01		; a2 01
B22_1b85:		lda $0633, x	; bd 33 06
B22_1b88:		and #$0f		; 29 0f
B22_1b8a:		tay				; a8 
B22_1b8b:		dey				; 88 
B22_1b8c:		bne B22_1b97 ; d0 09

B22_1b8e:		jsr $9b3c		; 20 3c 9b
B22_1b91:		jsr $9bd3		; 20 d3 9b
B22_1b94:		jmp $9ba3		; 4c a3 9b


B22_1b97:		sty $01			; 84 01
B22_1b99:		lda $0633, x	; bd 33 06
B22_1b9c:		and #$f0		; 29 f0
B22_1b9e:		ora $01			; 05 01
B22_1ba0:		sta $0633, x	; 9d 33 06
B22_1ba3:		lda $0633, x	; bd 33 06
B22_1ba6:		lsr a			; 4a
B22_1ba7:		lsr a			; 4a
B22_1ba8:		lsr a			; 4a
B22_1ba9:		lsr a			; 4a
B22_1baa:		tay				; a8 
B22_1bab:		dey				; 88 
B22_1bac:		bne B22_1bb7 ; d0 09

B22_1bae:		jsr $9b4e		; 20 4e 9b
B22_1bb1:		jsr $9d10		; 20 10 9d
B22_1bb4:		jmp $9bcb		; 4c cb 9b


B22_1bb7:		sty $01			; 84 01
B22_1bb9:		asl $01			; 06 01
B22_1bbb:		asl $01			; 06 01
B22_1bbd:		asl $01			; 06 01
B22_1bbf:		asl $01			; 06 01
B22_1bc1:		lda $0633, x	; bd 33 06
B22_1bc4:		and #$0f		; 29 0f
B22_1bc6:		ora $01			; 05 01
B22_1bc8:		sta $0633, x	; 9d 33 06
B22_1bcb:		inx				; e8 
B22_1bcc:		cpx #$09		; e0 09
B22_1bce:		bcc B22_1b85 ; 90 b5

B22_1bd0:		ldx $6c			; a6 6c
B22_1bd2:		rts				; 60 


B22_1bd3:		lda $061d, x	; bd 1d 06
B22_1bd6:		sec				; 38 
B22_1bd7:		sbc $0606, x	; fd 06 06
B22_1bda:		beq B22_1bf7 ; f0 1b

B22_1bdc:		and #$10		; 29 10
B22_1bde:		bne B22_1bec ; d0 0c

B22_1be0:		clc				; 18 
B22_1be1:		lda $0606, x	; bd 06 06
B22_1be4:		adc #$01		; 69 01
B22_1be6:		and #$1f		; 29 1f
B22_1be8:		sta $0606, x	; 9d 06 06
B22_1beb:		rts				; 60 


B22_1bec:		sec				; 38 
B22_1bed:		lda $0606, x	; bd 06 06
B22_1bf0:		sbc #$01		; e9 01
B22_1bf2:		and #$1f		; 29 1f
B22_1bf4:		sta $0606, x	; 9d 06 06
B22_1bf7:		rts				; 60 


B22_1bf8:		lda #$01		; a9 01
B22_1bfa:		sta $10			; 85 10
B22_1bfc:		ldx $10			; a6 10
B22_1bfe:		cpx #$07		; e0 07
B22_1c00:		beq B22_1c23 ; f0 21

B22_1c02:		lda wEntityBaseX.w, x	; bd 38 04
B22_1c05:		sta $04			; 85 04
B22_1c07:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1c0a:		sta $05			; 85 05
B22_1c0c:		ldy $0606, x	; bc 06 06
B22_1c0f:		jsr $9d7f		; 20 7f 9d
B22_1c12:		clc				; 18 
B22_1c13:		lda $9c67, y	; b9 67 9c
B22_1c16:		adc $05			; 65 05
B22_1c18:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1c1b:		jsr $9c89		; 20 89 9c
B22_1c1e:		inc $10			; e6 10
B22_1c20:		jmp $9bfc		; 4c fc 9b


B22_1c23:		lda wEntityBaseX.w, x	; bd 38 04
B22_1c26:		sta $04			; 85 04
B22_1c28:		lda wEntityBaseY.w, x	; bd 1c 04
B22_1c2b:		sta $05			; 85 05
B22_1c2d:		lda $0470, x	; bd 70 04
B22_1c30:		and #$fe		; 29 fe
B22_1c32:		sta $00			; 85 00
B22_1c34:		inx				; e8 
B22_1c35:		clc				; 18 
B22_1c36:		ldy $07ed		; ac ed 07
B22_1c39:		lda $9c87, y	; b9 87 9c
B22_1c3c:		jsr $9d8b		; 20 8b 9d
B22_1c3f:		lda $05			; a5 05
B22_1c41:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1c44:		ldx $6c			; a6 6c
B22_1c46:		rts				; 60 


B22_1c47:		.db $00				; 00
B22_1c48:	.db $02
B22_1c49:	.db $03
B22_1c4a:		ora $06			; 05 06
B22_1c4c:	.db $07
B22_1c4d:		php				; 08 
B22_1c4e:		ora #$09		; 09 09
B22_1c50:		ora #$08		; 09 08
B22_1c52:	.db $07
B22_1c53:		asl $05			; 06 05
B22_1c55:	.db $03
B22_1c56:	.db $02
B22_1c57:		.db $00				; 00
B22_1c58:		inc $fbfd, x	; fe fd fb
B22_1c5b:	.db $fa
B22_1c5c:		sbc $f7f8, y	; f9 f8 f7
B22_1c5f:	.db $f7
B22_1c60:	.db $f7
B22_1c61:		sed				; f8 
B22_1c62:		sbc $fbfa, y	; f9 fa fb
B22_1c65:		sbc $f7fe, x	; fd fe f7
B22_1c68:	.db $f7
B22_1c69:		sed				; f8 
B22_1c6a:		sbc $fbfa, y	; f9 fa fb
B22_1c6d:	.db $fd $fe $00
B22_1c70:	.db $02
B22_1c71:	.db $03
B22_1c72:		ora $06			; 05 06
B22_1c74:	.db $07
B22_1c75:		php				; 08 
B22_1c76:		ora #$09		; 09 09
B22_1c78:		ora #$08		; 09 08
B22_1c7a:	.db $07
B22_1c7b:		asl $05			; 06 05
B22_1c7d:	.db $03
B22_1c7e:	.db $02
B22_1c7f:		.db $00				; 00
B22_1c80:		inc $fbfd, x	; fe fd fb
B22_1c83:	.db $fa
B22_1c84:		sbc $f7f7, y	; f9 f7 f7
B22_1c87:	.db $0f
B22_1c88:		sbc ($bc), y	; f1 bc
B22_1c8a:		asl $06			; 06 06
B22_1c8c:		lda $9cc8, y	; b9 c8 9c
B22_1c8f:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_1c92:		lda $9ca8, y	; b9 a8 9c
B22_1c95:		sta $0b			; 85 0b
B22_1c97:		lda #$00		; a9 00
B22_1c99:		ldy $48			; a4 48
B22_1c9b:		cpy #$14		; c0 14
B22_1c9d:		bne B22_1ca1 ; d0 02

B22_1c9f:		lda #$0e		; a9 0e
B22_1ca1:		clc				; 18 
B22_1ca2:		adc $0b			; 65 0b
B22_1ca4:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_1ca7:		rts				; 60 


B22_1ca8:		rol $403e, x	; 3e 3e 40
B22_1cab:		rti				; 40 


B22_1cac:		rti				; 40 


B22_1cad:		rti				; 40 


B22_1cae:		rti				; 40 


B22_1caf:	.db $42
B22_1cb0:	.db $42
B22_1cb1:	.db $42
B22_1cb2:	.db $42
B22_1cb3:	.db $44
B22_1cb4:	.db $44
B22_1cb5:	.db $44
B22_1cb6:	.db $44
B22_1cb7:		lsr $46			; 46 46
B22_1cb9:		lsr $44			; 46 44
B22_1cbb:	.db $44
B22_1cbc:	.db $44
B22_1cbd:	.db $44
B22_1cbe:	.db $44
B22_1cbf:	.db $42
B22_1cc0:	.db $42
B22_1cc1:	.db $42
B22_1cc2:	.db $42
B22_1cc3:		lsr $46			; 46 46
B22_1cc5:		lsr $46			; 46 46
B22_1cc7:	.db $44
B22_1cc8:		ora ($00, x)	; 01 00
B22_1cca:		.db $00				; 00
B22_1ccb:		.db $00				; 00
B22_1ccc:		.db $00				; 00
B22_1ccd:		.db $00				; 00
B22_1cce:		.db $00				; 00
B22_1ccf:		.db $00				; 00
B22_1cd0:		.db $00				; 00
B22_1cd1:		.db $00				; 00
B22_1cd2:		.db $00				; 00
B22_1cd3:		.db $00				; 00
B22_1cd4:		.db $00				; 00
B22_1cd5:		.db $00				; 00
B22_1cd6:		.db $00				; 00
B22_1cd7:		.db $00				; 00
B22_1cd8:		.db $00				; 00
B22_1cd9:		ora ($01, x)	; 01 01
B22_1cdb:		ora ($01, x)	; 01 01
B22_1cdd:		ora ($01, x)	; 01 01
B22_1cdf:		ora ($01, x)	; 01 01
B22_1ce1:		ora ($01, x)	; 01 01
B22_1ce3:		ora ($01, x)	; 01 01
B22_1ce5:		ora ($01, x)	; 01 01
B22_1ce7:		.db $01


entityPhaseFunc_7a:
	ldx #$01
B22_1cea:		lda $1a
B22_1cec:		and #$01		; 29 01
B22_1cee:		tay				; a8 
B22_1cef:		lda $9d0c, y	; b9 0c 9d
B22_1cf2:		sta $054e, x	; 9d 4e 05
B22_1cf5:		lda $9d0e, y	; b9 0e 9d
B22_1cf8:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_1cfb:		lda #$00		; a9 00
B22_1cfd:		sta wEntityPhase.w, x	; 9d c1 05
B22_1d00:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_1d03:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B22_1d06:		inx				; e8 
B22_1d07:		cpx #$09		; e0 09
B22_1d09:		bcc B22_1cef ; 90 e4

B22_1d0b:		rts				; 60 


B22_1d0c:		ldx $4ea3		; ae a3 4e
B22_1d0f:	.db $43
B22_1d10:		cpx #$08		; e0 08
B22_1d12:		beq B22_1d1e ; f0 0a

B22_1d14:		txa				; 8a 
B22_1d15:		tay				; a8 
B22_1d16:		iny				; c8 
B22_1d17:		lda $0606, y	; b9 06 06
B22_1d1a:		sta $061d, x	; 9d 1d 06
B22_1d1d:		rts				; 60 


B22_1d1e:		clc				; 18 
B22_1d1f:		ldy $07ed		; ac ed 07
B22_1d22:		lda $9d7d, y	; b9 7d 9d
B22_1d25:		adc $07ec		; 6d ec 07
B22_1d28:		tay				; a8 
B22_1d29:		lda $9d3f, y	; b9 3f 9d
B22_1d2c:		cmp #$ff		; c9 ff
B22_1d2e:		beq B22_1d37 ; f0 07

B22_1d30:		sta $061d, x	; 9d 1d 06
B22_1d33:		inc $07ec		; ee ec 07
B22_1d36:		rts				; 60 


B22_1d37:		lda #$00		; a9 00
B22_1d39:		sta $07ec		; 8d ec 07
B22_1d3c:		jmp $9d1e		; 4c 1e 9d


B22_1d3f:		php				; 08 
B22_1d40:		asl $0a0e		; 0e 0e 0a
B22_1d43:		asl a			; 0a
B22_1d44:		php				; 08 
B22_1d45:		php				; 08 
B22_1d46:		php				; 08 
B22_1d47:		php				; 08 
B22_1d48:		asl $04			; 06 04
B22_1d4a:	.db $04
B22_1d4b:		php				; 08 
B22_1d4c:	.db $0c
B22_1d4d:	.db $0c
B22_1d4e:		asl $0a0a		; 0e 0a 0a
B22_1d51:		php				; 08 
B22_1d52:		php				; 08 
B22_1d53:		asl $0e0e		; 0e 0e 0e
B22_1d56:		asl $0a0c		; 0e 0c 0a
B22_1d59:		php				; 08 
B22_1d5a:		php				; 08 
B22_1d5b:		php				; 08 
B22_1d5c:	.db $04
B22_1d5d:	.db $ff
B22_1d5e:		clc				; 18 
B22_1d5f:	.db $12
B22_1d60:	.db $12
B22_1d61:		asl $16, x		; 16 16
B22_1d63:		clc				; 18 
B22_1d64:		clc				; 18 
B22_1d65:		clc				; 18 
B22_1d66:		clc				; 18 
B22_1d67:	.db $1a
B22_1d68:	.db $14
B22_1d69:	.db $14
B22_1d6a:		clc				; 18 
B22_1d6b:	.db $14
B22_1d6c:	.db $14
B22_1d6d:	.db $12
B22_1d6e:		asl $16, x		; 16 16
B22_1d70:		clc				; 18 
B22_1d71:		clc				; 18 
B22_1d72:	.db $12
B22_1d73:	.db $12
B22_1d74:	.db $12
B22_1d75:	.db $12
B22_1d76:	.db $14
B22_1d77:		asl $18, x		; 16 18
B22_1d79:		clc				; 18 
B22_1d7a:		clc				; 18 
B22_1d7b:	.db $14
B22_1d7c:	.db $ff
B22_1d7d:		.db $00				; 00
B22_1d7e:	.db $1f
B22_1d7f:		lda $0470, x	; bd 70 04
B22_1d82:		and #$3e		; 29 3e
B22_1d84:		sta $00			; 85 00
B22_1d86:		inx				; e8 
B22_1d87:		clc				; 18 
B22_1d88:		lda $9c47, y	; b9 47 9c
B22_1d8b:		bpl B22_1d96 ; 10 09

B22_1d8d:		adc $04			; 65 04
B22_1d8f:		sta wEntityBaseX.w, x	; 9d 38 04
B22_1d92:		lda #$ff		; a9 ff
B22_1d94:		bne B22_1d9d ; d0 07

B22_1d96:		adc $04			; 65 04
B22_1d98:		sta wEntityBaseX.w, x	; 9d 38 04
B22_1d9b:		lda #$00		; a9 00
B22_1d9d:		sta $01			; 85 01
B22_1d9f:		dex				; ca 
B22_1da0:		lda $0470, x	; bd 70 04
B22_1da3:		and #$01		; 29 01
B22_1da5:		adc $01			; 65 01
B22_1da7:		and #$01		; 29 01
B22_1da9:		ora $00			; 05 00
B22_1dab:		inx				; e8 
B22_1dac:		sta $0470, x	; 9d 70 04
B22_1daf:		and #$01		; 29 01
B22_1db1:		bne B22_1dbc ; d0 09

B22_1db3:		lda $0470, x	; bd 70 04
B22_1db6:		and #$7f		; 29 7f
B22_1db8:		sta $0470, x	; 9d 70 04
B22_1dbb:		rts				; 60 


B22_1dbc:		lda $0470, x	; bd 70 04
B22_1dbf:		ora #$80		; 09 80
B22_1dc1:		sta $0470, x	; 9d 70 04
B22_1dc4:		rts				; 60 


B22_1dc5:		ldx #$01		; a2 01
B22_1dc7:		lda $054e, x	; bd 4e 05
B22_1dca:		beq B22_1dd2 ; f0 06

B22_1dcc:		inx				; e8 
B22_1dcd:		cpx #$09		; e0 09
B22_1dcf:		bcc B22_1dc7 ; 90 f6

B22_1dd1:		rts				; 60 


B22_1dd2:		ldx #$01		; a2 01
B22_1dd4:		jsr $84b2		; 20 b2 84
B22_1dd7:		sta $0470, x	; 9d 70 04
B22_1dda:		inx				; e8 
B22_1ddb:		cpx #$09		; e0 09
B22_1ddd:		bcc B22_1dd4 ; 90 f5

B22_1ddf:		lda $064d		; ad 4d 06
B22_1de2:		tax				; aa 
B22_1de3:		lda #$02		; a9 02
B22_1de5:		sta $07c8, x	; 9d c8 07
B22_1de8:		rts				; 60 


B22_1de9:		lda $07ee		; ad ee 07
B22_1dec:		beq B22_1df2 ; f0 04

B22_1dee:		dec $07ee		; ce ee 07
B22_1df1:		rts				; 60 


B22_1df2:		lda $0478		; ad 78 04
B22_1df5:		and #$81		; 29 81
B22_1df7:		bne B22_1e61 ; d0 68

B22_1df9:		lda $07ef		; ad ef 07
B22_1dfc:		bne B22_1e0c ; d0 0e

B22_1dfe:		ldy #$02		; a0 02
B22_1e00:		jsr $9e7b		; 20 7b 9e
B22_1e03:		lda #$10		; a9 10
B22_1e05:		sta $07ee		; 8d ee 07
B22_1e08:		inc $07ef		; ee ef 07
B22_1e0b:		rts				; 60 


B22_1e0c:		jsr $80e3		; 20 e3 80
B22_1e0f:		bne B22_1e61 ; d0 50

B22_1e11:		jsr func_1f_1ed7		; 20 d7 fe
B22_1e14:		lda #$58		; a9 58
B22_1e16:		sta wEntityAI_idx.w, x	; 9d ef 05
B22_1e19:		lda #$40		; a9 40
B22_1e1b:		sta $054e, x	; 9d 4e 05
B22_1e1e:		lda $04b0		; ad b0 04
B22_1e21:		eor #$01		; 49 01
B22_1e23:		sta wEntityXFlipped.w, x	; 9d a8 04
B22_1e26:		jsr $9fc9		; 20 c9 9f
B22_1e29:		clc				; 18 
B22_1e2a:		lda $0424		; ad 24 04
B22_1e2d:		adc #$04		; 69 04
B22_1e2f:		sta wEntityBaseY.w, x	; 9d 1c 04
B22_1e32:		lda $0478		; ad 78 04
B22_1e35:		and #$ba		; 29 ba
B22_1e37:		ora #$60		; 09 60
B22_1e39:		sta $09			; 85 09
B22_1e3b:		clc				; 18 
B22_1e3c:		ldy $07ed		; ac ed 07
B22_1e3f:		lda $9e73, y	; b9 73 9e
B22_1e42:		adc $0440		; 6d 40 04
B22_1e45:		sta wEntityBaseX.w, x	; 9d 38 04
B22_1e48:		lda $0478		; ad 78 04
B22_1e4b:		and #$01		; 29 01
B22_1e4d:		adc $9e79, y	; 79 79 9e
B22_1e50:		and #$01		; 29 01
B22_1e52:		ora $09			; 05 09
B22_1e54:		sta $0470, x	; 9d 70 04
B22_1e57:		lda #$01		; a9 01
B22_1e59:		sta $10			; 85 10
B22_1e5b:		lda $9e75, y	; b9 75 9e
B22_1e5e:		jsr $97a1		; 20 a1 97
B22_1e61:		ldy #$00		; a0 00
B22_1e63:		jsr $9e7b		; 20 7b 9e
B22_1e66:		lda #$00		; a9 00
B22_1e68:		sta $07ef		; 8d ef 07
B22_1e6b:		lda #$80		; a9 80
B22_1e6d:		sta $07ee		; 8d ee 07
B22_1e70:		ldx $6c			; a6 6c
B22_1e72:		rts				; 60 


B22_1e73:		php				; 08 
B22_1e74:		sed				; f8 
B22_1e75:		php				; 08 
B22_1e76:		clc				; 18 
B22_1e77:	.db $3c
B22_1e78:		lsr a			; 4a
B22_1e79:		.db $00				; 00
B22_1e7a:	.db $ff
B22_1e7b:		lda $49			; a5 49
B22_1e7d:		cmp #$11		; c9 11
B22_1e7f:		beq B22_1e82 ; f0 01

B22_1e81:		iny				; c8 
B22_1e82:		lda $9e89, y	; b9 89 9e
B22_1e85:		sta wOamSpecIdx.w, x	; 9d 00 04
B22_1e88:		rts				; 60 


B22_1e89:	.db $3a
B22_1e8a:		pha				; 48 
B22_1e8b:	.db $3c
B22_1e8c:		lsr a			; 4a


entityPhaseFunc_84:
B22_1e8d:		ldy $0633, x	; bc 33 06
B22_1e90:		lda $9f0d, y	; b9 0d 9f
B22_1e93:		sta $0606, x	; 9d 06 06
B22_1e96:		lda $9f15, y	; b9 15 9f
B22_1e99:		sta $061d, x	; 9d 1d 06
B22_1e9c:		lda $9f1d, y	; b9 1d 9f
B22_1e9f:		sta $0633, x	; 9d 33 06
B22_1ea2:		jsr $81a7		; 20 a7 81
B22_1ea5:		clc				; 18 
B22_1ea6:		ldy $0633, x	; bc 33 06
B22_1ea9:		lda $9f09, y	; b9 09 9f
B22_1eac:		adc $061d, x	; 7d 1d 06
B22_1eaf:		tay				; a8 
B22_1eb0:		lda $9ec9, y	; b9 c9 9e
B22_1eb3:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B22_1eb6:		lda $9ed9, y	; b9 d9 9e
B22_1eb9:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B22_1ebc:		lda $9ee9, y	; b9 e9 9e
B22_1ebf:		sta $0520, x	; 9d 20 05
B22_1ec2:		lda $9ef9, y	; b9 f9 9e
B22_1ec5:		sta $0537, x	; 9d 37 05
B22_1ec8:		rts				; 60 


B22_1ec9:	.db $ff
B22_1eca:		.db $00				; 00
B22_1ecb:		.db $00				; 00
B22_1ecc:		.db $00				; 00
B22_1ecd:	.db $ff
B22_1ece:		.db $00				; 00
B22_1ecf:		.db $00				; 00
B22_1ed0:		.db $00				; 00
B22_1ed1:	.db $ff
B22_1ed2:		.db $00				; 00
B22_1ed3:		ora ($00, x)	; 01 00
B22_1ed5:		inc $0100, x	; fe 00 01
B22_1ed8:		.db $00				; 00
B22_1ed9:	.db $80
B22_1eda:		.db $00				; 00
B22_1edb:	.db $80
B22_1edc:		.db $00				; 00
B22_1edd:		rti				; 40 


B22_1ede:		.db $00				; 00
B22_1edf:		cpy #$00		; c0 00
B22_1ee1:		.db $00				; 00
B22_1ee2:		.db $00				; 00
B22_1ee3:		.db $00				; 00
B22_1ee4:		.db $00				; 00
B22_1ee5:		cpy #$00		; c0 00
B22_1ee7:		rti				; 40 


B22_1ee8:		.db $00				; 00
B22_1ee9:		.db $00				; 00
B22_1eea:		.db $00				; 00
B22_1eeb:		.db $00				; 00
B22_1eec:	.db $ff
B22_1eed:		.db $00				; 00
B22_1eee:		.db $00				; 00
B22_1eef:		.db $00				; 00
B22_1ef0:	.db $ff
B22_1ef1:		.db $00				; 00
B22_1ef2:		ora ($00, x)	; 01 00
B22_1ef4:	.db $ff
B22_1ef5:		.db $00				; 00
B22_1ef6:		ora ($00, x)	; 01 00
B22_1ef8:		inc $8000, x	; fe 00 80
B22_1efb:		.db $00				; 00
B22_1efc:	.db $80
B22_1efd:		.db $00				; 00
B22_1efe:		cpy #$00		; c0 00
B22_1f00:		rti				; 40 


B22_1f01:		.db $00				; 00
B22_1f02:		.db $00				; 00
B22_1f03:		.db $00				; 00
B22_1f04:		.db $00				; 00
B22_1f05:		.db $00				; 00
B22_1f06:		rti				; 40 


B22_1f07:		.db $00				; 00
B22_1f08:		cpy #$00		; c0 00
B22_1f0a:	.db $04
B22_1f0b:		php				; 08 
B22_1f0c:	.db $0c
B22_1f0d:		.db $00				; 00
B22_1f0e:		ora ($01, x)	; 01 01
B22_1f10:		.db $00				; 00
B22_1f11:		.db $00				; 00
B22_1f12:		.db $00				; 00
B22_1f13:		.db $00				; 00
B22_1f14:		.db $00				; 00
B22_1f15:		.db $00				; 00
B22_1f16:	.db $02
B22_1f17:	.db $02
B22_1f18:		.db $00				; 00
B22_1f19:	.db $02
B22_1f1a:		.db $00				; 00
B22_1f1b:		.db $00				; 00
B22_1f1c:		.db $00				; 00
B22_1f1d:	.db $02
B22_1f1e:		ora ($02, x)	; 01 02
B22_1f20:	.db $03
B22_1f21:	.db $03
B22_1f22:		.db $00				; 00
B22_1f23:		.db $00				; 00
B22_1f24:		.db $00				; 00


entityPhaseFunc_85:
B22_1f25:		jsr $9f8e		; 20 8e 9f
B22_1f28:		jsr $9f9b		; 20 9b 9f
B22_1f2b:		beq B22_1f41 ; f0 14

B22_1f2d:		jsr $9f8e		; 20 8e 9f
B22_1f30:		adc #$04		; 69 04
B22_1f32:		jsr $9f9b		; 20 9b 9f
B22_1f35:		beq B22_1f7b ; f0 44

B22_1f37:		ldx $6c			; a6 6c
B22_1f39:		jsr $9f8e		; 20 8e 9f
B22_1f3c:		adc #$04		; 69 04
B22_1f3e:		jmp $9f84		; 4c 84 9f


B22_1f41:		ldx $6c			; a6 6c
B22_1f43:		inc wEntityPhase.w, x	; fe c1 05
B22_1f46:		jmp $9f81		; 4c 81 9f


B22_1f49:		ora ($02, x)	; 01 02
B22_1f4b:	.db $03
B22_1f4c:		.db $00				; 00
B22_1f4d:	.db $03
B22_1f4e:		.db $00				; 00
B22_1f4f:		ora ($02, x)	; 01 02
B22_1f51:	.db $03
B22_1f52:		.db $00				; 00
B22_1f53:		ora ($02, x)	; 01 02
B22_1f55:		ora ($02, x)	; 01 02
B22_1f57:	.db $03
B22_1f58:		.db $00				; 00


entityPhaseFunc_86:
B22_1f59:		jsr $9f8e		; 20 8e 9f
B22_1f5c:		jsr $9f9b		; 20 9b 9f
B22_1f5f:		bne B22_1f75 ; d0 14

B22_1f61:		jsr $9f8e		; 20 8e 9f
B22_1f64:		adc #$04		; 69 04
B22_1f66:		jsr $9f9b		; 20 9b 9f
B22_1f69:		beq B22_1f7b ; f0 10

B22_1f6b:		ldx $6c			; a6 6c
B22_1f6d:		jsr $9f8e		; 20 8e 9f
B22_1f70:		adc #$04		; 69 04
B22_1f72:		jsr $9f84		; 20 84 9f
B22_1f75:		ldx $6c			; a6 6c
B22_1f77:		dec wEntityPhase.w, x	; de c1 05
B22_1f7a:		rts				; 60 


B22_1f7b:		lda #$7f		; a9 7f
B22_1f7d:		sta $067b, x	; 9d 7b 06
B22_1f80:		rts				; 60 


B22_1f81:		jsr $9f8e		; 20 8e 9f
B22_1f84:		tay				; a8 
B22_1f85:		lda $9f49, y	; b9 49 9f
B22_1f88:		sta $061d, x	; 9d 1d 06
B22_1f8b:		jmp $9ea5		; 4c a5 9e


B22_1f8e:		clc				; 18 
B22_1f8f:		lda $061d, x	; bd 1d 06
B22_1f92:		ldy $0606, x	; bc 06 06
B22_1f95:		adc $9f99, y	; 79 99 9f
B22_1f98:		rts				; 60 


B22_1f99:		.db $00				; 00
B22_1f9a:		php				; 08 
B22_1f9b:		tay				; a8 
B22_1f9c:		lda $9fb9, y	; b9 b9 9f
B22_1f9f:		sta $00			; 85 00
B22_1fa1:		lda $9fa9, y	; b9 a9 9f
B22_1fa4:		ldy $00			; a4 00
B22_1fa6:		jmp func_1f_1c1e		; 4c 1e fc


B22_1fa9:	.db $07
B22_1faa:	.db $0c
B22_1fab:		sed				; f8 
B22_1fac:	.db $f4
B22_1fad:		sed				; f8 
B22_1fae:		.db $00				; 00
B22_1faf:	.db $07
B22_1fb0:		.db $00				; 00
B22_1fb1:	.db $07
B22_1fb2:	.db $f4
B22_1fb3:		sed				; f8 
B22_1fb4:	.db $0c
B22_1fb5:		sed				; f8 
B22_1fb6:		.db $00				; 00
B22_1fb7:	.db $07
B22_1fb8:		.db $00				; 00
B22_1fb9:	.db $0c
B22_1fba:		sed				; f8 
B22_1fbb:	.db $f4
B22_1fbc:	.db $07
B22_1fbd:		.db $00				; 00
B22_1fbe:	.db $07
B22_1fbf:		.db $00				; 00
B22_1fc0:		sed				; f8 
B22_1fc1:	.db $f4
B22_1fc2:		sed				; f8 
B22_1fc3:	.db $0c
B22_1fc4:	.db $07
B22_1fc5:		.db $00				; 00
B22_1fc6:	.db $07
B22_1fc7:		.db $00				; 00
B22_1fc8:		sed				; f8 
B22_1fc9:		lda $07f6		; ad f6 07
B22_1fcc:		bne B22_1fe3 ; d0 15

B22_1fce:		lda wCurrRoomGroup		; a5 32
B22_1fd0:		ldy #$00		; a0 00
B22_1fd2:		cmp #$03		; c9 03
B22_1fd4:		bcc B22_1fdc ; 90 06

B22_1fd6:		iny				; c8 
B22_1fd7:		cmp #$0c		; c9 0c
B22_1fd9:		bcc B22_1fdc ; 90 01

B22_1fdb:		iny				; c8 
B22_1fdc:		lda $9fe7, y	; b9 e7 9f
B22_1fdf:		sta $0657, x	; 9d 57 06
B22_1fe2:		rts				; 60 


B22_1fe3:		lda #$30		; a9 30
B22_1fe5:		bne B22_1fdf ; d0 f8

B22_1fe7:		;removed
	.db $10 $20

B22_1fe9:		.db $30 


entityPhaseFunc_69:
	inc $05c1, x
B22_1fed:		ldy #$01		; a0 01
B22_1fef:		lda ($02), y	; b1 02
B22_1ff1:		sta $061d, x	; 9d 1d 06
B22_1ff4:		iny				; c8 
B22_1ff5:		lda ($02), y	; b1 02
B22_1ff7:		sta $0606, x	; 9d 06 06
-	rts				; 60 


entityPhaseFunc_6a:
B22_1ffb:		jsr $8120		; 20 20 81
	bcs -

; cont.