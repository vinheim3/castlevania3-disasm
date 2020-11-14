B5_0000:		txa				; 8a 
B5_0001:		asl a			; 0a
B5_0002:		asl a			; 0a
B5_0003:		asl a			; 0a
B5_0004:		tay				; a8 
B5_0005:		lda ($9a), y	; b1 9a
B5_0007:		cmp #$ff		; c9 ff
B5_0009:		;removed
	.db $f0 $aa

B5_000b:		sta $01			; 85 01
B5_000d:		iny				; c8 
B5_000e:		lda ($9a), y	; b1 9a
B5_0010:		sta $00			; 85 00
B5_0012:		iny				; c8 
B5_0013:		lda $00			; a5 00
B5_0015:		sec				; 38 
B5_0016:		sbc $56			; e5 56
B5_0018:		sta $02			; 85 02
B5_001a:		lda $01			; a5 01
B5_001c:		sbc $57			; e5 57
B5_001e:		sta $03			; 85 03
B5_0020:		beq B5_0033 ; f0 11

B5_0022:		;removed
	.db $30 $91

B5_0024:		lda $02			; a5 02
B5_0026:		sec				; 38 
B5_0027:		sbc ($9a), y	; f1 9a
B5_0029:		sta $04			; 85 04
B5_002b:		lda $03			; a5 03
B5_002d:		sbc #$00		; e9 00
B5_002f:		sta $05			; 85 05
B5_0031:		;removed
	.db $d0 $82

B5_0033:		lda #$01		; a9 01
B5_0035:		sta $0782, x	; 9d 82 07
B5_0038:		inc $07a2		; ee a2 07
B5_003b:		iny				; c8 
B5_003c:		stx $6c			; 86 6c
B5_003e:		lda ($9a), y	; b1 9a
B5_0040:		asl a			; 0a
B5_0041:		tax				; aa 
B5_0042:		lda $a04f, x	; bd 4f a0
B5_0045:		sta $08			; 85 08
B5_0047:		lda $a050, x	; bd 50 a0
B5_004a:		sta $09			; 85 09
B5_004c:	.db $6c $08 $00
B5_004f:		nop				; ea 
B5_0050:		ldx $38			; a6 38
B5_0052:	.db $a7
B5_0053:	.db $8b
B5_0054:	.db $a7
B5_0055:	.db $87
B5_0056:	.db $a7
B5_0057:	.db $74
B5_0058:		tay				; a8 
B5_0059:	.db $5c
B5_005a:		lda #$c6		; a9 c6
B5_005c:		lda #$ca		; a9 ca
B5_005e:		lda #$3a		; a9 3a
B5_0060:		tax				; aa 
B5_0061:		rol $aa, x		; 36 aa
B5_0063:		bvs B5_000d ; 70 a8

B5_0065:		ora #$ab		; 09 ab
B5_0067:		clc				; 18 
B5_0068:	.db $ab
B5_0069:	.db $1c
B5_006a:	.db $ab
B5_006b:		bvs B5_0015 ; 70 a8

B5_006d:		;removed
	.db $70 $a8

B5_006f:		cpy #$9c		; c0 9c
B5_0071:		ldy $9c			; a4 9c
B5_0073:		sta ($a0), y	; 91 a0
B5_0075:		sta $a5a0, y	; 99 a0 a5
B5_0078:		ldy #$af		; a0 af
B5_007a:		ldy #$b9		; a0 b9
B5_007c:		ldy #$bf		; a0 bf
B5_007e:		ldy #$c7		; a0 c7
B5_0080:		ldy #$cd		; a0 cd
B5_0082:		ldy #$db		; a0 db
B5_0084:		ldy #$e5		; a0 e5
B5_0086:		ldy #$e9		; a0 e9
B5_0088:		ldy #$f7		; a0 f7
B5_008a:		ldy #$fd		; a0 fd
B5_008c:		ldy #$03		; a0 03
B5_008e:		lda ($0b, x)	; a1 0b
B5_0090:		lda ($11, x)	; a1 11
B5_0092:		lda ($12, x)	; a1 12
B5_0094:		lda ($16, x)	; a1 16
B5_0096:		lda ($18, x)	; a1 18
B5_0098:		lda ($19, x)	; a1 19
B5_009a:		lda ($1c, x)	; a1 1c
B5_009c:		lda ($1f, x)	; a1 1f
B5_009e:		lda ($22, x)	; a1 22
B5_00a0:		lda ($25, x)	; a1 25
B5_00a2:		lda ($28, x)	; a1 28
B5_00a4:		lda ($2b, x)	; a1 2b
B5_00a6:		lda ($2c, x)	; a1 2c
B5_00a8:		lda ($2d, x)	; a1 2d
B5_00aa:		lda ($2f, x)	; a1 2f
B5_00ac:		lda ($31, x)	; a1 31
B5_00ae:		lda ($33, x)	; a1 33
B5_00b0:		lda ($36, x)	; a1 36
B5_00b2:		lda ($38, x)	; a1 38
B5_00b4:		lda ($3a, x)	; a1 3a
B5_00b6:		lda ($3c, x)	; a1 3c
B5_00b8:		lda ($3f, x)	; a1 3f
B5_00ba:		lda ($42, x)	; a1 42
B5_00bc:		lda ($45, x)	; a1 45
B5_00be:		lda ($48, x)	; a1 48
B5_00c0:		lda ($49, x)	; a1 49
B5_00c2:		lda ($4a, x)	; a1 4a
B5_00c4:		lda ($4c, x)	; a1 4c
B5_00c6:		lda ($4e, x)	; a1 4e
B5_00c8:		lda ($50, x)	; a1 50
B5_00ca:		lda ($51, x)	; a1 51
B5_00cc:		lda ($54, x)	; a1 54
B5_00ce:		lda ($56, x)	; a1 56
B5_00d0:		lda ($59, x)	; a1 59
B5_00d2:		lda ($5a, x)	; a1 5a
B5_00d4:		lda ($5c, x)	; a1 5c
B5_00d6:		lda ($5e, x)	; a1 5e
B5_00d8:		lda ($60, x)	; a1 60
B5_00da:		lda ($61, x)	; a1 61
B5_00dc:		lda ($63, x)	; a1 63
B5_00de:		lda ($64, x)	; a1 64
B5_00e0:		lda ($66, x)	; a1 66
B5_00e2:		lda ($67, x)	; a1 67
B5_00e4:		lda ($68, x)	; a1 68
B5_00e6:		lda ($6a, x)	; a1 6a
B5_00e8:		lda ($6d, x)	; a1 6d
B5_00ea:		lda ($6f, x)	; a1 6f
B5_00ec:		lda ($70, x)	; a1 70
B5_00ee:		lda ($71, x)	; a1 71
B5_00f0:		lda ($73, x)	; a1 73
B5_00f2:		lda ($76, x)	; a1 76
B5_00f4:		lda ($78, x)	; a1 78
B5_00f6:		lda ($7b, x)	; a1 7b
B5_00f8:		lda ($7d, x)	; a1 7d
B5_00fa:		lda ($7f, x)	; a1 7f
B5_00fc:		lda ($82, x)	; a1 82
B5_00fe:		lda ($84, x)	; a1 84
B5_0100:		lda ($86, x)	; a1 86
B5_0102:		lda ($87, x)	; a1 87
B5_0104:		lda ($8a, x)	; a1 8a
B5_0106:		lda ($8d, x)	; a1 8d
B5_0108:		lda ($90, x)	; a1 90
B5_010a:		lda ($92, x)	; a1 92
B5_010c:		lda ($95, x)	; a1 95
B5_010e:		lda ($97, x)	; a1 97
B5_0110:		lda ($00, x)	; a1 00
B5_0112:		.db $00				; 00
B5_0113:		.db $00				; 00
B5_0114:		ora ($00, x)	; 01 00
B5_0116:	.db $1a
B5_0117:		.db $00				; 00
B5_0118:		.db $00				; 00
B5_0119:	.db $02
B5_011a:		.db $00				; 00
B5_011b:	.db $03
B5_011c:	.db $04
B5_011d:		ora $06			; 05 06
B5_011f:	.db $07
B5_0120:		php				; 08 
B5_0121:		ora #$07		; 09 07
B5_0123:		php				; 08 
B5_0124:		ora #$04		; 09 04
B5_0126:		ora $06			; 05 06
B5_0128:	.db $02
B5_0129:		.db $00				; 00
B5_012a:	.db $03
B5_012b:		asl a			; 0a
B5_012c:		.db $00				; 00
B5_012d:		and $00			; 25 00
B5_012f:		.db $00				; 00
B5_0130:		.db $00				; 00
B5_0131:	.db $1b
B5_0132:		.db $00				; 00
B5_0133:		.db $00				; 00
B5_0134:		.db $00				; 00
B5_0135:	.db $0b
B5_0136:	.db $1c
B5_0137:		.db $00				; 00
B5_0138:		bit $00			; 24 00
B5_013a:		ora $280c, x	; 1d 0c 28
B5_013d:		.db $00				; 00
B5_013e:		.db $00				; 00
B5_013f:		ora $1e00		; 0d 00 1e
B5_0142:		.db $00				; 00
B5_0143:		.db $00				; 00
B5_0144:	.db $0e $00 $00
B5_0147:	.db $1f
B5_0148:		.db $00				; 00
B5_0149:		.db $00				; 00
B5_014a:		.db $00				; 00
B5_014b:		jsr $0f00		; 20 00 0f
B5_014e:		and ($00, x)	; 21 00
B5_0150:	.db $22
B5_0151:		.db $00				; 00
B5_0152:		.db $00				; 00
B5_0153:		.db $00				; 00
B5_0154:		;removed
	.db $10 $11

B5_0156:		.db $00				; 00
B5_0157:		.db $00				; 00
B5_0158:		.db $00				; 00
B5_0159:	.db $12
B5_015a:	.db $23
B5_015b:		.db $00				; 00
B5_015c:	.db $13
B5_015d:		.db $00				; 00
B5_015e:		rol $00			; 26 00
B5_0160:	.db $14
B5_0161:		ora $16, x		; 15 16
B5_0163:	.db $17
B5_0164:		clc				; 18 
B5_0165:	.db $19 $42 $00
B5_0168:	.db $39 $00 $00
B5_016b:	.db $3a
B5_016c:		.db $00				; 00
B5_016d:		.db $00				; 00
B5_016e:	.db $34
B5_016f:		.db $00				; 00
B5_0170:		and $41, x		; 35 41
B5_0172:	.db $3d $3b $00
B5_0175:		and ($32), y	; 31 32
B5_0177:		rol $00, x		; 36 00
B5_0179:		.db $00				; 00
B5_017a:	.db $3e $29 $00
B5_017d:		rol a			; 2a
B5_017e:	.db $33
B5_017f:	.db $2b
B5_0180:		.db $00				; 00
B5_0181:		.db $00				; 00
B5_0182:		.db $00				; 00
B5_0183:	.db $2c $3f $00
B5_0186:	.db $27
B5_0187:		.db $00				; 00
B5_0188:		and $3c00		; 2d 00 3c
B5_018b:		.db $00				; 00
B5_018c:		.db $00				; 00
B5_018d:		.db $00				; 00
B5_018e:	.db $2e $2f $00
B5_0191:		bmi B5_0193 ; 30 00

B5_0193:		sec				; 38 
B5_0194:		.db $00				; 00
B5_0195:		rti				; 40 


B5_0196:	.db $37
B5_0197:		.db $00				; 00
B5_0198:		.db $00				; 00
B5_0199:	.db $1f
B5_019a:		ldx #$30		; a2 30
B5_019c:		ldx #$69		; a2 69
B5_019e:		ldx #$8a		; a2 8a
B5_01a0:		ldx #$9b		; a2 9b
B5_01a2:		ldx #$ac		; a2 ac
B5_01a4:		ldx #$b5		; a2 b5
B5_01a6:		ldx #$be		; a2 be
B5_01a8:		ldx #$cf		; a2 cf
B5_01aa:		ldx #$f0		; a2 f0
B5_01ac:		ldx #$f9		; a2 f9
B5_01ae:		ldx #$2c		; a2 2c
B5_01b0:	.db $a3
B5_01b1:	.db $47
B5_01b2:	.db $a3
B5_01b3:	.db $72
B5_01b4:	.db $a3
B5_01b5:		sty $c7a3		; 8c a3 c7
B5_01b8:	.db $a3
B5_01b9:	.db $fa
B5_01ba:	.db $a3
B5_01bb:	.db $03
B5_01bc:		ldy $1c			; a4 1c
B5_01be:		ldy $2e			; a4 2e
B5_01c0:		ldy $70			; a4 70
B5_01c2:		ldy $91			; a4 91
B5_01c4:		ldy $92			; a4 92
B5_01c6:		ldy $9b			; a4 9b
B5_01c8:		ldy $9c			; a4 9c
B5_01ca:		ldy $a5			; a4 a5
B5_01cc:		ldy $1f			; a4 1f
B5_01ce:		ldx #$23		; a2 23
B5_01d0:	.db $a3
B5_01d1:		and $a3, x		; 35 a3
B5_01d3:		rol $83a3, x	; 3e a3 83
B5_01d6:	.db $a3
B5_01d7:		lda $a3, x		; b5 a3
B5_01d9:		ldx $d0a3, y	; be a3 d0
B5_01dc:	.db $a3
B5_01dd:		cmp $25a3, y	; d9 a3 25
B5_01e0:		ldy $61			; a4 61
B5_01e2:	.db $a3
B5_01e3:	.db $1a
B5_01e4:	.db $a3
B5_01e5:	.db $67
B5_01e6:		ldy $ac			; a4 ac
B5_01e8:		lda $58			; a5 58
B5_01ea:	.db $a3
B5_01eb:	.db $77
B5_01ec:		lda $88			; a5 88
B5_01ee:		lda $91			; a5 91
B5_01f0:		lda $9a			; a5 9a
B5_01f2:		lda $bd			; a5 bd
B5_01f4:		lda $cf			; a5 cf
B5_01f6:		lda $c6			; a5 c6
B5_01f8:		lda $d8			; a5 d8
B5_01fa:		lda $4d			; a5 4d
B5_01fc:		lda $3b			; a5 3b
B5_01fe:		lda $21			; a5 21
B5_0200:		ldx $2a			; a6 2a
B5_0202:		lda $21			; a5 21
B5_0204:		lda $b8			; a5 b8
B5_0206:		ldy $4b			; a4 4b
B5_0208:		ldx $64			; a6 64
B5_020a:		ldx $7d			; a6 7d
B5_020c:		ldx $9e			; a6 9e
B5_020e:		ldx $af			; a6 af
B5_0210:		ldy $bf			; a4 bf
B5_0212:		ldx $44			; a6 44
B5_0214:		lda $6e			; a5 6e
B5_0216:		lda $a3			; a5 a3
B5_0218:		lda $42			; a5 42
B5_021a:		ldx $e0			; a6 e0
B5_021c:		ldx $a6			; a6 a6
B5_021e:		ldy $00			; a4 00
B5_0220:		clc				; 18 
B5_0221:		.db $00				; 00
B5_0222:		;removed
	.db $10 $b0

B5_0224:		.db $00				; 00
B5_0225:		ora ($00, x)	; 01 00
B5_0227:		.db $00				; 00
B5_0228:		dey				; 88 
B5_0229:		.db $00				; 00
B5_022a:		;removed
	.db $10 $a8

B5_022c:		ora ($00, x)	; 01 00
B5_022e:		ora ($ff, x)	; 01 ff
B5_0230:		.db $00				; 00
B5_0231:		;removed
	.db $b0 $10

B5_0233:	.db $02
B5_0234:	.db $64
B5_0235:		ora ($00, x)	; 01 00
B5_0237:		.db $00				; 00
B5_0238:		ora ($50, x)	; 01 50
B5_023a:		bpl B5_023e ; 10 02

B5_023c:		ldy $01, x		; b4 01
B5_023e:		ora ($00, x)	; 01 00
B5_0240:		ora ($90, x)	; 01 90
B5_0242:		;removed
	.db $10 $02

B5_0244:	.db $64
B5_0245:		ora ($02, x)	; 01 02
B5_0247:		.db $00				; 00
B5_0248:		ora ($d0, x)	; 01 d0
B5_024a:		;removed
	.db $10 $02

B5_024c:	.db $64
B5_024d:		ora ($03, x)	; 01 03
B5_024f:		.db $00				; 00
B5_0250:	.db $02
B5_0251:		bpl B5_0263 ; 10 10

B5_0253:	.db $02
B5_0254:	.db $64
B5_0255:		ora ($04, x)	; 01 04
B5_0257:		.db $00				; 00
B5_0258:	.db $02
B5_0259:		;removed
	.db $10 $10

B5_025b:	.db $02
B5_025c:		ldy $01, x		; b4 01
B5_025e:		ora $00			; 05 00
B5_0260:	.db $02
B5_0261:		;removed
	.db $30 $10

B5_0263:	.db $02
B5_0264:	.db $64
B5_0265:		ora ($06, x)	; 01 06
B5_0267:		.db $00				; 00
B5_0268:	.db $ff
B5_0269:		.db $00				; 00
B5_026a:		lda $1100		; ad 00 11
B5_026d:		clc				; 18 
B5_026e:	.db $03
B5_026f:		ora ($00, x)	; 01 00
B5_0271:		.db $00				; 00
B5_0272:		lda $0a40, x	; bd 40 0a
B5_0275:		rts				; 60 


B5_0276:		.db $00				; 00
B5_0277:		ora ($00, x)	; 01 00
B5_0279:	.db $02
B5_027a:		adc $0a40, x	; 7d 40 0a
B5_027d:		rti				; 40 


B5_027e:		.db $00				; 00
B5_027f:		.db $00				; 00
B5_0280:		.db $00				; 00
B5_0281:	.db $02
B5_0282:		lda $1100		; ad 00 11
B5_0285:		inx				; e8 
B5_0286:		ora ($01, x)	; 01 01
B5_0288:		ora ($ff, x)	; 01 ff
B5_028a:		.db $00				; 00
B5_028b:		rts				; 60 


B5_028c:		rti				; 40 


B5_028d:		ora $30			; 05 30
B5_028f:		.db $00				; 00
B5_0290:		.db $00				; 00
B5_0291:		.db $00				; 00
B5_0292:		ora ($50, x)	; 01 50
B5_0294:		rti				; 40 


B5_0295:		ora $30			; 05 30
B5_0297:		ora ($ff, x)	; 01 ff
B5_0299:		.db $00				; 00
B5_029a:	.db $ff
B5_029b:		.db $00				; 00
B5_029c:		clc				; 18 
B5_029d:		.db $00				; 00
B5_029e:		bpl B5_0250 ; 10 b0

B5_02a0:		ora ($01, x)	; 01 01
B5_02a2:		.db $00				; 00
B5_02a3:		ora ($20, x)	; 01 20
B5_02a5:		rti				; 40 


B5_02a6:	.db $04
B5_02a7:		dec $0201, x	; de 01 02
B5_02aa:		.db $00				; 00
B5_02ab:	.db $ff
B5_02ac:		.db $00				; 00
B5_02ad:		sta $0a40, x	; 9d 40 0a
B5_02b0:	.db $80
B5_02b1:		.db $00				; 00
B5_02b2:	.db $03
B5_02b3:		.db $00				; 00
B5_02b4:	.db $ff
B5_02b5:		.db $00				; 00
B5_02b6:		inx				; e8 
B5_02b7:		.db $00				; 00
B5_02b8:		;removed
	.db $10 $50

B5_02ba:	.db $04
B5_02bb:		ora ($01, x)	; 01 01
B5_02bd:	.db $ff
B5_02be:		.db $00				; 00
B5_02bf:		rts				; 60 


B5_02c0:		rti				; 40 


B5_02c1:	.db $04
B5_02c2:		cpx #$01		; e0 01
B5_02c4:		ora $00			; 05 00
B5_02c6:		.db $00				; 00
B5_02c7:		inx				; e8 
B5_02c8:		.db $00				; 00
B5_02c9:		bpl B5_025b ; 10 90

B5_02cb:	.db $03
B5_02cc:		ora ($00, x)	; 01 00
B5_02ce:	.db $ff
B5_02cf:		.db $00				; 00
B5_02d0:		adc $0a40, x	; 7d 40 0a
B5_02d3:		cpy #$00		; c0 00
B5_02d5:		php				; 08 
B5_02d6:		.db $00				; 00
B5_02d7:	.db $02
B5_02d8:		ora $00			; 05 00
B5_02da:		ora ($28), y	; 11 28
B5_02dc:	.db $02
B5_02dd:		.db $00				; 00
B5_02de:		ora ($02, x)	; 01 02
B5_02e0:		eor $0a40, x	; 5d 40 0a
B5_02e3:		jsr $0700		; 20 00 07
B5_02e6:		.db $00				; 00
B5_02e7:	.db $02
B5_02e8:		adc $0a40, x	; 7d 40 0a
B5_02eb:		rts				; 60 


B5_02ec:		.db $00				; 00
B5_02ed:		asl $00			; 06 00
B5_02ef:	.db $ff
B5_02f0:		ora ($e8, x)	; 01 e8
B5_02f2:		.db $00				; 00
B5_02f3:		bpl B5_0365 ; 10 70

B5_02f5:		.db $00				; 00
B5_02f6:		ora ($02, x)	; 01 02
B5_02f8:	.db $ff
B5_02f9:		ora ($30, x)	; 01 30
B5_02fb:		;removed
	.db $10 $07

B5_02fd:		.db $00				; 00
B5_02fe:		ora ($04, x)	; 01 04
B5_0300:		.db $00				; 00
B5_0301:		ora ($70, x)	; 01 70
B5_0303:		;removed
	.db $10 $07

B5_0305:		.db $00				; 00
B5_0306:		ora ($05, x)	; 01 05
B5_0308:		.db $00				; 00
B5_0309:		ora ($b0, x)	; 01 b0
B5_030b:		bpl B5_0314 ; 10 07

B5_030d:		.db $00				; 00
B5_030e:		ora ($06, x)	; 01 06
B5_0310:		.db $00				; 00
B5_0311:	.db $02
B5_0312:		inx				; e8 
B5_0313:		.db $00				; 00
B5_0314:		bpl B5_02c6 ; 10 b0

B5_0316:	.db $03
B5_0317:		ora ($00, x)	; 01 00
B5_0319:	.db $ff
B5_031a:	.db $03
B5_031b:		sei				; 78 
B5_031c:		.db $00				; 00
B5_031d:		;removed
	.db $10 $68

B5_031f:		.db $00				; 00
B5_0320:		.db $00				; 00
B5_0321:		.db $00				; 00
B5_0322:	.db $ff
B5_0323:		ora ($28, x)	; 01 28
B5_0325:		.db $00				; 00
B5_0326:		bpl B5_02d0 ; 10 a8

B5_0328:		.db $00				; 00
B5_0329:		.db $00				; 00
B5_032a:		.db $00				; 00
B5_032b:	.db $ff
B5_032c:		.db $00				; 00
B5_032d:		bne B5_035f ; d0 30

B5_032f:		ora ($50, x)	; 01 50
B5_0331:		.db $00				; 00
B5_0332:		.db $00				; 00
B5_0333:		.db $00				; 00
B5_0334:	.db $ff
B5_0335:	.db $04
B5_0336:		inx				; e8 
B5_0337:		.db $00				; 00
B5_0338:		;removed
	.db $10 $90

B5_033a:		.db $00				; 00
B5_033b:		ora ($00, x)	; 01 00
B5_033d:	.db $ff
B5_033e:	.db $02
B5_033f:		inx				; e8 
B5_0340:		.db $00				; 00
B5_0341:		;removed
	.db $10 $50

B5_0343:		.db $00				; 00
B5_0344:		ora ($00, x)	; 01 00
B5_0346:	.db $ff
B5_0347:		ora ($70, x)	; 01 70
B5_0349:		bmi B5_034c ; 30 01

B5_034b:		rts				; 60 


B5_034c:		ora ($00, x)	; 01 00
B5_034e:		.db $00				; 00
B5_034f:		ora ($d0, x)	; 01 d0
B5_0351:		bmi B5_0354 ; 30 01

B5_0353:	.db $80
B5_0354:	.db $02
B5_0355:		.db $00				; 00
B5_0356:		.db $00				; 00
B5_0357:	.db $ff
B5_0358:		.db $00				; 00
B5_0359:		sec				; 38 
B5_035a:		.db $00				; 00
B5_035b:		bpl B5_02f5 ; 10 98

B5_035d:	.db $03
B5_035e:		.db $00				; 00
B5_035f:		.db $00				; 00
B5_0360:	.db $ff
B5_0361:		ora ($c0, x)	; 01 c0
B5_0363:		cpy #$0d		; c0 0d
B5_0365:	.db $80
B5_0366:		.db $00				; 00
B5_0367:		.db $00				; 00
B5_0368:		.db $00				; 00
B5_0369:	.db $03
B5_036a:		bvs B5_02ec ; 70 80

B5_036c:	.db $0d $80 $00
B5_036f:		.db $00				; 00
B5_0370:	.db $02
B5_0371:	.db $ff
B5_0372:		.db $00				; 00
B5_0373:		bvs B5_0385 ; 70 10

B5_0375:	.db $03
B5_0376:		tay				; a8 
B5_0377:		ora ($07, x)	; 01 07
B5_0379:		.db $00				; 00
B5_037a:		ora ($30, x)	; 01 30
B5_037c:		bpl B5_0381 ; 10 03

B5_037e:		dey				; 88 
B5_037f:		ora ($08, x)	; 01 08
B5_0381:		.db $00				; 00
B5_0382:	.db $ff
B5_0383:		.db $00				; 00
B5_0384:		inx				; e8 
B5_0385:		.db $00				; 00
B5_0386:		bpl B5_03e0 ; 10 58

B5_0388:		.db $00				; 00
B5_0389:		.db $00				; 00
B5_038a:		.db $00				; 00
B5_038b:	.db $ff
B5_038c:		.db $00				; 00
B5_038d:		clc				; 18 
B5_038e:		.db $00				; 00
B5_038f:		bpl B5_0341 ; 10 b0

B5_0391:	.db $04
B5_0392:		ora ($00, x)	; 01 00
B5_0394:		.db $00				; 00
B5_0395:		bvc B5_03a7 ; 50 10

B5_0397:	.db $03
B5_0398:		dey				; 88 
B5_0399:		ora ($09, x)	; 01 09
B5_039b:		.db $00				; 00
B5_039c:		.db $00				; 00
B5_039d:		;removed
	.db $b0 $10

