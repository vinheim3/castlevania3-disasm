B3_0000:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0003:		ldy #$75		; a0 75
B3_0005:		sty $4b			; 84 4b
B3_0007:		iny				; c8 
B3_0008:		sty $4c			; 84 4c
B3_000a:		jmp irqFunc_end		; 4c 3a e1


B3_000d:		jsr func_03_0097		; 20 97 a0
B3_0010:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_0013:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0016:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_0019:		lda $89			; a5 89
B3_001b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_001e:		inc $6d			; e6 6d
B3_0020:		jmp $e13f		; 4c 3f e1


B3_0023:		ldy #$12		; a0 12
B3_0025:		dey				; 88 
B3_0026:		bne B3_0025 ; d0 fd

B3_0028:		lda $70			; a5 70
B3_002a:		and #$01		; 29 01
B3_002c:		ora #$b0		; 09 b0
B3_002e:		tay				; a8 
B3_002f:		ldx #$00		; a2 00
B3_0031:		lda PPUSTATUS.w		; ad 02 20
B3_0034:		lda #$29		; a9 29
B3_0036:		sta PPUADDR.w		; 8d 06 20
B3_0039:		stx $2006		; 8e 06 20
B3_003c:		lda $6f			; a5 6f
B3_003e:		sta PPUSCROLL.w		; 8d 05 20
B3_0041:		lda #$00		; a9 00
B3_0043:		sta PPUSCROLL.w		; 8d 05 20
B3_0046:		sty $2000		; 8c 00 20
B3_0049:		lda #$a4		; a9 a4
B3_004b:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_004e:		lda $1a			; a5 1a
B3_0050:		and #$01		; 29 01
B3_0052:		bne B3_0057 ; d0 03

B3_0054:		jsr setClearedChrBank_0_to_c00		; 20 13 e3
B3_0057:		jmp irqFunc_end		; 4c 3a e1


B3_005a:		lda $07ed		; ad ed 07
B3_005d:		beq B3_0071 ; f0 12

B3_005f:		tax				; aa 
B3_0060:		tay				; a8 
B3_0061:		jsr setClearedPatternTable		; 20 2d e3
B3_0064:		lda #$0b		; a9 0b
B3_0066:		sta $44			; 85 44
B3_0068:		nop				; ea 
B3_0069:		dec $44			; c6 44
B3_006b:		bne B3_0068 ; d0 fb

B3_006d:		nop				; ea 
B3_006e:		dey				; 88 
B3_006f:		bne B3_0064 ; d0 f3

B3_0071:		lda PPUSTATUS.w		; ad 02 20
B3_0074:		lda #$20		; a9 20
B3_0076:		sta PPUADDR.w		; 8d 06 20
B3_0079:		lda #$c0		; a9 c0
B3_007b:		sta PPUADDR.w		; 8d 06 20
B3_007e:		lda PPUSTATUS.w		; ad 02 20
B3_0081:		lda #$00		; a9 00
B3_0083:		sta PPUSCROLL.w		; 8d 05 20
B3_0086:		lda $57			; a5 57
B3_0088:		eor $75			; 45 75
B3_008a:		and #$01		; 29 01
B3_008c:		ora $ff			; 05 ff
B3_008e:		sta PPUCTRL.w		; 8d 00 20
B3_0091:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_0094:		jmp irqFunc_end		; 4c 3a e1


func_03_0097:
B3_0097:		ldx #$03		; a2 03
B3_0099:		jsr $e001		; 20 01 e0
B3_009c:		lda $75			; a5 75
B3_009e:		and #$01		; 29 01
B3_00a0:		sta $44			; 85 44
B3_00a2:		lda $70			; a5 70
B3_00a4:		and #$01		; 29 01
B3_00a6:		eor $44			; 45 44
B3_00a8:		ora #$b0		; 09 b0
B3_00aa:		tax				; aa 
B3_00ab:		lda PPUSTATUS.w		; ad 02 20
B3_00ae:		lda $6f			; a5 6f
B3_00b0:		sta PPUSCROLL.w		; 8d 05 20
B3_00b3:		lda #$00		; a9 00
B3_00b5:		sta PPUSCROLL.w		; 8d 05 20
B3_00b8:		stx PPUCTRL.w		; 8e 00 20
B3_00bb:		rts				; 60 


func_03_00bc:
B3_00bc:		jsr func_03_0097		; 20 97 a0
B3_00bf:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_00c2:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_00c5:		lda $7d			; a5 7d
B3_00c7:		and #$f0		; 29 f0
B3_00c9:		cmp #$40		; c9 40
B3_00cb:		beq B3_00d7 ; f0 0a

B3_00cd:		lda $b0			; a5 b0
B3_00cf:		beq B3_00d4 ; f0 03

B3_00d1:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_00d4:		jmp irqFunc_end		; 4c 3a e1


B3_00d7:		jsr $9f8d		; 20 8d 9f
B3_00da:		jmp $a0d4		; 4c d4 a0


B3_00dd:		ldy $0780		; ac 80 07
B3_00e0:		lda $6f			; a5 6f
B3_00e2:		clc				; 18 
B3_00e3:		adc $0783, y	; 79 83 07
B3_00e6:		sta $d5			; 85 d5
B3_00e8:		lda $70			; a5 70
B3_00ea:		adc #$00		; 69 00
B3_00ec:		sta $d6			; 85 d6
B3_00ee:		rts				; 60 


B3_00ef:		jsr func_03_0097		; 20 97 a0
B3_00f2:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_00f5:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_00f8:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_00fb:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_00fe:		lda $89			; a5 89
B3_0100:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0103:		lda $7d			; a5 7d
B3_0105:		and #$0f		; 29 0f
B3_0107:		tay				; a8 
B3_0108:		lda $a11d, y	; b9 1d a1
B3_010b:		sta $0780		; 8d 80 07
B3_010e:		jsr $a0dd		; 20 dd a0
B3_0111:		lda #$04		; a9 04
B3_0113:		clc				; 18 
B3_0114:		adc $89			; 65 89
B3_0116:		sta $43			; 85 43
B3_0118:		inc $6d			; e6 6d
B3_011a:		jmp $e13f		; 4c 3f e1


B3_011d:		rol $161e		; 2e 1e 16
B3_0120:		asl $02ad, x	; 1e ad 02
B3_0123:		jsr $d5a5		; 20 a5 d5
B3_0126:		sta PPUSCROLL.w		; 8d 05 20
B3_0129:		lda #$00		; a9 00
B3_012b:		sta PPUSCROLL.w		; 8d 05 20
B3_012e:		rts				; 60 


B3_012f:		ldx #$01		; a2 01
B3_0131:		jsr $e001		; 20 01 e0
B3_0134:		jsr $a121		; 20 21 a1
B3_0137:		inc $6d			; e6 6d
B3_0139:		jmp $a144		; 4c 44 a1


B3_013c:		ldx #$01		; a2 01
B3_013e:		jsr $e001		; 20 01 e0
B3_0141:		jsr $a121		; 20 21 a1
B3_0144:		lda #$00		; a9 00
B3_0146:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0149:		lda $43			; a5 43
B3_014b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_014e:		dec $0780		; ce 80 07
B3_0151:		dec $0780		; ce 80 07
B3_0154:		beq B3_0163 ; f0 0d

B3_0156:		lda #$04		; a9 04
B3_0158:		clc				; 18 
B3_0159:		adc $43			; 65 43
B3_015b:		sta $43			; 85 43
B3_015d:		jsr $a0dd		; 20 dd a0
B3_0160:		jmp $e13f		; 4c 3f e1


B3_0163:		lda #$2d		; a9 2d
B3_0165:		sta $6d			; 85 6d
B3_0167:		jmp $e13f		; 4c 3f e1


B3_016a:		jsr func_03_0097		; 20 97 a0
B3_016d:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_0170:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0173:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0176:		jmp irqFunc_end		; 4c 3a e1


B3_0179:		lda $89			; a5 89
B3_017b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_017e:		lda $6f			; a5 6f
B3_0180:		and #$07		; 29 07
B3_0182:		eor #$07		; 49 07
B3_0184:		clc				; 18 
B3_0185:		adc #$03		; 69 03
B3_0187:		adc $89			; 65 89
B3_0189:		sta $43			; 85 43
B3_018b:		inc $6d			; e6 6d
B3_018d:		jmp $e13f		; 4c 3f e1


func_03_0190:
B3_0190:		lda $43			; a5 43
B3_0192:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0195:		ldx #$0c		; a2 0c
B3_0197:		jsr $e001		; 20 01 e0
B3_019a:		jsr setClearedPatternTable		; 20 2d e3
B3_019d:		lda #NT_SINGLE_SCREEN_CIRAM_1		; a9 55
B3_019f:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_01a2:		lda $6f			; a5 6f
B3_01a4:		and #$07		; 29 07
B3_01a6:		clc				; 18 
B3_01a7:		adc #$01		; 69 01
B3_01a9:		adc $43			; 65 43
B3_01ab:		sta $43			; 85 43
B3_01ad:		lda #$00		; a9 00
B3_01af:		asl $6f			; 06 6f
B3_01b1:		rol a			; 2a
B3_01b2:		asl $6f			; 06 6f
B3_01b4:		rol a			; 2a
B3_01b5:		clc				; 18 
B3_01b6:		adc #$28		; 69 28
B3_01b8:		sta $70			; 85 70
B3_01ba:		inc $6d			; e6 6d
B3_01bc:		jmp $e13f		; 4c 3f e1


B3_01bf:		lda $43			; a5 43
B3_01c1:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_01c4:		ldx #$02		; a2 02
B3_01c6:		jsr $e001		; 20 01 e0
B3_01c9:		lda PPUSTATUS.w		; ad 02 20
B3_01cc:		ldx $6f			; a6 6f
B3_01ce:		lda $70			; a5 70
B3_01d0:		sta PPUADDR.w		; 8d 06 20
B3_01d3:		stx $2006		; 8e 06 20
B3_01d6:		lda #$00		; a9 00
B3_01d8:		sta PPUSCROLL.w		; 8d 05 20
B3_01db:		sta PPUSCROLL.w		; 8d 05 20
B3_01de:		lda #$b0		; a9 b0
B3_01e0:		sta PPUCTRL.w		; 8d 00 20
B3_01e3:		inc $6d			; e6 6d
B3_01e5:		jmp $e13f		; 4c 3f e1


B3_01e8:		ldx #$01		; a2 01
B3_01ea:		jsr $e001		; 20 01 e0
B3_01ed:		lda $4b			; a5 4b
B3_01ef:		ldy $4c			; a4 4c
B3_01f1:		ldx $4a			; a6 4a
B3_01f3:		sta CHR_BANK_0400_1400.w		; 8d 29 51
B3_01f6:		sty $512a		; 8c 2a 51
B3_01f9:		stx CHR_BANK_0000_1000.w		; 8e 28 51
B3_01fc:		lda $4d			; a5 4d
B3_01fe:		sta CHR_BANK_0c00_1c00.w		; 8d 2b 51
B3_0201:		sta CHR_BANK_1c00.w		; 8d 27 51
B3_0204:		stx CHR_BANK_1000.w		; 8e 24 51
B3_0207:		sty $5126		; 8c 26 51
B3_020a:		jsr chrSwitch_800_c00_1400		; 20 42 e3
B3_020d:		lda $7d			; a5 7d
B3_020f:		and #$f0		; 29 f0
B3_0211:		cmp #$40		; c9 40
B3_0213:		beq B3_0218 ; f0 03

B3_0215:		jmp irqFunc_end		; 4c 3a e1


B3_0218:		jsr $9f8d		; 20 8d 9f
B3_021b:		jmp $a215		; 4c 15 a2


B3_021e:		lda $43			; a5 43
B3_0220:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0223:		ldx #$01		; a2 01
B3_0225:		jsr $e001		; 20 01 e0
B3_0228:		lda PPUSTATUS.w		; ad 02 20
B3_022b:		ldx $6f			; a6 6f
B3_022d:		lda $70			; a5 70
B3_022f:		sta PPUADDR.w		; 8d 06 20
B3_0232:		stx $2006		; 8e 06 20
B3_0235:		lda #$00		; a9 00
B3_0237:		sta PPUSCROLL.w		; 8d 05 20
B3_023a:		sta PPUSCROLL.w		; 8d 05 20
B3_023d:		lda #$b0		; a9 b0
B3_023f:		sta PPUCTRL.w		; 8d 00 20
B3_0242:		lda $7c			; a5 7c
B3_0244:		sta $43			; 85 43
B3_0246:		inc $6d			; e6 6d
B3_0248:		jmp $e13f		; 4c 3f e1


B3_024b:		ldx #$01		; a2 01
B3_024d:		jsr $e001		; 20 01 e0
B3_0250:		jsr chrSwitch_800_c00_1400		; 20 42 e3
B3_0253:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_0256:		lda $43			; a5 43
B3_0258:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_025b:		jsr $a307		; 20 07 a3
B3_025e:		lda $0619		; ad 19 06
B3_0261:		sec				; 38 
B3_0262:		sbc $0630		; ed30 06
B3_0265:		sta $7c			; 85 7c
B3_0267:		lda $0630		; ad 30 06
B3_026a:		eor #$01		; 49 01
B3_026c:		sta $0630		; 8d 30 06
B3_026f:		inc $6d			; e6 6d
B3_0271:		jmp $e13f		; 4c 3f e1


B3_0274:		jsr func_03_0097		; 20 97 a0
B3_0277:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_027a:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_027d:		lda $89			; a5 89
B3_027f:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0282:		jsr $a307		; 20 07 a3
B3_0285:		lda $3f			; a5 3f
B3_0287:		cmp #$09		; c9 09
B3_0289:		bne B3_0294 ; d0 09

B3_028b:		lda $0619		; ad 19 06
B3_028e:		sec				; 38 
B3_028f:		sbc $0630		; ed30 06
B3_0292:		sta $42			; 85 42
B3_0294:		lda $0630		; ad 30 06
B3_0297:		eor #$01		; 49 01
B3_0299:		sta $0630		; 8d 30 06
B3_029c:		inc $6d			; e6 6d
B3_029e:		jmp $e13f		; 4c 3f e1


B3_02a1:		ldy #$05		; a0 05
B3_02a3:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02a6:		jsr $e005		; 20 05 e0
B3_02a9:		jsr chrSwitch_0_400		; 20 52 e3
B3_02ac:		jsr $e005		; 20 05 e0
B3_02af:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02b2:		jsr $e005		; 20 05 e0
B3_02b5:		jsr chrSwitch_0_400		; 20 52 e3
B3_02b8:		jsr $e005		; 20 05 e0
B3_02bb:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02be:		jsr $e005		; 20 05 e0
B3_02c1:		jsr chrSwitch_0_400		; 20 52 e3
B3_02c4:		jsr $e005		; 20 05 e0
B3_02c7:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02ca:		jsr $e005		; 20 05 e0
B3_02cd:		jsr chrSwitch_0_400		; 20 52 e3
B3_02d0:		ldx #$10		; a2 10
B3_02d2:		dex				; ca 
B3_02d3:		bne B3_02d2 ; d0 fd

B3_02d5:		nop				; ea 
B3_02d6:		dey				; 88 
B3_02d7:		bne B3_02a3 ; d0 ca

B3_02d9:		jmp irqFunc_end		; 4c 3a e1


B3_02dc:		jsr func_03_0097		; 20 97 a0
B3_02df:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_02e2:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_02e5:		jsr chrSwitch_0_400		; 20 52 e3
B3_02e8:		lda $89			; a5 89
B3_02ea:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_02ed:		inc $6d			; e6 6d
B3_02ef:		jmp $e13f		; 4c 3f e1


B3_02f2:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02f5:		jmp irqFunc_end		; 4c 3a e1


B3_02f8:		jsr func_03_0097		; 20 97 a0
B3_02fb:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_02fe:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0301:		jsr chrSwitch_0_400		; 20 52 e3
B3_0304:		jmp irqFunc_end		; 4c 3a e1


B3_0307:		lda #$00		; a9 00
B3_0309:		sta $0470		; 8d 70 04
B3_030c:		lda $0505		; ad 05 05
B3_030f:		bmi B3_033e ; 30 2d

B3_0311:		lda $0630		; ad 30 06
B3_0314:		beq B3_032d ; f0 17

B3_0316:		lda $05d4		; ad d4 05
B3_0319:		sec				; 38 
B3_031a:		sbc $0505		; ed05 05
B3_031d:		bcc B3_0327 ; 90 08

B3_031f:		cmp #$08		; c9 08
B3_0321:		bcc B3_0327 ; 90 04

B3_0323:		sta $0438		; 8d 38 04
B3_0326:		rts				; 60 


B3_0327:		lda #$80		; a9 80
B3_0329:		sta $0470		; 8d 70 04
B3_032c:		rts				; 60 


B3_032d:		lda $05d4		; ad d4 05
B3_0330:		clc				; 18 
B3_0331:		adc $0505		; 6d 05 05
B3_0334:		bcs B3_0327 ; b0 f1

B3_0336:		cmp #$f8		; c9 f8
B3_0338:		bcs B3_0327 ; b0 ed

B3_033a:		sta $0438		; 8d 38 04
B3_033d:		rts				; 60 


B3_033e:		lda $05d4		; ad d4 05
B3_0341:		sta $0438		; 8d 38 04
B3_0344:		rts				; 60 


B3_0345:		jsr func_03_0097		; 20 97 a0
B3_0348:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_034b:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_034e:		lda $89			; a5 89
B3_0350:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0353:		lda $7d			; a5 7d
B3_0355:		and #$0f		; 29 0f
B3_0357:		cmp #$02		; c9 02
B3_0359:		bcs B3_037e ; b0 23

B3_035b:		inc $0781		; ee 81 07
B3_035e:		lda $0781		; ad 81 07
B3_0361:		cmp #$06		; c9 06
B3_0363:		bcc B3_037e ; 90 19

B3_0365:		lda #$00		; a9 00
B3_0367:		sta $0781		; 8d 81 07
B3_036a:		ldy $0780		; ac 80 07
B3_036d:		iny				; c8 
B3_036e:		cpy #$03		; c0 03
B3_0370:		bcc B3_0374 ; 90 02

B3_0372:		ldy #$00		; a0 00
B3_0374:		sty $0780		; 8c 80 07
B3_0377:		lda $a390, y	; b9 90 a3
B3_037a:		sta wChrBankBG_0400			; 85 4b
B3_037c:		sta $4e			; 85 4e
B3_037e:		lda $7d			; a5 7d
B3_0380:		and #$0f		; 29 0f
B3_0382:		tay				; a8 
B3_0383:		lda $a393, y	; b9 93 a3
B3_0386:		clc				; 18 
B3_0387:		adc $89			; 65 89
B3_0389:		sta $43			; 85 43
B3_038b:		inc $6d			; e6 6d
B3_038d:		jmp $e13f		; 4c 3f e1


B3_0390:	.db $54
B3_0391:		eor $56, x		; 55 56
B3_0393:		bmi B3_03a5 ; 30 10

B3_0395:		;removed
	.db $30 $30

B3_0397:		;removed
	.db $30 $30

B3_0399:		;removed
	.db $30 $30

B3_039b:		lda $43			; a5 43
B3_039d:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03a0:		lda $43			; a5 43
B3_03a2:		clc				; 18 
B3_03a3:		adc #$40		; 69 40
B3_03a5:		sta $43			; 85 43
B3_03a7:		lda $7d			; a5 7d
B3_03a9:		and #$0f		; 29 0f
B3_03ab:		cmp #$02		; c9 02
B3_03ad:		bcc B3_03c6 ; 90 17

B3_03af:		tay				; a8 
B3_03b0:		dey				; 88 
B3_03b1:		dey				; 88 
B3_03b2:		lda $a3d4, y	; b9 d4 a3
B3_03b5:		cmp $57			; c5 57
B3_03b7:		beq B3_03cf ; f0 16

B3_03b9:		lda $1a			; a5 1a
B3_03bb:		and #$03		; 29 03
B3_03bd:		beq B3_03cf ; f0 10

B3_03bf:		bne B3_03cc ; d0 0b

B3_03c1:		lda $43			; a5 43
B3_03c3:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03c6:		lda $1a			; a5 1a
B3_03c8:		and #$01		; 29 01
B3_03ca:		beq B3_03cf ; f0 03

B3_03cc:		jsr setClearedChrBank_0_to_c00		; 20 13 e3
B3_03cf:		inc $6d			; e6 6d
B3_03d1:		jmp $e13f		; 4c 3f e1


B3_03d4:	.db $03
B3_03d5:	.db $02
B3_03d6:		asl $02			; 06 02
B3_03d8:		ora ($01, x)	; 01 01
B3_03da:		lda $43			; a5 43
B3_03dc:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03df:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_03e2:		lda $43			; a5 43
B3_03e4:		clc				; 18 
B3_03e5:		adc #$30		; 69 30
B3_03e7:		sta $43			; 85 43
B3_03e9:		inc $6d			; e6 6d
B3_03eb:		jmp $e13f		; 4c 3f e1


B3_03ee:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_03f1:		jmp irqFunc_end		; 4c 3a e1


B3_03f4:		lda $89			; a5 89
B3_03f6:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03f9:		ldy $0782		; ac 82 07
B3_03fc:		sty $0789		; 8c 89 07
B3_03ff:		lda $a41a, y	; b9 1a a4
B3_0402:		sta $6d			; 85 6d
B3_0404:		lda $0783		; ad 83 07
B3_0407:		clc				; 18 
B3_0408:		adc $89			; 65 89
B3_040a:		sta $078a		; 8d 8a 07
B3_040d:		lda $0784		; ad 84 07
B3_0410:		clc				; 18 
B3_0411:		adc $078a		; 6d 8a 07
B3_0414:		sta $078b		; 8d 8b 07
B3_0417:		jmp $e13f		; 4c 3f e1


B3_041a:	.db $1b
B3_041b:	.db $1b
B3_041c:	.db $1c
B3_041d:		lda $078a		; ad 8a 07
B3_0420:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0423:		jsr $a45e		; 20 5e a4
B3_0426:		ldy $0789		; ac 89 07
B3_0429:		lda $a431, y	; b9 31 a4
B3_042c:		sta $6d			; 85 6d
B3_042e:		jmp $e13f		; 4c 3f e1


B3_0431:		ora $1d1c, x	; 1d 1c 1d
B3_0434:		ldx #$10		; a2 10
B3_0436:		dex				; ca 
B3_0437:		bpl B3_0436 ; 10 fd

B3_0439:		lda $ff			; a5 ff
B3_043b:		eor #$01		; 49 01
B3_043d:		sta PPUCTRL.w		; 8d 00 20
B3_0440:		jsr $a473		; 20 73 a4
B3_0443:		lda $078b		; ad 8b 07
B3_0446:		ldy $0789		; ac 89 07
B3_0449:		cpy #$01		; c0 01
B3_044b:		beq B3_0450 ; f0 03

