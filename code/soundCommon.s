
processNextSoundByte:
; start reading metabytes
B24_0001:		cpx #INSTR_NOISE_1		; e0 05
B24_0003:		beq B24_0037 ; @instrument5

B24_0005:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0007:		cmp #$ff		; c9 ff
B24_0009:		beq B24_0013 ; f0 08

B24_000b:		lda w16e.w, x	; bd 6e 01
B24_000e:		bpl B24_0013 ; 10 03

B24_0010:		jmp func_18_0408		; 4c 08 84

; cx, dx, ex, fx call from a below func
; lower nybble is A (param)
B24_0013:		lda (wCurrInstrumentDataAddr), y	; b1 e0
	and #$f0
	cmp #$c0
	bcs +

	jmp processNoteByte

; upper nybble decides control func
+	and #$30
	lsr a
	lsr a
	lsr a
	tax
	lda controlSoundByteFuncs.w, x
	sta wSoundBankJumpAddr
	lda controlSoundByteFuncs.w+1, x
	sta wSoundBankJumpAddr+1

; lower nybble is param in A
	ldx wCurrInstrumentIdx
	lda (wCurrInstrumentDataAddr), y
	and #$0f
	jmp (wSoundBankJumpAddr)

@instrument5:
B24_0037:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0039:		and #$f0		; 29 f0
B24_003b:		cmp #$f0		; c9 f0
B24_003d:		bne B24_0046 ; d0 07

; control byte fx, do the same as others
B24_003f:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0041:		and #$0f		; 29 0f
B24_0043:		jmp controlSoundByte_fx		; 4c a3 85

; non-fx
B24_0046:		cmp #$d0		; c9 d0
B24_0048:		beq B24_004d ; f0 03

B24_004a:		jmp func_18_029b		; 4c 9b 82

; control byte dx, store in 10e, then do process next byte
B24_004d:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_004f:		and #$0f		; 29 0f
B24_0051:		sta w10e.w, x	; 9d 0e 01
B24_0054:		iny				; c8 
B24_0055:		jmp B24_0037		; 4c 37 80


func_18_0058:
B24_0058:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_005a:		lsr a			; 4a
B24_005b:		lsr a			; 4a
B24_005c:		lsr a			; 4a
B24_005d:		lsr a			; 4a
B24_005e:		cmp #$0c		; c9 0c
B24_0060:		bne B24_0065 ; d0 03

; control byte cx does nothing
B24_0062:		jmp setAndSaveLowerBank18h		; 4c a6 e1

B24_0065:		tax				; aa 
B24_0066:		lda instrument5sounds.w, x	; bd 78 80
B24_0069:		ldx wCurrInstrumentIdx			; a6 ee
B24_006b:		cmp #SND_DMC_START		; c9 6d
B24_006d:		bcc B24_0072 ; 90 03

B24_006f:		jmp playDMCSound		; 4c ab e1

B24_0072:		jsr playSound		; 20 5f e2
B24_0075:		jmp setAndSaveLowerBank18h		; 4c a6 e1

instrument5sounds:
	.db $01
	.db $02
	.db $03
	.db $04
	.db $05

	.db $70
	.db $79 ; 6 - ominous laugh on name input screen?
	.db $6d
	.db $6e
	.db $6f
	.db $70
	.db $71 ; b - bass drum?


func_18_0084:
B24_0084:		lda #$01		; a9 01
B24_0086:		sta $03c0, x	; 9d c0 03

B24_0089:		lda $015b, x	; bd 5b 01
B24_008c:		jsr func_1f_01ce		; 20 ce e1

B24_008f:		lda w189.w, x	; bd 89 01
B24_0092:		and #$0f		; 29 0f
B24_0094:		sta $03c3, x	; 9d c3 03

B24_0097:		lda w115.w, x	; bd 15 01
B24_009a:		and #$bb		; 29 bb
B24_009c:		ora #$02		; 09 02
B24_009e:		sta w115.w, x	; 9d 15 01

B24_00a1:		lda w16e.w, x	; bd 6e 01
B24_00a4:		and #$df		; 29 df
B24_00a6:		sta w16e.w, x	; 9d 6e 01
B24_00a9:		jmp func_18_0166		; 4c 66 81


func_18_00ac:
B24_00ac:		lda w16e.w, x	; bd 6e 01
B24_00af:		and #$df		; 29 df
B24_00b1:		sta w16e.w, x	; 9d 6e 01
B24_00b4:		lda $03d8, x	; bd d8 03
B24_00b7:		lsr a			; 4a
B24_00b8:		bcc B24_00c2 ; 90 08

B24_00ba:		lda w16e.w, x	; bd 6e 01
B24_00bd:		ora #$20		; 09 20
B24_00bf:		sta w16e.w, x	; 9d 6e 01
B24_00c2:		rts				; 60 


func_18_00c3:
B24_00c3:		and #$7f		; 29 7f
B24_00c5:		sta $e4			; 85 e4
B24_00c7:		txa				; 8a 
B24_00c8:		sec				; 38 
B24_00c9:		sbc $e4			; e5 e4
B24_00cb:		bcs B24_00de ; b0 11

B24_00cd:		sec				; 38 
B24_00ce:		sbc #$e8		; e9 e8
B24_00d0:		tax				; aa 
B24_00d1:		lda lowerFrequencyData.w, x	; bd 0b 87
B24_00d4:		sta wSoundFrequency			; 85 ec
B24_00d6:		lda lowerFrequencyData.w+1, x	; bd 0c 87
B24_00d9:		sta wSoundFrequency+1			; 85 ed
B24_00db:		jmp func_18_0189		; 4c 89 81

B24_00de:		jmp func_18_017e		; 4c 7e 81


B24_00e1:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_00e3:		and #$0f		; 29 0f