B5_039f:	.db $03
B5_03a0:		dey				; 88 
B5_03a1:		ora ($0a, x)	; 01 0a
B5_03a3:		.db $00				; 00
B5_03a4:		.db $00				; 00
B5_03a5:		bne B5_03b7 ; d0 10

B5_03a7:	.db $03
B5_03a8:		iny				; c8 
B5_03a9:		ora ($0b, x)	; 01 0b
B5_03ab:		.db $00				; 00
B5_03ac:		ora ($10, x)	; 01 10
B5_03ae:		bpl B5_03b3 ; 10 03

B5_03b0:		dey				; 88 
B5_03b1:		ora ($0c, x)	; 01 0c
B5_03b3:		.db $00				; 00
B5_03b4:	.db $ff
B5_03b5:	.db $02
B5_03b6:		pha				; 48 
B5_03b7:		.db $00				; 00
B5_03b8:		;removed
	.db $10 $88

B5_03ba:		.db $00				; 00
B5_03bb:		.db $00				; 00
B5_03bc:		.db $00				; 00
B5_03bd:	.db $ff
B5_03be:	.db $03
B5_03bf:		inx				; e8 
B5_03c0:		.db $00				; 00
B5_03c1:		bpl B5_040b ; 10 48

B5_03c3:		.db $00				; 00
B5_03c4:		.db $00				; 00
B5_03c5:		.db $00				; 00
B5_03c6:	.db $ff
B5_03c7:		.db $00				; 00
B5_03c8:		iny				; c8 
B5_03c9:		bpl B5_03cb ; 10 00

B5_03cb:		stx $00			; 86 00
B5_03cd:		.db $00				; 00
B5_03ce:		.db $00				; 00
B5_03cf:	.db $ff
B5_03d0:		.db $00				; 00
B5_03d1:		sec				; 38 
B5_03d2:		.db $00				; 00
B5_03d3:		bpl B5_0375 ; 10 a0

B5_03d5:		.db $00				; 00
B5_03d6:		ora ($00, x)	; 01 00
B5_03d8:	.db $ff
B5_03d9:		ora ($34, x)	; 01 34
B5_03db:		bmi B5_03e9 ; 30 0c

B5_03dd:		tya				; 98 
B5_03de:		bmi B5_0363 ; 30 83

B5_03e0:		.db $00				; 00
B5_03e1:		ora ($d0, x)	; 01 d0
B5_03e3:		.db $00				; 00
B5_03e4:	.db $0b
B5_03e5:		dey				; 88 
B5_03e6:	.db $02
B5_03e7:	.db $02
B5_03e8:		.db $00				; 00
B5_03e9:	.db $03
B5_03ea:		clv				; b8 
B5_03eb:		.db $00				; 00
B5_03ec:		;removed
	.db $10 $a8

B5_03ee:		.db $00				; 00
B5_03ef:		.db $00				; 00
B5_03f0:		.db $00				; 00
B5_03f1:	.db $04
B5_03f2:		sec				; 38 
B5_03f3:		.db $00				; 00
B5_03f4:		bpl B5_037e ; 10 88

B5_03f6:	.db $02
B5_03f7:		.db $00				; 00
B5_03f8:		ora ($ff, x)	; 01 ff
B5_03fa:		ora ($40, x)	; 01 40
B5_03fc:		php				; 08 
B5_03fd:		ora #$00		; 09 00
B5_03ff:		.db $00				; 00
B5_0400:		.db $00				; 00
B5_0401:		.db $00				; 00
B5_0402:	.db $ff
B5_0403:		ora ($80, x)	; 01 80
B5_0405:		php				; 08 
B5_0406:		ora #$00		; 09 00
B5_0408:	.db $02
B5_0409:		.db $00				; 00
B5_040a:		.db $00				; 00
B5_040b:		ora ($e8, x)	; 01 e8
B5_040d:		.db $00				; 00
B5_040e:		bpl B5_03c0 ; 10 b0

B5_0410:	.db $02
B5_0411:		ora ($00, x)	; 01 00
B5_0413:		ora ($e8, x)	; 01 e8
B5_0415:		.db $00				; 00
B5_0416:		bpl B5_03e0 ; 10 c8

B5_0418:		.db $00				; 00
B5_0419:		.db $00				; 00
B5_041a:		ora ($ff, x)	; 01 ff
B5_041c:		.db $00				; 00
B5_041d:	.db $80
B5_041e:		php				; 08 
B5_041f:		ora #$00		; 09 00
B5_0421:		ora ($00, x)	; 01 00
B5_0423:		.db $00				; 00
B5_0424:	.db $ff
B5_0425:		.db $00				; 00
B5_0426:		cpx #$00		; e0 00
B5_0428:	.db $0b
B5_0429:		ldy $0204		; ac 04 02
B5_042c:		.db $00				; 00
B5_042d:	.db $ff
B5_042e:		.db $00				; 00
B5_042f:		;removed
	.db $90 $10

B5_0431:		asl $00			; 06 00
B5_0433:		ora ($00, x)	; 01 00
B5_0435:		.db $00				; 00
B5_0436:		.db $00				; 00
B5_0437:		;removed
	.db $d0 $10

B5_0439:		asl $00			; 06 00
B5_043b:		ora ($03, x)	; 01 03
B5_043d:		.db $00				; 00
B5_043e:		ora ($10, x)	; 01 10
B5_0440:		bpl B5_0448 ; 10 06

B5_0442:		.db $00				; 00
B5_0443:		ora ($02, x)	; 01 02
B5_0445:		.db $00				; 00
B5_0446:		ora ($70, x)	; 01 70
B5_0448:		;removed
	.db $10 $07

B5_044a:		.db $00				; 00
B5_044b:		ora ($01, x)	; 01 01
B5_044d:		.db $00				; 00
B5_044e:		ora ($90, x)	; 01 90
B5_0450:		bpl B5_0459 ; 10 07

B5_0452:		.db $00				; 00
B5_0453:		ora ($07, x)	; 01 07
B5_0455:		.db $00				; 00
B5_0456:	.db $02
B5_0457:		clv				; b8 
B5_0458:		.db $00				; 00
B5_0459:		bpl B5_04b3 ; 10 58

B5_045b:		.db $00				; 00
B5_045c:		.db $00				; 00
B5_045d:		.db $00				; 00
B5_045e:	.db $03
B5_045f:		bne B5_0481 ; d0 20

B5_0461:	.db $0b
B5_0462:		;removed
	.db $90 $20

B5_0464:	.db $02
B5_0465:		.db $00				; 00
B5_0466:	.db $ff
B5_0467:	.db $03
B5_0468:		tay				; a8 
B5_0469:		.db $00				; 00
B5_046a:		bpl B5_03fc ; 10 90

B5_046c:		ora ($01, x)	; 01 01
B5_046e:		.db $00				; 00
B5_046f:	.db $ff
B5_0470:		.db $00				; 00
B5_0471:		cld				; d8 
B5_0472:		.db $00				; 00
B5_0473:		bpl B5_03fd ; 10 88

B5_0475:	.db $03
B5_0476:		.db $00				; 00
B5_0477:		.db $00				; 00
B5_0478:		ora ($80, x)	; 01 80
B5_047a:		php				; 08 
B5_047b:		php				; 08 
B5_047c:		bmi B5_0481 ; 30 03

B5_047e:		.db $00				; 00
B5_047f:		.db $00				; 00
B5_0480:	.db $02
B5_0481:		clc				; 18 
B5_0482:		.db $00				; 00
B5_0483:		bpl B5_040d ; 10 88

B5_0485:		ora ($00, x)	; 01 00
B5_0487:		ora ($03, x)	; 01 03
B5_0489:		cpy #$08		; c0 08
B5_048b:		php				; 08 
B5_048c:		bmi B5_0492 ; 30 04

B5_048e:		.db $00				; 00
B5_048f:		.db $00				; 00
B5_0490:	.db $ff
B5_0491:	.db $ff
B5_0492:	.db $04
B5_0493:		tay				; a8 
B5_0494:		.db $00				; 00
B5_0495:		bpl B5_041f ; 10 88

B5_0497:		ora ($00, x)	; 01 00
B5_0499:		.db $00				; 00
B5_049a:	.db $ff
B5_049b:	.db $ff
B5_049c:	.db $03
B5_049d:		php				; 08 
B5_049e:		.db $00				; 00
B5_049f:		bpl B5_0429 ; 10 88

B5_04a1:		.db $00				; 00
B5_04a2:		.db $00				; 00
B5_04a3:		.db $00				; 00
B5_04a4:	.db $ff
B5_04a5:	.db $ff
B5_04a6:	.db $04
B5_04a7:		inx				; e8 
B5_04a8:		.db $00				; 00
B5_04a9:		;removed
	.db $10 $50

B5_04ab:	.db $04
B5_04ac:		ora ($00, x)	; 01 00
B5_04ae:	.db $ff
B5_04af:		ora ($40, x)	; 01 40
B5_04b1:		php				; 08 
B5_04b2:		php				; 08 
B5_04b3:	.db $80
B5_04b4:	.db $07
B5_04b5:		.db $00				; 00
B5_04b6:		.db $00				; 00
B5_04b7:	.db $ff
B5_04b8:		.db $00				; 00
B5_04b9:		bcs B5_04cb ; b0 10

B5_04bb:	.db $03
B5_04bc:		dey				; 88 
B5_04bd:		ora ($0d, x)	; 01 0d
B5_04bf:		.db $00				; 00
B5_04c0:		.db $00				; 00
B5_04c1:		;removed
	.db $d0 $10

B5_04c3:	.db $02
B5_04c4:		sty $01			; 84 01
B5_04c6:	.db $0e $00 $00
B5_04c9:		;removed
	.db $f0 $10

B5_04cb:	.db $02
B5_04cc:		sty $01			; 84 01
B5_04ce:	.db $0f
B5_04cf:		.db $00				; 00
B5_04d0:		ora ($10, x)	; 01 10
B5_04d2:		bpl B5_04d7 ; 10 03

B5_04d4:		dey				; 88 
B5_04d5:		ora ($10, x)	; 01 10
B5_04d7:		.db $00				; 00
B5_04d8:		ora ($30, x)	; 01 30
B5_04da:		bpl B5_04de ; 10 02

B5_04dc:		sty $01			; 84 01
B5_04de:		ora ($00), y	; 11 00
B5_04e0:		ora ($50, x)	; 01 50
B5_04e2:		bpl B5_04e7 ; 10 03

B5_04e4:		dey				; 88 
B5_04e5:		ora ($12, x)	; 01 12
B5_04e7:		.db $00				; 00
B5_04e8:		ora ($70, x)	; 01 70
B5_04ea:		bpl B5_04ee ; 10 02

B5_04ec:		sty $01			; 84 01
B5_04ee:	.db $13
B5_04ef:		.db $00				; 00
B5_04f0:		ora ($b0, x)	; 01 b0
B5_04f2:		bpl B5_04f6 ; 10 02

B5_04f4:		sty $01			; 84 01
B5_04f6:	.db $14
B5_04f7:		.db $00				; 00
B5_04f8:		ora ($d0, x)	; 01 d0
B5_04fa:		bpl B5_04ff ; 10 03

B5_04fc:		dey				; 88 
B5_04fd:		ora ($15, x)	; 01 15
B5_04ff:		.db $00				; 00
B5_0500:	.db $02
B5_0501:		bpl B5_0513 ; 10 10

B5_0503:	.db $02
B5_0504:		ldy $01			; a4 01
B5_0506:		asl $00, x		; 16 00
B5_0508:	.db $02
B5_0509:		bvc B5_051b ; 50 10

B5_050b:	.db $03
B5_050c:		tay				; a8 
B5_050d:		ora ($17, x)	; 01 17
B5_050f:		.db $00				; 00
B5_0510:	.db $02
B5_0511:		bvs B5_0523 ; 70 10

B5_0513:	.db $02
B5_0514:		ldy $01			; a4 01
B5_0516:		clc				; 18 
B5_0517:		.db $00				; 00
B5_0518:	.db $02
B5_0519:		bcc B5_052b ; 90 10

B5_051b:	.db $03
B5_051c:		tay				; a8 
B5_051d:		ora ($19, x)	; 01 19
B5_051f:		.db $00				; 00
B5_0520:	.db $ff
B5_0521:		.db $00				; 00
B5_0522:	.db $80
B5_0523:		php				; 08 
B5_0524:		ora #$00		; 09 00
B5_0526:		asl $00			; 06 00
B5_0528:		.db $00				; 00
B5_0529:	.db $ff
B5_052a:		.db $00				; 00
B5_052b:		clc				; 18 
B5_052c:		.db $00				; 00
B5_052d:		;removed
	.db $10 $b0

B5_052f:		ora ($01, x)	; 01 01
B5_0531:		.db $00				; 00
B5_0532:		.db $00				; 00
B5_0533:	.db $80
B5_0534:		php				; 08 
B5_0535:		ora #$00		; 09 00
B5_0537:		ora $00			; 05 00
B5_0539:		.db $00				; 00
B5_053a:	.db $ff
B5_053b:		ora ($80, x)	; 01 80
B5_053d:		cpy #$0d		; c0 0d
B5_053f:	.db $80
B5_0540:		.db $00				; 00
B5_0541:		.db $00				; 00
B5_0542:	.db $04
B5_0543:	.db $ff
B5_0544:		.db $00				; 00
B5_0545:		clc				; 18 
B5_0546:		.db $00				; 00
B5_0547:		;removed
	.db $10 $b0

B5_0549:		.db $00				; 00
B5_054a:		ora ($00, x)	; 01 00
B5_054c:	.db $ff
B5_054d:		.db $00				; 00
B5_054e:		clc				; 18 
B5_054f:		.db $00				; 00
B5_0550:		;removed
	.db $10 $b0

B5_0552:	.db $04
B5_0553:		ora ($00, x)	; 01 00
B5_0555:		.db $00				; 00
B5_0556:		rti				; 40 


B5_0557:		.db $00				; 00
B5_0558:	.db $0b
B5_0559:		tay				; a8 
B5_055a:		php				; 08 
B5_055b:	.db $02
B5_055c:		.db $00				; 00
B5_055d:		.db $00				; 00
B5_055e:		ldy #$60		; a0 60
B5_0560:	.db $0c
B5_0561:		sei				; 78 
B5_0562:		clc				; 18 
B5_0563:	.db $02
B5_0564:		.db $00				; 00
B5_0565:		ora ($e0, x)	; 01 e0
B5_0567:		jsr $a00b		; 20 0b a0
B5_056a:		bpl B5_056e ; 10 02

B5_056c:		.db $00				; 00
B5_056d:	.db $ff
B5_056e:		.db $00				; 00
B5_056f:		plp				; 28 
B5_0570:		.db $00				; 00
B5_0571:		bpl B5_05db ; 10 68

B5_0573:		.db $00				; 00
B5_0574:		.db $00				; 00
B5_0575:		.db $00				; 00
B5_0576:	.db $ff
B5_0577:	.db $02
B5_0578:		.db $00				; 00
B5_0579:		beq B5_0588 ; f0 0d

B5_057b:		.db $00				; 00
B5_057c:		.db $00				; 00
B5_057d:		.db $00				; 00
B5_057e:		asl $03			; 06 03
B5_0580:		inx				; e8 
B5_0581:		.db $00				; 00
B5_0582:		bpl B5_0524 ; 10 a0

B5_0584:	.db $03
B5_0585:		ora ($00, x)	; 01 00
B5_0587:	.db $ff
B5_0588:		.db $00				; 00
B5_0589:		tya				; 98 
B5_058a:		.db $00				; 00
B5_058b:		bpl B5_05ed ; 10 60

B5_058d:		.db $00				; 00
B5_058e:		ora ($00, x)	; 01 00
B5_0590:	.db $ff
B5_0591:		ora ($18, x)	; 01 18
B5_0593:		.db $00				; 00
B5_0594:		;removed
	.db $10 $a8

B5_0596:		ora ($00, x)	; 01 00
B5_0598:		.db $00				; 00
B5_0599:	.db $ff
B5_059a:		ora ($e8, x)	; 01 e8
B5_059c:		.db $00				; 00
B5_059d:		bpl B5_0617 ; 10 78

B5_059f:		ora ($00, x)	; 01 00
B5_05a1:		.db $00				; 00
B5_05a2:	.db $ff
B5_05a3:		ora ($e8, x)	; 01 e8
B5_05a5:		.db $00				; 00
B5_05a6:		;removed
	.db $10 $c0

B5_05a8:		.db $00				; 00
B5_05a9:		ora ($00, x)	; 01 00
B5_05ab:	.db $ff
B5_05ac:		.db $00				; 00
B5_05ad:		clc				; 18 
B5_05ae:		.db $00				; 00
B5_05af:		bpl B5_0571 ; 10 c0

B5_05b1:	.db $03
B5_05b2:		ora ($00, x)	; 01 00
B5_05b4:		ora ($c8, x)	; 01 c8
B5_05b6:		bpl B5_05b8 ; 10 00

B5_05b8:		stx $00, y		; 96 00
B5_05ba:		.db $00				; 00
B5_05bb:		.db $00				; 00
B5_05bc:	.db $ff
B5_05bd:	.db $04
B5_05be:		cli				; 58 
B5_05bf:		.db $00				; 00
B5_05c0:		;removed
	.db $10 $b8

B5_05c2:		ora ($00, x)	; 01 00
B5_05c4:		.db $00				; 00
B5_05c5:	.db $ff
B5_05c6:		.db $00				; 00
B5_05c7:		inx				; e8 
B5_05c8:		.db $00				; 00
B5_05c9:		bpl B5_057b ; 10 b0

B5_05cb:		.db $00				; 00
B5_05cc:		ora ($01, x)	; 01 01
B5_05ce:	.db $ff
B5_05cf:	.db $02
B5_05d0:		and $1100		; 2d 00 11
B5_05d3:		inx				; e8 
B5_05d4:	.db $04
B5_05d5:	.db $04
B5_05d6:		.db $00				; 00
B5_05d7:	.db $ff
B5_05d8:		ora ($28, x)	; 01 28
B5_05da:		.db $00				; 00
B5_05db:		bpl B5_058d ; 10 b0

B5_05dd:	.db $03
B5_05de:		ora ($00, x)	; 01 00
B5_05e0:		ora ($b0, x)	; 01 b0
B5_05e2:		bpl B5_05e6 ; 10 02

B5_05e4:		ldy $01			; a4 01
B5_05e6:	.db $1c
B5_05e7:		.db $00				; 00
B5_05e8:		ora ($d0, x)	; 01 d0
B5_05ea:		bpl B5_05ef ; 10 03

B5_05ec:		tay				; a8 
B5_05ed:		ora ($1d, x)	; 01 1d
B5_05ef:		.db $00				; 00
B5_05f0:		ora ($f0, x)	; 01 f0
B5_05f2:		bpl B5_05f6 ; 10 02

B5_05f4:		ldy $01			; a4 01
B5_05f6:		asl $0200, x	; 1e 00 02
B5_05f9:		bpl B5_060b ; 10 10

B5_05fb:	.db $03
B5_05fc:		tay				; a8 
B5_05fd:		ora ($1f, x)	; 01 1f
B5_05ff:		.db $00				; 00
B5_0600:	.db $02
B5_0601:		bmi B5_0613 ; 30 10

B5_0603:	.db $03
B5_0604:		tay				; a8 
B5_0605:		ora ($20, x)	; 01 20
B5_0607:		.db $00				; 00
B5_0608:	.db $02
B5_0609:		bvc B5_061b ; 50 10

B5_060b:	.db $03
B5_060c:		tay				; a8 
B5_060d:		ora ($21, x)	; 01 21
B5_060f:		.db $00				; 00
B5_0610:	.db $02
B5_0611:		bvs B5_0623 ; 70 10

B5_0613:	.db $03
B5_0614:		tay				; a8 
B5_0615:		ora ($22, x)	; 01 22
B5_0617:		.db $00				; 00
B5_0618:	.db $02
B5_0619:		bcc B5_062b ; 90 10

B5_061b:	.db $02
B5_061c:		ldy $01			; a4 01
B5_061e:	.db $23
B5_061f:		.db $00				; 00
B5_0620:	.db $ff
B5_0621:		.db $00				; 00
B5_0622:		plp				; 28 
B5_0623:		jsr $6001		; 20 01 60
B5_0626:	.db $03
B5_0627:		.db $00				; 00
B5_0628:		.db $00				; 00
B5_0629:		ora ($28, x)	; 01 28
B5_062b:		jsr $6001		; 20 01 60
B5_062e:	.db $04
B5_062f:		.db $00				; 00
B5_0630:		.db $00				; 00
B5_0631:		ora ($98, x)	; 01 98
B5_0633:		jsr $7001		; 20 01 70
B5_0636:		ora $00			; 05 00
B5_0638:		.db $00				; 00
B5_0639:	.db $02
B5_063a:		tya				; 98 
B5_063b:		jsr $7001		; 20 01 70
B5_063e:		asl $00			; 06 00
B5_0640:		.db $00				; 00
B5_0641:	.db $ff
B5_0642:		ora ($e8, x)	; 01 e8
B5_0644:		.db $00				; 00
B5_0645:		;removed
	.db $10 $b0

B5_0647:		.db $00				; 00
B5_0648:		ora ($00, x)	; 01 00
B5_064a:	.db $ff
B5_064b:		.db $00				; 00
B5_064c:		;removed
	.db $90 $40

B5_064e:		ora $30			; 05 30
B5_0650:	.db $02
B5_0651:	.db $ff
B5_0652:		.db $00				; 00
B5_0653:		ora ($80, x)	; 01 80
B5_0655:		rti				; 40 


B5_0656:		ora $30			; 05 30
B5_0658:	.db $03
B5_0659:	.db $ff
B5_065a:		.db $00				; 00
B5_065b:	.db $02
B5_065c:		bvs B5_069e ; 70 40

B5_065e:		ora $30			; 05 30
B5_0660:	.db $04
B5_0661:		.db $00				; 00
B5_0662:		.db $00				; 00
B5_0663:	.db $ff
B5_0664:		.db $00				; 00
B5_0665:		eor $0a40, x	; 5d 40 0a
B5_0668:	.db $80
B5_0669:		.db $00				; 00
B5_066a:		ora #$00		; 09 00
B5_066c:		.db $00				; 00
B5_066d:		adc $0a40, x	; 7d 40 0a
B5_0670:		rti				; 40 


B5_0671:		.db $00				; 00
B5_0672:		asl a			; 0a
B5_0673:		.db $00				; 00
B5_0674:	.db $02
B5_0675:		sta $0a40, x	; 9d 40 0a
B5_0678:	.db $80
B5_0679:		.db $00				; 00
B5_067a:	.db $0b
B5_067b:		.db $00				; 00
B5_067c:	.db $ff
B5_067d:		.db $00				; 00
B5_067e:	.db $d4
B5_067f:		pha				; 48 
B5_0680:	.db $0c
B5_0681:		iny				; c8 
B5_0682:		plp				; 28 
B5_0683:	.db $02
B5_0684:		.db $00				; 00
B5_0685:		ora ($30, x)	; 01 30
B5_0687:		beq B5_0695 ; f0 0c

B5_0689:		sei				; 78 
B5_068a:		rti				; 40 


B5_068b:	.db $02
B5_068c:		.db $00				; 00
B5_068d:		ora ($74, x)	; 01 74
B5_068f:		beq B5_069d ; f0 0c

B5_0691:		cpy #$28		; c0 28
B5_0693:	.db $82
B5_0694:		.db $00				; 00
B5_0695:	.db $02
B5_0696:		dey				; 88 
B5_0697:		.db $00				; 00
B5_0698:		;removed
	.db $10 $98

B5_069a:		ora ($00, x)	; 01 00
B5_069c:		.db $00				; 00
B5_069d:	.db $ff
B5_069e:		.db $00				; 00
B5_069f:	.db $7f
B5_06a0:		rts				; 60 


B5_06a1:	.db $0c
B5_06a2:		tay				; a8 
B5_06a3:		ora ($82), y	; 11 82
B5_06a5:		.db $00				; 00
B5_06a6:		ora ($78, x)	; 01 78
B5_06a8:		rts				; 60 


B5_06a9:	.db $0c
B5_06aa:		tay				; a8 
B5_06ab:		bmi B5_06af ; 30 02

B5_06ad:		.db $00				; 00
B5_06ae:	.db $02
B5_06af:		clc				; 18 
B5_06b0:		rts				; 60 


B5_06b1:	.db $0c
B5_06b2:		tay				; a8 
B5_06b3:	.db $20 $02 $00
B5_06b6:	.db $03
B5_06b7:		pha				; 48 
B5_06b8:		.db $00				; 00
B5_06b9:		;removed
	.db $10 $38

B5_06bb:		.db $00				; 00
B5_06bc:		.db $00				; 00
B5_06bd:		.db $00				; 00
B5_06be:	.db $ff
B5_06bf:		.db $00				; 00
B5_06c0:		bcc B5_06d2 ; 90 10

B5_06c2:	.db $07
B5_06c3:		.db $00				; 00
B5_06c4:		ora ($08, x)	; 01 08
B5_06c6:		.db $00				; 00
B5_06c7:		.db $00				; 00
B5_06c8:		;removed
	.db $d0 $10

B5_06ca:		asl $00			; 06 00
B5_06cc:		ora ($09, x)	; 01 09
B5_06ce:		.db $00				; 00
B5_06cf:		.db $00				; 00
B5_06d0:		beq B5_06e2 ; f0 10

B5_06d2:	.db $07
B5_06d3:		.db $00				; 00
B5_06d4:		ora ($0a, x)	; 01 0a
B5_06d6:		.db $00				; 00
B5_06d7:		ora ($70, x)	; 01 70
B5_06d9:		bpl B5_06e2 ; 10 07

B5_06db:		.db $00				; 00
B5_06dc:		ora ($0b, x)	; 01 0b
B5_06de:		.db $00				; 00
B5_06df:	.db $ff
B5_06e0:		.db $00				; 00
B5_06e1:	.db $80
B5_06e2:		php				; 08 
B5_06e3:		php				; 08 
B5_06e4:		bmi B5_06ee ; 30 08

B5_06e6:		.db $00				; 00
B5_06e7:		.db $00				; 00
B5_06e8:	.db $ff
B5_06e9:		rts				; 60 


B5_06ea:		lda $b3			; a5 b3
B5_06ec:		bne B5_071e ; d0 30