B3_044d:		lda $078a		; ad 8a 07
B3_0450:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0453:		inc $6d			; e6 6d
B3_0455:		jmp $e13f		; 4c 3f e1


B3_0458:		jsr setClearedPatternTable		; 20 2d e3
B3_045b:		jmp irqFunc_end		; 4c 3a e1


B3_045e:		lda #$74		; a9 74
B3_0460:		sta CHR_BANK_0000_1000.w		; 8d 28 51
B3_0463:		lda #$77		; a9 77
B3_0465:		sta CHR_BANK_0c00_1c00.w		; 8d 2b 51
B3_0468:		lda #$75		; a9 75
B3_046a:		sta CHR_BANK_0400_1400.w		; 8d 29 51
B3_046d:		lda #$76		; a9 76
B3_046f:		sta CHR_BANK_0800_1800.w		; 8d 2a 51
B3_0472:		rts				; 60 


B3_0473:		lda #$78		; a9 78
B3_0475:		sta CHR_BANK_0000_1000.w		; 8d 28 51
B3_0478:		lda #$7a		; a9 7a
B3_047a:		sta CHR_BANK_0c00_1c00.w		; 8d 2b 51
B3_047d:		lda #$4f		; a9 4f
B3_047f:		sta CHR_BANK_0400_1400.w		; 8d 29 51
B3_0482:		lda #$79		; a9 79
B3_0484:		sta CHR_BANK_0800_1800.w		; 8d 2a 51
B3_0487:		rts				; 60 


B3_0488:		lda $89			; a5 89
B3_048a:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_048d:		lda $078e		; ad 8e 07
B3_0490:		clc				; 18 
B3_0491:		adc $89			; 65 89
B3_0493:		sta $0789		; 8d 89 07
B3_0496:		lda $0790		; ad 90 07
B3_0499:		sta $078b		; 8d 8b 07
B3_049c:		lda $078f		; ad 8f 07
B3_049f:		sta $078a		; 8d 8a 07
B3_04a2:		lda $0793		; ad 93 07
B3_04a5:		beq B3_04ad ; f0 06

B3_04a7:		jsr $a53f		; 20 3f a5
B3_04aa:		jmp $a4b8		; 4c b8 a4


B3_04ad:		lda $0786		; ad 86 07
B3_04b0:		sta $0792		; 8d 92 07
B3_04b3:		ldx #$08		; a2 08
B3_04b5:		jsr $a527		; 20 27 a5
B3_04b8:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_04bb:		lda $078a		; ad 8a 07
B3_04be:		bne B3_04c5 ; d0 05

B3_04c0:		inc $6d			; e6 6d
B3_04c2:		jmp $e13f		; 4c 3f e1


B3_04c5:		jmp irqFunc_end		; 4c 3a e1


B3_04c8:		lda $0789		; ad 89 07
B3_04cb:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_04ce:		lda $0792		; ad 92 07
B3_04d1:		clc				; 18 
B3_04d2:		adc #$01		; 69 01
B3_04d4:		ldx #$00		; a2 00
B3_04d6:		jsr $a527		; 20 27 a5
B3_04d9:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_04dc:		lda $078b		; ad 8b 07
B3_04df:		bne B3_04c5 ; d0 e4

B3_04e1:		inc $6d			; e6 6d
B3_04e3:		jmp $e13f		; 4c 3f e1


B3_04e6:		lda $0792		; ad 92 07
B3_04e9:		clc				; 18 
B3_04ea:		adc #$02		; 69 02
B3_04ec:		ldx #$04		; a2 04
B3_04ee:		jsr $a527		; 20 27 a5
B3_04f1:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_04f4:		lda #$7f		; a9 7f
B3_04f6:		sta $4a			; 85 4a
B3_04f8:		sta wChrBankBG_0400			; 85 4b
B3_04fa:		sta $4c			; 85 4c
B3_04fc:		sta $4d			; 85 4d
B3_04fe:		jmp irqFunc_end		; 4c 3a e1


B3_0501:		ldx #$08		; a2 08
B3_0503:		txa				; 8a 
B3_0504:		lsr a			; 4a
B3_0505:		lsr a			; 4a
B3_0506:		lsr a			; 4a
B3_0507:		tay				; a8 
B3_0508:		lda PPUSTATUS.w		; ad 02 20
B3_050b:		lda $0794, y	; b9 94 07
B3_050e:		sta PPUSCROLL.w		; 8d 05 20
B3_0511:		lda #$00		; a9 00
B3_0513:		sta PPUSCROLL.w		; 8d 05 20
B3_0516:		lda #$09		; a9 09
B3_0518:		sta $44			; 85 44
B3_051a:		dec $44			; c6 44
B3_051c:		bne B3_051a ; d0 fc

B3_051e:		nop				; ea 
B3_051f:		inx				; e8 
B3_0520:		cpx #$49		; e0 49
B3_0522:		bne B3_0503 ; d0 df

B3_0524:		jmp irqFunc_end		; 4c 3a e1


B3_0527:		asl a			; 0a
B3_0528:		asl a			; 0a
B3_0529:		tay				; a8 
B3_052a:		lda $a550, y	; b9 50 a5
B3_052d:		sta $4a			; 85 4a
B3_052f:		lda $a551, y	; b9 51 a5
B3_0532:		sta wChrBankBG_0400			; 85 4b
B3_0534:		lda $a552, y	; b9 52 a5
B3_0537:		sta $4c			; 85 4c
B3_0539:		lda $a553, y	; b9 53 a5
B3_053c:		sta $4d			; 85 4d
B3_053e:		rts				; 60 


B3_053f:		lda #$41		; a9 41
B3_0541:		sta $4a			; 85 4a
B3_0543:		lda #$3e		; a9 3e
B3_0545:		sta wChrBankBG_0400			; 85 4b
B3_0547:		lda #$3f		; a9 3f
B3_0549:		sta $4c			; 85 4c
B3_054b:		lda #$6f		; a9 6f
B3_054d:		sta $4d			; 85 4d
B3_054f:		rts				; 60 


B3_0550:		eor ($70, x)	; 41 70
B3_0552:		adc ($72), y	; 71 72
B3_0554:		eor ($41, x)	; 41 41
B3_0556:	.db $5a
B3_0557:	.db $6f
B3_0558:		eor ($41, x)	; 41 41
B3_055a:	.db $5a
B3_055b:	.db $6f
B3_055c:		eor ($3c, x)	; 41 3c
B3_055e:		and $416f, x	; 3d 6f 41
B3_0561:		rol $6f3f, x	; 3e 3f 6f
B3_0564:		eor ($3c, x)	; 41 3c
B3_0566:		and $416f, x	; 3d 6f 41
B3_0569:		eor ($5a, x)	; 41 5a
B3_056b:	.db $6f
B3_056c:		eor ($3c, x)	; 41 3c
B3_056e:		and $416f, x	; 3d 6f 41
B3_0571:	.db $3c
B3_0572:		and $416f, x	; 3d 6f 41
B3_0575:	.db $3c
B3_0576:		and $a56f, x	; 3d 6f a5
B3_0579:	.db $89
B3_057a:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_057d:		ldx #$07		; a2 07
B3_057f:		lda $0782, x	; bd 82 07
B3_0582:		sta $0789, x	; 9d 89 07
B3_0585:		dex				; ca 
B3_0586:		bpl B3_057f ; 10 f7

B3_0588:		lda $078a		; ad 8a 07
B3_058b:		clc				; 18 
B3_058c:		adc $89			; 65 89
B3_058e:		sta $078a		; 8d 8a 07
B3_0591:		lda $078b		; ad 8b 07
B3_0594:		clc				; 18 
B3_0595:		adc $078a		; 6d 8a 07
B3_0598:		sta $078b		; 8d 8b 07
B3_059b:		inc $6d			; e6 6d
B3_059d:		jmp $e13f		; 4c 3f e1


B3_05a0:		lda $078a		; ad 8a 07
B3_05a3:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_05a6:		lda #$55		; a9 55
B3_05a8:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_05ab:		ldx #$05		; a2 05
B3_05ad:		jsr $e001		; 20 01 e0
B3_05b0:		lda PPUSTATUS.w		; ad 02 20
B3_05b3:		lda $078d		; ad 8d 07
B3_05b6:		sta PPUADDR.w		; 8d 06 20
B3_05b9:		lda $078c		; ad 8c 07
B3_05bc:		sta PPUADDR.w		; 8d 06 20
B3_05bf:		lda $078e		; ad 8e 07
B3_05c2:		sta PPUSCROLL.w		; 8d 05 20
B3_05c5:		lda #$00		; a9 00
B3_05c7:		sta PPUSCROLL.w		; 8d 05 20
B3_05ca:		jsr setClearedPatternTable		; 20 2d e3
B3_05cd:		inc $6d			; e6 6d
B3_05cf:		jmp $e13f		; 4c 3f e1


B3_05d2:		lda $078b		; ad 8b 07
B3_05d5:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_05d8:		ldx #$0c		; a2 0c
B3_05da:		jsr $e001		; 20 01 e0
B3_05dd:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_05e0:		inc $6d			; e6 6d
B3_05e2:		jmp $e13f		; 4c 3f e1


B3_05e5:		ldx #$14		; a2 14
B3_05e7:		jsr $e001		; 20 01 e0
B3_05ea:		lda #$44		; a9 44
B3_05ec:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_05ef:		lda PPUSTATUS.w		; ad 02 20
B3_05f2:		lda #$23		; a9 23
B3_05f4:		sta PPUADDR.w		; 8d 06 20
B3_05f7:		lda #$00		; a9 00
B3_05f9:		sta PPUADDR.w		; 8d 06 20
B3_05fc:		lda #$00		; a9 00
B3_05fe:		sta PPUSCROLL.w		; 8d 05 20
B3_0601:		sta PPUSCROLL.w		; 8d 05 20
B3_0604:		lda #$b0		; a9 b0
B3_0606:		sta PPUCTRL.w		; 8d 00 20
B3_0609:		jmp irqFunc_end		; 4c 3a e1


func_03_060c:
B3_060c:		lda $19			; a5 19
B3_060e:		cmp #$02		; c9 02
B3_0610:		bcc B3_061b ; 90 09

B3_0612:		lda $26			; a5 26
B3_0614:		and #$10		; 29 10
B3_0616:		beq B3_061b ; f0 03

B3_0618:		jmp $a72a		; 4c 2a a7

B3_061b:		lda $19			; a5 19
B3_061d:		jsr jumpTablePreserveY		; 20 6d e8
	.dw func_03_0630

B3_0622:	.db $6b
B3_0623:		ldx $94			; a6 94
B3_0625:		ldx $b3			; a6 b3
B3_0627:		ldx $e6			; a6 e6
B3_0629:		ldx $f9			; a6 f9
B3_062b:		ldx $11			; a6 11
B3_062d:	.db $a7
B3_062e:		and $a7			; 25 a7


func_03_0630:
B3_0630:		lda #$02		; a9 02
B3_0632:		sta $1c			; 85 1c
B3_0634:		lda #$67		; a9 67
B3_0636:		jsr playSound		; 20 5f e2
B3_0639:		lda #$00		; a9 00
B3_063b:		sta $46			; 85 46
B3_063d:		lda #$01		; a9 01
B3_063f:		sta $47			; 85 47
B3_0641:		lda #$16		; a9 16
B3_0643:		sta $48			; 85 48
B3_0645:		lda #$7b		; a9 7b
B3_0647:		sta $49			; 85 49
B3_0649:		lda #$44		; a9 44
B3_064b:		sta $4a			; 85 4a
B3_064d:		lda #$45		; a9 45
B3_064f:		sta wChrBankBG_0400			; 85 4b
B3_0651:		lda #$47		; a9 47
B3_0653:		sta $4c			; 85 4c
B3_0655:		lda #$43		; a9 43
B3_0657:		sta $4d			; 85 4d
B3_0659:		jsr $e666		; 20 66 e6
B3_065c:		jsr func_1f_07f7		; 20 f7 e7
B3_065f:		inc $19			; e6 19
B3_0661:		lda #$1f		; a9 1f
B3_0663:		jsr func_1f_0ce9		; 20 e9 ec
B3_0666:		lda #$04		; a9 04
B3_0668:		jmp func_1f_0ce9		; 4c e9 ec


B3_066b:		ldx #$16		; a2 16
B3_066d:		lda #$88		; a9 88
B3_066f:		jsr $ebd5		; 20 d5 eb
B3_0672:		ldy #$00		; a0 00
B3_0674:		jsr $a76d		; 20 6d a7
B3_0677:		lda #$01		; a9 01
B3_0679:		sta $04a8		; 8d a8 04
B3_067c:		lda #$80		; a9 80
B3_067e:		sta $0438		; 8d 38 04
B3_0681:		lda #$b0		; a9 b0
B3_0683:		sta $041c		; 8d 1c 04
B3_0686:		inc $19			; e6 19
B3_0688:		lda #$08		; a9 08
B3_068a:		sta $05c2		; 8d c2 05
B3_068d:		ldy #$01		; a0 01
B3_068f:		lda #$00		; a9 00
B3_0691:		jmp $e58e		; 4c 8e e5


B3_0694:		jsr decGenericTimer		; 20 79 e5
B3_0697:		bne B3_06b2 ; d0 19

B3_0699:		lda #$1d		; a9 1d
B3_069b:		jsr func_1f_0ce9		; 20 e9 ec
B3_069e:		lda #$04		; a9 04
B3_06a0:		jsr func_1f_0ce9		; 20 e9 ec
B3_06a3:		inc $19			; e6 19
B3_06a5:		lda $05c2		; ad c2 05
B3_06a8:		jsr $a72f		; 20 2f a7
B3_06ab:		ldy #$00		; a0 00
B3_06ad:		lda #$02		; a9 02
B3_06af:		jmp $e58e		; 4c 8e e5


B3_06b2:		rts				; 60 


B3_06b3:		jsr decGenericTimer		; 20 79 e5
B3_06b6:		bne B3_06b2 ; d0 fa

B3_06b8:		lda #$00		; a9 00
B3_06ba:		sta $0401		; 8d 01 04
B3_06bd:		sta $048d		; 8d 8d 04
B3_06c0:		jsr $a661		; 20 61 a6
B3_06c3:		dec $05c2		; ce c2 05
B3_06c6:		beq B3_06d5 ; f0 0d

B3_06c8:		dec $19			; c6 19
B3_06ca:		ldy $05c2		; ac c2 05
B3_06cd:		lda $a6de, y	; b9 de a6
B3_06d0:		ldy #$00		; a0 00
B3_06d2:		jmp $e58e		; 4c 8e e5


B3_06d5:		inc $19			; e6 19
B3_06d7:		ldy #$00		; a0 00
B3_06d9:		lda #$40		; a9 40
B3_06db:		jmp $e58e		; 4c 8e e5


B3_06de:	.db $03
B3_06df:	.db $03
B3_06e0:		asl $06			; 06 06
B3_06e2:	.db $0c
B3_06e3:		;removed
	.db $10 $10

B3_06e5:		clc				; 18 
B3_06e6:		jsr decGenericTimer		; 20 79 e5
B3_06e9:		bne B3_06b2 ; d0 c7

B3_06eb:		ldy #$01		; a0 01
B3_06ed:		jsr $a76d		; 20 6d a7
B3_06f0:		inc $19			; e6 19
B3_06f2:		ldy #$00		; a0 00
B3_06f4:		lda #$40		; a9 40
B3_06f6:		jmp $e58e		; 4c 8e e5


B3_06f9:		jsr decGenericTimer		; 20 79 e5
B3_06fc:		bne B3_06b2 ; d0 b4

B3_06fe:		ldy #$39		; a0 39
B3_0700:		lda #$0c		; a9 0c
B3_0702:		ldx #$00		; a2 00
B3_0704:		jsr func_1f_0f5c		; 20 5c ef
B3_0707:		ldy #$00		; a0 00
B3_0709:		lda #$20		; a9 20
B3_070b:		jsr $e58e		; 20 8e e5
B3_070e:		inc $19			; e6 19
B3_0710:		rts				; 60 


B3_0711:		ldx #$00		; a2 00
B3_0713:		jsr func_1f_0f75		; 20 75 ef
B3_0716:		jsr decGenericTimer		; 20 79 e5
B3_0719:		bne B3_0710 ; d0 f5

B3_071b:		ldy #$00		; a0 00
B3_071d:		lda #$2c		; a9 2c
B3_071f:		jsr $e58e		; 20 8e e5
B3_0722:		jmp $a70e		; 4c 0e a7


B3_0725:		jsr decGenericTimer		; 20 79 e5
B3_0728:		bne B3_0710 ; d0 e6

B3_072a:		lda #$03		; a9 03
B3_072c:		sta $18			; 85 18
B3_072e:		rts				; 60 


B3_072f:		tay				; a8 
B3_0730:		lda $a764, y	; b9 64 a7
B3_0733:		sta $04a9		; 8d a9 04
B3_0736:		lda #$da		; a9 da
B3_0738:		sta $0401		; 8d 01 04
B3_073b:		lda #$0c		; a9 0c
B3_073d:		sta $048d		; 8d 8d 04
B3_0740:		lda $a752, y	; b9 52 a7
B3_0743:		sta $0439		; 8d 39 04
B3_0746:		lda $a75b, y	; b9 5b a7
B3_0749:		sta $041d		; 8d 1d 04
B3_074c:		lda #$3e		; a9 3e
B3_074e:		jsr playSound		; 20 5f e2
B3_0751:		rts				; 60 


B3_0752:		.db $00				; 00
B3_0753:		plp				; 28 
B3_0754:		clc				; 18 
B3_0755:		cpy #$30		; c0 30
B3_0757:		;removed
	.db $d0 $d0

B3_0759:	.db $20 $e0 $00
B3_075c:		rti				; 40 


B3_075d:		rti				; 40 


B3_075e:		rti				; 40 


B3_075f:		rti				; 40 


B3_0760:		rti				; 40 


B3_0761:		rti				; 40 


B3_0762:		rti				; 40 


B3_0763:		rti				; 40 


B3_0764:		.db $00				; 00
B3_0765:		.db $00				; 00
B3_0766:		.db $00				; 00
B3_0767:		ora ($00, x)	; 01 00
B3_0769:		ora ($01, x)	; 01 01
B3_076b:		.db $00				; 00
B3_076c:		ora ($b9, x)	; 01 b9
B3_076e:		ror $8da7, x	; 7e a7 8d
B3_0771:		.db $00				; 00
B3_0772:	.db $04
B3_0773:		lda #$0c		; a9 0c
B3_0775:		sta $048c		; 8d 8c 04
B3_0778:		lda #$00		; a9 00
B3_077a:		sta $0454		; 8d 54 04
B3_077d:		rts				; 60 


B3_077e:	.db $dc
B3_077f:	.db $de $a0 $00
B3_0782:		beq B3_07a2 ; f0 1e

B3_0784:		ldy #$02		; a0 02
B3_0786:		bne B3_07a2 ; d0 1a

B3_0788:		ldy #$04		; a0 04
B3_078a:		bne B3_07a2 ; d0 16

B3_078c:		ldy #$06		; a0 06
B3_078e:		bne B3_07a2 ; d0 12

B3_0790:		ldy #$08		; a0 08
B3_0792:		bne B3_07a2 ; d0 0e

B3_0794:		ldy #$0a		; a0 0a
B3_0796:		bne B3_07a2 ; d0 0a

B3_0798:		ldy #$0c		; a0 0c
B3_079a:		bne B3_07a2 ; d0 06

B3_079c:		ldy #$0e		; a0 0e
B3_079e:		bne B3_07a2 ; d0 02

B3_07a0:		ldy #$10		; a0 10
B3_07a2:		lda $a7b1, y	; b9 b1 a7
B3_07a5:		sta $00			; 85 00
B3_07a7:		lda $a7b2, y	; b9 b2 a7
B3_07aa:		sta $01			; 85 01
B3_07ac:		lda #$84		; a9 84
B3_07ae:		jmp $e62f		; 4c 2f e6


B3_07b1:		dex				; ca 
B3_07b2:		ldx $e1, y		; b6 e1
B3_07b4:	.db $b7
B3_07b5:		txs				; 9a 
B3_07b6:		lda $ba77, y	; b9 77 ba
B3_07b9:	.db $7c
B3_07ba:		tsx				; ba 
B3_07bb:		ldy $ddba, x	; bc ba dd
B3_07be:		tsx				; ba 
B3_07bf:		cmp $b8			; c5 b8
B3_07c1:	.db $04
B3_07c2:		.db $ec


func_03_07c3:
	lda $07ec
B3_07c6:		asl a			; 0a
B3_07c7:		tay				; a8 
B3_07c8:		lda $a7e3, y	; b9 e3 a7
B3_07cb:		sta $00			; 85 00
B3_07cd:		lda $a7e4, y	; b9 e4 a7
B3_07d0:		sta $01			; 85 01
B3_07d2:		jsr $a7e0		; 20 e0 a7
B3_07d5:		lda $07ec		; ad ec 07
B3_07d8:		cmp #$10		; c9 10
B3_07da:		bcc B3_07df ; 90 03

B3_07dc:		jsr $a788		; 20 88 a7
B3_07df:		rts				; 60 


B3_07e0:	.db $6c $00 $00
B3_07e3:		and $a8			; 25 a8
B3_07e5:	.db $9f
B3_07e6:		tay				; a8 
B3_07e7:		lda $a8, x		; b5 a8
B3_07e9:		cpy $a8			; c4 a8
B3_07eb:	.db $d2
B3_07ec:		tay				; a8 
B3_07ed:		cmp $eba8, x	; dd a8 eb
B3_07f0:		tay				; a8 
B3_07f1:		sbc $1ba8, y	; f9 a8 1b
B3_07f4:		lda #$45		; a9 45
B3_07f6:		lda #$62		; a9 62
B3_07f8:		lda #$79		; a9 79
B3_07fa:		lda #$84		; a9 84
B3_07fc:		lda #$8f		; a9 8f
B3_07fe:		lda #$ce		; a9 ce
B3_0800:		lda #$d9		; a9 d9
B3_0802:		lda #$0e		; a9 0e
B3_0804:		tax				; aa 
B3_0805:		ora ($aa), y	; 11 aa
B3_0807:		rti				; 40 


