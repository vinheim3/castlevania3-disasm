
getCurrRoomXplus2_roomQuarterIdx:
	clc
	lda wCurrScrollXWithinRoom
	adc #$02
	pha
	lda wCurrScrollXRoom
	adc #$00
	sta wCurrRoomXQuarter
	pla
	jmp +


getCurrRoomX_roomQuarterIdx:
	lda wCurrScrollXRoom
	sta wCurrRoomXQuarter
	lda wCurrScrollXWithinRoom

+
	asl a
	rol wCurrRoomXQuarter
	asl a
	rol wCurrRoomXQuarter
	rts


getRoomEntityDataAddr:
	lda wCurrRoomGroup
	asl a
	tay
	lda roomEntityDataAddresses.w, y
	sta wCurrRoomGroupEntityDataAddr
	lda roomEntityDataAddresses.w+1, y
	sta wCurrRoomGroupEntityDataAddr+1

	lda wCurrRoomSection
	asl a
	tay
	lda (wCurrRoomGroupEntityDataAddr), y
	sta wCurrSectionEntityDataAddr
	iny
	lda (wCurrRoomGroupEntityDataAddr), y
	sta wCurrSectionEntityDataAddr+1

	lda wCurrRoomIdx
	asl a
	tay
	lda (wCurrSectionEntityDataAddr), y
	sta wCurrRoomEntityDataAddr
	iny
	lda (wCurrSectionEntityDataAddr), y
	sta wCurrRoomEntityDataAddr+1
	rts


loadRoomEntities:
B20_0047:		ldx #$00		; a2 00

; clear f0 to f3
B20_0049:		lda #$00		; a9 00
B20_004b:		sta $f0, x		; 95 f0
B20_004d:		inx				; e8 
B20_004e:		cpx #$04		; e0 04
B20_0050:		bcc B20_0049 ; 90 f7

B20_0052:		jsr getCurrRoomX_roomQuarterIdx		; 20 11 80
B20_0055:		jsr getRoomEntityDataAddr		; 20 1e 80

; 6 luminaries
B20_0058:		lda #$06		; a9 06
B20_005a:		sta $0c			; 85 0c

; 08 is offset within room quarter
B20_005c:		lda wCurrScrollXWithinRoom			; a5 56
B20_005e:		and #$3f		; 29 3f
B20_0060:		sta $08			; 85 08

B20_0062:		lda #$c0		; a9 c0
B20_0064:		sec				; 38 
B20_0065:		sbc $08			; e5 08
B20_0067:		sta $09			; 85 09

B20_0069:		lda #$01		; a9 01
B20_006b:		sta $0a			; 85 0a
@nextLuminary:
B20_006d:		jsr loadEntityMetadata		; 20 fc 80
B20_0070:		inc wCurrRoomXQuarter			; e6 76

; 09/0a += 140
B20_0072:		lda $09			; a5 09
B20_0074:		clc				; 18 
B20_0075:		adc #$40		; 69 40
B20_0077:		sta $09			; 85 09

B20_0079:		lda $0a			; a5 0a
B20_007b:		adc #$00		; 69 00
B20_007d:		and #$01		; 29 01
B20_007f:		sta $0a			; 85 0a

B20_0081:		dec $0c			; c6 0c
B20_0083:		bne B20_006d ; @nextLuminary

B20_0085:		lda #$ff		; a9 ff
B20_0087:		sta $77			; 85 77
B20_0089:		rts				; 60 


func_14_008a:
B20_008a:		ldy $6e			; a4 6e
B20_008c:		beq B20_0089 ; f0 fb

B20_008e:		dey				; 88 
B20_008f:		beq B20_00b9 ; f0 28

B20_0091:		dey				; 88 
B20_0092:		beq B20_00aa ; f0 16

B20_0094:		ldy $6e			; a4 6e
B20_0096:		cpy #$ff		; c0 ff
B20_0098:		beq B20_00b9 ; f0 1f

B20_009a:		lda wCurrScrollXWithinRoom			; a5 56
B20_009c:		and #$3f		; 29 3f
B20_009e:		cmp #$3f		; c9 3f
B20_00a0:		bne B20_00b9 ; d0 17

B20_00a2:		lda wCurrScrollXWithinRoom			; a5 56
B20_00a4:		clc				; 18 
B20_00a5:		adc #$01		; 69 01
B20_00a7:		jmp B20_00c1		; 4c c1 80

B20_00aa:		lda wCurrScrollXWithinRoom			; a5 56
B20_00ac:		and #$3f		; 29 3f
B20_00ae:		cmp #$01		; c9 01
B20_00b0:		bne B20_00b9 ; d0 07

B20_00b2:		lda wCurrScrollXWithinRoom			; a5 56
B20_00b4:		and #$fe		; 29 fe
B20_00b6:		jmp B20_00c1		; 4c c1 80

B20_00b9:		lda wCurrScrollXWithinRoom			; a5 56
B20_00bb:		and #$3f		; 29 3f
B20_00bd:		bne B20_0089 ; d0 ca

B20_00bf:		lda wCurrScrollXWithinRoom			; a5 56

B20_00c1:		cmp $77			; c5 77
B20_00c3:		beq B20_0089 ; f0 c4

B20_00c5:		sta $77			; 85 77
B20_00c7:		jsr getCurrRoomXplus2_roomQuarterIdx		; 20 01 80
B20_00ca:		lda #$00		; a9 00
B20_00cc:		ldy #$c0		; a0 c0
B20_00ce:		ldx $65			; a6 65
B20_00d0:		beq B20_00d6 ; f0 04

B20_00d2:		lda #$05		; a9 05
B20_00d4:		ldy #$00		; a0 00
B20_00d6:		sty $09			; 84 09
B20_00d8:		sta $08			; 85 08
B20_00da:		lda wCurrScrollXWithinRoom			; a5 56
B20_00dc:		and #$3f		; 29 3f
B20_00de:		sta $0e			; 85 0e
B20_00e0:		and #$20		; 29 20
B20_00e2:		beq B20_00ea ; f0 06

B20_00e4:		lda $0e			; a5 0e
B20_00e6:		ora #$c0		; 09 c0
B20_00e8:		bne B20_00ec ; d0 02

B20_00ea:		lda $0e			; a5 0e
B20_00ec:		clc				; 18 
B20_00ed:		adc $09			; 65 09
B20_00ef:		sta $09			; 85 09
B20_00f1:		lda wCurrRoomXQuarter			; a5 76
B20_00f3:		clc				; 18 
B20_00f4:		adc $08			; 65 08
B20_00f6:		sta wCurrRoomXQuarter			; 85 76
B20_00f8:		lda #$01		; a9 01
B20_00fa:		sta $0a			; 85 0a

loadEntityMetadata:
B20_00fc:		ldy wCurrRoomXQuarter			; a4 76
B20_00fe:		ldx offsetMod6.w, y	; be 0c 84
B20_0101:		lda wCurrRoomXQuarter			; a5 76
B20_0103:		asl a			; 0a
B20_0104:		tay				; a8 
B20_0105:		sty $0b			; 84 0b
B20_0107:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0109:		asl a			; 0a
B20_010a:		bcs B20_011a ; b0 0e

; 5-byte structs
B20_010c:		tay				; a8 
B20_010d:		lda data_15_003f.w, y	; b9 3f a0
B20_0110:		sta $00			; 85 00
B20_0112:		lda data_15_003f.w+1, y	; b9 40 a0
B20_0115:		sta $01			; 85 01
B20_0117:		jmp B20_0132		; 4c 32 81

B20_011a:		ldy $07f6		; ac f6 07
B20_011d:		bne B20_0127 ; d0 08

B20_011f:		cmp #$a0		; c9 a0
B20_0121:		bcc B20_0127 ; 90 04

B20_0123:		lda #$00		; a9 00
B20_0125:		beq B20_010c ; f0 e5

B20_0127:		tay				; a8 
B20_0128:		lda data_15_013f.w, y	; b9 3f a1
B20_012b:		sta $00			; 85 00
B20_012d:		lda data_15_013f.w+1, y	; b9 40 a1
B20_0130:		sta $01			; 85 01

; 1st byte in 7c2
B20_0132:		ldy #$00		; a0 00
B20_0134:		lda ($00), y	; b1 00
B20_0136:		sta $07c2, x	; 9d c2 07
B20_0139:		beq B20_0178 ; f0 3d

; 2nd byte
B20_013b:		iny				; c8 
B20_013c:		lda ($00), y	; b1 00
B20_013e:		clc				; 18 
B20_013f:		adc $09			; 65 09
B20_0141:		sta $07da, x	; 9d da 07

B20_0144:		lda $0a			; a5 0a
B20_0146:		adc #$00		; 69 00
B20_0148:		and #$01		; 29 01
B20_014a:		sta $07e0, x	; 9d e0 07

; 3rd byte in 7d4
B20_014d:		iny				; c8 
B20_014e:		lda ($00), y	; b1 00
B20_0150:		sta $07d4, x	; 9d d4 07

; 4th byte in 7e6
B20_0153:		iny				; c8 
B20_0154:		lda ($00), y	; b1 00
B20_0156:		sta $07e6, x	; 9d e6 07

; 5th byte in 7ce
B20_0159:		iny				; c8 
B20_015a:		lda ($00), y	; b1 00
B20_015c:		sta $07ce, x	; 9d ce 07

; preserve X
B20_015f:		txa				; 8a 
B20_0160:		pha				; 48 

B20_0161:		lda $07c8, x	; bd c8 07
B20_0164:		lsr a			; 4a
B20_0165:		lsr a			; 4a
B20_0166:		lsr a			; 4a
B20_0167:		lsr a			; 4a
B20_0168:		tax				; aa 
B20_0169:		lda $0470, x	; bd 70 04
B20_016c:		and #$fb		; 29 fb
B20_016e:		sta $0470, x	; 9d 70 04

; restore X
B20_0171:		pla				; 68 
B20_0172:		tax				; aa 

B20_0173:		lda #$00		; a9 00
B20_0175:		sta $07c8, x	; 9d c8 07

B20_0178:		jsr retZifPendulumRoomBeforeDracula		; 20 8d 84
B20_017b:		bne B20_017e ; d0 01

B20_017d:		rts				; 60 

; x += 0xd
B20_017e:		txa				; 8a 
B20_017f:		clc				; 18 
B20_0180:		adc #$0d		; 69 0d
B20_0182:		tax				; aa 
B20_0183:		jsr func_14_043c		; 20 3c 84
B20_0186:		bne B20_01e6 ; d0 5e

; for torch, 0b=0a,98=949d,x=$12
B20_0188:		ldy $0b			; a4 0b
B20_018a:		iny				; c8 
B20_018b:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_018d:		beq B20_01e6 ; @done

B20_018f:		asl a			; 0a
B20_0190:		bcs B20_01a0 ; b0 0e

B20_0192:		tay				; a8 
B20_0193:		lda data_15_0644.w, y	; b9 44 a6
B20_0196:		sta $00			; 85 00
B20_0198:		lda data_15_0644.w+1, y	; b9 45 a6
B20_019b:		sta $01			; 85 01
B20_019d:		jmp B20_01ab		; 4c ab 81

B20_01a0:		tay				; a8 
B20_01a1:		lda data_15_0744.w, y	; b9 44 a7
B20_01a4:		sta $00			; 85 00
B20_01a6:		lda data_15_0744.w+1, y	; b9 45 a7
B20_01a9:		sta $01			; 85 01

B20_01ab:		jsr func_1f_1ed7	; sets entity vals to 0

; 1st byte
B20_01ae:		ldy #$00		; a0 00
B20_01b0:		lda ($00), y	; b1 00
B20_01b2:		sta $054e, x	; 9d 4e 05

; 2nd byte is luminary contents
B20_01b5:		iny				; c8 
B20_01b6:		lda ($00), y	; b1 00
B20_01b8:		sta $05d8, x	; 9d d8 05

; 3rd byte
B20_01bb:		iny				; c8 
B20_01bc:		lda ($00), y	; b1 00
B20_01be:		clc				; 18 
B20_01bf:		adc $09			; 65 09
B20_01c1:		sta wEntityBaseX.w, x	; 9d 38 04

B20_01c4:		lda $0a			; a5 0a
B20_01c6:		adc #$00		; 69 00
B20_01c8:		and #$01		; 29 01
B20_01ca:		sta $0470, x	; 9d 70 04

; 4th byte
B20_01cd:		iny				; c8 
B20_01ce:		lda ($00), y	; b1 00
B20_01d0:		sta wEntityBaseY.w, x	; 9d 1c 04

B20_01d3:		lda $054e, x	; bd 4e 05
B20_01d6:		sec				; 38 
B20_01d7:		sbc #$90		; e9 90
B20_01d9:		tay				; a8 
B20_01da:		lda $8325, y	; b9 25 83
B20_01dd:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_01e0:		lda wCurrRoomXQuarter			; a5 76
B20_01e2:		sta $0645, x	; 9d 45 06
B20_01e5:		rts				; 60 

@done:
B20_01e6:		jsr func_1f_1ed7		; 20 d7 fe
B20_01e9:		lda #$00		; a9 00
B20_01eb:		sta $054e, x	; 9d 4e 05
B20_01ee:		sta $0470, x	; 9d 70 04
B20_01f1:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_01f4:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_01f7:		rts				; 60 


func_14_01f8:
B20_01f8:		jsr $8369		; 20 69 83
B20_01fb:		lda #$00		; a9 00
B20_01fd:		sta $79			; 85 79
B20_01ff:		sta $7a			; 85 7a
B20_0201:		jsr getRoomEntityDataAddr		; 20 1e 80
B20_0204:		ldy $79			; a4 79
B20_0206:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0208:		cmp #$ff		; c9 ff
B20_020a:		beq B20_025d ; f0 51

B20_020c:		jsr $831d		; 20 1d 83
B20_020f:		lda $0a			; a5 0a
B20_0211:		sec				; 38 
B20_0212:		sbc wCurrScrollXWithinRoom			; e5 56
B20_0214:		sta $02			; 85 02
B20_0216:		lda $09			; a5 09
B20_0218:		sbc wCurrScrollXRoom			; e5 57
B20_021a:		sta $03			; 85 03
B20_021c:		bmi B20_0253 ; 30 35

B20_021e:		sec				; 38 
B20_021f:		lda $09			; a5 09
B20_0221:		sbc wCurrScrollXRoom			; e5 57
B20_0223:		beq B20_0235 ; f0 10

B20_0225:		sec				; 38 
B20_0226:		sbc #$01		; e9 01
B20_0228:		bne B20_0253 ; d0 29

B20_022a:		sec				; 38 
B20_022b:		lda $02			; a5 02
B20_022d:		sbc #$10		; e9 10
B20_022f:		sta $02			; 85 02
B20_0231:		bcs B20_0235 ; b0 02

B20_0233:		dec $03			; c6 03
B20_0235:		lda $03			; a5 03
B20_0237:		bne B20_0253 ; d0 1a

B20_0239:		lda $02			; a5 02
B20_023b:		cmp #$b9		; c9 b9
B20_023d:		bcs B20_0253 ; b0 14

B20_023f:		lda $02			; a5 02
B20_0241:		clc				; 18 
B20_0242:		adc #$37		; 69 37
B20_0244:		sta $0a			; 85 0a
B20_0246:		clc				; 18 
B20_0247:		lda $7a			; a5 7a
B20_0249:		adc #$07		; 69 07
B20_024b:		sta $7a			; 85 7a
B20_024d:		jsr $8271		; 20 71 82
B20_0250:		jmp $8201		; 4c 01 82