B5_06ee:		lda #$00		; a9 00
B5_06f0:		sta $11			; 85 11
B5_06f2:		lda #$79		; a9 79
B5_06f4:		sta $01			; 85 01
B5_06f6:		jsr $aa76		; 20 76 aa
B5_06f9:		jsr $feb9		; 20 b9 fe
B5_06fc:		bne B5_06e9 ; d0 eb

B5_06fe:		lda #$14		; a9 14
B5_0700:		sta $07ed		; 8d ed 07
B5_0703:		lda $32			; a5 32
B5_0705:		cmp #$05		; c9 05
B5_0707:		beq B5_070e ; f0 05

B5_0709:		lda #$30		; a9 30
B5_070b:		sta $07ed		; 8d ed 07
B5_070e:		jsr $aa9d		; 20 9d aa
B5_0711:		lda #$01		; a9 01
B5_0713:		sta $0606, x	; 9d 06 06
B5_0716:		lda #$c0		; a9 c0
B5_0718:		sta $061d, x	; 9d 1d 06
B5_071b:		jmp $aace		; 4c ce aa


B5_071e:		rts				; 60 


B5_071f:		ldy $65			; a4 65
B5_0721:		beq B5_072c ; f0 09

B5_0723:		dec $07a2		; ce a2 07
B5_0726:		ldx $07a2		; ae a2 07
B5_0729:		jmp $a732		; 4c 32 a7


B5_072c:		inc $07a1		; ee a1 07
B5_072f:		ldx $07a1		; ae a1 07
B5_0732:		lda #$00		; a9 00
B5_0734:		sta $0782, x	; 9d 82 07
B5_0737:		rts				; 60 


B5_0738:		lda #$00		; a9 00
B5_073a:		sta $11			; 85 11
B5_073c:		lda #$7a		; a9 7a
B5_073e:		sta $01			; 85 01
B5_0740:		jsr $aa76		; 20 76 aa
B5_0743:		lda $05			; a5 05
B5_0745:		sta $08			; 85 08
B5_0747:		lda #$00		; a9 00
B5_0749:		sta $09			; 85 09
B5_074b:		jsr $feb9		; 20 b9 fe
B5_074e:		bne B5_071f ; d0 cf

B5_0750:		jsr $aa9d		; 20 9d aa
B5_0753:		jsr $aade		; 20 de aa
B5_0756:		lda $09			; a5 09
B5_0758:		bne B5_075f ; d0 05

B5_075a:		txa				; 8a 
B5_075b:		sta $0a			; 85 0a
B5_075d:		lda $09			; a5 09
B5_075f:		sta $0606, x	; 9d 06 06
B5_0762:		lda $08			; a5 08
B5_0764:		sta $061d, x	; 9d 1d 06
B5_0767:		lda $0a			; a5 0a
B5_0769:		sta $0633, x	; 9d 33 06
B5_076c:		ldy $08			; a4 08
B5_076e:		lda $a780, y	; b9 80 a7
B5_0771:		sta $0565, x	; 9d 65 05
B5_0774:		inc $09			; e6 09
B5_0776:		lda $09			; a5 09
B5_0778:		cmp #$06		; c9 06
B5_077a:		bne B5_074b ; d0 cf

B5_077c:		jmp $aace		; 4c ce aa


B5_077f:		rts				; 60 


B5_0780:		rts				; 60 


B5_0781:		jsr $6060		; 20 60 60
B5_0784:		jsr $2020		; 20 20 20
B5_0787:		lda #$82		; a9 82
B5_0789:		bne B5_078d ; d0 02

B5_078b:		lda #$7d		; a9 7d
B5_078d:		sta $01			; 85 01
B5_078f:		lda #$00		; a9 00
B5_0791:		sta $11			; 85 11
B5_0793:		jsr $aa76		; 20 76 aa
B5_0796:		lda $05			; a5 05
B5_0798:		sta $08			; 85 08
B5_079a:		lda $06			; a5 06
B5_079c:		sta $09			; 85 09
B5_079e:		jsr $feb9		; 20 b9 fe
B5_07a1:		bne B5_07df ; d0 3c

B5_07a3:		jsr $aa9d		; 20 9d aa
B5_07a6:		lda $09			; a5 09
B5_07a8:		asl a			; 0a
B5_07a9:		tay				; a8 
B5_07aa:		lda $a7e0, y	; b9 e0 a7
B5_07ad:		sta $0b			; 85 0b
B5_07af:		lda $a7e1, y	; b9 e1 a7
B5_07b2:		sta $0a			; 85 0a
B5_07b4:		lda $a828, y	; b9 28 a8
B5_07b7:		sta $0d			; 85 0d
B5_07b9:		lda $a829, y	; b9 29 a8
B5_07bc:		sta $0c			; 85 0c
B5_07be:		lda $0b			; a5 0b
B5_07c0:		sec				; 38 
B5_07c1:		sbc $56			; e5 56
B5_07c3:		sta $0438, x	; 9d 38 04
B5_07c6:		lda $0a			; a5 0a
B5_07c8:		sbc $57			; e5 57
B5_07ca:		beq B5_07d1 ; f0 05

B5_07cc:		lda #$01		; a9 01
B5_07ce:		sta $0470, x	; 9d 70 04
B5_07d1:		lda $0d			; a5 0d
B5_07d3:		sta $041c, x	; 9d 1c 04
B5_07d6:		inc $09			; e6 09
B5_07d8:		dec $08			; c6 08
B5_07da:		bne B5_079e ; d0 c2

B5_07dc:		jmp $aace		; 4c ce aa


B5_07df:		rts				; 60 


B5_07e0:		bcs B5_07e2 ; b0 00

B5_07e2:		;removed
	.db $50 $01

B5_07e4:		;removed
	.db $90 $01

B5_07e6:		;removed
	.db $d0 $01

B5_07e8:		bpl B5_07ec ; 10 02

B5_07ea:		bpl B5_07ee ; 10 02

B5_07ec:		bmi B5_07f0 ; 30 02

B5_07ee:		bvs B5_07f0 ; 70 00

B5_07f0:		;removed
	.db $30 $01

B5_07f2:		bvc B5_07f4 ; 50 00

B5_07f4:		bcs B5_07f6 ; b0 00

B5_07f6:		bne B5_07f8 ; d0 00

B5_07f8:		;removed
	.db $10 $01

B5_07fa:		bcs B5_07fc ; b0 00

B5_07fc:		bne B5_07fe ; d0 00

B5_07fe:		beq B5_0800 ; f0 00

B5_0800:		;removed
	.db $10 $01

B5_0802:		;removed
	.db $30 $01

B5_0804:		;removed
	.db $50 $01

B5_0806:		;removed
	.db $70 $01

B5_0808:		;removed
	.db $b0 $01

B5_080a:		;removed
	.db $d0 $01

B5_080c:		bpl B5_0810 ; 10 02

B5_080e:		bvc B5_0812 ; 50 02

B5_0810:		bvs B5_0814 ; 70 02

B5_0812:		bcc B5_0816 ; 90 02

B5_0814:		;removed
	.db $70 $01

B5_0816:		;removed
	.db $90 $01

B5_0818:		;removed
	.db $b0 $01

B5_081a:		;removed
	.db $d0 $01

B5_081c:		;removed
	.db $f0 $01

B5_081e:		bpl B5_0822 ; 10 02

B5_0820:		bmi B5_0824 ; 30 02

B5_0822:		bvc B5_0826 ; 50 02

B5_0824:		bvs B5_0828 ; 70 02

B5_0826:		bcc B5_082a ; 90 02

B5_0828:	.db $64
B5_0829:		.db $00				; 00
B5_082a:		ldy $00, x		; b4 00
B5_082c:	.db $64
B5_082d:		.db $00				; 00
B5_082e:	.db $64
B5_082f:		.db $00				; 00
B5_0830:	.db $64
B5_0831:		.db $00				; 00
B5_0832:		ldy $00, x		; b4 00
B5_0834:	.db $64
B5_0835:		.db $00				; 00
B5_0836:		tay				; a8 
B5_0837:		.db $00				; 00
B5_0838:		dey				; 88 
B5_0839:		.db $00				; 00
B5_083a:		dey				; 88 
B5_083b:		.db $00				; 00
B5_083c:		dey				; 88 
B5_083d:		.db $00				; 00
B5_083e:		iny				; c8 
B5_083f:		.db $00				; 00
B5_0840:		dey				; 88 
B5_0841:		.db $00				; 00
B5_0842:		dey				; 88 
B5_0843:		.db $00				; 00
B5_0844:		sty $00			; 84 00
B5_0846:		sty $00			; 84 00
B5_0848:		dey				; 88 
B5_0849:		.db $00				; 00
B5_084a:		sty $00			; 84 00
B5_084c:		dey				; 88 
B5_084d:		.db $00				; 00
B5_084e:		sty $00			; 84 00
B5_0850:		sty $00			; 84 00
B5_0852:		dey				; 88 
B5_0853:		.db $00				; 00
B5_0854:		ldy $00			; a4 00
B5_0856:		tay				; a8 
B5_0857:		.db $00				; 00
B5_0858:		ldy $00			; a4 00
B5_085a:		tay				; a8 
B5_085b:		.db $00				; 00
B5_085c:		tay				; a8 
B5_085d:		.db $00				; 00
B5_085e:		tay				; a8 
B5_085f:		.db $00				; 00
B5_0860:		ldy $00			; a4 00
B5_0862:		tay				; a8 
B5_0863:		.db $00				; 00
B5_0864:		ldy $00			; a4 00
B5_0866:		tay				; a8 
B5_0867:		.db $00				; 00
B5_0868:		tay				; a8 
B5_0869:		.db $00				; 00
B5_086a:		tay				; a8 
B5_086b:		.db $00				; 00
B5_086c:		tay				; a8 
B5_086d:		.db $00				; 00
B5_086e:		ldy $00			; a4 00
B5_0870:		lda #$01		; a9 01
B5_0872:		bne B5_0876 ; d0 02

B5_0874:		lda #$00		; a9 00
B5_0876:		sta $11			; 85 11
B5_0878:		lda #$80		; a9 80
B5_087a:		sta $01			; 85 01
B5_087c:		jsr $aa76		; 20 76 aa
B5_087f:		lda $05			; a5 05
B5_0881:		sta $0b			; 85 0b
B5_0883:		lda $06			; a5 06
B5_0885:		sta $0c			; 85 0c
B5_0887:		ldy $0b			; a4 0b
B5_0889:		lda $a948, y	; b9 48 a9
B5_088c:		sta $0d			; 85 0d
B5_088e:		lda $0b			; a5 0b
B5_0890:		asl a			; 0a
B5_0891:		tay				; a8 
B5_0892:		lda $a94a, y	; b9 4a a9
B5_0895:		sta $0e			; 85 0e
B5_0897:		lda $a94b, y	; b9 4b a9
B5_089a:		sta $0f			; 85 0f
B5_089c:		lda #$00		; a9 00
B5_089e:		sta $07ec		; 8d ec 07
B5_08a1:		sta $07ed		; 8d ed 07
B5_08a4:		sta $07ee		; 8d ee 07
B5_08a7:		lda $0d			; a5 0d
B5_08a9:		sta $09			; 85 09
B5_08ab:		lda $0c			; a5 0c
B5_08ad:		cmp #$05		; c9 05
B5_08af:		bcc B5_08b8 ; 90 07

B5_08b1:		jsr $aacf		; 20 cf aa
B5_08b4:		bne B5_090c ; d0 56

B5_08b6:		beq B5_08bd ; f0 05

B5_08b8:		jsr $feb9		; 20 b9 fe
B5_08bb:		bne B5_0910 ; d0 53

B5_08bd:		jsr $aaa2		; 20 a2 aa
B5_08c0:		jsr $aade		; 20 de aa
B5_08c3:		ldy $09			; a4 09
B5_08c5:		cpy $0d			; c4 0d
B5_08c7:		bne B5_08ec ; d0 23

B5_08c9:		stx $12			; 86 12
B5_08cb:		lda #$85		; a9 85
B5_08cd:		sta $054e, x	; 9d 4e 05
B5_08d0:		lda #$00		; a9 00
B5_08d2:		sta $05ef, x	; 9d ef 05
B5_08d5:		lda $0b			; a5 0b
B5_08d7:		sta $0606, x	; 9d 06 06
B5_08da:		lda $11			; a5 11
B5_08dc:		sta $061d, x	; 9d 1d 06
B5_08df:		lda $0c			; a5 0c
B5_08e1:		sta $0633, x	; 9d 33 06
B5_08e4:		lda $6c			; a5 6c
B5_08e6:		sta $078f, x	; 9d 8f 07
B5_08e9:		jmp $a905		; 4c 05 a9


B5_08ec:		dey				; 88 
B5_08ed:		lda ($0e), y	; b1 0e
B5_08ef:		sta $0565, x	; 9d 65 05
B5_08f2:		lda $0c			; a5 0c
B5_08f4:		sta $0606, x	; 9d 06 06
B5_08f7:		tya				; 98 
B5_08f8:		sta $0645, x	; 9d 45 06
B5_08fb:		lda #$00		; a9 00
B5_08fd:		sta $0633, x	; 9d 33 06
B5_0900:		lda $12			; a5 12
B5_0902:		sta $061d, x	; 9d 1d 06
B5_0905:		dec $09			; c6 09
B5_0907:		bne B5_08ab ; d0 a2

B5_0909:		jmp $aace		; 4c ce aa


B5_090c:		ldx #$03		; a2 03
B5_090e:		bne B5_0912 ; d0 02

B5_0910:		ldx #$01		; a2 01
B5_0912:		lda $054e, x	; bd 4e 05
B5_0915:		cmp #$80		; c9 80
B5_0917:		beq B5_0926 ; f0 0d

B5_0919:		cmp #$85		; c9 85
B5_091b:		bne B5_0938 ; d0 1b

B5_091d:		lda $0633, x	; bd 33 06
B5_0920:		cmp $0c			; c5 0c
B5_0922:		bne B5_0938 ; d0 14

B5_0924:		beq B5_092d ; f0 07

B5_0926:		lda $0606, x	; bd 06 06
B5_0929:		cmp $0c			; c5 0c
B5_092b:		bne B5_0938 ; d0 0b

B5_092d:		lda #$00		; a9 00
B5_092f:		sta $054e, x	; 9d 4e 05
B5_0932:		sta $0400, x	; 9d 00 04
B5_0935:		sta $048c, x	; 9d 8c 04
B5_0938:		inx				; e8 
B5_0939:		cpx #$13		; e0 13
B5_093b:		bne B5_0912 ; d0 d5

B5_093d:		ldx $6c			; a6 6c
B5_093f:		lda #$00		; a9 00
B5_0941:		sta $0782, x	; 9d 82 07
B5_0944:		stx $07a1		; 8e a1 07
B5_0947:		rts				; 60 


B5_0948:	.db $07
B5_0949:		ora #$4e		; 09 4e
B5_094b:		lda #$54		; a9 54
B5_094d:		lda #$00		; a9 00
B5_094f:	.db $2b
B5_0950:		lsr $80, x		; 56 80
B5_0952:	.db $ab
B5_0953:		dec $00, x		; d6 00
B5_0955:		ora $2a, x		; 15 2a
B5_0957:		rti				; 40 


B5_0958:	.db $eb
B5_0959:		dec $c0, x		; d6 c0
B5_095b:		tax				; aa 
B5_095c:		lda #$00		; a9 00
B5_095e:		sta $11			; 85 11
B5_0960:		lda #$7f		; a9 7f
B5_0962:		sta $01			; 85 01
B5_0964:		jsr $aa76		; 20 76 aa
B5_0967:		lda $05			; a5 05
B5_0969:		sta $0c			; 85 0c
B5_096b:		tay				; a8 
B5_096c:		lda #$00		; a9 00
B5_096e:		sta $07ec, y	; 99 ec 07
B5_0971:		lda $06			; a5 06
B5_0973:		sta $0a			; 85 0a
B5_0975:		lda #$80		; a9 80
B5_0977:		sta $0b			; 85 0b
B5_0979:		ldy $0c			; a4 0c
B5_097b:		lda $a9c1, y	; b9 c1 a9
B5_097e:		sta $0d			; 85 0d
B5_0980:		lda #$00		; a9 00
B5_0982:		sta $09			; 85 09
B5_0984:		lda $32			; a5 32
B5_0986:		cmp #$0b		; c9 0b
B5_0988:		bne B5_0991 ; d0 07

B5_098a:		jsr $aacf		; 20 cf aa
B5_098d:		bne B5_09c0 ; d0 31

B5_098f:		beq B5_0996 ; f0 05

B5_0991:		jsr $feb9		; 20 b9 fe
B5_0994:		bne B5_09c0 ; d0 2a

B5_0996:		jsr $aa9d		; 20 9d aa
B5_0999:		jsr $aade		; 20 de aa
B5_099c:		lda $09			; a5 09
B5_099e:		sta $0606, x	; 9d 06 06
B5_09a1:		lda $0a			; a5 0a
B5_09a3:		sta $061d, x	; 9d 1d 06
B5_09a6:		lda $0b			; a5 0b
B5_09a8:		sta $0565, x	; 9d 65 05
B5_09ab:		lda $0c			; a5 0c
B5_09ad:		sta $0633, x	; 9d 33 06
B5_09b0:		lda #$00		; a9 00
B5_09b2:		sta $0645, x	; 9d 45 06
B5_09b5:		inc $09			; e6 09
B5_09b7:		lda $09			; a5 09
B5_09b9:		cmp $0d			; c5 0d
B5_09bb:		bne B5_0984 ; d0 c7

B5_09bd:		jmp $aace		; 4c ce aa


B5_09c0:		rts				; 60 


B5_09c1:		ora $05			; 05 05
B5_09c3:		php				; 08 
B5_09c4:		ora $08			; 05 08
B5_09c6:		lda #$7e		; a9 7e
B5_09c8:		bne B5_09cc ; d0 02

B5_09ca:		lda #$84		; a9 84
B5_09cc:		sta $01			; 85 01
B5_09ce:		lda #$00		; a9 00
B5_09d0:		sta $11			; 85 11
B5_09d2:		jsr $aa76		; 20 76 aa
B5_09d5:		lda $06			; a5 06
B5_09d7:		sta $0b			; 85 0b
B5_09d9:		lda $05			; a5 05
B5_09db:		sta $0a			; 85 0a
B5_09dd:		jsr $feb9		; 20 b9 fe
B5_09e0:		bne B5_09c0 ; d0 de

B5_09e2:		ldy $0b			; a4 0b
B5_09e4:		lda $aa2a, y	; b9 2a aa
B5_09e7:		sta $0c			; 85 0c
B5_09e9:		lda #$00		; a9 00
B5_09eb:		sta $09			; 85 09
B5_09ed:		jsr $feb9		; 20 b9 fe
B5_09f0:		bne B5_09c0 ; d0 ce

B5_09f2:		jsr $aa9d		; 20 9d aa
B5_09f5:		lda $0c			; a5 0c
B5_09f7:		sta $041c, x	; 9d 1c 04
B5_09fa:		lda $09			; a5 09
B5_09fc:		asl a			; 0a
B5_09fd:		asl a			; 0a
B5_09fe:		asl a			; 0a
B5_09ff:		asl a			; 0a
B5_0a00:		asl a			; 0a
B5_0a01:		clc				; 18 
B5_0a02:		adc $0438, x	; 7d 38 04
B5_0a05:		sta $0438, x	; 9d 38 04
B5_0a08:		bcc B5_0a0f ; 90 05

B5_0a0a:		lda #$01		; a9 01
B5_0a0c:		sta $0470, x	; 9d 70 04
B5_0a0f:		lda #$04		; a9 04
B5_0a11:		sta $05d8, x	; 9d d8 05
B5_0a14:		lda $0b			; a5 0b
B5_0a16:		sta $0606, x	; 9d 06 06
B5_0a19:		lda #$00		; a9 00
B5_0a1b:		sta $061d, x	; 9d 1d 06
B5_0a1e:		inc $09			; e6 09
B5_0a20:		lda $09			; a5 09
B5_0a22:		cmp $0a			; c5 0a
B5_0a24:		bne B5_09ed ; d0 c7

B5_0a26:		jmp $aace		; 4c ce aa


B5_0a29:		rts				; 60 


B5_0a2a:	.db $80
B5_0a2b:		rti				; 40 


B5_0a2c:		;removed
	.db $50 $90

B5_0a2e:		rts				; 60 


B5_0a2f:		rts				; 60 


B5_0a30:		rts				; 60 


B5_0a31:		rti				; 40 


B5_0a32:		;removed
	.db $70 $40

B5_0a34:		;removed
	.db $70 $70

B5_0a36:		lda #$7c		; a9 7c
B5_0a38:		bne B5_0a50 ; d0 16

B5_0a3a:		lda $32			; a5 32
B5_0a3c:		cmp #$0a		; c9 0a
B5_0a3e:		bne B5_0a4e ; d0 0e

B5_0a40:		lda $33			; a5 33
B5_0a42:		cmp #$04		; c9 04
B5_0a44:		bne B5_0a4e ; d0 08

B5_0a46:		lda $054f		; ad 4f 05
B5_0a49:		cmp #$7b		; c9 7b
B5_0a4b:		bne B5_0a4e ; d0 01

B5_0a4d:		rts				; 60 


B5_0a4e:		lda #$7b		; a9 7b
B5_0a50:		sta $01			; 85 01
B5_0a52:		lda #$00		; a9 00
B5_0a54:		sta $11			; 85 11
B5_0a56:		jsr $aa76		; 20 76 aa
B5_0a59:		lda $05			; a5 05
B5_0a5b:		sta $08			; 85 08
B5_0a5d:		jsr $feb9		; 20 b9 fe
B5_0a60:		bne B5_0a75 ; d0 13

B5_0a62:		jsr $aa9d		; 20 9d aa
B5_0a65:		lda $08			; a5 08
B5_0a67:		sta $061d, x	; 9d 1d 06
B5_0a6a:		lda #$00		; a9 00
B5_0a6c:		sta $0606, x	; 9d 06 06
B5_0a6f:		sta $0565, x	; 9d 65 05
B5_0a72:		jmp $aace		; 4c ce aa


B5_0a75:		rts				; 60 


B5_0a76:		lda $6c			; a5 6c
B5_0a78:		asl a			; 0a
B5_0a79:		asl a			; 0a
B5_0a7a:		asl a			; 0a
B5_0a7b:		tay				; a8 
B5_0a7c:		iny				; c8 
B5_0a7d:		iny				; c8 
B5_0a7e:		jsr $aa99		; 20 99 aa
B5_0a81:		sta $00			; 85 00
B5_0a83:		iny				; c8 
B5_0a84:		jsr $aa99		; 20 99 aa
B5_0a87:		sta $04			; 85 04
B5_0a89:		jsr $aa99		; 20 99 aa
B5_0a8c:		sta $05			; 85 05
B5_0a8e:		jsr $aa99		; 20 99 aa
B5_0a91:		sta $06			; 85 06
B5_0a93:		jsr $aa99		; 20 99 aa
B5_0a96:		sta $07			; 85 07
B5_0a98:		rts				; 60 


B5_0a99:		lda ($9a), y	; b1 9a
B5_0a9b:		iny				; c8 
B5_0a9c:		rts				; 60 


B5_0a9d:		lda $6c			; a5 6c
B5_0a9f:		sta $078f, x	; 9d 8f 07
B5_0aa2:		jsr func_1f_1ed7		; 20 d7 fe
B5_0aa5:		lda $03			; a5 03
B5_0aa7:		beq B5_0aae ; f0 05

B5_0aa9:		lda #$01		; a9 01
B5_0aab:		sta $0470, x	; 9d 70 04
B5_0aae:		lda $11			; a5 11
B5_0ab0:		beq B5_0aba ; f0 08

B5_0ab2:		lda $02			; a5 02
B5_0ab4:		ldy $04			; a4 04
B5_0ab6:		sta $04			; 85 04
B5_0ab8:		sty $02			; 84 02
B5_0aba:		lda $02			; a5 02
B5_0abc:		sta $0438, x	; 9d 38 04
B5_0abf:		lda $04			; a5 04
B5_0ac1:		sta $041c, x	; 9d 1c 04
B5_0ac4:		lda #$00		; a9 00
B5_0ac6:		sta $05ef, x	; 9d ef 05
B5_0ac9:		lda $01			; a5 01
B5_0acb:		sta $054e, x	; 9d 4e 05
B5_0ace:		rts				; 60 


B5_0acf:		ldx #$03		; a2 03
B5_0ad1:		lda $054e, x	; bd 4e 05
B5_0ad4:		beq B5_0add ; f0 07

B5_0ad6:		inx				; e8 
B5_0ad7:		cpx #$13		; e0 13
B5_0ad9:		bne B5_0ad1 ; d0 f6

B5_0adb:		lda #$01		; a9 01
B5_0add:		rts				; 60 


B5_0ade:		lda $0470, x	; bd 70 04
B5_0ae1:		ora #$88		; 09 88
B5_0ae3:		sta $0470, x	; 9d 70 04
B5_0ae6:		rts				; 60 


B5_0ae7:		lda $041c, x	; bd 1c 04
B5_0aea:		cmp #$f0		; c9 f0
B5_0aec:		bcs B5_0aff ; b0 11

B5_0aee:		lda $0537, x	; bd 37 05
B5_0af1:		adc #$20		; 69 20
B5_0af3:		sta $0537, x	; 9d 37 05
B5_0af6:		lda $0520, x	; bd 20 05
B5_0af9:		adc #$00		; 69 00
B5_0afb:		sta $0520, x	; 9d 20 05
B5_0afe:		rts				; 60 


B5_0aff:		jsr func_1f_1ed7		; 20 d7 fe
B5_0b02:		sta $054e, x	; 9d 4e 05
B5_0b05:		sta $0400, x	; 9d 00 04
B5_0b08:		rts				; 60 


B5_0b09:		ldy #$86		; a0 86
B5_0b0b:		jsr $feb9		; 20 b9 fe
B5_0b0e:		tya				; 98 
B5_0b0f:		sta $054e, x	; 9d 4e 05
B5_0b12:		jsr $94e7		; 20 e7 94
B5_0b15:		jmp $ae75		; 4c 75 ae


B5_0b18:		ldy #$87		; a0 87
B5_0b1a:		bne B5_0b0b ; d0 ef

