
; cont.
B23_0000:		dec $0606, x	; de 06 06
B23_0003:		bne B23_001e ; d0 19

B23_0005:		lda $061d, x	; bd 1d 06
B23_0008:		eor #$01		; 49 01
B23_000a:		sta $061d, x	; 9d 1d 06
B23_000d:		tay				; a8 
B23_000e:		lda $a039, y	; b9 39 a0
B23_0011:		sta $04f2, x	; 9d f2 04
B23_0014:		lda #$00		; a9 00
B23_0016:		sta $0509, x	; 9d 09 05
B23_0019:		lda #$38		; a9 38
B23_001b:		sta $0606, x	; 9d 06 06
B23_001e:		lda $061d, x	; bd 1d 06
B23_0021:		beq B23_002e ; f0 0b

B23_0023:		lda #$08		; a9 08
B23_0025:		jsr $806f		; 20 6f 80
B23_0028:		jsr $8e20		; 20 20 8e
B23_002b:		jmp $a054		; 4c 54 a0


B23_002e:		lda #$08		; a9 08
B23_0030:		jsr $808f		; 20 8f 80
B23_0033:		jsr $8e20		; 20 20 8e
B23_0036:		jmp $a054		; 4c 54 a0


B23_0039:		ora ($ff, x)	; 01 ff


entityPhaseFunc_37:
B23_003b:		lda #$18		; a9 18
B23_003d:		jsr $807f		; 20 7f 80
B23_0040:		jsr $8e20		; 20 20 8e
B23_0043:		lda $0520, x	; bd 20 05
B23_0046:		cmp #$02		; c9 02
B23_0048:		bcc B23_0054 ; 90 0a

B23_004a:		lda #$03		; a9 03
B23_004c:		sta $0520, x	; 9d 20 05
B23_004f:		lda #$00		; a9 00
B23_0051:		sta $0537, x	; 9d 37 05
B23_0054:		jsr $a0ef		; 20 ef a0
B23_0057:		bcs B23_0068 ; b0 0f

B23_0059:		inc wEntityPhase.w, x	; fe c1 05
B23_005c:		inc wEntityPhase.w, x	; fe c1 05
B23_005f:		jsr func_1f_1ec8		; 20 c8 fe
B23_0062:		jsr $a0fc		; 20 fc a0
B23_0065:		jmp $e76c		; 4c 6c e7

B23_0068:		lda #$00		; a9 00
B23_006a:		ldy $054e, x	; bc 4e 05
B23_006d:		cpy #$ae		; c0 ae
B23_006f:		bne B23_0075 ; d0 04

B23_0071:		ldy #$02		; a0 02
B23_0073:		bne B23_0077 ; d0 02

B23_0075:		ldy #$08		; a0 08
B23_0077:		jsr func_1f_1c1e		; 20 1e fc
B23_007a:		beq B23_008a ; f0 0e

B23_007c:		ldx $6c			; a6 6c
B23_007e:		jsr func_1f_1ec8		; 20 c8 fe
B23_0081:		lda #$a0		; a9 a0
B23_0083:		sta $0606, x	; 9d 06 06
B23_0086:		inc wEntityPhase.w, x	; fe c1 05
B23_0089:		rts				; 60 


B23_008a:		jsr $8113		; 20 13 81
B23_008d:		bcc B23_0089 ; 90 fa

B23_008f:		lda wEntityBaseY.w, x	; bd 1c 04
B23_0092:		cmp $ca			; c5 ca
B23_0094:		bcc B23_0089 ; 90 f3

B23_0096:		lda $054e, x	; bd 4e 05
B23_0099:		cmp #$ae		; c9 ae
B23_009b:		beq B23_00a0 ; f0 03

B23_009d:		jsr $992b		; 20 2b 99
B23_00a0:		jmp $84b2		; 4c b2 84


entityPhaseFunc_38:
B23_00a3:		dec $0606, x	; de 06 06
B23_00a6:		beq B23_00b6 ; f0 0e

entityPhaseFunc_71:
B23_00a8:		jsr $a0ef		; 20 ef a0
B23_00ab:		bcs B23_00c2 ; b0 15

B23_00ad:		inc wEntityPhase.w, x	; fe c1 05
B23_00b0:		jsr $a0fc		; 20 fc a0
B23_00b3:		jmp $e76c		; 4c 6c e7