B3_0808:		tax				; aa 
B3_0809:		lsr $51aa		; 4e aa 51
B3_080c:		tax				; aa 
B3_080d:	.db $6f
B3_080e:		tax				; aa 
B3_080f:		sty $aa, x		; 94 aa
B3_0811:		dec $aa			; c6 aa
B3_0813:		cmp #$aa		; c9 aa
B3_0815:		sbc $aa			; e5 aa
B3_0817:		sbc ($aa), y	; f1 aa
B3_0819:	.db $fc
B3_081a:		tax				; aa 
B3_081b:	.db $13
B3_081c:	.db $ab
B3_081d:	.db $22
B3_081e:	.db $ab
B3_081f:		rti				; 40 


B3_0820:	.db $ab
B3_0821:	.db $52
B3_0822:	.db $ab
B3_0823:		adc $ab			; 65 ab
B3_0825:		jsr setBank_c000_toRom1eh		; 20 da e2
B3_0828:		ldx #$24		; a2 24
B3_082a:		lda #$00		; a9 00
B3_082c:		sta $0780, x	; 9d 80 07
B3_082f:		dex				; ca 
B3_0830:		bpl B3_082c ; 10 fa

B3_0832:		lda #$1e		; a9 1e
B3_0834:		ldx #$08		; a2 08
B3_0836:		jsr func_1f_05c1		; 20 c1 e5
B3_0839:		lda #$80		; a9 80
B3_083b:		sta $0791		; 8d 91 07
B3_083e:		lda #$01		; a9 01
B3_0840:		sta $0793		; 8d 93 07
B3_0843:		lda #$7f		; a9 7f
B3_0845:		sta $4a			; 85 4a
B3_0847:		sta wChrBankBG_0400			; 85 4b
B3_0849:		sta $4c			; 85 4c
B3_084b:		sta $4d			; 85 4d
B3_084d:		lda #$00		; a9 00
B3_084f:		sta $46			; 85 46
B3_0851:		lda #$01		; a9 01
B3_0853:		sta $47			; 85 47
B3_0855:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_0858:		jsr $ab73		; 20 73 ab
B3_085b:		jsr func_1f_0bfd		; 20 fd eb
B3_085e:		jsr $ae88		; 20 88 ae
B3_0861:		ldx #$1e		; a2 1e
B3_0863:		lda #$98		; a9 98
B3_0865:		jsr $ebd5		; 20 d5 eb
B3_0868:		ldx #$00		; a2 00
B3_086a:		jsr $ac7c		; 20 7c ac
B3_086d:		lda #$55		; a9 55
B3_086f:		sta wNametableMapping			; 85 25
B3_0871:		lda $ff			; a5 ff
B3_0873:		ora #$02		; 09 02
B3_0875:		sta $ff			; 85 ff
B3_0877:		lda #$00		; a9 00
B3_0879:		sta $0780		; 8d 80 07
B3_087c:		lda #$02		; a9 02
B3_087e:		sta $0781		; 8d 81 07
B3_0881:		lda #$80		; a9 80
B3_0883:		sta $07ed		; 8d ed 07
B3_0886:		lda #$00		; a9 00
B3_0888:		sta $07ee		; 8d ee 07
B3_088b:		lda #$00		; a9 00
B3_088d:		sta $0783		; 8d 83 07
B3_0890:		sta $0784		; 8d 84 07
B3_0893:		sta $0785		; 8d 85 07
B3_0896:		lda #$66		; a9 66
B3_0898:		jsr playSound		; 20 5f e2
B3_089b:		inc $07ec		; ee ec 07
B3_089e:		rts				; 60 


B3_089f:		jsr $ae8d		; 20 8d ae
B3_08a2:		beq B3_08a8 ; f0 04

B3_08a4:		jsr $ad34		; 20 34 ad
B3_08a7:		rts				; 60 


B3_08a8:		lda #$80		; a9 80
B3_08aa:		sta $07ed		; 8d ed 07
B3_08ad:		lda #$00		; a9 00
B3_08af:		sta $07ee		; 8d ee 07
B3_08b2:		jmp $a89b		; 4c 9b a8


B3_08b5:		jsr $ae8d		; 20 8d ae
B3_08b8:		beq B3_089b ; f0 e1

B3_08ba:		jsr $abdb		; 20 db ab
B3_08bd:		jsr $ad34		; 20 34 ad
B3_08c0:		jsr $ae6f		; 20 6f ae
B3_08c3:		rts				; 60 


B3_08c4:		jsr $abdb		; 20 db ab
B3_08c7:		jsr $ad34		; 20 34 ad
B3_08ca:		jsr $ae6f		; 20 6f ae
B3_08cd:		lda $fc			; a5 fc
B3_08cf:		beq B3_089b ; f0 ca

B3_08d1:		rts				; 60 


B3_08d2:		jsr $ae88		; 20 88 ae
B3_08d5:		lda #$03		; a9 03
B3_08d7:		sta $07ef		; 8d ef 07
B3_08da:		jmp $a89b		; 4c 9b a8


B3_08dd:		jsr $ad34		; 20 34 ad
B3_08e0:		jsr $af22		; 20 22 af
B3_08e3:		lda $fc			; a5 fc
B3_08e5:		beq B3_08e8 ; f0 01

B3_08e7:		rts				; 60 


B3_08e8:		jmp $a89b		; 4c 9b a8


B3_08eb:		jsr $ad34		; 20 34 ad
B3_08ee:		jsr $a78c		; 20 8c a7
B3_08f1:		lda #$00		; a9 00
B3_08f3:		sta $07ee		; 8d ee 07
B3_08f6:		jmp $a89b		; 4c 9b a8


B3_08f9:		jsr $ad34		; 20 34 ad
B3_08fc:		jsr $a790		; 20 90 a7
B3_08ff:		bcc B3_091a ; 90 19

B3_0901:		jsr $a794		; 20 94 a7
B3_0904:		lda #$21		; a9 21
B3_0906:		sta $3f			; 85 3f
B3_0908:		lda #$01		; a9 01
B3_090a:		sta $078f		; 8d 8f 07
B3_090d:		lda #$80		; a9 80
B3_090f:		sta $07ed		; 8d ed 07
B3_0912:		lda #$00		; a9 00
B3_0914:		sta $07ee		; 8d ee 07
B3_0917:		jmp $a89b		; 4c 9b a8


B3_091a:		rts				; 60 


B3_091b:		jsr $ad34		; 20 34 ad
B3_091e:		lda #$00		; a9 00
B3_0920:		sta $08			; 85 08
B3_0922:		jsr $a798		; 20 98 a7
B3_0925:		lda $08			; a5 08
B3_0927:		cmp #$09		; c9 09
B3_0929:		bcs B3_092f ; b0 04

B3_092b:		jsr $a945		; 20 45 a9
B3_092e:		rts				; 60 


B3_092f:		jsr $ae88		; 20 88 ae
B3_0932:		lda #$1e		; a9 1e
B3_0934:		sta $3f			; 85 3f
B3_0936:		lda #$80		; a9 80
B3_0938:		sta $40			; 85 40
B3_093a:		lda #$01		; a9 01
B3_093c:		sta $078f		; 8d 8f 07
B3_093f:		inc $07ec		; ee ec 07
B3_0942:		jmp $a89b		; 4c 9b a8


B3_0945:		jsr $ae8d		; 20 8d ae
B3_0948:		bne B3_0961 ; d0 17

B3_094a:		lda $07ef		; ad ef 07
B3_094d:		bmi B3_0961 ; 30 12

B3_094f:		ldx #$00		; a2 00
B3_0951:		jsr $aea2		; 20 a2 ae
B3_0954:		lda #$08		; a9 08
B3_0956:		sta $07ed		; 8d ed 07
B3_0959:		lda #$00		; a9 00
B3_095b:		sta $07ee		; 8d ee 07
B3_095e:		dec $07ef		; ce ef 07
B3_0961:		rts				; 60 


B3_0962:		jsr $ad34		; 20 34 ad
B3_0965:		lda #$00		; a9 00
B3_0967:		sta $07ef		; 8d ef 07
B3_096a:		sta $07f0		; 8d f0 07
B3_096d:		sta $07f1		; 8d f1 07
B3_0970:		sta $07f2		; 8d f2 07
B3_0973:		sta $07f3		; 8d f3 07
B3_0976:		jmp $a89b		; 4c 9b a8


B3_0979:		jsr $ad34		; 20 34 ad
B3_097c:		ldx #$02		; a2 02
B3_097e:		jsr $a780		; 20 80 a7
B3_0981:		bcs B3_0965 ; b0 e2

B3_0983:		rts				; 60 


B3_0984:		jsr $ad34		; 20 34 ad
B3_0987:		ldx #$00		; a2 00
B3_0989:		jsr $a780		; 20 80 a7
B3_098c:		bcs B3_0965 ; b0 d7

B3_098e:		rts				; 60 


B3_098f:		jsr $ad34		; 20 34 ad
B3_0992:		lda $ff			; a5 ff
B3_0994:		ora #$02		; 09 02
B3_0996:		sta $ff			; 85 ff
B3_0998:		ldx #$10		; a2 10
B3_099a:		lda #$02		; a9 02
B3_099c:		sta $054e, x	; 9d 4e 05
B3_099f:		lda #$80		; a9 80
B3_09a1:		sta $0470, x	; 9d 70 04
B3_09a4:		lda #$00		; a9 00
B3_09a6:		sta $07ef		; 8d ef 07
B3_09a9:		sta $07f0		; 8d f0 07
B3_09ac:		lda #$7b		; a9 7b
B3_09ae:		sta $49			; 85 49
B3_09b0:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_09b3:		lda #$0c		; a9 0c
B3_09b5:		sta $048c, x	; 9d 8c 04
B3_09b8:		lda #$da		; a9 da
B3_09ba:		sta $0400, x	; 9d 00 04
B3_09bd:		lda #$00		; a9 00
B3_09bf:		sta $0786		; 8d 86 07
B3_09c2:		sta $0793		; 8d 93 07
B3_09c5:		sta $0787		; 8d 87 07
B3_09c8:		sta $0788		; 8d 88 07
B3_09cb:		jmp $a89b		; 4c 9b a8


B3_09ce:		jsr $ad34		; 20 34 ad
B3_09d1:		lda $10			; a5 10
B3_09d3:		bne B3_09d6 ; d0 01

B3_09d5:		rts				; 60 


B3_09d6:		jmp $a89b		; 4c 9b a8


B3_09d9:		jsr $ad34		; 20 34 ad
B3_09dc:		lda $ff			; a5 ff
B3_09de:		and #$fd		; 29 fd
B3_09e0:		sta $ff			; 85 ff
B3_09e2:		jsr $ae8d		; 20 8d ae
B3_09e5:		bne B3_0a00 ; d0 19

B3_09e7:		ldx #$02		; a2 02
B3_09e9:		jsr $aea2		; 20 a2 ae
B3_09ec:		lda #$08		; a9 08
B3_09ee:		sta $07ed		; 8d ed 07
B3_09f1:		lda #$00		; a9 00
B3_09f3:		sta $07ee		; 8d ee 07
B3_09f6:		inc $07ef		; ee ef 07
B3_09f9:		lda $07ef		; ad ef 07
B3_09fc:		cmp #$04		; c9 04
B3_09fe:		beq B3_0a01 ; f0 01

B3_0a00:		rts				; 60 


B3_0a01:		lda #$48		; a9 48
B3_0a03:		sta $0780		; 8d 80 07
B3_0a06:		lda #$00		; a9 00
B3_0a08:		sta $0781		; 8d 81 07
B3_0a0b:		jmp $a89b		; 4c 9b a8


B3_0a0e:		jmp $aa7a		; 4c 7a aa


B3_0a11:		jsr $ad34		; 20 34 ad
B3_0a14:		ldx #$06		; a2 06
B3_0a16:		lda $07f0		; ad f0 07
B3_0a19:		and #$01		; 29 01
B3_0a1b:		bne B3_0a23 ; d0 06

B3_0a1d:		jsr $a784		; 20 84 a7
B3_0a20:		jmp $aa3c		; 4c 3c aa


B3_0a23:		jsr $a79c		; 20 9c a7
B3_0a26:		inc $07ef		; ee ef 07
B3_0a29:		lda $07ef		; ad ef 07
B3_0a2c:		cmp #$20		; c9 20
B3_0a2e:		bne B3_0a3c ; d0 0c

B3_0a30:		lda #$00		; a9 00
B3_0a32:		sta $0783		; 8d 83 07
B3_0a35:		lda #$01		; a9 01
B3_0a37:		sta $fc			; 85 fc
B3_0a39:		jmp $aa83		; 4c 83 aa


B3_0a3c:		inc $07f0		; ee f0 07
B3_0a3f:		rts				; 60 


B3_0a40:		jsr $ad34		; 20 34 ad
B3_0a43:		jsr $af22		; 20 22 af
B3_0a46:		lda $fc			; a5 fc
B3_0a48:		bne B3_0a4d ; d0 03

B3_0a4a:		jmp $a89b		; 4c 9b a8


B3_0a4d:		rts				; 60 


B3_0a4e:		jsr $aa7a		; 20 7a aa
B3_0a51:		jsr $ad34		; 20 34 ad
B3_0a54:		jsr $af22		; 20 22 af
B3_0a57:		ldx #$08		; a2 08
B3_0a59:		lda $0783		; ad 83 07
B3_0a5c:		sta $00			; 85 00
B3_0a5e:		lda $fc			; a5 fc
B3_0a60:		beq B3_0a30 ; f0 ce

B3_0a62:		and #$fc		; 29 fc
B3_0a64:		cmp $00			; c5 00
B3_0a66:		sta $0783		; 8d 83 07
B3_0a69:		beq B3_0a6e ; f0 03

B3_0a6b:		jmp $aa16		; 4c 16 aa


B3_0a6e:		rts				; 60 


B3_0a6f:		ldx #$00		; a2 00
B3_0a71:		jsr $ac7c		; 20 7c ac
B3_0a74:		jsr $aa7a		; 20 7a aa
B3_0a77:		jmp $aa94		; 4c 94 aa


B3_0a7a:		lda #$00		; a9 00
B3_0a7c:		sta $0783		; 8d 83 07
B3_0a7f:		lda #$01		; a9 01
B3_0a81:		sta $fc			; 85 fc
B3_0a83:		lda #$00		; a9 00
B3_0a85:		sta $07ef		; 8d ef 07
B3_0a88:		sta $07f0		; 8d f0 07
B3_0a8b:		sta $07f1		; 8d f1 07
B3_0a8e:		sta $07f2		; 8d f2 07
B3_0a91:		jmp $a89b		; 4c 9b a8


B3_0a94:		jsr $ad34		; 20 34 ad
B3_0a97:		jsr $af22		; 20 22 af
B3_0a9a:		ldx #$00		; a2 00
B3_0a9c:		jmp $aad1		; 4c d1 aa


B3_0a9f:		lda $07f0		; ad f0 07
B3_0aa2:		and #$01		; 29 01
B3_0aa4:		bne B3_0aac ; d0 06

B3_0aa6:		jsr $a784		; 20 84 a7
B3_0aa9:		jmp $aac2		; 4c c2 aa


B3_0aac:		jsr $a79c		; 20 9c a7
B3_0aaf:		inc $07ef		; ee ef 07
B3_0ab2:		lda $fc			; a5 fc
B3_0ab4:		bne B3_0ac2 ; d0 0c

B3_0ab6:		lda #$00		; a9 00
B3_0ab8:		sta $0783		; 8d 83 07
B3_0abb:		lda #$01		; a9 01
B3_0abd:		sta $fc			; 85 fc
B3_0abf:		jmp $aa83		; 4c 83 aa


B3_0ac2:		inc $07f0		; ee f0 07
B3_0ac5:		rts				; 60 


B3_0ac6:		jsr $aa7a		; 20 7a aa
B3_0ac9:		jsr $ad34		; 20 34 ad
B3_0acc:		jsr $af22		; 20 22 af
B3_0acf:		ldx #$02		; a2 02
B3_0ad1:		lda $0783		; ad 83 07
B3_0ad4:		sta $00			; 85 00
B3_0ad6:		lda $fc			; a5 fc
B3_0ad8:		and #$fc		; 29 fc
B3_0ada:		cmp $00			; c5 00
B3_0adc:		sta $0783		; 8d 83 07
B3_0adf:		beq B3_0ae4 ; f0 03

B3_0ae1:		jmp $aa9f		; 4c 9f aa


B3_0ae4:		rts				; 60 


B3_0ae5:		lda #$00		; a9 00
B3_0ae7:		sta $0783		; 8d 83 07
B3_0aea:		lda #$01		; a9 01
B3_0aec:		sta $fc			; 85 fc
B3_0aee:		jmp $a89b		; 4c 9b a8


B3_0af1:		jsr $ad34		; 20 34 ad
B3_0af4:		jsr $af22		; 20 22 af
B3_0af7:		ldx #$04		; a2 04
B3_0af9:		jmp $aad1		; 4c d1 aa


B3_0afc:		lda #$55		; a9 55
B3_0afe:		sta wNametableMapping			; 85 25
B3_0b00:		lda #$80		; a9 80
B3_0b02:		sta $07ed		; 8d ed 07
B3_0b05:		lda #$00		; a9 00
B3_0b07:		sta $07ee		; 8d ee 07
B3_0b0a:		sta $0784		; 8d 84 07
B3_0b0d:		sta $0785		; 8d 85 07
B3_0b10:		jmp $a89b		; 4c 9b a8


B3_0b13:		jsr $ae8d		; 20 8d ae
B3_0b16:		beq B3_0b10 ; f0 f8

B3_0b18:		jsr $abd5		; 20 d5 ab
B3_0b1b:		jsr $ad34		; 20 34 ad
B3_0b1e:		jsr $af22		; 20 22 af
B3_0b21:		rts				; 60 


B3_0b22:		jsr $ab18		; 20 18 ab
B3_0b25:		lda $fc			; a5 fc
B3_0b27:		bne B3_0b21 ; d0 f8

B3_0b29:		lda #$00		; a9 00
B3_0b2b:		sta $0780		; 8d 80 07
B3_0b2e:		lda #$02		; a9 02
B3_0b30:		sta $0781		; 8d 81 07
B3_0b33:		lda #$00		; a9 00
B3_0b35:		sta $0784		; 8d 84 07
B3_0b38:		sta $0785		; 8d 85 07
B3_0b3b:		inc $fc			; e6 fc
B3_0b3d:		jmp $a89b		; 4c 9b a8


B3_0b40:		jsr $abcb		; 20 cb ab
B3_0b43:		jsr $ad34		; 20 34 ad
B3_0b46:		jsr $af22		; 20 22 af
B3_0b49:		lda $fc			; a5 fc
B3_0b4b:		and #$fe		; 29 fe
B3_0b4d:		bne B3_0b21 ; d0 d2

B3_0b4f:		jmp $a89b		; 4c 9b a8


B3_0b52:		lda #$00		; a9 00
B3_0b54:		sta $16			; 85 16
B3_0b56:		jsr $ad34		; 20 34 ad
B3_0b59:		lda $16			; a5 16
B3_0b5b:		beq B3_0b5e ; f0 01

B3_0b5d:		rts				; 60 


B3_0b5e:		lda #$44		; a9 44
B3_0b60:		sta wNametableMapping			; 85 25
B3_0b62:		jmp $a89b		; 4c 9b a8


B3_0b65:		lda #$00		; a9 00
B3_0b67:		sta $19			; 85 19
B3_0b69:		lda $ff			; a5 ff
B3_0b6b:		and #$f0		; 29 f0
B3_0b6d:		sta $ff			; 85 ff
B3_0b6f:		jsr func_1f_0bfd		; 20 fd eb
B3_0b72:		rts				; 60 


B3_0b73:		ldx #$00		; a2 00
B3_0b75:		lda #$01		; a9 01
B3_0b77:		sta $054e, x	; 9d 4e 05
B3_0b7a:		lda #$14		; a9 14
B3_0b7c:		sta $048c, x	; 9d 8c 04
B3_0b7f:		lda #$10		; a9 10
B3_0b81:		sta $0400, x	; 9d 00 04
B3_0b84:		txa				; 8a 
B3_0b85:		asl a			; 0a
B3_0b86:		tay				; a8 
B3_0b87:		lda $abab, y	; b9 ab ab
B3_0b8a:		sta $041c, x	; 9d 1c 04
B3_0b8d:		lda $abac, y	; b9 ac ab
B3_0b90:		ora #$80		; 09 80
B3_0b92:		sta $0470, x	; 9d 70 04
B3_0b95:		cpx #$08		; e0 08
B3_0b97:		bcc B3_0ba0 ; 90 07

B3_0b99:		lda #$f0		; a9 f0
B3_0b9b:		sta $0438, x	; 9d 38 04
B3_0b9e:		bne B3_0ba5 ; d0 05

B3_0ba0:		lda #$10		; a9 10
B3_0ba2:		sta $0438, x	; 9d 38 04
B3_0ba5:		inx				; e8 
B3_0ba6:		cpx #$10		; e0 10
B3_0ba8:		bne B3_0b75 ; d0 cb

B3_0baa:		rts				; 60 


B3_0bab:		.db $00				; 00
B3_0bac:		ora ($20, x)	; 01 20
B3_0bae:		ora ($40, x)	; 01 40
B3_0bb0:		ora ($60, x)	; 01 60
B3_0bb2:		ora ($80, x)	; 01 80
B3_0bb4:		ora ($a0, x)	; 01 a0
B3_0bb6:		ora ($c0, x)	; 01 c0
B3_0bb8:		ora ($e0, x)	; 01 e0
B3_0bba:		ora ($00, x)	; 01 00
B3_0bbc:		ora ($20, x)	; 01 20
B3_0bbe:		ora ($40, x)	; 01 40
B3_0bc0:		ora ($60, x)	; 01 60
B3_0bc2:		ora ($80, x)	; 01 80
B3_0bc4:		ora ($a0, x)	; 01 a0
B3_0bc6:		ora ($c0, x)	; 01 c0
B3_0bc8:		ora ($e0, x)	; 01 e0
B3_0bca:		ora ($a9, x)	; 01 a9
B3_0bcc:		.db $00				; 00
B3_0bcd:		sta $17			; 85 17
B3_0bcf:		lda #$20		; a9 20
B3_0bd1:		sta $08			; 85 08
B3_0bd3:		bne B3_0be3 ; d0 0e

B3_0bd5:		lda #$20		; a9 20
B3_0bd7:		sta $08			; 85 08
B3_0bd9:		bne B3_0bdf ; d0 04

B3_0bdb:		lda #$28		; a9 28
B3_0bdd:		sta $08			; 85 08
B3_0bdf:		lda #$01		; a9 01
B3_0be1:		sta $17			; 85 17
B3_0be3:		lda $0783		; ad 83 07
B3_0be6:		sta $00			; 85 00
B3_0be8:		lda $fc			; a5 fc
B3_0bea:		and #$f8		; 29 f8
B3_0bec:		cmp $00			; c5 00
B3_0bee:		sta $0783		; 8d 83 07
B3_0bf1:		beq B3_0c4d ; f0 5a