B5_0b1c:		jsr $feb9		; 20 b9 fe
B5_0b1f:		lda #$88		; a9 88
B5_0b21:		sta $054e, x	; 9d 4e 05
B5_0b24:		lda #$00		; a9 00
B5_0b26:		sta $0565, x	; 9d 65 05
B5_0b29:		lda #$f9		; a9 f9
B5_0b2b:		sta $0470, x	; 9d 70 04
B5_0b2e:		stx $0d			; 86 0d
B5_0b30:		lda $6c			; a5 6c
B5_0b32:		asl a			; 0a
B5_0b33:		asl a			; 0a
B5_0b34:		asl a			; 0a
B5_0b35:		clc				; 18 
B5_0b36:		adc #$07		; 69 07
B5_0b38:		tay				; a8 
B5_0b39:		lda ($9a), y	; b1 9a
B5_0b3b:		tay				; a8 
B5_0b3c:		lda $aba1, y	; b9 a1 ab
B5_0b3f:		sta $08			; 85 08
B5_0b41:		lda $aba2, y	; b9 a2 ab
B5_0b44:		sta $09			; 85 09
B5_0b46:		ldy #$00		; a0 00
B5_0b48:		lda ($08), y	; b1 08
B5_0b4a:		sta $0a			; 85 0a
B5_0b4c:		iny				; c8 
B5_0b4d:		sty $0c			; 84 0c
B5_0b4f:		jsr $feb9		; 20 b9 fe
B5_0b52:		lda #$88		; a9 88
B5_0b54:		sta $054e, x	; 9d 4e 05
B5_0b57:		lda #$01		; a9 01
B5_0b59:		sta $0565, x	; 9d 65 05
B5_0b5c:		ldy $0c			; a4 0c
B5_0b5e:		lda ($08), y	; b1 08
B5_0b60:		sta $05ef, x	; 9d ef 05
B5_0b63:		sec				; 38 
B5_0b64:		sbc $56			; e5 56
B5_0b66:		sta $0438, x	; 9d 38 04
B5_0b69:		iny				; c8 
B5_0b6a:		lda ($08), y	; b1 08
B5_0b6c:		sta $0606, x	; 9d 06 06
B5_0b6f:		iny				; c8 
B5_0b70:		lda ($08), y	; b1 08
B5_0b72:		sta $041c, x	; 9d 1c 04
B5_0b75:		iny				; c8 
B5_0b76:		lda ($08), y	; b1 08
B5_0b78:		sta $0645, x	; 9d 45 06
B5_0b7b:		iny				; c8 
B5_0b7c:		sty $0c			; 84 0c
B5_0b7e:		jsr $ae58		; 20 58 ae
B5_0b81:		jsr $aede		; 20 de ae
B5_0b84:		lda #$00		; a9 00
B5_0b86:		sta $0509, x	; 9d 09 05
B5_0b89:		sta $04f2, x	; 9d f2 04
B5_0b8c:		jsr $ad55		; 20 55 ad
B5_0b8f:		lda $0606, x	; bd 06 06
B5_0b92:		and #$01		; 29 01
B5_0b94:		ora $0470, x	; 1d 70 04
B5_0b97:		sta $0470, x	; 9d 70 04
B5_0b9a:		dec $0a			; c6 0a
B5_0b9c:		bne B5_0b4f ; d0 b1

B5_0b9e:		ldx $0d			; a6 0d
B5_0ba0:		rts				; 60 


B5_0ba1:		lda #$ab		; a9 ab
B5_0ba3:		tsx				; ba 
B5_0ba4:	.db $ab
B5_0ba5:	.db $c3
B5_0ba6:	.db $ab
B5_0ba7:	.db $dc
B5_0ba8:	.db $ab
B5_0ba9:	.db $04
B5_0baa:		bvc B5_0bad ; 50 01

B5_0bac:		rts				; 60 


B5_0bad:		ora ($90, x)	; 01 90
B5_0baf:		ora ($50, x)	; 01 50
B5_0bb1:		sta ($d0, x)	; 81 d0
B5_0bb3:		ora ($30, x)	; 01 30
B5_0bb5:		ora ($10, x)	; 01 10
B5_0bb7:	.db $02
B5_0bb8:		rti				; 40 


B5_0bb9:		ora ($02, x)	; 01 02
B5_0bbb:		;removed
	.db $50 $03

B5_0bbd:		ldy #$06		; a0 06
B5_0bbf:		;removed
	.db $90 $03

B5_0bc1:		;removed
	.db $90 $06

B5_0bc3:		asl $90			; 06 90
B5_0bc5:		.db $00				; 00
B5_0bc6:		cpy #$05		; c0 05
B5_0bc8:		bne B5_0bca ; d0 00

B5_0bca:		;removed
	.db $b0 $05

B5_0bcc:		;removed
	.db $10 $01

B5_0bce:		cpy #$05		; c0 05
B5_0bd0:		;removed
	.db $d0 $01

B5_0bd2:		bmi B5_0bd9 ; 30 05

B5_0bd4:		;removed
	.db $10 $02

B5_0bd6:		jsr $5005		; 20 05 50
B5_0bd9:	.db $02
B5_0bda:		jsr $0505		; 20 05 05
B5_0bdd:		;removed
	.db $50 $01

B5_0bdf:		;removed
	.db $d0 $05

B5_0be1:		;removed
	.db $f0 $01

B5_0be3:		cpy #$05		; c0 05
B5_0be5:		bmi B5_0be9 ; 30 02

B5_0be7:		;removed
	.db $d0 $05

B5_0be9:		bvs B5_0bed ; 70 02

B5_0beb:		;removed
	.db $b0 $05

B5_0bed:		bcs B5_0bf1 ; b0 02

B5_0bef:		;removed
	.db $b0 $05

B5_0bf1:		jsr $af1c		; 20 1c af
B5_0bf4:		jsr $adbe		; 20 be ad
B5_0bf7:		lda #$00		; a9 00
B5_0bf9:		sta $0537, x	; 9d 37 05
B5_0bfc:		sta $0520, x	; 9d 20 05
B5_0bff:		jmp $aca0		; 4c a0 ac


B5_0c02:		jsr $af40		; 20 40 af
B5_0c05:		jsr $ae23		; 20 23 ae
B5_0c08:		lda #$00		; a9 00
B5_0c0a:		sta $0509, x	; 9d 09 05
B5_0c0d:		sta $04f2, x	; 9d f2 04
B5_0c10:		jmp $ad2d		; 4c 2d ad


B5_0c13:		jsr $ac1f		; 20 1f ac
B5_0c16:		lda $0565, x	; bd 65 05
B5_0c19:		bne B5_0c1c ; d0 01

B5_0c1b:		rts				; 60 


B5_0c1c:		jmp $ad55		; 4c 55 ad


B5_0c1f:		lda $0645, x	; bd 45 06
B5_0c22:		and #$80		; 29 80
B5_0c24:		beq B5_0c2e ; f0 08

B5_0c26:		lda $041c, x	; bd 1c 04
B5_0c29:		cmp #$38		; c9 38
B5_0c2b:		bcc B5_0c36 ; 90 09

B5_0c2d:		rts				; 60 


B5_0c2e:		lda $041c, x	; bd 1c 04
B5_0c31:		cmp #$e0		; c9 e0
B5_0c33:		bcs B5_0c36 ; b0 01

B5_0c35:		rts				; 60 


B5_0c36:		stx $00			; 86 00
B5_0c38:		jsr $feb9		; 20 b9 fe
B5_0c3b:		stx $01			; 86 01
B5_0c3d:		lda #$88		; a9 88
B5_0c3f:		sta $054e, x	; 9d 4e 05
B5_0c42:		jsr $94e7		; 20 e7 94
B5_0c45:		ldy $00			; a4 00
B5_0c47:		lda $05ef, y	; b9 ef 05
B5_0c4a:		sta $05ef, x	; 9d ef 05
B5_0c4d:		lda $0606, y	; b9 06 06
B5_0c50:		sta $0606, x	; 9d 06 06
B5_0c53:		lda $0645, y	; b9 45 06
B5_0c56:		sta $0645, x	; 9d 45 06
B5_0c59:		lda $0565, y	; b9 65 05
B5_0c5c:		sta $0565, x	; 9d 65 05
B5_0c5f:		lda $0470, y	; b9 70 04
B5_0c62:		ora #$80		; 09 80
B5_0c64:		sta $0470, x	; 9d 70 04
B5_0c67:		lda $078f, y	; b9 8f 07
B5_0c6a:		sta $078f, x	; 9d 8f 07
B5_0c6d:		lda $0438, y	; b9 38 04
B5_0c70:		sta $0438, x	; 9d 38 04
B5_0c73:		lda #$00		; a9 00
B5_0c75:		sta $0509, x	; 9d 09 05
B5_0c78:		jsr $aede		; 20 de ae
B5_0c7b:		jsr $ae62		; 20 62 ae
B5_0c7e:		ldy #$38		; a0 38
B5_0c80:		lda $0645, x	; bd 45 06
B5_0c83:		and #$80		; 29 80
B5_0c85:		beq B5_0c89 ; f0 02

B5_0c87:		ldy #$e0		; a0 e0
B5_0c89:		tya				; 98 
B5_0c8a:		sta $041c, x	; 9d 1c 04
B5_0c8d:		ldx $00			; a6 00
B5_0c8f:		lda $81			; a5 81
B5_0c91:		cmp #$01		; c9 01
B5_0c93:		bne B5_0c9d ; d0 08

B5_0c95:		lda $91			; a5 91
B5_0c97:		cmp $00			; c5 00
B5_0c99:		bne B5_0c9d ; d0 02

B5_0c9b:		dec $81			; c6 81
B5_0c9d:		jmp $94e2		; 4c e2 94


B5_0ca0:		jsr $9ea5		; 20 a5 9e
B5_0ca3:		jsr $ad1f		; 20 1f ad
B5_0ca6:		lda #$00		; a9 00
B5_0ca8:		sta $02			; 85 02
B5_0caa:		lda $078f, x	; bd 8f 07
B5_0cad:		asl a			; 0a
B5_0cae:		asl a			; 0a
B5_0caf:		asl a			; 0a
B5_0cb0:		tay				; a8 
B5_0cb1:		iny				; c8 
B5_0cb2:		sec				; 38 
B5_0cb3:		lda ($9a), y	; b1 9a
B5_0cb5:		sbc $00			; e5 00
B5_0cb7:		sta $00			; 85 00
B5_0cb9:		dey				; 88 
B5_0cba:		lda ($9a), y	; b1 9a
B5_0cbc:		sbc $01			; e5 01
B5_0cbe:		sta $01			; 85 01
B5_0cc0:		jsr $ad78		; 20 78 ad
B5_0cc3:		lda $01			; a5 01
B5_0cc5:		bpl B5_0cd6 ; 10 0f

B5_0cc7:		dec $02			; c6 02
B5_0cc9:		lda #$00		; a9 00
B5_0ccb:		sec				; 38 
B5_0ccc:		sbc $00			; e5 00
B5_0cce:		sta $00			; 85 00
B5_0cd0:		lda #$00		; a9 00
B5_0cd2:		sbc $01			; e5 01
B5_0cd4:		sta $01			; 85 01
B5_0cd6:		clc				; 18 
B5_0cd7:		lda $04			; a5 04
B5_0cd9:		adc #$80		; 69 80
B5_0cdb:		sta $04			; 85 04
B5_0cdd:		lda $05			; a5 05
B5_0cdf:		adc #$01		; 69 01
B5_0ce1:		sta $05			; 85 05
B5_0ce3:		lda $05			; a5 05
B5_0ce5:		cmp $01			; c5 01
B5_0ce7:		bne B5_0ced ; d0 04

B5_0ce9:		lda $04			; a5 04
B5_0ceb:		cmp $00			; c5 00
B5_0ced:		beq B5_0cf1 ; f0 02

B5_0cef:		bcs B5_0d11 ; b0 20

B5_0cf1:		lda $02			; a5 02
B5_0cf3:		bmi B5_0d01 ; 30 0c

B5_0cf5:		jsr $ad12		; 20 12 ad
B5_0cf8:		cpy $07a2		; cc a2 07
B5_0cfb:		bcs B5_0d11 ; b0 14

B5_0cfd:		sty $07a2		; 8c a2 07
B5_0d00:		rts				; 60 


B5_0d01:		jsr $ad12		; 20 12 ad
B5_0d04:		bit $07a1		; 2c a1 07
B5_0d07:		bmi B5_0d0e ; 30 05

B5_0d09:		cpy $07a1		; cc a1 07
B5_0d0c:		bcc B5_0d11 ; 90 03

B5_0d0e:		sty $07a1		; 8c a1 07
B5_0d11:		rts				; 60 


B5_0d12:		jsr $94e2		; 20 e2 94
B5_0d15:		ldy $078f, x	; bc 8f 07
B5_0d18:		sta $0782, y	; 99 82 07
B5_0d1b:		sta $078f, x	; 9d 8f 07
B5_0d1e:		rts				; 60 


B5_0d1f:		lda $56			; a5 56
B5_0d21:		clc				; 18 
B5_0d22:		adc #$80		; 69 80
B5_0d24:		sta $00			; 85 00
B5_0d26:		lda $57			; a5 57
B5_0d28:		adc #$00		; 69 00
B5_0d2a:		sta $01			; 85 01
B5_0d2c:		rts				; 60 


B5_0d2d:		lda $0470, x	; bd 70 04
B5_0d30:		and #$01		; 29 01
B5_0d32:		beq B5_0d51 ; f0 1d

B5_0d34:		lda $0438, x	; bd 38 04
B5_0d37:		cmp #$a0		; c9 a0
B5_0d39:		bcs B5_0d50 ; b0 15

B5_0d3b:		cmp #$60		; c9 60
B5_0d3d:		bcc B5_0d50 ; 90 11

B5_0d3f:		cmp #$80		; c9 80
B5_0d41:		bcs B5_0d4a ; b0 07

B5_0d43:		jsr $ad12		; 20 12 ad
B5_0d46:		sty $07a2		; 8c a2 07
B5_0d49:		rts				; 60 


B5_0d4a:		jsr $ad12		; 20 12 ad
B5_0d4d:		sty $07a1		; 8c a1 07
B5_0d50:		rts				; 60 


B5_0d51:		jsr $adb0		; 20 b0 ad
B5_0d54:		rts				; 60 


B5_0d55:		lda $57			; a5 57
B5_0d57:		cmp $0606, x	; dd 06 06
B5_0d5a:		bne B5_0d61 ; d0 05

B5_0d5c:		lda $56			; a5 56
B5_0d5e:		cmp $05ef, x	; dd ef 05
B5_0d61:		bcs B5_0da2 ; b0 3f

B5_0d63:		lda $57			; a5 57
B5_0d65:		adc #$01		; 69 01
B5_0d67:		cmp $0606, x	; dd 06 06
B5_0d6a:		bne B5_0d71 ; d0 05

B5_0d6c:		lda $56			; a5 56
B5_0d6e:		cmp $05ef, x	; dd ef 05
B5_0d71:		beq B5_0da2 ; f0 2f

B5_0d73:		bcc B5_0da2 ; 90 2d

B5_0d75:		jmp $adb0		; 4c b0 ad


B5_0d78:		clc				; 18 
B5_0d79:		lda $00			; a5 00
B5_0d7b:		adc $0606, x	; 7d 06 06
B5_0d7e:		sta $04			; 85 04
B5_0d80:		lda $01			; a5 01
B5_0d82:		adc $061d, x	; 7d 1d 06
B5_0d85:		sta $05			; 85 05
B5_0d87:		bpl B5_0d96 ; 10 0d

B5_0d89:		lda #$00		; a9 00
B5_0d8b:		sec				; 38 
B5_0d8c:		sbc $04			; e5 04
B5_0d8e:		sta $04			; 85 04
B5_0d90:		lda #$00		; a9 00
B5_0d92:		sbc $05			; e5 05
B5_0d94:		sta $05			; 85 05
B5_0d96:		lda $05			; a5 05
B5_0d98:		cmp #$00		; c9 00
B5_0d9a:		bne B5_0da0 ; d0 04

B5_0d9c:		lda $04			; a5 04
B5_0d9e:		cmp #$7f		; c9 7f
B5_0da0:		bcc B5_0db0 ; 90 0e

B5_0da2:		lda #$81		; a9 81
B5_0da4:		ora $0470, x	; 1d 70 04
B5_0da7:		sta $0470, x	; 9d 70 04
B5_0daa:		lda #$00		; a9 00
B5_0dac:		sta $0657, x	; 9d 57 06
B5_0daf:		rts				; 60 


B5_0db0:		lda #$7e		; a9 7e
B5_0db2:		and $0470, x	; 3d 70 04
B5_0db5:		sta $0470, x	; 9d 70 04
B5_0db8:		lda #$01		; a9 01
B5_0dba:		sta $0657, x	; 9d 57 06
B5_0dbd:		rts				; 60 


B5_0dbe:		jsr $adeb		; 20 eb ad
B5_0dc1:		jsr $ae05		; 20 05 ae
B5_0dc4:		bcc B5_0ddd ; 90 17

B5_0dc6:		jsr $ae11		; 20 11 ae
B5_0dc9:		clc				; 18 
B5_0dca:		lda $0509, x	; bd 09 05
B5_0dcd:		adc $ae50, y	; 79 50 ae
B5_0dd0:		sta $0509, x	; 9d 09 05
B5_0dd3:		lda $04f2, x	; bd f2 04
B5_0dd6:		adc $ae51, y	; 79 51 ae
B5_0dd9:		sta $04f2, x	; 9d f2 04
B5_0ddc:		rts				; 60 


B5_0ddd:		lda $04f2, x	; bd f2 04
B5_0de0:		pha				; 48 
B5_0de1:		jsr $aeca		; 20 ca ae
B5_0de4:		pla				; 68 
B5_0de5:		bpl B5_0dea ; 10 03

B5_0de7:		jmp $aeb8		; 4c b8 ae


B5_0dea:		rts				; 60 


B5_0deb:		lda $0606, x	; bd 06 06
B5_0dee:		sta $00			; 85 00
B5_0df0:		lda $061d, x	; bd 1d 06
B5_0df3:		sta $01			; 85 01
B5_0df5:		bpl B5_0e04 ; 10 0d

B5_0df7:		sec				; 38 
B5_0df8:		lda #$00		; a9 00
B5_0dfa:		sbc $00			; e5 00
B5_0dfc:		sta $00			; 85 00
B5_0dfe:		lda #$00		; a9 00
B5_0e00:		sbc $01			; e5 01
B5_0e02:		sta $01			; 85 01
B5_0e04:		rts				; 60 


B5_0e05:		lda $01			; a5 01
B5_0e07:		cmp #$00		; c9 00
B5_0e09:		bne B5_0e10 ; d0 05

B5_0e0b:		lda $00			; a5 00
B5_0e0d:		cmp $0633, x	; dd 33 06
B5_0e10:		rts				; 60 


B5_0e11:		ldy #$00		; a0 00
B5_0e13:		lda $0645, x	; bd 45 06
B5_0e16:		and #$30		; 29 30
B5_0e18:		lsr a			; 4a
B5_0e19:		lsr a			; 4a
B5_0e1a:		tay				; a8 
B5_0e1b:		lda $061d, x	; bd 1d 06
B5_0e1e:		bmi B5_0e22 ; 30 02

B5_0e20:		iny				; c8 
B5_0e21:		iny				; c8 
B5_0e22:		rts				; 60 


B5_0e23:		jsr $adeb		; 20 eb ad
B5_0e26:		jsr $ae05		; 20 05 ae
B5_0e29:		bcc B5_0e42 ; 90 17

B5_0e2b:		jsr $ae11		; 20 11 ae
B5_0e2e:		clc				; 18 
B5_0e2f:		lda $0537, x	; bd 37 05
B5_0e32:		adc $ae50, y	; 79 50 ae
B5_0e35:		sta $0537, x	; 9d 37 05
B5_0e38:		lda $0520, x	; bd 20 05
B5_0e3b:		adc $ae51, y	; 79 51 ae
B5_0e3e:		sta $0520, x	; 9d 20 05
B5_0e41:		rts				; 60 


B5_0e42:		lda $0520, x	; bd 20 05
B5_0e45:		pha				; 48 
B5_0e46:		jsr $aef8		; 20 f8 ae
B5_0e49:		pla				; 68 
B5_0e4a:		bpl B5_0e4f ; 10 03

B5_0e4c:		jmp $aee6		; 4c e6 ae


B5_0e4f:		rts				; 60 


B5_0e50:	.db $02
B5_0e51:		.db $00				; 00
B5_0e52:		inc $04ff, x	; fe ff 04
B5_0e55:		.db $00				; 00
B5_0e56:	.db $fc
B5_0e57:	.db $ff
B5_0e58:		lda $6c			; a5 6c
B5_0e5a:		sta $078f, x	; 9d 8f 07
B5_0e5d:		lda #$60		; a9 60
B5_0e5f:		sta $0470, x	; 9d 70 04
B5_0e62:		lda #$0e		; a9 0e
B5_0e64:		sta $048c, x	; 9d 8c 04
B5_0e67:		lda #$16		; a9 16
B5_0e69:		sta $0400, x	; 9d 00 04
B5_0e6c:		lda #$00		; a9 00
B5_0e6e:		sta $0454, x	; 9d 54 04
B5_0e71:		sta $05aa, x	; 9d aa 05
B5_0e74:		rts				; 60 


B5_0e75:		jsr $ae58		; 20 58 ae
B5_0e78:		lda $6c			; a5 6c
B5_0e7a:		asl a			; 0a
B5_0e7b:		asl a			; 0a
B5_0e7c:		asl a			; 0a
B5_0e7d:		tay				; a8 
B5_0e7e:		iny				; c8 
B5_0e7f:		lda ($9a), y	; b1 9a
B5_0e81:		sec				; 38 
B5_0e82:		sbc $56			; e5 56
B5_0e84:		sta $0438, x	; 9d 38 04
B5_0e87:		dey				; 88 
B5_0e88:		lda ($9a), y	; b1 9a
B5_0e8a:		sbc $57			; e5 57
B5_0e8c:		beq B5_0e98 ; f0 0a

B5_0e8e:		and #$01		; 29 01
B5_0e90:		ora #$80		; 09 80
B5_0e92:		ora $0470, x	; 1d 70 04
B5_0e95:		sta $0470, x	; 9d 70 04
B5_0e98:		iny				; c8 
B5_0e99:		iny				; c8 
B5_0e9a:		iny				; c8 
B5_0e9b:		iny				; c8 
B5_0e9c:		lda ($9a), y	; b1 9a
B5_0e9e:		sta $041c, x	; 9d 1c 04
B5_0ea1:		iny				; c8 
B5_0ea2:		lda ($9a), y	; b1 9a
B5_0ea4:		sta $0633, x	; 9d 33 06
B5_0ea7:		iny				; c8 
B5_0ea8:		lda ($9a), y	; b1 9a
B5_0eaa:		sta $0645, x	; 9d 45 06
B5_0ead:		jsr $aede		; 20 de ae
B5_0eb0:		jsr $aeca		; 20 ca ae
B5_0eb3:		lda $0645, x	; bd 45 06
B5_0eb6:		bpl B5_0ec9 ; 10 11

B5_0eb8:		sec				; 38 
B5_0eb9:		lda #$00		; a9 00
B5_0ebb:		sbc $0509, x	; fd 09 05
B5_0ebe:		sta $0509, x	; 9d 09 05
B5_0ec1:		lda #$00		; a9 00
B5_0ec3:		sbc $04f2, x	; fd f2 04
B5_0ec6:		sta $04f2, x	; 9d f2 04
B5_0ec9:		rts				; 60 


B5_0eca:		lda $0645, x	; bd 45 06
B5_0ecd:		and #$07		; 29 07
B5_0ecf:		asl a			; 0a
B5_0ed0:		tay				; a8 
B5_0ed1:		lda $af0c, y	; b9 0c af
B5_0ed4:		sta $0509, x	; 9d 09 05
B5_0ed7:		lda $af0d, y	; b9 0d af
B5_0eda:		sta $04f2, x	; 9d f2 04
B5_0edd:		rts				; 60 


B5_0ede:		jsr $aef8		; 20 f8 ae
B5_0ee1:		lda $0645, x	; bd 45 06
B5_0ee4:		bpl B5_0ef7 ; 10 11

B5_0ee6:		sec				; 38 
B5_0ee7:		lda #$00		; a9 00
B5_0ee9:		sbc $0537, x	; fd 37 05
B5_0eec:		sta $0537, x	; 9d 37 05
B5_0eef:		lda #$00		; a9 00
B5_0ef1:		sbc $0520, x	; fd 20 05
B5_0ef4:		sta $0520, x	; 9d 20 05
B5_0ef7:		rts				; 60 


B5_0ef8:		lda $0645, x	; bd 45 06
B5_0efb:		and #$07		; 29 07
B5_0efd:		asl a			; 0a
B5_0efe:		tay				; a8 
B5_0eff:		lda $af0c, y	; b9 0c af
B5_0f02:		sta $0537, x	; 9d 37 05
B5_0f05:		lda $af0d, y	; b9 0d af
B5_0f08:		sta $0520, x	; 9d 20 05
B5_0f0b:		rts				; 60 


B5_0f0c:		.db $00				; 00
B5_0f0d:		.db $00				; 00
B5_0f0e:	.db $80
B5_0f0f:		.db $00				; 00
B5_0f10:		ldy #$00		; a0 00
B5_0f12:		.db $00				; 00
B5_0f13:		ora ($20, x)	; 01 20
B5_0f15:		.db $00				; 00
B5_0f16:		rti				; 40 


B5_0f17:		.db $00				; 00
B5_0f18:		rts				; 60 


B5_0f19:		.db $00				; 00
B5_0f1a:		.db $00				; 00
B5_0f1b:		.db $00				; 00
B5_0f1c:		ldy #$00		; a0 00
B5_0f1e:		clc				; 18 
B5_0f1f:		lda $0509, x	; bd 09 05
B5_0f22:		adc $05ef, x	; 7d ef 05
B5_0f25:		sta $05ef, x	; 9d ef 05
B5_0f28:		lda $04f2, x	; bd f2 04
B5_0f2b:		adc $0606, x	; 7d 06 06
B5_0f2e:		sta $0606, x	; 9d 06 06
B5_0f31:		lda $04f2, x	; bd f2 04
B5_0f34:		bpl B5_0f38 ; 10 02