B20_0253:		clc				; 18 
B20_0254:		lda $79			; a5 79
B20_0256:		adc #$07		; 69 07
B20_0258:		sta $79			; 85 79
B20_025a:		jmp $8201		; 4c 01 82


B20_025d:		lda $7a			; a5 7a
B20_025f:		sta $79			; 85 79
B20_0261:		rts				; 60 


func_14_0262:
B20_0262:		lda wCurrScrollXWithinRoom			; a5 56
B20_0264:		and #$f0		; 29 f0
B20_0266:		cmp $77			; c5 77
B20_0268:		beq B20_0261 ; f0 f7

B20_026a:		sta $77			; 85 77
B20_026c:		jsr $82d7		; 20 d7 82
B20_026f:		bcc B20_0261 ; 90 f0

B20_0271:		clc				; 18 
B20_0272:		lda $79			; a5 79
B20_0274:		adc #$07		; 69 07
B20_0276:		sta $79			; 85 79
B20_0278:		iny				; c8 
B20_0279:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_027b:		bmi B20_02a8 ; 30 2b

B20_027d:		jsr $835b		; 20 5b 83
B20_0280:		bne B20_02d6 ; d0 54

B20_0282:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0284:		sta $07c2, x	; 9d c2 07
B20_0287:		iny				; c8 
B20_0288:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_028a:		sta $07da, x	; 9d da 07
B20_028d:		iny				; c8 
B20_028e:		iny				; c8 
B20_028f:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0291:		sta $07e6, x	; 9d e6 07
B20_0294:		iny				; c8 
B20_0295:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0297:		sta $07ce, x	; 9d ce 07
B20_029a:		lda $0a			; a5 0a
B20_029c:		sta $07d4, x	; 9d d4 07
B20_029f:		lda #$00		; a9 00
B20_02a1:		sta $07e0, x	; 9d e0 07
B20_02a4:		sta $07c8, x	; 9d c8 07
B20_02a7:		rts				; 60 


B20_02a8:		jsr $834d		; 20 4d 83
B20_02ab:		bne B20_02d6 ; d0 29

B20_02ad:		jsr func_1f_1ed7		; 20 d7 fe
B20_02b0:		sta $0470, x	; 9d 70 04
B20_02b3:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_02b5:		sta $054e, x	; 9d 4e 05
B20_02b8:		iny				; c8 
B20_02b9:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_02bb:		sta wEntityBaseX.w, x	; 9d 38 04
B20_02be:		iny				; c8 
B20_02bf:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_02c1:		sta $05d8, x	; 9d d8 05
B20_02c4:		lda $0a			; a5 0a
B20_02c6:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_02c9:		lda $054e, x	; bd 4e 05
B20_02cc:		sec				; 38 
B20_02cd:		sbc #$90		; e9 90
B20_02cf:		tay				; a8 
B20_02d0:		lda $8325, y	; b9 25 83
B20_02d3:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_02d6:		rts				; 60 


B20_02d7:		ldy $79			; a4 79
B20_02d9:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_02db:		cmp #$ff		; c9 ff
B20_02dd:		beq B20_02f1 ; f0 12

B20_02df:		jsr $831d		; 20 1d 83
B20_02e2:		lda $0a			; a5 0a
B20_02e4:		sec				; 38 
B20_02e5:		sbc wCurrScrollXWithinRoom			; e5 56
B20_02e7:		sta $02			; 85 02
B20_02e9:		lda $09			; a5 09
B20_02eb:		sbc wCurrScrollXRoom			; e5 57
B20_02ed:		sta $03			; 85 03
B20_02ef:		bpl B20_02f3 ; 10 02

B20_02f1:		clc				; 18 
B20_02f2:		rts				; 60 


B20_02f3:		sec				; 38 
B20_02f4:		lda $09			; a5 09
B20_02f6:		sbc wCurrScrollXRoom			; e5 57
B20_02f8:		beq B20_030a ; f0 10

B20_02fa:		sec				; 38 
B20_02fb:		sbc #$01		; e9 01
B20_02fd:		bne B20_02f1 ; d0 f2

B20_02ff:		sec				; 38 
B20_0300:		lda $02			; a5 02
B20_0302:		sbc #$10		; e9 10
B20_0304:		sta $02			; 85 02
B20_0306:		bcs B20_030a ; b0 02

B20_0308:		dec $03			; c6 03
B20_030a:		lda $03			; a5 03
B20_030c:		bne B20_02f1 ; d0 e3

B20_030e:		lda $02			; a5 02
B20_0310:		cmp #$b8		; c9 b8
B20_0312:		bcs B20_02f1 ; b0 dd

B20_0314:		lda $02			; a5 02
B20_0316:		clc				; 18 
B20_0317:		adc #$37		; 69 37
B20_0319:		sta $0a			; 85 0a
B20_031b:		sec				; 38 
B20_031c:		rts				; 60 


B20_031d:		sta $09			; 85 09
B20_031f:		iny				; c8 
B20_0320:		lda (wCurrRoomEntityDataAddr), y	; b1 98
B20_0322:		sta $0a			; 85 0a
B20_0324:		rts				; 60 


B20_0325:		;removed
	.db $30 $31

B20_0327:	.db $32
B20_0328:		.db $00				; 00
B20_0329:		.db $00				; 00
B20_032a:		.db $00				; 00
B20_032b:		.db $00				; 00
B20_032c:		.db $00				; 00
B20_032d:		.db $00				; 00
B20_032e:		.db $00				; 00
B20_032f:		eor ($00), y	; 51 00
B20_0331:		.db $00				; 00
B20_0332:		.db $00				; 00
B20_0333:		.db $00				; 00
B20_0334:		.db $00				; 00
B20_0335:		.db $00				; 00
B20_0336:		.db $00				; 00
B20_0337:		.db $00				; 00
B20_0338:		.db $00				; 00
B20_0339:		.db $00				; 00
B20_033a:		.db $00				; 00
B20_033b:		.db $00				; 00
B20_033c:		.db $00				; 00
B20_033d:		.db $00				; 00
B20_033e:		.db $00				; 00
B20_033f:		.db $00				; 00
B20_0340:		.db $00				; 00
B20_0341:		.db $00				; 00
B20_0342:		.db $00				; 00
B20_0343:		.db $00				; 00
B20_0344:		.db $00				; 00
B20_0345:		.db $00				; 00
B20_0346:	.db $52
B20_0347:		.db $00				; 00
B20_0348:		.db $00				; 00
B20_0349:		.db $00				; 00
B20_034a:		.db $00				; 00
B20_034b:		.db $00				; 00
B20_034c:		.db $00				; 00
B20_034d:		ldx #$0d		; a2 0d
B20_034f:		lda $054e, x	; bd 4e 05
B20_0352:		beq B20_0391 ; f0 3d

B20_0354:		inx				; e8 
B20_0355:		cpx #$13		; e0 13
B20_0357:		bcc B20_034f ; 90 f6

B20_0359:		bcs B20_038f ; b0 34

B20_035b:		ldx #$00		; a2 00
B20_035d:		lda $07c2, x	; bd c2 07
B20_0360:		beq B20_0391 ; f0 2f

B20_0362:		inx				; e8 
B20_0363:		cpx #$06		; e0 06
B20_0365:		bcc B20_035d ; 90 f6

B20_0367:		bcs B20_038f ; b0 26

B20_0369:		ldx #$00		; a2 00
B20_036b:		txa				; 8a 
B20_036c:		sta $07c2, x	; 9d c2 07
B20_036f:		inx				; e8 
B20_0370:		cpx #$06		; e0 06
B20_0372:		bcc B20_036c ; 90 f8

B20_0374:		rts				; 60 


B20_0375:		ldx #$01		; a2 01
B20_0377:		lda $054e, x	; bd 4e 05
B20_037a:		beq B20_0391 ; f0 15

B20_037c:		inx				; e8 
B20_037d:		cpx #$03		; e0 03
B20_037f:		bcc B20_0377 ; 90 f6

B20_0381:		bcs B20_038f ; b0 0c

B20_0383:		ldx #$01		; a2 01
B20_0385:		lda $054e, x	; bd 4e 05
B20_0388:		beq B20_0391 ; f0 07

B20_038a:		inx				; e8 
B20_038b:		cpx #$04		; e0 04
B20_038d:		bcc B20_0385 ; 90 f6

B20_038f:		lda #$01		; a9 01
B20_0391:		rts				; 60 


B20_0392:		ldx #$07		; a2 07
B20_0394:		lda $054e, x	; bd 4e 05
B20_0397:		beq B20_0391 ; f0 f8

B20_0399:		inx				; e8 
B20_039a:		cpx #$09		; e0 09
B20_039c:		bcc B20_0394 ; 90 f6

B20_039e:		bcs B20_038f ; b0 ef

B20_03a0:		ldx #$04		; a2 04
B20_03a2:		lda $054e, x	; bd 4e 05
B20_03a5:		beq B20_0391 ; f0 ea

B20_03a7:		inx				; e8 
B20_03a8:		cpx #$07		; e0 07
B20_03aa:		bcc B20_03a2 ; 90 f6

B20_03ac:		bcs B20_038f ; b0 e1

B20_03ae:		ldx #$0a		; a2 0a
B20_03b0:		lda $054e, x	; bd 4e 05
B20_03b3:		beq B20_0391 ; f0 dc

B20_03b5:		inx				; e8 
B20_03b6:		cpx #$0d		; e0 0d
B20_03b8:		bcc B20_03b0 ; 90 f6

B20_03ba:		bcs B20_038f ; b0 d3

B20_03bc:		ldx #$01		; a2 01
B20_03be:		jsr $81e9		; 20 e9 81
B20_03c1:		sta $0657, x	; 9d 57 06
B20_03c4:		sta $0669, x	; 9d 69 06
B20_03c7:		inx				; e8 
B20_03c8:		cpx #$0d		; e0 0d
B20_03ca:		bcc B20_03be ; 90 f2

B20_03cc:		rts				; 60 


B20_03cd:		ldy #$00		; a0 00
B20_03cf:		lda $6e			; a5 6e
B20_03d1:		bpl B20_03d4 ; 10 01

B20_03d3:		dey				; 88 
B20_03d4:		sty $00			; 84 00
B20_03d6:		lda $68			; a5 68
B20_03d8:		bmi B20_03ee ; 30 14

B20_03da:		sec				; 38 
B20_03db:		lda $07da, x	; bd da 07
B20_03de:		sbc $6e			; e5 6e
B20_03e0:		sta $07da, x	; 9d da 07
B20_03e3:		lda $07e0, x	; bd e0 07
B20_03e6:		sbc $00			; e5 00
B20_03e8:		and #$01		; 29 01
B20_03ea:		sta $07e0, x	; 9d e0 07
B20_03ed:		rts				; 60 


B20_03ee:		clc				; 18 
B20_03ef:		lda $07d4, x	; bd d4 07
B20_03f2:		adc $6e			; 65 6e
B20_03f4:		sta $07d4, x	; 9d d4 07
B20_03f7:		lda $07e0, x	; bd e0 07
B20_03fa:		adc $00			; 65 00
B20_03fc:		and #$01		; 29 01
B20_03fe:		sta $07e0, x	; 9d e0 07
B20_0401:		lda $07e0, x	; bd e0 07
B20_0404:		beq B20_040b ; f0 05

B20_0406:		lda #$00		; a9 00
B20_0408:		sta $07c2, x	; 9d c2 07
B20_040b:		rts				; 60 


offsetMod6:
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05
	.db $00 $01 $02 $03 $04 $05


func_14_043c:
	ldy wCurrRoomXQuarter
	lda $844d, y
	sta $0f
B20_0443:		lda $846d, y	; b9 6d 84
B20_0446:		tay				; a8 
B20_0447:		lda $f0.w, y
B20_044a:		and $0f			; 25 0f
B20_044c:		rts				; 60 


B20_044d:		ora ($02, x)	; 01 02
B20_044f:	.db $04
B20_0450:		php				; 08 
B20_0451:		bpl B20_0473 ; 10 20

B20_0453:		rti				; 40 


B20_0454:	.db $80
B20_0455:		ora ($02, x)	; 01 02
B20_0457:	.db $04
B20_0458:		php				; 08 
B20_0459:		bpl B20_047b ; 10 20

B20_045b:		rti				; 40 


B20_045c:	.db $80
B20_045d:		ora ($02, x)	; 01 02
B20_045f:	.db $04
B20_0460:		php				; 08 
B20_0461:		bpl B20_0483 ; 10 20

B20_0463:		rti				; 40 


B20_0464:	.db $80
B20_0465:		ora ($02, x)	; 01 02
B20_0467:	.db $04
B20_0468:		php				; 08 
B20_0469:		bpl B20_048b ; 10 20

B20_046b:		rti				; 40 


B20_046c:	.db $80
B20_046d:		.db $00				; 00
B20_046e:		.db $00				; 00
B20_046f:		.db $00				; 00
B20_0470:		.db $00				; 00
B20_0471:		.db $00				; 00
B20_0472:		.db $00				; 00
B20_0473:		.db $00				; 00
B20_0474:		.db $00				; 00
B20_0475:		ora ($01, x)	; 01 01
B20_0477:		ora ($01, x)	; 01 01
B20_0479:		ora ($01, x)	; 01 01
B20_047b:		ora ($01, x)	; 01 01
B20_047d:	.db $02
B20_047e:	.db $02
B20_047f:	.db $02
B20_0480:	.db $02
B20_0481:	.db $02
B20_0482:	.db $02
B20_0483:	.db $02
B20_0484:	.db $02
B20_0485:	.db $03
B20_0486:	.db $03
B20_0487:	.db $03
B20_0488:	.db $03
B20_0489:	.db $03
B20_048a:	.db $03
B20_048b:	.db $03
B20_048c:	.db $03


retZifPendulumRoomBeforeDracula:
	lda wCurrRoomGroup
	cmp #$0e
	bne +

	lda wCurrRoomSection
	cmp #$01
	bne +

	lda wCurrRoomIdx
	cmp #$01

+	rts


B20_049e:		ldx #$01		; a2 01
B20_04a0:		lda $054e, x	; bd 4e 05
B20_04a3:		cmp #$93		; c9 93
B20_04a5:		bcc B20_04c0 ; 90 19

B20_04a7:		beq B20_04d0 ; f0 27

B20_04a9:		cmp #$95		; c9 95
B20_04ab:		beq B20_04d0 ; f0 23

B20_04ad:		cmp #$97		; c9 97
B20_04af:		beq B20_04c0 ; f0 0f

B20_04b1:		cmp #$af		; c9 af
B20_04b3:		beq B20_04bd ; f0 08

B20_04b5:		cmp #$b0		; c9 b0
B20_04b7:		beq B20_04bd ; f0 04

B20_04b9:		cmp #$9f		; c9 9f
B20_04bb:		bcs B20_04c0 ; b0 03

B20_04bd:		jsr $84d8		; 20 d8 84
B20_04c0:		inx				; e8 
B20_04c1:		cpx #$13		; e0 13
B20_04c3:		bcc B20_04a0 ; 90 db

B20_04c5:		ldx #$14		; a2 14
B20_04c7:		jsr $84d8		; 20 d8 84
B20_04ca:		inx				; e8 
B20_04cb:		cpx #$17		; e0 17
B20_04cd:		bcc B20_04c7 ; 90 f8

B20_04cf:		rts				; 60 


B20_04d0:		lda $3a			; a5 3a
B20_04d2:		cmp #$02		; c9 02
B20_04d4:		bne B20_04bd ; d0 e7

