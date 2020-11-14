B13_0000:		ora $1d1d, x	; 1d 1d 1d
B13_0003:		ora $1d1e, x	; 1d 1e 1d
B13_0006:	.db $0f
B13_0007:	.db $1c
B13_0008:		plp				; 28 
B13_0009:		and #$28		; 29 28
B13_000b:		and #$07		; 29 07
B13_000d:		asl $13, x		; 16 13
B13_000f:	.db $1c
B13_0010:		ora $1d1d, x	; 1d 1d 1d
B13_0013:		ora $0c0f, x	; 1d 0f 0c
B13_0016:	.db $17
B13_0017:		.db $00				; 00
B13_0018:	.db $07
B13_0019:	.db $23
B13_001a:		.db $00				; 00
B13_001b:	.db $22
B13_001c:	.db $07
B13_001d:	.db $23
B13_001e:		.db $00				; 00
B13_001f:		.db $00				; 00
B13_0020:	.db $0b
B13_0021:		.db $00				; 00
B13_0022:	.db $07
B13_0023:	.db $22
B13_0024:	.db $0b
B13_0025:	.db $23
B13_0026:	.db $07
B13_0027:		.db $00				; 00
B13_0028:	.db $0b
B13_0029:		.db $00				; 00
B13_002a:	.db $0b
B13_002b:		.db $00				; 00
B13_002c:	.db $0b
B13_002d:		.db $00				; 00
B13_002e:	.db $0b
B13_002f:	.db $0c
B13_0030:	.db $0f
B13_0031:	.db $0c
B13_0032:	.db $0f
B13_0033:	.db $0c
B13_0034:	.db $0f
B13_0035:	.db $0c
B13_0036:	.db $0f
B13_0037:		ora #$07		; 09 07
B13_0039:		ora $07			; 05 07
B13_003b:		ora $07			; 05 07
B13_003d:		pha				; 48 
B13_003e:	.db $54
B13_003f:		ora #$0b		; 09 0b
B13_0041:	.db $2b
B13_0042:	.db $0b
B13_0043:		rol $2c0b		; 2e 0b 2c
B13_0046:		and $0722		; 2d 22 07
B13_0049:	.db $23
B13_004a:		.db $00				; 00
B13_004b:	.db $22
B13_004c:	.db $07
B13_004d:	.db $23
B13_004e:		.db $00				; 00
B13_004f:	.db $22
B13_0050:	.db $0b
B13_0051:	.db $23
B13_0052:	.db $07
B13_0053:	.db $22
B13_0054:	.db $0b
B13_0055:	.db $23
B13_0056:	.db $07
B13_0057:		.db $00				; 00
B13_0058:	.db $0b
B13_0059:		.db $00				; 00
B13_005a:	.db $0b
B13_005b:	.db $04
B13_005c:	.db $0b
B13_005d:		.db $00				; 00
B13_005e:	.db $0b
B13_005f:	.db $0c
B13_0060:	.db $0f
B13_0061:	.db $0c
B13_0062:	.db $0f
B13_0063:	.db $0c
B13_0064:	.db $0f
B13_0065:	.db $0c
B13_0066:	.db $0f
B13_0067:		ora $07			; 05 07
B13_0069:		pha				; 48 
B13_006a:	.db $54
B13_006b:		pha				; 48 
B13_006c:	.db $07
B13_006d:		ora $05			; 05 05
B13_006f:		and $2c0b		; 2d 0b 2c
B13_0072:		and $0b2d		; 2d 2d 0b
B13_0075:		bit $222d		; 2c 2d 22
B13_0078:	.db $07
B13_0079:	.db $23
B13_007a:		.db $00				; 00
B13_007b:	.db $22
B13_007c:	.db $07
B13_007d:	.db $23
B13_007e:		.db $00				; 00
B13_007f:	.db $22
B13_0080:	.db $0b
B13_0081:	.db $23
B13_0082:	.db $07
B13_0083:	.db $22
B13_0084:	.db $0b
B13_0085:	.db $23
B13_0086:	.db $07
B13_0087:		.db $00				; 00
B13_0088:	.db $0b
B13_0089:		.db $00				; 00
B13_008a:	.db $0b
B13_008b:		.db $00				; 00
B13_008c:	.db $0b
B13_008d:		.db $00				; 00
B13_008e:	.db $0b
B13_008f:	.db $0c
B13_0090:	.db $0f
B13_0091:	.db $0c
B13_0092:	.db $0f
B13_0093:	.db $0c
B13_0094:	.db $0f
B13_0095:	.db $0c
B13_0096:	.db $0f
B13_0097:		ora $07			; 05 07
B13_0099:	.db $54
B13_009a:		pha				; 48 
B13_009b:		ora $07			; 05 07
B13_009d:		ora $48			; 05 48
B13_009f:		bit $2d0b		; 2c 0b 2d
B13_00a2:		bit $0b2c		; 2c 2c 0b
B13_00a5:		and $222c		; 2d 2c 22
B13_00a8:	.db $07
B13_00a9:		asl $00			; 06 00
B13_00ab:		.db $00				; 00
B13_00ac:		ora #$05		; 09 05
B13_00ae:		ora $00			; 05 00
B13_00b0:	.db $0b
B13_00b1:		asl a			; 0a
B13_00b2:	.db $04
B13_00b3:		.db $00				; 00
B13_00b4:		ora #$05		; 09 05
B13_00b6:		ora $00			; 05 00
B13_00b8:	.db $0b
B13_00b9:	.db $0e $08 $00
B13_00bc:		ora #$05		; 09 05
B13_00be:		ora $0c			; 05 0c
B13_00c0:	.db $0f
B13_00c1:	.db $0c
B13_00c2:	.db $0c
B13_00c3:	.db $0c
B13_00c4:		ora $051b		; 0d 1b 05
B13_00c7:		ora $07			; 05 07
B13_00c9:		ora $48			; 05 48
B13_00cb:		ora $07			; 05 07
B13_00cd:		pha				; 48 
B13_00ce:	.db $1c
B13_00cf:		and $2b0b		; 2d 0b 2b
B13_00d2:		rol $0b2f		; 2e 2f 0b
B13_00d5:	.db $2b
B13_00d6:	.db $1c
B13_00d7:	.db $07
B13_00d8:	.db $02
B13_00d9:	.db $23
B13_00da:	.db $22
B13_00db:	.db $23
B13_00dc:	.db $22
B13_00dd:		eor $07, x		; 55 07
B13_00df:	.db $0b
B13_00e0:		jmp $2627		; 4c 27 26


B13_00e3:	.db $27
B13_00e4:		rol $4a			; 26 4a
B13_00e6:	.db $0b
B13_00e7:	.db $0b
B13_00e8:		eor #$05		; 49 05
B13_00ea:	.db $54
B13_00eb:		pha				; 48 
B13_00ec:		ora $4e			; 05 4e
B13_00ee:	.db $0b
B13_00ef:	.db $0b
B13_00f0:		eor $0546		; 4d 46 05
B13_00f3:		ora $47			; 05 47
B13_00f5:	.db $4b
B13_00f6:	.db $0b
B13_00f7:	.db $0b
B13_00f8:		lsr $2b			; 46 2b
B13_00fa:		rol $2b2f		; 2e 2f 2b
B13_00fd:	.db $47
B13_00fe:	.db $0b
B13_00ff:	.db $4f
B13_0100:	.db $4f
B13_0101:	.db $4f
B13_0102:	.db $4f
B13_0103:	.db $4f
B13_0104:	.db $4f
B13_0105:	.db $4f
B13_0106:	.db $4f
B13_0107:		ora ($07, x)	; 01 07
B13_0109:		ora $34			; 05 34
B13_010b:	.db $3b
B13_010c:	.db $34
B13_010d:	.db $34
B13_010e:	.db $34
B13_010f:	.db $07
B13_0110:	.db $0b
B13_0111:		;removed
	.db $30 $3b

B13_0113:		bmi B13_0145 ; 30 30

B13_0115:		;removed
	.db $30 $30

B13_0117:	.db $0b
B13_0118:	.db $0f
B13_0119:	.db $43
B13_011a:		sec				; 38 
B13_011b:		and $3131, y	; 39 31 31
B13_011e:	.db $32
B13_011f:	.db $0f
B13_0120:	.db $1c
B13_0121:	.db $1b
B13_0122:	.db $3c
B13_0123:		and $3535, x	; 3d 35 35
B13_0126:		rol $0f, x		; 36 0f
B13_0128:		ora $05			; 05 05
B13_012a:	.db $07
B13_012b:	.db $34
B13_012c:	.db $34
B13_012d:	.db $34
B13_012e:	.db $34
B13_012f:	.db $0b
B13_0130:		ora $0f1d, x	; 1d 1d 0f
B13_0133:		asl $3f3f, x	; 1e 3f 3f
B13_0136:		ora $050f, x	; 1d 0f 05
B13_0139:		ora $05			; 05 05
B13_013b:		ora $05			; 05 05
B13_013d:	.db $07
B13_013e:		ora $1c			; 05 1c
B13_0140:	.db $34
B13_0141:	.db $34
B13_0142:	.db $34
B13_0143:	.db $34
B13_0144:	.db $34
B13_0145:	.db $0b
B13_0146:		ora #$1c		; 09 1c
B13_0148:		and ($32), y	; 31 32
B13_014a:		and ($38), y	; 31 38
B13_014c:		and $070b, y	; 39 0b 07
B13_014f:	.db $1c
B13_0150:		and $36, x		; 35 36
B13_0152:		and $3c, x		; 35 3c
B13_0154:		and $0b0f, x	; 3d 0f 0b
B13_0157:	.db $1c
B13_0158:	.db $34
B13_0159:	.db $34
B13_015a:	.db $34
B13_015b:	.db $34
B13_015c:	.db $34
B13_015d:		ora $0f			; 05 0f
B13_015f:	.db $1c
B13_0160:	.db $3f
B13_0161:	.db $3f
B13_0162:	.db $3f
B13_0163:	.db $3f
B13_0164:		ora $0f1d, x	; 1d 1d 0f
B13_0167:	.db $1c
B13_0168:		ora ($02, x)	; 01 02
B13_016a:	.db $0b
B13_016b:	.db $1a
B13_016c:		ora $080b, y	; 19 0b 08
B13_016f:	.db $1a
B13_0170:	.db $0b
B13_0171:		asl $0b			; 06 0b
B13_0173:		jsr $0b21		; 20 21 0b
B13_0176:		jsr $0b21		; 20 21 0b
B13_0179:		asl a			; 0a
B13_017a:	.db $0b
B13_017b:		bit $25			; 24 25
B13_017d:	.db $0b
B13_017e:		bit $25			; 24 25
B13_0180:	.db $0b
B13_0181:		asl $280b		; 0e 0b 28
B13_0184:		and #$0b		; 29 0b
B13_0186:		plp				; 28 
B13_0187:		and #$0b		; 29 0b
B13_0189:		ora $1e1d, x	; 1d 1d 1e
B13_018c:	.db $0c
B13_018d:	.db $0f
B13_018e:	.db $0c
B13_018f:		ora $090f, x	; 1d 0f 09
B13_0192:	.db $07
B13_0193:	.db $1a
B13_0194:		asl $07, x		; 16 07
B13_0196:		ora ($04, x)	; 01 04
B13_0198:	.db $07
B13_0199:	.db $02
B13_019a:	.db $07
B13_019b:		ora $0708, y	; 19 08 07
B13_019e:	.db $04
B13_019f:		ora #$1c		; 09 1c
B13_01a1:		asl $0b			; 06 0b
B13_01a3:		jsr $0b21		; 20 21 0b
B13_01a6:		jsr $1c09		; 20 09 1c
B13_01a9:		asl a			; 0a
B13_01aa:	.db $0b
B13_01ab:		bit $25			; 24 25
B13_01ad:	.db $0b
B13_01ae:		bit $09			; 24 09
B13_01b0:	.db $1c
B13_01b1:		asl $280b		; 0e 0b 28
B13_01b4:		and #$0b		; 29 0b
B13_01b6:		plp				; 28 
B13_01b7:		ora #$40		; 09 40
B13_01b9:		ora $2a0f, x	; 1d 0f 2a
B13_01bc:		rol a			; 2a
B13_01bd:	.db $0f
B13_01be:		ora $441d, x	; 1d 1d 44
B13_01c1:		and $2c07		; 2d 07 2c
B13_01c4:		and $2c07		; 2d 07 2c
B13_01c7:		and $011c		; 2d 1c 01
B13_01ca:		ora $05			; 05 05
B13_01cc:	.db $07
B13_01cd:	.db $34
B13_01ce:	.db $3a
B13_01cf:	.db $34
B13_01d0:	.db $34
B13_01d1:	.db $07
B13_01d2:		ora $34			; 05 34
B13_01d4:	.db $0b
B13_01d5:	.db $33
B13_01d6:	.db $32
B13_01d7:	.db $3a
B13_01d8:		bmi B13_01e5 ; 30 0b

B13_01da:	.db $1b
B13_01db:	.db $3f
B13_01dc:	.db $0f
B13_01dd:	.db $37
B13_01de:		rol $3f, x		; 36 3f
B13_01e0:		eor ($1d, x)	; 41 1d
B13_01e2:		ora $34			; 05 34
B13_01e4:	.db $07
B13_01e5:	.db $34
B13_01e6:	.db $34
B13_01e7:	.db $34
B13_01e8:	.db $34
B13_01e9:	.db $07
B13_01ea:	.db $1b
B13_01eb:	.db $3f
B13_01ec:		ora $3042, x	; 1d 42 30
B13_01ef:	.db $32
B13_01f0:		sec				; 38 
B13_01f1:	.db $0b
B13_01f2:		bit $072d		; 2c 2d 07
B13_01f5:		ora $41			; 05 41
B13_01f7:		rol $3c, x		; 36 3c
B13_01f9:	.db $0f
B13_01fa:	.db $34
B13_01fb:	.db $34
B13_01fc:	.db $34
B13_01fd:	.db $34
B13_01fe:	.db $34
B13_01ff:	.db $34
B13_0200:	.db $0b
B13_0201:	.db $1c
B13_0202:		;removed
	.db $30 $32

B13_0204:		sec				; 38 
B13_0205:		and $3030, y	; 39 30 30
B13_0208:	.db $0b
B13_0209:	.db $1c
B13_020a:	.db $53
B13_020b:		rol $3c, x		; 36 3c
B13_020d:		and $1f1d, x	; 3d 1d 1f
B13_0210:	.db $0f
B13_0211:	.db $1c
B13_0212:	.db $1b
B13_0213:	.db $34
B13_0214:	.db $34
B13_0215:	.db $34
B13_0216:		rol $0734, x	; 3e 34 07
B13_0219:	.db $1c
B13_021a:	.db $32
B13_021b:	.db $33
B13_021c:		bmi B13_0259 ; 30 3b

B13_021e:	.db $33
B13_021f:	.db $32
B13_0220:	.db $0b
B13_0221:	.db $1c
B13_0222:		rol $37, x		; 36 37
B13_0224:	.db $43
B13_0225:	.db $3f
B13_0226:	.db $37
B13_0227:		rol $0f, x		; 36 0f
B13_0229:	.db $1c
B13_022a:	.db $03
B13_022b:		.db $00				; 00
B13_022c:	.db $07
B13_022d:	.db $02
B13_022e:		.db $00				; 00
B13_022f:	.db $07
B13_0230:		asl $00			; 06 00
B13_0232:		ora ($00, x)	; 01 00
B13_0234:	.db $0b
B13_0235:		asl $04			; 06 04
B13_0237:	.db $0b
B13_0238:		asl a			; 0a
B13_0239:		ora ($01, x)	; 01 01
B13_023b:		.db $00				; 00
B13_023c:	.db $0b
B13_023d:		asl a			; 0a
B13_023e:		php				; 08 
B13_023f:	.db $0b
B13_0240:		asl $5d5c		; 0e 5c 5d
B13_0243:	.db $04
B13_0244:	.db $0b
B13_0245:		asl $0b08		; 0e 08 0b
B13_0248:	.db $04
B13_0249:	.db $5a
B13_024a:	.db $57
B13_024b:		php				; 08 
B13_024c:	.db $0b
B13_024d:		.db $00				; 00
B13_024e:		.db $00				; 00
B13_024f:	.db $0b
B13_0250:		php				; 08 
B13_0251:	.db $5a
B13_0252:	.db $5b
B13_0253:	.db $0c
B13_0254:	.db $0f
B13_0255:	.db $0c
B13_0256:	.db $0c
B13_0257:	.db $0f
B13_0258:	.db $0c
B13_0259:		cli				; 58 
B13_025a:	.db $5f
B13_025b:		.db $00				; 00
B13_025c:		.db $00				; 00
B13_025d:	.db $07
B13_025e:	.db $02
B13_025f:		.db $00				; 00
B13_0260:		.db $00				; 00
B13_0261:		.db $00				; 00
B13_0262:		.db $00				; 00
B13_0263:		.db $00				; 00
B13_0264:	.db $04
B13_0265:	.db $0b
B13_0266:		asl $00			; 06 00
B13_0268:	.db $04
B13_0269:		.db $00				; 00
B13_026a:		.db $00				; 00
B13_026b:		lsr $0b08, x	; 5e 08 0b
B13_026e:		asl a			; 0a
B13_026f:	.db $5c
B13_0270:		eor $045e, x	; 5d 5e 04
B13_0273:		lsr $00, x		; 56 00
B13_0275:	.db $0b
B13_0276:		asl a			; 0a
B13_0277:	.db $5a
B13_0278:	.db $57
B13_0279:		lsr $08, x		; 56 08
B13_027b:		lsr $00, x		; 56 00
B13_027d:	.db $0b
B13_027e:		asl $5b5a		; 0e 5a 5b
B13_0281:		lsr $08, x		; 56 08
B13_0283:		eor $0f0c, y	; 59 0c 0f
B13_0286:	.db $0c
B13_0287:		cli				; 58 
B13_0288:	.db $5f
B13_0289:		eor $070c, y	; 59 0c 07
B13_028c:	.db $02
B13_028d:		.db $00				; 00
B13_028e:		.db $00				; 00
B13_028f:		asl $13, x		; 16 13
B13_0291:		.db $00				; 00
B13_0292:	.db $07
B13_0293:	.db $0b
B13_0294:		asl $00			; 06 00
B13_0296:		.db $00				; 00
B13_0297:	.db $1a
B13_0298:		asl $13, x		; 16 13
B13_029a:	.db $0b
B13_029b:	.db $0b
B13_029c:		asl a			; 0a
B13_029d:		.db $00				; 00
B13_029e:		clc				; 18 
B13_029f:		ora $171d, x	; 1d 1d 17
B13_02a2:		ora $0a0b, x	; 1d 0b 0a
B13_02a5:		.db $00				; 00
B13_02a6:		.db $00				; 00
B13_02a7:	.db $07
B13_02a8:		asl $08			; 06 08
B13_02aa:	.db $0b
B13_02ab:	.db $0b
B13_02ac:		asl $0400		; 0e 00 04
B13_02af:	.db $0b
B13_02b0:		asl $0b00		; 0e 00 0b
B13_02b3:	.db $0f
B13_02b4:	.db $0c
B13_02b5:	.db $0c
B13_02b6:	.db $0c
B13_02b7:	.db $0f
B13_02b8:	.db $0c
B13_02b9:	.db $0c
B13_02ba:	.db $0f
B13_02bb:		asl a			; 0a
B13_02bc:		php				; 08 
B13_02bd:		.db $00				; 00
B13_02be:	.db $04
B13_02bf:		.db $00				; 00
B13_02c0:	.db $07
B13_02c1:		ora #$1c		; 09 1c
B13_02c3:	.db $0e $00 $00
B13_02c6:	.db $03
B13_02c7:		.db $00				; 00
B13_02c8:	.db $0b
B13_02c9:		ora #$1c		; 09 1c
B13_02cb:	.db $12
B13_02cc:	.db $13
B13_02cd:		.db $00				; 00
B13_02ce:	.db $03
B13_02cf:		.db $00				; 00
B13_02d0:	.db $0b
B13_02d1:		ora #$1c		; 09 1c
B13_02d3:	.db $1a
B13_02d4:	.db $17
B13_02d5:		ora $1d0c, x	; 1d 0c 1d
B13_02d8:	.db $1f
B13_02d9:	.db $1d $1c $00
B13_02dc:		php				; 08 
B13_02dd:	.db $07
B13_02de:		;removed
	.db $10 $15

B13_02e0:	.db $0b
B13_02e1:		ora #$1c		; 09 1c
B13_02e3:	.db $0c
B13_02e4:	.db $0c
B13_02e5:	.db $0f
B13_02e6:	.db $14
B13_02e7:	.db $0c
B13_02e8:	.db $0f
B13_02e9:		ora $951c		; 0d 1c 95
B13_02ec:		sta $94			; 85 94
B13_02ee:		sta $94			; 85 94
B13_02f0:		sty $95			; 84 95
B13_02f2:		sty $84			; 84 84
B13_02f4:		sty $84, x		; 94 84
B13_02f6:		sta $94			; 85 94
B13_02f8:		sty $94			; 84 94
B13_02fa:		sta $84, x		; 95 84
B13_02fc:		sta $94			; 85 94
B13_02fe:		sta $94			; 85 94
B13_0300:		sta $94, x		; 95 94
B13_0302:		sty $84			; 84 84
B13_0304:		sta $84			; 85 84
B13_0306:		sta $95			; 85 95
B13_0308:		sty $84, x		; 94 84
B13_030a:		sta $00, x		; 95 00
B13_030c:		.db $00				; 00
B13_030d:		.db $00				; 00
B13_030e:		.db $00				; 00
B13_030f:		.db $00				; 00
B13_0310:		.db $00				; 00
B13_0311:		.db $00				; 00
B13_0312:		.db $00				; 00
B13_0313:		sta ($92), y	; 91 92
B13_0315:	.db $82
B13_0316:	.db $83
B13_0317:		bcc B13_02aa ; 90 91

B13_0319:	.db $92
B13_031a:	.db $93
B13_031b:		sty $8c8d		; 8c 8d 8c
B13_031e:		sta $9d9c		; 8d 9c 9d
B13_0321:	.db $9c
B13_0322:		sta $8d8c, x	; 9d 8c 8d
B13_0325:		sty $9c8d		; 8c 8d 9c
B13_0328:		sta $9d9c, x	; 9d 9c 9d
B13_032b:		sta $99, x		; 95 99
B13_032d:		sty $85, x		; 94 85
B13_032f:		sty $a9, x		; 94 a9
B13_0331:	.db $ab
B13_0332:		sty $a9			; 84 a9
B13_0334:	.db $9b
B13_0335:		txs				; 9a 
B13_0336:	.db $8b
B13_0337:		dey				; 88 
B13_0338:	.db $9b
B13_0339:	.db $9b
B13_033a:	.db $ab
B13_033b:		.db $00				; 00
B13_033c:		.db $00				; 00
B13_033d:		.db $00				; 00
B13_033e:		.db $00				; 00
B13_033f:		.db $00				; 00
B13_0340:		.db $00				; 00
B13_0341:		.db $00				; 00
B13_0342:		.db $00				; 00
B13_0343:		.db $00				; 00
B13_0344:		.db $00				; 00
B13_0345:		.db $00				; 00
B13_0346:		.db $00				; 00
B13_0347:		.db $00				; 00
B13_0348:		.db $00				; 00
B13_0349:		.db $00				; 00
B13_034a:		.db $00				; 00
B13_034b:		sta ($92), y	; 91 92
B13_034d:	.db $82
B13_034e:	.db $83
B13_034f:		;removed
	.db $90 $91

B13_0351:	.db $92
B13_0352:	.db $93
B13_0353:		ldy #$a1		; a0 a1
B13_0355:		ldx #$a3		; a2 a3
B13_0357:		ldy #$b1		; a0 b1
B13_0359:	.db $b2
B13_035a:	.db $b3
B13_035b:		ldy $a5			; a4 a5
B13_035d:		ldx $a7			; a6 a7
B13_035f:		ldy $b5, x		; b4 b5
B13_0361:		ldx $b7, y		; b6 b7
B13_0363:		ldy $b5, x		; b4 b5
B13_0365:		stx $b7			; 86 b7
B13_0367:		ldy $b5, x		; b4 b5
B13_0369:		ldx $b7, y		; b6 b7
B13_036b:		tax				; aa 
B13_036c:	.db $9b
B13_036d:	.db $9b
B13_036e:		ldy $9aa9		; ac a9 9a
B13_0371:	.db $9b
B13_0372:	.db $8b
B13_0373:		dey				; 88 
B13_0374:		tax				; aa 
B13_0375:	.db $ab
B13_0376:		sta $94			; 85 94
B13_0378:	.db $ab
B13_0379:		sty $95, x		; 94 95
B13_037b:		lda #$9a		; a9 9a
B13_037d:	.db $9b
B13_037e:		.db $00				; 00
B13_037f:		sty $9b			; 84 9b
B13_0381:	.db $9b
B13_0382:		.db $00				; 00
B13_0383:		sta $9aaa, y	; 99 aa 9a
B13_0386:		.db $00				; 00
B13_0387:		dey				; 88 
B13_0388:		txs				; 9a 
B13_0389:	.db $9b
B13_038a:		.db $00				; 00
B13_038b:		stx $97, y		; 96 97
B13_038d:		;removed
	.db $b0 $3f

B13_038f:		stx $97, y		; 96 97
B13_0391:	.db $3f
B13_0392:	.db $3f
B13_0393:		stx $97, y		; 96 97
B13_0395:	.db $3f
B13_0396:		sty $96, x		; 94 96
B13_0398:	.db $83
B13_0399:		sty $84, x		; 94 84
B13_039b:		ldy $b5, x		; b4 b5
B13_039d:		stx $b7			; 86 b7
B13_039f:		ldy $b5, x		; b4 b5
B13_03a1:		ldx $b7, y		; b6 b7
B13_03a3:		ldy $b5, x		; b4 b5
B13_03a5:		ldx $b7, y		; b6 b7
B13_03a7:		ldy $b5, x		; b4 b5
B13_03a9:		stx $b7			; 86 b7
B13_03ab:		sty $85			; 84 85
B13_03ad:		sty $88			; 84 88
B13_03af:		sty $95, x		; 94 95
B13_03b1:		sty $84, x		; 94 84
B13_03b3:		ldy $bcbe, x	; bc be bc
B13_03b6:		ldx $bfbd, y	; be bd bf
B13_03b9:		lda $99bf, x	; bd bf 99
B13_03bc:		txs				; 9a 
B13_03bd:	.db $9b
B13_03be:		.db $00				; 00
B13_03bf:		lda $9a9b		; ad 9b 9a
B13_03c2:		.db $00				; 00
B13_03c3:		ldy $bcbe, x	; bc be bc
B13_03c6:		ldx $bfbd, y	; be bd bf
B13_03c9:		lda $96bf, x	; bd bf 96
B13_03cc:	.db $93
B13_03cd:		sta $95			; 85 95
B13_03cf:	.db $b2
B13_03d0:	.db $b3
B13_03d1:		sty $85			; 84 85
B13_03d3:	.db $a3
B13_03d4:		bcs B13_035a ; b0 84

