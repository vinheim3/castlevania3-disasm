B30_0000:	.db $3f
B30_0001:	.db $fc
B30_0002:	.db $7f
B30_0003:	.db $dc
B30_0004:		sbc ($f9, x)	; e1 f9
B30_0006:	.db $0f
B30_0007:	.db $df
B30_0008:	.db $f7
B30_0009:		.db $00				; 00
B30_000a:		.db $00				; 00
B30_000b:		.db $00				; 00
B30_000c:	.db $80
B30_000d:		sbc $ffff, x	; fd ff ff
B30_0010:	.db $ff


B30_0011:		inc $7efe, x	; fe fe 7e
B30_0014:		.db $00				; 00
B30_0015:		.db $00				; 00
B30_0016:	.db $04
B30_0017:		and ($12, x)	; 21 12
B30_0019:	.db $fc
B30_001a:	.db $ff
B30_001b:	.db $ff
B30_001c:	.db $ff
B30_001d:	.db $07
B30_001e:		.db $00				; 00
B30_001f:		.db $00				; 00
B30_0020:		.db $00				; 00
B30_0021:		.db $00				; 00
B30_0022:		cpy #$b7		; c0 b7
B30_0024:	.db $fb
B30_0025:	.db $ff
B30_0026:	.db $ff
B30_0027:	.db $ff
B30_0028:	.db $ff
B30_0029:		inc $fefe, x	; fe fe fe
B30_002c:	.db $02
B30_002d:		.db $00				; 00
B30_002e:	.db $80
B30_002f:		jsr $2144		; 20 44 21
B30_0032:		eor #$32		; 49 32
B30_0034:		lsr $19			; 46 19
B30_0036:	.db $23
B30_0037:		sed				; f8 
B30_0038:	.db $ff
B30_0039:	.db $ff
B30_003a:	.db $ff
B30_003b:	.db $ff
B30_003c:		.db $00				; 00
B30_003d:		.db $00				; 00
B30_003e:		.db $00				; 00
B30_003f:		.db $00				; 00
B30_0040:	.db $af
B30_0041:	.db $5f
B30_0042:		inc $b3			; e6 b3
B30_0044:		clc				; 18 
B30_0045:	.db $1b
B30_0046:		rts				; 60 


B30_0047:	.db $c7
B30_0048:		adc $3850, y	; 79 50 38
B30_004b:		ora ($58), y	; 11 58
B30_004d:	.db $5f
B30_004e:		sed				; f8 
B30_004f:		sbc $16d1		; edd1 16
B30_0052:	.db $bf
B30_0053:		ldy $1c25		; ac 25 1c
B30_0056:		ora #$32		; 09 32
B30_0058:		sei				; 78 
B30_0059:		txs				; 9a 
B30_005a:		lsr $be9e, x	; 5e 9e be
B30_005d:		adc $86, x		; 75 86
B30_005f:	.db $83
B30_0060:		pha				; 48 
B30_0061:		lsr a			; 4a
B30_0062:		cmp #$9d		; c9 9d
B30_0064:		cmp $6db0, y	; d9 b0 6d
B30_0067:		lsr $358d, x	; 5e 8d 35
B30_006a:		txa				; 8a 
B30_006b:		sbc ($c2, x)	; e1 c2
B30_006d:		sta $d9ea		; 8d ea d9
B30_0070:	.db $f4
B30_0071:		and #$53		; 29 53
B30_0073:	.db $0c
B30_0074:		sta $52b4		; 8d b4 52
B30_0077:	.db $a7
B30_0078:	.db $9b
B30_0079:	.db $c7
B30_007a:	.db $b2
B30_007b:	.db $72
B30_007c:	.db $b2
B30_007d:		dec $28			; c6 28
B30_007f:	.db $4b
B30_0080:		stx $d9, y		; 96 d9
B30_0082:		rol $5e			; 26 5e
B30_0084:		eor $293c, x	; 5d 3c 29
B30_0087:	.db $53
B30_0088:		eor ($e6), y	; 51 e6
B30_008a:	.db $e2
B30_008b:		cmp ($5a), y	; d1 5a
B30_008d:		sta $26ab		; 8d ab 26
B30_0090:	.db $63
B30_0091:		sta $31, x		; 95 31
B30_0093:	.db $4b
B30_0094:	.db $8b
B30_0095:		lda $e56a		; ad 6a e5
B30_0098:		ldy $e332		; ac 32 e3
B30_009b:		ldy $a9			; a4 a9
B30_009d:		eor #$ab		; 49 ab
B30_009f:	.db $9c
B30_00a0:		ror $d5			; 66 d5
B30_00a2:		ldy $9c, x		; b4 9c
B30_00a4:		and ($99), y	; 31 99
B30_00a6:	.db $34
B30_00a7:		lda $c9, x		; b5 c9
B30_00a9:		tax				; aa 
B30_00aa:		adc $55			; 65 55
B30_00ac:		and $65, x		; 35 65
B30_00ae:		lda $a6			; a5 a6
B30_00b0:	.db $a3
B30_00b1:		lda #$9a		; a9 9a
B30_00b3:		rol $56, x		; 36 56
B30_00b5:		and $55, x		; 35 55
B30_00b7:		eor $a595, y	; 59 95 a5
B30_00ba:		tax				; aa 
B30_00bb:		sta $656a, y	; 99 6a 65
B30_00be:		adc $55			; 65 55
B30_00c0:		eor $4d, x		; 55 4d
B30_00c2:		sta $aa, x		; 95 aa
B30_00c4:		ror a			; 6a
B30_00c5:		ldx $59			; a6 59
B30_00c7:		adc $55			; 65 55
B30_00c9:		adc #$96		; 69 96
B30_00cb:		adc $aa			; 65 aa
B30_00cd:		sta $aa, x		; 95 aa
B30_00cf:		lda #$6a		; a9 6a
B30_00d1:		eor $5555, y	; 59 55 55
B30_00d4:		eor $95, x		; 55 95
B30_00d6:		ror $a6			; 66 a6
B30_00d8:		txs				; 9a 
B30_00d9:		ldx $95			; a6 95
B30_00db:		eor $5555, y	; 59 55 55
B30_00de:		sta $99, x		; 95 99
B30_00e0:		sta $9aaa, y	; 99 aa 9a
B30_00e3:		eor $5955, y	; 59 55 59
B30_00e6:		eor $55, x		; 55 55
B30_00e8:		eor $59, x		; 55 59
B30_00ea:		stx $99, y		; 96 99
B30_00ec:		ror a			; 6a
B30_00ed:		ror $55			; 66 55
B30_00ef:		eor $55, x		; 55 55
B30_00f1:		eor $55, x		; 55 55
B30_00f3:		eor $aa, x		; 55 aa
B30_00f5:		ldx $66			; a6 66
B30_00f7:		lsr $55, x		; 56 55
B30_00f9:		eor $55, x		; 55 55
B30_00fb:		eor $55, x		; 55 55
B30_00fd:		eor $5559, y	; 59 59 55
B30_0100:		lsr $56, x		; 56 56
B30_0102:		eor $55, x		; 55 55
B30_0104:		eor $55, x		; 55 55
B30_0106:		eor $55, x		; 55 55
B30_0108:		ror $65			; 66 65
B30_010a:		adc $55			; 65 55
B30_010c:		eor $55, x		; 55 55
B30_010e:		eor $55, x		; 55 55
B30_0110:	.db $ff
B30_0111:		eor $aa, x		; 55 aa
B30_0113:		tax				; aa 
B30_0114:		tax				; aa 
B30_0115:		tax				; aa 
B30_0116:		tax				; aa 
B30_0117:		tax				; aa 
B30_0118:		tax				; aa 
B30_0119:		tax				; aa 
B30_011a:		tax				; aa 
B30_011b:		tax				; aa 
B30_011c:		tax				; aa 
B30_011d:		tax				; aa 
B30_011e:		tax				; aa 
B30_011f:		tax				; aa 
B30_0120:		and ($37), y	; 31 37
B30_0122:		ora #$80		; 09 80
B30_0124:		clc				; 18 
B30_0125:		rts				; 60 


B30_0126:		.db $00				; 00
B30_0127:		cpy #$20		; c0 20
B30_0129:	.db $2f
B30_012a:	.db $3a
B30_012b:	.db $a3
B30_012c:		inc $ef3c		; ee 3c ef
B30_012f:	.db $77
B30_0130:	.db $57
B30_0131:	.db $ef
B30_0132:	.db $9f
B30_0133:	.db $af
B30_0134:	.db $ff
B30_0135:		dec $9ebf, x	; de bf 9e
B30_0138:		cmp #$24		; c9 24
B30_013a:		eor ($09, x)	; 41 09
B30_013c:		ora #$09		; 09 09
B30_013e:		and #$00		; 29 00
B30_0140:		tay				; a8 
B30_0141:		ror a			; 6a
B30_0142:		ror a			; 6a
B30_0143:		tax				; aa 
B30_0144:		lda #$a6		; a9 a6
B30_0146:		stx $9a, y		; 96 9a
B30_0148:		tax				; aa 
B30_0149:		lsr $55, x		; 56 55
B30_014b:		tax				; aa 
B30_014c:	.db $54
B30_014d:		sbc #$7f		; e9 7f
B30_014f:		eor ($2f, x)	; 41 2f
B30_0151:		.db $00				; 00
B30_0152:	.db $80
B30_0153:	.db $fa
B30_0154:	.db $ff
B30_0155:	.db $ff
B30_0156:	.db $8d $01 $00
B30_0159:	.db $80
B30_015a:	.db $ff
B30_015b:	.db $ff
B30_015c:	.db $17
B30_015d:	.db $6e $00 $00
B30_0160:		sed				; f8 
B30_0161:	.db $fc
B30_0162:	.db $ff
B30_0163:	.db $4f
B30_0164:	.db $07
B30_0165:		.db $00				; 00
B30_0166:		.db $00				; 00
B30_0167:	.db $fc
B30_0168:	.db $ff
B30_0169:	.db $ff
B30_016a:		ora ($55, x)	; 01 55
B30_016c:		ora ($00), y	; 11 00
B30_016e:	.db $f4
B30_016f:	.db $ef
B30_0170:	.db $fb
B30_0171:	.db $97
B30_0172:		pha				; 48 
B30_0173:	.db $0b
B30_0174:		.db $00				; 00
B30_0175:		cpy #$ff		; c0 ff
B30_0177:	.db $ff
B30_0178:	.db $0f
B30_0179:		sty $24, x		; 94 24
B30_017b:		eor ($44, x)	; 41 44
B30_017d:	.db $6b
B30_017e:	.db $ff
B30_017f:	.db $5f
B30_0180:		rol a			; 2a
B30_0181:		tax				; aa 
B30_0182:		ora $00			; 05 00
B30_0184:	.db $d4
B30_0185:		inc $6dff, x	; fe ff 6d
B30_0188:		ora ($c4, x)	; 01 c4
B30_018a:	.db $12
B30_018b:	.db $52
B30_018c:		lda $75, x		; b5 75
B30_018e:	.db $ff
B30_018f:	.db $13
B30_0190:		plp				; 28 
B30_0191:	.db $da
B30_0192:		and ($20, x)	; 21 20
B30_0194:		sbc $ffbe		; edbe ff
B30_0197:		eor $40			; 45 40
B30_0199:		and #$91		; 29 91
B30_019b:	.db $52
B30_019c:		adc $ff, x		; 75 ff
B30_019e:	.db $bb
B30_019f:		bit $80			; 24 80
B30_01a1:		tsx				; ba 
B30_01a2:		lsr a			; 4a
B30_01a3:		ldy $ea			; a4 ea
B30_01a5:		ror $126f, x	; 7e 6f 12
B30_01a8:		sta ($aa), y	; 91 aa
B30_01aa:		lsr a			; 4a
B30_01ab:		iny				; c8 
B30_01ac:	.db $74
B30_01ad:	.db $df
B30_01ae:	.db $af
B30_01af:	.db $89
B30_01b0:		pha				; 48 
B30_01b1:		lsr a			; 4a
B30_01b2:	.db $52
B30_01b3:		lda $b2, x		; b5 b2
B30_01b5:		inc $a4b7		; ee b7 a4
B30_01b8:		dey				; 88 
B30_01b9:	.db $54
B30_01ba:		and $a5, x		; 35 a5
B30_01bc:	.db $54
B30_01bd:		sbc $556f		; ed6f 55
B30_01c0:	.db $22
B30_01c1:		lda $4a			; a5 4a
B30_01c3:		and $55			; 25 55
B30_01c5:	.db $eb
B30_01c6:		dec $4956, x	; de 56 49
B30_01c9:		ldx #$92		; a2 92
B30_01cb:		tax				; aa 
B30_01cc:		tax				; aa 
B30_01cd:		lsr $db, x		; 56 db
B30_01cf:		eor $9249, x	; 5d 49 92
B30_01d2:	.db $52
B30_01d3:		cmp $54, x		; d5 54
B30_01d5:		tax				; aa 
B30_01d6:	.db $da
B30_01d7:		lda $4495, x	; bd 95 44
B30_01da:		tax				; aa 
B30_01db:		tax				; aa 
B30_01dc:	.db $54
B30_01dd:		lsr a			; 4a
B30_01de:		sbc $ab6e		; ed6e ab
B30_01e1:	.db $52
B30_01e2:	.db $92
B30_01e3:		rol a			; 2a
B30_01e4:		eor $aa, x		; 55 aa
B30_01e6:	.db $5a
B30_01e7:	.db $db
B30_01e8:		lsr $55, x		; 56 55
B30_01ea:		lsr a			; 4a
B30_01eb:		sta $52, x		; 95 52
B30_01ed:		eor $55, x		; 55 55
B30_01ef:		cmp $da, x		; d5 da
B30_01f1:	.db $5a
B30_01f2:		sta $52, x		; 95 52
B30_01f4:		tax				; aa 
B30_01f5:	.db $54
B30_01f6:		eor $55, x		; 55 55
B30_01f8:		dec $76, x		; d6 76
B30_01fa:		and $a525		; 2d 25 a5
B30_01fd:		ldy $954a		; ac 4a 95
B30_0200:		ror a			; 6a
B30_0201:	.db $db
B30_0202:		lsr $95, x		; 56 95
B30_0204:	.db $52
B30_0205:		tax				; aa 
B30_0206:		tax				; aa 
B30_0207:	.db $54
B30_0208:		eor $ad, x		; 55 ad
B30_020a:		lda $96, x		; b5 96
B30_020c:		rol a			; 2a
B30_020d:		eor $a5, x		; 55 a5
B30_020f:		lsr a			; 4a
B30_0210:		eor $d5, x		; 55 d5
B30_0212:		tax				; aa 
B30_0213:		lda $aa, x		; b5 aa
B30_0215:		tax				; aa 
B30_0216:	.db $54
B30_0217:		rol a			; 2a
B30_0218:		eor $55, x		; 55 55
B30_021a:		cmp $aa, x		; d5 aa
B30_021c:		lda $4a55		; ad 55 4a
B30_021f:		lda #$aa		; a9 aa
B30_0221:		tax				; aa 
B30_0222:	.db $54
B30_0223:		cmp $5a, x		; d5 5a
B30_0225:	.db $ab
B30_0226:		tax				; aa 
B30_0227:	.db $52
B30_0228:		tax				; aa 
B30_0229:		tax				; aa 
B30_022a:		rol a			; 2a
B30_022b:		eor $d5, x		; 55 d5
B30_022d:		dec $aa, x		; d6 aa
B30_022f:		rol a			; 2a
B30_0230:		eor $95, x		; 55 95
B30_0232:		tax				; aa 
B30_0233:	.db $54
B30_0234:		eor $6b, x		; 55 6b
B30_0236:		eor $ab, x		; 55 ab
B30_0238:		tax				; aa 
B30_0239:	.db $54
B30_023a:		lda #$52		; a9 52
B30_023c:		eor $b5, x		; 55 b5
B30_023e:		ror a			; 6a
B30_023f:		eor $52, x		; 55 52
B30_0241:		lda $8a, x		; b5 8a
B30_0243:	.db $5a
B30_0244:	.db $57
B30_0245:	.db $42
B30_0246:		eor $a43b, x	; 5d 3b a4
B30_0249:	.db $fc
B30_024a:		dey				; 88 
B30_024b:		ldy $f3, x		; b4 f3
B30_024d:		ldy #$ea		; a0 ea
B30_024f:		;removed
	.db $70 $cd

B30_0251:		ora #$39		; 09 39
B30_0253:	.db $5f
B30_0254:		lda ($f1, x)	; a1 f1
B30_0256:		dec $12			; c6 12
B30_0258:	.db $a7
B30_0259:	.db $53
B30_025a:	.db $7b
B30_025b:		ldy #$f8		; a0 f8
B30_025d:		lda ($f5, x)	; a1 f5
B30_025f:	.db $64
B30_0260:		sta ($1f, x)	; 81 1f
B30_0262:	.db $fc
B30_0263:		ora #$f8		; 09 f8
B30_0265:	.db $0f
B30_0266:	.db $80
B30_0267:	.db $ff
B30_0268:		ora ($fc, x)	; 01 fc
B30_026a:		bcs B30_026a ; b0 fe

B30_026c:	.db $03
B30_026d:		cpx #$0f		; e0 0f
B30_026f:		beq B30_0280 ; f0 0f

B30_0271:		;removed
	.db $f0 $3f

B30_0273:		.db $00				; 00
B30_0274:	.db $ff
B30_0275:		ora ($3f, x)	; 01 3f
B30_0277:	.db $80
B30_0278:	.db $7f
B30_0279:		sed				; f8 
B30_027a:	.db $03
B30_027b:	.db $fc
B30_027c:		cpx #$f0		; e0 f0
B30_027e:	.db $ff
B30_027f:		.db $00				; 00
B30_0280:		;removed
	.db $10 $7f

B30_0282:	.db $0f
B30_0283:	.db $fc
B30_0284:	.db $07
B30_0285:		cpx #$0f		; e0 0f
B30_0287:		cpx #$07		; e0 07
B30_0289:		inc $7f00, x	; fe 00 7f
B30_028c:		beq B30_029d ; f0 0f

B30_028e:		cpy #$7f		; c0 7f
B30_0290:		cpy #$0f		; c0 0f
B30_0292:		beq B30_02b3 ; f0 1f

B30_0294:		php				; 08 
B30_0295:	.db $ff
B30_0296:	.db $03
B30_0297:		sed				; f8 
B30_0298:		ora ($f6, x)	; 01 f6
B30_029a:		sbc $f003, x	; fd 03 f0
B30_029d:	.db $3f
B30_029e:		cpx #$07		; e0 07
B30_02a0:		sed				; f8 
B30_02a1:	.db $0f
B30_02a2:		beq B30_02cb ; f0 27

B30_02a4:		cpx #$07		; e0 07
B30_02a6:		beq B30_02b7 ; f0 0f

B30_02a8:		;removed
	.db $f0 $3f

B30_02aa:		cpy #$1f		; c0 1f
B30_02ac:	.db $80
B30_02ad:	.db $3f
B30_02ae:		;removed
	.db $f0 $ff

B30_02b0:		.db $00				; 00
B30_02b1:		beq B30_02d2 ; f0 1f

B30_02b3:		;removed
	.db $f0 $0f

B30_02b5:		;removed
	.db $f0 $3f

B30_02b7:		.db $00				; 00
B30_02b8:	.db $ff
B30_02b9:		.db $00				; 00
B30_02ba:		ror $f83e, x	; 7e 3e f8
B30_02bd:		jsr $1ff0		; 20 f0 1f
B30_02c0:		cpx #$3f		; e0 3f
B30_02c2:	.db $80
B30_02c3:	.db $fd $0f $00
B30_02c6:	.db $ff
B30_02c7:	.db $03
B30_02c8:		;removed
	.db $f0 $1f

B30_02ca:	.db $80
B30_02cb:	.db $3f
B30_02cc:		inc $f808		; ee 08 f8
B30_02cf:	.db $0f
B30_02d0:		cld				; d8 
B30_02d1:	.db $3f
B30_02d2:		.db $00				; 00
B30_02d3:		sbc $d80f, x	; fd 0f d8
B30_02d6:	.db $3f
B30_02d7:		.db $00				; 00
B30_02d8:	.db $ff
B30_02d9:	.db $0b
B30_02da:		cpy #$0f		; c0 0f
B30_02dc:	.db $07
B30_02dd:	.db $b7
B30_02de:		cmp $5f80		; cd 80 5f
B30_02e1:	.db $dc
B30_02e2:		bpl B30_02b3 ; 10 cf

B30_02e4:	.db $1f
B30_02e5:		clc				; 18 
B30_02e6:		beq B30_02c3 ; f0 db

B30_02e8:		cpy #$ee		; c0 ee
B30_02ea:		and $83c0, y	; 39 c0 83
B30_02ed:	.db $3f
B30_02ee:		asl $3e			; 06 3e
B30_02f0:		inc $3818, x	; fe 18 38
B30_02f3:		sed				; f8 
B30_02f4:		adc $83c0, x	; 7d c0 83
B30_02f7:		sbc ($0f, x)	; e1 0f
B30_02f9:	.db $1f
B30_02fa:	.db $3c
B30_02fb:	.db $1a
B30_02fc:		rol $e1e0, x	; 3e e0 e1
B30_02ff:	.db $ff
B30_0300:		cpy #$e1		; c0 e1
B30_0302:		ora ($fc, x)	; 01 fc
B30_0304:	.db $87
B30_0305:	.db $83
B30_0306:	.db $c3
B30_0307:	.db $fb
B30_0308:		.db $00				; 00
B30_0309:		dec $c70f		; ce 0f c7
B30_030c:	.db $c7
B30_030d:	.db $03
B30_030e:	.db $4f
B30_030f:	.db $3c
B30_0310:		;removed
	.db $70 $87

B30_0312:	.db $1f
B30_0313:		rol $19e0, x	; 3e e0 19
B30_0316:	.db $e3
B30_0317:		cpy #$e1		; c0 e1
B30_0319:	.db $87
B30_031a:	.db $fb
B30_031b:		sta ($3f, x)	; 81 3f
B30_031d:		cpx #$03		; e0 03
B30_031f:	.db $c7
B30_0320:	.db $0f
B30_0321:	.db $3c
B30_0322:		sed				; f8 
B30_0323:		cmp ($0f, x)	; c1 0f
B30_0325:		clv				; b8 
B30_0326:	.db $7f
B30_0327:		cpy #$87		; c0 87
B30_0329:	.db $0f
B30_032a:		rol $81f8, x	; 3e f8 81
B30_032d:	.db $4f
B30_032e:		cpx #$07		; e0 07
B30_0330:	.db $fc
B30_0331:		cpx #$7c		; e0 7c
B30_0333:		sed				; f8 
B30_0334:		;removed
	.db $30 $c0

B30_0336:		sec				; 38 
B30_0337:		ror $f9f0, x	; 7e f0 f9
B30_033a:		;removed
	.db $f0 $c1

