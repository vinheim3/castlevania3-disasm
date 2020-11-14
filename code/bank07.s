B7_0000:	.db $3f
B7_0001:	.db $fc
B7_0002:	.db $7f
B7_0003:	.db $dc
B7_0004:		sbc ($f9, x)	; e1 f9
B7_0006:	.db $0f
B7_0007:	.db $df
B7_0008:	.db $f7
B7_0009:		.db $00				; 00
B7_000a:		.db $00				; 00
B7_000b:		.db $00				; 00
B7_000c:	.db $80
B7_000d:		sbc $ffff, x	; fd ff ff
B7_0010:	.db $ff
B7_0011:		inc $7efe, x	; fe fe 7e
B7_0014:		.db $00				; 00
B7_0015:		.db $00				; 00
B7_0016:	.db $04
B7_0017:		and ($12, x)	; 21 12
B7_0019:	.db $fc
B7_001a:	.db $ff
B7_001b:	.db $ff
B7_001c:	.db $ff
B7_001d:	.db $07
B7_001e:		.db $00				; 00
B7_001f:		.db $00				; 00
B7_0020:		.db $00				; 00
B7_0021:		.db $00				; 00
B7_0022:		cpy #$b7		; c0 b7
B7_0024:	.db $fb
B7_0025:	.db $ff
B7_0026:	.db $ff
B7_0027:	.db $ff
B7_0028:	.db $ff
B7_0029:		inc $fefe, x	; fe fe fe
B7_002c:	.db $02
B7_002d:		.db $00				; 00
B7_002e:	.db $80
B7_002f:		jsr $2144		; 20 44 21
B7_0032:		eor #$32		; 49 32
B7_0034:		lsr $19			; 46 19
B7_0036:	.db $23
B7_0037:		sed				; f8 
B7_0038:	.db $ff
B7_0039:	.db $ff
B7_003a:	.db $ff
B7_003b:	.db $ff
B7_003c:		.db $00				; 00
B7_003d:		.db $00				; 00
B7_003e:		.db $00				; 00
B7_003f:		.db $00				; 00
B7_0040:	.db $af
B7_0041:	.db $5f
B7_0042:		inc $b3			; e6 b3
B7_0044:		clc				; 18 
B7_0045:	.db $1b
B7_0046:		rts				; 60 


B7_0047:	.db $c7
B7_0048:		adc $3850, y	; 79 50 38
B7_004b:		ora ($58), y	; 11 58
B7_004d:	.db $5f
B7_004e:		sed				; f8 
B7_004f:		sbc $16d1		; edd1 16
B7_0052:	.db $bf
B7_0053:		ldy $1c25		; ac 25 1c
B7_0056:		ora #$32		; 09 32
B7_0058:		sei				; 78 
B7_0059:		txs				; 9a 
B7_005a:		lsr $be9e, x	; 5e 9e be
B7_005d:		adc $86, x		; 75 86
B7_005f:	.db $83
B7_0060:		pha				; 48 
B7_0061:		lsr a			; 4a
B7_0062:		cmp #$9d		; c9 9d
B7_0064:		cmp $6db0, y	; d9 b0 6d
B7_0067:		lsr $358d, x	; 5e 8d 35
B7_006a:		txa				; 8a 
B7_006b:		sbc ($c2, x)	; e1 c2
B7_006d:		sta $d9ea		; 8d ea d9
B7_0070:	.db $f4
B7_0071:		and #$53		; 29 53
B7_0073:	.db $0c
B7_0074:		sta $52b4		; 8d b4 52
B7_0077:	.db $a7
B7_0078:	.db $9b
B7_0079:	.db $c7
B7_007a:	.db $b2
B7_007b:	.db $72
B7_007c:	.db $b2
B7_007d:		dec $28			; c6 28
B7_007f:	.db $4b
B7_0080:		stx $d9, y		; 96 d9
B7_0082:		rol $5e			; 26 5e
B7_0084:		eor $293c, x	; 5d 3c 29
B7_0087:	.db $53
B7_0088:		eor ($e6), y	; 51 e6
B7_008a:	.db $e2
B7_008b:		cmp ($5a), y	; d1 5a
B7_008d:		sta $26ab		; 8d ab 26
B7_0090:	.db $63
B7_0091:		sta $31, x		; 95 31
B7_0093:	.db $4b
B7_0094:	.db $8b
B7_0095:		lda $e56a		; ad 6a e5
B7_0098:		ldy $e332		; ac 32 e3
B7_009b:		ldy $a9			; a4 a9
B7_009d:		eor #$ab		; 49 ab
B7_009f:	.db $9c
B7_00a0:		ror $d5			; 66 d5
B7_00a2:		ldy $9c, x		; b4 9c
B7_00a4:		and ($99), y	; 31 99
B7_00a6:	.db $34
B7_00a7:		lda $c9, x		; b5 c9
B7_00a9:		tax				; aa 
B7_00aa:		adc $55			; 65 55
B7_00ac:		and $65, x		; 35 65
B7_00ae:		lda $a6			; a5 a6
B7_00b0:	.db $a3
B7_00b1:		lda #$9a		; a9 9a
B7_00b3:		rol $56, x		; 36 56
B7_00b5:		and $55, x		; 35 55
B7_00b7:		eor $a595, y	; 59 95 a5
B7_00ba:		tax				; aa 
B7_00bb:		sta $656a, y	; 99 6a 65
B7_00be:		adc $55			; 65 55
B7_00c0:		eor $4d, x		; 55 4d
B7_00c2:		sta $aa, x		; 95 aa
B7_00c4:		ror a			; 6a
B7_00c5:		ldx $59			; a6 59
B7_00c7:		adc $55			; 65 55
B7_00c9:		adc #$96		; 69 96
B7_00cb:		adc $aa			; 65 aa
B7_00cd:		sta $aa, x		; 95 aa
B7_00cf:		lda #$6a		; a9 6a
B7_00d1:		eor $5555, y	; 59 55 55
B7_00d4:		eor $95, x		; 55 95
B7_00d6:		ror $a6			; 66 a6
B7_00d8:		txs				; 9a 
B7_00d9:		ldx $95			; a6 95
B7_00db:		eor $5555, y	; 59 55 55
B7_00de:		sta $99, x		; 95 99
B7_00e0:		sta $9aaa, y	; 99 aa 9a
B7_00e3:		eor $5955, y	; 59 55 59
B7_00e6:		eor $55, x		; 55 55
B7_00e8:		eor $59, x		; 55 59
B7_00ea:		stx $99, y		; 96 99
B7_00ec:		ror a			; 6a
B7_00ed:		ror $55			; 66 55
B7_00ef:		eor $55, x		; 55 55
B7_00f1:		eor $55, x		; 55 55
B7_00f3:		eor $aa, x		; 55 aa
B7_00f5:		ldx $66			; a6 66
B7_00f7:		lsr $55, x		; 56 55
B7_00f9:		eor $55, x		; 55 55
B7_00fb:		eor $55, x		; 55 55
B7_00fd:		eor $5559, y	; 59 59 55
B7_0100:		lsr $56, x		; 56 56
B7_0102:		eor $55, x		; 55 55
B7_0104:		eor $55, x		; 55 55
B7_0106:		eor $55, x		; 55 55
B7_0108:		ror $65			; 66 65
B7_010a:		adc $55			; 65 55
B7_010c:		eor $55, x		; 55 55
B7_010e:		eor $55, x		; 55 55
B7_0110:	.db $ff
B7_0111:		eor $aa, x		; 55 aa
B7_0113:		tax				; aa 
B7_0114:		tax				; aa 
B7_0115:		tax				; aa 
B7_0116:		tax				; aa 
B7_0117:		tax				; aa 
B7_0118:		tax				; aa 
B7_0119:		tax				; aa 
B7_011a:		tax				; aa 
B7_011b:		tax				; aa 
B7_011c:		tax				; aa 
B7_011d:		tax				; aa 
B7_011e:		tax				; aa 
B7_011f:		tax				; aa 
B7_0120:		and ($37), y	; 31 37
B7_0122:		ora #$80		; 09 80
B7_0124:		clc				; 18 
B7_0125:		rts				; 60 


B7_0126:		.db $00				; 00
B7_0127:		cpy #$20		; c0 20
B7_0129:	.db $2f
B7_012a:	.db $3a
B7_012b:	.db $a3
B7_012c:		inc $ef3c		; ee 3c ef
B7_012f:	.db $77
B7_0130:	.db $57
B7_0131:	.db $ef
B7_0132:	.db $9f
B7_0133:	.db $af
B7_0134:	.db $ff
B7_0135:		dec $9ebf, x	; de bf 9e
B7_0138:		cmp #$24		; c9 24
B7_013a:		eor ($09, x)	; 41 09
B7_013c:		ora #$09		; 09 09
B7_013e:		and #$00		; 29 00
B7_0140:		tay				; a8 
B7_0141:		ror a			; 6a
B7_0142:		ror a			; 6a
B7_0143:		tax				; aa 
B7_0144:		lda #$a6		; a9 a6
B7_0146:		stx $9a, y		; 96 9a
B7_0148:		tax				; aa 
B7_0149:		lsr $55, x		; 56 55
B7_014b:		tax				; aa 
B7_014c:	.db $54
B7_014d:		sbc #$7f		; e9 7f
B7_014f:		eor ($2f, x)	; 41 2f
B7_0151:		.db $00				; 00
B7_0152:	.db $80
B7_0153:	.db $fa
B7_0154:	.db $ff
B7_0155:	.db $ff
B7_0156:	.db $8d $01 $00
B7_0159:	.db $80
B7_015a:	.db $ff
B7_015b:	.db $ff
B7_015c:	.db $17
B7_015d:	.db $6e $00 $00
B7_0160:		sed				; f8 
B7_0161:	.db $fc
B7_0162:	.db $ff
B7_0163:	.db $4f
B7_0164:	.db $07
B7_0165:		.db $00				; 00
B7_0166:		.db $00				; 00
B7_0167:	.db $fc
B7_0168:	.db $ff
B7_0169:	.db $ff
B7_016a:		ora ($55, x)	; 01 55
B7_016c:		ora ($00), y	; 11 00
B7_016e:	.db $f4
B7_016f:	.db $ef
B7_0170:	.db $fb
B7_0171:	.db $97
B7_0172:		pha				; 48 
B7_0173:	.db $0b
B7_0174:		.db $00				; 00
B7_0175:		cpy #$ff		; c0 ff
B7_0177:	.db $ff
B7_0178:	.db $0f
B7_0179:		sty $24, x		; 94 24
B7_017b:		eor ($44, x)	; 41 44
B7_017d:	.db $6b
B7_017e:	.db $ff
B7_017f:	.db $5f
B7_0180:		rol a			; 2a
B7_0181:		tax				; aa 
B7_0182:		ora $00			; 05 00
B7_0184:	.db $d4
B7_0185:		inc $6dff, x	; fe ff 6d
B7_0188:		ora ($c4, x)	; 01 c4
B7_018a:	.db $12
B7_018b:	.db $52
B7_018c:		lda $75, x		; b5 75
B7_018e:	.db $ff
B7_018f:	.db $13
B7_0190:		plp				; 28 
B7_0191:	.db $da
B7_0192:		and ($20, x)	; 21 20
B7_0194:		sbc $ffbe		; edbe ff
B7_0197:		eor $40			; 45 40
B7_0199:		and #$91		; 29 91
B7_019b:	.db $52
B7_019c:		adc $ff, x		; 75 ff
B7_019e:	.db $bb
B7_019f:		bit $80			; 24 80
B7_01a1:		tsx				; ba 
B7_01a2:		lsr a			; 4a
B7_01a3:		ldy $ea			; a4 ea
B7_01a5:		ror $126f, x	; 7e 6f 12
B7_01a8:		sta ($aa), y	; 91 aa
B7_01aa:		lsr a			; 4a
B7_01ab:		iny				; c8 
B7_01ac:	.db $74
B7_01ad:	.db $df
B7_01ae:	.db $af
B7_01af:	.db $89
B7_01b0:		pha				; 48 
B7_01b1:		lsr a			; 4a
B7_01b2:	.db $52
B7_01b3:		lda $b2, x		; b5 b2
B7_01b5:		inc $a4b7		; ee b7 a4
B7_01b8:		dey				; 88 
B7_01b9:	.db $54
B7_01ba:		and $a5, x		; 35 a5
B7_01bc:	.db $54
B7_01bd:		sbc $556f		; ed6f 55
B7_01c0:	.db $22
B7_01c1:		lda $4a			; a5 4a
B7_01c3:		and $55			; 25 55
B7_01c5:	.db $eb
B7_01c6:		dec $4956, x	; de 56 49
B7_01c9:		ldx #$92		; a2 92
B7_01cb:		tax				; aa 
B7_01cc:		tax				; aa 
B7_01cd:		lsr $db, x		; 56 db
B7_01cf:		eor $9249, x	; 5d 49 92
B7_01d2:	.db $52
B7_01d3:		cmp $54, x		; d5 54
B7_01d5:		tax				; aa 
B7_01d6:	.db $da
B7_01d7:		lda $4495, x	; bd 95 44
B7_01da:		tax				; aa 
B7_01db:		tax				; aa 
B7_01dc:	.db $54
B7_01dd:		lsr a			; 4a
B7_01de:		sbc $ab6e		; ed6e ab
B7_01e1:	.db $52
B7_01e2:	.db $92
B7_01e3:		rol a			; 2a
B7_01e4:		eor $aa, x		; 55 aa
B7_01e6:	.db $5a
B7_01e7:	.db $db
B7_01e8:		lsr $55, x		; 56 55
B7_01ea:		lsr a			; 4a
B7_01eb:		sta $52, x		; 95 52
B7_01ed:		eor $55, x		; 55 55
B7_01ef:		cmp $da, x		; d5 da
B7_01f1:	.db $5a
B7_01f2:		sta $52, x		; 95 52
B7_01f4:		tax				; aa 
B7_01f5:	.db $54
B7_01f6:		eor $55, x		; 55 55
B7_01f8:		dec $76, x		; d6 76
B7_01fa:		and $a525		; 2d 25 a5
B7_01fd:		ldy $954a		; ac 4a 95
B7_0200:		ror a			; 6a
B7_0201:	.db $db
B7_0202:		lsr $95, x		; 56 95
B7_0204:	.db $52
B7_0205:		tax				; aa 
B7_0206:		tax				; aa 
B7_0207:	.db $54
B7_0208:		eor $ad, x		; 55 ad
B7_020a:		lda $96, x		; b5 96
B7_020c:		rol a			; 2a
B7_020d:		eor $a5, x		; 55 a5
B7_020f:		lsr a			; 4a
B7_0210:		eor $d5, x		; 55 d5
B7_0212:		tax				; aa 
B7_0213:		lda $aa, x		; b5 aa
B7_0215:		tax				; aa 
B7_0216:	.db $54
B7_0217:		rol a			; 2a
B7_0218:		eor $55, x		; 55 55
B7_021a:		cmp $aa, x		; d5 aa
B7_021c:		lda $4a55		; ad 55 4a
B7_021f:		lda #$aa		; a9 aa
B7_0221:		tax				; aa 
B7_0222:	.db $54
B7_0223:		cmp $5a, x		; d5 5a
B7_0225:	.db $ab
B7_0226:		tax				; aa 
B7_0227:	.db $52
B7_0228:		tax				; aa 
B7_0229:		tax				; aa 
B7_022a:		rol a			; 2a
B7_022b:		eor $d5, x		; 55 d5
B7_022d:		dec $aa, x		; d6 aa
B7_022f:		rol a			; 2a
B7_0230:		eor $95, x		; 55 95
B7_0232:		tax				; aa 
B7_0233:	.db $54
B7_0234:		eor $6b, x		; 55 6b
B7_0236:		eor $ab, x		; 55 ab
B7_0238:		tax				; aa 
B7_0239:	.db $54
B7_023a:		lda #$52		; a9 52
B7_023c:		eor $b5, x		; 55 b5
B7_023e:		ror a			; 6a
B7_023f:		eor $52, x		; 55 52
B7_0241:		lda $8a, x		; b5 8a
B7_0243:	.db $5a
B7_0244:	.db $57
B7_0245:	.db $42
B7_0246:		eor $a43b, x	; 5d 3b a4
B7_0249:	.db $fc
B7_024a:		dey				; 88 
B7_024b:		ldy $f3, x		; b4 f3
B7_024d:		ldy #$ea		; a0 ea
B7_024f:		;removed
	.db $70 $cd

B7_0251:		ora #$39		; 09 39
B7_0253:	.db $5f
B7_0254:		lda ($f1, x)	; a1 f1
B7_0256:		dec $12			; c6 12
B7_0258:	.db $a7
B7_0259:	.db $53
B7_025a:	.db $7b
B7_025b:		ldy #$f8		; a0 f8
B7_025d:		lda ($f5, x)	; a1 f5
B7_025f:	.db $64
B7_0260:		sta ($1f, x)	; 81 1f
B7_0262:	.db $fc
B7_0263:		ora #$f8		; 09 f8
B7_0265:	.db $0f
B7_0266:	.db $80
B7_0267:	.db $ff
B7_0268:		ora ($fc, x)	; 01 fc
B7_026a:		bcs B7_026a ; b0 fe

B7_026c:	.db $03
B7_026d:		cpx #$0f		; e0 0f
B7_026f:		beq B7_0280 ; f0 0f

B7_0271:		;removed
	.db $f0 $3f

B7_0273:		.db $00				; 00
B7_0274:	.db $ff
B7_0275:		ora ($3f, x)	; 01 3f
B7_0277:	.db $80
B7_0278:	.db $7f
B7_0279:		sed				; f8 
B7_027a:	.db $03
B7_027b:	.db $fc
B7_027c:		cpx #$f0		; e0 f0
B7_027e:	.db $ff
B7_027f:		.db $00				; 00
B7_0280:		;removed
	.db $10 $7f

B7_0282:	.db $0f
B7_0283:	.db $fc
B7_0284:	.db $07
B7_0285:		cpx #$0f		; e0 0f
B7_0287:		cpx #$07		; e0 07
B7_0289:		inc $7f00, x	; fe 00 7f
B7_028c:		beq B7_029d ; f0 0f

B7_028e:		cpy #$7f		; c0 7f
B7_0290:		cpy #$0f		; c0 0f
B7_0292:		beq B7_02b3 ; f0 1f

B7_0294:		php				; 08 
B7_0295:	.db $ff
B7_0296:	.db $03
B7_0297:		sed				; f8 
B7_0298:		ora ($f6, x)	; 01 f6
B7_029a:		sbc $f003, x	; fd 03 f0
B7_029d:	.db $3f
B7_029e:		cpx #$07		; e0 07
B7_02a0:		sed				; f8 
B7_02a1:	.db $0f
B7_02a2:		beq B7_02cb ; f0 27

B7_02a4:		cpx #$07		; e0 07
B7_02a6:		beq B7_02b7 ; f0 0f

B7_02a8:		;removed
	.db $f0 $3f

B7_02aa:		cpy #$1f		; c0 1f
B7_02ac:	.db $80
B7_02ad:	.db $3f
B7_02ae:		;removed
	.db $f0 $ff

B7_02b0:		.db $00				; 00
B7_02b1:		beq B7_02d2 ; f0 1f

B7_02b3:		;removed
	.db $f0 $0f

B7_02b5:		;removed
	.db $f0 $3f

B7_02b7:		.db $00				; 00
B7_02b8:	.db $ff
B7_02b9:		.db $00				; 00
B7_02ba:		ror $f83e, x	; 7e 3e f8
B7_02bd:		jsr $1ff0		; 20 f0 1f
B7_02c0:		cpx #$3f		; e0 3f
B7_02c2:	.db $80
B7_02c3:	.db $fd $0f $00
B7_02c6:	.db $ff
B7_02c7:	.db $03
B7_02c8:		;removed
	.db $f0 $1f

B7_02ca:	.db $80
B7_02cb:	.db $3f
B7_02cc:		inc $f808		; ee 08 f8
B7_02cf:	.db $0f
B7_02d0:		cld				; d8 
B7_02d1:	.db $3f
B7_02d2:		.db $00				; 00
B7_02d3:		sbc $d80f, x	; fd 0f d8
B7_02d6:	.db $3f
B7_02d7:		.db $00				; 00
B7_02d8:	.db $ff
B7_02d9:	.db $0b
B7_02da:		cpy #$0f		; c0 0f
B7_02dc:	.db $07
B7_02dd:	.db $b7
B7_02de:		cmp $5f80		; cd 80 5f
B7_02e1:	.db $dc
B7_02e2:		bpl B7_02b3 ; 10 cf

B7_02e4:	.db $1f
B7_02e5:		clc				; 18 
B7_02e6:		beq B7_02c3 ; f0 db

B7_02e8:		cpy #$ee		; c0 ee
B7_02ea:		and $83c0, y	; 39 c0 83
B7_02ed:	.db $3f
B7_02ee:		asl $3e			; 06 3e
B7_02f0:		inc $3818, x	; fe 18 38
B7_02f3:		sed				; f8 
B7_02f4:		adc $83c0, x	; 7d c0 83
B7_02f7:		sbc ($0f, x)	; e1 0f
B7_02f9:	.db $1f
B7_02fa:	.db $3c
B7_02fb:	.db $1a
B7_02fc:		rol $e1e0, x	; 3e e0 e1
B7_02ff:	.db $ff
B7_0300:		cpy #$e1		; c0 e1
B7_0302:		ora ($fc, x)	; 01 fc
B7_0304:	.db $87
B7_0305:	.db $83
B7_0306:	.db $c3
B7_0307:	.db $fb
B7_0308:		.db $00				; 00
B7_0309:		dec $c70f		; ce 0f c7
B7_030c:	.db $c7
B7_030d:	.db $03
B7_030e:	.db $4f
B7_030f:	.db $3c
B7_0310:		;removed
	.db $70 $87

B7_0312:	.db $1f
B7_0313:		rol $19e0, x	; 3e e0 19
B7_0316:	.db $e3
B7_0317:		cpy #$e1		; c0 e1
B7_0319:	.db $87
B7_031a:	.db $fb
B7_031b:		sta ($3f, x)	; 81 3f
B7_031d:		cpx #$03		; e0 03
B7_031f:	.db $c7
B7_0320:	.db $0f
B7_0321:	.db $3c
B7_0322:		sed				; f8 
B7_0323:		cmp ($0f, x)	; c1 0f
B7_0325:		clv				; b8 
B7_0326:	.db $7f
B7_0327:		cpy #$87		; c0 87
B7_0329:	.db $0f
B7_032a:		rol $81f8, x	; 3e f8 81
B7_032d:	.db $4f
B7_032e:		cpx #$07		; e0 07
B7_0330:	.db $fc
B7_0331:		cpx #$7c		; e0 7c
B7_0333:		sed				; f8 
B7_0334:		;removed
	.db $30 $c0

B7_0336:		sec				; 38 
B7_0337:		ror $f9f0, x	; 7e f0 f9
B7_033a:		;removed
	.db $f0 $c1

B7_033c:		sbc $e1			; e5 e1
B7_033e:	.db $83
B7_033f:	.db $c3
B7_0340:	.db $07
B7_0341:		inc $f80f, x	; fe 0f f8
B7_0344:		cpx #$e0		; e0 e0
B7_0346:	.db $1f
B7_0347:	.db $80
B7_0348:		adc ($ff, x)	; 61 ff
B7_034a:	.db $80
B7_034b:	.db $1f
B7_034c:	.db $7c
B7_034d:		sei				; 78 
B7_034e:		cpx #$0f		; e0 0f
B7_0350:		sed				; f8 
B7_0351:	.db $0f
B7_0352:		sei				; 78 
B7_0353:		beq B7_0356 ; f0 01

B7_0355:	.db $1f
B7_0356:		cpy #$3f		; c0 3f
B7_0358:		;removed
	.db $f0 $79

B7_035a:		;removed
	.db $f0 $e1

B7_035c:	.db $c3
B7_035d:	.db $87
B7_035e:	.db $87
B7_035f:	.db $03
B7_0360:	.db $c3
B7_0361:	.db $0f
B7_0362:	.db $7f
B7_0363:		cpy #$07		; c0 07
B7_0365:	.db $3f
B7_0366:		;removed
	.db $f0 $03

B7_0368:	.db $3f
B7_0369:	.db $3c
B7_036a:		;removed
	.db $f0 $b0

B7_036c:	.db $37
B7_036d:		sed				; f8 
B7_036e:		cpx #$87		; e0 87
B7_0370:	.db $87
B7_0371:	.db $8f
B7_0372:	.db $0f
B7_0373:	.db $3c
B7_0374:	.db $3c
B7_0375:		sec				; 38 
B7_0376:		bpl B7_0376 ; 10 fe

B7_0378:		and ($78), y	; 31 78
B7_037a:		sed				; f8 
B7_037b:	.db $03
B7_037c:	.db $1f
B7_037d:		asl $fcf8		; 0e f8 fc
B7_0380:		;removed
	.db $f0 $c3

B7_0382:		sec				; 38 
B7_0383:	.db $e3
B7_0384:		and ($2e, x)	; 21 2e
B7_0386:		sec				; 38 
B7_0387:		asl $e0f3, x	; 1e f3 e0
B7_038a:		stx $7f			; 86 7f
B7_038c:		sed				; f8 
B7_038d:	.db $83
B7_038e:	.db $0f
B7_038f:		asl $3f			; 06 3f
B7_0391:		cpy #$1f		; c0 1f
B7_0393:		sed				; f8 
B7_0394:		ora ($7e, x)	; 01 7e
B7_0396:		sec				; 38 
B7_0397:	.db $1f
B7_0398:		bit $fc			; 24 fc
B7_039a:		bvs B7_03d8 ; 70 3c

B7_039c:	.db $3c
B7_039d:		ror $6270, x	; 7e 70 62
B7_03a0:	.db $1c
B7_03a1:	.db $0f
B7_03a2:	.db $1f
B7_03a3:		asl $3e1f, x	; 1e 1f 3e
B7_03a6:		sei				; 78 
B7_03a7:		sei				; 78 
B7_03a8:		;removed
	.db $70 $78

B7_03aa:		sei				; 78 
B7_03ab:	.db $3c
B7_03ac:	.db $3c
B7_03ad:		adc ($0e), y	; 71 0e
B7_03af:	.db $3c
B7_03b0:		clv				; b8 
B7_03b1:	.db $67
B7_03b2:		asl $63dc		; 0e dc 63
B7_03b5:	.db $fc
B7_03b6:		cpx #$78		; e0 78
B7_03b8:		beq B7_037d ; f0 c3

B7_03ba:	.db $83
B7_03bb:		sbc ($83, x)	; e1 83
B7_03bd:	.db $07
B7_03be:		ror $e1f8, x	; 7e f8 e1
B7_03c1:		cmp ($f1, x)	; c1 f1
B7_03c3:		beq B7_03b5 ; f0 f0

B7_03c5:		sbc ($07, x)	; e1 07
B7_03c7:	.db $3c
B7_03c8:		cpx $71			; e4 71
B7_03ca:		bvs B7_0448 ; 70 7c

B7_03cc:	.db $3c
B7_03cd:		sed				; f8 
B7_03ce:		bmi B7_0448 ; 30 78

B7_03d0:	.db $3c
B7_03d1:	.db $1c
B7_03d2:		inc $0781, x	; fe 81 07
B7_03d5:	.db $6f
B7_03d6:	.db $1c
B7_03d7:	.db $3f
B7_03d8:		cpx #$1f		; e0 1f
B7_03da:		asl $8c3c, x	; 1e 3c 8c
B7_03dd:		adc ($1e), y	; 71 1e
B7_03df:	.db $c3
B7_03e0:		ora $c387		; 0d 87 c3
B7_03e3:	.db $e3
B7_03e4:		cpx #$c3		; e0 c3
B7_03e6:	.db $c3
B7_03e7:	.db $0f
B7_03e8:	.db $1f
B7_03e9:		sec				; 38 
B7_03ea:	.db $7c
B7_03eb:		sei				; 78 
B7_03ec:		sei				; 78 
B7_03ed:		iny				; c8 
B7_03ee:		and $07ce, y	; 39 ce 07
B7_03f1:	.db $7f
B7_03f2:		sty $1cc3		; 8c c3 1c
B7_03f5:		beq B7_038f ; f0 98

B7_03f7:		and $81f8, x	; 3d f8 81
B7_03fa:	.db $87
B7_03fb:	.db $c3
B7_03fc:	.db $c3
B7_03fd:	.db $0f
B7_03fe:		inc $e3c0, x	; fe c0 e3
B7_0401:		sta ($e3, x)	; 81 e3
B7_0403:	.db $87
B7_0404:	.db $c7
B7_0405:	.db $0c
B7_0406:	.db $3f
B7_0407:	.db $1c
B7_0408:		asl $387c, x	; 1e 7c 38
B7_040b:		inc $0f			; e6 0f
B7_040d:		asl $0f1f		; 0e 1f 0f
B7_0410:		cpy #$e3		; c0 e3
B7_0412:		bvs B7_048c ; 70 78