func_18_00e5:
B24_00e5:		tax				; aa 
B24_00e6:		inx				; e8 
B24_00e7:		lda #$00		; a9 00
B24_00e9:		sta $0193		; 8d 93 01
B24_00ec:		lda $015d		; ad 5d 01
B24_00ef:		sta $e2			; 85 e2
B24_00f1:		beq B24_010a ; f0 17

B24_00f3:		cmp #$80		; c9 80
B24_00f5:		bcs B24_0120 ; b0 29

B24_00f7:		inc $e2			; e6 e2
B24_00f9:		lda $e2			; a5 e2

func_18_00fb:
B24_00fb:		dex				; ca 
B24_00fc:		beq B24_0106 ; f0 08

B24_00fe:		clc				; 18 
B24_00ff:		adc $e2			; 65 e2
B24_0101:		bcs B24_010a ; b0 07

B24_0103:		jmp func_18_00fb		; 4c fb 80


B24_0106:		cmp #$80		; c9 80
B24_0108:		bcc B24_010c ; 90 02

B24_010a:		lda #$90		; a9 90
B24_010c:		sta TRI_LINEAR.w		; 8d 08 40
B24_010f:		jsr b18_waitAFewCycles2		; 20 53 87
B24_0112:		sta $0194		; 8d 94 01
B24_0115:		ldx wCurrInstrumentIdx			; a6 ee
B24_0117:		lda w16e.w, x	; bd 6e 01
B24_011a:		bpl B24_011d ; 10 01

B24_011c:		rts				; 60 

B24_011d:		jmp func_18_0166		; 4c 66 81

B24_0120:		sec				; 38 
B24_0121:		sbc #$80		; e9 80
B24_0123:		jmp B24_010c		; 4c 0c 81


B24_0126:		jmp func_18_00c3		; 4c c3 80


; returns to :166
B24_0129:		jmp func_18_0084		; 4c 84 80


processNoteByte:
B24_012c:		jsr func_18_029b		; 20 9b 82
B24_012f:		cpx #$02		; e0 02
B24_0131:		beq B24_00e1 ; f0 ae

; not intrument 2 (tri)
B24_0133:		jsr func_18_00ac		; 20 ac 80
B24_0136:		lda w189.w, x	; bd 89 01
B24_0139:		bmi B24_0129 ; 30 ee

B24_013b:		lda #$00		; a9 00
B24_013d:		sta $06b2, x	; 9d b2 06
B24_0140:		sta $03c3, x	; 9d c3 03
B24_0143:		sta $03c9, x	; 9d c9 03
B24_0146:		sta $03c6, x	; 9d c6 03
B24_0149:		sta $03c0, x	; 9d c0 03
B24_014c:		inc $03c0, x	; fe c0 03
B24_014f:		sty $e4			; 84 e4
B24_0151:		jsr func_1f_01de		; 20 de e1
B24_0154:		ldy $e4			; a4 e4
B24_0156:		lda w115.w, x	; bd 15 01
B24_0159:		and #$b9		; 29 b9
B24_015b:		sta w115.w, x	; 9d 15 01
B24_015e:		lda w16e.w, x	; bd 6e 01
B24_0161:		and #$df		; 29 df
B24_0163:		sta w16e.w, x	; 9d 6e 01

func_18_0166:
B24_0166:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0168:		and #$f0		; 29 f0
B24_016a:		lsr a			; 4a
B24_016b:		lsr a			; 4a
B24_016c:		lsr a			; 4a
B24_016d:		tax				; aa 
B24_016e:		sty wSoundTempDataBytesOffset			; 84 e2
B24_0170:		ldy wCurrInstrumentIdx			; a4 ee
B24_0172:		lda $0180, y	; b9 80 01
B24_0175:		beq B24_017f ; f0 08

B24_0177:		bmi B24_0126 ; 30 ad

B24_0179:		txa				; 8a 
B24_017a:		clc				; 18 
B24_017b:		adc $0180, y	; 79 80 01

func_18_017e:
B24_017e:		tax				; aa 
B24_017f:		lda higherFrequencyData.w, x	; bd 23 87
B24_0182:		sta wSoundFrequency			; 85 ec
B24_0184:		lda higherFrequencyData.w+1, x	; bd 24 87
B24_0187:		sta wSoundFrequency+1			; 85 ed

func_18_0189:
; restore idx into instrument data bytes
B24_0189:		ldy wSoundTempDataBytesOffset			; a4 e2
B24_018b:		ldx wCurrInstrumentIdx			; a6 ee
B24_018d:		lda $017d, x	; bd 7d 01
B24_0190:		tax				; aa 
B24_0191:		cpx #$05		; e0 05
B24_0193:		beq B24_019c ; f0 07

B24_0195:		lsr wSoundFrequency+1			; 46 ed
B24_0197:		ror wSoundFrequency			; 66 ec
B24_0199:		inx				; e8 
B24_019a:		bne B24_0191 ; d0 f5

; save current frequency
B24_019c:		ldx wCurrInstrumentIdx			; a6 ee
B24_019e:		lda wSoundFrequency			; a5 ec
B24_01a0:		sta wInstrumentFrequency_lo.w, x	; 9d 83 01
B24_01a3:		lda wSoundFrequency+1			; a5 ed
B24_01a5:		sta wInstrumentFrequency_hi.w, x	; 9d 86 01

B24_01a8:		cpx #$02		; e0 02
B24_01aa:		beq B24_01c7 ; f0 1b

B24_01ac:		lda $06ac, x	; bd ac 06
B24_01af:		bmi B24_01b4 ; 30 03

B24_01b1:		jsr func_18_0229		; 20 29 82
B24_01b4:		lda w16e.w, x	; bd 6e 01
B24_01b7:		and #$10		; 29 10
B24_01b9:		beq B24_01c7 ; f0 0c

B24_01bb:		lda $03db, x	; bd db 03
B24_01be:		bne B24_01c7 ; d0 07

; preserve Y
B24_01c0:		tya				; 98 
B24_01c1:		pha				; 48 
B24_01c2:		jsr processNextEnvelopeByte		; 20 ec e1
B24_01c5:		pla				; 68 
B24_01c6:		tay				; a8 