B20_04d6:		beq B20_04c0 ; f0 e8

B20_04d8:		lda #$00		; a9 00
B20_04da:		sta $054e, x	; 9d 4e 05
B20_04dd:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_04e0:		sta $0470, x	; 9d 70 04
B20_04e3:		sta wEntityBaseX.w, x	; 9d 38 04
B20_04e6:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_04e9:		rts				; 60 


func_14_04ea:
B20_04ea:		ldx #$00		; a2 00
B20_04ec:		lda $07c2, x	; bd c2 07
B20_04ef:		beq B20_04ff ; f0 0e

B20_04f1:		stx $6c			; 86 6c
B20_04f3:		lda $b2			; a5 b2
B20_04f5:		bne B20_04fc ; d0 05

B20_04f7:		jsr func_14_0505		; 20 05 85
B20_04fa:		ldx $6c			; a6 6c
B20_04fc:		jsr $83cd		; 20 cd 83
B20_04ff:		inx				; e8 
B20_0500:		cpx #$06		; e0 06
B20_0502:		bcc B20_04ec ; 90 e8

B20_0504:		rts				; 60 


func_14_0505:
B20_0505:		lda $07c2, x	; bd c2 07
B20_0508:		asl a			; 0a
B20_0509:		tay				; a8 
B20_050a:		lda data_14_0527.w, y	; b9 27 85
B20_050d:		sta $00			; 85 00
B20_050f:		lda data_14_0527.w+1, y	; b9 28 85
B20_0512:		sta $01			; 85 01

B20_0514:		lda $07c8, x	; bd c8 07
B20_0517:		and #$0f		; 29 0f
B20_0519:		asl a			; 0a
B20_051a:		tay				; a8 
B20_051b:		lda ($00), y	; b1 00
B20_051d:		sta $02			; 85 02
B20_051f:		iny				; c8 
B20_0520:		lda ($00), y	; b1 00
B20_0522:		sta $03			; 85 03
B20_0524:		jmp ($02)

data_14_0527:
	.dw $85d3
	.dw $85d7
	.dw $8629
	.dw $8878
	.dw $8a13
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $91af
	.dw $91ab
	.dw $921d
	.dw $8b61
	.dw $8970
	.dw $8cb2
	.dw $8c76
	.dw $8b2c
	.dw $8bf9
	.dw $8b16
	.dw $86bf
	.dw $8bab
	.dw $8bf9
	.dw $8bab
	.dw $8bab
	.dw $8bab
	.dw $8aad
	.dw $8bab
	.dw $8a5f
	.dw $8ed1
	.dw $914a
	.dw $8ffc
	.dw $90dd
	.dw $90a0
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8ed1
	.dw $8bf9
	.dw $8bab
	.dw $8c0f
	.dw $8c9c
	.dw $8970
	.dw $8aef
	.dw $8948
	.dw $8c65
	.dw $85d3
	.dw $85d3
	.dw $85d3
	.dw $8bab
	.dw $85d3
	.dw $85d3
	.dw $85d3
	.dw $8d93
	.dw $85d3
	.dw $85d3
	.dw $8d93
	.dw $8652
	.dw $87bc
	.dw $8769
	.dw $86b3
	.dw $86b9
	.dw $8bab
	.dw $8b61
	.dw $8c76

	
B20_05ab:		cmp $8d			; c5 8d
B20_05ad:	.db $d3
B20_05ae:		sty $8ad8		; 8c d8 8a
B20_05b1:	.db $ef
B20_05b2:		txa				; 8a 
B20_05b3:		.db $d0 $88

B20_05b5:		;removed
	.db $70 $89

B20_05b7:		rol a			; 2a
B20_05b8:		dey				; 88 
B20_05b9:		eor $0f8b		; 4d 8b 0f
B20_05bc:		dey				; 88 
B20_05bd:		lda $8a			; a5 8a
B20_05bf:		cmp $8d			; c5 8d
B20_05c1:	.db $93
B20_05c2:		sta $8d93		; 8d 93 8d
B20_05c5:	.db $7c
B20_05c6:		stx $5f			; 86 5f
B20_05c8:		txa				; 8a 
B20_05c9:		ora $0987, y	; 19 87 09
B20_05cc:		txa				; 8a 
B20_05cd:		rts				; 60 


B20_05ce:	.db $19 $00 $00
B20_05d1:		.db $00				; 00
B20_05d2:		rts				; 60 


B20_05d3:	.db $d2
B20_05d4:		sta $d2			; 85 d2
B20_05d6:		sta $db			; 85 db
B20_05d8:		sta $e6			; 85 e6
B20_05da:		sta $20			; 85 20
B20_05dc:	.db $eb
B20_05dd:		sta $a6			; 85 a6
B20_05df:		jmp ($c8fe)		; 6c fe c8


B20_05e2:	.db $07
B20_05e3:		rts				; 60 


B20_05e4:		php				; 08 
B20_05e5:		sed				; f8 
B20_05e6:		dec $07ce, x	; de ce 07
B20_05e9:		bne B20_05e3 ; d0 f8

B20_05eb:		jsr func_14_0de7		; 20 e7 8d
B20_05ee:		jsr $8d73		; 20 73 8d
B20_05f1:		bne B20_0621 ; d0 2e

B20_05f3:		jsr $89b3		; 20 b3 89
B20_05f6:		lda $85e4, y	; b9 e4 85
B20_05f9:		sta $00			; 85 00
B20_05fb:		lda #$b0		; a9 b0
B20_05fd:		sta $01			; 85 01
B20_05ff:		jsr $8dde		; 20 de 8d
B20_0602:		lda wEntityBaseX.w, x	; bd 38 04
B20_0605:		sta $08			; 85 08
B20_0607:		txa				; 8a 
B20_0608:		ldx $6c			; a6 6c
B20_060a:		sta $07e6, x	; 9d e6 07
B20_060d:		ldy #$a4		; a0 a4
B20_060f:		lda $08			; a5 08
B20_0611:		jsr $fc16		; 20 16 fc
B20_0614:		beq B20_0621 ; f0 0b

B20_0616:		ldx $6c			; a6 6c
B20_0618:		lda $07e6, x	; bd e6 07
B20_061b:		tax				; aa 
B20_061c:		lda #$90		; a9 90
B20_061e:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_0621:		lda #$81		; a9 81
B20_0623:		ldx $6c			; a6 6c
B20_0625:		sta $07ce, x	; 9d ce 07
B20_0628:		rts				; 60 


B20_0629:		and $4b86		; 2d 86 4b
B20_062c:		stx $fe			; 86 fe
B20_062e:		iny				; c8 
B20_062f:	.db $07
B20_0630:		jsr func_14_0de7		; 20 e7 8d
B20_0633:		jsr $8d73		; 20 73 8d
B20_0636:		bne B20_0643 ; d0 0b

B20_0638:		jsr $8dde		; 20 de 8d
B20_063b:		lda $0470, x	; bd 70 04
B20_063e:		ora #$20		; 09 20
B20_0640:		sta $0470, x	; 9d 70 04
B20_0643:		ldx $6c			; a6 6c
B20_0645:		lda #$81		; a9 81
B20_0647:		sta $07ce, x	; 9d ce 07
B20_064a:		rts				; 60 


B20_064b:		dec $07ce, x	; de ce 07
B20_064e:		bne B20_0628 ; d0 d8

B20_0650:		beq B20_0630 ; f0 de

B20_0652:		lsr $86, x		; 56 86
B20_0654:	.db $5c
B20_0655:		stx $20			; 86 20
B20_0657:		adc ($86, x)	; 61 86
B20_0659:		jmp $85de		; 4c de 85


B20_065c:		dec $07ce, x	; de ce 07
B20_065f:		bne B20_064a ; d0 e9

B20_0661:		jsr func_14_0de7		; 20 e7 8d
B20_0664:		jsr $8d73		; 20 73 8d
B20_0667:		bne B20_0674 ; d0 0b

B20_0669:		jsr $89b7		; 20 b7 89
B20_066c:		lda $85e4, y	; b9 e4 85
B20_066f:		sta $00			; 85 00
B20_0671:		jsr $8dde		; 20 de 8d
B20_0674:		ldx $6c			; a6 6c
B20_0676:		lda #$47		; a9 47
B20_0678:		sta $07ce, x	; 9d ce 07
B20_067b:		rts				; 60 


B20_067c:	.db $80
B20_067d:		stx $86			; 86 86
B20_067f:		stx $20			; 86 20
B20_0681:	.db $8b
B20_0682:		stx $4c			; 86 4c
B20_0684:		dec $de85, x	; de 85 de
B20_0687:		dec $d007		; ce 07 d0
B20_068a:	.db $27
B20_068b:		jsr func_14_0de7		; 20 e7 8d
B20_068e:		jsr $8d73		; 20 73 8d
B20_0691:		bne B20_06ab ; d0 18

B20_0693:		jsr $89b3		; 20 b3 89
B20_0696:		lda $85e4, y	; b9 e4 85
B20_0699:		sta $00			; 85 00
B20_069b:		lda $07f6		; ad f6 07
B20_069e:		beq B20_06a8 ; f0 08

B20_06a0:		lda #$70		; a9 70
B20_06a2:		sta $02			; 85 02
B20_06a4:		lda #$66		; a9 66
B20_06a6:		sta $03			; 85 03
B20_06a8:		jsr $8dde		; 20 de 8d
B20_06ab:		ldx $6c			; a6 6c
B20_06ad:		lda #$41		; a9 41
B20_06af:		sta $07ce, x	; 9d ce 07
B20_06b2:		rts				; 60 


B20_06b3:	.db $c3
B20_06b4:		stx $fd			; 86 fd
B20_06b6:		stx $0e			; 86 0e
B20_06b8:	.db $87
B20_06b9:		cmp #$86		; c9 86
B20_06bb:		sbc $0e86, x	; fd 86 0e
B20_06be:	.db $87
B20_06bf:		cmp #$86		; c9 86
B20_06c1:	.db $ef
B20_06c2:		stx $a5			; 86 a5
B20_06c4:		rol a			; 2a
B20_06c5:		cmp #$1b		; c9 1b
B20_06c7:		beq B20_06ee ; f0 25

B20_06c9:		lda $07e0, x	; bd e0 07
B20_06cc:		bne B20_06ee ; d0 20

B20_06ce:		jsr func_14_0de7		; 20 e7 8d
B20_06d1:		jsr func_14_0e54		; 20 54 8e
B20_06d4:		bne B20_06ee ; d0 18

B20_06d6:		txa				; 8a 
B20_06d7:		adc $1a			; 65 1a
B20_06d9:		adc wEntityBaseX.w		; 6d 38 04
B20_06dc:		and #$01		; 29 01
B20_06de:		tay				; a8 
B20_06df:		lda $85e4, y	; b9 e4 85
B20_06e2:		sta $00			; 85 00
B20_06e4:		jsr $8dde		; 20 de 8d
B20_06e7:		txa				; 8a 
B20_06e8:		jsr $85de		; 20 de 85
B20_06eb:		sta $07e6, x	; 9d e6 07
B20_06ee:		rts				; 60 


B20_06ef:		ldy $07e6, x	; bc e6 07
B20_06f2:		lda $054e, y	; b9 4e 05
B20_06f5:		bne B20_06ee ; d0 f7

B20_06f7:		lda #$00		; a9 00
B20_06f9:		sta $07c8, x	; 9d c8 07
B20_06fc:		rts				; 60 


B20_06fd:		ldy $07e6, x	; bc e6 07
B20_0700:		lda $054e, y	; b9 4e 05
B20_0703:		bne B20_06ee ; d0 e9

B20_0705:		lda #$40		; a9 40
B20_0707:		sta $07ce, x	; 9d ce 07
B20_070a:		inc $07c8, x	; fe c8 07
B20_070d:		rts				; 60 


B20_070e:		dec $07ce, x	; de ce 07
B20_0711:		bne B20_06ee ; d0 db

B20_0713:		lda #$00		; a9 00
B20_0715:		sta $07c8, x	; 9d c8 07
B20_0718:		rts				; 60 


B20_0719:	.db $1f
B20_071a:	.db $87
B20_071b:	.db $5c
B20_071c:	.db $87
B20_071d:		asl $a587		; 0e 87 a5
B20_0720:		dex				; ca 
B20_0721:		cmp #$80		; c9 80
B20_0723:		bcc B20_0749 ; 90 24

B20_0725:		jsr func_14_0de7		; 20 e7 8d
B20_0728:		jsr $8d73		; 20 73 8d
B20_072b:		bne B20_0749 ; d0 1c

B20_072d:		ldy wEntityXFlipped.w		; ac a8 04
B20_0730:		lda $1f			; a5 1f
B20_0732:		and #$07		; 29 07
B20_0734:		clc				; 18 
B20_0735:		adc $875a, y	; 79 5a 87
B20_0738:		tay				; a8 
B20_0739:		clc				; 18 
B20_073a:		lda $874a, y	; b9 4a 87
B20_073d:		adc wEntityBaseX.w		; 6d 38 04
B20_0740:		sta $00			; 85 00
B20_0742:		lda $ca			; a5 ca
B20_0744:		sta $01			; 85 01
B20_0746:		jmp $86e4		; 4c e4 86


B20_0749:		rts				; 60 


B20_074a:		bvc B20_07ac ; 50 60

B20_074c:		cpy #$48		; c0 48
B20_074e:		jmp $5462		; 4c 62 54


B20_0751:		pha				; 48 
B20_0752:		;removed
	.db $b0 $a0

B20_0754:		tay				; a8 
B20_0755:		cpy #$40		; c0 40
B20_0757:		clv				; b8 
B20_0758:		bcs B20_071a ; b0 c0

B20_075a:		.db $00				; 00
B20_075b:		php				; 08 
B20_075c:		ldy $07e6, x	; bc e6 07
B20_075f:		lda $054e, y	; b9 4e 05
B20_0762:		bne B20_06ee ; d0 8a

B20_0764:		lda #$81		; a9 81
B20_0766:		jmp $8707		; 4c 07 87


B20_0769:	.db $6f
B20_076a:	.db $87
B20_076b:	.db $87
B20_076c:	.db $87
B20_076d:	.db $ef
B20_076e:		stx $20			; 86 20
B20_0770:		dec $a685, x	; de 85 a6
B20_0773:		jmp ($1aa5)		; 6c a5 1a


B20_0776:		adc wEntityBaseX.w, x	; 7d 38 04
B20_0779:		and #$03		; 29 03
B20_077b:		tay				; a8 
B20_077c:		lda $8783, y	; b9 83 87
B20_077f:		sta $07ce, x	; 9d ce 07
B20_0782:		rts				; 60 


B20_0783:		php				; 08 
B20_0784:		sec				; 38 
B20_0785:		clc				; 18 
B20_0786:		plp				; 28 
B20_0787:		dec $07ce, x	; de ce 07
B20_078a:		bne B20_07fc ; d0 70

B20_078c:		jsr func_14_0de7		; 20 e7 8d
B20_078f:		jsr $8383		; 20 83 83
B20_0792:		;removed
	.db $d0 $de

B20_0794:		txa				; 8a 
B20_0795:		adc $1a			; 65 1a
B20_0797:		adc wEntityBaseX.w		; 6d 38 04
B20_079a:		and #$03		; 29 03
B20_079c:		clc				; 18 
B20_079d:		ldy wEntityXFlipped.w		; ac a8 04
B20_07a0:		adc $87ba, y	; 79 ba 87
B20_07a3:		tay				; a8 
B20_07a4:		lda $87b2, y	; b9 b2 87
B20_07a7:		adc wEntityBaseX.w		; 6d 38 04
B20_07aa:		sta $00			; 85 00
B20_07ac:		jsr $8dde		; 20 de 8d
B20_07af:		jmp $86e7		; 4c e7 86