B7_0414:		sei				; 78 
B7_0415:	.db $1c
B7_0416:		asl $7e0f		; 0e 0f 7e
B7_0419:		sei				; 78 
B7_041a:	.db $1c
B7_041b:		adc $e1f0, y	; 79 f0 e1
B7_041e:	.db $87
B7_041f:	.db $e3
B7_0420:	.db $e3
B7_0421:		asl $3c3e		; 0e 3e 3c
B7_0424:		cpx #$0d		; e0 0d
B7_0426:	.db $e7
B7_0427:		sta ($c7, x)	; 81 c7
B7_0429:	.db $83
B7_042a:	.db $0f
B7_042b:	.db $e7
B7_042c:		clc				; 18 
B7_042d:	.db $0f
B7_042e:		sei				; 78 
B7_042f:		sei				; 78 
B7_0430:	.db $7c
B7_0431:		sec				; 38 
B7_0432:	.db $fc
B7_0433:		cpx #$61		; e0 61
B7_0435:	.db $c7
B7_0436:		ora $de0f, y	; 19 0f de
B7_0439:		sec				; 38 
B7_043a:		;removed
	.db $f0 $70

B7_043c:		sei				; 78 
B7_043d:		sei				; 78 
B7_043e:		beq B7_0430 ; f0 f0

B7_0440:		sei				; 78 
B7_0441:		sei				; 78 
B7_0442:		sed				; f8 
B7_0443:	.db $33
B7_0444:	.db $8f
B7_0445:	.db $83
B7_0446:	.db $c3
B7_0447:	.db $c3
B7_0448:	.db $c3
B7_0449:	.db $c3
B7_044a:	.db $07
B7_044b:	.db $92
B7_044c:	.db $c3
B7_044d:	.db $0f
B7_044e:	.db $0f
B7_044f:	.db $8f
B7_0450:	.db $87
B7_0451:	.db $83
B7_0452:	.db $07
B7_0453:	.db $1f
B7_0454:	.db $7b
B7_0455:	.db $fc
B7_0456:		cpx #$e1		; e0 e1
B7_0458:	.db $c3
B7_0459:	.db $1f
B7_045a:		sec				; 38 
B7_045b:		asl $730e		; 0e 0e 73
B7_045e:		stx $1cf1		; 8e f1 1c
B7_0461:	.db $3c
B7_0462:		stx $cc63		; 8e 63 cc
B7_0465:		sec				; 38 
B7_0466:	.db $9c
B7_0467:		and $1c1e, y	; 39 1e 1c
B7_046a:	.db $7c
B7_046b:		sei				; 78 
B7_046c:		beq B7_04de ; f0 70

B7_046e:	.db $cf
B7_046f:		sed				; f8 
B7_0470:		beq B7_0435 ; f0 c3

B7_0472:	.db $c7
B7_0473:	.db $e3
B7_0474:		cpx #$38		; e0 38
B7_0476:		;removed
	.db $f0 $c0

B7_0478:		ora ($77), y	; 11 77
B7_047a:		dec $1c			; c6 1c
B7_047c:	.db $f3
B7_047d:		clc				; 18 
B7_047e:	.db $c7
B7_047f:		sec				; 38 
B7_0480:	.db $e3
B7_0481:		cpy #$1f		; c0 1f
B7_0483:	.db $c7
B7_0484:	.db $0f
B7_0485:	.db $3f
B7_0486:		sei				; 78 
B7_0487:		sty $1f			; 84 1f
B7_0489:		stx $0f03		; 8e 03 0f
B7_048c:	.db $3c
B7_048d:	.db $3c
B7_048e:	.db $73
B7_048f:	.db $dc
B7_0490:		and ($fe, x)	; 21 fe
B7_0492:		sec				; 38 
B7_0493:		asl $1e1e, x	; 1e 1e 1e
B7_0496:	.db $1c
B7_0497:	.db $3c
B7_0498:	.db $3c
B7_0499:	.db $fc
B7_049a:		sbc ($e1), y	; f1 e1
B7_049c:		sbc ($c1), y	; f1 c1
B7_049e:	.db $03
B7_049f:		sed				; f8 
B7_04a0:		;removed
	.db $f0 $38

B7_04a2:	.db $3c
B7_04a3:	.db $1c
B7_04a4:	.db $87
B7_04a5:	.db $87
B7_04a6:	.db $87
B7_04a7:	.db $c7
B7_04a8:	.db $0f
B7_04a9:	.db $8f
B7_04aa:	.db $87
B7_04ab:		ora $f87e, y	; 19 7e f8
B7_04ae:		bvs B7_04a0 ; 70 f0

B7_04b0:		cpx #$e1		; e0 e1
B7_04b2:		sbc ($81, x)	; e1 81
B7_04b4:	.db $07
B7_04b5:	.db $3f
B7_04b6:		inc $b8, x		; f6 b8
B7_04b8:	.db $03
B7_04b9:	.db $8f
B7_04ba:		rts				; 60 


B7_04bb:	.db $9e
B7_04bc:	.db $03
B7_04bd:	.db $3f
B7_04be:	.db $87
B7_04bf:	.db $0f
B7_04c0:	.db $8f
B7_04c1:	.db $63
B7_04c2:		asl $f01f		; 0e 1f f0
B7_04c5:	.db $c3
B7_04c6:	.db $63
B7_04c7:		sty $1c71		; 8c 71 1c
B7_04ca:	.db $3c
B7_04cb:		sei				; 78 
B7_04cc:		sed				; f8 
B7_04cd:	.db $e3
B7_04ce:		cmp ($83, x)	; c1 83
B7_04d0:	.db $1f
B7_04d1:		dec $f1			; c6 f1
B7_04d3:	.db $3c
B7_04d4:		sec				; 38 
B7_04d5:	.db $dc
B7_04d6:		and ($e0), y	; 31 e0
B7_04d8:		stx $87e3		; 8e e3 87
B7_04db:	.db $c3
B7_04dc:	.db $c3
B7_04dd:	.db $03
B7_04de:	.db $8f
B7_04df:	.db $1f
B7_04e0:		asl $e41e, x	; 1e 1e e4
B7_04e3:		asl $1e67		; 0e 67 1e
B7_04e6:		cpx $c770		; ec 70 c7
B7_04e9:		sbc ($07, x)	; e1 07
B7_04eb:	.db $1c
B7_04ec:		asl $870f, x	; 1e 0f 87
B7_04ef:	.db $3f
B7_04f0:		sei				; 78 
B7_04f1:		sec				; 38 
B7_04f2:		cpx $c3e1		; ec e1 c3
B7_04f5:		cmp ($c1, x)	; c1 c1
B7_04f7:	.db $13
B7_04f8:	.db $f3
B7_04f9:	.db $87
B7_04fa:	.db $0f
B7_04fb:	.db $9e
B7_04fc:		clc				; 18 
B7_04fd:	.db $c7
B7_04fe:		sbc ($c3), y	; f1 c3
B7_0500:		sta ($63, x)	; 81 63
B7_0502:	.db $1c
B7_0503:	.db $33
B7_0504:		stx $8e3b		; 8e 3b 8e
B7_0507:	.db $0f
B7_0508:	.db $9c
B7_0509:	.db $33
B7_050a:		asl $1d8f		; 0e 8f 1d
B7_050d:	.db $47
B7_050e:	.db $3c
B7_050f:	.db $9c
B7_0510:	.db $73
B7_0511:		stx $e639		; 8e 39 e6
B7_0514:	.db $87
B7_0515:	.db $8f
B7_0516:	.db $63
B7_0517:		sec				; 38 
B7_0518:	.db $dc
B7_0519:		and ($06), y	; 31 06
B7_051b:		asl $c70f		; 0e 0f c7
B7_051e:	.db $c3
B7_051f:	.db $c3
B7_0520:		adc ($3c), y	; 71 3c
B7_0522:	.db $fc
B7_0523:		cmp ($c3, x)	; c1 c3
B7_0525:		stx $8e39		; 8e 39 8e
B7_0528:	.db $0f
B7_0529:		asl $06ce, x	; 1e ce 06
B7_052c:	.db $67
B7_052d:		beq B7_04d0 ; f0 a1

B7_052f:	.db $33
B7_0530:		dec $19			; c6 19
B7_0532:	.db $0f
B7_0533:		asl $783e, x	; 1e 3e 78
B7_0536:	.db $0c
B7_0537:	.db $0f
B7_0538:		asl $f673, x	; 1e 73 f6
B7_053b:		sbc ($c0, x)	; e1 c0
B7_053d:	.db $13
B7_053e:	.db $e7
B7_053f:	.db $c7
B7_0540:	.db $83
B7_0541:	.db $0f
B7_0542:	.db $c7
B7_0543:		and $398e, y	; 39 8e 39
B7_0546:		cpx #$f1		; e0 f1
B7_0548:		sec				; 38 
B7_0549:	.db $dc
B7_054a:		lda ($71), y	; b1 71
B7_054c:		cpx #$71		; e0 71
B7_054e:		stx $1e3d		; 8e 3d 1e
B7_0551:		asl $1f1c, x	; 1e 1c 1f
B7_0554:	.db $3c
B7_0555:		beq B7_055e ; f0 07

B7_0557:		asl $8e1e, x	; 1e 1e 8e
B7_055a:		sec				; 38 
B7_055b:	.db $0f
B7_055c:	.db $3f
B7_055d:	.db $3c
B7_055e:		sei				; 78 
B7_055f:	.db $1c
B7_0560:	.db $0f
B7_0561:	.db $0f
B7_0562:	.db $1c
B7_0563:	.db $3f
B7_0564:		cpy $c1			; c4 c1
B7_0566:	.db $87
B7_0567:	.db $3f
B7_0568:		ldy $c3e1, x	; bc e1 c3
B7_056b:	.db $c3
B7_056c:		sbc ($f0), y	; f1 f0
B7_056e:		;removed
	.db $30 $1e

B7_0570:		dec $e1e0		; ce e0 e1
B7_0573:		sta ($07), y	; 91 07
B7_0575:		rol $07f1, x	; 3e f1 07
B7_0578:	.db $8f
B7_0579:	.db $87
B7_057a:	.db $07
B7_057b:	.db $1f
B7_057c:	.db $fc
B7_057d:		sec				; 38 
B7_057e:		inc $e0			; e6 e0
B7_0580:		cmp ($0f, x)	; c1 0f
B7_0582:		asl $381e		; 0e 1e 38
B7_0585:	.db $1f
B7_0586:	.db $e3
B7_0587:		sta ($e7, x)	; 81 e7
B7_0589:	.db $1c
B7_058a:	.db $c7
B7_058b:	.db $87
B7_058c:		ora $71c7		; 0d c7 71
B7_058f:		sei				; 78 
B7_0590:		cpx #$e3		; e0 e3
B7_0592:		sbc ($78, x)	; e1 78
B7_0594:	.db $32
B7_0595:		inc $e078, x	; fe 78 e0
B7_0598:	.db $63
B7_0599:		dey				; 88 
B7_059a:	.db $07
B7_059b:		inc $e1e0, x	; fe e0 e1
B7_059e:		sed				; f8 
B7_059f:		;removed
	.db $f0 $31

B7_05a1:	.db $c3
B7_05a2:	.db $e3
B7_05a3:		sbc ($e0, x)	; e1 e0
B7_05a5:	.db $07
B7_05a6:	.db $77
B7_05a7:		lsr $1e			; 46 1e
B7_05a9:	.db $9c
B7_05aa:	.db $c3
B7_05ab:	.db $c7
B7_05ac:		adc ($f8, x)	; 61 f8
B7_05ae:		bvs B7_05ec ; 70 3c

B7_05b0:		ror $38			; 66 38
B7_05b2:	.db $0f
B7_05b3:		beq B7_05ee ; f0 39

B7_05b5:		asl $c3c7, x	; 1e c7 c3
B7_05b8:	.db $e3
B7_05b9:		cmp ($83, x)	; c1 83
B7_05bb:	.db $87
B7_05bc:	.db $87
B7_05bd:	.db $07
B7_05be:	.db $8f
B7_05bf:		sei				; 78 
B7_05c0:		beq B7_05a5 ; f0 e3

B7_05c2:	.db $63
B7_05c3:		inc $08, x		; f6 08
B7_05c5:		stx $78e3		; 8e e3 78
B7_05c8:	.db $1c
B7_05c9:		rol $3c1c, x	; 3e 1c 3c
B7_05cc:	.db $1c
B7_05cd:	.db $e7
B7_05ce:		bvs B7_05ec ; 70 1c

B7_05d0:		asl $e1e7, x	; 1e e7 e1
B7_05d3:		cpy $f1e1		; cc e1 f1
B7_05d6:		cpx #$87		; e0 87
B7_05d8:	.db $07
B7_05d9:	.db $0f
B7_05da:		asl $c1c6, x	; 1e c6 c1
B7_05dd:	.db $cf
B7_05de:	.db $c3
B7_05df:	.db $c3
B7_05e0:		sbc ($c1, x)	; e1 c1
B7_05e2:	.db $0f
B7_05e3:	.db $63
B7_05e4:	.db $1c
B7_05e5:	.db $7f
B7_05e6:		clc				; 18 
B7_05e7:		rol $783c, x	; 3e 3c 78
B7_05ea:		;removed
	.db $70 $fc

B7_05ec:		cpx #$31		; e0 31
B7_05ee:	.db $7c
B7_05ef:	.db $3c
B7_05f0:		cpx #$71		; e0 71
B7_05f2:		rol $cf07, x	; 3e 07 cf
B7_05f5:		sbc ($70), y	; f1 70
B7_05f7:		sec				; 38 
B7_05f8:		stx $e187		; 8e 87 e1
B7_05fb:	.db $1c
B7_05fc:	.db $c7
B7_05fd:	.db $63
B7_05fe:		sei				; 78 
B7_05ff:		sty $c787		; 8c 87 c7
B7_0602:	.db $e3
B7_0603:	.db $03
B7_0604:		rol $1c78, x	; 3e 78 1c
B7_0607:		dec $0e71		; ce 71 0e
B7_060a:	.db $0f
B7_060b:	.db $e7
B7_060c:		sec				; 38 
B7_060d:		rol $7e			; 26 7e
B7_060f:		sei				; 78 
B7_0610:	.db $1c
B7_0611:		sei				; 78 
B7_0612:	.db $3c
B7_0613:		adc ($3c, x)	; 61 3c
B7_0615:		sei				; 78 
B7_0616:	.db $3c
B7_0617:		inc $38			; e6 38
B7_0619:		stx $e1e3		; 8e e3 e1
B7_061c:		sei				; 78 
B7_061d:		cpx $31			; e4 31
B7_061f:		rol $1c63, x	; 3e 63 1c
B7_0622:		dec $f1			; c6 f1
B7_0624:		sei				; 78 
B7_0625:		ldy $3c38, x	; bc 38 3c
B7_0628:		asl $0f0f		; 0e 0f 0f
B7_062b:	.db $c7
B7_062c:		sbc ($01), y	; f1 01
B7_062e:	.db $0f
B7_062f:	.db $9f
B7_0630:		adc ($8e, x)	; 61 8e
B7_0632:		and $787c, x	; 3d 7c 78
B7_0635:		clc				; 18 
B7_0636:		dec $21e1		; ce e1 21
B7_0639:	.db $1f
B7_063a:		dec $7c31		; ce 31 7c
B7_063d:	.db $3c
B7_063e:		ldx $18e0, y	; be e0 18
B7_0641:	.db $7c
B7_0642:		sed				; f8 
B7_0643:		cpx #$8d		; e0 8d
B7_0645:	.db $c3
B7_0646:		sta ($0f, x)	; 81 0f
B7_0648:		rol $0f1e, x	; 3e 1e 0f
B7_064b:	.db $1c
B7_064c:	.db $e7
B7_064d:		adc ($8c), y	; 71 8c
B7_064f:	.db $0f
B7_0650:	.db $87
B7_0651:	.db $87
B7_0652:	.db $8f
B7_0653:	.db $83
B7_0654:	.db $c3
B7_0655:	.db $a3
B7_0656:	.db $c7
B7_0657:	.db $c3
B7_0658:		sbc $71			; e5 71
B7_065a:		sec				; 38 
B7_065b:		sed				; f8 
B7_065c:		sec				; 38 
B7_065d:	.db $3c
B7_065e:		dec $1de0		; ce e0 1d
B7_0661:		sei				; 78 
B7_0662:		sei				; 78 
B7_0663:		sei				; 78 
B7_0664:		sei				; 78 
B7_0665:	.db $1c
B7_0666:		sei				; 78 
B7_0667:		sed				; f8 
B7_0668:		cpx #$71		; e0 71
B7_066a:	.db $0f
B7_066b:	.db $67
B7_066c:	.db $1c
B7_066d:		rol $c386, x	; 3e 86 c3
B7_0670:		and $9c7c, y	; 39 7c 9c
B7_0673:	.db $c3
B7_0674:		ora $0f0e, x	; 1d 0e 0f
B7_0677:	.db $c7
B7_0678:	.db $83
B7_0679:	.db $c7
B7_067a:	.db $e3
B7_067b:		sec				; 38 
B7_067c:		tya				; 98 
B7_067d:	.db $0f
B7_067e:	.db $47
B7_067f:		inc $ab55, x	; fe 55 ab
B7_0682:		cmp $aa, x		; d5 aa
B7_0684:	.db $5a
B7_0685:	.db $4b
B7_0686:		sta $4a, x		; 95 4a
B7_0688:		eor $a9, x		; 55 a9
B7_068a:	.db $54
B7_068b:		cmp $d6, x		; d5 d6
B7_068d:		tax				; aa 
B7_068e:		ldy $35			; a4 35
B7_0690:	.db $4b
B7_0691:	.db $89
B7_0692:	.db $52
B7_0693:		eor $d9, x		; 55 d9
B7_0695:	.db $5b
B7_0696:	.db $5f
B7_0697:	.db $57
B7_0698:		adc $2a, x		; 75 2a
B7_069a:		eor #$42		; 49 42
B7_069c:	.db $92
B7_069d:	.db $22
B7_069e:		eor $76d5		; 4d d5 76
B7_06a1:	.db $db
B7_06a2:	.db $d7
B7_06a3:		rol a			; 2a
B7_06a4:		lda $24			; a5 24
B7_06a6:	.db $92
B7_06a7:		plp				; 28 
B7_06a8:	.db $52
B7_06a9:		lda #$7f		; a9 7f
B7_06ab:	.db $df
B7_06ac:	.db $db
B7_06ad:		adc $894f		; 6d 4f 89
B7_06b0:		jsr $8224		; 20 24 82
B7_06b3:		dey				; 88 
B7_06b4:	.db $d2
B7_06b5:	.db $7b
B7_06b6:	.db $77
B7_06b7:		lda $54aa		; ad aa 54
B7_06ba:		txa				; 8a 
B7_06bb:		eor ($48, x)	; 41 48
B7_06bd:	.db $ff
B7_06be:	.db $7f
B7_06bf:	.db $57
B7_06c0:	.db $7b
B7_06c1:	.db $5f
B7_06c2:	.db $12
B7_06c3:	.db $02
B7_06c4:	.db $92
B7_06c5:	.db $22
B7_06c6:	.db $02
B7_06c7:		ror a			; 6a
B7_06c8:	.db $7b
B7_06c9:	.db $57
B7_06ca:		tax				; aa 
B7_06cb:		ror a			; 6a
B7_06cc:		lda $48			; a5 48
B7_06ce:		;removed
	.db $10 $ff

B7_06d0:	.db $ff
B7_06d1:	.db $77
B7_06d2:	.db $73
B7_06d3:	.db $7f
B7_06d4:		eor $20			; 45 20
B7_06d6:		rti				; 40 


B7_06d7:	.db $89
B7_06d8:		php				; 08 
B7_06d9:		rol a			; 2a
B7_06da:		lda $53, x		; b5 53
B7_06dc:		sta $aa, x		; 95 aa
B7_06de:		tax				; aa 
B7_06df:		bit $6a			; 24 6a
B7_06e1:	.db $ff
B7_06e2:	.db $ff
B7_06e3:	.db $bf
B7_06e4:		dec $57, x		; d6 57
B7_06e6:	.db $82
B7_06e7:		.db $00				; 00
B7_06e8:		plp				; 28 
B7_06e9:		eor #$88		; 49 88
B7_06eb:		tay				; a8 
B7_06ec:		dec $ac, x		; d6 ac
B7_06ee:		ldy $d2			; a4 d2
B7_06f0:		sty $ffda		; 8c da ff
B7_06f3:	.db $ff
B7_06f4:	.db $bf
B7_06f5:		dec $b5, x		; d6 b5
B7_06f7:		php				; 08 
B7_06f8:		php				; 08 
B7_06f9:		jsr $8229		; 20 29 82
B7_06fc:		bcc B7_06d4 ; 90 d6

B7_06fe:		lsr $25, x		; 56 25
B7_0700:		lda #$a6		; a9 a6
B7_0702:		cmp $ffff, x	; dd ff ff
B7_0705:	.db $af
B7_0706:	.db $da
B7_0707:		and $22, x		; 35 22
B7_0709:	.db $80
B7_070a:		ldy #$a2		; a0 a2
B7_070c:	.db $80
B7_070d:		ldy #$5a		; a0 5a
B7_070f:	.db $a7
B7_0710:		sty $4a, x		; 94 4a
B7_0712:	.db $5b
B7_0713:		sbc $ffff, x	; fd ff ff
B7_0716:		cmp $8b7a		; cd 7a 8b
B7_0719:	.db $02
B7_071a:		ora ($8a, x)	; 01 8a
B7_071c:	.db $04
B7_071d:	.db $22
B7_071e:		dey				; 88 
B7_071f:		ror $55, x		; 76 55
B7_0721:	.db $52
B7_0722:		lsr a			; 4a
B7_0723:	.db $db
B7_0724:	.db $ff
B7_0725:	.db $ff
B7_0726:	.db $d7
B7_0727:		ror $3f, x		; 76 3f
B7_0729:		rol a			; 2a
B7_072a:		jsr $4948		; 20 48 49
B7_072d:		jsr $7508		; 20 08 75
B7_0730:		eor $52, x		; 55 52
B7_0732:		lsr a			; 4a
B7_0733:	.db $db
B7_0734:	.db $ff
B7_0735:	.db $ff
B7_0736:	.db $d7
B7_0737:		ror $3f, x		; 76 3f
B7_0739:		rol a			; 2a
B7_073a:		jsr $4948		; 20 48 49
B7_073d:		jsr $7508		; 20 08 75
B7_0740:		ora ($3f, x)	; 01 3f
B7_0742:		php				; 08 
B7_0743:		beq B7_0784 ; f0 3f

B7_0745:	.db $fe $7f $00
B7_0748:		stx $f818		; 8e 18 f8
B7_074b:	.db $1f
B7_074c:	.db $fe $ff $00
B7_074f:		php				; 08 
B7_0750:		.db $00				; 00
B7_0751:		;removed
	.db $f0 $3f

B7_0753:	.db $fe $ff $00
B7_0756:		asl $f000		; 0e 00 f0
B7_0759:	.db $7f
B7_075a:	.db $fe $7f $00
B7_075d:		asl $f800		; 0e 00 f8
B7_0760:	.db $1f
B7_0761:	.db $fe $7f $00
B7_0764:	.db $1f
B7_0765:		.db $00				; 00
B7_0766:		sed				; f8 
B7_0767:	.db $9f
B7_0768:	.db $ff
B7_0769:	.db $03
B7_076a:		.db $00				; 00
B7_076b:	.db $03
B7_076c:	.db $80
B7_076d:	.db $ff
B7_076e:	.db $ef
B7_076f:	.db $ff
B7_0770:	.db $07
B7_0771:		rts				; 60 


B7_0772:		asl $ff80		; 0e 80 ff
B7_0775:	.db $ff
B7_0776:	.db $07
B7_0777:		.db $00				; 00
B7_0778:		.db $00				; 00
B7_0779:	.db $80
B7_077a:	.db $ff
B7_077b:	.db $cf
B7_077c:	.db $ff
B7_077d:	.db $0f
B7_077e:		cpx #$18		; e0 18
B7_0780:	.db $80
B7_0781:	.db $ff
B7_0782:	.db $ff
B7_0783:		.db $00				; 00
B7_0784:	.db $1c
B7_0785:		.db $00				; 00
B7_0786:		;removed
	.db $f0 $1f

B7_0788:		sed				; f8 
B7_0789:	.db $ff
B7_078a:	.db $03
B7_078b:		ror $f000, x	; 7e 00 f0
B7_078e:	.db $ff
B7_078f:	.db $03
B7_0790:		sed				; f8 
B7_0791:		ora ($c0, x)	; 01 c0
B7_0793:	.db $7f
B7_0794:		cpx #$ff		; e0 ff
B7_0796:	.db $07
B7_0797:		sed				; f8 
B7_0798:	.db $07
B7_0799:		cpx #$7f		; e0 7f
B7_079b:		.db $00				; 00
B7_079c:	.db $fc
B7_079d:		ora ($f0, x)	; 01 f0
B7_079f:	.db $3f
B7_07a0:		cpx #$ff		; e0 ff
B7_07a2:		ora ($fe, x)	; 01 fe
B7_07a4:	.db $03
B7_07a5:		inc $8003, x	; fe 03 80
B7_07a8:	.db $07
B7_07a9:	.db $80
B7_07aa:	.db $ff
B7_07ab:	.db $07
B7_07ac:	.db $ff
B7_07ad:	.db $0f
B7_07ae:		cpy #$3f		; c0 3f
B7_07b0:	.db $fe $03 $00
B7_07b3:		.db $00				; 00
B7_07b4:	.db $80
B7_07b5:	.db $ff
B7_07b6:	.db $ff
B7_07b7:	.db $ff
B7_07b8:	.db $0f
B7_07b9:		cpy #$ff		; c0 ff
B7_07bb:	.db $3f
B7_07bc:		.db $00				; 00
B7_07bd:		.db $00				; 00
B7_07be:		.db $00				; 00
B7_07bf:		;removed
	.db $f0 $ff

B7_07c1:	.db $fe $ff $00
B7_07c4:		cpy $03ff		; cc ff 03
B7_07c7:		.db $00				; 00
B7_07c8:		.db $00				; 00
B7_07c9:		.db $00				; 00
B7_07ca:	.db $ff
B7_07cb:	.db $f7
B7_07cc:	.db $ff
B7_07cd:	.db $0f
B7_07ce:		cpx #$e7		; e0 e7
B7_07d0:	.db $3f
B7_07d1:		.db $00				; 00
B7_07d2:		.db $00				; 00
B7_07d3:		.db $00				; 00
B7_07d4:		sed				; f8 
B7_07d5:	.db $ff
B7_07d6:	.db $ff
B7_07d7:	.db $7f
B7_07d8:		.db $00				; 00
B7_07d9:		rol $07fc, x	; 3e fc 07
B7_07dc:		.db $00				; 00
B7_07dd:		.db $00				; 00
B7_07de:		.db $00				; 00
B7_07df:	.db $ff
B7_07e0:	.db $e7
B7_07e1:	.db $ff
B7_07e2:	.db $0f
B7_07e3:		rts				; 60 


B7_07e4:	.db $fe $7f $00
B7_07e7:		.db $00				; 00
B7_07e8:		.db $00				; 00
B7_07e9:		;removed
	.db $f0 $ff

B7_07eb:	.db $fc
B7_07ec:	.db $ff
B7_07ed:		ora ($dc, x)	; 01 dc
B7_07ef:		sbc ($1f), y	; f1 1f
B7_07f1:		.db $00				; 00
B7_07f2:		.db $00				; 00
B7_07f3:		.db $00				; 00
B7_07f4:	.db $fc
B7_07f5:	.db $bf
B7_07f6:	.db $ff
B7_07f7:	.db $3f
B7_07f8:	.db $80
B7_07f9:		adc $0ffc, y	; 79 fc 0f
B7_07fc:		.db $00				; 00
B7_07fd:		php				; 08 
B7_07fe:		.db $00				; 00
B7_07ff:		inc $f857, x	; fe 57 f8
B7_0802:	.db $ff
B7_0803:	.db $07
B7_0804:		sed				; f8 
B7_0805:		ora ($07, x)	; 01 07
B7_0807:	.db $80
B7_0808:	.db $7f
B7_0809:		cpy #$ff		; c0 ff
B7_080b:	.db $0f
B7_080c:		sed				; f8 
B7_080d:	.db $03
B7_080e:	.db $0f
B7_080f:		.db $00				; 00
B7_0810:	.db $3f
B7_0811:		cpx #$ff		; e0 ff
B7_0813:	.db $3f
B7_0814:		.db $00				; 00
B7_0815:		ora ($1f, x)	; 01 1f
B7_0817:		.db $00				; 00
B7_0818:		inc $fc03, x	; fe 03 fc
B7_081b:	.db $7f
B7_081c:		cpx #$1f		; e0 1f
B7_081e:		bvs B7_0820 ; 70 00

