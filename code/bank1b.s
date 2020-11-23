B27_0000:	.db $8b
B27_0001:		lda ($ab, x)	; a1 ab
B27_0003:		lda ($c8, x)	; a1 c8
B27_0005:		lda ($e5, x)	; a1 e5
B27_0007:		lda ($02, x)	; a1 02
B27_0009:		ldx #$25		; a2 25
B27_000b:		ldx #$48		; a2 48
B27_000d:		ldx #$6b		; a2 6b
B27_000f:		ldx #$91		; a2 91
B27_0011:		ldx #$b7		; a2 b7
B27_0013:		ldx #$dd		; a2 dd
B27_0015:		ldx #$fb		; a2 fb
B27_0017:		ldx #$06		; a2 06
B27_0019:	.db $a3
B27_001a:		ora ($a3), y	; 11 a3
B27_001c:		jsr $35a3		; 20 a3 35
B27_001f:	.db $a3
B27_0020:		;removed
	.db $50 $a3

B27_0022:	.db $5b
B27_0023:	.db $a3
B27_0024:	.db $63
B27_0025:	.db $a3
B27_0026:		pla				; 68 
B27_0027:	.db $a3
B27_0028:		adc $76a3		; 6d a3 76
B27_002b:	.db $a3
B27_002c:		dey				; 88 
B27_002d:	.db $a3
B27_002e:	.db $a3
B27_002f:	.db $a3
B27_0030:		ldx $d5a3, y	; be a3 d5
B27_0033:	.db $a3
B27_0034:		cpx $0da3		; ec a3 0d
B27_0037:		ldy $31			; a4 31
B27_0039:		ldy $4e			; a4 4e
B27_003b:		ldy $6b			; a4 6b
B27_003d:		ldy $88			; a4 88
B27_003f:		ldy $c9			; a4 c9
B27_0041:		ldy $fe			; a4 fe
B27_0043:		ldy $c9			; a4 c9
B27_0045:		ldy $30			; a4 30
B27_0047:		lda $9a			; a5 9a
B27_0049:		lda $a2			; a5 a2
B27_004b:		lda $ae			; a5 ae
B27_004d:		lda $c6			; a5 c6
B27_004f:		lda $cb			; a5 cb
B27_0051:		lda $df			; a5 df
B27_0053:		lda $f0			; a5 f0
B27_0055:		lda $01			; a5 01
B27_0057:		ldx $18			; a6 18
B27_0059:		ldx $2c			; a6 2c
B27_005b:		ldx $3a			; a6 3a
B27_005d:		ldx $49			; a6 49
B27_005f:		ldx $51			; a6 51
B27_0061:		ldx $5a			; a6 5a
B27_0063:		ldx $6c			; a6 6c
B27_0065:		ldx $87			; a6 87
B27_0067:		ldx $a8			; a6 a8
B27_0069:		ldx $c9			; a6 c9
B27_006b:		ldx $f6			; a6 f6
B27_006d:		ldx $fe			; a6 fe
B27_006f:		ldx $06			; a6 06
B27_0071:	.db $a7
B27_0072:	.db $12
B27_0073:	.db $a7
B27_0074:	.db $2b
B27_0075:	.db $a7
B27_0076:	.db $4f
B27_0077:	.db $a7
B27_0078:		adc $7ea7, y	; 79 a7 7e
B27_007b:	.db $a7
B27_007c:		stx $a7			; 86 a7
B27_007e:		sta ($a7), y	; 91 a7
B27_0080:		adc ($a5), y	; 71 a5
B27_0082:		tsx				; ba 
B27_0083:		lda $9f			; a5 9f
B27_0085:	.db $a7
B27_0086:	.db $d2
B27_0087:	.db $a7
B27_0088:		ora $a8			; 05 a8
B27_008a:		rol $71a8, x	; 3e a8 71
B27_008d:		tay				; a8 
B27_008e:		ldx $a8			; a6 a8
B27_0090:		ldx $b6a8		; ae a8 b6
B27_0093:		tay				; a8 
B27_0094:		ldx $c6a8, y	; be a8 c6
B27_0097:		tay				; a8 
B27_0098:		cmp ($a8), y	; d1 a8
B27_009a:	.db $dc
B27_009b:		tay				; a8 
B27_009c:	.db $e7
B27_009d:		tay				; a8 
B27_009e:	.db $f2
B27_009f:		tay				; a8 
B27_00a0:		sbc $08a8, x	; fd a8 08
B27_00a3:		lda #$16		; a9 16
B27_00a5:		lda #$24		; a9 24
B27_00a7:		lda #$32		; a9 32
B27_00a9:		lda #$41		; a9 41
B27_00ab:		lda #$50		; a9 50
B27_00ad:		lda #$55		; a9 55
B27_00af:		lda #$5d		; a9 5d
B27_00b1:		lda #$65		; a9 65
B27_00b3:		lda #$70		; a9 70
B27_00b5:		lda #$7c		; a9 7c
B27_00b7:		lda #$81		; a9 81
B27_00b9:		lda #$89		; a9 89
B27_00bb:		lda #$92		; a9 92
B27_00bd:		lda #$a0		; a9 a0
B27_00bf:		lda #$aa		; a9 aa
B27_00c1:		lda #$b4		; a9 b4
B27_00c3:		lda #$be		; a9 be
B27_00c5:		lda #$c8		; a9 c8
B27_00c7:		lda #$cd		; a9 cd
B27_00c9:		lda #$d2		; a9 d2
B27_00cb:		lda #$d7		; a9 d7
B27_00cd:		lda #$dc		; a9 dc
B27_00cf:		lda #$e1		; a9 e1
B27_00d1:		lda #$e6		; a9 e6
B27_00d3:		lda #$eb		; a9 eb
B27_00d5:		lda #$02		; a9 02
B27_00d7:		beq B27_00d3 ; f0 fa

B27_00d9:		ora ($f8, x)	; 01 f8
B27_00db:		sbc ($fc), y	; f1 fc
B27_00dd:		.db $00				; 00
B27_00de:	.db $0c
B27_00df:	.db $c2
B27_00e0:	.db $80
B27_00e1:	.db $02
B27_00e2:	.db $f3
B27_00e3:		cmp ($82, x)	; c1 82
B27_00e5:	.db $fb
B27_00e6:		cmp ($84, x)	; c1 84
B27_00e8:	.db $03
B27_00e9:		sbc ($f6, x)	; e1 f6
B27_00eb:		sbc $e1, x		; f5 e1
B27_00ed:		sed				; f8 
B27_00ee:		sbc $8ae1, x	; fd e1 8a
B27_00f1:		ora $01			; 05 01
B27_00f3:		cpx $f1			; e4 f1
B27_00f5:		ora ($8e, x)	; 01 8e
B27_00f7:		sbc $9001, y	; f9 01 90
B27_00fa:		ora ($21, x)	; 01 21
B27_00fc:	.db $92
B27_00fd:	.db $f3
B27_00fe:		and ($94, x)	; 21 94
B27_0100:	.db $fb
B27_0101:		and ($96, x)	; 21 96
B27_0103:	.db $03
B27_0104:	.db $04
B27_0105:		cpy #$80		; c0 80
B27_0107:	.db $03
B27_0108:		sed				; f8 
B27_0109:		cmp ($82, x)	; c1 82
B27_010b:		.db $00				; 00
B27_010c:		sbc ($84, x)	; e1 84
B27_010e:		sed				; f8 
B27_010f:		sbc ($86, x)	; e1 86
B27_0111:		.db $00				; 00
B27_0112:	.db $04
B27_0113:		cld				; d8 
B27_0114:		dey				; 88 
B27_0115:	.db $03
B27_0116:		;removed
	.db $f0 $e1

B27_0118:		txa				; 8a 
B27_0119:		beq B27_00fc ; f0 e1

B27_011b:		sty $e1f8		; 8c f8 e1
B27_011e:		stx $0400		; 8e 00 04
B27_0121:		inx				; e8 
B27_0122:		bcc B27_0127 ; 90 03

B27_0124:		inx				; e8 
B27_0125:		sbc ($92, x)	; e1 92
B27_0127:		;removed
	.db $f0 $e1

B27_0129:		sty $f8, x		; 94 f8
B27_012b:		sbc ($96, x)	; e1 96
B27_012d:		.db $00				; 00
B27_012e:		ora $e0			; 05 e0
B27_0130:		tya				; 98 
B27_0131:	.db $03
B27_0132:		inx				; e8 
B27_0133:		cmp ($9a), y	; d1 9a
B27_0135:		;removed
	.db $f0 $f1

B27_0137:	.db $9c
B27_0138:		beq B27_011b ; f0 e1

B27_013a:	.db $9e
B27_013b:		sed				; f8 
B27_013c:		sbc ($a0, x)	; e1 a0
B27_013e:		.db $00				; 00
B27_013f:	.db $02
B27_0140:		;removed
	.db $f0 $a2

B27_0142:	.db $03
B27_0143:		sed				; f8 
B27_0144:		sbc ($a4), y	; f1 a4
B27_0146:		.db $00				; 00
B27_0147:	.db $02
B27_0148:		;removed
	.db $f0 $a6

B27_014a:	.db $03
B27_014b:		sed				; f8 
B27_014c:		sbc ($ae), y	; f1 ae
B27_014e:		.db $00				; 00
B27_014f:	.db $04
B27_0150:		;removed
	.db $f0 $a2

B27_0152:	.db $03
B27_0153:		sed				; f8 
B27_0154:		sbc ($a4), y	; f1 a4
B27_0156:		.db $00				; 00
B27_0157:		ora ($a2), y	; 11 a2
B27_0159:		sed				; f8 
B27_015a:		ora ($a4), y	; 11 a4
B27_015c:		.db $00				; 00
B27_015d:		asl $f0			; 06 f0
B27_015f:		ldx #$03		; a2 03
B27_0161:		sed				; f8 
B27_0162:		sbc ($a4), y	; f1 a4
B27_0164:		.db $00				; 00
B27_0165:		ora ($a2), y	; 11 a2
B27_0167:		sed				; f8 
B27_0168:		ora ($a4), y	; 11 a4
B27_016a:		.db $00				; 00
B27_016b:		and ($a2), y	; 31 a2
B27_016d:		sed				; f8 
B27_016e:		and ($a4), y	; 31 a4
B27_0170:		.db $00				; 00
B27_0171:		php				; 08 
B27_0172:		beq B27_0116 ; f0 a2

B27_0174:	.db $03
B27_0175:		sed				; f8 
B27_0176:		sbc ($a4), y	; f1 a4
B27_0178:		.db $00				; 00
B27_0179:		ora ($a2), y	; 11 a2
B27_017b:		sed				; f8 
B27_017c:		ora ($a4), y	; 11 a4
B27_017e:		.db $00				; 00
B27_017f:		and ($a2), y	; 31 a2
B27_0181:		sed				; f8 
B27_0182:		and ($a4), y	; 31 a4
B27_0184:		.db $00				; 00
B27_0185:		eor ($a2), y	; 51 a2
B27_0187:		sed				; f8 
B27_0188:		eor ($a4), y	; 51 a4
B27_018a:		.db $00				; 00
B27_018b:		asl a			; 0a
B27_018c:		beq B27_0130 ; f0 a2

B27_018e:	.db $03
B27_018f:		sed				; f8 
B27_0190:		sbc ($a4), y	; f1 a4
B27_0192:		.db $00				; 00
B27_0193:		ora ($a2), y	; 11 a2
B27_0195:		sed				; f8 
B27_0196:		ora ($a4), y	; 11 a4
B27_0198:		.db $00				; 00
B27_0199:		and ($a2), y	; 31 a2
B27_019b:		sed				; f8 
B27_019c:		and ($a4), y	; 31 a4
B27_019e:		.db $00				; 00
B27_019f:		eor ($a2), y	; 51 a2
B27_01a1:		sed				; f8 
B27_01a2:		eor ($a4), y	; 51 a4
B27_01a4:		.db $00				; 00
B27_01a5:		adc ($a2), y	; 71 a2
B27_01a7:		sed				; f8 
B27_01a8:		adc ($a4), y	; 71 a4
B27_01aa:		.db $00				; 00
B27_01ab:		ora #$d2		; 09 d2
B27_01ad:		txs				; 9a 
B27_01ae:	.db $03
B27_01af:	.db $f2
B27_01b0:	.db $d3
B27_01b1:	.db $9c
B27_01b2:	.db $fa
B27_01b3:	.db $eb
B27_01b4:		tya				; 98 
B27_01b5:		nop				; ea 
B27_01b6:	.db $f3
B27_01b7:	.db $9e
B27_01b8:	.db $f2
B27_01b9:	.db $f3
B27_01ba:		ldy #$fa		; a0 fa
B27_01bc:		ora ($80), y	; 11 80
B27_01be:		;removed
	.db $f0 $11

B27_01c0:	.db $82
B27_01c1:		sed				; f8 
B27_01c2:		ora ($84), y	; 11 84
B27_01c4:		.db $00				; 00
B27_01c5:		ora ($86), y	; 11 86
B27_01c7:		php				; 08 
B27_01c8:		ora #$d0		; 09 d0
B27_01ca:		txs				; 9a 
B27_01cb:	.db $03
B27_01cc:		sbc ($d1), y	; f1 d1
B27_01ce:	.db $9c
B27_01cf:		sbc $98e9, y	; f9 e9 98
B27_01d2:		sbc #$f1		; e9 f1
B27_01d4:	.db $9e
B27_01d5:		sbc ($f1), y	; f1 f1
B27_01d7:		ldy #$f9		; a0 f9
B27_01d9:		ora ($80), y	; 11 80
B27_01db:		;removed
	.db $f0 $11

B27_01dd:		txa				; 8a 
B27_01de:		sed				; f8 
B27_01df:		ora ($8c), y	; 11 8c
B27_01e1:		.db $00				; 00
B27_01e2:		ora ($8e), y	; 11 8e
B27_01e4:		php				; 08 
B27_01e5:		ora #$d0		; 09 d0
B27_01e7:		txs				; 9a 
B27_01e8:	.db $03
B27_01e9:		beq B27_01bc ; f0 d1

B27_01eb:	.db $9c
B27_01ec:		sed				; f8 
B27_01ed:		sbc #$98		; e9 98
B27_01ef:		inx				; e8 
B27_01f0:		sbc ($9e), y	; f1 9e
B27_01f2:		beq B27_01e5 ; f0 f1

B27_01f4:		ldy #$f8		; a0 f8
B27_01f6:		ora ($90), y	; 11 90
B27_01f8:		;removed
	.db $f0 $11

B27_01fa:	.db $92
B27_01fb:		sed				; f8 
B27_01fc:		ora ($94), y	; 11 94
B27_01fe:		.db $00				; 00
B27_01ff:		ora ($96), y	; 11 96
B27_0201:		php				; 08 
B27_0202:	.db $0b
B27_0203:	.db $d2
B27_0204:		txs				; 9a 
B27_0205:	.db $03
B27_0206:	.db $f4
B27_0207:	.db $d3
B27_0208:	.db $9c
B27_0209:	.db $fc
B27_020a:		cmp ($a2), y	; d1 a2
B27_020c:	.db $e7
B27_020d:		sbc ($a4), y	; f1 a4
B27_020f:	.db $e7
B27_0210:		sbc ($a6), y	; f1 a6
B27_0212:		sbc $a8f1		; edf1 a8
B27_0215:		sbc $f1, x		; f5 f1
B27_0217:		tax				; aa 
B27_0218:		sbc $8011, x	; fd 11 80
B27_021b:		;removed
	.db $f0 $11

B27_021d:	.db $82
B27_021e:		sed				; f8 
B27_021f:		ora ($84), y	; 11 84
B27_0221:		.db $00				; 00
B27_0222:		ora ($86), y	; 11 86
B27_0224:		php				; 08 
B27_0225:	.db $0b
B27_0226:		bne B27_01c2 ; d0 9a

B27_0228:	.db $03
B27_0229:		sbc $d1, x		; f5 d1
B27_022b:	.db $9c
B27_022c:		sbc $a2d1, x	; fd d1 a2
B27_022f:	.db $e7
B27_0230:		sbc ($a4), y	; f1 a4
B27_0232:	.db $e7
B27_0233:		sbc ($a6), y	; f1 a6
B27_0235:	.db $ef
B27_0236:		sbc ($ac), y	; f1 ac
B27_0238:	.db $f7
B27_0239:		sbc ($ae), y	; f1 ae
B27_023b:	.db $ff
B27_023c:		ora ($80), y	; 11 80
B27_023e:		;removed
	.db $f0 $11

B27_0240:	.db $82
B27_0241:		sed				; f8 
B27_0242:		ora ($84), y	; 11 84
B27_0244:		.db $00				; 00
B27_0245:		ora ($86), y	; 11 86
B27_0247:		php				; 08 
B27_0248:	.db $0b
B27_0249:		bne B27_01e5 ; d0 9a

B27_024b:	.db $03
B27_024c:		sbc $d1, x		; f5 d1
B27_024e:		;removed
	.db $b0 $fd

B27_0250:		cmp ($a2), y	; d1 a2
B27_0252:		sbc #$f1		; e9 f1
B27_0254:	.db $b2
B27_0255:	.db $e7
B27_0256:		sbc ($b4), y	; f1 b4
B27_0258:	.db $ef
B27_0259:		sbc ($b6), y	; f1 b6
B27_025b:	.db $f7
B27_025c:		sbc ($b8), y	; f1 b8
B27_025e:	.db $ff
B27_025f:		ora ($80), y	; 11 80
B27_0261:		beq B27_0274 ; f0 11

B27_0263:	.db $82
B27_0264:		sed				; f8 
B27_0265:		ora ($84), y	; 11 84
B27_0267:		.db $00				; 00
B27_0268:		ora ($86), y	; 11 86
B27_026a:		php				; 08 
B27_026b:	.db $0c
B27_026c:		bne B27_0228 ; d0 ba

B27_026e:	.db $03
B27_026f:		cpx $d1			; e4 d1
B27_0271:		ldy $d1ec, x	; bc ec d1
B27_0274:		ldx $d1f4, y	; be f4 d1
B27_0277:		cpy #$fc		; c0 fc
B27_0279:		sbc ($c2), y	; f1 c2
B27_027b:		cpx $f1			; e4 f1
B27_027d:		cpy $ec			; c4 ec
B27_027f:		sbc ($c6), y	; f1 c6
B27_0281:	.db $f4
B27_0282:		sbc ($c8), y	; f1 c8
B27_0284:	.db $fc
B27_0285:		ora ($80), y	; 11 80
B27_0287:		beq B27_029a ; f0 11

B27_0289:	.db $82
B27_028a:		sed				; f8 
B27_028b:		ora ($84), y	; 11 84
B27_028d:		.db $00				; 00
B27_028e:		ora ($86), y	; 11 86
B27_0290:		php				; 08 
B27_0291:	.db $0c
B27_0292:		bne B27_024e ; d0 ba

B27_0294:	.db $03
B27_0295:		cpx $d1			; e4 d1
B27_0297:		ldy $d1ec, x	; bc ec d1
B27_029a:		ldx $d1f4, y	; be f4 d1
B27_029d:		cpy #$fc		; c0 fc
B27_029f:		sbc ($c2), y	; f1 c2
B27_02a1:		cpx $f1			; e4 f1
B27_02a3:		cpy $ec			; c4 ec
B27_02a5:		sbc ($ca), y	; f1 ca
B27_02a7:	.db $f4
B27_02a8:		sbc ($cc), y	; f1 cc
B27_02aa:	.db $fc
B27_02ab:		ora ($80), y	; 11 80
B27_02ad:		beq B27_02c0 ; f0 11

B27_02af:	.db $82
B27_02b0:		sed				; f8 
B27_02b1:		ora ($84), y	; 11 84
B27_02b3:		.db $00				; 00
B27_02b4:		ora ($86), y	; 11 86
B27_02b6:		php				; 08 
B27_02b7:	.db $0c
B27_02b8:	.db $d2
B27_02b9:		tsx				; ba 
B27_02ba:	.db $03
B27_02bb:		inx				; e8 
B27_02bc:	.db $d3
B27_02bd:		dec $d3ef		; ce ef d3
B27_02c0:		ldx $d3f7, y	; be f7 d3
B27_02c3:		cpy #$ff		; c0 ff
B27_02c5:	.db $f3
B27_02c6:	.db $c2
B27_02c7:		inx				; e8 
B27_02c8:	.db $f3
B27_02c9:		bne B27_02bb ; d0 f0

B27_02cb:	.db $f3
B27_02cc:	.db $d2
B27_02cd:		sed				; f8 
B27_02ce:	.db $f3
B27_02cf:	.db $d4
B27_02d0:		.db $00				; 00
B27_02d1:		ora ($80), y	; 11 80
B27_02d3:		beq B27_02e6 ; f0 11

B27_02d5:	.db $82
B27_02d6:		sed				; f8 
B27_02d7:		ora ($84), y	; 11 84
B27_02d9:		.db $00				; 00
B27_02da:		ora ($86), y	; 11 86
B27_02dc:		php				; 08 
B27_02dd:		ora #$d0		; 09 d0
B27_02df:		txs				; 9a 
B27_02e0:		ora ($f0, x)	; 01 f0
B27_02e2:		cmp ($9c), y	; d1 9c
B27_02e4:		sed				; f8 
B27_02e5:		inx				; e8 
B27_02e6:		tya				; 98 
B27_02e7:	.db $03
B27_02e8:		inx				; e8 
B27_02e9:		sbc ($9e), y	; f1 9e
B27_02eb:		;removed
	.db $f0 $f1

B27_02ed:		ldy #$f8		; a0 f8
B27_02ef:		ora ($90), y	; 11 90
B27_02f1:		;removed
	.db $f0 $11

B27_02f3:	.db $92
B27_02f4:		sed				; f8 
B27_02f5:		ora ($94), y	; 11 94
B27_02f7:		.db $00				; 00
B27_02f8:		ora ($96), y	; 11 96
B27_02fa:		php				; 08 
B27_02fb:	.db $03
B27_02fc:		beq B27_02e4 ; f0 e6

B27_02fe:	.db $03
B27_02ff:	.db $f4
B27_0300:		sbc ($e8), y	; f1 e8
B27_0302:	.db $fc
B27_0303:		sbc ($ea), y	; f1 ea
B27_0305:	.db $04
B27_0306:	.db $03
B27_0307:		beq B27_02f5 ; f0 ec

B27_0309:	.db $03
B27_030a:	.db $f4
B27_030b:		sbc ($ee), y	; f1 ee
B27_030d:	.db $fc
B27_030e:		sbc ($f0), y	; f1 f0
B27_0310:	.db $04
B27_0311:	.db $04
B27_0312:		beq B27_02fe ; f0 ea

B27_0314:	.db $43
B27_0315:		beq B27_0307 ; f0 f0

B27_0317:	.db $f2
B27_0318:	.db $03
B27_0319:		sed				; f8 
B27_031a:		sbc ($f4), y	; f1 f4
B27_031c:		.db $00				; 00
B27_031d:		sbc ($f0), y	; f1 f0
B27_031f:		php				; 08 
B27_0320:		asl $d0			; 06 d0
B27_0322:	.db $f4
B27_0323:	.db $43
B27_0324:		sed				; f8 
B27_0325:		cmp ($f2), y	; d1 f2
B27_0327:		.db $00				; 00
B27_0328:		sbc ($f0), y	; f1 f0
B27_032a:		beq B27_031c ; f0 f0

B27_032c:		inc $03, x		; f6 03
B27_032e:		sed				; f8 
B27_032f:		sbc ($f8), y	; f1 f8
B27_0331:		.db $00				; 00
B27_0332:		sbc ($ea), y	; f1 ea
B27_0334:		php				; 08 
B27_0335:		php				; 08 
B27_0336:		bcs B27_032a ; b0 f2

B27_0338:	.db $03
B27_0339:		sed				; f8 
B27_033a:		lda ($f4), y	; b1 f4
B27_033c:		.db $00				; 00
B27_033d:		sbc ($f0), y	; f1 f0
B27_033f:		php				; 08 
B27_0340:		bne B27_033a ; d0 f8

B27_0342:	.db $43
B27_0343:		sed				; f8 
B27_0344:		cmp ($f6), y	; d1 f6
B27_0346:		.db $00				; 00
B27_0347:		sbc ($ea), y	; f1 ea
B27_0349:		beq B27_033c ; f0 f1

B27_034b:		sed				; f8 
B27_034c:		sed				; f8 
B27_034d:		sbc ($f6), y	; f1 f6
B27_034f:		.db $00				; 00
B27_0350:	.db $03
B27_0351:		;removed
	.db $f0 $d6

B27_0353:		ora ($f8, x)	; 01 f8
B27_0355:		sbc ($d8), y	; f1 d8
B27_0357:		.db $00				; 00
B27_0358:		sbc ($da), y	; f1 da
B27_035a:		php				; 08 
B27_035b:	.db $02
B27_035c:		beq B27_033a ; f0 dc

B27_035e:		ora ($f8, x)	; 01 f8
B27_0360:		sbc ($de), y	; f1 de
B27_0362:		.db $00				; 00
B27_0363:		ora ($f0, x)	; 01 f0
B27_0365:		cpx #$03		; e0 03
B27_0367:	.db $fc
B27_0368:		ora ($f0, x)	; 01 f0
B27_036a:	.db $e2
B27_036b:	.db $03
B27_036c:	.db $fc
B27_036d:	.db $02
B27_036e:		cpx #$e4		; e0 e4
B27_0370:	.db $03
B27_0371:	.db $fc
B27_0372:		.db $00				; 00
B27_0373:		cpx $83			; e4 83
B27_0375:	.db $fc
B27_0376:		ora $10			; 05 10
B27_0378:		cpx $03			; e4 03
B27_037a:	.db $0c
B27_037b:		ora ($e6), y	; 11 e6
B27_037d:	.db $14
B27_037e:		bpl B27_0344 ; 10 c4

B27_0380:	.db $02
B27_0381:		beq B27_0394 ; f0 11

B27_0383:		dec $f8			; c6 f8
B27_0385:		ora ($c8), y	; 11 c8
B27_0387:		.db $00				; 00
B27_0388:		php				; 08 
B27_0389:		bpl B27_0373 ; 10 e8

B27_038b:	.db $03
B27_038c:		php				; 08 
B27_038d:		ora ($ea), y	; 11 ea
B27_038f:		bpl B27_0381 ; 10 f0

B27_0391:	.db $cc $02 $00
B27_0394:		sbc ($ce), y	; f1 ce
B27_0396:		php				; 08 
B27_0397:		ora ($d0), y	; 11 d0
B27_0399:		;removed
	.db $f0 $11

B27_039b:	.db $d2
B27_039c:		sed				; f8 
B27_039d:		ora ($d4), y	; 11 d4
B27_039f:		.db $00				; 00
B27_03a0:		ora ($d6), y	; 11 d6
B27_03a2:		php				; 08 
B27_03a3:		php				; 08 
B27_03a4:		;removed
	.db $10 $e8

B27_03a6:	.db $03
B27_03a7:		.db $00				; 00
B27_03a8:		ora ($ea), y	; 11 ea
B27_03aa:		php				; 08 
B27_03ab:		beq B27_0385 ; f0 d8

B27_03ad:	.db $02
B27_03ae:		;removed
	.db $f0 $f1

B27_03b0:	.db $da
B27_03b1:		sed				; f8 
B27_03b2:		sbc ($dc), y	; f1 dc
B27_03b4:		.db $00				; 00
B27_03b5:		ora ($de), y	; 11 de
B27_03b7:		;removed
	.db $f0 $11

B27_03b9:		cpx #$f8		; e0 f8
B27_03bb:		ora ($e2), y	; 11 e2
B27_03bd:		.db $00				; 00
B27_03be:	.db $07
B27_03bf:		cpx #$f0		; e0 f0
B27_03c1:	.db $02
B27_03c2:		.db $00				; 00
B27_03c3:		cmp $f180, x	; dd 80 f1
B27_03c6:		sbc ($e6, x)	; e1 e6
B27_03c8:		sbc $e8e1, y	; f9 e1 e8
B27_03cb:		ora ($01, x)	; 01 01
B27_03cd:		nop				; ea 
B27_03ce:		;removed
	.db $f0 $01