B20_07b2:		pla				; 68 
B20_07b3:		cli				; 58 
B20_07b4:		rts				; 60 


B20_07b5:		iny				; c8 
B20_07b6:		;removed
	.db $d0 $68

B20_07b8:		cpy #$d8		; c0 d8
B20_07ba:		.db $00				; 00
B20_07bb:	.db $04
B20_07bc:		cpy #$87		; c0 87
B20_07be:		dec $87			; c6 87
B20_07c0:		jsr $87cb		; 20 cb 87
B20_07c3:		jmp $85de		; 4c de 85


B20_07c6:		dec $07ce, x	; de ce 07
B20_07c9:		bne B20_07fc ; d0 31

B20_07cb:		jsr func_14_0de7		; 20 e7 8d
B20_07ce:		jsr $8d73		; 20 73 8d
B20_07d1:		bne B20_07ee ; d0 1b

B20_07d3:		txa				; 8a 
B20_07d4:		adc $1a			; 65 1a
B20_07d6:		adc wEntityBaseX.w		; 6d 38 04
B20_07d9:		and #$07		; 29 07
B20_07db:		clc				; 18 
B20_07dc:		ldy wEntityXFlipped.w		; ac a8 04
B20_07df:		adc $880d, y	; 79 0d 88
B20_07e2:		tay				; a8 
B20_07e3:		lda $87fd, y	; b9 fd 87
B20_07e6:		adc wEntityBaseX.w		; 6d 38 04
B20_07e9:		sta $00			; 85 00
B20_07eb:		jsr $8dde		; 20 de 8d
B20_07ee:		ldx $6c			; a6 6c
B20_07f0:		lda #$47		; a9 47
B20_07f2:		ldy $07f6		; ac f6 07
B20_07f5:		beq B20_07f9 ; f0 02

B20_07f7:		lda #$30		; a9 30
B20_07f9:		sta $07ce, x	; 9d ce 07
B20_07fc:		rts				; 60 


B20_07fd:		ldy #$50		; a0 50
B20_07ff:		rts				; 60 


B20_0800:		bcs B20_07aa ; b0 a8

B20_0802:		pha				; 48 
B20_0803:		cli				; 58 
B20_0804:		cli				; 58 
B20_0805:		ldy #$a8		; a0 a8
B20_0807:		;removed
	.db $b0 $60

B20_0809:		clv				; b8 
B20_080a:		pha				; 48 
B20_080b:		cli				; 58 
B20_080c:		tya				; 98 
B20_080d:		.db $00				; 00
B20_080e:		php				; 08 
B20_080f:	.db $13
B20_0810:		dey				; 88 
B20_0811:		bit $88			; 24 88
B20_0813:		inc $07c8, x	; fe c8 07
B20_0816:		jsr func_14_0de7		; 20 e7 8d
B20_0819:		jsr $83ae		; 20 ae 83
B20_081c:		bne B20_0821 ; d0 03

B20_081e:		jsr $883c		; 20 3c 88
B20_0821:		jmp $88b6		; 4c b6 88


B20_0824:		dec $07ce, x	; de ce 07
B20_0827:		beq B20_0816 ; f0 ed

B20_0829:		rts				; 60 


B20_082a:		rol $7288		; 2e 88 72
B20_082d:		dey				; 88 
B20_082e:		inc $07c8, x	; fe c8 07
B20_0831:		jsr $88b6		; 20 b6 88
B20_0834:		jsr func_14_0de7		; 20 e7 8d
B20_0837:		jsr $8d73		; 20 73 8d
B20_083a:		bne B20_0829 ; d0 ed

B20_083c:		jsr $89e5		; 20 e5 89
B20_083f:		lda $8882, y	; b9 82 88
B20_0842:		sta $00			; 85 00
B20_0844:		lda #$00		; a9 00
B20_0846:		ldy $6e			; a4 6e
B20_0848:		beq B20_0861 ; f0 17

B20_084a:		ldy $68			; a4 68
B20_084c:		bpl B20_0861 ; 10 13

B20_084e:		ldy $6e			; a4 6e
B20_0850:		bpl B20_0854 ; 10 02

B20_0852:		lda #$04		; a9 04
B20_0854:		clc				; 18 
B20_0855:		sta $0a			; 85 0a
B20_0857:		lda $1a			; a5 1a
B20_0859:		and #$03		; 29 03
B20_085b:		adc $0a			; 65 0a
B20_085d:		tay				; a8 
B20_085e:		lda $886a, y	; b9 6a 88
B20_0861:		clc				; 18 
B20_0862:		adc wEntityBaseY.w		; 6d 1c 04
B20_0865:		sta $01			; 85 01
B20_0867:		jmp $88c4		; 4c c4 88


B20_086a:		cpy #$b0		; c0 b0
B20_086c:		cpx #$d0		; e0 d0
B20_086e:		rti				; 40 


B20_086f:		bvc B20_0891 ; 50 20

B20_0871:		;removed
	.db $30 $de

B20_0873:		dec $f007		; ce 07 f0
B20_0876:		tsx				; ba 
B20_0877:		rts				; 60 


B20_0878:	.db $7c
B20_0879:		dey				; 88 
B20_087a:		sty $88			; 84 88
B20_087c:		jsr $8889		; 20 89 88
B20_087f:		jmp $85de		; 4c de 85


B20_0882:		php				; 08 
B20_0883:		sed				; f8 
B20_0884:		jsr $8e28		; 20 28 8e
B20_0887:		bne B20_08c3 ; d0 3a

B20_0889:		jsr func_14_0de7		; 20 e7 8d
B20_088c:		jsr func_14_0e54		; 20 54 8e
B20_088f:		bne B20_08b6 ; d0 25

B20_0891:		lda wCurrRoomGroup		; a5 32
B20_0893:		cmp #$0a		; c9 0a
B20_0895:		bne B20_08a4 ; d0 0d

B20_0897:		lda wEntityBaseY.w		; ad 1c 04
B20_089a:		cmp #$a0		; c9 a0
B20_089c:		bcc B20_08a4 ; 90 06

B20_089e:		jsr $8a44		; 20 44 8a
B20_08a1:		jmp $88ac		; 4c ac 88


B20_08a4:		jsr $89f4		; 20 f4 89
B20_08a7:		lda $8882, y	; b9 82 88
B20_08aa:		sta $00			; 85 00
B20_08ac:		lda wEntityBaseY.w		; ad 1c 04
B20_08af:		adc #$04		; 69 04
B20_08b1:		sta $01			; 85 01
B20_08b3:		jsr $88c4		; 20 c4 88
B20_08b6:		lda #$70		; a9 70
B20_08b8:		ldy $32			; a4 32
B20_08ba:		cpy #$0a		; c0 0a
B20_08bc:		bcs B20_08c0 ; b0 02

B20_08be:		lda #$a0		; a9 a0
B20_08c0:		jmp $8623		; 4c 23 86


B20_08c3:		rts				; 60 


B20_08c4:		lda $07f6		; ad f6 07
B20_08c7:		beq B20_08cd ; f0 04

B20_08c9:		lda #$6d		; a9 6d
B20_08cb:		sta $02			; 85 02
B20_08cd:		jmp $8dde		; 4c de 8d


B20_08d0:	.db $d4
B20_08d1:		dey				; 88 
B20_08d2:	.db $df
B20_08d3:		dey				; 88 
B20_08d4:		lda #$00		; a9 00
B20_08d6:		sta $07e6, x	; 9d e6 07
B20_08d9:		jsr $88e4		; 20 e4 88
B20_08dc:		jmp $85de		; 4c de 85


B20_08df:		dec $07ce, x	; de ce 07
B20_08e2:		bne B20_0877 ; d0 93

B20_08e4:		jsr func_14_0de7		; 20 e7 8d
B20_08e7:		jsr $83a0		; 20 a0 83
B20_08ea:		bne B20_0910 ; d0 24

B20_08ec:		lda $07e6, x	; bd e6 07
B20_08ef:		cmp #$08		; c9 08
B20_08f1:		bcc B20_08f8 ; 90 05

B20_08f3:		lda #$00		; a9 00
B20_08f5:		sta $07e6, x	; 9d e6 07
B20_08f8:		ldy $07e6, x	; bc e6 07
B20_08fb:		lda $8925, y	; b9 25 89
B20_08fe:		sta $01			; 85 01
B20_0900:		lda $891d, y	; b9 1d 89
B20_0903:		sta $00			; 85 00
B20_0905:		inc $07e6, x	; fe e6 07
B20_0908:		jsr $892d		; 20 2d 89
B20_090b:		bne B20_0910 ; d0 03

B20_090d:		jsr $8dde		; 20 de 8d
B20_0910:		lda #$80		; a9 80
B20_0912:		ldy $32			; a4 32
B20_0914:		cpy #$0d		; c0 0d
B20_0916:		beq B20_091a ; f0 02

B20_0918:		lda #$ff		; a9 ff
B20_091a:		jmp $8623		; 4c 23 86


B20_091d:		sed				; f8 
B20_091e:		sed				; f8 
B20_091f:		php				; 08 
B20_0920:		sed				; f8 
B20_0921:		sed				; f8 
B20_0922:		php				; 08 
B20_0923:		sed				; f8 
B20_0924:		php				; 08 
B20_0925:		rti				; 40 


B20_0926:		rts				; 60 


B20_0927:		rti				; 40 


B20_0928:		rts				; 60 


B20_0929:		rts				; 60 


B20_092a:		rti				; 40 


B20_092b:		rti				; 40 


B20_092c:		rts				; 60 


B20_092d:		lda wEntityBaseX.w		; ad 38 04
B20_0930:		cmp #$c0		; c9 c0
B20_0932:		bcs B20_093b ; b0 07

B20_0934:		cmp #$40		; c9 40
B20_0936:		bcc B20_0942 ; 90 0a

B20_0938:		lda #$00		; a9 00
B20_093a:		rts				; 60 


B20_093b:		lda $00			; a5 00
B20_093d:		bpl B20_0938 ; 10 f9

B20_093f:		lda #$01		; a9 01
B20_0941:		rts				; 60 


B20_0942:		lda $00			; a5 00
B20_0944:		bmi B20_0938 ; 30 f2

B20_0946:		bpl B20_093f ; 10 f7

B20_0948:		jmp $5289		; 4c 89 52


B20_094b:	.db $89
B20_094c:		jsr $8957		; 20 57 89
B20_094f:		jmp $85de		; 4c de 85


B20_0952:		dec $07ce, x	; de ce 07
B20_0955:		bne B20_096d ; d0 16

B20_0957:		lda #$80		; a9 80
B20_0959:		sta $07ce, x	; 9d ce 07
B20_095c:		jsr func_14_0de7		; 20 e7 8d
B20_095f:		jsr $8d7b		; 20 7b 8d
B20_0962:		bne B20_096d ; d0 09

B20_0964:		ldy wEntityXFlipped.w		; ac a8 04
B20_0967:		lda $896e, y	; b9 6e 89
B20_096a:		jmp $89a9		; 4c a9 89


B20_096d:		rts				; 60 


B20_096e:		sed				; f8 
B20_096f:		php				; 08 
B20_0970:	.db $74
B20_0971:	.db $89
B20_0972:	.db $7a
B20_0973:	.db $89
B20_0974:		jsr $897f		; 20 7f 89
B20_0977:		jmp $85de		; 4c de 85


B20_097a:		jsr $8e28		; 20 28 8e
B20_097d:		bne B20_09d9 ; d0 5a

B20_097f:		lda #$c0		; a9 c0
B20_0981:		sta $07ce, x	; 9d ce 07
B20_0984:		jsr func_14_0de7		; 20 e7 8d
B20_0987:		jsr retZifPendulumRoomBeforeDracula		; 20 8d 84
B20_098a:		bne B20_0992 ; d0 06

B20_098c:		jsr $8e89		; 20 89 8e
B20_098f:		beq B20_09a3 ; f0 12

B20_0991:		rts				; 60 


B20_0992:		lda wCurrRoomGroup		; a5 32
B20_0994:		cmp #$01		; c9 01
B20_0996:		bne B20_099e ; d0 06

B20_0998:		jsr $8ec3		; 20 c3 8e
B20_099b:		beq B20_09a3 ; f0 06

B20_099d:		rts				; 60 


B20_099e:		jsr $8d7b		; 20 7b 8d
B20_09a1:		bne B20_09d9 ; d0 36

B20_09a3:		jsr $89b7		; 20 b7 89
B20_09a6:		lda $8882, y	; b9 82 88
B20_09a9:		sta $00			; 85 00
B20_09ab:		lda wEntityBaseY.w		; ad 1c 04
B20_09ae:		sta $01			; 85 01
B20_09b0:		jmp $8dde		; 4c de 8d


B20_09b3:		lda #$01		; a9 01
B20_09b5:		bne B20_09b9 ; d0 02

B20_09b7:		lda #$00		; a9 00
B20_09b9:		sta $0f			; 85 0f
B20_09bb:		ldy #$01		; a0 01
B20_09bd:		lda wEntityBaseX.w		; ad 38 04
B20_09c0:		cmp #$50		; c9 50
B20_09c2:		bcc B20_09d9 ; 90 15

B20_09c4:		dey				; 88 
B20_09c5:		cmp #$b0		; c9 b0
B20_09c7:		bcs B20_09d9 ; b0 10

B20_09c9:		lda $0f			; a5 0f
B20_09cb:		bne B20_09da ; d0 0d

B20_09cd:		lda wEntityBaseY.w		; ad 1c 04
B20_09d0:		lsr a			; 4a
B20_09d1:		lsr a			; 4a
B20_09d2:		lsr a			; 4a
B20_09d3:		lsr a			; 4a
B20_09d4:		adc $1f			; 65 1f
B20_09d6:		and #$01		; 29 01
B20_09d8:		tay				; a8 
B20_09d9:		rts				; 60 


B20_09da:		ldy #$01		; a0 01
B20_09dc:		lda $1a			; a5 1a
B20_09de:		and #$1f		; 29 1f
B20_09e0:		bne B20_09d9 ; d0 f7

B20_09e2:		ldy #$00		; a0 00
B20_09e4:		rts				; 60 


B20_09e5:		lda #$00		; a9 00
B20_09e7:		sta $0f			; 85 0f
B20_09e9:		ldy #$01		; a0 01
B20_09eb:		lda wEntityBaseX.w		; ad 38 04
B20_09ee:		cmp #$60		; c9 60
B20_09f0:		bcc B20_09d9 ; 90 e7

B20_09f2:		bcs B20_09c4 ; b0 d0

B20_09f4:		ldy #$01		; a0 01
B20_09f6:		lda wEntityBaseX.w		; ad 38 04
B20_09f9:		cmp #$40		; c9 40
B20_09fb:		bcc B20_09d9 ; 90 dc

B20_09fd:		dey				; 88 
B20_09fe:		cmp #$c0		; c9 c0
B20_0a00:		bcs B20_09d9 ; b0 d7

B20_0a02:		lda wEntityXFlipped.w		; ad a8 04
B20_0a05:		eor #$01		; 49 01
B20_0a07:		tay				; a8 
B20_0a08:		rts				; 60 


B20_0a09:	.db $17
B20_0a0a:		txa				; 8a 
B20_0a0b:		ora $de8a		; 0d 8a de
B20_0a0e:		dec $f007		; ce 07 f0
B20_0a11:		;removed
	.db $10 $60