B7_0820:		inc $ff00, x	; fe 00 ff
B7_0823:	.db $ff
B7_0824:	.db $80
B7_0825:	.db $7f
B7_0826:		.db $00				; 00
B7_0827:		.db $00				; 00
B7_0828:	.db $fc
B7_0829:	.db $07
B7_082a:		;removed
	.db $f0 $ff

B7_082c:	.db $0f
B7_082d:	.db $fc
B7_082e:	.db $83
B7_082f:	.db $03
B7_0830:		cpx #$0f		; e0 0f
B7_0832:		cpx #$ff		; e0 ff
B7_0834:	.db $7f
B7_0835:		.db $00				; 00
B7_0836:	.db $3f
B7_0837:		asl $7f00, x	; 1e 00 7f
B7_083a:		.db $00				; 00
B7_083b:		inc $01ff, x	; fe ff 01
B7_083e:		;removed
	.db $f0 $7f

B7_0840:		.db $00				; 00
B7_0841:		sed				; f8 
B7_0842:		ora ($fc, x)	; 01 fc
B7_0844:	.db $ff
B7_0845:	.db $1f
B7_0846:		cpy #$0f		; c0 0f
B7_0848:		.db $00				; 00
B7_0849:		cpx #$3f		; e0 3f
B7_084b:		cpy #$ff		; c0 ff
B7_084d:	.db $ff
B7_084e:		.db $00				; 00
B7_084f:	.db $3e $38 $00
B7_0852:		ror $ffc0, x	; 7e c0 ff
B7_0855:	.db $ff
B7_0856:	.db $1f
B7_0857:		cpy #$07		; c0 07
B7_0859:		.db $00				; 00
B7_085a:		cpy #$1f		; c0 1f
B7_085c:		cpx #$ff		; e0 ff
B7_085e:	.db $ff
B7_085f:		ora ($f0, x)	; 01 f0
B7_0861:	.db $3f
B7_0862:		.db $00				; 00
B7_0863:		sed				; f8 
B7_0864:		cpy #$ff		; c0 ff
B7_0866:	.db $ff
B7_0867:	.db $1f
B7_0868:		.db $00				; 00
B7_0869:		asl $8000		; 0e 00 80
B7_086c:	.db $ff
B7_086d:	.db $ff
B7_086e:		ora ($fe, x)	; 01 fe
B7_0870:	.db $1f
B7_0871:		cpy #$0f		; c0 0f
B7_0873:		.db $00				; 00
B7_0874:		;removed
	.db $f0 $0f

B7_0876:	.db $ff
B7_0877:		sta ($ff, x)	; 81 ff
B7_0879:	.db $07
B7_087a:		cpx #$0f		; e0 0f
B7_087c:		.db $00				; 00
B7_087d:		sed				; f8 
B7_087e:	.db $3f
B7_087f:	.db $fc
B7_0880:	.db $07
B7_0881:		;removed
	.db $f0 $7f

B7_0883:		.db $00				; 00
B7_0884:		ror $f800, x	; 7e 00 f8
B7_0887:	.db $1f
B7_0888:	.db $80
B7_0889:	.db $ff
B7_088a:		ora ($ff, x)	; 01 ff
B7_088c:	.db $0f
B7_088d:		cpx #$ff		; e0 ff
B7_088f:		.db $00				; 00
B7_0890:		.db $00				; 00
B7_0891:	.db $80
B7_0892:	.db $ff
B7_0893:	.db $07
B7_0894:	.db $fc
B7_0895:	.db $ff
B7_0896:	.db $03
B7_0897:	.db $ff
B7_0898:		ora ($00, x)	; 01 00
B7_089a:		sed				; f8 
B7_089b:	.db $03
B7_089c:		sed				; f8 
B7_089d:	.db $ff
B7_089e:	.db $80
B7_089f:	.db $ff
B7_08a0:	.db $ff
B7_08a1:	.db $03
B7_08a2:		.db $00				; 00
B7_08a3:		.db $00				; 00
B7_08a4:	.db $80
B7_08a5:	.db $ff
B7_08a6:	.db $bf
B7_08a7:	.db $ff
B7_08a8:	.db $1f
B7_08a9:	.db $1e $00 $00
B7_08ac:		;removed
	.db $f0 $ff

B7_08ae:	.db $1f
B7_08af:		.db $00				; 00
B7_08b0:		.db $00				; 00
B7_08b1:		;removed
	.db $f0 $ff

B7_08b3:	.db $ff
B7_08b4:	.db $07
B7_08b5:		cpx #$7f		; e0 7f
B7_08b7:	.db $80
B7_08b8:	.db $3f
B7_08b9:		.db $00				; 00
B7_08ba:		.db $00				; 00
B7_08bb:	.db $3c
B7_08bc:		.db $00				; 00
B7_08bd:		inc $fbff, x	; fe ff fb
B7_08c0:	.db $ff
B7_08c1:		cpx #$00		; e0 00
B7_08c3:		.db $00				; 00
B7_08c4:	.db $ff
B7_08c5:		ora ($fe, x)	; 01 fe
B7_08c7:	.db $3f
B7_08c8:		.db $00				; 00
B7_08c9:		clc				; 18 
B7_08ca:		php				; 08 
B7_08cb:		sed				; f8 
B7_08cc:	.db $ff
B7_08cd:	.db $ff
B7_08ce:	.db $ff
B7_08cf:		ora ($7f, x)	; 01 7f
B7_08d1:		.db $00				; 00
B7_08d2:	.db $7f
B7_08d3:		.db $00				; 00
B7_08d4:		cpx #$33		; e0 33
B7_08d6:		cpy #$ff		; c0 ff
B7_08d8:		.db $00				; 00
B7_08d9:		cpx #$fe		; e0 fe
B7_08db:	.db $3f
B7_08dc:		.db $00				; 00
B7_08dd:		inc $dfc1, x	; fe c1 df
B7_08e0:	.db $0f
B7_08e1:		.db $00				; 00
B7_08e2:	.db $fc
B7_08e3:	.db $67
B7_08e4:		.db $00				; 00
B7_08e5:	.db $80
B7_08e6:	.db $ff
B7_08e7:	.db $3f
B7_08e8:	.db $3c
B7_08e9:		rol $503e, x	; 3e 3e 50
B7_08ec:		.db $00				; 00
B7_08ed:	.db $fc
B7_08ee:	.db $03
B7_08ef:		inc $011f, x	; fe 1f 01
B7_08f2:		sed				; f8 
B7_08f3:		ora ($ff, x)	; 01 ff
B7_08f5:	.db $27
B7_08f6:		;removed
	.db $f0 $ff

B7_08f8:		.db $00				; 00
B7_08f9:	.db $fc
B7_08fa:	.db $07
B7_08fb:		.db $00				; 00
B7_08fc:	.db $3f
B7_08fd:	.db $80
B7_08fe:	.db $3f
B7_08ff:		sed				; f8 
B7_0900:	.db $f9 $ff $00
B7_0903:		rol $f000, x	; 3e 00 f0
B7_0906:	.db $7f
B7_0907:		.db $00				; 00
B7_0908:	.db $ff
B7_0909:	.db $3f
B7_090a:		asl $fe00, x	; 1e 00 fe
B7_090d:		.db $00				; 00
B7_090e:		cpx #$1f		; e0 1f
B7_0910:		rts				; 60 


B7_0911:	.db $ff
B7_0912:	.db $ff
B7_0913:		ora ($60, x)	; 01 60
B7_0915:		ora ($ff, x)	; 01 ff
B7_0917:	.db $0f
B7_0918:		.db $00				; 00
B7_0919:		inc $be07, x	; fe 07 be
B7_091c:		.db $00				; 00
B7_091d:	.db $7c
B7_091e:		sed				; f8 
B7_091f:	.db $ff
B7_0920:		ora ($e0, x)	; 01 e0
B7_0922:	.db $ff
B7_0923:		.db $00				; 00
B7_0924:	.db $4f
B7_0925:		.db $00				; 00
B7_0926:		sed				; f8 
B7_0927:	.db $ff
B7_0928:	.db $03
B7_0929:	.db $fc
B7_092a:	.db $ff
B7_092b:	.db $07
B7_092c:		.db $00				; 00
B7_092d:		asl $e00f		; 0e 0f e0
B7_0930:	.db $7f
B7_0931:		.db $00				; 00
B7_0932:	.db $ff
B7_0933:	.db $1f
B7_0934:		.db $00				; 00
B7_0935:	.db $07
B7_0936:		sed				; f8 
B7_0937:	.db $ff
B7_0938:		adc ($00, x)	; 61 00
B7_093a:		inc $f11f, x	; fe 1f f1
B7_093d:		ora ($f0, x)	; 01 f0
B7_093f:		sta $ef			; 85 ef
B7_0941:	.db $7f
B7_0942:		.db $00				; 00
B7_0943:	.db $bf
B7_0944:		.db $00				; 00
B7_0945:		sed				; f8 
B7_0946:	.db $03
B7_0947:		inc $607f, x	; fe 7f 60
B7_094a:		ora $1ff8, x	; 1d f8 1f
B7_094d:		.db $00				; 00
B7_094e:		bpl B7_094a ; 10 fa

B7_0950:	.db $ff
B7_0951:	.db $03
B7_0952:	.db $fc
B7_0953:		sta ($f7, x)	; 81 f7
B7_0955:		bit $00			; 24 00
B7_0957:		jmp ($3ffe)		; 6c fe 3f


B7_095a:		cpy #$68		; c0 68
B7_095c:	.db $1a
B7_095d:	.db $fc
B7_095e:	.db $87
B7_095f:		ora $ffc0		; 0d c0 ff
B7_0962:	.db $03
B7_0963:		inc $c1a2, x	; fe a2 c1
B7_0966:	.db $0f
B7_0967:		cpy #$07		; c0 07
B7_0969:		inc $f81f, x	; fe 1f f8
B7_096c:	.db $1f
B7_096d:		.db $00				; 00
B7_096e:	.db $fc
B7_096f:		ora ($fc, x)	; 01 fc
B7_0971:		cpx #$3f		; e0 3f
B7_0973:		cpy #$ff		; c0 ff
B7_0975:		ora ($f0, x)	; 01 f0
B7_0977:	.db $0f
B7_0978:		cpx #$1f		; e0 1f
B7_097a:	.db $80
B7_097b:	.db $0f
B7_097c:	.db $fd $7f $00
B7_097f:	.db $ff
B7_0980:		.db $00				; 00
B7_0981:	.db $7c
B7_0982:		.db $00				; 00
B7_0983:	.db $fc
B7_0984:	.db $7f
B7_0985:	.db $ff
B7_0986:		ora ($e0, x)	; 01 e0
B7_0988:	.db $7f
B7_0989:		.db $00				; 00
B7_098a:		beq B7_09ce ; f0 42

B7_098c:		;removed
	.db $d0 $ff

B7_098e:	.db $0f
B7_098f:		cpy #$fe		; c0 fe
B7_0991:		rol a			; 2a
B7_0992:		rti				; 40 


B7_0993:	.db $c2
B7_0994:	.db $5f
B7_0995:	.db $80
B7_0996:		inc $803f, x	; fe 3f 80
B7_0999:	.db $7f
B7_099a:		.db $00				; 00
B7_099b:	.db $2f
B7_099c:		tay				; a8 
B7_099d:		ror $ffc0, x	; 7e c0 ff
B7_09a0:	.db $03
B7_09a1:		sed				; f8 
B7_09a2:	.db $0f
B7_09a3:		cpy #$a7		; c0 a7
B7_09a5:	.db $d2
B7_09a6:		eor $6c, x		; 55 6c
B7_09a8:		beq B7_0a28 ; f0 7e

B7_09aa:		eor ($25), y	; 51 25
B7_09ac:		rol a			; 2a
B7_09ad:		sed				; f8 
B7_09ae:	.db $0f
B7_09af:		cpy #$1f		; c0 1f
B7_09b1:	.db $80
B7_09b2:	.db $ff
B7_09b3:	.db $07
B7_09b4:		sed				; f8 
B7_09b5:	.db $07
B7_09b6:	.db $fa
B7_09b7:	.db $0b
B7_09b8:		ror $c049, x	; 7e 49 c0
B7_09bb:	.db $3f
B7_09bc:		cpx #$41		; e0 41
B7_09be:		lda $4f, x		; b5 4f
B7_09c0:		sbc ($3f, x)	; e1 3f
B7_09c2:		.db $00				; 00
B7_09c3:		inc $1f03, x	; fe 03 1f
B7_09c6:		sty $ff			; 84 ff
B7_09c8:	.db $0f
B7_09c9:		tay				; a8 
B7_09ca:	.db $03
B7_09cb:		clv				; b8 
B7_09cc:	.db $ef
B7_09cd:	.db $17
B7_09ce:		.db $00				; 00
B7_09cf:	.db $ff
B7_09d0:	.db $af
B7_09d1:		bne B7_09d3 ; d0 00

B7_09d3:		ror $ff40, x	; 7e 40 ff
B7_09d6:	.db $2f
B7_09d7:		rti				; 40 


B7_09d8:	.db $ff
B7_09d9:	.db $03
B7_09da:	.db $0b
B7_09db:		tsx				; ba 
B7_09dc:	.db $02
B7_09dd:	.db $fc
B7_09de:	.db $a3
B7_09df:		eor $84bd		; 4d bd 84
B7_09e2:	.db $7f
B7_09e3:		cpy #$03		; c0 03
B7_09e5:		cpy #$3f		; c0 3f
B7_09e7:	.db $80
B7_09e8:	.db $ff
B7_09e9:	.db $0f
B7_09ea:		cpx #$ff		; e0 ff
B7_09ec:		ora ($00, x)	; 01 00
B7_09ee:	.db $7f
B7_09ef:	.db $44
B7_09f0:	.db $fb
B7_09f1:	.db $1f
B7_09f2:		.db $00				; 00
B7_09f3:	.db $ff
B7_09f4:	.db $6f
B7_09f5:		ora ($7c, x)	; 01 7c
B7_09f7:	.db $ab
B7_09f8:		ora ($bf, x)	; 01 bf
B7_09fa:		.db $00				; 00
B7_09fb:		inc $7e1f, x	; fe 1f 7e
B7_09fe:		ora ($20, x)	; 01 20
B7_0a00:		lda $e6			; a5 e6
B7_0a02:	.db $9f
B7_0a03:		asl $ea, x		; 16 ea
B7_0a05:	.db $02
B7_0a06:	.db $fc
B7_0a07:	.db $27
B7_0a08:		and $6a			; 25 6a
B7_0a0a:		eor $af			; 45 af
B7_0a0c:		;removed
	.db $50 $ff

B7_0a0e:		cpx #$2a		; e0 2a
B7_0a10:	.db $54
B7_0a11:		ldx #$7d		; a2 7d
B7_0a13:		;removed
	.db $b0 $2a

B7_0a15:		sed				; f8 
B7_0a16:	.db $7f
B7_0a17:		jmp ($bc02)		; 6c 02 bc


B7_0a1a:		lsr a			; 4a
B7_0a1b:	.db $da
B7_0a1c:	.db $9f
B7_0a1d:		cpy #$87		; c0 87
B7_0a1f:	.db $f4
B7_0a20:	.db $07
B7_0a21:		.db $00				; 00
B7_0a22:	.db $ff
B7_0a23:	.db $07
B7_0a24:		sbc $be80, x	; fd 80 be
B7_0a27:	.db $04
B7_0a28:		inc $e002, x	; fe 02 e0
B7_0a2b:		sbc $7b00, x	; fd 00 7b
B7_0a2e:	.db $77
B7_0a2f:		and $03b0		; 2d b0 03
B7_0a32:		cpy #$ff		; c0 ff
B7_0a34:	.db $0f
B7_0a35:		bit $ff82		; 2c 82 ff
B7_0a38:	.db $f4
B7_0a39:	.db $37
B7_0a3a:		.db $00				; 00
B7_0a3b:	.db $fc
B7_0a3c:	.db $1f
B7_0a3d:	.db $1a
B7_0a3e:		jsr $c0bf		; 20 bf c0
B7_0a41:	.db $2f
B7_0a42:		ora $d5			; 05 d5
B7_0a44:	.db $17
B7_0a45:		sbc $02, x		; f5 02
B7_0a47:		sed				; f8 
B7_0a48:	.db $57
B7_0a49:		lsr a			; 4a
B7_0a4a:	.db $a7
B7_0a4b:		cpy $e12e		; cc 2e e1
B7_0a4e:	.db $0f
B7_0a4f:		ldy #$95		; a0 95
B7_0a51:	.db $bf
B7_0a52:	.db $03
B7_0a53:		sed				; f8 
B7_0a54:	.db $7f
B7_0a55:		.db $00				; 00
B7_0a56:	.db $ff
B7_0a57:		.db $00				; 00
B7_0a58:	.db $3f
B7_0a59:		sbc ($0f), y	; f1 0f
B7_0a5b:		cpy #$ff		; c0 ff
B7_0a5d:		ora ($78, x)	; 01 78
B7_0a5f:		lda $d5			; a5 d5
B7_0a61:		cpy #$ff		; c0 ff
B7_0a63:	.db $42
B7_0a64:	.db $d7
B7_0a65:	.db $02
B7_0a66:		cpy #$42		; c0 42
B7_0a68:	.db $ff
B7_0a69:	.db $1f
B7_0a6a:		cld				; d8 
B7_0a6b:	.db $03
B7_0a6c:		cpy #$ff		; c0 ff
B7_0a6e:	.db $fd $0f $00
B7_0a71:	.db $80
B7_0a72:		lda $da			; a5 da
B7_0a74:		tsx				; ba 
B7_0a75:	.db $ff
B7_0a76:	.db $07
B7_0a77:		.db $00				; 00
B7_0a78:	.db $3f
B7_0a79:		cpy #$ff		; c0 ff
B7_0a7b:	.db $0f
B7_0a7c:		.db $00				; 00
B7_0a7d:		sed				; f8 
B7_0a7e:	.db $03
B7_0a7f:		sed				; f8 
B7_0a80:	.db $7f
B7_0a81:		.db $00				; 00
B7_0a82:	.db $fc
B7_0a83:	.db $1f
B7_0a84:		sed				; f8 
B7_0a85:	.db $3f
B7_0a86:		rti				; 40 


B7_0a87:		.db $00				; 00
B7_0a88:	.db $3f
B7_0a89:		cpx #$07		; e0 07
B7_0a8b:	.db $fc
B7_0a8c:	.db $ff
B7_0a8d:		ora ($f8, x)	; 01 f8
B7_0a8f:	.db $1f
B7_0a90:		cpy #$c1		; c0 c1
B7_0a92:	.db $1f
B7_0a93:		cpy #$1f		; c0 1f
B7_0a95:		;removed
	.db $f0 $ff

B7_0a97:		bpl B7_0a97 ; 10 fe

B7_0a99:	.db $07
B7_0a9a:		;removed
	.db $f0 $c0

B7_0a9c:	.db $1f
B7_0a9d:		.db $00				; 00
B7_0a9e:	.db $3f
B7_0a9f:	.db $fc
B7_0aa0:	.db $0f
B7_0aa1:		cpx #$ff		; e0 ff
B7_0aa3:		ora ($f0, x)	; 01 f0
B7_0aa5:	.db $7f
B7_0aa6:		.db $00				; 00
B7_0aa7:		beq B7_0ab8 ; f0 0f

B7_0aa9:		inc $fe01, x	; fe 01 fe
B7_0aac:	.db $07
B7_0aad:		cpx #$f9		; e0 f9
B7_0aaf:	.db $03
B7_0ab0:	.db $80
B7_0ab1:	.db $7f
B7_0ab2:	.db $80
B7_0ab3:	.db $7f
B7_0ab4:	.db $ff
B7_0ab5:	.db $0f
B7_0ab6:	.db $80
B7_0ab7:	.db $7f
B7_0ab8:		ora ($00, x)	; 01 00
B7_0aba:	.db $ff
B7_0abb:		ora ($f8, x)	; 01 f8
B7_0abd:	.db $ff
B7_0abe:	.db $0f
B7_0abf:		cpx #$bf		; e0 bf
B7_0ac1:		.db $00				; 00
B7_0ac2:		cpy #$7f		; c0 7f
B7_0ac4:		.db $00				; 00
B7_0ac5:		inc $1e0f, x	; fe 0f 1e
B7_0ac8:	.db $80
B7_0ac9:	.db $1f
B7_0aca:		cpx #$7f		; e0 7f
B7_0acc:		.db $00				; 00
B7_0acd:	.db $80
B7_0ace:	.db $ff
B7_0acf:	.db $1f
B7_0ad0:		;removed
	.db $f0 $3f

B7_0ad2:		.db $00				; 00
B7_0ad3:		cpy #$ff		; c0 ff
B7_0ad5:		ora ($f8, x)	; 01 f8
B7_0ad7:	.db $3f
B7_0ad8:	.db $0c
B7_0ad9:		sed				; f8 
B7_0ada:	.db $ff
B7_0adb:	.db $03
B7_0adc:	.db $80
B7_0add:	.db $ff
B7_0ade:	.db $03
B7_0adf:	.db $80
B7_0ae0:	.db $7f
B7_0ae1:		.db $00				; 00
B7_0ae2:		inc $07ff, x	; fe ff 07
B7_0ae5:		sed				; f8 
B7_0ae6:	.db $07
B7_0ae7:		.db $00				; 00
B7_0ae8:		cpx #$3f		; e0 3f
B7_0aea:		.db $00				; 00
B7_0aeb:		inc $ffff, x	; fe ff ff
B7_0aee:		ora ($c0, x)	; 01 c0
B7_0af0:	.db $ef
B7_0af1:	.db $07
B7_0af2:		.db $00				; 00
B7_0af3:		.db $00				; 00
B7_0af4:		sed				; f8 
B7_0af5:	.db $ff
B7_0af6:	.db $ff
B7_0af7:	.db $0f
B7_0af8:		.db $00				; 00
B7_0af9:	.db $fa
B7_0afa:	.db $1f
B7_0afb:		.db $00				; 00
B7_0afc:		cpy #$1f		; c0 1f
B7_0afe:		;removed
	.db $f0 $ff

B7_0b00:	.db $ff
B7_0b01:		.db $00				; 00
B7_0b02:	.db $fe $00 $00
B7_0b05:		.db $00				; 00
B7_0b06:		ror $ffe0, x	; 7e e0 ff
B7_0b09:	.db $ff
B7_0b0a:	.db $1f
B7_0b0b:		sed				; f8 
B7_0b0c:	.db $03
B7_0b0d:		cpx #$03		; e0 03
B7_0b0f:		.db $00				; 00
B7_0b10:		cpx #$ff		; e0 ff
B7_0b12:	.db $ff
B7_0b13:	.db $ff
B7_0b14:	.db $ff
B7_0b15:	.db $03
B7_0b16:		.db $00				; 00
B7_0b17:		cpy #$03		; c0 03
B7_0b19:		.db $00				; 00
B7_0b1a:	.db $7c
B7_0b1b:		cpy #$ff		; c0 ff
B7_0b1d:	.db $ff
B7_0b1e:	.db $ff
B7_0b1f:	.db $0f
B7_0b20:		.db $00				; 00
B7_0b21:		.db $00				; 00
B7_0b22:	.db $fc
B7_0b23:		ora ($00, x)	; 01 00
B7_0b25:		sed				; f8 
B7_0b26:	.db $ff
B7_0b27:	.db $ff
B7_0b28:	.db $ff
B7_0b29:	.db $ff
B7_0b2a:	.db $03
B7_0b2b:		.db $00				; 00
B7_0b2c:		.db $00				; 00
B7_0b2d:		.db $00				; 00
B7_0b2e:		cpy #$0f		; c0 0f
B7_0b30:	.db $fc
B7_0b31:	.db $ff
B7_0b32:	.db $ff
B7_0b33:	.db $1f
B7_0b34:	.db $7c
B7_0b35:		.db $00				; 00
B7_0b36:	.db $80
B7_0b37:		ora ($00, x)	; 01 00
B7_0b39:		beq B7_0bba ; f0 7f

B7_0b3b:		inc $7fff, x	; fe ff 7f
B7_0b3e:		.db $00				; 00
B7_0b3f:	.db $fc
B7_0b40:	.db $1f
B7_0b41:		.db $00				; 00
B7_0b42:		.db $00				; 00
B7_0b43:	.db $0c
B7_0b44:		asl a			; 0a
B7_0b45:		inc $ffff, x	; fe ff ff
B7_0b48:	.db $cf
B7_0b49:	.db $1f
B7_0b4a:		.db $00				; 00
B7_0b4b:	.db $1e $00 $00
B7_0b4e:		sed				; f8 
B7_0b4f:	.db $7f
B7_0b50:		cpx #$3f		; e0 3f
B7_0b52:	.db $ff
B7_0b53:		.db $00				; 00
B7_0b54:		inc $801f, x	; fe 1f 80
B7_0b57:	.db $7f
B7_0b58:		.db $00				; 00
B7_0b59:	.db $fc
B7_0b5a:	.db $7f
B7_0b5b:		.db $00				; 00
B7_0b5c:	.db $3f
B7_0b5d:		.db $00				; 00
B7_0b5e:		jmp ($01ff)		; 6c ff 01


B7_0b61:	.db $92
B7_0b62:	.db $57
B7_0b63:		cpx #$ff		; e0 ff
B7_0b65:	.db $ff
B7_0b66:		ora ($00, x)	; 01 00
B7_0b68:	.db $a3
B7_0b69:	.db $3f
B7_0b6a:		.db $00				; 00
B7_0b6b:	.db $ff
B7_0b6c:	.db $03
B7_0b6d:		.db $00				; 00
B7_0b6e:	.db $ff
B7_0b6f:	.db $c3
B7_0b70:		sty $fd, x		; 94 fd
B7_0b72:		ora ($3f, x)	; 01 3f
B7_0b74:		sbc $0b, x		; f5 0b
B7_0b76:		beq B7_0b7b ; f0 03

B7_0b78:		sty $e4			; 84 e4
B7_0b7a:	.db $2b
B7_0b7b:		;removed
	.db $f0 $ff

B7_0b7d:	.db $c3
B7_0b7e:	.db $ff
B7_0b7f:	.db $f2
B7_0b80:		.db $00				; 00
B7_0b81:	.db $80
B7_0b82:		ora $74, x		; 15 74
B7_0b84:		cpy #$ff		; c0 ff
B7_0b86:	.db $07
B7_0b87:		cpx #$ff		; e0 ff
B7_0b89:	.db $f2
B7_0b8a:		ora $00			; 05 00
B7_0b8c:		rts				; 60 


B7_0b8d:	.db $ff
B7_0b8e:	.db $1f
B7_0b8f:	.db $04
B7_0b90:		cpy #$ff		; c0 ff
B7_0b92:	.db $7f
B7_0b93:		ora ($fc, x)	; 01 fc
B7_0b95:	.db $0f
B7_0b96:		.db $00				; 00
B7_0b97:	.db $ff
B7_0b98:	.db $d3
B7_0b99:	.db $02
B7_0b9a:	.db $80
B7_0b9b:	.db $df
B7_0b9c:	.db $ff
B7_0b9d:	.db $8f
B7_0b9e:		rol $8000, x	; 3e 00 80
B7_0ba1:	.db $fc
B7_0ba2:	.db $2f
B7_0ba3:		.db $00				; 00
B7_0ba4:	.db $5f
B7_0ba5:	.db $54
B7_0ba6:		sbc $683f, x	; fd 3f 68
B7_0ba9:	.db $80
B7_0baa:	.db $5b
B7_0bab:		sbc $02, x		; f5 02
B7_0bad:		cpx #$47		; e0 47
B7_0baf:		sbc #$41		; e9 41
B7_0bb1:	.db $da
B7_0bb2:	.db $4b
B7_0bb3:	.db $ff
B7_0bb4:	.db $0f
B7_0bb5:		.db $00				; 00
B7_0bb6:	.db $f4
B7_0bb7:	.db $1f
B7_0bb8:	.db $80
B7_0bb9:	.db $7f
B7_0bba:		ora ($fc), y	; 11 fc
B7_0bbc:	.db $53
B7_0bbd:		inx				; e8 
B7_0bbe:	.db $83
B7_0bbf:		sbc $2003, x	; fd 03 20
B7_0bc2:		ldx $ff, y		; b6 ff
B7_0bc4:	.db $13
B7_0bc5:		ldy $95			; a4 95
B7_0bc7:		lsr a			; 4a
B7_0bc8:		ora ($fe, x)	; 01 fe
B7_0bca:	.db $3f
B7_0bcb:		.db $00				; 00
B7_0bcc:		inc $2a87, x	; fe 87 2a
B7_0bcf:		inx				; e8 
B7_0bd0:	.db $7f
B7_0bd1:		.db $00				; 00
B7_0bd2:		;removed
	.db $f0 $0f