B5_0f36:		ldy #$ff		; a0 ff
B5_0f38:		tya				; 98 
B5_0f39:		adc $061d, x	; 7d 1d 06
B5_0f3c:		sta $061d, x	; 9d 1d 06
B5_0f3f:		rts				; 60 


B5_0f40:		ldy #$00		; a0 00
B5_0f42:		clc				; 18 
B5_0f43:		lda $0537, x	; bd 37 05
B5_0f46:		adc $05ef, x	; 7d ef 05
B5_0f49:		sta $05ef, x	; 9d ef 05
B5_0f4c:		lda $0520, x	; bd 20 05
B5_0f4f:		adc $0606, x	; 7d 06 06
B5_0f52:		sta $0606, x	; 9d 06 06
B5_0f55:		lda $0520, x	; bd 20 05
B5_0f58:		bpl B5_0f5c ; 10 02

B5_0f5a:		ldy #$ff		; a0 ff
B5_0f5c:		tya				; 98 
B5_0f5d:		adc $061d, x	; 7d 1d 06
B5_0f60:		sta $061d, x	; 9d 1d 06
B5_0f63:		rts				; 60 


B5_0f64:		lda $0470, x	; bd 70 04
B5_0f67:		and #$01		; 29 01
B5_0f69:		bne B5_0f6d ; d0 02

B5_0f6b:		clc				; 18 
B5_0f6c:		rts				; 60 


B5_0f6d:		lda $0438, x	; bd 38 04
B5_0f70:		cmp #$80		; c9 80
B5_0f72:		bcs B5_0f6b ; b0 f7

B5_0f74:		ldy $57			; a4 57
B5_0f76:		iny				; c8 
B5_0f77:		sty $0f			; 84 0f
B5_0f79:		clc				; 18 
B5_0f7a:		lda $56			; a5 56
B5_0f7c:		adc $0438, x	; 7d 38 04
B5_0f7f:		sta $0e			; 85 0e
B5_0f81:		lda $0f			; a5 0f
B5_0f83:		adc #$00		; 69 00
B5_0f85:		sta $0f			; 85 0f
B5_0f87:		lsr a			; 4a
B5_0f88:		ror $0e			; 66 0e
B5_0f8a:		lsr a			; 4a
B5_0f8b:		ror $0e			; 66 0e
B5_0f8d:		lsr a			; 4a
B5_0f8e:		ror $0e			; 66 0e
B5_0f90:		lsr $0e			; 46 0e
B5_0f92:		lsr $0e			; 46 0e
B5_0f94:		ldy $0e			; a4 0e
B5_0f96:		dey				; 88 
B5_0f97:		cpy $5a			; c4 5a
B5_0f99:		bcc B5_0f6b ; 90 d0

B5_0f9b:		sec				; 38 
B5_0f9c:		rts				; 60 


B5_0f9d:		ldx #$1a		; a2 1a
B5_0f9f:		lda $0470, x	; bd 70 04
B5_0fa2:		beq B5_0fa7 ; f0 03

B5_0fa4:		jsr $afad		; 20 ad af
B5_0fa7:		inx				; e8 
B5_0fa8:		cpx #$1c		; e0 1c
B5_0faa:		bcc B5_0f9f ; 90 f3

B5_0fac:		rts				; 60 


B5_0fad:		stx $6c			; 86 6c
B5_0faf:		ldy $078d, x	; bc 8d 07
B5_0fb2:		bmi B5_0fbf ; 30 0b

B5_0fb4:		bne B5_0fc2 ; d0 0c

B5_0fb6:		lda $041c, x	; bd 1c 04
B5_0fb9:		sta $079f, x	; 9d 9f 07
B5_0fbc:		jsr $b16e		; 20 6e b1
B5_0fbf:		jmp $b08f		; 4c 8f b0


B5_0fc2:		dey				; 88 
B5_0fc3:		bne B5_0fd8 ; d0 13

B5_0fc5:		lda #$02		; a9 02
B5_0fc7:		sta $0470, x	; 9d 70 04
B5_0fca:		lda #$00		; a9 00
B5_0fcc:		sta $0793, x	; 9d 93 07
B5_0fcf:		sta $0795, x	; 9d 95 07
B5_0fd2:		inc $078d, x	; fe 8d 07
B5_0fd5:		jmp $b02a		; 4c 2a b0


B5_0fd8:		dey				; 88 
B5_0fd9:		bne B5_101c ; d0 41

B5_0fdb:		lda #$40		; a9 40
B5_0fdd:		clc				; 18 
B5_0fde:		adc $0795, x	; 7d 95 07
B5_0fe1:		sta $0795, x	; 9d 95 07
B5_0fe4:		lda #$00		; a9 00
B5_0fe6:		adc $0793, x	; 7d 93 07
B5_0fe9:		sta $0793, x	; 9d 93 07
B5_0fec:		lda $0791, x	; bd 91 07
B5_0fef:		clc				; 18 
B5_0ff0:		adc $0795, x	; 7d 95 07
B5_0ff3:		sta $0791, x	; 9d 91 07
B5_0ff6:		lda $041c, x	; bd 1c 04
B5_0ff9:		adc $0793, x	; 7d 93 07
B5_0ffc:		sta $041c, x	; 9d 1c 04
B5_0fff:		cmp #$e0		; c9 e0
B5_1001:		bcc B5_1006 ; 90 03

B5_1003:		jmp $b28c		; 4c 8c b2


B5_1006:		lda $68			; a5 68
B5_1008:		bmi B5_101f ; 30 15

B5_100a:		lda $041c, x	; bd 1c 04
B5_100d:		clc				; 18 
B5_100e:		adc #$08		; 69 08
B5_1010:		tay				; a8 
B5_1011:		lda $0438, x	; bd 38 04
B5_1014:		jsr $fc16		; 20 16 fc
B5_1017:		beq B5_101c ; f0 03

B5_1019:		inc $078d, x	; fe 8d 07
B5_101c:		jmp $afbc		; 4c bc af


B5_101f:		lda #$00		; a9 00
B5_1021:		ldy #$08		; a0 08
B5_1023:		jsr $fc1e		; 20 1e fc
B5_1026:		beq B5_101c ; f0 f4

B5_1028:		bne B5_1019 ; d0 ef

B5_102a:		lda $078b, x	; bd 8b 07
B5_102d:		cmp #$03		; c9 03
B5_102f:		beq B5_1042 ; f0 11

B5_1031:		asl a			; 0a
B5_1032:		tay				; a8 
B5_1033:		lda $b077, y	; b9 77 b0
B5_1036:		sta $0400, x	; 9d 00 04
B5_1039:		lda $b078, y	; b9 78 b0
B5_103c:		sta $048c, x	; 9d 8c 04
B5_103f:		jmp $afbc		; 4c bc af


B5_1042:		ldy $3b			; a4 3b
B5_1044:	.db $b9 $85 $00
B5_1047:		tay				; a8 
B5_1048:		lda $b083, y	; b9 83 b0
B5_104b:		beq B5_1058 ; f0 0b

B5_104d:		cmp #$ff		; c9 ff
B5_104f:		beq B5_105f ; f0 0e

B5_1051:		ldy $3b			; a4 3b
B5_1053:	.db $b9 $87 $00
B5_1056:		beq B5_105f ; f0 07

B5_1058:		lda #$01		; a9 01
B5_105a:		sta $078b, x	; 9d 8b 07
B5_105d:		bne B5_1031 ; d0 d2

B5_105f:		ldy $3b			; a4 3b
B5_1061:	.db $b9 $87 $00
B5_1064:		beq B5_106c ; f0 06

B5_1066:		cmp #$01		; c9 01
B5_1068:		beq B5_1070 ; f0 06

B5_106a:		bne B5_1058 ; d0 ec

B5_106c:		lda #$03		; a9 03
B5_106e:		bne B5_1031 ; d0 c1

B5_1070:		lda #$05		; a9 05
B5_1072:		sta $078b, x	; 9d 8b 07
B5_1075:		bne B5_1031 ; d0 ba

B5_1077:	.db $1c
B5_1078:		asl $0e10		; 0e 10 0e
B5_107b:		.db $00				; 00
B5_107c:		.db $00				; 00
B5_107d:		cli				; 58 
B5_107e:		asl $0e22		; 0e 22 0e
B5_1081:	.db $5a
B5_1082:		asl $ff00		; 0e 00 ff
B5_1085:	.db $ff
B5_1086:	.db $ff
B5_1087:	.db $ff
B5_1088:		.db $00				; 00
B5_1089:		.db $00				; 00
B5_108a:		.db $00				; 00
B5_108b:	.db $ff
B5_108c:	.db $ff
B5_108d:		.db $00				; 00
B5_108e:		.db $00				; 00
B5_108f:		lda $68			; a5 68
B5_1091:		bpl B5_1096 ; 10 03

B5_1093:		jmp $b132		; 4c 32 b1


B5_1096:		lda $0470, x	; bd 70 04
B5_1099:		and #$01		; 29 01
B5_109b:		sta $01			; 85 01
B5_109d:		lda #$00		; a9 00
B5_109f:		ldy $6e			; a4 6e
B5_10a1:		bpl B5_10a5 ; 10 02

B5_10a3:		lda #$ff		; a9 ff
B5_10a5:		sta $00			; 85 00
B5_10a7:		lda $0438, x	; bd 38 04
B5_10aa:		sec				; 38 
B5_10ab:		sbc $6e			; e5 6e
B5_10ad:		sta $0438, x	; 9d 38 04
B5_10b0:		lda $01			; a5 01
B5_10b2:		sbc $00			; e5 00
B5_10b4:		and #$01		; 29 01
B5_10b6:		sta $01			; 85 01
B5_10b8:		bne B5_10cd ; d0 13

B5_10ba:		lda $01			; a5 01
B5_10bc:		beq B5_10c2 ; f0 04

B5_10be:		ora #$80		; 09 80
B5_10c0:		sta $01			; 85 01
B5_10c2:		lda $0470, x	; bd 70 04
B5_10c5:		and #$7e		; 29 7e
B5_10c7:		ora $01			; 05 01
B5_10c9:		sta $0470, x	; 9d 70 04
B5_10cc:		rts				; 60 


B5_10cd:		lda $078d, x	; bd 8d 07
B5_10d0:		bne B5_10df ; d0 0d

B5_10d2:		ldy $0797, x	; bc 97 07
B5_10d5:		beq B5_10e4 ; f0 0d

B5_10d7:		lda $0799, x	; bd 99 07
B5_10da:		ora $079b, x	; 1d 9b 07
B5_10dd:		beq B5_10e4 ; f0 05

B5_10df:		lda #$80		; a9 80
B5_10e1:		sta $078d, x	; 9d 8d 07
B5_10e4:		lda #$00		; a9 00
B5_10e6:		sta $0400, x	; 9d 00 04
B5_10e9:		lda $0438, x	; bd 38 04
B5_10ec:		cmp #$c0		; c9 c0
B5_10ee:		bcs B5_10ba ; b0 ca

B5_10f0:		cmp #$41		; c9 41
B5_10f2:		bcc B5_10ba ; 90 c6

B5_10f4:		lda $0438, x	; bd 38 04
B5_10f7:		bpl B5_1110 ; 10 17

B5_10f9:		ldy #$00		; a0 00
B5_10fb:		lda $07a1, y	; b9 a1 07
B5_10fe:		bmi B5_110a ; 30 0a

B5_1100:		lda $078f, x	; bd 8f 07
B5_1103:		cmp $07a1, y	; d9 a1 07
B5_1106:		bcs B5_111a ; b0 12

B5_1108:		bcc B5_111d ; 90 13

B5_110a:		lda $078f, x	; bd 8f 07
B5_110d:		jmp $b11a		; 4c 1a b1


B5_1110:		ldy #$01		; a0 01
B5_1112:		lda $078f, x	; bd 8f 07
B5_1115:		cmp $07a1, y	; d9 a1 07
B5_1118:		bcs B5_111d ; b0 03

B5_111a:		sta $07a1, y	; 99 a1 07
B5_111d:		tay				; a8 
B5_111e:		lda #$00		; a9 00
B5_1120:		sta $0782, y	; 99 82 07
B5_1123:		lda #$00		; a9 00
B5_1125:		sta $0470, x	; 9d 70 04
B5_1128:		sta $0400, x	; 9d 00 04
B5_112b:		sta $0438, x	; 9d 38 04
B5_112e:		sta $041c, x	; 9d 1c 04
B5_1131:		rts				; 60 


B5_1132:		lda $041c, x	; bd 1c 04
B5_1135:		clc				; 18 
B5_1136:		adc $6e			; 65 6e
B5_1138:		sta $041c, x	; 9d 1c 04
B5_113b:		bcs B5_1142 ; b0 05

B5_113d:		lda $6e			; a5 6e
B5_113f:		bmi B5_1123 ; 30 e2

B5_1141:		rts				; 60 


B5_1142:		lda $6e			; a5 6e
B5_1144:		bpl B5_1123 ; 10 dd

B5_1146:		rts				; 60 


B5_1147:		lda $0400, x	; bd 00 04
B5_114a:		beq B5_116d ; f0 21

B5_114c:		lda $0438		; ad 38 04
B5_114f:		sec				; 38 
B5_1150:		sbc $0438, x	; fd 38 04
B5_1153:		bcs B5_1157 ; b0 02

B5_1155:		eor #$ff		; 49 ff
B5_1157:		cmp #$0c		; c9 0c
B5_1159:		bcs B5_116d ; b0 12

B5_115b:		lda $041c		; ad 1c 04
B5_115e:		sec				; 38 
B5_115f:		sbc $041c, x	; fd 1c 04
B5_1162:		bcs B5_1166 ; b0 02

B5_1164:		eor #$ff		; 49 ff
B5_1166:		cmp #$10		; c9 10
B5_1168:		bcs B5_116d ; b0 03

B5_116a:		jmp $b2eb		; 4c eb b2


B5_116d:		rts				; 60 


B5_116e:		lda $0470, x	; bd 70 04
B5_1171:		and #$81		; 29 81
B5_1173:		bne B5_116d ; d0 f8

B5_1175:		lda $078d, x	; bd 8d 07
B5_1178:		bne B5_1147 ; d0 cd

B5_117a:		jsr $b2a5		; 20 a5 b2
B5_117d:		lda $0630		; ad 30 06
B5_1180:		bne B5_1185 ; d0 03

B5_1182:		jmp $b23e		; 4c 3e b2


B5_1185:		jmp $b18f		; 4c 8f b1


B5_1188:		inc $06			; e6 06
B5_118a:		dec $07			; c6 07
B5_118c:		bne B5_118f ; d0 01

B5_118e:		rts				; 60 


B5_118f:		ldy $82			; a4 82
B5_1191:		lda $041c		; ad 1c 04
B5_1194:		clc				; 18 
B5_1195:		adc $b235, y	; 79 35 b2
B5_1198:		ldy $06			; a4 06
B5_119a:		sec				; 38 
B5_119b:	.db $f9 $0d $00
B5_119e:		bcs B5_11a2 ; b0 02

B5_11a0:		eor #$ff		; 49 ff
B5_11a2:		cmp #$08		; c9 08
B5_11a4:		bcs B5_1188 ; b0 e2

B5_11a6:		lda #$00		; a9 00
B5_11a8:		sta $0b			; 85 0b
B5_11aa:		ldy $0561		; ac 61 05
B5_11ad:		lda $04a8		; ad a8 04
B5_11b0:		beq B5_11c2 ; f0 10

B5_11b2:		lda $0438		; ad 38 04
B5_11b5:		sec				; 38 
B5_11b6:		sbc $b22b, y	; f9 2b b2
B5_11b9:		sta $0a			; 85 0a
B5_11bb:		lda $0b			; a5 0b
B5_11bd:		sbc #$00		; e9 00
B5_11bf:		jmp $b1cf		; 4c cf b1


B5_11c2:		lda $0438		; ad 38 04
B5_11c5:		clc				; 18 
B5_11c6:		adc $b22b, y	; 79 2b b2
B5_11c9:		sta $0a			; 85 0a
B5_11cb:		lda $0b			; a5 0b
B5_11cd:		adc #$00		; 69 00
B5_11cf:		sta $0b			; 85 0b
B5_11d1:		lda $0a			; a5 0a
B5_11d3:		sec				; 38 
B5_11d4:		sbc $0438, x	; fd 38 04
B5_11d7:		sta $14			; 85 14
B5_11d9:		lda $0b			; a5 0b
B5_11db:		sbc #$00		; e9 00
B5_11dd:		sta $15			; 85 15
B5_11df:		bcs B5_11ee ; b0 0d

B5_11e1:		sec				; 38 
B5_11e2:		lda #$00		; a9 00
B5_11e4:		sbc $14			; e5 14
B5_11e6:		sta $14			; 85 14
B5_11e8:		lda #$00		; a9 00
B5_11ea:		sbc $15			; e5 15
B5_11ec:		sta $15			; 85 15
B5_11ee:		lda $15			; a5 15
B5_11f0:		bne B5_1188 ; d0 96

B5_11f2:		lda $14			; a5 14
B5_11f4:		cmp $b230, y	; d9 30 b2
B5_11f7:		bcs B5_118e ; b0 95

B5_11f9:		lda #$34		; a9 34
B5_11fb:		jsr playSound		; 20 5f e2
B5_11fe:		jsr $b40d		; 20 0d b4
B5_1201:		ldy $0797, x	; bc 97 07
B5_1204:		beq B5_121f ; f0 19

B5_1206:		lda #$ff		; a9 ff
B5_1208:		ldy $06			; a4 06
B5_120a:		bne B5_1212 ; d0 06

B5_120c:		sta $0799, x	; 9d 99 07
B5_120f:		jmp $b215		; 4c 15 b2


B5_1212:		sta $079b, x	; 9d 9b 07
B5_1215:		lda $0799, x	; bd 99 07
B5_1218:		and $079b, x	; 3d 9b 07
B5_121b:		cmp #$ff		; c9 ff
B5_121d:		bne B5_122a ; d0 0b

B5_121f:		ldy $079d, x	; bc 9d 07
B5_1222:		lda #$ff		; a9 ff
B5_1224:	.db $99 $f4 $00
B5_1227:		inc $078d, x	; fe 8d 07
B5_122a:		rts				; 60 


B5_122b:		clc				; 18 
B5_122c:		clc				; 18 
B5_122d:		jsr $1818		; 20 18 18
B5_1230:		;removed
	.db $10 $10

B5_1232:		clc				; 18 
B5_1233:		;removed
	.db $10 $10

B5_1235:		inc $fefe, x	; fe fe fe
B5_1238:		inc $0303, x	; fe 03 03
B5_123b:	.db $03
B5_123c:	.db $03
B5_123d:	.db $03
B5_123e:		lda $0438, x	; bd 38 04
B5_1241:		sta $04			; 85 04
B5_1243:		lda $041c, x	; bd 1c 04
B5_1246:		sta $05			; 85 05
B5_1248:		ldx #$14		; a2 14
B5_124a:		lda $054e, x	; bd 4e 05
B5_124d:		cmp #$0a		; c9 0a
B5_124f:		beq B5_1260 ; f0 0f

B5_1251:		inx				; e8 
B5_1252:		cpx #$17		; e0 17
B5_1254:		bcc B5_124a ; 90 f4

B5_1256:		ldx $6c			; a6 6c
B5_1258:		rts				; 60 


B5_1259:		iny				; c8 
B5_125a:		dec $00			; c6 00
B5_125c:		beq B5_1251 ; f0 f3

B5_125e:		bne B5_1266 ; d0 06

B5_1260:		lda $07			; a5 07
B5_1262:		sta $00			; 85 00
B5_1264:		ldy $06			; a4 06
B5_1266:		lda $041c, x	; bd 1c 04
B5_1269:		sec				; 38 
B5_126a:	.db $f9 $0d $00
B5_126d:		bcs B5_1271 ; b0 02

B5_126f:		eor #$ff		; 49 ff
B5_1271:		cmp #$08		; c9 08
B5_1273:		bcs B5_1259 ; b0 e4

B5_1275:		lda $0438, x	; bd 38 04
B5_1278:		sbc $04			; e5 04
B5_127a:		bcs B5_127e ; b0 02

B5_127c:		eor #$ff		; 49 ff
B5_127e:		cmp #$10		; c9 10
B5_1280:		bcs B5_1259 ; b0 d7

B5_1282:		lda #$10		; a9 10
B5_1284:		sta $061d, x	; 9d 1d 06
B5_1287:		ldx $6c			; a6 6c
B5_1289:		jmp $b1f9		; 4c f9 b1


B5_128c:		lda $079f, x	; bd 9f 07
B5_128f:		sta $041c, x	; 9d 1c 04
B5_1292:		lda #$00		; a9 00
B5_1294:		sta $0400, x	; 9d 00 04
B5_1297:		sta $048c, x	; 9d 8c 04
B5_129a:		lda #$02		; a9 02
B5_129c:		sta $0470, x	; 9d 70 04
B5_129f:		lda #$80		; a9 80
B5_12a1:		sta $078d, x	; 9d 8d 07
B5_12a4:		rts				; 60 


B5_12a5:		ldy $0797, x	; bc 97 07
B5_12a8:		beq B5_12cc ; f0 22

B5_12aa:		ldy #$00		; a0 00
B5_12ac:		lda $0799, x	; bd 99 07
B5_12af:		bne B5_12ba ; d0 09

B5_12b1:		lda $041c, x	; bd 1c 04
B5_12b4:		sec				; 38 
B5_12b5:		sbc #$08		; e9 08
B5_12b7:		sta $0d			; 85 0d
B5_12b9:		iny				; c8 
B5_12ba:		lda $079b, x	; bd 9b 07
B5_12bd:		bne B5_12c9 ; d0 0a

B5_12bf:		lda $041c, x	; bd 1c 04
B5_12c2:		clc				; 18 
B5_12c3:		adc #$08		; 69 08
B5_12c5:		sta $0e			; 85 0e
B5_12c7:		iny				; c8 
B5_12c8:		iny				; c8 
B5_12c9:		jmp $b2d3		; 4c d3 b2


B5_12cc:		ldy #$01		; a0 01
B5_12ce:		lda $041c, x	; bd 1c 04
B5_12d1:		sta $0d			; 85 0d
B5_12d3:		sty $0f			; 84 0f
B5_12d5:		ldy $0f			; a4 0f
B5_12d7:		cpy #$03		; c0 03
B5_12d9:		beq B5_12e3 ; f0 08

B5_12db:		dey				; 88 
B5_12dc:		sty $06			; 84 06
B5_12de:		ldy #$01		; a0 01
B5_12e0:		sty $07			; 84 07
B5_12e2:		rts				; 60 


B5_12e3:		dey				; 88 
B5_12e4:		sty $07			; 84 07
B5_12e6:		lda #$00		; a9 00
B5_12e8:		sta $06			; 85 06
B5_12ea:		rts				; 60 


B5_12eb:		jsr $b28c		; 20 8c b2
B5_12ee:		ldy $078b, x	; bc 8b 07
B5_12f1:		beq B5_1333 ; f0 40

B5_12f3:		dey				; 88 
B5_12f4:		beq B5_1326 ; f0 30

B5_12f6:		dey				; 88 
B5_12f7:		beq B5_131d ; f0 24

B5_12f9:		dey				; 88 
B5_12fa:		beq B5_1308 ; f0 0c

B5_12fc:		dey				; 88 
B5_12fd:		beq B5_1320 ; f0 21

B5_12ff:		jsr $b348		; 20 48 b3
B5_1302:		bcs B5_1326 ; b0 22

B5_1304:		lda #$02		; a9 02
B5_1306:		bne B5_130f ; d0 07

B5_1308:		jsr $b348		; 20 48 b3
B5_130b:		bcs B5_1326 ; b0 19

B5_130d:		lda #$01		; a9 01
B5_130f:		ldy $3b			; a4 3b
B5_1311:	.db $99 $87 $00
B5_1314:		lda #$1c		; a9 1c
B5_1316:		jsr playSound		; 20 5f e2
B5_1319:		lda #$00		; a9 00
B5_131b:		sta $9c			; 85 9c
B5_131d:		ldx $6c			; a6 6c
B5_131f:		rts				; 60 


B5_1320:		jsr $e748		; 20 48 e7
B5_1323:		jmp $b31d		; 4c 1d b3


B5_1326:		lda #$1b		; a9 1b
B5_1328:		jsr playSound		; 20 5f e2
B5_132b:		lda #$05		; a9 05
B5_132d:		jsr $e760		; 20 60 e7
B5_1330:		jmp $b31d		; 4c 1d b3


B5_1333:		lda #$2c		; a9 2c
B5_1335:		jsr playSound		; 20 5f e2
B5_1338:		clc				; 18 
B5_1339:		lda $3c			; a5 3c
B5_133b:		adc #$20		; 69 20
B5_133d:		cmp #$41		; c9 41
B5_133f:		bcc B5_1343 ; 90 02

B5_1341:		lda #$40		; a9 40
B5_1343:		sta $3c			; 85 3c
B5_1345:		jmp $b31d		; 4c 1d b3


B5_1348:		lda $054e		; ad 4e 05
B5_134b:		cmp #$01		; c9 01
B5_134d:		beq B5_1360 ; f0 11

B5_134f:		cmp #$03		; c9 03
B5_1351:		beq B5_1360 ; f0 0d

B5_1353:		ldy $3b			; a4 3b
B5_1355:	.db $b9 $85 $00
B5_1358:		tay				; a8 
B5_1359:		lda $b083, y	; b9 83 b0
B5_135c:		beq B5_1360 ; f0 02

B5_135e:		clc				; 18 
B5_135f:		rts				; 60 


B5_1360:		sec				; 38 
B5_1361:		rts				; 60 


B5_1362:		ldx $1d			; a6 1d
B5_1364:		lda #$01		; a9 01
B5_1366:		jsr func_1f_0d16		; 20 16 ed
B5_1369:		lda #$00		; a9 00
B5_136b:		sta $62			; 85 62
B5_136d:		ldy $06			; a4 06
B5_136f:	.db $b9 $0d $00
B5_1372:		sec				; 38 
B5_1373:		sbc #$33		; e9 33
B5_1375:		bcs B5_1382 ; b0 0b

B5_1377:		clc				; 18 
B5_1378:		adc $56			; 65 56
B5_137a:		bcs B5_138a ; b0 0e

B5_137c:		sec				; 38 
B5_137d:		sbc #$10		; e9 10
B5_137f:		jmp $b38a		; 4c 8a b3


B5_1382:		clc				; 18 
B5_1383:		adc $56			; 65 56
B5_1385:		bcc B5_138a ; 90 03