B23_00b6:		lda #$00		; a9 00
B23_00b8:		sta $0400, x	; 9d 00 04
B23_00bb:		sta $054e, x	; 9d 4e 05
B23_00be:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_00c1:		rts				; 60 

B23_00c2:		lda #$00		; a9 00
B23_00c4:		ldy #$08		; a0 08
B23_00c6:		jsr func_1f_1c1e		; 20 1e fc
B23_00c9:		bne B23_00d3 ; d0 08

B23_00cb:		ldx $6c			; a6 6c
B23_00cd:		lda #$01		; a9 01
B23_00cf:		sta wEntityPhase.w, x	; 9d c1 05
B23_00d2:		rts				; 60 

B23_00d3:		ldx $6c			; a6 6c
B23_00d5:		jmp $8120		; 4c 20 81


entityPhaseFunc_39:
B23_00d8:		jsr func_1f_1ec8		; 20 c8 fe
B23_00db:		jsr func_16_01aa		; 20 aa 81
B23_00de:		ldy #$01		; a0 01
B23_00e0:		lda ($02), y	; b1 02
B23_00e2:		sta $0520, x	; 9d 20 05
B23_00e5:		iny				; c8 
B23_00e6:		lda ($02), y	; b1 02
B23_00e8:		sta $0537, x	; 9d 37 05
B23_00eb:		inc wEntityPhase.w, x	; fe c1 05
B23_00ee:		rts				; 60 


B23_00ef:		jsr $80b3		; 20 b3 80
B23_00f2:		cmp #$0c		; c9 0c
B23_00f4:		bcs B23_00fb ; b0 05

B23_00f6:		jsr $80d5		; 20 d5 80
B23_00f9:		cmp #$14		; c9 14
B23_00fb:		rts				; 60 


B23_00fc:		sec				; 38 
B23_00fd:		lda $054e, x	; bd 4e 05
B23_0100:		sbc #$93		; e9 93
B23_0102:		jsr jumpTablePreserveY		; 20 6d e8
B23_0105:		bvc B23_00a8 ; 50 a1

B23_0107:		lsr $42a1, x	; 5e a1 42
B23_010a:		lda ($5e, x)	; a1 5e
B23_010c:		lda ($5e, x)	; a1 5e
B23_010e:		lda ($5e, x)	; a1 5e
B23_0110:		lda ($5e, x)	; a1 5e
B23_0112:		lda ($5e, x)	; a1 5e
B23_0114:		lda ($42, x)	; a1 42
B23_0116:		lda ($50, x)	; a1 50
B23_0118:		lda ($89, x)	; a1 89
B23_011a:		lda ($89, x)	; a1 89
B23_011c:		lda ($41, x)	; a1 41
B23_011e:		lda ($41, x)	; a1 41
B23_0120:		lda ($a9, x)	; a1 a9
B23_0122:		lda ($b5, x)	; a1 b5
B23_0124:		lda ($ef, x)	; a1 ef
B23_0126:		lda ($ef, x)	; a1 ef
B23_0128:		lda ($ef, x)	; a1 ef
B23_012a:		lda ($ef, x)	; a1 ef
B23_012c:		lda ($ef, x)	; a1 ef
B23_012e:		lda ($ef, x)	; a1 ef
B23_0130:		lda ($ef, x)	; a1 ef
B23_0132:		lda ($ef, x)	; a1 ef
B23_0134:		lda ($ef, x)	; a1 ef
B23_0136:		lda ($21, x)	; a1 21
B23_0138:		ldx #$2b		; a2 2b
B23_013a:		ldx #$2b		; a2 2b
B23_013c:		ldx #$42		; a2 42
B23_013e:		ldx #$42		; a2 42
B23_0140:		ldx #$60		; a2 60
B23_0142:		jsr $a17b		; 20 7b a1
B23_0145:		ldy $054e		; ac 4e 05
B23_0148:		lda $a14d, y	; b9 4d a1
B23_014b:		bne B23_016b ; d0 1e

B23_014d:	.db $03
B23_014e:		.db $00				; 00
B23_014f:		php				; 08 
B23_0150:		jsr $a17b		; 20 7b a1
B23_0153:		ldy $054e		; ac 4e 05
B23_0156:		lda $a15b, y	; b9 5b a1
B23_0159:		bne B23_016b ; d0 10