B7_0bd4:		sed				; f8 
B7_0bd5:	.db $ff
B7_0bd6:		ora ($80, x)	; 01 80
B7_0bd8:	.db $7f
B7_0bd9:		.db $00				; 00
B7_0bda:	.db $1f
B7_0bdb:	.db $fa
B7_0bdc:	.db $07
B7_0bdd:		sed				; f8 
B7_0bde:	.db $ff
B7_0bdf:		ora ($f8, x)	; 01 f8
B7_0be1:	.db $0f
B7_0be2:		sta $80, x		; 95 80
B7_0be4:	.db $37
B7_0be5:		cpy #$ff		; c0 ff
B7_0be7:	.db $3f
B7_0be8:		ora ($c1, x)	; 01 c1
B7_0bea:	.db $ff
B7_0beb:		ora ($d0, x)	; 01 d0
B7_0bed:	.db $87
B7_0bee:	.db $82
B7_0bef:	.db $fc
B7_0bf0:	.db $ff
B7_0bf1:		.db $00				; 00
B7_0bf2:		inc $b007, x	; fe 07 b0
B7_0bf5:	.db $2f
B7_0bf6:	.db $54
B7_0bf7:		pha				; 48 
B7_0bf8:		tax				; aa 
B7_0bf9:	.db $3f
B7_0bfa:		bcc B7_0bfa ; 90 fe

B7_0bfc:		ora ($d6, x)	; 01 d6
B7_0bfe:	.db $fb
B7_0bff:	.db $2b
B7_0c00:	.db $80
B7_0c01:	.db $df
B7_0c02:		.db $00				; 00
B7_0c03:		;removed
	.db $f0 $d2

B7_0c05:		asl $fd, x		; 16 fd
B7_0c07:	.db $3f
B7_0c08:		cpx #$07		; e0 07
B7_0c0a:	.db $fa
B7_0c0b:	.db $03
B7_0c0c:	.db $80
B7_0c0d:	.db $17
B7_0c0e:		sed				; f8 
B7_0c0f:	.db $ff
B7_0c10:		ora #$d8		; 09 d8
B7_0c12:	.db $5f
B7_0c13:		cpy #$7f		; c0 7f
B7_0c15:		.db $00				; 00
B7_0c16:		inx				; e8 
B7_0c17:		ror a			; 6a
B7_0c18:	.db $7f
B7_0c19:		sty $d8, x		; 94 d8
B7_0c1b:		ldy $10, x		; b4 10
B7_0c1d:	.db $ff
B7_0c1e:	.db $03
B7_0c1f:		cpy #$ff		; c0 ff
B7_0c21:		plp				; 28 
B7_0c22:		lda #$7a		; a9 7a
B7_0c24:		ora ($d4), y	; 11 d4
B7_0c26:		lda $40a5, x	; bd a5 40
B7_0c29:	.db $77
B7_0c2a:	.db $54
B7_0c2b:	.db $37
B7_0c2c:	.db $da
B7_0c2d:	.db $0f
B7_0c2e:		cpy #$8f		; c0 8f
B7_0c30:	.db $fa
B7_0c31:		ora $b0			; 05 b0
B7_0c33:	.db $2b
B7_0c34:		rts				; 60 


B7_0c35:	.db $ff
B7_0c36:		bvc B7_0bf5 ; 50 bd

B7_0c38:	.db $5a
B7_0c39:	.db $92
B7_0c3a:	.db $da
B7_0c3b:		asl a			; 0a
B7_0c3c:	.db $64
B7_0c3d:	.db $47
B7_0c3e:		tay				; a8 
B7_0c3f:		lsr $ff, x		; 56 ff
B7_0c41:		adc $03, x		; 75 03
B7_0c43:		inx				; e8 
B7_0c44:		asl a			; 0a
B7_0c45:		beq B7_0bf1 ; f0 aa

B7_0c47:	.db $89
B7_0c48:		;removed
	.db $f0 $ff

B7_0c4a:		lda $fe			; a5 fe
B7_0c4c:	.db $42
B7_0c4d:	.db $02
B7_0c4e:		cpx #$ff		; e0 ff
B7_0c50:	.db $04
B7_0c51:		dey				; 88 
B7_0c52:		ldy $16ff		; ac ff 16
B7_0c55:		lda $2914		; ad 14 29
B7_0c58:		sta $df			; 85 df
B7_0c5a:		ora ($ea, x)	; 01 ea
B7_0c5c:		lda $ffc4, x	; bd c4 ff
B7_0c5f:		ora ($54, x)	; 01 54
B7_0c61:		sbc ($1f, x)	; e1 1f
B7_0c63:	.db $80
B7_0c64:	.db $f7
B7_0c65:		ldx $fe80		; ae 80 fe
B7_0c68:	.db $07
B7_0c69:		ldy $ec			; a4 ec
B7_0c6b:	.db $02
B7_0c6c:	.db $f4
B7_0c6d:	.db $0f
B7_0c6e:	.db $fa
B7_0c6f:	.db $07
B7_0c70:		lda $bba9, y	; b9 a9 bb
B7_0c73:		.db $00				; 00
B7_0c74:		cmp $752d, y	; d9 2d 75
B7_0c77:	.db $89
B7_0c78:	.db $ff
B7_0c79:	.db $80
B7_0c7a:	.db $7c
B7_0c7b:		dex				; ca 
B7_0c7c:	.db $04
B7_0c7d:	.db $f4
B7_0c7e:	.db $ff
B7_0c7f:		.db $00				; 00
B7_0c80:		ldy $12ca		; ac ca 12
B7_0c83:		sbc $444f, x	; fd 4f 44
B7_0c86:	.db $eb
B7_0c87:	.db $bb
B7_0c88:	.db $02
B7_0c89:		;removed
	.db $f0 $09

B7_0c8b:	.db $2f
B7_0c8c:		cpx #$3f		; e0 3f
B7_0c8e:		inx				; e8 
B7_0c8f:	.db $7f
B7_0c90:	.db $5a
B7_0c91:		ora ($4a, x)	; 01 4a
B7_0c93:		ldx $93, y		; b6 93
B7_0c95:		lsr a			; 4a
B7_0c96:		eor ($ff, x)	; 41 ff
B7_0c98:	.db $2f
B7_0c99:		eor $a9			; 45 a9
B7_0c9b:	.db $2f
B7_0c9c:		.db $00				; 00
B7_0c9d:		rol $a4dd		; 2e dd a4
B7_0ca0:		tsx				; ba 
B7_0ca1:	.db $d2
B7_0ca2:		and $a9			; 25 a9
B7_0ca4:	.db $5f
B7_0ca5:		adc $03			; 65 03
B7_0ca7:		ror a			; 6a
B7_0ca8:	.db $d2
B7_0ca9:	.db $7f
B7_0caa:		bvc B7_0c51 ; 50 a5

B7_0cac:		tay				; a8 
B7_0cad:		sbc $1e, x		; f5 1e
B7_0caf:		cpy #$3f		; c0 3f
B7_0cb1:		cpy #$9e		; c0 9e
B7_0cb3:	.db $54
B7_0cb4:		dex				; ca 
B7_0cb5:		lda $d68a		; ad 8a d6
B7_0cb8:	.db $d2
B7_0cb9:	.db $4b
B7_0cba:		cmp $55, x		; d5 55
B7_0cbc:		ora ($f4, x)	; 01 f4
B7_0cbe:	.db $5f
B7_0cbf:		sty $fe			; 84 fe
B7_0cc1:	.db $02
B7_0cc2:		cpy #$fb		; c0 fb
B7_0cc4:	.db $1f
B7_0cc5:		cpy #$fd		; c0 fd
B7_0cc7:		ora $ff00		; 0d 00 ff
B7_0cca:		ora ($80), y	; 11 80
B7_0ccc:		dec $7f9b, x	; de 9b 7f
B7_0ccf:	.db $03
B7_0cd0:		bne B7_0c7c ; d0 aa

B7_0cd2:		ldx $d401, y	; be 01 d4
B7_0cd5:	.db $37
B7_0cd6:		ldy #$ff		; a0 ff
B7_0cd8:	.db $ff
B7_0cd9:		.db $00				; 00
B7_0cda:		cpx #$07		; e0 07
B7_0cdc:		.db $00				; 00
B7_0cdd:		inc $01ff, x	; fe ff 01
B7_0ce0:	.db $5c
B7_0ce1:		asl a			; 0a
B7_0ce2:		sta ($ff, x)	; 81 ff
B7_0ce4:	.db $ff
B7_0ce5:		ora ($f0, x)	; 01 f0
B7_0ce7:	.db $07
B7_0ce8:		.db $00				; 00
B7_0ce9:		sed				; f8 
B7_0cea:	.db $ff
B7_0ceb:		rts				; 60 


B7_0cec:	.db $37
B7_0ced:		.db $00				; 00
B7_0cee:		;removed
	.db $f0 $ff

B7_0cf0:	.db $07
B7_0cf1:		sed				; f8 
B7_0cf2:	.db $1f
B7_0cf3:		.db $00				; 00
B7_0cf4:		cpx #$ff		; e0 ff
B7_0cf6:	.db $07
B7_0cf7:		.db $00				; 00
B7_0cf8:	.db $ff
B7_0cf9:	.db $ff
B7_0cfa:	.db $03
B7_0cfb:	.db $fe $01 $00
B7_0cfe:		sed				; f8 
B7_0cff:	.db $7f
B7_0d00:		.db $00				; 00
B7_0d01:		;removed
	.db $f0 $ff

B7_0d03:	.db $7f
B7_0d04:		.db $00				; 00
B7_0d05:	.db $ff
B7_0d06:		.db $00				; 00
B7_0d07:		.db $00				; 00
B7_0d08:	.db $ff
B7_0d09:	.db $0f
B7_0d0a:	.db $80
B7_0d0b:	.db $df
B7_0d0c:	.db $ff
B7_0d0d:	.db $03
B7_0d0e:		sed				; f8 
B7_0d0f:		ora ($00, x)	; 01 00
B7_0d11:		sed				; f8 
B7_0d12:	.db $3f
B7_0d13:	.db $80
B7_0d14:	.db $ff
B7_0d15:	.db $ff
B7_0d16:	.db $1f
B7_0d17:		cpy #$07		; c0 07
B7_0d19:		.db $00				; 00
B7_0d1a:		cpx #$ff		; e0 ff
B7_0d1c:		ora ($70, x)	; 01 70
B7_0d1e:	.db $f4
B7_0d1f:	.db $ff
B7_0d20:	.db $03
B7_0d21:	.db $fe $07 $00
B7_0d24:	.db $fc
B7_0d25:	.db $07
B7_0d26:		;removed
	.db $f0 $ff

B7_0d28:		.db $00				; 00
B7_0d29:	.db $fc
B7_0d2a:	.db $0f
B7_0d2b:		sed				; f8 
B7_0d2c:	.db $df
B7_0d2d:	.db $07
B7_0d2e:		cpx #$0f		; e0 0f
B7_0d30:		.db $00				; 00
B7_0d31:		sed				; f8 
B7_0d32:	.db $ff
B7_0d33:	.db $7f
B7_0d34:	.db $80
B7_0d35:	.db $3f
B7_0d36:		.db $00				; 00
B7_0d37:		cpy #$7f		; c0 7f
B7_0d39:		.db $00				; 00
B7_0d3a:	.db $fc
B7_0d3b:	.db $ff
B7_0d3c:		ora ($fe, x)	; 01 fe
B7_0d3e:	.db $07
B7_0d3f:		.db $00				; 00
B7_0d40:	.db $fc
B7_0d41:	.db $07
B7_0d42:		sed				; f8 
B7_0d43:	.db $83
B7_0d44:		ora ($fc, x)	; 01 fc
B7_0d46:	.db $0f
B7_0d47:		beq B7_0d88 ; f0 3f

B7_0d49:		.db $00				; 00
B7_0d4a:		beq B7_0d6b ; f0 1f

B7_0d4c:		cpx #$7f		; e0 7f
B7_0d4e:		.db $00				; 00
B7_0d4f:	.db $fe $7f $00
B7_0d52:	.db $ff
B7_0d53:	.db $1f
B7_0d54:		.db $00				; 00
B7_0d55:	.db $ff
B7_0d56:		ora ($80, x)	; 01 80
B7_0d58:	.db $7f
B7_0d59:		.db $00				; 00
B7_0d5a:	.db $fc
B7_0d5b:	.db $ff
B7_0d5c:		ora ($f8, x)	; 01 f8
B7_0d5e:	.db $7f
B7_0d5f:		.db $00				; 00
B7_0d60:	.db $fe $07 $00
B7_0d63:	.db $ff
B7_0d64:	.db $80
B7_0d65:	.db $ff
B7_0d66:	.db $ff
B7_0d67:		.db $00				; 00
B7_0d68:		sed				; f8 
B7_0d69:		.db $00				; 00
B7_0d6a:	.db $7f
B7_0d6b:		.db $00				; 00
B7_0d6c:		asl $fa			; 06 fa
B7_0d6e:	.db $ff
B7_0d6f:	.db $0f
B7_0d70:	.db $80
B7_0d71:	.db $03
B7_0d72:		inc $1fff, x	; fe ff 1f
B7_0d75:		.db $00				; 00
B7_0d76:		;removed
	.db $f0 $03

B7_0d78:		cpx #$ff		; e0 ff
B7_0d7a:		ora ($7c, x)	; 01 7c
B7_0d7c:		.db $00				; 00
B7_0d7d:	.db $ff
B7_0d7e:	.db $0f
B7_0d7f:	.db $ff
B7_0d80:	.db $3f
B7_0d81:		.db $00				; 00
B7_0d82:		.db $00				; 00
B7_0d83:		inc $800f, x	; fe 0f 80
B7_0d86:	.db $ff
B7_0d87:	.db $03
B7_0d88:		cpy #$0f		; c0 0f
B7_0d8a:		.db $00				; 00
B7_0d8b:	.db $ff
B7_0d8c:	.db $ff
B7_0d8d:		rts				; 60 


B7_0d8e:		.db $00				; 00
B7_0d8f:		cpy #$ff		; c0 ff
B7_0d91:	.db $0f
B7_0d92:		sed				; f8 
B7_0d93:	.db $7f
B7_0d94:		.db $00				; 00
B7_0d95:		sed				; f8 
B7_0d96:	.db $0f
B7_0d97:	.db $80
B7_0d98:	.db $ff
B7_0d99:	.db $ff
B7_0d9a:	.db $ff
B7_0d9b:	.db $03
B7_0d9c:		.db $00				; 00
B7_0d9d:	.db $3c
B7_0d9e:		beq B7_0dbf ; f0 1f

B7_0da0:		beq B7_0db1 ; f0 0f

B7_0da2:		.db $00				; 00
B7_0da3:		beq B7_0dc4 ; f0 1f

B7_0da5:		cpy #$ff		; c0 ff
B7_0da7:	.db $3f
B7_0da8:	.db $fe $03 $00
B7_0dab:	.db $04
B7_0dac:		beq B7_0d99 ; f0 eb

B7_0dae:	.db $1f
B7_0daf:	.db $7f
B7_0db0:		.db $00				; 00
B7_0db1:		bpl B7_0db1 ; 10 fe

B7_0db3:	.db $1f
B7_0db4:		asl $ffc2		; 0e c2 ff
B7_0db7:		ora ($3e, x)	; 01 3e
B7_0db9:		.db $00				; 00
B7_0dba:		.db $00				; 00
B7_0dbb:	.db $ff
B7_0dbc:	.db $1f
B7_0dbd:	.db $fc
B7_0dbe:	.db $ff
B7_0dbf:		ora ($c0, x)	; 01 c0
B7_0dc1:	.db $fb
B7_0dc2:	.db $03
B7_0dc3:	.db $1c
B7_0dc4:		.db $00				; 00
B7_0dc5:		sed				; f8 
B7_0dc6:	.db $ff
B7_0dc7:	.db $7f
B7_0dc8:		sei				; 78 
B7_0dc9:		cpy #$00		; c0 00
B7_0dcb:	.db $7a
B7_0dcc:	.db $e2
B7_0dcd:	.db $07
B7_0dce:	.db $fc
B7_0dcf:	.db $bf
B7_0dd0:	.db $27
B7_0dd1:		.db $00				; 00
B7_0dd2:	.db $3f
B7_0dd3:		cpx #$00		; e0 00
B7_0dd5:	.db $ff
B7_0dd6:	.db $07
B7_0dd7:		cpx #$ff		; e0 ff
B7_0dd9:	.db $03
B7_0dda:	.db $fc
B7_0ddb:	.db $0f
B7_0ddc:		.db $00				; 00
B7_0ddd:	.db $fc
B7_0dde:	.db $8f
B7_0ddf:		rol $8a00, x	; 3e 00 8a
B7_0de2:	.db $ff
B7_0de3:	.db $03
B7_0de4:	.db $fc
B7_0de5:	.db $83
B7_0de6:	.db $af
B7_0de7:		ora $1ffc		; 0d fc 1f
B7_0dea:	.db $80
B7_0deb:	.db $87
B7_0dec:		rol $fe00, x	; 3e 00 fe
B7_0def:	.db $7f
B7_0df0:		.db $00				; 00
B7_0df1:	.db $ff
B7_0df2:	.db $03
B7_0df3:	.db $80
B7_0df4:	.db $fc
B7_0df5:		asl $f0			; 06 f0
B7_0df7:	.db $3f
B7_0df8:	.db $7f
B7_0df9:		.db $00				; 00
B7_0dfa:		ror $49c0, x	; 7e c0 49
B7_0dfd:	.db $fa
B7_0dfe:	.db $fd $01 $00
B7_0e01:	.db $ff
B7_0e02:	.db $03
B7_0e03:		sed				; f8 
B7_0e04:	.db $1f
B7_0e05:		;removed
	.db $f0 $3f

B7_0e07:		rts				; 60 


B7_0e08:	.db $cb
B7_0e09:	.db $0f
B7_0e0a:		sta ($7f, x)	; 81 7f
B7_0e0c:		.db $00				; 00
B7_0e0d:		ldy $0ff8, x	; bc f8 0f
B7_0e10:	.db $80
B7_0e11:	.db $ff
B7_0e12:	.db $67
B7_0e13:		cpy #$3f		; c0 3f
B7_0e15:		.db $00				; 00
B7_0e16:	.db $fc
B7_0e17:		cpy #$3f		; c0 3f
B7_0e19:		bvs B7_0e16 ; 70 fb

B7_0e1b:	.db $0b
B7_0e1c:		.db $00				; 00
B7_0e1d:		;removed
	.db $f0 $ff

B7_0e1f:		.db $00				; 00
B7_0e20:	.db $ff
B7_0e21:		eor ($3f, x)	; 41 3f
B7_0e23:		ldx #$0a		; a2 0a
B7_0e25:		sbc $842a, x	; fd 2a 84
B7_0e28:		rol $8bf5		; 2e f5 8b
B7_0e2b:		inc $fc00, x	; fe 00 fc
B7_0e2e:		;removed
	.db $10 $ff

B7_0e30:	.db $03
B7_0e31:	.db $80
B7_0e32:	.db $3f
B7_0e33:		sbc $80, x		; f5 80
B7_0e35:		inc $7f01, x	; fe 01 7f
B7_0e38:	.db $b7
B7_0e39:		ora ($bc, x)	; 01 bc
B7_0e3b:		ora ($e0, x)	; 01 e0
B7_0e3d:	.db $9f
B7_0e3e:	.db $b2
B7_0e3f:		adc $7e81, x	; 7d 81 7e
B7_0e42:		ora $4a, x		; 15 4a
B7_0e44:	.db $ff
B7_0e45:		ora ($f8, x)	; 01 f8
B7_0e47:	.db $07
B7_0e48:		.db $00				; 00
B7_0e49:	.db $ff
B7_0e4a:	.db $0f
B7_0e4b:	.db $fc
B7_0e4c:		dex				; ca 
B7_0e4d:	.db $02
B7_0e4e:	.db $64
B7_0e4f:	.db $ff
B7_0e50:	.db $03
B7_0e51:		pla				; 68 
B7_0e52:		inc $d00f		; ee 0f d0
B7_0e55:		asl $fc			; 06 fc
B7_0e57:	.db $03
B7_0e58:		rts				; 60 


B7_0e59:	.db $fd $7f $00
B7_0e5c:	.db $fc
B7_0e5d:	.db $0f
B7_0e5e:		sei				; 78 
B7_0e5f:	.db $42
B7_0e60:		eor $d0, x		; 55 d0
B7_0e62:		inc $045f, x	; fe 5f 04
B7_0e65:		inc $0f, x		; f6 0f
B7_0e67:	.db $80
B7_0e68:		ldx #$ff		; a2 ff
B7_0e6a:		cpx #$ff		; e0 ff
B7_0e6c:		.db $00				; 00
B7_0e6d:		.db $00				; 00
B7_0e6e:	.db $ff
B7_0e6f:	.db $07
B7_0e70:		;removed
	.db $f0 $2f

B7_0e72:	.db $80
B7_0e73:		and $a2ff		; 2d ff a2
B7_0e76:		ror $91, x		; 76 91
B7_0e78:	.db $47
B7_0e79:	.db $52
B7_0e7a:	.db $d2
B7_0e7b:		asl $ea, x		; 16 ea
B7_0e7d:	.db $07
B7_0e7e:		adc $17a2, x	; 7d a2 17
B7_0e81:		;removed
	.db $d0 $d7

B7_0e83:	.db $0b
B7_0e84:		cpx #$ff		; e0 ff
B7_0e86:		rts				; 60 


B7_0e87:		eor $3f, x		; 55 3f
B7_0e89:		.db $00				; 00
B7_0e8a:		ldx $01fe		; ae fe 01
B7_0e8d:	.db $fc
B7_0e8e:	.db $07
B7_0e8f:		sed				; f8 
B7_0e90:	.db $7f
B7_0e91:		.db $00				; 00
B7_0e92:		bne B7_0ebf ; d0 2b

B7_0e94:		cpx #$ff		; e0 ff
B7_0e96:	.db $03
B7_0e97:		;removed
	.db $f0 $03

B7_0e99:	.db $1c
B7_0e9a:		inc $a80f, x	; fe 0f a8
B7_0e9d:		cpx #$1f		; e0 1f
B7_0e9f:		sbc $0925, y	; f9 25 09
B7_0ea2:		sed				; f8 
B7_0ea3:	.db $2f
B7_0ea4:		sta ($bf, x)	; 81 bf
B7_0ea6:	.db $02
B7_0ea7:	.db $fc
B7_0ea8:	.db $43
B7_0ea9:	.db $bf
B7_0eaa:	.db $d2
B7_0eab:		ora #$f0		; 09 f0
B7_0ead:	.db $52
B7_0eae:	.db $3b
B7_0eaf:	.db $72
B7_0eb0:		eor ($6a, x)	; 41 6a
B7_0eb2:		eor $137f, y	; 59 7f 13
B7_0eb5:	.db $80
B7_0eb6:	.db $ff
B7_0eb7:	.db $03
B7_0eb8:	.db $3f
B7_0eb9:		rti				; 40 


B7_0eba:	.db $47
B7_0ebb:		cmp #$7a		; c9 7a
B7_0ebd:		sbc $09, x		; f5 09
B7_0ebf:		bne B7_0f20 ; d0 5f

B7_0ec1:	.db $fc
B7_0ec2:	.db $07
B7_0ec3:		cpx #$27		; e0 27
B7_0ec5:		jsr $2df9		; 20 f9 2d
B7_0ec8:		adc $2f, x		; 75 2f
B7_0eca:		cmp $6017, y	; d9 17 60
B7_0ecd:	.db $83
B7_0ece:	.db $ff
B7_0ecf:		ora ($75, x)	; 01 75
B7_0ed1:	.db $d2
B7_0ed2:	.db $02
B7_0ed3:		sed				; f8 
B7_0ed4:	.db $2f
B7_0ed5:	.db $4b
B7_0ed6:	.db $e2
B7_0ed7:	.db $1f
B7_0ed8:		ldx #$aa		; a2 aa
B7_0eda:	.db $74
B7_0edb:	.db $03
B7_0edc:		beq B7_0f1d ; f0 3f

B7_0ede:	.db $14
B7_0edf:	.db $27
B7_0ee0:	.db $93
B7_0ee1:		inc $a54f, x	; fe 4f a5
B7_0ee4:		.db $00				; 00
B7_0ee5:	.db $ff
B7_0ee6:		.db $00				; 00
B7_0ee7:		sed				; f8 
B7_0ee8:		ror $bed1, x	; 7e d1 be
B7_0eeb:		.db $00				; 00
B7_0eec:	.db $7c
B7_0eed:	.db $ab
B7_0eee:		tax				; aa 
B7_0eef:	.db $77
B7_0ef0:		.db $00				; 00
B7_0ef1:		;removed
	.db $f0 $ad

B7_0ef3:	.db $12
B7_0ef4:		ldy $7f, x		; b4 7f
B7_0ef6:		and ($ff, x)	; 21 ff
B7_0ef8:	.db $0f
B7_0ef9:		.db $00				; 00
B7_0efa:		sei				; 78 
B7_0efb:		sta ($7f, x)	; 81 7f
B7_0efd:	.db $80
B7_0efe:	.db $ff
B7_0eff:		and #$a8		; 29 a8
B7_0f01:		rol $f5, x		; 36 f5
B7_0f03:		rol a			; 2a
B7_0f04:		rol a			; 2a
B7_0f05:	.db $54
B7_0f06:	.db $0f
B7_0f07:		inx				; e8 
B7_0f08:	.db $1f
B7_0f09:		ldy $f5, x		; b4 f5
B7_0f0b:	.db $5b
B7_0f0c:		ldy #$d2		; a0 d2
B7_0f0e:		tax				; aa 
B7_0f0f:		;removed
	.db $d0 $bf

B7_0f11:	.db $80
B7_0f12:		asl a			; 0a
B7_0f13:		sbc $5c0f, x	; fd 0f 5c
B7_0f16:		cld				; d8 
B7_0f17:	.db $07
B7_0f18:		cpy #$ff		; c0 ff
B7_0f1a:	.db $0f
B7_0f1b:		.db $00				; 00
B7_0f1c:		sed				; f8 
B7_0f1d:	.db $2f
B7_0f1e:		cpy #$ff		; c0 ff
B7_0f20:		ora ($a9, x)	; 01 a9
B7_0f22:	.db $7f
B7_0f23:		.db $00				; 00
B7_0f24:	.db $b7
B7_0f25:		and $f1			; 25 f1
B7_0f27:	.db $7f
B7_0f28:	.db $80
B7_0f29:		adc $55, x		; 75 55
B7_0f2b:	.db $0b
B7_0f2c:		rol $d1, x		; 36 d1
B7_0f2e:		asl $81ed, x	; 1e ed 81
B7_0f31:		ror $afa4		; 6e a4 af
B7_0f34:		sty $a0, x		; 94 a0
B7_0f36:		ldx $ba, y		; b6 ba
B7_0f38:		bcc B7_0ef0 ; 90 b6

B7_0f3a:		sbc $c00f, x	; fd 0f c0
B7_0f3d:	.db $0f
B7_0f3e:		.db $00				; 00
B7_0f3f:	.db $fa
B7_0f40:	.db $1f
B7_0f41:		inx				; e8 
B7_0f42:	.db $3f
B7_0f43:		;removed
	.db $50 $b7

B7_0f45:		eor $ab60		; 4d 60 ab
B7_0f48:		ora $fa			; 05 fa
B7_0f4a:	.db $87
B7_0f4b:		ldx $0f48, y	; be 48 0f
B7_0f4e:	.db $80
B7_0f4f:	.db $ff
B7_0f50:	.db $1f
B7_0f51:		beq B7_0fa3 ; f0 50

B7_0f53:		.db $00				; 00
B7_0f54:	.db $fc
B7_0f55:	.db $1f
B7_0f56:	.db $ee $bd $00
B7_0f59:		inc $e003, x	; fe 03 e0
B7_0f5c:	.db $1f
B7_0f5d:		.db $00				; 00
B7_0f5e:		sed				; f8 
B7_0f5f:	.db $7f
B7_0f60:		cpy #$9f		; c0 9f
B7_0f62:		.db $00				; 00
B7_0f63:		sed				; f8 
B7_0f64:	.db $1f
B7_0f65:		sed				; f8 
B7_0f66:	.db $7f
B7_0f67:		.db $00				; 00
B7_0f68:		beq B7_0f89 ; f0 1f

B7_0f6a:		cpy #$ff		; c0 ff
B7_0f6c:	.db $3f
B7_0f6d:		cpy #$1f		; c0 1f
B7_0f6f:		.db $00				; 00
B7_0f70:		beq B7_0f81 ; f0 0f