B13_03d6:		sty $b3, x		; 94 b3
B13_03d8:	.db $3f
B13_03d9:		sty $85, x		; 94 85
B13_03db:		ldy $a5			; a4 a5
B13_03dd:		ldx $a7			; a6 a7
B13_03df:		ldy $a5			; a4 a5
B13_03e1:		ldx $a7			; a6 a7
B13_03e3:		ldy $bcbe, x	; bc be bc
B13_03e6:		ldx $bfbd, y	; be bd bf
B13_03e9:		lda $85bf, x	; bd bf 85
B13_03ec:		sty $95			; 84 95
B13_03ee:		sta $84			; 85 84
B13_03f0:		sta $85			; 85 85
B13_03f2:		lda #$85		; a9 85
B13_03f4:		sta $84, x		; 95 84
B13_03f6:	.db $89
B13_03f7:		sta $84, x		; 95 84
B13_03f9:	.db $89
B13_03fa:		sta ($99, x)	; 81 99
B13_03fc:	.db $89
B13_03fd:	.db $80
B13_03fe:	.db $80
B13_03ff:	.db $89
B13_0400:		sta ($81, x)	; 81 81
B13_0402:		sta ($81, x)	; 81 81
B13_0404:		stx $bebc		; 8e bc be
B13_0407:		stx $bd00		; 8e 00 bd
B13_040a:	.db $bf
B13_040b:	.db $80
B13_040c:	.db $80
B13_040d:		txa				; 8a 
B13_040e:		sta $81, x		; 95 81
B13_0410:		sta ($81, x)	; 81 81
B13_0412:		txa				; 8a 
B13_0413:		ldy $8fbe, x	; bc be 8f
B13_0416:		sta ($bd, x)	; 81 bd
B13_0418:	.db $bf
B13_0419:		.db $00				; 00
B13_041a:	.db $8f
B13_041b:		sta $85, x		; 95 85
B13_041d:		sta $94			; 85 94
B13_041f:		sty $94			; 84 94
B13_0421:		sty $95			; 84 95
B13_0423:		txa				; 8a 
B13_0424:	.db $ab
B13_0425:		sta $85			; 85 85
B13_0427:		sta ($8a, x)	; 81 8a
B13_0429:		sty $94			; 84 94
B13_042b:		lda #$89		; a9 89
B13_042d:		sta ($8e, x)	; 81 8e
B13_042f:		dey				; 88 
B13_0430:		sta ($8e, x)	; 81 8e
B13_0432:		.db $00				; 00
B13_0433:		ldy $bcbe, x	; bc be bc
B13_0436:		ldx $bfbd, y	; be bd bf
B13_0439:		lda $84bf, x	; bd bf 84
B13_043c:	.db $89
B13_043d:		sta ($8e, x)	; 81 8e
B13_043f:	.db $89
B13_0440:		sta ($8e, x)	; 81 8e
B13_0442:		.db $00				; 00
B13_0443:		sta ($8e, x)	; 81 8e
B13_0445:		.db $00				; 00
B13_0446:		sta $8e			; 85 8e
B13_0448:		.db $00				; 00
B13_0449:		sty $95, x		; 94 95
B13_044b:	.db $8f
B13_044c:		sta ($8a, x)	; 81 8a
B13_044e:		sta $00, x		; 95 00
B13_0450:	.db $8f
B13_0451:		sta ($8a, x)	; 81 8a
B13_0453:		sty $00			; 84 00
B13_0455:	.db $8f
B13_0456:		sta ($94, x)	; 81 94
B13_0458:		sty $00			; 84 00
B13_045a:	.db $8f
B13_045b:	.db $8f
B13_045c:		sta ($8a, x)	; 81 8a
B13_045e:	.db $8b
B13_045f:		.db $00				; 00
B13_0460:	.db $8f
B13_0461:		sta ($ab, x)	; 81 ab
B13_0463:		ldy $bcbe, x	; bc be bc
B13_0466:		ldx $bfbd, y	; be bd bf
B13_0469:		lda $aabf, x	; bd bf aa
B13_046c:	.db $9b
B13_046d:	.db $8b
B13_046e:		sty $a9			; 84 a9
B13_0470:		txs				; 9a 
B13_0471:	.db $9b
B13_0472:	.db $8b
B13_0473:		dey				; 88 
B13_0474:		tax				; aa 
B13_0475:		ldy $94be, x	; bc be 94
B13_0478:	.db $ab
B13_0479:	.db $bd $bf $00
B13_047c:	.db $ab
B13_047d:		sty $85, x		; 94 85
B13_047f:	.db $ab
B13_0480:		lda $94, x		; b5 94
B13_0482:		sty $99			; 84 99
B13_0484:		sta $84			; 85 84
B13_0486:		sta $ab			; 85 ab
B13_0488:		sty $84, x		; 94 84
B13_048a:		sta $b5, x		; 95 b5
B13_048c:		sty $85, x		; 94 85
B13_048e:		.db $00				; 00
B13_048f:		sty $b5, x		; 94 b5
B13_0491:		sty $85			; 84 85
B13_0493:		sta $95, x		; 95 95
B13_0495:		sty $99			; 84 99
B13_0497:		sty $95			; 84 95
B13_0499:		lda #$aa		; a9 aa
B13_049b:		.db $00				; 00
B13_049c:		.db $00				; 00
B13_049d:		.db $00				; 00
B13_049e:		.db $00				; 00
B13_049f:		.db $00				; 00
B13_04a0:		.db $00				; 00
B13_04a1:		.db $00				; 00
B13_04a2:		.db $00				; 00
B13_04a3:		ldy $bcbe, x	; bc be bc
B13_04a6:		ldx $bfbd, y	; be bd bf
B13_04a9:		lda $bcbf, x	; bd bf bc
B13_04ac:		ldx $bebc, y	; be bc be
B13_04af:		lda $bdbf, x	; bd bf bd
B13_04b2:	.db $bf
B13_04b3:		ldy $bcbe, x	; bc be bc
B13_04b6:		ldx $bfbd, y	; be bd bf
B13_04b9:		lda $80bf, x	; bd bf 80
B13_04bc:	.db $80
B13_04bd:	.db $80
B13_04be:	.db $80
B13_04bf:		sta ($81, x)	; 81 81
B13_04c1:		sta ($81, x)	; 81 81
B13_04c3:		ldy $bcbe, x	; bc be bc
B13_04c6:		ldx $bfbd, y	; be bd bf
B13_04c9:		lda $aebf, x	; bd bf ae
B13_04cc:	.db $af
B13_04cd:	.db $80
B13_04ce:	.db $80
B13_04cf:		sta ($81, x)	; 81 81
B13_04d1:		sta ($81, x)	; 81 81
B13_04d3:		ldy $bbbe, x	; bc be bb
B13_04d6:		tsx				; ba 
B13_04d7:	.db $bd $bf $00
B13_04da:	.db $bb
B13_04db:	.db $80
B13_04dc:	.db $80
B13_04dd:	.db $ab
B13_04de:		lda $8181		; ad 81 81
B13_04e1:		sta ($81, x)	; 81 81
B13_04e3:		lda $bc8e, y	; b9 8e bc
B13_04e6:	.db $be $8e $00
B13_04e9:		lda $a5bf, x	; bd bf a5
B13_04ec:		lda $a5			; a5 a5
B13_04ee:		ldx $94			; a6 94
B13_04f0:	.db $67
B13_04f1:		pla				; 68 
B13_04f2:		pla				; 68 
B13_04f3:		sty $77			; 84 77
B13_04f5:		sty $85			; 84 85
B13_04f7:		sty $77, x		; 94 77
B13_04f9:		sta $95, x		; 95 95
B13_04fb:		lda $a5			; a5 a5
B13_04fd:		lda $a6			; a5 a6
B13_04ff:		pla				; 68 
B13_0500:		pla				; 68 
B13_0501:		adc #$84		; 69 84
B13_0503:		sta $84, x		; 95 84
B13_0505:		sei				; 78 
B13_0506:		sta $95			; 85 95
B13_0508:		sta $78, x		; 95 78
B13_050a:		sta $95, x		; 95 95
B13_050c:		sta $4b			; 85 4b
B13_050e:		jmp $5a99		; 4c 99 5a


B13_0511:	.db $5b
B13_0512:		sty $5a			; 84 5a
B13_0514:		ror a			; 6a
B13_0515:		sty $85			; 84 85
B13_0517:		adc $9484, y	; 79 84 94
B13_051a:		sta $4c, x		; 95 4c
B13_051c:		eor $8594		; 4d 94 85
B13_051f:		sty $5d, x		; 94 5d
B13_0521:		lsr $8495, x	; 5e 95 84
B13_0524:		sta $6e			; 85 6e
B13_0526:		lsr $9495, x	; 5e 95 94
B13_0529:		sty $7f			; 84 7f
B13_052b:		sty $77			; 84 77
B13_052d:		sty $85			; 84 85
B13_052f:		sty $77, x		; 94 77
B13_0531:		sta $84			; 85 84
B13_0533:		sty $77			; 84 77
B13_0535:		sta $94, x		; 95 94
B13_0537:		sta $77, x		; 95 77
B13_0539:		sty $95			; 84 95
B13_053b:		sta $84, x		; 95 84
B13_053d:		sei				; 78 
B13_053e:		sta $94			; 85 94
B13_0540:		sta $78			; 85 78
B13_0542:		sty $95			; 84 95
B13_0544:		sta $78, x		; 95 78
B13_0546:		sta $94			; 85 94
B13_0548:		sty $78			; 84 78
B13_054a:		sta $95, x		; 95 95
B13_054c:		sta $4b			; 85 4b
B13_054e:		jmp $5a99		; 4c 99 5a


B13_0551:		eor ($00), y	; 51 00
B13_0553:	.db $5a
B13_0554:		eor ($00), y	; 51 00
B13_0556:		.db $00				; 00
B13_0557:		eor ($00), y	; 51 00
B13_0559:		.db $00				; 00
B13_055a:		.db $00				; 00
B13_055b:		jmp $944d		; 4c 4d 94


B13_055e:		sta $00			; 85 00
B13_0560:	.db $52
B13_0561:	.db $5e $95 $00
B13_0564:		.db $00				; 00
B13_0565:	.db $52
B13_0566:	.db $5e $00 $00
B13_0569:		.db $00				; 00
B13_056a:	.db $52
B13_056b:		sty $77			; 84 77
B13_056d:		sty $95			; 84 95
B13_056f:		sty $7b, x		; 94 7b
B13_0571:	.db $9f
B13_0572:	.db $9f
B13_0573:		sty $84			; 84 84
B13_0575:		sty $95, x		; 94 95
B13_0577:		lda $a5			; a5 a5
B13_0579:		lda $a6			; a5 a6
B13_057b:		sty $85			; 84 85
B13_057d:		sei				; 78 
B13_057e:		sta $9f			; 85 9f
B13_0580:	.db $9f
B13_0581:	.db $7c
B13_0582:		sty $84			; 84 84
B13_0584:		sta $85, x		; 95 85
B13_0586:		sta $a5, x		; 95 a5
B13_0588:		lda $a5			; a5 a5
B13_058a:		ldx $84			; a6 84
B13_058c:		sta $84			; 85 84
B13_058e:		lda #$94		; a9 94
B13_0590:		sta $84, x		; 95 84
B13_0592:		sty $be, x		; 94 be
B13_0594:		ldx $bebe, y	; be be be
B13_0597:		.db $00				; 00
B13_0598:		.db $00				; 00
B13_0599:		.db $00				; 00
B13_059a:		.db $00				; 00
B13_059b:		.db $00				; 00
B13_059c:		.db $00				; 00
B13_059d:	.db $5c
B13_059e:		lsr a			; 4a
B13_059f:		lsr a			; 4a
B13_05a0:		adc $6d5c		; 6d 5c 6d
B13_05a3:		.db $00				; 00
B13_05a4:	.db $47
B13_05a5:		eor $4747, y	; 59 47 47
B13_05a8:	.db $57
B13_05a9:		cli				; 58 
B13_05aa:		eor $7200, y	; 59 00 72
B13_05ad:		.db $00				; 00
B13_05ae:		.db $00				; 00
B13_05af:		adc ($59, x)	; 61 59
B13_05b1:		rts				; 60 


B13_05b2:	.db $72
B13_05b3:	.db $73
B13_05b4:	.db $62
B13_05b5:		adc ($73, x)	; 61 73
B13_05b7:	.db $7a
B13_05b8:		adc ($71), y	; 71 71
B13_05ba:	.db $7a
B13_05bb:		.db $00				; 00
B13_05bc:		rts				; 60 


B13_05bd:		.db $00				; 00
B13_05be:	.db $72
B13_05bf:		rts				; 60 


B13_05c0:		bvs B13_0622 ; 70 60

B13_05c2:	.db $73
B13_05c3:		bvs B13_0636 ; 70 71

B13_05c5:		;removed
	.db $70 $73

B13_05c7:		adc ($71), y	; 71 71
B13_05c9:		adc ($7a), y	; 71 7a
B13_05cb:	.db $6d $4a $00
B13_05ce:		.db $00				; 00
B13_05cf:		.db $00				; 00
B13_05d0:		.db $00				; 00
B13_05d1:	.db $47
B13_05d2:		pha				; 48 
B13_05d3:		.db $00				; 00
B13_05d4:		pha				; 48 
B13_05d5:		eor #$47		; 49 47
B13_05d7:	.db $47
B13_05d8:		cli				; 58 
B13_05d9:	.db $57
B13_05da:	.db $59 $00 $00
B13_05dd:		adc $494a		; 6d 4a 49
B13_05e0:	.db $47
B13_05e1:		.db $00				; 00
B13_05e2:	.db $5c
B13_05e3:		pha				; 48 
B13_05e4:		eor #$48		; 49 48
B13_05e6:	.db $47
B13_05e7:	.db $57
B13_05e8:	.db $47
B13_05e9:		cli				; 58 
B13_05ea:		eor $5043, y	; 59 43 50
B13_05ed:	.db $43
B13_05ee:		;removed
	.db $50 $50

B13_05f0:	.db $44
B13_05f1:		;removed
	.db $50 $44

B13_05f3:	.db $44
B13_05f4:		;removed
	.db $50 $44

B13_05f6:		;removed
	.db $50 $50

B13_05f8:	.db $44
B13_05f9:		;removed
	.db $50 $43

B13_05fb:	.db $43
B13_05fc:		;removed
	.db $50 $44

B13_05fe:		bvc B13_0650 ; 50 50

B13_0600:	.db $44
B13_0601:		eor $46			; 45 46
B13_0603:	.db $44
B13_0604:	.db $54
B13_0605:		eor $56, x		; 55 56
B13_0607:		bvc B13_066d ; 50 64

B13_0609:		adc $66			; 65 66
B13_060b:	.db $44
B13_060c:		tya				; 98 
B13_060d:	.db $4f
B13_060e:		bvc B13_0660 ; 50 50

B13_0610:		tay				; a8 
B13_0611:	.db $5f
B13_0612:	.db $44
B13_0613:	.db $44
B13_0614:		lsr $506f		; 4e 6f 50
B13_0617:		bvc B13_0688 ; 50 6f

B13_0619:		lsr $ac44		; 4e 44 ac
B13_061c:		lda $afae		; ad ae af
B13_061f:	.db $43
B13_0620:		.db $00				; 00
B13_0621:		.db $00				; 00
B13_0622:	.db $44
B13_0623:	.db $53
B13_0624:		.db $00				; 00
B13_0625:		.db $00				; 00
B13_0626:	.db $53
B13_0627:	.db $43
B13_0628:		.db $00				; 00
B13_0629:		.db $00				; 00
B13_062a:	.db $63
B13_062b:		.db $00				; 00
B13_062c:		.db $00				; 00
B13_062d:		.db $00				; 00
B13_062e:		.db $00				; 00
B13_062f:		.db $00				; 00
B13_0630:		.db $00				; 00
B13_0631:		.db $00				; 00
B13_0632:		.db $00				; 00
B13_0633:		.db $00				; 00
B13_0634:		bvc B13_0636 ; 50 00

B13_0636:		bvc B13_0688 ; 50 50

B13_0638:	.db $44
B13_0639:		bvc B13_067e ; 50 43

B13_063b:	.db $43
B13_063c:	.db $74
B13_063d:		adc $76, x		; 75 76
B13_063f:		bvc B13_0681 ; 50 40

B13_0641:		eor ($42, x)	; 41 42
B13_0643:		ldy $bcbe, x	; bc be bc
B13_0646:		ldx $bfbd, y	; be bd bf
B13_0649:		lda $44bf, x	; bd bf 44
B13_064c:		lsr $506f		; 4e 6f 50
B13_064f:	.db $6b
B13_0650:		adc $6c7e, x	; 7d 7e 6c
B13_0653:		ldy $bcbe, x	; bc be bc
B13_0656:		ldx $bfbd, y	; be bd bf
B13_0659:		lda $63bf, x	; bd bf 63
B13_065c:		.db $00				; 00
B13_065d:		.db $00				; 00
B13_065e:	.db $53
B13_065f:	.db $43
B13_0660:		.db $00				; 00
B13_0661:		.db $00				; 00
B13_0662:	.db $43
B13_0663:		ldy $bcbe, x	; bc be bc
B13_0666:		ldx $bfbd, y	; be bd bf
B13_0669:		lda $43bf, x	; bd bf 43
B13_066c:		tya				; 98 
B13_066d:	.db $4f
B13_066e:		tya				; 98 
B13_066f:		bvc B13_0619 ; 50 a8

B13_0671:	.db $5f
B13_0672:		tay				; a8 
B13_0673:	.db $44
B13_0674:		lsr $4e6f		; 4e 6f 4e
B13_0677:		;removed
	.db $50 $6f

B13_0679:		lsr $986f		; 4e 6f 98
B13_067c:	.db $4f
B13_067d:	.db $4f
B13_067e:		bvc B13_0628 ; 50 a8

B13_0680:	.db $5f
B13_0681:	.db $5f
B13_0682:	.db $44
B13_0683:	.db $6f
B13_0684:		lsr $506f		; 4e 6f 50
B13_0687:		tay				; a8 
B13_0688:	.db $6f
B13_0689:		lsr $8f44		; 4e 44 8f
B13_068c:		;removed
	.db $50 $44

B13_068e:		bvc B13_0690 ; 50 00

B13_0690:	.db $8f
B13_0691:		bvc B13_06d7 ; 50 44

B13_0693:	.db $44
B13_0694:		.db $00				; 00
B13_0695:	.db $8f
B13_0696:		;removed
	.db $50 $50

B13_0698:	.db $44
B13_0699:		.db $00				; 00
B13_069a:	.db $8f
B13_069b:	.db $43
B13_069c:		;removed
	.db $50 $44

B13_069e:		stx $4450		; 8e 50 44
B13_06a1:		stx $4400		; 8e 00 44
B13_06a4:		stx $5000		; 8e 00 50
B13_06a7:		stx $5000		; 8e 00 50
B13_06aa:	.db $43
B13_06ab:	.db $44
B13_06ac:		lsr $4e6f		; 4e 6f 4e
B13_06af:	.db $6b
B13_06b0:		adc $7e7d, x	; 7d 7d 7e
B13_06b3:		ldy $bcbe, x	; bc be bc
B13_06b6:		ldx $bfbd, y	; be bd bf
B13_06b9:		lda $6fbf, x	; bd bf 6f
B13_06bc:		lsr $506f		; 4e 6f 50
B13_06bf:		adc $7e7e, x	; 7d 7e 7e
B13_06c2:		jmp ($bebc)		; 6c bc be


B13_06c5:		ldy $bdbe, x	; bc be bd
B13_06c8:	.db $bf
B13_06c9:	.db $bd $bf $00
B13_06cc:		.db $00				; 00
B13_06cd:		.db $00				; 00
B13_06ce:	.db $8e $00 $00
B13_06d1:	.db $8e $00 $00
B13_06d4:		stx $5000		; 8e 00 50
B13_06d7:		stx $5000		; 8e 00 50
B13_06da:	.db $43
B13_06db:	.db $44
B13_06dc:		;removed
	.db $50 $44

B13_06de:		bvc B13_0730 ; 50 50

B13_06e0:	.db $44
B13_06e1:		bvc B13_0727 ; 50 44

B13_06e3:		ldy $bcbe, x	; bc be bc
B13_06e6:		ldx $bfbd, y	; be bd bf
B13_06e9:	.db $bd $bf $00
B13_06ec:		.db $00				; 00
B13_06ed:	.db $3c
B13_06ee:		.db $00				; 00
B13_06ef:		.db $00				; 00
B13_06f0:		.db $00				; 00
B13_06f1:	.db $3a
B13_06f2:		.db $00				; 00
B13_06f3:		.db $00				; 00
B13_06f4:		.db $00				; 00
B13_06f5:	.db $3c
B13_06f6:		.db $00				; 00
B13_06f7:		.db $00				; 00
B13_06f8:		.db $00				; 00
B13_06f9:	.db $3b
B13_06fa:		.db $00				; 00
B13_06fb:	.db $8f
B13_06fc:		bvc B13_0742 ; 50 44

B13_06fe:		bvc B13_0700 ; 50 00

B13_0700:	.db $8f
B13_0701:		bvc B13_0747 ; 50 44

B13_0703:		ldy $bcbe, x	; bc be bc
B13_0706:		ldx $bfbd, y	; be bd bf
B13_0709:		lda $44bf, x	; bd bf 44
B13_070c:		bvc B13_0752 ; 50 44

B13_070e:		bvc B13_0760 ; 50 50

B13_0710:	.db $44
B13_0711:		;removed
	.db $50 $44

B13_0713:		ldy $bbbe, x	; bc be bb
B13_0716:		tsx				; ba 
B13_0717:	.db $bd $bf $00
B13_071a:	.db $bb
B13_071b:	.db $44
B13_071c:		;removed
	.db $50 $44

B13_071e:		stx $4450		; 8e 50 44
B13_0721:		stx $bc00		; 8e 00 bc
B13_0724:		ldx $bebc, y	; be bc be
B13_0727:		lda $bdbf, x	; bd bf bd
B13_072a:	.db $bf
B13_072b:		.db $00				; 00
B13_072c:		.db $00				; 00
B13_072d:	.db $3a
B13_072e:		.db $00				; 00
B13_072f:		.db $00				; 00
B13_0730:		.db $00				; 00
B13_0731:	.db $3c
B13_0732:		.db $00				; 00
B13_0733:		ldy $bcbe, x	; bc be bc
B13_0736:		ldx $bfbd, y	; be bd bf
B13_0739:		lda $bcbf, x	; bd bf bc
B13_073c:		ldx $bebc, y	; be bc be
B13_073f:		lda $bdbf, x	; bd bf bd
B13_0742:	.db $bf
B13_0743:		.db $00				; 00
B13_0744:		.db $00				; 00
B13_0745:		.db $00				; 00
B13_0746:		.db $00				; 00
B13_0747:		.db $00				; 00
B13_0748:		.db $00				; 00
B13_0749:		.db $00				; 00
B13_074a:		.db $00				; 00
B13_074b:		.db $00				; 00
B13_074c:		.db $00				; 00
B13_074d:		.db $00				; 00
B13_074e:		.db $00				; 00
B13_074f:		.db $00				; 00
B13_0750:		.db $00				; 00
B13_0751:	.db $5c
B13_0752:		adc $4a00		; 6d 00 4a
B13_0755:		ldy $6dbe, x	; bc be 6d
B13_0758:	.db $5c
B13_0759:	.db $bd $bf $00
B13_075c:		.db $00				; 00
B13_075d:		ldy $4abe, x	; bc be 4a
B13_0760:		adc $bfbd		; 6d bd bf
B13_0763:	.db $5c
B13_0764:		.db $00				; 00
B13_0765:		.db $00				; 00
B13_0766:		.db $00				; 00
B13_0767:		.db $00				; 00
B13_0768:		.db $00				; 00
B13_0769:		.db $00				; 00
B13_076a:		.db $00				; 00
B13_076b:		.db $00				; 00
B13_076c:		.db $00				; 00
B13_076d:		.db $00				; 00
B13_076e:		.db $00				; 00
B13_076f:		.db $00				; 00
B13_0770:		.db $00				; 00
B13_0771:		.db $00				; 00
B13_0772:		.db $00				; 00
B13_0773:		lsr a			; 4a
B13_0774:	.db $5c
B13_0775:		lsr a			; 4a
B13_0776:		lsr a			; 4a
B13_0777:		adc $5c00		; 6d 00 5c
B13_077a:		adc $9696		; 6d 96 96
B13_077d:	.db $97
B13_077e:		.db $00				; 00
B13_077f:		stx $96, y		; 96 96
B13_0781:	.db $97
B13_0782:		.db $00				; 00
B13_0783:		stx $96, y		; 96 96
B13_0785:		ldy $96be, x	; bc be 96
B13_0788:		stx $bd, y		; 96 bd
B13_078a:	.db $bf
B13_078b:	.db $9e
B13_078c:	.db $92
B13_078d:	.db $82
B13_078e:	.db $97
B13_078f:	.db $87
B13_0790:		sta ($92), y	; 91 92
B13_0792:	.db $83
B13_0793:	.db $9e
B13_0794:		lda ($91, x)	; a1 91
B13_0796:	.db $92
B13_0797:	.db $87
B13_0798:		ldy #$a1		; a0 a1
B13_079a:		ldx #$00		; a2 00
B13_079c:		.db $00				; 00
B13_079d:	.db $b2
B13_079e:		stx $00, y		; 96 00
B13_07a0:		.db $00				; 00
B13_07a1:		.db $00				; 00
B13_07a2:		stx $00, y		; 96 00
B13_07a4:		.db $00				; 00
B13_07a5:		.db $00				; 00
B13_07a6:		ldx #$00		; a2 00
B13_07a8:		.db $00				; 00
B13_07a9:		.db $00				; 00
B13_07aa:	.db $b2
B13_07ab:		sta ($92), y	; 91 92
B13_07ad:	.db $82
B13_07ae:	.db $83
B13_07af:		bcc B13_0742 ; 90 91

B13_07b1:	.db $92
B13_07b2:	.db $97
B13_07b3:		ldy #$a1		; a0 a1
B13_07b5:		ldx #$93		; a2 93
B13_07b7:		ldy #$a1		; a0 a1
B13_07b9:		sta ($00), y	; 91 00
B13_07bb:		stx $96, y		; 96 96
B13_07bd:	.db $83
B13_07be:		.db $00				; 00
B13_07bf:		stx $96, y		; 96 96
B13_07c1:		.db $00				; 00
B13_07c2:		.db $00				; 00
B13_07c3:		stx $83, y		; 96 83
B13_07c5:		.db $00				; 00
B13_07c6:		.db $00				; 00
B13_07c7:	.db $b2
B13_07c8:		ror $00, x		; 76 00
B13_07ca:		.db $00				; 00
B13_07cb:	.db $b2
B13_07cc:		ldy #$bc		; a0 bc
B13_07ce:		ldx $9600, y	; be 00 96
B13_07d1:	.db $bd $bf $00
B13_07d4:		stx $96, y		; 96 96
B13_07d6:		stx $00, y		; 96 00
B13_07d8:	.db $87
B13_07d9:		stx $96, y		; 96 96
B13_07db:		ldy $bcbe, x	; bc be bc
B13_07de:		ldx $bfbd, y	; be bd bf
B13_07e1:	.db $bd $bf $00
B13_07e4:		.db $00				; 00
B13_07e5:		.db $00				; 00
B13_07e6:		.db $00				; 00
B13_07e7:		.db $00				; 00
B13_07e8:		.db $00				; 00
B13_07e9:		.db $00				; 00
B13_07ea:		.db $00				; 00
B13_07eb:		ldy $a5			; a4 a5
B13_07ed:		ldx $a7			; a6 a7
B13_07ef:		ldy $a5			; a4 a5
B13_07f1:		ldx $a7			; a6 a7
B13_07f3:		ldy $b5, x		; b4 b5
B13_07f5:		ldx $b7, y		; b6 b7
B13_07f7:		ldy $a5			; a4 a5
B13_07f9:		ldx $a7			; a6 a7
B13_07fb:		ldy $a5			; a4 a5
B13_07fd:		ldx $a7			; a6 a7
B13_07ff:		ldy $a5			; a4 a5
B13_0801:		ldx $a7			; a6 a7
B13_0803:		ldy $b5, x		; b4 b5
B13_0805:		ldx $b7, y		; b6 b7
B13_0807:		ldy $b5, x		; b4 b5
B13_0809:		ldx $b7, y		; b6 b7
B13_080b:		sta $99, x		; 95 99
B13_080d:		sty $85, x		; 94 85
B13_080f:		sty $a9, x		; 94 a9
B13_0811:	.db $ab
B13_0812:		sty $52			; 84 52
B13_0814:		txs				; 9a 
B13_0815:	.db $9b
B13_0816:	.db $9b
B13_0817:		.db $00				; 00
B13_0818:	.db $52
B13_0819:		adc $4400, x	; 7d 00 44
B13_081c:		bvc B13_0862 ; 50 44

B13_081e:		;removed
	.db $50 $50

B13_0820:	.db $44
B13_0821:		bvc B13_0867 ; 50 44

B13_0823:	.db $52
B13_0824:		bvc B13_086a ; 50 44

B13_0826:	.db $9b
B13_0827:		.db $00				; 00
B13_0828:	.db $52
B13_0829:	.db $7d $00 $00
B13_082c:		.db $00				; 00
B13_082d:		.db $00				; 00
B13_082e:		.db $00				; 00
B13_082f:		.db $00				; 00
B13_0830:		.db $00				; 00
B13_0831:	.db $5c
B13_0832:		lsr a			; 4a
B13_0833:	.db $6d $00 $00
B13_0836:	.db $6d $00 $00
B13_0839:		.db $00				; 00
B13_083a:		.db $00				; 00
B13_083b:		.db $00				; 00
B13_083c:		.db $00				; 00
B13_083d:		.db $00				; 00
B13_083e:		.db $00				; 00
B13_083f:		.db $00				; 00
B13_0840:		.db $00				; 00
B13_0841:		.db $00				; 00
B13_0842:		.db $00				; 00
B13_0843:	.db $9e
B13_0844:	.db $92
B13_0845:	.db $82
B13_0846:	.db $83
B13_0847:	.db $87
B13_0848:		sta ($92), y	; 91 92
B13_084a:	.db $93
B13_084b:		adc $4844, y	; 79 44 48
B13_084e:		sta $6c, x		; 95 6c
B13_0850:	.db $44
B13_0851:		pha				; 48 
B13_0852:		sty $53			; 84 53
B13_0854:	.db $44
B13_0855:		pha				; 48 
B13_0856:		sty $63, x		; 94 63
B13_0858:	.db $44
B13_0859:		pha				; 48 
B13_085a:		sta $50			; 85 50
B13_085c:		eor ($52), y	; 51 52
B13_085e:	.db $53
B13_085f:		rts				; 60 