B23_015b:		ora ($00, x)	; 01 00
B23_015d:		ora #$20		; 09 20
B23_015f:	.db $7b
B23_0160:		lda ($38, x)	; a1 38
B23_0162:		lda $054e, x	; bd 4e 05
B23_0165:		sbc #$93		; e9 93
B23_0167:		tay				; a8 
B23_0168:		lda $a171, y	; b9 71 a1
B23_016b:		ldy $3b			; a4 3b
B23_016d:	.db $99 $85 $00
B23_0170:		rts				; 60 


B23_0171:		ora ($02, x)	; 01 02
B23_0173:	.db $03
B23_0174:	.db $04
B23_0175:	.db $0b
B23_0176:		ora $06			; 05 06
B23_0178:	.db $07
B23_0179:		php				; 08 
B23_017a:		ora #$a9		; 09 a9
B23_017c:		.db $00				; 00
B23_017d:		sta $9c			; 85 9c
B23_017f:		ldy $3b			; a4 3b
B23_0181:	.db $99 $87 $00
B23_0184:		lda #$1c		; a9 1c
B23_0186:		jmp playSound		; 4c 5f e2


B23_0189:		lda #$1c		; a9 1c
B23_018b:		jsr playSound		; 20 5f e2
B23_018e:		lda #$01		; a9 01
B23_0190:		sta $b7			; 85 b7
B23_0192:		ldy $3b			; a4 3b
B23_0194:		sec				; 38 
B23_0195:		lda $054e, x	; bd 4e 05
B23_0198:		sbc #$9c		; e9 9c
B23_019a:	.db $99 $8e $00
B23_019d:		lda #$00		; a9 00
B23_019f:		sta $0400, x	; 9d 00 04
B23_01a2:		sta $054e, x	; 9d 4e 05
B23_01a5:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_01a8:		rts				; 60 


B23_01a9:		lda #$17		; a9 17
B23_01ab:		jsr playSound		; 20 5f e2
B23_01ae:		lda #$b4		; a9 b4
B23_01b0:		sta $ad			; 85 ad
B23_01b2:		ldx $6c			; a6 6c
B23_01b4:		rts				; 60 


B23_01b5:		lda #$4a		; a9 4a
B23_01b7:		jsr playSound		; 20 5f e2
B23_01ba:		ldx #$01		; a2 01
B23_01bc:		lda $054e, x	; bd 4e 05
B23_01bf:		cmp #$48		; c9 48
B23_01c1:		bcc B23_01e3 ; 90 20

B23_01c3:		cmp #$68		; c9 68
B23_01c5:		bcs B23_01e3 ; b0 1c

B23_01c7:		txa				; 8a 
B23_01c8:		pha				; 48 
B23_01c9:		jsr $e7cc		; 20 cc e7
B23_01cc:		pla				; 68 
B23_01cd:		tax				; aa 
B23_01ce:		lda #$6f		; a9 6f
B23_01d0:		sta $054e, x	; 9d 4e 05
B23_01d3:		lda #$18		; a9 18
B23_01d5:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_01d8:		lda #$00		; a9 00
B23_01da:		sta wEntityPhase.w, x	; 9d c1 05
B23_01dd:		sta $0470, x	; 9d 70 04
B23_01e0:		jsr $b52f		; 20 2f b5
B23_01e3:		inx				; e8 
B23_01e4:		cpx #$0d		; e0 0d
B23_01e6:		bcc B23_01bc ; 90 d4

B23_01e8:		lda #$20		; a9 20
B23_01ea:		sta $b2			; 85 b2
B23_01ec:		ldx $6c			; a6 6c
B23_01ee:		rts				; 60 


B23_01ef:		lda #$18		; a9 18
B23_01f1:		jsr playSound		; 20 5f e2
B23_01f4:		sec				; 38 
B23_01f5:		lda $054e, x	; bd 4e 05
B23_01f8:		sbc #$a3		; e9 a3
B23_01fa:		tay				; a8 
B23_01fb:		lda $a20f, y	; b9 0f a2
B23_01fe:		sta $02			; 85 02
B23_0200:		lda $a218, y	; b9 18 a2
B23_0203:		sta $03			; 85 03
B23_0205:		lda #$00		; a9 00
B23_0207:		sta $01			; 85 01
B23_0209:		jsr $e777		; 20 77 e7
B23_020c:		ldx $6c			; a6 6c
B23_020e:		rts				; 60 