B20_0a13:	.db $17
B20_0a14:		txa				; 8a 
B20_0a15:		ora $208a, x	; 1d 8a 20
B20_0a18:	.db $22
B20_0a19:		txa				; 8a 
B20_0a1a:		jmp $85de		; 4c de 85


B20_0a1d:		jsr $8e28		; 20 28 8e
B20_0a20:		;removed
	.db $d0 $f0

B20_0a22:		lda #$90		; a9 90
B20_0a24:		sta $07ce, x	; 9d ce 07
B20_0a27:		jsr func_14_0de7		; 20 e7 8d
B20_0a2a:		jsr $8d7b		; 20 7b 8d
B20_0a2d:		bne B20_0aa1 ; d0 72

B20_0a2f:		jsr $8a44		; 20 44 8a
B20_0a32:		lda wEntityBaseY.w		; ad 1c 04
B20_0a35:		cmp #$20		; c9 20
B20_0a37:		bcc B20_0aa1 ; 90 68

B20_0a39:		ldy $68			; a4 68
B20_0a3b:		bpl B20_0a3f ; 10 02

B20_0a3d:		sbc #$18		; e9 18
B20_0a3f:		sta $01			; 85 01
B20_0a41:		jmp $89b0		; 4c b0 89


B20_0a44:		ldy #$00		; a0 00
B20_0a46:		lda wEntityBaseX.w		; ad 38 04
B20_0a49:		cmp #$80		; c9 80
B20_0a4b:		bcs B20_0a4e ; b0 01

B20_0a4d:		iny				; c8 
B20_0a4e:		lda $8882, y	; b9 82 88
B20_0a51:		sta $00			; 85 00
B20_0a53:		rts				; 60 


B20_0a54:		dec $07ce, x	; de ce 07
B20_0a57:		bne B20_0a5e ; d0 05

B20_0a59:		lda #$00		; a9 00
B20_0a5b:		sta $07c8, x	; 9d c8 07
B20_0a5e:		rts				; 60 


B20_0a5f:	.db $63
B20_0a60:		txa				; 8a 
B20_0a61:	.db $54
B20_0a62:		txa				; 8a 
B20_0a63:		lda $07e0, x	; bd e0 07
B20_0a66:		bne B20_0aa1 ; d0 39

B20_0a68:		jsr $8e1a		; 20 1a 8e
B20_0a6b:		cmp #$20		; c9 20
B20_0a6d:		bcs B20_0aa1 ; b0 32

B20_0a6f:		lda #$02		; a9 02
B20_0a71:		sta $07e6, x	; 9d e6 07
B20_0a74:		jsr $85de		; 20 de 85
B20_0a77:		jsr func_14_0de7		; 20 e7 8d
B20_0a7a:		jsr func_14_0e54		; 20 54 8e
B20_0a7d:		bne B20_0a95 ; d0 16

B20_0a7f:		jsr $8dde		; 20 de 8d
B20_0a82:		stx $09			; 86 09
B20_0a84:		ldx $6c			; a6 6c
B20_0a86:		clc				; 18 
B20_0a87:		ldy $07e6, x	; bc e6 07
B20_0a8a:		lda $8aa2, y	; b9 a2 8a
B20_0a8d:		adc $07da, x	; 7d da 07
B20_0a90:		ldx $09			; a6 09
B20_0a92:		sta wEntityBaseX.w, x	; 9d 38 04
B20_0a95:		ldx $6c			; a6 6c
B20_0a97:		dec $07e6, x	; de e6 07
B20_0a9a:		bne B20_0a77 ; d0 db

B20_0a9c:		lda #$28		; a9 28
B20_0a9e:		sta $07ce, x	; 9d ce 07
B20_0aa1:		rts				; 60 


B20_0aa2:		.db $00				; 00
B20_0aa3:		sec				; 38 
B20_0aa4:		iny				; c8 
B20_0aa5:		lda $8a, x		; b5 8a
B20_0aa7:	.db $c2
B20_0aa8:		txa				; 8a 
B20_0aa9:	.db $d7
B20_0aaa:		txa				; 8a 
B20_0aab:	.db $57
B20_0aac:		sty $8ab5		; 8c b5 8a
B20_0aaf:		lda $d78a, x	; bd 8a d7
B20_0ab2:		txa				; 8a 
B20_0ab3:	.db $57
B20_0ab4:		sty $e0bd		; 8c bd e0
B20_0ab7:	.db $07
B20_0ab8:		bne B20_0ad7 ; d0 1d

B20_0aba:		jmp $85de		; 4c de 85


B20_0abd:		dec $07ce, x	; de ce 07
B20_0ac0:		bne B20_0ad7 ; d0 15

B20_0ac2:		jsr func_14_0de7		; 20 e7 8d
B20_0ac5:		lda $07e0, x	; bd e0 07
B20_0ac8:		bne B20_0ad2 ; d0 08

B20_0aca:		jsr func_14_0e54		; 20 54 8e
B20_0acd:		bne B20_0ad2 ; d0 03

B20_0acf:		jsr $8bbe		; 20 be 8b
B20_0ad2:		lda #$80		; a9 80
B20_0ad4:		sta $07ce, x	; 9d ce 07
B20_0ad7:		rts				; 60 


B20_0ad8:		dec $ee8a, x	; de 8a ee
B20_0adb:		txa				; 8a 
B20_0adc:		sbc #$8a		; e9 8a
B20_0ade:		jsr func_14_0de7		; 20 e7 8d
B20_0ae1:		jsr $8d8b		; 20 8b 8d
B20_0ae4:		bne B20_0ad7 ; d0 f1

B20_0ae6:		jmp $8bbe		; 4c be 8b


B20_0ae9:		lda #$00		; a9 00
B20_0aeb:		sta $07c8, x	; 9d c8 07
B20_0aee:		rts				; 60 


B20_0aef:		sbc $8a, x		; f5 8a
B20_0af1:		ora $8b, x		; 15 8b
B20_0af3:	.db $57
B20_0af4:		sty $e0bd		; 8c bd e0
B20_0af7:	.db $07
B20_0af8:		bne B20_0b15 ; d0 1b

B20_0afa:		jsr func_14_0de7		; 20 e7 8d
B20_0afd:		lda $07e6, x	; bd e6 07
B20_0b00:		sta $04			; 85 04
B20_0b02:		jsr $feb9		; 20 b9 fe
B20_0b05:		bne B20_0b15 ; d0 0e

B20_0b07:		jsr $8dde		; 20 de 8d
B20_0b0a:		jsr $8bd5		; 20 d5 8b
B20_0b0d:		lda $04			; a5 04
B20_0b0f:		sta $0633, x	; 9d 33 06
B20_0b12:		jmp $85de		; 4c de 85


B20_0b15:		rts				; 60 


B20_0b16:	.db $1c
B20_0b17:	.db $8b
B20_0b18:		sed				; f8 
B20_0b19:	.db $8b
B20_0b1a:	.db $57
B20_0b1b:		sty $e0bd		; 8c bd e0
B20_0b1e:	.db $07
B20_0b1f:		bne B20_0b60 ; d0 3f

B20_0b21:		jsr func_14_0de7		; 20 e7 8d
B20_0b24:		jsr $83ae		; 20 ae 83
B20_0b27:		bne B20_0b60 ; d0 37

B20_0b29:		jmp $8bbe		; 4c be 8b


B20_0b2c:	.db $32
B20_0b2d:	.db $8b
B20_0b2e:		sed				; f8 
B20_0b2f:	.db $8b
B20_0b30:	.db $57
B20_0b31:		sty $e0bd		; 8c bd e0
B20_0b34:	.db $07
B20_0b35:		bne B20_0b60 ; d0 29

B20_0b37:		jsr $8e9c		; 20 9c 8e
B20_0b3a:		bne B20_0b4a ; d0 0e

B20_0b3c:		jsr func_14_0de7		; 20 e7 8d
B20_0b3f:		jsr $8e50		; 20 50 8e
B20_0b42:		bne B20_0b4a ; d0 06

B20_0b44:		jsr func_14_0dff		; 20 ff 8d
B20_0b47:		jmp $8bc1		; 4c c1 8b


B20_0b4a:		jmp $8bcd		; 4c cd 8b


B20_0b4d:	.db $53
B20_0b4e:	.db $8b
B20_0b4f:		sed				; f8 
B20_0b50:	.db $8b
B20_0b51:	.db $57
B20_0b52:		sty $e0bd		; 8c bd e0
B20_0b55:	.db $07
B20_0b56:		bne B20_0b60 ; d0 08

B20_0b58:		jsr func_14_0de7		; 20 e7 8d
B20_0b5b:		jsr $83ae		; 20 ae 83
B20_0b5e:		beq B20_0bbe ; f0 5e

B20_0b60:		rts				; 60 


B20_0b61:	.db $67
B20_0b62:	.db $8b
B20_0b63:		sed				; f8 
B20_0b64:	.db $8b
B20_0b65:	.db $57
B20_0b66:		sty $e0bd		; 8c bd e0
B20_0b69:	.db $07
B20_0b6a:		bne B20_0baa ; d0 3e

B20_0b6c:		jsr func_14_0de7		; 20 e7 8d
B20_0b6f:		jsr func_14_0e54		; 20 54 8e
B20_0b72:		bne B20_0baa ; d0 36

B20_0b74:		lda $07f6		; ad f6 07
B20_0b77:		beq B20_0bbe ; f0 45

B20_0b79:		lda $03			; a5 03
B20_0b7b:		cmp #$63		; c9 63
B20_0b7d:		bne B20_0bbe ; d0 3f

B20_0b7f:		lda wCurrRoomGroup		; a5 32
B20_0b81:		cmp #$0c		; c9 0c
B20_0b83:		beq B20_0bbe ; f0 39

B20_0b85:		cmp #$01		; c9 01
B20_0b87:		bne B20_0b8f ; d0 06

B20_0b89:		lda wCurrRoomIdx			; a5 34
B20_0b8b:		cmp #$01		; c9 01
B20_0b8d:		beq B20_0bbe ; f0 2f

B20_0b8f:		lda #$71		; a9 71
B20_0b91:		sta $02			; 85 02
B20_0b93:		lda #$67		; a9 67
B20_0b95:		sta $03			; 85 03
B20_0b97:		jsr func_14_0dff		; 20 ff 8d
B20_0b9a:		lda #$10		; a9 10
B20_0b9c:		sta $067b, x	; 9d 7b 06
B20_0b9f:		lda #$33		; a9 33
B20_0ba1:		sta $0657, x	; 9d 57 06
B20_0ba4:		jsr $8bd5		; 20 d5 8b
B20_0ba7:		jmp $85de		; 4c de 85


B20_0baa:		rts				; 60 


B20_0bab:		lda ($8b), y	; b1 8b
B20_0bad:		sed				; f8 
B20_0bae:	.db $8b
B20_0baf:	.db $57
B20_0bb0:		sty $e0bd		; 8c bd e0
B20_0bb3:	.db $07
B20_0bb4:		bne B20_0bf8 ; d0 42

B20_0bb6:		jsr func_14_0de7		; 20 e7 8d
B20_0bb9:		jsr func_14_0e54		; 20 54 8e
B20_0bbc:		bne B20_0bcd ; d0 0f

B20_0bbe:		jsr func_14_0dff		; 20 ff 8d
B20_0bc1:		jsr $9332		; 20 32 93
B20_0bc4:		jsr $e7ec		; 20 ec e7
B20_0bc7:		jsr $8bd5		; 20 d5 8b
B20_0bca:		jmp $85de		; 4c de 85


B20_0bcd:		ldx $6c			; a6 6c
B20_0bcf:		lda #$02		; a9 02
B20_0bd1:		sta $07c8, x	; 9d c8 07
B20_0bd4:		rts				; 60 


B20_0bd5:		lda $0470, x	; bd 70 04
B20_0bd8:		ora #$04		; 09 04
B20_0bda:		sta $0470, x	; 9d 70 04
B20_0bdd:		lda $6c			; a5 6c
B20_0bdf:		sta $0645, x	; 9d 45 06
B20_0be2:		txa				; 8a 
B20_0be3:		pha				; 48 
B20_0be4:		ldx $6c			; a6 6c
B20_0be6:		asl a			; 0a
B20_0be7:		asl a			; 0a
B20_0be8:		asl a			; 0a
B20_0be9:		asl a			; 0a
B20_0bea:		sta $06			; 85 06
B20_0bec:		lda $07c8, x	; bd c8 07
B20_0bef:		and #$0f		; 29 0f
B20_0bf1:		ora $06			; 05 06
B20_0bf3:		sta $07c8, x	; 9d c8 07
B20_0bf6:		pla				; 68 
B20_0bf7:		tax				; aa 
B20_0bf8:		rts				; 60 


B20_0bf9:	.db $ff
B20_0bfa:	.db $8b
B20_0bfb:		sed				; f8 
B20_0bfc:	.db $8b
B20_0bfd:	.db $57
B20_0bfe:		sty $e720		; 8c 20 e7
B20_0c01:		sta $e0bd		; 8d bd e0
B20_0c04:	.db $07
B20_0c05:		bne B20_0bf8 ; d0 f1

B20_0c07:		jsr func_14_0e54		; 20 54 8e
B20_0c0a:		bne B20_0bf8 ; d0 ec

B20_0c0c:		jmp $8bbe		; 4c be 8b


B20_0c0f:		ora $8c, x		; 15 8c
B20_0c11:		and $8c, x		; 35 8c
B20_0c13:		jmp $208c		; 4c 8c 20


B20_0c16:	.db $e7
B20_0c17:		sta $e0bd		; 8d bd e0
B20_0c1a:	.db $07
B20_0c1b:		bne B20_0c64 ; d0 47

B20_0c1d:		jsr func_14_0e54		; 20 54 8e
B20_0c20:		bne B20_0c64 ; d0 42

B20_0c22:		jsr func_14_0dff		; 20 ff 8d
B20_0c25:		jsr $9332		; 20 32 93
B20_0c28:		jsr $e7ec		; 20 ec e7
B20_0c2b:		txa				; 8a 
B20_0c2c:		ldx $6c			; a6 6c
B20_0c2e:		sta $07e6, x	; 9d e6 07
B20_0c31:		inc $07c8, x	; fe c8 07
B20_0c34:		rts				; 60 


B20_0c35:		lda $07e6, x	; bd e6 07
B20_0c38:		tax				; aa 
B20_0c39:		lda $054e, x	; bd 4e 05
B20_0c3c:		bne B20_0c49 ; d0 0b

B20_0c3e:		ldx $6c			; a6 6c
B20_0c40:		inc $07c8, x	; fe c8 07
B20_0c43:		lda #$80		; a9 80
B20_0c45:		sta $07ce, x	; 9d ce 07
B20_0c48:		rts				; 60 


B20_0c49:		ldx $6c			; a6 6c
B20_0c4b:		rts				; 60 


B20_0c4c:		dec $07ce, x	; de ce 07
B20_0c4f:		bne B20_0c4b ; d0 fa

B20_0c51:		lda #$00		; a9 00
B20_0c53:		sta $07c8, x	; 9d c8 07
B20_0c56:		rts				; 60 


B20_0c57:		lda $07e0, x	; bd e0 07
B20_0c5a:		beq B20_0bf8 ; f0 9c

B20_0c5c:		lda $07c8, x	; bd c8 07
B20_0c5f:		and #$f0		; 29 f0
B20_0c61:		sta $07c8, x	; 9d c8 07
B20_0c64:		rts				; 60 