B27_03d0:		cpx $01f8		; ec f8 01
B27_03d3:		txa				; 8a 
B27_03d4:		.db $00				; 00
B27_03d5:	.db $07
B27_03d6:		cpx #$fa		; e0 fa
B27_03d8:	.db $02
B27_03d9:		inc $fce1		; ee e1 fc
B27_03dc:		inc $e1, x		; f6 e1
B27_03de:		sty $fe			; 84 fe
B27_03e0:		sbc ($ee), y	; f1 ee
B27_03e2:		inc $01			; e6 01
B27_03e4:		nop				; ea 
B27_03e5:		;removed
	.db $f0 $01

B27_03e7:		cpx $01f8		; ec f8 01
B27_03ea:		txa				; 8a 
B27_03eb:		.db $00				; 00
B27_03ec:		asl a			; 0a
B27_03ed:		sed				; f8 
B27_03ee:	.db $c2
B27_03ef:	.db $43
B27_03f0:		sbc #$f9		; e9 f9
B27_03f2:		cpy #$f1		; c0 f1
B27_03f4:	.db $d2
B27_03f5:	.db $80
B27_03f6:	.db $02
B27_03f7:		sbc ($d3), y	; f1 d3
B27_03f9:	.db $82
B27_03fa:		sbc $84d3, y	; f9 d3 84
B27_03fd:		ora ($f1, x)	; 01 f1
B27_03ff:		ldy $f1f9, x	; bc f9 f1
B27_0402:		ldx $1101, y	; be 01 11
B27_0405:		ldy $f8			; a4 f8
B27_0407:		ora ($a6), y	; 11 a6
B27_0409:		.db $00				; 00
B27_040a:		ora ($a8), y	; 11 a8
B27_040c:		php				; 08 
B27_040d:	.db $0b
B27_040e:		.db $00				; 00
B27_040f:		cpy #$03		; c0 03
B27_0411:		.db $00				; 00
B27_0412:		ora ($c2, x)	; 01 c2
B27_0414:		php				; 08 
B27_0415:	.db $e2
B27_0416:	.db $80
B27_0417:	.db $02
B27_0418:		beq B27_03fd ; f0 e3

B27_041a:	.db $82
B27_041b:		sed				; f8 
B27_041c:	.db $e3
B27_041d:		sty $00			; 84 00
B27_041f:		ora ($9e, x)	; 01 9e
B27_0421:		inx				; e8 
B27_0422:		ora ($a0, x)	; 01 a0
B27_0424:		;removed
	.db $f0 $01

B27_0426:		ldx #$f8		; a2 f8
B27_0428:		and ($b6, x)	; 21 b6
B27_042a:	.db $f3
B27_042b:		and ($b8, x)	; 21 b8
B27_042d:	.db $fb
B27_042e:		and ($ba, x)	; 21 ba
B27_0430:	.db $03
B27_0431:		ora #$e0		; 09 e0
B27_0433:		dex				; ca 
B27_0434:	.db $02
B27_0435:	.db $f4
B27_0436:		sbc ($cc, x)	; e1 cc
B27_0438:	.db $fc
B27_0439:		sbc ($ca, x)	; e1 ca
B27_043b:	.db $04
B27_043c:		ora ($ce, x)	; 01 ce
B27_043e:	.db $f4
B27_043f:		ora ($d4, x)	; 01 d4
B27_0441:	.db $fc
B27_0442:		ora ($ce, x)	; 01 ce
B27_0444:	.db $04
B27_0445:		and ($d0, x)	; 21 d0
B27_0447:	.db $f4
B27_0448:		and ($d2, x)	; 21 d2
B27_044a:	.db $fc
B27_044b:		and ($d0, x)	; 21 d0
B27_044d:	.db $04
B27_044e:		ora #$e0		; 09 e0
B27_0450:		dex				; ca 
B27_0451:	.db $02
B27_0452:	.db $f4
B27_0453:		sbc ($cc, x)	; e1 cc
B27_0455:	.db $fc
B27_0456:		sbc ($ca, x)	; e1 ca
B27_0458:	.db $04
B27_0459:		ora ($ce, x)	; 01 ce
B27_045b:	.db $f4
B27_045c:		ora ($d6, x)	; 01 d6
B27_045e:	.db $fc
B27_045f:		ora ($ce, x)	; 01 ce
B27_0461:	.db $04
B27_0462:		and ($d0, x)	; 21 d0
B27_0464:	.db $f4
B27_0465:		and ($d2, x)	; 21 d2
B27_0467:	.db $fc
B27_0468:		and ($d0, x)	; 21 d0
B27_046a:	.db $04
B27_046b:		ora #$e0		; 09 e0
B27_046d:		dex				; ca 
B27_046e:	.db $02
B27_046f:	.db $f4
B27_0470:		sbc ($cc, x)	; e1 cc
B27_0472:	.db $fc
B27_0473:		sbc ($ca, x)	; e1 ca
B27_0475:	.db $04
B27_0476:		ora ($ce, x)	; 01 ce
B27_0478:	.db $f4
B27_0479:		ora ($d8, x)	; 01 d8
B27_047b:	.db $fc
B27_047c:		ora ($ce, x)	; 01 ce
B27_047e:	.db $04
B27_047f:		and ($d0, x)	; 21 d0
B27_0481:	.db $f4
B27_0482:		and ($d2, x)	; 21 d2
B27_0484:	.db $fc
B27_0485:		and ($d0, x)	; 21 d0
B27_0487:	.db $04
B27_0488:		ora $c0, x		; 15 c0
B27_048a:	.db $80
B27_048b:	.db $02
B27_048c:		inx				; e8 
B27_048d:		cmp ($82, x)	; c1 82
B27_048f:		beq B27_0452 ; f0 c1

B27_0491:		sty $f8			; 84 f8
B27_0493:		cmp ($86, x)	; c1 86
B27_0495:		.db $00				; 00
B27_0496:		cmp ($88, x)	; c1 88
B27_0498:		php				; 08 
B27_0499:		cmp ($8a, x)	; c1 8a
B27_049b:		bpl B27_047e ; 10 e1

B27_049d:		sty $e1e8		; 8c e8 e1
B27_04a0:		stx $e1f0		; 8e f0 e1
B27_04a3:		bcc B27_049d ; 90 f8

B27_04a5:		sbc ($92, x)	; e1 92
B27_04a7:		.db $00				; 00
B27_04a8:		sbc ($94, x)	; e1 94
B27_04aa:		php				; 08 
B27_04ab:		sbc ($96, x)	; e1 96
B27_04ad:		bpl B27_04b0 ; 10 01

B27_04af:		tya				; 98 
B27_04b0:		inx				; e8 
B27_04b1:		ora ($9a, x)	; 01 9a
B27_04b3:		beq B27_04b6 ; f0 01

B27_04b5:	.db $9c
B27_04b6:		sed				; f8 
B27_04b7:		ora ($9e, x)	; 01 9e
B27_04b9:		.db $00				; 00
B27_04ba:		ora ($a0, x)	; 01 a0
B27_04bc:		php				; 08 
B27_04bd:		ora ($a2, x)	; 01 a2
B27_04bf:		bpl B27_04e2 ; 10 21

B27_04c1:		ldy $ee			; a4 ee
B27_04c3:		and ($a6, x)	; 21 a6
B27_04c5:		inc $21, x		; f6 21
B27_04c7:		tay				; a8 
B27_04c8:		inc $c011, x	; fe 11 c0
B27_04cb:		tax				; aa 
B27_04cc:	.db $02
B27_04cd:		;removed
	.db $f0 $c1

B27_04cf:		sty $f8			; 84 f8
B27_04d1:		cmp ($ac, x)	; c1 ac
B27_04d3:		.db $00				; 00
B27_04d4:		cmp ($ae, x)	; c1 ae
B27_04d6:		php				; 08 
B27_04d7:		sbc ($8c, x)	; e1 8c
B27_04d9:		inx				; e8 
B27_04da:		sbc ($8e, x)	; e1 8e
B27_04dc:		beq B27_04bf ; f0 e1

B27_04de:		;removed
	.db $90 $f8

B27_04e0:		sbc ($92, x)	; e1 92
B27_04e2:		.db $00				; 00
B27_04e3:		sbc ($b0, x)	; e1 b0
B27_04e5:		php				; 08 
B27_04e6:		ora ($98, x)	; 01 98
B27_04e8:		inx				; e8 
B27_04e9:		ora ($9a, x)	; 01 9a
B27_04eb:		beq B27_04ee ; f0 01

B27_04ed:	.db $9c
B27_04ee:		sed				; f8 
B27_04ef:		ora ($9e, x)	; 01 9e
B27_04f1:		.db $00				; 00
B27_04f2:		ora ($b2, x)	; 01 b2
B27_04f4:		php				; 08 
B27_04f5:		and ($a4, x)	; 21 a4
B27_04f7:		inc $a621		; ee 21 a6
B27_04fa:		inc $21, x		; f6 21
B27_04fc:		tay				; a8 
B27_04fd:		inc $c010, x	; fe 10 c0
B27_0500:		ldy $02, x		; b4 02
B27_0502:		beq B27_04c5 ; f0 c1

B27_0504:		ldx $f8, y		; b6 f8
B27_0506:		cmp ($b8, x)	; c1 b8
B27_0508:		.db $00				; 00
B27_0509:		sbc ($8c, x)	; e1 8c
B27_050b:		inx				; e8 
B27_050c:		sbc ($8e, x)	; e1 8e
B27_050e:		beq B27_04f1 ; f0 e1

B27_0510:		;removed
	.db $90 $f8

B27_0512:		sbc ($92, x)	; e1 92
B27_0514:		.db $00				; 00
B27_0515:		sbc ($ba, x)	; e1 ba
B27_0517:		php				; 08 
B27_0518:		ora ($98, x)	; 01 98
B27_051a:		inx				; e8 
B27_051b:		ora ($9a, x)	; 01 9a
B27_051d:		beq B27_0520 ; f0 01

B27_051f:	.db $9c
B27_0520:		sed				; f8 
B27_0521:		ora ($9e, x)	; 01 9e
B27_0523:		.db $00				; 00
B27_0524:		ora ($a0, x)	; 01 a0
B27_0526:		php				; 08 
B27_0527:		and ($a4, x)	; 21 a4
B27_0529:		inc $a621		; ee 21 a6
B27_052c:		inc $21, x		; f6 21
B27_052e:		tay				; a8 
B27_052f:		inc $d015, x	; fe 15 d0
B27_0532:	.db $80
B27_0533:	.db $02
B27_0534:		inx				; e8 
B27_0535:		cmp ($82), y	; d1 82
B27_0537:		;removed
	.db $f0 $d1

B27_0539:		sty $f8			; 84 f8
B27_053b:		cmp ($86), y	; d1 86
B27_053d:		.db $00				; 00
B27_053e:		cmp ($88), y	; d1 88
B27_0540:		php				; 08 
B27_0541:		cmp ($8a), y	; d1 8a
B27_0543:		;removed
	.db $10 $f1

B27_0545:		sty $f1e8		; 8c e8 f1
B27_0548:		stx $f1f0		; 8e f0 f1
B27_054b:		bcc B27_0545 ; 90 f8

B27_054d:		sbc ($92), y	; f1 92
B27_054f:		.db $00				; 00
B27_0550:		sbc ($94), y	; f1 94
B27_0552:		php				; 08 
B27_0553:		sbc ($96), y	; f1 96
B27_0555:		;removed
	.db $10 $11

B27_0557:		ldy $11e8, x	; bc e8 11
B27_055a:		ldx $11f0, y	; be f0 11
B27_055d:		cpy #$f8		; c0 f8
B27_055f:		ora ($c2), y	; 11 c2
B27_0561:		.db $00				; 00
B27_0562:		ora ($a0), y	; 11 a0
B27_0564:		php				; 08 
B27_0565:		ora ($a2), y	; 11 a2
B27_0567:		bpl B27_059a ; 10 31

B27_0569:		cpy $f0			; c4 f0
B27_056b:		and ($c6), y	; 31 c6
B27_056d:		sed				; f8 
B27_056e:		and ($c8), y	; 31 c8
B27_0570:		.db $00				; 00
B27_0571:		ora $b4c0		; 0d c0 b4
B27_0574:	.db $02
B27_0575:		;removed
	.db $f0 $c1

B27_0577:		ldx $f8, y		; b6 f8
B27_0579:		cmp ($b8, x)	; c1 b8
B27_057b:		.db $00				; 00
B27_057c:		sbc ($8c, x)	; e1 8c
B27_057e:		inx				; e8 
B27_057f:		sbc ($8e, x)	; e1 8e
B27_0581:		beq B27_0564 ; f0 e1

B27_0583:		;removed
	.db $90 $f8

B27_0585:		sbc ($92, x)	; e1 92
B27_0587:		.db $00				; 00
B27_0588:		sbc ($b4, x)	; e1 b4
B27_058a:		php				; 08 
B27_058b:		ora ($98, x)	; 01 98
B27_058d:		inx				; e8 
B27_058e:		ora ($9a, x)	; 01 9a
B27_0590:		beq B27_0593 ; f0 01

B27_0592:	.db $9c
B27_0593:		sed				; f8 
B27_0594:		ora ($9e, x)	; 01 9e
B27_0596:		.db $00				; 00
B27_0597:		ora ($a0, x)	; 01 a0
B27_0599:		php				; 08 
B27_059a:	.db $02
B27_059b:		bne B27_058d ; d0 f0

B27_059d:		ora ($fc, x)	; 01 fc
B27_059f:		sbc ($f2), y	; f1 f2
B27_05a1:	.db $fc
B27_05a2:	.db $03
B27_05a3:		bne B27_0599 ; d0 f4

B27_05a5:		ora ($fc, x)	; 01 fc
B27_05a7:		sbc ($f6), y	; f1 f6
B27_05a9:		sed				; f8 
B27_05aa:		beq B27_05a2 ; f0 f6

B27_05ac:		eor ($00, x)	; 41 00
B27_05ae:	.db $03
B27_05af:		bne B27_05a9 ; d0 f8

B27_05b1:		ora ($fc, x)	; 01 fc
B27_05b3:		sbc ($fa), y	; f1 fa
B27_05b5:		sed				; f8 
B27_05b6:		;removed
	.db $f0 $fa

B27_05b8:		eor ($00, x)	; 41 00
B27_05ba:	.db $03
B27_05bb:		beq B27_05b5 ; f0 f8

B27_05bd:		sta ($fc, x)	; 81 fc
B27_05bf:		cmp ($fa), y	; d1 fa
B27_05c1:		sed				; f8 
B27_05c2:		;removed
	.db $d0 $fa

B27_05c4:		cmp ($00, x)	; c1 00
B27_05c6:		ora ($f0, x)	; 01 f0
B27_05c8:	.db $fc
B27_05c9:		ora ($fc, x)	; 01 fc
B27_05cb:		asl $d0			; 06 d0
B27_05cd:		cpy #$02		; c0 02
B27_05cf:		inc $c2f1, x	; fe f1 c2
B27_05d2:		;removed
	.db $f0 $f1

B27_05d4:		cpy $f8			; c4 f8
B27_05d6:		sbc ($c6), y	; f1 c6
B27_05d8:		.db $00				; 00
B27_05d9:		ora ($c8), y	; 11 c8
B27_05db:	.db $fb
B27_05dc:		ora ($ca), y	; 11 ca
B27_05de:	.db $03
B27_05df:		ora $d0			; 05 d0
B27_05e1:		cpy #$02		; c0 02
B27_05e3:	.db $ff
B27_05e4:		sbc ($cc), y	; f1 cc
B27_05e6:		sed				; f8 
B27_05e7:		sbc ($ce), y	; f1 ce
B27_05e9:		.db $00				; 00
B27_05ea:		ora ($d0), y	; 11 d0
B27_05ec:		sed				; f8 
B27_05ed:		ora ($d2), y	; 11 d2
B27_05ef:		.db $00				; 00
B27_05f0:		ora $d2			; 05 d2
B27_05f2:		cpy #$02		; c0 02
B27_05f4:	.db $ff
B27_05f5:		sbc ($d4), y	; f1 d4
B27_05f7:		sed				; f8 
B27_05f8:		sbc ($d6), y	; f1 d6
B27_05fa:		.db $00				; 00
B27_05fb:		ora ($d8), y	; 11 d8
B27_05fd:	.db $fc
B27_05fe:		ora ($da), y	; 11 da
B27_0600:	.db $04
B27_0601:	.db $07
B27_0602:		;removed
	.db $d0 $de

B27_0604:	.db $02
B27_0605:		sed				; f8 
B27_0606:		cmp ($dc), y	; d1 dc
B27_0608:		.db $00				; 00
B27_0609:		sbc ($dc, x)	; e1 dc
B27_060b:		beq B27_05fe ; f0 f1

B27_060d:	.db $dc
B27_060e:		sed				; f8 
B27_060f:		sbc ($de), y	; f1 de
B27_0611:		.db $00				; 00
B27_0612:		ora ($c8), y	; 11 c8
B27_0614:	.db $fb
B27_0615:		ora ($ca), y	; 11 ca
B27_0617:	.db $03
B27_0618:		asl $f0			; 06 f0
B27_061a:	.db $dc
B27_061b:	.db $82
B27_061c:		sed				; f8 
B27_061d:		sbc ($dc), y	; f1 dc
B27_061f:		.db $00				; 00
B27_0620:		sbc ($de), y	; f1 de
B27_0622:		php				; 08 
B27_0623:		ora ($de, x)	; 01 de
B27_0625:		;removed
	.db $f0 $11

B27_0627:		iny				; c8 
B27_0628:	.db $fb
B27_0629:		ora ($ca), y	; 11 ca
B27_062b:	.db $03
B27_062c:	.db $04
B27_062d:		bpl B27_060d ; 10 de

B27_062f:	.db $02
B27_0630:		;removed
	.db $f0 $11

B27_0632:	.db $d4
B27_0633:		sed				; f8 
B27_0634:		ora ($d6), y	; 11 d6
B27_0636:		.db $00				; 00
B27_0637:		ora ($dc), y	; 11 dc
B27_0639:		php				; 08 
B27_063a:	.db $04
B27_063b:		bpl B27_061d ; 10 e0

B27_063d:	.db $02
B27_063e:		beq B27_0651 ; f0 11

B27_0640:	.db $e2
B27_0641:		sed				; f8 
B27_0642:		;removed
	.db $10 $e2

B27_0644:		eor ($00, x)	; 41 00
B27_0646:		ora ($e0), y	; 11 e0
B27_0648:		php				; 08 
B27_0649:	.db $02
B27_064a:		beq B27_0636 ; f0 ea

B27_064c:	.db $02
B27_064d:		sed				; f8 
B27_064e:		sbc ($ec), y	; f1 ec
B27_0650:		.db $00				; 00
B27_0651:	.db $02
B27_0652:		beq B27_0642 ; f0 ee

B27_0654:	.db $02
B27_0655:		sed				; f8 
B27_0656:		beq B27_0644 ; f0 ec

B27_0658:	.db $82
B27_0659:		.db $00				; 00
B27_065a:		ora $d0			; 05 d0
B27_065c:		ldx $01, y		; b6 01
B27_065e:		inx				; e8 
B27_065f:		cpx #$ae		; e0 ae
B27_0661:	.db $02
B27_0662:		cpx $e1			; e4 e1
B27_0664:		bcs B27_0652 ; b0 ec

B27_0666:		sbc ($b2), y	; f1 b2
B27_0668:	.db $f4
B27_0669:		ora ($b4), y	; 11 b4
B27_066b:	.db $f4
B27_066c:		php				; 08 
B27_066d:	.db $d2
B27_066e:		dec $01			; c6 01
B27_0670:		sbc $b8e0, x	; fd e0 b8
B27_0673:	.db $02
B27_0674:		;removed
	.db $f0 $e1

B27_0676:		tsx				; ba 
B27_0677:		sed				; f8 
B27_0678:		sbc ($bc, x)	; e1 bc
B27_067a:		.db $00				; 00
B27_067b:		ora ($be, x)	; 01 be
B27_067d:	.db $f4
B27_067e:		ora ($c0, x)	; 01 c0
B27_0680:	.db $fc
B27_0681:		ora ($c2), y	; 11 c2
B27_0683:	.db $f4
B27_0684:		ora ($c4), y	; 11 c4
B27_0686:	.db $fc
B27_0687:		asl a			; 0a
B27_0688:		dec $01ac		; ce ac 01
B27_068b:	.db $fc
B27_068c:		bne B27_060e ; d0 80

B27_068e:	.db $02
B27_068f:	.db $f4
B27_0690:		cmp ($82), y	; d1 82
B27_0692:	.db $fc
B27_0693:		cmp ($84), y	; d1 84
B27_0695:	.db $04
B27_0696:		sbc ($86), y	; f1 86
B27_0698:	.db $f4
B27_0699:		sbc ($88), y	; f1 88
B27_069b:	.db $fc
B27_069c:		sbc ($8a), y	; f1 8a
B27_069e:	.db $04
B27_069f:		ora ($8c), y	; 11 8c
B27_06a1:	.db $f4
B27_06a2:		ora ($8e), y	; 11 8e
B27_06a4:	.db $fc
B27_06a5:		ora ($90), y	; 11 90
B27_06a7:	.db $04
B27_06a8:		asl a			; 0a
B27_06a9:		dec $01ac		; ce ac 01
B27_06ac:	.db $fc
B27_06ad:		bne B27_062f ; d0 80

B27_06af:	.db $02
B27_06b0:	.db $f4
B27_06b1:		cmp ($92), y	; d1 92
B27_06b3:	.db $fc
B27_06b4:		cmp ($84), y	; d1 84
B27_06b6:	.db $04
B27_06b7:		sbc ($86), y	; f1 86
B27_06b9:	.db $f4
B27_06ba:		sbc ($94), y	; f1 94
B27_06bc:	.db $fc
B27_06bd:		sbc ($8a), y	; f1 8a
B27_06bf:	.db $04
B27_06c0:		ora ($8c), y	; 11 8c
B27_06c2:	.db $f4
B27_06c3:		ora ($96), y	; 11 96
B27_06c5:	.db $fc
B27_06c6:		ora ($98), y	; 11 98
B27_06c8:	.db $04
B27_06c9:		asl $acce		; 0e ce ac
B27_06cc:		ora ($fc, x)	; 01 fc
B27_06ce:		bne B27_0650 ; d0 80

B27_06d0:	.db $02
B27_06d1:	.db $f4
B27_06d2:		cmp ($92), y	; d1 92
B27_06d4:	.db $fc
B27_06d5:		cmp ($9c), y	; d1 9c
B27_06d7:	.db $04
B27_06d8:		sbc ($86), y	; f1 86
B27_06da:	.db $f4
B27_06db:		sbc ($a0), y	; f1 a0
B27_06dd:	.db $fc
B27_06de:		sbc ($a2), y	; f1 a2
B27_06e0:	.db $04
B27_06e1:		ora ($8c), y	; 11 8c
B27_06e3:	.db $f4
B27_06e4:		ora ($a6), y	; 11 a6
B27_06e6:	.db $fc
B27_06e7:		ora ($a8), y	; 11 a8
B27_06e9:	.db $04
B27_06ea:		lda ($9a), y	; b1 9a
B27_06ec:	.db $04
B27_06ed:		cmp ($9e), y	; d1 9e
B27_06ef:	.db $04
B27_06f0:		sbc ($a4), y	; f1 a4
B27_06f2:	.db $04
B27_06f3:		ora ($aa), y	; 11 aa
B27_06f5:	.db $04
B27_06f6:	.db $02
B27_06f7:		;removed
	.db $f0 $c8

B27_06f9:	.db $03
B27_06fa:		sed				; f8 
B27_06fb:		sbc ($ca), y	; f1 ca
B27_06fd:		.db $00				; 00
B27_06fe:	.db $02
B27_06ff:		beq B27_06e1 ; f0 e0

B27_0701:	.db $03
B27_0702:		sed				; f8 
B27_0703:		sbc ($e2), y	; f1 e2
B27_0705:		.db $00				; 00
B27_0706:	.db $03
B27_0707:		bne B27_06ed ; d0 e4

B27_0709:	.db $03
B27_070a:	.db $fc
B27_070b:		sbc ($e6), y	; f1 e6
B27_070d:		sed				; f8 
B27_070e:		beq B27_06f6 ; f0 e6

B27_0710:	.db $c3
B27_0711:		.db $00				; 00
B27_0712:	.db $07
B27_0713:		bcc B27_06f9 ; 90 e4

B27_0715:	.db $43
B27_0716:	.db $fc
B27_0717:		bcs B27_06ff ; b0 e6

B27_0719:	.db $03
B27_071a:		sed				; f8 
B27_071b:		cmp ($e8), y	; d1 e8
B27_071d:		sed				; f8 
B27_071e:		ora ($ea), y	; 11 ea
B27_0720:		sed				; f8 
B27_0721:		bcs B27_0709 ; b0 e6

B27_0723:	.db $c3
B27_0724:		.db $00				; 00
B27_0725:		cmp ($e8), y	; d1 e8
B27_0727:		.db $00				; 00
B27_0728:		ora ($ea), y	; 11 ea
B27_072a:		.db $00				; 00
B27_072b:	.db $0b
B27_072c:		bcs B27_0712 ; b0 e4

B27_072e:	.db $03
B27_072f:	.db $fc
B27_0730:		cmp ($e6), y	; d1 e6
B27_0732:		sed				; f8 
B27_0733:		sbc ($e8), y	; f1 e8
B27_0735:		sed				; f8 
B27_0736:		ora ($ea), y	; 11 ea
B27_0738:		sed				; f8 
B27_0739:		and ($ea), y	; 31 ea
B27_073b:		sed				; f8 
B27_073c:		eor ($ea), y	; 51 ea
B27_073e:		sed				; f8 
B27_073f:		bne B27_0727 ; d0 e6

B27_0741:	.db $c3
B27_0742:		.db $00				; 00
B27_0743:		sbc ($e8), y	; f1 e8
B27_0745:		.db $00				; 00
B27_0746:		ora ($ea), y	; 11 ea
B27_0748:		.db $00				; 00
B27_0749:		and ($ea), y	; 31 ea
B27_074b:		.db $00				; 00
B27_074c:		eor ($ea), y	; 51 ea
B27_074e:		.db $00				; 00
B27_074f:		ora $e490		; 0d 90 e4
B27_0752:	.db $03
B27_0753:	.db $fc
B27_0754:		lda ($e6), y	; b1 e6
B27_0756:		sed				; f8 
B27_0757:		cmp ($e8), y	; d1 e8
B27_0759:		sed				; f8 
B27_075a:		sbc ($e8), y	; f1 e8
B27_075c:		sed				; f8 
B27_075d:		ora ($ea), y	; 11 ea
B27_075f:		sed				; f8 
B27_0760:		and ($ea), y	; 31 ea
B27_0762:		sed				; f8 
B27_0763:		eor ($ea), y	; 51 ea
B27_0765:		sed				; f8 
B27_0766:		bcs B27_074e ; b0 e6

B27_0768:	.db $c3
B27_0769:		.db $00				; 00
B27_076a:		cmp ($e8), y	; d1 e8
B27_076c:		.db $00				; 00
B27_076d:		sbc ($e8), y	; f1 e8
B27_076f:		.db $00				; 00
B27_0770:		ora ($ea), y	; 11 ea
B27_0772:		.db $00				; 00
B27_0773:		and ($ea), y	; 31 ea
B27_0775:		.db $00				; 00
B27_0776:		eor ($ea), y	; 51 ea
B27_0778:		.db $00				; 00
B27_0779:		ora ($f0, x)	; 01 f0
B27_077b:		cpy $fc03		; cc 03 fc
B27_077e:	.db $02
B27_077f:		bne B27_074f ; d0 ce

B27_0781:	.db $03
B27_0782:	.db $fc
B27_0783:		sbc ($d0), y	; f1 d0
B27_0785:	.db $fc
B27_0786:	.db $03
B27_0787:		bcs B27_0757 ; b0 ce

B27_0789:	.db $03
B27_078a:	.db $fc
B27_078b:		cmp ($d0), y	; d1 d0
B27_078d:	.db $fc
B27_078e:		sbc ($d2), y	; f1 d2
B27_0790:	.db $fc
B27_0791:	.db $04
B27_0792:		bcc B27_0762 ; 90 ce

B27_0794:	.db $03
B27_0795:	.db $fc
B27_0796:		lda ($d0), y	; b1 d0
B27_0798:	.db $fc
B27_0799:		cmp ($d2), y	; d1 d2
B27_079b:	.db $fc
B27_079c:		sbc ($d4), y	; f1 d4
B27_079e:	.db $fc
B27_079f:		;removed
	.db $10 $c0