B23_020f:		ora ($02, x)	; 01 02
B23_0211:	.db $04
B23_0212:	.db $07
B23_0213:		;removed
	.db $10 $20

B23_0215:		rti				; 40 


B23_0216:		bvs B23_0218 ; 70 00

B23_0218:		.db $00				; 00
B23_0219:		.db $00				; 00
B23_021a:		.db $00				; 00
B23_021b:		.db $00				; 00
B23_021c:		.db $00				; 00
B23_021d:		.db $00				; 00
B23_021e:		.db $00				; 00
B23_021f:		.db $00				; 00
B23_0220:		ora ($a9, x)	; 01 a9
B23_0222:		ora ($85, x)	; 01 85
B23_0224:	.db $d7
B23_0225:		jsr $e748		; 20 48 e7
B23_0228:		ldx $6c			; a6 6c
B23_022a:		rts				; 60 


B23_022b:		lda #$1b		; a9 1b
B23_022d:		jsr playSound		; 20 5f e2
B23_0230:		sec				; 38 
B23_0231:		lda $054e, x	; bd 4e 05
B23_0234:		sbc #$ad		; e9 ad
B23_0236:		tay				; a8 
B23_0237:		lda $a240, y	; b9 40 a2
B23_023a:		jsr $e760		; 20 60 e7
B23_023d:		ldx $6c			; a6 6c
B23_023f:		rts				; 60 


B23_0240:		ora $01			; 05 01
B23_0242:		lda #$1c		; a9 1c
B23_0244:		jsr playSound		; 20 5f e2
B23_0247:		ldy $3b			; a4 3b
B23_0249:	.db $b9 $85 $00
B23_024c:		cmp #$0b		; c9 0b
B23_024e:		beq B23_0264 ; f0 14

B23_0250:		cmp #$05		; c9 05
B23_0252:		bcc B23_0258 ; 90 04

B23_0254:		cmp #$08		; c9 08
B23_0256:		bcc B23_0264 ; 90 0c

B23_0258:		sec				; 38 
B23_0259:		lda $054e, x	; bd 4e 05
B23_025c:		sbc #$ae		; e9 ae
B23_025e:		ldy $3b			; a4 3b
B23_0260:	.db $99 $87 $00
B23_0263:		rts				; 60 


B23_0264:		lda #$a7		; a9 a7
B23_0266:		sta $054e, x	; 9d 4e 05
B23_0269:		lda #$47		; a9 47
B23_026b:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_026e:		lda #$04		; a9 04
B23_0270:		sta wEntityPhase.w, x	; 9d c1 05
B23_0273:		ldy #$04		; a0 04
B23_0275:		jmp $a1fb		; 4c fb a1


B23_0278:		lda $054e		; ad 4e 05
B23_027b:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $a286
	.dw $a3b4
	.dw $a3b4
	.dw $a2b0

B23_0286:		ldy #$00		; a0 00
B23_0288:		lda $8e			; a5 8e
B23_028a:		beq B23_02a5 ; f0 19

B23_028c:		cmp #$02		; c9 02
B23_028e:		beq B23_02ab ; f0 1b

B23_0290:		lda $84			; a5 84
B23_0292:		cmp #$08		; c9 08
B23_0294:		bcc B23_02ab ; 90 15

B23_0296:		iny				; c8 
B23_0297:		lda $a2ae, y	; b9 ae a2
B23_029a:		jsr func_17_03f8		; 20 f8 a3
B23_029d:		beq B23_02ab ; f0 0c

B23_029f:		lda $00			; a5 00
B23_02a1:		sta $054e, x	; 9d 4e 05
B23_02a4:		rts				; 60 

B23_02a5:		lda $84			; a5 84
B23_02a7:		cmp #$04		; c9 04
B23_02a9:		bcs B23_0297 ; b0 ec

B23_02ab:		jmp $a3b4		; 4c b4 a3


B23_02ae:		sta $a09e, x	; 9d 9e a0
B23_02b1:		.db $00				; 00
B23_02b2:		lda $8f			; a5 8f
B23_02b4:		beq B23_02cf ; f0 19

B23_02b6:		cmp #$02		; c9 02
B23_02b8:		beq B23_02ab ; f0 f1

B23_02ba:		lda $84			; a5 84
B23_02bc:		cmp #$08		; c9 08
B23_02be:		bcc B23_02ab ; 90 eb