B3_0bf3:		ldy $0784		; ac 84 07
B3_0bf6:		lda $0785		; ad 85 07
B3_0bf9:		bne B3_0c05 ; d0 0a

B3_0bfb:		lda $ac53, y	; b9 53 ac
B3_0bfe:		cmp #$fe		; c9 fe
B3_0c00:		beq B3_0c4d ; f0 4b

B3_0c02:		sta $0785		; 8d 85 07
B3_0c05:		ldx $1d			; a6 1d
B3_0c07:		lda #$01		; a9 01
B3_0c09:		jsr $ac4e		; 20 4e ac
B3_0c0c:		lda #$00		; a9 00
B3_0c0e:		sta $01			; 85 01
B3_0c10:		lda $fc			; a5 fc
B3_0c12:		and #$f8		; 29 f8
B3_0c14:		asl a			; 0a
B3_0c15:		rol $01			; 26 01
B3_0c17:		asl a			; 0a
B3_0c18:		rol $01			; 26 01
B3_0c1a:		jsr $ac4e		; 20 4e ac
B3_0c1d:		lda $01			; a5 01
B3_0c1f:		ora $08			; 05 08
B3_0c21:		jsr $ac4e		; 20 4e ac
B3_0c24:		iny				; c8 
B3_0c25:		lda $ac53, y	; b9 53 ac
B3_0c28:		cmp #$ff		; c9 ff
B3_0c2a:		beq B3_0c3f ; f0 13

B3_0c2c:		sta $00			; 85 00
B3_0c2e:		iny				; c8 
B3_0c2f:		lda $17			; a5 17
B3_0c31:		beq B3_0c36 ; f0 03

B3_0c33:		lda $ac53, y	; b9 53 ac
B3_0c36:		jsr $ac4e		; 20 4e ac
B3_0c39:		dec $00			; c6 00
B3_0c3b:		bne B3_0c36 ; d0 f9

B3_0c3d:		beq B3_0c24 ; f0 e5

B3_0c3f:		jsr $ac4e		; 20 4e ac
B3_0c42:		stx $1d			; 86 1d
B3_0c44:		dec $0785		; ce 85 07
B3_0c47:		bne B3_0c4d ; d0 04

B3_0c49:		iny				; c8 
B3_0c4a:		sty $0784		; 8c 84 07
B3_0c4d:		rts				; 60 


B3_0c4e:		sta $0300, x	; 9d 00 03
B3_0c51:		inx				; e8 
B3_0c52:		rts				; 60 


B3_0c53:		ora ($20, x)	; 01 20
B3_0c55:		.db $00				; 00
B3_0c56:	.db $ff
B3_0c57:		ora ($04, x)	; 01 04
B3_0c59:		.db $00				; 00
B3_0c5a:		clc				; 18 
B3_0c5b:	.db $6e $04 $00
B3_0c5e:	.db $ff
B3_0c5f:	.db $19 $03 $00
B3_0c62:		ora ($6d, x)	; 01 6d
B3_0c64:	.db $17
B3_0c65:		.db $00				; 00
B3_0c66:		ora ($6d, x)	; 01 6d
B3_0c68:	.db $04
B3_0c69:		.db $00				; 00
B3_0c6a:	.db $ff
B3_0c6b:		ora ($03, x)	; 01 03
B3_0c6d:		.db $00				; 00
B3_0c6e:		ora ($6d, x)	; 01 6d
B3_0c70:	.db $17
B3_0c71:		ror $6f01		; 6e 01 6f
B3_0c74:	.db $04
B3_0c75:		.db $00				; 00
B3_0c76:	.db $ff
B3_0c77:	.db $02
B3_0c78:		jsr $ff00		; 20 00 ff
B3_0c7b:	.db $fe $a0 $00
B3_0c7e:		lda $acd3, x	; bd d3 ac
B3_0c81:		sta $00			; 85 00
B3_0c83:		lda $acd4, x	; bd d4 ac
B3_0c86:		sta $01			; 85 01
B3_0c88:		ldx $1d			; a6 1d
B3_0c8a:		lda #$01		; a9 01
B3_0c8c:		jsr $acce		; 20 ce ac
B3_0c8f:		jsr $acc6		; 20 c6 ac
B3_0c92:		jsr $acc6		; 20 c6 ac
B3_0c95:		lda #$0f		; a9 0f
B3_0c97:		jsr $acce		; 20 ce ac
B3_0c9a:		lda #$03		; a9 03
B3_0c9c:		sta $02			; 85 02
B3_0c9e:		jsr $acc6		; 20 c6 ac
B3_0ca1:		dec $02			; c6 02
B3_0ca3:		bne B3_0c9e ; d0 f9

B3_0ca5:		lda ($00), y	; b1 00
B3_0ca7:		cmp #$fe		; c9 fe
B3_0ca9:		beq B3_0cb9 ; f0 0e

B3_0cab:		cmp #$ff		; c9 ff
B3_0cad:		beq B3_0cb2 ; f0 03

B3_0caf:		jmp $ac95		; 4c 95 ac


B3_0cb2:		jsr $acce		; 20 ce ac
B3_0cb5:		iny				; c8 
B3_0cb6:		jmp $ac8a		; 4c 8a ac


B3_0cb9:		lda #$ff		; a9 ff
B3_0cbb:		jsr $acce		; 20 ce ac
B3_0cbe:		stx $1d			; 86 1d
B3_0cc0:		lda #$04		; a9 04
B3_0cc2:		jsr func_1f_0ce9		; 20 e9 ec
B3_0cc5:		rts				; 60 


B3_0cc6:		lda ($00), y	; b1 00
B3_0cc8:		sta $0300, x	; 9d 00 03
B3_0ccb:		inx				; e8 
B3_0ccc:		iny				; c8 
B3_0ccd:		rts				; 60 


B3_0cce:		sta $0300, x	; 9d 00 03
B3_0cd1:		inx				; e8 
B3_0cd2:		rts				; 60 


B3_0cd3:		cmp $16ac, x	; dd ac 16
B3_0cd6:		lda $acf8		; ad f8 ac
B3_0cd9:	.db $07
B3_0cda:		lda $ad25		; ad 25 ad
B3_0cdd:		.db $00				; 00
B3_0cde:	.db $3f
B3_0cdf:		php				; 08 
B3_0ce0:	.db $17
B3_0ce1:		jsr $2504		; 20 04 25
B3_0ce4:		jsr $2808		; 20 08 28
B3_0ce7:		jsr $010f		; 20 0f 01
B3_0cea:		jsr $170f		; 20 0f 17
B3_0ced:		sec				; 38 
B3_0cee:	.db $04
B3_0cef:		and $38			; 25 38
B3_0cf1:		php				; 08 
B3_0cf2:		plp				; 28 
B3_0cf3:		sec				; 38 
B3_0cf4:	.db $0f
B3_0cf5:		ora ($38, x)	; 01 38
B3_0cf7:		inc $3f00, x	; fe 00 3f
B3_0cfa:	.db $0f
B3_0cfb:	.db $0f
B3_0cfc:	.db $0f
B3_0cfd:		bit $301b		; 2c 1b 30
B3_0d00:	.db $0f
B3_0d01:	.db $0f
B3_0d02:	.db $0f
B3_0d03:	.db $0f
B3_0d04:	.db $0f
B3_0d05:	.db $0f
B3_0d06:		inc $3f00, x	; fe 00 3f
B3_0d09:	.db $0f
B3_0d0a:	.db $0f
B3_0d0b:	.db $0f
B3_0d0c:	.db $0f
B3_0d0d:	.db $0f
B3_0d0e:	.db $0f
B3_0d0f:		bit $301b		; 2c 1b 30
B3_0d12:	.db $0f
B3_0d13:	.db $0f
B3_0d14:	.db $0f
B3_0d15:		inc $3f00, x	; fe 00 3f
B3_0d18:	.db $0f
B3_0d19:	.db $0f
B3_0d1a:	.db $0f
B3_0d1b:	.db $0f
B3_0d1c:	.db $0f
B3_0d1d:	.db $0f
B3_0d1e:	.db $0f
B3_0d1f:	.db $0f
B3_0d20:	.db $0f
B3_0d21:		bit $301b		; 2c 1b 30
B3_0d24:		inc $3f00, x	; fe 00 3f
B3_0d27:	.db $0f
B3_0d28:	.db $0f
B3_0d29:	.db $0f
B3_0d2a:	.db $0f
B3_0d2b:	.db $0f
B3_0d2c:	.db $0f
B3_0d2d:	.db $0f
B3_0d2e:	.db $0f
B3_0d2f:	.db $0f
B3_0d30:	.db $0f
B3_0d31:	.db $0f
B3_0d32:	.db $0f
B3_0d33:	.db $fe $a2 $00
B3_0d36:		lda $054e, x	; bd 4e 05
B3_0d39:		beq B3_0d4a ; f0 0f

B3_0d3b:		asl a			; 0a
B3_0d3c:		tay				; a8 
B3_0d3d:		lda $ad50, y	; b9 50 ad
B3_0d40:		sta $00			; 85 00
B3_0d42:		lda $ad51, y	; b9 51 ad
B3_0d45:		sta $01			; 85 01
B3_0d47:		jsr $a7e0		; 20 e0 a7
B3_0d4a:		inx				; e8 
B3_0d4b:		cpx #$12		; e0 12
B3_0d4d:		bne B3_0d36 ; d0 e7

B3_0d4f:		rts				; 60 


B3_0d50:		lsr $ad, x		; 56 ad
B3_0d52:		ora $ae			; 05 ae
B3_0d54:	.db $57
B3_0d55:		lda $a960		; ad 60 a9
B3_0d58:		.db $00				; 00
B3_0d59:		sta $10			; 85 10
B3_0d5b:		lda $05d8, x	; bd d8 05
B3_0d5e:		beq B3_0d64 ; f0 04

B3_0d60:		dec $05d8, x	; de d8 05
B3_0d63:		rts				; 60 


B3_0d64:		lda $07f0		; ad f0 07
B3_0d67:		asl a			; 0a
B3_0d68:		tay				; a8 
B3_0d69:		lda $add8, y	; b9 d8 ad
B3_0d6c:		beq B3_0dbb ; f0 4d

B3_0d6e:		cmp #$ff		; c9 ff
B3_0d70:		bne B3_0d82 ; d0 10

B3_0d72:		lda #$01		; a9 01
B3_0d74:		sta $10			; 85 10
B3_0d76:		lda #$00		; a9 00
B3_0d78:		sta $054e, x	; 9d 4e 05
B3_0d7b:		sta $0400, x	; 9d 00 04
B3_0d7e:		sta $048c, x	; 9d 8c 04
B3_0d81:		rts				; 60 


B3_0d82:		cmp #$04		; c9 04
B3_0d84:		bcc B3_0d9b ; 90 15

B3_0d86:		sec				; 38 
B3_0d87:		sbc #$04		; e9 04
B3_0d89:		pha				; 48 
B3_0d8a:		jsr $adc9		; 20 c9 ad
B3_0d8d:		pla				; 68 
B3_0d8e:		stx $12			; 86 12
B3_0d90:		tax				; aa 
B3_0d91:		inx				; e8 
B3_0d92:		txa				; 8a 
B3_0d93:		asl a			; 0a
B3_0d94:		tax				; aa 
B3_0d95:		jsr $ac7c		; 20 7c ac
B3_0d98:		ldx $12			; a6 12
B3_0d9a:		rts				; 60 


B3_0d9b:		sec				; 38 
B3_0d9c:		sbc #$01		; e9 01
B3_0d9e:		pha				; 48 
B3_0d9f:		jsr $adc9		; 20 c9 ad
B3_0da2:		pla				; 68 
B3_0da3:		tay				; a8 
B3_0da4:		lda $adff, y	; b9 ff ad
B3_0da7:		sta $0438, x	; 9d 38 04
B3_0daa:		lda $ae02, y	; b9 02 ae
B3_0dad:		sta $041c, x	; 9d 1c 04
B3_0db0:		and #$40		; 29 40
B3_0db2:		sta $0470, x	; 9d 70 04
B3_0db5:		lda #$2e		; a9 2e
B3_0db7:		jsr playSound		; 20 5f e2
B3_0dba:		rts				; 60 


B3_0dbb:		stx $12			; 86 12
B3_0dbd:		ldx #$08		; a2 08
B3_0dbf:		jsr $ac7c		; 20 7c ac
B3_0dc2:		ldx $12			; a6 12
B3_0dc4:		lda #$80		; a9 80
B3_0dc6:		sta $0470, x	; 9d 70 04
B3_0dc9:		lda $07f0		; ad f0 07
B3_0dcc:		asl a			; 0a
B3_0dcd:		tay				; a8 
B3_0dce:		lda $add9, y	; b9 d9 ad
B3_0dd1:		sta $05d8, x	; 9d d8 05
B3_0dd4:		inc $07f0		; ee f0 07
B3_0dd7:		rts				; 60 


B3_0dd8:		.db $00				; 00
B3_0dd9:		bpl B3_0ddc ; 10 01

B3_0ddb:	.db $02
B3_0ddc:		.db $00				; 00
B3_0ddd:	.db $02
B3_0dde:	.db $04
B3_0ddf:	.db $02
B3_0de0:		ora ($02, x)	; 01 02
B3_0de2:		.db $00				; 00
B3_0de3:	.db $02
B3_0de4:		.db $00				; 00
B3_0de5:		jsr $0202		; 20 02 02
B3_0de8:		.db $00				; 00
B3_0de9:	.db $02
B3_0dea:		ora $02			; 05 02
B3_0dec:	.db $02
B3_0ded:	.db $02
B3_0dee:		.db $00				; 00
B3_0def:	.db $02
B3_0df0:		.db $00				; 00
B3_0df1:		jsr $0203		; 20 03 02
B3_0df4:		.db $00				; 00
B3_0df5:	.db $02
B3_0df6:		asl $02			; 06 02
B3_0df8:	.db $03
B3_0df9:	.db $02
B3_0dfa:		.db $00				; 00
B3_0dfb:	.db $02
B3_0dfc:		.db $00				; 00
B3_0dfd:		;removed
	.db $30 $ff

B3_0dff:		cpy #$40		; c0 40
B3_0e01:	.db $80
B3_0e02:		rts				; 60 


B3_0e03:		pla				; 68 
B3_0e04:		;removed
	.db $50 $bd

B3_0e06:	.db $db
B3_0e07:	.db $04
B3_0e08:		sec				; 38 
B3_0e09:		sbc #$00		; e9 00
B3_0e0b:		sta $04db, x	; 9d db 04
B3_0e0e:		lda $041c, x	; bd 1c 04
B3_0e11:		sbc #$04		; e9 04
B3_0e13:		sta $041c, x	; 9d 1c 04
B3_0e16:		bcs B3_0e24 ; b0 0c

B3_0e18:		lda $0470, x	; bd 70 04
B3_0e1b:		and #$01		; 29 01
B3_0e1d:		beq B3_0e24 ; f0 05

B3_0e1f:		lda #$40		; a9 40
B3_0e21:		sta $0470, x	; 9d 70 04
B3_0e24:		lda $07ec		; ad ec 07
B3_0e27:		cmp #$1f		; c9 1f
B3_0e29:		beq B3_0e55 ; f0 2a

B3_0e2b:		cmp #$08		; c9 08
B3_0e2d:		bne B3_0e4a ; d0 1b

B3_0e2f:		lda $0438, x	; bd 38 04
B3_0e32:		bmi B3_0e4a ; 30 16

B3_0e34:		lda $041c, x	; bd 1c 04
B3_0e37:		cmp #$08		; c9 08
B3_0e39:		bcc B3_0e4a ; 90 0f

B3_0e3b:		cmp #$68		; c9 68
B3_0e3d:		bcs B3_0e4a ; b0 0b

B3_0e3f:		lda #$14		; a9 14
B3_0e41:		sta $048c, x	; 9d 8c 04
B3_0e44:		lda #$12		; a9 12
B3_0e46:		sta $0400, x	; 9d 00 04
B3_0e49:		rts				; 60 


B3_0e4a:		lda #$14		; a9 14
B3_0e4c:		sta $048c, x	; 9d 8c 04
B3_0e4f:		lda #$10		; a9 10
B3_0e51:		sta $0400, x	; 9d 00 04
B3_0e54:		rts				; 60 


B3_0e55:		inc $16			; e6 16
B3_0e57:		lda $041c, x	; bd 1c 04
B3_0e5a:		cmp #$04		; c9 04
B3_0e5c:		bcc B3_0e63 ; 90 05

B3_0e5e:		cmp #$fc		; c9 fc
B3_0e60:		bcs B3_0e63 ; b0 01

B3_0e62:		rts				; 60 


B3_0e63:		lda #$00		; a9 00
B3_0e65:		sta $054e, x	; 9d 4e 05
B3_0e68:		sta $0400, x	; 9d 00 04
B3_0e6b:		sta $048c, x	; 9d 8c 04
B3_0e6e:		rts				; 60 


B3_0e6f:		lda $0780		; ad 80 07
B3_0e72:		clc				; 18 
B3_0e73:		adc $0782		; 6d 82 07
B3_0e76:		sta $0782		; 8d 82 07
B3_0e79:		lda $0781		; ad 81 07
B3_0e7c:		adc $fc			; 65 fc
B3_0e7e:		cmp #$f0		; c9 f0
B3_0e80:		bcc B3_0e85 ; 90 03

B3_0e82:		clc				; 18 
B3_0e83:		adc #$10		; 69 10
B3_0e85:		sta $fc			; 85 fc
B3_0e87:		rts				; 60 


B3_0e88:		lda #$50		; a9 50
B3_0e8a:		sta wNametableMapping			; 85 25
B3_0e8c:		rts				; 60 


B3_0e8d:		lda $07ed		; ad ed 07
B3_0e90:		ora $07ee		; 0d ee 07
B3_0e93:		beq B3_0ea1 ; f0 0c

B3_0e95:		dec $07ed		; ce ed 07
B3_0e98:		ldy $07ed		; ac ed 07
B3_0e9b:		iny				; c8 
B3_0e9c:		bne B3_0ea1 ; d0 03

B3_0e9e:		dec $07ee		; ce ee 07
B3_0ea1:		rts				; 60 


B3_0ea2:		lda $07ef		; ad ef 07
B3_0ea5:		asl a			; 0a
B3_0ea6:		asl a			; 0a
B3_0ea7:		asl a			; 0a
B3_0ea8:		asl a			; 0a
B3_0ea9:		sta $04			; 85 04
B3_0eab:		lda $af00, x	; bd 00 af
B3_0eae:		sta $00			; 85 00
B3_0eb0:		lda $af01, x	; bd 01 af
B3_0eb3:		sta $01			; 85 01
B3_0eb5:		ldx $1d			; a6 1d
B3_0eb7:		ldy #$00		; a0 00
B3_0eb9:		lda #$01		; a9 01
B3_0ebb:		jsr $acce		; 20 ce ac
B3_0ebe:		jsr $acc6		; 20 c6 ac
B3_0ec1:		jsr $acc6		; 20 c6 ac
B3_0ec4:		lda #$0f		; a9 0f
B3_0ec6:		jsr $acce		; 20 ce ac
B3_0ec9:		lda #$03		; a9 03
B3_0ecb:		sta $02			; 85 02
B3_0ecd:		lda $04			; a5 04
B3_0ecf:		bne B3_0ed5 ; d0 04

B3_0ed1:		lda #$0f		; a9 0f
B3_0ed3:		bne B3_0ee7 ; d0 12

B3_0ed5:		lda ($00), y	; b1 00
B3_0ed7:		and #$0f		; 29 0f
B3_0ed9:		sta $03			; 85 03
B3_0edb:		lda ($00), y	; b1 00
B3_0edd:		and #$f0		; 29 f0
B3_0edf:		cmp $04			; c5 04
B3_0ee1:		bcc B3_0ee5 ; 90 02

B3_0ee3:		lda $04			; a5 04
B3_0ee5:		ora $03			; 05 03
B3_0ee7:		jsr $acce		; 20 ce ac
B3_0eea:		iny				; c8 
B3_0eeb:		dec $02			; c6 02
B3_0eed:		bne B3_0ecd ; d0 de

B3_0eef:		lda ($00), y	; b1 00
B3_0ef1:		cmp #$ff		; c9 ff
B3_0ef3:		bne B3_0ec4 ; d0 cf

B3_0ef5:		jsr $acce		; 20 ce ac
B3_0ef8:		stx $1d			; 86 1d
B3_0efa:		lda #$04		; a9 04
B3_0efc:		jsr func_1f_0ce9		; 20 e9 ec
B3_0eff:		rts				; 60 


B3_0f00:	.db $04
B3_0f01:	.db $af
B3_0f02:	.db $13
B3_0f03:	.db $af
B3_0f04:		.db $00				; 00
B3_0f05:	.db $3f
B3_0f06:		php				; 08 
B3_0f07:	.db $17
B3_0f08:		jsr $2504		; 20 04 25
B3_0f0b:		jsr $2808		; 20 08 28
B3_0f0e:		jsr $010f		; 20 0f 01
B3_0f11:	.db $20 $ff $00
B3_0f14:	.db $3f
B3_0f15:		asl $05, x		; 16 05
B3_0f17:		jsr $0213		; 20 13 02
B3_0f1a:		jsr $0314		; 20 14 03
B3_0f1d:	.db $3b
B3_0f1e:		asl $27, x		; 16 27
B3_0f20:		;removed
	.db $10 $ff

B3_0f22:		lda #$00		; a9 00
B3_0f24:		sta $00			; 85 00
B3_0f26:		lda $0780		; ad 80 07
B3_0f29:		clc				; 18 
B3_0f2a:		adc $0782		; 6d 82 07
B3_0f2d:		sta $0782		; 8d 82 07
B3_0f30:		bcc B3_0f36 ; 90 04

B3_0f32:		lda #$01		; a9 01
B3_0f34:		sta $00			; 85 00
B3_0f36:		lda $0781		; ad 81 07
B3_0f39:		adc $fc			; 65 fc
B3_0f3b:		cmp #$f0		; c9 f0
B3_0f3d:		bcc B3_0f4b ; 90 0c

B3_0f3f:		clc				; 18 
B3_0f40:		adc #$10		; 69 10
B3_0f42:		sta $fc			; 85 fc
B3_0f44:		lda $ff			; a5 ff
B3_0f46:		eor #$02		; 49 02
B3_0f48:		sta $ff			; 85 ff
B3_0f4a:		rts				; 60 


B3_0f4b:		sta $fc			; 85 fc
B3_0f4d:		clc				; 18 
B3_0f4e:		lda $00			; a5 00
B3_0f50:		beq B3_0f53 ; f0 01