B24_01c7:		jsr func_18_01cd		; sets frequency
B24_01ca:		jmp updateCurrInstrumentDataAddr_setAndSaveBank18h		; 4c d6 86


func_18_01cd:
B24_01cd:		cpx #$06		; e0 06
B24_01cf:		beq B24_01fe ; f0 2d

; not instrument 6
	jsr adjustInstrumentFrequency
B24_01d4:		cpx #$02		; e0 02
B24_01d6:		beq B24_01fe ; f0 26

B24_01d8:		lda w16e.w, x	; bd 6e 01
B24_01db:		and #$10		; 29 10
B24_01dd:		beq B24_01e7 ; f0 08

B24_01df:		lda $03de, x	; bd de 03
B24_01e2:		cmp #$ff		; c9 ff
B24_01e4:		bne B24_01e7 ; d0 01

B24_01e6:		rts				; 60 

func_18_01e7:
B24_01e7:		lda wSoundFrequency+1			; a5 ed
B24_01e9:		cmp wInstrumentLastFreq_hi.w, x	; dd 4d 01
B24_01ec:		bne B24_0200 ; d0 12

B24_01ee:		lda w115.w, x	; bd 15 01
B24_01f1:		and #$81		; 29 81
B24_01f3:		cmp #$81		; c9 81
B24_01f5:		beq B24_01fe ; f0 07

B24_01f7:		lda $0162, x	; bd 62 01
B24_01fa:		and #$10		; 29 10
B24_01fc:		bne B24_0210 ; d0 12

func_18_01fe:
B24_01fe:		lda wSoundFrequency+1			; a5 ed
B24_0200:		sta wInstrumentLastFreq_hi.w, x	; 9d 4d 01
B24_0203:		ora #$08		; 09 08

B24_0205:		jsr secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_0208:		bcs B24_0210 ; b0 06

B24_020a:		sta SND_FREQ_HI.w, x	; 9d 03 40
B24_020d:		jsr b18_waitAFewCycles2		; 20 53 87

B24_0210:		lda wSoundFrequency			; a5 ec
B24_0212:		ldx wCurrInstrumentIdx			; a6 ee
B24_0214:		cpx #$03		; e0 03
B24_0216:		bcs B24_021b ; b0 03

; instrument is 1st sq1, 1st sq2, tri
B24_0218:		sta wInstrumentLastFreq_lo.w, x	; 9d 78 01
B24_021b:		jsr secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_021e:		bcs B24_0226 ; b0 06

B24_0220:		sta SND_FREQ_LO.w, x	; 9d 02 40
B24_0223:		jsr b18_waitAFewCycles2		; 20 53 87

B24_0226:		ldx wCurrInstrumentIdx			; a6 ee
B24_0228:		rts				; 60 


func_18_0229:
; preserve Y
B24_0229:		sty wGenericTempVar			; 84 e2

B24_022b:		lda $06af, x	; bd af 06
B24_022e:		cpx #$00		; e0 00
B24_0230:		beq B24_0234 ; f0 02

B24_0232:		ora #$04		; 09 04
B24_0234:		tay				; a8 

B24_0235:		lda wSoundFrequency+1			; a5 ed
B24_0237:		sta $06bf, y	; 99 bf 06
B24_023a:		lda wSoundFrequency			; a5 ec
B24_023c:		sta $06b5, y	; 99 b5 06

B24_023f:		lda $06ac, x	; bd ac 06
B24_0242:		and #$40		; 29 40
B24_0244:		beq B24_0261 ; f0 1b

B24_0246:		lda $06ac, x	; bd ac 06
B24_0249:		and #$bf		; 29 bf
B24_024b:		sta $06ac, x	; 9d ac 06
B24_024e:		lda #$03		; a9 03
B24_0250:		sta $e4			; 85 e4

B24_0252:		iny				; c8 
B24_0253:		lda wSoundFrequency+1			; a5 ed
B24_0255:		sta $06bf, y	; 99 bf 06
B24_0258:		lda wSoundFrequency			; a5 ec
B24_025a:		sta $06b5, y	; 99 b5 06
B24_025d:		dec $e4			; c6 e4
B24_025f:		bne B24_0252 ; d0 f1

; restore Y
B24_0261:		ldy wGenericTempVar			; a4 e2
B24_0263:		inc $06af, x	; fe af 06
B24_0266:		lda $06af, x	; bd af 06
B24_0269:		and #$03		; 29 03
B24_026b:		sta $06af, x	; 9d af 06
B24_026e:		rts				; 60 


adjustInstrumentFrequency:
	lda wInstrumentFrequencyAdjust.w, x
	sta wCurrFrequencyAdjust
	beq @done

	bpl @higherNote

; frequency += adjust, ie lower note
	and #$7f
	sta wCurrFrequencyAdjust
	lda wSoundFrequency
	clc
	adc wCurrFrequencyAdjust
	sta wSoundFrequency
	bcc @done

	inc wSoundFrequency+1
@done:
	rts

; frequency -= adjust, ie higher note
@higherNote:
	lda wSoundFrequency
	sec
	sbc wCurrFrequencyAdjust
	sta wSoundFrequency
	bcs +
	dec wSoundFrequency+1
+	rts


; instrument 5 from below
B24_0294:		jsr updateCurrInstrumentDataAddr		; 20 c6 86
B24_0297:		dey				; 88 
B24_0298:		jmp func_18_0058		; 4c 58 80


func_18_029b:
B24_029b:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_029d:		and #$0f		; 29 0f

func_18_029f:
; val in 100,x = (A+1) * 10e,x
B24_029f:		sta $e2			; 85 e2
B24_02a1:		beq B24_02b0 ; f0 0d

B24_02a3:		lda w10e.w, x	; bd 0e 01
B24_02a6:		clc				; 18 
B24_02a7:		adc w10e.w, x	; 7d 0e 01
B24_02aa:		dec $e2			; c6 e2
B24_02ac:		bne B24_02a6 ; d0 f8