B23_02c0:		iny				; c8 
B23_02c1:		lda $a2ae, y	; b9 ae a2
B23_02c4:		jsr func_17_03f8		; 20 f8 a3
B23_02c7:		beq B23_02ab ; f0 e2

B23_02c9:		lda $00			; a5 00
B23_02cb:		sta $054e, x	; 9d 4e 05
B23_02ce:		rts				; 60 


B23_02cf:		lda $84			; a5 84
B23_02d1:		cmp #$04		; c9 04
B23_02d3:		bcs B23_02c1 ; b0 ec

B23_02d5:		jmp $a3b4		; 4c b4 a3


B23_02d8:		ldy $d7			; a4 d7
B23_02da:		beq B23_02fc ; f0 20

B23_02dc:		jsr $a278		; 20 78 a2
B23_02df:		jmp $a2f9		; 4c f9 a2


B23_02e2:		lda #$33		; a9 33
B23_02e4:		jsr playSound		; 20 5f e2
B23_02e7:		lda $05d8, x	; bd d8 05
B23_02ea:		cmp #$ac		; c9 ac
B23_02ec:		beq B23_02d8 ; f0 ea

B23_02ee:		cmp #$ae		; c9 ae
B23_02f0:		beq B23_02dc ; f0 ea

B23_02f2:		cmp #$98		; c9 98
B23_02f4:		bcs B23_02fc ; b0 06

B23_02f6:		jsr $a30b		; 20 0b a3
B23_02f9:		lda $054e, x	; bd 4e 05

B23_02fc:		sta $054e, x	; 9d 4e 05
B23_02ff:		sec				; 38 
B23_0300:		sbc #$60		; e9 60
B23_0302:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_0305:		jsr $b584		; 20 84 b5
B23_0308:		jmp $ffaa		; 4c aa ff


B23_030b:		sec				; 38 
B23_030c:		sbc #$93		; e9 93
B23_030e:		jsr jumpTablePreserveY		; 20 6d e8
B23_0311:	.db $1b
B23_0312:	.db $a3
B23_0313:		and #$a3		; 29 a3
B23_0315:	.db $37
B23_0316:	.db $a3
B23_0317:		eor $a3			; 45 a3
B23_0319:	.db $53
B23_031a:	.db $a3
B23_031b:		lda $054e		; ad 4e 05
B23_031e:		jsr jumpTablePreserveY		; 20 6d e8
B23_0321:		cli				; 58 
B23_0322:	.db $a3
B23_0323:		sty $a3, x		; 94 a3
B23_0325:		cli				; 58 
B23_0326:	.db $a3
B23_0327:		ldy $a3, x		; b4 a3
B23_0329:		lda $054e		; ad 4e 05
B23_032c:		jsr jumpTablePreserveY		; 20 6d e8
B23_032f:	.db $80
B23_0330:	.db $a3
B23_0331:		;removed
	.db $90 $a3

B23_0333:		cli				; 58 
B23_0334:	.db $a3
B23_0335:		ldy $a3, x		; b4 a3
B23_0337:		lda $054e		; ad 4e 05
B23_033a:		jsr jumpTablePreserveY		; 20 6d e8
B23_033d:		adc ($a3), y	; 71 a3
B23_033f:		sty $a3, x		; 94 a3
B23_0341:		adc ($a3), y	; 71 a3
B23_0343:		ldy $a3, x		; b4 a3
B23_0345:		lda $054e		; ad 4e 05
B23_0348:		jsr jumpTablePreserveY		; 20 6d e8
B23_034b:		dey				; 88 
B23_034c:	.db $a3
B23_034d:		sty $71a3		; 8c a3 71
B23_0350:	.db $a3
B23_0351:		ldy $a3, x		; b4 a3
B23_0353:		lda #$97		; a9 97
B23_0355:		jmp $a398		; 4c 98 a3


B23_0358:		lda $054e		; ad 4e 05
B23_035b:		beq B23_036c ; f0 0f

B23_035d:		lda $86			; a5 86
B23_035f:		cmp #$09		; c9 09
B23_0361:		bne B23_0366 ; d0 03

B23_0363:		jmp $b5ce		; 4c ce b5


B23_0366:		lda #$93		; a9 93
B23_0368:		sta $054e, x	; 9d 4e 05
B23_036b:		rts				; 60 


B23_036c:		lda #$93		; a9 93
B23_036e:		jmp $a398		; 4c 98 a3