B3_0f52:		sec				; 38 
B3_0f53:		lda $0781		; ad 81 07
B3_0f56:		adc $0788		; 6d 88 07
B3_0f59:		sta $0788		; 8d 88 07
B3_0f5c:		lda $0787		; ad 87 07
B3_0f5f:		adc #$00		; 69 00
B3_0f61:		sta $0787		; 8d 87 07
B3_0f64:		rts				; 60 


gameStateA_namePwInput_body:
B3_0f65:		lda wGameSubstate			; a5 19
B3_0f67:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $af84
	.dw $afa4
	.dw $afc1
	.dw $afe0
	.dw $aff4
	.dw $b011
	.dw $b2b9
	.dw $b2d8
	.dw $b300
	.dw $b351
	.dw $b368
	.dw $b396
	.dw $b381

B3_0f84:		lda wGameSubstate			; a5 19
B3_0f86:		bmi B3_0f90 ; 30 08

B3_0f88:		lda #$03		; a9 03
B3_0f8a:		sta $1c			; 85 1c
B3_0f8c:		lda #$80		; a9 80
B3_0f8e:		sta wGameSubstate			; 85 19

B3_0f90:		jsr func_1f_0bfd		; 20 fd eb

B3_0f93:		lda #NT_VERTICAL_MIRROR		; a9 44
B3_0f95:		sta wNametableMapping			; 85 25
B3_0f97:		sta NAMETABLE_MAPPING.w		; 8d 05 51

B3_0f9a:		lda #MUS_EPITAPH		; a9 62
B3_0f9c:		jsr playSound		; 20 5f e2

B3_0f9f:		lda #$01		; a9 01
B3_0fa1:		sta wGameSubstate			; 85 19
B3_0fa3:		rts				; 60 


B3_0fa4:		jsr $b625		; 20 25 b6
B3_0fa7:		ldx #$18		; a2 18
B3_0fa9:		jsr $ec04		; 20 04 ec
B3_0fac:		ldy #$00		; a0 00
B3_0fae:		jsr $b28d		; 20 8d b2
B3_0fb1:		jsr setBank_c000_toRom07h		; for dpcm
B3_0fb4:		jsr $b1c7		; 20 c7 b1
B3_0fb7:		jsr $b066		; 20 66 b0
B3_0fba:		lda #$03		; a9 03
B3_0fbc:		sta $1c			; 85 1c
B3_0fbe:		inc $19			; e6 19
B3_0fc0:		rts				; 60 


B3_0fc1:		lda $1d			; a5 1d
B3_0fc3:		sta $15			; 85 15
B3_0fc5:		jsr $b598		; 20 98 b5
B3_0fc8:		jsr $fba4		; 20 a4 fb
B3_0fcb:		lda $b4			; a5 b4
B3_0fcd:		cmp #$ff		; c9 ff
B3_0fcf:		bne B3_0fdf ; d0 0e

B3_0fd1:		lda #$00		; a9 00
B3_0fd3:		ldx $15			; a6 15
B3_0fd5:		sta $0300, x	; 9d 00 03
B3_0fd8:		stx $1d			; 86 1d
B3_0fda:		jsr $b675		; 20 75 b6
B3_0fdd:		inc $19			; e6 19
B3_0fdf:		rts				; 60 


B3_0fe0:		jsr $b06e		; 20 6e b0
B3_0fe3:		lda $26			; a5 26
B3_0fe5:		and #$10		; 29 10
B3_0fe7:		bne B3_0fed ; d0 04

B3_0fe9:		lda $2d			; a5 2d
B3_0feb:		beq B3_1006 ; f0 19

B3_0fed:		ldy #$00		; a0 00
B3_0fef:		sty $2d			; 84 2d
B3_0ff1:		inc $19			; e6 19
B3_0ff3:		rts				; 60 


B3_0ff4:		ldy $6b			; a4 6b
B3_0ff6:		bne B3_1007 ; d0 0f

B3_0ff8:		lda #$07		; a9 07
B3_0ffa:		sta $0160		; 8d 60 01
B3_0ffd:		jsr $b066		; 20 66 b0
B3_1000:		lda #$78		; a9 78
B3_1002:		sta $30			; 85 30
B3_1004:		inc $19			; e6 19
B3_1006:		rts				; 60 


B3_1007:		inc $19			; e6 19
B3_1009:		jmp $b066		; 4c 66 b0


B3_100c:		lda #$02		; a9 02
B3_100e:		sta $19			; 85 19
B3_1010:		rts				; 60 


B3_1011:		jsr $b17a		; 20 7a b1
B3_1014:		lda #$00		; a9 00
B3_1016:		sta $0401		; 8d 01 04
B3_1019:		lda $6b			; a5 6b
B3_101b:		bne B3_1047 ; d0 2a

B3_101d:		dec $30			; c6 30
B3_101f:		beq B3_1050 ; f0 2f

B3_1021:		lda $b4			; a5 b4
B3_1023:		cmp #$ff		; c9 ff
B3_1025:		beq B3_105c ; f0 35

B3_1027:		lda $30			; a5 30
B3_1029:		cmp #$30		; c9 30
B3_102b:		bcs B3_105c ; b0 2f

B3_102d:		lda $1d			; a5 1d
B3_102f:		sta $15			; 85 15
B3_1031:		jsr $b598		; 20 98 b5
B3_1034:		jsr $fbaf		; 20 af fb
B3_1037:		lda $b4			; a5 b4
B3_1039:		cmp #$ff		; c9 ff
B3_103b:		bne B3_105c ; d0 1f

B3_103d:		lda #$00		; a9 00
B3_103f:		ldx $15			; a6 15
B3_1041:		sta $0300, x	; 9d 00 03
B3_1044:		stx $1d			; 86 1d
B3_1046:		rts				; 60 


B3_1047:		jsr $b02d		; 20 2d b0
B3_104a:		lda $b4			; a5 b4
B3_104c:		cmp #$ff		; c9 ff
B3_104e:		bne B3_105c ; d0 0c

B3_1050:		lda #$00		; a9 00
B3_1052:		sta $2d			; 85 2d
B3_1054:		lda $6b			; a5 6b
B3_1056:		beq B3_105d ; f0 05

B3_1058:		lda #$06		; a9 06
B3_105a:		sta $19			; 85 19
B3_105c:		rts				; 60 


B3_105d:		lda #$ff		; a9 ff
B3_105f:		sta $3a			; 85 3a
B3_1061:		lda #$09		; a9 09
B3_1063:		jmp setNewGameState		; 4c 74 e5


B3_1066:		ldy #$00		; a0 00
B3_1068:		sty $b4			; 84 b4
B3_106a:		iny				; c8 
B3_106b:		sty $b5			; 84 b5
B3_106d:		rts				; 60 


B3_106e:		jsr $b07a		; 20 7a b0
B3_1071:		jsr $b17a		; 20 7a b1
B3_1074:		jsr $b1dc		; 20 dc b1
B3_1077:		jmp $b14e		; 4c 4e b1


B3_107a:		ldx #$00		; a2 00
B3_107c:		jsr $b0cc		; 20 cc b0
B3_107f:		jsr $b082		; 20 82 b0
B3_1082:		lda $0781		; ad 81 07
B3_1085:		cmp #$03		; c9 03
B3_1087:		bcc B3_10c5 ; 90 3c

B3_1089:		lda $10			; a5 10
B3_108b:		and #$0c		; 29 0c
B3_108d:		beq B3_10aa ; f0 1b

B3_108f:		ldy $0780		; ac 80 07
B3_1092:		lda $b275, y	; b9 75 b2
B3_1095:		cmp #$fc		; c9 fc
B3_1097:		bne B3_10aa ; d0 11

B3_1099:		lda #$02		; a9 02
B3_109b:		cpy #$03		; c0 03
B3_109d:		beq B3_10a7 ; f0 08

B3_109f:		lda #$05		; a9 05
B3_10a1:		cpy #$04		; c0 04
B3_10a3:		beq B3_10a7 ; f0 02

B3_10a5:		lda #$08		; a9 08
B3_10a7:		sta $0780		; 8d 80 07
B3_10aa:		lda $10			; a5 10
B3_10ac:		and #$03		; 29 03
B3_10ae:		beq B3_10c5 ; f0 15

B3_10b0:		tax				; aa 
B3_10b1:		ldy $0780		; ac 80 07
B3_10b4:		lda $b275, y	; b9 75 b2
B3_10b7:		cmp #$fc		; c9 fc
B3_10b9:		bne B3_10c5 ; d0 0a

B3_10bb:		lda $b0c6, x	; bd c6 b0
B3_10be:		clc				; 18 
B3_10bf:		adc $0780		; 6d 80 07
B3_10c2:		sta $0780		; 8d 80 07
B3_10c5:		rts				; 60 


B3_10c6:		.db $00				; 00
B3_10c7:		ora ($ff, x)	; 01 ff
B3_10c9:		ora ($a2, x)	; 01 a2
B3_10cb:		ora ($20, x)	; 01 20
B3_10cd:	.db $2b
B3_10ce:		lda ($85), y	; b1 85
B3_10d0:		.db $00				; 00
B3_10d1:		and #$0f		; 29 0f
B3_10d3:		beq B3_10da ; f0 05

B3_10d5:		lda #$1a		; a9 1a
B3_10d7:		jsr playSound		; 20 5f e2
B3_10da:		lsr $00			; 46 00
B3_10dc:		bcc B3_10ed ; 90 0f

B3_10de:		lda $0780		; ad 80 07
B3_10e1:		adc #$00		; 69 00
B3_10e3:		cmp $b127, x	; dd 27 b1
B3_10e6:		bcc B3_10ea ; 90 02

B3_10e8:		lda #$00		; a9 00
B3_10ea:		sta $0780		; 8d 80 07
B3_10ed:		lsr $00			; 46 00
B3_10ef:		bcc B3_1100 ; 90 0f

B3_10f1:		lda $0780		; ad 80 07
B3_10f4:		sbc #$01		; e9 01
B3_10f6:		bpl B3_10fd ; 10 05

B3_10f8:		ldy $b127, x	; bc 27 b1
B3_10fb:		dey				; 88 
B3_10fc:		tya				; 98 
B3_10fd:		sta $0780		; 8d 80 07
B3_1100:		lsr $00			; 46 00
B3_1102:		bcc B3_1113 ; 90 0f

B3_1104:		lda $0781		; ad 81 07
B3_1107:		adc #$00		; 69 00
B3_1109:		cmp $b129, x	; dd 29 b1
B3_110c:		bcc B3_1110 ; 90 02

B3_110e:		lda #$00		; a9 00
B3_1110:		sta $0781		; 8d 81 07
B3_1113:		lsr $00			; 46 00
B3_1115:		bcc B3_1126 ; 90 0f

B3_1117:		lda $0781		; ad 81 07
B3_111a:		sbc #$01		; e9 01
B3_111c:		bpl B3_1123 ; 10 05

B3_111e:		ldy $b129, x	; bc 29 b1
B3_1121:		dey				; 88 
B3_1122:		tya				; 98 
B3_1123:		sta $0781		; 8d 81 07
B3_1126:		rts				; 60 


B3_1127:		ora #$04		; 09 04
B3_1129:	.db $04
B3_112a:	.db $04
B3_112b:		cpx #$01		; e0 01
B3_112d:		bcs B3_1149 ; b0 1a

B3_112f:		clc				; 18 
B3_1130:		ldy #$00		; a0 00
B3_1132:		lda $28			; a5 28
B3_1134:		and #$0f		; 29 0f
B3_1136:		beq B3_1142 ; f0 0a

B3_1138:		ldy $07b0		; ac b0 07
B3_113b:		iny				; c8 
B3_113c:		cpy #$0e		; c0 0e
B3_113e:		bcc B3_1142 ; 90 02

B3_1140:		ldy #$00		; a0 00
B3_1142:		sty $07b0		; 8c b0 07
B3_1145:		lda $28			; a5 28
B3_1147:		bcs B3_114b ; b0 02

B3_1149:		lda $26			; a5 26
B3_114b:		sta $10			; 85 10
B3_114d:		rts				; 60 


B3_114e:		ldy #$01		; a0 01
B3_1150:		ldx #$01		; a2 01
B3_1152:		lda $1a			; a5 1a
B3_1154:		and #$10		; 29 10
B3_1156:		beq B3_1174 ; f0 1c

B3_1158:		lda $0785		; ad 85 07
B3_115b:		clc				; 18 
B3_115c:		adc #$47		; 69 47
B3_115e:		sta $00			; 85 00
B3_1160:		lda $0784		; ad 84 07
B3_1163:		asl a			; 0a
B3_1164:		asl a			; 0a
B3_1165:		asl a			; 0a
B3_1166:		clc				; 18 
B3_1167:		adc #$60		; 69 60
B3_1169:		sta $01			; 85 01
B3_116b:		jsr $b1ac		; 20 ac b1
B3_116e:		lda #$f6		; a9 f6
B3_1170:		sta $0400, x	; 9d 00 04
B3_1173:		rts				; 60 


B3_1174:		lda #$00		; a9 00
B3_1176:		sta $0400, x	; 9d 00 04
B3_1179:		rts				; 60 


B3_117a:		jsr $b190		; 20 90 b1
B3_117d:		ldy #$f8		; a0 f8
B3_117f:		inc $057c, x	; fe 7c 05
B3_1182:		lda $057c, x	; bd 7c 05
B3_1185:		and #$08		; 29 08
B3_1187:		bne B3_118b ; d0 02

B3_1189:		ldy #$fa		; a0 fa
B3_118b:		tya				; 98 
B3_118c:		sta $0400, x	; 9d 00 04
B3_118f:		rts				; 60 


B3_1190:		ldy #$00		; a0 00
B3_1192:		ldx #$00		; a2 00
B3_1194:		lda $0781		; ad 81 07
B3_1197:		asl a			; 0a
B3_1198:		asl a			; 0a
B3_1199:		asl a			; 0a
B3_119a:		asl a			; 0a
B3_119b:		clc				; 18 
B3_119c:		adc #$88		; 69 88
B3_119e:		sta $00			; 85 00
B3_11a0:		lda $0780		; ad 80 07
B3_11a3:		asl a			; 0a
B3_11a4:		asl a			; 0a
B3_11a5:		asl a			; 0a
B3_11a6:		asl a			; 0a
B3_11a7:		clc				; 18 
B3_11a8:		adc #$3c		; 69 3c
B3_11aa:		sta $01			; 85 01
B3_11ac:		lda $00			; a5 00
B3_11ae:		sta $041c, x	; 9d 1c 04
B3_11b1:		lda $01			; a5 01
B3_11b3:		sta $0438, x	; 9d 38 04
B3_11b6:		lda $b1c3, y	; b9 c3 b1
B3_11b9:		sta $048c, x	; 9d 8c 04
B3_11bc:		lda $b1c5, y	; b9 c5 b1
B3_11bf:		sta $0454, x	; 9d 54 04
B3_11c2:		rts				; 60 


B3_11c3:	.db $0c
B3_11c4:	.db $0c
B3_11c5:	.db $23
B3_11c6:		.db $00				; 00
B3_11c7:		ldx #$00		; a2 00
B3_11c9:		lda $b1d4, x	; bd d4 b1
B3_11cc:		sta $46, x		; 95 46
B3_11ce:		inx				; e8 
B3_11cf:		cpx #$08		; e0 08
B3_11d1:		bcc B3_11c9 ; 90 f6

B3_11d3:		rts				; 60 


B3_11d4:		rti				; 40 


B3_11d5:		ora ($00, x)	; 01 00
B3_11d7:	.db $43
B3_11d8:		rti				; 40 


B3_11d9:		eor ($42, x)	; 41 42
B3_11db:	.db $73
B3_11dc:		lda $26			; a5 26
B3_11de:		and #$c0		; 29 c0
B3_11e0:		beq B3_122e ; f0 4c

B3_11e2:		lda $26			; a5 26
B3_11e4:		and #$80		; 29 80
B3_11e6:		beq B3_122f ; f0 47

B3_11e8:		lda $0781		; ad 81 07
B3_11eb:		sta $00			; 85 00
B3_11ed:		lda $00			; a5 00
B3_11ef:		beq B3_11fb ; f0 0a

B3_11f1:		lda #$00		; a9 00
B3_11f3:		clc				; 18 
B3_11f4:		adc $b127		; 6d 27 b1
B3_11f7:		dec $00			; c6 00
B3_11f9:		bne B3_11f4 ; d0 f9

B3_11fb:		clc				; 18 
B3_11fc:		adc $0780		; 6d 80 07
B3_11ff:		tay				; a8 
B3_1200:		ldx $0784		; ae 84 07
B3_1203:		lda $b25a, y	; b9 5a b2
B3_1206:		cmp #$ff		; c9 ff
B3_1208:		beq B3_1246 ; f0 3c

B3_120a:		cmp #$fe		; c9 fe
B3_120c:		beq B3_124b ; f0 3d

B3_120e:		cmp #$fd		; c9 fd
B3_1210:		beq B3_123a ; f0 28

B3_1212:		cmp #$fc		; c9 fc
B3_1214:		beq B3_1259 ; f0 43

B3_1216:		sta $07f8, x	; 9d f8 07
B3_1219:		jsr $b27e		; 20 7e b2
B3_121c:		lda #$1b		; a9 1b
B3_121e:		jsr playSound		; 20 5f e2
B3_1221:		ldy $0784		; ac 84 07
B3_1224:		iny				; c8 
B3_1225:		cpy #$08		; c0 08
B3_1227:		bcc B3_122b ; 90 02

B3_1229:		ldy #$00		; a0 00
B3_122b:		sty $0784		; 8c 84 07
B3_122e:		rts				; 60 


B3_122f:		jsr $b23a		; 20 3a b2
B3_1232:		lda #$00		; a9 00
B3_1234:		sta $07f8, y	; 99 f8 07
B3_1237:		jmp $b27e		; 4c 7e b2


B3_123a:		ldy $0784		; ac 84 07
B3_123d:		dey				; 88 
B3_123e:		bpl B3_1242 ; 10 02

B3_1240:		ldy #$07		; a0 07
B3_1242:		sty $0784		; 8c 84 07
B3_1245:		rts				; 60 


B3_1246:		lda #$01		; a9 01
B3_1248:		sta $2d			; 85 2d
B3_124a:		rts				; 60 


B3_124b:		ldy $0784		; ac 84 07
B3_124e:		iny				; c8 
B3_124f:		cpy #$08		; c0 08
B3_1251:		bcc B3_1255 ; 90 02

B3_1253:		ldy #$00		; a0 00
B3_1255:		sty $0784		; 8c 84 07
B3_1258:		rts				; 60 


B3_1259:		rts				; 60 


B3_125a:		;removed
	.db $50 $51

B3_125c:	.db $52
B3_125d:	.db $53
B3_125e:	.db $54
B3_125f:		eor $56, x		; 55 56
B3_1261:	.db $57
B3_1262:		cli				; 58 
B3_1263:		eor $5b5a, y	; 59 5a 5b
B3_1266:	.db $5c
B3_1267:		eor $5f5e, x	; 5d 5e 5f
B3_126a:		rts				; 60 


B3_126b:		adc ($62, x)	; 61 62
B3_126d:	.db $63
B3_126e:	.db $64
B3_126f:		adc $66			; 65 66
B3_1271:	.db $67
B3_1272:		pla				; 68 
B3_1273:		adc #$00		; 69 00
B3_1275:		ror a			; 6a
B3_1276:	.db $6b
B3_1277:	.db $4b
B3_1278:	.db $fc
B3_1279:	.db $fc
B3_127a:		sbc $fcfe, x	; fd fe fc
B3_127d:	.db $ff
B3_127e:		pha				; 48 
B3_127f:		ldy #$00		; a0 00
B3_1281:		jsr $b2a0		; 20 a0 b2
B3_1284:		pla				; 68 
B3_1285:		jsr storeByteInVramQueue		; 20 14 ed
B3_1288:		jmp terminateVramQueue		; 4c 12 ed


B3_128b:		ldy #$02		; a0 02
B3_128d:		jsr $b2a0		; 20 a0 b2
B3_1290:		ldy #$00		; a0 00
B3_1292:		lda $07f8, y	; b9 f8 07
B3_1295:		jsr storeByteInVramQueue		; 20 14 ed
B3_1298:		iny				; c8 
B3_1299:		cpy #$08		; c0 08
B3_129b:		bcc B3_1292 ; 90 f5

B3_129d:		jmp terminateVramQueue		; 4c 12 ed


B3_12a0:		lda #$01		; a9 01
B3_12a2:		jsr storeByteInVramQueue		; 20 14 ed
B3_12a5:		lda $0784		; ad 84 07
B3_12a8:		clc				; 18 
B3_12a9:		adc $b2b5, y	; 79 b5 b2
B3_12ac:		jsr storeByteInVramQueue		; 20 14 ed
B3_12af:		lda $b2b6, y	; b9 b6 b2
B3_12b2:		jmp storeByteInVramQueue		; 4c 14 ed


B3_12b5:		cpx $ac20		; ec 20 ac
B3_12b8:		jsr $fd20		; 20 20 fd
B3_12bb:	.db $eb
B3_12bc:		lda #$98		; a9 98
B3_12be:		ldx #$1a		; a2 1a
B3_12c0:		jsr $ebd5		; 20 d5 eb
B3_12c3:		jsr $b675		; 20 75 b6
B3_12c6:		jsr $b28b		; 20 8b b2
B3_12c9:		lda #$02		; a9 02
B3_12cb:		sta $1c			; 85 1c
B3_12cd:		jsr $b625		; 20 25 b6
B3_12d0:		jsr $b066		; 20 66 b0
B3_12d3:		inc $19			; e6 19
B3_12d5:		jmp $b1c7		; 4c c7 b1


B3_12d8:		lda $b4			; a5 b4
B3_12da:		cmp #$ff		; c9 ff
B3_12dc:		beq B3_12f8 ; f0 1a

B3_12de:		lda $1d			; a5 1d
B3_12e0:		sta $15			; 85 15
B3_12e2:		jsr $b598		; 20 98 b5
B3_12e5:		jsr $fba4		; 20 a4 fb
B3_12e8:		lda $b4			; a5 b4
B3_12ea:		cmp #$ff		; c9 ff
B3_12ec:		bne B3_1338 ; d0 4a

B3_12ee:		lda #$00		; a9 00
B3_12f0:		ldx $15			; a6 15
B3_12f2:		sta $0300, x	; 9d 00 03
B3_12f5:		stx $1d			; 86 1d
B3_12f7:		rts				; 60 


B3_12f8:		inc $19			; e6 19
B3_12fa:		jsr $b48d		; 20 8d b4
B3_12fd:		jmp $b471		; 4c 71 b4