B7_0f72:		sed				; f8 
B7_0f73:	.db $7f
B7_0f74:		.db $00				; 00
B7_0f75:	.db $3f
B7_0f76:		.db $00				; 00
B7_0f77:		inc $803f, x	; fe 3f 80
B7_0f7a:	.db $3f
B7_0f7b:		.db $00				; 00
B7_0f7c:		sed				; f8 
B7_0f7d:	.db $7f
B7_0f7e:		cpy #$ff		; c0 ff
B7_0f80:	.db $07
B7_0f81:		.db $00				; 00
B7_0f82:		rol $fe, x		; 36 fe
B7_0f84:	.db $07
B7_0f85:	.db $fc
B7_0f86:		and $fe01, y	; 39 01 fe
B7_0f89:	.db $42
B7_0f8a:	.db $97
B7_0f8b:		ora $c0			; 05 c0
B7_0f8d:	.db $d2
B7_0f8e:		sbc $e03f, x	; fd 3f e0
B7_0f91:	.db $ff
B7_0f92:		.db $00				; 00
B7_0f93:		cpx #$1f		; e0 1f
B7_0f95:		cpy #$ff		; c0 ff
B7_0f97:	.db $03
B7_0f98:	.db $80
B7_0f99:	.db $e3
B7_0f9a:	.db $7f
B7_0f9b:	.db $80
B7_0f9c:	.db $3f
B7_0f9d:		asl $c0			; 06 c0
B7_0f9f:	.db $3f
B7_0fa0:		rti				; 40 


B7_0fa1:	.db $ff
B7_0fa2:	.db $3f
B7_0fa3:		.db $00				; 00
B7_0fa4:		cpy $80ff		; cc ff 80
B7_0fa7:	.db $ff
B7_0fa8:		ora $80			; 05 80
B7_0faa:	.db $7f
B7_0fab:	.db $80
B7_0fac:	.db $ff
B7_0fad:	.db $0f
B7_0fae:		.db $00				; 00
B7_0faf:		rol $01fe, x	; 3e fe 01
B7_0fb2:	.db $fc
B7_0fb3:		ora ($00, x)	; 01 00
B7_0fb5:	.db $ff
B7_0fb6:	.db $07
B7_0fb7:	.db $fc
B7_0fb8:	.db $ff
B7_0fb9:		.db $00				; 00
B7_0fba:	.db $fc
B7_0fbb:	.db $fb
B7_0fbc:	.db $03
B7_0fbd:		beq B7_0fc0 ; f0 01

B7_0fbf:		clc				; 18 
B7_0fc0:		inc $f80f, x	; fe 0f f8
B7_0fc3:	.db $ff
B7_0fc4:		.db $00				; 00
B7_0fc5:		cpx #$80		; e0 80
B7_0fc7:	.db $ff
B7_0fc8:	.db $80
B7_0fc9:	.db $3f
B7_0fca:		asl $ffc0, x	; 1e c0 ff
B7_0fcd:		.db $00				; 00
B7_0fce:	.db $fc
B7_0fcf:	.db $3f
B7_0fd0:		.db $00				; 00
B7_0fd1:	.db $ff
B7_0fd2:	.db $f3
B7_0fd3:		ora ($f8, x)	; 01 f8
B7_0fd5:		.db $00				; 00
B7_0fd6:	.db $1f
B7_0fd7:	.db $fc
B7_0fd8:	.db $07
B7_0fd9:		cpx #$87		; e0 87
B7_0fdb:	.db $3f
B7_0fdc:		cpx #$ff		; e0 ff
B7_0fde:	.db $7f
B7_0fdf:		.db $00				; 00
B7_0fe0:	.db $3e $00 $00
B7_0fe3:	.db $fc
B7_0fe4:	.db $1f
B7_0fe5:		.db $00				; 00
B7_0fe6:	.db $ff
B7_0fe7:	.db $07
B7_0fe8:	.db $fc
B7_0fe9:	.db $ff
B7_0fea:		ora ($f8, x)	; 01 f8
B7_0fec:	.db $0f
B7_0fed:		.db $00				; 00
B7_0fee:	.db $ff
B7_0fef:	.db $0f
B7_0ff0:		;removed
	.db $f0 $07

B7_0ff2:		.db $00				; 00
B7_0ff3:	.db $f7
B7_0ff4:	.db $ff
B7_0ff5:	.db $0f
B7_0ff6:		;removed
	.db $f0 $03

B7_0ff8:		cpy #$00		; c0 00
B7_0ffa:	.db $fe $7f $00
B7_0ffd:	.db $ff
B7_0ffe:		ora ($80, x)	; 01 80
B7_1000:	.db $7f
B7_1001:		cpx #$ff		; e0 ff
B7_1003:	.db $0f
B7_1004:		.db $00				; 00
B7_1005:	.db $fc
B7_1006:	.db $1f
B7_1007:	.db $80
B7_1008:	.db $ff
B7_1009:	.db $0f
B7_100a:		.db $00				; 00
B7_100b:		.db $00				; 00
B7_100c:	.db $fc
B7_100d:	.db $ff
B7_100e:	.db $ff
B7_100f:	.db $ff
B7_1010:		.db $00				; 00
B7_1011:		.db $00				; 00
B7_1012:		cpy #$ff		; c0 ff
B7_1014:		php				; 08 
B7_1015:		sbc $c01f, y	; f9 1f c0
B7_1018:		.db $00				; 00
B7_1019:	.db $ff
B7_101a:		cpy #$ff		; c0 ff
B7_101c:	.db $ff
B7_101d:	.db $07
B7_101e:	.db $0c
B7_101f:		.db $00				; 00
B7_1020:	.db $80
B7_1021:	.db $ff
B7_1022:		sta ($df, x)	; 81 df
B7_1024:	.db $0f
B7_1025:		cpx #$03		; e0 03
B7_1027:	.db $3f
B7_1028:		bne B7_1049 ; d0 1f

B7_102a:	.db $ff
B7_102b:	.db $4f
B7_102c:		.db $00				; 00
B7_102d:		beq B7_102f ; f0 00

B7_102f:	.db $fc
B7_1030:	.db $0b
B7_1031:	.db $ff
B7_1032:		sbc $e003, y	; f9 03 e0
B7_1035:		cmp ($3f, x)	; c1 3f
B7_1037:		sed				; f8 
B7_1038:	.db $1f
B7_1039:		.db $00				; 00
B7_103a:		sed				; f8 
B7_103b:	.db $0f
B7_103c:		cpy #$3f		; c0 3f
B7_103e:		ora $1f80		; 0d 80 1f
B7_1041:		inc $d807, x	; fe 07 d8
B7_1044:		inc $1b03, x	; fe 03 1b
B7_1047:		.db $00				; 00
B7_1048:	.db $d7
B7_1049:	.db $7f
B7_104a:		dey				; 88 
B7_104b:	.db $7f
B7_104c:		ora ($0f, x)	; 01 0f
B7_104e:		beq B7_0ff3 ; f0 a3

B7_1050:		txa				; 8a 
B7_1051:	.db $ff
B7_1052:	.db $1f
B7_1053:		.db $00				; 00
B7_1054:	.db $27
B7_1055:	.db $b3
B7_1056:		cpy #$3f		; c0 3f
B7_1058:		cpy #$7f		; c0 7f
B7_105a:		php				; 08 
B7_105b:		beq B7_109c ; f0 3f

B7_105d:		cpx #$7f		; e0 7f
B7_105f:	.db $1a
B7_1060:		sed				; f8 
B7_1061:	.db $07
B7_1062:		cpy #$0f		; c0 0f
B7_1064:		cld				; d8 
B7_1065:	.db $d4
B7_1066:	.db $1f
B7_1067:		beq B7_0fea ; f0 81

B7_1069:	.db $3f
B7_106a:		cpx #$0f		; e0 0f
B7_106c:		sty $ffe8		; 8c e8 ff
B7_106f:		.db $00				; 00
B7_1070:		tay				; a8 
B7_1071:	.db $ff
B7_1072:		cpy #$1f		; c0 1f
B7_1074:	.db $da
B7_1075:		ora ($7c, x)	; 01 7c
B7_1077:		cpy #$7f		; c0 7f
B7_1079:		inx				; e8 
B7_107a:	.db $7f
B7_107b:		rti				; 40 


B7_107c:	.db $5b
B7_107d:		ora ($6c, x)	; 01 6c
B7_107f:	.db $1f
B7_1080:		jsr $48ff		; 20 ff 48
B7_1083:	.db $ab
B7_1084:		inc $baaa		; ee aa ba
B7_1087:		tsx				; ba 
B7_1088:	.db $02
B7_1089:		;removed
	.db $b0 $5a

B7_108b:		ldx #$f4		; a2 f4
B7_108d:	.db $7f
B7_108e:		.db $00				; 00
B7_108f:	.db $fe $37 $00
B7_1092:	.db $f4
B7_1093:	.db $0f
B7_1094:		pha				; 48 
B7_1095:	.db $ff
B7_1096:	.db $03
B7_1097:		inc $0bc8		; ee c8 0b
B7_109a:		cpx #$17		; e0 17
B7_109c:		lda $7f10, x	; bd 10 7f
B7_109f:		lda $a6			; a5 a6
B7_10a1:	.db $fb
B7_10a2:	.db $03
B7_10a3:		cpy #$97		; c0 97
B7_10a5:		txa				; 8a 
B7_10a6:	.db $f4
B7_10a7:	.db $7f
B7_10a8:		.db $00				; 00
B7_10a9:		inx				; e8 
B7_10aa:	.db $07
B7_10ab:		;removed
	.db $f0 $4f

B7_10ad:	.db $7f
B7_10ae:		cpy #$0f		; c0 0f
B7_10b0:		bcs B7_10a7 ; b0 f5

B7_10b2:	.db $12
B7_10b3:		cpx #$bf		; e0 bf
B7_10b5:		tsx				; ba 
B7_10b6:		eor $8a			; 45 8a
B7_10b8:		ror a			; 6a
B7_10b9:		ora ($ff, x)	; 01 ff
B7_10bb:	.db $e3
B7_10bc:		ora $c0			; 05 c0
B7_10be:	.db $9f
B7_10bf:	.db $82
B7_10c0:		dec $d00b, x	; de 0b d0
B7_10c3:	.db $bb
B7_10c4:		ora #$f9		; 09 f9
B7_10c6:	.db $0b
B7_10c7:	.db $fc
B7_10c8:		lda $5480, x	; bd 80 54
B7_10cb:		ror a			; 6a
B7_10cc:	.db $52
B7_10cd:	.db $2f
B7_10ce:		sbc $05, x		; f5 05
B7_10d0:		sed				; f8 
B7_10d1:		lsr a			; 4a
B7_10d2:		sbc $c016, x	; fd 16 c0
B7_10d5:	.db $3f
B7_10d6:		.db $00				; 00
B7_10d7:	.db $ff
B7_10d8:		eor ($d9, x)	; 41 d9
B7_10da:		ora $e8			; 05 e8
B7_10dc:	.db $9f
B7_10dd:		bit $fe			; 24 fe
B7_10df:	.db $07
B7_10e0:	.db $fc
B7_10e1:		ora ($fe, x)	; 01 fe
B7_10e3:	.db $04
B7_10e4:		;removed
	.db $b0 $5f

B7_10e6:	.db $52
B7_10e7:		cmp $c04a, x	; dd 4a c0
B7_10ea:	.db $9f
B7_10eb:		sed				; f8 
B7_10ec:	.db $03
B7_10ed:		sed				; f8 
B7_10ee:	.db $0f
B7_10ef:		bne B7_1130 ; d0 3f

B7_10f1:		.db $00				; 00
B7_10f2:		sed				; f8 
B7_10f3:	.db $7f
B7_10f4:		.db $00				; 00
B7_10f5:	.db $ff
B7_10f6:		ora ($ed), y	; 11 ed
B7_10f8:		asl $f5			; 06 f5
B7_10fa:	.db $83
B7_10fb:		cpx $b6			; e4 b6
B7_10fd:		.db $00				; 00
B7_10fe:	.db $fa
B7_10ff:		cmp $2a, x		; d5 2a
B7_1101:		;removed
	.db $f0 $3f

B7_1103:		bcs B7_10aa ; b0 a5

B7_1105:	.db $07
B7_1106:		beq B7_109f ; f0 97

B7_1108:	.db $54
B7_1109:		inx				; e8 
B7_110a:	.db $4f
B7_110b:		rol $ff01, x	; 3e 01 ff
B7_110e:		.db $00				; 00
B7_110f:	.db $ab
B7_1110:	.db $ff
B7_1111:		.db $00				; 00
B7_1112:	.db $fc
B7_1113:	.db $03
B7_1114:	.db $54
B7_1115:		adc $17c1, x	; 7d c1 17
B7_1118:		sbc $b200, x	; fd 00 b2
B7_111b:		adc $fc15, x	; 7d 15 fc
B7_111e:	.db $03
B7_111f:	.db $fc
B7_1120:		ora ($6d, x)	; 01 6d
B7_1122:	.db $6f
B7_1123:		ora ($bf, x)	; 01 bf
B7_1125:		ora #$2d		; 09 2d
B7_1127:	.db $92
B7_1128:	.db $dd $be $00
B7_112b:	.db $77
B7_112c:		cmp $7d00, x	; dd 00 7d
B7_112f:	.db $52
B7_1130:		sta ($fe, x)	; 81 fe
B7_1132:	.db $0f
B7_1133:		sei				; 78 
B7_1134:		eor ($17), y	; 51 17
B7_1136:		ror a			; 6a
B7_1137:		sbc #$3d		; e9 3d
B7_1139:	.db $54
B7_113a:		eor $5b, x		; 55 5b
B7_113c:		ora ($da, x)	; 01 da
B7_113e:	.db $3f
B7_113f:		rti				; 40 


B7_1140:	.db $7f
B7_1141:		eor ($91), y	; 51 91
B7_1143:		nop				; ea 
B7_1144:		eor #$5d		; 49 5d
B7_1146:		ora #$59		; 09 59
B7_1148:		and $ffe2, x	; 3d e2 ff
B7_114b:		.db $00				; 00
B7_114c:	.db $b2
B7_114d:		lsr $2b54, x	; 5e 54 2b
B7_1150:	.db $92
B7_1151:		tsx				; ba 
B7_1152:	.db $ff
B7_1153:	.db $02
B7_1154:		sta $89, x		; 95 89
B7_1156:		nop				; ea 
B7_1157:		inx				; e8 
B7_1158:	.db $bb
B7_1159:		rti				; 40 


B7_115a:	.db $2f
B7_115b:	.db $82
B7_115c:		dec $7d, x		; d6 7d
B7_115e:		php				; 08 
B7_115f:	.db $fa
B7_1160:	.db $2f
B7_1161:		;removed
	.db $d0 $0f

B7_1163:		txa				; 8a 
B7_1164:	.db $d4
B7_1165:	.db $2f
B7_1166:		inx				; e8 
B7_1167:		lda $bd80		; ad 80 bd
B7_116a:		tax				; aa 
B7_116b:		cmp $5203, x	; dd 03 52
B7_116e:		cmp $02, x		; d5 02
B7_1170:		sbc $e827, y	; f9 27 e8
B7_1173:	.db $ff
B7_1174:		rti				; 40 


B7_1175:		tay				; a8 
B7_1176:	.db $52
B7_1177:		ror a			; 6a
B7_1178:	.db $df
B7_1179:	.db $42
B7_117a:	.db $6b
B7_117b:		tax				; aa 
B7_117c:	.db $2b
B7_117d:		pha				; 48 
B7_117e:	.db $6f
B7_117f:		sta $d4, x		; 95 d4
B7_1181:	.db $4b
B7_1182:		lda $49, x		; b5 49
B7_1184:		lda ($cc, x)	; a1 cc
B7_1186:		tax				; aa 
B7_1187:		ror $3509, x	; 7e 09 35
B7_118a:		ror a			; 6a
B7_118b:	.db $0b
B7_118c:	.db $df
B7_118d:		ldy $5d			; a4 5d
B7_118f:		cpx $0a			; e4 0a
B7_1191:		clv				; b8 
B7_1192:	.db $42
B7_1193:	.db $7f
B7_1194:	.db $4b
B7_1195:		eor $db, x		; 55 db
B7_1197:		bit $b2			; 24 b2
B7_1199:		bit $6d			; 24 6d
B7_119b:	.db $d2
B7_119c:	.db $ee $36 $00
B7_119f:	.db $5f
B7_11a0:		ldx $05, y		; b6 05
B7_11a2:		sed				; f8 
B7_11a3:	.db $8f
B7_11a4:		tax				; aa 
B7_11a5:	.db $f4
B7_11a6:	.db $02
B7_11a7:		ror $e559		; 6e 59 e5
B7_11aa:		inc $8001, x	; fe 01 80
B7_11ad:	.db $ff
B7_11ae:	.db $82
B7_11af:		cpx $d7			; e4 d7
B7_11b1:	.db $0b
B7_11b2:		bne B7_11cb ; d0 17

B7_11b4:		and $d5			; 25 d5
B7_11b6:	.db $bf
B7_11b7:	.db $04
B7_11b8:		cpx #$7f		; e0 7f
B7_11ba:		ora ($54, x)	; 01 54
B7_11bc:	.db $ff
B7_11bd:		nop				; ea 
B7_11be:	.db $1f
B7_11bf:		.db $00				; 00
B7_11c0:		asl $c0aa, x	; 1e aa c0
B7_11c3:	.db $ff
B7_11c4:		lda $09			; a5 09
B7_11c6:		eor $15, x		; 55 15
B7_11c8:	.db $fb
B7_11c9:	.db $e2
B7_11ca:	.db $02
B7_11cb:		;removed
	.db $f0 $05

B7_11cd:		inc $c03f, x	; fe 3f c0
B7_11d0:	.db $7f
B7_11d1:		ora ($80, x)	; 01 80
B7_11d3:	.db $ff
B7_11d4:		ora ($f6, x)	; 01 f6
B7_11d6:	.db $7f
B7_11d7:		.db $00				; 00
B7_11d8:	.db $fe $07 $00
B7_11db:	.db $fe $7f $00
B7_11de:	.db $ff
B7_11df:	.db $03
B7_11e0:		.db $00				; 00
B7_11e1:	.db $ff
B7_11e2:	.db $03
B7_11e3:		cpx #$ff		; e0 ff
B7_11e5:		ora ($3e, x)	; 01 3e
B7_11e7:		.db $00				; 00
B7_11e8:	.db $fc
B7_11e9:	.db $ff
B7_11ea:		ora ($fe, x)	; 01 fe
B7_11ec:	.db $07
B7_11ed:		.db $00				; 00
B7_11ee:	.db $ff
B7_11ef:	.db $0f
B7_11f0:		cpx #$ff		; e0 ff
B7_11f2:	.db $0f
B7_11f3:		.db $00				; 00
B7_11f4:		cpx #$ff		; e0 ff
B7_11f6:		ora ($7f, x)	; 01 7f
B7_11f8:		.db $00				; 00
B7_11f9:		.db $00				; 00
B7_11fa:		inc $ff07, x	; fe 07 ff
B7_11fd:	.db $ff
B7_11fe:		ora ($c0, x)	; 01 c0
B7_1200:	.db $f9 $7f $00
B7_1203:	.db $3f
B7_1204:		.db $00				; 00
B7_1205:	.db $80
B7_1206:	.db $ff
B7_1207:		sta ($ff, x)	; 81 ff
B7_1209:	.db $0f
B7_120a:		.db $00				; 00
B7_120b:	.db $fc
B7_120c:	.db $ff
B7_120d:	.db $07
B7_120e:		beq B7_1211 ; f0 01

B7_1210:		.db $00				; 00
B7_1211:		sed				; f8 
B7_1212:	.db $3f
B7_1213:		sed				; f8 
B7_1214:	.db $0f
B7_1215:		.db $00				; 00
B7_1216:		;removed
	.db $f0 $ff

B7_1218:	.db $7f
B7_1219:		.db $00				; 00
B7_121a:	.db $ff
B7_121b:		ora ($80, x)	; 01 80
B7_121d:	.db $ff
B7_121e:	.db $0f
B7_121f:		cpy #$03		; c0 03
B7_1221:		cpx #$ff		; e0 ff
B7_1223:	.db $ff
B7_1224:		.db $00				; 00
B7_1225:	.db $fe $00 $00
B7_1228:		inc $03ff, x	; fe ff 03
B7_122b:		beq B7_11ad ; f0 80

B7_122d:	.db $ff
B7_122e:	.db $ff
B7_122f:	.db $07
B7_1230:		rti				; 40 


B7_1231:	.db $02
B7_1232:		.db $00				; 00
B7_1233:	.db $fc
B7_1234:	.db $ff
B7_1235:	.db $03
B7_1236:	.db $80
B7_1237:	.db $ff
B7_1238:	.db $7f
B7_1239:	.db $fc
B7_123a:	.db $0f
B7_123b:		cpy #$81		; c0 81
B7_123d:	.db $03
B7_123e:		cpx #$ff		; e0 ff
B7_1240:		.db $00				; 00
B7_1241:		cpx #$7f		; e0 7f
B7_1243:	.db $ff
B7_1244:	.db $87
B7_1245:	.db $ff
B7_1246:		.db $00				; 00
B7_1247:	.db $80
B7_1248:		ora $ff00, x	; 1d 00 ff
B7_124b:	.db $0f
B7_124c:		.db $00				; 00
B7_124d:	.db $fc
B7_124e:	.db $ff
B7_124f:	.db $ff
B7_1250:		cpy #$3f		; c0 3f
B7_1252:		.db $00				; 00
B7_1253:		.db $00				; 00
B7_1254:	.db $7f
B7_1255:	.db $80
B7_1256:	.db $ff
B7_1257:	.db $07
B7_1258:		.db $00				; 00
B7_1259:		inc $a3ff, x	; fe ff a3
B7_125c:	.db $7f
B7_125d:		.db $00				; 00
B7_125e:		.db $00				; 00
B7_125f:		bvs B7_125e ; 70 fd

B7_1261:	.db $0f
B7_1262:	.db $7c
B7_1263:		.db $00				; 00
B7_1264:	.db $7f
B7_1265:		cpy #$07		; c0 07
B7_1267:		inc $3f0f, x	; fe 0f 3f
B7_126a:		;removed
	.db $70 $c0

B7_126c:	.db $ff
B7_126d:		.db $00				; 00
B7_126e:	.db $80
B7_126f:		inc $ff03, x	; fe 03 ff
B7_1272:	.db $92
B7_1273:		adc $05, x		; 75 05
B7_1275:		cpx #$5f		; e0 5f
B7_1277:	.db $fc
B7_1278:	.db $0f
B7_1279:		beq B7_129a ; f0 1f

B7_127b:		.db $00				; 00
B7_127c:		.db $00				; 00
B7_127d:		stx $fa, y		; 96 fa
B7_127f:	.db $bf
B7_1280:	.db $42
B7_1281:	.db $77
B7_1282:		eor $ff, x		; 55 ff
B7_1284:		ora ($f0, x)	; 01 f0
B7_1286:	.db $44
B7_1287:		ldx $0aaa		; ae aa 0a
B7_128a:	.db $f4
B7_128b:	.db $97
B7_128c:	.db $f4
B7_128d:		rol $01c0		; 2e c0 01
B7_1290:	.db $ff
B7_1291:	.db $3f
B7_1292:		.db $00				; 00
B7_1293:		sbc $a40b, y	; f9 0b a4
B7_1296:		lsr $5d, x		; 56 5d
B7_1298:	.db $eb
B7_1299:	.db $d2
B7_129a:	.db $07
B7_129b:		cpx #$ff		; e0 ff
B7_129d:	.db $1a
B7_129e:		.db $00				; 00
B7_129f:	.db $bf
B7_12a0:		cpy #$56		; c0 56
B7_12a2:	.db $fc
B7_12a3:	.db $0b
B7_12a4:		inx				; e8 
B7_12a5:	.db $1f
B7_12a6:		.db $00				; 00
B7_12a7:	.db $2f
B7_12a8:	.db $ff
B7_12a9:		ora ($fc, x)	; 01 fc
B7_12ab:	.db $02
B7_12ac:	.db $fb
B7_12ad:		dex				; ca 
B7_12ae:	.db $5f
B7_12af:		.db $00				; 00
B7_12b0:	.db $fc
B7_12b1:		jsr $fd69		; 20 69 fd
B7_12b4:	.db $1f
B7_12b5:	.db $80
B7_12b6:	.db $1f
B7_12b7:	.db $80
B7_12b8:	.db $ff
B7_12b9:	.db $c7
B7_12ba:		dec $0a, x		; d6 0a
B7_12bc:		bcs B7_12e0 ; b0 22

B7_12be:		ldy $ff, x		; b4 ff
B7_12c0:		.db $00				; 00
B7_12c1:		sed				; f8 
B7_12c2:	.db $5f
B7_12c3:		bne B7_1344 ; d0 7f

B7_12c5:		.db $00				; 00
B7_12c6:	.db $5f
B7_12c7:	.db $44
B7_12c8:		inc $1b, x		; f6 1b
B7_12ca:	.db $80
B7_12cb:	.db $97
B7_12cc:	.db $74
B7_12cd:		cmp $df, x		; d5 df
B7_12cf:	.db $44
B7_12d0:	.db $03
B7_12d1:		inx				; e8 
B7_12d2:		dec $85, x		; d6 85
B7_12d4:	.db $fa
B7_12d5:	.db $af
B7_12d6:		.db $00				; 00
B7_12d7:		;removed
	.db $f0 $2b

B7_12d9:		cmp ($df, x)	; c1 df
B7_12db:		tax				; aa 
B7_12dc:	.db $02
B7_12dd:	.db $fc
B7_12de:		lsr $ad			; 46 ad
B7_12e0:		nop				; ea 
B7_12e1:	.db $0f
B7_12e2:	.db $80
B7_12e3:	.db $7f
B7_12e4:		sta ($ff, x)	; 81 ff
B7_12e6:		.db $00				; 00
B7_12e7:		rol $9f00, x	; 3e 00 9f
B7_12ea:		inc $7701, x	; fe 01 77
B7_12ed:	.db $d4
B7_12ee:		ldx #$1b		; a2 1b
B7_12f0:		beq B7_1311 ; f0 1f

B7_12f2:		bne B7_1277 ; d0 83

B7_12f4:	.db $7f
B7_12f5:	.db $80
B7_12f6:	.db $af
B7_12f7:		ldy $5a			; a4 5a
B7_12f9:		eor $bd, x		; 55 bd
B7_12fb:	.db $22
B7_12fc:		eor $0255, x	; 5d 55 02
B7_12ff:		inc $4523, x	; fe 23 45
B7_1302:	.db $fc
B7_1303:		ora $da			; 05 da
B7_1305:	.db $dc
B7_1306:	.db $23
B7_1307:	.db $fc
B7_1308:		rol a			; 2a
B7_1309:		ora $2bb0		; 0d b0 2b
B7_130c:		dec $5e90, x	; de 90 5e
B7_130f:		eor $4d, x		; 55 4d
B7_1311:	.db $2b
B7_1312:	.db $62
B7_1313:	.db $d7
B7_1314:	.db $7a
B7_1315:		and ($55, x)	; 21 55
B7_1317:		sta ($f4), y	; 91 f4
B7_1319:	.db $5b
B7_131a:	.db $12
B7_131b:	.db $b2
B7_131c:	.db $7f
B7_131d:	.db $80
B7_131e:	.db $af
B7_131f:		ldx $80, y		; b6 80
B7_1321:	.db $ff
B7_1322:	.db $02
B7_1323:	.db $52
B7_1324:	.db $ff
B7_1325:		lsr $00, x		; 56 00
B7_1327:		sed				; f8 
B7_1328:	.db $0f
B7_1329:		cpx #$6f		; e0 6f
B7_132b:	.db $0f
B7_132c:		cpx #$1f		; e0 1f
B7_132e:		ldx #$6a		; a2 6a
B7_1330:		lda $8016, x	; bd 16 80
B7_1333:	.db $ff
B7_1334:		and ($51, x)	; 21 51
B7_1336:	.db $7f
B7_1337:		.db $00				; 00
B7_1338:		inc $02b7, x	; fe b7 02
B7_133b:	.db $7a
B7_133c:	.db $ab
B7_133d:	.db $12
B7_133e:		inc $c703, x	; fe 03 c7
B7_1341:		eor ($f0, x)	; 41 f0
B7_1343:	.db $5f
B7_1344:		cpy #$bb		; c0 bb
B7_1346:	.db $0b
B7_1347:		.db $00				; 00
B7_1348:	.db $ff
B7_1349:	.db $07
B7_134a:	.db $9c
B7_134b:	.db $df
B7_134c:		ora ($f0, x)	; 01 f0
B7_134e:	.db $3f
B7_134f:		rti				; 40 


B7_1350:	.db $fb
B7_1351:	.db $1f
B7_1352:		.db $00				; 00
B7_1353:		inc $d403, x	; fe 03 d4
B7_1356:	.db $ff
B7_1357:		ora ($e0, x)	; 01 e0
B7_1359:	.db $3f
B7_135a:		rti				; 40 


B7_135b:	.db $e7
B7_135c:	.db $1f
B7_135d:		.db $00				; 00
B7_135e:	.db $ff
B7_135f:	.db $03
B7_1360:		inx				; e8 
B7_1361:	.db $7f
B7_1362:		.db $00				; 00
B7_1363:	.db $fc
B7_1364:	.db $1f
B7_1365:	.db $80
B7_1366:	.db $ef
B7_1367:	.db $07
B7_1368:		cpx #$ff		; e0 ff
B7_136a:		.db $00				; 00
B7_136b:	.db $3c
B7_136c:	.db $3f
B7_136d:		.db $00				; 00
B7_136e:	.db $ff
B7_136f:	.db $07
B7_1370:	.db $c2
B7_1371:	.db $fb
B7_1372:		ora ($f8, x)	; 01 f8
B7_1374:	.db $1f
B7_1375:		bcc B7_136a ; 90 f3