B23_0371:		lda $054e		; ad 4e 05
B23_0374:		beq B23_0384 ; f0 0e

B23_0376:		lda $86			; a5 86
B23_0378:		cmp #$08		; c9 08
B23_037a:		beq B23_0363 ; f0 e7

B23_037c:		lda #$95		; a9 95
B23_037e:		bne B23_0368 ; d0 e8

B23_0380:		lda #$94		; a9 94
B23_0382:		bne B23_0398 ; d0 14

B23_0384:		lda #$95		; a9 95
B23_0386:		bne B23_0398 ; d0 10

B23_0388:		lda #$96		; a9 96
B23_038a:		bne B23_0398 ; d0 0c

B23_038c:		lda #$99		; a9 99
B23_038e:		bne B23_0398 ; d0 08

B23_0390:		lda #$9a		; a9 9a
B23_0392:		bne B23_0398 ; d0 04

B23_0394:		lda #$98		; a9 98
B23_0396:		bne B23_0398 ; d0 00

B23_0398:		sta $10			; 85 10
B23_039a:		ldy $3b			; a4 3b
B23_039c:		sec				; 38 
B23_039d:		sbc #$93		; e9 93
B23_039f:		tay				; a8 
B23_03a0:		lda $a171, y	; b9 71 a1
B23_03a3:		ldy $3b			; a4 3b
B23_03a5:	.db $d9 $85 $00
B23_03a8:		beq B23_0363 ; f0 b9

B23_03aa:		lda $10			; a5 10
B23_03ac:		sta $054e, x	; 9d 4e 05
B23_03af:		rts				; 60 


B23_03b0:		lda #$ad		; a9 ad
B23_03b2:		bne B23_03ac ; d0 f8

B23_03b4:		jsr $a3e8		; 20 e8 a3
B23_03b7:		bne B23_03c3 ; d0 0a

B23_03b9:		lda $9e			; a5 9e
B23_03bb:		beq B23_03c3 ; f0 06

B23_03bd:		lda $9c			; a5 9c
B23_03bf:		cmp #$0a		; c9 0a
B23_03c1:		bcs B23_03c7 ; b0 04

B23_03c3:		lda #$ae		; a9 ae
B23_03c5:		bne B23_03ac ; d0 e5

B23_03c7:		lda #$00		; a9 00
B23_03c9:		sta $9c			; 85 9c
B23_03cb:		lda $054e		; ad 4e 05
B23_03ce:		and #$01		; 29 01
B23_03d0:		bne B23_03c3 ; d0 f1

B23_03d2:		ldy $3b			; a4 3b
B23_03d4:	.db $b9 $87 $00
B23_03d7:		cmp $a3e6, y	; d9 e6 a3
B23_03da:		bcs B23_03c3 ; b0 e7

B23_03dc:		tay				; a8 
B23_03dd:		lda $a3e4, y	; b9 e4 a3
B23_03e0:		sta $054e, x	; 9d 4e 05
B23_03e3:		rts				; 60 


B23_03e4:	.db $af
B23_03e5:		;removed
	.db $b0 $02

B23_03e7:	.db $02
B23_03e8:		ldy $3b			; a4 3b
B23_03ea:	.db $b9 $85 $00
B23_03ed:		beq B23_03f5 ; f0 06

B23_03ef:		lda $054e, y	; b9 4e 05
B23_03f2:		and #$01		; 29 01
B23_03f4:		rts				; 60 


B23_03f5:		lda #$01		; a9 01
B23_03f7:		rts				; 60 


func_17_03f8:
B23_03f8:		sta $00			; 85 00
B23_03fa:		ldy #$01		; a0 01
B23_03fc:		lda $054e, y	; b9 4e 05
B23_03ff:		cmp $00			; c5 00
B23_0401:		beq B23_040a ; f0 07

B23_0403:		iny				; c8 
B23_0404:		cpy #$13		; c0 13
B23_0406:		bcc B23_03fc ; 90 f4

B23_0408:		lda #$01		; a9 01
B23_040a:		rts				; 60 