B27_07a1:	.db $80
B27_07a2:	.db $02
B27_07a3:		sed				; f8 
B27_07a4:		cmp ($82, x)	; c1 82
B27_07a6:		.db $00				; 00
B27_07a7:		cmp ($84, x)	; c1 84
B27_07a9:		php				; 08 
B27_07aa:		sbc ($8a, x)	; e1 8a
B27_07ac:		;removed
	.db $f0 $e1

B27_07ae:		sty $e1f8		; 8c f8 e1
B27_07b1:		stx $e100		; 8e 00 e1
B27_07b4:		bcc B27_07be ; 90 08

B27_07b6:		ora ($92, x)	; 01 92
B27_07b8:		;removed
	.db $f0 $01

B27_07ba:		sty $f8, x		; 94 f8
B27_07bc:		ora ($96, x)	; 01 96
B27_07be:		.db $00				; 00
B27_07bf:		ora ($98, x)	; 01 98
B27_07c1:		php				; 08 
B27_07c2:		and ($9a, x)	; 21 9a
B27_07c4:		sbc $21, x		; f5 21
B27_07c6:	.db $9c
B27_07c7:		sbc $9e21, x	; fd 21 9e
B27_07ca:	.db $fb
B27_07cb:	.db $c2
B27_07cc:		stx $01			; 86 01
B27_07ce:		;removed
	.db $10 $cd

B27_07d0:		dey				; 88 
B27_07d1:		clc				; 18 
B27_07d2:		bpl B27_0794 ; 10 c0

B27_07d4:	.db $80
B27_07d5:	.db $02
B27_07d6:		sed				; f8 
B27_07d7:		cmp ($82, x)	; c1 82
B27_07d9:		.db $00				; 00
B27_07da:		cmp ($84, x)	; c1 84
B27_07dc:		php				; 08 
B27_07dd:		sbc ($a0, x)	; e1 a0
B27_07df:		beq B27_07c2 ; f0 e1

B27_07e1:		ldx #$f8		; a2 f8
B27_07e3:		sbc ($a4, x)	; e1 a4
B27_07e5:		.db $00				; 00
B27_07e6:		sbc ($a6, x)	; e1 a6
B27_07e8:		php				; 08 
B27_07e9:		ora ($a8, x)	; 01 a8
B27_07eb:		beq B27_07ee ; f0 01

B27_07ed:		tax				; aa 
B27_07ee:		sed				; f8 
B27_07ef:		ora ($ac, x)	; 01 ac
B27_07f1:		.db $00				; 00
B27_07f2:		ora ($ae, x)	; 01 ae
B27_07f4:		php				; 08 
B27_07f5:		and ($b0, x)	; 21 b0
B27_07f7:		beq B27_081a ; f0 21

B27_07f9:	.db $b2
B27_07fa:		sed				; f8 
B27_07fb:		and ($b4, x)	; 21 b4
B27_07fd:		.db $00				; 00
B27_07fe:	.db $c2
B27_07ff:		stx $01			; 86 01
B27_0801:		bpl B27_07d0 ; 10 cd

B27_0803:		dey				; 88 
B27_0804:		clc				; 18 
B27_0805:	.db $12
B27_0806:		cpy #$80		; c0 80
B27_0808:	.db $02
B27_0809:		sed				; f8 
B27_080a:		cmp ($82, x)	; c1 82
B27_080c:		.db $00				; 00
B27_080d:		cmp ($84, x)	; c1 84
B27_080f:		php				; 08 
B27_0810:		sbc $e8b6, x	; fd b6 e8
B27_0813:		sbc ($ba, x)	; e1 ba
B27_0815:		;removed
	.db $f0 $e1

B27_0817:		ldy $e1f8, x	; bc f8 e1
B27_081a:		ldx $e100, y	; be 00 e1
B27_081d:		cpy #$08		; c0 08
B27_081f:		ora $e8b8, x	; 1d b8 e8
B27_0822:		ora ($c2, x)	; 01 c2
B27_0824:		;removed
	.db $f0 $01

B27_0826:		cpy $f8			; c4 f8
B27_0828:		ora ($c6, x)	; 01 c6
B27_082a:		.db $00				; 00
B27_082b:		ora ($c8, x)	; 01 c8
B27_082d:		php				; 08 
B27_082e:		and ($ca, x)	; 21 ca
B27_0830:		;removed
	.db $f0 $21

B27_0832:		cpy $21f8		; cc f8 21
B27_0835:		dec $c200		; ce 00 c2
B27_0838:		stx $01			; 86 01
B27_083a:		bpl B27_0809 ; 10 cd

B27_083c:		dey				; 88 
B27_083d:		clc				; 18 
B27_083e:		;removed
	.db $10 $c0

B27_0840:	.db $80
B27_0841:	.db $02
B27_0842:		sed				; f8 
B27_0843:		cmp ($82, x)	; c1 82
B27_0845:		.db $00				; 00
B27_0846:		cmp ($d0, x)	; c1 d0
B27_0848:		php				; 08 
B27_0849:		sbc ($d2, x)	; e1 d2
B27_084b:		beq B27_082e ; f0 e1

B27_084d:	.db $d4
B27_084e:		sed				; f8 
B27_084f:		sbc ($d6, x)	; e1 d6
B27_0851:		.db $00				; 00
B27_0852:		sbc ($90, x)	; e1 90
B27_0854:		php				; 08 
B27_0855:		ora ($d8, x)	; 01 d8
B27_0857:		beq B27_085a ; f0 01

B27_0859:	.db $da
B27_085a:		sed				; f8 
B27_085b:		ora ($96, x)	; 01 96
B27_085d:		.db $00				; 00
B27_085e:		ora ($98, x)	; 01 98
B27_0860:		php				; 08 
B27_0861:		and ($e0, x)	; 21 e0
B27_0863:		sbc $21, x		; f5 21
B27_0865:	.db $9c
B27_0866:		sbc $9e21, x	; fd 21 9e
B27_0869:		ora $20			; 05 20
B27_086b:	.db $dc
B27_086c:		ora ($e5, x)	; 01 e5
B27_086e:		and ($de, x)	; 21 de
B27_0870:		sbc $c011		; ed11 c0
B27_0873:	.db $80
B27_0874:	.db $02
B27_0875:		sed				; f8 
B27_0876:		cmp ($82, x)	; c1 82
B27_0878:		.db $00				; 00
B27_0879:		cmp ($d0, x)	; c1 d0
B27_087b:		php				; 08 
B27_087c:		sbc ($e2, x)	; e1 e2
B27_087e:		cld				; d8 
B27_087f:		sbc ($e4, x)	; e1 e4
B27_0881:		cpx #$e9		; e0 e9
B27_0883:		inc $e8			; e6 e8
B27_0885:		sbc ($e8, x)	; e1 e8
B27_0887:		;removed
	.db $f0 $e1

B27_0889:		nop				; ea 
B27_088a:		sed				; f8 
B27_088b:		sbc ($d6, x)	; e1 d6
B27_088d:		.db $00				; 00
B27_088e:		sbc ($a6, x)	; e1 a6
B27_0890:		php				; 08 
B27_0891:		ora ($ec, x)	; 01 ec
B27_0893:		;removed
	.db $f0 $01

B27_0895:		inc $01f8		; ee f8 01
B27_0898:		ldy $0100		; ac 00 01
B27_089b:		ldx $2108		; ae 08 21
B27_089e:		bcs B27_0890 ; b0 f0

B27_08a0:		and ($b2, x)	; 21 b2
B27_08a2:		sed				; f8 
B27_08a3:		and ($b4, x)	; 21 b4
B27_08a5:		.db $00				; 00
B27_08a6:	.db $02
B27_08a7:		;removed
	.db $f0 $f6

B27_08a9:	.db $c3
B27_08aa:		sed				; f8 
B27_08ab:		sbc ($f4), y	; f1 f4
B27_08ad:		.db $00				; 00
B27_08ae:	.db $02
B27_08af:		;removed
	.db $f0 $f0

B27_08b1:	.db $03
B27_08b2:		sed				; f8 
B27_08b3:		sbc ($f2), y	; f1 f2
B27_08b5:		.db $00				; 00
B27_08b6:	.db $02
B27_08b7:		beq B27_08ad ; f0 f4

B27_08b9:	.db $03
B27_08ba:		sed				; f8 
B27_08bb:		sbc ($f6), y	; f1 f6
B27_08bd:		.db $00				; 00
B27_08be:	.db $02
B27_08bf:		beq B27_08b3 ; f0 f2

B27_08c1:	.db $c3
B27_08c2:		sed				; f8 
B27_08c3:		sbc ($f0), y	; f1 f0
B27_08c5:		.db $00				; 00
B27_08c6:	.db $03
B27_08c7:		cpx #$80		; e0 80
B27_08c9:	.db $02
B27_08ca:		sed				; f8 
B27_08cb:		ora ($82, x)	; 01 82
B27_08cd:		sed				; f8 
B27_08ce:		ora ($84, x)	; 01 84
B27_08d0:		.db $00				; 00
B27_08d1:	.db $03
B27_08d2:		cpx #$a0		; e0 a0
B27_08d4:	.db $02
B27_08d5:		sed				; f8 
B27_08d6:		ora ($a2, x)	; 01 a2
B27_08d8:		sed				; f8 
B27_08d9:		ora ($a4, x)	; 01 a4
B27_08db:		.db $00				; 00
B27_08dc:	.db $03
B27_08dd:		cpx #$c0		; e0 c0
B27_08df:		ora ($f8, x)	; 01 f8
B27_08e1:		ora ($c2, x)	; 01 c2
B27_08e3:		sed				; f8 
B27_08e4:		ora ($c4, x)	; 01 c4
B27_08e6:		.db $00				; 00
B27_08e7:	.db $03
B27_08e8:		cpx #$86		; e0 86
B27_08ea:	.db $02
B27_08eb:		sed				; f8 
B27_08ec:		ora ($88, x)	; 01 88
B27_08ee:		sed				; f8 
B27_08ef:		ora ($8a, x)	; 01 8a
B27_08f1:		.db $00				; 00
B27_08f2:	.db $03
B27_08f3:		cpx #$a6		; e0 a6
B27_08f5:	.db $02
B27_08f6:		sed				; f8 
B27_08f7:		ora ($a8, x)	; 01 a8
B27_08f9:		sed				; f8 
B27_08fa:		ora ($aa, x)	; 01 aa
B27_08fc:		.db $00				; 00
B27_08fd:	.db $03
B27_08fe:		cpx #$c6		; e0 c6
B27_0900:		ora ($f8, x)	; 01 f8
B27_0902:		ora ($c8, x)	; 01 c8
B27_0904:		sed				; f8 
B27_0905:		ora ($ca, x)	; 01 ca
B27_0907:		.db $00				; 00
B27_0908:	.db $04
B27_0909:		cpx #$8c		; e0 8c
B27_090b:	.db $02
B27_090c:		sed				; f8 
B27_090d:		sbc ($90, x)	; e1 90
B27_090f:		.db $00				; 00
B27_0910:		ora ($8e, x)	; 01 8e
B27_0912:		sed				; f8 
B27_0913:		ora ($92, x)	; 01 92
B27_0915:		.db $00				; 00
B27_0916:	.db $04
B27_0917:		cpx #$de		; e0 de
B27_0919:	.db $02
B27_091a:		sed				; f8 
B27_091b:		sbc ($b0, x)	; e1 b0
B27_091d:		.db $00				; 00
B27_091e:		ora ($ae, x)	; 01 ae
B27_0920:		sed				; f8 
B27_0921:		ora ($b2, x)	; 01 b2
B27_0923:		.db $00				; 00
B27_0924:	.db $04
B27_0925:		cpx #$cc		; e0 cc
B27_0927:		ora ($f8, x)	; 01 f8
B27_0929:		sbc ($ce, x)	; e1 ce
B27_092b:		.db $00				; 00
B27_092c:		ora ($8e, x)	; 01 8e
B27_092e:		sed				; f8 
B27_092f:		ora ($92, x)	; 01 92
B27_0931:		.db $00				; 00
B27_0932:	.db $04
B27_0933:		beq B27_08c9 ; f0 94

B27_0935:	.db $03
B27_0936:		beq B27_0929 ; f0 f1

B27_0938:		stx $f8, y		; 96 f8
B27_093a:		beq B27_08d2 ; f0 96

B27_093c:	.db $43
B27_093d:		.db $00				; 00
B27_093e:		sbc ($94), y	; f1 94
B27_0940:		php				; 08 
B27_0941:	.db $04
B27_0942:		beq B27_08dc ; f0 98

B27_0944:	.db $03
B27_0945:		beq B27_0938 ; f0 f1

B27_0947:		txs				; 9a 
B27_0948:		sed				; f8 
B27_0949:		;removed
	.db $f0 $9a

B27_094b:	.db $43
B27_094c:		.db $00				; 00
B27_094d:		sbc ($98), y	; f1 98
B27_094f:		php				; 08 
B27_0950:		ora ($f0, x)	; 01 f0
B27_0952:	.db $9c
B27_0953:	.db $03
B27_0954:	.db $fc
B27_0955:	.db $02
B27_0956:		bne B27_090c ; d0 b4

B27_0958:	.db $03
B27_0959:	.db $fc
B27_095a:		sbc ($b6), y	; f1 b6
B27_095c:	.db $fc
B27_095d:	.db $02
B27_095e:		;removed
	.db $f0 $b8

B27_0960:	.db $03
B27_0961:		sed				; f8 
B27_0962:		sbc ($ba), y	; f1 ba
B27_0964:		.db $00				; 00
B27_0965:	.db $02
B27_0966:		beq B27_0924 ; f0 bc

B27_0968:	.db $03
B27_0969:	.db $f4
B27_096a:		sbc ($be), y	; f1 be
B27_096c:	.db $fc
B27_096d:		sbc ($d0), y	; f1 d0
B27_096f:	.db $04
B27_0970:	.db $02
B27_0971:		beq B27_0945 ; f0 d2

B27_0973:	.db $03
B27_0974:	.db $f4
B27_0975:		sbc ($d4), y	; f1 d4
B27_0977:	.db $fc
B27_0978:		beq B27_094c ; f0 d2

B27_097a:	.db $43
B27_097b:	.db $04
B27_097c:		ora ($f0, x)	; 01 f0
B27_097e:	.db $ec $01 $00
B27_0981:	.db $02
B27_0982:		;removed
	.db $f0 $ee

B27_0984:		ora ($f8, x)	; 01 f8
B27_0986:		sbc ($f0), y	; f1 f0
B27_0988:		.db $00				; 00
B27_0989:	.db $02
B27_098a:		beq B27_0962 ; f0 d6

B27_098c:		ora ($f8, x)	; 01 f8
B27_098e:		beq B27_0966 ; f0 d6

B27_0990:		eor ($00, x)	; 41 00
B27_0992:	.db $02
B27_0993:		beq B27_096d ; f0 d8

B27_0995:		ora ($f8, x)	; 01 f8
B27_0997:		beq B27_0971 ; f0 d8

B27_0999:		eor ($00, x)	; 41 00
B27_099b:		ora ($f0, x)	; 01 f0
B27_099d:	.db $f4
B27_099e:		sta ($f8, x)	; 81 f8
B27_09a0:		ora ($f0, x)	; 01 f0
B27_09a2:	.db $f4
B27_09a3:		ora ($fc, x)	; 01 fc
B27_09a5:		ora ($f0, x)	; 01 f0
B27_09a7:		inc $81, x		; f6 81
B27_09a9:	.db $fc
B27_09aa:		ora ($f0, x)	; 01 f0
B27_09ac:		inc $01, x		; f6 01
B27_09ae:	.db $fc
B27_09af:		ora ($f0, x)	; 01 f0
B27_09b1:		sed				; f8 
B27_09b2:		sta ($f8, x)	; 81 f8
B27_09b4:		ora ($f0, x)	; 01 f0
B27_09b6:		sed				; f8 
B27_09b7:		ora ($f8, x)	; 01 f8
B27_09b9:		ora ($f0, x)	; 01 f0
B27_09bb:	.db $fa
B27_09bc:		sta ($f8, x)	; 81 f8
B27_09be:		ora ($f0, x)	; 01 f0
B27_09c0:	.db $fa
B27_09c1:		ora ($f8, x)	; 01 f8
B27_09c3:		ora ($f0, x)	; 01 f0
B27_09c5:	.db $fc
B27_09c6:		ora ($f8, x)	; 01 f8
B27_09c8:		ora ($f0, x)	; 01 f0
B27_09ca:		ldy $fc01		; ac 01 fc
B27_09cd:		ora ($f0, x)	; 01 f0
B27_09cf:		ldy $fc01		; ac 01 fc
B27_09d2:		ora ($f0, x)	; 01 f0
B27_09d4:		sty $01			; 84 01
B27_09d6:	.db $fc
B27_09d7:		ora ($f0, x)	; 01 f0
B27_09d9:		txa				; 8a 
B27_09da:		ora ($fc, x)	; 01 fc
B27_09dc:		ora ($f0, x)	; 01 f0
B27_09de:		bcc B27_09e1 ; 90 01

B27_09e0:	.db $fc
B27_09e1:		ora ($f0, x)	; 01 f0
B27_09e3:	.db $80
B27_09e4:		ora ($fc, x)	; 01 fc
B27_09e6:		ora ($f0, x)	; 01 f0
B27_09e8:		stx $01			; 86 01
B27_09ea:	.db $fc
B27_09eb:		ora ($f0, x)	; 01 f0
B27_09ed:		sty $fc01		; 8c 01 fc
B27_09f0:		asl $da			; 06 da
B27_09f2:		iny				; c8 
B27_09f3:	.db $43
B27_09f4:		ora ($f9, x)	; 01 f9
B27_09f6:	.db $d4
B27_09f7:		sbc ($fc), y	; f1 fc
B27_09f9:		cpx $0183		; ec 83 01
B27_09fc:		inx				; e8 
B27_09fd:		dec $03, x		; d6 03
B27_09ff:		sbc $c809, y	; f9 09 c8
B27_0a02:		sbc $c813, y	; f9 13 c8
B27_0a05:		ora #$03		; 09 03
B27_0a07:		cpx #$e8		; e0 e8
B27_0a09:	.db $03
B27_0a0a:		.db $00				; 00
B27_0a0b:		ora ($e4, x)	; 01 e4
B27_0a0d:		sed				; f8 
B27_0a0e:		ora ($e6, x)	; 01 e6
B27_0a10:		.db $00				; 00
B27_0a11:	.db $03
B27_0a12:	.db $f4
B27_0a13:	.db $d4
B27_0a14:	.db $03
B27_0a15:		.db $00				; 00
B27_0a16:	.db $fb
B27_0a17:		cld				; d8 
B27_0a18:		sed				; f8 
B27_0a19:	.db $fa
B27_0a1a:	.db $c2
B27_0a1b:	.db $c3
B27_0a1c:		.db $00				; 00
B27_0a1d:		ora #$d8		; 09 d8
B27_0a1f:		dec $c3			; c6 c3
B27_0a21:		sbc ($df), y	; f1 df
B27_0a23:		dec $f9			; c6 f9
B27_0a25:		cpx #$ce		; e0 ce
B27_0a27:	.db $43
B27_0a28:		ora ($df, x)	; 01 df
B27_0a2a:		dec $09			; c6 09
B27_0a2c:		ora ($c2, x)	; 01 c2
B27_0a2e:		sbc $daee, y	; f9 ee da
B27_0a31:	.db $03
B27_0a32:		sbc #$ff		; e9 ff
B27_0a34:		dec $f1			; c6 f1
B27_0a36:	.db $ff
B27_0a37:		iny				; c8 
B27_0a38:		ora ($01, x)	; 01 01
B27_0a3a:	.db $dc
B27_0a3b:		ora #$03		; 09 03
B27_0a3d:		inc $03c8		; ee c8 03
B27_0a40:		inc $ff, x		; f6 ff
B27_0a42:	.db $c2
B27_0a43:		asl $e2			; 06 e2
B27_0a45:	.db $c2
B27_0a46:	.db $c3
B27_0a47:		inc $d00c, x	; fe 0c d0
B27_0a4a:		sty $03			; 84 03
B27_0a4c:		sed				; f8 
B27_0a4d:		cmp ($86), y	; d1 86
B27_0a4f:		.db $00				; 00
B27_0a50:		sbc ($82, x)	; e1 82
B27_0a52:		beq B27_0a45 ; f0 f1

B27_0a54:		stx $f1f8		; 8e f8 f1
B27_0a57:		bcc B27_0a59 ; 90 00

B27_0a59:		sbc ($88, x)	; e1 88
B27_0a5b:		php				; 08 
B27_0a5c:	.db $ef
B27_0a5d:		txa				; 8a 
B27_0a5e:		bpl B27_0a5b ; 10 fb

B27_0a60:	.db $80
B27_0a61:		inx				; e8 
B27_0a62:		ora ($8c, x)	; 01 8c
B27_0a64:		;removed
	.db $f0 $11

B27_0a66:		sty $f8, x		; 94 f8
B27_0a68:		ora ($96), y	; 11 96
B27_0a6a:		.db $00				; 00
B27_0a6b:		ora ($92, x)	; 01 92
B27_0a6d:		php				; 08 
B27_0a6e:	.db $0c
B27_0a6f:		bne B27_0a11 ; d0 a0

B27_0a71:	.db $03
B27_0a72:		sed				; f8 
B27_0a73:		cmp ($a2), y	; d1 a2
B27_0a75:		.db $00				; 00
B27_0a76:		sbc ($9a, x)	; e1 9a
B27_0a78:		beq B27_0a6b ; f0 f1

B27_0a7a:		ldy $f1f8, x	; bc f8 f1
B27_0a7d:		ldx $e100, y	; be 00 e1
B27_0a80:		ldy $08			; a4 08
B27_0a82:	.db $ef
B27_0a83:		txa				; 8a 
B27_0a84:		;removed
	.db $10 $fb

B27_0a86:		tya				; 98 
B27_0a87:		inx				; e8 
B27_0a88:		ora ($a6, x)	; 01 a6
B27_0a8a:		;removed
	.db $f0 $11

B27_0a8c:		tay				; a8 
B27_0a8d:		sed				; f8 
B27_0a8e:		ora ($96), y	; 11 96
B27_0a90:		.db $00				; 00
B27_0a91:		ora ($92, x)	; 01 92
B27_0a93:		php				; 08 
B27_0a94:	.db $02
B27_0a95:		dec $43e8, x	; de e8 43
B27_0a98:		inc $eafe, x	; fe fe ea
B27_0a9b:	.db $03
B27_0a9c:		sbc $e804, x	; fd 04 e8
B27_0a9f:	.db $e2
B27_0aa0:	.db $03
B27_0aa1:	.db $ef
B27_0aa2:		sbc ($ca), y	; f1 ca
B27_0aa4:	.db $f7
B27_0aa5:		sbc ($e0), y	; f1 e0
B27_0aa7:	.db $ff
B27_0aa8:		ora #$ca		; 09 ca
B27_0aaa:	.db $07
B27_0aab:		asl $ce			; 06 ce
B27_0aad:		dec $c3			; c6 c3
B27_0aaf:		sed				; f8 
B27_0ab0:		cpx #$c6		; e0 c6
B27_0ab2:	.db $43
B27_0ab3:		.db $00				; 00
B27_0ab4:		inc $da			; e6 da
B27_0ab6:	.db $03
B27_0ab7:		beq B27_0ab0 ; f0 f7

B27_0ab9:		iny				; c8 
B27_0aba:		sed				; f8 
B27_0abb:	.db $03
B27_0abc:		dec $00			; c6 00
B27_0abe:	.db $03
B27_0abf:		cpy $08			; c4 08
B27_0ac1:		asl $00			; 06 00
B27_0ac3:		iny				; c8 
B27_0ac4:	.db $43
B27_0ac5:		sbc #$01		; e9 01
B27_0ac7:	.db $c2
B27_0ac8:		sbc ($01), y	; f1 01
B27_0aca:		cpx $f5f9		; ec f9 f5
B27_0acd:		iny				; c8 
B27_0ace:		ora ($f3, x)	; 01 f3
B27_0ad0:	.db $c2
B27_0ad1:		ora #$ef		; 09 ef
B27_0ad3:		cpx $0311		; ec 11 03
B27_0ad6:	.db $fc
B27_0ad7:	.db $c2
B27_0ad8:	.db $43
B27_0ad9:		inc $f2, x		; f6 f2
B27_0adb:		cpy $03			; c4 03
B27_0add:		inc $dee5, x	; fe e5 de
B27_0ae0:		asl $09			; 06 09
B27_0ae2:	.db $d4
B27_0ae3:		cpx $e4c3		; ec c3 e4
B27_0ae6:		inc $c4, x		; f6 c4
B27_0ae8:	.db $43
B27_0ae9:	.db $fc
B27_0aea:	.db $f3
B27_0aeb:		iny				; c8 
B27_0aec:	.db $04
B27_0aed:	.db $e7
B27_0aee:	.db $d2
B27_0aef:	.db $0c
B27_0af0:	.db $cb
B27_0af1:		cpx $f204		; ec 04 f2
B27_0af4:		iny				; c8 
B27_0af5:	.db $03
B27_0af6:		cpx $c4f7		; ec f7 c4
B27_0af9:	.db $f4
B27_0afa:	.db $d7
B27_0afb:	.db $d4
B27_0afc:	.db $14
B27_0afd:	.db $c7
B27_0afe:		cpy $040c		; cc 0c 04
B27_0b01:		cpx #$40		; e0 40
B27_0b03:		.db $00				; 00
B27_0b04:		sed				; f8 
B27_0b05:		sbc ($42, x)	; e1 42
B27_0b07:		.db $00				; 00
B27_0b08:		ora ($44, x)	; 01 44
B27_0b0a:		sed				; f8 
B27_0b0b:		ora ($46, x)	; 01 46
B27_0b0d:		.db $00				; 00
B27_0b0e:	.db $04
B27_0b0f:		cpx #$48		; e0 48
B27_0b11:		.db $00				; 00
B27_0b12:		sed				; f8 
B27_0b13:		sbc ($4a, x)	; e1 4a
B27_0b15:		.db $00				; 00
B27_0b16:		ora ($4c, x)	; 01 4c
B27_0b18:		sed				; f8 
B27_0b19:		ora ($4e, x)	; 01 4e
B27_0b1b:		.db $00				; 00
B27_0b1c:	.db $04
B27_0b1d:		cpx #$50		; e0 50
B27_0b1f:		.db $00				; 00
B27_0b20:		sed				; f8 
B27_0b21:		sbc ($52, x)	; e1 52
B27_0b23:		.db $00				; 00
B27_0b24:		ora ($54, x)	; 01 54
B27_0b26:		sed				; f8 
B27_0b27:		ora ($56, x)	; 01 56
B27_0b29:		.db $00				; 00
B27_0b2a:	.db $04
B27_0b2b:		cpx #$40		; e0 40
B27_0b2d:		.db $00				; 00
B27_0b2e:	.db $f4
B27_0b2f:		sbc ($42, x)	; e1 42
B27_0b31:	.db $fc
B27_0b32:		ora ($44, x)	; 01 44
B27_0b34:		sed				; f8 
B27_0b35:		ora ($46, x)	; 01 46
B27_0b37:		.db $00				; 00
B27_0b38:	.db $04
B27_0b39:		cpx #$48		; e0 48
B27_0b3b:		.db $00				; 00
B27_0b3c:		sbc $e1, x		; f5 e1
B27_0b3e:		lsr a			; 4a
B27_0b3f:		sbc $4c01, x	; fd 01 4c
B27_0b42:		sed				; f8 
B27_0b43:		ora ($4e, x)	; 01 4e
B27_0b45:		.db $00				; 00
B27_0b46:	.db $04
B27_0b47:		cpx #$50		; e0 50
B27_0b49:		.db $00				; 00
B27_0b4a:	.db $f4
B27_0b4b:		sbc ($52, x)	; e1 52
B27_0b4d:	.db $fc
B27_0b4e:		ora ($54, x)	; 01 54
B27_0b50:		sed				; f8 
B27_0b51:		ora ($56, x)	; 01 56
B27_0b53:		.db $00				; 00
B27_0b54:		ora $c0			; 05 c0
B27_0b56:		rti				; 40 