B30_033c:		sbc $e1			; e5 e1
B30_033e:	.db $83
B30_033f:	.db $c3
B30_0340:	.db $07
B30_0341:		inc $f80f, x	; fe 0f f8
B30_0344:		cpx #$e0		; e0 e0
B30_0346:	.db $1f
B30_0347:	.db $80
B30_0348:		adc ($ff, x)	; 61 ff
B30_034a:	.db $80
B30_034b:	.db $1f
B30_034c:	.db $7c
B30_034d:		sei				; 78 
B30_034e:		cpx #$0f		; e0 0f
B30_0350:		sed				; f8 
B30_0351:	.db $0f
B30_0352:		sei				; 78 
B30_0353:		beq B30_0356 ; f0 01

B30_0355:	.db $1f
B30_0356:		cpy #$3f		; c0 3f
B30_0358:		;removed
	.db $f0 $79

B30_035a:		;removed
	.db $f0 $e1

B30_035c:	.db $c3
B30_035d:	.db $87
B30_035e:	.db $87
B30_035f:	.db $03
B30_0360:	.db $c3
B30_0361:	.db $0f
B30_0362:	.db $7f
B30_0363:		cpy #$07		; c0 07
B30_0365:	.db $3f
B30_0366:		;removed
	.db $f0 $03

B30_0368:	.db $3f
B30_0369:	.db $3c
B30_036a:		;removed
	.db $f0 $b0

B30_036c:	.db $37
B30_036d:		sed				; f8 
B30_036e:		cpx #$87		; e0 87
B30_0370:	.db $87
B30_0371:	.db $8f
B30_0372:	.db $0f
B30_0373:	.db $3c
B30_0374:	.db $3c
B30_0375:		sec				; 38 
B30_0376:		bpl B30_0376 ; 10 fe

B30_0378:		and ($78), y	; 31 78
B30_037a:		sed				; f8 
B30_037b:	.db $03
B30_037c:	.db $1f
B30_037d:		asl $fcf8		; 0e f8 fc
B30_0380:		;removed
	.db $f0 $c3

B30_0382:		sec				; 38 
B30_0383:	.db $e3
B30_0384:		and ($2e, x)	; 21 2e
B30_0386:		sec				; 38 
B30_0387:		asl $e0f3, x	; 1e f3 e0
B30_038a:		stx $7f			; 86 7f
B30_038c:		sed				; f8 
B30_038d:	.db $83
B30_038e:	.db $0f
B30_038f:		asl $3f			; 06 3f
B30_0391:		cpy #$1f		; c0 1f
B30_0393:		sed				; f8 
B30_0394:		ora ($7e, x)	; 01 7e
B30_0396:		sec				; 38 
B30_0397:	.db $1f
B30_0398:		bit $fc			; 24 fc
B30_039a:		bvs B30_03d8 ; 70 3c

B30_039c:	.db $3c
B30_039d:		ror $6270, x	; 7e 70 62
B30_03a0:	.db $1c
B30_03a1:	.db $0f
B30_03a2:	.db $1f
B30_03a3:		asl $3e1f, x	; 1e 1f 3e
B30_03a6:		sei				; 78 
B30_03a7:		sei				; 78 
B30_03a8:		;removed
	.db $70 $78

B30_03aa:		sei				; 78 
B30_03ab:	.db $3c
B30_03ac:	.db $3c
B30_03ad:		adc ($0e), y	; 71 0e
B30_03af:	.db $3c
B30_03b0:		clv				; b8 
B30_03b1:	.db $67
B30_03b2:		asl $63dc		; 0e dc 63
B30_03b5:	.db $fc
B30_03b6:		cpx #$78		; e0 78
B30_03b8:		beq B30_037d ; f0 c3

B30_03ba:	.db $83
B30_03bb:		sbc ($83, x)	; e1 83
B30_03bd:	.db $07
B30_03be:		ror $e1f8, x	; 7e f8 e1
B30_03c1:		cmp ($f1, x)	; c1 f1
B30_03c3:		beq B30_03b5 ; f0 f0

B30_03c5:		sbc ($07, x)	; e1 07
B30_03c7:	.db $3c
B30_03c8:		cpx $71			; e4 71
B30_03ca:		bvs B30_0448 ; 70 7c

B30_03cc:	.db $3c
B30_03cd:		sed				; f8 
B30_03ce:		bmi B30_0448 ; 30 78

B30_03d0:	.db $3c
B30_03d1:	.db $1c
B30_03d2:		inc $0781, x	; fe 81 07
B30_03d5:	.db $6f
B30_03d6:	.db $1c
B30_03d7:	.db $3f
B30_03d8:		cpx #$1f		; e0 1f
B30_03da:		asl $8c3c, x	; 1e 3c 8c
B30_03dd:		adc ($1e), y	; 71 1e
B30_03df:	.db $c3
B30_03e0:		ora $c387		; 0d 87 c3
B30_03e3:	.db $e3
B30_03e4:		cpx #$c3		; e0 c3
B30_03e6:	.db $c3
B30_03e7:	.db $0f
B30_03e8:	.db $1f
B30_03e9:		sec				; 38 
B30_03ea:	.db $7c
B30_03eb:		sei				; 78 
B30_03ec:		sei				; 78 
B30_03ed:		iny				; c8 
B30_03ee:		and $07ce, y	; 39 ce 07
B30_03f1:	.db $7f
B30_03f2:		sty $1cc3		; 8c c3 1c
B30_03f5:		beq B30_038f ; f0 98

B30_03f7:		and $81f8, x	; 3d f8 81
B30_03fa:	.db $87
B30_03fb:	.db $c3
B30_03fc:	.db $c3
B30_03fd:	.db $0f
B30_03fe:		inc $e3c0, x	; fe c0 e3
B30_0401:		sta ($e3, x)	; 81 e3
B30_0403:	.db $87
B30_0404:	.db $c7
B30_0405:	.db $0c
B30_0406:	.db $3f
B30_0407:	.db $1c
B30_0408:		asl $387c, x	; 1e 7c 38
B30_040b:		inc $0f			; e6 0f
B30_040d:		asl $0f1f		; 0e 1f 0f
B30_0410:		cpy #$e3		; c0 e3
B30_0412:		bvs B30_048c ; 70 78

B30_0414:		sei				; 78 
B30_0415:	.db $1c
B30_0416:		asl $7e0f		; 0e 0f 7e
B30_0419:		sei				; 78 
B30_041a:	.db $1c
B30_041b:		adc $e1f0, y	; 79 f0 e1
B30_041e:	.db $87
B30_041f:	.db $e3
B30_0420:	.db $e3
B30_0421:		asl $3c3e		; 0e 3e 3c
B30_0424:		cpx #$0d		; e0 0d
B30_0426:	.db $e7
B30_0427:		sta ($c7, x)	; 81 c7
B30_0429:	.db $83
B30_042a:	.db $0f
B30_042b:	.db $e7
B30_042c:		clc				; 18 
B30_042d:	.db $0f
B30_042e:		sei				; 78 
B30_042f:		sei				; 78 
B30_0430:	.db $7c
B30_0431:		sec				; 38 
B30_0432:	.db $fc
B30_0433:		cpx #$61		; e0 61
B30_0435:	.db $c7
B30_0436:		ora $de0f, y	; 19 0f de
B30_0439:		sec				; 38 
B30_043a:		;removed
	.db $f0 $70

B30_043c:		sei				; 78 
B30_043d:		sei				; 78 
B30_043e:		beq B30_0430 ; f0 f0

B30_0440:		sei				; 78 
B30_0441:		sei				; 78 
B30_0442:		sed				; f8 
B30_0443:	.db $33
B30_0444:	.db $8f
B30_0445:	.db $83
B30_0446:	.db $c3
B30_0447:	.db $c3
B30_0448:	.db $c3
B30_0449:	.db $c3
B30_044a:	.db $07
B30_044b:	.db $92
B30_044c:	.db $c3
B30_044d:	.db $0f
B30_044e:	.db $0f
B30_044f:	.db $8f
B30_0450:	.db $87
B30_0451:	.db $83
B30_0452:	.db $07
B30_0453:	.db $1f
B30_0454:	.db $7b
B30_0455:	.db $fc
B30_0456:		cpx #$e1		; e0 e1
B30_0458:	.db $c3
B30_0459:	.db $1f
B30_045a:		sec				; 38 
B30_045b:		asl $730e		; 0e 0e 73
B30_045e:		stx $1cf1		; 8e f1 1c
B30_0461:	.db $3c
B30_0462:		stx $cc63		; 8e 63 cc
B30_0465:		sec				; 38 
B30_0466:	.db $9c
B30_0467:		and $1c1e, y	; 39 1e 1c
B30_046a:	.db $7c
B30_046b:		sei				; 78 
B30_046c:		beq B30_04de ; f0 70

B30_046e:	.db $cf
B30_046f:		sed				; f8 
B30_0470:		beq B30_0435 ; f0 c3

B30_0472:	.db $c7
B30_0473:	.db $e3
B30_0474:		cpx #$38		; e0 38
B30_0476:		;removed
	.db $f0 $c0

B30_0478:		ora ($77), y	; 11 77
B30_047a:		dec $1c			; c6 1c
B30_047c:	.db $f3
B30_047d:		clc				; 18 
B30_047e:	.db $c7
B30_047f:		sec				; 38 
B30_0480:	.db $e3
B30_0481:		cpy #$1f		; c0 1f
B30_0483:	.db $c7
B30_0484:	.db $0f
B30_0485:	.db $3f
B30_0486:		sei				; 78 
B30_0487:		sty $1f			; 84 1f
B30_0489:		stx $0f03		; 8e 03 0f
B30_048c:	.db $3c
B30_048d:	.db $3c
B30_048e:	.db $73
B30_048f:	.db $dc
B30_0490:		and ($fe, x)	; 21 fe
B30_0492:		sec				; 38 
B30_0493:		asl $1e1e, x	; 1e 1e 1e
B30_0496:	.db $1c
B30_0497:	.db $3c
B30_0498:	.db $3c
B30_0499:	.db $fc
B30_049a:		sbc ($e1), y	; f1 e1
B30_049c:		sbc ($c1), y	; f1 c1
B30_049e:	.db $03
B30_049f:		sed				; f8 
B30_04a0:		;removed
	.db $f0 $38

B30_04a2:	.db $3c
B30_04a3:	.db $1c
B30_04a4:	.db $87
B30_04a5:	.db $87
B30_04a6:	.db $87
B30_04a7:	.db $c7
B30_04a8:	.db $0f
B30_04a9:	.db $8f
B30_04aa:	.db $87
B30_04ab:		ora $f87e, y	; 19 7e f8
B30_04ae:		bvs B30_04a0 ; 70 f0

B30_04b0:		cpx #$e1		; e0 e1
B30_04b2:		sbc ($81, x)	; e1 81
B30_04b4:	.db $07
B30_04b5:	.db $3f
B30_04b6:		inc $b8, x		; f6 b8
B30_04b8:	.db $03
B30_04b9:	.db $8f
B30_04ba:		rts				; 60 


B30_04bb:	.db $9e
B30_04bc:	.db $03
B30_04bd:	.db $3f
B30_04be:	.db $87
B30_04bf:	.db $0f
B30_04c0:	.db $8f
B30_04c1:	.db $63
B30_04c2:		asl $f01f		; 0e 1f f0
B30_04c5:	.db $c3
B30_04c6:	.db $63
B30_04c7:		sty $1c71		; 8c 71 1c
B30_04ca:	.db $3c
B30_04cb:		sei				; 78 
B30_04cc:		sed				; f8 
B30_04cd:	.db $e3
B30_04ce:		cmp ($83, x)	; c1 83
B30_04d0:	.db $1f
B30_04d1:		dec $f1			; c6 f1
B30_04d3:	.db $3c
B30_04d4:		sec				; 38 
B30_04d5:	.db $dc
B30_04d6:		and ($e0), y	; 31 e0
B30_04d8:		stx $87e3		; 8e e3 87
B30_04db:	.db $c3
B30_04dc:	.db $c3
B30_04dd:	.db $03
B30_04de:	.db $8f
B30_04df:	.db $1f
B30_04e0:		asl $e41e, x	; 1e 1e e4
B30_04e3:		asl $1e67		; 0e 67 1e
B30_04e6:		cpx $c770		; ec 70 c7
B30_04e9:		sbc ($07, x)	; e1 07
B30_04eb:	.db $1c
B30_04ec:		asl $870f, x	; 1e 0f 87
B30_04ef:	.db $3f
B30_04f0:		sei				; 78 
B30_04f1:		sec				; 38 
B30_04f2:		cpx $c3e1		; ec e1 c3
B30_04f5:		cmp ($c1, x)	; c1 c1
B30_04f7:	.db $13
B30_04f8:	.db $f3
B30_04f9:	.db $87
B30_04fa:	.db $0f
B30_04fb:	.db $9e
B30_04fc:		clc				; 18 
B30_04fd:	.db $c7
B30_04fe:		sbc ($c3), y	; f1 c3
B30_0500:		sta ($63, x)	; 81 63
B30_0502:	.db $1c
B30_0503:	.db $33
B30_0504:		stx $8e3b		; 8e 3b 8e
B30_0507:	.db $0f
B30_0508:	.db $9c
B30_0509:	.db $33
B30_050a:		asl $1d8f		; 0e 8f 1d
B30_050d:	.db $47
B30_050e:	.db $3c
B30_050f:	.db $9c
B30_0510:	.db $73
B30_0511:		stx $e639		; 8e 39 e6
B30_0514:	.db $87
B30_0515:	.db $8f
B30_0516:	.db $63
B30_0517:		sec				; 38 
B30_0518:	.db $dc
B30_0519:		and ($06), y	; 31 06
B30_051b:		asl $c70f		; 0e 0f c7
B30_051e:	.db $c3
B30_051f:	.db $c3
B30_0520:		adc ($3c), y	; 71 3c
B30_0522:	.db $fc
B30_0523:		cmp ($c3, x)	; c1 c3
B30_0525:		stx $8e39		; 8e 39 8e
B30_0528:	.db $0f
B30_0529:		asl $06ce, x	; 1e ce 06
B30_052c:	.db $67
B30_052d:		beq B30_04d0 ; f0 a1

B30_052f:	.db $33
B30_0530:		dec $19			; c6 19
B30_0532:	.db $0f
B30_0533:		asl $783e, x	; 1e 3e 78
B30_0536:	.db $0c
B30_0537:	.db $0f
B30_0538:		asl $f673, x	; 1e 73 f6
B30_053b:		sbc ($c0, x)	; e1 c0
B30_053d:	.db $13
B30_053e:	.db $e7
B30_053f:	.db $c7
B30_0540:	.db $83
B30_0541:	.db $0f
B30_0542:	.db $c7
B30_0543:		and $398e, y	; 39 8e 39
B30_0546:		cpx #$f1		; e0 f1
B30_0548:		sec				; 38 
B30_0549:	.db $dc
B30_054a:		lda ($71), y	; b1 71
B30_054c:		cpx #$71		; e0 71
B30_054e:		stx $1e3d		; 8e 3d 1e
B30_0551:		asl $1f1c, x	; 1e 1c 1f
B30_0554:	.db $3c
B30_0555:		beq B30_055e ; f0 07

B30_0557:		asl $8e1e, x	; 1e 1e 8e
B30_055a:		sec				; 38 
B30_055b:	.db $0f
B30_055c:	.db $3f
B30_055d:	.db $3c
B30_055e:		sei				; 78 
B30_055f:	.db $1c
B30_0560:	.db $0f
B30_0561:	.db $0f
B30_0562:	.db $1c
B30_0563:	.db $3f
B30_0564:		cpy $c1			; c4 c1
B30_0566:	.db $87
B30_0567:	.db $3f
B30_0568:		ldy $c3e1, x	; bc e1 c3
B30_056b:	.db $c3
B30_056c:		sbc ($f0), y	; f1 f0
B30_056e:		;removed
	.db $30 $1e

B30_0570:		dec $e1e0		; ce e0 e1
B30_0573:		sta ($07), y	; 91 07
B30_0575:		rol $07f1, x	; 3e f1 07
B30_0578:	.db $8f
B30_0579:	.db $87
B30_057a:	.db $07
B30_057b:	.db $1f
B30_057c:	.db $fc
B30_057d:		sec				; 38 
B30_057e:		inc $e0			; e6 e0
B30_0580:		cmp ($0f, x)	; c1 0f
B30_0582:		asl $381e		; 0e 1e 38
B30_0585:	.db $1f
B30_0586:	.db $e3
B30_0587:		sta ($e7, x)	; 81 e7
B30_0589:	.db $1c
B30_058a:	.db $c7
B30_058b:	.db $87
B30_058c:		ora $71c7		; 0d c7 71
B30_058f:		sei				; 78 
B30_0590:		cpx #$e3		; e0 e3
B30_0592:		sbc ($78, x)	; e1 78
B30_0594:	.db $32
B30_0595:		inc $e078, x	; fe 78 e0
B30_0598:	.db $63
B30_0599:		dey				; 88 
B30_059a:	.db $07
B30_059b:		inc $e1e0, x	; fe e0 e1
B30_059e:		sed				; f8 
B30_059f:		;removed
	.db $f0 $31

B30_05a1:	.db $c3
B30_05a2:	.db $e3
B30_05a3:		sbc ($e0, x)	; e1 e0
B30_05a5:	.db $07
B30_05a6:	.db $77
B30_05a7:		lsr $1e			; 46 1e
B30_05a9:	.db $9c
B30_05aa:	.db $c3
B30_05ab:	.db $c7
B30_05ac:		adc ($f8, x)	; 61 f8
B30_05ae:		bvs B30_05ec ; 70 3c

B30_05b0:		ror $38			; 66 38
B30_05b2:	.db $0f
B30_05b3:		beq B30_05ee ; f0 39

B30_05b5:		asl $c3c7, x	; 1e c7 c3
B30_05b8:	.db $e3
B30_05b9:		cmp ($83, x)	; c1 83
B30_05bb:	.db $87
B30_05bc:	.db $87
B30_05bd:	.db $07
B30_05be:	.db $8f
B30_05bf:		sei				; 78 
B30_05c0:		beq B30_05a5 ; f0 e3

B30_05c2:	.db $63
B30_05c3:		inc $08, x		; f6 08
B30_05c5:		stx $78e3		; 8e e3 78
B30_05c8:	.db $1c
B30_05c9:		rol $3c1c, x	; 3e 1c 3c
B30_05cc:	.db $1c
B30_05cd:	.db $e7
B30_05ce:		bvs B30_05ec ; 70 1c

B30_05d0:		asl $e1e7, x	; 1e e7 e1
B30_05d3:		cpy $f1e1		; cc e1 f1
B30_05d6:		cpx #$87		; e0 87
B30_05d8:	.db $07
B30_05d9:	.db $0f
B30_05da:		asl $c1c6, x	; 1e c6 c1
B30_05dd:	.db $cf
B30_05de:	.db $c3
B30_05df:	.db $c3
B30_05e0:		sbc ($c1, x)	; e1 c1
B30_05e2:	.db $0f
B30_05e3:	.db $63
B30_05e4:	.db $1c
B30_05e5:	.db $7f
B30_05e6:		clc				; 18 
B30_05e7:		rol $783c, x	; 3e 3c 78
B30_05ea:		;removed
	.db $70 $fc

B30_05ec:		cpx #$31		; e0 31
B30_05ee:	.db $7c
B30_05ef:	.db $3c
B30_05f0:		cpx #$71		; e0 71
B30_05f2:		rol $cf07, x	; 3e 07 cf
B30_05f5:		sbc ($70), y	; f1 70
B30_05f7:		sec				; 38 
B30_05f8:		stx $e187		; 8e 87 e1
B30_05fb:	.db $1c
B30_05fc:	.db $c7
B30_05fd:	.db $63
B30_05fe:		sei				; 78 
B30_05ff:		sty $c787		; 8c 87 c7
B30_0602:	.db $e3
B30_0603:	.db $03
B30_0604:		rol $1c78, x	; 3e 78 1c
B30_0607:		dec $0e71		; ce 71 0e
B30_060a:	.db $0f
B30_060b:	.db $e7
B30_060c:		sec				; 38 
B30_060d:		rol $7e			; 26 7e
B30_060f:		sei				; 78 
B30_0610:	.db $1c
B30_0611:		sei				; 78 
B30_0612:	.db $3c
B30_0613:		adc ($3c, x)	; 61 3c
B30_0615:		sei				; 78 
B30_0616:	.db $3c
B30_0617:		inc $38			; e6 38
B30_0619:		stx $e1e3		; 8e e3 e1
B30_061c:		sei				; 78 
B30_061d:		cpx $31			; e4 31
B30_061f:		rol $1c63, x	; 3e 63 1c
B30_0622:		dec $f1			; c6 f1
B30_0624:		sei				; 78 
B30_0625:		ldy $3c38, x	; bc 38 3c
B30_0628:		asl $0f0f		; 0e 0f 0f
B30_062b:	.db $c7
B30_062c:		sbc ($01), y	; f1 01
B30_062e:	.db $0f
B30_062f:	.db $9f
B30_0630:		adc ($8e, x)	; 61 8e
B30_0632:		and $787c, x	; 3d 7c 78
B30_0635:		clc				; 18 
B30_0636:		dec $21e1		; ce e1 21
B30_0639:	.db $1f
B30_063a:		dec $7c31		; ce 31 7c
B30_063d:	.db $3c
B30_063e:		ldx $18e0, y	; be e0 18
B30_0641:	.db $7c
B30_0642:		sed				; f8 
B30_0643:		cpx #$8d		; e0 8d
B30_0645:	.db $c3
B30_0646:		sta ($0f, x)	; 81 0f
B30_0648:		rol $0f1e, x	; 3e 1e 0f
B30_064b:	.db $1c
B30_064c:	.db $e7
B30_064d:		adc ($8c), y	; 71 8c
B30_064f:	.db $0f
B30_0650:	.db $87
B30_0651:	.db $87
B30_0652:	.db $8f
B30_0653:	.db $83
B30_0654:	.db $c3
B30_0655:	.db $a3
B30_0656:	.db $c7
B30_0657:	.db $c3
B30_0658:		sbc $71			; e5 71
B30_065a:		sec				; 38 
B30_065b:		sed				; f8 
B30_065c:		sec				; 38 
B30_065d:	.db $3c
B30_065e:		dec $1de0		; ce e0 1d
B30_0661:		sei				; 78 
B30_0662:		sei				; 78 
B30_0663:		sei				; 78 
B30_0664:		sei				; 78 
B30_0665:	.db $1c
B30_0666:		sei				; 78 
B30_0667:		sed				; f8 
B30_0668:		cpx #$71		; e0 71
B30_066a:	.db $0f
B30_066b:	.db $67
B30_066c:	.db $1c
B30_066d:		rol $c386, x	; 3e 86 c3
B30_0670:		and $9c7c, y	; 39 7c 9c
B30_0673:	.db $c3
B30_0674:		ora $0f0e, x	; 1d 0e 0f
B30_0677:	.db $c7
B30_0678:	.db $83
B30_0679:	.db $c7
B30_067a:	.db $e3
B30_067b:		sec				; 38 
B30_067c:		tya				; 98 
B30_067d:	.db $0f
B30_067e:	.db $47
B30_067f:		inc $ab55, x	; fe 55 ab
B30_0682:		cmp $aa, x		; d5 aa
B30_0684:	.db $5a
B30_0685:	.db $4b
B30_0686:		sta $4a, x		; 95 4a
B30_0688:		eor $a9, x		; 55 a9
B30_068a:	.db $54
B30_068b:		cmp $d6, x		; d5 d6
B30_068d:		tax				; aa 
B30_068e:		ldy $35			; a4 35
B30_0690:	.db $4b
B30_0691:	.db $89
B30_0692:	.db $52
B30_0693:		eor $d9, x		; 55 d9
B30_0695:	.db $5b
B30_0696:	.db $5f
B30_0697:	.db $57
B30_0698:		adc $2a, x		; 75 2a
B30_069a:		eor #$42		; 49 42
B30_069c:	.db $92
B30_069d:	.db $22
B30_069e:		eor $76d5		; 4d d5 76
B30_06a1:	.db $db
B30_06a2:	.db $d7
B30_06a3:		rol a			; 2a
B30_06a4:		lda $24			; a5 24
B30_06a6:	.db $92
B30_06a7:		plp				; 28 
B30_06a8:	.db $52
B30_06a9:		lda #$7f		; a9 7f
B30_06ab:	.db $df
B30_06ac:	.db $db
B30_06ad:		adc $894f		; 6d 4f 89
B30_06b0:		jsr $8224		; 20 24 82
B30_06b3:		dey				; 88 
B30_06b4:	.db $d2
B30_06b5:	.db $7b
B30_06b6:	.db $77
B30_06b7:		lda $54aa		; ad aa 54
B30_06ba:		txa				; 8a 
B30_06bb:		eor ($48, x)	; 41 48
B30_06bd:	.db $ff
B30_06be:	.db $7f
B30_06bf:	.db $57
B30_06c0:	.db $7b
B30_06c1:	.db $5f
B30_06c2:	.db $12
B30_06c3:	.db $02
B30_06c4:	.db $92
B30_06c5:	.db $22
B30_06c6:	.db $02
B30_06c7:		ror a			; 6a
B30_06c8:	.db $7b
B30_06c9:	.db $57
B30_06ca:		tax				; aa 
B30_06cb:		ror a			; 6a
B30_06cc:		lda $48			; a5 48
B30_06ce:		;removed
	.db $10 $ff