B23_040b:	.db $97
B23_040c:		.db $00				; 00
B23_040d:		.db $00				; 00
B23_040e:		.db $00				; 00
B23_040f:	.db $17
B23_0410:		.db $00				; 00
B23_0411:		.db $00				; 00
B23_0412:		.db $00				; 00
B23_0413:	.db $14
B23_0414:		.db $00				; 00
B23_0415:		.db $00				; 00
B23_0416:		.db $00				; 00
B23_0417:		ora $00, x		; 15 00
B23_0419:		.db $00				; 00
B23_041a:		.db $00				; 00
B23_041b:	.db $13
B23_041c:		asl a			; 0a
B23_041d:	.db $0b
B23_041e:		.db $00				; 00
B23_041f:		asl $00, x		; 16 00
B23_0421:		.db $00				; 00
B23_0422:		.db $00				; 00
B23_0423:	.db $6c $2d $00
B23_0426:		.db $00				; 00
B23_0427:		bmi B23_042b ; 30 02

B23_0429:		.db $00				; 00
B23_042a:		.db $00				; 00
B23_042b:	.db $1a
B23_042c:	.db $04
B23_042d:		.db $00				; 00
B23_042e:		.db $00				; 00
B23_042f:	.db $1b
B23_0430:		.db $00				; 00
B23_0431:		.db $00				; 00
B23_0432:		.db $00				; 00
B23_0433:	.db $17
B23_0434:		.db $00				; 00
B23_0435:		.db $00				; 00
B23_0436:		.db $00				; 00
B23_0437:	.db $1a
B23_0438:		bpl B23_043a ; 10 00

B23_043a:		.db $00				; 00
B23_043b:	.db $1b
B23_043c:		.db $00				; 00
B23_043d:		.db $00				; 00
B23_043e:		.db $00				; 00
B23_043f:	.db $7b
B23_0440:	.db $03
B23_0441:		.db $00				; 00
B23_0442:		.db $00				; 00
B23_0443:		;removed
	.db $30 $03

B23_0445:		.db $00				; 00
B23_0446:		.db $00				; 00
B23_0447:		asl $00, x		; 16 00
B23_0449:		.db $00				; 00
B23_044a:		.db $00				; 00
B23_044b:	.db $1a
B23_044c:		ora ($00, x)	; 01 00
B23_044e:		.db $00				; 00
B23_044f:	.db $1b
B23_0450:		.db $00				; 00
B23_0451:		.db $00				; 00
B23_0452:		.db $00				; 00
B23_0453:	.db $17
B23_0454:		.db $00				; 00
B23_0455:		.db $00				; 00
B23_0456:		.db $00				; 00
B23_0457:	.db $1a
B23_0458:	.db $02
B23_0459:		.db $00				; 00
B23_045a:		.db $00				; 00
B23_045b:	.db $1b
B23_045c:		.db $00				; 00
B23_045d:		.db $00				; 00
B23_045e:		.db $00				; 00
B23_045f:	.db $7c
B23_0460:	.db $f9 $00 $00
B23_0463:		clc				; 18 
B23_0464:		.db $00				; 00
B23_0465:		.db $00				; 00
B23_0466:		.db $00				; 00


entityPhaseFunc_97:
B23_0467:		inc wEntityPhase.w, x	; fe c1 05
B23_046a:		jmp func_1f_1ec8		; 4c c8 fe


entityPhaseFunc_14:
B23_046d:		inc wEntityPhase.w, x	; fe c1 05
B23_0470:		jsr $a524		; 20 24 a5
B23_0473:		and #$07		; 29 07
B23_0475:		asl a			; 0a
B23_0476:		tay				; a8 
B23_0477:		lda $a4bf, y	; b9 bf a4
B23_047a:		sta $05d8, x	; 9d d8 05
B23_047d:		lda $a4c0, y	; b9 c0 a4
B23_0480:		sta $0645, x	; 9d 45 06
B23_0483:		lda wCurrRoomGroup		; a5 32
B23_0485:		cmp #$02		; c9 02
B23_0487:		bne B23_04a8 ; d0 1f

B23_0489:		lda wCurrRoomSection			; a5 33
B23_048b:		cmp #$04		; c9 04
B23_048d:		bne B23_04a8 ; d0 19

B23_048f:		lda wEntityBaseX.w, x	; bd 38 04
B23_0492:		bpl B23_049f ; 10 0b

B23_0494:		jsr $a524		; 20 24 a5
B23_0497:		asl a			; 0a
B23_0498:		asl a			; 0a
B23_0499:		asl a			; 0a
B23_049a:		ora #$80		; 09 80
B23_049c:		jmp $a4a5		; 4c a5 a4