B24_02ae:		beq B24_02b3 ; f0 03

B24_02b0:		lda w10e.w, x	; bd 0e 01
B24_02b3:		sta wInstrumentsFramesUntilNextByteProcessed.w, x	; 9d 00 01

B24_02b6:		cpx #$05		; e0 05
B24_02b8:		beq B24_0294 ; f0 da

B24_02ba:		cpx #$02		; e0 02
B24_02bc:		beq B24_02e7 ; @done

; instrument not 2 or 5
B24_02be:		lda w16e.w, x	; bd 6e 01
B24_02c1:		and #$10		; 29 10
B24_02c3:		beq B24_02d9 ; f0 14

B24_02c5:		lda $03db, x	; bd db 03
B24_02c8:		sta $03de, x	; 9d de 03
B24_02cb:		inc $03de, x	; fe de 03
B24_02ce:		lda #$00		; a9 00
B24_02d0:		sta wInstrumentsEnvelopeIdx.w, x	; 9d a6 06
B24_02d3:		sta $06a9, x	; 9d a9 06
B24_02d6:		sta wInstrumentEnvelopeLoopToIdx.w, x	; 9d a0 06

B24_02d9:		lda w3cf.w, x	; bd cf 03
B24_02dc:		jsr func_18_02e8		; 20 e8 82
B24_02df:		sta w3cc.w, x	; 9d cc 03

B24_02e2:		lda #$01		; a9 01
B24_02e4:		sta $03d5, x	; 9d d5 03
B24_02e7:		rts				; 60 


func_18_02e8:
B24_02e8:		and #$0f		; 29 0f
B24_02ea:		sta $e2			; 85 e2

B24_02ec:		lda #$00		; a9 00
B24_02ee:		sta $e4			; 85 e4
B24_02f0:		sta $e5			; 85 e5

; e2 * 100,x into e4/e5
B24_02f2:		dec $e2			; c6 e2
B24_02f4:		bmi B24_0304 ; 30 0e

B24_02f6:		clc				; 18 
B24_02f7:		lda wInstrumentsFramesUntilNextByteProcessed.w, x	; bd 00 01
B24_02fa:		adc $e4			; 65 e4
B24_02fc:		sta $e4			; 85 e4
B24_02fe:		bcc B24_02f2 ; 90 f2

B24_0300:		inc $e5			; e6 e5
B24_0302:		bne B24_02f2 ; d0 ee

; e4/e5 *= 16, but just return high byte
B24_0304:		asl a			; 0a
B24_0305:		rol $e5			; 26 e5
B24_0307:		asl a			; 0a
B24_0308:		rol $e5			; 26 e5
B24_030a:		asl a			; 0a
B24_030b:		rol $e5			; 26 e5
B24_030d:		asl a			; 0a
B24_030e:		rol $e5			; 26 e5
B24_0310:		lda $e5			; a5 e5
B24_0312:		rts				; 60 


secIf2ndSquareInUseElseRetHwRegOffset:
	pha
	cpx #$00
	beq @firstSQ1

	cpx #$01
	beq @firstSQ2

@retClc:
	clc

@done:
	lda @currInstrHwRegOffset.w, x
	tax
	pla
	rts

@currInstrHwRegOffset:
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <TRI_LINEAR
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <NOISE_VOL
	.db <NOISE_VOL

@firstSQ1:
	lda wInstrumentsSoundIdxes.w+SQ1_2
	beq @retClc

; 2nd square 1 exists, set carry
; (dont update freq for 1st)
	sec
	bne @done

@firstSQ2:
	lda wInstrumentsSoundIdxes.w+SQ2_2
	beq @retClc

	sec
	bne @done


controlSoundByte_cx:
B24_033a:		jsr func_18_029f		; 20 9f 82
B24_033d:		lda #$00		; a9 00
B24_033f:		cpx #$02		; e0 02
B24_0341:		bne B24_0349 ; d0 06

B24_0343:		jsr silenceTriSetBank18h		; 20 7c 86
B24_0346:		jmp B24_0356		; 4c 56 83

B24_0349:		lda #$30		; a9 30
B24_034b:		jsr secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_034e:		bcs B24_0356 ; b0 06

B24_0350:		sta SND_VOL.w, x	; 9d 00 40
B24_0353:		jsr b18_waitAFewCycles2		; 20 53 87

B24_0356:		ldx wCurrInstrumentIdx			; a6 ee
B24_0358:		lda w115.w, x	; bd 15 01
B24_035b:		ora #$40		; 09 40
B24_035d:		sta w115.w, x	; 9d 15 01
B24_0360:		jmp updateCurrInstrumentDataAddr_setAndSaveBank18h		; 4c d6 86


controlSoundByte_dx:
B24_0363:		sta w10e.w, x	; 9d 0e 01
B24_0366:		iny				; c8 
B24_0367:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0369:		cpx #$02		; e0 02
B24_036b:		beq B24_03a0 ; f0 33

B24_036d:		and #$f0		; 29 f0
B24_036f:		sta $0162, x	; 9d 62 01
B24_0372:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0374:		and #$0f		; 29 0f
B24_0376:		sta $015b, x	; 9d 5b 01

B24_0379:		iny				; c8 
B24_037a:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_037c:		sta w189.w, x	; 9d 89 01
B24_037f:		bpl B24_0385 ; 10 04

B24_0381:		lda #$00		; a9 00
B24_0383:		beq B24_0388 ; f0 03

B24_0385:		lda $015b, x	; bd 5b 01

B24_0388:		sta w169.w, x	; 9d 69 01

B24_038b:		iny				; c8 