B7_1377:	.db $07
B7_1378:		cpy #$ff		; c0 ff
B7_137a:		rti				; 40 


B7_137b:	.db $7c
B7_137c:	.db $1f
B7_137d:		.db $00				; 00
B7_137e:	.db $ff
B7_137f:	.db $07
B7_1380:		inx				; e8 
B7_1381:	.db $7b
B7_1382:		.db $00				; 00
B7_1383:		sed				; f8 
B7_1384:	.db $1f
B7_1385:		bne B7_136e ; d0 e7

B7_1387:		ora $ffc0, y	; 19 c0 ff
B7_138a:	.db $80
B7_138b:	.db $f2
B7_138c:	.db $1f
B7_138d:		.db $00				; 00
B7_138e:	.db $ff
B7_138f:	.db $03
B7_1390:		sed				; f8 
B7_1391:	.db $3f
B7_1392:		.db $00				; 00
B7_1393:	.db $fc
B7_1394:	.db $0f
B7_1395:		cpx #$fe		; e0 fe
B7_1397:		ora ($f0, x)	; 01 f0
B7_1399:	.db $3f
B7_139a:	.db $80
B7_139b:		sbc $c00f, x	; fd 0f c0
B7_139e:	.db $7f
B7_139f:		.db $00				; 00
B7_13a0:		sed				; f8 
B7_13a1:	.db $3f
B7_13a2:	.db $80
B7_13a3:	.db $ff
B7_13a4:		rti				; 40 


B7_13a5:	.db $ac $bf $00
B7_13a8:	.db $ff
B7_13a9:		sta ($68, x)	; 81 68
B7_13ab:	.db $bf
B7_13ac:		ora ($ff, x)	; 01 ff
B7_13ae:		ora ($f0, x)	; 01 f0
B7_13b0:	.db $1f
B7_13b1:		ora ($ff, x)	; 01 ff
B7_13b3:		ora ($f6, x)	; 01 f6
B7_13b5:	.db $87
B7_13b6:	.db $80
B7_13b7:	.db $ff
B7_13b8:		ora ($fc, x)	; 01 fc
B7_13ba:	.db $0f
B7_13bb:	.db $80
B7_13bc:	.db $ff
B7_13bd:	.db $03
B7_13be:		sbc ($1f, x)	; e1 1f
B7_13c0:		cpy #$ff		; c0 ff
B7_13c2:		.db $00				; 00
B7_13c3:		dec $805f		; ce 5f 80
B7_13c6:	.db $f7
B7_13c7:		cmp ($e0, x)	; c1 e0
B7_13c9:	.db $fc
B7_13ca:		cpy #$7f		; c0 7f
B7_13cc:		bvs B7_13e6 ; 70 18

B7_13ce:		asl $3ff0, x	; 1e f0 3f
B7_13d1:		bmi B7_13e2 ; 30 0f

B7_13d3:		asl $0ffc		; 0e fc 0f
B7_13d6:		cpy $cf			; c4 cf
B7_13d8:		ora ($fe, x)	; 01 fe
B7_13da:	.db $03
B7_13db:		;removed
	.db $f0 $1f

B7_13dd:		beq B7_13fe ; f0 1f

B7_13df:		.db $00				; 00
B7_13e0:		sed				; f8 
B7_13e1:	.db $c3
B7_13e2:		sed				; f8 
B7_13e3:		rol $e1e0, x	; 3e e0 e1
B7_13e6:		adc $f318, y	; 79 18 f3
B7_13e9:		cmp ($f1, x)	; c1 f1
B7_13eb:		sec				; 38 
B7_13ec:		iny				; c8 
B7_13ed:	.db $0f
B7_13ee:	.db $c7
B7_13ef:	.db $f3
B7_13f0:		.db $00				; 00
B7_13f1:	.db $1f
B7_13f2:	.db $0f
B7_13f3:	.db $c7
B7_13f4:	.db $f3
B7_13f5:	.db $80
B7_13f6:	.db $e7
B7_13f7:		adc ($d8, x)	; 61 d8
B7_13f9:		sbc ($38), y	; f1 38
B7_13fb:		asl $7861, x	; 1e 61 78
B7_13fe:	.db $3f
B7_13ff:		bpl B7_143f ; 10 3e

B7_1401:	.db $9c
B7_1402:	.db $cf
B7_1403:	.db $83
B7_1404:		sbc ($7d), y	; f1 7d
B7_1406:		.db $00				; 00
B7_1407:	.db $1f
B7_1408:	.db $ef
B7_1409:		sta ($9f, x)	; 81 9f
B7_140b:	.db $e7
B7_140c:	.db $03
B7_140d:		;removed
	.db $70 $76

B7_140f:	.db $0f
B7_1410:		cpy #$c7		; c0 c7
B7_1412:	.db $73
B7_1413:	.db $80
B7_1414:		asl $079e, x	; 1e 9e 07
B7_1417:		;removed
	.db $f0 $e3

B7_1419:		and ($f8), y	; 31 f8
B7_141b:		and ($bf), y	; 31 bf
B7_141d:	.db $0f
B7_141e:	.db $80
B7_141f:	.db $c7
B7_1420:	.db $73
B7_1421:		bvs B7_1471 ; 70 4e

B7_1423:	.db $df
B7_1424:		cmp ($30, x)	; c1 30
B7_1426:		sta $c007, x	; 9d 07 c0
B7_1429:	.db $e3
B7_142a:		ora $1f30, x	; 1d 30 1f
B7_142d:	.db $e7
B7_142e:	.db $07
B7_142f:		beq B7_1429 ; f0 f8

B7_1431:	.db $1f
B7_1432:		cpy #$c7		; c0 c7
B7_1434:	.db $77
B7_1435:		cpx #$07		; e0 07
B7_1437:	.db $f3
B7_1438:		ora ($1c, x)	; 01 1c
B7_143a:	.db $fc
B7_143b:	.db $07
B7_143c:		cpx #$f1		; e0 f1
B7_143e:	.db $1f
B7_143f:	.db $80
B7_1440:	.db $1f
B7_1441:	.db $cf
B7_1442:	.db $c3
B7_1443:		sei				; 78 
B7_1444:		sed				; f8 
B7_1445:	.db $1f
B7_1446:		cpy #$e1		; c0 e1
B7_1448:	.db $3f
B7_1449:	.db $80
B7_144a:	.db $c7
B7_144b:		sbc $8e00, y	; f9 00 8e
B7_144e:	.db $ff
B7_144f:	.db $03
B7_1450:		cpx #$79		; e0 79
B7_1452:		asl $8f80		; 0e 80 8f
B7_1455:	.db $e7
B7_1456:		sbc ($f8, x)	; e1 f8
B7_1458:		sei				; 78 
B7_1459:	.db $1f
B7_145a:		cpy #$c3		; c0 c3
B7_145c:	.db $7f
B7_145d:		.db $00				; 00
B7_145e:	.db $8f
B7_145f:	.db $fb
B7_1460:		.db $00				; 00
B7_1461:		asl $07fe, x	; 1e fe 07
B7_1464:		cpx #$f1		; e0 f1
B7_1466:	.db $1c
B7_1467:		.db $00				; 00
B7_1468:	.db $bf
B7_1469:	.db $cf
B7_146a:		ora ($ff, x)	; 01 ff
B7_146c:		and ($3e), y	; 31 3e
B7_146e:	.db $80
B7_146f:	.db $c7
B7_1470:	.db $ff
B7_1471:		.db $00				; 00
B7_1472:	.db $3c
B7_1473:	.db $cf
B7_1474:		ora ($fe, x)	; 01 fe
B7_1476:		sec				; 38 
B7_1477:		asl $8f00, x	; 1e 00 8f
B7_147a:	.db $f3
B7_147b:		and ($fc, x)	; 21 fc
B7_147d:	.db $1c
B7_147e:	.db $8f
B7_147f:	.db $83
B7_1480:	.db $e3
B7_1481:		adc $1c0c, y	; 79 0c 1c
B7_1484:		inc $c007, x	; fe 07 c0
B7_1487:	.db $f9 $1f $00
B7_148a:	.db $c7
B7_148b:	.db $ff
B7_148c:		.db $00				; 00
B7_148d:		sei				; 78 
B7_148e:		dec $c01f		; ce 1f c0
B7_1491:	.db $e7
B7_1492:		sed				; f8 
B7_1493:		jsr $8e3e		; 20 3e 8e
B7_1496:	.db $df
B7_1497:		sta ($61, x)	; 81 61
B7_1499:		inc $3c00, x	; fe 00 3c
B7_149c:		inc $f007		; ee 07 f0
B7_149f:	.db $9c
B7_14a0:	.db $1f
B7_14a1:	.db $80
B7_14a2:	.db $c7
B7_14a3:		sbc ($1f), y	; f1 1f
B7_14a5:		;removed
	.db $70 $bc

B7_14a7:	.db $1f
B7_14a8:		cpy #$e7		; c0 e7
B7_14aa:		;removed
	.db $f0 $1c

B7_14ac:		jmp ($3f98)		; 6c 98 3f


B7_14af:	.db $80
B7_14b0:	.db $87
B7_14b1:	.db $ff
B7_14b2:		ora ($f8, x)	; 01 f8
B7_14b4:	.db $9c
B7_14b5:	.db $0f
B7_14b6:		cpx #$c7		; e0 c7
B7_14b8:		sed				; f8 
B7_14b9:		ora ($7c, x)	; 01 7c
B7_14bb:	.db $fc
B7_14bc:	.db $0f
B7_14bd:	.db $80
B7_14be:	.db $8f
B7_14bf:	.db $f7
B7_14c0:		ora ($f8, x)	; 01 f8
B7_14c2:		sed				; f8 
B7_14c3:	.db $1f
B7_14c4:	.db $80
B7_14c5:	.db $87
B7_14c6:	.db $ff
B7_14c7:		ora ($f8, x)	; 01 f8
B7_14c9:	.db $1c
B7_14ca:	.db $0f
B7_14cb:		cpy #$0f		; c0 0f
B7_14cd:	.db $fb
B7_14ce:	.db $03
B7_14cf:		beq B7_14c2 ; f0 f1

B7_14d1:		rol $3e00, x	; 3e 00 3e
B7_14d4:	.db $df
B7_14d5:	.db $03
B7_14d6:		beq B7_14bb ; f0 e3

B7_14d8:	.db $7c
B7_14d9:	.db $0c
B7_14da:	.db $3c
B7_14db:	.db $dc
B7_14dc:	.db $0f
B7_14dd:		cpy #$c7		; c0 c7
B7_14df:	.db $fb
B7_14e0:		.db $00				; 00
B7_14e1:	.db $fc
B7_14e2:		sei				; 78 
B7_14e3:		asl $1f07, x	; 1e 07 1f
B7_14e6:	.db $87
B7_14e7:	.db $e3
B7_14e8:		eor ($c0, x)	; 41 c0
B7_14ea:		sbc $f01d, y	; f9 1d f0
B7_14ed:		and $03be, y	; 39 be 03
B7_14f0:		rol $ef8e, x	; 3e 8e ef
B7_14f3:		.db $00				; 00
B7_14f4:	.db $87
B7_14f5:	.db $fb
B7_14f6:		ora ($e0, x)	; 01 e0
B7_14f8:		sbc ($3e), y	; f1 3e
B7_14fa:		cpy #$1f		; c0 1f
B7_14fc:		dec $23c7		; ce c7 23
B7_14ff:		clc				; 18 
B7_1500:	.db $cf
B7_1501:	.db $7b
B7_1502:		.db $00				; 00
B7_1503:	.db $ce $f7 $00
B7_1506:		bvs B7_1546 ; 70 3e

B7_1508:	.db $cf
B7_1509:	.db $07
B7_150a:		sei				; 78 
B7_150b:	.db $9e
B7_150c:	.db $3f
B7_150d:		.db $00				; 00
B7_150e:	.db $7f
B7_150f:		clc				; 18 
B7_1510:	.db $1f
B7_1511:		cpy #$1f		; c0 1f
B7_1513:	.db $c7
B7_1514:	.db $63
B7_1515:		cpx #$c7		; e0 c7
B7_1517:		sbc ($38), y	; f1 38
B7_1519:		;removed
	.db $70 $e0

B7_151b:	.db $7f
B7_151c:	.db $02
B7_151d:	.db $fc
B7_151e:		adc $1f1c, y	; 79 1c 1f
B7_1521:		beq B7_155b ; f0 38

B7_1523:		dec $3c03, x	; de 03 3c
B7_1526:		sty $806f		; 8c 6f 80
B7_1529:	.db $1f
B7_152a:		dec $03c7		; ce c7 03
B7_152d:		sei				; 78 
B7_152e:	.db $1c
B7_152f:	.db $ff
B7_1530:		.db $00				; 00
B7_1531:		ror $1f86, x	; 7e 86 1f
B7_1534:		cpy #$f3		; c0 f3
B7_1536:		beq B7_1577 ; f0 3f

B7_1538:		.db $00				; 00
B7_1539:		asl $0ffe, x	; 1e fe 0f
B7_153c:		cpy #$3f		; c0 3f
B7_153e:		cpx #$0f		; e0 0f
B7_1540:		cpx #$e3		; e0 e3
B7_1542:		sed				; f8 
B7_1543:	.db $0f
B7_1544:		sec				; 38 
B7_1545:	.db $07
B7_1546:	.db $ff
B7_1547:	.db $83
B7_1548:		cmp ($e1, x)	; c1 e1
B7_154a:		cpx #$3f		; e0 3f
B7_154c:		rti				; 40 


B7_154d:	.db $1c
B7_154e:	.db $e7
B7_154f:	.db $c3
B7_1550:	.db $e3
B7_1551:		cpy #$c3		; c0 c3
B7_1553:	.db $ff
B7_1554:		adc ($00, x)	; 61 00
B7_1556:		inc $ff80, x	; fe 80 ff
B7_1559:		ora ($e0, x)	; 01 e0
B7_155b:	.db $f9 $7f $00
B7_155e:		stx $81e7		; 8e e7 81
B7_1561:		sbc ($0f), y	; f1 0f
B7_1563:		bvs B7_1561 ; 70 fc

B7_1565:	.db $0f
B7_1566:		.db $00				; 00
B7_1567:	.db $ff
B7_1568:	.db $0f
B7_1569:		.db $00				; 00
B7_156a:		inc $801f, x	; fe 1f 80
B7_156d:	.db $ff
B7_156e:	.db $03
B7_156f:	.db $02
B7_1570:	.db $ff
B7_1571:	.db $0f
B7_1572:		cpy #$ff		; c0 ff
B7_1574:		jsr $ffe0		; 20 e0 ff
B7_1577:		.db $00				; 00
B7_1578:		beq B7_15b9 ; f0 3f

B7_157a:		.db $00				; 00
B7_157b:	.db $fc
B7_157c:	.db $7f
B7_157d:		.db $00				; 00
B7_157e:		inc $8007, x	; fe 07 80
B7_1581:	.db $ff
B7_1582:	.db $0f
B7_1583:	.db $80
B7_1584:	.db $ff
B7_1585:		ora ($c0), y	; 11 c0
B7_1587:	.db $ff
B7_1588:		ora ($f0, x)	; 01 f0
B7_158a:	.db $7f
B7_158b:		.db $00				; 00
B7_158c:		;removed
	.db $f0 $ff

B7_158e:		.db $00				; 00
B7_158f:		sed				; f8 
B7_1590:	.db $3f
B7_1591:		.db $00				; 00
B7_1592:	.db $fc
B7_1593:	.db $7f
B7_1594:		.db $00				; 00
B7_1595:	.db $fe $0f $00
B7_1598:	.db $ff
B7_1599:	.db $0f
B7_159a:	.db $80
B7_159b:	.db $ff
B7_159c:	.db $03
B7_159d:	.db $80
B7_159e:	.db $ff
B7_159f:	.db $0f
B7_15a0:		cpy #$ff		; c0 ff
B7_15a2:		.db $00				; 00
B7_15a3:		cpy #$ff		; c0 ff
B7_15a5:	.db $07
B7_15a6:		cpx #$7f		; e0 7f
B7_15a8:		jsr $ffe0		; 20 e0 ff
B7_15ab:		ora ($f8, x)	; 01 f8
B7_15ad:	.db $3f
B7_15ae:		.db $00				; 00
B7_15af:		cpx #$ff		; e0 ff
B7_15b1:		.db $00				; 00
B7_15b2:	.db $fc
B7_15b3:	.db $1f
B7_15b4:		cpx #$f0		; e0 f0
B7_15b6:	.db $ff
B7_15b7:		.db $00				; 00
B7_15b8:	.db $fc
B7_15b9:	.db $0f
B7_15ba:		clc				; 18 
B7_15bb:		sed				; f8 
B7_15bc:	.db $7f
B7_15bd:		.db $00				; 00
B7_15be:		inc $7003, x	; fe 03 70
B7_15c1:		beq B7_1642 ; f0 7f

B7_15c3:		.db $00				; 00
B7_15c4:	.db $fc
B7_15c5:	.db $07
B7_15c6:		beq B7_158f ; f0 c7

B7_15c8:	.db $fb
B7_15c9:		.db $00				; 00
B7_15ca:		inc $f003, x	; fe 03 f0
B7_15cd:		cpx #$7f		; e0 7f
B7_15cf:		.db $00				; 00
B7_15d0:	.db $fc
B7_15d1:	.db $1f
B7_15d2:	.db $80
B7_15d3:		cpx #$ff		; e0 ff
B7_15d5:		ora ($e2, x)	; 01 e2
B7_15d7:	.db $ff
B7_15d8:		ora ($18, x)	; 01 18
B7_15da:	.db $ff
B7_15db:	.db $07
B7_15dc:		cpy #$ff		; c0 ff
B7_15de:		ora ($c1, x)	; 01 c1
B7_15e0:	.db $ff
B7_15e1:	.db $03
B7_15e2:		cpx #$ff		; e0 ff
B7_15e4:		.db $00				; 00
B7_15e5:		cpy #$ff		; c0 ff
B7_15e7:	.db $03
B7_15e8:		cpx #$ff		; e0 ff
B7_15ea:		.db $00				; 00
B7_15eb:		tya				; 98 
B7_15ec:	.db $ff
B7_15ed:	.db $07
B7_15ee:		cpy #$ff		; c0 ff
B7_15f0:		ora ($c0, x)	; 01 c0
B7_15f2:	.db $ff
B7_15f3:	.db $07
B7_15f4:		cpx #$ff		; e0 ff
B7_15f6:		.db $00				; 00
B7_15f7:		cpx #$ff		; e0 ff
B7_15f9:		ora ($f0, x)	; 01 f0
B7_15fb:	.db $3f
B7_15fc:		.db $00				; 00
B7_15fd:		;removed
	.db $f0 $ff

B7_15ff:		ora ($f0, x)	; 01 f0
B7_1601:	.db $3f
B7_1602:		.db $00				; 00
B7_1603:	.db $c7
B7_1604:	.db $ff
B7_1605:		ora ($f8, x)	; 01 f8
B7_1607:	.db $1f
B7_1608:		rts				; 60 


B7_1609:		;removed
	.db $f0 $ff

B7_160b:		.db $00				; 00
B7_160c:	.db $fc
B7_160d:	.db $0f
B7_160e:		.db $00				; 00
B7_160f:	.db $fe $3f $00
B7_1612:	.db $ff
B7_1613:	.db $07
B7_1614:		cpy #$fe		; c0 fe
B7_1616:	.db $1f
B7_1617:		.db $00				; 00
B7_1618:		inc $7803, x	; fe 03 78
B7_161b:		sed				; f8 
B7_161c:	.db $1f
B7_161d:		.db $00				; 00
B7_161e:	.db $ff
B7_161f:	.db $03
B7_1620:		asl $1ffe		; 0e fe 1f
B7_1623:	.db $80
B7_1624:	.db $ff
B7_1625:		ora ($00, x)	; 01 00
B7_1627:	.db $ff
B7_1628:	.db $0f
B7_1629:		cpx #$7f		; e0 7f
B7_162b:		.db $00				; 00
B7_162c:	.db $fc
B7_162d:		sbc ($1f), y	; f1 1f
B7_162f:	.db $80
B7_1630:	.db $7f
B7_1631:	.db $1c
B7_1632:	.db $0c
B7_1633:		cpy $803f		; cc 3f 80
B7_1636:	.db $ff
B7_1637:	.db $03
B7_1638:		.db $00				; 00
B7_1639:	.db $ff
B7_163a:	.db $0f
B7_163b:		cpy #$ff		; c0 ff
B7_163d:		ora ($30, x)	; 01 30
B7_163f:	.db $ff
B7_1640:	.db $03
B7_1641:		sed				; f8 
B7_1642:	.db $3f
B7_1643:		.db $00				; 00
B7_1644:	.db $1f
B7_1645:		ldy $800f, x	; bc 0f 80
B7_1648:	.db $ff
B7_1649:		sta ($03, x)	; 81 03
B7_164b:	.db $ff
B7_164c:	.db $07
B7_164d:		cpx #$7f		; e0 7f
B7_164f:		.db $00				; 00
B7_1650:		;removed
	.db $f0 $ff

B7_1652:		ora ($f8, x)	; 01 f8
B7_1654:	.db $1f
B7_1655:		.db $00				; 00
B7_1656:	.db $1f
B7_1657:		inc $f003, x	; fe 03 f0
B7_165a:	.db $df
B7_165b:		cpy #$c1		; c0 c1
B7_165d:		sbc $f009, y	; f9 09 f0
B7_1660:	.db $3f
B7_1661:		rts				; 60 


B7_1662:		;removed
	.db $f0 $ff

B7_1664:		.db $00				; 00
B7_1665:	.db $fc
B7_1666:	.db $0f
B7_1667:		cpy #$fc		; c0 fc
B7_1669:	.db $3f
B7_166a:		.db $00				; 00
B7_166b:		inc $7c01, x	; fe 01 7c
B7_166e:		sec				; 38 
B7_166f:	.db $3f
B7_1670:		.db $00				; 00
B7_1671:	.db $ff
B7_1672:	.db $03
B7_1673:		stx $0fe7		; 8e e7 0f
B7_1676:	.db $80
B7_1677:	.db $ff
B7_1678:		.db $00				; 00
B7_1679:	.db $5f
B7_167a:	.db $df
B7_167b:	.db $03
B7_167c:		cpx #$7f		; e0 7f
B7_167e:	.db $80
B7_167f:	.db $87
B7_1680:	.db $e3
B7_1681:	.db $03
B7_1682:		cpx #$7f		; e0 7f
B7_1684:		cpy #$f1		; c0 f1
B7_1686:	.db $ff
B7_1687:		.db $00				; 00
B7_1688:		beq B7_16a9 ; f0 1f

B7_168a:		cpx #$3d		; e0 3d
B7_168c:	.db $3c
B7_168d:		.db $00				; 00
B7_168e:		inc $f807, x	; fe 07 f8
B7_1691:	.db $07
B7_1692:	.db $f3
B7_1693:	.db $03
B7_1694:		cpx #$7f		; e0 7f
B7_1696:		;removed
	.db $70 $70

B7_1698:	.db $7f
B7_1699:		.db $00				; 00
B7_169a:		inc $c807, x	; fe 07 c8
B7_169d:	.db $ff
B7_169e:	.db $03
B7_169f:		cpy #$ff		; c0 ff
B7_16a1:		.db $00				; 00
B7_16a2:		ror $0f0c, x	; 7e 0c 0f
B7_16a5:	.db $87
B7_16a6:	.db $1f
B7_16a7:		cpy #$87		; c0 87
B7_16a9:		sbc $c007, x	; fd 07 c0
B7_16ac:	.db $7f
B7_16ad:		cpy #$77		; c0 77
B7_16af:	.db $1c
B7_16b0:	.db $03
B7_16b1:	.db $fc
B7_16b2:	.db $0f
B7_16b3:		cpx #$0f		; e0 0f
B7_16b5:		sbc ($27, x)	; e1 27
B7_16b7:		beq B7_16d8 ; f0 1f

B7_16b9:	.db $7c
B7_16ba:		clc				; 18 
B7_16bb:	.db $3f
B7_16bc:	.db $02
B7_16bd:	.db $ff
B7_16be:	.db $03
B7_16bf:		sed				; f8 
B7_16c0:	.db $57
B7_16c1:		;removed
	.db $10 $e0

B7_16c3:	.db $7f
B7_16c4:		.db $00				; 00
B7_16c5:	.db $df
B7_16c6:	.db $c3
B7_16c7:	.db $c3
B7_16c8:		sbc ($1f, x)	; e1 1f
B7_16ca:		;removed
	.db $f0 $39

B7_16cc:	.db $3c
B7_16cd:	.db $80
B7_16ce:	.db $fc
B7_16cf:	.db $0f
B7_16d0:		beq B7_169d ; f0 cb

B7_16d2:	.db $43
B7_16d3:		rts				; 60 


B7_16d4:		inc $7c03, x	; fe 03 7c
B7_16d7:	.db $3c
B7_16d8:	.db $0f
B7_16d9:	.db $80
B7_16da:	.db $ff
B7_16db:		cpy #$f0		; c0 f0
B7_16dd:	.db $7c
B7_16de:	.db $04
B7_16df:		inc $c007, x	; fe 07 c0
B7_16e2:	.db $ff
B7_16e3:	.db $03
B7_16e4:		cpx #$ff		; e0 ff
B7_16e6:	.db $80
B7_16e7:	.db $87
B7_16e8:	.db $df
B7_16e9:		ora ($f0, x)	; 01 f0
B7_16eb:	.db $3f
B7_16ec:		bvs B7_1766 ; 70 78

B7_16ee:	.db $1f
B7_16ef:	.db $80
B7_16f0:	.db $ff
B7_16f1:		ora ($8f, x)	; 01 8f
B7_16f3:	.db $e3
B7_16f4:	.db $03
B7_16f5:		beq B7_1736 ; f0 3f

B7_16f7:		beq B7_1769 ; f0 70

B7_16f9:	.db $7c
B7_16fa:		.db $00				; 00
B7_16fb:	.db $ff
B7_16fc:		ora ($1f, x)	; 01 1f
B7_16fe:		ror $e01c, x	; 7e 1c e0
B7_1701:	.db $3f
B7_1702:		cpy #$e3		; c0 e3
B7_1704:		adc ($38), y	; 71 38
B7_1706:	.db $fc
B7_1707:		sta ($3e, x)	; 81 3e
B7_1709:	.db $1c
B7_170a:	.db $0f
B7_170b:		cpx #$0f		; e0 0f
B7_170d:		sed				; f8 
B7_170e:	.db $3b
B7_170f:	.db $1f
B7_1710:		.db $00				; 00
B7_1711:	.db $ff
B7_1712:		ora ($be, x)	; 01 be
B7_1714:	.db $8f
B7_1715:	.db $03
B7_1716:		beq B7_1757 ; f0 3f

B7_1718:		cpy #$f3		; c0 f3
B7_171a:		sec				; 38 
B7_171b:		clc				; 18 
B7_171c:		ror $ef03, x	; 7e 03 ef
B7_171f:	.db $33
B7_1720:		cpy #$f8		; c0 f8
B7_1722:	.db $0f
B7_1723:		beq B7_179e ; f0 79