B13_0860:		adc ($62, x)	; 61 62
B13_0862:	.db $63
B13_0863:		bvs B13_08d6 ; 70 71

B13_0865:	.db $72
B13_0866:	.db $73
B13_0867:	.db $44
B13_0868:		eor $46			; 45 46
B13_086a:	.db $47
B13_086b:		sta $4048, y	; 99 48 40
B13_086e:	.db $63
B13_086f:		lda $4048		; ad 48 40
B13_0872:	.db $53
B13_0873:		ldy $bcbe, x	; bc be bc
B13_0876:		ldx $bfbd, y	; be bd bf
B13_0879:		lda $79bf, x	; bd bf 79
B13_087c:	.db $44
B13_087d:		pha				; 48 
B13_087e:	.db $ab
B13_087f:		jmp ($4844)		; 6c 44 48


B13_0882:		tax				; aa 
B13_0883:		ldy $bcbe, x	; bc be bc
B13_0886:		ldx $bfbd, y	; be bd bf
B13_0889:		lda $95bf, x	; bd bf 95
B13_088c:		pha				; 48 
B13_088d:		rti				; 40 


B13_088e:	.db $63
B13_088f:		sty $48, x		; 94 48
B13_0891:		rti				; 40 


B13_0892:	.db $53
B13_0893:		sty $48			; 84 48
B13_0895:		rti				; 40 


B13_0896:		adc $4894, y	; 79 94 48
B13_0899:		rti				; 40 


B13_089a:		jmp ($5554)		; 6c 54 55


B13_089d:		lsr $57, x		; 56 57
B13_089f:	.db $64
B13_08a0:		adc $66			; 65 66
B13_08a2:	.db $67
B13_08a3:	.db $74
B13_08a4:		adc $76, x		; 75 76
B13_08a6:	.db $77
B13_08a7:	.db $7a
B13_08a8:	.db $7b
B13_08a9:	.db $7c
B13_08aa:		adc $8595, x	; 7d 95 85
B13_08ad:		sty $49, x		; 94 49
B13_08af:		sty $84, x		; 94 84
B13_08b1:		cli				; 58 
B13_08b2:		eor $4f84, y	; 59 84 4f
B13_08b5:		pla				; 68 
B13_08b6:		adc #$94		; 69 94
B13_08b8:	.db $5f
B13_08b9:		sei				; 78 
B13_08ba:	.db $53
B13_08bb:		lsr a			; 4a
B13_08bc:	.db $4b
B13_08bd:	.db $4b
B13_08be:		jmp $5b5a		; 4c 5a 5b


B13_08c1:	.db $5b
B13_08c2:	.db $5c
B13_08c3:	.db $53
B13_08c4:		jmp ($7963)		; 6c 63 79


B13_08c7:		adc $4241, y	; 79 41 42
B13_08ca:	.db $53
B13_08cb:		eor $9495		; 4d 95 94
B13_08ce:		sta $5d			; 85 5d
B13_08d0:		lsr $8495, x	; 5e 95 84
B13_08d3:		adc $6f6e		; 6d 6e 6f
B13_08d6:		sta $79			; 85 79
B13_08d8:		ror $957f, x	; 7e 7f 95
B13_08db:		ror a			; 6a
B13_08dc:	.db $7a
B13_08dd:		adc $b46b, x	; 7d 6b b4
B13_08e0:		lda $b6, x		; b5 b6
B13_08e2:	.db $b7
B13_08e3:		ldy $bcbe, x	; bc be bc
B13_08e6:		ldx $bfbd, y	; be bd bf
B13_08e9:		lda $55bf, x	; bd bf 55
B13_08ec:		eor $a0, x		; 55 a0
B13_08ee:	.db $ff
B13_08ef:		eor $00, x		; 55 00
B13_08f1:		tax				; aa 
B13_08f2:		eor $55, x		; 55 55
B13_08f4:		eor $66, x		; 55 66
B13_08f6:		eor $55, x		; 55 55
B13_08f8:		eor $66, x		; 55 66
B13_08fa:		eor $55, x		; 55 55
B13_08fc:		eor $55, x		; 55 55
B13_08fe:		eor $55, x		; 55 55
B13_0900:		eor $55, x		; 55 55
B13_0902:		eor $55, x		; 55 55
B13_0904:		eor $55, x		; 55 55
B13_0906:		eor $55, x		; 55 55
B13_0908:		eor $55, x		; 55 55
B13_090a:		eor $55, x		; 55 55
B13_090c:		eor $55, x		; 55 55
B13_090e:		eor $55, x		; 55 55
B13_0910:		eor $55, x		; 55 55
B13_0912:		eor $55, x		; 55 55
B13_0914:		eor $55, x		; 55 55
B13_0916:	.db $5f
B13_0917:	.db $ff
B13_0918:	.db $ff
B13_0919:	.db $57
B13_091a:		eor $a955, x	; 5d 55 a9
B13_091d:		tax				; aa 
B13_091e:		eor $55, x		; 55 55
B13_0920:	.db $5a
B13_0921:	.db $5a
B13_0922:		eor $aa, x		; 55 aa
B13_0924:		tax				; aa 
B13_0925:		eor $55, x		; 55 55
B13_0927:	.db $5a
B13_0928:	.db $5a
B13_0929:		eor $55, x		; 55 55
B13_092b:		ora ($55), y	; 11 55
B13_092d:		eor $55, x		; 55 55
B13_092f:		eor ($55), y	; 51 55
B13_0931:		adc $ff77, x	; 7d 77 ff
B13_0934:		ror a			; 6a
B13_0935:		tax				; aa 
B13_0936:		tax				; aa 
B13_0937:		tax				; aa 
B13_0938:		ror a			; 6a
B13_0939:		ldx $00			; a6 00
B13_093b:		eor $55, x		; 55 55
B13_093d:		eor $55, x		; 55 55
B13_093f:	.db $ff
B13_0940:		tax				; aa 
B13_0941:		eor $55, x		; 55 55
B13_0943:		eor $55, x		; 55 55
B13_0945:		eor $55, x		; 55 55
B13_0947:		eor $55, x		; 55 55
B13_0949:		eor $55, x		; 55 55
B13_094b:	.db $53
B13_094c:		lda #$60		; a9 60
B13_094e:		lda #$6d		; a9 6d
B13_0950:		lda #$7a		; a9 7a
B13_0952:		lda #$02		; a9 02
B13_0954:	.db $df
B13_0955:		ldy #$ee		; a0 ee
B13_0957:	.db $9f
B13_0958:		eor $e0ac, y	; 59 ac e0
B13_095b:		.db $00				; 00
B13_095c:		.db $00				; 00
B13_095d:	.db $fc
B13_095e:	.db $04
B13_095f:		cpx #$02		; e0 02
B13_0961:		sed				; f8 
B13_0962:	.db $ab
B13_0963:		sty $aa			; 84 aa
B13_0965:		stx $ab, y		; 96 ab
B13_0967:		cpx #$81		; e0 81
B13_0969:		.db $00				; 00
B13_096a:		jsr $e081		; 20 81 e0
B13_096d:	.db $02
B13_096e:	.db $c7
B13_096f:	.db $ab
B13_0970:	.db $83
B13_0971:		lda #$18		; a9 18
B13_0973:		sty $e0			; 84 e0
B13_0975:		sta ($00, x)	; 81 00
B13_0977:		jsr $e081		; 20 81 e0
B13_097a:		ora ($87, x)	; 01 87
B13_097c:	.db $83
B13_097d:		ora $ab			; 05 ab
B13_097f:		cpx #$00		; e0 00
B13_0981:		.db $00				; 00
B13_0982:		cpx #$03		; e0 03
B13_0984:		.db $00				; 00
B13_0985:		bpl B13_0987 ; 10 00

B13_0987:		.db $00				; 00
B13_0988:		;removed
	.db $10 $07

B13_098a:		.db $00				; 00
B13_098b:		.db $00				; 00
B13_098c:		.db $00				; 00
B13_098d:		bpl B13_098f ; 10 00

B13_098f:		.db $00				; 00
B13_0990:		;removed
	.db $10 $19

B13_0992:	.db $07
B13_0993:		.db $00				; 00
B13_0994:		.db $00				; 00
B13_0995:	.db $17
B13_0996:		ora $1200, y	; 19 00 12
B13_0999:		asl $1a, x		; 16 1a
B13_099b:	.db $02
B13_099c:		ora $1c15, y	; 19 15 1c
B13_099f:		ora $1e11, y	; 19 11 1e
B13_09a2:		ora $19, x		; 15 19
B13_09a4:		asl $1a, x		; 16 1a
B13_09a6:		ora $1014, y	; 19 14 10
B13_09a9:		ora $1619, y	; 19 19 16
B13_09ac:	.db $13
B13_09ad:	.db $02
B13_09ae:	.db $17
B13_09af:	.db $14
B13_09b0:	.db $17
B13_09b1:		ora #$13		; 09 13
B13_09b3:		ora ($10, x)	; 01 10
B13_09b5:		ora $1816, y	; 19 16 18
B13_09b8:	.db $1a
B13_09b9:		ora $0110, y	; 19 10 01
B13_09bc:		ora ($14, x)	; 01 14
B13_09be:	.db $14
B13_09bf:	.db $0b
B13_09c0:		ora ($14, x)	; 01 14
B13_09c2:		;removed
	.db $10 $01

B13_09c4:		ora ($14, x)	; 01 14
B13_09c6:		ora $19, x		; 15 19
B13_09c8:	.db $14
B13_09c9:	.db $1c
B13_09ca:	.db $12
B13_09cb:		ora ($01, x)	; 01 01
B13_09cd:		ora $11, x		; 15 11
B13_09cf:	.db $14
B13_09d0:	.db $1a
B13_09d1:		ora $1919, y	; 19 19 19
B13_09d4:		ora ($03, x)	; 01 03
B13_09d6:	.db $12
B13_09d7:		asl $1518, x	; 1e 18 15
B13_09da:	.db $1c
B13_09db:		ora $01, x		; 15 01
B13_09dd:		ora $1911, y	; 19 11 19
B13_09e0:		ora $1106, y	; 19 06 11
B13_09e3:		ora $1601, y	; 19 01 16
B13_09e6:		;removed
	.db $10 $17

B13_09e8:	.db $17
B13_09e9:	.db $02
B13_09ea:		bpl B13_0a02 ; 10 16

B13_09ec:		ora ($17, x)	; 01 17
B13_09ee:	.db $13
B13_09ef:	.db $14
B13_09f0:	.db $14
B13_09f1:		ora $1713, y	; 19 13 17
B13_09f4:		ora ($16, x)	; 01 16
B13_09f6:		;removed
	.db $10 $17

B13_09f8:		ora #$17		; 09 17
B13_09fa:		bpl B13_0a12 ; 10 16

B13_09fc:		ora ($14, x)	; 01 14
B13_09fe:		bpl B13_0a1a ; 10 1a

B13_0a00:	.db $14
B13_0a01:	.db $14
B13_0a02:		bpl B13_0a05 ; 10 01

B13_0a04:	.db $17
B13_0a05:	.db $17
B13_0a06:		php				; 08 
B13_0a07:	.db $17
B13_0a08:	.db $14
B13_0a09:	.db $14
B13_0a0a:	.db $12
B13_0a0b:		ora $18, x		; 15 18
B13_0a0d:		clc				; 18 
B13_0a0e:		ora $1f, x		; 15 1f
B13_0a10:		ora $18, x		; 15 18
B13_0a12:		ora ($01), y	; 11 01
B13_0a14:		.db $00				; 00
B13_0a15:	.db $03
B13_0a16:		.db $00				; 00
B13_0a17:		ora ($00), y	; 11 00
B13_0a19:		.db $00				; 00
B13_0a1a:	.db $12
B13_0a1b:		ora ($03, x)	; 01 03
B13_0a1d:	.db $03
B13_0a1e:	.db $04
B13_0a1f:	.db $12
B13_0a20:		.db $00				; 00
B13_0a21:		.db $00				; 00
B13_0a22:		ora ($00), y	; 11 00
B13_0a24:		ora ($19), y	; 11 19
B13_0a26:	.db $19 $0c $00
B13_0a29:		.db $00				; 00
B13_0a2a:		bpl B13_0a45 ; 10 19

B13_0a2c:		;removed
	.db $10 $14

B13_0a2e:	.db $17
B13_0a2f:	.db $17
B13_0a30:	.db $17
B13_0a31:		ora $1309, y	; 19 09 13
B13_0a34:	.db $17
B13_0a35:		php				; 08 
B13_0a36:	.db $14
B13_0a37:		asl $16, x		; 16 16
B13_0a39:		asl $1019, x	; 1e 19 10
B13_0a3c:	.db $14
B13_0a3d:		ora $141b, y	; 19 1b 14
B13_0a40:	.db $14
B13_0a41:		ora ($14), y	; 11 14
B13_0a43:		;removed
	.db $10 $15

B13_0a45:	.db $14
B13_0a46:	.db $17
B13_0a47:	.db $14
B13_0a48:		asl $10, x		; 16 10
B13_0a4a:	.db $17
B13_0a4b:		ora ($03, x)	; 01 03
B13_0a4d:		ora $15, x		; 15 15
B13_0a4f:		ora $1214, x	; 1d 14 12
B13_0a52:		asl $01, x		; 16 01
B13_0a54:		ora $1919, y	; 19 19 19
B13_0a57:		ora ($1b), y	; 11 1b
B13_0a59:		ora $0115, y	; 19 15 01
B13_0a5c:		ora $1d, x		; 15 1d
B13_0a5e:		ora $12, x		; 15 12
B13_0a60:		clc				; 18 
B13_0a61:	.db $1f
B13_0a62:	.db $03
B13_0a63:		ora ($19, x)	; 01 19
B13_0a65:		ora ($1b), y	; 11 1b
B13_0a67:		ora $1919, y	; 19 19 19
B13_0a6a:		ora ($01), y	; 11 01
B13_0a6c:		asl $10, x		; 16 10
B13_0a6e:	.db $17
B13_0a6f:	.db $17
B13_0a70:	.db $13
B13_0a71:	.db $14
B13_0a72:		bpl B13_0a75 ; 10 01

B13_0a74:	.db $13
B13_0a75:		php				; 08 
B13_0a76:	.db $14
B13_0a77:		asl $10, x		; 16 10
B13_0a79:		asl $10, x		; 16 10
B13_0a7b:		ora ($10, x)	; 01 10
B13_0a7d:	.db $14
B13_0a7e:	.db $1b
B13_0a7f:	.db $14
B13_0a80:		;removed
	.db $10 $14

B13_0a82:		;removed
	.db $10 $01

B13_0a84:		ora ($00, x)	; 01 00
B13_0a86:		ora ($4c), y	; 11 4c
B13_0a88:		lsr a			; 4a
B13_0a89:		and ($4e), y	; 31 4e
B13_0a8b:		ora ($00), y	; 11 00
B13_0a8d:	.db $34
B13_0a8e:		ora ($33), y	; 11 33
B13_0a90:		and $4c4a, x	; 3d 4a 4c
B13_0a93:		bpl B13_0ae3 ; 10 4e

B13_0a95:		lsr $10			; 46 10
B13_0a97:		and $3a, x		; 35 3a
B13_0a99:		and $1149, x	; 3d 49 11
B13_0a9c:	.db $34
B13_0a9d:		sec				; 38 
B13_0a9e:		ora ($39), y	; 11 39
B13_0aa0:	.db $3c
B13_0aa1:	.db $37
B13_0aa2:		asl $02			; 06 02
B13_0aa4:		lsr $3e			; 46 3e
B13_0aa6:		bpl B13_0aed ; 10 45

B13_0aa8:		;removed
	.db $30 $40

B13_0aaa:		jmp $4f11		; 4c 11 4f


B13_0aad:	.db $34
B13_0aae:	.db $02
B13_0aaf:		eor #$3a		; 49 3a
B13_0ab1:	.db $37
B13_0ab2:	.db $4f
B13_0ab3:		ora ($4e), y	; 11 4e
B13_0ab5:	.db $4f
B13_0ab6:		ora ($35), y	; 11 35
B13_0ab8:		lsr a			; 4a
B13_0ab9:		and $104d, x	; 3d 4d 10
B13_0abc:		and $1100, y	; 39 00 11
B13_0abf:	.db $3f
B13_0ac0:		and $4c4a, x	; 3d 4a 4c
B13_0ac3:		ora ($46), y	; 11 46
B13_0ac5:		rol $3211, x	; 3e 11 32
B13_0ac8:		bmi B13_0b0a ; 30 40

B13_0aca:		eor $4e11		; 4d 11 4e
B13_0acd:	.db $34
B13_0ace:	.db $44
B13_0acf:	.db $34
B13_0ad0:	.db $3a
B13_0ad1:		and ($4c), y	; 31 4c
B13_0ad3:		bpl B13_0b1b ; 10 46

B13_0ad5:		lsr $11			; 46 11
B13_0ad7:		eor #$3a		; 49 3a
B13_0ad9:	.db $37
B13_0ada:		and $11, x		; 35 11
B13_0adc:		rol $103e, x	; 3e 3e 10
B13_0adf:		jmp $3d4a		; 4c 4a 3d


B13_0ae2:	.db $4f
B13_0ae3:		bpl B13_0b1e ; 10 39

B13_0ae5:	.db $34
B13_0ae6:		bpl B13_0b1b ; 10 33

B13_0ae8:		and $4c4a, x	; 3d 4a 4c
B13_0aeb:		ora ($4f), y	; 11 4f
B13_0aed:		and $3511, y	; 39 11 35
B13_0af0:	.db $3a
B13_0af1:		and $0209, x	; 3d 09 02
B13_0af4:		lsr $3e			; 46 3e
B13_0af6:		bpl B13_0b30 ; 10 38

B13_0af8:	.db $3c
B13_0af9:	.db $43
B13_0afa:	.db $47
B13_0afb:		ora ($4e), y	; 11 4e
B13_0afd:	.db $34
B13_0afe:		ora ($33), y	; 11 33
B13_0b00:	.db $43
B13_0b01:	.db $47
B13_0b02:		and $10, x		; 35 10
B13_0b04:		.db $00				; 00
B13_0b05:	.db $02
B13_0b06:		ora $57			; 05 57
B13_0b08:	.db $5a
B13_0b09:		.db $00				; 00
B13_0b0a:		.db $00				; 00
B13_0b0b:	.db $5a
B13_0b0c:	.db $57
B13_0b0d:	.db $57
B13_0b0e:		ora $00			; 05 00
B13_0b10:	.db $5a
B13_0b11:	.db $54
B13_0b12:	.db $54
B13_0b13:	.db $5a
B13_0b14:		.db $00				; 00
B13_0b15:		.db $00				; 00
B13_0b16:		ora $5c			; 05 5c
B13_0b18:	.db $5a
B13_0b19:		pha				; 48 
B13_0b1a:		pha				; 48 
B13_0b1b:	.db $5a
B13_0b1c:	.db $5c
B13_0b1d:	.db $5c
B13_0b1e:		asl a			; 0a
B13_0b1f:	.db $02
B13_0b20:	.db $5a
B13_0b21:		pha				; 48 
B13_0b22:		pha				; 48 
B13_0b23:	.db $5a
B13_0b24:	.db $02
B13_0b25:	.db $02
B13_0b26:		asl $5b58		; 0e 58 5b
B13_0b29:		eor $5b5e, x	; 5d 5e 5b
B13_0b2c:		cli				; 58 
B13_0b2d:		cli				; 58 
B13_0b2e:		ora ($02, x)	; 01 02
B13_0b30:	.db $02
B13_0b31:	.db $4b
B13_0b32:		rol $02, x		; 36 02
B13_0b34:	.db $02
B13_0b35:		ora ($01, x)	; 01 01
B13_0b37:		ora ($5c, x)	; 01 5c
B13_0b39:	.db $5a
B13_0b3a:		.db $00				; 00
B13_0b3b:		.db $00				; 00
B13_0b3c:	.db $57
B13_0b3d:		eor $5a, x		; 55 5a
B13_0b3f:		.db $00				; 00
B13_0b40:		.db $00				; 00
B13_0b41:	.db $5a
B13_0b42:		;removed
	.db $50 $5a

B13_0b44:		bvc B13_0b96 ; 50 50

B13_0b46:	.db $5a
B13_0b47:	.db $5c
B13_0b48:	.db $5c
B13_0b49:	.db $5a
B13_0b4a:	.db $53
B13_0b4b:	.db $5a
B13_0b4c:	.db $53
B13_0b4d:	.db $53
B13_0b4e:	.db $5a
B13_0b4f:		cli				; 58 
B13_0b50:		cli				; 58 
B13_0b51:	.db $5b
B13_0b52:		.db $00				; 00
B13_0b53:	.db $5a
B13_0b54:		.db $00				; 00
B13_0b55:		eor $015b, y	; 59 5b 01
B13_0b58:	.db $02
B13_0b59:	.db $02
B13_0b5a:	.db $02
B13_0b5b:	.db $57
B13_0b5c:		lsr $57, x		; 56 57
B13_0b5e:	.db $02
B13_0b5f:		ora ($5a, x)	; 01 5a
B13_0b61:		.db $00				; 00
B13_0b62:	.db $5b
B13_0b63:		clc				; 18 
B13_0b64:		clc				; 18 
B13_0b65:		clc				; 18 
B13_0b66:		eor $55, x		; 55 55
B13_0b68:		eor $55, x		; 55 55
B13_0b6a:		eor $00, x		; 55 00
B13_0b6c:	.db $5a
B13_0b6d:		.db $00				; 00
B13_0b6e:		eor ($52), y	; 51 52
B13_0b70:	.db $52
B13_0b71:	.db $52
B13_0b72:		bvc B13_0bc4 ; 50 50

B13_0b74:	.db $5a
B13_0b75:		bvc B13_0bca ; 50 53

B13_0b77:	.db $53
B13_0b78:	.db $53
B13_0b79:	.db $53
B13_0b7a:	.db $53
B13_0b7b:	.db $53
B13_0b7c:	.db $5a
B13_0b7d:	.db $53
B13_0b7e:		.db $00				; 00
B13_0b7f:		eor $5900, y	; 59 00 59
B13_0b82:		.db $00				; 00
B13_0b83:		.db $00				; 00
B13_0b84:	.db $5a
B13_0b85:	.db $53
B13_0b86:		lsr $56, x		; 56 56
B13_0b88:		lsr $56, x		; 56 56
B13_0b8a:	.db $57
B13_0b8b:	.db $4b
B13_0b8c:	.db $5b
B13_0b8d:		.db $00				; 00
B13_0b8e:		clc				; 18 
B13_0b8f:		clc				; 18 
B13_0b90:		clc				; 18 
B13_0b91:		clc				; 18 
B13_0b92:		clc				; 18 
B13_0b93:		ora $0209, y	; 19 09 02
B13_0b96:		.db $00				; 00
B13_0b97:		rol $232e		; 2e 2e 23
B13_0b9a:		and $202d		; 2d 2d 20
B13_0b9d:		rol $2101		; 2e 01 21
B13_0ba0:		rol $27			; 26 27
B13_0ba2:		plp				; 28 
B13_0ba3:		plp				; 28 
B13_0ba4:		bit $25			; 24 25
B13_0ba6:		ora ($27, x)	; 01 27
B13_0ba8:		ora ($00), y	; 11 00
B13_0baa:		bmi B13_0bdd ; 30 31

B13_0bac:		.db $00				; 00
B13_0bad:		ora ($01), y	; 11 01
B13_0baf:		.db $00				; 00
B13_0bb0:		bpl B13_0bb8 ; 10 06

B13_0bb2:		rti				; 40 


B13_0bb3:		ora ($07, x)	; 01 07
B13_0bb5:		bpl B13_0bc2 ; 10 0b

B13_0bb7:		.db $00				; 00
B13_0bb8:		ora $3000		; 0d 00 30
B13_0bbb:		ora ($00, x)	; 01 00
B13_0bbd:	.db $0c
B13_0bbe:	.db $0f
B13_0bbf:	.db $02
B13_0bc0:	.db $13
B13_0bc1:	.db $07
B13_0bc2:		bmi B13_0bc5 ; 30 01

B13_0bc4:	.db $02
B13_0bc5:	.db $13
B13_0bc6:		ora ($00, x)	; 01 00
B13_0bc8:		and ($00, x)	; 21 00
B13_0bca:	.db $07
B13_0bcb:		and $20			; 25 20
B13_0bcd:		and ($22, x)	; 21 22
B13_0bcf:		bpl B13_0bf3 ; 10 22

B13_0bd1:		ora ($00), y	; 11 00
B13_0bd3:	.db $1b
B13_0bd4:		ora $2511, y	; 19 11 25
B13_0bd7:		;removed
	.db $10 $25

B13_0bd9:		bpl B13_0bf3 ; 10 18

B13_0bdb:		clc				; 18 
B13_0bdc:	.db $1f
B13_0bdd:	.db $12
B13_0bde:	.db $1c
B13_0bdf:	.db $12
B13_0be0:		ora $1910, y	; 19 10 19
B13_0be3:		ora $0611, y	; 19 11 06
B13_0be6:		.db $00				; 00
B13_0be7:		ora ($18, x)	; 01 18
B13_0be9:		;removed
	.db $10 $18

B13_0beb:		clc				; 18 
B13_0bec:		ora $1918		; 0d 18 19
B13_0bef:		ora ($02, x)	; 01 02
B13_0bf1:	.db $13
B13_0bf2:	.db $02
B13_0bf3:	.db $02
B13_0bf4:	.db $13
B13_0bf5:	.db $02
B13_0bf6:	.db $02
B13_0bf7:		ora ($01, x)	; 01 01
B13_0bf9:		and ($22, x)	; 21 22
B13_0bfb:		and ($2b, x)	; 21 2b
B13_0bfd:		and ($29, x)	; 21 29
B13_0bff:	.db $22
B13_0c00:		and #$22		; 29 22
B13_0c02:		and ($06, x)	; 21 06
B13_0c04:		and $2d			; 25 2d
B13_0c06:		jsr $2d23		; 20 23 2d
B13_0c09:		and ($06, x)	; 21 06
B13_0c0b:		.db $00				; 00
B13_0c0c:		plp				; 28 
B13_0c0d:		.db $00				; 00
B13_0c0e:		bit $11			; 24 11
B13_0c10:		.db $00				; 00
B13_0c11:		rol a			; 2a
B13_0c12:	.db $2f
B13_0c13:		.db $00				; 00
B13_0c14:	.db $2c $00 $00
B13_0c17:		bpl B13_0c19 ; 10 00

B13_0c19:		ora ($41), y	; 11 41
B13_0c1b:	.db $42
B13_0c1c:	.db $2c $00 $00
B13_0c1f:		bpl B13_0c21 ; 10 00

B13_0c21:		bpl B13_0c23 ; 10 00

B13_0c23:		rol $2e2e		; 2e 2e 2e
B13_0c26:		rol $012e		; 2e 2e 01
B13_0c29:		and #$29		; 29 29
B13_0c2b:		and #$21		; 29 21
B13_0c2d:		jsr $2929		; 20 29 29
B13_0c30:		and #$22		; 29 22
B13_0c32:		and #$23		; 29 23
B13_0c34:		and $2920		; 2d 20 29
B13_0c37:		and #$21		; 29 21
B13_0c39:		ora ($26), y	; 11 26
B13_0c3b:	.db $27
B13_0c3c:		.db $00				; 00
B13_0c3d:		bit $25			; 24 25
B13_0c3f:	.db $23
B13_0c40:		and $10			; 25 10
B13_0c42:		.db $00				; 00
B13_0c43:		.db $00				; 00
B13_0c44:		.db $00				; 00
B13_0c45:		.db $00				; 00
B13_0c46:		.db $00				; 00
B13_0c47:		bpl B13_0c49 ; 10 00

B13_0c49:		bpl B13_0c4b ; 10 00

B13_0c4b:		.db $00				; 00
B13_0c4c:		.db $00				; 00
B13_0c4d:		.db $00				; 00
B13_0c4e:		.db $00				; 00
B13_0c4f:		bpl B13_0c51 ; 10 00

B13_0c51:		;removed
	.db $10 $01