B30_06d0:	.db $ff
B30_06d1:	.db $77
B30_06d2:	.db $73
B30_06d3:	.db $7f
B30_06d4:		eor $20			; 45 20
B30_06d6:		rti				; 40 


B30_06d7:	.db $89
B30_06d8:		php				; 08 
B30_06d9:		rol a			; 2a
B30_06da:		lda $53, x		; b5 53
B30_06dc:		sta $aa, x		; 95 aa
B30_06de:		tax				; aa 
B30_06df:		bit $6a			; 24 6a
B30_06e1:	.db $ff
B30_06e2:	.db $ff
B30_06e3:	.db $bf
B30_06e4:		dec $57, x		; d6 57
B30_06e6:	.db $82
B30_06e7:		.db $00				; 00
B30_06e8:		plp				; 28 
B30_06e9:		eor #$88		; 49 88
B30_06eb:		tay				; a8 
B30_06ec:		dec $ac, x		; d6 ac
B30_06ee:		ldy $d2			; a4 d2
B30_06f0:		sty $ffda		; 8c da ff
B30_06f3:	.db $ff
B30_06f4:	.db $bf
B30_06f5:		dec $b5, x		; d6 b5
B30_06f7:		php				; 08 
B30_06f8:		php				; 08 
B30_06f9:		jsr $8229		; 20 29 82
B30_06fc:		bcc B30_06d4 ; 90 d6

B30_06fe:		lsr $25, x		; 56 25
B30_0700:		lda #$a6		; a9 a6
B30_0702:		cmp $ffff, x	; dd ff ff
B30_0705:	.db $af
B30_0706:	.db $da
B30_0707:		and $22, x		; 35 22
B30_0709:	.db $80
B30_070a:		ldy #$a2		; a0 a2
B30_070c:	.db $80
B30_070d:		ldy #$5a		; a0 5a
B30_070f:	.db $a7
B30_0710:		sty $4a, x		; 94 4a
B30_0712:	.db $5b
B30_0713:		sbc $ffff, x	; fd ff ff
B30_0716:		cmp $8b7a		; cd 7a 8b
B30_0719:	.db $02
B30_071a:		ora ($8a, x)	; 01 8a
B30_071c:	.db $04
B30_071d:	.db $22
B30_071e:		dey				; 88 
B30_071f:		ror $55, x		; 76 55
B30_0721:	.db $52
B30_0722:		lsr a			; 4a
B30_0723:	.db $db
B30_0724:	.db $ff
B30_0725:	.db $ff
B30_0726:	.db $d7
B30_0727:		ror $3f, x		; 76 3f
B30_0729:		rol a			; 2a
B30_072a:		jsr $4948		; 20 48 49
B30_072d:		jsr $7508		; 20 08 75
B30_0730:		eor $52, x		; 55 52
B30_0732:		lsr a			; 4a
B30_0733:	.db $db
B30_0734:	.db $ff
B30_0735:	.db $ff
B30_0736:	.db $d7
B30_0737:		ror $3f, x		; 76 3f
B30_0739:		rol a			; 2a
B30_073a:		jsr $4948		; 20 48 49
B30_073d:		jsr $7508		; 20 08 75
B30_0740:		ora ($3f, x)	; 01 3f
B30_0742:		php				; 08 
B30_0743:		beq B30_0784 ; f0 3f

B30_0745:	.db $fe $7f $00
B30_0748:		stx $f818		; 8e 18 f8
B30_074b:	.db $1f
B30_074c:	.db $fe $ff $00
B30_074f:		php				; 08 
B30_0750:		.db $00				; 00
B30_0751:		;removed
	.db $f0 $3f

B30_0753:	.db $fe $ff $00
B30_0756:		asl $f000		; 0e 00 f0
B30_0759:	.db $7f
B30_075a:	.db $fe $7f $00
B30_075d:		asl $f800		; 0e 00 f8
B30_0760:	.db $1f
B30_0761:	.db $fe $7f $00
B30_0764:	.db $1f
B30_0765:		.db $00				; 00
B30_0766:		sed				; f8 
B30_0767:	.db $9f
B30_0768:	.db $ff
B30_0769:	.db $03
B30_076a:		.db $00				; 00
B30_076b:	.db $03
B30_076c:	.db $80
B30_076d:	.db $ff
B30_076e:	.db $ef
B30_076f:	.db $ff
B30_0770:	.db $07
B30_0771:		rts				; 60 


B30_0772:		asl $ff80		; 0e 80 ff
B30_0775:	.db $ff
B30_0776:	.db $07
B30_0777:		.db $00				; 00
B30_0778:		.db $00				; 00
B30_0779:	.db $80
B30_077a:	.db $ff
B30_077b:	.db $cf
B30_077c:	.db $ff
B30_077d:	.db $0f
B30_077e:		cpx #$18		; e0 18
B30_0780:	.db $80
B30_0781:	.db $ff
B30_0782:	.db $ff
B30_0783:		.db $00				; 00
B30_0784:	.db $1c
B30_0785:		.db $00				; 00
B30_0786:		;removed
	.db $f0 $1f

B30_0788:		sed				; f8 
B30_0789:	.db $ff
B30_078a:	.db $03
B30_078b:		ror $f000, x	; 7e 00 f0
B30_078e:	.db $ff
B30_078f:	.db $03
B30_0790:		sed				; f8 
B30_0791:		ora ($c0, x)	; 01 c0
B30_0793:	.db $7f
B30_0794:		cpx #$ff		; e0 ff
B30_0796:	.db $07
B30_0797:		sed				; f8 
B30_0798:	.db $07
B30_0799:		cpx #$7f		; e0 7f
B30_079b:		.db $00				; 00
B30_079c:	.db $fc
B30_079d:		ora ($f0, x)	; 01 f0
B30_079f:	.db $3f
B30_07a0:		cpx #$ff		; e0 ff
B30_07a2:		ora ($fe, x)	; 01 fe
B30_07a4:	.db $03
B30_07a5:		inc $8003, x	; fe 03 80
B30_07a8:	.db $07
B30_07a9:	.db $80
B30_07aa:	.db $ff
B30_07ab:	.db $07
B30_07ac:	.db $ff
B30_07ad:	.db $0f
B30_07ae:		cpy #$3f		; c0 3f
B30_07b0:	.db $fe $03 $00
B30_07b3:		.db $00				; 00
B30_07b4:	.db $80
B30_07b5:	.db $ff
B30_07b6:	.db $ff
B30_07b7:	.db $ff
B30_07b8:	.db $0f
B30_07b9:		cpy #$ff		; c0 ff
B30_07bb:	.db $3f
B30_07bc:		.db $00				; 00
B30_07bd:		.db $00				; 00
B30_07be:		.db $00				; 00
B30_07bf:		;removed
	.db $f0 $ff

B30_07c1:	.db $fe $ff $00
B30_07c4:		cpy $03ff		; cc ff 03
B30_07c7:		.db $00				; 00
B30_07c8:		.db $00				; 00
B30_07c9:		.db $00				; 00
B30_07ca:	.db $ff
B30_07cb:	.db $f7
B30_07cc:	.db $ff
B30_07cd:	.db $0f
B30_07ce:		cpx #$e7		; e0 e7
B30_07d0:	.db $3f
B30_07d1:		.db $00				; 00
B30_07d2:		.db $00				; 00
B30_07d3:		.db $00				; 00
B30_07d4:		sed				; f8 
B30_07d5:	.db $ff
B30_07d6:	.db $ff
B30_07d7:	.db $7f
B30_07d8:		.db $00				; 00
B30_07d9:		rol $07fc, x	; 3e fc 07
B30_07dc:		.db $00				; 00
B30_07dd:		.db $00				; 00
B30_07de:		.db $00				; 00
B30_07df:	.db $ff
B30_07e0:	.db $e7
B30_07e1:	.db $ff
B30_07e2:	.db $0f
B30_07e3:		rts				; 60 


B30_07e4:	.db $fe $7f $00
B30_07e7:		.db $00				; 00
B30_07e8:		.db $00				; 00
B30_07e9:		;removed
	.db $f0 $ff

B30_07eb:	.db $fc
B30_07ec:	.db $ff
B30_07ed:		ora ($dc, x)	; 01 dc
B30_07ef:		sbc ($1f), y	; f1 1f
B30_07f1:		.db $00				; 00
B30_07f2:		.db $00				; 00
B30_07f3:		.db $00				; 00
B30_07f4:	.db $fc
B30_07f5:	.db $bf
B30_07f6:	.db $ff
B30_07f7:	.db $3f
B30_07f8:	.db $80
B30_07f9:		adc $0ffc, y	; 79 fc 0f
B30_07fc:		.db $00				; 00
B30_07fd:		php				; 08 
B30_07fe:		.db $00				; 00
B30_07ff:		.db $fe

.org $900

setBankOfRoomGroupMetaData_todo:
B30_0900:		ldy wCurrRoomGroup			; a4 32
B30_0902:		jmp B30_090f		; 4c 0f c9


setBankOfRoomGroupLayoutData_todo:
B30_0905:		ldy wCurrRoomGroup			; a4 32
B30_0907:		cpy #$0e		; c0 0e
B30_0909:		beq B30_093d ; @group0c

B30_090b:		cpy #$0d		; c0 0d
B30_090d:		beq B30_0915 ; @group0d

B30_090f:		lda data_1e_094b.w, y	; b9 4b c9
B30_0912:		jmp setAndSaveLowerBank		; 4c e6 e2

@group0d:
B30_0915:		lda wCurrRoomSection			; a5 33
B30_0917:		beq B30_0931 ; @group0dSection0

B30_0919:		cmp #$02		; c9 02
B30_091b:		beq B30_0927 ; @group0dSection2

B30_091d:		cmp #$03		; c9 03
B30_091f:		bne B30_090f ; d0 ee

B30_0921:		lda wCurrRoomIdx			; a5 34
B30_0923:		bne B30_090f ; d0 ea

B30_0925:		beq B30_092d ; f0 06

@group0dSection2:
B30_0927:		lda wCurrRoomIdx			; a5 34
B30_0929:		cmp #$02		; c9 02
B30_092b:		bne B30_090f ; d0 e2

; group 0d, section 2, room 2 data in bank 5
B30_092d:		ldy #$05		; a0 05
B30_092f:		bne B30_090f ; d0 de

@group0dSection0:
B30_0931:		lda wCurrRoomIdx			; a5 34
B30_0933:		beq B30_0939 ; f0 04

B30_0935:		cmp #$01		; c9 01
B30_0937:		bne B30_090f ; d0 d6

; group 0d, section 0, room 0/1 data in bank 2
B30_0939:		ldy #$02		; a0 02
B30_093b:		bne B30_090f ; d0 d2

@group0c:
B30_093d:		lda wCurrRoomSection			; a5 33
B30_093f:		bne B30_090f ; d0 ce

B30_0941:		lda wCurrRoomIdx			; a5 34
B30_0943:		cmp #$01		; c9 01
B30_0945:		bne B30_090f ; d0 c8

; group 0c, section 0, room 1 data in bank 1
B30_0947:		ldy #$01		; a0 01
B30_0949:		bne B30_090f ; d0 c4

data_1e_094b:
B30_094b:		.db $90 $90

B30_094d:		.db $90 $90

B30_094f:		.db $90 $8e

B30_0951:		stx $8e8e		; 8e 8e 8e
B30_0954:		sty $8e8c		; 8c 8c 8e
B30_0957:		sty $8c8c		; 8c 8c 8c


B30_095a:		lda #$00		; a9 00
B30_095c:		sta $17			; 85 17
B30_095e:		lda $68			; a5 68
B30_0960:		cmp #$82		; c9 82
B30_0962:		bcs B30_096f ; b0 0b

B30_0964:		lda $0537		; ad 37 05
B30_0967:		sta $0a			; 85 0a
B30_0969:		lda $0520		; ad 20 05
B30_096c:		sta $0b			; 85 0b
B30_096e:		rts				; 60 

B30_096f:		cmp #$84		; c9 84
B30_0971:		beq B30_09a3 ; f0 30

B30_0973:		lda $57			; a5 57
B30_0975:		cmp $71			; c5 71
B30_0977:		bne B30_097f ; d0 06

B30_0979:		lda $56			; a5 56
B30_097b:		cmp #$30		; c9 30
B30_097d:		beq B30_0964 ; f0 e5

B30_097f:		ldy #$00		; a0 00
B30_0981:		lda $68			; a5 68
B30_0983:		sec				; 38 
B30_0984:		sbc #$82		; e9 82
B30_0986:		beq B30_098a ; f0 02

B30_0988:		ldy #$03		; a0 03
B30_098a:		lda $ca30, y	; b9 30 ca
B30_098d:		sta $0a			; 85 0a
B30_098f:		lda $ca31, y	; b9 31 ca
B30_0992:		sta $0b			; 85 0b
B30_0994:		lda $ca32, y	; b9 32 ca
B30_0997:		sta $65			; 85 65
B30_0999:		rts				; 60 


B30_099a:		lda #$02		; a9 02
B30_099c:		sta $65			; 85 65
B30_099e:		lda #$00		; a9 00
B30_09a0:		sta $0b			; 85 0b
B30_09a2:		rts				; 60 


B30_09a3:		lda $57			; a5 57
B30_09a5:		ora $56			; 05 56
B30_09a7:		beq B30_099a ; f0 f1

B30_09a9:		lda $57			; a5 57
B30_09ab:		cmp $71			; c5 71
B30_09ad:		bne B30_09b5 ; d0 06

B30_09af:		lda $56			; a5 56
B30_09b1:		cmp #$30		; c9 30
B30_09b3:		beq B30_0964 ; f0 af

B30_09b5:		ldy $07a4		; ac a4 07
B30_09b8:		bne B30_09d3 ; d0 19

B30_09ba:		lda #$00		; a9 00
B30_09bc:		sta $0a			; 85 0a
B30_09be:		sta $0b			; 85 0b
B30_09c0:		inc $07a3		; ee a3 07
B30_09c3:		lda $07a3		; ad a3 07
B30_09c6:		cmp #$80		; c9 80
B30_09c8:		bcc B30_09d2 ; 90 08

B30_09ca:		lda #$08		; a9 08
B30_09cc:		sta $07a3		; 8d a3 07
B30_09cf:		inc $07a4		; ee a4 07
B30_09d2:		rts				; 60 


B30_09d3:		dey				; 88 
B30_09d4:		bne B30_09f7 ; d0 21

B30_09d6:		dec $07a3		; ce a3 07
B30_09d9:		bne B30_09e5 ; d0 0a

B30_09db:		lda #$04		; a9 04
B30_09dd:		jsr $c9cc		; 20 cc c9
B30_09e0:		lda #$37		; a9 37
B30_09e2:		jsr playSound		; 20 5f e2
B30_09e5:		inc $17			; e6 17
B30_09e7:		lda $07a3		; ad a3 07
B30_09ea:		and #$01		; 29 01
B30_09ec:		asl a			; 0a
B30_09ed:		tay				; a8 
B30_09ee:		lda $ca36, y	; b9 36 ca
B30_09f1:		ldx $ca37, y	; be 37 ca
B30_09f4:		jmp $ca08		; 4c 08 ca


B30_09f7:		dey				; 88 
B30_09f8:		bne B30_0a11 ; d0 17

B30_09fa:		dec $07a3		; ce a3 07
B30_09fd:		bne B30_0a04 ; d0 05

B30_09ff:		lda #$10		; a9 10
B30_0a01:		jsr $c9cc		; 20 cc c9
B30_0a04:		ldx #$00		; a2 00
B30_0a06:		lda #$f8		; a9 f8
B30_0a08:		stx $65			; 86 65
B30_0a0a:		sta $0b			; 85 0b
B30_0a0c:		lda #$00		; a9 00
B30_0a0e:		sta $0a			; 85 0a
B30_0a10:		rts				; 60 


B30_0a11:		dec $07a3		; ce a3 07
B30_0a14:		bne B30_0a1e ; d0 08

B30_0a16:		lda #$00		; a9 00
B30_0a18:		sta $07a4		; 8d a4 07
B30_0a1b:		sta $07a3		; 8d a3 07
B30_0a1e:		inc $17			; e6 17
B30_0a20:		lda $07a3		; ad a3 07
B30_0a23:		and #$01		; 29 01
B30_0a25:		asl a			; 0a
B30_0a26:		tay				; a8 
B30_0a27:		lda $ca3a, y	; b9 3a ca
B30_0a2a:		ldx $ca3b, y	; be 3b ca
B30_0a2d:		jmp $ca08		; 4c 08 ca


B30_0a30:		cpy #$ff		; c0 ff
B30_0a32:		.db $00				; 00
B30_0a33:		rti				; 40 


B30_0a34:		.db $00				; 00
B30_0a35:		ora ($01, x)	; 01 01
B30_0a37:		ora ($ff, x)	; 01 ff
B30_0a39:		.db $00				; 00
B30_0a3a:	.db $02
B30_0a3b:		ora ($fe, x)	; 01 fe
B30_0a3d:		.db $00				; 00
B30_0a3e:		jsr $c95a		; 20 5a c9
B30_0a41:		lda $56			; a5 56
B30_0a43:		sta $08			; 85 08
B30_0a45:		ldy $65			; a4 65
B30_0a47:		beq B30_0a92 ; f0 49

B30_0a49:		dey				; 88 
B30_0a4a:		beq B30_0a55 ; f0 09

B30_0a4c:		sec				; 38 
B30_0a4d:		lda $08			; a5 08
B30_0a4f:		sbc $56			; e5 56
B30_0a51:		sta $6e			; 85 6e
B30_0a53:		clc				; 18 
B30_0a54:		rts				; 60 


B30_0a55:		clc				; 18 
B30_0a56:		lda $58			; a5 58
B30_0a58:		adc $0a			; 65 0a
B30_0a5a:		sta $58			; 85 58
B30_0a5c:		lda $56			; a5 56
B30_0a5e:		adc $0b			; 65 0b
B30_0a60:		sta $56			; 85 56
B30_0a62:		cmp #$f0		; c9 f0
B30_0a64:		bcc B30_0a74 ; 90 0e

B30_0a66:		clc				; 18 
B30_0a67:		adc #$10		; 69 10
B30_0a69:		sta $56			; 85 56
B30_0a6b:		inc $57			; e6 57
B30_0a6d:		lda $08			; a5 08
B30_0a6f:		clc				; 18 
B30_0a70:		adc #$10		; 69 10
B30_0a72:		sta $08			; 85 08
B30_0a74:		lda $71			; a5 71
B30_0a76:		cmp $57			; c5 57
B30_0a78:		bne B30_0a84 ; d0 0a

B30_0a7a:		lda $56			; a5 56
B30_0a7c:		cmp #$30		; c9 30
B30_0a7e:		bcc B30_0a84 ; 90 04

B30_0a80:		lda #$30		; a9 30
B30_0a82:		sta $56			; 85 56
B30_0a84:		jmp $cab3		; 4c b3 ca


B30_0a87:		lda #$00		; a9 00
B30_0a89:		sta $56			; 85 56
B30_0a8b:		sta $57			; 85 57
B30_0a8d:		sta $58			; 85 58
B30_0a8f:		jmp $cab3		; 4c b3 ca


B30_0a92:		clc				; 18 
B30_0a93:		lda $58			; a5 58
B30_0a95:		adc $0a			; 65 0a
B30_0a97:		sta $58			; 85 58
B30_0a99:		lda $56			; a5 56
B30_0a9b:		adc $0b			; 65 0b
B30_0a9d:		sta $56			; 85 56
B30_0a9f:		bcs B30_0ab3 ; b0 12

B30_0aa1:		ldy $57			; a4 57
B30_0aa3:		beq B30_0a87 ; f0 e2

B30_0aa5:		sec				; 38 
B30_0aa6:		sbc #$10		; e9 10
B30_0aa8:		sta $56			; 85 56
B30_0aaa:		dec $57			; c6 57
B30_0aac:		lda $08			; a5 08
B30_0aae:		sec				; 38 
B30_0aaf:		sbc #$10		; e9 10
B30_0ab1:		sta $08			; 85 08
B30_0ab3:		lda $17			; a5 17
B30_0ab5:		bne B30_0a4c ; d0 95

B30_0ab7:		lda $56			; a5 56
B30_0ab9:		and #$f8		; 29 f8
B30_0abb:		cmp $66			; c5 66
B30_0abd:		beq B30_0a4c ; f0 8d

B30_0abf:		sta $66			; 85 66
B30_0ac1:		ldy $65			; a4 65
B30_0ac3:		beq B30_0af8 ; f0 33

B30_0ac5:		ldy $5c			; a4 5c
B30_0ac7:		iny				; c8 
B30_0ac8:		cpy #$1e		; c0 1e
B30_0aca:		bne B30_0ad5 ; d0 09