B20_0c65:	.db $6b
B20_0c66:		sty $8bf8		; 8c f8 8b
B20_0c69:	.db $57
B20_0c6a:		sty $e720		; 8c 20 e7
B20_0c6d:		sta $8320		; 8d 20 83
B20_0c70:		sta $85d0		; 8d d0 85
B20_0c73:		jmp $8bbe		; 4c be 8b


B20_0c76:	.db $7c
B20_0c77:		sty $8bf8		; 8c f8 8b
B20_0c7a:	.db $57
B20_0c7b:		sty $e720		; 8c 20 e7
B20_0c7e:		sta $cebd		; 8d bd ce
B20_0c81:	.db $07
B20_0c82:		sta $04			; 85 04
B20_0c84:		lda $07e0, x	; bd e0 07
B20_0c87:		bne B20_0c64 ; d0 db

B20_0c89:		jsr func_14_0e54		; 20 54 8e
B20_0c8c:		bne B20_0c64 ; d0 d6

B20_0c8e:		jsr $8dde		; 20 de 8d
B20_0c91:		jsr $8bd5		; 20 d5 8b
B20_0c94:		lda $04			; a5 04
B20_0c96:		sta $0633, x	; 9d 33 06
B20_0c99:		jmp $85de		; 4c de 85


B20_0c9c:		ldx #$8c		; a2 8c
B20_0c9e:		sed				; f8 
B20_0c9f:	.db $8b
B20_0ca0:	.db $57
B20_0ca1:		sty $e720		; 8c 20 e7
B20_0ca4:		sta $cebd		; 8d bd ce
B20_0ca7:	.db $07
B20_0ca8:		sta $04			; 85 04
B20_0caa:		jsr $feb9		; 20 b9 fe
B20_0cad:		bne B20_0cd2 ; d0 23

B20_0caf:		jmp $8c8e		; 4c 8e 8c


B20_0cb2:		clv				; b8 
B20_0cb3:		sty $8bf8		; 8c f8 8b
B20_0cb6:	.db $57
B20_0cb7:		sty $e720		; 8c 20 e7
B20_0cba:		sta $e0bd		; 8d bd e0
B20_0cbd:	.db $07
B20_0cbe:		bne B20_0cd2 ; d0 12

B20_0cc0:		jsr $83a0		; 20 a0 83
B20_0cc3:		bne B20_0ccb ; d0 06

B20_0cc5:		jsr $8dde		; 20 de 8d
B20_0cc8:		jmp $85de		; 4c de 85


B20_0ccb:		ldx $6c			; a6 6c
B20_0ccd:		lda #$02		; a9 02
B20_0ccf:		sta $07c8, x	; 9d c8 07
B20_0cd2:		rts				; 60 


B20_0cd3:		cmp $618c, y	; d9 8c 61
B20_0cd6:		sta $8c57		; 8d 57 8c
B20_0cd9:		lda $07e0, x	; bd e0 07
B20_0cdc:		bne B20_0cd2 ; d0 f4

B20_0cde:		lda $07e6, x	; bd e6 07
B20_0ce1:		sta $17			; 85 17
B20_0ce3:		jsr func_14_0de7		; 20 e7 8d
B20_0ce6:		ldx #$01		; a2 01
B20_0ce8:		jsr func_1f_1ed7		; 20 d7 fe
B20_0ceb:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_0cee:		lda $01			; a5 01
B20_0cf0:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_0cf3:		sec				; 38 
B20_0cf4:		lda $00			; a5 00
B20_0cf6:		sta wEntityBaseX.w, x	; 9d 38 04
B20_0cf9:		lda $03			; a5 03
B20_0cfb:		sta $054e, x	; 9d 4e 05
B20_0cfe:		lda #$2e		; a9 2e
B20_0d00:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_0d03:		jsr func_1f_1ec8		; 20 c8 fe
B20_0d06:		lda #$60		; a9 60
B20_0d08:		sta $0470, x	; 9d 70 04
B20_0d0b:		lda $17			; a5 17
B20_0d0d:		sta wEntityXFlipped.w, x	; 9d a8 04
B20_0d10:		jsr $9332		; 20 32 93
B20_0d13:		jsr $e7ec		; 20 ec e7
B20_0d16:		ldx #$08		; a2 08
B20_0d18:		jsr func_1f_1ed7		; 20 d7 fe
B20_0d1b:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_0d1e:		lda $01			; a5 01
B20_0d20:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_0d23:		clc				; 18 
B20_0d24:		lda $00			; a5 00
B20_0d26:		ldy $17			; a4 17
B20_0d28:		adc $8d62, y	; 79 62 8d
B20_0d2b:		sta wEntityBaseX.w, x	; 9d 38 04
B20_0d2e:		lda #$00		; a9 00
B20_0d30:		adc $8d64, y	; 79 64 8d
B20_0d33:		ora #$60		; 09 60
B20_0d35:		and #$61		; 29 61
B20_0d37:		sta $0470, x	; 9d 70 04
B20_0d3a:		lda $03			; a5 03
B20_0d3c:		sta $054e, x	; 9d 4e 05
B20_0d3f:		lda #$2c		; a9 2c
B20_0d41:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_0d44:		lda $17			; a5 17
B20_0d46:		sta wEntityXFlipped.w, x	; 9d a8 04
B20_0d49:		jsr $9332		; 20 32 93
B20_0d4c:		jsr $e7ec		; 20 ec e7
B20_0d4f:		lda $6c			; a5 6c
B20_0d51:		sta $0645, x	; 9d 45 06
B20_0d54:		txa				; 8a 
B20_0d55:		tay				; a8 
B20_0d56:		ldx $6c			; a6 6c
B20_0d58:		lda $07e6, x	; bd e6 07
B20_0d5b:		sta $0633, y	; 99 33 06
B20_0d5e:		jmp $85de		; 4c de 85


B20_0d61:		rts				; 60 


B20_0d62:		php				; 08 
B20_0d63:		sed				; f8 
B20_0d64:		.db $00				; 00
B20_0d65:	.db $ff
B20_0d66:		lda wCurrScrollXWithinRoom			; a5 56
B20_0d68:		bne B20_0d72 ; d0 08

B20_0d6a:		lda $07e0, x	; bd e0 07
B20_0d6d:		bne B20_0d72 ; d0 03

B20_0d6f:		jmp $feb9		; 4c b9 fe


B20_0d72:		rts				; 60 


B20_0d73:		lda $07e0, x	; bd e0 07
B20_0d76:		bne B20_0d72 ; d0 fa

B20_0d78:		jmp $8383		; 4c 83 83


B20_0d7b:		lda $07e0, x	; bd e0 07
B20_0d7e:		bne B20_0d72 ; d0 f2

B20_0d80:		jmp $83a0		; 4c a0 83


B20_0d83:		lda $07e0, x	; bd e0 07
B20_0d86:		bne B20_0d72 ; d0 ea

B20_0d88:		jmp $8392		; 4c 92 83


B20_0d8b:		lda $07e0, x	; bd e0 07
B20_0d8e:		bne B20_0d72 ; d0 e2

B20_0d90:		jmp $feb9		; 4c b9 fe


B20_0d93:		sta $c48d, y	; 99 8d c4
B20_0d96:		sta $8c57		; 8d 57 8c
B20_0d99:		lda $07e0, x	; bd e0 07
B20_0d9c:		bne B20_0dc4 ; d0 26

B20_0d9e:		jsr func_14_0de7		; 20 e7 8d
B20_0da1:		jsr $feb9		; 20 b9 fe
B20_0da4:		lda #$08		; a9 08
B20_0da6:		sta $0657, x	; 9d 57 06
B20_0da9:		jsr func_14_0dff		; 20 ff 8d
B20_0dac:		lda #$08		; a9 08
B20_0dae:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_0db1:		lda #$00		; a9 00
B20_0db3:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B20_0db6:		lda $0470, x	; bd 70 04
B20_0db9:		ora #$a8		; 09 a8
B20_0dbb:		sta $0470, x	; 9d 70 04
B20_0dbe:		jsr $8bd5		; 20 d5 8b
B20_0dc1:		jmp $85de		; 4c de 85


B20_0dc4:		rts				; 60 


B20_0dc5:	.db $cb
B20_0dc6:		sta $8dc4		; 8d c4 8d
B20_0dc9:	.db $57
B20_0dca:		sty $e0bd		; 8c bd e0
B20_0dcd:	.db $07
B20_0dce:		bne B20_0dc4 ; d0 f4

B20_0dd0:		jsr func_14_0de7		; 20 e7 8d
B20_0dd3:		jsr $feb9		; 20 b9 fe
B20_0dd6:		lda #$0e		; a9 0e
B20_0dd8:		sta $0657, x	; 9d 57 06
B20_0ddb:		jmp $8da9		; 4c a9 8d


B20_0dde:		jsr func_14_0dff		; 20 ff 8d
B20_0de1:		jsr $9332		; 20 32 93
B20_0de4:		jmp $e7ec		; 4c ec e7


func_14_0de7:
B20_0de7:		lda $07da, x	; bd da 07
B20_0dea:		sta $00			; 85 00
B20_0dec:		lda $07d4, x	; bd d4 07
B20_0def:		sta $01			; 85 01
B20_0df1:		ldy $07c2, x	; bc c2 07
; 02 becomes entity AI
B20_0df4:		lda data_14_1282.w, y	; b9 82 92
B20_0df7:		sta $02			; 85 02
B20_0df9:		lda data_14_12da.w, y	; b9 da 92
B20_0dfc:		sta $03			; 85 03
B20_0dfe:		rts				; 60 


func_14_0dff:
B20_0dff:		jsr func_1f_1ed7		; 20 d7 fe
B20_0e02:		sta wOamSpecIdx.w, x	; 9d 00 04
B20_0e05:		lda $00			; a5 00
B20_0e07:		sta wEntityBaseX.w, x	; 9d 38 04
B20_0e0a:		lda $01			; a5 01
B20_0e0c:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_0e0f:		lda $02			; a5 02
B20_0e11:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_0e14:		lda $03			; a5 03
B20_0e16:		sta $054e, x	; 9d 4e 05
B20_0e19:		rts				; 60 


B20_0e1a:		sec				; 38 
B20_0e1b:		lda $07da, x	; bd da 07
B20_0e1e:		sbc wEntityBaseX.w		; ed38 04
B20_0e21:		bcs B20_0e27 ; b0 04

B20_0e23:		eor #$ff		; 49 ff
B20_0e25:		adc #$01		; 69 01
B20_0e27:		rts				; 60 


B20_0e28:		ldy $07f6		; ac f6 07
B20_0e2b:		beq B20_0e46 ; f0 19

B20_0e2d:		lda wCurrRoomGroup		; a5 32
B20_0e2f:		cmp #$04		; c9 04
B20_0e31:		beq B20_0e3f ; f0 0c

B20_0e33:		cmp #$0d		; c9 0d
B20_0e35:		bne B20_0e4c ; d0 15

B20_0e37:		lda wCurrRoomSection			; a5 33
B20_0e39:		cmp #$01		; c9 01
B20_0e3b:		bne B20_0e4c ; d0 0f

B20_0e3d:		beq B20_0e46 ; f0 07

B20_0e3f:		lda $07c2, x	; bd c2 07
B20_0e42:		cmp #$0c		; c9 0c
B20_0e44:		bne B20_0e4c ; d0 06

B20_0e46:		lda $1a			; a5 1a
B20_0e48:		and #$01		; 29 01
B20_0e4a:		bne B20_0e4f ; d0 03

B20_0e4c:		dec $07ce, x	; de ce 07
B20_0e4f:		rts				; 60 


B20_0e50:		lda #$02		; a9 02
B20_0e52:		bne B20_0e56 ; d0 02

func_14_0e54:
B20_0e54:		lda #$03		; a9 03
B20_0e56:		sta $0d			; 85 0d
B20_0e58:		lda #$00		; a9 00
B20_0e5a:		sta $0e			; 85 0e
B20_0e5c:		lda #$01		; a9 01
B20_0e5e:		sta $0c			; 85 0c
B20_0e60:		lda #$09		; a9 09
B20_0e62:		sta $0b			; 85 0b
B20_0e64:		ldx $0c			; a6 0c
B20_0e66:		lda $054e, x	; bd 4e 05
B20_0e69:		cmp $03			; c5 03
B20_0e6b:		bne B20_0e6f ; d0 02

B20_0e6d:		inc $0e			; e6 0e
B20_0e6f:		inx				; e8 
B20_0e70:		cpx $0b			; e4 0b
B20_0e72:		bcc B20_0e66 ; 90 f2

B20_0e74:		lda $0e			; a5 0e
B20_0e76:		cmp $0d			; c5 0d
B20_0e78:		bcs B20_0e86 ; b0 0c

B20_0e7a:		lda $0b			; a5 0b
B20_0e7c:		cmp #$13		; c9 13
B20_0e7e:		beq B20_0e83 ; f0 03

B20_0e80:		jmp $feb9		; 4c b9 fe


B20_0e83:		jmp $834d		; 4c 4d 83


B20_0e86:		lda #$01		; a9 01
B20_0e88:		rts				; 60 


B20_0e89:		lda #$0d		; a9 0d
B20_0e8b:		sta $0c			; 85 0c
B20_0e8d:		lda #$13		; a9 13
B20_0e8f:		sta $0b			; 85 0b
B20_0e91:		lda #$02		; a9 02
B20_0e93:		sta $0d			; 85 0d
B20_0e95:		lda #$00		; a9 00
B20_0e97:		sta $0e			; 85 0e
B20_0e99:		jmp $8e64		; 4c 64 8e


B20_0e9c:		ldy $07c2, x	; bc c2 07
B20_0e9f:		lda $92da, y	; b9 da 92
B20_0ea2:		sta $0a			; 85 0a
B20_0ea4:		ldx #$01		; a2 01
B20_0ea6:		lda $054e, x	; bd 4e 05
B20_0ea9:		cmp $0a			; c5 0a
B20_0eab:		bne B20_0eb4 ; d0 07

B20_0ead:		lda $6c			; a5 6c
B20_0eaf:		cmp $0645, x	; dd 45 06
B20_0eb2:		beq B20_0ebe ; f0 0a

B20_0eb4:		inx				; e8 
B20_0eb5:		cpx #$0d		; e0 0d
B20_0eb7:		bcc B20_0ea6 ; 90 ed

B20_0eb9:		ldx $6c			; a6 6c
B20_0ebb:		lda #$00		; a9 00
B20_0ebd:		rts				; 60 


B20_0ebe:		ldx $6c			; a6 6c
B20_0ec0:		lda #$01		; a9 01
B20_0ec2:		rts				; 60 


B20_0ec3:		ldx #$0b		; a2 0b
B20_0ec5:		lda $054e, x	; bd 4e 05
B20_0ec8:		beq B20_0ec2 ; f0 f8

B20_0eca:		inx				; e8 
B20_0ecb:		cpx #$0d		; e0 0d
B20_0ecd:		bcc B20_0ec5 ; 90 f6

B20_0ecf:		bcs B20_0ebe ; b0 ed

B20_0ed1:	.db $d7
B20_0ed2:		stx $8eeb		; 8e eb 8e
B20_0ed5:		ora $8f, x		; 15 8f
B20_0ed7:		jsr $8f45		; 20 45 8f
B20_0eda:		bcc B20_0edd ; 90 01

B20_0edc:		rts				; 60 


B20_0edd:		lda $07e0, x	; bd e0 07
B20_0ee0:		bne B20_0f15 ; d0 33

B20_0ee2:		jsr $9274		; 20 74 92
B20_0ee5:		jsr $83bc		; 20 bc 83
B20_0ee8:		jmp $8f0e		; 4c 0e 8f