B13_0c53:		rol $2e2e		; 2e 2e 2e
B13_0c56:		rol $2e2e		; 2e 2e 2e
B13_0c59:		.db $00				; 00
B13_0c5a:		ora ($29, x)	; 01 29
B13_0c5c:	.db $22
B13_0c5d:		and #$29		; 29 29
B13_0c5f:		and #$29		; 29 29
B13_0c61:		and #$01		; 29 01
B13_0c63:	.db $22
B13_0c64:		and #$23		; 29 23
B13_0c66:		and $2920		; 2d 20 29
B13_0c69:		and ($01, x)	; 21 01
B13_0c6b:		and $21			; 25 21
B13_0c6d:	.db $27
B13_0c6e:		.db $00				; 00
B13_0c6f:		bit $22			; 24 22
B13_0c71:		and #$0a		; 29 0a
B13_0c73:		.db $00				; 00
B13_0c74:		ora ($00), y	; 11 00
B13_0c76:		.db $00				; 00
B13_0c77:		.db $00				; 00
B13_0c78:		ora ($29), y	; 11 29
B13_0c7a:		asl $1000		; 0e 00 10
B13_0c7d:		.db $00				; 00
B13_0c7e:		.db $00				; 00
B13_0c7f:		.db $00				; 00
B13_0c80:		bpl B13_0ca3 ; 10 21

B13_0c82:		ora ($2e, x)	; 01 2e
B13_0c84:		rol $2e2e		; 2e 2e 2e
B13_0c87:		ora #$2e		; 09 2e
B13_0c89:		ora ($00, x)	; 01 00
B13_0c8b:		.db $00				; 00
B13_0c8c:		.db $00				; 00
B13_0c8d:		.db $00				; 00
B13_0c8e:		.db $00				; 00
B13_0c8f:		.db $00				; 00
B13_0c90:		.db $00				; 00
B13_0c91:		.db $00				; 00
B13_0c92:		.db $00				; 00
B13_0c93:		.db $00				; 00
B13_0c94:		.db $00				; 00
B13_0c95:		.db $00				; 00
B13_0c96:		.db $00				; 00
B13_0c97:		.db $00				; 00
B13_0c98:		.db $00				; 00
B13_0c99:		.db $00				; 00
B13_0c9a:		ldy $bcbe, x	; bc be bc
B13_0c9d:		ldx $bfbd, y	; be bd bf
B13_0ca0:		lda $bcbf, x	; bd bf bc
B13_0ca3:		ldx $bebc, y	; be bc be
B13_0ca6:		lda $bdbf, x	; bd bf bd
B13_0ca9:	.db $bf
B13_0caa:		ldy $bcbe, x	; bc be bc
B13_0cad:		ldx $bfbd, y	; be bd bf
B13_0cb0:	.db $bd $bf $00
B13_0cb3:		.db $00				; 00
B13_0cb4:		.db $00				; 00
B13_0cb5:		.db $00				; 00
B13_0cb6:		.db $00				; 00
B13_0cb7:		.db $00				; 00
B13_0cb8:		.db $00				; 00
B13_0cb9:		.db $00				; 00
B13_0cba:		.db $00				; 00
B13_0cbb:		.db $00				; 00
B13_0cbc:		.db $00				; 00
B13_0cbd:		.db $00				; 00
B13_0cbe:		.db $00				; 00
B13_0cbf:		.db $00				; 00
B13_0cc0:		.db $00				; 00
B13_0cc1:		.db $00				; 00
B13_0cc2:		ldy $bcbe, x	; bc be bc
B13_0cc5:		ldx $bfbd, y	; be bd bf
B13_0cc8:	.db $bd $bf $00
B13_0ccb:		.db $00				; 00
B13_0ccc:		.db $00				; 00
B13_0ccd:		.db $00				; 00
B13_0cce:		.db $00				; 00
B13_0ccf:		.db $00				; 00
B13_0cd0:		.db $00				; 00
B13_0cd1:		.db $00				; 00
B13_0cd2:		ldy $b8be, x	; bc be b8
B13_0cd5:	.db $bb
B13_0cd6:	.db $bd $bf $00
B13_0cd9:		clv				; b8 
B13_0cda:	.db $bc $be $00
B13_0cdd:		.db $00				; 00
B13_0cde:	.db $bd $bf $00
B13_0ce1:		.db $00				; 00
B13_0ce2:	.db $bc $be $00
B13_0ce5:		.db $00				; 00
B13_0ce6:	.db $bd $bf $00
B13_0ce9:		.db $00				; 00
B13_0cea:		.db $00				; 00
B13_0ceb:		.db $00				; 00
B13_0cec:		.db $00				; 00
B13_0ced:		clv				; b8 
B13_0cee:		.db $00				; 00
B13_0cef:		.db $00				; 00
B13_0cf0:	.db $8f
B13_0cf1:		.db $00				; 00
B13_0cf2:		.db $00				; 00
B13_0cf3:	.db $8f
B13_0cf4:		.db $00				; 00
B13_0cf5:		.db $00				; 00
B13_0cf6:	.db $8f
B13_0cf7:		.db $00				; 00
B13_0cf8:		.db $00				; 00
B13_0cf9:		.db $00				; 00
B13_0cfa:	.db $8f
B13_0cfb:		.db $00				; 00
B13_0cfc:		.db $00				; 00
B13_0cfd:		.db $00				; 00
B13_0cfe:		.db $00				; 00
B13_0cff:	.db $8f
B13_0d00:		.db $00				; 00
B13_0d01:		.db $00				; 00
B13_0d02:		.db $00				; 00
B13_0d03:		.db $00				; 00
B13_0d04:	.db $8f
B13_0d05:		.db $00				; 00
B13_0d06:		.db $00				; 00
B13_0d07:		.db $00				; 00
B13_0d08:		.db $00				; 00
B13_0d09:	.db $8f
B13_0d0a:		clv				; b8 
B13_0d0b:	.db $bb
B13_0d0c:	.db $bc $be $00
B13_0d0f:		clv				; b8 
B13_0d10:	.db $bd $bf $00
B13_0d13:		.db $00				; 00
B13_0d14:	.db $8f
B13_0d15:		.db $00				; 00
B13_0d16:		.db $00				; 00
B13_0d17:		.db $00				; 00
B13_0d18:		.db $00				; 00
B13_0d19:	.db $8f
B13_0d1a:		ldy $babe, x	; bc be ba
B13_0d1d:		clv				; b8 
B13_0d1e:		lda $b8bf, x	; bd bf b8
B13_0d21:		.db $00				; 00
B13_0d22:		.db $00				; 00
B13_0d23:	.db $8f
B13_0d24:		.db $00				; 00
B13_0d25:		.db $00				; 00
B13_0d26:	.db $8f
B13_0d27:		.db $00				; 00
B13_0d28:		.db $00				; 00
B13_0d29:		.db $00				; 00
B13_0d2a:		ldy $bcbe, x	; bc be bc
B13_0d2d:		ldx $bfbd, y	; be bd bf
B13_0d30:	.db $bd $bf $00
B13_0d33:	.db $3c
B13_0d34:		.db $00				; 00
B13_0d35:		.db $00				; 00
B13_0d36:		.db $00				; 00
B13_0d37:	.db $3a
B13_0d38:		.db $00				; 00
B13_0d39:		.db $00				; 00
B13_0d3a:		.db $00				; 00
B13_0d3b:		.db $00				; 00
B13_0d3c:	.db $bc $be $00
B13_0d3f:		.db $00				; 00
B13_0d40:	.db $bd $bf $00
B13_0d43:		.db $00				; 00
B13_0d44:	.db $3c
B13_0d45:		.db $00				; 00
B13_0d46:		.db $00				; 00
B13_0d47:		.db $00				; 00
B13_0d48:	.db $3a
B13_0d49:		.db $00				; 00
B13_0d4a:	.db $8f
B13_0d4b:	.db $8b
B13_0d4c:		txa				; 8a 
B13_0d4d:	.db $8b
B13_0d4e:		.db $00				; 00
B13_0d4f:	.db $8f
B13_0d50:		.db $00				; 00
B13_0d51:	.db $8b
B13_0d52:		dey				; 88 
B13_0d53:		lda #$8f		; a9 8f
B13_0d55:	.db $8b
B13_0d56:		tya				; 98 
B13_0d57:		sta $8f00, y	; 99 00 8f
B13_0d5a:		dey				; 88 
B13_0d5b:	.db $89
B13_0d5c:	.db $8b
B13_0d5d:	.db $8f
B13_0d5e:		tya				; 98 
B13_0d5f:	.db $8b
B13_0d60:	.db $8f
B13_0d61:		.db $00				; 00
B13_0d62:	.db $8b
B13_0d63:	.db $8f
B13_0d64:		tax				; aa 
B13_0d65:		.db $00				; 00
B13_0d66:	.db $8f
B13_0d67:		.db $00				; 00
B13_0d68:		txs				; 9a 
B13_0d69:	.db $8b
B13_0d6a:		.db $00				; 00
B13_0d6b:	.db $3c
B13_0d6c:		.db $00				; 00
B13_0d6d:		.db $00				; 00
B13_0d6e:		.db $00				; 00
B13_0d6f:	.db $3b
B13_0d70:		.db $00				; 00
B13_0d71:		.db $00				; 00
B13_0d72:		.db $00				; 00
B13_0d73:	.db $3a
B13_0d74:		.db $00				; 00
B13_0d75:		.db $00				; 00
B13_0d76:		.db $00				; 00
B13_0d77:	.db $3c
B13_0d78:		.db $00				; 00
B13_0d79:		.db $00				; 00
B13_0d7a:		.db $00				; 00
B13_0d7b:		.db $00				; 00
B13_0d7c:	.db $3c
B13_0d7d:		.db $00				; 00
B13_0d7e:		.db $00				; 00
B13_0d7f:		.db $00				; 00
B13_0d80:	.db $3b
B13_0d81:		.db $00				; 00
B13_0d82:		.db $00				; 00
B13_0d83:		.db $00				; 00
B13_0d84:	.db $3a
B13_0d85:		.db $00				; 00
B13_0d86:		.db $00				; 00
B13_0d87:		.db $00				; 00
B13_0d88:	.db $3c
B13_0d89:		.db $00				; 00
B13_0d8a:		dey				; 88 
B13_0d8b:	.db $89
B13_0d8c:		txa				; 8a 
B13_0d8d:	.db $8b
B13_0d8e:		tya				; 98 
B13_0d8f:		sta $8b9a, y	; 99 9a 8b
B13_0d92:		dey				; 88 
B13_0d93:	.db $89
B13_0d94:		txa				; 8a 
B13_0d95:	.db $8b
B13_0d96:		tya				; 98 
B13_0d97:		sta $8b9a, y	; 99 9a 8b
B13_0d9a:		tay				; a8 
B13_0d9b:		lda #$aa		; a9 aa
B13_0d9d:		.db $00				; 00
B13_0d9e:		tya				; 98 
B13_0d9f:		sta $8b9a, y	; 99 9a 8b
B13_0da2:		dey				; 88 
B13_0da3:	.db $89
B13_0da4:		txa				; 8a 
B13_0da5:	.db $8b
B13_0da6:		tya				; 98 
B13_0da7:		sta $8b9a, y	; 99 9a 8b
B13_0daa:		dey				; 88 
B13_0dab:	.db $89
B13_0dac:		txa				; 8a 
B13_0dad:	.db $8b
B13_0dae:		tya				; 98 
B13_0daf:		sta $8b9a, y	; 99 9a 8b
B13_0db2:		ldy $bcbe, x	; bc be bc
B13_0db5:		ldx $bfbd, y	; be bd bf
B13_0db8:		lda $bcbf, x	; bd bf bc
B13_0dbb:		ldx $bebc, y	; be bc be
B13_0dbe:		lda $bdbf, x	; bd bf bd
B13_0dc1:	.db $bf
B13_0dc2:		tay				; a8 
B13_0dc3:		lda #$aa		; a9 aa
B13_0dc5:		.db $00				; 00
B13_0dc6:		tya				; 98 
B13_0dc7:		sta $8b9a, y	; 99 9a 8b
B13_0dca:	.db $87
B13_0dcb:	.db $87
B13_0dcc:	.db $a7
B13_0dcd:	.db $97
B13_0dce:	.db $87
B13_0dcf:	.db $97
B13_0dd0:	.db $87
B13_0dd1:	.db $97
B13_0dd2:	.db $87
B13_0dd3:	.db $97
B13_0dd4:	.db $87
B13_0dd5:	.db $87
B13_0dd6:	.db $97
B13_0dd7:	.db $a7
B13_0dd8:	.db $97
B13_0dd9:	.db $97
B13_0dda:	.db $87
B13_0ddb:	.db $97
B13_0ddc:	.db $97
B13_0ddd:	.db $87
B13_0dde:	.db $97
B13_0ddf:	.db $87
B13_0de0:	.db $87
B13_0de1:	.db $a7
B13_0de2:		ldy $bcbe, x	; bc be bc
B13_0de5:		ldx $bfbd, y	; be bd bf
B13_0de8:		lda $97bf, x	; bd bf 97
B13_0deb:		eor $974e		; 4d 4e 97
B13_0dee:	.db $5c
B13_0def:		eor $5f5e, x	; 5d 5e 5f
B13_0df2:	.db $6c $00 $00
B13_0df5:	.db $6f
B13_0df6:	.db $7c
B13_0df7:		adc $7f7e, x	; 7d 7e 7f
B13_0dfa:		ldy $bcbe, x	; bc be bc
B13_0dfd:		ldx $bfbd, y	; be bd bf
B13_0e00:	.db $bd $bf $00
B13_0e03:		.db $00				; 00
B13_0e04:		.db $00				; 00
B13_0e05:		.db $00				; 00
B13_0e06:	.db $a7
B13_0e07:	.db $97
B13_0e08:	.db $a7
B13_0e09:	.db $97
B13_0e0a:	.db $87
B13_0e0b:	.db $87
B13_0e0c:	.db $a7
B13_0e0d:	.db $97
B13_0e0e:	.db $87
B13_0e0f:	.db $97
B13_0e10:	.db $87
B13_0e11:	.db $97
B13_0e12:		sty $97, x		; 94 97
B13_0e14:		sty $97, x		; 94 97
B13_0e16:		.db $00				; 00
B13_0e17:		.db $00				; 00
B13_0e18:		.db $00				; 00
B13_0e19:		.db $00				; 00
B13_0e1a:		.db $00				; 00
B13_0e1b:		.db $00				; 00
B13_0e1c:		.db $00				; 00
B13_0e1d:		.db $00				; 00
B13_0e1e:	.db $a7
B13_0e1f:		.db $00				; 00
B13_0e20:	.db $a7
B13_0e21:		.db $00				; 00
B13_0e22:	.db $97
B13_0e23:	.db $97
B13_0e24:	.db $87
B13_0e25:	.db $97
B13_0e26:	.db $87
B13_0e27:	.db $87
B13_0e28:	.db $97
B13_0e29:	.db $87
B13_0e2a:	.db $87
B13_0e2b:	.db $87
B13_0e2c:	.db $97
B13_0e2d:	.db $8f
B13_0e2e:	.db $87
B13_0e2f:	.db $97
B13_0e30:	.db $8f
B13_0e31:		.db $00				; 00
B13_0e32:	.db $97
B13_0e33:	.db $8f
B13_0e34:		.db $00				; 00
B13_0e35:	.db $97
B13_0e36:	.db $8f
B13_0e37:		.db $00				; 00
B13_0e38:	.db $a7
B13_0e39:	.db $87
B13_0e3a:	.db $8f
B13_0e3b:	.db $97
B13_0e3c:	.db $87
B13_0e3d:	.db $87
B13_0e3e:		.db $00				; 00
B13_0e3f:	.db $8f
B13_0e40:	.db $97
B13_0e41:	.db $87
B13_0e42:	.db $a7
B13_0e43:		.db $00				; 00
B13_0e44:	.db $8f
B13_0e45:	.db $97
B13_0e46:	.db $87
B13_0e47:	.db $97
B13_0e48:		.db $00				; 00
B13_0e49:	.db $8f
B13_0e4a:	.db $87
B13_0e4b:	.db $97
B13_0e4c:	.db $87
B13_0e4d:	.db $97
B13_0e4e:	.db $97
B13_0e4f:	.db $97
B13_0e50:	.db $97
B13_0e51:	.db $97
B13_0e52:		tsx				; ba 
B13_0e53:		clv				; b8 
B13_0e54:		ldy $b8be, x	; bc be b8
B13_0e57:		.db $00				; 00
B13_0e58:		lda $87bf, x	; bd bf 87
B13_0e5b:	.db $97
B13_0e5c:	.db $87
B13_0e5d:	.db $87
B13_0e5e:	.db $97
B13_0e5f:	.db $87
B13_0e60:	.db $97
B13_0e61:	.db $97
B13_0e62:		ldy $b8be, x	; bc be b8
B13_0e65:	.db $bb
B13_0e66:	.db $bd $bf $00
B13_0e69:		clv				; b8 
B13_0e6a:	.db $87
B13_0e6b:	.db $87
B13_0e6c:	.db $97
B13_0e6d:	.db $8f
B13_0e6e:	.db $87
B13_0e6f:	.db $97
B13_0e70:	.db $8f
B13_0e71:		.db $00				; 00
B13_0e72:		ldy $bcbe, x	; bc be bc
B13_0e75:		ldx $bfbd, y	; be bd bf
B13_0e78:		lda $8fbf, x	; bd bf 8f
B13_0e7b:	.db $97
B13_0e7c:	.db $87
B13_0e7d:	.db $87
B13_0e7e:		.db $00				; 00
B13_0e7f:	.db $8f
B13_0e80:	.db $97
B13_0e81:	.db $a7
B13_0e82:		ldy $bcbe, x	; bc be bc
B13_0e85:		ldx $bfbd, y	; be bd bf
B13_0e88:		lda $a4bf, x	; bd bf a4
B13_0e8b:		lda $a4			; a5 a4
B13_0e8d:	.db $b7
B13_0e8e:		ldy $b5, x		; b4 b5
B13_0e90:		ldy $b5, x		; b4 b5
B13_0e92:		stx $a53e		; 8e 3e a5
B13_0e95:		ldy $9e			; a4 9e
B13_0e97:		stx $b4b6		; 8e b6 b4
B13_0e9a:		ldy $a5			; a4 a5
B13_0e9c:		ldy $a5			; a4 a5
B13_0e9e:		ldy $b5, x		; b4 b5
B13_0ea0:		ldy $b6, x		; b4 b6
B13_0ea2:		lda $a4			; a5 a4
B13_0ea4:		lda $b6			; a5 b6
B13_0ea6:		lda $b4, x		; b5 b4
B13_0ea8:		ldx $00, y		; b6 00
B13_0eaa:		ldy $a5			; a4 a5
B13_0eac:	.db $b7
B13_0ead:		lda $b4			; a5 b4
B13_0eaf:		lda $b4, x		; b5 b4
B13_0eb1:		lda $b6, x		; b5 b6
B13_0eb3:		ldy $a5			; a4 a5
B13_0eb5:	.db $b7
B13_0eb6:		.db $00				; 00
B13_0eb7:		ldy $b6, x		; b4 b6
B13_0eb9:		ldy $a4, x		; b4 a4
B13_0ebb:		lda $a4			; a5 a4
B13_0ebd:		lda $b4			; a5 b4
B13_0ebf:		lda $b4, x		; b5 b4
B13_0ec1:		ldx $a5, y		; b6 a5
B13_0ec3:		ldy $3e			; a4 3e
B13_0ec5:	.db $9b
B13_0ec6:		lda $b4, x		; b5 b4
B13_0ec8:	.db $9b
B13_0ec9:	.db $ab
B13_0eca:		.db $00				; 00
B13_0ecb:	.db $9e
B13_0ecc:	.db $8c $8d $00
B13_0ecf:		.db $00				; 00
B13_0ed0:		.db $00				; 00
B13_0ed1:		.db $00				; 00
B13_0ed2:		.db $00				; 00
B13_0ed3:		.db $00				; 00
B13_0ed4:		.db $00				; 00
B13_0ed5:		.db $00				; 00
B13_0ed6:		.db $00				; 00
B13_0ed7:		.db $00				; 00
B13_0ed8:		.db $00				; 00
B13_0ed9:		.db $00				; 00
B13_0eda:		stx $a43e		; 8e 3e a4
B13_0edd:		lda $9e			; a5 9e
B13_0edf:		stx $b5b4		; 8e b4 b5
B13_0ee2:		.db $00				; 00
B13_0ee3:	.db $9e
B13_0ee4:	.db $8c $8d $00
B13_0ee7:		.db $00				; 00
B13_0ee8:		.db $00				; 00
B13_0ee9:		.db $00				; 00
B13_0eea:		ldy $a5			; a4 a5
B13_0eec:		rol $b49b, x	; 3e 9b b4
B13_0eef:		lda $9b, x		; b5 9b
B13_0ef1:	.db $ab
B13_0ef2:	.db $9c
B13_0ef3:	.db $8c $ab $00
B13_0ef6:		.db $00				; 00
B13_0ef7:		.db $00				; 00
B13_0ef8:		.db $00				; 00
B13_0ef9:		.db $00				; 00
B13_0efa:	.db $9c
B13_0efb:	.db $8c $ab $00
B13_0efe:		.db $00				; 00
B13_0eff:		.db $00				; 00
B13_0f00:		.db $00				; 00
B13_0f01:		.db $00				; 00
B13_0f02:		.db $00				; 00
B13_0f03:		.db $00				; 00
B13_0f04:		.db $00				; 00
B13_0f05:		.db $00				; 00
B13_0f06:		.db $00				; 00
B13_0f07:		.db $00				; 00
B13_0f08:		.db $00				; 00
B13_0f09:		.db $00				; 00
B13_0f0a:	.db $74
B13_0f0b:		adc $76, x		; 75 76
B13_0f0d:	.db $77
B13_0f0e:		eor ($52), y	; 51 52
B13_0f10:		eor $46			; 45 46
B13_0f12:		adc ($62, x)	; 61 62
B13_0f14:		eor $56, x		; 55 56
B13_0f16:		adc ($72), y	; 71 72
B13_0f18:	.db $67
B13_0f19:	.db $57
B13_0f1a:		ldy $a5			; a4 a5
B13_0f1c:		ldy $a5			; a4 a5
B13_0f1e:		ldy $b5, x		; b4 b5
B13_0f20:		ldy $b5, x		; b4 b5
B13_0f22:		lda $a4			; a5 a4
B13_0f24:		lda $a4			; a5 a4
B13_0f26:		lda $b4, x		; b5 b4
B13_0f28:		lda $b4, x		; b5 b4
B13_0f2a:		ldy $b8be, x	; bc be b8
B13_0f2d:	.db $bb
B13_0f2e:	.db $bd $bf $00
B13_0f31:		clv				; b8 
B13_0f32:	.db $9b
B13_0f33:	.db $9c
B13_0f34:		sty $b59d		; 8c 9d b5
B13_0f37:		ldy $b6, x		; b4 b6
B13_0f39:		.db $00				; 00
B13_0f3a:		ldy $b6			; a4 b6
B13_0f3c:		.db $00				; 00
B13_0f3d:	.db $8f
B13_0f3e:		ldx $00, y		; b6 00
B13_0f40:	.db $8f
B13_0f41:		ldy $00			; a4 00
B13_0f43:	.db $8f
B13_0f44:		ldy $b4			; a4 b4
B13_0f46:	.db $8f
B13_0f47:		ldy $b4			; a4 b4
B13_0f49:		ldy $41, x		; b4 41
B13_0f4b:	.db $42
B13_0f4c:	.db $43
B13_0f4d:	.db $44
B13_0f4e:		eor ($52), y	; 51 52
B13_0f50:		eor $46			; 45 46
B13_0f52:		adc ($62, x)	; 61 62
B13_0f54:		eor $56, x		; 55 56
B13_0f56:		adc ($72), y	; 71 72
B13_0f58:	.db $67
B13_0f59:	.db $57
B13_0f5a:		ldy $a5			; a4 a5
B13_0f5c:		ldy $a5			; a4 a5
B13_0f5e:		ldy $b5, x		; b4 b5
B13_0f60:		ldy $b5, x		; b4 b5
B13_0f62:	.db $9c
B13_0f63:		sty $8d8c		; 8c 8c 8d
B13_0f66:		.db $00				; 00
B13_0f67:		.db $00				; 00
B13_0f68:		.db $00				; 00
B13_0f69:		.db $00				; 00
B13_0f6a:		ldy $bcbe, x	; bc be bc
B13_0f6d:		ldx $bfbd, y	; be bd bf
B13_0f70:		lda $9cbf, x	; bd bf 9c
B13_0f73:		sta $8d9c		; 8d 9c 8d
B13_0f76:		lda $b4, x		; b5 b4
B13_0f78:		ldx $b4, y		; b6 b4
B13_0f7a:	.db $bc $be $00
B13_0f7d:		.db $00				; 00
B13_0f7e:	.db $bd $bf $00
B13_0f81:		.db $00				; 00
B13_0f82:	.db $8f
B13_0f83:		.db $00				; 00
B13_0f84:		.db $00				; 00
B13_0f85:		.db $00				; 00
B13_0f86:		.db $00				; 00
B13_0f87:	.db $8f
B13_0f88:		.db $00				; 00
B13_0f89:		.db $00				; 00
B13_0f8a:		rti				; 40 


B13_0f8b:		eor ($42, x)	; 41 42
B13_0f8d:	.db $43
B13_0f8e:		;removed
	.db $50 $51

B13_0f90:	.db $52
B13_0f91:		eor ($60, x)	; 41 60
B13_0f93:		adc ($62, x)	; 61 62
B13_0f95:		adc ($70, x)	; 61 70
B13_0f97:		adc ($72), y	; 71 72
B13_0f99:		adc ($44), y	; 71 44
B13_0f9b:		eor $46			; 45 46
B13_0f9d:	.db $47
B13_0f9e:	.db $43
B13_0f9f:		eor $56, x		; 55 56
B13_0fa1:	.db $57
B13_0fa2:	.db $42
B13_0fa3:		lsr $45			; 46 45
B13_0fa5:		lsr $64			; 46 64
B13_0fa7:		lsr $55, x		; 56 55
B13_0fa9:		lsr $80, x		; 56 80
B13_0fab:	.db $82
B13_0fac:		.db $00				; 00
B13_0fad:	.db $80
B13_0fae:		;removed
	.db $90 $92

B13_0fb0:		.db $00				; 00
B13_0fb1:		;removed
	.db $90 $bc

B13_0fb3:		ldx $bebc, y	; be bc be
B13_0fb6:		lda $bdbf, x	; bd bf bd
B13_0fb9:	.db $bf
B13_0fba:		ldx #$94		; a2 94
B13_0fbc:	.db $80
B13_0fbd:		sta ($00, x)	; 81 00
B13_0fbf:		;removed
	.db $90 $90

B13_0fc1:		sta ($81), y	; 91 81
B13_0fc3:		.db $00				; 00
B13_0fc4:		ldy #$a1		; a0 a1
B13_0fc6:		sta ($84), y	; 91 84
B13_0fc8:		;removed
	.db $90 $95

B13_0fca:		.db $00				; 00
B13_0fcb:		.db $00				; 00
B13_0fcc:	.db $8b
B13_0fcd:		.db $00				; 00
B13_0fce:		bcc B13_0fd0 ; 90 00

B13_0fd0:		.db $00				; 00
B13_0fd1:		.db $00				; 00
B13_0fd2:		ldy #$00		; a0 00
B13_0fd4:		.db $00				; 00
B13_0fd5:		.db $00				; 00
B13_0fd6:		sta $00			; 85 00
B13_0fd8:		.db $00				; 00
B13_0fd9:		.db $00				; 00
B13_0fda:		lda ($94, x)	; a1 94
B13_0fdc:		.db $00				; 00
B13_0fdd:		.db $00				; 00
B13_0fde:		sta $00, x		; 95 00
B13_0fe0:		ldx #$94		; a2 94
B13_0fe2:		sty $81, x		; 94 81
B13_0fe4:		.db $00				; 00
B13_0fe5:		.db $00				; 00
B13_0fe6:		.db $00				; 00
B13_0fe7:		sta ($00), y	; 91 00
B13_0fe9:		.db $00				; 00
B13_0fea:		.db $00				; 00
B13_0feb:		.db $00				; 00
B13_0fec:	.db $bc $be $00
B13_0fef:		.db $00				; 00
B13_0ff0:	.db $bd $bf $00
B13_0ff3:		.db $00				; 00
B13_0ff4:		.db $00				; 00
B13_0ff5:		.db $00				; 00
B13_0ff6:		.db $00				; 00
B13_0ff7:		.db $00				; 00
B13_0ff8:		.db $00				; 00
B13_0ff9:		.db $00				; 00
B13_0ffa:		rti				; 40 


B13_0ffb:		eor ($82, x)	; 41 82
B13_0ffd:	.db $80
B13_0ffe:		bvc B13_1051 ; 50 51

B13_1000:	.db $92
B13_1001:		bcc B13_1063 ; 90 60