func_18_038c:
B24_038c:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_038e:		and #$0f		; 29 0f
B24_0390:		sta w3cf.w, x	; 9d cf 03
B24_0393:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0395:		lsr a			; 4a
B24_0396:		lsr a			; 4a
B24_0397:		lsr a			; 4a
B24_0398:		lsr a			; 4a
B24_0399:		sta $03d2, x	; 9d d2 03
B24_039c:		iny				; c8 
B24_039d:		jmp processNextSoundByte		; 4c 01 80

; if instrument is 2 (tri), store sound byte in 15d, then continue
B24_03a0:		sta $015d		; 8d 5d 01
B24_03a3:		iny				; c8 
B24_03a4:		jmp processNextSoundByte		; 4c 01 80


controlSoundByte_ex:
; preserve A
B24_03a7:		sta wGenericTempVar			; 85 e2

; strip off instruments bit 7
B24_03a9:		lda w16e.w, x	; bd 6e 01
B24_03ac:		and #$7f		; 29 7f
B24_03ae:		sta w16e.w, x	; 9d 6e 01

; A back to param
B24_03b1:		lda wGenericTempVar			; a5 e2
B24_03b3:		cmp #$06		; c9 06
B24_03b5:		bcs B24_03be ; controlByte_e6plus

; e0 to e5
B24_03b7:		sta $017d, x	; 9d 7d 01
B24_03ba:		iny				; c8 
B24_03bb:		jmp processNextSoundByte		; 4c 01 80

@controlByte_e6plus:
B24_03be:		and #$0f		; 29 0f
	sec
	sbc #$06
	asl a
	tax
	lda soundByte_e6plusFuncs.w, x
	sta wSoundBankJumpAddr
	lda soundByte_e6plusFuncs.w+1, x
	sta wSoundBankJumpAddr+1
	ldx wCurrInstrumentIdx
	jmp (wSoundBankJumpAddr)


soundByte_e6plusFuncs:
	.dw controlSoundByte_e6 ; 6
	.dw controlSoundByte_e7
	.dw controlSoundByte_e8
	.dw controlSoundByte_e9
	.dw controlSoundByte_ea
	.dw controlSoundByte_eb ; b
	.dw controlSoundByte_ec
	.dw controlSoundByte_ed_ef ; d
	.dw controlSoundByte_ee
	.dw controlSoundByte_ed_ef ; f

controlSoundByte_e6:
B24_03e8:		iny
B24_03e9:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_03eb:		sta w10e.w, x	; 9d 0e 01
B24_03ee:		lda w16e.w, x	; bd 6e 01
B24_03f1:		bpl B24_03fb ; 10 08

B24_03f3:		lda w10e.w, x	; bd 0e 01
B24_03f6:		and #$0f		; 29 0f
B24_03f8:		sta w10e.w, x	; 9d 0e 01
B24_03fb:		iny				; c8 
B24_03fc:		jmp processNextSoundByte		; 4c 01 80


controlSoundByte_e7:
B24_03ff:		iny				; c8 
B24_0400:		lda w16e.w, x	; bd 6e 01
B24_0403:		ora #$80		; 09 80
B24_0405:		sta w16e.w, x	; 9d 6e 01

func_18_0408:
B24_0408:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_040a:		and #$f0		; 29 f0
B24_040c:		lsr a			; 4a
B24_040d:		lsr a			; 4a
B24_040e:		lsr a			; 4a
B24_040f:		tax				; aa 
B24_0410:		dey				; 88 
B24_0411:		lda data_18_0420.w, x	; bd 20 84
B24_0414:		sta wSoundBankJumpAddr			; 85 e2
B24_0416:		lda data_18_0420.w+1, x	; bd 21 84
B24_0419:		sta wSoundBankJumpAddr+1			; 85 e3
B24_041b:		ldx wCurrInstrumentIdx			; a6 ee
B24_041d:		jmp (wSoundBankJumpAddr)


data_18_0420:
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434
	.dw func_18_0434

func_18_0434:
B24_0434:		iny
B24_0435:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0437:		sta w189.w, x	; 9d 89 01
B24_043a:		lda w16e.w, x	; bd 6e 01
B24_043d:		and #$7f		; 29 7f
B24_043f:		sta w16e.w, x	; 9d 6e 01
B24_0442:		iny				; c8 
B24_0443:		jmp processNextSoundByte		; 4c 01 80


controlSoundByte_e8:
B24_0446:		iny				; c8 
B24_0447:		jmp func_18_038c		; 4c 8c 83


controlSoundByte_e9:
B24_044a:		iny				; c8 
B24_044b:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_044d:		beq B24_0464 ; f0 15

B24_044f:		and #$0f		; 29 0f
B24_0451:		beq B24_0474 ; f0 21

B24_0453:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0455:		sta $03d8, x	; 9d d8 03
B24_0458:		lda w16e.w, x	; bd 6e 01
B24_045b:		ora #$20		; 09 20
B24_045d:		sta w16e.w, x	; 9d 6e 01

iny_processNextSoundByte:
B24_0460:		iny				; c8 
B24_0461:		jmp processNextSoundByte		; 4c 01 80


B24_0464:		lda w16e.w, x	; bd 6e 01
B24_0467:		and #$df		; 29 df
B24_0469:		sta w16e.w, x	; 9d 6e 01
B24_046c:		lda #$00		; a9 00
B24_046e:		sta $03d8, x	; 9d d8 03
B24_0471:		jmp iny_processNextSoundByte		; 4c 60 84


B24_0474:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0476:		sta $0162, x	; 9d 62 01
B24_0479:		jmp iny_processNextSoundByte		; 4c 60 84


controlSoundByte_ea:
B24_047c:		iny				; c8 
B24_047d:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_047f:		bmi B24_0489 ; 30 08

B24_0481:		asl a			; 0a

B24_0482:		sta $0180, x	; 9d 80 01
B24_0485:		iny				; c8 
B24_0486:		jmp processNextSoundByte		; 4c 01 80

B24_0489:		asl a			; 0a
B24_048a:		ora #$80		; 09 80
B24_048c:		jmp B24_0482		; 4c 82 84