B23_049f:		jsr $a524		; 20 24 a5
B23_04a2:		asl a			; 0a
B23_04a3:		asl a			; 0a
B23_04a4:		asl a			; 0a
B23_04a5:		sta wEntityBaseX.w, x	; 9d 38 04
B23_04a8:		lda wEntityBaseX.w, x	; bd 38 04
B23_04ab:		and #$7f		; 29 7f
B23_04ad:		cmp #$20		; c9 20
B23_04af:		bcc B23_04b9 ; 90 08

B23_04b1:		cmp #$50		; c9 50
B23_04b3:		bcs B23_04b9 ; b0 04

B23_04b5:		lda #$58		; a9 58
B23_04b7:		bne B23_04bb ; d0 02

B23_04b9:		lda #$40		; a9 40
B23_04bb:		sta wEntityBaseY.w, x	; 9d 1c 04
B23_04be:		rts				; 60 


B23_04bf:	.db $80
B23_04c0:		ora ($00, x)	; 01 00
B23_04c2:	.db $02
B23_04c3:		cli				; 58 
B23_04c4:		.db $00				; 00
B23_04c5:		rts				; 60 


B23_04c6:		.db $00				; 00
B23_04c7:		.db $00				; 00
B23_04c8:		ora ($00, x)	; 01 00
B23_04ca:	.db $04
B23_04cb:	.db $80
B23_04cc:		ora ($20, x)	; 01 20
B23_04ce:		.db $01


entityPhaseFunc_15:
	dec $05d8, x
B23_04d2:		bpl $0e
B23_04d4:		ldy $05d8, x
B23_04d7:		iny
B23_04d8:		bne B23_04e2 ; d0 08

B23_04da:		dec $0645, x	; de 45 06
B23_04dd:		bpl B23_04e2 ; 10 03

B23_04df:		inc wEntityPhase.w, x	; fe c1 05
B23_04e2:		rts				; 60 


entityPhaseFunc_16:
B23_04e3:		lda #$50		; a9 50
B23_04e5:		sta $0470, x	; 9d 70 04
B23_04e8:		bne B23_050f ; d0 25

entityPhaseFunc_17:
B23_04ea:		lda #$58		; a9 58
B23_04ec:		sta $0470, x	; 9d 70 04
B23_04ef:		bne B23_050f ; d0 1e

entityPhaseFunc_18:
B23_04f1:		lda #$00		; a9 00
B23_04f3:		sta wEntityPhase.w, x	; 9d c1 05
B23_04f6:		rts				; 60 


entityPhaseFunc_1a:
B23_04f7:		ldy #$01		; a0 01
B23_04f9:		lda ($02), y	; b1 02
B23_04fb:		sta $05d8, x	; 9d d8 05
B23_04fe:		inc wEntityPhase.w, x	; fe c1 05
B23_0501:		rts				; 60 


entityPhaseFunc_1b:
B23_0502:		dec $05d8, x	; de d8 05
B23_0505:		beq B23_050f ; f0 08

B23_0507:		rts				; 60 


entityPhaseFunc_7b:
B23_0508:		ldy #$01		; a0 01
B23_050a:		lda ($02), y	; b1 02
B23_050c:		sta $0633, x	; 9d 33 06
B23_050f:		inc wEntityPhase.w, x	; fe c1 05
B23_0512:		rts				; 60 


entityPhaseFunc_7c:
B23_0513:		dec $0633, x	; de 33 06
B23_0516:		beq B23_050f ; f0 f7

B23_0518:		ldy #$01		; a0 01
B23_051a:		lda ($02), y	; b1 02
B23_051c:		clc				; 18 
B23_051d:		adc wEntityPhase.w, x	; 7d c1 05
B23_0520:		sta wEntityPhase.w, x	; 9d c1 05
B23_0523:		rts				; 60 


B23_0524:		lda $1f			; a5 1f
B23_0526:		bne B23_052a ; d0 02

B23_0528:		lda #$65		; a9 65
B23_052a:		asl a			; 0a
B23_052b:		sta $00			; 85 00
B23_052d:		lda $1f			; a5 1f
B23_052f:		lsr a			; 4a
B23_0530:		clc				; 18 
B23_0531:		adc $00			; 65 00
B23_0533:		sta $1f			; 85 1f
B23_0535:		and #$0f		; 29 0f
B23_0537:		rts				; 60 