B20_0eeb:		jsr $8f45		; 20 45 8f
B20_0eee:		bcc B20_0ef1 ; 90 01

B20_0ef0:		rts				; 60 


B20_0ef1:		jsr func_14_0de7		; 20 e7 8d
B20_0ef4:		lda $07e0, x	; bd e0 07
B20_0ef7:		bne B20_0f15 ; d0 1c

B20_0ef9:		lda #$80		; a9 80
B20_0efb:		sta $07f3		; 8d f3 07
B20_0efe:		ldx #$01		; a2 01
B20_0f00:		jsr func_14_0dff		; 20 ff 8d
B20_0f03:		jsr $9332		; 20 32 93
B20_0f06:		sta $3d			; 85 3d
B20_0f08:		jsr $8f16		; 20 16 8f
B20_0f0b:		jsr func_14_0f73		; 20 73 8f
B20_0f0e:		ldx $6c			; a6 6c
B20_0f10:		inc $07c8, x	; fe c8 07
B20_0f13:		stx $c3			; 86 c3
B20_0f15:		rts				; 60 


B20_0f16:		jsr $8f32		; 20 32 8f
B20_0f19:		bcc B20_0f15 ; 90 fa

B20_0f1b:		dey				; 88 

B20_0f1c:		lda data_14_0f55.w, y	; b9 55 8f
B20_0f1f:		sta wChrBankSpr_0800			; 85 48
B20_0f21:		lda $8f64, y	; b9 64 8f
B20_0f24:		sta wChrBankSpr_0c00			; 85 49
B20_0f26:		jmp chrSwitch_0_to_c00_1400		; 4c 3c e3


B20_0f29:		ldy $054e, x	; bc 4e 05
B20_0f2c:		jsr $8f1b		; 20 1b 8f
B20_0f2f:		jmp $8f78		; 4c 78 8f


B20_0f32:		ldy $054e, x	; bc 4e 05
B20_0f35:		cpy #$0b		; c0 0b
B20_0f37:		beq B20_0f43 ; f0 0a

B20_0f39:		cpy #$08		; c0 08
B20_0f3b:		bcs B20_0f41 ; b0 04

B20_0f3d:		cpy #$05		; c0 05
B20_0f3f:		bcs B20_0f43 ; b0 02

B20_0f41:		sec				; 38 
B20_0f42:		rts				; 60 


B20_0f43:		clc				; 18 
B20_0f44:		rts				; 60 


B20_0f45:		lda wCurrRoomGroup		; a5 32
B20_0f47:		cmp #$01		; c9 01
B20_0f49:		bne B20_0f53 ; d0 08

B20_0f4b:		lda wCurrRoomSection			; a5 33
B20_0f4d:		cmp #$03		; c9 03
B20_0f4f:		bne B20_0f53 ; d0 02

B20_0f51:		sec				; 38 
B20_0f52:		rts				; 60 

B20_0f53:		clc				; 18 
B20_0f54:		rts				; 60 


data_14_0f55:
B20_0f55:		clc				; 18 
B20_0f56:	.db $1c
B20_0f57:	.db $1a
B20_0f58:		plp				; 28 
B20_0f59:		asl $2220, x	; 1e 20 22
B20_0f5c:		jsr $2426		; 20 26 24
B20_0f5f:	.db $1c
B20_0f60:		bit $1a30		; 2c 30 1a
B20_0f63:	.db $1c
B20_0f64:		ora $1b7b, y	; 19 7b 1b
B20_0f67:		ora $211f, x	; 1d 1f 21
B20_0f6a:	.db $23
B20_0f6b:		and ($29, x)	; 21 29
B20_0f6d:		and $2f			; 25 2f
B20_0f6f:		and $1b31		; 2d 31 1b
B20_0f72:		.db $1d


func_14_0f73:
B20_0f73:		jsr $8f32
B20_0f76:		bcc B20_0fa7 ; 90 2f

B20_0f78:		lda $054e, x	; bd 4e 05
B20_0f7b:		sta $c1			; 85 c1
B20_0f7d:		stx $0f			; 86 0f
B20_0f7f:		jsr $e730		; 20 30 e7
B20_0f82:		ldx $0f			; a6 0f
B20_0f84:		lda $c1			; a5 c1
B20_0f86:		beq B20_0fa0 ; f0 18

B20_0f88:		asl a			; 0a
B20_0f89:		asl a			; 0a
B20_0f8a:		tay				; a8 
B20_0f8b:		lda $1d			; a5 1d
B20_0f8d:		sec				; 38 
B20_0f8e:		sbc #$11		; e9 11
B20_0f90:		tax				; aa 
B20_0f91:		lda #$04		; a9 04
B20_0f93:		sta $0e			; 85 0e
B20_0f95:		lda data_14_0fa8.w, y	; b9 a8 8f
B20_0f98:		jsr $8fa3		; 20 a3 8f
B20_0f9b:		iny				; c8 
B20_0f9c:		dec $0e			; c6 0e
B20_0f9e:		bne B20_0f95 ; d0 f5

B20_0fa0:		ldx $0f			; a6 0f
B20_0fa2:		rts				; 60 

B20_0fa3:		sta wVramQueue.w, x	; 9d 00 03
B20_0fa6:		inx				; e8 
B20_0fa7:		rts				; 60 

data_14_0fa8:
B20_0fa8:	.db $0f
B20_0fa9:		.db $00				; 00
B20_0faa:		.db $00				; 00
B20_0fab:		.db $00				; 00
B20_0fac:	.db $0f
B20_0fad:	.db $0f
B20_0fae:	.db $12
B20_0faf:		and $280f, y	; 39 0f 28
B20_0fb2:	.db $0f
B20_0fb3:	.db $1b
B20_0fb4:	.db $0f
B20_0fb5:	.db $0f
B20_0fb6:		clc				; 18 
B20_0fb7:		sec				; 38 
B20_0fb8:	.db $0f
B20_0fb9:	.db $0f
B20_0fba:		.db $00				; 00
B20_0fbb:	.db $13
B20_0fbc:	.db $0f
B20_0fbd:	.db $0f
B20_0fbe:	.db $1b
B20_0fbf:	.db $27
B20_0fc0:	.db $0f
B20_0fc1:	.db $0f
B20_0fc2:		.db $00				; 00
B20_0fc3:	.db $32
B20_0fc4:	.db $0f
B20_0fc5:	.db $0f
B20_0fc6:		bit $0f32		; 2c 32 0f
B20_0fc9:		asl $28, x		; 16 28
B20_0fcb:		sec				; 38 
B20_0fcc:	.db $0f
B20_0fcd:	.db $0f
B20_0fce:		asl $37, x		; 16 37
B20_0fd0:	.db $0f
B20_0fd1:	.db $0f
B20_0fd2:		bpl B20_0ff4 ; 10 20

B20_0fd4:	.db $0f
B20_0fd5:	.db $04
B20_0fd6:	.db $13
B20_0fd7:	.db $34
B20_0fd8:	.db $0f
B20_0fd9:	.db $0f
B20_0fda:		php				; 08 
B20_0fdb:	.db $34
B20_0fdc:	.db $0f
B20_0fdd:	.db $0f
B20_0fde:	.db $14
B20_0fdf:	.db $27
B20_0fe0:	.db $0f
B20_0fe1:		.db $00				; 00
B20_0fe2:		bpl B20_101c ; 10 38

B20_0fe4:		.db $00				; 00
B20_0fe5:		.db $00				; 00
B20_0fe6:		.db $00				; 00
B20_0fe7:		.db $00				; 00
B20_0fe8:		.db $00				; 00
B20_0fe9:		.db $00				; 00
B20_0fea:		.db $00				; 00
B20_0feb:		.db $00				; 00
B20_0fec:	.db $0f
B20_0fed:	.db $0f
B20_0fee:	.db $04
B20_0fef:	.db $33
B20_0ff0:	.db $0f
B20_0ff1:	.db $0f
B20_0ff2:		asl $17, x		; 16 17
B20_0ff4:	.db $0f
B20_0ff5:	.db $0f
B20_0ff6:		asl $27, x		; 16 27
B20_0ff8:	.db $0f
B20_0ff9:	.db $0f
B20_0ffa:		asl $37, x		; 16 37
B20_0ffc:	.db $02
B20_0ffd:		;removed
	.db $90 $1c

B20_0fff:		bcc B20_0fa0 ; 90 9f

B20_1001:		bcc B20_0fc0 ; 90 bd

B20_1003:		cpx #$07		; e0 07
B20_1005:		beq B20_1008 ; f0 01

B20_1007:		rts				; 60 


B20_1008:		jsr $9274		; 20 74 92
B20_100b:		ldx #$01		; a2 01
B20_100d:		lda #$0c		; a9 0c
B20_100f:		sta $00			; 85 00
B20_1011:		jsr $83bc		; 20 bc 83
B20_1014:		inx				; e8 
B20_1015:		dec $00			; c6 00
B20_1017:		bne B20_1011 ; d0 f8

B20_1019:		jmp $8f0e		; 4c 0e 8f


B20_101c:		jsr func_14_0de7		; 20 e7 8d
B20_101f:		lda $bd			; a5 bd
B20_1021:		sta $16			; 85 16
B20_1023:		lda #$0c		; a9 0c
B20_1025:		sta $15			; 85 15
B20_1027:		lda wCurrRoomSection			; a5 33
B20_1029:		cmp #$02		; c9 02
B20_102b:		beq B20_1035 ; f0 08

B20_102d:		lda $be			; a5 be
B20_102f:		bne B20_1033 ; d0 02

B20_1031:		lda #$01		; a9 01
B20_1033:		sta $15			; 85 15
B20_1035:		ldx #$01		; a2 01
B20_1037:		lda #$80		; a9 80
B20_1039:		sta $07f3		; 8d f3 07
B20_103c:		lda #$00		; a9 00
B20_103e:		sta $17			; 85 17
B20_1040:		jsr func_14_0dff		; 20 ff 8d
B20_1043:		jsr $9332		; 20 32 93
B20_1046:		sta $3d			; 85 3d
B20_1048:		lda #$2d		; a9 2d
B20_104a:		sta $03			; 85 03
B20_104c:		lda #$80		; a9 80
B20_104e:		sta $02			; 85 02
B20_1050:		lda wCurrRoomSection			; a5 33
B20_1052:		cmp #$02		; c9 02
B20_1054:		beq B20_105d ; f0 07

B20_1056:		lda $16			; a5 16
B20_1058:		sta $067b, x	; 9d 7b 06
B20_105b:		sta $3d			; 85 3d
B20_105d:		stx $10			; 86 10
B20_105f:		lda $17			; a5 17
B20_1061:		lsr a			; 4a
B20_1062:		tay				; a8 
B20_1063:		lda $17			; a5 17
B20_1065:		sta $0606, x	; 9d 06 06
B20_1068:		and #$01		; 29 01
B20_106a:		beq B20_1077 ; f0 0b

B20_106c:		lda $10			; a5 10
B20_106e:		ora $07ec, y	; 19 ec 07
B20_1071:		sta $07ec, y	; 99 ec 07
B20_1074:		jmp $9080		; 4c 80 90


B20_1077:		lda $10			; a5 10
B20_1079:		asl a			; 0a
B20_107a:		asl a			; 0a
B20_107b:		asl a			; 0a
B20_107c:		asl a			; 0a
B20_107d:		sta $07ec, y	; 99 ec 07
B20_1080:		lda $17			; a5 17
B20_1082:		bne B20_1087 ; d0 03

B20_1084:		jsr $8f16		; 20 16 8f
B20_1087:		inc $17			; e6 17
B20_1089:		inx				; e8 
B20_108a:		lda $17			; a5 17
B20_108c:		cmp $15			; c5 15
B20_108e:		bne B20_1040 ; d0 b0

B20_1090:		ldx #$01		; a2 01
B20_1092:		lda $15			; a5 15
B20_1094:		sta $061d, x	; 9d 1d 06
B20_1097:		jsr func_14_0f73		; 20 73 8f
B20_109a:		ldx $6c			; a6 6c
B20_109c:		inc $07c8, x	; fe c8 07
B20_109f:		rts				; 60 


B20_10a0:	.db $02
B20_10a1:		;removed
	.db $90 $a6

B20_10a3:		;removed
	.db $90 $dc

B20_10a5:		;removed
	.db $90 $20

B20_10a7:	.db $e7
B20_10a8:		sta $e0bd		; 8d bd e0
B20_10ab:	.db $07
B20_10ac:		bne B20_10dc ; d0 2e

B20_10ae:		lda #$80		; a9 80
B20_10b0:		sta $07f3		; 8d f3 07
B20_10b3:		ldx #$01		; a2 01
B20_10b5:		lda #$02		; a9 02
B20_10b7:		sta $16			; 85 16
B20_10b9:		jsr func_14_0dff		; 20 ff 8d
B20_10bc:		jsr $9332		; 20 32 93
B20_10bf:		lda #$40		; a9 40
B20_10c1:		sta $3d			; 85 3d
B20_10c3:		lda $16			; a5 16
B20_10c5:		sta $0645, x	; 9d 45 06
B20_10c8:		dec $0645, x	; de 45 06
B20_10cb:		inx				; e8 
B20_10cc:		dec $16			; c6 16
B20_10ce:		bne B20_10b9 ; d0 e9

B20_10d0:		dex				; ca 
B20_10d1:		jsr $8f16		; 20 16 8f
B20_10d4:		jsr func_14_0f73		; 20 73 8f
B20_10d7:		ldx $6c			; a6 6c
B20_10d9:		inc $07c8, x	; fe c8 07
B20_10dc:		rts				; 60 


B20_10dd:	.db $02
B20_10de:		bcc B20_10c3 ; 90 e3

B20_10e0:		bcc B20_1123 ; 90 41

B20_10e2:		sta ($20), y	; 91 20
B20_10e4:	.db $e7
B20_10e5:		sta $e0bd		; 8d bd e0
B20_10e8:	.db $07
B20_10e9:		bne B20_1141 ; d0 56

B20_10eb:		lda #$80		; a9 80
B20_10ed:		sta $07f3		; 8d f3 07
B20_10f0:		ldx #$01		; a2 01
B20_10f2:		lda #$00		; a9 00
B20_10f4:		sta $16			; 85 16
B20_10f6:		jsr func_14_0dff		; 20 ff 8d
B20_10f9:		jsr $9332		; 20 32 93
B20_10fc:		sta $3d			; 85 3d
B20_10fe:		lda $16			; a5 16
B20_1100:		sta $0606, x	; 9d 06 06
B20_1103:		tay				; a8 
B20_1104:		lda #$00		; a9 00
B20_1106:		sta $17			; 85 17
B20_1108:		lda $9142, y	; b9 42 91
B20_110b:		bpl B20_1111 ; 10 04

B20_110d:		lda #$ff		; a9 ff
B20_110f:		sta $17			; 85 17
B20_1111:		lda $9142, y	; b9 42 91
B20_1114:		clc				; 18 
B20_1115:		adc wEntityBaseX.w, x	; 7d 38 04
B20_1118:		sta wEntityBaseX.w, x	; 9d 38 04
B20_111b:		lda $17			; a5 17
B20_111d:		adc #$00		; 69 00
B20_111f:		and #$01		; 29 01
B20_1121:		beq B20_1127 ; f0 04

B20_1123:		ora #$88		; 09 88
B20_1125:		bne B20_1129 ; d0 02