controlSoundByte_eb:
B24_048f:		iny				; c8 
B24_0490:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0492:		beq B24_04d2 ; f0 3e

; byte - $50 into 6a3, x
B24_0494:		sec				; 38 
B24_0495:		sbc #$50		; e9 50
B24_0497:		sta wInstrumentsCurrEnvelopeInUse.w, x	; 9d a3 06

; set bit 4
B24_049a:		lda w16e.w, x	; bd 6e 01
B24_049d:		ora #$10		; 09 10
B24_049f:		sta w16e.w, x	; 9d 6e 01

B24_04a2:		iny				; c8 
B24_04a3:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_04a5:		and #$f0		; 29 f0
B24_04a7:		lsr a			; 4a
B24_04a8:		lsr a			; 4a
B24_04a9:		lsr a			; 4a
B24_04aa:		lsr a			; 4a
B24_04ab:		cmp #$00		; c9 00
B24_04ad:		beq B24_04c5 ; f0 16

B24_04af:		sta $e2			; 85 e2
B24_04b1:		dec $e2			; c6 e2
B24_04b3:		beq B24_04c2 ; f0 0d

B24_04b5:		lda w10e.w, x	; bd 0e 01
B24_04b8:		clc				; 18 
B24_04b9:		adc w10e.w, x	; 7d 0e 01
B24_04bc:		dec $e2			; c6 e2
B24_04be:		bne B24_04b9 ; d0 f9

B24_04c0:		beq B24_04c5 ; f0 03

B24_04c2:		lda w10e.w, x	; bd 0e 01
B24_04c5:		sta $03db, x	; 9d db 03
B24_04c8:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_04ca:		and #$0f		; 29 0f
B24_04cc:		sta wInstrumentEnvelopeMultiplier.w, x	; 9d e1 03
B24_04cf:		jmp iny_processNextSoundByte		; 4c 60 84

; reset bit 4
B24_04d2:		lda w16e.w, x	; bd 6e 01
B24_04d5:		and #$ef		; 29 ef
B24_04d7:		sta w16e.w, x	; 9d 6e 01
B24_04da:		jmp iny_processNextSoundByte		; 4c 60 84


controlSoundByte_ec:
B24_04dd:		iny				; c8 
B24_04de:		lda w16e.w, x	; bd 6e 01
B24_04e1:		bpl B24_04eb ; 10 08

B24_04e3:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_04e5:		and #$0f		; 29 0f
B24_04e7:		beq B24_0506 ; f0 1d

B24_04e9:		bne B24_04ef ; d0 04

B24_04eb:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_04ed:		beq B24_0506 ; f0 17

B24_04ef:		cmp #$04		; c9 04
B24_04f1:		bcc B24_04f8 ; 90 05

B24_04f3:		sec				; 38 
B24_04f4:		sbc #$03		; e9 03
B24_04f6:		ora #$10		; 09 10
B24_04f8:		ora #$40		; 09 40
B24_04fa:		sta $06ac, x	; 9d ac 06
B24_04fd:		lda #$00		; a9 00
B24_04ff:		sta $06af, x	; 9d af 06
B24_0502:		iny				; c8 
B24_0503:		jmp processNextSoundByte		; 4c 01 80


B24_0506:		lda #$80		; a9 80
B24_0508:		sta $06ac, x	; 9d ac 06
B24_050b:		bne B24_0502 ; d0 f5

controlSoundByte_ed_ef:
B24_050d:		iny				; c8 
B24_050e:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0510:		sta wInstrumentFrequencyAdjust.w, x	; 9d 73 01
B24_0513:		lda w115.w, x	; bd 15 01
B24_0516:		iny				; c8 
B24_0517:		jmp func_1f_01fa		; 4c fa e1

; set global delay frames
controlSoundByte_ee:
B24_051a:		iny				; c8 
B24_051b:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_051d:		sta wSoundGlobalDelayFrames.w		; 8d 8e 01
B24_0520:		iny				; c8 
B24_0521:		jmp processNextSoundByte		; 4c 01 80


B24_0524:		lda wLoopToAddr_lo.w, x	; bd 31 01
B24_0527:		sta wInstrumentData_lo.w, x	; 9d 23 01
B24_052a:		lda wLoopToAddr_hi.w, x	; bd 38 01
B24_052d:		sta wInstrumentData_hi.w, x	; 9d 2a 01
B24_0530:		jmp func_18_0566		; 4c 66 85


controlSoundByte_fe:
B24_0533:		iny				; c8 
B24_0534:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0536:		cmp #$ff		; c9 ff
B24_0538:		bne B24_055c ; d0 22

; fe followed by ff - jump to following address
	iny
	lda (wCurrInstrumentDataAddr), y
	sta wInstrumentData_lo.w, x
	sta wNextInstrumentDataAddr_lo
	iny
	lda (wCurrInstrumentDataAddr), y
	sta wInstrumentData_hi.w, x
	sta wCurrInstrumentDataAddr+1

; finally set new low byte
	lda wNextInstrumentDataAddr_lo
	sta wCurrInstrumentDataAddr

B24_054e:		ldy #$00		; a0 00
B24_0550:		lda w115.w, x	; bd 15 01
B24_0553:		lsr a			; 4a
B24_0554:		bcs B24_0559 ; b0 03

B24_0556:		jmp processNextSoundByte		; 4c 01 80

B24_0559:		jmp func_1f_0204		; 4c 04 e2

; fe followed by not ff
B24_055c:		inc wSoundCtrsForLastLoop.w, x	; fe 1c 01
B24_055f:		cmp wSoundCtrsForLastLoop.w, x	; dd 1c 01
B24_0562:		beq B24_0574 ; f0 10

B24_0564:		bcs B24_0524 ; b0 be