B27_0b57:		.db $00				; 00
B27_0b58:	.db $fc
B27_0b59:		sbc ($42, x)	; e1 42
B27_0b5b:		sed				; f8 
B27_0b5c:		sbc ($44, x)	; e1 44
B27_0b5e:		.db $00				; 00
B27_0b5f:		ora ($46, x)	; 01 46
B27_0b61:		sbc $4801, y	; f9 01 48
B27_0b64:		ora ($05, x)	; 01 05
B27_0b66:		cpy #$4a		; c0 4a
B27_0b68:		.db $00				; 00
B27_0b69:	.db $fc
B27_0b6a:		sbc ($4c, x)	; e1 4c
B27_0b6c:		sed				; f8 
B27_0b6d:		sbc ($4e, x)	; e1 4e
B27_0b6f:		.db $00				; 00
B27_0b70:		ora ($50, x)	; 01 50
B27_0b72:		sed				; f8 
B27_0b73:		ora ($52, x)	; 01 52
B27_0b75:		.db $00				; 00
B27_0b76:		ora $c0			; 05 c0
B27_0b78:		rti				; 40 


B27_0b79:		.db $00				; 00
B27_0b7a:	.db $fc
B27_0b7b:		sbc ($54, x)	; e1 54
B27_0b7d:		sed				; f8 
B27_0b7e:		sbc ($56, x)	; e1 56
B27_0b80:		.db $00				; 00
B27_0b81:		ora ($58, x)	; 01 58
B27_0b83:		sbc $5a01, y	; f9 01 5a
B27_0b86:		ora ($02, x)	; 01 02
B27_0b88:		.db $00				; 00
B27_0b89:	.db $9c
B27_0b8a:	.db $02
B27_0b8b:		.db $00				; 00
B27_0b8c:		ora ($9e, x)	; 01 9e
B27_0b8e:		php				; 08 
B27_0b8f:	.db $02
B27_0b90:		.db $00				; 00
B27_0b91:		clv				; b8 
B27_0b92:	.db $02
B27_0b93:		.db $00				; 00
B27_0b94:		ora ($ba, x)	; 01 ba
B27_0b96:		php				; 08 
B27_0b97:		ora ($00, x)	; 01 00
B27_0b99:		cpy #$02		; c0 02
B27_0b9b:		.db $00				; 00
B27_0b9c:	.db $02
B27_0b9d:		.db $00				; 00
B27_0b9e:		;removed
	.db $b0 $03

B27_0ba0:		sed				; f8 
B27_0ba1:		.db $00				; 00
B27_0ba2:		bcs B27_0be7 ; b0 43

B27_0ba4:		.db $00				; 00
B27_0ba5:	.db $02
B27_0ba6:		.db $00				; 00
B27_0ba7:	.db $b2
B27_0ba8:	.db $03
B27_0ba9:		sed				; f8 
B27_0baa:		.db $00				; 00
B27_0bab:	.db $b2
B27_0bac:	.db $43
B27_0bad:		.db $00				; 00
B27_0bae:	.db $02
B27_0baf:		.db $00				; 00
B27_0bb0:		ldy $03, x		; b4 03
B27_0bb2:		sed				; f8 
B27_0bb3:		.db $00				; 00
B27_0bb4:		ldy $43, x		; b4 43
B27_0bb6:		.db $00				; 00
B27_0bb7:	.db $02
B27_0bb8:	.db $02
B27_0bb9:		ldx $03, y		; b6 03
B27_0bbb:		sed				; f8 
B27_0bbc:	.db $02
B27_0bbd:		ldx $43, y		; b6 43
B27_0bbf:		.db $00				; 00
B27_0bc0:	.db $02
B27_0bc1:		;removed
	.db $f0 $6a

B27_0bc3:	.db $03
B27_0bc4:		sed				; f8 
B27_0bc5:		sbc ($6c), y	; f1 6c
B27_0bc7:		.db $00				; 00
B27_0bc8:		ora ($f0, x)	; 01 f0
B27_0bca:		ror $f800		; 6e 00 f8
B27_0bcd:	.db $02
B27_0bce:		;removed
	.db $f0 $15

B27_0bd0:	.db $23
B27_0bd1:		sed				; f8 
B27_0bd2:		;removed
	.db $f0 $15

B27_0bd4:	.db $63
B27_0bd5:		.db $00				; 00
B27_0bd6:	.db $02
B27_0bd7:		;removed
	.db $f0 $17

B27_0bd9:	.db $23
B27_0bda:		sed				; f8 
B27_0bdb:		beq B27_0bf4 ; f0 17

B27_0bdd:	.db $63
B27_0bde:		.db $00				; 00
B27_0bdf:	.db $02
B27_0be0:		beq B27_0bbc ; f0 da

B27_0be2:		eor ($f8, x)	; 41 f8
B27_0be4:		sbc ($d8), y	; f1 d8
B27_0be6:		.db $00				; 00
B27_0be7:		sta $a7ae, y	; 99 ae a7
B27_0bea:		ldx $aebb		; ae bb ae
B27_0bed:	.db $a7
B27_0bee:		ldx $b075		; ae 75 b0
B27_0bf1:		adc $85b0, x	; 7d b0 85
B27_0bf4:		bcs B27_0b83 ; b0 8d

B27_0bf6:		;removed
	.db $b0 $95

B27_0bf8:		bcs B27_0b97 ; b0 9d

B27_0bfa:		bcs B27_0ba1 ; b0 a5

B27_0bfc:		bcs B27_0bab ; b0 ad

B27_0bfe:		;removed
	.db $b0 $b5

B27_0c00:		bcs B27_0bbf ; b0 bd

B27_0c02:		;removed
	.db $b0 $cb

B27_0c04:		bcs B27_0be2 ; b0 dc

B27_0c06:		;removed
	.db $b0 $e4

B27_0c08:		bcs B27_0bc7 ; b0 bd

B27_0c0a:		;removed
	.db $b0 $f5

B27_0c0c:		;removed
	.db $b0 $03

B27_0c0e:		lda ($17), y	; b1 17
B27_0c10:		lda ($25), y	; b1 25
B27_0c12:		lda ($39), y	; b1 39
B27_0c14:		lda ($25), y	; b1 25
B27_0c16:		lda ($17), y	; b1 17
B27_0c18:		lda ($03), y	; b1 03
B27_0c1a:		lda ($f5), y	; b1 f5
B27_0c1c:		bcs B27_0c65 ; b0 47

B27_0c1e:		lda ($4c), y	; b1 4c
B27_0c20:		lda ($51), y	; b1 51
B27_0c22:		lda ($56), y	; b1 56
B27_0c24:		lda ($5b), y	; b1 5b
B27_0c26:		lda ($60), y	; b1 60
B27_0c28:		lda ($65), y	; b1 65
B27_0c2a:		lda ($6a), y	; b1 6a
B27_0c2c:		lda ($6f), y	; b1 6f
B27_0c2e:		lda ($74), y	; b1 74
B27_0c30:		lda ($79), y	; b1 79
B27_0c32:		lda ($7e), y	; b1 7e
B27_0c34:		lda ($86), y	; b1 86
B27_0c36:		lda ($8e), y	; b1 8e
B27_0c38:		lda ($96), y	; b1 96
B27_0c3a:		lda ($b2), y	; b1 b2
B27_0c3c:		lda ($e6), y	; b1 e6
B27_0c3e:		lda ($ef), y	; b1 ef
B27_0c40:		lda ($f7), y	; b1 f7
B27_0c42:		lda ($ff), y	; b1 ff
B27_0c44:		lda ($04), y	; b1 04
B27_0c46:	.db $b2
B27_0c47:		ora #$b2		; 09 b2
B27_0c49:		ora ($b2), y	; 11 b2
B27_0c4b:	.db $1a
B27_0c4c:	.db $b2
B27_0c4d:	.db $22
B27_0c4e:	.db $b2
B27_0c4f:		rol a			; 2a
B27_0c50:	.db $b2
B27_0c51:	.db $33
B27_0c52:	.db $b2
B27_0c53:	.db $3c
B27_0c54:	.db $b2
B27_0c55:		eor $b2			; 45 b2
B27_0c57:		eor $5bb2		; 4d b2 5b
B27_0c5a:	.db $b2
B27_0c5b:		ror $b2			; 66 b2
B27_0c5d:	.db $74
B27_0c5e:	.db $b2
B27_0c5f:	.db $82
B27_0c60:	.db $b2
B27_0c61:		;removed
	.db $90 $b2

B27_0c63:	.db $9e
B27_0c64:	.db $b2
B27_0c65:		ldy $bab2		; ac b2 ba
B27_0c68:	.db $b2
B27_0c69:		iny				; c8 
B27_0c6a:	.db $b2
B27_0c6b:		sbc #$b2		; e9 b2
B27_0c6d:		asl a			; 0a
B27_0c6e:	.db $b3
B27_0c6f:		clc				; 18 
B27_0c70:	.db $b3
B27_0c71:		and #$b3		; 29 b3
B27_0c73:	.db $3a
B27_0c74:	.db $b3
B27_0c75:	.db $4b
B27_0c76:	.db $b3
B27_0c77:	.db $6f
B27_0c78:	.db $b3
B27_0c79:	.db $93
B27_0c7a:	.db $b3
B27_0c7b:		ldy $b3			; a4 b3
B27_0c7d:	.db $b2
B27_0c7e:	.db $b3
B27_0c7f:		cpy #$b3		; c0 b3
B27_0c81:		dec $efb3		; ce b3 ef
B27_0c84:	.db $b3
B27_0c85:		;removed
	.db $10 $b4

B27_0c87:		beq B27_0c32 ; f0 a9

B27_0c89:		asl $aa			; 06 aa
B27_0c8b:		ora ($aa), y	; 11 aa
B27_0c8d:		ora $3caa, x	; 1d aa 3c
B27_0c90:		tax				; aa 
B27_0c91:		pha				; 48 
B27_0c92:		tax				; aa 
B27_0c93:		ror $94aa		; 6e aa 94
B27_0c96:		tax				; aa 
B27_0c97:		sta $abaa, x	; 9d aa ab
B27_0c9a:		tax				; aa 
B27_0c9b:		cmp ($aa, x)	; c1 aa
B27_0c9d:		cmp $aa, x		; d5 aa
B27_0c9f:		sbc ($aa, x)	; e1 aa
B27_0ca1:		.db $00				; 00
B27_0ca2:	.db $ab
B27_0ca3:		asl $1cab		; 0e ab 1c
B27_0ca6:	.db $ab
B27_0ca7:		asl $2aab		; 0e ab 2a
B27_0caa:	.db $ab
B27_0cab:		sec				; 38 
B27_0cac:	.db $ab
B27_0cad:		lsr $ab			; 46 ab
B27_0caf:		sec				; 38 
B27_0cb0:	.db $ab
B27_0cb1:	.db $54
B27_0cb2:	.db $ab
B27_0cb3:		adc $ab			; 65 ab
B27_0cb5:		ror $ab, x		; 76 ab
B27_0cb7:		adc $ab			; 65 ab
B27_0cb9:	.db $87
B27_0cba:	.db $ab
B27_0cbb:	.db $87
B27_0cbc:	.db $ab
B27_0cbd:	.db $87
B27_0cbe:	.db $ab
B27_0cbf:	.db $8f
B27_0cc0:	.db $ab
B27_0cc1:		asl $44b4, x	; 1e b4 44
B27_0cc4:		ldy $52, x		; b4 52
B27_0cc6:		ldy $60, x		; b4 60
B27_0cc8:		ldy $6e, x		; b4 6e
B27_0cca:		ldy $88, x		; b4 88
B27_0ccc:		ldy $9f, x		; b4 9f
B27_0cce:		ldy $ad, x		; b4 ad
B27_0cd0:		ldy $97, x		; b4 97
B27_0cd2:	.db $ab
B27_0cd3:	.db $9c
B27_0cd4:	.db $ab
B27_0cd5:		lda $ab			; a5 ab
B27_0cd7:		ldx $b7ab		; ae ab b7
B27_0cda:	.db $ab
B27_0cdb:		cpy #$ab		; c0 ab
B27_0cdd:		iny				; c8 
B27_0cde:	.db $ab
B27_0cdf:		cmp $d6ab		; cd ab d6
B27_0ce2:	.db $ab
B27_0ce3:	.db $df
B27_0ce4:	.db $ab
B27_0ce5:		cpy $b5b1		; cc b1 b5
B27_0ce8:		ldy $b5, x		; b4 b5
B27_0cea:		ldy $c4, x		; b4 c4
B27_0cec:		ldy $d3, x		; b4 d3
B27_0cee:		ldy $e1, x		; b4 e1
B27_0cf0:		ldy $fe, x		; b4 fe
B27_0cf2:		ldy $0c, x		; b4 0c
B27_0cf4:		lda $1d, x		; b5 1d
B27_0cf6:		lda $2b, x		; b5 2b
B27_0cf8:		lda $34, x		; b5 34
B27_0cfa:		lda $4f, x		; b5 4f
B27_0cfc:		lda $81, x		; b5 81
B27_0cfe:		lda $c2, x		; b5 c2
B27_0d00:		lda $f4, x		; b5 f4
B27_0d02:		lda $05, x		; b5 05
B27_0d04:		ldx $16, y		; b6 16
B27_0d06:		ldx $2a, y		; b6 2a
B27_0d08:		ldx $3e, y		; b6 3e
B27_0d0a:		ldx $4c, y		; b6 4c
B27_0d0c:		ldx $5d, y		; b6 5d
B27_0d0e:		ldx $6e, y		; b6 6e
B27_0d10:		ldx $82, y		; b6 82
B27_0d12:		ldx $99, y		; b6 99
B27_0d14:		ldx $b0, y		; b6 b0
B27_0d16:		ldx $c1, y		; b6 c1
B27_0d18:		ldx $d3, y		; b6 d3
B27_0d1a:		ldx $eb, y		; b6 eb
B27_0d1c:		ldx $00, y		; b6 00
B27_0d1e:	.db $b7
B27_0d1f:	.db $eb
B27_0d20:		ldx $d3, y		; b6 d3
B27_0d22:		ldx $eb, y		; b6 eb
B27_0d24:		ldx $15, y		; b6 15
B27_0d26:	.db $b7
B27_0d27:		rol $b7, x		; 36 b7
B27_0d29:		eor $c5b7, x	; 5d b7 c5
B27_0d2c:		lda $adca		; ad ca ad
B27_0d2f:	.db $d2
B27_0d30:		lda $addd		; ad dd ad
B27_0d33:	.db $eb
B27_0d34:		lda $adfc		; ad fc ad
B27_0d37:		ora $15ae		; 0d ae 15
B27_0d3a:		ldx $ae1d		; ae 1d ae
B27_0d3d:		and $ae			; 25 ae
B27_0d3f:		ora $3aae, x	; 1d ae 3a
B27_0d42:		ldx $ae42		; ae 42 ae
B27_0d45:		lsr a			; 4a
B27_0d46:		ldx $ae58		; ae 58 ae
B27_0d49:		ror $ae			; 66 ae
B27_0d4b:	.db $77
B27_0d4c:		ldx $ae88		; ae 88 ae
B27_0d4f:		and $32ae		; 2d ae 32
B27_0d52:		.db $ae



data_1b_0d53:
	.dw $ae99
	.dw data_1b_0ef8
	.dw data_1b_0efd
B27_0d59:		sta $99ae, y	; 99 ae 99
B27_0d5c:		ldx $af1d		; ae 1d af
B27_0d5f:		rol $51af		; 2e af 51
B27_0d62:	.db $af
B27_0d63:		lsr $af, x		; 56 af
B27_0d65:	.db $5f
B27_0d66:	.db $af
B27_0d67:	.db $64
B27_0d68:	.db $af
B27_0d69:		adc #$af		; 69 af
B27_0d6b:	.db $7f
B27_0d6c:	.db $af
B27_0d6d:		ldy #$af		; a0 af
B27_0d6f:		lda $af			; a5 af
B27_0d71:		lda $b5af		; ad af b5
B27_0d74:	.db $af
B27_0d75:		lda $c5af, x	; bd af c5
B27_0d78:	.db $af
B27_0d79:		cmp $d5af		; cd af d5
B27_0d7c:	.db $af
B27_0d7d:		cmp $e5af, x	; dd af e5
B27_0d80:	.db $af
B27_0d81:		sbc $f5af		; edaf f5
B27_0d84:	.db $af
B27_0d85:		sbc $05af, x	; fd af 05
B27_0d88:		bcs B27_0d62 ; b0 d8

B27_0d8a:		ldx $aee0		; ae e0 ae
B27_0d8d:		inx				; e8 
B27_0d8e:		ldx $aef0		; ae f0 ae
B27_0d91:	.db $cb
B27_0d92:	.db $93
B27_0d93:		;removed
	.db $d0 $93

B27_0d95:		cmp $93, x		; d5 93
B27_0d97:		bne B27_0d2c ; d0 93

B27_0d99:		cli				; 58 
B27_0d9a:		bcs B27_0d20 ; b0 84

B27_0d9c:	.db $af
B27_0d9d:		sta $af, x		; 95 af
B27_0d9f:	.db $3f
B27_0da0:	.db $af
B27_0da1:		pha				; 48 
B27_0da2:	.db $af
B27_0da3:	.db $77
B27_0da4:	.db $af
B27_0da5:		eor $65b0, x	; 5d b0 65
B27_0da8:		bcs B27_0e17 ; b0 6d

B27_0daa:		;removed
	.db $b0 $18

B27_0dac:		bcs B27_0dce ; b0 20

B27_0dae:		bcs B27_0de8 ; b0 38

B27_0db0:		bcs B27_0df3 ; b0 41

B27_0db2:		bcs B27_0db6 ; b0 02

B27_0db4:	.db $af
B27_0db5:	.db $0b
B27_0db6:	.db $af
B27_0db7:	.db $14
B27_0db8:	.db $af
B27_0db9:	.db $0b
B27_0dba:	.db $af
B27_0dbb:		plp				; 28 
B27_0dbc:		bcs B27_0dee ; b0 30

B27_0dbe:		bcs B27_0d59 ; b0 99

B27_0dc0:		ldx $b04a		; ae 4a b0
B27_0dc3:		ora $01b0		; 0d b0 01
B27_0dc6:		beq B27_0d78 ; f0 b0

B27_0dc8:	.db $02
B27_0dc9:		beq B27_0dcd ; f0 02

B27_0dcb:		beq B27_0d7d ; f0 b0

B27_0dcd:	.db $82
B27_0dce:		inx				; e8 
B27_0dcf:		sbc ($fc), y	; f1 fc
B27_0dd1:		beq B27_0dd6 ; f0 03

B27_0dd3:		beq B27_0d85 ; f0 b0

B27_0dd5:	.db $02
B27_0dd6:		cpx #$f1		; e0 f1
B27_0dd8:	.db $fa
B27_0dd9:		inx				; e8 
B27_0dda:		sbc ($fc), y	; f1 fc
B27_0ddc:		beq B27_0de2 ; f0 04

B27_0dde:		;removed
	.db $f0 $b0

B27_0de0:	.db $82
B27_0de1:		cld				; d8 
B27_0de2:		sbc ($b4), y	; f1 b4
B27_0de4:		cpx #$f1		; e0 f1
B27_0de6:	.db $fa
B27_0de7:		inx				; e8 
B27_0de8:		sbc ($fc), y	; f1 fc
B27_0dea:		beq B27_0df1 ; f0 05

B27_0dec:		;removed
	.db $f0 $b0

B27_0dee:	.db $02
B27_0def:		bne B27_0de2 ; d0 f1

B27_0df1:	.db $b2
B27_0df2:		cld				; d8 
B27_0df3:		sbc ($b4), y	; f1 b4
B27_0df5:		cpx #$f1		; e0 f1
B27_0df7:	.db $fa
B27_0df8:		inx				; e8 
B27_0df9:		sbc ($fc), y	; f1 fc
B27_0dfb:		beq B27_0e02 ; f0 05

B27_0dfd:		;removed
	.db $f0 $b0

B27_0dff:	.db $82
B27_0e00:		bne B27_0df3 ; d0 f1

B27_0e02:	.db $b2
B27_0e03:		cld				; d8 
B27_0e04:		sbc ($b4), y	; f1 b4
B27_0e06:		cpx #$f1		; e0 f1
B27_0e08:	.db $fa
B27_0e09:		inx				; e8 
B27_0e0a:		sbc ($fc), y	; f1 fc
B27_0e0c:		beq B27_0e10 ; f0 02

B27_0e0e:		beq B27_0dc0 ; f0 b0

B27_0e10:	.db $02
B27_0e11:		beq B27_0e04 ; f0 f1

B27_0e13:	.db $fc
B27_0e14:		sed				; f8 
B27_0e15:	.db $02
B27_0e16:		inx				; e8 
B27_0e17:		eor ($03, x)	; 41 03
B27_0e19:		sed				; f8 
B27_0e1a:		sbc #$43		; e9 43
B27_0e1c:		.db $00				; 00
B27_0e1d:	.db $02
B27_0e1e:		beq B27_0e65 ; f0 45

B27_0e20:	.db $03
B27_0e21:		sed				; f8 
B27_0e22:		sbc ($47), y	; f1 47
B27_0e24:		.db $00				; 00
B27_0e25:	.db $02
B27_0e26:		sed				; f8 
B27_0e27:		eor #$03		; 49 03
B27_0e29:		sed				; f8 
B27_0e2a:	.db $f9 $4b $00
B27_0e2d:		ora ($f0, x)	; 01 f0
B27_0e2f:	.db $da
B27_0e30:	.db $03
B27_0e31:	.db $fc
B27_0e32:	.db $02
B27_0e33:		beq B27_0e11 ; f0 dc

B27_0e35:	.db $03
B27_0e36:		sed				; f8 
B27_0e37:		sbc ($de), y	; f1 de
B27_0e39:		.db $00				; 00
B27_0e3a:	.db $02
B27_0e3b:		;removed
	.db $f0 $77

B27_0e3d:		ora ($f8, x)	; 01 f8
B27_0e3f:		sbc ($79), y	; f1 79
B27_0e41:		.db $00				; 00
B27_0e42:	.db $02
B27_0e43:		beq B27_0ec0 ; f0 7b

B27_0e45:		ora ($f8, x)	; 01 f8
B27_0e47:		sbc ($7d), y	; f1 7d
B27_0e49:		.db $00				; 00
B27_0e4a:	.db $04
B27_0e4b:		cpx #$41		; e0 41
B27_0e4d:	.db $02
B27_0e4e:	.db $f4
B27_0e4f:		sbc ($43, x)	; e1 43
B27_0e51:	.db $fc
B27_0e52:		ora ($45, x)	; 01 45
B27_0e54:		sed				; f8 
B27_0e55:		ora ($47, x)	; 01 47
B27_0e57:		.db $00				; 00
B27_0e58:	.db $04
B27_0e59:	.db $e2
B27_0e5a:		eor $02, x		; 55 02
B27_0e5c:		sbc $e3, x		; f5 e3
B27_0e5e:	.db $57
B27_0e5f:		sbc $4901, x	; fd 01 49
B27_0e62:		sed				; f8 
B27_0e63:		ora ($4b, x)	; 01 4b
B27_0e65:		.db $00				; 00
B27_0e66:		ora $ee			; 05 ee
B27_0e68:		adc ($01), y	; 71 01
B27_0e6a:	.db $f4
B27_0e6b:	.db $e3
B27_0e6c:		adc ($fc, x)	; 61 fc
B27_0e6e:	.db $e3
B27_0e6f:	.db $63
B27_0e70:	.db $04
B27_0e71:		ora ($65, x)	; 01 65
B27_0e73:	.db $fc
B27_0e74:		ora ($67, x)	; 01 67
B27_0e76:	.db $04
B27_0e77:		ora $f0			; 05 f0
B27_0e79:		adc ($01), y	; 71 01
B27_0e7b:	.db $f4
B27_0e7c:	.db $e3
B27_0e7d:		adc ($fc, x)	; 61 fc
B27_0e7f:	.db $e3
B27_0e80:	.db $63
B27_0e81:	.db $04
B27_0e82:		ora ($69, x)	; 01 69
B27_0e84:	.db $fc
B27_0e85:		ora ($6b, x)	; 01 6b
B27_0e87:	.db $04
B27_0e88:		ora $ec			; 05 ec
B27_0e8a:		adc ($01), y	; 71 01
B27_0e8c:	.db $f4
B27_0e8d:		sbc ($61, x)	; e1 61
B27_0e8f:	.db $fc
B27_0e90:		sbc ($63, x)	; e1 63
B27_0e92:	.db $04
B27_0e93:		ora ($6d, x)	; 01 6d
B27_0e95:	.db $fc
B27_0e96:		ora ($6f, x)	; 01 6f
B27_0e98:	.db $04
B27_0e99:	.db $04
B27_0e9a:		beq B27_0ee9 ; f0 4d

B27_0e9c:		.db $00				; 00
B27_0e9d:		beq B27_0e90 ; f0 f1

B27_0e9f:		eor $f1f8, x	; 5d f8 f1
B27_0ea2:		adc $f100		; 6d 00 f1
B27_0ea5:		adc $0608, x	; 7d 08 06
B27_0ea8:		cpy #$05		; c0 05
B27_0eaa:	.db $03
B27_0eab:		beq B27_0e6e ; f0 c1

B27_0ead:	.db $0f
B27_0eae:		sed				; f8 
B27_0eaf:		sbc ($07, x)	; e1 07
B27_0eb1:		;removed
	.db $f0 $e1

B27_0eb3:		ora #$f8		; 09 f8
B27_0eb5:		ora ($07, x)	; 01 07
B27_0eb7:		;removed
	.db $f0 $01

B27_0eb9:		ora #$f8		; 09 f8
B27_0ebb:		ora #$c0		; 09 c0
B27_0ebd:	.db $0b
B27_0ebe:	.db $03
B27_0ebf:		inx				; e8 
B27_0ec0:		cmp ($0d, x)	; c1 0d
B27_0ec2:		beq B27_0e85 ; f0 c1

B27_0ec4:		ora $e1f8		; 0d f8 e1
B27_0ec7:		ora #$e8		; 09 e8
B27_0ec9:		sbc ($09, x)	; e1 09
B27_0ecb:		beq B27_0eae ; f0 e1

B27_0ecd:		ora #$f8		; 09 f8
B27_0ecf:		ora ($09, x)	; 01 09
B27_0ed1:		inx				; e8 
B27_0ed2:		ora ($09, x)	; 01 09
B27_0ed4:		;removed
	.db $f0 $01

B27_0ed6:		ora #$f8		; 09 f8
B27_0ed8:	.db $02
B27_0ed9:		;removed
	.db $f0 $ea

B27_0edb:		ora ($f8, x)	; 01 f8
B27_0edd:		sbc ($ec), y	; f1 ec
B27_0edf:		.db $00				; 00
B27_0ee0:	.db $02
B27_0ee1:		beq B27_0ecf ; f0 ec

B27_0ee3:		eor ($f8, x)	; 41 f8
B27_0ee5:		sbc ($ea), y	; f1 ea
B27_0ee7:		.db $00				; 00
B27_0ee8:	.db $02
B27_0ee9:		;removed
	.db $f0 $ec

B27_0eeb:		cmp ($f8, x)	; c1 f8
B27_0eed:		sbc ($ea), y	; f1 ea
B27_0eef:		.db $00				; 00
B27_0ef0:	.db $02
B27_0ef1:		beq B27_0edd ; f0 ea

B27_0ef3:		sta ($f8, x)	; 81 f8
B27_0ef5:		sbc ($ec), y	; f1 ec
B27_0ef7:		.db $00				; 00


; oam spec details for lamp
; num oams, y, tile idx, palette, x
data_1b_0ef8:
	.db $01 $f0 $f1 $03 $fc
data_1b_0efd:
	.db $01 $f0 $f3 $03 $fc

B27_0f02:	.db $02
B27_0f03:		;removed
	.db $f0 $2b

B27_0f05:		ora ($f8, x)	; 01 f8
B27_0f07:		;removed
	.db $f0 $2b

B27_0f09:		eor ($00, x)	; 41 00
B27_0f0b:	.db $02
B27_0f0c:		beq B27_0f2b ; f0 1d

B27_0f0e:		ora ($f8, x)	; 01 f8
B27_0f10:		beq B27_0f2f ; f0 1d