B30_0acc:		lda $5a			; a5 5a
B30_0ace:		clc				; 18 
B30_0acf:		adc #$08		; 69 08
B30_0ad1:		sta $5a			; 85 5a
B30_0ad3:		ldy #$00		; a0 00
B30_0ad5:		sty $5c			; 84 5c
B30_0ad7:		ldy $65			; a4 65
B30_0ad9:	.db $b9 $59 $00
B30_0adc:		and #$f8		; 29 f8
B30_0ade:	.db $99 $59 $00
B30_0ae1:	.db $b9 $5b $00
B30_0ae4:		lsr a			; 4a
B30_0ae5:		lsr a			; 4a
B30_0ae6:	.db $19 $59 $00
B30_0ae9:	.db $99 $59 $00
B30_0aec:		jsr $cfcb		; 20 cb cf
B30_0aef:		lda $08			; a5 08
B30_0af1:		sec				; 38 
B30_0af2:		sbc $56			; e5 56
B30_0af4:		sta $6e			; 85 6e
B30_0af6:		sec				; 38 
B30_0af7:		rts				; 60 


B30_0af8:		ldy $5b			; a4 5b
B30_0afa:		dey				; 88 
B30_0afb:		bpl B30_0b06 ; 10 09

B30_0afd:		lda $59			; a5 59
B30_0aff:		sec				; 38 
B30_0b00:		sbc #$08		; e9 08
B30_0b02:		sta $59			; 85 59
B30_0b04:		ldy #$1d		; a0 1d
B30_0b06:		sty $5b			; 84 5b
B30_0b08:		jmp $cad7		; 4c d7 ca


B30_0b0b:		jsr $ca3e		; 20 3e ca
B30_0b0e:		bcc B30_0b1a ; 90 0a

B30_0b10:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_0b13:		ldy $65			; a4 65
B30_0b15:	.db $b9 $59 $00
B30_0b18:		bpl B30_0b1b ; 10 01

B30_0b1a:		rts				; 60 


B30_0b1b:		tya				; 98 
B30_0b1c:		asl a			; 0a
B30_0b1d:		tax				; aa 
B30_0b1e:		lda $52, x		; b5 52
B30_0b20:		sta $10			; 85 10
B30_0b22:		lda $53, x		; b5 53
B30_0b24:		sta $11			; 85 11
B30_0b26:		ldx #$ff		; a2 ff
B30_0b28:		ldy $65			; a4 65
B30_0b2a:	.db $b9 $5b $00
B30_0b2d:		and #$01		; 29 01
B30_0b2f:		bne B30_0b39 ; d0 08

B30_0b31:	.db $b9 $5b $00
B30_0b34:		and #$fe		; 29 fe
B30_0b36:		asl a			; 0a
B30_0b37:		asl a			; 0a
B30_0b38:		tax				; aa 
B30_0b39:		stx $04			; 86 04
B30_0b3b:	.db $b9 $5b $00
B30_0b3e:		and #$03		; 29 03
B30_0b40:		asl a			; 0a
B30_0b41:		asl a			; 0a
B30_0b42:		sta $12			; 85 12
B30_0b44:		ldx $1d			; a6 1d
B30_0b46:	.db $b9 $5b $00
B30_0b49:		and #$03		; 29 03
B30_0b4b:		cmp #$01		; c9 01
B30_0b4d:		bne B30_0b53 ; d0 04

B30_0b4f:		lda #$07		; a9 07
B30_0b51:		bne B30_0b55 ; d0 02

B30_0b53:		lda #$06		; a9 06
B30_0b55:		sta $0300, x	; 9d 00 03
B30_0b58:		sta $06			; 85 06
B30_0b5a:		inx				; e8 
B30_0b5b:		lda #$00		; a9 00
B30_0b5d:		sta $61			; 85 61
B30_0b5f:		ldy $65			; a4 65
B30_0b61:	.db $b9 $59 $00
B30_0b64:		and #$07		; 29 07
B30_0b66:		lsr a			; 4a
B30_0b67:		ror $61			; 66 61
B30_0b69:		clc				; 18 
B30_0b6a:		adc #$28		; 69 28
B30_0b6c:		sta $0301, x	; 9d 01 03
B30_0b6f:	.db $b9 $5b $00
B30_0b72:		and #$03		; 29 03
B30_0b74:		asl a			; 0a
B30_0b75:		asl a			; 0a
B30_0b76:		asl a			; 0a
B30_0b77:		asl a			; 0a
B30_0b78:		asl a			; 0a
B30_0b79:		clc				; 18 
B30_0b7a:		adc $61			; 65 61
B30_0b7c:		sta $0300, x	; 9d 00 03
B30_0b7f:		inx				; e8 
B30_0b80:		inx				; e8 
B30_0b81:		stx $1d			; 86 1d
B30_0b83:		lda $06			; a5 06
B30_0b85:		cmp #$07		; c9 07
B30_0b87:		bne B30_0b9c ; d0 13

B30_0b89:	.db $b9 $59 $00
B30_0b8c:		and #$07		; 29 07
B30_0b8e:		tay				; a8 
B30_0b8f:		lda $cd5c, y	; b9 5c cd
B30_0b92:		sta $0320, x	; 9d 20 03
B30_0b95:		lda #$2b		; a9 2b
B30_0b97:		sta $0321, x	; 9d 21 03
B30_0b9a:		stx $07			; 86 07
B30_0b9c:		jsr func_1e_0f6c		; 20 6c cf
B30_0b9f:		ldy $12			; a4 12
B30_0ba1:		jsr $cbea		; 20 ea cb
B30_0ba4:		jsr func_1e_0f6c		; 20 6c cf
B30_0ba7:		ldy $12			; a4 12
B30_0ba9:		jsr $cbea		; 20 ea cb
B30_0bac:		jsr func_1e_0f6c		; 20 6c cf
B30_0baf:		ldy $12			; a4 12
B30_0bb1:		jsr $cbea		; 20 ea cb
B30_0bb4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bb7:		ldy $12			; a4 12
B30_0bb9:		jsr $cbea		; 20 ea cb
B30_0bbc:		jsr func_1e_0f6c		; 20 6c cf
B30_0bbf:		ldy $12			; a4 12
B30_0bc1:		jsr $cbea		; 20 ea cb
B30_0bc4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bc7:		ldy $12			; a4 12
B30_0bc9:		jsr $cbea		; 20 ea cb
B30_0bcc:		jsr func_1e_0f6c		; 20 6c cf
B30_0bcf:		ldy $12			; a4 12
B30_0bd1:		jsr $cbea		; 20 ea cb
B30_0bd4:		jsr func_1e_0f6c		; 20 6c cf
B30_0bd7:		ldy $12			; a4 12
B30_0bd9:		jsr $cbea		; 20 ea cb
B30_0bdc:		lda $06			; a5 06
B30_0bde:		cmp #$06		; c9 06
B30_0be0:		beq B30_0be9 ; f0 07

B30_0be2:		lda $1d			; a5 1d
B30_0be4:		clc				; 18 
B30_0be5:		adc #$0a		; 69 0a
B30_0be7:		sta $1d			; 85 1d
B30_0be9:		rts				; 60 


B30_0bea:		ldx $1d			; a6 1d
B30_0bec:		lda ($02), y	; b1 02
B30_0bee:		sta $0300, x	; 9d 00 03
B30_0bf1:		inx				; e8 
B30_0bf2:		iny				; c8 
B30_0bf3:		lda ($02), y	; b1 02
B30_0bf5:		sta $0300, x	; 9d 00 03
B30_0bf8:		inx				; e8 
B30_0bf9:		iny				; c8 
B30_0bfa:		lda ($02), y	; b1 02
B30_0bfc:		sta $0300, x	; 9d 00 03
B30_0bff:		inx				; e8 
B30_0c00:		iny				; c8 
B30_0c01:		lda ($02), y	; b1 02
B30_0c03:		sta $0300, x	; 9d 00 03
B30_0c06:		inx				; e8 
B30_0c07:		iny				; c8 
B30_0c08:		stx $1d			; 86 1d
B30_0c0a:		lda $06			; a5 06
B30_0c0c:		cmp #$06		; c9 06
B30_0c0e:		beq B30_0c1d ; f0 0d

B30_0c10:		ldx $07			; a6 07
B30_0c12:		ldy $63			; a4 63
B30_0c14:		lda ($5f), y	; b1 5f
B30_0c16:		sta $0322, x	; 9d 22 03
B30_0c19:		inc $07			; e6 07
B30_0c1b:		bne B30_0c40 ; d0 23

B30_0c1d:		ldy $04			; a4 04
B30_0c1f:		cpy #$ff		; c0 ff
B30_0c21:		beq B30_0c40 ; f0 1d

B30_0c23:		lda $02fc, x	; bd fc 02
B30_0c26:		jsr $d3b9		; 20 b9 d3
B30_0c29:		tya				; 98 
B30_0c2a:		asl a			; 0a
B30_0c2b:		asl a			; 0a
B30_0c2c:		asl a			; 0a
B30_0c2d:		asl a			; 0a
B30_0c2e:		sta $05			; 85 05
B30_0c30:		lda $02fe, x	; bd fe 02
B30_0c33:		jsr $d3b9		; 20 b9 d3
B30_0c36:		tya				; 98 
B30_0c37:		ora $05			; 05 05
B30_0c39:		ldy $04			; a4 04
B30_0c3b:		sta $06e0, y	; 99 e0 06
B30_0c3e:		inc $04			; e6 04
B30_0c40:		inc $10			; e6 10
B30_0c42:		bne B30_0c46 ; d0 02

B30_0c44:		inc $11			; e6 11
B30_0c46:		rts				; 60 


B30_0c47:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_0c4a:		lda $5a			; a5 5a
B30_0c4c:		bpl B30_0c51 ; 10 03

B30_0c4e:		jmp $cd4e		; 4c 4e cd


B30_0c51:		asl a			; 0a
B30_0c52:		asl a			; 0a
B30_0c53:		rol $11			; 26 11
B30_0c55:		asl a			; 0a
B30_0c56:		rol $11			; 26 11
B30_0c58:		sta $10			; 85 10
B30_0c5a:		lda $11			; a5 11
B30_0c5c:		and #$03		; 29 03
B30_0c5e:		sta $11			; 85 11
B30_0c60:		lda $b6			; a5 b6
B30_0c62:		ldx #$10		; a2 10
B30_0c64:		jsr incPointerXByA		; 20 99 e8
B30_0c67:		lda #$01		; a9 01
B30_0c69:		ldx #$10		; a2 10
B30_0c6b:		jsr incPointerXByA		; 20 99 e8
B30_0c6e:		lda $50			; a5 50
B30_0c70:		clc				; 18 
B30_0c71:		adc $10			; 65 10
B30_0c73:		sta $10			; 85 10
B30_0c75:		lda $51			; a5 51
B30_0c77:		adc $11			; 65 11
B30_0c79:		sta $11			; 85 11
B30_0c7b:		lda #$00		; a9 00
B30_0c7d:		sta $61			; 85 61
B30_0c7f:		lda $5a			; a5 5a
B30_0c81:		lsr a			; 4a
B30_0c82:		ror $61			; 66 61
B30_0c84:		and #$03		; 29 03
B30_0c86:		clc				; 18 
B30_0c87:		adc #$28		; 69 28
B30_0c89:		sta $62			; 85 62
B30_0c8b:		lda $b6			; a5 b6
B30_0c8d:		asl a			; 0a
B30_0c8e:		asl a			; 0a
B30_0c8f:		ldx #$61		; a2 61
B30_0c91:		jsr incPointerXByA		; 20 99 e8
B30_0c94:		lda $5a			; a5 5a
B30_0c96:		and #$07		; 29 07
B30_0c98:		asl a			; 0a
B30_0c99:		asl a			; 0a
B30_0c9a:		asl a			; 0a
B30_0c9b:		asl a			; 0a
B30_0c9c:		sta $12			; 85 12
B30_0c9e:		jsr func_1e_0f6c		; 20 6c cf
B30_0ca1:		lda $5a			; a5 5a
B30_0ca3:		and #$07		; 29 07
B30_0ca5:		cmp #$07		; c9 07
B30_0ca7:		bne B30_0cb3 ; d0 0a

B30_0ca9:		lda #$02		; a9 02
B30_0cab:		sta $06			; 85 06
B30_0cad:		jsr func_1f_08c0		; 20 c0 e8
B30_0cb0:		jmp $ccc0		; 4c c0 cc


B30_0cb3:		lda #$04		; a9 04
B30_0cb5:		sta $06			; 85 06
B30_0cb7:		jsr func_1f_08c6		; 20 c6 e8
B30_0cba:		jmp $ccc0		; 4c c0 cc


B30_0cbd:		jsr func_1f_08bb		; 20 bb e8
B30_0cc0:		ldy #$00		; a0 00
B30_0cc2:		lda ($02), y	; b1 02
B30_0cc4:		sta $0300, x	; 9d 00 03
B30_0cc7:		inx				; e8 
B30_0cc8:		iny				; c8 
B30_0cc9:		cpy #$04		; c0 04
B30_0ccb:		bne B30_0cc2 ; d0 f5

B30_0ccd:		stx $1d			; 86 1d
B30_0ccf:		lda $06			; a5 06
B30_0cd1:		and #$01		; 29 01
B30_0cd3:		bne B30_0cff ; d0 2a

B30_0cd5:		lda $02fc, x	; bd fc 02
B30_0cd8:		jsr $d3b9		; 20 b9 d3
B30_0cdb:		tya				; 98 
B30_0cdc:		asl a			; 0a
B30_0cdd:		asl a			; 0a
B30_0cde:		asl a			; 0a
B30_0cdf:		asl a			; 0a
B30_0ce0:		sta $13			; 85 13
B30_0ce2:		lda $02fe, x	; bd fe 02
B30_0ce5:		jsr $d3b9		; 20 b9 d3
B30_0ce8:		tya				; 98 
B30_0ce9:		ora $13			; 05 13
B30_0ceb:		sta $13			; 85 13
B30_0ced:		lda $12			; a5 12
B30_0cef:		clc				; 18 
B30_0cf0:		adc $b6			; 65 b6
B30_0cf2:		tay				; a8 
B30_0cf3:		lda $13			; a5 13
B30_0cf5:		sta $06e0, y	; 99 e0 06
B30_0cf8:		lda $12			; a5 12
B30_0cfa:		clc				; 18 
B30_0cfb:		adc #$08		; 69 08
B30_0cfd:		sta $12			; 85 12
B30_0cff:		lda #$04		; a9 04
B30_0d01:		ldx #$02		; a2 02
B30_0d03:		jsr incPointerXByA		; 20 99 e8
B30_0d06:		lda #$20		; a9 20
B30_0d08:		ldx #$61		; a2 61
B30_0d0a:		jsr incPointerXByA		; 20 99 e8
B30_0d0d:		dec $06			; c6 06
B30_0d0f:		bne B30_0cbd ; d0 ac

B30_0d11:		lda $5a			; a5 5a
B30_0d13:		and #$07		; 29 07
B30_0d15:		tay				; a8 
B30_0d16:		lda $cd5c, y	; b9 5c cd
B30_0d19:		clc				; 18 
B30_0d1a:		adc $b6			; 65 b6
B30_0d1c:		sta $04			; 85 04
B30_0d1e:		ldx $1d			; a6 1d
B30_0d20:		lda $04			; a5 04
B30_0d22:		sta $0300, x	; 9d 00 03
B30_0d25:		inx				; e8 
B30_0d26:		lda #$2b		; a9 2b
B30_0d28:		sta $0300, x	; 9d 00 03
B30_0d2b:		inx				; e8 
B30_0d2c:		ldy $63			; a4 63
B30_0d2e:		lda ($5f), y	; b1 5f
B30_0d30:		sta $0300, x	; 9d 00 03
B30_0d33:		inx				; e8 
B30_0d34:		stx $1d			; 86 1d
B30_0d36:		lda #$01		; a9 01
B30_0d38:		ldx #$10		; a2 10
B30_0d3a:		jsr incPointerXByA		; 20 99 e8
B30_0d3d:		inc $b6			; e6 b6
B30_0d3f:		lda $b6			; a5 b6
B30_0d41:		and #$03		; 29 03
B30_0d43:		beq B30_0d48 ; f0 03

B30_0d45:		jmp $cc7b		; 4c 7b cc


B30_0d48:		lda $b6			; a5 b6
B30_0d4a:		cmp #$08		; c9 08
B30_0d4c:		bne B30_0d54 ; d0 06

B30_0d4e:		lda #$00		; a9 00
B30_0d50:		sta $b6			; 85 b6
B30_0d52:		inc $5a			; e6 5a
B30_0d54:		dec $64			; c6 64
B30_0d56:		bne B30_0d5a ; d0 02

B30_0d58:		sec				; 38 
B30_0d59:		rts				; 60 


B30_0d5a:		clc				; 18 
B30_0d5b:		rts				; 60 


B30_0d5c:		cpy #$c8		; c0 c8
B30_0d5e:		bne B30_0d38 ; d0 d8

B30_0d60:		cpx #$e8		; e0 e8
B30_0d62:		beq B30_0d5c ; f0 f8

B30_0d64:		lda $65			; a5 65
B30_0d66:		bne B30_0d72 ; d0 0a

B30_0d68:		lda $71			; a5 71
B30_0d6a:		asl a			; 0a
B30_0d6b:		asl a			; 0a
B30_0d6c:		asl a			; 0a
B30_0d6d:		clc				; 18 
B30_0d6e:		adc #$07		; 69 07
B30_0d70:		bne B30_0d74 ; d0 02

B30_0d72:		lda #$00		; a9 00
B30_0d74:		sta $5a			; 85 5a
B30_0d76:		lda #$0a		; a9 0a
B30_0d78:		sta $64			; 85 64
B30_0d7a:		rts				; 60 


B30_0d7b:		lda #$00		; a9 00
B30_0d7d:		sta $b6			; 85 b6
B30_0d7f:		lda #$10		; a9 10
B30_0d81:		bne B30_0d85 ; d0 02

B30_0d83:		lda #$0c		; a9 0c
B30_0d85:		sta $64			; 85 64
B30_0d87:		lda $59			; a5 59
B30_0d89:		sta $5a			; 85 5a
B30_0d8b:		rts				; 60 


B30_0d8c:		lda #$03		; a9 03
B30_0d8e:		sta $07			; 85 07
B30_0d90:		ldy #$00		; a0 00
B30_0d92:		lda $64			; a5 64
B30_0d94:		and #$01		; 29 01
B30_0d96:		beq B30_0d9a ; f0 02

B30_0d98:		ldy #$03		; a0 03
B30_0d9a:		sty $5c			; 84 5c
B30_0d9c:		lda $65			; a5 65
B30_0d9e:		bne B30_0da8 ; d0 08

B30_0da0:		lda $71			; a5 71
B30_0da2:		and #$01		; 29 01
B30_0da4:		bne B30_0dc0 ; d0 1a

B30_0da6:		beq B30_0dae ; f0 06

B30_0da8:		lda $57			; a5 57
B30_0daa:		and #$01		; 29 01
B30_0dac:		bne B30_0dc0 ; d0 12

B30_0dae:		lda $75			; a5 75
B30_0db0:		and #$01		; 29 01
B30_0db2:		bne B30_0dd0 ; d0 1c

B30_0db4:		ldx #$08		; a2 08
B30_0db6:		bne B30_0dd2 ; d0 1a

B30_0db8:		lda #$00		; a9 00
B30_0dba:		sta $5c			; 85 5c
B30_0dbc:		lda #$06		; a9 06
B30_0dbe:		sta $07			; 85 07
B30_0dc0:		lda $75			; a5 75
B30_0dc2:		and #$01		; 29 01
B30_0dc4:		bne B30_0db4 ; d0 ee

B30_0dc6:		beq B30_0dd0 ; f0 08

func_1e_0dc8:
B30_0dc8:		lda #$00		; a9 00
B30_0dca:		sta $5c			; 85 5c
B30_0dcc:		lda #$06		; a9 06
B30_0dce:		sta $07			; 85 07
B30_0dd0:		ldx #$00		; a2 00
B30_0dd2:		stx $08			; 86 08

B30_0dd4:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_0dd7:		lda $5a			; a5 5a
B30_0dd9:		bpl B30_0dde ; 10 03

B30_0ddb:		jmp B30_0f27		; 4c 27 cf

B30_0dde:		cmp $7b			; c5 7b
B30_0de0:		bcc B30_0de5 ; 90 03

B30_0de2:		jmp B30_0f27		; 4c 27 cf

B30_0de5:		lsr a			; 4a
B30_0de6:		lsr a			; 4a
B30_0de7:		lsr a			; 4a
B30_0de8:		tay				; a8 
B30_0de9:		lda #$00		; a9 00
B30_0deb:		sta $10			; 85 10
B30_0ded:		sta $11			; 85 11

B30_0def:		dey				; 88 
B30_0df0:		bmi B30_0dfc ; 30 0a

B30_0df2:		lda #$30		; a9 30
B30_0df4:		ldx #$10		; a2 10
B30_0df6:		jsr incPointerXByA		; 20 99 e8
B30_0df9:		jmp B30_0def		; 4c ef cd

B30_0dfc:		lda $5c			; a5 5c
B30_0dfe:		asl a			; 0a
B30_0dff:		asl a			; 0a
B30_0e00:		asl a			; 0a
B30_0e01:		ldx #$10		; a2 10
B30_0e03:		jsr incPointerXByA		; 20 99 e8

B30_0e06:		lda $5a			; a5 5a
B30_0e08:		and #$07		; 29 07
B30_0e0a:		tay				; a8 
B30_0e0b:		iny				; c8 
B30_0e0c:		tya				; 98 
B30_0e0d:		ldx #$10		; a2 10
B30_0e0f:		jsr incPointerXByA		; 20 99 e8

B30_0e12:		ldx #$20		; a2 20
B30_0e14:		lda $5a			; a5 5a
B30_0e16:		and #$08		; 29 08
B30_0e18:		eor $08			; 45 08
B30_0e1a:		beq B30_0e1e ; f0 02

B30_0e1c:		ldx #$24		; a2 24
B30_0e1e:		stx $62			; 86 62

B30_0e20:		lda $5a			; a5 5a
B30_0e22:		and #$07		; 29 07
B30_0e24:		asl a			; 0a
B30_0e25:		asl a			; 0a
B30_0e26:		clc				; 18 
B30_0e27:		adc #$c0		; 69 c0
B30_0e29:		sta $61			; 85 61

B30_0e2b:		lda $5c			; a5 5c
B30_0e2d:		beq B30_0e3c ; f0 0d

B30_0e2f:		lda $61			; a5 61
B30_0e31:		clc				; 18 
B30_0e32:		adc #$40		; 69 40
B30_0e34:		sta $61			; 85 61
B30_0e36:		lda $62			; a5 62
B30_0e38:		adc #$01		; 69 01
B30_0e3a:		sta $62			; 85 62

B30_0e3c:		lda $50			; a5 50
B30_0e3e:		clc				; 18 
B30_0e3f:		adc $10			; 65 10
B30_0e41:		sta $10			; 85 10
B30_0e43:		lda $51			; a5 51
B30_0e45:		adc $11			; 65 11
B30_0e47:		sta $11			; 85 11

B30_0e49:		jsr func_1e_0f6c		; 20 6c cf
B30_0e4c:		lda $5c			; a5 5c
B30_0e4e:		asl a			; 0a
B30_0e4f:		sta $00			; 85 00
B30_0e51:		lda $5a			; a5 5a

B30_0e53:		cmp #$0c		; c9 0c
B30_0e55:		bcc B30_0e5c ; 90 05