func_18_0566:
B24_0566:		ldy #$00		; a0 00
B24_0568:		lda wInstrumentData_lo.w, x	; bd 23 01
B24_056b:		sta wCurrInstrumentDataAddr			; 85 e0
B24_056d:		lda wInstrumentData_hi.w, x	; bd 2a 01
B24_0570:		sta wCurrInstrumentDataAddr+1			; 85 e1
B24_0572:		bne B24_0550 ; d0 dc

B24_0574:		lda #$00		; a9 00
B24_0576:		sta wSoundCtrsForLastLoop.w, x	; 9d 1c 01
B24_0579:		lda w115.w, x	; bd 15 01
B24_057c:		and #$f7		; 29 f7
B24_057e:		sta w115.w, x	; 9d 15 01
B24_0581:		iny				; c8 
B24_0582:		tya				; 98 
B24_0583:		clc				; 18 
B24_0584:		adc $e0			; 65 e0
B24_0586:		sta $e0			; 85 e0
B24_0588:		lda #$00		; a9 00
B24_058a:		tay				; a8 
B24_058b:		adc $e1			; 65 e1
B24_058d:		sta $e1			; 85 e1
B24_058f:		lda w115.w, x	; bd 15 01
B24_0592:		lsr a			; 4a
B24_0593:		bcs B24_0598 ; b0 03

B24_0595:		jmp processNextSoundByte		; 4c 01 80

B24_0598:		lda w115.w, x	; bd 15 01
B24_059b:		and #$fb		; 29 fb
B24_059d:		sta w115.w, x	; 9d 15 01
B24_05a0:		jmp func_1f_0204		; 4c 04 e2


controlSoundByte_fx:
B24_05a3:		cmp #$0e		; c9 0e
B24_05a5:		beq controlSoundByte_fe ; f0 8c

	bcc +

B24_05a9:		jmp controlSoundByte_ff		; 4c 4e 86

+	cmp #$0d		; c9 0d
B24_05ae:		beq controlSoundByte_fd ; f0 5f

B24_05b0:		cmp #$0b		; c9 0b
B24_05b2:		beq controlSoundByte_fb ; f0 0f

; redundant get param again
B24_05b4:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_05b6:		and #$0f		; 29 0f
B24_05b8:		sta w169.w, x	; 9d 69 01
B24_05bb:		cpx #$02		; e0 02
B24_05bd:		beq B24_05dd ; f0 1e

B24_05bf:		iny				; c8 
B24_05c0:		jmp processNextSoundByte		; 4c 01 80

controlSoundByte_fb:
B24_05c3:		iny				; c8 
B24_05c4:		tya				; 98 
B24_05c5:		clc				; 18 
B24_05c6:		adc wCurrInstrumentDataAddr			; 65 e0
B24_05c8:		sta wLoopToAddr_lo.w, x	; 9d 31 01
B24_05cb:		lda #$00		; a9 00
B24_05cd:		adc wCurrInstrumentDataAddr+1			; 65 e1
B24_05cf:		sta wLoopToAddr_hi.w, x	; 9d 38 01
B24_05d2:		lda w115.w, x	; bd 15 01
B24_05d5:		ora #$08		; 09 08
B24_05d7:		sta w115.w, x	; 9d 15 01
B24_05da:		jmp func_1f_01fa		; 4c fa e1

; fx for triangle
B24_05dd:		lda w16e.w, x	; bd 6e 01
B24_05e0:		ora #$80		; 09 80
B24_05e2:		sta w16e.w, x	; 9d 6e 01
B24_05e5:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_05e7:		and #$0f		; 29 0f
B24_05e9:		sta $e4			; 85 e4
B24_05eb:		jsr func_18_029f		; 20 9f 82
B24_05ee:		lda $e4			; a5 e4
B24_05f0:		jsr func_18_00e5		; 20 e5 80
B24_05f3:		lda wInstrumentFrequency_lo.w, x	; bd 83 01
B24_05f6:		sta wSoundFrequency			; 85 ec
B24_05f8:		lda wInstrumentFrequency_hi.w, x	; bd 86 01
B24_05fb:		sta wSoundFrequency+1			; 85 ed
B24_05fd:		lsr wSoundFrequency+1			; 46 ed
B24_05ff:		ror wSoundFrequency			; 66 ec
B24_0601:		jsr func_18_01fe		; 20 fe 81
B24_0604:		lda w16e.w, x	; bd 6e 01
B24_0607:		and #$7f		; 29 7f
B24_0609:		sta w16e.w, x	; 9d 6e 01
B24_060c:		jmp updateCurrInstrumentDataAddr_setAndSaveBank18h		; 4c d6 86


controlSoundByte_fd:
B24_060f:		lda w115.w, x	; bd 15 01
B24_0612:		and #$20		; 29 20
B24_0614:		beq B24_0619 ; f0 03

B24_0616:		jmp B24_0637		; 4c 37 86

B24_0619:		jsr soundDataJumpToFollowingAddress		; 20 e8 86
B24_061c:		iny				; c8 
B24_061d:		tya				; 98 
B24_061e:		clc				; 18 
B24_061f:		adc $e0			; 65 e0
B24_0621:		sta $013f, x	; 9d 3f 01
B24_0624:		lda #$00		; a9 00
B24_0626:		tay				; a8 
B24_0627:		adc $e1			; 65 e1
B24_0629:		sta $0146, x	; 9d 46 01
B24_062c:		lda w115.w, x	; bd 15 01
B24_062f:		ora #$20		; 09 20
B24_0631:		sta w115.w, x	; 9d 15 01
B24_0634:		jmp func_18_0566		; 4c 66 85

B24_0637:		lda $013f, x	; bd 3f 01
B24_063a:		sta $e0			; 85 e0
B24_063c:		lda $0146, x	; bd 46 01
B24_063f:		sta $e1			; 85 e1
B24_0641:		lda w115.w, x	; bd 15 01
B24_0644:		and #$df		; 29 df
B24_0646:		sta w115.w, x	; 9d 15 01
B24_0649:		ldy #$00		; a0 00
B24_064b:		jmp func_1f_01fa		; 4c fa e1


