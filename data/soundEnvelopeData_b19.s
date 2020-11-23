B25_0000:		asl $15, x		; 16 15
B25_0002:	.db $14
B25_0003:	.db $ff
B25_0004:	.db $23
B25_0005:	.db $34
B25_0006:		adc $66			; 65 66
B25_0008:		lsr $97			; 46 97
B25_000a:	.db $57
B25_000b:		sei				; 78 
B25_000c:		tya				; 98 
B25_000d:	.db $97
B25_000e:	.db $27
B25_000f:		stx $76			; 86 76
B25_0011:		sta $75			; 85 75
B25_0013:	.db $44
B25_0014:	.db $ff



B25_0015:	.db $fb
B25_0016:		ora ($12), y	; 11 12
B25_0018:	.db $13
B25_0019:	.db $12
B25_001a:		ora ($10), y	; 11 10
B25_001c:	.db $1f
B25_001d:		asl $1e1d, x	; 1e 1d 1e
B25_0020:	.db $1f
B25_0021:		bpl B25_0021 ; 10 fe

B25_0023:	.db $ff



B25_0024:	.db $fb
B25_0025:		and ($22, x)	; 21 22
B25_0027:		and ($20, x)	; 21 20
B25_0029:	.db $2f
B25_002a:		rol $202f		; 2e 2f 20
B25_002d:		inc $fbff, x	; fe ff fb
B25_0030:		adc ($20, x)	; 61 20
B25_0032:	.db $6f
B25_0033:		jsr $fffe		; 20 fe ff
B25_0036:	.db $fb
B25_0037:		ora ($12), y	; 11 12
B25_0039:	.db $13
B25_003a:	.db $12
B25_003b:		ora ($20), y	; 11 20
B25_003d:	.db $1f
B25_003e:		asl $1e1d, x	; 1e 1d 1e
B25_0041:	.db $1f
B25_0042:		jsr $fffe		; 20 fe ff
B25_0045:	.db $fb
B25_0046:		ora ($22), y	; 11 22
B25_0048:		ora ($20), y	; 11 20
B25_004a:	.db $1f
B25_004b:		rol $201f		; 2e 1f 20
B25_004e:		inc $fbff, x	; fe ff fb
B25_0051:		and ($20), y	; 31 20
B25_0053:	.db $3f
B25_0054:		jsr $fffe		; 20 fe ff
B25_0057:	.db $fb
B25_0058:		eor ($10), y	; 51 10
B25_005a:	.db $1f
B25_005b:		asl $1e1d, x	; 1e 1d 1e
B25_005e:	.db $1f
B25_005f:		bpl B25_005f ; 10 fe

B25_0061:	.db $ff
B25_0062:	.db $fb
B25_0063:	.db $1f
B25_0064:		asl $101f, x	; 1e 1f 10
B25_0067:		ora ($12), y	; 11 12
B25_0069:		ora ($10), y	; 11 10
B25_006b:		inc $fbff, x	; fe ff fb
B25_006e:		;removed
	.db $10 $2f

B25_0070:		bpl B25_0093 ; 10 21

B25_0072:		inc $fbff, x	; fe ff fb
B25_0075:		jsr $2021		; 20 21 20
B25_0078:	.db $2f
B25_0079:		inc $fbff, x	; fe ff fb
B25_007c:		bmi B25_00ad ; 30 2f

B25_007e:		inc $fbff, x	; fe ff fb
B25_0081:		;removed
	.db $50 $2f

B25_0083:		rti				; 40 


B25_0084:		and ($10, x)	; 21 10
B25_0086:		inc $80ff, x	; fe ff 80
B25_0089:	.db $fb
B25_008a:		jsr $1211		; 20 11 12
B25_008d:		ora ($20), y	; 11 20
B25_008f:	.db $1f
B25_0090:		asl $fe1f, x	; 1e 1f fe
B25_0093:	.db $ff
B25_0094:		rts				; 60 


B25_0095:	.db $fb
B25_0096:	.db $1f
B25_0097:		rol $201f		; 2e 1f 20
B25_009a:		ora ($22), y	; 11 22
B25_009c:		ora ($20), y	; 11 20
B25_009e:		inc $40ff, x	; fe ff 40
B25_00a1:	.db $fb
B25_00a2:		;removed
	.db $30 $3f

B25_00a4:		bmi B25_00d7 ; 30 31