B30_0e57:		sbc #$0c		; e9 0c
B30_0e59:		jmp B30_0e53		; 4c 53 ce

B30_0e5c:		tay				; a8 
B30_0e5d:		lda $fd4c, y	; b9 4c fd
B30_0e60:		clc				; 18 
B30_0e61:		adc $00			; 65 00
B30_0e63:		sta $12			; 85 12
B30_0e65:		lda $5c			; a5 5c
B30_0e67:		bne B30_0e83 ; d0 1a

B30_0e69:		lda #$00		; a9 00
B30_0e6b:		ldy $12			; a4 12
B30_0e6d:		sta $06e0, y	; 99 e0 06
B30_0e70:		inc $12			; e6 12
B30_0e72:		ldx #$02		; a2 02
B30_0e74:		lda #$08		; a9 08
B30_0e76:		jsr incPointerXByA		; 20 99 e8

B30_0e79:		lda #$02		; a9 02
B30_0e7b:		sta $06			; 85 06
B30_0e7d:		jsr func_1f_08c0		; control code 5 and dest
B30_0e80:		jmp B30_0e90		; 4c 90 ce

B30_0e83:		lda #$04		; a9 04
B30_0e85:		sta $06			; 85 06
B30_0e87:		jsr func_1f_08c6		; control code 4 and dest
B30_0e8a:		jmp B30_0e90		; 4c 90 ce

B30_0e8d:		jsr func_1f_08bb		; copy more bytes

B30_0e90:		ldy #$00		; a0 00
-	lda ($02), y	; b1 02
B30_0e94:		sta wVramQueue.w, x	; 9d 00 03
B30_0e97:		inx				; e8 
B30_0e98:		iny				; c8 
B30_0e99:		cpy #$04		; c0 04
	bne -

B30_0e9d:		stx $1d			; 86 1d
B30_0e9f:		lda $06			; a5 06
B30_0ea1:		and #$01		; 29 01
B30_0ea3:		bne B30_0ec2 ; d0 1d

B30_0ea5:		lda $02fc, x	; bd fc 02
B30_0ea8:		jsr $d3b9		; 20 b9 d3
B30_0eab:		tya				; 98 
B30_0eac:		asl a			; 0a
B30_0ead:		asl a			; 0a
B30_0eae:		asl a			; 0a
B30_0eaf:		asl a			; 0a
B30_0eb0:		sta $13			; 85 13
B30_0eb2:		lda $02fe, x	; bd fe 02
B30_0eb5:		jsr $d3b9		; 20 b9 d3
B30_0eb8:		tya				; 98 
B30_0eb9:		ora $13			; 05 13
B30_0ebb:		ldy $12			; a4 12
B30_0ebd:		sta $06e0, y	; 99 e0 06
B30_0ec0:		inc $12			; e6 12
B30_0ec2:		lda #$04		; a9 04
B30_0ec4:		ldx #$02		; a2 02
B30_0ec6:		jsr incPointerXByA		; 20 99 e8
B30_0ec9:		lda #$20		; a9 20
B30_0ecb:		ldx #$61		; a2 61
B30_0ecd:		jsr incPointerXByA		; 20 99 e8
B30_0ed0:		dec $06			; c6 06
B30_0ed2:		bne B30_0e8d ; d0 b9

B30_0ed4:		ldx $5c			; a6 5c
B30_0ed6:		lda $5a			; a5 5a
B30_0ed8:		and #$07		; 29 07
B30_0eda:		clc				; 18 
B30_0edb:		adc $d31f, x	; 7d 1f d3
B30_0ede:		sta $04			; 85 04
B30_0ee0:		lda $5a			; a5 5a
B30_0ee2:		and #$08		; 29 08
B30_0ee4:		eor $08			; 45 08
B30_0ee6:		beq B30_0eec ; f0 04

B30_0ee8:		lda #$27		; a9 27
B30_0eea:		bne B30_0eee ; d0 02

; palette addr
B30_0eec:		lda #$23		; a9 23
B30_0eee:		sta $05			; 85 05
B30_0ef0:		ldx $1d			; a6 1d
B30_0ef2:		lda $04			; a5 04
B30_0ef4:		sta wVramQueue.w, x	; 9d 00 03
B30_0ef7:		inx				; e8 
B30_0ef8:		lda $05			; a5 05
B30_0efa:		sta wVramQueue.w, x	; 9d 00 03
B30_0efd:		inx				; e8 
B30_0efe:		ldy $63			; a4 63
B30_0f00:		lda (wCurrRoomGroupMetaTilePalettes), y	; b1 5f
B30_0f02:		ldy $5c			; a4 5c
B30_0f04:		beq B30_0f22 ; f0 1c

; palette
B30_0f06:		sta wVramQueue.w, x	; 9d 00 03
B30_0f09:		inx				; e8 
B30_0f0a:		stx $1d			; 86 1d
B30_0f0c:		lda #$08		; a9 08
B30_0f0e:		ldx #$10		; a2 10
B30_0f10:		jsr incPointerXByA		; 20 99 e8
B30_0f13:		inc $5c			; e6 5c
B30_0f15:		lda $5c			; a5 5c
B30_0f17:		cmp #$06		; c9 06
B30_0f19:		beq B30_0f27 ; f0 0c

B30_0f1b:		dec $07			; c6 07
B30_0f1d:		beq B30_0f29 ; f0 0a

B30_0f1f:		jmp B30_0e49		; 4c 49 ce

B30_0f22:		and #$f0		; 29 f0
B30_0f24:		jmp B30_0f06		; 4c 06 cf

B30_0f27:		inc $5a			; e6 5a
B30_0f29:		dec $64			; c6 64
B30_0f2b:		bne B30_0f2f ; d0 02

B30_0f2d:		sec				; 38 
B30_0f2e:		rts				; 60 

B30_0f2f:		clc				; 18 
B30_0f30:		rts				; 60 


; gets a metatile
B30_0f31:		ldy $b3			; a4 b3
B30_0f33:		beq B30_0f6c ; f0 37

B30_0f35:		lda $7d			; a5 7d
B30_0f37:		and #$f0		; 29 f0
B30_0f39:		cmp #$80		; c9 80
B30_0f3b:		bne B30_0f6c ; d0 2f

B30_0f3d:		ldy #$00		; a0 00
B30_0f3f:		sty $03			; 84 03
B30_0f41:		ldy $a1			; a4 a1
B30_0f43:	.db $b9 $5b $00
B30_0f46:		cmp #$03		; c9 03
B30_0f48:		bne B30_0f6c ; d0 22

B30_0f4a:	.db $b9 $59 $00
B30_0f4d:		tay				; a8 
B30_0f4e:		lda $7d			; a5 7d
B30_0f50:		cmp #$81		; c9 81
B30_0f52:		beq B30_0f5a ; f0 06

B30_0f54:		lda $b48e, y	; b9 8e b4
B30_0f57:		jmp B30_0f72		; 4c 72 cf


B30_0f5a:		lda $bdf1, y	; b9 f1 bd
B30_0f5d:		jmp B30_0f72		; 4c 72 cf


B30_0f60:		lda #$00		; a9 00
B30_0f62:		sta $03			; 85 03
B30_0f64:		beq B30_0f70 ; f0 0a

B30_0f66:		ldy #$00		; a0 00
B30_0f68:		sty $03			; 84 03
B30_0f6a:		beq B30_0f72 ; f0 06

func_1e_0f6c:
B30_0f6c:		ldy #$00		; a0 00
B30_0f6e:		sty $03			; 84 03
B30_0f70:		lda ($10), y	; b1 10

B30_0f72:		sta $63			; 85 63
; 02/03 = 16A + 5d/5e
B30_0f74:		asl a			; 0a
B30_0f75:		rol $03			; 26 03
B30_0f77:		asl a			; 0a
B30_0f78:		rol $03			; 26 03
B30_0f7a:		asl a			; 0a
B30_0f7b:		rol $03			; 26 03
B30_0f7d:		asl a			; 0a
B30_0f7e:		rol $03			; 26 03
B30_0f80:		clc				; 18 
B30_0f81:		adc $5d			; 65 5d
B30_0f83:		sta $02			; 85 02
B30_0f85:		lda $03			; a5 03
B30_0f87:		adc $5e			; 65 5e
B30_0f89:		sta $03			; 85 03
B30_0f8b:		rts				; 60 


func_1e_0f8c:
B30_0f8c:		lda #$1e		; a9 1e
B30_0f8e:		sta $fe			; 85 fe
B30_0f90:		lda #$00		; a9 00
B30_0f92:		sta $07a3		; 8d a3 07
B30_0f95:		sta $07a4		; 8d a4 07
B30_0f98:		lda #$02		; a9 02
B30_0f9a:		sta $72			; 85 72
B30_0f9c:		lda #$05		; a9 05
B30_0f9e:		ldx #$29		; a2 29
B30_0fa0:		ldy #$2a		; a0 2a
B30_0fa2:		jsr func_1f_05bf		; 20 bf e5
B30_0fa5:		lda #$b0		; a9 b0
B30_0fa7:		sta $ff			; 85 ff
B30_0fa9:		lda #$04		; a9 04
B30_0fab:		sta $fc			; 85 fc
B30_0fad:		lda $56			; a5 56
B30_0faf:		and #$f8		; 29 f8
B30_0fb1:		sta $66			; 85 66
B30_0fb3:		jsr $d121		; 20 21 d1
B30_0fb6:		lda $59			; a5 59
B30_0fb8:		and #$07		; 29 07
B30_0fba:		asl a			; 0a
B30_0fbb:		asl a			; 0a
B30_0fbc:		sta $5b			; 85 5b
B30_0fbe:		inc $5b			; e6 5b
B30_0fc0:		lda $5a			; a5 5a
B30_0fc2:		and #$07		; 29 07
B30_0fc4:		asl a			; 0a
B30_0fc5:		asl a			; 0a
B30_0fc6:		clc				; 18 
B30_0fc7:		adc #$03		; 69 03
B30_0fc9:		sta $5c			; 85 5c
B30_0fcb:		ldx #$00		; a2 00
B30_0fcd:		ldy #$00		; a0 00
B30_0fcf:		lda $68			; a5 68
B30_0fd1:		and #$01		; 29 01
B30_0fd3:		beq B30_0fd9 ; f0 04

B30_0fd5:		ldy #$01		; a0 01
B30_0fd7:		ldx #$02		; a2 02
B30_0fd9:		lda #$00		; a9 00
B30_0fdb:		sta $05			; 85 05
B30_0fdd:	.db $b9 $59 $00
B30_0fe0:		asl a			; 0a
B30_0fe1:		asl a			; 0a
B30_0fe2:		rol $05			; 26 05
B30_0fe4:		asl a			; 0a
B30_0fe5:		rol $05			; 26 05
B30_0fe7:		clc				; 18 
B30_0fe8:		adc $50			; 65 50
B30_0fea:		sta $52, x		; 95 52
B30_0fec:		lda $05			; a5 05
B30_0fee:		adc $51			; 65 51
B30_0ff0:		sta $53, x		; 95 53
B30_0ff2:		inc $52, x		; f6 52
B30_0ff4:		bne B30_0ff8 ; d0 02

B30_0ff6:		inc $53, x		; f6 53
B30_0ff8:		rts				; 60 


func_1e_0ff9:
B30_0ff9:		lda #$01		; a9 01
B30_0ffb:		ldx #$2e		; a2 2e
B30_0ffd:		jsr func_1f_05c1		; 20 c1 e5
B30_1000:		lda #$01		; a9 01
B30_1002:		sta $72			; 85 72
B30_1004:		lda #$00		; a9 00
B30_1006:		sta $67			; 85 67
B30_1008:		sta $fc			; 85 fc
B30_100a:		lda #$02		; a9 02
B30_100c:		sta $a1			; 85 a1
B30_100e:		lda $56			; a5 56
B30_1010:		and #$e0		; 29 e0
B30_1012:		sta $66			; 85 66
B30_1014:		jsr $d13b		; 20 3b d1
B30_1017:		lda #$00		; a9 00
B30_1019:		sta $5b			; 85 5b
B30_101b:		sta $5c			; 85 5c
B30_101d:		ldx #$00		; a2 00
B30_101f:		ldy #$00		; a0 00
B30_1021:		lda $59, x		; b5 59
B30_1023:		bmi B30_1028 ; 30 03

B30_1025:		jsr B30_102c		; 20 2c d0
B30_1028:		ldx #$01		; a2 01
B30_102a:		ldy #$02		; a0 02

B30_102c:		lda #$00		; a9 00
B30_102e:		sta $05			; 85 05
B30_1030:		lda $59, x		; b5 59
B30_1032:		and #$f8		; 29 f8
B30_1034:		asl a			; 0a
B30_1035:		sta $04			; 85 04
B30_1037:		clc				; 18 
B30_1038:		adc $04			; 65 04
B30_103a:		bcc B30_103f ; 90 03

B30_103c:		inc $05			; e6 05
B30_103e:		clc				; 18 
B30_103f:		adc $04			; 65 04
B30_1041:		bcc B30_1045 ; 90 02

B30_1043:		inc $05			; e6 05
B30_1045:		sta $04			; 85 04
B30_1047:		lda $59, x		; b5 59
B30_1049:		and #$07		; 29 07
B30_104b:		tax				; aa 
B30_104c:		inx				; e8 
B30_104d:		txa				; 8a 
B30_104e:		clc				; 18 
B30_104f:		adc $04			; 65 04
B30_1051:		sta $04			; 85 04
B30_1053:		bcc B30_1057 ; 90 02

B30_1055:		inc $05			; e6 05
B30_1057:		lda $04			; a5 04
B30_1059:		clc				; 18 
B30_105a:		adc wRoomMetaTilesAddr			; 65 50
B30_105c:		sta $52.w, y
B30_105f:		lda $05			; a5 05
B30_1061:		adc wRoomMetaTilesAddr+1			; 65 51
B30_1063:		sta $53.w, y
B30_1066:		rts				; 60 


func_1e_1067:
B30_1067:		jsr setBankOfRoomGroupMetaData_todo		; 20 00 c9
B30_106a:		lda $68			; a5 68
B30_106c:		sta $73			; 85 73

B30_106e:		lda wCurrRoomGroup			; a5 32
B30_1070:		asl a			; 0a
B30_1071:		sta $0c			; 85 0c
B30_1073:		tay				; a8 
B30_1074:		lda data_1e_162e.w, y	; b9 2e d6
B30_1077:		sta $08			; 85 08
B30_1079:		lda data_1e_162e.w+1, y	; b9 2f d6
B30_107c:		sta $09			; 85 09

B30_107e:		lda wCurrRoomSection			; a5 33
B30_1080:		asl a			; 0a
B30_1081:		sta $0d			; 85 0d
B30_1083:		tay				; a8 
B30_1084:		lda ($08), y	; b1 08
B30_1086:		sta $0a			; 85 0a
B30_1088:		iny				; c8 
B30_1089:		lda ($08), y	; b1 08
B30_108b:		sta $0b			; 85 0b

B30_108d:		ldy wCurrRoomIdx			; a4 34
B30_108f:		lda ($0a), y	; b1 0a
B30_1091:		sta $68			; 85 68

B30_1093:		jsr getCurrRoomsMetatiles_todo		; 20 9b d4
B30_1096:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_1099:		ldy #$00		; a0 00
B30_109b:		lda ($50), y	; b1 50
B30_109d:		sta $71			; 85 71
B30_109f:		lda wCurrRoomGroup			; a5 32
B30_10a1:		cmp #$0d		; c9 0d
B30_10a3:		beq B30_10c0 ; f0 1b

B30_10a5:		cmp #$0e		; c9 0e
B30_10a7:		beq B30_10ea ; f0 41

; group * 2
B30_10a9:		ldy $0c			; a4 0c
B30_10ab:		lda roomGroupTileAddresses.w, y	; b9 f2 d5
B30_10ae:		sta $5d			; 85 5d
B30_10b0:		lda roomGroupTileAddresses.w+1, y	; b9 f3 d5
B30_10b3:		sta $5e			; 85 5e

B30_10b5:		lda data_1e_1610.w, y	; b9 10 d6
B30_10b8:		sta wCurrRoomGroupMetaTilePalettes			; 85 5f
B30_10ba:		lda data_1e_1610.w+1, y	; b9 11 d6
B30_10bd:		sta wCurrRoomGroupMetaTilePalettes+1			; 85 60
B30_10bf:		rts				; 60 


B30_10c0:		lda $33			; a5 33
B30_10c2:		beq B30_10de ; f0 1a

B30_10c4:		cmp #$02		; c9 02
B30_10c6:		beq B30_10d4 ; f0 0c

B30_10c8:		cmp #$03		; c9 03
B30_10ca:		bne B30_10a9 ; d0 dd

B30_10cc:		lda $34			; a5 34
B30_10ce:		bne B30_10a9 ; d0 d9

B30_10d0:		ldy #$0a		; a0 0a
B30_10d2:		bne B30_10ab ; d0 d7

B30_10d4:		lda $34			; a5 34
B30_10d6:		cmp #$02		; c9 02
B30_10d8:		bne B30_10a9 ; d0 cf

B30_10da:		ldy #$0a		; a0 0a
B30_10dc:		bne B30_10ab ; d0 cd

B30_10de:		lda $34			; a5 34
B30_10e0:		beq B30_10e6 ; f0 04

B30_10e2:		cmp #$01		; c9 01
B30_10e4:		bne B30_10a9 ; d0 c3

B30_10e6:		ldy #$04		; a0 04
B30_10e8:		bne B30_10ab ; d0 c1

B30_10ea:		lda $33			; a5 33
B30_10ec:		bne B30_10a9 ; d0 bb

B30_10ee:		lda $34			; a5 34
B30_10f0:		cmp #$01		; c9 01
B30_10f2:		bne B30_10a9 ; d0 b5

B30_10f4:		ldy #$02		; a0 02
B30_10f6:		bne B30_10ab ; d0 b3

B30_10f8:		lda $68			; a5 68
B30_10fa:		bpl B30_113b ; 10 3f

B30_10fc:		lda $0520		; ad 20 05
B30_10ff:		ora $0537		; 0d 37 05
B30_1102:		beq B30_1111 ; f0 0d

B30_1104:		lda $0520		; ad 20 05
B30_1107:		bpl B30_1117 ; 10 0e

B30_1109:		lda $71			; a5 71
B30_110b:		sta $57			; 85 57
B30_110d:		lda #$30		; a9 30
B30_110f:		bne B30_111b ; d0 0a

B30_1111:		lda $68			; a5 68
B30_1113:		and #$01		; 29 01
B30_1115:		beq B30_1109 ; f0 f2

B30_1117:		lda #$00		; a9 00
B30_1119:		sta $57			; 85 57
B30_111b:		sta $56			; 85 56
B30_111d:		lda #$00		; a9 00
B30_111f:		sta $58			; 85 58
B30_1121:		lda $56			; a5 56
B30_1123:		sta $00			; 85 00
B30_1125:		lda $57			; a5 57
B30_1127:		asl $00			; 06 00
B30_1129:		rol a			; 2a
B30_112a:		asl $00			; 06 00
B30_112c:		rol a			; 2a
B30_112d:		asl $00			; 06 00
B30_112f:		rol a			; 2a
B30_1130:		sec				; 38 
B30_1131:		sbc #$01		; e9 01
B30_1133:		sta $59			; 85 59
B30_1135:		clc				; 18 
B30_1136:		adc #$07		; 69 07
B30_1138:		sta $5a			; 85 5a
B30_113a:		rts				; 60 


B30_113b:		lda $57			; a5 57
B30_113d:		bmi B30_1169 ; 30 2a

B30_113f:		cmp $71			; c5 71
B30_1141:		beq B30_116d ; f0 2a

B30_1143:		lda $57			; a5 57
B30_1145:		sta $00			; 85 00
B30_1147:		lda $56			; a5 56
B30_1149:		lsr $00			; 46 00
B30_114b:		ror a			; 6a
B30_114c:		lsr $00			; 46 00
B30_114e:		ror a			; 6a
B30_114f:		lsr $00			; 46 00
B30_1151:		ror a			; 6a
B30_1152:		lsr a			; 4a
B30_1153:		lsr a			; 4a
B30_1154:		sec				; 38 
B30_1155:		sbc #$02		; e9 02
B30_1157:		sta $59			; 85 59
B30_1159:		clc				; 18 
B30_115a:		adc #$0b		; 69 0b
B30_115c:		sta $5a			; 85 5a
B30_115e:		lda $71			; a5 71
B30_1160:		asl a			; 0a
B30_1161:		asl a			; 0a
B30_1162:		asl a			; 0a
B30_1163:		clc				; 18 
B30_1164:		adc #$08		; 69 08
B30_1166:		sta $7b			; 85 7b
B30_1168:		rts				; 60 


B30_1169:		lda #$00		; a9 00
B30_116b:		beq B30_1154 ; f0 e7

B30_116d:		lda $71			; a5 71
B30_116f:		asl a			; 0a
B30_1170:		asl a			; 0a
B30_1171:		asl a			; 0a
B30_1172:		jmp $d154		; 4c 54 d1


func_1e_1175:
B30_1175:		lda $65			; a5 65
B30_1177:		cmp #$02		; c9 02
B30_1179:		bne B30_117d ; d0 02

B30_117b:		lda $a1			; a5 a1
B30_117d:		sta $a0			; 85 a0
B30_117f:		lda $65			; a5 65
B30_1181:		sta $a1			; 85 a1
B30_1183:		jsr $d325		; 20 25 d3
B30_1186:		lda $a0			; a5 a0
B30_1188:		cmp #$02		; c9 02
B30_118a:		beq B30_1199 ; f0 0d

B30_118c:		lda $67			; a5 67
B30_118e:		beq B30_1193 ; f0 03

B30_1190:		dec $67			; c6 67
B30_1192:		rts				; 60 

B30_1193:		lda $1a			; a5 1a
B30_1195:		and #$01		; 29 01
B30_1197:		bne B30_119a ; d0 01

B30_1199:		rts				; 60 

B30_119a:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_119d:		ldy $a0			; a4 a0
B30_119f:		lda $59.w, y
B30_11a2:		bmi B30_1199 ; 30 f5

B30_11a4:		cmp $7b			; c5 7b
B30_11a6:		bcs B30_1199 ; b0 f1

B30_11a8:		lda $5b.w, y
B30_11ab:		cmp #$06		; c9 06
B30_11ad:		bcc B30_11b0 ; 90 01

B30_11af:		rts				; 60 

B30_11b0:		tya				; 98 
B30_11b1:		asl a			; 0a
B30_11b2:		tax				; aa 
B30_11b3:		lda $52, x		; b5 52
B30_11b5:		sta $10			; 85 10
B30_11b7:		lda $53, x		; b5 53
B30_11b9:		sta $11			; 85 11
B30_11bb:		jsr $cf31		; 20 31 cf
B30_11be:		ldx #$00		; a2 00
B30_11c0:		lda $75			; a5 75
B30_11c2:		and #$01		; 29 01
B30_11c4:		beq B30_11c8 ; f0 02

B30_11c6:		ldx #$08		; a2 08
B30_11c8:		stx $00			; 86 00
B30_11ca:		ldy $a0			; a4 a0
B30_11cc:		ldx #$20		; a2 20
B30_11ce:		lda $59.w, y
B30_11d1:		and #$08		; 29 08
B30_11d3:		eor $00			; 45 00
B30_11d5:		beq B30_11d9 ; f0 02