; silence channel
controlSoundByte_ff:
B24_064e:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0651:		sta $e4			; 85 e4
B24_0653:		lda #$00		; a9 00
B24_0655:		sta wInstrumentsSoundIdxes.w, x	; 9d 07 01
B24_0658:		txa				; 8a 
B24_0659:		asl a			; 0a
B24_065a:		tax				; aa 
B24_065b:		lda silenceFuncs.w, x	; bd f5 86
B24_065e:		sta wSoundBankJumpAddr			; 85 e2
B24_0660:		lda silenceFuncs.w+1, x	; bd f6 86
B24_0663:		sta wSoundBankJumpAddr+1			; 85 e3
B24_0665:		ldx wCurrInstrumentIdx			; a6 ee
B24_0667:		jmp (wSoundBankJumpAddr)


silenceSndChannelIf2ndInUse:
B24_066a:		lda #$30		; a9 30
B24_066c:		jsr secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_066f:		bcs B24_0677 ; b0 06

B24_0671:		sta SND_VOL.w, x	; 9d 00 40
B24_0674:		jsr b18_waitAFewCycles2		; 20 53 87

B24_0677:		ldx wCurrInstrumentIdx			; a6 ee
B24_0679:		jmp setAndSaveLowerBank18h		; 4c a6 e1


silenceTriSetBank18h:
B24_067c:		lda #$00		; a9 00
B24_067e:		sta TRI_LINEAR.w		; 8d 08 40
B24_0681:		jmp setAndSaveLowerBank18h		; 4c a6 e1


func_18_0684:
B24_0684:		ldx wCurrInstrumentHwRegOffset.w		; ae 8c 01

B24_0687:		lda #$30		; a9 30
B24_0689:		sta SND_VOL.w, x	; 9d 00 40
B24_068c:		jsr b18_waitAFewCycles2		; 20 53 87

B24_068f:		lda #$7f		; a9 7f
B24_0691:		sta SND_SWEEP.w, x	; 9d 01 40
B24_0694:		jsr b18_waitAFewCycles2		; 20 53 87

B24_0697:		ldx wCurrInstrumentIdx			; a6 ee
B24_0699:		lda w115.w, x	; bd 15 01
B24_069c:		and #$f9		; 29 f9
B24_069e:		sta w115.w, x	; 9d 15 01

B24_06a1:		lda #$00		; a9 00
B24_06a3:		sta wInstrumentFrequencyAdjust.w, x	; 9d 73 01
B24_06a6:		lda wInstrumentsFramesUntilNextByteProcessed.w+SQ2_2, x	; bd 04 01
B24_06a9:		beq B24_06b6 ; f0 0b

B24_06ab:		ldx wCurrInstrumentIdx			; a6 ee
B24_06ad:		dex				; ca 
B24_06ae:		dex				; ca 
B24_06af:		dex				; ca 
B24_06b0:		ldy wCurrInstrumentHwRegOffset.w		; ac 8c 01
B24_06b3:		jsr func_1f_020c		; 20 0c e2

B24_06b6:		ldx wCurrInstrumentIdx			; a6 ee
B24_06b8:		jmp setAndSaveLowerBank18h		; 4c a6 e1


silenceNoiseSetBank18h:
B24_06bb:		lda #$30		; a9 30
B24_06bd:		sta NOISE_VOL.w		; 8d 0c 40
B24_06c0:		jsr b18_waitAFewCycles2		; 20 53 87
B24_06c3:		jmp setAndSaveLowerBank18h		; 4c a6 e1


updateCurrInstrumentDataAddr:
; iny to point to next byte to process next time
	iny
	tya
	clc
	adc wCurrInstrumentDataAddr
	sta wInstrumentData_lo.w, x
	lda #$00
	adc wCurrInstrumentDataAddr+1
	sta wInstrumentData_hi.w, x
	rts


updateCurrInstrumentDataAddr_setAndSaveBank18h:
; as above, except last lien
	iny
	tya
	clc
	adc wCurrInstrumentDataAddr
	sta wInstrumentData_lo.w, x
	lda #$00
	adc wCurrInstrumentDataAddr+1
	sta wInstrumentData_hi.w, x
	jmp setAndSaveLowerBank18h


soundDataJumpToFollowingAddress:
	iny
	lda (wCurrInstrumentDataAddr), y
	sta wInstrumentData_lo.w, x
	iny
	lda (wCurrInstrumentDataAddr), y
	sta wInstrumentData_hi.w, x
	rts


silenceFuncs:
	.dw silenceSndChannelIf2ndInUse
	.dw silenceSndChannelIf2ndInUse
	.dw silenceTriSetBank18h
	.dw func_18_0684
	.dw func_18_0684
	.dw silenceNoiseSetBank18h
	.dw silenceSndChannelIf2ndInUse


controlSoundByteFuncs:
	.dw controlSoundByte_cx
	.dw controlSoundByte_dx
	.dw controlSoundByte_ex
	.dw controlSoundByte_fx


lowerFrequencyData:
	.dw $0d5c ; C1
	.dw $0c9c
	.dw $0be8
	.dw $0b3c
	.dw $0a9c
	.dw $0a02
	.dw $0972
	.dw $08ec
	.dw $086c
	.dw $07f2
	.dw $0780
	.dw $0714 ; B1

higherFrequencyData:
	.dw $06ae ; C2
	.dw $064e ; C#2
	.dw $05f4
	.dw $059e
	.dw $054e
	.dw $0501
	.dw $04b9
	.dw $0476
	.dw $0436
	.dw $03f9
	.dw $03c0
	.dw $038a ; B2
	.dw $0357 ; C3
	.dw $0327 ; C#3
	.dw $02fa
	.dw $02cf
	.dw $02a7
	.dw $0281
	.dw $025d
	.dw $023b
	.dw $021b
	.dw $01fd
	.dw $01e0
	.dw $01c5 ; B3


b18_waitAFewCycles2:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rts