B27_0f12:		eor ($00, x)	; 41 00
B27_0f14:	.db $02
B27_0f15:		beq B27_0f36 ; f0 1f

B27_0f17:		ora ($f8, x)	; 01 f8
B27_0f19:		;removed
	.db $f0 $1f

B27_0f1b:		eor ($00, x)	; 41 00
B27_0f1d:	.db $04
B27_0f1e:		cpx #$15		; e0 15
B27_0f20:	.db $03
B27_0f21:		sed				; f8 
B27_0f22:		cpx #$15		; e0 15
B27_0f24:	.db $43
B27_0f25:		.db $00				; 00
B27_0f26:		.db $00				; 00
B27_0f27:		ora $f801, y	; 19 01 f8
B27_0f2a:		.db $00				; 00
B27_0f2b:	.db $19 $41 $00
B27_0f2e:	.db $04
B27_0f2f:		cpx #$17		; e0 17
B27_0f31:	.db $03
B27_0f32:		sed				; f8 
B27_0f33:		cpx #$17		; e0 17
B27_0f35:	.db $43
B27_0f36:		.db $00				; 00
B27_0f37:		.db $00				; 00
B27_0f38:		ora $f801, y	; 19 01 f8
B27_0f3b:		.db $00				; 00
B27_0f3c:	.db $19 $41 $00
B27_0f3f:	.db $02
B27_0f40:		.db $00				; 00
B27_0f41:		ora $03, x		; 15 03
B27_0f43:		sed				; f8 
B27_0f44:		.db $00				; 00
B27_0f45:		ora $43, x		; 15 43
B27_0f47:		.db $00				; 00
B27_0f48:	.db $02
B27_0f49:		.db $00				; 00
B27_0f4a:	.db $17
B27_0f4b:	.db $03
B27_0f4c:		sed				; f8 
B27_0f4d:		.db $00				; 00
B27_0f4e:	.db $17
B27_0f4f:	.db $43
B27_0f50:		.db $00				; 00
B27_0f51:		ora ($f0, x)	; 01 f0
B27_0f53:		and $03			; 25 03
B27_0f55:	.db $fc
B27_0f56:	.db $02
B27_0f57:		;removed
	.db $f0 $03

B27_0f59:	.db $03
B27_0f5a:		sed				; f8 
B27_0f5b:		;removed
	.db $f0 $03

B27_0f5d:	.db $43
B27_0f5e:		.db $00				; 00
B27_0f5f:		ora ($f0, x)	; 01 f0
B27_0f61:		sbc ($03, x)	; e1 03
B27_0f63:	.db $fc
B27_0f64:		ora ($f8, x)	; 01 f8
B27_0f66:	.db $e3
B27_0f67:	.db $03
B27_0f68:	.db $fc
B27_0f69:	.db $04
B27_0f6a:		beq B27_0f51 ; f0 e5

B27_0f6c:		.db $00				; 00
B27_0f6d:		;removed
	.db $f0 $f1

B27_0f6f:		sbc $f8			; e5 f8
B27_0f71:		sbc ($e5), y	; f1 e5
B27_0f73:		.db $00				; 00
B27_0f74:		sbc ($e5), y	; f1 e5
B27_0f76:		php				; 08 
B27_0f77:	.db $02
B27_0f78:	.db $f2
B27_0f79:	.db $bf
B27_0f7a:		rti				; 40 


B27_0f7b:		sed				; f8 
B27_0f7c:	.db $f3
B27_0f7d:		lda $0100, x	; bd 00 01
B27_0f80:		beq B27_0f69 ; f0 e7

B27_0f82:		ora ($fc, x)	; 01 fc
B27_0f84:		ora $e4			; 05 e4
B27_0f86:	.db $e7
B27_0f87:		ora ($f8, x)	; 01 f8
B27_0f89:		sbc $e7			; e5 e7
B27_0f8b:		.db $00				; 00
B27_0f8c:		sbc $e7, x		; f5 e7
B27_0f8e:		sed				; f8 
B27_0f8f:		sbc $e7, x		; f5 e7
B27_0f91:		sbc $e7f5, x	; fd f5 e7
B27_0f94:		.db $00				; 00
B27_0f95:	.db $03
B27_0f96:		sed				; f8 
B27_0f97:	.db $e7
B27_0f98:		ora ($f8, x)	; 01 f8
B27_0f9a:		sbc $fde7, y	; f9 e7 fd
B27_0f9d:	.db $f9 $e7 $00
B27_0fa0:		ora ($f0, x)	; 01 f0
B27_0fa2:		sbc #$01		; e9 01
B27_0fa4:	.db $fc
B27_0fa5:	.db $02
B27_0fa6:		beq B27_0f79 ; f0 d1

B27_0fa8:	.db $03
B27_0fa9:		sed				; f8 
B27_0faa:		sbc ($d3), y	; f1 d3
B27_0fac:		.db $00				; 00
B27_0fad:	.db $02
B27_0fae:		;removed
	.db $f0 $d5

B27_0fb0:		.db $00				; 00
B27_0fb1:		sed				; f8 
B27_0fb2:		sbc ($d7), y	; f1 d7
B27_0fb4:		.db $00				; 00
B27_0fb5:	.db $02
B27_0fb6:		beq B27_0f91 ; f0 d9

B27_0fb8:		ora ($f8, x)	; 01 f8
B27_0fba:		sbc ($db), y	; f1 db
B27_0fbc:		.db $00				; 00
B27_0fbd:	.db $02
B27_0fbe:		;removed
	.db $f0 $f9

B27_0fc0:	.db $03
B27_0fc1:		sed				; f8 
B27_0fc2:		sbc ($fb), y	; f1 fb
B27_0fc4:		.db $00				; 00
B27_0fc5:	.db $02
B27_0fc6:		beq B27_0f95 ; f0 cd

B27_0fc8:		ora ($f8, x)	; 01 f8
B27_0fca:		sbc ($cf), y	; f1 cf
B27_0fcc:		.db $00				; 00
B27_0fcd:	.db $02
B27_0fce:		beq B27_0f91 ; f0 c1

B27_0fd0:		ora ($f8, x)	; 01 f8
B27_0fd2:		sbc ($c9), y	; f1 c9
B27_0fd4:		.db $00				; 00
B27_0fd5:	.db $02
B27_0fd6:		;removed
	.db $f0 $c3

B27_0fd8:		ora ($f8, x)	; 01 f8
B27_0fda:		sbc ($c9), y	; f1 c9
B27_0fdc:		.db $00				; 00
B27_0fdd:	.db $02
B27_0fde:		beq B27_0fa5 ; f0 c5

B27_0fe0:		ora ($f8, x)	; 01 f8
B27_0fe2:		sbc ($c9), y	; f1 c9
B27_0fe4:		.db $00				; 00
B27_0fe5:	.db $02
B27_0fe6:		;removed
	.db $f0 $c7

B27_0fe8:		ora ($f8, x)	; 01 f8
B27_0fea:		sbc ($c9), y	; f1 c9
B27_0fec:		.db $00				; 00
B27_0fed:	.db $02
B27_0fee:		beq B27_0fb1 ; f0 c1

B27_0ff0:		ora ($f8, x)	; 01 f8
B27_0ff2:		sbc ($cb), y	; f1 cb
B27_0ff4:		.db $00				; 00
B27_0ff5:	.db $02
B27_0ff6:		;removed
	.db $f0 $c3

B27_0ff8:		ora ($f8, x)	; 01 f8
B27_0ffa:		sbc ($cb), y	; f1 cb
B27_0ffc:		.db $00				; 00
B27_0ffd:	.db $02
B27_0ffe:		beq B27_0fc5 ; f0 c5

B27_1000:		ora ($f8, x)	; 01 f8
B27_1002:		sbc ($cb), y	; f1 cb
B27_1004:		.db $00				; 00
B27_1005:	.db $02
B27_1006:		;removed
	.db $f0 $c7

B27_1008:		ora ($f8, x)	; 01 f8
B27_100a:		sbc ($cb), y	; f1 cb
B27_100c:		.db $00				; 00
B27_100d:	.db $03
B27_100e:		;removed
	.db $f0 $c1

B27_1010:		ora ($f4, x)	; 01 f4
B27_1012:		sbc ($cb), y	; f1 cb
B27_1014:	.db $fc
B27_1015:		sbc ($c9), y	; f1 c9
B27_1017:	.db $04
B27_1018:	.db $02
B27_1019:		;removed
	.db $f0 $70

B27_101b:	.db $03
B27_101c:		sed				; f8 
B27_101d:		sbc ($72), y	; f1 72
B27_101f:		.db $00				; 00
B27_1020:	.db $02
B27_1021:		;removed
	.db $f0 $74

B27_1023:		ora ($f8, x)	; 01 f8
B27_1025:		sbc ($76), y	; f1 76
B27_1027:		.db $00				; 00
B27_1028:	.db $02
B27_1029:		beq B27_103c ; f0 11

B27_102b:		ora ($f8, x)	; 01 f8
B27_102d:		sbc ($13), y	; f1 13
B27_102f:		.db $00				; 00
B27_1030:	.db $02
B27_1031:		beq B27_1054 ; f0 21

B27_1033:		ora ($f8, x)	; 01 f8
B27_1035:		sbc ($23), y	; f1 23
B27_1037:		.db $00				; 00
B27_1038:	.db $02
B27_1039:		beq B27_1030 ; f0 f5

B27_103b:	.db $03
B27_103c:		sed				; f8 
B27_103d:		;removed
	.db $f0 $f5

B27_103f:	.db $43
B27_1040:		.db $00				; 00
B27_1041:	.db $02
B27_1042:		beq B27_103b ; f0 f7

B27_1044:	.db $03
B27_1045:		sed				; f8 
B27_1046:		beq B27_103f ; f0 f7

B27_1048:	.db $43
B27_1049:		.db $00				; 00
B27_104a:	.db $04
B27_104b:		beq B27_100a ; f0 bd

B27_104d:		.db $00				; 00
B27_104e:		beq B27_1041 ; f0 f1

B27_1050:	.db $bf
B27_1051:		sed				; f8 
B27_1052:		sbc ($bd), y	; f1 bd
B27_1054:		.db $00				; 00
B27_1055:		sbc ($bf), y	; f1 bf
B27_1057:		php				; 08 
B27_1058:		ora ($00, x)	; 01 00
B27_105a:	.db $e7
B27_105b:		.db $00				; 00
B27_105c:	.db $fc
B27_105d:	.db $02
B27_105e:		;removed
	.db $f0 $7c

B27_1060:		ora ($f8, x)	; 01 f8
B27_1062:		sbc ($7e), y	; f1 7e
B27_1064:		.db $00				; 00
B27_1065:	.db $02
B27_1066:		beq B27_10e4 ; f0 7c

B27_1068:	.db $03
B27_1069:		sed				; f8 
B27_106a:		sbc ($7e), y	; f1 7e
B27_106c:		.db $00				; 00
B27_106d:	.db $02
B27_106e:		;removed
	.db $f0 $7c

B27_1070:		.db $00				; 00
B27_1071:		sed				; f8 
B27_1072:		sbc ($7e), y	; f1 7e
B27_1074:		.db $00				; 00
B27_1075:	.db $02
B27_1076:		beq B27_1010 ; f0 98

B27_1078:		ora ($f8, x)	; 01 f8
B27_107a:		sbc ($9a), y	; f1 9a
B27_107c:		.db $00				; 00
B27_107d:	.db $02
B27_107e:		beq B27_1018 ; f0 98

B27_1080:		ora ($f8, x)	; 01 f8
B27_1082:	.db $f3
B27_1083:		txs				; 9a 
B27_1084:		.db $00				; 00
B27_1085:	.db $02
B27_1086:		;removed
	.db $f0 $9c

B27_1088:		ora ($f8, x)	; 01 f8
B27_108a:		sbc ($9e), y	; f1 9e
B27_108c:		.db $00				; 00
B27_108d:	.db $02
B27_108e:		beq B27_1030 ; f0 a0

B27_1090:		ora ($f8, x)	; 01 f8
B27_1092:		sbc ($a2), y	; f1 a2
B27_1094:		.db $00				; 00
B27_1095:	.db $02
B27_1096:		beq B27_103c ; f0 a4

B27_1098:		ora ($f8, x)	; 01 f8
B27_109a:		sbc ($a6), y	; f1 a6
B27_109c:		.db $00				; 00
B27_109d:	.db $02
B27_109e:	.db $f2
B27_109f:		txs				; 9a 
B27_10a0:		eor ($f8, x)	; 41 f8
B27_10a2:		sbc ($98), y	; f1 98
B27_10a4:		.db $00				; 00
B27_10a5:	.db $02
B27_10a6:		beq B27_1046 ; f0 9e

B27_10a8:		eor ($f8, x)	; 41 f8
B27_10aa:		sbc ($9c), y	; f1 9c
B27_10ac:		.db $00				; 00
B27_10ad:	.db $02
B27_10ae:		beq B27_1052 ; f0 a2

B27_10b0:		eor ($f8, x)	; 41 f8
B27_10b2:		sbc ($a0), y	; f1 a0
B27_10b4:		.db $00				; 00
B27_10b5:	.db $02
B27_10b6:		beq B27_105e ; f0 a6

B27_10b8:		eor ($f8, x)	; 41 f8
B27_10ba:		sbc ($a4), y	; f1 a4
B27_10bc:		.db $00				; 00
B27_10bd:	.db $04
B27_10be:		sed				; f8 
B27_10bf:		sbc $02			; e5 02
B27_10c1:		beq B27_10bc ; f0 f9

B27_10c3:		sbc $f8			; e5 f8
B27_10c5:	.db $f9 $e5 $00
B27_10c8:		sbc $08e5, y	; f9 e5 08
B27_10cb:		ora $e6			; 05 e6
B27_10cd:	.db $80
B27_10ce:	.db $02
B27_10cf:		inc $82e7		; ee e7 82
B27_10d2:		inc $e7, x		; f6 e7
B27_10d4:		sty $fe			; 84 fe
B27_10d6:	.db $07
B27_10d7:		stx $fe			; 86 fe
B27_10d9:		ora ($88, x)	; 01 88
B27_10db:		asl $02			; 06 02
B27_10dd:		cpx #$8a		; e0 8a
B27_10df:	.db $02
B27_10e0:		sed				; f8 
B27_10e1:		ora ($8a, x)	; 01 8a
B27_10e3:		sed				; f8 
B27_10e4:		ora $fa			; 05 fa
B27_10e6:	.db $80
B27_10e7:	.db $82
B27_10e8:		inc $82fb		; ee fb 82
B27_10eb:		inc $fb, x		; f6 fb
B27_10ed:		sty $fe			; 84 fe
B27_10ef:	.db $db
B27_10f0:		stx $fe			; 86 fe
B27_10f2:		sbc ($88, x)	; e1 88
B27_10f4:		asl $04			; 06 04
B27_10f6:		beq B27_1084 ; f0 8c

B27_10f8:		ora ($f0, x)	; 01 f0
B27_10fa:		sbc ($8c), y	; f1 8c
B27_10fc:		sed				; f8 
B27_10fd:		sbc ($8c), y	; f1 8c
B27_10ff:		.db $00				; 00
B27_1100:		sbc ($8c), y	; f1 8c
B27_1102:		php				; 08 
B27_1103:		asl $e4			; 06 e4
B27_1105:		stx $f001		; 8e 01 f0
B27_1108:		sbc ($90, x)	; e1 90
B27_110a:		sed				; f8 
B27_110b:		sbc ($84, x)	; e1 84
B27_110d:		.db $00				; 00
B27_110e:		ora ($92, x)	; 01 92
B27_1110:		sed				; f8 
B27_1111:		ora ($94, x)	; 01 94
B27_1113:		.db $00				; 00
B27_1114:	.db $fb
B27_1115:		dey				; 88 
B27_1116:		php				; 08 
B27_1117:	.db $04
B27_1118:		cpx #$96		; e0 96
B27_111a:		ora ($f8, x)	; 01 f8
B27_111c:		sbc ($8a, x)	; e1 8a
B27_111e:		.db $00				; 00
B27_111f:		ora ($96, x)	; 01 96
B27_1121:		sed				; f8 
B27_1122:		ora ($8a, x)	; 01 8a
B27_1124:		.db $00				; 00
B27_1125:		asl $fc			; 06 fc
B27_1127:		stx $f081		; 8e 81 f0
B27_112a:		sbc ($92, x)	; e1 92
B27_112c:		sed				; f8 
B27_112d:		sbc ($94, x)	; e1 94
B27_112f:		.db $00				; 00
B27_1130:		ora ($90, x)	; 01 90
B27_1132:		sed				; f8 
B27_1133:		ora ($84, x)	; 01 84
B27_1135:		.db $00				; 00
B27_1136:	.db $e7
B27_1137:		dey				; 88 
B27_1138:		php				; 08 
B27_1139:	.db $04
B27_113a:		beq B27_10c8 ; f0 8c

B27_113c:		sta ($f0, x)	; 81 f0
B27_113e:		sbc ($8c), y	; f1 8c
B27_1140:		sed				; f8 
B27_1141:		sbc ($8c), y	; f1 8c
B27_1143:		.db $00				; 00
B27_1144:		sbc ($8c), y	; f1 8c
B27_1146:		php				; 08 
B27_1147:		ora ($f2, x)	; 01 f2
B27_1149:	.db $80
B27_114a:	.db $02
B27_114b:	.db $fc
B27_114c:		ora ($f2, x)	; 01 f2
B27_114e:	.db $82
B27_114f:	.db $02
B27_1150:		sbc $f201, x	; fd 01 f2
B27_1153:		sty $02			; 84 02
B27_1155:		inc $f401, x	; fe 01 f4
B27_1158:		stx $02			; 86 02
B27_115a:		inc $f601, x	; fe 01 f6
B27_115d:		dey				; 88 
B27_115e:	.db $02
B27_115f:		inc $ec01, x	; fe 01 ec
B27_1162:		stx $82			; 86 82
B27_1164:		inc $f001, x	; fe 01 f0
B27_1167:		sty $82			; 84 82
B27_1169:		inc $f001, x	; fe 01 f0
B27_116c:	.db $82
B27_116d:	.db $82
B27_116e:		sbc $f001, x	; fd 01 f0
B27_1171:	.db $80
B27_1172:	.db $82
B27_1173:	.db $fc
B27_1174:		ora ($f0, x)	; 01 f0
B27_1176:		tay				; a8 
B27_1177:	.db $02
B27_1178:	.db $fc
B27_1179:		ora ($f0, x)	; 01 f0
B27_117b:		tax				; aa 
B27_117c:	.db $02
B27_117d:	.db $fc
B27_117e:	.db $02
B27_117f:		beq B27_112d ; f0 ac

B27_1181:	.db $02
B27_1182:		sed				; f8 
B27_1183:		sbc ($ae), y	; f1 ae
B27_1185:		.db $00				; 00
B27_1186:	.db $02
B27_1187:		beq B27_1139 ; f0 b0

B27_1189:	.db $02
B27_118a:		sed				; f8 
B27_118b:		sbc ($b2), y	; f1 b2
B27_118d:		.db $00				; 00
B27_118e:	.db $02
B27_118f:		;removed
	.db $f0 $b4

B27_1191:	.db $02
B27_1192:		sed				; f8 
B27_1193:		sbc ($b6), y	; f1 b6
B27_1195:		.db $00				; 00
B27_1196:		php				; 08 
B27_1197:		cpx #$bc		; e0 bc
B27_1199:	.db $02
B27_119a:		beq B27_117d ; f0 e1

B27_119c:		ldx $e1f8, y	; be f8 e1
B27_119f:		clv				; b8 
B27_11a0:		.db $00				; 00
B27_11a1:		sbc ($ba, x)	; e1 ba
B27_11a3:		php				; 08 
B27_11a4:		.db $00				; 00
B27_11a5:		tsx				; ba 
B27_11a6:	.db $c2
B27_11a7:		beq B27_11aa ; f0 01

B27_11a9:		clv				; b8 
B27_11aa:		sed				; f8 
B27_11ab:		.db $00				; 00
B27_11ac:		clv				; b8 
B27_11ad:	.db $82
B27_11ae:		.db $00				; 00
B27_11af:		ora ($ba, x)	; 01 ba
B27_11b1:		php				; 08 
B27_11b2:		php				; 08 
B27_11b3:		cpx #$df		; e0 df
B27_11b5:		ora ($f0, x)	; 01 f0
B27_11b7:		sbc ($df, x)	; e1 df
B27_11b9:		sed				; f8 
B27_11ba:		sbc ($df, x)	; e1 df
B27_11bc:		.db $00				; 00
B27_11bd:		sbc ($df, x)	; e1 df
B27_11bf:		php				; 08 
B27_11c0:		ora ($27, x)	; 01 27
B27_11c2:		beq B27_11c5 ; f0 01

B27_11c4:	.db $27
B27_11c5:		sed				; f8 
B27_11c6:		ora ($27, x)	; 01 27
B27_11c8:		.db $00				; 00
B27_11c9:		ora ($27, x)	; 01 27
B27_11cb:		php				; 08 
B27_11cc:		php				; 08 
B27_11cd:		cpx #$df		; e0 df
B27_11cf:		ora ($f0, x)	; 01 f0
B27_11d1:		sbc ($df, x)	; e1 df
B27_11d3:		sed				; f8 
B27_11d4:		sbc ($df, x)	; e1 df
B27_11d6:		.db $00				; 00
B27_11d7:		sbc ($df, x)	; e1 df
B27_11d9:		php				; 08 
B27_11da:		ora ($27, x)	; 01 27
B27_11dc:		beq B27_11df ; f0 01

B27_11de:	.db $27
B27_11df:		sed				; f8 
B27_11e0:		ora ($27, x)	; 01 27
B27_11e2:		.db $00				; 00
B27_11e3:		ora ($27, x)	; 01 27
B27_11e5:		php				; 08 
B27_11e6:	.db $02
B27_11e7:		beq B27_11b3 ; f0 ca

B27_11e9:		ora ($f8, x)	; 01 f8
B27_11eb:		beq B27_11b7 ; f0 ca

B27_11ed:		eor ($00, x)	; 41 00
B27_11ef:	.db $02
B27_11f0:		;removed
	.db $f0 $cc

B27_11f2:		ora ($f8, x)	; 01 f8
B27_11f4:		sbc ($ce), y	; f1 ce
B27_11f6:		.db $00				; 00
B27_11f7:	.db $02
B27_11f8:		beq B27_11c8 ; f0 ce

B27_11fa:		eor ($f8, x)	; 41 f8
B27_11fc:		sbc ($cc), y	; f1 cc
B27_11fe:		.db $00				; 00
B27_11ff:		ora ($00, x)	; 01 00
B27_1201:		bne B27_1204 ; d0 01

B27_1203:	.db $fc
B27_1204:		ora ($f0, x)	; 01 f0
B27_1206:	.db $d2
B27_1207:		ora ($fc, x)	; 01 fc
B27_1209:	.db $02
B27_120a:	.db $fc
B27_120b:	.db $d4
B27_120c:		ora ($f8, x)	; 01 f8
B27_120e:	.db $fd $d6 $00
B27_1211:	.db $02
B27_1212:	.db $fc
B27_1213:		dex				; ca 
B27_1214:		sta ($f8, x)	; 81 f8
B27_1216:	.db $fc
B27_1217:		dex				; ca 
B27_1218:		cmp ($00, x)	; c1 00
B27_121a:	.db $02
B27_121b:		beq B27_11c0 ; f0 a3

B27_121d:	.db $02
B27_121e:		sed				; f8 
B27_121f:		sbc ($a5), y	; f1 a5
B27_1221:		.db $00				; 00
B27_1222:	.db $02
B27_1223:		beq B27_11cc ; f0 a7

B27_1225:	.db $02
B27_1226:		sed				; f8 
B27_1227:		sbc ($a9), y	; f1 a9
B27_1229:		.db $00				; 00
B27_122a:	.db $02
B27_122b:		;removed
	.db $f0 $ab

B27_122d:	.db $02
B27_122e:		sed				; f8 
B27_122f:		beq B27_11dc ; f0 ab

B27_1231:	.db $42
B27_1232:		.db $00				; 00
B27_1233:	.db $02
B27_1234:		beq B27_11e3 ; f0 ad

B27_1236:	.db $02
B27_1237:		sed				; f8 
B27_1238:		beq B27_11e7 ; f0 ad

B27_123a:	.db $42
B27_123b:		.db $00				; 00
B27_123c:	.db $02
B27_123d:		;removed
	.db $f0 $af

B27_123f:	.db $02
B27_1240:		sed				; f8 
B27_1241:		beq B27_11f2 ; f0 af

B27_1243:	.db $42
B27_1244:		.db $00				; 00
B27_1245:	.db $02
B27_1246:		;removed
	.db $f0 $bd

B27_1248:		.db $00				; 00
B27_1249:		sbc $bff1, y	; f9 f1 bf
B27_124c:		ora ($04, x)	; 01 04
B27_124e:		cpx #$40		; e0 40
B27_1250:		.db $00				; 00
B27_1251:		sed				; f8 
B27_1252:		sbc ($42, x)	; e1 42
B27_1254:		.db $00				; 00
B27_1255:		ora ($44, x)	; 01 44
B27_1257:		sed				; f8 
B27_1258:		ora ($46, x)	; 01 46
B27_125a:		.db $00				; 00
B27_125b:	.db $03
B27_125c:		cpx #$48		; e0 48
B27_125e:		.db $00				; 00
B27_125f:		sed				; f8 
B27_1260:		sbc ($4a, x)	; e1 4a
B27_1262:		.db $00				; 00
B27_1263:		ora ($4c, x)	; 01 4c
B27_1265:	.db $fc
B27_1266:	.db $04
B27_1267:		cpx #$4e		; e0 4e
B27_1269:		.db $00				; 00
B27_126a:		sed				; f8 
B27_126b:		sbc ($50, x)	; e1 50
B27_126d:		.db $00				; 00
B27_126e:		ora ($52, x)	; 01 52
B27_1270:		sed				; f8 
B27_1271:		ora ($54, x)	; 01 54
B27_1273:		.db $00				; 00
B27_1274:	.db $04
B27_1275:		cpx #$78		; e0 78
B27_1277:		.db $00				; 00
B27_1278:		sbc $50e1, y	; f9 e1 50
B27_127b:		ora ($01, x)	; 01 01
B27_127d:	.db $52
B27_127e:		sed				; f8 
B27_127f:		ora ($54, x)	; 01 54
B27_1281:		.db $00				; 00
B27_1282:	.db $04
B27_1283:		cpx #$7a		; e0 7a
B27_1285:		.db $00				; 00
B27_1286:		sbc $50e1, y	; f9 e1 50
B27_1289:		ora ($01, x)	; 01 01
B27_128b:	.db $52
B27_128c:		sed				; f8 
B27_128d:		ora ($54, x)	; 01 54
B27_128f:		.db $00				; 00
B27_1290:	.db $04
B27_1291:		cpx #$7c		; e0 7c
B27_1293:		.db $00				; 00
B27_1294:		sbc $50e1, y	; f9 e1 50
B27_1297:		ora ($01, x)	; 01 01
B27_1299:	.db $52
B27_129a:		sed				; f8 
B27_129b:		ora ($54, x)	; 01 54
B27_129d:		.db $00				; 00
B27_129e:	.db $04
B27_129f:		nop				; ea 
B27_12a0:		lsr $00, x		; 56 00
B27_12a2:	.db $f4
B27_12a3:	.db $eb
B27_12a4:		cli				; 58 
B27_12a5:	.db $fc
B27_12a6:	.db $0b
B27_12a7:	.db $5a
B27_12a8:		sed				; f8 
B27_12a9:	.db $0b
B27_12aa:	.db $5c
B27_12ab:		.db $00				; 00
B27_12ac:	.db $04
B27_12ad:		nop				; ea 
B27_12ae:		lsr $f500, x	; 5e 00 f5
B27_12b1:	.db $eb
B27_12b2:		rts				; 60 


B27_12b3:		sbc $620b, x	; fd 0b 62
B27_12b6:		sed				; f8 
B27_12b7:	.db $0b
B27_12b8:	.db $64
B27_12b9:		.db $00				; 00
B27_12ba:	.db $04
B27_12bb:		nop				; ea 
B27_12bc:		ror $00			; 66 00
B27_12be:	.db $f4
B27_12bf:	.db $eb
B27_12c0:		pla				; 68 
B27_12c1:	.db $fc
B27_12c2:	.db $0b
B27_12c3:		ror a			; 6a
B27_12c4:		sed				; f8 
B27_12c5:	.db $0b
B27_12c6:		jmp ($0a00)		; 6c 00 0a