B30_11d7:		ldx #$24		; a2 24
B30_11d9:		stx $00			; 86 00
B30_11db:		lda #$00		; a9 00
B30_11dd:		sta $61			; 85 61
B30_11df:		ldy $a0			; a4 a0
B30_11e1:		lda $5b.w, y
B30_11e4:		lsr a			; 4a
B30_11e5:		ror $61			; 66 61
B30_11e7:		clc				; 18 
B30_11e8:		adc $00			; 65 00
B30_11ea:		sta $62			; 85 62
B30_11ec:		lda $59.w, y
B30_11ef:		and #$07		; 29 07
B30_11f1:		asl a			; 0a
B30_11f2:		asl a			; 0a
B30_11f3:		clc				; 18 
B30_11f4:		adc #$80		; 69 80
B30_11f6:		adc $61			; 65 61
B30_11f8:		sta $61			; 85 61
B30_11fa:		bcc B30_11fe ; 90 02

B30_11fc:		inc $62			; e6 62
B30_11fe:		lda $5b.w, y
B30_1201:		asl a			; 0a
B30_1202:		sta $00			; 85 00
B30_1204:		lda $59.w, y
B30_1207:		cmp #$0c		; c9 0c
B30_1209:		bcc B30_1210 ; 90 05

B30_120b:		sbc #$0c		; e9 0c
B30_120d:		jmp B30_1207		; 4c 07 d2

B30_1210:		tay				; a8 
B30_1211:		lda $fd4c, y	; b9 4c fd
B30_1214:		clc				; 18 
B30_1215:		adc $00			; 65 00
B30_1217:		sta $10			; 85 10
B30_1219:		ldy $a0			; a4 a0
B30_121b:		lda $5b.w, y
B30_121e:		bne B30_1242 ; d0 22

B30_1220:		ldy $10			; a4 10
B30_1222:		lda #$00		; a9 00
B30_1224:		sta $06e0, y	; 99 e0 06
B30_1227:		inc $10			; e6 10
B30_1229:		lda $61			; a5 61
B30_122b:		clc				; 18 
B30_122c:		adc #$40		; 69 40
B30_122e:		sta $61			; 85 61
B30_1230:		ldx $1d			; a6 1d
B30_1232:		lda #$02		; a9 02
B30_1234:		sta $06			; 85 06
B30_1236:		lda #$05		; a9 05
B30_1238:		sta $0300, x	; 9d 00 03
B30_123b:		inx				; e8 
B30_123c:		stx $1d			; 86 1d
B30_123e:		ldy #$08		; a0 08
B30_1240:		bne B30_1252 ; d0 10

B30_1242:		ldx $1d			; a6 1d
B30_1244:		lda #$04		; a9 04
B30_1246:		sta $06			; 85 06
B30_1248:		lda #$04		; a9 04
B30_124a:		sta $0300, x	; 9d 00 03
B30_124d:		inx				; e8 
B30_124e:		stx $1d			; 86 1d
B30_1250:		ldy #$00		; a0 00
B30_1252:		ldx $1d			; a6 1d
B30_1254:		lda $61			; a5 61
B30_1256:		sta $0300, x	; 9d 00 03
B30_1259:		inx				; e8 
B30_125a:		lda $62			; a5 62
B30_125c:		sta $0300, x	; 9d 00 03
B30_125f:		inx				; e8 

.rept 4
	lda ($02), y	; b1 02
	sta $0300, x	; 9d 00 03
	inx				; e8 
	iny				; c8 
.endr

B30_127c:		stx $1d			; 86 1d
B30_127e:		sty $07			; 84 07
B30_1280:		lda $06			; a5 06
B30_1282:		and #$01		; 29 01
B30_1284:		bne B30_12a3 ; d0 1d

B30_1286:		lda $02fc, x	; bd fc 02
B30_1289:		jsr $d3b9		; 20 b9 d3
B30_128c:		tya				; 98 
B30_128d:		asl a			; 0a
B30_128e:		asl a			; 0a
B30_128f:		asl a			; 0a
B30_1290:		asl a			; 0a
B30_1291:		sta $11			; 85 11
B30_1293:		lda $02fe, x	; bd fe 02
B30_1296:		jsr $d3b9		; 20 b9 d3
B30_1299:		tya				; 98 
B30_129a:		ora $11			; 05 11
B30_129c:		ldy $10			; a4 10
B30_129e:		sta $06e0, y	; 99 e0 06
B30_12a1:		inc $10			; e6 10
B30_12a3:		ldy $07			; a4 07
B30_12a5:		lda $61			; a5 61
B30_12a7:		clc				; 18 
B30_12a8:		adc #$20		; 69 20
B30_12aa:		sta $61			; 85 61
B30_12ac:		bcc B30_12b0 ; 90 02

B30_12ae:		inc $62			; e6 62
B30_12b0:		dec $06			; c6 06
B30_12b2:		bne B30_1252 ; d0 9e

B30_12b4:		ldy $a0			; a4 a0
B30_12b6:	.db $b9 $5b $00
B30_12b9:		tax				; aa 
B30_12ba:	.db $b9 $59 $00
B30_12bd:		and #$07		; 29 07
B30_12bf:		clc				; 18 
B30_12c0:		adc $d31f, x	; 7d 1f d3
B30_12c3:		sta $61			; 85 61
B30_12c5:		ldx #$00		; a2 00
B30_12c7:		lda $75			; a5 75
B30_12c9:		and #$01		; 29 01
B30_12cb:		beq B30_12cf ; f0 02

B30_12cd:		ldx #$08		; a2 08
B30_12cf:		stx $00			; 86 00
B30_12d1:	.db $b9 $59 $00
B30_12d4:		and #$08		; 29 08
B30_12d6:		eor $00			; 45 00
B30_12d8:		beq B30_12de ; f0 04

B30_12da:		lda #$27		; a9 27
B30_12dc:		bne B30_12e0 ; d0 02

B30_12de:		lda #$23		; a9 23
B30_12e0:		sta $62			; 85 62
B30_12e2:		ldx $1d			; a6 1d
B30_12e4:		lda $61			; a5 61
B30_12e6:		sta $0300, x	; 9d 00 03
B30_12e9:		inx				; e8 
B30_12ea:		lda $62			; a5 62
B30_12ec:		sta $0300, x	; 9d 00 03
B30_12ef:		inx				; e8 
B30_12f0:		ldy $63			; a4 63
B30_12f2:		lda ($5f), y	; b1 5f
B30_12f4:		sta $00			; 85 00
B30_12f6:		ldy $a0			; a4 a0
B30_12f8:	.db $b9 $5b $00
B30_12fb:		beq B30_1318 ; f0 1b

B30_12fd:		lda $00			; a5 00
B30_12ff:		sta $0300, x	; 9d 00 03
B30_1302:		inx				; e8 
B30_1303:		stx $1d			; 86 1d
B30_1305:		ldx $a0			; a6 a0
B30_1307:		inc $5b, x		; f6 5b
B30_1309:		txa				; 8a 
B30_130a:		asl a			; 0a
B30_130b:		tax				; aa 
B30_130c:		lda $52, x		; b5 52
B30_130e:		clc				; 18 
B30_130f:		adc #$08		; 69 08
B30_1311:		sta $52, x		; 95 52
B30_1313:		bcc B30_1317 ; 90 02

B30_1315:		inc $53, x		; f6 53
B30_1317:		rts				; 60 


B30_1318:		lda $00			; a5 00
B30_131a:		and #$f0		; 29 f0
B30_131c:		jmp $d2ff		; 4c ff d2


B30_131f:		iny				; c8 
B30_1320:		;removed
	.db $d0 $d8

B30_1322:		cpx #$e8		; e0 e8
B30_1324:		beq B30_12cb ; f0 a5

B30_1326:		lsr $85, x		; 56 85
B30_1328:		php				; 08 
B30_1329:		ldy $65			; a4 65
B30_132b:		beq B30_133c ; f0 0f

B30_132d:		dey				; 88 
B30_132e:		beq B30_1338 ; f0 08

B30_1330:		lda $56			; a5 56
B30_1332:		sec				; 38 
B30_1333:		sbc $08			; e5 08
B30_1335:		sta $6e			; 85 6e
B30_1337:		rts				; 60 


B30_1338:		lda #$00		; a9 00
B30_133a:		beq B30_133e ; f0 02

B30_133c:		lda #$ff		; a9 ff
B30_133e:		sta $00			; 85 00
B30_1340:		lda $58			; a5 58
B30_1342:		clc				; 18 
B30_1343:		adc $0509		; 6d 09 05
B30_1346:		sta $58			; 85 58
B30_1348:		lda $56			; a5 56
B30_134a:		adc $04f2		; 6d f2 04
B30_134d:		sta $56			; 85 56
B30_134f:		lda $57			; a5 57
B30_1351:		adc $00			; 65 00
B30_1353:		sta $57			; 85 57
B30_1355:		bpl B30_1361 ; 10 0a

B30_1357:		lda #$00		; a9 00
B30_1359:		sta $56			; 85 56
B30_135b:		sta $57			; 85 57
B30_135d:		sta $58			; 85 58
B30_135f:		beq B30_136b ; f0 0a

B30_1361:		cmp $71			; c5 71
B30_1363:		bne B30_136b ; d0 06

B30_1365:		lda #$00		; a9 00
B30_1367:		sta $56			; 85 56
B30_1369:		sta $58			; 85 58
B30_136b:		lda $56			; a5 56
B30_136d:		and #$e0		; 29 e0
B30_136f:		cmp $66			; c5 66
B30_1371:		beq B30_1330 ; f0 bd

B30_1373:		sta $66			; 85 66
B30_1375:		ldy $65			; a4 65
B30_1377:		beq B30_137f ; f0 06

B30_1379:		inc $59			; e6 59
B30_137b:		inc $5a			; e6 5a
B30_137d:		bpl B30_1383 ; 10 04

B30_137f:		dec $59			; c6 59
B30_1381:		dec $5a			; c6 5a
B30_1383:		ldy #$00		; a0 00
B30_1385:		sty $5b			; 84 5b
B30_1387:		sty $5c			; 84 5c
B30_1389:		iny				; c8 
B30_138a:		sty $67			; 84 67
B30_138c:		jsr $d01d		; 20 1d d0
B30_138f:		jmp $d330		; 4c 30 d3


B30_1392:		lda $64			; a5 64
B30_1394:		cmp #$08		; c9 08
B30_1396:		beq B30_13a5 ; f0 0d

B30_1398:		lda #$02		; a9 02
B30_139a:		sta $1c			; 85 1c
B30_139c:		jsr $d4c7		; 20 c7 d4
B30_139f:		beq B30_13a2 ; f0 01

B30_13a1:		rts				; 60 


B30_13a2:		jmp $d57e		; 4c 7e d5


B30_13a5:		lda #$00		; a9 00
B30_13a7:		sta $1c			; 85 1c
B30_13a9:		jsr $f753		; 20 53 f7
B30_13ac:		lda #$0c		; a9 0c
B30_13ae:		sta $64			; 85 64
B30_13b0:		lda #$00		; a9 00
B30_13b2:		sta $8d			; 85 8d
B30_13b4:		lda #$02		; a9 02
B30_13b6:		sta $2a			; 85 2a
B30_13b8:		rts				; 60 


B30_13b9:		bmi B30_13c8 ; 30 0d

B30_13bb:		ldy #$00		; a0 00
B30_13bd:		cmp $0770, y	; d9 70 07
B30_13c0:		bcc B30_13c7 ; 90 05

B30_13c2:		iny				; c8 
B30_13c3:		cpy #$08		; c0 08
B30_13c5:		bne B30_13bd ; d0 f6

B30_13c7:		rts				; 60 


B30_13c8:		cmp #$c0		; c9 c0
B30_13ca:		bcs B30_13d9 ; b0 0d

B30_13cc:		ldy #$00		; a0 00
B30_13ce:		cmp $0778, y	; d9 78 07
B30_13d1:		bcc B30_13c7 ; 90 f4

B30_13d3:		iny				; c8 
B30_13d4:		cpy #$08		; c0 08
B30_13d6:		bne B30_13ce ; d0 f6

B30_13d8:		rts				; 60 


B30_13d9:		cmp #$dc		; c9 dc
B30_13db:		beq B30_13f5 ; f0 18

B30_13dd:		cmp #$dd		; c9 dd
B30_13df:		beq B30_13f5 ; f0 14

B30_13e1:		cmp #$de		; c9 de
B30_13e3:		beq B30_13f2 ; f0 0d

B30_13e5:		cmp #$df		; c9 df
B30_13e7:		beq B30_13f2 ; f0 09

B30_13e9:		cmp #$e4		; c9 e4
B30_13eb:		beq B30_13f8 ; f0 0b

B30_13ed:		cmp #$e5		; c9 e5
B30_13ef:		beq B30_13f8 ; f0 07

B30_13f1:		rts				; 60 


B30_13f2:		ldy #$07		; a0 07
B30_13f4:		rts				; 60 


B30_13f5:		ldy #$05		; a0 05
B30_13f7:		rts				; 60 


B30_13f8:		ldy #$00		; a0 00
B30_13fa:		rts				; 60 


func_1e_13fb:
B30_13fb:		jsr setBankOfRoomGroupMetaData_todo		; 20 00 c9
B30_13fe:		jsr getCurrRoomsMetatiles_todo		; 20 9b d4

B30_1401:		ldy #$00		; a0 00
B30_1403:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1405:		clc				; 18 
B30_1406:		adc #$01		; 69 01
B30_1408:		iny				; c8 
B30_1409:		sty $00			; 84 00
B30_140b:		asl a			; 0a
B30_140c:		clc				; 18 
B30_140d:		adc $00			; 65 00
B30_140f:		sta $00			; 85 00

B30_1411:		lda wCurrRoomIdx			; a5 34
B30_1413:		asl a			; 0a
B30_1414:		clc				; 18 
B30_1415:		adc $00			; 65 00
B30_1417:		tay				; a8 

B30_1418:		ldx #$00		; a2 00
B30_141a:		lda $0520		; ad 20 05
B30_141d:		bpl B30_1421 ; 10 02

B30_141f:		inx				; e8 
B30_1420:		iny				; c8 

B30_1421:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1423:		and #$f0		; 29 f0
B30_1425:		cmp #$d0		; c9 d0
B30_1427:		beq B30_1460 ; f0 37

B30_1429:		cmp #$80		; c9 80
B30_142b:		beq B30_1457 ; @func_1457

B30_142d:		lda $68			; a5 68
B30_142f:		bmi B30_1442 ; @func_1442

B30_1431:		lda $57			; a5 57
B30_1433:		clc				; 18 
B30_1434:		adc (wCurrRoomSectionMetaDataAddress), y	; 71 0a
B30_1436:		sta $57			; 85 57
B30_1438:		dex				; ca 
B30_1439:		beq B30_143f ; f0 04

B30_143b:		dec wCurrRoomIdx			; c6 34
B30_143d:		bpl B30_1441 ; 10 02

B30_143f:		inc wCurrRoomIdx			; e6 34

rts_1e_1441:
B30_1441:		rts				; 60 

@func_1442:
B30_1442:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1444:		lsr a			; 4a
B30_1445:		lsr a			; 4a
B30_1446:		lsr a			; 4a
B30_1447:		lsr a			; 4a
B30_1448:		sta wCurrRoomIdx			; 85 34

B30_144a:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_144c:		and #$0f		; 29 0f
B30_144e:		sta $57			; 85 57
B30_1450:		lda #$00		; a9 00
B30_1452:		sta $56			; 85 56
B30_1454:		sta $58			; 85 58
B30_1456:		rts				; 60 

@func_1457:
B30_1457:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1459:		and #$0f		; 29 0f
B30_145b:		sta wCurrRoomIdx			; 85 34
B30_145d:		jmp rts_1e_1441		; 4c 41 d4

B30_1460:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1462:		and #$0f		; 29 0f
B30_1464:		asl a			; 0a
B30_1465:		tay				; a8 
B30_1466:		lda data_1e_175a.w, y	; b9 5a d7
B30_1469:		sta wCurrRoomSectionMetaDataAddress			; 85 0a
B30_146b:		lda data_1e_175a.w+1, y	; b9 5b d7
B30_146e:		sta $0b			; 85 0b
B30_1470:		ldy #$00		; a0 00
B30_1472:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1474:		iny				; c8 
B30_1475:		cmp #$f0		; c9 f0
B30_1477:		beq B30_148f ; f0 16

B30_1479:		cmp #$f1		; c9 f1
B30_147b:		beq B30_1480 ; f0 03

B30_147d:		jmp rts_1e_1441		; 4c 41 d4

B30_1480:		inc $33			; e6 33
B30_1482:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_1484:		sta $57			; 85 57
B30_1486:		lda #$00		; a9 00
B30_1488:		sta $56			; 85 56
B30_148a:		sta wCurrRoomIdx			; 85 34
B30_148c:		jmp rts_1e_1441		; 4c 41 d4

B30_148f:		lda $57			; a5 57
B30_1491:		cmp (wCurrRoomSectionMetaDataAddress), y	; d1 0a
B30_1493:		bcc B30_1497 ; 90 02

B30_1495:		iny				; c8 
B30_1496:		iny				; c8 
B30_1497:		iny				; c8 
B30_1498:		jmp B30_1418		; 4c 18 d4


getCurrRoomsMetatiles_todo:
; 08/09 is room group offset
B30_149b:		lda wCurrRoomGroup			; a5 32
B30_149d:		asl a			; 0a
B30_149e:		tay				; a8 
B30_149f:		lda roomGroupMetaTileAddresses.w, y	; b9 d4 d5
B30_14a2:		sta wCurrRoomGroupMetaDataAddress			; 85 08
B30_14a4:		lda roomGroupMetaTileAddresses.w+1, y	; b9 d5 d5
B30_14a7:		sta wCurrRoomGroupMetaDataAddress+1			; 85 09

; 0a/0b is room x data offset into group
B30_14a9:		lda wCurrRoomSection			; a5 33
B30_14ab:		asl a			; 0a
B30_14ac:		tay				; a8 
B30_14ad:		lda (wCurrRoomGroupMetaDataAddress), y	; b1 08
B30_14af:		sta wCurrRoomSectionMetaDataAddress			; 85 0a
B30_14b1:		iny				; c8 
B30_14b2:		lda (wCurrRoomGroupMetaDataAddress), y	; b1 08
B30_14b4:		sta wCurrRoomSectionMetaDataAddress+1			; 85 0b

; 0e is room y offset*2
B30_14b6:		lda wCurrRoomIdx			; a5 34
B30_14b8:		asl a			; 0a
B30_14b9:		sta $0e			; 85 0e

; room y data offset in 50/51
B30_14bb:		tay				; a8 
B30_14bc:		iny				; c8 
B30_14bd:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_14bf:		sta wRoomMetaTilesAddr			; 85 50
B30_14c1:		iny				; c8 
B30_14c2:		lda (wCurrRoomSectionMetaDataAddress), y	; b1 0a
B30_14c4:		sta wRoomMetaTilesAddr+1			; 85 51
B30_14c6:		rts				; 60 


B30_14c7:		jsr setBankOfRoomGroupLayoutData_todo		; 20 05 c9
B30_14ca:		lda $7d			; a5 7d
B30_14cc:		and #$0f		; 29 0f
B30_14ce:		asl a			; 0a
B30_14cf:		asl a			; 0a
B30_14d0:		asl a			; 0a
B30_14d1:		tay				; a8 
B30_14d2:		lda $d55e, y	; b9 5e d5
B30_14d5:		sta $62			; 85 62
B30_14d7:		lda $d55f, y	; b9 5f d5
B30_14da:		sta $61			; 85 61
B30_14dc:		lda $d560, y	; b9 60 d5
B30_14df:		sta $0f			; 85 0f
B30_14e1:		lda $d561, y	; b9 61 d5
B30_14e4:		sta $0e			; 85 0e
B30_14e6:		lda $d562, y	; b9 62 d5
B30_14e9:		sta $08			; 85 08
B30_14eb:		lda $64			; a5 64
B30_14ed:		asl a			; 0a
B30_14ee:		asl a			; 0a
B30_14ef:		clc				; 18 
B30_14f0:		adc $61			; 65 61
B30_14f2:		sta $61			; 85 61
B30_14f4:		lda $64			; a5 64
B30_14f6:		clc				; 18 
B30_14f7:		adc $0e			; 65 0e
B30_14f9:		sta $0e			; 85 0e
B30_14fb:		lda $d563, y	; b9 63 d5
B30_14fe:		iny				; c8 
B30_14ff:		sty $09			; 84 09
B30_1501:		jsr $cf66		; 20 66 cf
B30_1504:		lda #$04		; a9 04
B30_1506:		sta $06			; 85 06
B30_1508:		jsr func_1f_08c6		; 20 c6 e8
B30_150b:		jmp $d511		; 4c 11 d5


B30_150e:		jsr func_1f_08bb		; 20 bb e8
B30_1511:		ldy #$00		; a0 00
B30_1513:		lda ($02), y	; b1 02
B30_1515:		sta $0300, x	; 9d 00 03
B30_1518:		inx				; e8 
B30_1519:		iny				; c8 
B30_151a:		cpy #$04		; c0 04
B30_151c:		bne B30_1513 ; d0 f5

B30_151e:		stx $1d			; 86 1d
B30_1520:		lda #$04		; a9 04
B30_1522:		ldx #$02		; a2 02
B30_1524:		jsr incPointerXByA		; 20 99 e8
B30_1527:		lda #$20		; a9 20
B30_1529:		ldx #$61		; a2 61
B30_152b:		jsr incPointerXByA		; 20 99 e8
B30_152e:		dec $06			; c6 06
B30_1530:		bne B30_150e ; d0 dc

B30_1532:		ldx $1d			; a6 1d
B30_1534:		lda $0e			; a5 0e
B30_1536:		sta $0300, x	; 9d 00 03
B30_1539:		inx				; e8 
B30_153a:		lda $0f			; a5 0f
B30_153c:		sta $0300, x	; 9d 00 03
B30_153f:		inx				; e8 
B30_1540:		ldy $63			; a4 63
B30_1542:		lda ($5f), y	; b1 5f
B30_1544:		sta $0300, x	; 9d 00 03
B30_1547:		inx				; e8 
B30_1548:		stx $1d			; 86 1d
B30_154a:		lda #$08		; a9 08
B30_154c:		ldx #$0e		; a2 0e
B30_154e:		jsr incPointerXByA		; 20 99 e8
B30_1551:		ldy $09			; a4 09
B30_1553:		dec $08			; c6 08
B30_1555:		bne B30_14fb ; d0 a4

B30_1557:		inc $64			; e6 64
B30_1559:		lda $64			; a5 64
B30_155b:		cmp #$08		; c9 08
B30_155d:		rts				; 60 


B30_155e:		and ($00, x)	; 21 00
B30_1560:	.db $23
B30_1561:		bne B30_1566 ; d0 03

B30_1563:		bmi B30_1596 ; 30 31