B3_1300:		jsr $b3db		; 20 db b3
B3_1303:		jsr $b50c		; 20 0c b5
B3_1306:		jsr $b3b9		; 20 b9 b3
B3_1309:		lda $26			; a5 26
B3_130b:		and #$30		; 29 30
B3_130d:		bne B3_1313 ; d0 04

B3_130f:		lda $2d			; a5 2d
B3_1311:		beq B3_1338 ; f0 25

B3_1313:		lda $26			; a5 26
B3_1315:		and #$20		; 29 20
B3_1317:		bne B3_1349 ; d0 30

B3_1319:		jsr $b656		; 20 56 b6
B3_131c:		ldx #$05		; a2 05
B3_131e:		jsr $b627		; 20 27 b6
B3_1321:		lda $078b		; ad 8b 07
B3_1324:		beq B3_1339 ; f0 13

B3_1326:		lda #$40		; a9 40
B3_1328:		jsr playSound		; 20 5f e2
B3_132b:		lda #$09		; a9 09
B3_132d:		sta $19			; 85 19
B3_132f:		lda #$23		; a9 23
B3_1331:		jsr func_1f_0ce9		; 20 e9 ec
B3_1334:		lda #$78		; a9 78
B3_1336:		sta $30			; 85 30
B3_1338:		rts				; 60 


B3_1339:		lda #$78		; a9 78
B3_133b:		sta $30			; 85 30
B3_133d:		lda #$07		; a9 07
B3_133f:		sta $0160		; 8d 60 01
B3_1342:		lda #$0a		; a9 0a
B3_1344:		sta $19			; 85 19
B3_1346:		jmp $b066		; 4c 66 b0


B3_1349:		jsr $b066		; 20 66 b0
B3_134c:		lda #$0b		; a9 0b
B3_134e:		sta $19			; 85 19
B3_1350:		rts				; 60 


B3_1351:		lda #$22		; a9 22
B3_1353:		jsr $b3ab		; 20 ab b3
B3_1356:		dec $30			; c6 30
B3_1358:		bne B3_1350 ; d0 f6

B3_135a:		jsr $b066		; 20 66 b0
B3_135d:		lda #$0c		; a9 0c
B3_135f:		sta $19			; 85 19
B3_1361:		lda #$00		; a9 00
B3_1363:		sta $1d			; 85 1d
B3_1365:		jmp $b682		; 4c 82 b6


B3_1368:		lda $b4			; a5 b4
B3_136a:		cmp #$ff		; c9 ff
B3_136c:		beq B3_1378 ; f0 0a

B3_136e:		lda $1d			; a5 1d
B3_1370:		sta $15			; 85 15
B3_1372:		jsr $b598		; 20 98 b5
B3_1375:		jsr $fbaf		; 20 af fb
B3_1378:		dec $30			; c6 30
B3_137a:		bne B3_1350 ; d0 d4

B3_137c:		lda #$0e		; a9 0e
B3_137e:		jmp setNewGameState		; 4c 74 e5


B3_1381:		lda $1d			; a5 1d
B3_1383:		sta $15			; 85 15
B3_1385:		jsr $b598		; 20 98 b5
B3_1388:		jsr $fbaf		; 20 af fb
B3_138b:		lda $b4			; a5 b4
B3_138d:		cmp #$ff		; c9 ff
B3_138f:		bne B3_13aa ; d0 19

B3_1391:		lda #$06		; a9 06
B3_1393:		sta $19			; 85 19
B3_1395:		rts				; 60 


B3_1396:		lda $1d			; a5 1d
B3_1398:		sta $15			; 85 15
B3_139a:		jsr $b598		; 20 98 b5
B3_139d:		jsr $fbaf		; 20 af fb
B3_13a0:		lda $b4			; a5 b4
B3_13a2:		cmp #$ff		; c9 ff
B3_13a4:		bne B3_13aa ; d0 04

B3_13a6:		lda #$01		; a9 01
B3_13a8:		sta $19			; 85 19
B3_13aa:		rts				; 60 


B3_13ab:		sta $00			; 85 00
B3_13ad:		lda $30			; a5 30
B3_13af:		and #$10		; 29 10
B3_13b1:		asl a			; 0a
B3_13b2:		asl a			; 0a
B3_13b3:		asl a			; 0a
B3_13b4:		ora $00			; 05 00
B3_13b6:		jmp func_1f_0ce9		; 4c e9 ec


B3_13b9:		lda $1a			; a5 1a
B3_13bb:		and #$01		; 29 01
B3_13bd:		bne B3_13cd ; d0 0e

B3_13bf:		lda $078d		; ad 8d 07
B3_13c2:		beq B3_13da ; f0 16

B3_13c4:		jsr $b48d		; 20 8d b4
B3_13c7:		lda #$00		; a9 00
B3_13c9:		sta $078d		; 8d 8d 07
B3_13cc:		rts				; 60 


B3_13cd:		lda $078c		; ad 8c 07
B3_13d0:		beq B3_13da ; f0 08

B3_13d2:		jsr $b471		; 20 71 b4
B3_13d5:		lda #$00		; a9 00
B3_13d7:		sta $078c		; 8d 8c 07
B3_13da:		rts				; 60 


B3_13db:		jsr $b533		; 20 33 b5
B3_13de:		jsr $b3fb		; 20 fb b3
B3_13e1:		lda $26			; a5 26
B3_13e3:		and #$0f		; 29 0f
B3_13e5:		beq B3_13f8 ; f0 11

B3_13e7:		lda $0781		; ad 81 07
B3_13ea:		sta $0783		; 8d 83 07
B3_13ed:		lda $0780		; ad 80 07
B3_13f0:		sta $0782		; 8d 82 07
B3_13f3:		lda #$01		; a9 01
B3_13f5:		sta $078c		; 8d 8c 07
B3_13f8:		jmp $b0ca		; 4c ca b0


B3_13fb:		ldx #$02		; a2 02
B3_13fd:		ldy #$01		; a0 01
B3_13ff:		jsr $b414		; 20 14 b4
B3_1402:		lda $b433, y	; b9 33 b4
B3_1405:		sta $0438, x	; 9d 38 04
B3_1408:		lda #$50		; a9 50
B3_140a:		sta $041c, x	; 9d 1c 04
B3_140d:		inx				; e8 
B3_140e:		iny				; c8 
B3_140f:		cpx #$05		; e0 05
B3_1411:		bcc B3_13ff ; 90 ec

B3_1413:		rts				; 60 


B3_1414:		lda $b427, y	; b9 27 b4
B3_1417:		sta $0400, x	; 9d 00 04
B3_141a:		lda $b42b, y	; b9 2b b4
B3_141d:		sta $048c, x	; 9d 8c 04
B3_1420:		lda $b42f, y	; b9 2f b4
B3_1423:		sta $0454, x	; 9d 54 04
B3_1426:		rts				; 60 


B3_1427:		.db $00				; 00
B3_1428:	.db $42
B3_1429:	.db $fc
B3_142a:	.db $f4
B3_142b:		.db $00				; 00
B3_142c:	.db $14
B3_142d:	.db $0c
B3_142e:	.db $0c
B3_142f:		.db $00				; 00
B3_1430:		.db $00				; 00
B3_1431:		.db $00				; 00
B3_1432:		.db $00				; 00
B3_1433:		bvc B3_14a5 ; 50 70

B3_1435:		bcc B3_13e7 ; 90 b0

B3_1437:	.db $04
B3_1438:	.db $04
B3_1439:		stx $a4			; 86 a4
B3_143b:		ldy $87			; a4 87
B3_143d:		stx $00, y		; 96 00
B3_143f:		.db $00				; 00
B3_1440:	.db $97
B3_1441:		stx $00, y		; 96 00
B3_1443:		.db $00				; 00
B3_1444:	.db $97
B3_1445:		ldx $a5			; a6 a5
B3_1447:		lda $a7			; a5 a7
B3_1449:	.db $04
B3_144a:	.db $04
B3_144b:	.db $80
B3_144c:		sta ($81, x)	; 81 81
B3_144e:	.db $82
B3_144f:		bcc B3_1451 ; 90 00

B3_1451:		.db $00				; 00
B3_1452:	.db $92
B3_1453:		bcc B3_1455 ; 90 00

B3_1455:		.db $00				; 00
B3_1456:	.db $92
B3_1457:		ldy #$a1		; a0 a1
B3_1459:		lda ($a2, x)	; a1 a2
B3_145b:	.db $03
B3_145c:	.db $03
B3_145d:		stx $a4			; 86 a4
B3_145f:	.db $87
B3_1460:		stx $00, y		; 96 00
B3_1462:	.db $97
B3_1463:		ldx $a5			; a6 a5
B3_1465:	.db $a7
B3_1466:	.db $03
B3_1467:	.db $03
B3_1468:	.db $80
B3_1469:		sta ($82, x)	; 81 82
B3_146b:		bcc B3_146d ; 90 00

B3_146d:	.db $92
B3_146e:		ldy #$a1		; a0 a1
B3_1470:		ldx #$ad		; a2 ad
B3_1472:	.db $83
B3_1473:	.db $07
B3_1474:		ldy $0782		; ac 82 07
B3_1477:		jsr $b4eb		; 20 eb b4
B3_147a:		ldy #$2f		; a0 2f
B3_147c:		jsr $b4a0		; 20 a0 b4
B3_147f:		lda $0781		; ad 81 07
B3_1482:		ldy $0780		; ac 80 07
B3_1485:		jsr $b4eb		; 20 eb b4
B3_1488:		ldy #$24		; a0 24
B3_148a:		jmp $b4a0		; 4c a0 b4


B3_148d:		lda $0787		; ad 87 07
B3_1490:		jsr $b4df		; 20 df b4
B3_1493:		ldy #$12		; a0 12
B3_1495:		jsr $b4a0		; 20 a0 b4
B3_1498:		lda $0786		; ad 86 07
B3_149b:		jsr $b4df		; 20 df b4
B3_149e:		ldy #$00		; a0 00
B3_14a0:		lda $b437, y	; b9 37 b4
B3_14a3:		sta $03			; 85 03
B3_14a5:		iny				; c8 
B3_14a6:		lda $b437, y	; b9 37 b4
B3_14a9:		sta $04			; 85 04
B3_14ab:		iny				; c8 
B3_14ac:		lda #$01		; a9 01
B3_14ae:		jsr storeByteInVramQueue		; 20 14 ed
B3_14b1:		lda $00			; a5 00
B3_14b3:		jsr storeByteInVramQueue		; 20 14 ed
B3_14b6:		lda $01			; a5 01
B3_14b8:		jsr storeByteInVramQueue		; 20 14 ed
B3_14bb:		lda $04			; a5 04
B3_14bd:		sta $05			; 85 05
B3_14bf:		lda $b437, y	; b9 37 b4
B3_14c2:		iny				; c8 
B3_14c3:		jsr storeByteInVramQueue		; 20 14 ed
B3_14c6:		dec $05			; c6 05
B3_14c8:		bne B3_14bf ; d0 f5

B3_14ca:		jsr terminateVramQueue		; 20 12 ed
B3_14cd:		clc				; 18 
B3_14ce:		lda #$20		; a9 20
B3_14d0:		adc $00			; 65 00
B3_14d2:		sta $00			; 85 00
B3_14d4:		lda #$00		; a9 00
B3_14d6:		adc $01			; 65 01
B3_14d8:		sta $01			; 85 01
B3_14da:		dec $03			; c6 03
B3_14dc:		bne B3_14ac ; d0 ce

B3_14de:		rts				; 60 


B3_14df:		asl a			; 0a
B3_14e0:		asl a			; 0a
B3_14e1:		clc				; 18 
B3_14e2:		adc #$08		; 69 08
B3_14e4:		sta $00			; 85 00
B3_14e6:		lda #$21		; a9 21
B3_14e8:		sta $01			; 85 01
B3_14ea:		rts				; 60 


B3_14eb:		asl a			; 0a
B3_14ec:		tax				; aa 
B3_14ed:		lda $b500, x	; bd 00 b5
B3_14f0:		sta $00			; 85 00
B3_14f2:		lda $b501, x	; bd 01 b5
B3_14f5:		sta $01			; 85 01
B3_14f7:		lda $00			; a5 00
B3_14f9:		clc				; 18 
B3_14fa:		adc $b508, y	; 79 08 b5
B3_14fd:		sta $00			; 85 00
B3_14ff:		rts				; 60 


B3_1500:		cpy #$21		; c0 21
B3_1502:		jsr $8022		; 20 22 80
B3_1505:	.db $22
B3_1506:		cpx #$22		; e0 22
B3_1508:		asl a			; 0a
B3_1509:		ora $1310		; 0d 10 13
B3_150c:		ldx #$00		; a2 00
B3_150e:		lda $0781		; ad 81 07
B3_1511:		asl a			; 0a
B3_1512:		asl a			; 0a
B3_1513:		asl a			; 0a
B3_1514:		sta $00			; 85 00
B3_1516:		asl a			; 0a
B3_1517:		clc				; 18 
B3_1518:		adc $00			; 65 00
B3_151a:		clc				; 18 
B3_151b:		adc #$7a		; 69 7a
B3_151d:		sta $041c, x	; 9d 1c 04
B3_1520:		lda $0780		; ad 80 07
B3_1523:		asl a			; 0a
B3_1524:		asl a			; 0a
B3_1525:		asl a			; 0a
B3_1526:		sta $01			; 85 01
B3_1528:		asl a			; 0a
B3_1529:		clc				; 18 
B3_152a:		adc $01			; 65 01
B3_152c:		clc				; 18 
B3_152d:		adc #$5d		; 69 5d
B3_152f:		sta $0438, x	; 9d 38 04
B3_1532:		rts				; 60 


B3_1533:		lda $26			; a5 26
B3_1535:		and #$40		; 29 40
B3_1537:		beq B3_1550 ; f0 17

B3_1539:		lda #$1a		; a9 1a
B3_153b:		jsr playSound		; 20 5f e2
B3_153e:		lda #$01		; a9 01
B3_1540:		sta $078d		; 8d 8d 07
B3_1543:		ldy $0786		; ac 86 07
B3_1546:		sty $0787		; 8c 87 07
B3_1549:		iny				; c8 
B3_154a:		tya				; 98 
B3_154b:		and #$03		; 29 03
B3_154d:		sta $0786		; 8d 86 07
B3_1550:		lda $26			; a5 26
B3_1552:		and #$80		; 29 80
B3_1554:		beq B3_1532 ; f0 dc

B3_1556:		lda #$1b		; a9 1b
B3_1558:		jsr playSound		; 20 5f e2
B3_155b:		lda $0781		; ad 81 07
B3_155e:		asl a			; 0a
B3_155f:		asl a			; 0a
B3_1560:		adc $0780		; 6d 80 07
B3_1563:		tay				; a8 
B3_1564:		lda $0781		; ad 81 07
B3_1567:		asl a			; 0a
B3_1568:		asl a			; 0a
B3_1569:		ora $0780		; 0d 80 07
B3_156c:		pha				; 48 
B3_156d:		clc				; 18 
B3_156e:		adc #$05		; 69 05
B3_1570:		tax				; aa 
B3_1571:		pla				; 68 
B3_1572:		asl a			; 0a
B3_1573:		asl a			; 0a
B3_1574:		ora $0786		; 0d 86 07
B3_1577:		sta $00			; 85 00
B3_1579:		and #$03		; 29 03
B3_157b:		bne B3_1581 ; d0 04

B3_157d:		lda #$00		; a9 00
B3_157f:		beq B3_1583 ; f0 02

B3_1581:		lda $00			; a5 00
B3_1583:		sta $0790, y	; 99 90 07
B3_1586:		ldy $0786		; ac 86 07
B3_1589:		lda $0438		; ad 38 04
B3_158c:		sta $0438, x	; 9d 38 04
B3_158f:		lda $041c		; ad 1c 04
B3_1592:		sta $041c, x	; 9d 1c 04
B3_1595:		jmp $b414		; 4c 14 b4


B3_1598:		lda #$1e		; a9 1e
B3_159a:		jsr func_1f_0ce9		; 20 e9 ec
B3_159d:		lda #$04		; a9 04
B3_159f:		jmp func_1f_0ce9		; 4c e9 ec


B3_15a2:		lda $19			; a5 19
B3_15a4:		jsr jumpTablePreserveY		; 20 6d e8
B3_15a7:		lda $e4b5		; ad b5 e4
B3_15aa:		lda $10, x		; b5 10
B3_15ac:		ldx $a9, y		; b6 a9
B3_15ae:	.db $44
B3_15af:		sta wNametableMapping			; 85 25
B3_15b1:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_15b4:		jsr func_1f_0bfd		; 20 fd eb
B3_15b7:		lda #$98		; a9 98
B3_15b9:		ldx #$1a		; a2 1a
B3_15bb:		jsr $ebd5		; 20 d5 eb
B3_15be:		jsr setBank_c000_toRom07h		; 20 d6 e2
B3_15c1:		lda #$62		; a9 62
B3_15c3:		jsr playSound		; 20 5f e2
B3_15c6:		inc $19			; e6 19
B3_15c8:		jsr $b1c7		; 20 c7 b1
B3_15cb:		jsr $b625		; 20 25 b6
B3_15ce:		jsr $b675		; 20 75 b6
B3_15d1:		jsr $b64a		; 20 4a b6
B3_15d4:		jsr $b28b		; 20 8b b2
B3_15d7:		jsr $b647		; 20 47 b6
B3_15da:		jsr $b066		; 20 66 b0
B3_15dd:		lda #$03		; a9 03
B3_15df:		sta $1c			; 85 1c
B3_15e1:		jmp $b3fb		; 4c fb b3


B3_15e4:		lda $b4			; a5 b4
B3_15e6:		cmp #$ff		; c9 ff
B3_15e8:		beq B3_1604 ; f0 1a

B3_15ea:		lda $1d			; a5 1d
B3_15ec:		sta $15			; 85 15
B3_15ee:		jsr $b598		; 20 98 b5
B3_15f1:		jsr $fba4		; 20 a4 fb
B3_15f4:		lda $b4			; a5 b4
B3_15f6:		cmp #$ff		; c9 ff
B3_15f8:		bne B3_160f ; d0 15

B3_15fa:		lda #$00		; a9 00
B3_15fc:		ldx $15			; a6 15
B3_15fe:		stx $1d			; 86 1d
B3_1600:		sta $0300, x	; 9d 00 03
B3_1603:		rts				; 60 


B3_1604:		lda $26			; a5 26
B3_1606:		and #$10		; 29 10
B3_1608:		beq B3_160f ; f0 05

B3_160a:		jsr $b066		; 20 66 b0
B3_160d:		inc $19			; e6 19
B3_160f:		rts				; 60 


B3_1610:		lda $b4			; a5 b4
B3_1612:		cmp #$ff		; c9 ff
B3_1614:		beq B3_1620 ; f0 0a

B3_1616:		lda $1d			; a5 1d
B3_1618:		sta $15			; 85 15
B3_161a:		jsr $b598		; 20 98 b5
B3_161d:		jmp $fbaf		; 4c af fb


B3_1620:		lda #$00		; a9 00
B3_1622:		jmp setNewGameState		; 4c 74 e5


B3_1625:		ldx #$00		; a2 00
B3_1627:		lda #$00		; a9 00
B3_1629:		sta $0400, x	; 9d 00 04
B3_162c:		sta $041c, x	; 9d 1c 04
B3_162f:		sta $0438, x	; 9d 38 04
B3_1632:		sta $0454, x	; 9d 54 04
B3_1635:		sta $0470, x	; 9d 70 04
B3_1638:		sta $048c, x	; 9d 8c 04
B3_163b:		sta $04a8, x	; 9d a8 04
B3_163e:		sta $054e, x	; 9d 4e 05
B3_1641:		inx				; e8 
B3_1642:		cpx #$17		; e0 17
B3_1644:		bcc B3_1629 ; 90 e3

B3_1646:		rts				; 60 


B3_1647:		jmp $b940		; 4c 40 b9


B3_164a:		jsr $b6cd		; 20 cd b6
B3_164d:		sta $078a		; 8d 8a 07
B3_1650:		jsr $b6ee		; 20 ee b6
B3_1653:		jmp $b8c4		; 4c c4 b8


B3_1656:		jsr $b6cd		; 20 cd b6
B3_1659:		sta $10			; 85 10
B3_165b:		jsr $b79a		; 20 9a b7
B3_165e:		jsr $b7f0		; 20 f0 b7
B3_1661:		jsr $b68f		; 20 8f b6
B3_1664:		jsr $b82c		; 20 2c b8
B3_1667:		jsr $e593		; 20 93 e5
B3_166a:		bcs B3_166f ; b0 03

B3_166c:		jsr $b87f		; 20 7f b8
B3_166f:		jsr $b756		; 20 56 b7
B3_1672:		jmp $b865		; 4c 65 b8


B3_1675:		lda #$00		; a9 00
B3_1677:		ldx #$00		; a2 00
B3_1679:		sta $0780, x	; 9d 80 07
B3_167c:		inx				; e8 
B3_167d:		cpx #$10		; e0 10
B3_167f:		bcc B3_1679 ; 90 f8

B3_1681:		rts				; 60 


B3_1682:		ldy #$00		; a0 00
B3_1684:		lda #$00		; a9 00
B3_1686:		sta $0790, y	; 99 90 07
B3_1689:		iny				; c8 
B3_168a:		cpy #$10		; c0 10
B3_168c:		bcc B3_1686 ; 90 f8

B3_168e:		rts				; 60 


B3_168f:		ldx #$00		; a2 00
B3_1691:		lda $078f		; ad 8f 07
B3_1694:		asl a			; 0a
B3_1695:		asl a			; 0a
B3_1696:		asl a			; 0a
B3_1697:		adc $078f		; 6d 8f 07
B3_169a:		sta $00			; 85 00
B3_169c:		ldy $00			; a4 00
B3_169e:		lda $b6b2, y	; b9 b2 b6
B3_16a1:		jsr $b7e2		; 20 e2 b7
B3_16a4:		lda $0790, y	; b9 90 07
B3_16a7:		sta $07a0, x	; 9d a0 07
B3_16aa:		inc $00			; e6 00
B3_16ac:		inx				; e8 
B3_16ad:		cpx #$09		; e0 09
B3_16af:		bcc B3_169c ; 90 eb

B3_16b1:		rts				; 60 


B3_16b2:		.db $00				; 00
B3_16b3:	.db $33
B3_16b4:		jsr $2213		; 20 13 22
B3_16b7:		ora ($11, x)	; 01 11
B3_16b9:	.db $03
B3_16ba:	.db $32
B3_16bb:	.db $12
B3_16bc:		bpl B3_16c0 ; 10 02

B3_16be:	.db $32
B3_16bf:	.db $23
B3_16c0:	.db $13
B3_16c1:		;removed
	.db $30 $21