B27_12c9:		inx				; e8 
B27_12ca:		cli				; 58 
B27_12cb:		eor ($ee, x)	; 41 ee
B27_12cd:		sbc #$74		; e9 74
B27_12cf:		inc $09, x		; f6 09
B27_12d1:	.db $5c
B27_12d2:		nop				; ea 
B27_12d3:		ora #$5a		; 09 5a
B27_12d5:	.db $f2
B27_12d6:		sbc #$72		; e9 72
B27_12d8:		inc $e2e0, x	; fe e0 e2
B27_12db:		.db $00				; 00
B27_12dc:		.db $00				; 00
B27_12dd:		sbc ($e4, x)	; e1 e4
B27_12df:		php				; 08 
B27_12e0:		sbc ($e6, x)	; e1 e6
B27_12e2:		bpl B27_12e5 ; 10 01

B27_12e4:	.db $44
B27_12e5:		php				; 08 
B27_12e6:		ora ($46, x)	; 01 46
B27_12e8:		bpl B27_12f4 ; 10 0a

B27_12ea:		inx				; e8 
B27_12eb:		cli				; 58 
B27_12ec:		eor ($ee, x)	; 41 ee
B27_12ee:		sbc #$74		; e9 74
B27_12f0:		inc $09, x		; f6 09
B27_12f2:	.db $5c
B27_12f3:		nop				; ea 
B27_12f4:		ora #$5a		; 09 5a
B27_12f6:	.db $f2
B27_12f7:	.db $eb
B27_12f8:	.db $9e
B27_12f9:		inc $e8e0, x	; fe e0 e8
B27_12fc:		.db $00				; 00
B27_12fd:		.db $00				; 00
B27_12fe:		sbc ($ea, x)	; e1 ea
B27_1300:		php				; 08 
B27_1301:		sbc ($e6, x)	; e1 e6
B27_1303:		bpl B27_1306 ; 10 01

B27_1305:	.db $44
B27_1306:		php				; 08 
B27_1307:		ora ($46, x)	; 01 46
B27_1309:		;removed
	.db $10 $04

B27_130b:		nop				; ea 
B27_130c:		ror $00, x		; 76 00
B27_130e:		sbc $eb, x		; f5 eb
B27_1310:		cli				; 58 
B27_1311:		sbc $5a0b, x	; fd 0b 5a
B27_1314:		sed				; f8 
B27_1315:	.db $0b
B27_1316:	.db $5c
B27_1317:		.db $00				; 00
B27_1318:		ora $d2			; 05 d2
B27_131a:		ror $fb00, x	; 7e 00 fb
B27_131d:		sbc ($80), y	; f1 80
B27_131f:	.db $f7
B27_1320:		sbc ($82), y	; f1 82
B27_1322:	.db $ff
B27_1323:		ora ($84), y	; 11 84
B27_1325:		sed				; f8 
B27_1326:		ora ($86), y	; 11 86
B27_1328:		.db $00				; 00
B27_1329:		ora $d0			; 05 d0
B27_132b:		ror $fc00, x	; 7e 00 fc
B27_132e:		sbc ($88), y	; f1 88
B27_1330:		sed				; f8 
B27_1331:		sbc ($8a), y	; f1 8a
B27_1333:		.db $00				; 00
B27_1334:		ora ($8c), y	; 11 8c
B27_1336:		sed				; f8 
B27_1337:		ora ($8e), y	; 11 8e
B27_1339:		.db $00				; 00
B27_133a:		ora $d2			; 05 d2
B27_133c:		ror $fc00, x	; 7e 00 fc
B27_133f:		sbc ($90), y	; f1 90
B27_1341:	.db $f7
B27_1342:		sbc ($92), y	; f1 92
B27_1344:	.db $ff
B27_1345:		ora ($94), y	; 11 94
B27_1347:		sed				; f8 
B27_1348:		ora ($96), y	; 11 96
B27_134a:		.db $00				; 00
B27_134b:	.db $0b
B27_134c:	.db $d2
B27_134d:		ror $f543, x	; 7e 43 f5
B27_1350:		sbc ($82), y	; f1 82
B27_1352:	.db $ef
B27_1353:		sbc ($f6), y	; f1 f6
B27_1355:	.db $f7
B27_1356:		ora ($86), y	; 11 86
B27_1358:		sbc $8411		; ed11 84
B27_135b:		sbc $f1, x		; f5 f1
B27_135d:	.db $f4
B27_135e:	.db $ff
B27_135f:		;removed
	.db $f0 $e2

B27_1361:		.db $00				; 00
B27_1362:		.db $00				; 00
B27_1363:		sbc ($e4), y	; f1 e4
B27_1365:		php				; 08 
B27_1366:		sbc ($e6), y	; f1 e6
B27_1368:		;removed
	.db $10 $11

B27_136a:	.db $44
B27_136b:		php				; 08 
B27_136c:		ora ($46), y	; 11 46
B27_136e:		;removed
	.db $10 $0b

B27_1370:	.db $d2
B27_1371:		ror $f543, x	; 7e 43 f5
B27_1374:		sbc ($82), y	; f1 82
B27_1376:	.db $ef
B27_1377:		sbc ($f8), y	; f1 f8
B27_1379:	.db $ff
B27_137a:		ora ($86), y	; 11 86
B27_137c:		sbc $8411		; ed11 84
B27_137f:		sbc $f1, x		; f5 f1
B27_1381:	.db $fa
B27_1382:	.db $f7
B27_1383:		;removed
	.db $f0 $e8

B27_1385:		.db $00				; 00
B27_1386:		.db $00				; 00
B27_1387:		sbc ($ea), y	; f1 ea
B27_1389:		php				; 08 
B27_138a:		sbc ($e6), y	; f1 e6
B27_138c:		;removed
	.db $10 $11

B27_138e:	.db $44
B27_138f:		php				; 08 
B27_1390:		ora ($46), y	; 11 46
B27_1392:		;removed
	.db $10 $05

B27_1394:	.db $d2
B27_1395:		ror $fd00, x	; 7e 00 fd
B27_1398:		sbc ($98), y	; f1 98
B27_139a:		sed				; f8 
B27_139b:		sbc ($92), y	; f1 92
B27_139d:		.db $00				; 00
B27_139e:		ora ($94), y	; 11 94
B27_13a0:		sbc $9611, y	; f9 11 96
B27_13a3:		ora ($04, x)	; 01 04
B27_13a5:		cpx #$a0		; e0 a0
B27_13a7:		.db $00				; 00
B27_13a8:		sed				; f8 
B27_13a9:		sbc ($a2, x)	; e1 a2
B27_13ab:		.db $00				; 00
B27_13ac:		ora ($a4, x)	; 01 a4
B27_13ae:		sed				; f8 
B27_13af:		ora ($a6, x)	; 01 a6
B27_13b1:		.db $00				; 00
B27_13b2:	.db $04
B27_13b3:		cpx #$a8		; e0 a8
B27_13b5:		.db $00				; 00
B27_13b6:		sed				; f8 
B27_13b7:		sbc ($aa, x)	; e1 aa
B27_13b9:		.db $00				; 00
B27_13ba:		ora ($ac, x)	; 01 ac
B27_13bc:		sed				; f8 
B27_13bd:		ora ($ae, x)	; 01 ae
B27_13bf:		.db $00				; 00
B27_13c0:	.db $04
B27_13c1:		cpx #$b0		; e0 b0
B27_13c3:		.db $00				; 00
B27_13c4:		sed				; f8 
B27_13c5:		sbc ($b2, x)	; e1 b2
B27_13c7:		.db $00				; 00
B27_13c8:		ora ($b4, x)	; 01 b4
B27_13ca:		sed				; f8 
B27_13cb:		ora ($b6, x)	; 01 b6
B27_13cd:		.db $00				; 00
B27_13ce:		asl a			; 0a
B27_13cf:		cpx #$b2		; e0 b2
B27_13d1:	.db $42
B27_13d2:		inc $eee1		; ee e1 ee
B27_13d5:		inc $01, x		; f6 01
B27_13d7:		ldx $ee, y		; b6 ee
B27_13d9:		ora ($b4, x)	; 01 b4
B27_13db:		inc $e1, x		; f6 e1
B27_13dd:		cpx $e0fe		; ec fe e0
B27_13e0:	.db $e2
B27_13e1:		.db $00				; 00
B27_13e2:		.db $00				; 00
B27_13e3:		sbc ($e4, x)	; e1 e4
B27_13e5:		php				; 08 
B27_13e6:		sbc ($e6, x)	; e1 e6
B27_13e8:		bpl B27_13eb ; 10 01

B27_13ea:	.db $44
B27_13eb:		php				; 08 
B27_13ec:		ora ($46, x)	; 01 46
B27_13ee:		bpl B27_13fa ; 10 0a

B27_13f0:		cpx #$b2		; e0 b2
B27_13f2:	.db $42
B27_13f3:		inc $f2e1		; ee e1 f2
B27_13f6:		inc $01, x		; f6 01
B27_13f8:		ldx $ee, y		; b6 ee
B27_13fa:		ora ($b4, x)	; 01 b4
B27_13fc:		inc $f1, x		; f6 f1
B27_13fe:		beq B27_13fe ; f0 fe

B27_1400:		cpx #$e8		; e0 e8
B27_1402:		.db $00				; 00
B27_1403:		.db $00				; 00
B27_1404:		sbc ($ea, x)	; e1 ea
B27_1406:		php				; 08 
B27_1407:		sbc ($e6, x)	; e1 e6
B27_1409:		bpl B27_140c ; 10 01

B27_140b:	.db $44
B27_140c:		php				; 08 
B27_140d:		ora ($46, x)	; 01 46
B27_140f:		bpl B27_1415 ; 10 04

B27_1411:		cpx #$b8		; e0 b8
B27_1413:		.db $00				; 00
B27_1414:		sed				; f8 
B27_1415:	.db $e3
B27_1416:	.db $b2
B27_1417:		.db $00				; 00
B27_1418:		ora ($b4, x)	; 01 b4
B27_141a:		sed				; f8 
B27_141b:		ora ($b6, x)	; 01 b6
B27_141d:		.db $00				; 00
B27_141e:	.db $0c
B27_141f:		ldy #$f2		; a0 f2
B27_1421:		ora ($f8, x)	; 01 f8
B27_1423:		lda ($ca, x)	; a1 ca
B27_1425:		.db $00				; 00
B27_1426:		cmp ($e0, x)	; c1 e0
B27_1428:		beq B27_13eb ; f0 c1

B27_142a:		;removed
	.db $f0 $f8

B27_142c:		sbc ($f2, x)	; e1 f2
B27_142e:		sed				; f8 
B27_142f:		sbc ($f0, x)	; e1 f0
B27_1431:		.db $00				; 00
B27_1432:		ora ($f2, x)	; 01 f2
B27_1434:		beq B27_1437 ; f0 01

B27_1436:	.db $f2
B27_1437:		.db $00				; 00
B27_1438:		and ($d6, x)	; 21 d6
B27_143a:		inx				; e8 
B27_143b:		and ($ca, x)	; 21 ca
B27_143d:		.db $00				; 00
B27_143e:		and ($dc, x)	; 21 dc
B27_1440:		php				; 08 
B27_1441:		eor ($d6, x)	; 41 d6
B27_1443:		cpx #$04		; e0 04
B27_1445:		cpx #$80		; e0 80
B27_1447:		.db $00				; 00
B27_1448:		sed				; f8 
B27_1449:		sbc ($82, x)	; e1 82
B27_144b:		.db $00				; 00
B27_144c:		ora ($84, x)	; 01 84
B27_144e:		sed				; f8 
B27_144f:		ora ($86, x)	; 01 86
B27_1451:		.db $00				; 00
B27_1452:	.db $04
B27_1453:		cpx #$88		; e0 88
B27_1455:		.db $00				; 00
B27_1456:		sed				; f8 
B27_1457:		sbc ($8a, x)	; e1 8a
B27_1459:		.db $00				; 00
B27_145a:		ora ($8c, x)	; 01 8c
B27_145c:		sed				; f8 
B27_145d:		ora ($8e, x)	; 01 8e
B27_145f:		.db $00				; 00
B27_1460:	.db $04
B27_1461:		cpx #$90		; e0 90
B27_1463:		.db $00				; 00
B27_1464:		sed				; f8 
B27_1465:		sbc ($92, x)	; e1 92
B27_1467:		.db $00				; 00
B27_1468:		ora ($94, x)	; 01 94
B27_146a:	.db $fc
B27_146b:		ora ($96, x)	; 01 96
B27_146d:	.db $04
B27_146e:		php				; 08 
B27_146f:		cpx #$98		; e0 98
B27_1471:		.db $00				; 00
B27_1472:		.db $00				; 00
B27_1473:		sbc ($9a, x)	; e1 9a
B27_1475:		php				; 08 
B27_1476:		sbc ($9c, x)	; e1 9c
B27_1478:		;removed
	.db $10 $e1

B27_147a:	.db $9e
B27_147b:		clc				; 18 
B27_147c:		ora ($a0, x)	; 01 a0
B27_147e:		.db $00				; 00
B27_147f:		ora ($a2, x)	; 01 a2
B27_1481:		php				; 08 
B27_1482:		ora ($a4, x)	; 01 a4
B27_1484:		;removed
	.db $10 $01

B27_1486:		ldx $18			; a6 18
B27_1488:	.db $07
B27_1489:		cpx #$98		; e0 98
B27_148b:		.db $00				; 00
B27_148c:		.db $00				; 00
B27_148d:		sbc ($a8, x)	; e1 a8
B27_148f:		php				; 08 
B27_1490:		sbc ($aa, x)	; e1 aa
B27_1492:		;removed
	.db $10 $01

B27_1494:		ldy #$00		; a0 00
B27_1496:		ora ($a2, x)	; 01 a2
B27_1498:		php				; 08 
B27_1499:		ora ($ac, x)	; 01 ac
B27_149b:		;removed
	.db $10 $01

B27_149d:		ldx $0418		; ae 18 04
B27_14a0:		cpx #$b0		; e0 b0
B27_14a2:		.db $00				; 00
B27_14a3:		.db $00				; 00
B27_14a4:		sbc ($b2, x)	; e1 b2
B27_14a6:		php				; 08 
B27_14a7:		ora ($b4, x)	; 01 b4
B27_14a9:		.db $00				; 00
B27_14aa:		ora ($b6, x)	; 01 b6
B27_14ac:		php				; 08 
B27_14ad:	.db $02
B27_14ae:		cpx #$2d		; e0 2d
B27_14b0:	.db $03
B27_14b1:		.db $00				; 00
B27_14b2:		sbc ($2f, x)	; e1 2f
B27_14b4:		php				; 08 
B27_14b5:	.db $04
B27_14b6:		cpx #$8e		; e0 8e
B27_14b8:		ora ($f7, x)	; 01 f7
B27_14ba:		ora ($90, x)	; 01 90
B27_14bc:		sbc ($e0), y	; f1 e0
B27_14be:		stx $0141		; 8e 41 01
B27_14c1:		ora ($90, x)	; 01 90
B27_14c3:	.db $07
B27_14c4:	.db $04
B27_14c5:		cpx #$90		; e0 90
B27_14c7:		eor ($f7, x)	; 41 f7
B27_14c9:		ora ($8e, x)	; 01 8e
B27_14cb:		sbc ($e0), y	; f1 e0
B27_14cd:		;removed
	.db $90 $01

B27_14cf:		ora ($01, x)	; 01 01
B27_14d1:		stx $0407		; 8e 07 04
B27_14d4:		cpx #$80		; e0 80
B27_14d6:		ora ($f8, x)	; 01 f8
B27_14d8:		sbc ($82, x)	; e1 82
B27_14da:		.db $00				; 00
B27_14db:		ora ($84, x)	; 01 84
B27_14dd:		sed				; f8 
B27_14de:		ora ($86, x)	; 01 86
B27_14e0:		.db $00				; 00
B27_14e1:		php				; 08 
B27_14e2:		dec $c38e, x	; de 8e c3
B27_14e5:		sbc ($de), y	; f1 de
B27_14e7:		stx $0783		; 8e 83 07
B27_14ea:		cpx #$82		; e0 82
B27_14ec:	.db $03
B27_14ed:		sed				; f8 
B27_14ee:		sbc ($82, x)	; e1 82
B27_14f0:		.db $00				; 00
B27_14f1:	.db $ff
B27_14f2:		bcc B27_14e5 ; 90 f1

B27_14f4:		ora ($84, x)	; 01 84
B27_14f6:		sed				; f8 
B27_14f7:		ora ($86, x)	; 01 86
B27_14f9:		.db $00				; 00
B27_14fa:		inc $4390, x	; fe 90 43
B27_14fd:	.db $07
B27_14fe:	.db $04
B27_14ff:		cpx #$80		; e0 80
B27_1501:	.db $02
B27_1502:		sed				; f8 
B27_1503:		sbc ($82, x)	; e1 82
B27_1505:		.db $00				; 00
B27_1506:		ora ($84, x)	; 01 84
B27_1508:		sed				; f8 
B27_1509:		ora ($86, x)	; 01 86
B27_150b:		.db $00				; 00
B27_150c:		ora $e0			; 05 e0
B27_150e:	.db $80
B27_150f:	.db $02
B27_1510:		sed				; f8 
B27_1511:		sbc ($82, x)	; e1 82
B27_1513:		.db $00				; 00
B27_1514:		ora ($88, x)	; 01 88
B27_1516:	.db $f4
B27_1517:		ora ($8a, x)	; 01 8a
B27_1519:	.db $fc
B27_151a:		ora ($8c, x)	; 01 8c
B27_151c:	.db $04
B27_151d:	.db $04
B27_151e:		cpx #$f8		; e0 f8
B27_1520:	.db $02
B27_1521:		sed				; f8 
B27_1522:		sbc ($fa, x)	; e1 fa
B27_1524:		.db $00				; 00
B27_1525:		ora ($fc, x)	; 01 fc
B27_1527:		sed				; f8 
B27_1528:		ora ($ee, x)	; 01 ee
B27_152a:		.db $00				; 00
B27_152b:	.db $02
B27_152c:		;removed
	.db $f0 $5c

B27_152e:		.db $00				; 00
B27_152f:		sed				; f8 
B27_1530:		;removed
	.db $f0 $5c

B27_1532:		rti				; 40 


B27_1533:		.db $00				; 00
B27_1534:		php				; 08 
B27_1535:		bne B27_1595 ; d0 5e

B27_1537:		.db $00				; 00
B27_1538:		beq B27_150b ; f0 d1

B27_153a:		lsr $d1f8, x	; 5e f8 d1
B27_153d:		lsr $d100, x	; 5e 00 d1
B27_1540:		lsr $f108, x	; 5e 08 f1
B27_1543:		lsr $f1f0, x	; 5e f0 f1
B27_1546:	.db $5c
B27_1547:		sed				; f8 
B27_1548:		sbc ($5e), y	; f1 5e
B27_154a:		php				; 08 
B27_154b:		beq B27_15a9 ; f0 5c

B27_154d:		rti				; 40 


B27_154e:		.db $00				; 00
B27_154f:		bpl B27_14f1 ; 10 a0

B27_1551:		tsx				; ba 
B27_1552:		eor ($f8, x)	; 41 f8
B27_1554:		cmp ($bc, x)	; c1 bc
B27_1556:		sed				; f8 
B27_1557:		cmp ($9e, x)	; c1 9e
B27_1559:		.db $00				; 00
B27_155a:		sbc ($a0, x)	; e1 a0
B27_155c:		.db $00				; 00
B27_155d:		sbc ($a2, x)	; e1 a2
B27_155f:		php				; 08 
B27_1560:		sbc ($a4, x)	; e1 a4
B27_1562:		;removed
	.db $10 $e1

B27_1564:		ldx $18			; a6 18
B27_1566:		ora ($a8, x)	; 01 a8
B27_1568:		.db $00				; 00
B27_1569:		ora ($aa, x)	; 01 aa
B27_156b:		clc				; 18 
B27_156c:		and ($b6, x)	; 21 b6
B27_156e:		sed				; f8 
B27_156f:		and ($ac, x)	; 21 ac
B27_1571:		.db $00				; 00
B27_1572:		and ($ae, x)	; 21 ae
B27_1574:		bpl B27_1597 ; 10 21

B27_1576:		;removed
	.db $b0 $18

B27_1578:		eor ($b8, x)	; 41 b8
B27_157a:		sed				; f8 
B27_157b:		eor ($b2, x)	; 41 b2
B27_157d:		bpl B27_15c0 ; 10 41

B27_157f:		ldy $18, x		; b4 18
B27_1581:		ora $a0, x		; 15 a0
B27_1583:	.db $80
B27_1584:		and ($f8, x)	; 21 f8
B27_1586:		lda ($82, x)	; a1 82
B27_1588:		.db $00				; 00
B27_1589:		cmp ($84, x)	; c1 84
B27_158b:		beq B27_154e ; f0 c1

B27_158d:		stx $f8			; 86 f8
B27_158f:		cmp ($88, x)	; c1 88
B27_1591:		.db $00				; 00
B27_1592:		cmp ($8a, x)	; c1 8a
B27_1594:		php				; 08 
B27_1595:		cmp ($8c, x)	; c1 8c
B27_1597:		bpl B27_157a ; 10 e1

B27_1599:		stx $e1e8		; 8e e8 e1
B27_159c:		;removed
	.db $90 $f0

B27_159e:		sbc ($94, x)	; e1 94
B27_15a0:		sed				; f8 
B27_15a1:		sbc ($9e, x)	; e1 9e
B27_15a3:		.db $00				; 00
B27_15a4:		sbc ($9e, x)	; e1 9e
B27_15a6:		php				; 08 
B27_15a7:		sbc ($9e, x)	; e1 9e
B27_15a9:		;removed
	.db $10 $e1

B27_15ab:		stx $18, y		; 96 18
B27_15ad:		ora ($98, x)	; 01 98
B27_15af:		inx				; e8 
B27_15b0:		ora ($9a, x)	; 01 9a
B27_15b2:		beq B27_15b5 ; f0 01

B27_15b4:	.db $9e
B27_15b5:		sed				; f8 
B27_15b6:		ora ($9e, x)	; 01 9e
B27_15b8:		.db $00				; 00
B27_15b9:		ora ($9e, x)	; 01 9e
B27_15bb:		php				; 08 
B27_15bc:		ora ($9e, x)	; 01 9e
B27_15be:		bpl B27_15c1 ; 10 01

B27_15c0:	.db $9c
B27_15c1:		clc				; 18 
B27_15c2:		bpl B27_15a4 ; 10 e0

B27_15c4:	.db $d4
B27_15c5:	.db $03
B27_15c6:		cpx #$e1		; e0 e1
B27_15c8:		;removed
	.db $d0 $f0

B27_15ca:		sbc ($d2, x)	; e1 d2
B27_15cc:		sed				; f8 
B27_15cd:		sbc ($d4, x)	; e1 d4
B27_15cf:		.db $00				; 00
B27_15d0:		sbc ($d6, x)	; e1 d6
B27_15d2:		php				; 08 
B27_15d3:		sbc ($d6, x)	; e1 d6
B27_15d5:		bpl B27_15b8 ; 10 e1

B27_15d7:		cld				; d8 
B27_15d8:		clc				; 18 
B27_15d9:		ora ($d0, x)	; 01 d0
B27_15db:		inx				; e8 
B27_15dc:		ora ($da, x)	; 01 da
B27_15de:		.db $00				; 00
B27_15df:		ora ($dc, x)	; 01 dc
B27_15e1:		php				; 08 
B27_15e2:		ora ($dc, x)	; 01 dc
B27_15e4:		;removed
	.db $10 $01

B27_15e6:		dec $2118, x	; de 18 21
B27_15e9:	.db $da
B27_15ea:		sed				; f8 
B27_15eb:		and ($dc, x)	; 21 dc
B27_15ed:		.db $00				; 00
B27_15ee:		and ($dc, x)	; 21 dc
B27_15f0:		php				; 08 
B27_15f1:		and ($de, x)	; 21 de
B27_15f3:		;removed
	.db $10 $05

B27_15f5:		cpy #$00		; c0 00
B27_15f7:		.db $00				; 00
B27_15f8:		sbc $02e1, x	; fd e1 02
B27_15fb:		sed				; f8 
B27_15fc:		sbc ($04, x)	; e1 04
B27_15fe:		.db $00				; 00
B27_15ff:		ora ($06, x)	; 01 06
B27_1601:		sed				; f8 
B27_1602:		ora ($08, x)	; 01 08
B27_1604:		.db $00				; 00
B27_1605:		ora $c0			; 05 c0
B27_1607:		.db $00				; 00
B27_1608:		.db $00				; 00
B27_1609:		sbc $0ae1, x	; fd e1 0a
B27_160c:		sed				; f8 
B27_160d:		sbc ($0c, x)	; e1 0c
B27_160f:		.db $00				; 00
B27_1610:		ora ($0e, x)	; 01 0e
B27_1612:		sed				; f8 
B27_1613:		ora ($10, x)	; 01 10
B27_1615:		.db $00				; 00
B27_1616:		asl $c0			; 06 c0
B27_1618:		.db $00				; 00
B27_1619:		.db $00				; 00
B27_161a:		sbc $12e1, x	; fd e1 12
B27_161d:		sed				; f8 
B27_161e:		sbc ($14, x)	; e1 14
B27_1620:		.db $00				; 00
B27_1621:		ora ($18, x)	; 01 18
B27_1623:		sed				; f8 
B27_1624:		ora ($1a, x)	; 01 1a
B27_1626:		.db $00				; 00
B27_1627:		sbc $f016, y	; f9 16 f0
B27_162a:		asl $c0			; 06 c0
B27_162c:		.db $00				; 00
B27_162d:		.db $00				; 00
B27_162e:		sbc $1ce1, x	; fd e1 1c
B27_1631:		sed				; f8 
B27_1632:		sbc ($1e, x)	; e1 1e
B27_1634:		.db $00				; 00
B27_1635:		ora ($22, x)	; 01 22
B27_1637:		sed				; f8 
B27_1638:		ora ($24, x)	; 01 24
B27_163a:		.db $00				; 00
B27_163b:	.db $ff
B27_163c:		jsr $04f0		; 20 f0 04
B27_163f:		cpx #$74		; e0 74
B27_1641:	.db $02
B27_1642:	.db $fa
B27_1643:		sbc ($76, x)	; e1 76
B27_1645:	.db $02
B27_1646:		ora ($7a, x)	; 01 7a
B27_1648:		.db $00				; 00
B27_1649:		ora ($78, x)	; 01 78
B27_164b:		sed				; f8 
B27_164c:		ora $e0			; 05 e0
B27_164e:	.db $7c
B27_164f:	.db $02
B27_1650:		inc $e1, x		; f6 e1
B27_1652:		ror $e1fe, x	; 7e fe e1
B27_1655:		cpy #$06		; c0 06
B27_1657:		ora ($7a, x)	; 01 7a
B27_1659:		.db $00				; 00
B27_165a:		ora ($78, x)	; 01 78
B27_165c:		sed				; f8 
B27_165d:		ora $e0			; 05 e0
B27_165f:	.db $c2
B27_1660:	.db $02
B27_1661:		inc $e1, x		; f6 e1
B27_1663:		cpy $fe			; c4 fe
B27_1665:		sbc ($c6, x)	; e1 c6
B27_1667:		asl $01			; 06 01
B27_1669:	.db $7a
B27_166a:		.db $00				; 00
B27_166b:		ora ($78, x)	; 01 78
B27_166d:		sed				; f8 
B27_166e:		asl $c0			; 06 c0
B27_1670:	.db $54
B27_1671:	.db $02
B27_1672:		sed				; f8 
B27_1673:		cmp ($56, x)	; c1 56
B27_1675:		.db $00				; 00
B27_1676:		sbc ($58, x)	; e1 58
B27_1678:		sed				; f8 
B27_1679:		sbc ($5a, x)	; e1 5a
B27_167b:		.db $00				; 00
B27_167c:		ora ($5c, x)	; 01 5c
B27_167e:		sed				; f8 
B27_167f:		ora ($5e, x)	; 01 5e
B27_1681:		.db $00				; 00
B27_1682:	.db $07
B27_1683:		cpy #$54		; c0 54
B27_1685:	.db $02
B27_1686:		sed				; f8 
B27_1687:		cmp ($56, x)	; c1 56
B27_1689:		.db $00				; 00
B27_168a:		sbc ($60, x)	; e1 60
B27_168c:		sed				; f8 
B27_168d:		sbc ($62, x)	; e1 62
B27_168f:		.db $00				; 00
B27_1690:		ora ($66, x)	; 01 66
B27_1692:		sed				; f8 
B27_1693:		ora ($68, x)	; 01 68
B27_1695:		.db $00				; 00
B27_1696:		sbc ($64), y	; f1 64
B27_1698:		beq B27_16a1 ; f0 07