B13_1003:		adc ($92, x)	; 61 92
B13_1005:		ldy #$70		; a0 70
B13_1007:		adc ($93), y	; 71 93
B13_1009:		sta $a2			; 85 a2
B13_100b:	.db $80
B13_100c:		sta ($00, x)	; 81 00
B13_100e:		.db $00				; 00
B13_100f:		bcc B13_0fa2 ; 90 91

B13_1011:		.db $00				; 00
B13_1012:		.db $00				; 00
B13_1013:		ldy #$a1		; a0 a1
B13_1015:		.db $00				; 00
B13_1016:		.db $00				; 00
B13_1017:		sta $95			; 85 95
B13_1019:		.db $00				; 00
B13_101a:		.db $00				; 00
B13_101b:		lda ($00, x)	; a1 00
B13_101d:		.db $00				; 00
B13_101e:		sty $95			; 84 95
B13_1020:		.db $00				; 00
B13_1021:		.db $00				; 00
B13_1022:		ldx #$80		; a2 80
B13_1024:		.db $00				; 00
B13_1025:		.db $00				; 00
B13_1026:		.db $00				; 00
B13_1027:		bcc B13_0fb3 ; 90 8a

B13_1029:		stx $80, y		; 96 80
B13_102b:	.db $82
B13_102c:		rts				; 60 


B13_102d:		adc ($90, x)	; 61 90
B13_102f:	.db $92
B13_1030:		bvs B13_10a3 ; 70 71

B13_1032:		ldy #$92		; a0 92
B13_1034:		rti				; 40 


B13_1035:		eor ($90, x)	; 41 90
B13_1037:		sta $50, x		; 95 50
B13_1039:		eor ($40), y	; 51 40
B13_103b:		eor ($81, x)	; 41 81
B13_103d:	.db $82
B13_103e:		bvc B13_1091 ; 50 51

B13_1040:		sta ($92), y	; 91 92
B13_1042:		lsr $47			; 46 47
B13_1044:		lda ($92, x)	; a1 92
B13_1046:		lsr $57, x		; 56 57
B13_1048:		ldx $93			; a6 93
B13_104a:		.db $00				; 00
B13_104b:		ora ($42, x)	; 01 42
B13_104d:	.db $43
B13_104e:		ora ($51, x)	; 01 51
B13_1050:	.db $52
B13_1051:		eor ($60, x)	; 41 60
B13_1053:		adc ($62, x)	; 61 62
B13_1055:		adc ($70, x)	; 61 70
B13_1057:		adc ($72), y	; 71 72
B13_1059:		adc ($44), y	; 71 44
B13_105b:		eor $01			; 45 01
B13_105d:		.db $00				; 00
B13_105e:	.db $43
B13_105f:		eor $61, x		; 55 61
B13_1061:		.db $00				; 00
B13_1062:	.db $42
B13_1063:		lsr $45			; 46 45
B13_1065:		ora ($64, x)	; 01 64
B13_1067:		lsr $55, x		; 56 55
B13_1069:		eor ($00), y	; 51 00
B13_106b:		.db $00				; 00
B13_106c:		.db $00				; 00
B13_106d:		.db $00				; 00
B13_106e:	.db $80
B13_106f:		sta ($00, x)	; 81 00
B13_1071:		.db $00				; 00
B13_1072:		.db $00				; 00
B13_1073:		lda ($00, x)	; a1 00
B13_1075:		.db $00				; 00
B13_1076:		.db $00				; 00
B13_1077:		sta $00, x		; 95 00
B13_1079:		.db $00				; 00
B13_107a:		.db $00				; 00
B13_107b:		ldy #$81		; a0 81
B13_107d:	.db $82
B13_107e:		ldx #$85		; a2 85
B13_1080:		sta ($92), y	; 91 92
B13_1082:		.db $00				; 00
B13_1083:		.db $00				; 00
B13_1084:		lda ($92, x)	; a1 92
B13_1086:		sty $96			; 84 96
B13_1088:	.db $93
B13_1089:		ldx $bc			; a6 bc
B13_108b:		ldx $bebc, y	; be bc be
B13_108e:		lda $bdbf, x	; bd bf bd
B13_1091:	.db $bf
B13_1092:		ora ($01, x)	; 01 01
B13_1094:		ora ($00, x)	; 01 00
B13_1096:		;removed
	.db $50 $51

B13_1098:	.db $52
B13_1099:		ora ($00, x)	; 01 00
B13_109b:		.db $00				; 00
B13_109c:	.db $8f
B13_109d:		.db $00				; 00
B13_109e:		.db $00				; 00
B13_109f:		.db $00				; 00
B13_10a0:		.db $00				; 00
B13_10a1:	.db $8f
B13_10a2:		.db $00				; 00
B13_10a3:		.db $00				; 00
B13_10a4:		.db $00				; 00
B13_10a5:		.db $00				; 00
B13_10a6:		.db $00				; 00
B13_10a7:		.db $00				; 00
B13_10a8:		.db $00				; 00
B13_10a9:		.db $00				; 00
B13_10aa:		.db $00				; 00
B13_10ab:		.db $00				; 00
B13_10ac:		.db $00				; 00
B13_10ad:		.db $00				; 00
B13_10ae:		.db $00				; 00
B13_10af:		.db $00				; 00
B13_10b0:		.db $00				; 00
B13_10b1:		.db $00				; 00
B13_10b2:	.db $8f
B13_10b3:		.db $00				; 00
B13_10b4:		.db $00				; 00
B13_10b5:		.db $00				; 00
B13_10b6:		.db $00				; 00
B13_10b7:	.db $8f
B13_10b8:		.db $00				; 00
B13_10b9:		.db $00				; 00
B13_10ba:	.db $52
B13_10bb:		sty $00, x		; 94 00
B13_10bd:	.db $8f
B13_10be:		stx $00			; 86 00
B13_10c0:	.db $8f
B13_10c1:		stx $00			; 86 00
B13_10c3:	.db $8f
B13_10c4:		.db $00				; 00
B13_10c5:		ora ($8f, x)	; 01 8f
B13_10c7:		.db $00				; 00
B13_10c8:		ora ($42, x)	; 01 42
B13_10ca:		dey				; 88 
B13_10cb:	.db $89
B13_10cc:		txa				; 8a 
B13_10cd:	.db $8b
B13_10ce:		tya				; 98 
B13_10cf:		sta $8b9a, y	; 99 9a 8b
B13_10d2:		ldy $b8be, x	; bc be b8
B13_10d5:	.db $bb
B13_10d6:	.db $bd $bf $00
B13_10d9:		clv				; b8 
B13_10da:		ldy $bcbe, x	; bc be bc
B13_10dd:		ldx $bfbd, y	; be bd bf
B13_10e0:		lda $a2bf, x	; bd bf a2
B13_10e3:		sty $80, x		; 94 80
B13_10e5:	.db $82
B13_10e6:		.db $00				; 00
B13_10e7:		.db $00				; 00
B13_10e8:		;removed
	.db $90 $92

B13_10ea:		.db $00				; 00
B13_10eb:		.db $00				; 00
B13_10ec:		.db $00				; 00
B13_10ed:		.db $00				; 00
B13_10ee:		ldy $9d9d		; ac 9d 9d
B13_10f1:	.db $9f
B13_10f2:		txa				; 8a 
B13_10f3:		dey				; 88 
B13_10f4:	.db $89
B13_10f5:		dey				; 88 
B13_10f6:		.db $00				; 00
B13_10f7:		tya				; 98 
B13_10f8:	.db $99 $00 $00
B13_10fb:		.db $00				; 00
B13_10fc:	.db $82
B13_10fd:		ldx #$00		; a2 00
B13_10ff:		.db $00				; 00
B13_1100:	.db $92
B13_1101:		.db $00				; 00
B13_1102:		sta ($a2, x)	; 81 a2
B13_1104:	.db $93
B13_1105:		.db $00				; 00
B13_1106:		sta ($00), y	; 91 00
B13_1108:		sta $00, x		; 95 00
B13_110a:	.db $7a
B13_110b:	.db $7a
B13_110c:	.db $7b
B13_110d:	.db $7b
B13_110e:	.db $7a
B13_110f:	.db $7a
B13_1110:	.db $7b
B13_1111:	.db $7b
B13_1112:	.db $7a
B13_1113:	.db $7a
B13_1114:	.db $7b
B13_1115:	.db $7b
B13_1116:	.db $7a
B13_1117:	.db $7a
B13_1118:	.db $7b
B13_1119:	.db $7b
B13_111a:	.db $8f
B13_111b:		.db $00				; 00
B13_111c:		sty $a0, x		; 94 a0
B13_111e:		.db $00				; 00
B13_111f:	.db $8f
B13_1120:		.db $00				; 00
B13_1121:		sta $82			; 85 82
B13_1123:		sty $8f, x		; 94 8f
B13_1125:		.db $00				; 00
B13_1126:	.db $93
B13_1127:		.db $00				; 00
B13_1128:		.db $00				; 00
B13_1129:	.db $8f
B13_112a:	.db $8f
B13_112b:		.db $00				; 00
B13_112c:		bvc B13_117f ; 50 51

B13_112e:		.db $00				; 00
B13_112f:	.db $8f
B13_1130:		stx $86			; 86 86
B13_1132:		ora ($00, x)	; 01 00
B13_1134:	.db $8f
B13_1135:		.db $00				; 00
B13_1136:		rti				; 40 


B13_1137:		ora ($00, x)	; 01 00
B13_1139:	.db $8f
B13_113a:	.db $bc $be $00
B13_113d:		.db $00				; 00
B13_113e:	.db $bd $bf $00
B13_1141:		.db $00				; 00
B13_1142:		.db $00				; 00
B13_1143:		.db $00				; 00
B13_1144:		.db $00				; 00
B13_1145:		.db $00				; 00
B13_1146:		.db $00				; 00
B13_1147:		.db $00				; 00
B13_1148:		.db $00				; 00
B13_1149:		.db $00				; 00
B13_114a:		sta ($80, x)	; 81 80
B13_114c:		.db $00				; 00
B13_114d:		.db $00				; 00
B13_114e:		sta ($90), y	; 91 90
B13_1150:		stx $84, y		; 96 84
B13_1152:		lda ($a0, x)	; a1 a0
B13_1154:	.db $82
B13_1155:		sty $95, x		; 94 95
B13_1157:		sta $93			; 85 93
B13_1159:		.db $00				; 00
B13_115a:		.db $00				; 00
B13_115b:		.db $00				; 00
B13_115c:		.db $00				; 00
B13_115d:	.db $93
B13_115e:		.db $00				; 00
B13_115f:		.db $00				; 00
B13_1160:		sty $a3			; 84 a3
B13_1162:		.db $00				; 00
B13_1163:		.db $00				; 00
B13_1164:	.db $80
B13_1165:		sty $85, x		; 94 85
B13_1167:		stx $90, y		; 96 90
B13_1169:		.db $00				; 00
B13_116a:		.db $00				; 00
B13_116b:		.db $00				; 00
B13_116c:	.db $82
B13_116d:		sty $00, x		; 94 00
B13_116f:		.db $00				; 00
B13_1170:	.db $92
B13_1171:		.db $00				; 00
B13_1172:		.db $00				; 00
B13_1173:		.db $00				; 00
B13_1174:	.db $93
B13_1175:		.db $00				; 00
B13_1176:		.db $00				; 00
B13_1177:		.db $00				; 00
B13_1178:	.db $a3
B13_1179:		.db $00				; 00
B13_117a:		.db $00				; 00
B13_117b:		.db $00				; 00
B13_117c:	.db $93
B13_117d:		.db $00				; 00
B13_117e:		.db $00				; 00
B13_117f:		.db $00				; 00
B13_1180:	.db $a3
B13_1181:		sty $00			; 84 00
B13_1183:		.db $00				; 00
B13_1184:		sty $82, x		; 94 82
B13_1186:		.db $00				; 00
B13_1187:		.db $00				; 00
B13_1188:		.db $00				; 00
B13_1189:	.db $93
B13_118a:		rts				; 60 


B13_118b:		rts				; 60 


B13_118c:		rts				; 60 


B13_118d:		bvs B13_118f ; 70 00

B13_118f:		.db $00				; 00
B13_1190:		.db $00				; 00
B13_1191:		.db $00				; 00
B13_1192:		rti				; 40 


B13_1193:		eor ($42, x)	; 41 42
B13_1195:	.db $43
B13_1196:		bvc B13_11e9 ; 50 51

B13_1198:	.db $52
B13_1199:	.db $53
B13_119a:	.db $73
B13_119b:		and $3d3d, x	; 3d 3d 3d
B13_119e:		.db $00				; 00
B13_119f:		and $3d3d, x	; 3d 3d 3d
B13_11a2:		rti				; 40 


B13_11a3:		eor ($44, x)	; 41 44
B13_11a5:		eor $50			; 45 50
B13_11a7:		eor ($54), y	; 51 54
B13_11a9:	.db $53
B13_11aa:		and $3d3d, x	; 3d 3d 3d
B13_11ad:		and $3d3d, x	; 3d 3d 3d
B13_11b0:		and $403d, x	; 3d 3d 40
B13_11b3:		eor ($44, x)	; 41 44
B13_11b5:		eor $50			; 45 50
B13_11b7:		eor ($54), y	; 51 54
B13_11b9:	.db $53
B13_11ba:		eor ($61), y	; 51 61
B13_11bc:	.db $62
B13_11bd:	.db $62
B13_11be:		adc ($71, x)	; 61 71
B13_11c0:	.db $72
B13_11c1:	.db $62
B13_11c2:		.db $00				; 00
B13_11c3:	.db $72
B13_11c4:		adc ($00), y	; 71 00
B13_11c6:		.db $00				; 00
B13_11c7:		.db $00				; 00
B13_11c8:		.db $00				; 00
B13_11c9:	.db $72
B13_11ca:		.db $00				; 00
B13_11cb:		.db $00				; 00
B13_11cc:		.db $00				; 00
B13_11cd:		.db $00				; 00
B13_11ce:		.db $00				; 00
B13_11cf:		sei				; 78 
B13_11d0:		adc $7800, y	; 79 00 78
B13_11d3:	.db $7a
B13_11d4:	.db $7b
B13_11d5:		adc $7a7a, y	; 79 7a 7a
B13_11d8:	.db $7b
B13_11d9:	.db $7b
B13_11da:		and $3d3d, x	; 3d 3d 3d
B13_11dd:		and $3d3d, x	; 3d 3d 3d
B13_11e0:		and $3d3d, x	; 3d 3d 3d
B13_11e3:		and $3d3d, x	; 3d 3d 3d
B13_11e6:		and $3d3d, x	; 3d 3d 3d
B13_11e9:		and $e4e4, x	; 3d e4 e4
B13_11ec:		cpx $e4			; e4 e4
B13_11ee:		lda $adad		; ad ad ad
B13_11f1:	.db $ad $00 $00
B13_11f4:		.db $00				; 00
B13_11f5:		.db $00				; 00
B13_11f6:	.db $a7
B13_11f7:	.db $97
B13_11f8:	.db $a7
B13_11f9:	.db $97
B13_11fa:		cpx $e4			; e4 e4
B13_11fc:		cpx $e4			; e4 e4
B13_11fe:		.db $00				; 00
B13_11ff:		.db $00				; 00
B13_1200:		.db $00				; 00
B13_1201:		.db $00				; 00
B13_1202:		.db $00				; 00
B13_1203:		.db $00				; 00
B13_1204:		.db $00				; 00
B13_1205:		.db $00				; 00
B13_1206:	.db $a7
B13_1207:	.db $97
B13_1208:	.db $a7
B13_1209:	.db $97
B13_120a:		adc $66			; 65 66
B13_120c:		ror $67			; 66 67
B13_120e:		adc $76, x		; 75 76
B13_1210:		ror $77, x		; 76 77
B13_1212:		ror $67			; 66 67
B13_1214:		adc $66			; 65 66
B13_1216:		ror $77, x		; 76 77
B13_1218:		adc $76, x		; 75 76
B13_121a:		.db $00				; 00
B13_121b:		.db $00				; 00
B13_121c:		.db $00				; 00
B13_121d:		.db $00				; 00
B13_121e:		tya				; 98 
B13_121f:		sta $8b9a, y	; 99 9a 8b
B13_1222:		.db $00				; 00
B13_1223:		tya				; 98 
B13_1224:	.db $8b
B13_1225:		.db $00				; 00
B13_1226:		.db $00				; 00
B13_1227:		sty $00, x		; 94 00
B13_1229:		.db $00				; 00
B13_122a:		pha				; 48 
B13_122b:		eor #$4a		; 49 4a
B13_122d:	.db $4b
B13_122e:		pha				; 48 
B13_122f:		eor #$4a		; 49 4a
B13_1231:	.db $4b
B13_1232:		pha				; 48 
B13_1233:		eor #$4a		; 49 4a
B13_1235:	.db $4b
B13_1236:		pha				; 48 
B13_1237:		eor #$4a		; 49 4a
B13_1239:	.db $4b
B13_123a:		cli				; 58 
B13_123b:		eor $5b59, y	; 59 59 5b
B13_123e:		pla				; 68 
B13_123f:		adc #$6a		; 69 6a
B13_1241:	.db $6b
B13_1242:		pla				; 68 
B13_1243:		ror a			; 6a
B13_1244:		adc #$6b		; 69 6b
B13_1246:		cli				; 58 
B13_1247:		eor $5b59, y	; 59 59 5b
B13_124a:		eor $56, x		; 55 56
B13_124c:		eor $56, x		; 55 56
B13_124e:		eor $56, x		; 55 56
B13_1250:		eor $56, x		; 55 56
B13_1252:		adc $66			; 65 66
B13_1254:		ror $67			; 66 67
B13_1256:		ror $67			; 66 67
B13_1258:		adc $66			; 65 66
B13_125a:		ldy $bcbe, x	; bc be bc
B13_125d:		ldx $bfbd, y	; be bd bf
B13_1260:		lda $bcbf, x	; bd bf bc
B13_1263:	.db $be $00 $00
B13_1266:	.db $bd $bf $00
B13_1269:		.db $00				; 00
B13_126a:		ldy $bcbe, x	; bc be bc
B13_126d:		ldx $bfbd, y	; be bd bf
B13_1270:	.db $bd $bf $00
B13_1273:		.db $00				; 00
B13_1274:	.db $bc $be $00
B13_1277:		.db $00				; 00
B13_1278:	.db $bd $bf $00
B13_127b:		.db $00				; 00
B13_127c:		.db $00				; 00
B13_127d:		.db $00				; 00
B13_127e:		.db $00				; 00
B13_127f:		ora ($00, x)	; 01 00
B13_1281:		.db $00				; 00
B13_1282:		.db $00				; 00
B13_1283:		.db $00				; 00
B13_1284:		ora ($00, x)	; 01 00
B13_1286:		.db $00				; 00
B13_1287:		.db $00				; 00
B13_1288:		.db $00				; 00
B13_1289:		.db $00				; 00
B13_128a:		tax				; aa 
B13_128b:	.db $ff
B13_128c:	.db $0f
B13_128d:		beq B13_127f ; f0 f0

B13_128f:	.db $ff
B13_1290:	.db $ff
B13_1291:	.db $ff
B13_1292:	.db $ff
B13_1293:	.db $ff
B13_1294:	.db $0f
B13_1295:	.db $0c
B13_1296:	.db $eb
B13_1297:	.db $be $08 $00
B13_129a:		tax				; aa 
B13_129b:		tax				; aa 
B13_129c:	.db $fa
B13_129d:	.db $af
B13_129e:		eor $f5, x		; 55 f5
B13_12a0:		eor $5f, x		; 55 5f
B13_12a2:		eor $55, x		; 55 55
B13_12a4:		adc $f5d7, x	; 7d d7 f5
B13_12a7:		sbc $fd, x		; f5 fd
B13_12a9:	.db $f7
B13_12aa:		tax				; aa 
B13_12ab:		tax				; aa 
B13_12ac:		tax				; aa 
B13_12ad:		tax				; aa 
B13_12ae:		asl a			; 0a
B13_12af:		tax				; aa 
B13_12b0:		tax				; aa 
B13_12b1:		asl a			; 0a
B13_12b2:		eor $aa, x		; 55 aa
B13_12b4:	.db $af
B13_12b5:		tax				; aa 
B13_12b6:		eor $aa, x		; 55 aa
B13_12b8:	.db $af
B13_12b9:	.db $ff
B13_12ba:		eor $55, x		; 55 55
B13_12bc:		inc $a9, x		; f6 a9
B13_12be:		eor $16, x		; 55 16
B13_12c0:	.db $0c
B13_12c1:		sta $5555, y	; 99 55 55
B13_12c4:		ror $99			; 66 99
B13_12c6:		eor $55, x		; 55 55
B13_12c8:		eor $99, x		; 55 99
B13_12ca:	.db $5f
B13_12cb:	.db $ff
B13_12cc:	.db $ff
B13_12cd:		adc $9ffa, x	; 7d fa 9f
B13_12d0:		tax				; aa 
B13_12d1:		tay				; a8 
B13_12d2:	.db $ff
B13_12d3:	.db $eb
B13_12d4:	.db $d7
B13_12d5:	.db $ff
B13_12d6:		tax				; aa 
B13_12d7:		lda $55			; a5 55
B13_12d9:	.db $54
B13_12da:		adc $65			; 65 65
B13_12dc:		adc $aa			; 65 aa
B13_12de:	.db $ff
B13_12df:		eor $5f, x		; 55 5f
B13_12e1:	.db $5f
B13_12e2:		tax				; aa 
B13_12e3:		eor $aa, x		; 55 aa
B13_12e5:		tax				; aa 
B13_12e6:		tax				; aa 
B13_12e7:	.db $ff
B13_12e8:	.db $ff
B13_12e9:		eor ($f0, x)	; 41 f0
B13_12eb:	.db $b2
B13_12ec:		sbc $06b2, x	; fd b2 06
B13_12ef:	.db $b3
B13_12f0:	.db $02
B13_12f1:	.db $54
B13_12f2:		lda $49, x		; b5 49
B13_12f4:	.db $93
B13_12f5:		ldy #$b3		; a0 b3
B13_12f7:		cpx #$81		; e0 81
B13_12f9:		ora ($20, x)	; 01 20
B13_12fb:		sta ($e0, x)	; 81 e0
B13_12fd:		ora ($f3, x)	; 01 f3
B13_12ff:		ldy $62, x		; b4 62
B13_1301:		ldy $e0, x		; b4 e0
B13_1303:		ora ($ff, x)	; 01 ff
B13_1305:		cpx #$01		; e0 01
B13_1307:		ora ($b4, x)	; 01 b4
B13_1309:	.db $0f
B13_130a:	.db $b3
B13_130b:		cpx #$01		; e0 01
B13_130d:	.db $ff
B13_130e:		cpx #$02		; e0 02
B13_1310:	.db $2f
B13_1311:		.db $00				; 00
B13_1312:		.db $00				; 00
B13_1313:		.db $00				; 00
B13_1314:		.db $00				; 00
B13_1315:		.db $00				; 00
B13_1316:		.db $00				; 00
B13_1317:		and $1d			; 25 1d
B13_1319:	.db $1c
B13_131a:	.db $19 $00 $00
B13_131d:	.db $17
B13_131e:		plp				; 28 
B13_131f:		and #$1e		; 29 1e
B13_1321:	.db $23
B13_1322:		clc				; 18 
B13_1323:		.db $00				; 00
B13_1324:		.db $00				; 00
B13_1325:		jsr $1514		; 20 14 15
B13_1328:	.db $1b
B13_1329:	.db $20 $18 $00
B13_132c:		.db $00				; 00
B13_132d:		jsr $2e27		; 20 27 2e
B13_1330:	.db $1a
B13_1331:		bit $00			; 24 00
B13_1333:		.db $00				; 00
B13_1334:		.db $00				; 00
B13_1335:		.db $00				; 00
B13_1336:		rol a			; 2a
B13_1337:		asl $01, x		; 16 01
B13_1339:		ora ($01, x)	; 01 01
B13_133b:		ora ($01, x)	; 01 01
B13_133d:		ora ($01, x)	; 01 01
B13_133f:		ora ($2f, x)	; 01 2f
B13_1341:		rts				; 60 


B13_1342:		rts				; 60 


B13_1343:		rts				; 60 


B13_1344:		rts				; 60 


B13_1345:		rts				; 60 


B13_1346:		rts				; 60 


B13_1347:		and ($2f, x)	; 21 2f
B13_1349:	.db $2b
B13_134a:		bit $2c2b		; 2c 2b 2c
B13_134d:	.db $2b
B13_134e:		bit $2f21		; 2c 21 2f
B13_1351:		rol $1f			; 26 1f
B13_1353:		rol $1f			; 26 1f
B13_1355:		rol $1f			; 26 1f
B13_1357:		adc ($2f, x)	; 61 2f
B13_1359:		rol $1f			; 26 1f
B13_135b:		rol $1f			; 26 1f
B13_135d:		rol $1f			; 26 1f
B13_135f:		eor #$2f		; 49 2f
B13_1361:		and $2d1f		; 2d 1f 2d
B13_1364:	.db $5f
B13_1365:	.db $5f
B13_1366:	.db $5f
B13_1367:	.db $5f
B13_1368:	.db $5f
B13_1369:	.db $5f
B13_136a:	.db $5f
B13_136b:	.db $5f
B13_136c:	.db $5f
B13_136d:		rts				; 60 


B13_136e:		rts				; 60 


B13_136f:		rts				; 60 


B13_1370:		.db $00				; 00
B13_1371:		bvc B13_13a4 ; 50 31

B13_1373:		and ($52), y	; 31 52
B13_1375:		eor ($00), y	; 51 00
B13_1377:		.db $00				; 00
B13_1378:		.db $00				; 00
B13_1379:		and ($31), y	; 31 31
B13_137b:		and ($53), y	; 31 53
B13_137d:		.db $00				; 00
B13_137e:		.db $00				; 00
B13_137f:		.db $00				; 00
B13_1380:		bvc B13_13b3 ; 50 31

B13_1382:		and ($4d), y	; 31 4d
B13_1384:	.db $53
B13_1385:		.db $00				; 00
B13_1386:		.db $00				; 00
B13_1387:		.db $00				; 00
B13_1388:		rti				; 40 


B13_1389:		and ($4f), y	; 31 4f
B13_138b:	.db $4e $54 $00
B13_138e:		.db $00				; 00
B13_138f:		.db $00				; 00
B13_1390:	.db $62
B13_1391:	.db $3f
B13_1392:		and ($31), y	; 31 31
B13_1394:		cli				; 58 
B13_1395:		.db $00				; 00
B13_1396:		.db $00				; 00
B13_1397:		.db $00				; 00
B13_1398:	.db $63
B13_1399:	.db $62
B13_139a:	.db $3f
B13_139b:		and ($59), y	; 31 59
B13_139d:	.db $57
B13_139e:		.db $00				; 00
B13_139f:		.db $00				; 00
B13_13a0:		ora ($32, x)	; 01 32
B13_13a2:	.db $32
B13_13a3:	.db $32
B13_13a4:	.db $32
B13_13a5:	.db $32
B13_13a6:	.db $32
B13_13a7:	.db $32
B13_13a8:	.db $32
B13_13a9:	.db $33
B13_13aa:	.db $33
B13_13ab:	.db $33
B13_13ac:	.db $33
B13_13ad:	.db $33
B13_13ae:	.db $33
B13_13af:	.db $33
B13_13b0:	.db $33
B13_13b1:		;removed
	.db $10 $11

B13_13b3:	.db $12
B13_13b4:	.db $13
B13_13b5:		bpl B13_13c8 ; 10 11

B13_13b7:	.db $12
B13_13b8:	.db $13
B13_13b9:		adc $6b6c		; 6d 6c 6b
B13_13bc:		adc $6b6c		; 6d 6c 6b
B13_13bf:		ror $6a64		; 6e 64 6a
B13_13c2:		pla				; 68 
B13_13c3:		adc #$6a		; 69 6a
B13_13c5:		pla				; 68 
B13_13c6:		adc #$43		; 69 43
B13_13c8:		ror $43			; 66 43
B13_13ca:		ror $67			; 66 67
B13_13cc:	.db $03
B13_13cd:	.db $64
B13_13ce:		adc $01			; 65 01
B13_13d0:	.db $64
B13_13d1:	.db $32
B13_13d2:	.db $32
B13_13d3:	.db $32
B13_13d4:	.db $32
B13_13d5:	.db $32
B13_13d6:	.db $32
B13_13d7:	.db $32
B13_13d8:	.db $32
B13_13d9:	.db $33
B13_13da:	.db $33
B13_13db:	.db $33
B13_13dc:	.db $33
B13_13dd:	.db $33
B13_13de:	.db $33
B13_13df:	.db $33
B13_13e0:	.db $33
B13_13e1:		;removed
	.db $10 $11

B13_13e3:	.db $12
B13_13e4:	.db $13
B13_13e5:		bpl B13_13f8 ; 10 11