B7_1725:		sec				; 38 
B7_1726:	.db $1c
B7_1727:	.db $7f
B7_1728:		.db $00				; 00
B7_1729:	.db $8f
B7_172a:	.db $e7
B7_172b:		cmp ($f0, x)	; c1 f0
B7_172d:	.db $3c
B7_172e:	.db $0c
B7_172f:	.db $ef
B7_1730:	.db $03
B7_1731:	.db $fc
B7_1732:	.db $03
B7_1733:		sei				; 78 
B7_1734:		sed				; f8 
B7_1735:	.db $0f
B7_1736:		cpy #$7f		; c0 7f
B7_1738:	.db $80
B7_1739:	.db $1f
B7_173a:		inc $c3			; e6 c3
B7_173c:		sbc $8780, y	; f9 80 87
B7_173f:	.db $f3
B7_1740:		ora $07f8, y	; 19 f8 07
B7_1743:		ldy #$ff		; a0 ff
B7_1745:	.db $03
B7_1746:		sed				; f8 
B7_1747:	.db $03
B7_1748:	.db $fc
B7_1749:	.db $03
B7_174a:	.db $1c
B7_174b:	.db $cf
B7_174c:	.db $33
B7_174d:		cpy #$3f		; c0 3f
B7_174f:		tya				; 98 
B7_1750:	.db $bf
B7_1751:		.db $00				; 00
B7_1752:	.db $3f
B7_1753:		cpx #$1f		; e0 1f
B7_1755:		cpy #$3f		; c0 3f
B7_1757:		iny				; c8 
B7_1758:	.db $1f
B7_1759:	.db $83
B7_175a:	.db $87
B7_175b:	.db $83
B7_175c:	.db $ff
B7_175d:		.db $00				; 00
B7_175e:		ror $ff10, x	; 7e 10 ff
B7_1761:	.db $80
B7_1762:	.db $0f
B7_1763:		inc $f843		; ee 43 f8
B7_1766:	.db $0f
B7_1767:		sed				; f8 
B7_1768:	.db $0f
B7_1769:		cpy #$1f		; c0 1f
B7_176b:	.db $e2
B7_176c:	.db $3f
B7_176d:		cpy #$0f		; c0 0f
B7_176f:		sbc ($13, x)	; e1 13
B7_1771:		sed				; f8 
B7_1772:	.db $c3
B7_1773:		adc $fe00, x	; 7d 00 fe
B7_1776:		sta ($ff, x)	; 81 ff
B7_1778:		.db $00				; 00
B7_1779:		ldx $ff03, y	; be 03 ff
B7_177c:		ora ($f8, x)	; 01 f8
B7_177e:	.db $63
B7_177f:	.db $3c
B7_1780:		.db $00				; 00
B7_1781:	.db $3f
B7_1782:		sty $c0ff		; 8c ff c0
B7_1785:	.db $3f
B7_1786:		iny				; c8 
B7_1787:	.db $0f
B7_1788:		cpy #$3f		; c0 3f
B7_178a:		cpx #$1f		; e0 1f
B7_178c:		cpy #$3f		; c0 3f
B7_178e:		cpy #$5f		; c0 5f
B7_1790:		cpy #$1f		; c0 1f
B7_1792:		inc $f801, x	; fe 01 f8
B7_1795:		ora ($fe, x)	; 01 fe
B7_1797:	.db $03
B7_1798:	.db $fc
B7_1799:		;removed
	.db $30 $1f

B7_179b:	.db $80
B7_179c:	.db $ff
B7_179d:		.db $00				; 00
B7_179e:	.db $ff
B7_179f:		ora ($fe, x)	; 01 fe
B7_17a1:		.db $00				; 00
B7_17a2:	.db $ff
B7_17a3:		ora ($ff, x)	; 01 ff
B7_17a5:	.db $63
B7_17a6:		sec				; 38 
B7_17a7:		.db $00				; 00
B7_17a8:	.db $1f
B7_17a9:	.db $c7
B7_17aa:	.db $7f
B7_17ab:		cpy #$0f		; c0 0f
B7_17ad:		sbc ($39, x)	; e1 39
B7_17af:		;removed
	.db $f0 $1f

B7_17b1:		cpy #$0f		; c0 0f
B7_17b3:		cpx #$0f		; e0 0f
B7_17b5:		beq B7_17f6 ; f0 3f

B7_17b7:		cpy #$3f		; c0 3f
B7_17b9:		dec $f003		; ce 03 f0
B7_17bc:	.db $43
B7_17bd:		sed				; f8 
B7_17be:	.db $1f
B7_17bf:		sed				; f8 
B7_17c0:	.db $43
B7_17c1:	.db $7c
B7_17c2:		.db $00				; 00
B7_17c3:		inc $f703, x	; fe 03 f7
B7_17c6:	.db $03
B7_17c7:		sed				; f8 
B7_17c8:	.db $63
B7_17c9:	.db $7c
B7_17ca:	.db $03
B7_17cb:		dec $7bc1, x	; de c1 7b
B7_17ce:		.db $00				; 00
B7_17cf:		ror $ff00, x	; 7e 00 ff
B7_17d2:		sta ($7f, x)	; 81 7f
B7_17d4:	.db $80
B7_17d5:	.db $3f
B7_17d6:		cpy #$3f		; c0 3f
B7_17d8:		cpx #$7f		; e0 7f
B7_17da:		.db $00				; 00
B7_17db:	.db $7c
B7_17dc:	.db $0c
B7_17dd:	.db $ff
B7_17de:		sta ($c3, x)	; 81 c3
B7_17e0:		sbc ($1f), y	; f1 1f
B7_17e2:		cpy #$0f		; c0 0f
B7_17e4:		cpy #$ff		; c0 ff
B7_17e6:		cpy #$1f		; c0 1f
B7_17e8:	.db $fc
B7_17e9:	.db $07
B7_17ea:		beq B7_1773 ; f0 87

B7_17ec:		cpx #$7c		; e0 7c
B7_17ee:		asl $087e		; 0e 7e 08
B7_17f1:	.db $cf
B7_17f2:		cmp ($e1, x)	; c1 e1
B7_17f4:		beq B7_1814 ; f0 1e

B7_17f6:		cpy $9863		; cc 63 98
B7_17f9:	.db $9f
B7_17fa:		cmp ($39, x)	; c1 39
B7_17fc:		sed				; f8 
B7_17fd:	.db $0f
B7_17fe:		cpy #$e7		; c0 e7
B7_1800:		cpx #$3f		; e0 3f
B7_1802:		.db $00				; 00
B7_1803:		ror $c78c, x	; 7e 8c c7
B7_1806:		sbc ($00), y	; f1 00
B7_1808:	.db $ff
B7_1809:		sta ($1f, x)	; 81 1f
B7_180b:		cpx #$cf		; e0 cf
B7_180d:		cpx #$1f		; e0 1f
B7_180f:		rts				; 60 


B7_1810:	.db $7c
B7_1811:	.db $1f
B7_1812:		cpy #$0f		; c0 0f
B7_1814:		sed				; f8 
B7_1815:		dey				; 88 
B7_1816:	.db $ff
B7_1817:		.db $00				; 00
B7_1818:	.db $ff
B7_1819:		.db $00				; 00
B7_181a:	.db $ff
B7_181b:		.db $00				; 00
B7_181c:	.db $8f
B7_181d:	.db $f3
B7_181e:		php				; 08 
B7_181f:	.db $fc
B7_1820:	.db $1f
B7_1821:	.db $80
B7_1822:	.db $7f
B7_1823:	.db $80
B7_1824:	.db $3f
B7_1825:	.db $9c
B7_1826:	.db $07
B7_1827:		cpy #$ff		; c0 ff
B7_1829:		adc ($7d, x)	; 61 7d
B7_182b:	.db $0c
B7_182c:		asl $e71e		; 0e 1e e7
B7_182f:	.db $0b
B7_1830:		cpx #$7b		; e0 7b
B7_1832:		sty $c187		; 8c 87 c1
B7_1835:	.db $e7
B7_1836:		and ($7c), y	; 31 7c
B7_1838:		clc				; 18 
B7_1839:		asl $03fe, x	; 1e fe 03
B7_183c:		cpx #$8f		; e0 8f
B7_183e:	.db $fc
B7_183f:	.db $80
B7_1840:	.db $3f
B7_1841:		bne B7_1846 ; d0 03

B7_1843:		sbc $f807, x	; fd 07 f8
B7_1846:	.db $0f
B7_1847:		cpx #$1b		; e0 1b
B7_1849:		bmi B7_1829 ; 30 de

B7_184b:	.db $63
B7_184c:		cpx #$fd		; e0 fd
B7_184e:	.db $03
B7_184f:		sed				; f8 
B7_1850:	.db $07
B7_1851:		sei				; 78 
B7_1852:	.db $1e $f7 $00
B7_1855:		beq B7_17da ; f0 83

B7_1857:	.db $fc
B7_1858:		ora ($ff, x)	; 01 ff
B7_185a:	.db $04
B7_185b:	.db $e2
B7_185c:	.db $7f
B7_185d:		.db $00				; 00
B7_185e:	.db $fc
B7_185f:	.db $17
B7_1860:	.db $fc
B7_1861:		cpy #$c3		; c0 c3
B7_1863:		sbc $fe06, x	; fd 06 fe
B7_1866:		.db $00				; 00
B7_1867:	.db $8f
B7_1868:		sed				; f8 
B7_1869:	.db $03
B7_186a:		sed				; f8 
B7_186b:		adc $e007, x	; 7d 07 e0
B7_186e:	.db $0f
B7_186f:		cpx #$1f		; e0 1f
B7_1871:		cpx $1f			; e4 1f
B7_1873:		.db $00				; 00
B7_1874:	.db $fc
B7_1875:	.db $4f
B7_1876:		bcs B7_18f7 ; b0 7f

B7_1878:		.db $00				; 00
B7_1879:	.db $07
B7_187a:	.db $f3
B7_187b:	.db $1f
B7_187c:		beq B7_189d ; f0 1f

B7_187e:		sed				; f8 
B7_187f:		.db $00				; 00
B7_1880:	.db $ff
B7_1881:		ora ($fc, x)	; 01 fc
B7_1883:		eor #$1c		; 49 1c
B7_1885:		sec				; 38 
B7_1886:		dec $e007, x	; de 07 e0
B7_1889:	.db $3f
B7_188a:		cpx #$e1		; e0 e1
B7_188c:	.db $7f
B7_188d:		.db $00				; 00
B7_188e:	.db $ff
B7_188f:	.db $03
B7_1890:		sei				; 78 
B7_1891:		;removed
	.db $f0 $3f

B7_1893:	.db $80
B7_1894:	.db $3f
B7_1895:		cpy #$1f		; c0 1f
B7_1897:		.db $00				; 00
B7_1898:		inc $8077, x	; fe 77 80
B7_189b:	.db $ff
B7_189c:		.db $00				; 00
B7_189d:	.db $3f
B7_189e:		dec $3f			; c6 3f
B7_18a0:		cpy #$7f		; c0 7f
B7_18a2:		.db $00				; 00
B7_18a3:	.db $e2
B7_18a4:	.db $ff
B7_18a5:	.db $03
B7_18a6:		sec				; 38 
B7_18a7:	.db $dc
B7_18a8:	.db $0f
B7_18a9:		cpy #$1f		; c0 1f
B7_18ab:		sed				; f8 
B7_18ac:	.db $07
B7_18ad:	.db $fc
B7_18ae:	.db $07
B7_18af:		sed				; f8 
B7_18b0:		.db $00				; 00
B7_18b1:	.db $df
B7_18b2:		cpx #$3f		; e0 3f
B7_18b4:	.db $80
B7_18b5:		adc ($ff, x)	; 61 ff
B7_18b7:		.db $00				; 00
B7_18b8:	.db $ff
B7_18b9:	.db $03
B7_18ba:		sed				; f8 
B7_18bb:	.db $07
B7_18bc:		beq B7_18f1 ; f0 33

B7_18be:		beq B7_18cf ; f0 0f

B7_18c0:		.db $00				; 00
B7_18c1:	.db $fc
B7_18c2:	.db $3f
B7_18c3:		cpy #$8f		; c0 8f
B7_18c5:	.db $ff
B7_18c6:		.db $00				; 00
B7_18c7:		sed				; f8 
B7_18c8:	.db $1f
B7_18c9:		cpy #$7f		; c0 7f
B7_18cb:		cpy #$3e		; c0 3e
B7_18cd:		cpx #$3f		; e0 3f
B7_18cf:		.db $00				; 00
B7_18d0:	.db $ff
B7_18d1:		ora ($cc, x)	; 01 cc
B7_18d3:	.db $1f
B7_18d4:		bvs B7_18f5 ; 70 1f

B7_18d6:		beq B7_18f7 ; f0 1f

B7_18d8:		cpy #$ff		; c0 ff
B7_18da:	.db $02
B7_18db:		cpy #$ff		; c0 ff
B7_18dd:		ldy #$8f		; a0 8f
B7_18df:		cpx #$0f		; e0 0f
B7_18e1:		sei				; 78 
B7_18e2:		;removed
	.db $f0 $1f

B7_18e4:		.db $00				; 00
B7_18e5:	.db $ff
B7_18e6:	.db $03
B7_18e7:		sed				; f8 
B7_18e8:	.db $07
B7_18e9:		sed				; f8 
B7_18ea:	.db $03
B7_18eb:	.db $fc
B7_18ec:	.db $03
B7_18ed:	.db $7f
B7_18ee:		cpx #$07		; e0 07
B7_18f0:	.db $fc
B7_18f1:	.db $03
B7_18f2:		dec $07f1		; ce f1 07
B7_18f5:		beq B7_187a ; f0 83

B7_18f7:	.db $7f
B7_18f8:		.db $00				; 00
B7_18f9:	.db $ff
B7_18fa:		.db $00				; 00
B7_18fb:	.db $3f
B7_18fc:		sed				; f8 
B7_18fd:	.db $07
B7_18fe:		cpx #$ff		; e0 ff
B7_1900:	.db $03
B7_1901:		sec				; 38 
B7_1902:		beq B7_1943 ; f0 3f

B7_1904:	.db $80
B7_1905:	.db $3f
B7_1906:		cpx #$03		; e0 03
B7_1908:		inc $f00f, x	; fe 0f f0
B7_190b:	.db $0f
B7_190c:		bvs B7_188e ; 70 80

B7_190e:	.db $ff
B7_190f:		ora ($fe, x)	; 01 fe
B7_1911:		ora ($1f, x)	; 01 1f
B7_1913:		cpx #$3f		; e0 3f
B7_1915:		cpy #$ff		; c0 ff
B7_1917:	.db $80
B7_1918:	.db $0f
B7_1919:		sed				; f8 
B7_191a:	.db $0f
B7_191b:		beq B7_195c ; f0 3f

B7_191d:		cpy #$40		; c0 40
B7_191f:	.db $ff
B7_1920:	.db $03
B7_1921:	.db $fc
B7_1922:	.db $07
B7_1923:		asl $7fe0		; 0e e0 7f
B7_1926:	.db $80
B7_1927:	.db $7f
B7_1928:		cpy #$07		; c0 07
B7_192a:		sed				; f8 
B7_192b:	.db $0f
B7_192c:		sed				; f8 
B7_192d:	.db $0f
B7_192e:		beq B7_18f1 ; f0 c1

B7_1930:	.db $ff
B7_1931:		.db $00				; 00
B7_1932:	.db $ff
B7_1933:		ora ($3c, x)	; 01 3c
B7_1935:		iny				; c8 
B7_1936:	.db $3f
B7_1937:		cpy #$7f		; c0 7f
B7_1939:	.db $80
B7_193a:	.db $03
B7_193b:	.db $ff
B7_193c:	.db $03
B7_193d:	.db $fc
B7_193e:	.db $0f
B7_193f:		cpx #$e1		; e0 e1
B7_1941:	.db $3f
B7_1942:	.db $80
B7_1943:	.db $ff
B7_1944:		.db $00				; 00
B7_1945:		asl $0ffc		; 0e fc 0f
B7_1948:		cpx #$3f		; e0 3f
B7_194a:		cpy #$03		; c0 03
B7_194c:	.db $ff
B7_194d:	.db $03
B7_194e:	.db $fc
B7_194f:	.db $0f
B7_1950:		cpx #$f0		; e0 f0
B7_1952:	.db $7f
B7_1953:		.db $00				; 00
B7_1954:	.db $ff
B7_1955:		.db $00				; 00
B7_1956:	.db $07
B7_1957:		sed				; f8 
B7_1958:	.db $1f
B7_1959:		cpx #$7f		; e0 7f
B7_195b:		.db $00				; 00
B7_195c:		cmp ($ff, x)	; c1 ff
B7_195e:		ora ($fe, x)	; 01 fe
B7_1960:	.db $03
B7_1961:		rol $3fe0, x	; 3e e0 3f
B7_1964:		cpy #$ff		; c0 ff
B7_1966:		.db $00				; 00
B7_1967:	.db $03
B7_1968:		inc $f00f, x	; fe 0f f0
B7_196b:	.db $3f
B7_196c:		cpy #$c0		; c0 c0
B7_196e:	.db $ff
B7_196f:		.db $00				; 00
B7_1970:		inc $3c03, x	; fe 03 3c
B7_1973:		;removed
	.db $f0 $3f

B7_1975:		cpx #$3f		; e0 3f
B7_1977:		cpy #$07		; c0 07
B7_1979:		inc $fc03, x	; fe 03 fc
B7_197c:	.db $03
B7_197d:		cpx #$e1		; e0 e1
B7_197f:	.db $7f
B7_1980:		.db $00				; 00
B7_1981:	.db $ff
B7_1982:	.db $03
B7_1983:		sei				; 78 
B7_1984:		tya				; 98 
B7_1985:	.db $7f
B7_1986:		cpy #$7f		; c0 7f
B7_1988:		.db $00				; 00
B7_1989:	.db $0f
B7_198a:	.db $fa
B7_198b:	.db $07
B7_198c:		sed				; f8 
B7_198d:	.db $0f
B7_198e:		bvs B7_1980 ; 70 f0

B7_1990:	.db $3f
B7_1991:		.db $00				; 00
B7_1992:	.db $ff
B7_1993:		ora ($0e, x)	; 01 0e
B7_1995:		inc $e00f, x	; fe 0f e0
B7_1998:	.db $3f
B7_1999:	.db $80
B7_199a:	.db $0f
B7_199b:		inc $fe01, x	; fe 01 fe
B7_199e:	.db $03
B7_199f:		cpx #$61		; e0 61
B7_19a1:		inc $fd83, x	; fe 83 fd
B7_19a4:		ora ($1c, x)	; 01 1c
B7_19a6:	.db $fc
B7_19a7:	.db $0f
B7_19a8:		cpx #$1f		; e0 1f
B7_19aa:		cpy #$83		; c0 83
B7_19ac:	.db $fb
B7_19ad:	.db $03
B7_19ae:	.db $fc
B7_19af:	.db $07
B7_19b0:		beq B7_19b3 ; f0 01

B7_19b2:	.db $ff
B7_19b3:		sta ($7f, x)	; 81 7f
B7_19b5:	.db $80
B7_19b6:	.db $0f
B7_19b7:		sed				; f8 
B7_19b8:	.db $1f
B7_19b9:		cpx #$23		; e0 23
B7_19bb:	.db $7f
B7_19bc:		ora ($fc, x)	; 01 fc
B7_19be:	.db $0c
B7_19bf:	.db $6f
B7_19c0:		cpx #$1f		; e0 1f
B7_19c2:		rti				; 40 


B7_19c3:	.db $9f
B7_19c4:	.db $f7
B7_19c5:		.db $00				; 00
B7_19c6:		ror $1f28, x	; 7e 28 1f
B7_19c9:		cpx #$3f		; e0 3f
B7_19cb:		cpy #$0f		; c0 0f
B7_19cd:		inc $fc01, x	; fe 01 fc
B7_19d0:		cpy #$7f		; c0 7f
B7_19d2:		cpy #$1f		; c0 1f
B7_19d4:		cpy #$1f		; c0 1f
B7_19d6:		beq B7_19f7 ; f0 1f

B7_19d8:		beq B7_19e1 ; f0 07

B7_19da:		sed				; f8 
B7_19db:	.db $0f
B7_19dc:		beq B7_199f ; f0 c1

B7_19de:	.db $7f
B7_19df:		.db $00				; 00
B7_19e0:	.db $ff
B7_19e1:		.db $00				; 00
B7_19e2:		and $11fa, y	; 39 fa 11
B7_19e5:	.db $47
B7_19e6:		rol $c20f, x	; 3e 0f c2
B7_19e9:	.db $1f
B7_19ea:		sed				; f8 
B7_19eb:	.db $1f
B7_19ec:		cpy #$3f		; c0 3f
B7_19ee:		cpy #$03		; c0 03
B7_19f0:		inc $fc03, x	; fe 03 fc
B7_19f3:		adc ($1c, x)	; 61 1c
B7_19f5:		sed				; f8 
B7_19f6:	.db $0f
B7_19f7:	.db $c2
B7_19f8:	.db $3f
B7_19f9:	.db $03
B7_19fa:	.db $fb
B7_19fb:		rts				; 60 


B7_19fc:	.db $0c
B7_19fd:	.db $ff
B7_19fe:		ora ($fd, x)	; 01 fd
B7_1a00:		ora ($fa, x)	; 01 fa
B7_1a02:		bmi B7_1a83 ; 30 7f

B7_1a04:		bpl B7_1a84 ; 10 7e

B7_1a06:		sec				; 38 
B7_1a07:		asl $c03f		; 0e 3f c0
B7_1a0a:	.db $7f
B7_1a0b:		.db $00				; 00
B7_1a0c:		inc $3f01, x	; fe 01 3f
B7_1a0f:		cpy #$3f		; c0 3f
B7_1a11:		cpy #$1f		; c0 1f
B7_1a13:		cpx $3f03		; ec 03 3f
B7_1a16:		cpx #$3f		; e0 3f
B7_1a18:	.db $80
B7_1a19:	.db $7f
B7_1a1a:		cpy #$0f		; c0 0f
B7_1a1c:		sed				; f8 
B7_1a1d:	.db $0f
B7_1a1e:		beq B7_1a2b ; f0 0b

B7_1a20:		inc $81, x		; f6 81
B7_1a22:	.db $0f
B7_1a23:		beq B7_1a44 ; f0 1f

B7_1a25:		cpx #$3f		; e0 3f
B7_1a27:		beq B7_1a2c ; f0 03

B7_1a29:	.db $fc
B7_1a2a:	.db $03
B7_1a2b:	.db $fc
B7_1a2c:		ora ($7f, x)	; 01 7f
B7_1a2e:		cpy #$0f		; c0 0f
B7_1a30:		sed				; f8 
B7_1a31:	.db $0f
B7_1a32:		;removed
	.db $f0 $0f

B7_1a34:		beq B7_1a3d ; f0 07

B7_1a36:	.db $fc
B7_1a37:	.db $03
B7_1a38:		inc $8f01, x	; fe 01 8f
B7_1a3b:		sed				; f8 
B7_1a3c:		rts				; 60 


B7_1a3d:		inc $fc01, x	; fe 01 fc
B7_1a40:	.db $03
B7_1a41:		ror $ff80, x	; 7e 80 ff
B7_1a44:		.db $00				; 00
B7_1a45:	.db $ff
B7_1a46:		adc ($70, x)	; 61 70
B7_1a48:	.db $3c
B7_1a49:	.db $dc
B7_1a4a:	.db $0f
B7_1a4b:		cpy #$ef		; c0 ef
B7_1a4d:		clc				; 18 
B7_1a4e:		cpx #$7f		; e0 7f
B7_1a50:	.db $02
B7_1a51:		inc $f003, x	; fe 03 f0
B7_1a54:	.db $0f
B7_1a55:		inx				; e8 
B7_1a56:	.db $f7
B7_1a57:		.db $00				; 00
B7_1a58:		sed				; f8 
B7_1a59:		ora $02fe		; 0d fe 02
B7_1a5c:	.db $ff
B7_1a5d:		ora ($f8, x)	; 01 f8
B7_1a5f:	.db $0f
B7_1a60:		cpy #$1f		; c0 1f
B7_1a62:	.db $fc
B7_1a63:	.db $03
B7_1a64:		;removed
	.db $f0 $0f

B7_1a66:		inc $f580		; ee 80 f5
B7_1a69:		eor ($f0, x)	; 41 f0
B7_1a6b:	.db $ff
B7_1a6c:		.db $00				; 00
B7_1a6d:	.db $fc
B7_1a6e:	.db $07
B7_1a6f:		beq B7_1a80 ; f0 0f

B7_1a71:		cpx #$bf		; e0 bf
B7_1a73:		.db $00				; 00
B7_1a74:		sbc $f007, x	; fd 07 f0
B7_1a77:		sei				; 78 
B7_1a78:	.db $3f
B7_1a79:		.db $00				; 00
B7_1a7a:	.db $9f
B7_1a7b:	.db $2f
B7_1a7c:	.db $80
B7_1a7d:	.db $ff
B7_1a7e:		.db $00				; 00
B7_1a7f:	.db $e7
B7_1a80:	.db $6f
B7_1a81:		.db $00				; 00
B7_1a82:	.db $f7
B7_1a83:	.db $03
B7_1a84:	.db $fc
B7_1a85:	.db $07
B7_1a86:		;removed
	.db $f0 $e2

B7_1a88:	.db $1f
B7_1a89:		cpy #$3f		; c0 3f
B7_1a8b:	.db $80
B7_1a8c:	.db $3f
B7_1a8d:		cpx #$0f		; e0 0f
B7_1a8f:		sed				; f8 
B7_1a90:	.db $07
B7_1a91:	.db $fc
B7_1a92:	.db $07
B7_1a93:		sty $87e3		; 8c e3 87
B7_1a96:		sbc ($01), y	; f1 01
B7_1a98:		inc $f803, x	; fe 03 f8
B7_1a9b:	.db $0f
B7_1a9c:		sed				; f8 
B7_1a9d:	.db $c2
B7_1a9e:		adc $3514, y	; 79 14 35
B7_1aa1:	.db $dc
B7_1aa2:	.db $1f
B7_1aa3:		cpx #$07		; e0 07
B7_1aa5:		cpx $079d		; ec 9d 07
B7_1aa8:		cpx #$e3		; e0 e3
B7_1aaa:	.db $7f
B7_1aab:		.db $00				; 00
B7_1aac:		ror $ff80, x	; 7e 80 ff
B7_1aaf:		ora ($fe, x)	; 01 fe
B7_1ab1:		.db $00				; 00
B7_1ab2:		inc $0807, x	; fe 07 08
B7_1ab5:		sbc $e03f, y	; f9 3f e0
B7_1ab8:	.db $07
B7_1ab9:		lsr $1ff8		; 4e f8 1f
B7_1abc:		cpy #$e3		; c0 e3
B7_1abe:	.db $7f
B7_1abf:		.db $00				; 00
B7_1ac0:	.db $7f
B7_1ac1:		.db $00				; 00
B7_1ac2:		inc $c00f, x	; fe 0f c0
B7_1ac5:	.db $f4
B7_1ac6:	.db $7f
B7_1ac7:		.db $00				; 00
B7_1ac8:	.db $ff
B7_1ac9:		.db $00				; 00
B7_1aca:		inc $8043, x	; fe 43 80
B7_1acd:		inc $f807, x	; fe 07 f8
B7_1ad0:	.db $07
B7_1ad1:		bvs B7_1abe ; 70 eb

B7_1ad3:	.db $1f
B7_1ad4:		.db $00				; 00
B7_1ad5:	.db $ff
B7_1ad6:	.db $80
B7_1ad7:	.db $7f
B7_1ad8:		.db $00				; 00
B7_1ad9:	.db $3f
B7_1ada:		;removed
	.db $f0 $1f

B7_1adc:		cpy #$1f		; c0 1f
B7_1ade:		stx $fe			; 86 fe
B7_1ae0:	.db $03
B7_1ae1:		cpx #$ff		; e0 ff
B7_1ae3:	.db $03
B7_1ae4:		cpx #$03		; e0 03
B7_1ae6:	.db $ff
B7_1ae7:	.db $03
B7_1ae8:		bcs B7_1adc ; b0 f2

B7_1aea:	.db $7f
B7_1aeb:		.db $00				; 00
B7_1aec:		ror $ff00, x	; 7e 00 ff
B7_1aef:		sta ($0f, x)	; 81 0f
B7_1af1:		;removed
	.db $f0 $ff

B7_1af3:		.db $00				; 00
B7_1af4:		tax				; aa 
B7_1af5:		rol $ff85, x	; 3e 85 ff
B7_1af8:		ora ($b8, x)	; 01 b8
B7_1afa:		asl $ff			; 06 ff
B7_1afc:	.db $07
B7_1afd:		rts				; 60 


B7_1afe:	.db $ff
B7_1aff:		ora ($f0, x)	; 01 f0
B7_1b01:	.db $0f
B7_1b02:		beq B7_1b33 ; f0 2f

B7_1b04:		jmp $ff00		; 4c 00 ff


B7_1b07:	.db $07
B7_1b08:	.db $fc
B7_1b09:		ora ($ff, x)	; 01 ff
B7_1b0b:	.db $80
B7_1b0c:	.db $1f
B7_1b0d:		cpx #$3f		; e0 3f
B7_1b0f:		beq B7_1b15 ; f0 04

B7_1b11:	.db $fc
B7_1b12:	.db $1f
B7_1b13:		cpx #$0f		; e0 0f
B7_1b15:		;removed
	.db $f0 $0f

B7_1b17:		sed				; f8 
B7_1b18:	.db $07
B7_1b19:		;removed
	.db $f0 $c2

B7_1b1b:	.db $ff
B7_1b1c:		.db $00				; 00
B7_1b1d:	.db $7c
B7_1b1e:	.db $fc
B7_1b1f:	.db $03
B7_1b20:		beq B7_1b29 ; f0 07

B7_1b22:	.db $fc
B7_1b23:	.db $03
B7_1b24:		ror $ff00, x	; 7e 00 ff
B7_1b27:		ora ($3f, x)	; 01 3f
B7_1b29:		cpy #$7f		; c0 7f
B7_1b2b:		cpx #$07		; e0 07
B7_1b2d:		sed				; f8 
B7_1b2e:	.db $0f
B7_1b2f:		ror $fc00, x	; 7e 00 fc
B7_1b32:	.db $5f
B7_1b33:		rti				; 40 


B7_1b34:	.db $17
B7_1b35:	.db $7c
B7_1b36:	.db $14
B7_1b37:	.db $ff
B7_1b38:		ora ($f8, x)	; 01 f8
B7_1b3a:	.db $0f
B7_1b3b:		sta ($ff, x)	; 81 ff
B7_1b3d:	.db $03
B7_1b3e:		beq B7_1b57 ; f0 17