B27_169a:		cpy #$54		; c0 54
B27_169c:	.db $02
B27_169d:		sed				; f8 
B27_169e:		cmp ($56, x)	; c1 56
B27_16a0:		.db $00				; 00
B27_16a1:		sbc ($6a, x)	; e1 6a
B27_16a3:		sed				; f8 
B27_16a4:		sbc ($6c, x)	; e1 6c
B27_16a6:		.db $00				; 00
B27_16a7:		ora ($70, x)	; 01 70
B27_16a9:		sed				; f8 
B27_16aa:		ora ($72, x)	; 01 72
B27_16ac:		.db $00				; 00
B27_16ad:	.db $f3
B27_16ae:		ror $05f0		; 6e f0 05
B27_16b1:		cpy #$26		; c0 26
B27_16b3:	.db $02
B27_16b4:	.db $fc
B27_16b5:		sbc ($28, x)	; e1 28
B27_16b7:		sed				; f8 
B27_16b8:		sbc ($2a, x)	; e1 2a
B27_16ba:		.db $00				; 00
B27_16bb:		ora ($2c, x)	; 01 2c
B27_16bd:		sed				; f8 
B27_16be:		ora ($2e, x)	; 01 2e
B27_16c0:		.db $00				; 00
B27_16c1:		ora $c0			; 05 c0
B27_16c3:		bmi B27_16c5 ; 30 00

B27_16c5:	.db $fc
B27_16c6:		cpx #$32		; e0 32
B27_16c8:	.db $02
B27_16c9:		sed				; f8 
B27_16ca:		sbc ($34, x)	; e1 34
B27_16cc:		.db $00				; 00
B27_16cd:		ora ($2c, x)	; 01 2c
B27_16cf:		sed				; f8 
B27_16d0:		ora ($2e, x)	; 01 2e
B27_16d2:		.db $00				; 00
B27_16d3:	.db $07
B27_16d4:		cpy #$30		; c0 30
B27_16d6:		.db $00				; 00
B27_16d7:	.db $fc
B27_16d8:		sbc ($3e, x)	; e1 3e
B27_16da:	.db $f3
B27_16db:		sbc ($40, x)	; e1 40
B27_16dd:	.db $fb
B27_16de:		cpx #$36		; e0 36
B27_16e0:	.db $02
B27_16e1:		sed				; f8 
B27_16e2:		sbc ($38, x)	; e1 38
B27_16e4:		.db $00				; 00
B27_16e5:		ora ($2c, x)	; 01 2c
B27_16e7:		sed				; f8 
B27_16e8:		ora ($2e, x)	; 01 2e
B27_16ea:		.db $00				; 00
B27_16eb:		asl $c0			; 06 c0
B27_16ed:		bmi B27_16ef ; 30 00

B27_16ef:	.db $fc
B27_16f0:		sbc ($42, x)	; e1 42
B27_16f2:	.db $f4
B27_16f3:		sbc ($44, x)	; e1 44
B27_16f5:	.db $fc
B27_16f6:		cpx #$3a		; e0 3a
B27_16f8:	.db $02
B27_16f9:		.db $00				; 00
B27_16fa:		ora ($2c, x)	; 01 2c
B27_16fc:		sed				; f8 
B27_16fd:		ora ($2e, x)	; 01 2e
B27_16ff:		.db $00				; 00
B27_1700:		asl $c0			; 06 c0
B27_1702:		bmi B27_1704 ; 30 00

B27_1704:	.db $fc
B27_1705:		sbc ($46, x)	; e1 46
B27_1707:	.db $f4
B27_1708:		sbc ($48, x)	; e1 48
B27_170a:	.db $fc
B27_170b:		cpx #$3c		; e0 3c
B27_170d:	.db $02
B27_170e:		.db $00				; 00
B27_170f:		ora ($2c, x)	; 01 2c
B27_1711:		sed				; f8 
B27_1712:		ora ($2e, x)	; 01 2e
B27_1714:		.db $00				; 00
B27_1715:		asl a			; 0a
B27_1716:		cpy #$4a		; c0 4a
B27_1718:		.db $00				; 00
B27_1719:	.db $ef
B27_171a:		sbc ($02, x)	; e1 02
B27_171c:		sbc #$e1		; e9 e1
B27_171e:		lsr $e1f0		; 4e f0 e1
B27_1721:		;removed
	.db $50 $f8

B27_1723:		ora ($06, x)	; 01 06
B27_1725:		inx				; e8 
B27_1726:		ora ($08, x)	; 01 08
B27_1728:		beq B27_16eb ; f0 c1

B27_172a:		jmp $e0f8		; 4c f8 e0


B27_172d:	.db $52
B27_172e:	.db $02
B27_172f:		.db $00				; 00
B27_1730:		ora ($2c, x)	; 01 2c
B27_1732:		sed				; f8 
B27_1733:		ora ($2e, x)	; 01 2e
B27_1735:		.db $00				; 00
B27_1736:	.db $0c
B27_1737:		cpy #$e0		; c0 e0
B27_1739:		.db $00				; 00
B27_173a:		sbc ($c1), y	; f1 c1
B27_173c:	.db $e2
B27_173d:		sbc $f0e1, y	; f9 e1 f0
B27_1740:		sbc #$e1		; e9 e1
B27_1742:	.db $f2
B27_1743:		sbc ($e1), y	; f1 e1
B27_1745:		cpx $e1f9		; ec f9 e1
B27_1748:		inc $0101		; ee 01 01
B27_174b:		asl $eb			; 06 eb
B27_174d:		ora ($08, x)	; 01 08
B27_174f:	.db $f3
B27_1750:		cpx #$e4		; e0 e4
B27_1752:	.db $02
B27_1753:		sbc $e6e1, y	; f9 e1 e6
B27_1756:		ora ($01, x)	; 01 01
B27_1758:		inx				; e8 
B27_1759:		sed				; f8 
B27_175a:		ora ($ea, x)	; 01 ea
B27_175c:		.db $00				; 00
B27_175d:	.db $02
B27_175e:		;removed
	.db $f0 $64

B27_1760:		eor ($f8, x)	; 41 f8
B27_1762:		sbc ($62), y	; f1 62
B27_1764:		.db $00				; 00
B27_1765:		lda #$10		; a9 10
B27_1767:		ldy $054e		; ac 4e 05
B27_176a:		cpy #$02		; c0 02
B27_176c:		bne B27_1770 ; d0 02

B27_176e:		lda #$0c		; a9 0c
B27_1770:		clc				; 18 
B27_1771:		adc $041c		; 6d 1c 04
B27_1774:		bcs B27_177a ; b0 04

B27_1776:		cmp #$f0		; c9 f0
B27_1778:		bcc B27_177c ; 90 02

B27_177a:		adc #$0f		; 69 0f
B27_177c:		tay				; a8 
B27_177d:		lda $0e			; a5 0e
B27_177f:		jmp $b788		; 4c 88 b7


B27_1782:		lda $0438, x	; bd 38 04
B27_1785:		ldy $041c, x	; bc 1c 04
B27_1788:		and #$f0		; 29 f0
B27_178a:		lsr a			; 4a
B27_178b:		lsr a			; 4a
B27_178c:		lsr a			; 4a
B27_178d:		sta $12			; 85 12
B27_178f:		tya				; 98 
B27_1790:		ldy $57			; a4 57
B27_1792:		sec				; 38 
B27_1793:		sbc #$30		; e9 30
B27_1795:		bcs B27_179a ; b0 03

B27_1797:		sbc #$0f		; e9 0f
B27_1799:		dey				; 88 
B27_179a:		clc				; 18 
B27_179b:		adc $56			; 65 56
B27_179d:		bcs B27_17a3 ; b0 04

B27_179f:		cmp #$f0		; c9 f0
B27_17a1:		bcc B27_17a6 ; 90 03

B27_17a3:		adc #$0f		; 69 0f
B27_17a5:		iny				; c8 
B27_17a6:		and #$f0		; 29 f0
B27_17a8:		sta $00			; 85 00
B27_17aa:		sta $0b			; 85 0b
B27_17ac:		sty $0f			; 84 0f
B27_17ae:		lda #$0a		; a9 0a
B27_17b0:		asl $00			; 06 00
B27_17b2:		rol a			; 2a
B27_17b3:		asl $00			; 06 00
B27_17b5:		rol a			; 2a
B27_17b6:		sta $13			; 85 13
B27_17b8:		lda $12			; a5 12
B27_17ba:		ora $00			; 05 00
B27_17bc:		sta $12			; 85 12
B27_17be:		rts				; 60 


B27_17bf:		sty $09			; 84 09
B27_17c1:		lda $68			; a5 68
B27_17c3:		bpl B27_17fb ; 10 36

B27_17c5:		lda $10			; a5 10
B27_17c7:		sta $0e			; 85 0e
B27_17c9:		jsr $b765		; 20 65 b7
B27_17cc:		jsr $b8b8		; 20 b8 b8
B27_17cf:		bne B27_17be ; d0 ed

B27_17d1:		jsr $ba05		; 20 05 ba
B27_17d4:		bmi B27_17e1 ; 30 0b

B27_17d6:		lda #$10		; a9 10
B27_17d8:		jsr playSound		; 20 5f e2
B27_17db:		jsr $b9a3		; 20 a3 b9
B27_17de:		jmp $b982		; 4c 82 b9


B27_17e1:		jsr $bae1		; 20 e1 ba
B27_17e4:		bcs B27_17be ; b0 d8

B27_17e6:		lda $041c		; ad 1c 04
B27_17e9:		clc				; 18 
B27_17ea:		adc #$08		; 69 08
B27_17ec:		sta $14			; 85 14
B27_17ee:		lda $0e			; a5 0e
B27_17f0:		sta $15			; 85 15
B27_17f2:		jsr $e935		; 20 35 e9
B27_17f5:		jsr $b831		; 20 31 b8
B27_17f8:		jmp $b83f		; 4c 3f b8


B27_17fb:		lda $13			; a5 13
B27_17fd:		sta $0e			; 85 0e
B27_17ff:		lda $14			; a5 14
B27_1801:		sta $0f			; 85 0f
B27_1803:		jsr $b8b8		; 20 b8 b8
B27_1806:		bne B27_17be ; d0 b6

B27_1808:		jsr $ba05		; 20 05 ba
B27_180b:		bmi B27_181b ; 30 0e

B27_180d:		lda #$10		; a9 10
B27_180f:		jsr playSound		; 20 5f e2
B27_1812:		jsr $b9b2		; 20 b2 b9
B27_1815:		jsr $b9a3		; 20 a3 b9
B27_1818:		jmp $b982		; 4c 82 b9


B27_181b:		jsr $bae7		; 20 e7 ba
B27_181e:		bcs B27_185d ; b0 3d

B27_1820:		jsr $b9b2		; 20 b2 b9
B27_1823:		ldy $32			; a4 32
B27_1825:		lda $c94b, y	; b9 4b c9
B27_1828:		jsr $e9b3		; 20 b3 e9
B27_182b:		jsr $b831		; 20 31 b8
B27_182e:		jmp $b85e		; 4c 5e b8


B27_1831:		jsr $b9e4		; 20 e4 b9
B27_1834:		jsr $b8de		; 20 de b8
B27_1837:		jsr $b94b		; 20 4b b9
B27_183a:		lda #$11		; a9 11
B27_183c:		jmp playSound		; 4c 5f e2


B27_183f:		jsr $b883		; 20 83 b8
B27_1842:		bne B27_1882 ; d0 3e

B27_1844:		jsr $b891		; 20 91 b8
B27_1847:		lda $0e			; a5 0e
B27_1849:		and #$e0		; 29 e0
B27_184b:		ldy $a5			; a4 a5
B27_184d:		beq B27_1851 ; f0 02

B27_184f:		ora #$10		; 09 10
B27_1851:		sta $0438, x	; 9d 38 04
B27_1854:		lda $041c		; ad 1c 04
B27_1857:		clc				; 18 
B27_1858:		adc #$1d		; 69 1d
B27_185a:		sta $041c, x	; 9d 1c 04
B27_185d:		rts				; 60 


B27_185e:		jsr $b883		; 20 83 b8
B27_1861:		bne B27_1882 ; d0 1f

B27_1863:		jsr $b891		; 20 91 b8
B27_1866:		lda $12			; a5 12
B27_1868:		asl a			; 0a
B27_1869:		asl a			; 0a
B27_186a:		asl a			; 0a
B27_186b:		and #$e0		; 29 e0
B27_186d:		ldy $a5			; a4 a5
B27_186f:		beq B27_1873 ; f0 02

B27_1871:		ora #$10		; 09 10
B27_1873:		sec				; 38 
B27_1874:		sbc $56			; e5 56
B27_1876:		sta $0438, x	; 9d 38 04
B27_1879:		lda $041c		; ad 1c 04
B27_187c:		clc				; 18 
B27_187d:		adc #$1e		; 69 1e
B27_187f:		sta $041c, x	; 9d 1c 04
B27_1882:		rts				; 60 


B27_1883:		ldx #$01		; a2 01
B27_1885:		lda $054e, x	; bd 4e 05
B27_1888:		beq B27_1890 ; f0 06

B27_188a:		inx				; e8 
B27_188b:		cpx #$12		; e0 12
B27_188d:		bcc B27_1885 ; 90 f6

B27_188f:		inx				; e8 
B27_1890:		rts				; 60 


B27_1891:		jsr func_1f_1ed7		; 20 d7 fe
B27_1894:		lda #$89		; a9 89
B27_1896:		sta $054e, x	; 9d 4e 05
B27_1899:		lda #$0c		; a9 0c
B27_189b:		ldy #$00		; a0 00
B27_189d:		jsr func_1f_0f5c		; 20 5c ef
B27_18a0:		lda #$e8		; a9 e8
B27_18a2:		sta $0400, x	; 9d 00 04
B27_18a5:		lda #$01		; a9 01
B27_18a7:		sta $0657, x	; 9d 57 06
B27_18aa:		sta $04a8, x	; 9d a8 04
B27_18ad:		lda #$60		; a9 60
B27_18af:		sta $0470, x	; 9d 70 04
B27_18b2:		lda #$03		; a9 03
B27_18b4:		sta $0454, x	; 9d 54 04
B27_18b7:		rts				; 60 


B27_18b8:		ldy #$01		; a0 01
B27_18ba:		lda $32			; a5 32
B27_18bc:		cmp #$07		; c9 07
B27_18be:		beq B27_18cb ; f0 0b

B27_18c0:		cmp #$0a		; c9 0a
B27_18c2:		bne B27_18ca ; d0 06

B27_18c4:		lda $33			; a5 33
B27_18c6:		cmp #$01		; c9 01
B27_18c8:		beq B27_18cb ; f0 01

B27_18ca:		dey				; 88 
B27_18cb:		lda $0e			; a5 0e
B27_18cd:		lsr a			; 4a
B27_18ce:		lsr a			; 4a
B27_18cf:		lsr a			; 4a
B27_18d0:		lsr a			; 4a
B27_18d1:		tax				; aa 
B27_18d2:		inc $03b0, x	; fe b0 03
B27_18d5:		lda $03b0, x	; bd b0 03
B27_18d8:		and $b8dc, y	; 39 dc b8
B27_18db:		rts				; 60 


B27_18dc:	.db $0f
B27_18dd:	.db $07
B27_18de:		lda #$00		; a9 00
B27_18e0:		sta $04			; 85 04
B27_18e2:		lda $12			; a5 12
B27_18e4:		asl a			; 0a
B27_18e5:		asl a			; 0a
B27_18e6:		rol $04			; 26 04
B27_18e8:		asl a			; 0a
B27_18e9:		asl a			; 0a
B27_18ea:		asl a			; 0a
B27_18eb:		asl a			; 0a
B27_18ec:		asl a			; 0a
B27_18ed:		rol $04			; 26 04
B27_18ef:		ldx $04			; a6 04
B27_18f1:		lda $11			; a5 11
B27_18f3:		jsr $b932		; 20 32 b9
B27_18f6:		ldx $a5			; a6 a5
B27_18f8:		lda $0d			; a5 0d
B27_18fa:		and $ba50, x	; 3d 50 ba
B27_18fd:		cmp $ba50, x	; dd 50 ba
B27_1900:		beq B27_1942 ; f0 40

B27_1902:		cpx #$00		; e0 00
B27_1904:		beq B27_190a ; f0 04

B27_1906:		lsr a			; 4a
B27_1907:		lsr a			; 4a
B27_1908:		lsr a			; 4a
B27_1909:		lsr a			; 4a
B27_190a:		sta $00			; 85 00
B27_190c:		ldy $09			; a4 09
B27_190e:		lda $06e0, y	; b9 e0 06
B27_1911:		and $ba50, x	; 3d 50 ba
B27_1914:		bne B27_1942 ; d0 2c

B27_1916:		lda $16			; a5 16
B27_1918:		pha				; 48 
B27_1919:		lda $17			; a5 17
B27_191b:		pha				; 48 
B27_191c:		lda $00			; a5 00
B27_191e:		jsr $bb14		; 20 14 bb
B27_1921:		lda $04			; a5 04
B27_1923:		eor #$01		; 49 01
B27_1925:		tax				; aa 
B27_1926:		lda $0c			; a5 0c
B27_1928:		jsr $b932		; 20 32 b9
B27_192b:		pla				; 68 
B27_192c:		sta $17			; 85 17
B27_192e:		pla				; 68 
B27_192f:		sta $16			; 85 16
B27_1931:		rts				; 60 


B27_1932:		and $b943, x	; 3d 43 b9
B27_1935:		sta $01			; 85 01
B27_1937:		ldy #$04		; a0 04
B27_1939:		lda ($16), y	; b1 16
B27_193b:		and $b947, x	; 3d 47 b9
B27_193e:		ora $01			; 05 01
B27_1940:		sta $0c			; 85 0c
B27_1942:		rts				; 60 


B27_1943:	.db $fc
B27_1944:	.db $f3
B27_1945:	.db $cf
B27_1946:	.db $3f
B27_1947:	.db $03
B27_1948:	.db $0c
B27_1949:		;removed
	.db $30 $c0

B27_194b:		ldy #$00		; a0 00
B27_194d:		jsr $b970		; 20 70 b9
B27_1950:		lda #$20		; a9 20
B27_1952:		ora $12			; 05 12
B27_1954:		sta $12			; 85 12
B27_1956:		jsr $b970		; 20 70 b9
B27_1959:		lda #$01		; a9 01
B27_195b:		jsr storeByteInVramQueue		; 20 14 ed
B27_195e:		lda $14			; a5 14
B27_1960:		jsr storeByteInVramQueue		; 20 14 ed
B27_1963:		lda $15			; a5 15
B27_1965:		jsr storeByteInVramQueue		; 20 14 ed
B27_1968:		lda $0c			; a5 0c
B27_196a:		jsr storeByteInVramQueue		; 20 14 ed
B27_196d:		jmp terminateVramQueue		; 4c 12 ed


B27_1970:		jsr $b994		; 20 94 b9
B27_1973:		lda ($16), y	; b1 16
B27_1975:		jsr storeByteInVramQueue		; 20 14 ed
B27_1978:		iny				; c8 
B27_1979:		lda ($16), y	; b1 16
B27_197b:		jsr storeByteInVramQueue		; 20 14 ed
B27_197e:		iny				; c8 
B27_197f:		jmp terminateVramQueue		; 4c 12 ed


B27_1982:		jsr $b994		; 20 94 b9
B27_1985:		ldy $0a			; a4 0a
B27_1987:		lda $b990, y	; b9 90 b9
B27_198a:		jsr storeByteInVramQueue		; 20 14 ed
B27_198d:		jmp terminateVramQueue		; 4c 12 ed


B27_1990:		bit $2f2e		; 2c 2e 2f
B27_1993:		and $01a9		; 2d a9 01
B27_1996:		jsr storeByteInVramQueue		; 20 14 ed
B27_1999:		lda $12			; a5 12
B27_199b:		jsr storeByteInVramQueue		; 20 14 ed
B27_199e:		lda $13			; a5 13
B27_19a0:		jmp storeByteInVramQueue		; 4c 14 ed


B27_19a3:		ldy $0a			; a4 0a
B27_19a5:		lda $b9ae, y	; b9 ae b9
B27_19a8:		clc				; 18 
B27_19a9:		adc $12			; 65 12
B27_19ab:		sta $12			; 85 12
B27_19ad:		rts				; 60 


B27_19ae:		.db $00				; 00
B27_19af:		ora ($21, x)	; 01 21
B27_19b1:		jsr $13a5		; 20 a5 13
B27_19b4:		and #$f0		; 29 f0
B27_19b6:		sta $12			; 85 12
B27_19b8:		lda $14			; a5 14
B27_19ba:		eor $75			; 45 75
B27_19bc:		lsr a			; 4a
B27_19bd:		lda #$20		; a9 20
B27_19bf:		bcc B27_19c3 ; 90 02

B27_19c1:		lda #$24		; a9 24
B27_19c3:		sta $13			; 85 13
B27_19c5:		lda $041c		; ad 1c 04
B27_19c8:		lsr a			; 4a
B27_19c9:		lsr a			; 4a
B27_19ca:		lsr a			; 4a
B27_19cb:		lsr a			; 4a
B27_19cc:		ror $12			; 66 12
B27_19ce:		lsr a			; 4a
B27_19cf:		ror $12			; 66 12
B27_19d1:		lsr a			; 4a
B27_19d2:		ror $12			; 66 12
B27_19d4:		ora $13			; 05 13
B27_19d6:		sta $13			; 85 13
B27_19d8:		clc				; 18 
B27_19d9:		lda #$40		; a9 40
B27_19db:		adc $12			; 65 12
B27_19dd:		sta $12			; 85 12
B27_19df:		bcc B27_19e3 ; 90 02

B27_19e1:		inc $13			; e6 13
B27_19e3:		rts				; 60 


B27_19e4:		lda $13			; a5 13
B27_19e6:		and #$fc		; 29 fc
B27_19e8:		ora #$03		; 09 03
B27_19ea:		sta $15			; 85 15
B27_19ec:		lda $13			; a5 13
B27_19ee:		and #$03		; 29 03
B27_19f0:		ora #$0c		; 09 0c
B27_19f2:		sta $14			; 85 14
B27_19f4:		lda $12			; a5 12
B27_19f6:		asl a			; 0a
B27_19f7:		rol $14			; 26 14
B27_19f9:		asl a			; 0a
B27_19fa:		asl a			; 0a
B27_19fb:		asl a			; 0a
B27_19fc:		rol $14			; 26 14
B27_19fe:		asl a			; 0a
B27_19ff:		rol $14			; 26 14
B27_1a01:		asl a			; 0a
B27_1a02:		rol $14			; 26 14
B27_1a04:		rts				; 60 


B27_1a05:		lda $a5			; a5 a5
B27_1a07:		tax				; aa 
B27_1a08:		ldy $09			; a4 09
B27_1a0a:		lda $06e0, y	; b9 e0 06
B27_1a0d:		and $ba50, x	; 3d 50 ba
B27_1a10:		sta $00			; 85 00
B27_1a12:		lda $06e0, y	; b9 e0 06
B27_1a15:		and $ba4e, x	; 3d 4e ba
B27_1a18:		cmp $ba48, x	; dd 48 ba
B27_1a1b:		bne B27_1a27 ; d0 0a

B27_1a1d:		clc				; 18 
B27_1a1e:		adc $ba4a, x	; 7d 4a ba
B27_1a21:		jsr $ba52		; 20 52 ba
B27_1a24:		jmp $ba2e		; 4c 2e ba


B27_1a27:		clc				; 18 
B27_1a28:		adc $ba4c, x	; 7d 4c ba
B27_1a2b:		jsr $ba52		; 20 52 ba
B27_1a2e:		and $ba4e, x	; 3d 4e ba
B27_1a31:		sta $0a			; 85 0a
B27_1a33:		ora $00			; 05 00
B27_1a35:		sta $06e0, y	; 99 e0 06
B27_1a38:		lda $0a			; a5 0a
B27_1a3a:		cmp #$10		; c9 10
B27_1a3c:		bcc B27_1a42 ; 90 04

B27_1a3e:		lsr a			; 4a
B27_1a3f:		lsr a			; 4a
B27_1a40:		lsr a			; 4a
B27_1a41:		lsr a			; 4a
B27_1a42:		sec				; 38 
B27_1a43:		sbc #$0c		; e9 0c
B27_1a45:		sta $0a			; 85 0a
B27_1a47:		rts				; 60 


B27_1a48:		rti				; 40 


B27_1a49:	.db $04
B27_1a4a:	.db $80
B27_1a4b:		php				; 08 
B27_1a4c:		;removed
	.db $10 $01

B27_1a4e:		;removed
	.db $f0 $0f

B27_1a50:	.db $0f
B27_1a51:		beq B27_1a9b ; f0 48

B27_1a53:		sty $02			; 84 02
B27_1a55:		lda $0e			; a5 0e
B27_1a57:		lsr a			; 4a
B27_1a58:		lsr a			; 4a
B27_1a59:		lsr a			; 4a
B27_1a5a:		lsr a			; 4a
B27_1a5b:		tay				; a8 
B27_1a5c:		lda #$00		; a9 00
B27_1a5e:		sta $03b0, y	; 99 b0 03
B27_1a61:		ldy $02			; a4 02
B27_1a63:		pla				; 68 
B27_1a64:		rts				; 60 


B27_1a65:	.db $03
B27_1a66:		ora ($00, x)	; 01 00
B27_1a68:		.db $00				; 00
B27_1a69:	.db $03
B27_1a6a:		ora ($00, x)	; 01 00
B27_1a6c:		ora ($03, x)	; 01 03
B27_1a6e:		ora ($00, x)	; 01 00
B27_1a70:	.db $02
B27_1a71:	.db $03
B27_1a72:	.db $03
B27_1a73:		.db $00				; 00
B27_1a74:		.db $00				; 00
B27_1a75:	.db $03
B27_1a76:	.db $03
B27_1a77:		.db $00				; 00
B27_1a78:		ora ($03, x)	; 01 03
B27_1a7a:	.db $03
B27_1a7b:		.db $00				; 00
B27_1a7c:	.db $02
B27_1a7d:	.db $07
B27_1a7e:		.db $00				; 00
B27_1a7f:		.db $00				; 00
B27_1a80:		.db $00				; 00
B27_1a81:	.db $07
B27_1a82:		ora $00			; 05 00
B27_1a84:		.db $00				; 00
B27_1a85:	.db $07
B27_1a86:		ora $00			; 05 00
B27_1a88:		ora ($07, x)	; 01 07
B27_1a8a:		ora $00			; 05 00
B27_1a8c:	.db $02
B27_1a8d:	.db $07
B27_1a8e:		ora $01			; 05 01
B27_1a90:		.db $00				; 00
B27_1a91:		php				; 08 
B27_1a92:	.db $03
B27_1a93:		.db $00				; 00
B27_1a94:		ora ($08, x)	; 01 08
B27_1a96:	.db $03
B27_1a97:		.db $00				; 00
B27_1a98:	.db $02
B27_1a99:		php				; 08 
B27_1a9a:	.db $04
B27_1a9b:		.db $00				; 00
B27_1a9c:		ora ($08, x)	; 01 08
B27_1a9e:	.db $04
B27_1a9f:		.db $00				; 00
B27_1aa0:	.db $02
B27_1aa1:		php				; 08 
B27_1aa2:	.db $04
B27_1aa3:		.db $00				; 00
B27_1aa4:	.db $04
B27_1aa5:		asl a			; 0a
B27_1aa6:		ora ($00, x)	; 01 00
B27_1aa8:		.db $00				; 00
B27_1aa9:		asl a			; 0a
B27_1aaa:		ora ($00, x)	; 01 00
B27_1aac:		ora ($0a, x)	; 01 0a
B27_1aae:		ora $00			; 05 00
B27_1ab0:		ora ($0a, x)	; 01 0a
B27_1ab2:		ora $00			; 05 00
B27_1ab4:	.db $02
B27_1ab5:		asl a			; 0a
B27_1ab6:		asl $01			; 06 01
B27_1ab8:		.db $00				; 00
B27_1ab9:		asl a			; 0a
B27_1aba:		asl $01			; 06 01
B27_1abc:		ora ($0a, x)	; 01 0a
B27_1abe:		asl $01			; 06 01
B27_1ac0:	.db $02
B27_1ac1:		asl a			; 0a
B27_1ac2:		asl $01			; 06 01
B27_1ac4:	.db $03
B27_1ac5:	.db $0b
B27_1ac6:	.db $02
B27_1ac7:		ora ($00, x)	; 01 00
B27_1ac9:	.db $0b
B27_1aca:	.db $02
B27_1acb:		ora ($01, x)	; 01 01
B27_1acd:		asl $0100		; 0e 00 01
B27_1ad0:		.db $00				; 00
B27_1ad1:		asl $0100		; 0e 00 01
B27_1ad4:		ora ($0e, x)	; 01 0e
B27_1ad6:		.db $00				; 00
B27_1ad7:		ora ($02, x)	; 01 02
B27_1ad9:	.db $0e $00 $00
B27_1adc:		.db $00				; 00
B27_1add:	.db $0e $00 $00
B27_1ae0:		ora ($20, x)	; 01 20
B27_1ae2:		rol $90bb, x	; 3e bb 90
B27_1ae5:		asl $60			; 06 60
B27_1ae7:		jsr $bb5b		; 20 5b bb
B27_1aea:		;removed
	.db $b0 $fa