B13_13e7:	.db $12
B13_13e8:	.db $13
B13_13e9:		adc $01			; 65 01
B13_13eb:	.db $64
B13_13ec:		adc $01			; 65 01
B13_13ee:	.db $64
B13_13ef:		adc $01			; 65 01
B13_13f1:	.db $67
B13_13f2:	.db $42
B13_13f3:		ror $67			; 66 67
B13_13f5:	.db $43
B13_13f6:		ror $67			; 66 67
B13_13f8:		eor ($67, x)	; 41 67
B13_13fa:	.db $43
B13_13fb:		ror $67			; 66 67
B13_13fd:	.db $43
B13_13fe:		ror $67			; 66 67
B13_1400:	.db $43
B13_1401:		ora ($00, x)	; 01 00
B13_1403:		.db $00				; 00
B13_1404:		.db $00				; 00
B13_1405:		.db $00				; 00
B13_1406:		.db $00				; 00
B13_1407:		.db $00				; 00
B13_1408:	.db $47
B13_1409:	.db $43
B13_140a:		.db $00				; 00
B13_140b:		.db $00				; 00
B13_140c:		.db $00				; 00
B13_140d:		.db $00				; 00
B13_140e:		.db $00				; 00
B13_140f:		.db $00				; 00
B13_1410:		.db $00				; 00
B13_1411:	.db $4b
B13_1412:		pha				; 48 
B13_1413:		pha				; 48 
B13_1414:		pha				; 48 
B13_1415:		lsr a			; 4a
B13_1416:		pha				; 48 
B13_1417:		pha				; 48 
B13_1418:		pha				; 48 
B13_1419:		pha				; 48 
B13_141a:	.db $34
B13_141b:		and $36, x		; 35 36
B13_141d:	.db $37
B13_141e:	.db $34
B13_141f:		and $36, x		; 35 36
B13_1421:	.db $37
B13_1422:	.db $32
B13_1423:	.db $32
B13_1424:	.db $32
B13_1425:	.db $32
B13_1426:	.db $32
B13_1427:	.db $32
B13_1428:	.db $32
B13_1429:	.db $32
B13_142a:	.db $33
B13_142b:	.db $33
B13_142c:	.db $33
B13_142d:	.db $33
B13_142e:	.db $33
B13_142f:	.db $33
B13_1430:	.db $33
B13_1431:	.db $33
B13_1432:	.db $43
B13_1433:		eor ($3c, x)	; 41 3c
B13_1435:	.db $3f
B13_1436:		and ($5a), y	; 31 5a
B13_1438:		eor $4730, y	; 59 30 47
B13_143b:	.db $43
B13_143c:	.db $42
B13_143d:	.db $3c
B13_143e:	.db $3f
B13_143f:	.db $5b
B13_1440:	.db $5c
B13_1441:		and $464a, y	; 39 4a 46
B13_1444:	.db $43
B13_1445:		eor ($3c, x)	; 41 3c
B13_1447:		rol $395d, x	; 3e 5d 39
B13_144a:	.db $34
B13_144b:		and $38, x		; 35 38
B13_144d:	.db $44
B13_144e:		eor $3b			; 45 3b
B13_1450:	.db $3a
B13_1451:	.db $3a
B13_1452:	.db $32
B13_1453:	.db $32
B13_1454:	.db $32
B13_1455:	.db $32
B13_1456:	.db $32
B13_1457:	.db $32
B13_1458:	.db $32
B13_1459:	.db $32
B13_145a:	.db $33
B13_145b:	.db $33
B13_145c:	.db $33
B13_145d:	.db $33
B13_145e:	.db $33
B13_145f:	.db $33
B13_1460:	.db $33
B13_1461:	.db $33
B13_1462:	.db $02
B13_1463:		and ($66, x)	; 21 66
B13_1465:	.db $67
B13_1466:		.db $00				; 00
B13_1467:		.db $00				; 00
B13_1468:		.db $00				; 00
B13_1469:		.db $00				; 00
B13_146a:		ror $0b			; 66 0b
B13_146c:		ror $67			; 66 67
B13_146e:		.db $00				; 00
B13_146f:		.db $00				; 00
B13_1470:		.db $00				; 00
B13_1471:		.db $00				; 00
B13_1472:		ror $0f			; 66 0f
B13_1474:		ror $67			; 66 67
B13_1476:		eor $00, x		; 55 00
B13_1478:		.db $00				; 00
B13_1479:		eor $66, x		; 55 66
B13_147b:		ora ($64, x)	; 01 64
B13_147d:	.db $67
B13_147e:		lsr $00, x		; 56 00
B13_1480:		.db $00				; 00
B13_1481:		lsr $66, x		; 56 66
B13_1483:		ora #$66		; 09 66
B13_1485:	.db $67
B13_1486:		adc $097a, y	; 79 7a 09
B13_1489:		ora #$66		; 09 66
B13_148b:		bvs B13_14f3 ; 70 66

B13_148d:	.db $67
B13_148e:	.db $72
B13_148f:		adc $70, x		; 75 70
B13_1491:		bvs B13_14f9 ; 70 66

B13_1493:	.db $67
B13_1494:		.db $00				; 00
B13_1495:		.db $00				; 00
B13_1496:		.db $00				; 00
B13_1497:		.db $00				; 00
B13_1498:		.db $00				; 00
B13_1499:		.db $00				; 00
B13_149a:		ror $67			; 66 67
B13_149c:		.db $00				; 00
B13_149d:		eor $00, x		; 55 00
B13_149f:		eor $00, x		; 55 00
B13_14a1:		eor $66, x		; 55 66
B13_14a3:	.db $67
B13_14a4:		.db $00				; 00
B13_14a5:		lsr $00, x		; 56 00
B13_14a7:		lsr $00, x		; 56 00
B13_14a9:		lsr $66, x		; 56 66
B13_14ab:	.db $67
B13_14ac:		ora #$79		; 09 79
B13_14ae:		.db $00				; 00
B13_14af:		.db $00				; 00
B13_14b0:		.db $00				; 00
B13_14b1:		.db $00				; 00
B13_14b2:		ror $67			; 66 67
B13_14b4:	.db $73
B13_14b5:	.db $72
B13_14b6:		adc $097a, y	; 79 7a 09
B13_14b9:		ora #$66		; 09 66
B13_14bb:	.db $67
B13_14bc:		adc $70, x		; 75 70
B13_14be:	.db $72
B13_14bf:		adc $70, x		; 75 70
B13_14c1:	.db $74
B13_14c2:		sei				; 78 
B13_14c3:	.db $67
B13_14c4:		.db $00				; 00
B13_14c5:		.db $00				; 00
B13_14c6:		.db $00				; 00
B13_14c7:		.db $00				; 00
B13_14c8:		.db $00				; 00
B13_14c9:		.db $00				; 00
B13_14ca:		ror $67			; 66 67
B13_14cc:		.db $00				; 00
B13_14cd:		eor $00, x		; 55 00
B13_14cf:		eor $00, x		; 55 00
B13_14d1:		eor $66, x		; 55 66
B13_14d3:	.db $67
B13_14d4:		.db $00				; 00
B13_14d5:		lsr $00, x		; 56 00
B13_14d7:	.db $7a
B13_14d8:		ora #$79		; 09 79
B13_14da:		ror $67			; 66 67
B13_14dc:	.db $7a
B13_14dd:		ora #$09		; 09 09
B13_14df:		adc $74, x		; 75 74
B13_14e1:		php				; 08 
B13_14e2:	.db $64
B13_14e3:	.db $67
B13_14e4:		adc $70, x		; 75 70
B13_14e6:		;removed
	.db $70 $74

B13_14e8:		php				; 08 
B13_14e9:		adc $66, x		; 75 66
B13_14eb:	.db $6b
B13_14ec:		adc ($71), y	; 71 71
B13_14ee:		adc ($06), y	; 71 06
B13_14f0:	.db $77
B13_14f1:		adc ($66), y	; 71 66
B13_14f3:		ora ($21, x)	; 01 21
B13_14f5:	.db $7a
B13_14f6:	.db $72
B13_14f7:		ora #$75		; 09 75
B13_14f9:	.db $74
B13_14fa:		php				; 08 
B13_14fb:		ror $21			; 66 21
B13_14fd:	.db $07
B13_14fe:	.db $73
B13_14ff:	.db $74
B13_1500:		ror $08, x		; 76 08
B13_1502:		adc $66, x		; 75 66
B13_1504:		and ($01, x)	; 21 01
B13_1506:		ora $01			; 05 01
B13_1508:		ora ($01, x)	; 01 01
B13_150a:		ora ($64, x)	; 01 64
B13_150c:		and ($75, x)	; 21 75
B13_150e:	.db $72
B13_150f:	.db $04
B13_1510:	.db $73
B13_1511:	.db $72
B13_1512:		ora #$66		; 09 66
B13_1514:		and ($76, x)	; 21 76
B13_1516:	.db $73
B13_1517:	.db $72
B13_1518:	.db $04
B13_1519:		ror $76, x		; 76 76
B13_151b:		ror $21			; 66 21
B13_151d:		jmp $4c4c		; 4c 4c 4c


B13_1520:		jmp $4c4c		; 4c 4c 4c


B13_1523:		jmp $7621		; 4c 21 76


B13_1526:		ror $76, x		; 76 76
B13_1528:		ror $67			; 66 67
B13_152a:		ror $76, x		; 76 76
B13_152c:		and ($55, x)	; 21 55
B13_152e:		.db $00				; 00
B13_152f:		eor $66, x		; 55 66
B13_1531:	.db $67
B13_1532:		eor $00, x		; 55 00
B13_1534:		adc $09			; 65 09
B13_1536:		ora #$09		; 09 09
B13_1538:		ror $67			; 66 67
B13_153a:		ora #$09		; 09 09
B13_153c:	.db $67
B13_153d:		bvs B13_15af ; 70 70

B13_153f:	.db $74
B13_1540:		sei				; 78 
B13_1541:	.db $6b
B13_1542:		adc ($71), y	; 71 71
B13_1544:	.db $67
B13_1545:		ror $76, x		; 76 76
B13_1547:		php				; 08 
B13_1548:		pla				; 68 
B13_1549:		adc #$09		; 69 09
B13_154b:		and ($4c, x)	; 21 4c
B13_154d:		jmp $4c4c		; 4c 4c 4c


B13_1550:		jmp $4c4c		; 4c 4c 4c


B13_1553:		and ($01, x)	; 21 01
B13_1555:		and ($74, x)	; 21 74
B13_1557:		ror $76, x		; 76 76
B13_1559:	.db $02
B13_155a:		.db $00				; 00
B13_155b:		ror $67			; 66 67
B13_155d:		and ($72, x)	; 21 72
B13_155f:	.db $79 $55 $00
B13_1562:		eor $66, x		; 55 66
B13_1564:	.db $67
B13_1565:		asl a			; 0a
B13_1566:	.db $73
B13_1567:	.db $72
B13_1568:		ora #$09		; 09 09
B13_156a:		adc $6766, y	; 79 66 67
B13_156d:		asl $0c77		; 0e 77 0c
B13_1570:	.db $0c
B13_1571:	.db $0c
B13_1572:	.db $6f
B13_1573:		jmp ($216b)		; 6c 6b 21


B13_1576:		.db $00				; 00
B13_1577:		.db $00				; 00
B13_1578:		.db $00				; 00
B13_1579:		.db $00				; 00
B13_157a:		.db $00				; 00
B13_157b:		pla				; 68 
B13_157c:		adc #$21		; 69 21
B13_157e:	.db $7b
B13_157f:	.db $7b
B13_1580:	.db $7b
B13_1581:	.db $7b
B13_1582:	.db $7b
B13_1583:	.db $7b
B13_1584:	.db $7b
B13_1585:		.db $00				; 00
B13_1586:	.db $7a
B13_1587:	.db $04
B13_1588:	.db $7a
B13_1589:		ora #$79		; 09 79
B13_158b:		.db $00				; 00
B13_158c:		ror $09			; 66 09
B13_158e:		adc $72, x		; 75 72
B13_1590:	.db $04
B13_1591:	.db $73
B13_1592:	.db $72
B13_1593:		ora #$66		; 09 66
B13_1595:		;removed
	.db $70 $70

B13_1597:		bvs B13_160b ; 70 72

B13_1599:	.db $04
B13_159a:	.db $73
B13_159b:	.db $74
B13_159c:		ror $0c			; 66 0c
B13_159e:	.db $0c
B13_159f:		adc ($0c), y	; 71 0c
B13_15a1:	.db $6f
B13_15a2:		ora $6c6f		; 0d 6f 6c
B13_15a5:		.db $00				; 00
B13_15a6:		.db $00				; 00
B13_15a7:		.db $00				; 00
B13_15a8:		.db $00				; 00
B13_15a9:		.db $00				; 00
B13_15aa:		.db $00				; 00
B13_15ab:		.db $00				; 00
B13_15ac:		pla				; 68 
B13_15ad:	.db $7b
B13_15ae:	.db $7b
B13_15af:	.db $7b
B13_15b0:	.db $7b
B13_15b1:	.db $7b
B13_15b2:	.db $7b
B13_15b3:	.db $7b
B13_15b4:	.db $7b
B13_15b5:		.db $00				; 00
B13_15b6:		.db $00				; 00
B13_15b7:		.db $00				; 00
B13_15b8:		.db $00				; 00
B13_15b9:		.db $00				; 00
B13_15ba:		.db $00				; 00
B13_15bb:		.db $00				; 00
B13_15bc:		.db $00				; 00
B13_15bd:		.db $00				; 00
B13_15be:		.db $00				; 00
B13_15bf:		.db $00				; 00
B13_15c0:		.db $00				; 00
B13_15c1:		.db $00				; 00
B13_15c2:		.db $00				; 00
B13_15c3:		.db $00				; 00
B13_15c4:		.db $00				; 00
B13_15c5:		ldy $bcbe, x	; bc be bc
B13_15c8:		ldx $bfbd, y	; be bd bf
B13_15cb:	.db $bd $bf $00
B13_15ce:		.db $00				; 00
B13_15cf:		.db $00				; 00
B13_15d0:		.db $00				; 00
B13_15d1:		.db $00				; 00
B13_15d2:		.db $00				; 00
B13_15d3:		.db $00				; 00
B13_15d4:		.db $00				; 00
B13_15d5:	.db $8e $ae $00
B13_15d8:		.db $00				; 00
B13_15d9:	.db $ae $00 $00
B13_15dc:		.db $00				; 00
B13_15dd:		.db $00				; 00
B13_15de:		.db $00				; 00
B13_15df:		.db $00				; 00
B13_15e0:		.db $00				; 00
B13_15e1:		.db $00				; 00
B13_15e2:		.db $00				; 00
B13_15e3:		.db $00				; 00
B13_15e4:		.db $00				; 00
B13_15e5:		jmp ($6e6d)		; 6c 6d 6e


B13_15e8:		txs				; 9a 
B13_15e9:		adc $9a6e		; 6d 6e 9a
B13_15ec:		.db $00				; 00
B13_15ed:	.db $6e $9a $00
B13_15f0:	.db $6c $9a $00
B13_15f3:		ror $9a70		; 6e 70 9a
B13_15f6:		.db $00				; 00
B13_15f7:		stx $91, y		; 96 91
B13_15f9:		.db $00				; 00
B13_15fa:		txs				; 9a 
B13_15fb:		.db $00				; 00
B13_15fc:		stx $95, y		; 96 95
B13_15fe:		.db $00				; 00
B13_15ff:		txs				; 9a 
B13_1600:		.db $00				; 00
B13_1601:		sty $95, x		; 94 95
B13_1603:		.db $00				; 00
B13_1604:		txs				; 9a 
B13_1605:		lda $bcbb, y	; b9 bb bc
B13_1608:		ldx $9a00, y	; be 00 9a
B13_160b:	.db $bd $bf $00
B13_160e:		.db $00				; 00
B13_160f:		txs				; 9a 
B13_1610:		.db $00				; 00
B13_1611:		.db $00				; 00
B13_1612:		.db $00				; 00
B13_1613:		.db $00				; 00
B13_1614:		txs				; 9a 
B13_1615:	.db $8e $ae $00
B13_1618:		txs				; 9a 
B13_1619:		ldx $9a00		; ae 00 9a
B13_161c:		.db $00				; 00
B13_161d:		ldy $bcbe, x	; bc be bc
B13_1620:		ldx $bfbd, y	; be bd bf
B13_1623:	.db $bd $bf $00
B13_1626:		.db $00				; 00
B13_1627:		stx $91, y		; 96 91
B13_1629:		.db $00				; 00
B13_162a:		.db $00				; 00
B13_162b:		.db $00				; 00
B13_162c:		stx $00, y		; 96 00
B13_162e:		.db $00				; 00
B13_162f:		.db $00				; 00
B13_1630:		.db $00				; 00
B13_1631:		.db $00				; 00
B13_1632:		.db $00				; 00
B13_1633:		.db $00				; 00
B13_1634:		.db $00				; 00
B13_1635:	.db $8e $ae $00
B13_1638:		txs				; 9a 
B13_1639:		ldx $9a00		; ae 00 9a
B13_163c:		.db $00				; 00
B13_163d:		.db $00				; 00
B13_163e:		txs				; 9a 
B13_163f:		.db $00				; 00
B13_1640:	.db $92
B13_1641:		txs				; 9a 
B13_1642:		.db $00				; 00
B13_1643:	.db $92
B13_1644:	.db $93
B13_1645:		.db $00				; 00
B13_1646:	.db $92
B13_1647:		sta $00, x		; 95 00
B13_1649:	.db $92
B13_164a:	.db $93
B13_164b:		sty $95, x		; 94 95
B13_164d:		bcc B13_15e0 ; 90 91

B13_164f:		stx $948f		; 8e 8f 94
B13_1652:		bcc B13_15e3 ; 90 8f

B13_1654:	.db $93
B13_1655:		.db $00				; 00
B13_1656:	.db $3c
B13_1657:		.db $00				; 00
B13_1658:		.db $00				; 00
B13_1659:		.db $00				; 00
B13_165a:	.db $3a
B13_165b:		.db $00				; 00
B13_165c:		.db $00				; 00
B13_165d:		.db $00				; 00
B13_165e:	.db $3c
B13_165f:		.db $00				; 00
B13_1660:		.db $00				; 00
B13_1661:		.db $00				; 00
B13_1662:	.db $3b
B13_1663:		.db $00				; 00
B13_1664:		.db $00				; 00
B13_1665:	.db $bc $be $00
B13_1668:		.db $00				; 00
B13_1669:	.db $bd $bf $00
B13_166c:		.db $00				; 00
B13_166d:		.db $00				; 00
B13_166e:	.db $3c
B13_166f:		.db $00				; 00
B13_1670:		.db $00				; 00
B13_1671:		.db $00				; 00
B13_1672:	.db $3a
B13_1673:		.db $00				; 00
B13_1674:		.db $00				; 00
B13_1675:		stx $96ae		; 8e ae 96
B13_1678:		sta ($ae), y	; 91 ae
B13_167a:		.db $00				; 00
B13_167b:		.db $00				; 00
B13_167c:		stx $b7, y		; 96 b7
B13_167e:		ldx $beb7, y	; be b7 be
B13_1681:		lda $bdbf, x	; bd bf bd
B13_1684:	.db $bf
B13_1685:		txs				; 9a 
B13_1686:		.db $00				; 00
B13_1687:		stx $91, y		; 96 91
B13_1689:		.db $00				; 00
B13_168a:		txs				; 9a 
B13_168b:		.db $00				; 00
B13_168c:		stx $bc, y		; 96 bc
B13_168e:		ldx $bebc, y	; be bc be
B13_1691:		lda $bdbf, x	; bd bf bd
B13_1694:	.db $bf
B13_1695:		.db $00				; 00
B13_1696:	.db $3a
B13_1697:		.db $00				; 00
B13_1698:		.db $00				; 00
B13_1699:		.db $00				; 00
B13_169a:	.db $3c
B13_169b:		.db $00				; 00
B13_169c:		.db $00				; 00
B13_169d:		ldy $bcbe, x	; bc be bc
B13_16a0:		ldx $bfbd, y	; be bd bf
B13_16a3:	.db $bd $bf $00
B13_16a6:	.db $3c
B13_16a7:		.db $00				; 00
B13_16a8:		.db $00				; 00
B13_16a9:		.db $00				; 00
B13_16aa:	.db $3b
B13_16ab:		.db $00				; 00
B13_16ac:		.db $00				; 00
B13_16ad:		.db $00				; 00
B13_16ae:	.db $3a
B13_16af:		.db $00				; 00
B13_16b0:		.db $00				; 00
B13_16b1:		.db $00				; 00
B13_16b2:	.db $3c
B13_16b3:		.db $00				; 00
B13_16b4:		.db $00				; 00
B13_16b5:	.db $9b
B13_16b6:	.db $9c
B13_16b7:		sta $a097, x	; 9d 97 a0
B13_16ba:		ldx #$a3		; a2 a3
B13_16bc:		lda ($a4, x)	; a1 a4
B13_16be:		lda $a6			; a5 a6
B13_16c0:	.db $a7
B13_16c1:		tay				; a8 
B13_16c2:		tay				; a8 
B13_16c3:	.db $ab
B13_16c4:		lda #$98		; a9 98
B13_16c6:		sta $9899, y	; 99 99 98
B13_16c9:	.db $9e
B13_16ca:		ldy $acac		; ac ac ac
B13_16cd:	.db $9f
B13_16ce:		lda $adad		; ad ad ad
B13_16d1:		tax				; aa 
B13_16d2:	.db $ab
B13_16d3:		lda #$a9		; a9 a9
B13_16d5:		sta $979b, y	; 99 9b 97
B13_16d8:		sta $acac, y	; 99 ac ac
B13_16db:		ldy $adac		; ac ac ad
B13_16de:		lda $adad		; ad ad ad
B13_16e1:		lda #$a9		; a9 a9
B13_16e3:		tax				; aa 
B13_16e4:	.db $ab
B13_16e5:		tya				; 98 
B13_16e6:		sta $9998, y	; 99 98 99
B13_16e9:		ldy $acac		; ac ac ac
B13_16ec:	.db $9e
B13_16ed:		lda $adad		; ad ad ad
B13_16f0:	.db $9f
B13_16f1:		lda #$a9		; a9 a9
B13_16f3:		lda #$aa		; a9 aa
B13_16f5:	.db $ad $ac $00
B13_16f8:		.db $00				; 00
B13_16f9:	.db $ac $ad $00
B13_16fc:		clv				; b8 
B13_16fd:	.db $ad $ac $00
B13_1700:		clv				; b8 
B13_1701:	.db $ac $ad $00
B13_1704:		clv				; b8 
B13_1705:		.db $00				; 00
B13_1706:		.db $00				; 00
B13_1707:		ldx $b9af		; ae af b9
B13_170a:		.db $00				; 00
B13_170b:		ldx $b9af		; ae af b9
B13_170e:		.db $00				; 00
B13_170f:		ldx $b9af		; ae af b9
B13_1712:		.db $00				; 00
B13_1713:		ldx $b9af		; ae af b9
B13_1716:		.db $00				; 00
B13_1717:		ldx $b9af		; ae af b9
B13_171a:		.db $00				; 00
B13_171b:		ldx $b9af		; ae af b9
B13_171e:		.db $00				; 00
B13_171f:	.db $ae $af $00
B13_1722:		.db $00				; 00
B13_1723:	.db $ae $af $00
B13_1726:		.db $00				; 00
B13_1727:		tax				; aa 
B13_1728:	.db $ac $00 $00
B13_172b:	.db $ac $ad $00
B13_172e:		.db $00				; 00
B13_172f:	.db $ad $ac $00
B13_1732:		.db $00				; 00
B13_1733:		ldy $adad		; ac ad ad
B13_1736:	.db $ac $00 $00
B13_1739:	.db $ac $ad $00
B13_173c:		.db $00				; 00
B13_173d:	.db $ad $ac $00
B13_1740:		.db $00				; 00
B13_1741:	.db $ac $ad $00
B13_1744:		.db $00				; 00
B13_1745:	.db $ad $ab $00
B13_1748:		.db $00				; 00
B13_1749:	.db $ac $ad $00
B13_174c:		.db $00				; 00
B13_174d:	.db $ad $ac $00
B13_1750:		.db $00				; 00
B13_1751:	.db $ac $ad $00
B13_1754:		.db $00				; 00
B13_1755:		;removed
	.db $b0 $b1

B13_1757:		.db $00				; 00
B13_1758:		lda ($b0, x)	; a1 b0
B13_175a:		lda ($00), y	; b1 00
B13_175c:		ldx #$b0		; a2 b0
B13_175e:		lda ($00), y	; b1 00
B13_1760:		ldy $b0			; a4 b0
B13_1762:		lda ($00), y	; b1 00
B13_1764:	.db $a7
B13_1765:		;removed
	.db $b0 $b1

B13_1767:		.db $00				; 00
B13_1768:		.db $00				; 00
B13_1769:		;removed
	.db $b0 $b1

B13_176b:		.db $00				; 00
B13_176c:		ldy #$b0		; a0 b0
B13_176e:		lda ($00), y	; b1 00
B13_1770:		lda ($b0, x)	; a1 b0
B13_1772:		lda ($00), y	; b1 00
B13_1774:		lda ($b9, x)	; a1 b9
B13_1776:		.db $00				; 00
B13_1777:		tax				; aa 
B13_1778:	.db $ac $b9 $00
B13_177b:		ldy $b4ad		; ac ad b4
B13_177e:		lda $ad, x		; b5 ad
B13_1780:	.db $ac $b7 $00
B13_1783:		ldy $b0ad		; ac ad b0
B13_1786:		lda ($00), y	; b1 00
B13_1788:		clv				; b8 
B13_1789:		bcs B13_173c ; b0 b1

B13_178b:		.db $00				; 00
B13_178c:		clv				; b8 
B13_178d:		bcs B13_1740 ; b0 b1

B13_178f:	.db $b2
B13_1790:	.db $b3
B13_1791:		bcs B13_1744 ; b0 b1

B13_1793:		.db $00				; 00
B13_1794:		ldx $b0, y		; b6 b0
B13_1796:		lda ($00), y	; b1 00
B13_1798:		.db $00				; 00
B13_1799:		bcs B13_174c ; b0 b1

B13_179b:		.db $00				; 00
B13_179c:		clv				; b8 
B13_179d:		bcs B13_1750 ; b0 b1

B13_179f:		.db $00				; 00
B13_17a0:		clv				; b8 
B13_17a1:		bcs B13_1754 ; b0 b1

B13_17a3:		.db $00				; 00
B13_17a4:		clv				; b8 
B13_17a5:		.db $00				; 00
B13_17a6:		clv				; b8 
B13_17a7:	.db $b9 $00 $00
B13_17aa:		clv				; b8 
B13_17ab:	.db $b9 $00 $00
B13_17ae:		clv				; b8 
B13_17af:	.db $b9 $00 $00
B13_17b2:		clv				; b8 
B13_17b3:	.db $b9 $00 $00
B13_17b6:		.db $00				; 00
B13_17b7:	.db $ad $ac $00
B13_17ba:		.db $00				; 00
B13_17bb:	.db $ac $ad $00
B13_17be:		.db $00				; 00
B13_17bf:	.db $ad $ac $00
B13_17c2:		.db $00				; 00
B13_17c3:		ldy $bcad		; ac ad bc
B13_17c6:		ldx $bebc, y	; be bc be
B13_17c9:		lda $bdbf, x	; bd bf bd
B13_17cc:	.db $bf
B13_17cd:		ldy $bcbe, x	; bc be bc
B13_17d0:		ldx $bfbd, y	; be bd bf
B13_17d3:		lda $aebf, x	; bd bf ae
B13_17d6:	.db $af
B13_17d7:		;removed
	.db $b0 $b1

B13_17d9:		ldx $b0af		; ae af b0
B13_17dc:		lda ($ae), y	; b1 ae
B13_17de:	.db $af
B13_17df:		;removed
	.db $b0 $b1