B30_1565:	.db $33
B30_1566:	.db $22
B30_1567:		.db $00				; 00
B30_1568:	.db $23
B30_1569:		cpx #$02		; e0 02
B30_156b:		;removed
	.db $30 $32

B30_156d:		.db $00				; 00
B30_156e:		jsr $2380		; 20 80 23
B30_1571:		iny				; c8 
B30_1572:	.db $02
B30_1573:	.db $32
B30_1574:	.db $33
B30_1575:		.db $00				; 00
B30_1576:	.db $22
B30_1577:	.db $80
B30_1578:	.db $23
B30_1579:		inx				; e8 
B30_157a:	.db $02
B30_157b:	.db $32
B30_157c:	.db $33
B30_157d:		.db $00				; 00
B30_157e:		lda $7d			; a5 7d
B30_1580:		and #$0f		; 29 0f
B30_1582:		cmp #$02		; c9 02
B30_1584:		beq B30_1587 ; f0 01

B30_1586:		rts				; 60 


B30_1587:		lda #$20		; a9 20
B30_1589:		sta $62			; 85 62
B30_158b:		lda #$80		; a9 80
B30_158d:		sta $61			; 85 61
B30_158f:		jsr $e8b5		; 20 b5 e8
B30_1592:		ldy #$40		; a0 40
B30_1594:		lda #$00		; a9 00
B30_1596:		sta $0300, x	; 9d 00 03
B30_1599:		inx				; e8 
B30_159a:		dey				; 88 
B30_159b:		bne B30_1596 ; d0 f9

B30_159d:		jsr $e8de		; 20 de e8
B30_15a0:		lda #$23		; a9 23
B30_15a2:		sta $62			; 85 62
B30_15a4:		lda #$c8		; a9 c8
B30_15a6:		sta $61			; 85 61
B30_15a8:		jsr $e8b5		; 20 b5 e8
B30_15ab:		ldy #$08		; a0 08
B30_15ad:		lda #$f0		; a9 f0
B30_15af:		sta $0300, x	; 9d 00 03
B30_15b2:		inx				; e8 
B30_15b3:		dey				; 88 
B30_15b4:		bne B30_15af ; d0 f9

B30_15b6:		jmp $e8de		; 4c de e8


B30_15b9:		lda #$03		; a9 03
B30_15bb:		sta $72			; 85 72
B30_15bd:		jsr $d5c3		; 20 c3 d5
B30_15c0:		jmp $d004		; 4c 04 d0


B30_15c3:		lda #$e0		; a9 e0
B30_15c5:		sta $ca			; 85 ca
B30_15c7:		lda #$00		; a9 00
B30_15c9:		sta $cb			; 85 cb
B30_15cb:		ldy #$e0		; a0 e0
B30_15cd:		ldx #$2e		; a2 2e
B30_15cf:		lda #$17		; a9 17
B30_15d1:		jmp func_1f_05bf		; 4c bf e5


roomGroupMetaTileAddresses:
; bank 10
	.dw roomGroupMetadata0
	.dw $8de2
	.dw $99af
	.dw $a682
	.dw $b311

; bank 0e
	.dw $8001
	.dw $89ff
	.dw $91e6
	.dw $9e55

; bank 0c
	.dw $8001
	.dw $8810

; bank 0e
	.dw $aa85
	
; bank 0c
	.dw $9fcb
	.dw $a94b
	.dw $b2ea


roomGroupTileAddresses:
	.dw $8441
B30_15f4:		asl a			; 0a
B30_15f5:		sty $10, x		; 94 10
B30_15f7:		lda ($6d, x)	; a1 6d
B30_15f9:		ldy $b727		; ac 27 b7
B30_15fc:		eor #$84		; 49 84
B30_15fe:		sty $8d			; 84 8d
B30_1600:		sbc $97, x		; f5 97
B30_1602:		and $a4			; 25 a4
B30_1604:		cpy #$82		; c0 82
B30_1606:	.db $cb
B30_1607:		stx $ae61		; 8e 61 ae
B30_160a:	.db $eb
B30_160b:		ldx #$8a		; a2 8a
B30_160d:		ldy $b5b5		; ac b5 b5


data_1e_1610:
	.dw $8d51
	.dw $995a
	.dw $a630
	.dw $b2ad
	.dw $bba7
	.dw $89a9
	.dw $91a4
	.dw $9df5
	.dw $aa25
	.dw $87c0
	.dw $9ecb
	.dw $b431
	.dw $a8eb
	.dw $b28a
	.dw $bd75


data_1e_162e:
	.dw @group0
	.dw @group1
	.dw @group2
	.dw @group3
	.dw @group4
	.dw @group5
	.dw @group6
	.dw @group7
	.dw @group8
	.dw @group9
	.dw @groupA
	.dw @groupB
	.dw @groupC
	.dw @groupD
	.dw @groupE

@group0:
	.dw data_1e_16cc
	.dw data_1e_16cd
	.dw $d6d2
	.dw $d6d7

@group1:
	.dw $d6dc
	.dw $d6df
	.dw $d6e2
	.dw $d6e5
	.dw $d6e8
	.dw $d6eb

@group2:
	.dw $d6ee
	.dw $d6f0
	.dw $d6f1
	.dw $d6f3
	.dw $d6f6

@group3:
	.dw $d6f8
	.dw $d6fb
	.dw $d6fd
	.dw $d6ff
	.dw $d701

@group4:
	.dw $d704
	.dw $d707
	.dw $d70a

@group5:
	.dw $d70d
	.dw $d70e
	.dw $d70f
	.dw $d711

@group6:
	.dw $d713
	.dw $d715
	.dw $d716

@group7:
	.dw $d719
	.dw $d71b
	.dw $d71c
	.dw $d71d
	.dw $d71e
	.dw $d720
	.dw $d722

@group8:
	.dw $d723
	.dw $d725
	.dw $d726
	.dw $d728
	.dw $d729

@group9:
	.dw $d72a
	.dw $d72c

@groupA:
	.dw $d72f
	.dw $d731
	.dw $d732
	.dw $d733
	.dw $d735
	.dw $d738
	.dw $d73a

@groupB:
	.dw $d73d
	.dw $d73f
	.dw $d741

@groupC:
	.dw $d744
	.dw $d746
	.dw $d747

@groupD:
	.dw $d748
	.dw $d74b
	.dw $d74e
	.dw $d751

@groupE:
	.dw $d753
	.dw $d756
	.dw $d758


data_1e_16cc:
B30_16cc:		.db $00				; 00

data_1e_16cd:
B30_16cd:		.db $00				; 00
B30_16ce:	.db $80
B30_16cf:		.db $00				; 00
B30_16d0:		.db $00				; 00
B30_16d1:		.db $00				; 00
B30_16d2:		.db $00				; 00
B30_16d3:		.db $00				; 00
B30_16d4:		.db $00				; 00
B30_16d5:		.db $00				; 00
B30_16d6:		.db $00				; 00
B30_16d7:		.db $00				; 00
B30_16d8:		.db $00				; 00
B30_16d9:		.db $00				; 00
B30_16da:		.db $00				; 00
B30_16db:		.db $00				; 00
B30_16dc:	.db $80
B30_16dd:		.db $00				; 00
B30_16de:		.db $00				; 00
B30_16df:		.db $00				; 00
B30_16e0:	.db $80
B30_16e1:		.db $00				; 00
B30_16e2:		.db $00				; 00
B30_16e3:	.db $80
B30_16e4:		.db $00				; 00
B30_16e5:		.db $00				; 00
B30_16e6:		sta ($00, x)	; 81 00
B30_16e8:		.db $00				; 00
B30_16e9:		sta ($00, x)	; 81 00
B30_16eb:		sta ($00, x)	; 81 00
B30_16ed:		.db $00				; 00
B30_16ee:		.db $00				; 00
B30_16ef:		.db $00				; 00
B30_16f0:		.db $00				; 00
B30_16f1:		.db $00				; 00
B30_16f2:		.db $00				; 00
B30_16f3:		.db $00				; 00
B30_16f4:		.db $00				; 00
B30_16f5:		.db $00				; 00
B30_16f6:		.db $00				; 00
B30_16f7:		.db $00				; 00
B30_16f8:		.db $00				; 00
B30_16f9:		.db $00				; 00
B30_16fa:		.db $00				; 00
B30_16fb:		.db $00				; 00
B30_16fc:		.db $00				; 00
B30_16fd:		.db $00				; 00
B30_16fe:		.db $00				; 00
B30_16ff:		.db $00				; 00
B30_1700:		.db $00				; 00
B30_1701:		.db $00				; 00
B30_1702:		.db $00				; 00
B30_1703:		.db $00				; 00
B30_1704:		.db $00				; 00
B30_1705:	.db $80
B30_1706:		.db $00				; 00
B30_1707:		.db $00				; 00
B30_1708:		sty $00			; 84 00
B30_170a:		.db $00				; 00
B30_170b:	.db $80
B30_170c:		.db $00				; 00
B30_170d:		.db $00				; 00
B30_170e:		.db $00				; 00
B30_170f:		.db $00				; 00
B30_1710:		.db $00				; 00
B30_1711:		.db $00				; 00
B30_1712:		.db $00				; 00
B30_1713:		.db $00				; 00
B30_1714:		.db $00				; 00
B30_1715:		.db $00				; 00
B30_1716:		.db $00				; 00
B30_1717:		.db $00				; 00
B30_1718:		.db $00				; 00
B30_1719:		.db $00				; 00
B30_171a:		.db $00				; 00
B30_171b:		.db $00				; 00
B30_171c:		.db $00				; 00
B30_171d:		.db $00				; 00
B30_171e:		.db $00				; 00
B30_171f:		.db $00				; 00
B30_1720:		.db $00				; 00
B30_1721:		.db $00				; 00
B30_1722:		.db $00				; 00
B30_1723:		.db $00				; 00
B30_1724:		.db $00				; 00
B30_1725:		.db $00				; 00
B30_1726:		.db $00				; 00
B30_1727:		.db $00				; 00
B30_1728:		.db $00				; 00
B30_1729:		.db $00				; 00
B30_172a:		.db $00				; 00
B30_172b:		.db $00				; 00
B30_172c:		.db $00				; 00
B30_172d:		.db $00				; 00
B30_172e:		.db $00				; 00
B30_172f:		.db $00				; 00
B30_1730:		.db $00				; 00
B30_1731:		.db $00				; 00
B30_1732:		.db $00				; 00
B30_1733:		.db $00				; 00
B30_1734:		.db $00				; 00
B30_1735:	.db $80
B30_1736:		.db $00				; 00
B30_1737:		.db $00				; 00
B30_1738:		.db $00				; 00
B30_1739:		.db $00				; 00
B30_173a:		.db $00				; 00
B30_173b:	.db $82
B30_173c:		.db $00				; 00
B30_173d:		.db $00				; 00
B30_173e:		.db $00				; 00
B30_173f:		.db $00				; 00
B30_1740:		.db $00				; 00
B30_1741:		.db $00				; 00
B30_1742:	.db $83
B30_1743:		.db $00				; 00
B30_1744:		.db $00				; 00
B30_1745:		.db $00				; 00
B30_1746:		.db $00				; 00
B30_1747:		.db $00				; 00
B30_1748:		.db $00				; 00
B30_1749:		.db $00				; 00
B30_174a:		.db $00				; 00
B30_174b:		.db $00				; 00
B30_174c:	.db $80
B30_174d:		.db $00				; 00
B30_174e:		.db $00				; 00
B30_174f:		sty $00			; 84 00
B30_1751:		.db $00				; 00
B30_1752:		.db $00				; 00
B30_1753:		.db $00				; 00
B30_1754:	.db $83
B30_1755:		.db $00				; 00
B30_1756:		.db $00				; 00
B30_1757:		.db $00				; 00
B30_1758:		.db $00				; 00
B30_1759:		.db $00				; 00



data_1e_175a:
B30_175a:	.db $62
B30_175b:	.db $d7
B30_175c:		pla				; 68 
B30_175d:	.db $d7
B30_175e:		ror a			; 6a
B30_175f:	.db $d7
B30_1760:		bvs B30_1739 ; 70 d7

B30_1762:		;removed
	.db $f0 $01

B30_1764:		sta ($e0, x)	; 81 e0
B30_1766:	.db $ff
B30_1767:		cpx #$f1		; e0 f1
B30_1769:		.db $00				; 00
B30_176a:		;removed
	.db $f0 $01

B30_176c:		sta ($e0, x)	; 81 e0
B30_176e:	.db $ff
B30_176f:		cpx #$f1		; e0 f1
B30_1771:	.db $03
B30_1772:		.db $00				; 00
B30_1773:		plp				; 28 
B30_1774:		bit $00			; 24 00
B30_1776:		clc				; 18 
B30_1777:	.db $2e $07 $00
B30_177a:		sta ($2d, x)	; 81 2d
B30_177c:		clc				; 18 
B30_177d:		.db $00				; 00
B30_177e:		sta ($2c, x)	; 81 2c
B30_1780:		asl $00			; 06 00
B30_1782:		sta ($2d, x)	; 81 2d
B30_1784:		clc				; 18 
B30_1785:		.db $00				; 00
B30_1786:		sta ($2c, x)	; 81 2c
B30_1788:		asl $00			; 06 00
B30_178a:		sta ($2d, x)	; 81 2d
B30_178c:		clc				; 18 
B30_178d:		.db $00				; 00
B30_178e:		sta ($2c, x)	; 81 2c
B30_1790:		asl $00			; 06 00
B30_1792:		sta ($2d, x)	; 81 2d
B30_1794:		clc				; 18 
B30_1795:		.db $00				; 00
B30_1796:		sta ($2c, x)	; 81 2c
B30_1798:		asl $00			; 06 00
B30_179a:		sta ($2d, x)	; 81 2d
B30_179c:		clc				; 18 
B30_179d:		.db $00				; 00
B30_179e:		sta ($2c, x)	; 81 2c
B30_17a0:		asl $00			; 06 00
B30_17a2:		sta ($2d, x)	; 81 2d
B30_17a4:	.db $07
B30_17a5:		.db $00				; 00
B30_17a6:	.db $82
B30_17a7:		pla				; 68 
B30_17a8:		adc #$0f		; 69 0f
B30_17aa:		.db $00				; 00
B30_17ab:		sta ($2c, x)	; 81 2c
B30_17ad:		asl $00			; 06 00
B30_17af:		sta ($2d, x)	; 81 2d
B30_17b1:	.db $07
B30_17b2:		.db $00				; 00
B30_17b3:		txa				; 8a 
B30_17b4:		lsr $47			; 46 47
B30_17b6:		pha				; 48 
B30_17b7:		eor #$4a		; 49 4a
B30_17b9:	.db $4b
B30_17ba:		jmp $4e4d		; 4c 4d 4e


B30_17bd:	.db $4f
B30_17be:	.db $07
B30_17bf:		.db $00				; 00
B30_17c0:		sta ($2c, x)	; 81 2c
B30_17c2:		asl $00			; 06 00
B30_17c4:		sta ($2d, x)	; 81 2d
B30_17c6:	.db $07
B30_17c7:		.db $00				; 00
B30_17c8:		txa				; 8a 
B30_17c9:		lsr $57, x		; 56 57
B30_17cb:		cli				; 58 
B30_17cc:		eor $5b5a, y	; 59 5a 5b
B30_17cf:	.db $5c
B30_17d0:		eor $5f5e, x	; 5d 5e 5f
B30_17d3:	.db $07
B30_17d4:		.db $00				; 00
B30_17d5:		sta ($2c, x)	; 81 2c
B30_17d7:		asl $00			; 06 00
B30_17d9:		sta ($2d, x)	; 81 2d
B30_17db:	.db $07
B30_17dc:		.db $00				; 00
B30_17dd:		txa				; 8a 
B30_17de:		ror $67			; 66 67
B30_17e0:		.db $00				; 00
B30_17e1:		.db $00				; 00
B30_17e2:		ror a			; 6a
B30_17e3:		.db $00				; 00
B30_17e4:		.db $00				; 00
B30_17e5:		adc $6f6e		; 6d 6e 6f
B30_17e8:	.db $07
B30_17e9:		.db $00				; 00
B30_17ea:		sta ($2c, x)	; 81 2c
B30_17ec:		asl $00			; 06 00
B30_17ee:		sta ($2d, x)	; 81 2d
B30_17f0:	.db $04
B30_17f1:		.db $00				; 00
B30_17f2:		sta $60			; 85 60
B30_17f4:		.db $00				; 00
B30_17f5:		.db $00				; 00
B30_17f6:		.db $00				; 00
B30_17f7:		adc ($0f, x)	; 61 0f
B30_17f9:		.db $00				; 00
B30_17fa:		sta ($2c, x)	; 81 2c
B30_17fc:		asl $00			; 06 00
B30_17fe:		sta ($2d, x)	; 81 2d
B30_1800:	.db $04
B30_1801:		.db $00				; 00
B30_1802:		;removed
	.db $90 $70

B30_1804:		adc ($72), y	; 71 72
B30_1806:	.db $73
B30_1807:	.db $74
B30_1808:		adc $76, x		; 75 76
B30_180a:	.db $77
B30_180b:		sei				; 78 
B30_180c:		adc $7b7a, y	; 79 7a 7b
B30_180f:	.db $7c
B30_1810:		adc $7f7e, x	; 7d 7e 7f
B30_1813:	.db $04
B30_1814:		.db $00				; 00
B30_1815:		sta ($2c, x)	; 81 2c
B30_1817:		asl $00			; 06 00
B30_1819:		sta ($2d, x)	; 81 2d
B30_181b:	.db $04
B30_181c:		.db $00				; 00
B30_181d:		;removed
	.db $90 $80

B30_181f:		sta ($82, x)	; 81 82
B30_1821:	.db $83
B30_1822:		sty $85			; 84 85
B30_1824:		stx $87			; 86 87
B30_1826:		dey				; 88 
B30_1827:	.db $89
B30_1828:		txa				; 8a 
B30_1829:	.db $8b
B30_182a:		sty $8e8d		; 8c 8d 8e
B30_182d:	.db $8f
B30_182e:	.db $04
B30_182f:		.db $00				; 00
B30_1830:		sta ($2c, x)	; 81 2c
B30_1832:		asl $00			; 06 00
B30_1834:		sta ($2d, x)	; 81 2d
B30_1836:	.db $04
B30_1837:		.db $00				; 00
B30_1838:		;removed
	.db $90 $90

B30_183a:		sta ($92), y	; 91 92
B30_183c:	.db $93
B30_183d:		sty $95, x		; 94 95
B30_183f:		stx $97, y		; 96 97
B30_1841:		tya				; 98 
B30_1842:		sta $9b9a, y	; 99 9a 9b
B30_1845:	.db $9c
B30_1846:		sta $9f9e, x	; 9d 9e 9f
B30_1849:	.db $04
B30_184a:		.db $00				; 00
B30_184b:		sta ($2c, x)	; 81 2c
B30_184d:		asl $00			; 06 00
B30_184f:		sta ($2d, x)	; 81 2d
B30_1851:	.db $04
B30_1852:		.db $00				; 00
B30_1853:		bcc B30_17f5 ; 90 a0

B30_1855:		lda ($a2, x)	; a1 a2
B30_1857:	.db $a3
B30_1858:		ldy $a5			; a4 a5
B30_185a:		ldx $a7			; a6 a7
B30_185c:		tay				; a8 
B30_185d:		lda #$aa		; a9 aa
B30_185f:	.db $ab
B30_1860:		ldy $aead		; ac ad ae
B30_1863:	.db $af
B30_1864:	.db $04
B30_1865:		.db $00				; 00
B30_1866:		sta ($2c, x)	; 81 2c
B30_1868:		asl $00			; 06 00
B30_186a:		sta ($2d, x)	; 81 2d
B30_186c:	.db $04
B30_186d:		.db $00				; 00
B30_186e:	.db $8f
B30_186f:		bcs B30_1822 ; b0 b1