B27_1aec:		lda $03			; a5 03
B27_1aee:		asl a			; 0a
B27_1aef:		asl a			; 0a
B27_1af0:		asl a			; 0a
B27_1af1:		sta $00			; 85 00
B27_1af3:		lda $0e			; a5 0e
B27_1af5:		lsr a			; 4a
B27_1af6:		lsr a			; 4a
B27_1af7:		lsr a			; 4a
B27_1af8:		lsr a			; 4a
B27_1af9:		lsr a			; 4a
B27_1afa:		php				; 08 
B27_1afb:		clc				; 18 
B27_1afc:		adc $00			; 65 00
B27_1afe:		tay				; a8 
B27_1aff:		lda #$00		; a9 00
B27_1b01:		plp				; 28 
B27_1b02:		rol a			; 2a
B27_1b03:		tax				; aa 
B27_1b04:		lda $bbca, y	; b9 ca bb
B27_1b07:		sta $0d			; 85 0d
B27_1b09:		and $ba4e, x	; 3d 4e ba
B27_1b0c:		cpx #$00		; e0 00
B27_1b0e:		bne B27_1b14 ; d0 04

B27_1b10:		lsr a			; 4a
B27_1b11:		lsr a			; 4a
B27_1b12:		lsr a			; 4a
B27_1b13:		lsr a			; 4a
B27_1b14:		sta $00			; 85 00
B27_1b16:		jsr $bb91		; 20 91 bb
B27_1b19:		lda $32			; a5 32
B27_1b1b:		asl a			; 0a
B27_1b1c:		tay				; a8 
B27_1b1d:		lda $bcc2, y	; b9 c2 bc
B27_1b20:		sta $02			; 85 02
B27_1b22:		lda $bcc3, y	; b9 c3 bc
B27_1b25:		sta $03			; 85 03
B27_1b27:		lda $00			; a5 00
B27_1b29:		asl a			; 0a
B27_1b2a:		asl a			; 0a
B27_1b2b:		clc				; 18 
B27_1b2c:		adc $00			; 65 00
B27_1b2e:		sta $00			; 85 00
B27_1b30:		clc				; 18 
B27_1b31:		lda $00			; a5 00
B27_1b33:		adc $02			; 65 02
B27_1b35:		sta $16			; 85 16
B27_1b37:		lda $03			; a5 03
B27_1b39:		adc #$00		; 69 00
B27_1b3b:		sta $17			; 85 17
B27_1b3d:		rts				; 60 


B27_1b3e:		lda $041c		; ad 1c 04
B27_1b41:		sec				; 38 
B27_1b42:		sbc #$20		; e9 20
B27_1b44:		clc				; 18 
B27_1b45:		adc $56			; 65 56
B27_1b47:		bcs B27_1b4d ; b0 04

B27_1b49:		cmp #$f0		; c9 f0
B27_1b4b:		bcc B27_1b50 ; 90 03

B27_1b4d:		adc #$0f		; 69 0f
B27_1b4f:		sec				; 38 
B27_1b50:		sta $0b			; 85 0b
B27_1b52:		lda $57			; a5 57
B27_1b54:		adc #$00		; 69 00
B27_1b56:		sta $07			; 85 07
B27_1b58:		jmp $bb5f		; 4c 5f bb


B27_1b5b:		lda $0f			; a5 0f
B27_1b5d:		sta $07			; 85 07
B27_1b5f:		lda #$1f		; a9 1f
B27_1b61:		sta $02			; 85 02
B27_1b63:		lda $32			; a5 32
B27_1b65:		sta $04			; 85 04
B27_1b67:		lda $33			; a5 33
B27_1b69:		sta $05			; 85 05
B27_1b6b:		lda $34			; a5 34
B27_1b6d:		sta $06			; 85 06
B27_1b6f:		lda #$00		; a9 00
B27_1b71:		sta $03			; 85 03
B27_1b73:		lda $03			; a5 03
B27_1b75:		asl a			; 0a
B27_1b76:		asl a			; 0a
B27_1b77:		tay				; a8 
B27_1b78:		ldx #$00		; a2 00
B27_1b7a:		lda $04, x		; b5 04
B27_1b7c:		cmp $ba65, y	; d9 65 ba
B27_1b7f:		bne B27_1b89 ; d0 08

B27_1b81:		iny				; c8 
B27_1b82:		inx				; e8 
B27_1b83:		cpx #$04		; e0 04
B27_1b85:		bne B27_1b7a ; d0 f3

B27_1b87:		clc				; 18 
B27_1b88:		rts				; 60 


B27_1b89:		inc $03			; e6 03
B27_1b8b:		dec $02			; c6 02
B27_1b8d:		bne B27_1b73 ; d0 e4

B27_1b8f:		sec				; 38 
B27_1b90:		rts				; 60 


B27_1b91:		lda $00			; a5 00
B27_1b93:		ldy $32			; a4 32
B27_1b95:		cpy #$0a		; c0 0a
B27_1b97:		bne B27_1baa ; d0 11

B27_1b99:		cmp #$0e		; c9 0e
B27_1b9b:		bne B27_1bc5 ; d0 28

B27_1b9d:		lda #$0d		; a9 0d
B27_1b9f:		ldy $0b			; a4 0b
B27_1ba1:		cpy #$a0		; c0 a0
B27_1ba3:		bcc B27_1ba7 ; 90 02

B27_1ba5:		lda #$0b		; a9 0b
B27_1ba7:		sta $00			; 85 00
B27_1ba9:		rts				; 60 


B27_1baa:		cpy #$0b		; c0 0b
B27_1bac:		bne B27_1bc5 ; d0 17

B27_1bae:		ldy $0f			; a4 0f
B27_1bb0:		bne B27_1bc5 ; d0 13

B27_1bb2:		sec				; 38 
B27_1bb3:		sbc #$0d		; e9 0d
B27_1bb5:		bcc B27_1bc5 ; 90 0e

B27_1bb7:		asl a			; 0a
B27_1bb8:		tay				; a8 
B27_1bb9:		lda $0b			; a5 0b
B27_1bbb:		cmp #$a0		; c9 a0
B27_1bbd:		bcc B27_1bc0 ; 90 01

B27_1bbf:		iny				; c8 
B27_1bc0:		lda $bbc6, y	; b9 c6 bb
B27_1bc3:		sta $00			; 85 00
B27_1bc5:		rts				; 60 


B27_1bc6:	.db $02
B27_1bc7:		ora ($03, x)	; 01 03
B27_1bc9:	.db $04
B27_1bca:	.db $ff
B27_1bcb:	.db $ff
B27_1bcc:		.db $00				; 00
B27_1bcd:	.db $ff
B27_1bce:		.db $00				; 00
B27_1bcf:	.db $ff
B27_1bd0:	.db $ff
B27_1bd1:	.db $ff
B27_1bd2:	.db $ff
B27_1bd3:	.db $ff
B27_1bd4:	.db $12
B27_1bd5:		.db $00				; 00
B27_1bd6:	.db $ff
B27_1bd7:	.db $ff
B27_1bd8:		.db $00				; 00
B27_1bd9:	.db $ff
B27_1bda:	.db $ff
B27_1bdb:	.db $ff
B27_1bdc:	.db $ff
B27_1bdd:		.db $00				; 00
B27_1bde:	.db $ff
B27_1bdf:		.db $00				; 00
B27_1be0:	.db $ff
B27_1be1:		.db $00				; 00
B27_1be2:	.db $ff
B27_1be3:	.db $ff
B27_1be4:	.db $ff
B27_1be5:	.db $ff
B27_1be6:		.db $00				; 00
B27_1be7:	.db $ff
B27_1be8:	.db $ff
B27_1be9:	.db $ff
B27_1bea:	.db $ff
B27_1beb:		.db $00				; 00
B27_1bec:	.db $ff
B27_1bed:	.db $ff
B27_1bee:	.db $ff
B27_1bef:	.db $ff
B27_1bf0:	.db $ff
B27_1bf1:	.db $ff
B27_1bf2:		.db $00				; 00
B27_1bf3:	.db $ff
B27_1bf4:	.db $ff
B27_1bf5:	.db $ff
B27_1bf6:	.db $ff
B27_1bf7:	.db $ff
B27_1bf8:	.db $ff
B27_1bf9:	.db $ff
B27_1bfa:	.db $ff
B27_1bfb:	.db $ff
B27_1bfc:	.db $ff
B27_1bfd:	.db $ff
B27_1bfe:	.db $ff
B27_1bff:		.db $00				; 00
B27_1c00:	.db $ff
B27_1c01:	.db $ff
B27_1c02:	.db $ff
B27_1c03:	.db $ff
B27_1c04:	.db $ff
B27_1c05:	.db $ff
B27_1c06:	.db $ff
B27_1c07:	.db $ff
B27_1c08:	.db $12
B27_1c09:	.db $f3
B27_1c0a:	.db $0f
B27_1c0b:		.db $00				; 00
B27_1c0c:	.db $ff
B27_1c0d:	.db $ff
B27_1c0e:	.db $ff
B27_1c0f:	.db $ff
B27_1c10:	.db $ff
B27_1c11:	.db $ff
B27_1c12:		.db $00				; 00
B27_1c13:		beq B27_1c45 ; f0 30

B27_1c15:	.db $12
B27_1c16:	.db $ff
B27_1c17:		.db $00				; 00
B27_1c18:	.db $ff
B27_1c19:	.db $ff
B27_1c1a:	.db $ff
B27_1c1b:	.db $ff
B27_1c1c:	.db $ff
B27_1c1d:	.db $ff
B27_1c1e:	.db $ff
B27_1c1f:	.db $ff
B27_1c20:		.db $00				; 00
B27_1c21:	.db $ff
B27_1c22:	.db $ff
B27_1c23:	.db $ff
B27_1c24:	.db $ff
B27_1c25:	.db $ff
B27_1c26:	.db $ff
B27_1c27:	.db $34
B27_1c28:	.db $ff
B27_1c29:	.db $34
B27_1c2a:	.db $ff
B27_1c2b:	.db $34
B27_1c2c:	.db $ff
B27_1c2d:	.db $12
B27_1c2e:	.db $ff
B27_1c2f:	.db $12
B27_1c30:	.db $ff
B27_1c31:	.db $ff
B27_1c32:		.db $00				; 00
B27_1c33:	.db $ff
B27_1c34:	.db $12
B27_1c35:	.db $12
B27_1c36:	.db $12
B27_1c37:	.db $12
B27_1c38:	.db $12
B27_1c39:	.db $12
B27_1c3a:		ora $ff			; 05 ff
B27_1c3c:	.db $ff
B27_1c3d:	.db $12
B27_1c3e:	.db $ff
B27_1c3f:	.db $12
B27_1c40:	.db $ff
B27_1c41:	.db $ff
B27_1c42:	.db $ff
B27_1c43:		;removed
	.db $50 $ff

B27_1c45:	.db $ff
B27_1c46:	.db $ff
B27_1c47:	.db $ff
B27_1c48:	.db $ff
B27_1c49:	.db $ff
B27_1c4a:	.db $ff
B27_1c4b:	.db $ff
B27_1c4c:	.db $ff
B27_1c4d:	.db $ff
B27_1c4e:		.db $00				; 00
B27_1c4f:	.db $ff
B27_1c50:	.db $12
B27_1c51:	.db $ff
B27_1c52:	.db $34
B27_1c53:	.db $ff
B27_1c54:	.db $12
B27_1c55:	.db $ff
B27_1c56:		.db $00				; 00
B27_1c57:	.db $ff
B27_1c58:	.db $ff
B27_1c59:	.db $ff
B27_1c5a:	.db $ff
B27_1c5b:	.db $ff
B27_1c5c:		lsr $78, x		; 56 78
B27_1c5e:		lsr $ff, x		; 56 ff
B27_1c60:	.db $ff
B27_1c61:	.db $ff
B27_1c62:	.db $ff
B27_1c63:	.db $ff
B27_1c64:	.db $ff
B27_1c65:	.db $ff
B27_1c66:	.db $ff
B27_1c67:		lsr $ff, x		; 56 ff
B27_1c69:	.db $ff
B27_1c6a:	.db $ff
B27_1c6b:		txs				; 9a 
B27_1c6c:	.db $ff
B27_1c6d:	.db $ff
B27_1c6e:	.db $ff
B27_1c6f:	.db $ff
B27_1c70:	.db $ff
B27_1c71:	.db $ff
B27_1c72:	.db $ff
B27_1c73:	.db $ff
B27_1c74:	.db $ff
B27_1c75:	.db $ff
B27_1c76:	.db $ff
B27_1c77:		ldy $ffbc, x	; bc bc ff
B27_1c7a:	.db $ff
B27_1c7b:	.db $ff
B27_1c7c:	.db $dc
B27_1c7d:		ldy $fffc, x	; bc fc ff
B27_1c80:		ldy $ffff, x	; bc ff ff
B27_1c83:	.db $dc
B27_1c84:		cpx $bcbc		; ec bc bc
B27_1c87:		ldy $ffff, x	; bc ff ff
B27_1c8a:	.db $23
B27_1c8b:		ora ($23), y	; 11 23
B27_1c8d:		dec $2311, x	; de 11 23
B27_1c90:		ora ($ff), y	; 11 ff
B27_1c92:	.db $ff
B27_1c93:		ora ($23), y	; 11 23
B27_1c95:		ora ($11), y	; 11 11
B27_1c97:	.db $23
B27_1c98:	.db $ff
B27_1c99:	.db $ff
B27_1c9a:	.db $ff
B27_1c9b:	.db $ff
B27_1c9c:	.db $ff
B27_1c9d:	.db $ff
B27_1c9e:	.db $ff
B27_1c9f:	.db $fb
B27_1ca0:	.db $ff
B27_1ca1:	.db $ff
B27_1ca2:		ora ($12, x)	; 01 12
B27_1ca4:	.db $ff
B27_1ca5:	.db $ff
B27_1ca6:	.db $34
B27_1ca7:	.db $ff
B27_1ca8:	.db $34
B27_1ca9:		lsr $01, x		; 56 01
B27_1cab:	.db $ff
B27_1cac:	.db $ff
B27_1cad:	.db $ff
B27_1cae:	.db $ff
B27_1caf:		sei				; 78 
B27_1cb0:	.db $34
B27_1cb1:		txs				; 9a 
B27_1cb2:	.db $ff
B27_1cb3:	.db $ff
B27_1cb4:		.db $00				; 00
B27_1cb5:		.db $00				; 00
B27_1cb6:		.db $00				; 00
B27_1cb7:	.db $ff
B27_1cb8:	.db $ff
B27_1cb9:	.db $ff
B27_1cba:		.db $00				; 00
B27_1cbb:		.db $00				; 00
B27_1cbc:	.db $ff
B27_1cbd:		.db $00				; 00
B27_1cbe:	.db $ff
B27_1cbf:	.db $ff
B27_1cc0:	.db $ff
B27_1cc1:	.db $ff
B27_1cc2:		cpx #$bc		; e0 bc
B27_1cc4:		cpx #$bc		; e0 bc
B27_1cc6:		cpx #$bc		; e0 bc
B27_1cc8:		cpx #$bc		; e0 bc
B27_1cca:		cpx #$bc		; e0 bc
B27_1ccc:		cpx #$bc		; e0 bc
B27_1cce:		cpx #$bc		; e0 bc
B27_1cd0:	.db $ef
B27_1cd1:		ldy $bd03, x	; bc 03 bd
B27_1cd4:		cpx #$bc		; e0 bc
B27_1cd6:		and ($bd, x)	; 21 bd
B27_1cd8:	.db $67
B27_1cd9:		lda $bce0, x	; bd e0 bc
B27_1cdc:		cpx #$bc		; e0 bc
B27_1cde:	.db $80
B27_1cdf:	.db $bd $00 $00
B27_1ce2:		.db $00				; 00
B27_1ce3:		.db $00				; 00
B27_1ce4:		.db $00				; 00
B27_1ce5:	.db $7c
B27_1ce6:		rol $3e7c, x	; 3e 7c 3e
B27_1ce9:		eor $7f, x		; 55 7f
B27_1ceb:		.db $00				; 00
B27_1cec:		ror $5500, x	; 7e 00 55
B27_1cef:		.db $00				; 00
B27_1cf0:		.db $00				; 00
B27_1cf1:		.db $00				; 00
B27_1cf2:		.db $00				; 00
B27_1cf3:		.db $00				; 00
B27_1cf4:	.db $80
B27_1cf5:		sta ($94, x)	; 81 94
B27_1cf7:		sta ($aa), y	; 91 aa
B27_1cf9:		ldy #$a1		; a0 a1
B27_1cfb:		bcs B27_1cae ; b0 b1

B27_1cfd:		tax				; aa 
B27_1cfe:	.db $77
B27_1cff:		.db $00				; 00
B27_1d00:		sty $95			; 84 95
B27_1d02:		tax				; aa 
B27_1d03:		.db $00				; 00
B27_1d04:		.db $00				; 00
B27_1d05:		.db $00				; 00
B27_1d06:		.db $00				; 00
B27_1d07:		.db $00				; 00
B27_1d08:		.db $00				; 00
B27_1d09:		.db $00				; 00
B27_1d0a:		sty $85			; 84 85
B27_1d0c:		tax				; aa 
B27_1d0d:		ldy $b400		; ac 00 b4
B27_1d10:		ldy $84ff		; ac ff 84
B27_1d13:		sta $94			; 85 94
B27_1d15:		sta $aa, x		; 95 aa
B27_1d17:		stx $3f			; 86 3f
B27_1d19:		stx $ac, y		; 96 ac
B27_1d1b:	.db $ff
B27_1d1c:		.db $00				; 00
B27_1d1d:	.db $ac $ac $00
B27_1d20:	.db $ff
B27_1d21:		.db $00				; 00
B27_1d22:		.db $00				; 00
B27_1d23:		.db $00				; 00
B27_1d24:		.db $00				; 00
B27_1d25:		.db $00				; 00
B27_1d26:		eor $5d4c		; 4d 4c 5d
B27_1d29:	.db $5f
B27_1d2a:	.db $ff
B27_1d2b:		.db $00				; 00
B27_1d2c:		.db $00				; 00
B27_1d2d:		lsr $ff00, x	; 5e 00 ff
B27_1d30:		eor $4c5f, x	; 5d 5f 4c
B27_1d33:	.db $4f
B27_1d34:	.db $ff
B27_1d35:	.db $4f
B27_1d36:		jmp $5d5f		; 4c 5f 5d


B27_1d39:	.db $ff
B27_1d3a:	.db $5d $00 $00
B27_1d3d:		eor $5d55		; 4d 55 5d
B27_1d40:		.db $00				; 00
B27_1d41:		jmp $555c		; 4c 5c 55


B27_1d44:		eor $5d4c		; 4d 4c 5d
B27_1d47:	.db $5f
B27_1d48:		eor $4f, x		; 55 4f
B27_1d4a:	.db $5f
B27_1d4b:		lsr $555d, x	; 5e 5d 55
B27_1d4e:	.db $6b
B27_1d4f:		dey				; 88 
B27_1d50:	.db $7c
B27_1d51:		ror a			; 6a
B27_1d52:		eor $7e, x		; 55 7e
B27_1d54:	.db $7f
B27_1d55:	.db $89
B27_1d56:		ror $8055, x	; 7e 55 80
B27_1d59:		sta ($90, x)	; 81 90
B27_1d5b:		sta ($aa), y	; 91 aa
B27_1d5d:		sta ($82, x)	; 81 82
B27_1d5f:		sta ($92), y	; 91 92
B27_1d61:		tax				; aa 
B27_1d62:	.db $80
B27_1d63:		sta ($84, x)	; 81 84
B27_1d65:		sta ($aa), y	; 91 aa
B27_1d67:		.db $00				; 00
B27_1d68:		.db $00				; 00
B27_1d69:		.db $00				; 00
B27_1d6a:		.db $00				; 00
B27_1d6b:		.db $00				; 00
B27_1d6c:		rti				; 40 


B27_1d6d:		eor ($50, x)	; 41 50
B27_1d6f:		eor ($55), y	; 51 55
B27_1d71:		sty $85			; 84 85
B27_1d73:		sty $95, x		; 94 95
B27_1d75:		eor $86, x		; 55 86
B27_1d77:	.db $87
B27_1d78:		stx $97, y		; 96 97
B27_1d7a:		eor $49, x		; 55 49
B27_1d7c:		eor #$48		; 49 48
B27_1d7e:		pha				; 48 
B27_1d7f:		eor $00, x		; 55 00
B27_1d81:		.db $00				; 00
B27_1d82:		.db $00				; 00
B27_1d83:		.db $00				; 00
B27_1d84:		.db $00				; 00
B27_1d85:		.db $00				; 00
B27_1d86:		jmp $4c00		; 4c 00 4c


B27_1d89:		tax				; aa 
B27_1d8a:	.db $4f
B27_1d8b:		.db $00				; 00
B27_1d8c:	.db $4f
B27_1d8d:		.db $00				; 00
B27_1d8e:		tax				; aa 
B27_1d8f:		tay				; a8 
B27_1d90:		lda #$92		; a9 92
B27_1d92:		;removed
	.db $b0 $ff

B27_1d94:		stx $00, y		; 96 00
B27_1d96:		ldx $00			; a6 00
B27_1d98:	.db $ff
B27_1d99:		.db $00				; 00
B27_1d9a:	.db $a3
B27_1d9b:		.db $00				; 00
B27_1d9c:		sta ($55), y	; 91 55
B27_1d9e:	.db $b7
B27_1d9f:		.db $00				; 00
B27_1da0:		rol $5500, x	; 3e 00 55
B27_1da3:		.db $00				; 00
B27_1da4:		.db $00				; 00
B27_1da5:	.db $9b
B27_1da6:		tax				; aa 
B27_1da7:	.db $ff
B27_1da8:		stx $ab9c		; 8e 9c ab
B27_1dab:	.db $9c
B27_1dac:	.db $ff
B27_1dad:	.db $9c
B27_1dae:		plp				; 28 
B27_1daf:	.db $9b
B27_1db0:	.db $39 $ff $00
B27_1db3:		tax				; aa 
B27_1db4:	.db $8f
B27_1db5:		plp				; 28 
B27_1db6:	.db $ff
B27_1db7:		rol $3e00, x	; 3e 00 3e
B27_1dba:		.db $00				; 00
B27_1dbb:		eor $a9, x		; 55 a9
B27_1dbd:		ora ($20, x)	; 01 20
B27_1dbf:	.db $14
B27_1dc0:	.db $ed $a9 $00
B27_1dc3:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dc6:		lda #$23		; a9 23
B27_1dc8:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dcb:		lda #$bc		; a9 bc
B27_1dcd:		sta $03			; 85 03
B27_1dcf:		ldy #$00		; a0 00
B27_1dd1:		lda $03			; a5 03
B27_1dd3:		jsr storeByteInVramQueue		; 20 14 ed
B27_1dd6:		clc				; 18 
B27_1dd7:		adc #$02		; 69 02
B27_1dd9:		jsr storeByteInVramQueue		; 20 14 ed
B27_1ddc:		iny				; c8 
B27_1ddd:		cpy #$20		; c0 20
B27_1ddf:		bcs B27_1dec ; b0 0b

B27_1de1:		cpy #$10		; c0 10
B27_1de3:		bne B27_1dd1 ; d0 ec

B27_1de5:		lda #$bd		; a9 bd
B27_1de7:		sta $03			; 85 03
B27_1de9:		jmp $bdd1		; 4c d1 bd


B27_1dec:		jmp terminateVramQueue		; 4c 12 ed


B27_1def:		lda $07f0		; ad f0 07
B27_1df2:		bmi B27_1dfe ; 30 0a

B27_1df4:		ora #$80		; 09 80
B27_1df6:		sta $07f0		; 8d f0 07
B27_1df9:		lda #$00		; a9 00
B27_1dfb:		sta $07f1		; 8d f1 07
B27_1dfe:		lda $07f0		; ad f0 07
B27_1e01:		asl a			; 0a
B27_1e02:		tay				; a8 
B27_1e03:		lda #$00		; a9 00
B27_1e05:		sta $01			; 85 01
B27_1e07:		lda $07f1		; ad f1 07
B27_1e0a:		asl a			; 0a
B27_1e0b:		rol $01			; 26 01
B27_1e0d:		asl a			; 0a
B27_1e0e:		rol $01			; 26 01
B27_1e10:		asl a			; 0a
B27_1e11:		rol $01			; 26 01
B27_1e13:		asl a			; 0a
B27_1e14:		rol $01			; 26 01
B27_1e16:		asl a			; 0a
B27_1e17:		rol $01			; 26 01
B27_1e19:		sta $00			; 85 00
B27_1e1b:		clc				; 18 
B27_1e1c:		lda $be5d, y	; b9 5d be
B27_1e1f:		adc $00			; 65 00
B27_1e21:		sta $00			; 85 00
B27_1e23:		lda $be5e, y	; b9 5e be
B27_1e26:		adc $01			; 65 01
B27_1e28:		sta $01			; 85 01
B27_1e2a:		lda #$01		; a9 01
B27_1e2c:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e2f:		lda $00			; a5 00
B27_1e31:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e34:		lda $01			; a5 01
B27_1e36:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e39:		ldy #$20		; a0 20
B27_1e3b:		lda #$00		; a9 00
B27_1e3d:		jsr storeByteInVramQueue		; 20 14 ed
B27_1e40:		dey				; 88 
B27_1e41:		bne B27_1e3d ; d0 fa

B27_1e43:		jsr terminateVramQueue		; 20 12 ed
B27_1e46:		lda $07f0		; ad f0 07
B27_1e49:		and #$7f		; 29 7f
B27_1e4b:		tay				; a8 
B27_1e4c:		inc $07f1		; ee f1 07
B27_1e4f:		lda $07f1		; ad f1 07
B27_1e52:		cmp $be61, y	; d9 61 be
B27_1e55:		bcc B27_1e5c ; 90 05

B27_1e57:		lda #$ff		; a9 ff
B27_1e59:		sta $07f1		; 8d f1 07
B27_1e5c:		rts				; 60 


B27_1e5d:		cpy #$20		; c0 20
B27_1e5f:		.db $00				; 00
B27_1e60:		bit $1e			; 24 1e
B27_1e62:		.db $20


.ifdef SEPARATED_LAMP_GFX
changeLampGfx:
	cmp #$f1
	beq +
	cmp #$f3
	bne @done
+
	pha
	txa
	pha

	ldx $05
	lda $5d8, x
	sbc #$9f ; last weapon contents is 9e
	bcc +
	pla
	tax
	pla
	sbc #$04
	bne @done
+
	pla
	tax
	pla
@done:
	sta $0201, x
	rts
.endif