B13_17e1:		ldx $b0af		; ae af b0
B13_17e4:		lda ($00), y	; b1 00
B13_17e6:		.db $00				; 00
B13_17e7:		lda $b9ac		; ad ac b9
B13_17ea:		.db $00				; 00
B13_17eb:		ldy $b9ad		; ac ad b9
B13_17ee:		.db $00				; 00
B13_17ef:		lda $b9ac		; ad ac b9
B13_17f2:		.db $00				; 00
B13_17f3:	.db $ac $ad $00
B13_17f6:		.db $00				; 00
B13_17f7:		.db $00				; 00
B13_17f8:		.db $00				; 00
B13_17f9:		ldx #$a3		; a2 a3
B13_17fb:		.db $00				; 00
B13_17fc:		.db $00				; 00
B13_17fd:		lda $a6			; a5 a6
B13_17ff:		.db $00				; 00
B13_1800:		.db $00				; 00
B13_1801:		tay				; a8 
B13_1802:		lda #$00		; a9 00
B13_1804:		.db $00				; 00
B13_1805:		.db $00				; 00
B13_1806:		.db $00				; 00
B13_1807:	.db $ae $af $00
B13_180a:		.db $00				; 00
B13_180b:	.db $ae $af $00
B13_180e:		.db $00				; 00
B13_180f:	.db $ae $af $00
B13_1812:		.db $00				; 00
B13_1813:		ldx $adaf		; ae af ad
B13_1816:		ldy $acad		; ac ad ac
B13_1819:		ldy $acad		; ac ad ac
B13_181c:		lda $acad		; ad ad ac
B13_181f:		lda $acac		; ad ac ac
B13_1822:		lda $adac		; ad ac ad
B13_1825:	.db $ad $ac $00
B13_1828:		clv				; b8 
B13_1829:	.db $ac $ad $00
B13_182c:		clv				; b8 
B13_182d:	.db $ad $ac $00
B13_1830:		clv				; b8 
B13_1831:	.db $ac $ad $00
B13_1834:		clv				; b8 
B13_1835:	.db $ad $ab $00
B13_1838:		clv				; b8 
B13_1839:	.db $ac $ad $00
B13_183c:		clv				; b8 
B13_183d:		lda $b2ac		; ad ac b2
B13_1840:	.db $b3
B13_1841:	.db $ac $ad $00
B13_1844:		ldx $b9, y		; b6 b9
B13_1846:		.db $00				; 00
B13_1847:		ldx $b9af		; ae af b9
B13_184a:		.db $00				; 00
B13_184b:		ldx $b4af		; ae af b4
B13_184e:		lda $ae, x		; b5 ae
B13_1850:	.db $af
B13_1851:	.db $b7
B13_1852:		.db $00				; 00
B13_1853:	.db $ae $af $00
B13_1856:		.db $00				; 00
B13_1857:		.db $00				; 00
B13_1858:		clv				; b8 
B13_1859:		.db $00				; 00
B13_185a:		.db $00				; 00
B13_185b:		.db $00				; 00
B13_185c:		clv				; b8 
B13_185d:		.db $00				; 00
B13_185e:		.db $00				; 00
B13_185f:		.db $00				; 00
B13_1860:		clv				; b8 
B13_1861:		.db $00				; 00
B13_1862:		.db $00				; 00
B13_1863:		.db $00				; 00
B13_1864:		.db $00				; 00
B13_1865:		.db $00				; 00
B13_1866:		.db $00				; 00
B13_1867:		.db $00				; 00
B13_1868:		.db $00				; 00
B13_1869:		.db $00				; 00
B13_186a:		.db $00				; 00
B13_186b:		.db $00				; 00
B13_186c:		.db $00				; 00
B13_186d:		tax				; aa 
B13_186e:		ldy $abad		; ac ad ab
B13_1871:		ldy $acad		; ac ad ac
B13_1874:	.db $ad $00 $00
B13_1877:		.db $00				; 00
B13_1878:		.db $00				; 00
B13_1879:		.db $00				; 00
B13_187a:		.db $00				; 00
B13_187b:		.db $00				; 00
B13_187c:		.db $00				; 00
B13_187d:		.db $00				; 00
B13_187e:		clv				; b8 
B13_187f:	.db $b9 $00 $00
B13_1882:		clv				; b8 
B13_1883:		lda $ad00, y	; b9 00 ad
B13_1886:		ldy $acad		; ac ad ac
B13_1889:		ldy $acad		; ac ad ac
B13_188c:	.db $ad $00 $00
B13_188f:		.db $00				; 00
B13_1890:		.db $00				; 00
B13_1891:		.db $00				; 00
B13_1892:		.db $00				; 00
B13_1893:		.db $00				; 00
B13_1894:		.db $00				; 00
B13_1895:		lda $ae00, y	; b9 00 ae
B13_1898:	.db $af
B13_1899:		lda $ae00, y	; b9 00 ae
B13_189c:	.db $af
B13_189d:		lda $ae00, y	; b9 00 ae
B13_18a0:	.db $af
B13_18a1:		lda $ae00, y	; b9 00 ae
B13_18a4:	.db $af
B13_18a5:		bcs B13_1858 ; b0 b1

B13_18a7:		.db $00				; 00
B13_18a8:		.db $00				; 00
B13_18a9:		bcs B13_185c ; b0 b1

B13_18ab:		.db $00				; 00
B13_18ac:		.db $00				; 00
B13_18ad:		bcs B13_1860 ; b0 b1

B13_18af:		.db $00				; 00
B13_18b0:		.db $00				; 00
B13_18b1:		bcs B13_1864 ; b0 b1

B13_18b3:		.db $00				; 00
B13_18b4:		.db $00				; 00
B13_18b5:	.db $80
B13_18b6:		sta ($82, x)	; 81 82
B13_18b8:	.db $83
B13_18b9:		;removed
	.db $90 $91

B13_18bb:	.db $83
B13_18bc:	.db $82
B13_18bd:	.db $80
B13_18be:		sta ($82, x)	; 81 82
B13_18c0:	.db $83
B13_18c1:		;removed
	.db $90 $91

B13_18c3:	.db $83
B13_18c4:	.db $82
B13_18c5:		and $3d3d, x	; 3d 3d 3d
B13_18c8:		and $3d3d, x	; 3d 3d 3d
B13_18cb:		and $3d3d, x	; 3d 3d 3d
B13_18ce:		and $3d3d, x	; 3d 3d 3d
B13_18d1:		and $3d3d, x	; 3d 3d 3d
B13_18d4:		and $7c7c, x	; 3d 7c 7c
B13_18d7:	.db $7c
B13_18d8:	.db $7c
B13_18d9:	.db $7c
B13_18da:		adc $7d7c, x	; 7d 7c 7d
B13_18dd:		adc $7e7d, x	; 7d 7d 7e
B13_18e0:	.db $7c
B13_18e1:	.db $7f
B13_18e2:		adc $7d7c, x	; 7d 7c 7d
B13_18e5:		adc $7d7e, x	; 7d 7e 7d
B13_18e8:	.db $7c
B13_18e9:		ror $7e7d, x	; 7e 7d 7e
B13_18ec:		adc $7f7e, x	; 7d 7e 7f
B13_18ef:		ror $7c7d, x	; 7e 7d 7c
B13_18f2:		adc $7f7e, x	; 7d 7e 7f
B13_18f5:		lda #$a9		; a9 a9
B13_18f7:		lda #$a9		; a9 a9
B13_18f9:		tax				; aa 
B13_18fa:		tax				; aa 
B13_18fb:		tax				; aa 
B13_18fc:		tax				; aa 
B13_18fd:		ldy #$9f		; a0 9f
B13_18ff:		lda ($9d, x)	; a1 9d
B13_1901:		ldx #$8c		; a2 8c
B13_1903:		sta $aa8e		; 8d 8e aa
B13_1906:		tax				; aa 
B13_1907:		tax				; aa 
B13_1908:		lda #$a0		; a9 a0
B13_190a:	.db $9f
B13_190b:		lda ($a4, x)	; a1 a4
B13_190d:		ldx #$8c		; a2 8c
B13_190f:		sta $a38e		; 8d 8e a3
B13_1912:		lda $a6			; a5 a6
B13_1914:	.db $a7
B13_1915:		lda #$a9		; a9 a9
B13_1917:		lda #$a9		; a9 a9
B13_1919:		tax				; aa 
B13_191a:		tax				; aa 
B13_191b:		tax				; aa 
B13_191c:		tax				; aa 
B13_191d:	.db $9e
B13_191e:	.db $9f
B13_191f:	.db $9c
B13_1920:		ldy $8f			; a4 8f
B13_1922:		sty $8e8d		; 8c 8d 8e
B13_1925:		lda #$a9		; a9 a9
B13_1927:		lda #$a9		; a9 a9
B13_1929:		lda #$a9		; a9 a9
B13_192b:		lda #$a9		; a9 a9
B13_192d:		tax				; aa 
B13_192e:		tax				; aa 
B13_192f:		tax				; aa 
B13_1930:		tax				; aa 
B13_1931:	.db $9e
B13_1932:	.db $9f
B13_1933:	.db $9c
B13_1934:	.db $9d $00 $00
B13_1937:		ror $aa6b		; 6e 6b aa
B13_193a:		.db $00				; 00
B13_193b:		.db $00				; 00
B13_193c:		.db $00				; 00
B13_193d:	.db $9e
B13_193e:		ror a			; 6a
B13_193f:	.db $80
B13_1940:		sta ($8f, x)	; 81 8f
B13_1942:		sty $9190		; 8c 90 91
B13_1945:		.db $00				; 00
B13_1946:	.db $80
B13_1947:		sta ($82, x)	; 81 82
B13_1949:		.db $00				; 00
B13_194a:		bcc B13_18dd ; 90 91

B13_194c:	.db $83
B13_194d:		.db $00				; 00
B13_194e:	.db $80
B13_194f:		sta ($82, x)	; 81 82
B13_1951:		.db $00				; 00
B13_1952:		bcc B13_18e5 ; 90 91

B13_1954:	.db $83
B13_1955:		ldy $bcbe, x	; bc be bc
B13_1958:		ldx $bfbd, y	; be bd bf
B13_195b:		lda $82bf, x	; bd bf 82
B13_195e:	.db $83
B13_195f:	.db $82
B13_1960:	.db $83
B13_1961:	.db $83
B13_1962:	.db $82
B13_1963:	.db $83
B13_1964:	.db $82
B13_1965:		ldy $bcbe, x	; bc be bc
B13_1968:		ldx $bfbd, y	; be bd bf
B13_196b:		lda $80bf, x	; bd bf 80
B13_196e:		sta ($82, x)	; 81 82
B13_1970:	.db $83
B13_1971:		;removed
	.db $90 $91

B13_1973:	.db $83
B13_1974:	.db $82
B13_1975:	.db $7b
B13_1976:		.db $00				; 00
B13_1977:		sei				; 78 
B13_1978:	.db $74
B13_1979:		adc ($7b), y	; 71 7b
B13_197b:	.db $77
B13_197c:		adc $7172, y	; 79 72 71
B13_197f:	.db $7b
B13_1980:		.db $00				; 00
B13_1981:	.db $6f
B13_1982:		;removed
	.db $70 $71

B13_1984:	.db $7b
B13_1985:		and $3d3d, x	; 3d 3d 3d
B13_1988:		and $7a7a, x	; 3d 7a 7a
B13_198b:	.db $7a
B13_198c:	.db $7a
B13_198d:		sei				; 78 
B13_198e:		ror $78, x		; 76 78
B13_1990:		adc $7577, y	; 79 77 75
B13_1993:	.db $77
B13_1994:		.db $00				; 00
B13_1995:		sty $00			; 84 00
B13_1997:		.db $00				; 00
B13_1998:		.db $00				; 00
B13_1999:	.db $74
B13_199a:	.db $7a
B13_199b:	.db $7a
B13_199c:	.db $7a
B13_199d:		sty $76, x		; 94 76
B13_199f:		sty $79, x		; 94 79
B13_19a1:		.db $00				; 00
B13_19a2:		adc $00, x		; 75 00
B13_19a4:		.db $00				; 00
B13_19a5:	.db $73
B13_19a6:		and $3d3d, x	; 3d 3d 3d
B13_19a9:	.db $74
B13_19aa:	.db $73
B13_19ab:		and $783d, x	; 3d 3d 78
B13_19ae:	.db $74
B13_19af:	.db $73
B13_19b0:		and $7977, x	; 3d 77 79
B13_19b3:	.db $74
B13_19b4:	.db $73
B13_19b5:		and $3d3d, x	; 3d 3d 3d
B13_19b8:		and $737a, x	; 3d 7a 73
B13_19bb:		and $783d, x	; 3d 3d 78
B13_19be:	.db $74
B13_19bf:	.db $73
B13_19c0:		and $7977, x	; 3d 77 79
B13_19c3:	.db $74
B13_19c4:	.db $73
B13_19c5:		bvs B13_1a36 ; 70 6f

B13_19c7:	.db $72
B13_19c8:		adc ($6f), y	; 71 6f
B13_19ca:		ror $706f		; 6e 6f 70
B13_19cd:		bvs B13_1a3e ; 70 6f

B13_19cf:		bvs B13_1a40 ; 70 6f

B13_19d1:		ror $6f70		; 6e 70 6f
B13_19d4:		ror $6f6e		; 6e 6e 6f
B13_19d7:		adc ($72), y	; 71 72
B13_19d9:		adc $6f70		; 6d 70 6f
B13_19dc:		bvs B13_1a4a ; 70 6c

B13_19de:		adc $6f6c		; 6d 6c 6f
B13_19e1:		adc $6d6d		; 6d 6d 6d
B13_19e4:		;removed
	.db $70 $6c

B13_19e6:		adc $6d70		; 6d 70 6d
B13_19e9:		adc $6d6f		; 6d 6f 6d
B13_19ec:		bvs B13_1a5e ; 70 70

B13_19ee:	.db $6f
B13_19ef:		bvs B13_1a5d ; 70 6c

B13_19f1:		ror $6f6d		; 6e 6d 6f
B13_19f4:		bvs B13_1a66 ; 70 70

B13_19f6:	.db $6f
B13_19f7:		;removed
	.db $70 $6f

B13_19f9:	.db $6f
B13_19fa:		bvs B13_1a6b ; 70 6f

B13_19fc:		bvs B13_1980 ; 70 82

B13_19fe:	.db $83
B13_19ff:	.db $82
B13_1a00:	.db $83
B13_1a01:	.db $83
B13_1a02:	.db $82
B13_1a03:	.db $83
B13_1a04:	.db $82
B13_1a05:		bvs B13_1a73 ; 70 6c

B13_1a07:		;removed
	.db $70 $6e

B13_1a09:		adc $6f6d		; 6d 6d 6f
B13_1a0c:		adc $8382		; 6d 82 83
B13_1a0f:	.db $82
B13_1a10:		.db $00				; 00
B13_1a11:	.db $83
B13_1a12:	.db $82
B13_1a13:	.db $83
B13_1a14:		.db $00				; 00
B13_1a15:		.db $00				; 00
B13_1a16:		.db $00				; 00
B13_1a17:		bvs B13_1a88 ; 70 6f

B13_1a19:		.db $00				; 00
B13_1a1a:		.db $00				; 00
B13_1a1b:		ror $a86b		; 6e 6b a8
B13_1a1e:		.db $00				; 00
B13_1a1f:		.db $00				; 00
B13_1a20:		.db $00				; 00
B13_1a21:		lda #$a9		; a9 a9
B13_1a23:		.db $00				; 00
B13_1a24:		.db $00				; 00
B13_1a25:		;removed
	.db $70 $6f

B13_1a27:		;removed
	.db $70 $6d

B13_1a29:		ror $6d6b		; 6e 6b 6d
B13_1a2c:		bvs B13_1a2e ; 70 00

B13_1a2e:		.db $00				; 00
B13_1a2f:		.db $00				; 00
B13_1a30:		.db $00				; 00
B13_1a31:		.db $00				; 00
B13_1a32:		.db $00				; 00
B13_1a33:		.db $00				; 00
B13_1a34:		.db $00				; 00
B13_1a35:		.db $00				; 00
B13_1a36:		.db $00				; 00
B13_1a37:		.db $00				; 00
B13_1a38:		.db $00				; 00
B13_1a39:		.db $00				; 00
B13_1a3a:		.db $00				; 00
B13_1a3b:		tay				; a8 
B13_1a3c:		.db $00				; 00
B13_1a3d:		.db $00				; 00
B13_1a3e:		tay				; a8 
B13_1a3f:		tay				; a8 
B13_1a40:		lda #$a9		; a9 a9
B13_1a42:		lda #$a9		; a9 a9
B13_1a44:		lda #$00		; a9 00
B13_1a46:		.db $00				; 00
B13_1a47:		.db $00				; 00
B13_1a48:		.db $00				; 00
B13_1a49:		.db $00				; 00
B13_1a4a:	.db $7a
B13_1a4b:	.db $7a
B13_1a4c:	.db $7a
B13_1a4d:		.db $00				; 00
B13_1a4e:		ror $42, x		; 76 42
B13_1a50:		adc $7500, y	; 79 00 75
B13_1a53:		.db $00				; 00
B13_1a54:		.db $00				; 00
B13_1a55:		.db $00				; 00
B13_1a56:		.db $00				; 00
B13_1a57:		.db $00				; 00
B13_1a58:		.db $00				; 00
B13_1a59:		.db $00				; 00
B13_1a5a:		.db $00				; 00
B13_1a5b:		.db $00				; 00
B13_1a5c:		.db $00				; 00
B13_1a5d:		.db $00				; 00
B13_1a5e:		tay				; a8 
B13_1a5f:		.db $00				; 00
B13_1a60:		.db $00				; 00
B13_1a61:		tay				; a8 
B13_1a62:		lda #$a9		; a9 a9
B13_1a64:		.db $00				; 00
B13_1a65:		.db $00				; 00
B13_1a66:		.db $00				; 00
B13_1a67:		bvs B13_1ad8 ; 70 6f

B13_1a69:		.db $00				; 00
B13_1a6a:		.db $00				; 00
B13_1a6b:	.db $6e $6b $00
B13_1a6e:		.db $00				; 00
B13_1a6f:		.db $00				; 00
B13_1a70:		.db $00				; 00
B13_1a71:		.db $00				; 00
B13_1a72:		.db $00				; 00
B13_1a73:		.db $00				; 00
B13_1a74:		.db $00				; 00
B13_1a75:		ldy $bcbe, x	; bc be bc
B13_1a78:		ldx $bfbd, y	; be bd bf
B13_1a7b:		lda $6fbf, x	; bd bf 6f
B13_1a7e:		adc $706f		; 6d 6f 70
B13_1a81:		ror $706f		; 6e 6f 70
B13_1a84:	.db $6f
B13_1a85:		eor $56, x		; 55 56
B13_1a87:	.db $57
B13_1a88:		and $3d3d, x	; 3d 3d 3d
B13_1a8b:		cli				; 58 
B13_1a8c:		eor $3d3d, y	; 59 3d 3d
B13_1a8f:	.db $5a
B13_1a90:	.db $5b
B13_1a91:		and $5c3d, x	; 3d 3d 5c
B13_1a94:		eor $6160, x	; 5d 60 61
B13_1a97:	.db $62
B13_1a98:	.db $63
B13_1a99:		ror $67			; 66 67
B13_1a9b:		pla				; 68 
B13_1a9c:		and $3d3d, x	; 3d 3d 3d
B13_1a9f:		and $3d3d, x	; 3d 3d 3d
B13_1aa2:		and $3d3d, x	; 3d 3d 3d
B13_1aa5:		and $5e3d, x	; 3d 3d 5e
B13_1aa8:	.db $5f
B13_1aa9:		and $643d, x	; 3d 3d 64
B13_1aac:		adc $3d			; 65 3d
B13_1aae:		and $3d3d, x	; 3d 3d 3d
B13_1ab1:		and $3d3d, x	; 3d 3d 3d
B13_1ab4:	.db $3d $00 $00
B13_1ab7:		.db $00				; 00
B13_1ab8:		adc #$69		; 69 69
B13_1aba:		.db $00				; 00
B13_1abb:		.db $00				; 00
B13_1abc:		and $4a3d, x	; 3d 3d 4a
B13_1abf:		adc #$3d		; 69 3d
B13_1ac1:		and $3d49, x	; 3d 49 3d
B13_1ac4:		and $4b3d, x	; 3d 3d 4b
B13_1ac7:		.db $00				; 00
B13_1ac8:		.db $00				; 00
B13_1ac9:	.db $4b
B13_1aca:		.db $00				; 00
B13_1acb:		.db $00				; 00
B13_1acc:		.db $00				; 00
B13_1acd:		.db $00				; 00
B13_1ace:		.db $00				; 00
B13_1acf:		.db $00				; 00
B13_1ad0:		.db $00				; 00
B13_1ad1:		.db $00				; 00
B13_1ad2:		.db $00				; 00
B13_1ad3:		.db $00				; 00
B13_1ad4:		.db $00				; 00
B13_1ad5:		and $3d3d, x	; 3d 3d 3d
B13_1ad8:		and $3d3d, x	; 3d 3d 3d
B13_1adb:		and $3d3d, x	; 3d 3d 3d
B13_1ade:		and $4b3d, x	; 3d 3d 4b
B13_1ae1:		and $4b3d, x	; 3d 3d 4b
B13_1ae4:		.db $00				; 00
B13_1ae5:	.db $3d $3d $00
B13_1ae8:		.db $00				; 00
B13_1ae9:	.db $3d $3d $00
B13_1aec:		.db $00				; 00
B13_1aed:	.db $3d $3d $00
B13_1af0:		.db $00				; 00
B13_1af1:	.db $3d $3d $00
B13_1af4:		.db $00				; 00
B13_1af5:	.db $3d $3d $00
B13_1af8:		.db $00				; 00
B13_1af9:	.db $3d $3d $00
B13_1afc:		.db $00				; 00
B13_1afd:		and $4c3d, x	; 3d 3d 4c
B13_1b00:		.db $00				; 00
B13_1b01:		and $3d3d, x	; 3d 3d 3d
B13_1b04:		jmp $b1b0		; 4c b0 b1


B13_1b07:	.db $b2
B13_1b08:	.db $b3
B13_1b09:		ldy $af, x		; b4 af
B13_1b0b:	.db $af
B13_1b0c:		lda $b6, x		; b5 b6
B13_1b0e:		ldx $b6, y		; b6 b6
B13_1b10:		ldx $af, y		; b6 af
B13_1b12:	.db $af
B13_1b13:	.db $af
B13_1b14:	.db $af
B13_1b15:		ldx $b6, y		; b6 b6
B13_1b17:		ldx $b6, y		; b6 b6
B13_1b19:	.db $af
B13_1b1a:	.db $af
B13_1b1b:	.db $af
B13_1b1c:	.db $af
B13_1b1d:		ldx $b6, y		; b6 b6
B13_1b1f:		ldx $b6, y		; b6 b6
B13_1b21:	.db $af
B13_1b22:	.db $af
B13_1b23:	.db $af
B13_1b24:	.db $af
B13_1b25:		.db $00				; 00
B13_1b26:		.db $00				; 00
B13_1b27:		.db $00				; 00
B13_1b28:		.db $00				; 00
B13_1b29:	.db $4c $00 $00
B13_1b2c:		.db $00				; 00
B13_1b2d:	.db $3d $4c $00
B13_1b30:		.db $00				; 00
B13_1b31:		and $4c53, x	; 3d 53 4c
B13_1b34:		.db $00				; 00
B13_1b35:		and $3d3d, x	; 3d 3d 3d
B13_1b38:		and $3d3d, x	; 3d 3d 3d
B13_1b3b:		and $3d3d, x	; 3d 3d 3d
B13_1b3e:	.db $54
B13_1b3f:		and $3d3d, x	; 3d 3d 3d
B13_1b42:	.db $53
B13_1b43:		and $3d3d, x	; 3d 3d 3d
B13_1b46:	.db $52
B13_1b47:		and $3d3d, x	; 3d 3d 3d
B13_1b4a:		eor ($3d), y	; 51 3d
B13_1b4c:	.db $3d $50 $00
B13_1b4f:	.db $43
B13_1b50:	.db $3d $4f $00
B13_1b53:		lsr $4d3d		; 4e 3d 4d
B13_1b56:		.db $00				; 00
B13_1b57:		pha				; 48 
B13_1b58:	.db $3d $46 $00
B13_1b5b:	.db $47
B13_1b5c:	.db $3d $44 $00
B13_1b5f:		eor $3d			; 45 3d
B13_1b61:	.db $44
B13_1b62:		.db $00				; 00
B13_1b63:		eor $3d			; 45 3d
B13_1b65:	.db $44
B13_1b66:		.db $00				; 00
B13_1b67:		eor $3d			; 45 3d
B13_1b69:	.db $44
B13_1b6a:		.db $00				; 00
B13_1b6b:		eor $3d			; 45 3d
B13_1b6d:	.db $44
B13_1b6e:		.db $00				; 00
B13_1b6f:		.db $00				; 00
B13_1b70:		.db $00				; 00
B13_1b71:	.db $44
B13_1b72:		.db $00				; 00
B13_1b73:		eor $92			; 45 92
B13_1b75:		eor $4800		; 4d 00 48
B13_1b78:		;removed
	.db $50 $46

B13_1b7a:		.db $00				; 00
B13_1b7b:	.db $47
B13_1b7c:	.db $4f
B13_1b7d:		.db $00				; 00
B13_1b7e:		.db $00				; 00
B13_1b7f:		eor $4d			; 45 4d
B13_1b81:	.db $93
B13_1b82:		.db $00				; 00
B13_1b83:		.db $00				; 00
B13_1b84:		.db $00				; 00
B13_1b85:		.db $00				; 00
B13_1b86:		.db $00				; 00
B13_1b87:		.db $00				; 00
B13_1b88:		.db $00				; 00
B13_1b89:	.db $7a
B13_1b8a:	.db $7a
B13_1b8b:	.db $7a
B13_1b8c:	.db $7a
B13_1b8d:		sty $76, x		; 94 76
B13_1b8f:		sty $79, x		; 94 79
B13_1b91:		.db $00				; 00
B13_1b92:		adc $00, x		; 75 00
B13_1b94:		.db $00				; 00
B13_1b95:	.db $4c $00 $00
B13_1b98:		.db $00				; 00
B13_1b99:	.db $3d $00 $00
B13_1b9c:		jmp $4c3d		; 4c 3d 4c


B13_1b9f:		lsr a			; 4a
B13_1ba0:		and $3d3d, x	; 3d 3d 3d
B13_1ba3:		eor #$3d		; 49 3d
B13_1ba5:		ldy $bcbe, x	; bc be bc
B13_1ba8:		ldx $bfbd, y	; be bd bf
B13_1bab:		lda $6fbf, x	; bd bf 6f
B13_1bae:		adc $706f		; 6d 6f 70
B13_1bb1:		ror $706f		; 6e 6f 70
B13_1bb4:	.db $6f
B13_1bb5:		jmp ($706d)		; 6c 6d 70


B13_1bb8:		adc $6f6d		; 6d 6d 6f
B13_1bbb:		adc $7070		; 6d 70 70
B13_1bbe:	.db $6f
B13_1bbf:		;removed
	.db $70 $6c

B13_1bc1:		ror $6f6d		; 6e 6d 6f
B13_1bc4:		bvs B13_1c36 ; 70 70

B13_1bc6:	.db $6f
B13_1bc7:		bvs B13_1c36 ; 70 6d

B13_1bc9:		ror $6d6b		; 6e 6b 6d
B13_1bcc:		bvs B13_1bce ; 70 00

B13_1bce:		.db $00				; 00
B13_1bcf:		.db $00				; 00
B13_1bd0:		.db $00				; 00
B13_1bd1:		.db $00				; 00
B13_1bd2:		.db $00				; 00
B13_1bd3:		.db $00				; 00
B13_1bd4:		.db $00				; 00
B13_1bd5:	.db $7b
B13_1bd6:		.db $00				; 00
B13_1bd7:		sei				; 78 
B13_1bd8:	.db $74
B13_1bd9:		adc ($7b), y	; 71 7b
B13_1bdb:	.db $77
B13_1bdc:		adc $7172, y	; 79 72 71
B13_1bdf:	.db $7b
B13_1be0:		.db $00				; 00
B13_1be1:	.db $6f
B13_1be2:		;removed
	.db $70 $71

B13_1be4:	.db $7b
B13_1be5:		ror $716f		; 6e 6f 71
B13_1be8:	.db $72
B13_1be9:		adc $6f70		; 6d 70 6f
B13_1bec:		bvs B13_1c5a ; 70 6c

B13_1bee:		adc $6f6c		; 6d 6c 6f
B13_1bf1:		adc $6d6d		; 6d 6d 6d
B13_1bf4:		;removed
	.db $70 $bc