B5_1387:		clc				; 18 
B5_1388:		adc #$10		; 69 10
B5_138a:		cmp #$f0		; c9 f0
B5_138c:		bcc B5_1391 ; 90 03

B5_138e:		clc				; 18 
B5_138f:		adc #$10		; 69 10
B5_1391:		and #$f0		; 29 f0
B5_1393:		asl a			; 0a
B5_1394:		rol $62			; 26 62
B5_1396:		asl a			; 0a
B5_1397:		rol $62			; 26 62
B5_1399:		sta $61			; 85 61
B5_139b:		stx $1d			; 86 1d
B5_139d:		ldx $6c			; a6 6c
B5_139f:		lda $0438, x	; bd 38 04
B5_13a2:		and #$f0		; 29 f0
B5_13a4:		lsr a			; 4a
B5_13a5:		lsr a			; 4a
B5_13a6:		lsr a			; 4a
B5_13a7:		clc				; 18 
B5_13a8:		adc $61			; 65 61
B5_13aa:		sta $61			; 85 61
B5_13ac:		ldx $1d			; a6 1d
B5_13ae:		jsr func_1f_0d16		; 20 16 ed
B5_13b1:		lda $62			; a5 62
B5_13b3:		clc				; 18 
B5_13b4:		adc #$28		; 69 28
B5_13b6:		sta $62			; 85 62
B5_13b8:		jsr func_1f_0d16		; 20 16 ed
B5_13bb:		lda #$00		; a9 00
B5_13bd:		jsr func_1f_0d16		; 20 16 ed
B5_13c0:		jsr func_1f_0d16		; 20 16 ed
B5_13c3:		jsr $e8de		; 20 de e8
B5_13c6:		lda #$01		; a9 01
B5_13c8:		jsr func_1f_0d16		; 20 16 ed
B5_13cb:		lda $61			; a5 61
B5_13cd:		clc				; 18 
B5_13ce:		adc #$20		; 69 20
B5_13d0:		jsr func_1f_0d16		; 20 16 ed
B5_13d3:		lda $62			; a5 62
B5_13d5:		jsr func_1f_0d16		; 20 16 ed
B5_13d8:		lda #$00		; a9 00
B5_13da:		jsr func_1f_0d16		; 20 16 ed
B5_13dd:		jsr func_1f_0d16		; 20 16 ed
B5_13e0:		jsr $e8de		; 20 de e8
B5_13e3:		ldy $06			; a4 06
B5_13e5:		ldx $6c			; a6 6c
B5_13e7:	.db $b9 $0d $00
B5_13ea:		sec				; 38 
B5_13eb:		sbc $041c, x	; fd 1c 04
B5_13ee:		tay				; a8 
B5_13ef:		lda #$f8		; a9 f8
B5_13f1:		jsr $fc1e		; 20 1e fc
B5_13f4:		lda $0438, x	; bd 38 04
B5_13f7:		and #$10		; 29 10
B5_13f9:		bne B5_1402 ; d0 07

B5_13fb:		lda $06e0, y	; b9 e0 06
B5_13fe:		and #$0f		; 29 0f
B5_1400:		bpl B5_1407 ; 10 05

B5_1402:		lda $06e0, y	; b9 e0 06
B5_1405:		and #$f0		; 29 f0
B5_1407:		sta $06e0, y	; 99 e0 06
B5_140a:		jmp $b4bb		; 4c bb b4


B5_140d:		lda $68			; a5 68
B5_140f:		bpl B5_1414 ; 10 03

B5_1411:		jmp $b362		; 4c 62 b3


B5_1414:		lda $0438, x	; bd 38 04
B5_1417:		clc				; 18 
B5_1418:		adc $56			; 65 56
B5_141a:		and #$f0		; 29 f0
B5_141c:		sta $0a			; 85 0a
B5_141e:		lda $57			; a5 57
B5_1420:		adc #$00		; 69 00
B5_1422:		sta $0b			; 85 0b
B5_1424:		lda #$00		; a9 00
B5_1426:		sta $62			; 85 62
B5_1428:		ldy $06			; a4 06
B5_142a:	.db $b9 $0d $00
B5_142d:		and #$f0		; 29 f0
B5_142f:		sta $08			; 85 08
B5_1431:		asl a			; 0a
B5_1432:		rol $62			; 26 62
B5_1434:		asl a			; 0a
B5_1435:		rol $62			; 26 62
B5_1437:		sta $61			; 85 61
B5_1439:		lda $0a			; a5 0a
B5_143b:		lsr a			; 4a
B5_143c:		lsr a			; 4a
B5_143d:		lsr a			; 4a
B5_143e:		clc				; 18 
B5_143f:		adc $61			; 65 61
B5_1441:		sta $61			; 85 61
B5_1443:		ldy #$20		; a0 20
B5_1445:		lda $0b			; a5 0b
B5_1447:		eor $75			; 45 75
B5_1449:		and #$01		; 29 01
B5_144b:		beq B5_144f ; f0 02

B5_144d:		ldy #$24		; a0 24
B5_144f:		tya				; 98 
B5_1450:		clc				; 18 
B5_1451:		adc $62			; 65 62
B5_1453:		sta $62			; 85 62
B5_1455:		jsr $e8b5		; 20 b5 e8
B5_1458:		lda #$00		; a9 00
B5_145a:		jsr func_1f_0d16		; 20 16 ed
B5_145d:		jsr func_1f_0d16		; 20 16 ed
B5_1460:		jsr $e8de		; 20 de e8
B5_1463:		lda #$20		; a9 20
B5_1465:		clc				; 18 
B5_1466:		adc $61			; 65 61
B5_1468:		sta $61			; 85 61
B5_146a:		jsr $e8b5		; 20 b5 e8
B5_146d:		lda #$00		; a9 00
B5_146f:		jsr func_1f_0d16		; 20 16 ed
B5_1472:		jsr func_1f_0d16		; 20 16 ed
B5_1475:		jsr $e8de		; 20 de e8
B5_1478:		lda $0a			; a5 0a
B5_147a:		lsr a			; 4a
B5_147b:		lsr a			; 4a
B5_147c:		lsr a			; 4a
B5_147d:		lsr a			; 4a
B5_147e:		lsr a			; 4a
B5_147f:		sta $00			; 85 00
B5_1481:		ldy $0b			; a4 0b
B5_1483:		lda $fd58, y	; b9 58 fd
B5_1486:		clc				; 18 
B5_1487:		adc $00			; 65 00
B5_1489:		cmp #$0c		; c9 0c
B5_148b:		bcc B5_1490 ; 90 03

B5_148d:		sec				; 38 
B5_148e:		sbc #$0c		; e9 0c
B5_1490:		tay				; a8 
B5_1491:		lda $fd4c, y	; b9 4c fd
B5_1494:		sta $00			; 85 00
B5_1496:		lda $08			; a5 08
B5_1498:		sec				; 38 
B5_1499:		sbc #$20		; e9 20
B5_149b:		lsr a			; 4a
B5_149c:		lsr a			; 4a
B5_149d:		lsr a			; 4a
B5_149e:		lsr a			; 4a
B5_149f:		clc				; 18 
B5_14a0:		adc $00			; 65 00
B5_14a2:		tay				; a8 
B5_14a3:		lda $0a			; a5 0a
B5_14a5:		and #$10		; 29 10
B5_14a7:		bne B5_14b3 ; d0 0a

B5_14a9:		lda $06e0, y	; b9 e0 06
B5_14ac:		and #$0f		; 29 0f
B5_14ae:		sta $06e0, y	; 99 e0 06
B5_14b1:		bpl B5_14bb ; 10 08

B5_14b3:		lda $06e0, y	; b9 e0 06
B5_14b6:		and #$f0		; 29 f0
B5_14b8:		sta $06e0, y	; 99 e0 06
B5_14bb:		ldx $6c			; a6 6c
B5_14bd:		lda $0438, x	; bd 38 04
B5_14c0:		sta $04			; 85 04
B5_14c2:		lda $041c, x	; bd 1c 04
B5_14c5:		sta $05			; 85 05
B5_14c7:		lda $1a			; a5 1a
B5_14c9:		and #$07		; 29 07
B5_14cb:		sta $00			; 85 00
B5_14cd:		asl a			; 0a
B5_14ce:		clc				; 18 
B5_14cf:		adc $00			; 65 00
B5_14d1:		sta $00			; 85 00
B5_14d3:		ldx #$14		; a2 14
B5_14d5:		lda $054e, x	; bd 4e 05
B5_14d8:		beq B5_14e2 ; f0 08

B5_14da:		inx				; e8 
B5_14db:		cpx #$17		; e0 17
B5_14dd:		bcc B5_14d5 ; 90 f6

B5_14df:		ldx $6c			; a6 6c
B5_14e1:		rts				; 60 


B5_14e2:		lda #$0d		; a9 0d
B5_14e4:		sta $054e, x	; 9d 4e 05
B5_14e7:		lda #$00		; a9 00
B5_14e9:		sta $0565, x	; 9d 65 05
B5_14ec:		ldy $00			; a4 00
B5_14ee:		inc $00			; e6 00
B5_14f0:		lda $b528, y	; b9 28 b5
B5_14f3:		asl a			; 0a
B5_14f4:		sta $02			; 85 02
B5_14f6:		asl a			; 0a
B5_14f7:		clc				; 18 
B5_14f8:		adc $02			; 65 02
B5_14fa:		tay				; a8 
B5_14fb:		lda $b540, y	; b9 40 b5
B5_14fe:		clc				; 18 
B5_14ff:		adc $04			; 65 04
B5_1501:		sta $0438, x	; 9d 38 04
B5_1504:		lda $b541, y	; b9 41 b5
B5_1507:		clc				; 18 
B5_1508:		adc $05			; 65 05
B5_150a:		sta $041c, x	; 9d 1c 04
B5_150d:		lda $b542, y	; b9 42 b5
B5_1510:		sta $04f2, x	; 9d f2 04
B5_1513:		lda $b543, y	; b9 43 b5
B5_1516:		sta $0509, x	; 9d 09 05
B5_1519:		lda $b544, y	; b9 44 b5
B5_151c:		sta $0520, x	; 9d 20 05
B5_151f:		lda $b545, y	; b9 45 b5
B5_1522:		sta $0537, x	; 9d 37 05
B5_1525:		jmp $b4da		; 4c da b4


B5_1528:		.db $00				; 00
B5_1529:	.db $07
B5_152a:	.db $04
B5_152b:	.db $04
B5_152c:		ora ($03, x)	; 01 03
B5_152e:	.db $02
B5_152f:	.db $07
B5_1530:		ora $04			; 05 04
B5_1532:		asl $01			; 06 01
B5_1534:		.db $00				; 00
B5_1535:	.db $02
B5_1536:	.db $04
B5_1537:		ora ($05, x)	; 01 05
B5_1539:		asl $06			; 06 06
B5_153b:	.db $03
B5_153c:	.db $02
B5_153d:		.db $00				; 00
B5_153e:	.db $07
B5_153f:	.db $04
B5_1540:	.db $03
B5_1541:	.db $fc
B5_1542:		.db $00				; 00
B5_1543:	.db $80
B5_1544:		inc $fe00, x	; fe 00 fe
B5_1547:	.db $04
B5_1548:		inc $fe80, x	; fe 80 fe
B5_154b:	.db $80
B5_154c:		.db $00				; 00
B5_154d:		inc $01, x		; f6 01
B5_154f:	.db $20 $ff $00
B5_1552:	.db $fc
B5_1553:		php				; 08 
B5_1554:	.db $ff
B5_1555:	.db $80
B5_1556:		sbc $06c0, x	; fd c0 06
B5_1559:	.db $fa
B5_155a:		ora ($80, x)	; 01 80
B5_155c:		inc $f880, x	; fe 80 f8
B5_155f:	.db $02
B5_1560:		inc $fec0, x	; fe c0 fe
B5_1563:		rti				; 40 


B5_1564:		php				; 08 
B5_1565:		sed				; f8 
B5_1566:	.db $02
B5_1567:		.db $00				; 00
B5_1568:		sbc $f600, x	; fd 00 f6
B5_156b:	.db $0c
B5_156c:	.db $ff
B5_156d:		rti				; 40 


B5_156e:	.db $fe $40 $00
B5_1571:	.db $20 $6a $00
B5_1574:	.db $8b
B5_1575:		dec $40df, x	; de df 40
B5_1578:		eor ($42, x)	; 41 42
B5_157a:	.db $43
B5_157b:	.db $44
B5_157c:		eor $e0			; 45 e0
B5_157e:		sbc ($e2, x)	; e1 e2
B5_1580:	.db $14
B5_1581:		.db $00				; 00
B5_1582:		sta $eeed		; 8d ed ee
B5_1585:	.db $ef
B5_1586:		;removed
	.db $50 $51

B5_1588:	.db $52
B5_1589:	.db $53
B5_158a:	.db $54
B5_158b:		eor $f0, x		; 55 f0
B5_158d:		sbc ($f2), y	; f1 f2
B5_158f:	.db $dd $13 $00
B5_1592:	.db $82
B5_1593:		sbc $20fe, x	; fd fe 20
B5_1596:		.db $00				; 00
B5_1597:	.db $82
B5_1598:		pla				; 68 
B5_1599:		adc #$1e		; 69 1e
B5_159b:		.db $00				; 00
B5_159c:		txa				; 8a 
B5_159d:		lsr $47			; 46 47
B5_159f:		pha				; 48 
B5_15a0:		eor #$4a		; 49 4a
B5_15a2:	.db $4b
B5_15a3:		jmp $4e4d		; 4c 4d 4e


B5_15a6:	.db $4f
B5_15a7:		asl $00, x		; 16 00
B5_15a9:		txa				; 8a 
B5_15aa:		lsr $57, x		; 56 57
B5_15ac:		cli				; 58 
B5_15ad:		eor $5b5a, y	; 59 5a 5b
B5_15b0:	.db $5c
B5_15b1:		eor $5f5e, x	; 5d 5e 5f
B5_15b4:		asl $00, x		; 16 00
B5_15b6:		txa				; 8a 
B5_15b7:		ror $67			; 66 67
B5_15b9:		.db $00				; 00
B5_15ba:		.db $00				; 00
B5_15bb:		ror a			; 6a
B5_15bc:		.db $00				; 00
B5_15bd:		.db $00				; 00
B5_15be:		adc $6f6e		; 6d 6e 6f
B5_15c1:	.db $17
B5_15c2:		.db $00				; 00
B5_15c3:		sta ($61, x)	; 81 61
B5_15c5:	.db $1b
B5_15c6:		.db $00				; 00
B5_15c7:		;removed
	.db $90 $70

B5_15c9:		adc ($72), y	; 71 72
B5_15cb:	.db $73
B5_15cc:	.db $74
B5_15cd:		adc $76, x		; 75 76
B5_15cf:	.db $77
B5_15d0:		sei				; 78 
B5_15d1:		adc $7b7a, y	; 79 7a 7b
B5_15d4:	.db $7c
B5_15d5:		adc $7f7e, x	; 7d 7e 7f
B5_15d8:		bpl B5_15da ; 10 00

B5_15da:		bcc B5_155c ; 90 80

B5_15dc:		sta ($82, x)	; 81 82
B5_15de:	.db $83
B5_15df:		sty $85			; 84 85
B5_15e1:		stx $87			; 86 87
B5_15e3:		dey				; 88 
B5_15e4:	.db $89
B5_15e5:		txa				; 8a 
B5_15e6:	.db $8b
B5_15e7:		sty $8e8d		; 8c 8d 8e
B5_15ea:	.db $8f
B5_15eb:		bpl B5_15ed ; 10 00

B5_15ed:		;removed
	.db $90 $90

B5_15ef:		sta ($92), y	; 91 92
B5_15f1:	.db $93
B5_15f2:		sty $95, x		; 94 95
B5_15f4:		stx $97, y		; 96 97
B5_15f6:		tya				; 98 
B5_15f7:		sta $9b9a, y	; 99 9a 9b
B5_15fa:	.db $9c
B5_15fb:		sta $9f9e, x	; 9d 9e 9f
B5_15fe:		bpl B5_1600 ; 10 00

B5_1600:		bcc B5_15a2 ; 90 a0

B5_1602:		lda ($a2, x)	; a1 a2
B5_1604:	.db $a3
B5_1605:		ldy $a5			; a4 a5
B5_1607:		ldx $a7			; a6 a7
B5_1609:		tay				; a8 
B5_160a:		lda #$aa		; a9 aa
B5_160c:	.db $ab
B5_160d:		ldy $aead		; ac ad ae
B5_1610:	.db $af
B5_1611:		bpl B5_1613 ; 10 00

B5_1613:		stx $b1b0		; 8e b0 b1
B5_1616:		.db $00				; 00
B5_1617:	.db $b3
B5_1618:		ldy $b5, x		; b4 b5
B5_161a:		ldx $b7, y		; b6 b7
B5_161c:		clv				; b8 
B5_161d:		lda $bbba, y	; b9 ba bb
B5_1620:		ldy $15fc, x	; bc fc 15
B5_1623:		.db $00				; 00
B5_1624:		txa				; 8a 
B5_1625:	.db $c3
B5_1626:		cpy $c5			; c4 c5
B5_1628:		dec $c7			; c6 c7
B5_162a:		iny				; c8 
B5_162b:		cmp #$ca		; c9 ca
B5_162d:	.db $cb
B5_162e:	.db $cc $16 $00
B5_1631:		txa				; 8a 
B5_1632:	.db $d3
B5_1633:	.db $d4
B5_1634:		cmp $d6, x		; d5 d6
B5_1636:	.db $d7
B5_1637:		cld				; d8 
B5_1638:		cmp $dbda, y	; d9 da db
B5_163b:	.db $dc
B5_163c:		asl $00, x		; 16 00
B5_163e:		txa				; 8a 
B5_163f:	.db $e3
B5_1640:		cpx $e5			; e4 e5
B5_1642:		inc $e7			; e6 e7
B5_1644:		inx				; e8 
B5_1645:		sbc #$ea		; e9 ea
B5_1647:	.db $eb
B5_1648:	.db $ec $16 $00
B5_164b:	.db $83
B5_164c:	.db $f3
B5_164d:	.db $f4
B5_164e:		sbc $1b, x		; f5 1b
B5_1650:		.db $00				; 00
B5_1651:		sta $1c23		; 8d 23 1c
B5_1654:		.db $00				; 00
B5_1655:		;removed
	.db $10 $1d

B5_1657:	.db $13
B5_1658:		.db $00				; 00
B5_1659:	.db $37
B5_165a:		.db $00				; 00
B5_165b:	.db $02
B5_165c:		asl a			; 0a
B5_165d:		asl a			; 0a
B5_165e:		ora ($0e, x)	; 01 0e
B5_1660:		.db $00				; 00
B5_1661:		tya				; 98 
B5_1662:	.db $1a
B5_1663:		asl $101d, x	; 1e 1d 10
B5_1666:	.db $1c
B5_1667:		clc				; 18 
B5_1668:		.db $00				; 00
B5_1669:		clc				; 18 
B5_166a:		ora $2413, x	; 1d 13 24
B5_166d:	.db $22
B5_166e:	.db $23
B5_166f:		and ($28, x)	; 21 28
B5_1671:		.db $00				; 00
B5_1672:	.db $12
B5_1673:		asl $380b, x	; 1e 0b 38
B5_1676:	.db $1b
B5_1677:	.db $23
B5_1678:	.db $13
B5_1679:	.db $0b
B5_167a:		asl $8b00		; 0e 00 8b
B5_167d:	.db $1b
B5_167e:		clc				; 18 
B5_167f:	.db $12
B5_1680:	.db $14
B5_1681:		ora $1422, x	; 1d 22 14
B5_1684:	.db $13
B5_1685:		.db $00				; 00
B5_1686:		ora ($28), y	; 11 28
B5_1688:	.db $0f
B5_1689:		.db $00				; 00
B5_168a:		tya				; 98 
B5_168b:		ora $1d18, x	; 1d 18 1d
B5_168e:	.db $23
B5_168f:	.db $14
B5_1690:		ora $1e13, x	; 1d 13 1e
B5_1693:		.db $00				; 00
B5_1694:	.db $1e $15 $00
B5_1697:		;removed
	.db $10 $1c

B5_1699:	.db $14
B5_169a:		and ($18, x)	; 21 18
B5_169c:	.db $12
B5_169d:		bpl B5_169f ; 10 00

B5_169f:		clc				; 18 
B5_16a0:		ora $0b12, x	; 1d 12 0b
B5_16a3:		ror $4800, x	; 7e 00 48
B5_16a6:		.db $00				; 00
B5_16a7:	.db $03
B5_16a8:		beq B5_162b ; f0 81

B5_16aa:		bmi B5_16b0 ; 30 04

B5_16ac:		.db $00				; 00
B5_16ad:		sty $0f			; 84 0f
B5_16af:	.db $4f
B5_16b0:	.db $9f
B5_16b1:	.db $23
B5_16b2:	.db $04
B5_16b3:		.db $00				; 00
B5_16b4:		sty $50			; 84 50
B5_16b6:	.db $04
B5_16b7:	.db $89
B5_16b8:	.db $52
B5_16b9:	.db $04
B5_16ba:		.db $00				; 00
B5_16bb:		sty $55			; 84 55
B5_16bd:	.db $22
B5_16be:		dey				; 88 
B5_16bf:		eor $04, x		; 55 04
B5_16c1:		.db $00				; 00
B5_16c2:		sty $44			; 84 44
B5_16c4:	.db $22
B5_16c5:		dey				; 88 
B5_16c6:		ora ($1a), y	; 11 1a
B5_16c8:		.db $00				; 00
B5_16c9:	.db $ff
B5_16ca:		lda $b7dd, x	; bd dd b7
B5_16cd:		sta $00			; 85 00
B5_16cf:		lda $b7de, x	; bd de b7
B5_16d2:		sta $01			; 85 01
B5_16d4:		ldy #$00		; a0 00
B5_16d6:		sty $06			; 84 06
B5_16d8:		lda $07ef		; ad ef 07
B5_16db:		ora $07f0		; 0d f0 07
B5_16de:		bne B5_16f1 ; d0 11

B5_16e0:		lda ($00), y	; b1 00
B5_16e2:		sta $02			; 85 02
B5_16e4:		iny				; c8 
B5_16e5:		lda ($00), y	; b1 00
B5_16e7:		sta $03			; 85 03
B5_16e9:		iny				; c8 
B5_16ea:		lda #$00		; a9 00
B5_16ec:		sta $10			; 85 10
B5_16ee:		jmp $b70b		; 4c 0b b7


B5_16f1:		ldy #$00		; a0 00
B5_16f3:		lda $07f1		; ad f1 07
B5_16f6:		sta $02			; 85 02
B5_16f8:		lda $07f2		; ad f2 07
B5_16fb:		sta $03			; 85 03
B5_16fd:		lda $07ef		; ad ef 07
B5_1700:		sta $00			; 85 00
B5_1702:		lda $07f0		; ad f0 07
B5_1705:		sta $01			; 85 01
B5_1707:		lda #$01		; a9 01
B5_1709:		sta $10			; 85 10
B5_170b:		ldx $1d			; a6 1d
B5_170d:		lda #$0a		; a9 0a
B5_170f:		jsr $b995		; 20 95 b9
B5_1712:		lda $02			; a5 02
B5_1714:		jsr $b995		; 20 95 b9
B5_1717:		lda $03			; a5 03
B5_1719:		jsr $b995		; 20 95 b9
B5_171c:		stx $17			; 86 17
B5_171e:		inx				; e8 
B5_171f:		lda $10			; a5 10
B5_1721:		beq B5_1729 ; f0 06

B5_1723:		lda $07f3		; ad f3 07
B5_1726:		jmp $b72b		; 4c 2b b7


B5_1729:		lda ($00), y	; b1 00
B5_172b:		cmp #$ff		; c9 ff
B5_172d:		beq B5_174d ; f0 1e

B5_172f:		bpl B5_1773 ; 10 42

B5_1731:		and #$7f		; 29 7f
B5_1733:		sta $08			; 85 08
B5_1735:		txa				; 8a 
B5_1736:		clc				; 18 
B5_1737:		adc $08			; 65 08
B5_1739:		sbc #$3e		; e9 3e
B5_173b:		beq B5_173f ; f0 02

B5_173d:		bcs B5_1750 ; b0 11

B5_173f:		iny				; c8 
B5_1740:		lda ($00), y	; b1 00
B5_1742:		jsr $b7d6		; 20 d6 b7
B5_1745:		dec $08			; c6 08
B5_1747:		bne B5_173f ; d0 f6

B5_1749:		iny				; c8 
B5_174a:		jmp $b729		; 4c 29 b7


B5_174d:		jmp $b7c7		; 4c c7 b7


B5_1750:		sta $07f3		; 8d f3 07
B5_1753:		lda $08			; a5 08
B5_1755:		sec				; 38 
B5_1756:		sbc $07f3		; edf3 07
B5_1759:		sta $08			; 85 08
B5_175b:		lda $07f3		; ad f3 07
B5_175e:		ora #$80		; 09 80
B5_1760:		sta $07f3		; 8d f3 07
B5_1763:		lda $08			; a5 08
B5_1765:		beq B5_17a5 ; f0 3e

B5_1767:		iny				; c8 
B5_1768:		lda ($00), y	; b1 00
B5_176a:		jsr $b7d6		; 20 d6 b7
B5_176d:		dec $08			; c6 08
B5_176f:		bne B5_1767 ; d0 f6

B5_1771:		beq B5_17a5 ; f0 32

B5_1773:		sta $08			; 85 08
B5_1775:		txa				; 8a 
B5_1776:		clc				; 18 
B5_1777:		adc $08			; 65 08
B5_1779:		sbc #$3e		; e9 3e
B5_177b:		beq B5_177f ; f0 02

B5_177d:		bcs B5_178d ; b0 0e

B5_177f:		iny				; c8 
B5_1780:		lda ($00), y	; b1 00
B5_1782:		jsr $b7d6		; 20 d6 b7
B5_1785:		dec $08			; c6 08
B5_1787:		bne B5_1782 ; d0 f9

B5_1789:		iny				; c8 
B5_178a:		jmp $b729		; 4c 29 b7


B5_178d:		sta $07f3		; 8d f3 07
B5_1790:		lda $08			; a5 08
B5_1792:		sec				; 38 
B5_1793:		sbc $07f3		; edf3 07
B5_1796:		sta $08			; 85 08
B5_1798:		beq B5_17a5 ; f0 0b