B3_16c3:		ora ($31, x)	; 01 31
B3_16c5:	.db $13
B3_16c6:		ora ($22, x)	; 01 22
B3_16c8:		;removed
	.db $10 $30

B3_16ca:	.db $33
B3_16cb:	.db $03
B3_16cc:		and ($a9, x)	; 21 a9
B3_16ce:		.db $00				; 00
B3_16cf:		sta $00			; 85 00
B3_16d1:		tax				; aa 
B3_16d2:		lda $07f8, x	; bd f8 07
B3_16d5:		clc				; 18 
B3_16d6:		adc $b6e6, x	; 7d e6 b6
B3_16d9:		clc				; 18 
B3_16da:		adc $00			; 65 00
B3_16dc:		sta $00			; 85 00
B3_16de:		inx				; e8 
B3_16df:		cpx #$08		; e0 08
B3_16e1:		bne B3_16d2 ; d0 ef

B3_16e3:		and #$07		; 29 07
B3_16e5:		rts				; 60 


B3_16e6:	.db $07
B3_16e7:	.db $03
B3_16e8:		ora ($06, x)	; 01 06
B3_16ea:	.db $02
B3_16eb:	.db $04
B3_16ec:		ora $00			; 05 00
B3_16ee:		lda $078a		; ad 8a 07
B3_16f1:		sta $00			; 85 00
B3_16f3:		lda $2e			; a5 2e
B3_16f5:		cmp #$11		; c9 11
B3_16f7:		bcc B3_16fb ; 90 02

B3_16f9:		lda #$11		; a9 11
B3_16fb:		sta $2e			; 85 2e
B3_16fd:		lsr a			; 4a
B3_16fe:		rol $00			; 26 00
B3_1700:		lda $1a			; a5 1a
B3_1702:		lsr a			; 4a
B3_1703:		rol $00			; 26 00
B3_1705:		rol $00			; 26 00
B3_1707:		rol $00			; 26 00
B3_1709:		lda $3a			; a5 3a
B3_170b:		bpl B3_170f ; 10 02

B3_170d:		lda #$00		; a9 00
B3_170f:		ora $00			; 05 00
B3_1711:		asl a			; 0a
B3_1712:		ora $07f6		; 0d f6 07
B3_1715:		sta $0788		; 8d 88 07
B3_1718:		lda $1a			; a5 1a
B3_171a:		lsr a			; 4a
B3_171b:		lda #$50		; a9 50
B3_171d:		bcc B3_1721 ; 90 02

B3_171f:		lda #$a0		; a9 a0
B3_1721:		sta $04			; 85 04
B3_1723:		jsr $b72a		; 20 2a b7
B3_1726:		sta $0789		; 8d 89 07
B3_1729:		rts				; 60 


B3_172a:		lda $0788		; ad 88 07
B3_172d:		and #$f0		; 29 f0
B3_172f:		sta $02			; 85 02
B3_1731:		lda $0788		; ad 88 07
B3_1734:		asl a			; 0a
B3_1735:		asl a			; 0a
B3_1736:		asl a			; 0a
B3_1737:		asl a			; 0a
B3_1738:		sta $03			; 85 03
B3_173a:		clc				; 18 
B3_173b:		adc $02			; 65 02
B3_173d:		sta $01			; 85 01
B3_173f:		lda $04			; a5 04
B3_1741:		eor $02			; 45 02
B3_1743:		sta $00			; 85 00
B3_1745:		lda $04			; a5 04
B3_1747:		eor $03			; 45 03
B3_1749:		clc				; 18 
B3_174a:		adc $00			; 65 00
B3_174c:		lsr a			; 4a
B3_174d:		lsr a			; 4a
B3_174e:		lsr a			; 4a
B3_174f:		lsr a			; 4a
B3_1750:		ora $01			; 05 01
B3_1752:		clc				; 18 
B3_1753:		adc $2e			; 65 2e
B3_1755:		rts				; 60 


B3_1756:		lda $0788		; ad 88 07
B3_1759:		and #$01		; 29 01
B3_175b:		sta $07f6		; 8d f6 07
B3_175e:		lda $0788		; ad 88 07
B3_1761:		lsr a			; 4a
B3_1762:		and #$03		; 29 03
B3_1764:		bne B3_1768 ; d0 02

B3_1766:		lda #$ff		; a9 ff
B3_1768:		sta $3a			; 85 3a
B3_176a:		lda $0788		; ad 88 07
B3_176d:		and #$10		; 29 10
B3_176f:		beq B3_1777 ; f0 06

B3_1771:		lda $2e			; a5 2e
B3_1773:		ora #$01		; 09 01
B3_1775:		sta $2e			; 85 2e
B3_1777:		lda $0788		; ad 88 07
B3_177a:		lsr a			; 4a
B3_177b:		lsr a			; 4a
B3_177c:		lsr a			; 4a
B3_177d:		lsr a			; 4a
B3_177e:		lsr a			; 4a
B3_177f:		sta $078a		; 8d 8a 07
B3_1782:		cmp $10			; c5 10
B3_1784:		beq B3_178b ; f0 05

B3_1786:		lda #$10		; a9 10
B3_1788:		jmp $b7d8		; 4c d8 b7


B3_178b:		lda $2e			; a5 2e
B3_178d:		cmp #$02		; c9 02
B3_178f:		beq B3_1795 ; f0 04

B3_1791:		cmp #$04		; c9 04
B3_1793:		bne B3_1799 ; d0 04

B3_1795:		lda #$01		; a9 01
B3_1797:		sta $2f			; 85 2f
B3_1799:		rts				; 60 


B3_179a:		lda #$02		; a9 02
B3_179c:		sta $00			; 85 00
B3_179e:		lda #$00		; a9 00
B3_17a0:		sta $01			; 85 01
B3_17a2:		ldy $00			; a4 00
B3_17a4:		lda $b7df, y	; b9 df b7
B3_17a7:		jsr $b7e2		; 20 e2 b7
B3_17aa:		lda $0790, y	; b9 90 07
B3_17ad:		and #$03		; 29 03
B3_17af:		beq B3_17cb ; f0 1a

B3_17b1:		lda $00			; a5 00
B3_17b3:		sta $078f		; 8d 8f 07
B3_17b6:		inc $01			; e6 01
B3_17b8:		ldx #$00		; a2 00
B3_17ba:		lda $0790, y	; b9 90 07
B3_17bd:		cmp $b937, x	; dd 37 b9
B3_17c0:		beq B3_17c7 ; f0 05

B3_17c2:		inx				; e8 
B3_17c3:		cpx #$09		; e0 09
B3_17c5:		bne B3_17bd ; d0 f6

B3_17c7:		txa				; 8a 
B3_17c8:		asl a			; 0a
B3_17c9:		sta $2e			; 85 2e
B3_17cb:		dec $00			; c6 00
B3_17cd:		bpl B3_17a2 ; 10 d3

B3_17cf:		lda $01			; a5 01
B3_17d1:		cmp #$01		; c9 01
B3_17d3:		bne B3_17d6 ; d0 01

B3_17d5:		rts				; 60 


B3_17d6:		lda #$01		; a9 01
B3_17d8:		ora $078b		; 0d 8b 07
B3_17db:		sta $078b		; 8d 8b 07
B3_17de:		rts				; 60 


B3_17df:		.db $00				; 00
B3_17e0:	.db $12
B3_17e1:		and ($48), y	; 31 48
B3_17e3:		and #$30		; 29 30
B3_17e5:		lsr a			; 4a
B3_17e6:		lsr a			; 4a
B3_17e7:		sta $07			; 85 07
B3_17e9:		pla				; 68 
B3_17ea:		and #$03		; 29 03
B3_17ec:		ora $07			; 05 07
B3_17ee:		tay				; a8 
B3_17ef:		rts				; 60 


B3_17f0:		lda $078f		; ad 8f 07
B3_17f3:		asl a			; 0a
B3_17f4:		asl a			; 0a
B3_17f5:		asl a			; 0a
B3_17f6:		adc $078f		; 6d 8f 07
B3_17f9:		sta $00			; 85 00
B3_17fb:		lda #$0f		; a9 0f
B3_17fd:		sta $01			; 85 01
B3_17ff:		ldy $01			; a4 01
B3_1801:		lda $0790, y	; b9 90 07
B3_1804:		and #$03		; 29 03
B3_1806:		beq B3_1827 ; f0 1f

B3_1808:		lda $00			; a5 00
B3_180a:		sta $02			; 85 02
B3_180c:		lda #$09		; a9 09
B3_180e:		sta $03			; 85 03
B3_1810:		ldy $02			; a4 02
B3_1812:		lda $b6b2, y	; b9 b2 b6
B3_1815:		jsr $b7e2		; 20 e2 b7
B3_1818:		cpy $01			; c4 01
B3_181a:		beq B3_1827 ; f0 0b

B3_181c:		inc $02			; e6 02
B3_181e:		dec $03			; c6 03
B3_1820:		bne B3_1810 ; d0 ee

B3_1822:		lda #$02		; a9 02
B3_1824:		jmp $b7d8		; 4c d8 b7


B3_1827:		dec $01			; c6 01
B3_1829:		bpl B3_17ff ; 10 d4

B3_182b:		rts				; 60 


B3_182c:		ldx #$00		; a2 00
B3_182e:		lda $07a1, x	; bd a1 07
B3_1831:		sta $08, x		; 95 08
B3_1833:		inx				; e8 
B3_1834:		cpx #$08		; e0 08
B3_1836:		bcc B3_182e ; 90 f6

B3_1838:		lda #$00		; a9 00
B3_183a:		sta $00			; 85 00
B3_183c:		sta $01			; 85 01
B3_183e:		ldy #$00		; a0 00
B3_1840:		ldx #$00		; a2 00
B3_1842:		lsr $08, x		; 56 08
B3_1844:		ror $01			; 66 01
B3_1846:		lsr $08, x		; 56 08
B3_1848:		ror $00			; 66 00
B3_184a:		inx				; e8 
B3_184b:		iny				; c8 
B3_184c:		cpy #$08		; c0 08
B3_184e:		bcc B3_1842 ; 90 f2

B3_1850:		lda $01			; a5 01
B3_1852:		sta $0789		; 8d 89 07
B3_1855:		lda $00			; a5 00
B3_1857:		sta $0788		; 8d 88 07
B3_185a:		and #$10		; 29 10
B3_185c:		lsr a			; 4a
B3_185d:		lsr a			; 4a
B3_185e:		lsr a			; 4a
B3_185f:		lsr a			; 4a
B3_1860:		ora $2e			; 05 2e
B3_1862:		sta $2e			; 85 2e
B3_1864:		rts				; 60 


B3_1865:		ldy #$50		; a0 50
B3_1867:		lda $0788		; ad 88 07
B3_186a:		and #$08		; 29 08
B3_186c:		beq B3_1870 ; f0 02

B3_186e:		ldy #$a0		; a0 a0
B3_1870:		sty $04			; 84 04
B3_1872:		jsr $b72a		; 20 2a b7
B3_1875:		cmp $0789		; cd 89 07
B3_1878:		beq B3_1864 ; f0 ea

B3_187a:		lda #$04		; a9 04
B3_187c:		jmp $b7d8		; 4c d8 b7


B3_187f:		lda $0788		; ad 88 07
B3_1882:		and #$01		; 29 01
B3_1884:		bne B3_18b5 ; d0 2f

B3_1886:		lda $2e			; a5 2e
B3_1888:		cmp #$12		; c9 12
B3_188a:		bcs B3_18b0 ; b0 24

B3_188c:		cmp #$10		; c9 10
B3_188e:		bcs B3_18b5 ; b0 25

B3_1890:		lda $0788		; ad 88 07
B3_1893:		and #$06		; 29 06
B3_1895:		sta $00			; 85 00
B3_1897:		beq B3_18b5 ; f0 1c

B3_1899:		lda $2e			; a5 2e
B3_189b:		and #$08		; 29 08
B3_189d:		lsr a			; 4a
B3_189e:		lsr a			; 4a
B3_189f:		lsr a			; 4a
B3_18a0:		ora $00			; 05 00
B3_18a2:		tay				; a8 
B3_18a3:		lda $2e			; a5 2e
B3_18a5:		and #$07		; 29 07
B3_18a7:		tax				; aa 
B3_18a8:		lda $b8b4, y	; b9 b4 b8
B3_18ab:		and $b8bc, x	; 3d bc b8
B3_18ae:		bne B3_18b5 ; d0 05

B3_18b0:		lda #$08		; a9 08
B3_18b2:		jmp $b7d8		; 4c d8 b7


B3_18b5:		rts				; 60 


B3_18b6:	.db $07
B3_18b7:	.db $03
B3_18b8:	.db $2f
B3_18b9:	.db $ff
B3_18ba:		.db $00				; 00
B3_18bb:		and $4080, x	; 3d 80 40
B3_18be:		jsr $0810		; 20 10 08
B3_18c1:	.db $04
B3_18c2:	.db $02
B3_18c3:		ora ($ad, x)	; 01 ad
B3_18c5:		dey				; 88 
B3_18c6:	.db $07
B3_18c7:		sta $00			; 85 00
B3_18c9:		lda $0789		; ad 89 07
B3_18cc:		sta $01			; 85 01
B3_18ce:		ldx #$08		; a2 08
B3_18d0:		lda #$00		; a9 00
B3_18d2:		sta $08, x		; 95 08
B3_18d4:		dex				; ca 
B3_18d5:		bpl B3_18d2 ; 10 fb

B3_18d7:		ldx #$00		; a2 00
B3_18d9:		lsr $00			; 46 00
B3_18db:		rol $08, x		; 36 08
B3_18dd:		lsr $01			; 46 01
B3_18df:		rol $08, x		; 36 08
B3_18e1:		inx				; e8 
B3_18e2:		cpx #$08		; e0 08
B3_18e4:		bcc B3_18d9 ; 90 f3

B3_18e6:		lda $2e			; a5 2e
B3_18e8:		lsr a			; 4a
B3_18e9:		tay				; a8 
B3_18ea:		ldx #$02		; a2 02
B3_18ec:		lda $b937, y	; b9 37 b9
B3_18ef:		and #$0c		; 29 0c
B3_18f1:		lsr a			; 4a
B3_18f2:		lsr a			; 4a
B3_18f3:		sta $00			; 85 00
B3_18f5:		lda $b937, y	; b9 37 b9
B3_18f8:		and #$30		; 29 30
B3_18fa:		ora $00			; 05 00
B3_18fc:		cmp $b7df, x	; dd df b7
B3_18ff:		beq B3_1904 ; f0 03

B3_1901:		dex				; ca 
B3_1902:		bpl B3_18ec ; 10 e8

B3_1904:		stx $078f		; 8e 8f 07
B3_1907:		txa				; 8a 
B3_1908:		asl a			; 0a
B3_1909:		asl a			; 0a
B3_190a:		asl a			; 0a
B3_190b:		adc $078f		; 6d 8f 07
B3_190e:		tay				; a8 
B3_190f:		ldx #$00		; a2 00
B3_1911:		lda $b6b3, y	; b9 b3 b6
B3_1914:		and #$30		; 29 30
B3_1916:		sta $01			; 85 01
B3_1918:		lda $b6b3, y	; b9 b3 b6
B3_191b:		and #$03		; 29 03
B3_191d:		asl a			; 0a
B3_191e:		asl a			; 0a
B3_191f:		ora $01			; 05 01
B3_1921:		ora $08, x		; 15 08
B3_1923:		sta $07a1, x	; 9d a1 07
B3_1926:		iny				; c8 
B3_1927:		inx				; e8 
B3_1928:		cpx #$09		; e0 09
B3_192a:		bcc B3_1911 ; 90 e5

B3_192c:		lda $2e			; a5 2e
B3_192e:		lsr a			; 4a
B3_192f:		tay				; a8 
B3_1930:		lda $b937, y	; b9 37 b9
B3_1933:		sta $07a0		; 8d a0 07
B3_1936:		rts				; 60 


B3_1937:		ora ($1b, x)	; 01 1b
B3_1939:	.db $02
B3_193a:		and $19, x		; 35 19
B3_193c:	.db $03
B3_193d:	.db $37
B3_193e:	.db $1a
B3_193f:		rol $a9, x		; 36 a9
B3_1941:		.db $00				; 00
B3_1942:		sta $00			; 85 00
B3_1944:		ldx #$05		; a2 05
B3_1946:		ldy $00			; a4 00
B3_1948:		lda $07a0, y	; b9 a0 07
B3_194b:		and #$03		; 29 03
B3_194d:		tay				; a8 
B3_194e:		lda $b982, y	; b9 82 b9
B3_1951:		sta $0400, x	; 9d 00 04
B3_1954:		lda $b97e, y	; b9 7e b9
B3_1957:		sta $048c, x	; 9d 8c 04
B3_195a:		ldy $00			; a4 00
B3_195c:		lda $07a0, y	; b9 a0 07
B3_195f:		and #$3c		; 29 3c
B3_1961:		lsr a			; 4a
B3_1962:		tay				; a8 
B3_1963:		lda $b986, y	; b9 86 b9
B3_1966:		sta $041c, x	; 9d 1c 04
B3_1969:		lda $b987, y	; b9 87 b9
B3_196c:		sta $0438, x	; 9d 38 04
B3_196f:		lda #$00		; a9 00
B3_1971:		sta $0454, x	; 9d 54 04
B3_1974:		inx				; e8 
B3_1975:		inc $00			; e6 00
B3_1977:		lda $00			; a5 00
B3_1979:		cmp #$09		; c9 09
B3_197b:		bcc B3_1946 ; 90 c9

B3_197d:		rts				; 60 


B3_197e:		.db $00				; 00
B3_197f:	.db $14
B3_1980:	.db $0c
B3_1981:	.db $0c
B3_1982:		.db $00				; 00
B3_1983:	.db $42
B3_1984:	.db $fc
B3_1985:	.db $f4
B3_1986:	.db $7a
B3_1987:		eor $757a, x	; 5d 7a 75
B3_198a:	.db $7a
B3_198b:		sta $a57a		; 8d 7a a5
B3_198e:	.db $92
B3_198f:		eor $7592, x	; 5d 92 75
B3_1992:	.db $92
B3_1993:		sta $a592		; 8d 92 a5
B3_1996:		tax				; aa 
B3_1997:		eor $75aa, x	; 5d aa 75
B3_199a:		tax				; aa 
B3_199b:		sta $a5aa		; 8d aa a5
B3_199e:	.db $c2
B3_199f:		eor $75c2, x	; 5d c2 75
B3_19a2:	.db $c2
B3_19a3:		sta $a5c2		; 8d c2 a5
B3_19a6:		.db $00				; 00
B3_19a7:		jsr $f68e		; 20 8e f6
B3_19aa:	.db $f7
B3_19ab:		inc $f7, x		; f6 f7
B3_19ad:		inc $f7, x		; f6 f7
B3_19af:		inc $f7, x		; f6 f7
B3_19b1:		inc $f7, x		; f6 f7
B3_19b3:		inc $f7, x		; f6 f7
B3_19b5:		inc $f7, x		; f6 f7
B3_19b7:		asl $00			; 06 00
B3_19b9:		sta $f7f6, y	; 99 f6 f7
B3_19bc:		inc $f7, x		; f6 f7
B3_19be:		inc $f7, x		; f6 f7
B3_19c0:		inc $f7, x		; f6 f7
B3_19c2:		inc $f7, x		; f6 f7
B3_19c4:		inc $ed, x		; f6 ed
B3_19c6:		inc $f6, x		; f6 f6
B3_19c8:	.db $f7
B3_19c9:		inc $f7, x		; f6 f7
B3_19cb:		inc $f7, x		; f6 f7
B3_19cd:		inc $f7, x		; f6 f7
B3_19cf:		inc $f7, x		; f6 f7
B3_19d1:		inc $f7, x		; f6 f7
B3_19d3:		php				; 08 
B3_19d4:		.db $00				; 00
B3_19d5:	.db $93
B3_19d6:		inc $f7, x		; f6 f7
B3_19d8:		inc $f7, x		; f6 f7
B3_19da:		inc $f7, x		; f6 f7
B3_19dc:	.db $eb
B3_19dd:		cpx $f7f6		; ec f6 f7
B3_19e0:		inc $f6, x		; f6 f6
B3_19e2:	.db $f7
B3_19e3:		inc $f7, x		; f6 f7
B3_19e5:		inc $f7, x		; f6 f7
B3_19e7:		inc $f7, x		; f6 f7
B3_19e9:	.db $14
B3_19ea:		.db $00				; 00
B3_19eb:	.db $8b
B3_19ec:	.db $fc
B3_19ed:	.db $f7
B3_19ee:		inc $f7, x		; f6 f7
B3_19f0:	.db $f7
B3_19f1:		inc $f7, x		; f6 f7
B3_19f3:		inc $f7, x		; f6 f7
B3_19f5:		inc $f7, x		; f6 f7
B3_19f7:	.db $14
B3_19f8:		.db $00				; 00
B3_19f9:	.db $9c
B3_19fa:		inc $f7, x		; f6 f7
B3_19fc:		sbc $f6f7, x	; fd f7 f6
B3_19ff:		inc $f7, x		; f6 f7
B3_1a01:		inc $f7, x		; f6 f7
B3_1a03:	.db $fd $f7 $00
B3_1a06:		.db $00				; 00
B3_1a07:	.db $54
B3_1a08:		eor $5463, x	; 5d 63 54
B3_1a0b:		adc ($00, x)	; 61 00
B3_1a0d:		pla				; 68 
B3_1a0e:		lsr $6164, x	; 5e 64 61
B3_1a11:		.db $00				; 00
B3_1a12:		eor $5c50, x	; 5d 50 5c
B3_1a15:	.db $54
B3_1a16:		ora $00			; 05 00
B3_1a18:	.db $89
B3_1a19:		inc $f7, x		; f6 f7
B3_1a1b:		inc $f7, x		; f6 f7
B3_1a1d:	.db $f7
B3_1a1e:		inc $f7, x		; f6 f7
B3_1a20:		inc $f7, x		; f6 f7
B3_1a22:		asl $00, x		; 16 00
B3_1a24:		sta $f7f6		; 8d f6 f7
B3_1a27:		inc $f7, x		; f6 f7
B3_1a29:		sbc $f7f6, x	; fd f6 f7
B3_1a2c:		sbc $f6ed, x	; fd ed f6
B3_1a2f:	.db $f7
B3_1a30:		inc $f7, x		; f6 f7
B3_1a32:	.db $03
B3_1a33:		.db $00				; 00
B3_1a34:		sta ($80, x)	; 81 80
B3_1a36:		php				; 08 
B3_1a37:		sta ($81, x)	; 81 81
B3_1a39:	.db $82
B3_1a3a:	.db $03
B3_1a3b:		.db $00				; 00
B3_1a3c:	.db $8f
B3_1a3d:		inc $f7, x		; f6 f7
B3_1a3f:		inc $f7, x		; f6 f7
B3_1a41:		sbc $f6f7, x	; fd f7 f6
B3_1a44:	.db $f7
B3_1a45:		sbc $edf6		; edf6 ed
B3_1a48:		inc $f7, x		; f6 f7
B3_1a4a:		inc $f7, x		; f6 f7
B3_1a4c:	.db $04
B3_1a4d:		.db $00				; 00
B3_1a4e:		sta ($90, x)	; 81 90
B3_1a50:		php				; 08 
B3_1a51:		.db $00				; 00
B3_1a52:		sta ($92, x)	; 81 92
B3_1a54:	.db $04
B3_1a55:		.db $00				; 00
B3_1a56:	.db $8f
B3_1a57:		inc $f7, x		; f6 f7
B3_1a59:		inc $f7, x		; f6 f7
B3_1a5b:		sbc $fdf7, x	; fd f7 fd
B3_1a5e:		inc $ed, x		; f6 ed
B3_1a60:		inc $ed, x		; f6 ed
B3_1a62:		inc $f7, x		; f6 f7
B3_1a64:		sbc $03f7, x	; fd f7 03
B3_1a67:		.db $00				; 00
B3_1a68:		sta ($a0, x)	; 81 a0
B3_1a6a:		php				; 08 
B3_1a6b:		lda ($81, x)	; a1 81
B3_1a6d:		ldx #$07		; a2 07
B3_1a6f:		.db $00				; 00
B3_1a70:	.db $8b
B3_1a71:		inc $f7, x		; f6 f7
B3_1a73:	.db $eb
B3_1a74:		sbc $f6ed		; eded f6
B3_1a77:	.db $f7
B3_1a78:		inc $ed, x		; f6 ed
B3_1a7a:		inc $f7, x		; f6 f7
B3_1a7c:	.db $14
B3_1a7d:		.db $00				; 00
B3_1a7e:	.db $8b
B3_1a7f:		inc $f7, x		; f6 f7
B3_1a81:		inc $fb, x		; f6 fb
B3_1a83:	.db $fc
B3_1a84:		inc $f7, x		; f6 f7
B3_1a86:		sbc $fdf7, x	; fd f7 fd
B3_1a89:	.db $f7
B3_1a8a:		asl $00, x		; 16 00
B3_1a8c:	.db $89
B3_1a8d:		inc $f7, x		; f6 f7
B3_1a8f:		sbc $fbf7, x	; fd f7 fb
B3_1a92:		sbc $f6ed, x	; fd ed f6
B3_1a95:	.db $f7
B3_1a96:	.db $14
B3_1a97:		.db $00				; 00
B3_1a98:		sta $f7f6		; 8d f6 f7
B3_1a9b:		inc $ed, x		; f6 ed
B3_1a9d:		inc $f7, x		; f6 f7
B3_1a9f:		sbc $edf6, x	; fd f6 ed
B3_1aa2:	.db $eb
B3_1aa3:		cpx $f7fd		; ec fd f7
B3_1aa6:	.db $12
B3_1aa7:		.db $00				; 00
B3_1aa8:	.db $8f
B3_1aa9:		inc $ed, x		; f6 ed
B3_1aab:		inc $ed, x		; f6 ed
B3_1aad:		sbc $ebf7, x	; fd f7 eb
B3_1ab0:		cpx $fbf7		; ec f7 fb
B3_1ab3:	.db $fb
B3_1ab4:	.db $fc
B3_1ab5:	.db $f7
B3_1ab6:		inc $f7, x		; f6 f7
B3_1ab8:		bpl B3_1aba ; 10 00