B13_1bf6:		ldx $bebc, y	; be bc be
B13_1bf9:		lda $bdbf, x	; bd bf bd
B13_1bfc:	.db $bf
B13_1bfd:		.db $00				; 00
B13_1bfe:		.db $00				; 00
B13_1bff:		.db $00				; 00
B13_1c00:		.db $00				; 00
B13_1c01:		.db $00				; 00
B13_1c02:	.db $80
B13_1c03:		sta ($82, x)	; 81 82
B13_1c05:		ldy $bcbe, x	; bc be bc
B13_1c08:		ldx $bfbd, y	; be bd bf
B13_1c0b:	.db $bd $bf $00
B13_1c0e:		.db $00				; 00
B13_1c0f:		.db $00				; 00
B13_1c10:		.db $00				; 00
B13_1c11:	.db $83
B13_1c12:		sty $85			; 84 85
B13_1c14:		stx $00			; 86 00
B13_1c16:	.db $87
B13_1c17:		dey				; 88 
B13_1c18:	.db $89
B13_1c19:		.db $00				; 00
B13_1c1a:	.db $80
B13_1c1b:		sta ($82, x)	; 81 82
B13_1c1d:		.db $00				; 00
B13_1c1e:	.db $87
B13_1c1f:		dey				; 88 
B13_1c20:	.db $89
B13_1c21:		.db $00				; 00
B13_1c22:	.db $80
B13_1c23:		sta ($82, x)	; 81 82
B13_1c25:		txa				; 8a 
B13_1c26:	.db $8b
B13_1c27:		sty $838d		; 8c 8d 83
B13_1c2a:		sty $85			; 84 85
B13_1c2c:		stx $8a			; 86 8a
B13_1c2e:	.db $8b
B13_1c2f:		sty $838d		; 8c 8d 83
B13_1c32:		sty $85			; 84 85
B13_1c34:		stx $00			; 86 00
B13_1c36:		.db $00				; 00
B13_1c37:		.db $00				; 00
B13_1c38:		.db $00				; 00
B13_1c39:		.db $00				; 00
B13_1c3a:	.db $80
B13_1c3b:		sta ($82, x)	; 81 82
B13_1c3d:		.db $00				; 00
B13_1c3e:	.db $87
B13_1c3f:		dey				; 88 
B13_1c40:	.db $89
B13_1c41:		.db $00				; 00
B13_1c42:	.db $80
B13_1c43:		sta ($82, x)	; 81 82
B13_1c45:		.db $00				; 00
B13_1c46:		.db $00				; 00
B13_1c47:		.db $00				; 00
B13_1c48:		.db $00				; 00
B13_1c49:	.db $83
B13_1c4a:		sty $85			; 84 85
B13_1c4c:		stx $8a			; 86 8a
B13_1c4e:	.db $8b
B13_1c4f:		sty $838d		; 8c 8d 83
B13_1c52:		sty $85			; 84 85
B13_1c54:		stx $00			; 86 00
B13_1c56:		.db $00				; 00
B13_1c57:		.db $00				; 00
B13_1c58:		.db $00				; 00
B13_1c59:		.db $00				; 00
B13_1c5a:		.db $00				; 00
B13_1c5b:		.db $00				; 00
B13_1c5c:		.db $00				; 00
B13_1c5d:		;removed
	.db $70 $6f

B13_1c5f:		bvs B13_1ccd ; 70 6c

B13_1c61:		ror $6f6d		; 6e 6d 6f
B13_1c64:		bvs B13_1be9 ; 70 83

B13_1c66:		sty $85			; 84 85
B13_1c68:		stx $8a			; 86 8a
B13_1c6a:	.db $8b
B13_1c6b:		sty $bc8d		; 8c 8d bc
B13_1c6e:		ldx $bebc, y	; be bc be
B13_1c71:		lda $bdbf, x	; bd bf bd
B13_1c74:	.db $bf
B13_1c75:		.db $00				; 00
B13_1c76:	.db $80
B13_1c77:		sta ($82, x)	; 81 82
B13_1c79:		.db $00				; 00
B13_1c7a:	.db $87
B13_1c7b:		dey				; 88 
B13_1c7c:	.db $89
B13_1c7d:		ldy $bcbe, x	; bc be bc
B13_1c80:		ldx $bfbd, y	; be bd bf
B13_1c83:		lda $a1bf, x	; bd bf a1
B13_1c86:		lda $a5			; a5 a5
B13_1c88:		ldy #$a6		; a0 a6
B13_1c8a:		tay				; a8 
B13_1c8b:		tay				; a8 
B13_1c8c:		ldx $bc			; a6 bc
B13_1c8e:		ldx $bebc, y	; be bc be
B13_1c91:		lda $bdbf, x	; bd bf bd
B13_1c94:	.db $bf
B13_1c95:		ldx $a8			; a6 a8
B13_1c97:		lda $a0			; a5 a0
B13_1c99:		tay				; a8 
B13_1c9a:		ldx $a1			; a6 a1
B13_1c9c:		.db $00				; 00
B13_1c9d:		adc $a070		; 6d 70 a0
B13_1ca0:		.db $00				; 00
B13_1ca1:		;removed
	.db $70 $6b

B13_1ca3:		ror $8ea0		; 6e a0 8e
B13_1ca6:	.db $8f
B13_1ca7:		sta $00, x		; 95 00
B13_1ca9:	.db $8f
B13_1caa:	.db $93
B13_1cab:		sty $95, x		; 94 95
B13_1cad:		ldy $bcbe, x	; bc be bc
B13_1cb0:		ldx $bfbd, y	; be bd bf
B13_1cb3:		lda $8ebf, x	; bd bf 8e
B13_1cb6:	.db $8f
B13_1cb7:		bcc B13_1c4a ; 90 91

B13_1cb9:	.db $8f
B13_1cba:	.db $93
B13_1cbb:		sty $90, x		; 94 90
B13_1cbd:		;removed
	.db $90 $91

B13_1cbf:		stx $948f		; 8e 8f 94
B13_1cc2:		;removed
	.db $90 $8f

B13_1cc4:	.db $93
B13_1cc5:		stx $908f		; 8e 8f 90
B13_1cc8:		sta ($8f), y	; 91 8f
B13_1cca:	.db $93
B13_1ccb:		sty $90, x		; 94 90
B13_1ccd:		ldy $bcbe, x	; bc be bc
B13_1cd0:		ldx $bfbd, y	; be bd bf
B13_1cd3:		lda $8ebf, x	; bd bf 8e
B13_1cd6:	.db $8f
B13_1cd7:		sta $00, x		; 95 00
B13_1cd9:	.db $8f
B13_1cda:	.db $93
B13_1cdb:		sty $95, x		; 94 95
B13_1cdd:		;removed
	.db $90 $91

B13_1cdf:		stx $948f		; 8e 8f 94
B13_1ce2:		;removed
	.db $90 $8f

B13_1ce4:	.db $93
B13_1ce5:		stx $908f		; 8e 8f 90
B13_1ce8:		sta ($8f), y	; 91 8f
B13_1cea:	.db $93
B13_1ceb:		sty $90, x		; 94 90
B13_1ced:		stx $91, y		; 96 91
B13_1cef:	.db $8e $8f $00
B13_1cf2:		stx $8f, y		; 96 8f
B13_1cf4:	.db $93
B13_1cf5:		stx $908f		; 8e 8f 90
B13_1cf8:		sta ($8f), y	; 91 8f
B13_1cfa:	.db $93
B13_1cfb:		sty $90, x		; 94 90
B13_1cfd:		;removed
	.db $90 $91

B13_1cff:		stx $94ae		; 8e ae 94
B13_1d02:		;removed
	.db $90 $ae

B13_1d04:		.db $00				; 00
B13_1d05:		.db $00				; 00
B13_1d06:	.db $92
B13_1d07:		bcc B13_1c9a ; 90 91

B13_1d09:	.db $92
B13_1d0a:	.db $93
B13_1d0b:		sty $90, x		; 94 90
B13_1d0d:		bcc B13_1ca0 ; 90 91

B13_1d0f:		stx $948f		; 8e 8f 94
B13_1d12:		bcc B13_1ca3 ; 90 8f

B13_1d14:	.db $93
B13_1d15:		stx $908f		; 8e 8f 90
B13_1d18:		sta ($8f), y	; 91 8f
B13_1d1a:	.db $93
B13_1d1b:		sty $90, x		; 94 90
B13_1d1d:		stx $91, y		; 96 91
B13_1d1f:	.db $8e $ae $00
B13_1d22:		stx $ae, y		; 96 ae
B13_1d24:		.db $00				; 00
B13_1d25:		.db $00				; 00
B13_1d26:	.db $92
B13_1d27:		bcc B13_1cba ; 90 91

B13_1d29:	.db $92
B13_1d2a:	.db $93
B13_1d2b:		sty $90, x		; 94 90
B13_1d2d:		ldy $bcbe, x	; bc be bc
B13_1d30:		ldx $bfbd, y	; be bd bf
B13_1d33:	.db $bd $bf $00
B13_1d36:	.db $80
B13_1d37:		sta ($82, x)	; 81 82
B13_1d39:		.db $00				; 00
B13_1d3a:	.db $87
B13_1d3b:		dey				; 88 
B13_1d3c:	.db $89
B13_1d3d:		tsx				; ba 
B13_1d3e:		txs				; 9a 
B13_1d3f:		ldy $9abe, x	; bc be 9a
B13_1d42:		.db $00				; 00
B13_1d43:	.db $bd $bf $00
B13_1d46:		.db $00				; 00
B13_1d47:		.db $00				; 00
B13_1d48:		.db $00				; 00
B13_1d49:		.db $00				; 00
B13_1d4a:		.db $00				; 00
B13_1d4b:		.db $00				; 00
B13_1d4c:		.db $00				; 00
B13_1d4d:		sta $00, x		; 95 00
B13_1d4f:		.db $00				; 00
B13_1d50:		.db $00				; 00
B13_1d51:		sty $95, x		; 94 95
B13_1d53:		.db $00				; 00
B13_1d54:		.db $00				; 00
B13_1d55:		.db $00				; 00
B13_1d56:		.db $00				; 00
B13_1d57:		.db $00				; 00
B13_1d58:		.db $00				; 00
B13_1d59:		.db $00				; 00
B13_1d5a:		.db $00				; 00
B13_1d5b:		.db $00				; 00
B13_1d5c:		.db $00				; 00
B13_1d5d:		.db $00				; 00
B13_1d5e:		.db $00				; 00
B13_1d5f:		.db $00				; 00
B13_1d60:	.db $92
B13_1d61:		.db $00				; 00
B13_1d62:		.db $00				; 00
B13_1d63:	.db $92
B13_1d64:	.db $93
B13_1d65:		dec $dede, x	; de de de
B13_1d68:		dec $dfdf, x	; de df df
B13_1d6b:	.db $df
B13_1d6c:	.db $df
B13_1d6d:	.db $6f
B13_1d6e:		ror $6d6f		; 6e 6f 6d
B13_1d71:		bvs B13_1de2 ; 70 6f

B13_1d73:		bvs B13_1de4 ; 70 6f

B13_1d75:		tax				; aa 
B13_1d76:		ora $ab			; 05 ab
B13_1d78:		eor $7d, x		; 55 7d
B13_1d7a:		eor $57			; 45 57
B13_1d7c:		ldx $ffd7		; ae d7 ff
B13_1d7f:		.db $00				; 00
B13_1d80:		ora ($5f, x)	; 01 5f
B13_1d82:	.db $5d $50 $00
B13_1d85:		tax				; aa 
B13_1d86:		tax				; aa 
B13_1d87:		tax				; aa 
B13_1d88:		tax				; aa 
B13_1d89:		eor $55, x		; 55 55
B13_1d8b:		eor $66, x		; 55 66
B13_1d8d:		sta $1199, y	; 99 99 11
B13_1d90:		ora ($45), y	; 11 45
B13_1d92:		ora $55, x		; 15 55
B13_1d94:		eor $66, x		; 55 66
B13_1d96:		eor $55, x		; 55 55
B13_1d98:		eor $88, x		; 55 88
B13_1d9a:		ror $55			; 66 55
B13_1d9c:		eor $15, x		; 55 15
B13_1d9e:		eor $66			; 45 66
B13_1da0:	.db $5a
B13_1da1:	.db $5a
B13_1da2:		lda $55			; a5 55
B13_1da4:		sta ($00), y	; 91 00
B13_1da6:		tax				; aa 
B13_1da7:	.db $ff
B13_1da8:	.db $ff
B13_1da9:	.db $ff
B13_1daa:	.db $ff
B13_1dab:	.db $ff
B13_1dac:	.db $ff
B13_1dad:	.db $37
B13_1dae:		.db $00				; 00
B13_1daf:		ora $05			; 05 05
B13_1db1:		eor $aaaa, y	; 59 aa aa
B13_1db4:		tax				; aa 
B13_1db5:		tax				; aa 
B13_1db6:		eor $55, x		; 55 55
B13_1db8:		eor $05, x		; 55 05
B13_1dba:		ora $b4			; 05 b4
B13_1dbc:		ora $fe			; 05 fe
B13_1dbe:		tax				; aa 
B13_1dbf:	.db $fa
B13_1dc0:		sty $55			; 84 55
B13_1dc2:		tax				; aa 
B13_1dc3:		tax				; aa 
B13_1dc4:		tax				; aa 
B13_1dc5:		tax				; aa 
B13_1dc6:	.db $02
B13_1dc7:		tax				; aa 
B13_1dc8:	.db $22
B13_1dc9:		ldx #$ff		; a2 ff
B13_1dcb:	.db $ff
B13_1dcc:		ldx #$aa		; a2 aa
B13_1dce:		tax				; aa 
B13_1dcf:		tax				; aa 
B13_1dd0:		tax				; aa 
B13_1dd1:		tax				; aa 
B13_1dd2:		tax				; aa 
B13_1dd3:		tax				; aa 
B13_1dd4:		sbc $ff, x		; f5 ff
B13_1dd6:	.db $0f
B13_1dd7:	.db $fb
B13_1dd8:	.db $ff
B13_1dd9:		lda $a5			; a5 a5
B13_1ddb:		tax				; aa 
B13_1ddc:		tax				; aa 
B13_1ddd:		tax				; aa 
B13_1dde:		tax				; aa 
B13_1ddf:	.db $5a
B13_1de0:	.db $5a
B13_1de1:	.db $5a
B13_1de2:	.db $5a
B13_1de3:	.db $5a
B13_1de4:	.db $5f
B13_1de5:	.db $ff
B13_1de6:	.db $5f
B13_1de7:	.db $ff
B13_1de8:	.db $ff
B13_1de9:	.db $ff
B13_1dea:	.db $ff
B13_1deb:	.db $ff
B13_1dec:	.db $5f
B13_1ded:	.db $5a
B13_1dee:		tsx				; ba 
B13_1def:		nop				; ea 
B13_1df0:		;removed
	.db $50 $0f

B13_1df2:		ora $1d1d, x	; 1d 1d 1d
B13_1df5:		ora $1d1e, x	; 1d 1e 1d
B13_1df8:	.db $0f
B13_1df9:	.db $0c
B13_1dfa:	.db $0f
B13_1dfb:	.db $0c
B13_1dfc:	.db $0f
B13_1dfd:	.db $0c
B13_1dfe:	.db $0f
B13_1dff:	.db $52
B13_1e00:		;removed
	.db $50 $52

B13_1e02:		eor ($52), y	; 51 52
B13_1e04:		;removed
	.db $50 $52

B13_1e06:		eor ($52), y	; 51 52
B13_1e08:		bvc B13_1e5c ; 50 52

B13_1e0a:		eor ($52), y	; 51 52
B13_1e0c:		bvc B13_1e60 ; 50 52

B13_1e0e:		eor ($52), y	; 51 52
B13_1e10:		;removed
	.db $50 $52

B13_1e12:		eor ($52), y	; 51 52
B13_1e14:	.db $52
B13_1e15:	.db $04
B13_1e16:		ora #$1b		; 09 1b
B13_1e18:		ora $0b			; 05 0b
B13_1e1a:		eor $0546		; 4d 46 05
B13_1e1d:		ora $47			; 05 47
B13_1e1f:	.db $4b
B13_1e20:	.db $0b
B13_1e21:		jsr func_1f_1ec8		; 20 c8 fe
B13_1e24:		ldy $9e			; a4 9e
B13_1e26:		lda $054e, y	; b9 4e 05
B13_1e29:		tay				; a8 
B13_1e2a:		lda $be82, y	; b9 82 be
B13_1e2d:		bne B13_1e31 ; d0 02

B13_1e2f:		clc				; 18 
B13_1e30:		rts				; 60 


B13_1e31:		lda #$01		; a9 01
B13_1e33:		sta $04a8, x	; 9d a8 04
B13_1e36:		lda $0470, x	; bd 70 04
B13_1e39:		ora #$20		; 09 20
B13_1e3b:		sta $0470, x	; 9d 70 04
B13_1e3e:		ldy $9e			; a4 9e
B13_1e40:		lda $0606, y	; b9 06 06
B13_1e43:		and #$f0		; 29 f0
B13_1e45:		sta $00			; 85 00
B13_1e47:		lda $0606, y	; b9 06 06
B13_1e4a:		and #$0f		; 29 0f
B13_1e4c:		clc				; 18 
B13_1e4d:		adc #$01		; 69 01
B13_1e4f:		cmp #$04		; c9 04
B13_1e51:		bcc B13_1e55 ; 90 02

B13_1e53:		lda #$04		; a9 04
B13_1e55:		ora $00			; 05 00
B13_1e57:		sta $0606, y	; 99 06 06
B13_1e5a:		and #$0f		; 29 0f
B13_1e5c:		cmp #$01		; c9 01
B13_1e5e:		beq B13_1e2f ; f0 cf

B13_1e60:		asl a			; 0a
B13_1e61:		tay				; a8 
B13_1e62:		lda $be75, y	; b9 75 be
B13_1e65:		sta $054e, x	; 9d 4e 05
B13_1e68:		lda $be76, y	; b9 76 be
B13_1e6b:		sta $05ef, x	; 9d ef 05
B13_1e6e:		lda #$04		; a9 04
B13_1e70:		sta $05c1, x	; 9d c1 05
B13_1e73:		sec				; 38 
B13_1e74:		rts				; 60 


B13_1e75:	.db $a3
B13_1e76:	.db $43
B13_1e77:		ldy $44			; a4 44
B13_1e79:		lda $45			; a5 45
B13_1e7b:		ldx $46			; a6 46
B13_1e7d:	.db $a7
B13_1e7e:	.db $47
B13_1e7f:		tay				; a8 
B13_1e80:		pha				; 48 
B13_1e81:	.db $ff
B13_1e82:		.db $00				; 00
B13_1e83:		ora ($01, x)	; 01 01
B13_1e85:		ora ($01, x)	; 01 01
B13_1e87:		ora ($00, x)	; 01 00
B13_1e89:		.db $00				; 00
B13_1e8a:		.db $00				; 00
B13_1e8b:		ora ($00, x)	; 01 00
B13_1e8d:		.db $00				; 00
B13_1e8e:		lda #$00		; a9 00
B13_1e90:		sta $00			; 85 00
B13_1e92:		lda $04			; a5 04
B13_1e94:		sec				; 38 
B13_1e95:		sbc $0438, x	; fd 38 04
B13_1e98:		bcs B13_1ea7 ; b0 0d

B13_1e9a:		sta $01			; 85 01
B13_1e9c:		lda #$01		; a9 01
B13_1e9e:		sta $00			; 85 00
B13_1ea0:		lda $01			; a5 01
B13_1ea2:		eor #$ff		; 49 ff
B13_1ea4:		clc				; 18 
B13_1ea5:		adc #$01		; 69 01
B13_1ea7:		lsr a			; 4a
B13_1ea8:		lsr a			; 4a
B13_1ea9:		lsr a			; 4a
B13_1eaa:		lsr a			; 4a
B13_1eab:		sta $01			; 85 01
B13_1ead:		lda $05			; a5 05
B13_1eaf:		sec				; 38 
B13_1eb0:		sbc $041c, x	; fd 1c 04
B13_1eb3:		bcs B13_1ec4 ; b0 0f

B13_1eb5:		sta $0a			; 85 0a
B13_1eb7:		lda $00			; a5 00
B13_1eb9:		ora #$02		; 09 02
B13_1ebb:		sta $00			; 85 00
B13_1ebd:		lda $0a			; a5 0a
B13_1ebf:		eor #$ff		; 49 ff
B13_1ec1:		clc				; 18 
B13_1ec2:		adc #$01		; 69 01
B13_1ec4:		and #$f0		; 29 f0
B13_1ec6:		clc				; 18 
B13_1ec7:		adc $01			; 65 01
B13_1ec9:		tay				; a8 
B13_1eca:		lda $beea, y	; b9 ea be
B13_1ecd:		sta $01			; 85 01
B13_1ecf:		ldy $00			; a4 00
B13_1ed1:		lda $bfea, y	; b9 ea bf
B13_1ed4:		sta $00			; 85 00
B13_1ed6:		lda $bfee, y	; b9 ee bf
B13_1ed9:		beq B13_1ee2 ; f0 07

B13_1edb:		lda #$08		; a9 08
B13_1edd:		sec				; 38 
B13_1ede:		sbc $01			; e5 01
B13_1ee0:		sta $01			; 85 01
B13_1ee2:		lda $00			; a5 00
B13_1ee4:		clc				; 18 
B13_1ee5:		adc $01			; 65 01
B13_1ee7:		sta $00			; 85 00
B13_1ee9:		rts				; 60 


B13_1eea:	.db $04
B13_1eeb:		php				; 08 
B13_1eec:		php				; 08 
B13_1eed:		php				; 08 
B13_1eee:		php				; 08 
B13_1eef:		php				; 08 
B13_1ef0:		php				; 08 
B13_1ef1:		php				; 08 
B13_1ef2:		php				; 08 
B13_1ef3:		php				; 08 
B13_1ef4:		php				; 08 
B13_1ef5:		php				; 08 
B13_1ef6:		php				; 08 
B13_1ef7:		php				; 08 
B13_1ef8:		php				; 08 
B13_1ef9:		php				; 08 
B13_1efa:		.db $00				; 00
B13_1efb:	.db $04
B13_1efc:		asl $06			; 06 06
B13_1efe:	.db $07
B13_1eff:	.db $07
B13_1f00:	.db $07
B13_1f01:	.db $07
B13_1f02:	.db $07
B13_1f03:	.db $07
B13_1f04:	.db $07
B13_1f05:		php				; 08 
B13_1f06:		php				; 08 
B13_1f07:		php				; 08 
B13_1f08:		php				; 08 
B13_1f09:		php				; 08 
B13_1f0a:		.db $00				; 00
B13_1f0b:	.db $02
B13_1f0c:	.db $04
B13_1f0d:		ora $06			; 05 06
B13_1f0f:		asl $06			; 06 06
B13_1f11:	.db $07
B13_1f12:	.db $07
B13_1f13:	.db $07
B13_1f14:	.db $07
B13_1f15:	.db $07
B13_1f16:	.db $07
B13_1f17:	.db $07
B13_1f18:	.db $07
B13_1f19:	.db $07
B13_1f1a:		.db $00				; 00
B13_1f1b:	.db $02
B13_1f1c:	.db $03
B13_1f1d:	.db $04
B13_1f1e:		ora $05			; 05 05
B13_1f20:		asl $06			; 06 06
B13_1f22:		asl $06			; 06 06
B13_1f24:	.db $07
B13_1f25:	.db $07
B13_1f26:	.db $07
B13_1f27:	.db $07
B13_1f28:	.db $07
B13_1f29:	.db $07
B13_1f2a:		.db $00				; 00
B13_1f2b:		ora ($02, x)	; 01 02
B13_1f2d:	.db $03
B13_1f2e:	.db $04
B13_1f2f:		ora $05			; 05 05
B13_1f31:		ora $06			; 05 06
B13_1f33:		asl $06			; 06 06
B13_1f35:		asl $06			; 06 06
B13_1f37:		asl $07			; 06 07
B13_1f39:	.db $07
B13_1f3a:		.db $00				; 00
B13_1f3b:		ora ($02, x)	; 01 02
B13_1f3d:	.db $03
B13_1f3e:	.db $03
B13_1f3f:	.db $04
B13_1f40:	.db $04
B13_1f41:		ora $05			; 05 05
B13_1f43:		ora $06			; 05 06
B13_1f45:		asl $06			; 06 06
B13_1f47:		asl $06			; 06 06
B13_1f49:		asl $00			; 06 00
B13_1f4b:		ora ($02, x)	; 01 02
B13_1f4d:	.db $02
B13_1f4e:	.db $03
B13_1f4f:	.db $04
B13_1f50:	.db $04
B13_1f51:	.db $04
B13_1f52:		ora $05			; 05 05
B13_1f54:		ora $05			; 05 05
B13_1f56:		asl $06			; 06 06
B13_1f58:		asl $06			; 06 06
B13_1f5a:		.db $00				; 00
B13_1f5b:		ora ($01, x)	; 01 01
B13_1f5d:	.db $02
B13_1f5e:	.db $03
B13_1f5f:	.db $03
B13_1f60:	.db $04
B13_1f61:	.db $04
B13_1f62:	.db $04
B13_1f63:		ora $05			; 05 05
B13_1f65:		ora $05			; 05 05
B13_1f67:		ora $06			; 05 06
B13_1f69:		asl $00			; 06 00
B13_1f6b:		ora ($01, x)	; 01 01
B13_1f6d:	.db $02
B13_1f6e:	.db $02
B13_1f6f:	.db $03
B13_1f70:	.db $03
B13_1f71:	.db $04
B13_1f72:	.db $04
B13_1f73:	.db $04
B13_1f74:		ora $05			; 05 05
B13_1f76:		ora $05			; 05 05
B13_1f78:		ora $06			; 05 06
B13_1f7a:		.db $00				; 00
B13_1f7b:		ora ($01, x)	; 01 01
B13_1f7d:	.db $02
B13_1f7e:	.db $02
B13_1f7f:	.db $03
B13_1f80:	.db $03
B13_1f81:	.db $03
B13_1f82:	.db $04
B13_1f83:	.db $04
B13_1f84:	.db $04
B13_1f85:		ora $05			; 05 05
B13_1f87:		ora $05			; 05 05
B13_1f89:		ora $00			; 05 00
B13_1f8b:		ora ($01, x)	; 01 01
B13_1f8d:		ora ($02, x)	; 01 02
B13_1f8f:	.db $02
B13_1f90:	.db $03
B13_1f91:	.db $03
B13_1f92:	.db $03
B13_1f93:	.db $04
B13_1f94:	.db $04
B13_1f95:	.db $04
B13_1f96:	.db $04
B13_1f97:		ora $05			; 05 05
B13_1f99:		ora $00			; 05 00
B13_1f9b:		.db $00				; 00
B13_1f9c:		ora ($01, x)	; 01 01
B13_1f9e:	.db $02
B13_1f9f:	.db $02
B13_1fa0:	.db $03
B13_1fa1:	.db $03
B13_1fa2:	.db $03
B13_1fa3:	.db $03
B13_1fa4:	.db $04
B13_1fa5:	.db $04
B13_1fa6:	.db $04
B13_1fa7:	.db $04
B13_1fa8:		ora $05			; 05 05
B13_1faa:		.db $00				; 00
B13_1fab:		.db $00				; 00
B13_1fac:		ora ($01, x)	; 01 01
B13_1fae:	.db $02
B13_1faf:	.db $02
B13_1fb0:	.db $02
B13_1fb1:	.db $03
B13_1fb2:	.db $03
B13_1fb3:	.db $03
B13_1fb4:	.db $04
B13_1fb5:	.db $04
B13_1fb6:	.db $04
B13_1fb7:	.db $04
B13_1fb8:	.db $04
B13_1fb9:		ora $00			; 05 00
B13_1fbb:		.db $00				; 00
B13_1fbc:		ora ($01, x)	; 01 01
B13_1fbe:	.db $02
B13_1fbf:	.db $02
B13_1fc0:	.db $02
B13_1fc1:	.db $03
B13_1fc2:	.db $03
B13_1fc3:	.db $03
B13_1fc4:	.db $03
B13_1fc5:	.db $04
B13_1fc6:	.db $04
B13_1fc7:	.db $04
B13_1fc8:	.db $04
B13_1fc9:	.db $04
B13_1fca:		.db $00				; 00
B13_1fcb:		.db $00				; 00
B13_1fcc:		ora ($01, x)	; 01 01
B13_1fce:		ora ($02, x)	; 01 02
B13_1fd0:	.db $02
B13_1fd1:	.db $02
B13_1fd2:	.db $03
B13_1fd3:	.db $03
B13_1fd4:	.db $03
B13_1fd5:	.db $03
B13_1fd6:	.db $04
B13_1fd7:	.db $04
B13_1fd8:	.db $04
B13_1fd9:	.db $04
B13_1fda:		.db $00				; 00
B13_1fdb:		.db $00				; 00
B13_1fdc:		ora ($01, x)	; 01 01
B13_1fde:		ora ($02, x)	; 01 02
B13_1fe0:	.db $02
B13_1fe1:	.db $02
B13_1fe2:	.db $02
B13_1fe3:	.db $03
B13_1fe4:	.db $03
B13_1fe5:	.db $03
B13_1fe6:	.db $03
B13_1fe7:	.db $04
B13_1fe8:	.db $04
B13_1fe9:	.db $04
B13_1fea:		php				; 08 
B13_1feb:		bpl B13_1fed ; 10 00

B13_1fed:		clc				; 18 
B13_1fee:		ora ($00, x)	; 01 00
B13_1ff0:		.db $00				; 00
B13_1ff1:		.db $01