B30_1871:		.db $00				; 00
B30_1872:	.db $b3
B30_1873:		ldy $b5, x		; b4 b5
B30_1875:		ldx $b7, y		; b6 b7
B30_1877:		clv				; b8 
B30_1878:		lda $bbba, y	; b9 ba bb
B30_187b:		ldy $fc00, x	; bc 00 fc
B30_187e:		ora $00			; 05 00
B30_1880:		sta ($2c, x)	; 81 2c
B30_1882:		asl $00			; 06 00
B30_1884:		sta ($2d, x)	; 81 2d
B30_1886:	.db $07
B30_1887:		.db $00				; 00
B30_1888:		txa				; 8a 
B30_1889:	.db $c3
B30_188a:		cpy $c5			; c4 c5
B30_188c:		dec $c7			; c6 c7
B30_188e:		iny				; c8 
B30_188f:		cmp #$ca		; c9 ca
B30_1891:	.db $cb
B30_1892:	.db $cc $07 $00
B30_1895:		sta ($2c, x)	; 81 2c
B30_1897:		asl $00			; 06 00
B30_1899:		sta ($2d, x)	; 81 2d
B30_189b:	.db $07
B30_189c:		.db $00				; 00
B30_189d:		txa				; 8a 
B30_189e:	.db $d3
B30_189f:	.db $d4
B30_18a0:		cmp $d6, x		; d5 d6
B30_18a2:	.db $d7
B30_18a3:		cld				; d8 
B30_18a4:		cmp $dbda, y	; d9 da db
B30_18a7:	.db $dc
B30_18a8:	.db $07
B30_18a9:		.db $00				; 00
B30_18aa:		sta ($2c, x)	; 81 2c
B30_18ac:		asl $00			; 06 00
B30_18ae:		sta ($2d, x)	; 81 2d
B30_18b0:	.db $07
B30_18b1:		.db $00				; 00
B30_18b2:		txa				; 8a 
B30_18b3:	.db $e3
B30_18b4:		cpx $e5			; e4 e5
B30_18b6:		inc $e7			; e6 e7
B30_18b8:		inx				; e8 
B30_18b9:		sbc #$ea		; e9 ea
B30_18bb:	.db $eb
B30_18bc:	.db $ec $07 $00
B30_18bf:		sta ($2c, x)	; 81 2c
B30_18c1:		asl $00			; 06 00
B30_18c3:		sta ($2d, x)	; 81 2d
B30_18c5:	.db $07
B30_18c6:		.db $00				; 00
B30_18c7:	.db $83
B30_18c8:	.db $f3
B30_18c9:	.db $f4
B30_18ca:		sbc $0e, x		; f5 0e
B30_18cc:		.db $00				; 00
B30_18cd:		sta ($2c, x)	; 81 2c
B30_18cf:		asl $00			; 06 00
B30_18d1:		sta ($2d, x)	; 81 2d
B30_18d3:		clc				; 18 
B30_18d4:		.db $00				; 00
B30_18d5:		sta ($2c, x)	; 81 2c
B30_18d7:		asl $00			; 06 00
B30_18d9:		sta ($2d, x)	; 81 2d
B30_18db:		clc				; 18 
B30_18dc:		.db $00				; 00
B30_18dd:		sta ($2c, x)	; 81 2c
B30_18df:		asl $00			; 06 00
B30_18e1:		sta ($2d, x)	; 81 2d
B30_18e3:		clc				; 18 
B30_18e4:		.db $00				; 00
B30_18e5:		sta ($2c, x)	; 81 2c
B30_18e7:		asl $00			; 06 00
B30_18e9:		sta ($2d, x)	; 81 2d
B30_18eb:		clc				; 18 
B30_18ec:		.db $00				; 00
B30_18ed:		sta ($2c, x)	; 81 2c
B30_18ef:		asl $00			; 06 00
B30_18f1:		sta ($2d, x)	; 81 2d
B30_18f3:		clc				; 18 
B30_18f4:		.db $00				; 00
B30_18f5:		sta ($2c, x)	; 81 2c
B30_18f7:		asl $00			; 06 00
B30_18f9:		sta ($2d, x)	; 81 2d
B30_18fb:		clc				; 18 
B30_18fc:		.db $00				; 00
B30_18fd:		sta ($2c, x)	; 81 2c
B30_18ff:		asl $00			; 06 00
B30_1901:		sta ($2d, x)	; 81 2d
B30_1903:		clc				; 18 
B30_1904:		rol $2c81		; 2e 81 2c
B30_1907:		eor $8200		; 4d 00 82
B30_190a:	.db $80
B30_190b:	.db $20 $06 $00
B30_190e:		sty $98			; 84 98
B30_1910:		tax				; aa 
B30_1911:		inc $0433		; ee 33 04
B30_1914:		.db $00				; 00
B30_1915:		sty $55			; 84 55
B30_1917:		sta $ffee, y	; 99 ee ff
B30_191a:	.db $04
B30_191b:		.db $00				; 00
B30_191c:		sty $55			; 84 55
B30_191e:		eor $ffee, y	; 59 ee ff
B30_1921:	.db $04
B30_1922:		.db $00				; 00
B30_1923:	.db $82
B30_1924:		ora $05			; 05 05
B30_1926:	.db $14
B30_1927:		.db $00				; 00
B30_1928:	.db $ff
B30_1929:		.db $00				; 00
B30_192a:	.db $80
B30_192b:		.db $00				; 00
B30_192c:	.db $80
B30_192d:		asl $c3			; 06 c3
B30_192f:	.db $f4
B30_1930:		sbc ($e8), y	; f1 e8
B30_1932:	.db $ed $e6 $00
B30_1935:		dec $f3df, x	; de df f3
B30_1938:	.db $e7
B30_1939:		.db $00				; 00
B30_193a:	.db $c2
B30_193b:		cpx $ed			; e4 ed
B30_193d:	.db $f3
B30_193e:	.db $f4
B30_193f:		sbc ($f8), y	; f1 f8
B30_1941:	.db $80
B30_1942:		asl $c4			; 06 c4
B30_1944:	.db $f4
B30_1945:		sbc ($ee), y	; f1 ee
B30_1947:	.db $ef
B30_1948:		cpx $dc			; e4 dc
B30_194a:		.db $00				; 00
B30_194b:	.db $f3
B30_194c:	.db $e7
B30_194d:		cpx $f1			; e4 f1
B30_194f:		cpx $00			; e4 00
B30_1951:	.db $eb
B30_1952:		inx				; e8 
B30_1953:		sbc $e4, x		; f5 e4
B30_1955:	.db $e3
B30_1956:	.db $80
B30_1957:		asl $e0			; 06 e0
B30_1959:		.db $00				; 00
B30_195a:	.db $ef
B30_195b:		cpx $f1			; e4 f1
B30_195d:	.db $f2
B30_195e:	.db $ee $ed $00
B30_1961:		sbc $ece0		; ede0 ec
B30_1964:		cpx $e3			; e4 e3
B30_1966:	.db $80
B30_1967:		asl $c3			; 06 c3
B30_1969:		sbc ($e0), y	; f1 e0
B30_196b:	.db $e2
B30_196c:	.db $f4
B30_196d:	.db $eb
B30_196e:		cpx #$db		; e0 db
B30_1970:	.db $80
B30_1971:		asl $c7			; 06 c7
B30_1973:		cpx $00			; e4 00
B30_1975:	.db $ef
B30_1976:		sbc ($e0), y	; f1 e0
B30_1978:	.db $e2
B30_1979:	.db $f3
B30_197a:		inx				; e8 
B30_197b:	.db $e2
B30_197c:		cpx $e3			; e4 e3
B30_197e:		.db $00				; 00
B30_197f:	.db $f2
B30_1980:		inc $e2f1		; ee f1 e2
B30_1983:		cpx $f1			; e4 f1
B30_1985:		sed				; f8 
B30_1986:	.db $80
B30_1987:		asl $e8			; 06 e8
B30_1989:		sbc $ee00		; ed00 ee
B30_198c:		sbc ($e3), y	; f1 e3
B30_198e:		cpx $f1			; e4 f1
B30_1990:		.db $00				; 00
B30_1991:	.db $f3
B30_1992:		inc $e200		; ee 00 e2
B30_1995:		sbc ($e4), y	; f1 e4
B30_1997:		cpx #$f3		; e0 f3
B30_1999:		cpx $80			; e4 80
B30_199b:		asl $e0			; 06 e0
B30_199d:		.db $00				; 00
B30_199e:		sbc ($e0, x)	; e1 e0
B30_19a0:	.db $e3
B30_19a1:		.db $00				; 00
B30_19a2:		inc $ee, x		; f6 ee
B30_19a4:		sbc ($eb), y	; f1 eb
B30_19a6:	.db $e3
B30_19a7:		.db $00				; 00
B30_19a8:		sbc $e8			; e5 e8
B30_19aa:	.db $eb
B30_19ab:	.db $eb
B30_19ac:		cpx $e3			; e4 e3
B30_19ae:	.db $80
B30_19af:		asl $f6			; 06 f6
B30_19b1:		inx				; e8 
B30_19b2:	.db $f3
B30_19b3:	.db $e7
B30_19b4:		.db $00				; 00
B30_19b5:		cpx $f5			; e4 f5
B30_19b7:		inx				; e8 
B30_19b8:	.db $eb
B30_19b9:	.db $db
B30_19ba:	.db $80
B30_19bb:		sta ($00, x)	; 81 00
B30_19bd:	.db $80
B30_19be:		.db $00				; 00
B30_19bf:	.db $80
B30_19c0:		asl $c7			; 06 c7
B30_19c2:		cpx $00			; e4 00
B30_19c4:		sbc ($e4, x)	; e1 e4
B30_19c6:		inc $e0			; e6 e0
B30_19c8:		sbc $f300		; ed00 f3
B30_19cb:		cpx #$ea		; e0 ea
B30_19cd:		inx				; e8 
B30_19ce:	.db $ed $e6 $00
B30_19d1:		inc $e4f5		; ee f5 e4
B30_19d4:		sbc ($80), y	; f1 80
B30_19d6:		asl $f3			; 06 f3
B30_19d8:	.db $e7
B30_19d9:		cpx $00			; e4 00
B30_19db:	.db $c2
B30_19dc:		inc $f3ed		; ee ed f3
B30_19df:		inx				; e8 
B30_19e0:		sbc $ede4		; ede4 ed
B30_19e3:	.db $f3
B30_19e4:		.db $00				; 00
B30_19e5:		inc $80e5		; ee e5 80
B30_19e8:		asl $c4			; 06 c4
B30_19ea:	.db $f4
B30_19eb:		sbc ($ee), y	; f1 ee
B30_19ed:	.db $ef
B30_19ee:		cpx $dc			; e4 dc
B30_19f0:		.db $00				; 00
B30_19f1:	.db $e2
B30_19f2:	.db $e7
B30_19f3:		cpx #$ed		; e0 ed
B30_19f5:		inc $e8			; e6 e8
B30_19f7:		sbc $80e6		; ede6 80
B30_19fa:		asl $e2			; 06 e2
B30_19fc:		inc $edf4		; ee f4 ed
B30_19ff:	.db $f3
B30_1a00:		sbc ($e8), y	; f1 e8
B30_1a02:		cpx $f2			; e4 f2
B30_1a04:		.db $00				; 00
B30_1a05:		sbc $f1			; e5 f1
B30_1a07:	.db $ee $ec $00
B30_1a0a:		inc $ee			; e6 ee
B30_1a0c:		inc $80e3		; ee e3 80
B30_1a0f:		asl $f3			; 06 f3
B30_1a11:		inc $e100		; ee 00 e1
B30_1a14:		cpx #$e3		; e0 e3
B30_1a16:	.db $db
B30_1a17:	.db $80
B30_1a18:		asl $d3			; 06 d3
B30_1a1a:	.db $e7
B30_1a1b:		cpx $00			; e4 00
B30_1a1d:		inc $ee			; e6 ee
B30_1a1f:	.db $ee $e3 $00
B30_1a22:	.db $ef
B30_1a23:		cpx $ee			; e4 ee
B30_1a25:	.db $ef
B30_1a26:	.db $eb
B30_1a27:		cpx $00			; e4 00
B30_1a29:		inc $80e5		; ee e5 80
B30_1a2c:		asl $c4			; 06 c4
B30_1a2e:	.db $f4
B30_1a2f:		sbc ($ee), y	; f1 ee
B30_1a31:	.db $ef
B30_1a32:		cpx $00			; e4 00
B30_1a34:	.db $f3
B30_1a35:		sbc ($e8), y	; f1 e8
B30_1a37:		cpx $e3			; e4 e3
B30_1a39:		.db $00				; 00
B30_1a3a:	.db $f3
B30_1a3b:		inc $0680		; ee 80 06
B30_1a3e:		sbc $e8			; e5 e8
B30_1a40:		inc $e7			; e6 e7
B30_1a42:	.db $f3
B30_1a43:		.db $00				; 00
B30_1a44:		inc $e5e5		; ee e5 e5
B30_1a47:		.db $00				; 00
B30_1a48:	.db $c3
B30_1a49:		sbc ($e0), y	; f1 e0
B30_1a4b:	.db $e2
B30_1a4c:	.db $f4
B30_1a4d:	.db $eb
B30_1a4e:		cpx #$dc		; e0 dc
B30_1a50:	.db $80
B30_1a51:		asl $e1			; 06 e1
B30_1a53:	.db $f4
B30_1a54:	.db $f3
B30_1a55:		.db $00				; 00
B30_1a56:	.db $ed $ee $00
B30_1a59:		inc $e4ed		; ee ed e4
B30_1a5c:		.db $00				; 00
B30_1a5d:		inc $e0, x		; f6 e0
B30_1a5f:	.db $f2
B30_1a60:		.db $00				; 00
B30_1a61:		cpx #$e1		; e0 e1
B30_1a63:	.db $eb
B30_1a64:		cpx $80			; e4 80
B30_1a66:		asl $f3			; 06 f3
B30_1a68:		inc $f200		; ee 00 f2
B30_1a6b:	.db $f4
B30_1a6c:		sbc ($f5), y	; f1 f5
B30_1a6e:		inx				; e8 
B30_1a6f:		sbc $e4, x		; f5 e4
B30_1a71:	.db $db
B30_1a72:	.db $80
B30_1a73:		sta ($00, x)	; 81 00
B30_1a75:	.db $80
B30_1a76:		.db $00				; 00
B30_1a77:	.db $80
B30_1a78:		asl $c5			; 06 c5
B30_1a7a:		inx				; e8 
B30_1a7b:		sbc $ebe0		; ede0 eb
B30_1a7e:	.db $eb
B30_1a7f:		sed				; f8 
B30_1a80:	.db $dc
B30_1a81:		.db $00				; 00
B30_1a82:	.db $f3
B30_1a83:	.db $e7
B30_1a84:		cpx $00			; e4 00
B30_1a86:		cmp ($e4, x)	; c1 e4
B30_1a88:	.db $eb
B30_1a89:		cpx $edee		; ec ee ed
B30_1a8c:	.db $f3
B30_1a8d:	.db $80
B30_1a8e:		asl $e5			; 06 e5
B30_1a90:		cpx #$ec		; e0 ec
B30_1a92:		inx				; e8 
B30_1a93:	.db $eb
B30_1a94:		sed				; f8 
B30_1a95:		.db $00				; 00
B30_1a96:		inc $e0, x		; f6 e0
B30_1a98:	.db $f2
B30_1a99:		.db $00				; 00
B30_1a9a:	.db $f2
B30_1a9b:	.db $f4
B30_1a9c:		cpx $eeec		; ec ec ee
B30_1a9f:		sbc $e3e4		; ede4 e3
B30_1aa2:	.db $80
B30_1aa3:		asl $f3			; 06 f3
B30_1aa5:		inc $e100		; ee 00 e1
B30_1aa8:		cpx #$f3		; e0 f3
B30_1aaa:	.db $f3
B30_1aab:	.db $eb
B30_1aac:		cpx $00			; e4 00
B30_1aae:	.db $c3
B30_1aaf:		sbc ($e0), y	; f1 e0
B30_1ab1:	.db $e2
B30_1ab2:	.db $f4
B30_1ab3:	.db $eb
B30_1ab4:		cpx #$da		; e0 da
B30_1ab6:	.db $f2
B30_1ab7:	.db $80
B30_1ab8:		asl $f5			; 06 f5
B30_1aba:		inx				; e8 
B30_1abb:	.db $eb
B30_1abc:		cpx $00			; e4 00
B30_1abe:		sbc $ee			; e5 ee
B30_1ac0:		sbc ($e2), y	; f1 e2
B30_1ac2:		cpx $f2			; e4 f2
B30_1ac4:	.db $db
B30_1ac5:	.db $80
B30_1ac6:		bpl B30_1a9b ; 10 d3

B30_1ac8:	.db $e7
B30_1ac9:		cpx $00			; e4 00
B30_1acb:		cmp ($e4, x)	; c1 e4
B30_1acd:	.db $eb
B30_1ace:		cpx $edee		; ec ee ed
B30_1ad1:	.db $f3
B30_1ad2:	.db $80
B30_1ad3:		bpl B30_1aba ; 10 e5

B30_1ad5:		cpx #$ec		; e0 ec
B30_1ad7:		inx				; e8 
B30_1ad8:	.db $eb
B30_1ad9:		sed				; f8 
B30_1ada:		.db $00				; 00
B30_1adb:	.db $e7
B30_1adc:		cpx #$f2		; e0 f2
B30_1ade:	.db $80
B30_1adf:		;removed
	.db $10 $e0

B30_1ae1:		.db $00				; 00
B30_1ae2:	.db $eb
B30_1ae3:		inc $e6ed		; ee ed e6
B30_1ae6:	.db $80
B30_1ae7:		;removed
	.db $10 $e7

B30_1ae9:		inx				; e8 
B30_1aea:	.db $f2
B30_1aeb:	.db $f3
B30_1aec:		inc $f8f1		; ee f1 f8
B30_1aef:		.db $00				; 00
B30_1af0:		inc $80e5		; ee e5 80
B30_1af3:		bpl B30_1ada ; 10 e5

B30_1af5:		inx				; e8 
B30_1af6:		inc $e7			; e6 e7
B30_1af8:	.db $f3
B30_1af9:		inx				; e8 
B30_1afa:		sbc $80e6		; ede6 80
B30_1afd:		bpl B30_1ae3 ; 10 e4

B30_1aff:		sbc $e8, x		; f5 e8
B30_1b01:	.db $eb
B30_1b02:	.db $db
B30_1b03:	.db $80
B30_1b04:		sta ($00, x)	; 81 00
B30_1b06:	.db $80
B30_1b07:		.db $00				; 00
B30_1b08:	.db $80
B30_1b09:		asl $d3			; 06 d3
B30_1b0b:	.db $e7
B30_1b0c:		cpx $00			; e4 00
B30_1b0e:	.db $f3
B30_1b0f:		inc $edf6		; ee f6 ed
B30_1b12:	.db $f2
B30_1b13:	.db $ef
B30_1b14:		cpx $ee			; e4 ee
B30_1b16:	.db $ef
B30_1b17:	.db $eb
B30_1b18:		cpx $00			; e4 00
B30_1b1a:		sbc ($e4, x)	; e1 e4
B30_1b1c:	.db $fc
B30_1b1d:	.db $80
B30_1b1e:		asl $e2			; 06 e2
B30_1b20:		cpx #$ec		; e0 ec
B30_1b22:		cpx $00			; e4 00
B30_1b24:		cpx #$e5		; e0 e5
B30_1b26:		sbc ($e0), y	; f1 e0
B30_1b28:		inx				; e8 
B30_1b29:	.db $e3
B30_1b2a:		.db $00				; 00
B30_1b2b:	.db $ee $e5 $00
B30_1b2e:	.db $f3
B30_1b2f:	.db $e7
B30_1b30:		cpx $80			; e4 80
B30_1b32:		asl $c1			; 06 c1
B30_1b34:		cpx $eb			; e4 eb
B30_1b36:		cpx $edee		; ec ee ed
B30_1b39:	.db $f3
B30_1b3a:	.db $f2
B30_1b3b:		.db $00				; 00
B30_1b3c:	.db $f2
B30_1b3d:	.db $f4
B30_1b3e:	.db $ef
B30_1b3f:		cpx $f1			; e4 f1
B30_1b41:	.db $fc
B30_1b42:	.db $e7
B30_1b43:	.db $f4
B30_1b44:		cpx $ede0		; ec e0 ed
B30_1b47:	.db $80
B30_1b48:		asl $ef			; 06 ef
B30_1b4a:		inc $e4f6		; ee f6 e4
B30_1b4d:		sbc ($00), y	; f1 00
B30_1b4f:		cpx #$ed		; e0 ed
B30_1b51:	.db $e3
B30_1b52:		.db $00				; 00
B30_1b53:		cpx #$f2		; e0 f2
B30_1b55:		nop				; ea 
B30_1b56:		cpx $e3			; e4 e3
B30_1b58:		.db $00				; 00
B30_1b59:	.db $f3
B30_1b5a:	.db $e7
B30_1b5b:		cpx $ec			; e4 ec
B30_1b5d:	.db $80
B30_1b5e:		asl $f3			; 06 f3
B30_1b60:		inc $eb00		; ee 00 eb
B30_1b63:		cpx $e0			; e4 e0
B30_1b65:		sbc $e4, x		; f5 e4
B30_1b67:		.db $00				; 00
B30_1b68:	.db $f3
B30_1b69:	.db $e7
B30_1b6a:		cpx $00			; e4 00
B30_1b6c:	.db $e2
B30_1b6d:		inc $edf4		; ee f4 ed
B30_1b70:	.db $f3
B30_1b71:		sbc ($f8), y	; f1 f8
B30_1b73:	.db $db
B30_1b74:	.db $80
B30_1b75:		asl $c5			; 06 c5
B30_1b77:		inc $f3f1		; ee f1 f3
B30_1b7a:	.db $f4
B30_1b7b:		sbc $f3e0		; ede0 f3
B30_1b7e:		cpx $eb			; e4 eb
B30_1b80:		sed				; f8 
B30_1b81:	.db $80
B30_1b82:		asl $f3			; 06 f3
B30_1b84:	.db $e7
B30_1b85:		cpx $00			; e4 00
B30_1b87:	.db $ef
B30_1b88:		cpx $ee			; e4 ee
B30_1b8a:	.db $ef
B30_1b8b:	.db $eb
B30_1b8c:		cpx $80			; e4 80
B30_1b8e:		asl $e5			; 06 e5
B30_1b90:		inc $edf4		; ee f4 ed
B30_1b93:	.db $e3
B30_1b94:		.db $00				; 00
B30_1b95:		cpx #$80		; e0 80
B30_1b97:		asl $ec			; 06 ec
B30_1b99:		inx				; e8 
B30_1b9a:		inc $e7			; e6 e7
B30_1b9c:	.db $f3
B30_1b9d:		sed				; f8 
B30_1b9e:	.db $80
B30_1b9f:		asl $c1			; 06 c1
B30_1ba1:		cpx $eb			; e4 eb
B30_1ba3:		cpx $edee		; ec ee ed
B30_1ba6:	.db $f3
B30_1ba7:	.db $dc
B30_1ba8:		.db $00				; 00
B30_1ba9:	.db $e2
B30_1baa:		cpx #$fc		; e0 fc
B30_1bac:	.db $80
B30_1bad:		asl $eb			; 06 eb
B30_1baf:	.db $eb
B30_1bb0:		cpx $e3			; e4 e3
B30_1bb2:		.db $00				; 00
B30_1bb3:	.db $d3
B30_1bb4:		sbc ($e4), y	; f1 e4
B30_1bb6:		sbc $ee, x		; f5 ee
B30_1bb8:		sbc ($db), y	; f1 db
B30_1bba:	.db $80
B30_1bbb:		sta ($00, x)	; 81 00
B30_1bbd:	.db $80
B30_1bbe:		.db $00				; 00
B30_1bbf:	.db $80
B30_1bc0:		.db $00				; 00
B30_1bc1:	.db $80
B30_1bc2:		.db $00				; 00
B30_1bc3:	.db $80
B30_1bc4:		.db $00				; 00
B30_1bc5:	.db $80
B30_1bc6:		.db $00				; 00
B30_1bc7:	.db $80
B30_1bc8:		.db $00				; 00
B30_1bc9:	.db $80
B30_1bca:		.db $00				; 00
B30_1bcb:	.db $80
B30_1bcc:		.db $00				; 00
B30_1bcd:	.db $80
B30_1bce:		asl $d3			; 06 d3
B30_1bd0:	.db $e7
B30_1bd1:		cpx $00			; e4 00
B30_1bd3:	.db $e2
B30_1bd4:	.db $f4
B30_1bd5:		sbc ($f2), y	; f1 f2
B30_1bd7:		cpx $00			; e4 00
B30_1bd9:		inc $80e5		; ee e5 80
B30_1bdc:		asl $c3			; 06 c3
B30_1bde:		sbc ($e0), y	; f1 e0
B30_1be0:	.db $e2
B30_1be1:	.db $f4
B30_1be2:	.db $eb
B30_1be3:		cpx #$00		; e0 00
B30_1be5:	.db $e7
B30_1be6:		cpx #$f2		; e0 f2
B30_1be8:		.db $00				; 00
B30_1be9:		sbc ($e4, x)	; e1 e4
B30_1beb:		inc $f4			; e6 f4
B30_1bed:		sbc $80db		; eddb 80
B30_1bf0:		asl $d3			; 06 d3
B30_1bf2:	.db $e7
B30_1bf3:		cpx $00			; e4 00
B30_1bf5:		sbc $e0			; e5 e0
B30_1bf7:	.db $f3
B30_1bf8:		cpx $00			; e4 00
B30_1bfa:	.db $ee $e5 $00
B30_1bfd:		cpy $f4			; c4 f4
B30_1bff:		sbc ($ee), y	; f1 ee
B30_1c01:	.db $ef
B30_1c02:		cpx $80			; e4 80
B30_1c04:		asl $eb			; 06 eb
B30_1c06:		inx				; e8 
B30_1c07:		cpx $f2			; e4 f2
B30_1c09:		.db $00				; 00
B30_1c0a:		inc $e8, x		; f6 e8
B30_1c0c:	.db $f3
B30_1c0d:	.db $e7
B30_1c0e:		.db $00				; 00
B30_1c0f:	.db $d3
B30_1c10:		sbc ($e4), y	; f1 e4
B30_1c12:		sbc $ee, x		; f5 ee
B30_1c14:		sbc ($db), y	; f1 db
B30_1c16:	.db $80
B30_1c17:		.db $81