B3_1aba:		sty $f6			; 84 f6
B3_1abc:	.db $f7
B3_1abd:		inc $f7, x		; f6 f7
B3_1abf:	.db $03
B3_1ac0:		inc $c8, x		; f6 c8
B3_1ac2:	.db $fb
B3_1ac3:	.db $fc
B3_1ac4:		inc $f7, x		; f6 f7
B3_1ac6:		sbc $cbf7, x	; fd f7 cb
B3_1ac9:		cpy $cecd		; cc cd ce
B3_1acc:		cmp $cdce		; cd ce cd
B3_1acf:		dec $cecd		; ce cd ce
B3_1ad2:		cmp $cdce		; cd ce cd
B3_1ad5:		dec $cecd		; ce cd ce
B3_1ad8:		cmp $cdce		; cd ce cd
B3_1adb:		dec $cecd		; ce cd ce
B3_1ade:	.db $cb
B3_1adf:		cpy $edf6		; cc f6 ed
B3_1ae2:		inc $ed, x		; f6 ed
B3_1ae4:		sbc $edf6		; edf6 ed
B3_1ae7:		sbc $dcdb, x	; fd db dc
B3_1aea:		cmp $ddde, x	; dd de dd
B3_1aed:		dec $dedd, x	; de dd de
B3_1af0:		cmp $ddde, x	; dd de dd
B3_1af3:		dec $dedd, x	; de dd de
B3_1af6:		cmp $ddde, x	; dd de dd
B3_1af9:		dec $dedd, x	; de dd de
B3_1afc:		cmp $dbde, x	; dd de db
B3_1aff:	.db $dc
B3_1b00:		sbc $f7f6		; edf6 f7
B3_1b03:		inc $f6, x		; f6 f6
B3_1b05:		cpx $f7eb		; ec eb f7
B3_1b08:		cpy #$c1		; c0 c1
B3_1b0a:	.db $14
B3_1b0b:		.db $00				; 00
B3_1b0c:		ldy $c5c4		; ac c4 c5
B3_1b0f:		inc $f7, x		; f6 f7
B3_1b11:	.db $eb
B3_1b12:		cpx $fcfb		; ec fb fc
B3_1b15:	.db $fb
B3_1b16:	.db $fc
B3_1b17:		bne B3_1aea ; d0 d1

B3_1b19:		.db $00				; 00
B3_1b1a:		bvc B3_1b1c ; 50 00

B3_1b1c:		eor ($00), y	; 51 00
B3_1b1e:	.db $52
B3_1b1f:		.db $00				; 00
B3_1b20:	.db $53
B3_1b21:		.db $00				; 00
B3_1b22:	.db $54
B3_1b23:		.db $00				; 00
B3_1b24:		eor $00, x		; 55 00
B3_1b26:		lsr $00, x		; 56 00
B3_1b28:	.db $57
B3_1b29:		.db $00				; 00
B3_1b2a:		cli				; 58 
B3_1b2b:		.db $00				; 00
B3_1b2c:		.db $00				; 00
B3_1b2d:	.db $d4
B3_1b2e:		cmp $f7, x		; d5 f7
B3_1b30:	.db $eb
B3_1b31:	.db $fb
B3_1b32:	.db $fc
B3_1b33:	.db $eb
B3_1b34:		cpx $fceb		; ec eb fc
B3_1b37:		cpx #$e1		; e0 e1
B3_1b39:	.db $14
B3_1b3a:		.db $00				; 00
B3_1b3b:		ldy $e5e4		; ac e4 e5
B3_1b3e:	.db $eb
B3_1b3f:		cpx $f7eb		; ec eb f7
B3_1b42:	.db $fb
B3_1b43:	.db $fc
B3_1b44:	.db $fb
B3_1b45:	.db $f7
B3_1b46:		beq B3_1b39 ; f0 f1

B3_1b48:		.db $00				; 00
B3_1b49:		eor $5a00, y	; 59 00 5a
B3_1b4c:		.db $00				; 00
B3_1b4d:	.db $5b
B3_1b4e:		.db $00				; 00
B3_1b4f:	.db $5c
B3_1b50:		.db $00				; 00
B3_1b51:		eor $5e00, x	; 5d 00 5e
B3_1b54:		.db $00				; 00
B3_1b55:	.db $5f
B3_1b56:		.db $00				; 00
B3_1b57:		rts				; 60 


B3_1b58:		.db $00				; 00
B3_1b59:		adc ($00, x)	; 61 00
B3_1b5b:		.db $00				; 00
B3_1b5c:	.db $f4
B3_1b5d:		sbc $fb, x		; f5 fb
B3_1b5f:	.db $fc
B3_1b60:	.db $fb
B3_1b61:	.db $fc
B3_1b62:	.db $eb
B3_1b63:		cpx $f6eb		; ec eb f6
B3_1b66:	.db $c2
B3_1b67:	.db $c3
B3_1b68:	.db $14
B3_1b69:		.db $00				; 00
B3_1b6a:		ldy $c7c6		; ac c6 c7
B3_1b6d:	.db $eb
B3_1b6e:		sbc $ecf6		; edf6 ec
B3_1b71:	.db $fb
B3_1b72:	.db $fc
B3_1b73:		sbc $d2f7		; edf7 d2
B3_1b76:	.db $d3
B3_1b77:		.db $00				; 00
B3_1b78:	.db $62
B3_1b79:		.db $00				; 00
B3_1b7a:	.db $63
B3_1b7b:		.db $00				; 00
B3_1b7c:	.db $64
B3_1b7d:		.db $00				; 00
B3_1b7e:		adc $00			; 65 00
B3_1b80:		ror $00			; 66 00
B3_1b82:	.db $67
B3_1b83:		.db $00				; 00
B3_1b84:		pla				; 68 
B3_1b85:		.db $00				; 00
B3_1b86:		adc #$00		; 69 00
B3_1b88:	.db $fe $00 $00
B3_1b8b:		dec $d7, x		; d6 d7
B3_1b8d:	.db $fb
B3_1b8e:	.db $fc
B3_1b8f:	.db $fb
B3_1b90:	.db $fc
B3_1b91:	.db $eb
B3_1b92:		cpx $eceb		; ec eb ec
B3_1b95:	.db $e2
B3_1b96:	.db $e3
B3_1b97:	.db $14
B3_1b98:		.db $00				; 00
B3_1b99:	.db $92
B3_1b9a:		inc $e7			; e6 e7
B3_1b9c:		sbc $ebf7, x	; fd f7 eb
B3_1b9f:		sbc $fcf7		; edf7 fc
B3_1ba2:		sbc $f2fc		; edfc f2
B3_1ba5:	.db $f3
B3_1ba6:		.db $00				; 00
B3_1ba7:		ror a			; 6a
B3_1ba8:		.db $00				; 00
B3_1ba9:	.db $6b
B3_1baa:		.db $00				; 00
B3_1bab:	.db $4b
B3_1bac:		ora $00			; 05 00
B3_1bae:		sta $cf, x		; 95 cf
B3_1bb0:		.db $00				; 00
B3_1bb1:	.db $df
B3_1bb2:		.db $00				; 00
B3_1bb3:		.db $00				; 00
B3_1bb4:	.db $ee $ef $00
B3_1bb7:		.db $00				; 00
B3_1bb8:	.db $f2
B3_1bb9:	.db $f3
B3_1bba:	.db $f7
B3_1bbb:		sbc $fcfb, x	; fd fb fc
B3_1bbe:	.db $eb
B3_1bbf:		sbc $f7eb		; edeb f7
B3_1bc2:	.db $cb
B3_1bc3:	.db $cc $14 $00
B3_1bc6:		cpy $cccb		; cc cb cc
B3_1bc9:	.db $eb
B3_1bca:		sbc $eceb		; edeb ec
B3_1bcd:	.db $fb
B3_1bce:	.db $fc
B3_1bcf:	.db $fb
B3_1bd0:	.db $fc
B3_1bd1:	.db $db
B3_1bd2:	.db $dc
B3_1bd3:		cmp $cdce		; cd ce cd
B3_1bd6:		dec $cecd		; ce cd ce
B3_1bd9:		cmp $cdce		; cd ce cd
B3_1bdc:		dec $cecd		; ce cd ce
B3_1bdf:		cmp $cdce		; cd ce cd
B3_1be2:		dec $cecd		; ce cd ce
B3_1be5:		cmp $dbce		; cd ce db
B3_1be8:	.db $dc
B3_1be9:	.db $fb
B3_1bea:	.db $fc
B3_1beb:		sbc $f6fc, x	; fd fc f6
B3_1bee:		cpx $f7eb		; ec eb f7
B3_1bf1:	.db $cb
B3_1bf2:		cpy $dedd		; cc dd de
B3_1bf5:		cmp $ddde, x	; dd de dd
B3_1bf8:		dec $dedd, x	; de dd de
B3_1bfb:		cmp $ddde, x	; dd de dd
B3_1bfe:		dec $dedd, x	; de dd de
B3_1c01:		cmp $ddde, x	; dd de dd
B3_1c04:		dec $dedd, x	; de dd de
B3_1c07:	.db $cb
B3_1c08:		cpy $f7eb		; cc eb f7
B3_1c0b:	.db $eb
B3_1c0c:		cpx $fcfb		; ec fb fc
B3_1c0f:	.db $fb
B3_1c10:	.db $fc
B3_1c11:	.db $db
B3_1c12:	.db $dc
B3_1c13:	.db $14
B3_1c14:	.db $f3
B3_1c15:		bcc B3_1bf2 ; 90 db

B3_1c17:	.db $dc
B3_1c18:	.db $fb
B3_1c19:	.db $fc
B3_1c1a:	.db $fb
B3_1c1b:		sbc $eceb, x	; fd eb ec
B3_1c1e:	.db $eb
B3_1c1f:	.db $f7
B3_1c20:	.db $f2
B3_1c21:	.db $f2
B3_1c22:	.db $f3
B3_1c23:	.db $f2
B3_1c24:	.db $f2
B3_1c25:	.db $f3
B3_1c26:	.db $03
B3_1c27:	.db $f2
B3_1c28:	.db $82
B3_1c29:	.db $f3
B3_1c2a:	.db $f2
B3_1c2b:	.db $04
B3_1c2c:	.db $f3
B3_1c2d:	.db $04
B3_1c2e:	.db $f2
B3_1c2f:	.db $b3
B3_1c30:	.db $f3
B3_1c31:	.db $f2
B3_1c32:	.db $f2
B3_1c33:	.db $f3
B3_1c34:	.db $f2
B3_1c35:	.db $eb
B3_1c36:		cpx $eceb		; ec eb ec
B3_1c39:	.db $fb
B3_1c3a:	.db $fc
B3_1c3b:	.db $fb
B3_1c3c:		sbc $ebd4, x	; fd d4 eb
B3_1c3f:		cpx $eceb		; ec eb ec
B3_1c42:	.db $eb
B3_1c43:	.db $f7
B3_1c44:	.db $eb
B3_1c45:	.db $f7
B3_1c46:		sbc $f6ed, x	; fd ed f6
B3_1c49:	.db $f7
B3_1c4a:		sbc $f6f7, x	; fd f7 f6
B3_1c4d:	.db $f7
B3_1c4e:	.db $fb
B3_1c4f:	.db $fc
B3_1c50:		cpx $fcfb		; ec fb fc
B3_1c53:		sbc $fbeb		; edeb fb
B3_1c56:	.db $fc
B3_1c57:	.db $fb
B3_1c58:	.db $fc
B3_1c59:	.db $ff
B3_1c5a:	.db $ff
B3_1c5b:	.db $0f
B3_1c5c:	.db $03
B3_1c5d:		.db $00				; 00
B3_1c5e:	.db $0f
B3_1c5f:	.db $cf
B3_1c60:	.db $ff
B3_1c61:	.db $ff
B3_1c62:	.db $f3
B3_1c63:	.db $04
B3_1c64:		.db $00				; 00
B3_1c65:		sty $fc			; 84 fc
B3_1c67:	.db $ff
B3_1c68:	.db $ff
B3_1c69:	.db $3f
B3_1c6a:	.db $04
B3_1c6b:		.db $00				; 00
B3_1c6c:		sty $fc			; 84 fc
B3_1c6e:	.db $ff
B3_1c6f:	.db $ff
B3_1c70:	.db $0f
B3_1c71:	.db $03
B3_1c72:		.db $00				; 00
B3_1c73:		sta $0c			; 85 0c
B3_1c75:	.db $0f
B3_1c76:	.db $ff
B3_1c77:	.db $ff
B3_1c78:	.db $22
B3_1c79:	.db $04
B3_1c7a:		.db $00				; 00
B3_1c7b:		sty $88			; 84 88
B3_1c7d:	.db $ff
B3_1c7e:	.db $ff
B3_1c7f:	.db $22
B3_1c80:	.db $04
B3_1c81:		.db $00				; 00
B3_1c82:	.db $83
B3_1c83:		dey				; 88 
B3_1c84:	.db $ff
B3_1c85:	.db $ff
B3_1c86:		asl $00			; 06 00
B3_1c88:		sta ($ff, x)	; 81 ff
B3_1c8a:		php				; 08 
B3_1c8b:	.db $0f
B3_1c8c:	.db $ff
B3_1c8d:		lda $0565, x	; bd 65 05
B3_1c90:		lsr a			; 4a
B3_1c91:		lsr a			; 4a
B3_1c92:		lsr a			; 4a
B3_1c93:		lsr a			; 4a
B3_1c94:		lsr a			; 4a
B3_1c95:		lsr a			; 4a
B3_1c96:		jsr jumpTablePreserveY		; 20 6d e8
B3_1c99:	.db $9f
B3_1c9a:		ldy $bca7, x	; bc a7 bc
B3_1c9d:		ldy $a9bc, x	; bc bc a9
B3_1ca0:	.db $80
B3_1ca1:		sta $05d8, x	; 9d d8 05
B3_1ca4:		jmp func_1f_1f8a		; 4c 8a ff


B3_1ca7:		dec $05d8, x	; de d8 05
B3_1caa:		bne B3_1cbb ; d0 0f

B3_1cac:		lda #$08		; a9 08
B3_1cae:		sta $05d8, x	; 9d d8 05
B3_1cb1:		lda $0565, x	; bd 65 05
B3_1cb4:		and #$bf		; 29 bf
B3_1cb6:		ora #$80		; 09 80
B3_1cb8:		sta $0565, x	; 9d 65 05
B3_1cbb:		rts				; 60 


B3_1cbc:		lda $1a			; a5 1a
B3_1cbe:		and #$03		; 29 03
B3_1cc0:		bne B3_1cbb ; d0 f9

B3_1cc2:		lda $054e, x	; bd 4e 05
B3_1cc5:		cmp #$57		; c9 57
B3_1cc7:		beq B3_1cf0 ; f0 27

B3_1cc9:		cmp #$5b		; c9 5b
B3_1ccb:		beq B3_1cf0 ; f0 23

B3_1ccd:		lda $0454, x	; bd 54 04
B3_1cd0:		eor #$04		; 49 04
B3_1cd2:		sta $0454, x	; 9d 54 04
B3_1cd5:		lda $05d8, x	; bd d8 05
B3_1cd8:		beq B3_1cdf ; f0 05

B3_1cda:		dec $05d8, x	; de d8 05
B3_1cdd:		bne B3_1cbb ; d0 dc

B3_1cdf:		lda $0454, x	; bd 54 04
B3_1ce2:		and #$fb		; 29 fb
B3_1ce4:		sta $0454, x	; 9d 54 04
B3_1ce7:		lda $0470, x	; bd 70 04
B3_1cea:		and #$fd		; 29 fd
B3_1cec:		sta $0470, x	; 9d 70 04
B3_1cef:		rts				; 60 


B3_1cf0:		lda $0454, x	; bd 54 04
B3_1cf3:		and #$04		; 29 04
B3_1cf5:		bne B3_1d0e ; d0 17

B3_1cf7:		lda #$04		; a9 04
B3_1cf9:		sta $0454, x	; 9d 54 04
B3_1cfc:		lda $05d8, x	; bd d8 05
B3_1cff:		beq B3_1d06 ; f0 05

B3_1d01:		dec $05d8, x	; de d8 05
B3_1d04:		bne B3_1cef ; d0 e9

B3_1d06:		lda #$03		; a9 03
B3_1d08:		sta $0454, x	; 9d 54 04
B3_1d0b:		jmp $bce7		; 4c e7 bc


B3_1d0e:		lda #$03		; a9 03
B3_1d10:		bne B3_1cf9 ; d0 e7

B3_1d12:		ldy $0645, x	; bc 45 06
B3_1d15:		lda $bd27, y	; b9 27 bd
B3_1d18:		sta $0f			; 85 0f
B3_1d1a:		lda $bd47, y	; b9 47 bd
B3_1d1d:		tay				; a8 
B3_1d1e:	.db $b9 $f0 $00
B3_1d21:		ora $0f			; 05 0f
B3_1d23:	.db $99 $f0 $00
B3_1d26:		rts				; 60 


B3_1d27:		ora ($02, x)	; 01 02
B3_1d29:	.db $04
B3_1d2a:		php				; 08 
B3_1d2b:		bpl B3_1d4d ; 10 20

B3_1d2d:		rti				; 40 


B3_1d2e:	.db $80
B3_1d2f:		ora ($02, x)	; 01 02
B3_1d31:	.db $04
B3_1d32:		php				; 08 
B3_1d33:		bpl B3_1d55 ; 10 20

B3_1d35:		rti				; 40 


B3_1d36:	.db $80
B3_1d37:		ora ($02, x)	; 01 02
B3_1d39:	.db $04
B3_1d3a:		php				; 08 
B3_1d3b:		bpl B3_1d5d ; 10 20

B3_1d3d:		rti				; 40 


B3_1d3e:	.db $80
B3_1d3f:		ora ($02, x)	; 01 02
B3_1d41:	.db $04
B3_1d42:		php				; 08 
B3_1d43:		bpl B3_1d65 ; 10 20

B3_1d45:		rti				; 40 


B3_1d46:	.db $80
B3_1d47:		.db $00				; 00
B3_1d48:		.db $00				; 00
B3_1d49:		.db $00				; 00
B3_1d4a:		.db $00				; 00
B3_1d4b:		.db $00				; 00
B3_1d4c:		.db $00				; 00
B3_1d4d:		.db $00				; 00
B3_1d4e:		.db $00				; 00
B3_1d4f:		ora ($01, x)	; 01 01
B3_1d51:		ora ($01, x)	; 01 01
B3_1d53:		ora ($01, x)	; 01 01
B3_1d55:		ora ($01, x)	; 01 01
B3_1d57:	.db $02
B3_1d58:	.db $02
B3_1d59:	.db $02
B3_1d5a:	.db $02
B3_1d5b:	.db $02
B3_1d5c:	.db $02
B3_1d5d:	.db $02
B3_1d5e:	.db $02
B3_1d5f:	.db $03
B3_1d60:	.db $03
B3_1d61:	.db $03
B3_1d62:	.db $03
B3_1d63:	.db $03
B3_1d64:	.db $03
B3_1d65:	.db $03
B3_1d66:	.db $03