B5_179a:		iny				; c8 
B5_179b:		lda ($00), y	; b1 00
B5_179d:		jsr $b7d6		; 20 d6 b7
B5_17a0:		dec $08			; c6 08
B5_17a2:		bne B5_179d ; d0 f9

B5_17a4:		dey				; 88 
B5_17a5:		jsr $b7cc		; 20 cc b7
B5_17a8:		lda $02			; a5 02
B5_17aa:		clc				; 18 
B5_17ab:		adc $06			; 65 06
B5_17ad:		sta $07f1		; 8d f1 07
B5_17b0:		lda $03			; a5 03
B5_17b2:		adc #$00		; 69 00
B5_17b4:		sta $07f2		; 8d f2 07
B5_17b7:		tya				; 98 
B5_17b8:		clc				; 18 
B5_17b9:		adc $00			; 65 00
B5_17bb:		sta $07ef		; 8d ef 07
B5_17be:		lda $01			; a5 01
B5_17c0:		adc #$00		; 69 00
B5_17c2:		sta $07f0		; 8d f0 07
B5_17c5:		clc				; 18 
B5_17c6:		rts				; 60 


B5_17c7:		jsr $b7cc		; 20 cc b7
B5_17ca:		sec				; 38 
B5_17cb:		rts				; 60 


B5_17cc:		stx $1d			; 86 1d
B5_17ce:		ldx $17			; a6 17
B5_17d0:		lda $06			; a5 06
B5_17d2:		sta $0300, x	; 9d 00 03
B5_17d5:		rts				; 60 


B5_17d6:		sta $0300, x	; 9d 00 03
B5_17d9:		inc $06			; e6 06
B5_17db:		inx				; e8 
B5_17dc:		rts				; 60 


B5_17dd:		;removed
	.db $70 $b5

B5_17df:	.db $72
B5_17e0:	.db $d7
B5_17e1:		lda $b8bb, x	; bd bb b8
B5_17e4:		sta $00			; 85 00
B5_17e6:		lda $b8bc, x	; bd bc b8
B5_17e9:		sta $01			; 85 01
B5_17eb:		lda $07ef		; ad ef 07
B5_17ee:		and #$fc		; 29 fc
B5_17f0:		asl a			; 0a
B5_17f1:		sta $05			; 85 05
B5_17f3:		ldx $1d			; a6 1d
B5_17f5:		lda #$01		; a9 01
B5_17f7:		jsr $b995		; 20 95 b9
B5_17fa:		lda #$20		; a9 20
B5_17fc:		sta $03			; 85 03
B5_17fe:		lda $ff			; a5 ff
B5_1800:		and #$02		; 29 02
B5_1802:		bne B5_1808 ; d0 04

B5_1804:		lda #$28		; a9 28
B5_1806:		sta $03			; 85 03
B5_1808:		lda #$00		; a9 00
B5_180a:		sta $02			; 85 02
B5_180c:		lda $07ef		; ad ef 07
B5_180f:		asl a			; 0a
B5_1810:		rol $02			; 26 02
B5_1812:		asl a			; 0a
B5_1813:		rol $02			; 26 02
B5_1815:		asl a			; 0a
B5_1816:		rol $02			; 26 02
B5_1818:		asl a			; 0a
B5_1819:		rol $02			; 26 02
B5_181b:		asl a			; 0a
B5_181c:		rol $02			; 26 02
B5_181e:		jsr $b995		; 20 95 b9
B5_1821:		lda $02			; a5 02
B5_1823:		ora $03			; 05 03
B5_1825:		jsr $b995		; 20 95 b9
B5_1828:		lda #$08		; a9 08
B5_182a:		sta $08			; 85 08
B5_182c:		ldy $05			; a4 05
B5_182e:		lda #$00		; a9 00
B5_1830:		sta $07			; 85 07
B5_1832:		lda ($00), y	; b1 00
B5_1834:		asl a			; 0a
B5_1835:		rol $07			; 26 07
B5_1837:		asl a			; 0a
B5_1838:		rol $07			; 26 07
B5_183a:		asl a			; 0a
B5_183b:		rol $07			; 26 07
B5_183d:		asl a			; 0a
B5_183e:		rol $07			; 26 07
B5_1840:		sta $06			; 85 06
B5_1842:		sty $0f			; 84 0f
B5_1844:		ldy #$00		; a0 00
B5_1846:		lda $b8b9, y	; b9 b9 b8
B5_1849:		clc				; 18 
B5_184a:		adc $06			; 65 06
B5_184c:		sta $06			; 85 06
B5_184e:		lda $b8ba, y	; b9 ba b8
B5_1851:		adc $07			; 65 07
B5_1853:		sta $07			; 85 07
B5_1855:		ldy $0f			; a4 0f
B5_1857:		lda $07ef		; ad ef 07
B5_185a:		and #$03		; 29 03
B5_185c:		asl a			; 0a
B5_185d:		asl a			; 0a
B5_185e:		tay				; a8 
B5_185f:		lda #$04		; a9 04
B5_1861:		sta $04			; 85 04
B5_1863:		lda ($06), y	; b1 06
B5_1865:		jsr $b995		; 20 95 b9
B5_1868:		iny				; c8 
B5_1869:		dec $04			; c6 04
B5_186b:		bne B5_1863 ; d0 f6

B5_186d:		inc $05			; e6 05
B5_186f:		dec $08			; c6 08
B5_1871:		bne B5_182c ; d0 b9

B5_1873:		lda #$ff		; a9 ff
B5_1875:		jsr $b995		; 20 95 b9
B5_1878:		jsr $b87e		; 20 7e b8
B5_187b:		stx $1d			; 86 1d
B5_187d:		rts				; 60 


B5_187e:		lda $07ef		; ad ef 07
B5_1881:		and #$03		; 29 03
B5_1883:		bne B5_18b8 ; d0 33

B5_1885:		lda #$0a		; a9 0a
B5_1887:		jsr $b995		; 20 95 b9
B5_188a:		lda $07ef		; ad ef 07
B5_188d:		and #$1c		; 29 1c
B5_188f:		asl a			; 0a
B5_1890:		sta $05			; 85 05
B5_1892:		ora #$c0		; 09 c0
B5_1894:		jsr $b995		; 20 95 b9
B5_1897:		lda $03			; a5 03
B5_1899:		ora #$03		; 09 03
B5_189b:		jsr $b995		; 20 95 b9
B5_189e:		lda #$08		; a9 08
B5_18a0:		jsr $b995		; 20 95 b9
B5_18a3:		sta $08			; 85 08
B5_18a5:		ldy $05			; a4 05
B5_18a7:		lda ($00), y	; b1 00
B5_18a9:		tay				; a8 
B5_18aa:		lda $bd9a, y	; b9 9a bd
B5_18ad:		jsr $b995		; 20 95 b9
B5_18b0:		inc $05			; e6 05
B5_18b2:		dec $08			; c6 08
B5_18b4:		bne B5_18a5 ; d0 ef

B5_18b6:		stx $1d			; 86 1d
B5_18b8:		rts				; 60 


B5_18b9:	.db $1a
B5_18ba:	.db $bb
B5_18bb:	.db $02
B5_18bc:		ldx $bdc2, y	; be c2 bd
B5_18bf:	.db $42
B5_18c0:		ldx $be82, y	; be 82 be
B5_18c3:	.db $82
B5_18c4:		ldx $8bbd, y	; be bd 8b
B5_18c7:	.db $b9 $85 $00
B5_18ca:		lda $b98c, x	; bd 8c b9
B5_18cd:		sta $01			; 85 01
B5_18cf:		lda $07f1		; ad f1 07
B5_18d2:		ora $07f2		; 0d f2 07
B5_18d5:		beq B5_18e1 ; f0 0a

B5_18d7:		lda $07f1		; ad f1 07
B5_18da:		sta $00			; 85 00
B5_18dc:		lda $07f2		; ad f2 07
B5_18df:		sta $01			; 85 01
B5_18e1:		ldy #$00		; a0 00
B5_18e3:		lda ($00), y	; b1 00
B5_18e5:		cmp #$81		; c9 81
B5_18e7:		bne B5_18ec ; d0 03

B5_18e9:		jmp $b989		; 4c 89 b9


B5_18ec:		sta $08			; 85 08
B5_18ee:		lda $07ef		; ad ef 07
B5_18f1:		and #$fc		; 29 fc
B5_18f3:		asl a			; 0a
B5_18f4:		sta $05			; 85 05
B5_18f6:		ldx $1d			; a6 1d
B5_18f8:		lda #$01		; a9 01
B5_18fa:		jsr $b995		; 20 95 b9
B5_18fd:		lda #$20		; a9 20
B5_18ff:		sta $03			; 85 03
B5_1901:		lda $ff			; a5 ff
B5_1903:		and #$02		; 29 02
B5_1905:		bne B5_190b ; d0 04

B5_1907:		lda #$28		; a9 28
B5_1909:		sta $03			; 85 03
B5_190b:		lda #$00		; a9 00
B5_190d:		sta $02			; 85 02
B5_190f:		lda $07ef		; ad ef 07
B5_1912:		asl a			; 0a
B5_1913:		rol $02			; 26 02
B5_1915:		asl a			; 0a
B5_1916:		rol $02			; 26 02
B5_1918:		asl a			; 0a
B5_1919:		rol $02			; 26 02
B5_191b:		asl a			; 0a
B5_191c:		rol $02			; 26 02
B5_191e:		asl a			; 0a
B5_191f:		rol $02			; 26 02
B5_1921:		clc				; 18 
B5_1922:		adc $08			; 65 08
B5_1924:		sta $09			; 85 09
B5_1926:		lda $02			; a5 02
B5_1928:		adc #$00		; 69 00
B5_192a:		sta $02			; 85 02
B5_192c:		lda $09			; a5 09
B5_192e:		jsr $b995		; 20 95 b9
B5_1931:		lda $02			; a5 02
B5_1933:		ora $03			; 05 03
B5_1935:		jsr $b995		; 20 95 b9
B5_1938:		iny				; c8 
B5_1939:		lda ($00), y	; b1 00
B5_193b:		cmp #$80		; c9 80
B5_193d:		beq B5_196a ; f0 2b

B5_193f:		sta $0a			; 85 0a
B5_1941:		iny				; c8 
B5_1942:		lda ($00), y	; b1 00
B5_1944:		cmp #$10		; c9 10
B5_1946:		beq B5_1958 ; f0 10

B5_1948:		cmp #$c0		; c9 c0
B5_194a:		beq B5_1958 ; f0 0c

B5_194c:		lda $07ef		; ad ef 07
B5_194f:		and #$01		; 29 01
B5_1951:		beq B5_1964 ; f0 11

B5_1953:		lda $0a			; a5 0a
B5_1955:		jmp $b964		; 4c 64 b9


B5_1958:		iny				; c8 
B5_1959:		sta $0b			; 85 0b
B5_195b:		lda $07ef		; ad ef 07
B5_195e:		and #$01		; 29 01
B5_1960:		bne B5_1953 ; d0 f1

B5_1962:		lda $0b			; a5 0b
B5_1964:		jsr $b995		; 20 95 b9
B5_1967:		jmp $b939		; 4c 39 b9


B5_196a:		lda #$ff		; a9 ff
B5_196c:		jsr $b995		; 20 95 b9
B5_196f:		stx $1d			; 86 1d
B5_1971:		lda $07ef		; ad ef 07
B5_1974:		and #$01		; 29 01
B5_1976:		beq B5_1987 ; f0 0f

B5_1978:		iny				; c8 
B5_1979:		tya				; 98 
B5_197a:		clc				; 18 
B5_197b:		adc $00			; 65 00
B5_197d:		sta $07f1		; 8d f1 07
B5_1980:		lda $01			; a5 01
B5_1982:		adc #$00		; 69 00
B5_1984:		sta $07f2		; 8d f2 07
B5_1987:		clc				; 18 
B5_1988:		rts				; 60 


B5_1989:		sec				; 38 
B5_198a:		rts				; 60 


B5_198b:	.db $74
B5_198c:	.db $da
B5_198d:		ora $db			; 05 db
B5_198f:		ldy $29db, x	; bc db 29
B5_1992:		cmp $d9bc, y	; d9 bc d9
B5_1995:		sta $0300, x	; 9d 00 03
B5_1998:		inx				; e8 
B5_1999:		rts				; 60 


B5_199a:		lda #$18		; a9 18
B5_199c:		sta $0a			; 85 0a
B5_199e:		lda #$80		; a9 80
B5_19a0:		sta $0791		; 8d 91 07
B5_19a3:		lda $0788		; ad 88 07
B5_19a6:		clc				; 18 
B5_19a7:		adc #$18		; 69 18
B5_19a9:		sta $01			; 85 01
B5_19ab:		lda $0787		; ad 87 07
B5_19ae:		adc #$00		; 69 00
B5_19b0:		sta $00			; 85 00
B5_19b2:		lda $0786		; ad 86 07
B5_19b5:		clc				; 18 
B5_19b6:		adc #$01		; 69 01
B5_19b8:		asl a			; 0a
B5_19b9:		tay				; a8 
B5_19ba:		lda $ba66, y	; b9 66 ba
B5_19bd:		cmp $00			; c5 00
B5_19bf:		bcc B5_19cc ; 90 0b

B5_19c1:		bne B5_19cf ; d0 0c

B5_19c3:		lda $ba65, y	; b9 65 ba
B5_19c6:		cmp $01			; c5 01
B5_19c8:		bcc B5_19cc ; 90 02

B5_19ca:		bne B5_19cf ; d0 03

B5_19cc:		inc $0786		; ee 86 07
B5_19cf:		lda #$08		; a9 08
B5_19d1:		sta $078c		; 8d 8c 07
B5_19d4:		lda $0788		; ad 88 07
B5_19d7:		clc				; 18 
B5_19d8:		adc #$18		; 69 18
B5_19da:		sta $00			; 85 00
B5_19dc:		lda $0787		; ad 87 07
B5_19df:		adc #$00		; 69 00
B5_19e1:		sta $01			; 85 01
B5_19e3:		lda $0786		; ad 86 07
B5_19e6:		clc				; 18 
B5_19e7:		adc #$01		; 69 01
B5_19e9:		asl a			; 0a
B5_19ea:		tay				; a8 
B5_19eb:		lda #$00		; a9 00
B5_19ed:		sta $08			; 85 08
B5_19ef:		sta $078f		; 8d 8f 07
B5_19f2:		jsr $ba22		; 20 22 ba
B5_19f5:		sta $078d		; 8d 8d 07
B5_19f8:		lda $0786		; ad 86 07
B5_19fb:		clc				; 18 
B5_19fc:		adc #$02		; 69 02
B5_19fe:		asl a			; 0a
B5_19ff:		tay				; a8 
B5_1a00:		lda #$01		; a9 01
B5_1a02:		sta $08			; 85 08
B5_1a04:		lda #$00		; a9 00
B5_1a06:		sta $0790		; 8d 90 07
B5_1a09:		jsr $ba22		; 20 22 ba
B5_1a0c:		sta $078e		; 8d 8e 07
B5_1a0f:		lda $078c		; ad 8c 07
B5_1a12:		sta $41			; 85 41
B5_1a14:		lda $078d		; ad 8d 07
B5_1a17:		clc				; 18 
B5_1a18:		adc $41			; 65 41
B5_1a1a:		sta $42			; 85 42
B5_1a1c:		lda $0791		; ad 91 07
B5_1a1f:		sta $40			; 85 40
B5_1a21:		rts				; 60 


B5_1a22:		lda $ba65, y	; b9 65 ba
B5_1a25:		sta $02			; 85 02
B5_1a27:		sec				; 38 
B5_1a28:		sbc $00			; e5 00
B5_1a2a:		sta $00			; 85 00
B5_1a2c:		lda $ba66, y	; b9 66 ba
B5_1a2f:		sta $03			; 85 03
B5_1a31:		sbc $01			; e5 01
B5_1a33:		beq B5_1a45 ; f0 10

B5_1a35:		ldy $08			; a4 08
B5_1a37:		bne B5_1a3e ; d0 05

B5_1a39:		lda #$80		; a9 80
B5_1a3b:		sta $0791		; 8d 91 07
B5_1a3e:		lda #$01		; a9 01
B5_1a40:		sta $078f, y	; 99 8f 07
B5_1a43:		bne B5_1a50 ; d0 0b

B5_1a45:		lda $00			; a5 00
B5_1a47:		clc				; 18 
B5_1a48:		adc $0a			; 65 0a
B5_1a4a:		sta $0a			; 85 0a
B5_1a4c:		bcs B5_1a35 ; b0 e7

B5_1a4e:		lda $00			; a5 00
B5_1a50:		cmp #$f0		; c9 f0
B5_1a52:		bcs B5_1a35 ; b0 e1

B5_1a54:		cmp #$03		; c9 03
B5_1a56:		bcs B5_1a5a ; b0 02

B5_1a58:		lda #$03		; a9 03
B5_1a5a:		pha				; 48 
B5_1a5b:		lda $02			; a5 02
B5_1a5d:		sta $00			; 85 00
B5_1a5f:		lda $03			; a5 03
B5_1a61:		sta $01			; 85 01
B5_1a63:		pla				; 68 
B5_1a64:		rts				; 60 


B5_1a65:		.db $00				; 00
B5_1a66:		.db $00				; 00
B5_1a67:		beq B5_1a69 ; f0 00

B5_1a69:		cpx #$02		; e0 02
B5_1a6b:		jsr $d003		; 20 03 d0
B5_1a6e:	.db $03
B5_1a6f:		cpy #$04		; c0 04
B5_1a71:		pha				; 48 
B5_1a72:		ora $00			; 05 00
B5_1a74:		asl $00			; 06 00
B5_1a76:	.db $0c
B5_1a77:		lda #$44		; a9 44
B5_1a79:		sta $25			; 85 25
B5_1a7b:		rts				; 60 


B5_1a7c:		lda $07ee		; ad ee 07
B5_1a7f:		lsr a			; 4a
B5_1a80:		ror a			; 6a
B5_1a81:		ror a			; 6a
B5_1a82:		ror a			; 6a
B5_1a83:		pha				; 48 
B5_1a84:		ldx $1d			; a6 1d
B5_1a86:		lda #$01		; a9 01
B5_1a88:		jsr $b995		; 20 95 b9
B5_1a8b:		pla				; 68 
B5_1a8c:		jsr $b995		; 20 95 b9
B5_1a8f:		lda $07ee		; ad ee 07
B5_1a92:		and #$08		; 29 08
B5_1a94:		beq B5_1a9a ; f0 04

B5_1a96:		lda #$25		; a9 25
B5_1a98:		bne B5_1a9c ; d0 02

B5_1a9a:		lda #$24		; a9 24
B5_1a9c:		jsr $b995		; 20 95 b9
B5_1a9f:		ldy #$20		; a0 20
B5_1aa1:		lda #$00		; a9 00
B5_1aa3:		jsr $b995		; 20 95 b9
B5_1aa6:		dey				; 88 
B5_1aa7:		bne B5_1aa3 ; d0 fa

B5_1aa9:		lda #$ff		; a9 ff
B5_1aab:		jsr $b995		; 20 95 b9
B5_1aae:		stx $1d			; 86 1d
B5_1ab0:		inc $07ee		; ee ee 07
B5_1ab3:		lda $07ee		; ad ee 07
B5_1ab6:		cmp #$0a		; c9 0a
B5_1ab8:		bcc B5_1abb ; 90 01

B5_1aba:		rts				; 60 


B5_1abb:		rts				; 60 


B5_1abc:		lda #$00		; a9 00
B5_1abe:		ldy #$13		; a0 13
B5_1ac0:		sta $0794, y	; 99 94 07
B5_1ac3:		dey				; 88 
B5_1ac4:		bne B5_1ac0 ; d0 fa

B5_1ac6:		lda #$80		; a9 80
B5_1ac8:		sta $40			; 85 40
B5_1aca:		lda #$08		; a9 08
B5_1acc:		sta $41			; 85 41
B5_1ace:		lda #$0e		; a9 0e
B5_1ad0:		sta $42			; 85 42
B5_1ad2:		lda #$00		; a9 00
B5_1ad4:		sta $078a		; 8d 8a 07
B5_1ad7:		lda #$01		; a9 01
B5_1ad9:		sta $078b		; 8d 8b 07
B5_1adc:		rts				; 60 


B5_1add:		ldx #$00		; a2 00
B5_1adf:		stx $08			; 86 08
B5_1ae1:		txa				; 8a 
B5_1ae2:		asl a			; 0a
B5_1ae3:		tay				; a8 
B5_1ae4:		lda $bb08, y	; b9 08 bb
B5_1ae7:		clc				; 18 
B5_1ae8:		adc $079e, x	; 7d 9e 07
B5_1aeb:		sta $079e, x	; 9d 9e 07
B5_1aee:		lda $bb09, y	; b9 09 bb
B5_1af1:		adc $0794, x	; 7d 94 07
B5_1af4:		bcc B5_1afa ; 90 04

B5_1af6:		lda #$ff		; a9 ff
B5_1af8:		inc $08			; e6 08
B5_1afa:		sta $0794, x	; 9d 94 07
B5_1afd:		inx				; e8 
B5_1afe:		cpx #$09		; e0 09
B5_1b00:		bne B5_1ae1 ; d0 df

B5_1b02:		lda #$00		; a9 00
B5_1b04:		sta $0794, x	; 9d 94 07
B5_1b07:		rts				; 60 


B5_1b08:	.db $80
B5_1b09:		ora ($c0, x)	; 01 c0
B5_1b0b:		ora ($40, x)	; 01 40
B5_1b0d:		ora ($00, x)	; 01 00
B5_1b0f:		ora ($40, x)	; 01 40
B5_1b11:		ora ($c0, x)	; 01 c0
B5_1b13:		.db $00				; 00
B5_1b14:		.db $00				; 00
B5_1b15:		ora ($80, x)	; 01 80
B5_1b17:		ora ($40, x)	; 01 40
B5_1b19:		ora ($00, x)	; 01 00
B5_1b1b:		.db $00				; 00
B5_1b1c:		.db $00				; 00
B5_1b1d:		.db $00				; 00
B5_1b1e:		.db $00				; 00
B5_1b1f:		.db $00				; 00
B5_1b20:		.db $00				; 00
B5_1b21:		.db $00				; 00
B5_1b22:		.db $00				; 00
B5_1b23:		.db $00				; 00
B5_1b24:		.db $00				; 00
B5_1b25:		.db $00				; 00
B5_1b26:		.db $00				; 00
B5_1b27:		.db $00				; 00
B5_1b28:		.db $00				; 00
B5_1b29:		.db $00				; 00
B5_1b2a:		.db $00				; 00
B5_1b2b:		.db $00				; 00
B5_1b2c:		.db $00				; 00
B5_1b2d:		.db $00				; 00
B5_1b2e:		rol $2e2e		; 2e 2e 2e
B5_1b31:	.db $2e $00 $00
B5_1b34:		.db $00				; 00
B5_1b35:		.db $00				; 00
B5_1b36:		.db $00				; 00
B5_1b37:		.db $00				; 00
B5_1b38:		.db $00				; 00
B5_1b39:		.db $00				; 00
B5_1b3a:		.db $00				; 00
B5_1b3b:		.db $00				; 00
B5_1b3c:		.db $00				; 00
B5_1b3d:		.db $00				; 00
B5_1b3e:		rol $2e2e		; 2e 2e 2e
B5_1b41:	.db $2e $00 $00
B5_1b44:		.db $00				; 00
B5_1b45:	.db $2d $00 $00
B5_1b48:		.db $00				; 00
B5_1b49:	.db $2d $00 $00
B5_1b4c:		.db $00				; 00
B5_1b4d:	.db $2d $00 $00
B5_1b50:		.db $00				; 00
B5_1b51:	.db $2d $00 $00
B5_1b54:		.db $00				; 00
B5_1b55:	.db $2d $00 $00
B5_1b58:		.db $00				; 00
B5_1b59:	.db $2d $00 $00
B5_1b5c:		.db $00				; 00
B5_1b5d:	.db $2d $00 $00
B5_1b60:		.db $00				; 00
B5_1b61:	.db $2d $00 $00
B5_1b64:		.db $00				; 00
B5_1b65:		and $2e2e		; 2d 2e 2e
B5_1b68:	.db $2e $2f $00
B5_1b6b:		.db $00				; 00
B5_1b6c:		.db $00				; 00
B5_1b6d:		.db $00				; 00
B5_1b6e:		.db $00				; 00
B5_1b6f:		.db $00				; 00
B5_1b70:		.db $00				; 00
B5_1b71:		.db $00				; 00
B5_1b72:		.db $00				; 00
B5_1b73:		.db $00				; 00
B5_1b74:		.db $00				; 00
B5_1b75:		.db $00				; 00
B5_1b76:		.db $00				; 00
B5_1b77:	.db $80
B5_1b78:		sta ($82, x)	; 81 82
B5_1b7a:		.db $00				; 00
B5_1b7b:		.db $00				; 00
B5_1b7c:		.db $00				; 00
B5_1b7d:	.db $2d $00 $00
B5_1b80:		.db $00				; 00
B5_1b81:	.db $2d $00 $00
B5_1b84:		.db $00				; 00
B5_1b85:	.db $2d $83 $00
B5_1b88:		.db $00				; 00
B5_1b89:	.db $2d $00 $00
B5_1b8c:		.db $00				; 00
B5_1b8d:		.db $00				; 00
B5_1b8e:		.db $00				; 00
B5_1b8f:		.db $00				; 00
B5_1b90:		.db $00				; 00
B5_1b91:		.db $00				; 00
B5_1b92:		.db $00				; 00
B5_1b93:		.db $00				; 00
B5_1b94:		.db $00				; 00
B5_1b95:		.db $00				; 00
B5_1b96:		.db $00				; 00
B5_1b97:		.db $00				; 00
B5_1b98:		.db $00				; 00
B5_1b99:		sty $00			; 84 00
B5_1b9b:		bcc B5_1b2e ; 90 91

B5_1b9d:	.db $92
B5_1b9e:		.db $00				; 00
B5_1b9f:		ldy #$a1		; a0 a1
B5_1ba1:		ldx #$84		; a2 84
B5_1ba3:		;removed
	.db $b0 $b1