B25_00a6:		inc $fbff, x	; fe ff fb
B25_00a9:	.db $1f
B25_00aa:		rol $201f		; 2e 1f 20
B25_00ad:		ora ($22), y	; 11 22
B25_00af:		ora ($20), y	; 11 20
B25_00b1:		inc $60ff, x	; fe ff 60
B25_00b4:	.db $fb
B25_00b5:	.db $3f
B25_00b6:		jsr $2031		; 20 31 20
B25_00b9:		inc $80ff, x	; fe ff 80
B25_00bc:	.db $fb
B25_00bd:		jsr $1e2f		; 20 2f 1e
B25_00c0:	.db $2f
B25_00c1:		rti				; 40 


B25_00c2:		and ($12, x)	; 21 12
B25_00c4:		and ($20, x)	; 21 20
B25_00c6:		inc $90ff, x	; fe ff 90
B25_00c9:	.db $fb
B25_00ca:		bpl B25_00eb ; 10 1f

B25_00cc:		asl $101f, x	; 1e 1f 10
B25_00cf:		ora ($12), y	; 11 12
B25_00d1:		ora ($ff), y	; 11 ff
B25_00d3:	.db $fb
B25_00d4:		rti				; 40 


B25_00d5:	.db $4f
B25_00d6:		rti				; 40 


B25_00d7:		eor ($fe, x)	; 41 fe
B25_00d9:	.db $ff
B25_00da:		bvs B25_00d7 ; 70 fb

B25_00dc:	.db $1f
B25_00dd:		asl $201f, x	; 1e 1f 20
B25_00e0:		ora ($12), y	; 11 12
B25_00e2:		ora ($20), y	; 11 20
B25_00e4:		inc $fbff, x	; fe ff fb
B25_00e7:		jsr $1e1f		; 20 1f 1e
B25_00ea:	.db $2f
B25_00eb:		jsr $1211		; 20 11 12
B25_00ee:		and ($fe, x)	; 21 fe
B25_00f0:	.db $ff
B25_00f1:		bmi B25_00ee ; 30 fb

B25_00f3:	.db $3f
B25_00f4:		bmi B25_0127 ; 30 31

B25_00f6:		bmi B25_00f6 ; 30 fe

B25_00f8:	.db $ff
B25_00f9:		jsr $20fb		; 20 fb 20
B25_00fc:		and ($12, x)	; 21 12
B25_00fe:		and ($20, x)	; 21 20
B25_0100:	.db $2f
B25_0101:		asl $fe2f, x	; 1e 2f fe
B25_0104:	.db $ff
B25_0105:	.db $fb
B25_0106:		jsr $1e1f		; 20 1f 1e
B25_0109:	.db $2f
B25_010a:		jsr $1221		; 20 21 12
B25_010d:		and ($fe, x)	; 21 fe
B25_010f:	.db $ff
B25_0110:	.db $fb
B25_0111:		jsr $2211		; 20 11 22
B25_0114:		ora ($20), y	; 11 20
B25_0116:	.db $1f
B25_0117:		rol $fe1f		; 2e 1f fe
B25_011a:	.db $ff
B25_011b:		;removed
	.db $30 $fb

B25_011d:		jsr $1e2f		; 20 2f 1e
B25_0120:	.db $1f
B25_0121:		jsr $2120		; 20 20 21
B25_0124:	.db $12
B25_0125:		ora ($fe), y	; 11 fe
B25_0127:	.db $ff
B25_0128:		bcc B25_0125 ; 90 fb

B25_012a:	.db $2f
B25_012b:		asl $202f, x	; 1e 2f 20
B25_012e:		and ($12, x)	; 21 12
B25_0130:		and ($20, x)	; 21 20
B25_0132:		inc $30ff, x	; fe ff 30
B25_0135:	.db $fb
B25_0136:	.db $2f
B25_0137:		rol $202f		; 2e 2f 20
B25_013a:		and ($22, x)	; 21 22
B25_013c:		and ($20, x)	; 21 20
B25_013e:		inc $fbff, x	; fe ff fb
B25_0141:		;removed
	.db $10 $4f

B25_0143:		.db $10 $41

B25_0145:		inc $70ff, x	; fe ff 70
B25_0148:	.db $fb
B25_0149:	.db $3f
B25_014a:		.db $30 $31

B25_014c:		bmi B25_014c ; 30 fe

B25_014e:	.db $ff
B25_014f:	.db $ff