B20_1127:		ora #$40		; 09 40
B20_1129:		sta $0470, x	; 9d 70 04
B20_112c:		inx				; e8 
B20_112d:		inc $16			; e6 16
B20_112f:		lda $16			; a5 16
B20_1131:		cmp #$04		; c9 04
B20_1133:		bne B20_10f6 ; d0 c1

B20_1135:		dex				; ca 
B20_1136:		jsr $8f16		; 20 16 8f
B20_1139:		jsr func_14_0f73		; 20 73 8f
B20_113c:		ldx $6c			; a6 6c
B20_113e:		inc $07c8, x	; fe c8 07
B20_1141:		rts				; 60 


B20_1142:		.db $00				; 00
B20_1143:		clc				; 18 
B20_1144:		inx				; e8 
B20_1145:		jsr $2ce0		; 20 e0 2c
B20_1148:		dec $09, x		; d6 09
B20_114a:	.db $02
B20_114b:		bcc B20_119d ; 90 50

B20_114d:		sta ($a2), y	; 91 a2
B20_114f:		sta ($20), y	; 91 20
B20_1151:	.db $e7
B20_1152:		sta $e0bd		; 8d bd e0
B20_1155:	.db $07
B20_1156:		bne B20_11a2 ; d0 4a

B20_1158:		lda #$80		; a9 80
B20_115a:		sta $07f3		; 8d f3 07
B20_115d:		ldx #$01		; a2 01
B20_115f:		lda #$00		; a9 00
B20_1161:		sta $16			; 85 16
B20_1163:		jsr func_14_0dff		; 20 ff 8d
B20_1166:		jsr $9332		; 20 32 93
B20_1169:		lda #$40		; a9 40
B20_116b:		sta $3d			; 85 3d
B20_116d:		lda $16			; a5 16
B20_116f:		beq B20_1173 ; f0 02

B20_1171:		lda #$02		; a9 02
B20_1173:		sta $0606, x	; 9d 06 06
B20_1176:		asl a			; 0a
B20_1177:		asl a			; 0a
B20_1178:		asl a			; 0a
B20_1179:		sta $05d8, x	; 9d d8 05
B20_117c:		lda #$80		; a9 80
B20_117e:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_1181:		ldy $16			; a4 16
B20_1183:		lda $91a3, y	; b9 a3 91
B20_1186:		clc				; 18 
B20_1187:		adc wEntityBaseX.w, x	; 7d 38 04
B20_118a:		sta wEntityBaseX.w, x	; 9d 38 04
B20_118d:		inx				; e8 
B20_118e:		inc $16			; e6 16
B20_1190:		lda $16			; a5 16
B20_1192:		cmp #$06		; c9 06
B20_1194:		bne B20_1163 ; d0 cd

B20_1196:		dex				; ca 
B20_1197:		jsr $8f16		; 20 16 8f
B20_119a:		jsr func_14_0f73		; 20 73 8f
B20_119d:		ldx $6c			; a6 6c
B20_119f:		inc $07c8, x	; fe c8 07
B20_11a2:		rts				; 60 


B20_11a3:		.db $00				; 00
B20_11a4:	.db $04
B20_11a5:	.db $fc
B20_11a6:		php				; 08 
B20_11a7:		sed				; f8 
B20_11a8:	.db $0c
B20_11a9:	.db $f4
B20_11aa:	.db $02
B20_11ab:	.db $b3
B20_11ac:		sta ($15), y	; 91 15
B20_11ae:	.db $8f
B20_11af:		cmp $1591		; cd 91 15
B20_11b2:	.db $8f
B20_11b3:		jsr $8d66		; 20 66 8d
B20_11b6:		bne B20_1216 ; d0 5e

B20_11b8:		lda #$00		; a9 00
B20_11ba:		sta $10			; 85 10
B20_11bc:		jsr $feb9		; 20 b9 fe
B20_11bf:		bne B20_1216 ; d0 55

B20_11c1:		lda #$13		; a9 13
B20_11c3:		sta $054e, x	; 9d 4e 05
B20_11c6:		lda #$00		; a9 00
B20_11c8:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_11cb:		beq B20_11e5 ; f0 18

B20_11cd:		jsr $8d66		; 20 66 8d
B20_11d0:		bne B20_1216 ; d0 44

B20_11d2:		lda #$02		; a9 02
B20_11d4:		sta $10			; 85 10
B20_11d6:		jsr $feb9		; 20 b9 fe
B20_11d9:		bne B20_1216 ; d0 3b

B20_11db:		lda #$78		; a9 78
B20_11dd:		sta $054e, x	; 9d 4e 05
B20_11e0:		lda #$60		; a9 60
B20_11e2:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_11e5:		ldy $10			; a4 10
B20_11e7:		lda $9217, y	; b9 17 92
B20_11ea:		sta wEntityBaseX.w, x	; 9d 38 04
B20_11ed:		lda $921a, y	; b9 1a 92
B20_11f0:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_11f3:		lda #$00		; a9 00
B20_11f5:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B20_11f8:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B20_11fb:		sta $0520, x	; 9d 20 05
B20_11fe:		sta $0537, x	; 9d 37 05
B20_1201:		sta wEntityPhase.w, x	; 9d c1 05
B20_1204:		lda #$c8		; a9 c8
B20_1206:		sta $0470, x	; 9d 70 04
B20_1209:		lda $10			; a5 10
B20_120b:		beq B20_1211 ; f0 04

B20_120d:		dec $10			; c6 10
B20_120f:		bne B20_11d6 ; d0 c5

B20_1211:		ldx $6c			; a6 6c
B20_1213:		inc $07c8, x	; fe c8 07
B20_1216:		rts				; 60 


B20_1217:	.db $80
B20_1218:		rti				; 40 


B20_1219:		cpy #$40		; c0 40
B20_121b:		bvc B20_125d ; 50 40

B20_121d:		and ($92, x)	; 21 92
B20_121f:		ora $8f, x		; 15 8f
B20_1221:		jsr $8d66		; 20 66 8d
B20_1224:		bne B20_1269 ; d0 43

B20_1226:		lda #$02		; a9 02
B20_1228:		sta $10			; 85 10
B20_122a:		jsr $feb9		; 20 b9 fe
B20_122d:		bne B20_1269 ; d0 3a

B20_122f:		lda #$12		; a9 12
B20_1231:		sta $054e, x	; 9d 4e 05
B20_1234:		lda #$00		; a9 00
B20_1236:		sta wEntityAI_idx.w, x	; 9d ef 05
B20_1239:		ldy $10			; a4 10
B20_123b:		tya				; 98 
B20_123c:		ora #$80		; 09 80
B20_123e:		sta $0645, x	; 9d 45 06
B20_1241:		lda $926a, y	; b9 6a 92
B20_1244:		sta wEntityBaseX.w, x	; 9d 38 04
B20_1247:		lda $926f, y	; b9 6f 92
B20_124a:		sta wEntityBaseY.w, x	; 9d 1c 04
B20_124d:		lda #$88		; a9 88
B20_124f:		sta $0470, x	; 9d 70 04
B20_1252:		lda #$00		; a9 00
B20_1254:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B20_1257:		sta wEntityHorizSubSpeed.w, x	; 9d 09 05
B20_125a:		sta $0520, x	; 9d 20 05
B20_125d:		sta $0537, x	; 9d 37 05
B20_1260:		dec $10			; c6 10
B20_1262:		bpl B20_122a ; 10 c6

B20_1264:		ldx $6c			; a6 6c
B20_1266:		inc $07c8, x	; fe c8 07
B20_1269:		rts				; 60 


B20_126a:		;removed
	.db $30 $b0

B20_126c:		bne B20_12be ; d0 50

B20_126e:		bcc B20_12c0 ; 90 50

B20_1270:		bvc B20_12c2 ; 50 50

B20_1272:		bmi B20_12a4 ; 30 30

B20_1274:		ldy #$07		; a0 07
B20_1276:		lda #$00		; a9 00
B20_1278:		sta $07ec, y	; 99 ec 07
B20_127b:		dey				; 88 
B20_127c:		bne B20_1278 ; d0 fa

B20_127e:		sta $07ec		; 8d ec 07
B20_1281:		rts				; 60 


data_14_1282:
B20_1282:		.db $00				; 00
B20_1283:		ora ($02, x)	; 01 02
B20_1285:	.db $07
B20_1286:	.db $0d $00 $00
B20_1289:		.db $00				; 00
B20_128a:		.db $00				; 00
B20_128b:		.db $00				; 00
B20_128c:		.db $00				; 00
B20_128d:		asl $0605		; 0e 05 06
B20_1290:	.db $12
B20_1291:		ora ($03), y	; 11 03
B20_1293:		bpl B20_12a9 ; 10 14

B20_1295:		and ($0b, x)	; 21 0b
B20_1297:	.db $0f
B20_1298:		ora #$0a		; 09 0a
B20_129a:		php				; 08 
B20_129b:	.db $17
B20_129c:		asl $00, x		; 16 00
B20_129e:		.db $00				; 00
B20_129f:		.db $00				; 00
B20_12a0:		.db $00				; 00
B20_12a1:		.db $00				; 00
B20_12a2:		.db $00				; 00
B20_12a3:		.db $00				; 00
B20_12a4:		.db $00				; 00
B20_12a5:		.db $00				; 00
B20_12a6:		.db $00				; 00
B20_12a7:		.db $00				; 00
B20_12a8:		.db $00				; 00
B20_12a9:	.db $04
B20_12aa:	.db $1c
B20_12ab:		ora $6e1e, x	; 1d 1e 6e
B20_12ae:	.db $6f
B20_12af:	.db $0c
B20_12b0:	.db $22
B20_12b1:		.db $00				; 00
B20_12b2:		.db $00				; 00
B20_12b3:		.db $00				; 00
B20_12b4:	.db $13
B20_12b5:		.db $00				; 00
B20_12b6:		.db $00				; 00
B20_12b7:		.db $00				; 00
B20_12b8:		.db $00				; 00
B20_12b9:		.db $00				; 00
B20_12ba:		.db $00				; 00
B20_12bb:		.db $00				; 00
B20_12bc:		bit $25			; 24 25
B20_12be:		rol $27			; 26 27
B20_12c0:		and #$28		; 29 28
B20_12c2:	.db $2b
B20_12c3:	.db $2f
B20_12c4:		.db $00				; 00
B20_12c5:		bit $6463		; 2c 63 64
B20_12c8:		adc $66			; 65 66
B20_12ca:	.db $07
B20_12cb:		bpl B20_12d4 ; 10 07

B20_12cd:		pla				; 68 
B20_12ce:		.db $00				; 00
B20_12cf:		.db $00				; 00
B20_12d0:		.db $00				; 00
B20_12d1:		ora ($16, x)	; 01 16
B20_12d3:		ror a			; 6a
B20_12d4:	.db $0d $00 $00
B20_12d7:		.db $00				; 00
B20_12d8:		.db $00				; 00
B20_12d9:		.db $00				; 00


data_14_12da:
B20_12da:		.db $00				; 00
B20_12db:		pha				; 48 
B20_12dc:		pha				; 48 
B20_12dd:	.db $4b
B20_12de:		eor ($01), y	; 51 01
B20_12e0:	.db $02
B20_12e1:	.db $03
B20_12e2:		.db $00				; 00
B20_12e3:		.db $00				; 00
B20_12e4:		.db $00				; 00
B20_12e5:	.db $52
B20_12e6:		lsr a			; 4a
B20_12e7:		lsr a			; 4a
B20_12e8:		lsr $55, x		; 56 55
B20_12ea:		eor #$54		; 49 54
B20_12ec:		cli				; 58 
B20_12ed:	.db $57
B20_12ee:	.db $4f
B20_12ef:	.db $53
B20_12f0:		eor $4c4e		; 4d 4e 4c
B20_12f3:	.db $5b
B20_12f4:	.db $5a
B20_12f5:	.db $04
B20_12f6:		ora $06			; 05 06
B20_12f8:		asl a			; 0a
B20_12f9:		php				; 08 
B20_12fa:		ora #$07		; 09 07
B20_12fc:		.db $00				; 00
B20_12fd:	.db $0c
B20_12fe:	.db $0b
B20_12ff:		ora #$0d		; 09 0d
B20_1301:		eor #$5c		; 49 5c
B20_1303:		eor $4a56, x	; 5d 56 4a
B20_1306:	.db $64
B20_1307:		bvc B20_1367 ; 50 5e

B20_1309:		adc $8082, x	; 7d 82 80
B20_130c:		eor $7e7f		; 4d 7f 7e
B20_130f:		sty $76			; 84 76
B20_1311:	.db $7b
B20_1312:	.db $7c
B20_1313:		adc $48, x		; 75 48
B20_1315:		rts				; 60 


B20_1316:		adc ($58, x)	; 61 58
B20_1318:		cli				; 58 
B20_1319:	.db $62
B20_131a:	.db $63
B20_131b:		lsr $74, x		; 56 74
B20_131d:		eor $645f, y	; 59 5f 64
B20_1320:		adc $4a			; 65 4a
B20_1322:	.db $4b
B20_1323:	.db $54
B20_1324:	.db $4b
B20_1325:		jmp $7173		; 4c 73 71


B20_1328:	.db $72
B20_1329:		pha				; 48 
B20_132a:	.db $5a
B20_132b:		cli				; 58 
B20_132c:		eor ($00), y	; 51 00
B20_132e:		.db $00				; 00
B20_132f:		.db $00				; 00
B20_1330:		.db $00				; 00
B20_1331:		.db $00				; 00
B20_1332:		lda #$40		; a9 40
B20_1334:		ldy $054e, x	; bc 4e 05
B20_1337:		cpy #$08		; c0 08
B20_1339:		bne B20_133f ; d0 04

B20_133b:		lda #$20		; a9 20
B20_133d:		bne B20_134b ; d0 0c

B20_133f:		cpy #$40		; c0 40
B20_1341:		bcc B20_134b ; 90 08

B20_1343:		tya				; 98 
B20_1344:		sec				; 38 
B20_1345:		sbc #$40		; e9 40
B20_1347:		tay				; a8 
B20_1348:		lda $934f, y	; b9 4f 93
B20_134b:		sta $067b, x	; 9d 7b 06
B20_134e:		rts				; 60 


B20_134f:	.db $04
B20_1350:	.db $04
B20_1351:	.db $04
B20_1352:	.db $04
B20_1353:	.db $04
B20_1354:	.db $04
B20_1355:	.db $04
B20_1356:	.db $04
B20_1357:	.db $02
B20_1358:	.db $02
B20_1359:	.db $02
B20_135a:	.db $04
B20_135b:	.db $0c
B20_135c:	.db $02
B20_135d:	.db $02
B20_135e:	.db $04
B20_135f:	.db $04
B20_1360:	.db $04
B20_1361:	.db $04
B20_1362:	.db $04
B20_1363:	.db $0c
B20_1364:		.db $30 $24

B20_1366:	.db $04
B20_1367:	.db $04
B20_1368:		rti				; 40 


B20_1369:		asl $04			; 06 04
B20_136b:	.db $02
B20_136c:	.db $04
B20_136d:	.db $04
B20_136e:	.db $04
B20_136f:	.db $04
B20_1370:	.db $04
B20_1371:	.db $0c
B20_1372:	.db $0c
B20_1373:	.db $7f
B20_1374:	.db $04
B20_1375:		asl a			; 0a
B20_1376:		asl $04			; 06 04
B20_1378:	.db $04
B20_1379:	.db $04
B20_137a:	.db $04
B20_137b:	.db $04
B20_137c:	.db $04
B20_137d:	.db $04
B20_137e:	.db $04