B7_1b40:		cpy $af			; c4 af
B7_1b42:		ora $4d			; 05 4d
B7_1b44:	.db $0b
B7_1b45:	.db $fc
B7_1b46:	.db $1f
B7_1b47:		cpx #$0f		; e0 0f
B7_1b49:	.db $54
B7_1b4a:		sbc ($3f), y	; f1 3f
B7_1b4c:		.db $00				; 00
B7_1b4d:	.db $fc
B7_1b4e:	.db $ab
B7_1b4f:		ror a			; 6a
B7_1b50:		bpl B7_1b4c ; 10 fa

B7_1b52:		beq B7_1b93 ; f0 3f

B7_1b54:		.db $00				; 00
B7_1b55:	.db $ff
B7_1b56:	.db $0c
B7_1b57:		cpx #$e3		; e0 e3
B7_1b59:	.db $7f
B7_1b5a:		.db $00				; 00
B7_1b5b:		inc $7680, x	; fe 80 76
B7_1b5e:		ror $3c01, x	; 7e 01 3c
B7_1b61:	.db $fc
B7_1b62:	.db $1f
B7_1b63:	.db $80
B7_1b64:	.db $1f
B7_1b65:		beq B7_1aea ; f0 83

B7_1b67:	.db $fa
B7_1b68:	.db $03
B7_1b69:		sed				; f8 
B7_1b6a:	.db $17
B7_1b6b:		sed				; f8 
B7_1b6c:		ora $ff00, x	; 1d 00 ff
B7_1b6f:		sta ($fd, x)	; 81 fd
B7_1b71:		bcs B7_1b77 ; b0 04

B7_1b73:	.db $fc
B7_1b74:	.db $1f
B7_1b75:		cpx #$1f		; e0 1f
B7_1b77:		cpx #$03		; e0 03
B7_1b79:	.db $ff
B7_1b7a:		.db $00				; 00
B7_1b7b:	.db $7f
B7_1b7c:		.db $00				; 00
B7_1b7d:		inc $0e1f, x	; fe 1f 0e
B7_1b80:		beq B7_1ba1 ; f0 1f

B7_1b82:		cpx #$07		; e0 07
B7_1b84:	.db $fc
B7_1b85:	.db $03
B7_1b86:		sed				; f8 
B7_1b87:	.db $83
B7_1b88:	.db $7f
B7_1b89:		rti				; 40 


B7_1b8a:	.db $7c
B7_1b8b:	.db $3c
B7_1b8c:		beq B7_1c0d ; f0 7f

B7_1b8e:		.db $00				; 00
B7_1b8f:	.db $7c
B7_1b90:		asl $e01f		; 0e 1f e0
B7_1b93:	.db $3f
B7_1b94:		cpy #$af		; c0 af
B7_1b96:	.db $3c
B7_1b97:	.db $22
B7_1b98:	.db $17
B7_1b99:		beq B7_1bba ; f0 1f

B7_1b9b:		beq B7_1bac ; f0 0f

B7_1b9d:		cpx #$3f		; e0 3f
B7_1b9f:		cpy #$1f		; c0 1f
B7_1ba1:		beq B7_1bc2 ; f0 1f

B7_1ba3:		cpy #$5f		; c0 5f
B7_1ba5:		sta ($f9, x)	; 81 f9
B7_1ba7:		ora $f8			; 05 f8
B7_1ba9:	.db $1f
B7_1baa:		inx				; e8 
B7_1bab:	.db $03
B7_1bac:		inc $be01, x	; fe 01 be
B7_1baf:		asl $0ff8		; 0e f8 0f
B7_1bb2:		cpx #$07		; e0 07
B7_1bb4:	.db $6f
B7_1bb5:		sta ($8d, x)	; 81 8d
B7_1bb7:		inc $f803, x	; fe 03 f8
B7_1bba:		ora ($fc, x)	; 01 fc
B7_1bbc:	.db $1f
B7_1bbd:		;removed
	.db $f0 $02

B7_1bbf:		inc $f807, x	; fe 07 f8
B7_1bc2:	.db $03
B7_1bc3:		sei				; 78 
B7_1bc4:	.db $3f
B7_1bc5:		sta ($fd, x)	; 81 fd
B7_1bc7:		.db $00				; 00
B7_1bc8:	.db $f3
B7_1bc9:	.db $87
B7_1bca:		sbc $bd80, y	; f9 80 bd
B7_1bcd:		ora ($ff, x)	; 01 ff
B7_1bcf:	.db $03
B7_1bd0:		sed				; f8 
B7_1bd1:		sta ($7f, x)	; 81 7f
B7_1bd3:		.db $00				; 00
B7_1bd4:	.db $bf
B7_1bd5:	.db $e3
B7_1bd6:		.db $00				; 00
B7_1bd7:		inc $fc03, x	; fe 03 fc
B7_1bda:	.db $03
B7_1bdb:		asl $0ff8, x	; 1e f8 0f
B7_1bde:		cpx $07			; e4 07
B7_1be0:	.db $fc
B7_1be1:		ora ($fc, x)	; 01 fc
B7_1be3:	.db $a7
B7_1be4:	.db $03
B7_1be5:	.db $f2
B7_1be6:	.db $43
B7_1be7:		sbc $3e01, x	; fd 01 3e
B7_1bea:		sbc ($07, x)	; e1 07
B7_1bec:		cpx #$ff		; e0 ff
B7_1bee:		cpy #$73		; c0 73
B7_1bf0:		bcs B7_1bc3 ; b0 d1

B7_1bf2:	.db $0f
B7_1bf3:		iny				; c8 
B7_1bf4:	.db $0f
B7_1bf5:		cpx #$ef		; e0 ef
B7_1bf7:		beq B7_1bba ; f0 c1

B7_1bf9:		;removed
	.db $f0 $e1

B7_1bfb:	.db $7b
B7_1bfc:		jsr $c94f		; 20 4f c9
B7_1bff:	.db $0b
B7_1c00:	.db $e7
B7_1c01:		eor ($ff, x)	; 41 ff
B7_1c03:		.db $00				; 00
B7_1c04:	.db $fc
B7_1c05:	.db $0f
B7_1c06:		cpx #$e3		; e0 e3
B7_1c08:		;removed
	.db $b0 $f4

B7_1c0a:		ldy $15, x		; b4 15
B7_1c0c:		cld				; d8 
B7_1c0d:	.db $0f
B7_1c0e:		iny				; c8 
B7_1c0f:	.db $5f
B7_1c10:		cpy #$f7		; c0 f7
B7_1c12:		rts				; 60 


B7_1c13:		ldy $c02f		; ac 2f c0
B7_1c16:	.db $ff
B7_1c17:	.db $80
B7_1c18:	.db $fc
B7_1c19:		rts				; 60 


B7_1c1a:	.db $3c
B7_1c1b:		clc				; 18 
B7_1c1c:	.db $3f
B7_1c1d:	.db $3c
B7_1c1e:		asl $fc			; 06 fc
B7_1c20:	.db $0f
B7_1c21:	.db $0f
B7_1c22:		cpx $0f			; e4 0f
B7_1c24:		cpx #$0f		; e0 0f
B7_1c26:		beq B7_1c37 ; f0 0f

B7_1c28:		cpx #$3f		; e0 3f
B7_1c2a:	.db $7c
B7_1c2b:		dey				; 88 
B7_1c2c:	.db $3f
B7_1c2d:		cpy #$7f		; c0 7f
B7_1c2f:	.db $80
B7_1c30:	.db $1f
B7_1c31:	.db $9b
B7_1c32:	.db $80
B7_1c33:	.db $ff
B7_1c34:		.db $00				; 00
B7_1c35:	.db $ff
B7_1c36:	.db $04
B7_1c37:		adc $197c, y	; 79 7c 19
B7_1c3a:		sed				; f8 
B7_1c3b:	.db $07
B7_1c3c:	.db $fc
B7_1c3d:	.db $03
B7_1c3e:		beq B7_1c33 ; f0 f3

B7_1c40:		clc				; 18 
B7_1c41:		cpx #$3f		; e0 3f
B7_1c43:		cpy #$fb		; c0 fb
B7_1c45:		bmi B7_1cbf ; 30 78

B7_1c47:	.db $7c
B7_1c48:		cpx #$7e		; e0 7e
B7_1c4a:		.db $00				; 00
B7_1c4b:	.db $ff
B7_1c4c:	.db $80
B7_1c4d:		adc $a0fc, y	; 79 fc a0
B7_1c50:		beq B7_1c69 ; f0 17

B7_1c52:		sed				; f8 
B7_1c53:	.db $07
B7_1c54:		cpx #$e7		; e0 e7
B7_1c56:		and ($e2, x)	; 21 e2
B7_1c58:	.db $77
B7_1c59:		cpy #$7f		; c0 7f
B7_1c5b:		jsr $1e7c		; 20 7c 1e
B7_1c5e:		stx $fe			; 86 fe
B7_1c60:		ora ($ff, x)	; 01 ff
B7_1c62:		ora ($f8, x)	; 01 f8
B7_1c64:		and ($7c), y	; 31 7c
B7_1c66:		;removed
	.db $70 $1e

B7_1c68:		sed				; f8 
B7_1c69:	.db $0f
B7_1c6a:		cpy #$9f		; c0 9f
B7_1c6c:	.db $89
B7_1c6d:		cpx #$77		; e0 77
B7_1c6f:		cpy #$7f		; c0 7f
B7_1c71:	.db $80
B7_1c72:		ldx $c04e, y	; be 4e c0
B7_1c75:	.db $fb
B7_1c76:		ora ($ff, x)	; 01 ff
B7_1c78:		.db $00				; 00
B7_1c79:		sbc $a1f0, y	; f9 f0 a1
B7_1c7c:		beq B7_1c89 ; f0 0b

B7_1c7e:		sed				; f8 
B7_1c7f:	.db $0f
B7_1c80:		cpx $c7			; e4 c7
B7_1c82:		lda ($c1, x)	; a1 c1
B7_1c84:	.db $e7
B7_1c85:		cpy #$7f		; c0 7f
B7_1c87:		cpx #$78		; e0 78
B7_1c89:	.db $3c
B7_1c8a:		;removed
	.db $10 $ff

B7_1c8c:		ora ($ff, x)	; 01 ff
B7_1c8e:		.db $00				; 00
B7_1c8f:	.db $f3
B7_1c90:		adc ($70), y	; 71 70
B7_1c92:		sed				; f8 
B7_1c93:		clc				; 18 
B7_1c94:		sed				; f8 
B7_1c95:	.db $1f
B7_1c96:		iny				; c8 
B7_1c97:	.db $87
B7_1c98:	.db $63
B7_1c99:	.db $c2
B7_1c9a:	.db $ef
B7_1c9b:		cpy #$77		; c0 77
B7_1c9d:		jsr $387e		; 20 7e 38
B7_1ca0:		cpy $fe			; c4 fe
B7_1ca2:		.db $00				; 00
B7_1ca3:	.db $ff
B7_1ca4:		ora ($fb, x)	; 01 fb
B7_1ca6:		sta ($f1, x)	; 81 f1
B7_1ca8:		beq B7_1cd6 ; f0 2c

B7_1caa:		sed				; f8 
B7_1cab:	.db $0f
B7_1cac:		iny				; c8 
B7_1cad:	.db $87
B7_1cae:	.db $47
B7_1caf:		cpy #$7f		; c0 7f
B7_1cb1:		cpy #$2f		; c0 2f
B7_1cb3:		;removed
	.db $f0 $67

B7_1cb5:		clv				; b8 
B7_1cb6:		cpy #$df		; c0 df
B7_1cb8:	.db $02
B7_1cb9:		inc $f003, x	; fe 03 f0
B7_1cbc:	.db $e3
B7_1cbd:		;removed
	.db $70 $f8

B7_1cbf:	.db $64
B7_1cc0:		cpx #$4f		; e0 4f
B7_1cc2:		sed				; f8 
B7_1cc3:		clc				; 18 
B7_1cc4:	.db $5f
B7_1cc5:	.db $80
B7_1cc6:	.db $7f
B7_1cc7:		;removed
	.db $10 $bf

B7_1cc9:	.db $14
B7_1cca:	.db $1f
B7_1ccb:		ldy $e287		; ac 87 e2
B7_1cce:		eor $e0, x		; 55 e0
B7_1cd0:	.db $3f
B7_1cd1:		bcs B7_1cf1 ; b0 1e

B7_1cd3:		ldx $8e			; a6 8e
B7_1cd5:		ror a			; 6a
B7_1cd6:		ora #$be		; 09 be
B7_1cd8:	.db $8f
B7_1cd9:		cmp ($f8, x)	; c1 f8
B7_1cdb:		lda ($f8, x)	; a1 f8
B7_1cdd:		and #$e0		; 29 e0
B7_1cdf:	.db $fb
B7_1ce0:		;removed
	.db $30 $78

B7_1ce2:		asl $ef8c, x	; 1e 8c ef
B7_1ce5:		ora ($fe, x)	; 01 fe
B7_1ce7:		cmp ($f0, x)	; c1 f0
B7_1ce9:		bvs B7_1d55 ; 70 6a

B7_1ceb:		lda ($1b), y	; b1 1b
B7_1ced:		beq B7_1d2e ; f0 3f

B7_1cef:		bpl B7_1c80 ; 10 8f

B7_1cf1:	.db $07
B7_1cf2:	.db $87
B7_1cf3:	.db $f7
B7_1cf4:	.db $80
B7_1cf5:	.db $fb
B7_1cf6:		eor ($7c, x)	; 41 7c
B7_1cf8:		bpl B7_1d39 ; 10 3f

B7_1cfa:	.db $9c
B7_1cfb:	.db $07
B7_1cfc:	.db $3c
B7_1cfd:	.db $1f
B7_1cfe:		asl $6743, x	; 1e 43 67
B7_1d01:		lda ($1e), y	; b1 1e
B7_1d03:		sed				; f8 
B7_1d04:	.db $0f
B7_1d05:		cpy #$cf		; c0 cf
B7_1d07:		cmp ($74, x)	; c1 74
B7_1d09:		rol $3fe0		; 2e e0 3f
B7_1d0c:		cpy #$6f		; c0 6f
B7_1d0e:		;removed
	.db $50 $e7

B7_1d10:		ora ($d0), y	; 11 d0
B7_1d12:	.db $7f
B7_1d13:		sbc ($58, x)	; e1 58
B7_1d15:		tsx				; ba 
B7_1d16:		plp				; 28 
B7_1d17:		ror $fc03, x	; 7e 03 fc
B7_1d1a:	.db $07
B7_1d1b:		dec $e3			; c6 e3
B7_1d1d:		eor ($f8, x)	; 41 f8
B7_1d1f:	.db $17
B7_1d20:		cpx #$3f		; e0 3f
B7_1d22:		beq B7_1d5c ; f0 38

B7_1d24:	.db $1c
B7_1d25:		rol $809f		; 2e 9f 80
B7_1d28:	.db $ff
B7_1d29:		cpy #$3d		; c0 3d
B7_1d2b:		bcs B7_1d89 ; b0 5c

B7_1d2d:	.db $f4
B7_1d2e:		asl $f0			; 06 f0
B7_1d30:	.db $7b
B7_1d31:		sei				; 78 
B7_1d32:		bvs B7_1d43 ; 70 0f

B7_1d34:		inx				; e8 
B7_1d35:	.db $87
B7_1d36:		bmi B7_1d77 ; 30 3f

B7_1d38:	.db $87
B7_1d39:		sta $72c6		; 8d c6 72
B7_1d3c:		eor $f86a, y	; 59 6a f8
B7_1d3f:	.db $1c
B7_1d40:		ldy $d22b		; ac 2b d2
B7_1d43:		lda $96			; a5 96
B7_1d45:		ora $9f			; 05 9f
B7_1d47:	.db $27
B7_1d48:		ora $ff			; 05 ff
B7_1d4a:		ora ($f8, x)	; 01 f8
B7_1d4c:	.db $27
B7_1d4d:		cpy #$ff		; c0 ff
B7_1d4f:		cpx #$b0		; e0 b0
B7_1d51:		clv				; b8 
B7_1d52:		ror a			; 6a
B7_1d53:	.db $3c
B7_1d54:	.db $3c
B7_1d55:	.db $1a
B7_1d56:	.db $fc
B7_1d57:		and #$f8		; 29 f8
B7_1d59:		ora $1fa0, x	; 1d a0 1f
B7_1d5c:		asl $07de		; 0e de 07
B7_1d5f:		sbc ($f3, x)	; e1 f3
B7_1d61:		rti				; 40 


B7_1d62:	.db $fc
B7_1d63:	.db $83
B7_1d64:		cpy #$ff		; c0 ff
B7_1d66:		cmp ($70, x)	; c1 70
B7_1d68:		sec				; 38 
B7_1d69:		dec $d41a, x	; de 1a d4
B7_1d6c:	.db $87
B7_1d6d:		beq B7_1d8a ; f0 1b

B7_1d6f:		clv				; b8 
B7_1d70:	.db $17
B7_1d71:	.db $54
B7_1d72:		adc $7c, x		; 75 7c
B7_1d74:		rts				; 60 


B7_1d75:	.db $7f
B7_1d76:		.db $00				; 00
B7_1d77:		inc $e303, x	; fe 03 e3
B7_1d7a:	.db $47
B7_1d7b:		asl a			; 0a
B7_1d7c:		inc $060f, x	; fe 0f 06
B7_1d7f:		inc $a9			; e6 a9
B7_1d81:		;removed
	.db $f0 $3b

B7_1d83:	.db $0c
B7_1d84:		ror $fdc0, x	; 7e c0 fd
B7_1d87:		ora ($7c, x)	; 01 7c
B7_1d89:	.db $0f
B7_1d8a:	.db $e2
B7_1d8b:	.db $0f
B7_1d8c:		cpy #$7f		; c0 7f
B7_1d8e:		rts				; 60 


B7_1d8f:		rol $3f42, x	; 3e 42 3f
B7_1d92:		dex				; ca 
B7_1d93:	.db $03
B7_1d94:		inc $f803, x	; fe 03 f8
B7_1d97:	.db $a3
B7_1d98:	.db $fc
B7_1d99:		cpx #$34		; e0 34
B7_1d9b:		cpy #$ff		; c0 ff
B7_1d9d:	.db $80
B7_1d9e:		adc $1078, x	; 7d 78 10
B7_1da1:	.db $7f
B7_1da2:		bvc B7_1d32 ; 50 8e

B7_1da4:	.db $f7
B7_1da5:		ora ($fc, x)	; 01 fc
B7_1da7:		sta ($f8, x)	; 81 f8
B7_1da9:	.db $0f
B7_1daa:		sei				; 78 
B7_1dab:		sed				; f8 
B7_1dac:	.db $1f
B7_1dad:		cpy #$0f		; c0 0f
B7_1daf:		sty $df			; 84 df
B7_1db1:		and #$c0		; 29 c0
B7_1db3:	.db $ff
B7_1db4:		ora ($f8, x)	; 01 f8
B7_1db6:	.db $37
B7_1db7:		clc				; 18 
B7_1db8:		inc $f808, x	; fe 08 f8
B7_1dbb:	.db $3f
B7_1dbc:		jsr $06be		; 20 be 06
B7_1dbf:		tsx				; ba 
B7_1dc0:	.db $1f
B7_1dc1:	.db $80
B7_1dc2:	.db $7f
B7_1dc3:		ora #$6e		; 09 6e
B7_1dc5:	.db $3b
B7_1dc6:		bpl B7_1dc6 ; 10 fe

B7_1dc8:		bit $f8			; 24 f8
B7_1dca:	.db $2f
B7_1dcb:		clc				; 18 
B7_1dcc:	.db $fc
B7_1dcd:	.db $03
B7_1dce:		sed				; f8 
B7_1dcf:	.db $0f
B7_1dd0:		;removed
	.db $10 $ff

B7_1dd2:		ora $87			; 05 87
B7_1dd4:	.db $67
B7_1dd5:		eor ($fb), y	; 51 fb
B7_1dd7:	.db $80
B7_1dd8:		sbc $c7			; e5 c7
B7_1dda:		cpy #$5f		; c0 5f
B7_1ddc:		bvs B7_1e0c ; 70 2e

B7_1dde:	.db $1c
B7_1ddf:		adc $fdc0, x	; 7d c0 fd
B7_1de2:		bmi B7_1e5c ; 30 78

B7_1de4:	.db $0f
B7_1de5:		cpx $0a07		; ec 07 0a
B7_1de8:	.db $5f
B7_1de9:	.db $0f
B7_1dea:	.db $83
B7_1deb:	.db $6f
B7_1dec:		eor ($fc, x)	; 41 fc
B7_1dee:		and #$f0		; 29 f0
B7_1df0:	.db $7f
B7_1df1:		.db $00				; 00
B7_1df2:		rol $c785, x	; 3e 85 c7
B7_1df5:	.db $2b
B7_1df6:		inx				; e8 
B7_1df7:		sei				; 78 
B7_1df8:		and $fc30, x	; 3d 30 fc
B7_1dfb:	.db $07
B7_1dfc:		sed				; f8 
B7_1dfd:	.db $07
B7_1dfe:	.db $1c
B7_1dff:		lsr $860f, x	; 5e 0f 86
B7_1e02:	.db $4f
B7_1e03:		cmp ($73, x)	; c1 73
B7_1e05:	.db $47
B7_1e06:		;removed
	.db $f0 $1f

B7_1e08:		ldy #$af		; a0 af
B7_1e0a:		and ($c7, x)	; 21 c7
B7_1e0c:	.db $73
B7_1e0d:		php				; 08 
B7_1e0e:		inc $040f, x	; fe 0f 04
B7_1e11:	.db $ff
B7_1e12:		ora ($fc, x)	; 01 fc
B7_1e14:	.db $03
B7_1e15:		cmp ($ff, x)	; c1 ff
B7_1e17:	.db $82
B7_1e18:	.db $e2
B7_1e19:	.db $2b
B7_1e1a:		ldy $3b			; a4 3b
B7_1e1c:	.db $c3
B7_1e1d:		sbc ($7b, x)	; e1 7b
B7_1e1f:		rti				; 40 


B7_1e20:		ror $ae18, x	; 7e 18 ae
B7_1e23:	.db $2b
B7_1e24:		asl $ff			; 06 ff
B7_1e26:		ora $e2			; 05 e2
B7_1e28:	.db $ab
B7_1e29:		cpy #$fa		; c0 fa
B7_1e2b:	.db $03
B7_1e2c:		;removed
	.db $f0 $3f

B7_1e2e:		cpx #$27		; e0 27
B7_1e30:	.db $92
B7_1e31:	.db $c7
B7_1e32:	.db $2b
B7_1e33:		cmp ($77, x)	; c1 77
B7_1e35:	.db $1a
B7_1e36:		sty $3f, x		; 94 3f
B7_1e38:		ora ($ff, x)	; 01 ff
B7_1e3a:	.db $80
B7_1e3b:		sbc ($3f, x)	; e1 3f
B7_1e3d:		cpy #$fb		; c0 fb
B7_1e3f:		php				; 08 
B7_1e40:		dec $050f		; ce 0f 05
B7_1e43:	.db $fc
B7_1e44:	.db $1f
B7_1e45:		;removed
	.db $90 $1f

B7_1e47:	.db $d2
B7_1e48:		sbc ($01), y	; f1 01
B7_1e4a:		sbc $fe01, x	; fd 01 fe
B7_1e4d:	.db $03
B7_1e4e:	.db $fb
B7_1e4f:	.db $80
B7_1e50:		ror $87c0, x	; 7e c0 87
B7_1e53:	.db $fb
B7_1e54:		sta ($f8, x)	; 81 f8
B7_1e56:		and ($7c, x)	; 21 7c
B7_1e58:		asl $c30d, x	; 1e 0d c3
B7_1e5b:	.db $3f
B7_1e5c:	.db $42
B7_1e5d:	.db $7a
B7_1e5e:	.db $8b
B7_1e5f:	.db $f4
B7_1e60:		ora $f0, x		; 15 f0
B7_1e62:		sbc ($3b, x)	; e1 3b
B7_1e64:		jsr $067f		; 20 7f 06
B7_1e67:		ldx $0e87		; ae 87 0e
B7_1e6a:		sed				; f8 
B7_1e6b:	.db $1f
B7_1e6c:		cpy #$8f		; c0 8f
B7_1e6e:		cpx #$f7		; e0 f7
B7_1e70:		.db $00				; 00
B7_1e71:	.db $7f
B7_1e72:		bcs B7_1eb2 ; b0 3e

B7_1e74:		cpy #$3f		; c0 3f
B7_1e76:	.db $80
B7_1e77:	.db $7f
B7_1e78:	.db $82
B7_1e79:	.db $87
B7_1e7a:	.db $fb
B7_1e7b:		ora ($fc, x)	; 01 fc
B7_1e7d:		ora $58, x		; 15 58
B7_1e7f:	.db $1f
B7_1e80:		ldx $83			; a6 83
B7_1e82:	.db $bb
B7_1e83:		ora $f8			; 05 f8
B7_1e85:	.db $1f
B7_1e86:		cpy #$3f		; c0 3f
B7_1e88:		cpy #$7f		; c0 7f
B7_1e8a:		;removed
	.db $10 $f8

B7_1e8c:	.db $3f
B7_1e8d:	.db $80
B7_1e8e:	.db $5f
B7_1e8f:		cpy #$b7		; c0 b7
B7_1e91:		cli				; 58 
B7_1e92:	.db $03
B7_1e93:	.db $fc
B7_1e94:	.db $1f
B7_1e95:	.db $80
B7_1e96:	.db $ff
B7_1e97:		ora ($fe, x)	; 01 fe
B7_1e99:		ora ($e2, x)	; 01 e2
B7_1e9b:	.db $bf
B7_1e9c:		.db $00				; 00
B7_1e9d:	.db $7f
B7_1e9e:	.db $1a
B7_1e9f:		sty $a21f		; 8c 1f a2
B7_1ea2:	.db $0f
B7_1ea3:		beq B7_1ee4 ; f0 3f

B7_1ea5:		cpx #$3f		; e0 3f
B7_1ea7:		.db $00				; 00
B7_1ea8:	.db $1f
B7_1ea9:	.db $fb
B7_1eaa:		.db $00				; 00
B7_1eab:	.db $ff
B7_1eac:		ora ($fc, x)	; 01 fc
B7_1eae:		sta ($3e, x)	; 81 3e
B7_1eb0:		cmp $6d			; c5 6d
B7_1eb2:		;removed
	.db $b0 $2e

B7_1eb4:		;removed
	.db $f0 $1f

B7_1eb6:		sty $d7			; 84 d7
B7_1eb8:		ora ($fe, x)	; 01 fe
B7_1eba:	.db $0b
B7_1ebb:		sed				; f8 
B7_1ebc:	.db $07
B7_1ebd:		cpx $fc03		; ec 03 fc
B7_1ec0:		stx $bc			; 86 bc
B7_1ec2:		asl a			; 0a
B7_1ec3:		eor $ff			; 45 ff
B7_1ec5:	.db $03
B7_1ec6:		sed				; f8 
B7_1ec7:	.db $03
B7_1ec8:	.db $dc
B7_1ec9:	.db $da
B7_1eca:		ora $3fa0, x	; 1d a0 3f
B7_1ecd:		ldy #$1f		; a0 1f
B7_1ecf:		cpx #$b7		; e0 b7
B7_1ed1:		pla				; 68 
B7_1ed2:		lda #$59		; a9 59
B7_1ed4:		cpx $07			; e4 07
B7_1ed6:	.db $f4
B7_1ed7:	.db $17
B7_1ed8:	.db $5a
B7_1ed9:		cmp ($fd, x)	; c1 fd
B7_1edb:		ora ($fe, x)	; 01 fe
B7_1edd:		ora ($fe, x)	; 01 fe
B7_1edf:		.db $00				; 00
B7_1ee0:	.db $af
B7_1ee1:		sbc ($3f, x)	; e1 3f
B7_1ee3:	.db $80
B7_1ee4:	.db $7f
B7_1ee5:		.db $00				; 00
B7_1ee6:	.db $fc
B7_1ee7:	.db $0f
B7_1ee8:		beq B7_1ef1 ; f0 07

B7_1eea:		.db $f0 $7f

B7_1eec:		.db $00				; 00
B7_1eed:	.db $ff
B7_1eee:	.db $80
B7_1eef:		inc $1f			; e6 1f
B7_1ef1:		cpy #$3f		; c0 3f
B7_1ef3:		cpy #$f9		; c0 f9
B7_1ef5:	.db $0f
B7_1ef6:	.db $80
B7_1ef7:	.db $1f
B7_1ef8:	.db $fc
B7_1ef9:	.db $0f
B7_1efa:		cpx #$0f		; e0 0f
B7_1efc:		cpy #$ff		; c0 ff
B7_1efe:		.db $00				; 00
B7_1eff:		.db $fe