B5_1ba5:	.db $b2
B5_1ba6:		sta $86			; 85 86
B5_1ba8:	.db $87
B5_1ba9:		dey				; 88 
B5_1baa:	.db $93
B5_1bab:		.db $00				; 00
B5_1bac:		.db $00				; 00
B5_1bad:	.db $2d $a3 $00
B5_1bb0:		.db $00				; 00
B5_1bb1:	.db $2d $b3 $00
B5_1bb4:		.db $00				; 00
B5_1bb5:		and $8a89		; 2d 89 8a
B5_1bb8:	.db $8b
B5_1bb9:	.db $2d $00 $00
B5_1bbc:		.db $00				; 00
B5_1bbd:		sty $00, x		; 94 00
B5_1bbf:		.db $00				; 00
B5_1bc0:		.db $00				; 00
B5_1bc1:		ldy $00			; a4 00
B5_1bc3:		.db $00				; 00
B5_1bc4:		.db $00				; 00
B5_1bc5:		ldy $00, x		; b4 00
B5_1bc7:		.db $00				; 00
B5_1bc8:		.db $00				; 00
B5_1bc9:		.db $00				; 00
B5_1bca:		sta $96, x		; 95 96
B5_1bcc:	.db $97
B5_1bcd:		tya				; 98 
B5_1bce:		lda $a6			; a5 a6
B5_1bd0:	.db $a7
B5_1bd1:		tay				; a8 
B5_1bd2:		lda $b6, x		; b5 b6
B5_1bd4:	.db $b7
B5_1bd5:		clv				; b8 
B5_1bd6:		sty $8e8d		; 8c 8d 8e
B5_1bd9:		.db $00				; 00
B5_1bda:		sta $9b9a, y	; 99 9a 9b
B5_1bdd:		and $aaa9		; 2d a9 aa
B5_1be0:	.db $ab
B5_1be1:		and $bab9		; 2d b9 ba
B5_1be4:	.db $bb
B5_1be5:		and $9c00		; 2d 00 9c
B5_1be8:		.db $00				; 00
B5_1be9:		and $9d00		; 2d 00 9d
B5_1bec:	.db $9e
B5_1bed:	.db $9f
B5_1bee:		.db $00				; 00
B5_1bef:	.db $ad $ae $00
B5_1bf2:		.db $00				; 00
B5_1bf3:	.db $bd $be $00
B5_1bf6:		rol $2e2e		; 2e 2e 2e
B5_1bf9:	.db $2e $00 $00
B5_1bfc:		.db $00				; 00
B5_1bfd:		.db $00				; 00
B5_1bfe:		.db $00				; 00
B5_1bff:		.db $00				; 00
B5_1c00:		.db $00				; 00
B5_1c01:		.db $00				; 00
B5_1c02:		.db $00				; 00
B5_1c03:		.db $00				; 00
B5_1c04:		.db $00				; 00
B5_1c05:	.db $2d $00 $00
B5_1c08:		.db $00				; 00
B5_1c09:	.db $2d $00 $00
B5_1c0c:		.db $00				; 00
B5_1c0d:		.db $00				; 00
B5_1c0e:		.db $00				; 00
B5_1c0f:		.db $00				; 00
B5_1c10:		.db $00				; 00
B5_1c11:		.db $00				; 00
B5_1c12:		.db $00				; 00
B5_1c13:		.db $00				; 00
B5_1c14:		.db $00				; 00
B5_1c15:		.db $00				; 00
B5_1c16:		rol $2e2e		; 2e 2e 2e
B5_1c19:	.db $2e $00 $00
B5_1c1c:	.db $6b
B5_1c1d:	.db $67
B5_1c1e:		.db $00				; 00
B5_1c1f:		.db $00				; 00
B5_1c20:		.db $00				; 00
B5_1c21:	.db $7b
B5_1c22:		.db $00				; 00
B5_1c23:		.db $00				; 00
B5_1c24:		.db $00				; 00
B5_1c25:		.db $00				; 00
B5_1c26:		.db $00				; 00
B5_1c27:		.db $00				; 00
B5_1c28:		.db $00				; 00
B5_1c29:		.db $00				; 00
B5_1c2a:	.db $6b
B5_1c2b:	.db $67
B5_1c2c:		.db $00				; 00
B5_1c2d:		and $7b00		; 2d 00 7b
B5_1c30:		.db $00				; 00
B5_1c31:	.db $2d $00 $00
B5_1c34:		.db $00				; 00
B5_1c35:	.db $2d $00 $00
B5_1c38:		.db $00				; 00
B5_1c39:	.db $2d $00 $00
B5_1c3c:		.db $00				; 00
B5_1c3d:		.db $00				; 00
B5_1c3e:		.db $00				; 00
B5_1c3f:		.db $00				; 00
B5_1c40:		.db $00				; 00
B5_1c41:		.db $00				; 00
B5_1c42:		.db $00				; 00
B5_1c43:		.db $00				; 00
B5_1c44:		.db $00				; 00
B5_1c45:		.db $00				; 00
B5_1c46:		.db $00				; 00
B5_1c47:		.db $00				; 00
B5_1c48:		.db $00				; 00
B5_1c49:		lda ($00, x)	; a1 00
B5_1c4b:		.db $00				; 00
B5_1c4c:	.db $a3
B5_1c4d:		ldy $00			; a4 00
B5_1c4f:		ldx #$b3		; a2 b3
B5_1c51:		.db $00				; 00
B5_1c52:		lda ($b2, x)	; a1 b2
B5_1c54:		.db $00				; 00
B5_1c55:		.db $00				; 00
B5_1c56:		lda ($00), y	; b1 00
B5_1c58:		.db $00				; 00
B5_1c59:		.db $00				; 00
B5_1c5a:		lda $a6			; a5 a6
B5_1c5c:		.db $00				; 00
B5_1c5d:		.db $00				; 00
B5_1c5e:		.db $00				; 00
B5_1c5f:	.db $a7
B5_1c60:		.db $00				; 00
B5_1c61:		.db $00				; 00
B5_1c62:		.db $00				; 00
B5_1c63:		tay				; a8 
B5_1c64:		.db $00				; 00
B5_1c65:		.db $00				; 00
B5_1c66:		.db $00				; 00
B5_1c67:		lda #$00		; a9 00
B5_1c69:		.db $00				; 00
B5_1c6a:		.db $00				; 00
B5_1c6b:		.db $00				; 00
B5_1c6c:		lda ($b1, x)	; a1 b1
B5_1c6e:		.db $00				; 00
B5_1c6f:		ldy #$b1		; a0 b1
B5_1c71:		.db $00				; 00
B5_1c72:		.db $00				; 00
B5_1c73:		bcs B5_1c75 ; b0 00

B5_1c75:		.db $00				; 00
B5_1c76:		.db $00				; 00
B5_1c77:		.db $00				; 00
B5_1c78:		.db $00				; 00
B5_1c79:		.db $00				; 00
B5_1c7a:		.db $00				; 00
B5_1c7b:		.db $00				; 00
B5_1c7c:		.db $00				; 00
B5_1c7d:		.db $00				; 00
B5_1c7e:		.db $00				; 00
B5_1c7f:		.db $00				; 00
B5_1c80:		.db $00				; 00
B5_1c81:	.db $ad $00 $00
B5_1c84:	.db $ae $af $00
B5_1c87:		.db $00				; 00
B5_1c88:		ldy $b5, x		; b4 b5
B5_1c8a:	.db $ab
B5_1c8b:	.db $ac $00 $00
B5_1c8e:	.db $ac $00 $00
B5_1c91:		.db $00				; 00
B5_1c92:		.db $00				; 00
B5_1c93:	.db $b7
B5_1c94:		clv				; b8 
B5_1c95:		.db $00				; 00
B5_1c96:		ldx $b9, y		; b6 b9
B5_1c98:		tsx				; ba 
B5_1c99:		.db $00				; 00
B5_1c9a:		.db $00				; 00
B5_1c9b:		.db $00				; 00
B5_1c9c:		.db $00				; 00
B5_1c9d:		.db $00				; 00
B5_1c9e:		.db $00				; 00
B5_1c9f:		.db $00				; 00
B5_1ca0:		.db $00				; 00
B5_1ca1:		.db $00				; 00
B5_1ca2:		.db $00				; 00
B5_1ca3:		.db $00				; 00
B5_1ca4:		.db $00				; 00
B5_1ca5:		.db $00				; 00
B5_1ca6:		.db $00				; 00
B5_1ca7:		.db $00				; 00
B5_1ca8:		.db $00				; 00
B5_1ca9:	.db $74
B5_1caa:		.db $00				; 00
B5_1cab:		.db $00				; 00
B5_1cac:		.db $00				; 00
B5_1cad:		.db $00				; 00
B5_1cae:		.db $00				; 00
B5_1caf:		.db $00				; 00
B5_1cb0:		.db $00				; 00
B5_1cb1:		.db $00				; 00
B5_1cb2:	.db $64
B5_1cb3:		adc $66			; 65 66
B5_1cb5:		.db $00				; 00
B5_1cb6:		adc $76, x		; 75 76
B5_1cb8:	.db $77
B5_1cb9:		.db $00				; 00
B5_1cba:		.db $00				; 00
B5_1cbb:		.db $00				; 00
B5_1cbc:		rti				; 40 


B5_1cbd:		eor ($00, x)	; 41 00
B5_1cbf:		.db $00				; 00
B5_1cc0:		.db $00				; 00
B5_1cc1:		.db $00				; 00
B5_1cc2:		.db $00				; 00
B5_1cc3:		.db $00				; 00
B5_1cc4:		eor ($00), y	; 51 00
B5_1cc6:		.db $00				; 00
B5_1cc7:		.db $00				; 00
B5_1cc8:		bvc B5_1d2a ; 50 60

B5_1cca:	.db $42
B5_1ccb:	.db $43
B5_1ccc:		.db $00				; 00
B5_1ccd:		.db $00				; 00
B5_1cce:	.db $52
B5_1ccf:	.db $53
B5_1cd0:		.db $00				; 00
B5_1cd1:		ror $61			; 66 61
B5_1cd3:	.db $62
B5_1cd4:		ror $77, x		; 76 77
B5_1cd6:	.db $62
B5_1cd7:	.db $64
B5_1cd8:		adc $66			; 65 66
B5_1cda:		.db $00				; 00
B5_1cdb:		.db $00				; 00
B5_1cdc:		.db $00				; 00
B5_1cdd:	.db $2d $00 $00
B5_1ce0:		.db $00				; 00
B5_1ce1:	.db $2d $00 $00
B5_1ce4:		.db $00				; 00
B5_1ce5:		and $6665		; 2d 65 66
B5_1ce8:		.db $00				; 00
B5_1ce9:	.db $2d $00 $00
B5_1cec:	.db $74
B5_1ced:		adc $00, x		; 75 00
B5_1cef:		.db $00				; 00
B5_1cf0:		.db $00				; 00
B5_1cf1:		.db $00				; 00
B5_1cf2:		.db $00				; 00
B5_1cf3:		.db $00				; 00
B5_1cf4:	.db $63
B5_1cf5:	.db $64
B5_1cf6:		.db $00				; 00
B5_1cf7:		.db $00				; 00
B5_1cf8:	.db $74
B5_1cf9:		adc $65, x		; 75 65
B5_1cfb:		ror $00			; 66 00
B5_1cfd:		.db $00				; 00
B5_1cfe:		ror $77, x		; 76 77
B5_1d00:		.db $00				; 00
B5_1d01:		sta ($65, x)	; 81 65
B5_1d03:		ror $84			; 66 84
B5_1d05:		stx $76			; 86 76
B5_1d07:	.db $77
B5_1d08:		sta $87			; 85 87
B5_1d0a:	.db $82
B5_1d0b:		.db $00				; 00
B5_1d0c:	.db $63
B5_1d0d:	.db $64
B5_1d0e:	.db $83
B5_1d0f:		.db $00				; 00
B5_1d10:	.db $74
B5_1d11:		adc $88, x		; 75 88
B5_1d13:		txa				; 8a 
B5_1d14:		sty $8900		; 8c 00 89
B5_1d17:	.db $8b
B5_1d18:		sta $6600		; 8d 00 66
B5_1d1b:		.db $00				; 00
B5_1d1c:		.db $00				; 00
B5_1d1d:		.db $00				; 00
B5_1d1e:	.db $77
B5_1d1f:		.db $00				; 00
B5_1d20:	.db $74
B5_1d21:		adc $00, x		; 75 00
B5_1d23:		.db $00				; 00
B5_1d24:		.db $00				; 00
B5_1d25:		.db $00				; 00
B5_1d26:	.db $74
B5_1d27:		adc $63, x		; 75 63
B5_1d29:	.db $64
B5_1d2a:	.db $74
B5_1d2b:		adc $44, x		; 75 44
B5_1d2d:		eor $76			; 45 76
B5_1d2f:	.db $77
B5_1d30:	.db $54
B5_1d31:		eor $00, x		; 55 00
B5_1d33:		.db $00				; 00
B5_1d34:		lsr $47			; 46 47
B5_1d36:		adc $66			; 65 66
B5_1d38:		lsr $57, x		; 56 57
B5_1d3a:		ror $77, x		; 76 77
B5_1d3c:		.db $00				; 00
B5_1d3d:	.db $2d $00 $00
B5_1d40:		.db $00				; 00
B5_1d41:		and $4b4a		; 2d 4a 4b
B5_1d44:		.db $00				; 00
B5_1d45:		and $5b5a		; 2d 5a 5b
B5_1d48:		.db $00				; 00
B5_1d49:		and $8e00		; 2d 00 8e
B5_1d4c:		bcc B5_1ce0 ; 90 92

B5_1d4e:		.db $00				; 00
B5_1d4f:	.db $8f
B5_1d50:		sta ($93), y	; 91 93
B5_1d52:		.db $00				; 00
B5_1d53:		tya				; 98 
B5_1d54:		txs				; 9a 
B5_1d55:		.db $00				; 00
B5_1d56:		.db $00				; 00
B5_1d57:	.db $99 $9b $00
B5_1d5a:		.db $00				; 00
B5_1d5b:		sty $00, x		; 94 00
B5_1d5d:		stx $00, y		; 96 00
B5_1d5f:		sta $00, x		; 95 00
B5_1d61:	.db $97
B5_1d62:		.db $00				; 00
B5_1d63:		.db $00				; 00
B5_1d64:		.db $00				; 00
B5_1d65:	.db $9c
B5_1d66:		.db $00				; 00
B5_1d67:		.db $00				; 00
B5_1d68:		.db $00				; 00
B5_1d69:	.db $9d $00 $00
B5_1d6c:	.db $74
B5_1d6d:		adc $00, x		; 75 00
B5_1d6f:		.db $00				; 00
B5_1d70:		.db $00				; 00
B5_1d71:		.db $00				; 00
B5_1d72:		.db $00				; 00
B5_1d73:		.db $00				; 00
B5_1d74:		.db $00				; 00
B5_1d75:		.db $00				; 00
B5_1d76:		.db $00				; 00
B5_1d77:		.db $00				; 00
B5_1d78:		.db $00				; 00
B5_1d79:		.db $00				; 00
B5_1d7a:		ror $77, x		; 76 77
B5_1d7c:		pha				; 48 
B5_1d7d:		eor #$00		; 49 00
B5_1d7f:		.db $00				; 00
B5_1d80:		cli				; 58 
B5_1d81:		eor $6800, y	; 59 00 68
B5_1d84:		adc #$6a		; 69 6a
B5_1d86:		.db $00				; 00
B5_1d87:		sei				; 78 
B5_1d88:		adc $707a, y	; 79 7a 70
B5_1d8b:		adc ($00), y	; 71 00
B5_1d8d:	.db $2d $00 $00
B5_1d90:		.db $00				; 00
B5_1d91:	.db $2d $62 $00
B5_1d94:		.db $00				; 00
B5_1d95:		and $7a79		; 2d 79 7a
B5_1d98:		.db $00				; 00
B5_1d99:	.db $2d $00 $00
B5_1d9c:		.db $00				; 00
B5_1d9d:		.db $00				; 00
B5_1d9e:		.db $00				; 00
B5_1d9f:		.db $00				; 00
B5_1da0:		.db $00				; 00
B5_1da1:		.db $00				; 00
B5_1da2:		.db $00				; 00
B5_1da3:		.db $00				; 00
B5_1da4:		.db $00				; 00
B5_1da5:		.db $00				; 00
B5_1da6:		.db $00				; 00
B5_1da7:		.db $00				; 00
B5_1da8:		.db $00				; 00
B5_1da9:		.db $00				; 00
B5_1daa:		php				; 08 
B5_1dab:	.db $02
B5_1dac:		eor $55, x		; 55 55
B5_1dae:		eor $55, x		; 55 55
B5_1db0:		eor $55, x		; 55 55
B5_1db2:		cpy #$f0		; c0 f0
B5_1db4:		.db $00				; 00
B5_1db5:	.db $fc
B5_1db6:		bmi B5_1d84 ; 30 cc

B5_1db8:	.db $ff
B5_1db9:	.db $ff
B5_1dba:	.db $ff
B5_1dbb:	.db $33
B5_1dbc:	.db $03
B5_1dbd:	.db $ff
B5_1dbe:	.db $ff
B5_1dbf:	.db $0c
B5_1dc0:	.db $a3
B5_1dc1:		jsr $010e		; 20 0e 01
B5_1dc4:		ora ($01, x)	; 01 01
B5_1dc6:		ora ($01, x)	; 01 01
B5_1dc8:	.db $02
B5_1dc9:		.db $00				; 00
B5_1dca:	.db $03
B5_1dcb:		.db $00				; 00
B5_1dcc:		.db $00				; 00
B5_1dcd:		.db $00				; 00
B5_1dce:		.db $00				; 00
B5_1dcf:		.db $00				; 00
B5_1dd0:	.db $03
B5_1dd1:		.db $00				; 00
B5_1dd2:	.db $03
B5_1dd3:		.db $00				; 00
B5_1dd4:		.db $00				; 00
B5_1dd5:		.db $00				; 00
B5_1dd6:		.db $00				; 00
B5_1dd7:		.db $00				; 00
B5_1dd8:	.db $03
B5_1dd9:		.db $00				; 00
B5_1dda:	.db $03
B5_1ddb:		.db $00				; 00
B5_1ddc:		.db $00				; 00
B5_1ddd:		.db $00				; 00
B5_1dde:		.db $00				; 00
B5_1ddf:		ora $06			; 05 06
B5_1de1:		.db $00				; 00
B5_1de2:	.db $03
B5_1de3:		.db $00				; 00
B5_1de4:		.db $00				; 00
B5_1de5:		.db $00				; 00
B5_1de6:	.db $07
B5_1de7:		php				; 08 
B5_1de8:		ora #$00		; 09 00
B5_1dea:	.db $03
B5_1deb:		.db $00				; 00
B5_1dec:		.db $00				; 00
B5_1ded:		.db $00				; 00
B5_1dee:		asl a			; 0a
B5_1def:	.db $0b
B5_1df0:	.db $0c
B5_1df1:		.db $00				; 00
B5_1df2:	.db $03
B5_1df3:	.db $0f
B5_1df4:	.db $0f
B5_1df5:	.db $0f
B5_1df6:	.db $0f
B5_1df7:	.db $0d $04 $00
B5_1dfa:		.db $00				; 00
B5_1dfb:		.db $00				; 00
B5_1dfc:		.db $00				; 00
B5_1dfd:		.db $00				; 00
B5_1dfe:		.db $00				; 00
B5_1dff:		.db $00				; 00
B5_1e00:		.db $00				; 00
B5_1e01:		.db $00				; 00
B5_1e02:		asl $0101		; 0e 01 01
B5_1e05:		ora ($01, x)	; 01 01
B5_1e07:		ora ($02, x)	; 01 02
B5_1e09:		.db $00				; 00
B5_1e0a:	.db $03
B5_1e0b:		.db $00				; 00
B5_1e0c:		.db $00				; 00
B5_1e0d:		.db $00				; 00
B5_1e0e:		.db $00				; 00
B5_1e0f:		.db $00				; 00
B5_1e10:	.db $03
B5_1e11:		.db $00				; 00
B5_1e12:	.db $03
B5_1e13:		.db $00				; 00
B5_1e14:		.db $00				; 00
B5_1e15:		.db $00				; 00
B5_1e16:		.db $00				; 00
B5_1e17:		.db $00				; 00
B5_1e18:	.db $03
B5_1e19:		.db $00				; 00
B5_1e1a:	.db $03
B5_1e1b:		.db $00				; 00
B5_1e1c:		.db $00				; 00
B5_1e1d:		.db $00				; 00
B5_1e1e:		.db $00				; 00
B5_1e1f:		.db $00				; 00
B5_1e20:	.db $03
B5_1e21:		.db $00				; 00
B5_1e22:	.db $03
B5_1e23:	.db $12
B5_1e24:	.db $13
B5_1e25:	.db $14
B5_1e26:		.db $00				; 00
B5_1e27:		.db $00				; 00
B5_1e28:	.db $03
B5_1e29:		.db $00				; 00
B5_1e2a:	.db $03
B5_1e2b:		ora $16, x		; 15 16
B5_1e2d:	.db $17
B5_1e2e:		.db $00				; 00
B5_1e2f:		.db $00				; 00
B5_1e30:	.db $03
B5_1e31:		.db $00				; 00
B5_1e32:	.db $03
B5_1e33:	.db $0f
B5_1e34:	.db $0f
B5_1e35:	.db $0f
B5_1e36:	.db $0f
B5_1e37:	.db $0f
B5_1e38:	.db $04
B5_1e39:		.db $00				; 00
B5_1e3a:		.db $00				; 00
B5_1e3b:		.db $00				; 00
B5_1e3c:		.db $00				; 00
B5_1e3d:		.db $00				; 00
B5_1e3e:		.db $00				; 00
B5_1e3f:		.db $00				; 00
B5_1e40:		.db $00				; 00
B5_1e41:		.db $00				; 00
B5_1e42:		asl $0101		; 0e 01 01
B5_1e45:		ora ($01, x)	; 01 01
B5_1e47:		ora ($02, x)	; 01 02
B5_1e49:		.db $00				; 00
B5_1e4a:	.db $03
B5_1e4b:		clc				; 18 
B5_1e4c:		ora $1a00, y	; 19 00 1a
B5_1e4f:	.db $1b
B5_1e50:	.db $1c
B5_1e51:		.db $00				; 00
B5_1e52:	.db $03
B5_1e53:		ora $1f1e, x	; 1d 1e 1f
B5_1e56:		jsr $2221		; 20 21 22
B5_1e59:		.db $00				; 00
B5_1e5a:	.db $03
B5_1e5b:		.db $00				; 00
B5_1e5c:	.db $23
B5_1e5d:		bit $25			; 24 25
B5_1e5f:		rol $27			; 26 27
B5_1e61:		.db $00				; 00
B5_1e62:	.db $03
B5_1e63:		.db $00				; 00
B5_1e64:		.db $00				; 00
B5_1e65:		.db $00				; 00
B5_1e66:		.db $00				; 00
B5_1e67:		bpl B5_1e7a ; 10 11

B5_1e69:		.db $00				; 00
B5_1e6a:	.db $03
B5_1e6b:		.db $00				; 00
B5_1e6c:		.db $00				; 00
B5_1e6d:		.db $00				; 00
B5_1e6e:		.db $00				; 00
B5_1e6f:		.db $00				; 00
B5_1e70:	.db $03
B5_1e71:		.db $00				; 00
B5_1e72:	.db $03
B5_1e73:	.db $0f
B5_1e74:	.db $0f
B5_1e75:	.db $0f
B5_1e76:	.db $0f
B5_1e77:	.db $0f
B5_1e78:	.db $04
B5_1e79:		.db $00				; 00
B5_1e7a:		.db $00				; 00
B5_1e7b:		.db $00				; 00
B5_1e7c:		.db $00				; 00
B5_1e7d:		.db $00				; 00
B5_1e7e:		.db $00				; 00
B5_1e7f:		.db $00				; 00
B5_1e80:		.db $00				; 00
B5_1e81:		.db $00				; 00
B5_1e82:		asl $0101		; 0e 01 01
B5_1e85:		ora ($01, x)	; 01 01
B5_1e87:		ora ($02, x)	; 01 02
B5_1e89:		.db $00				; 00
B5_1e8a:	.db $03
B5_1e8b:		.db $00				; 00
B5_1e8c:		.db $00				; 00
B5_1e8d:		.db $00				; 00
B5_1e8e:		.db $00				; 00
B5_1e8f:		.db $00				; 00
B5_1e90:	.db $03
B5_1e91:		.db $00				; 00
B5_1e92:	.db $03
B5_1e93:		.db $00				; 00
B5_1e94:		.db $00				; 00
B5_1e95:		.db $00				; 00
B5_1e96:		.db $00				; 00
B5_1e97:		.db $00				; 00
B5_1e98:	.db $03
B5_1e99:		.db $00				; 00
B5_1e9a:	.db $03
B5_1e9b:		.db $00				; 00
B5_1e9c:		.db $00				; 00
B5_1e9d:		.db $00				; 00
B5_1e9e:		.db $00				; 00
B5_1e9f:		.db $00				; 00
B5_1ea0:	.db $03
B5_1ea1:		.db $00				; 00
B5_1ea2:	.db $03
B5_1ea3:		.db $00				; 00
B5_1ea4:		.db $00				; 00
B5_1ea5:		.db $00				; 00
B5_1ea6:		.db $00				; 00
B5_1ea7:		.db $00				; 00
B5_1ea8:	.db $03
B5_1ea9:		.db $00				; 00
B5_1eaa:	.db $03
B5_1eab:		.db $00				; 00
B5_1eac:		.db $00				; 00
B5_1ead:		.db $00				; 00
B5_1eae:		.db $00				; 00
B5_1eaf:		.db $00				; 00
B5_1eb0:	.db $03
B5_1eb1:		.db $00				; 00
B5_1eb2:	.db $03
B5_1eb3:	.db $0f
B5_1eb4:	.db $0f
B5_1eb5:	.db $0f
B5_1eb6:	.db $0f
B5_1eb7:	.db $0f
B5_1eb8:	.db $04
B5_1eb9:		.db $00				; 00
B5_1eba:		.db $00				; 00
B5_1ebb:		.db $00				; 00
B5_1ebc:		.db $00				; 00
B5_1ebd:		.db $00				; 00
B5_1ebe:		.db $00				; 00
B5_1ebf:		.db $00				; 00
B5_1ec0:		.db $00				; 00
B5_1ec1:		.db $00				; 00