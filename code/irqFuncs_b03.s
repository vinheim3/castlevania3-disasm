B3_0000:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0003:		ldy #$75		; a0 75
B3_0005:		sty wChrBankBG_0400			; 84 4b
B3_0007:		iny				; c8 
B3_0008:		sty wChrBankBG_0800			; 84 4c
B3_000a:		jmp irqFunc_end		; 4c 3a e1


irqFunc_17:
B3_000d:		jsr func_03_0097		; 20 97 a0
B3_0010:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_0013:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0016:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_0019:		lda $89			; a5 89
B3_001b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_001e:		inc wIRQFuncIdx			; e6 6d
B3_0020:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_18:
B3_0023:		ldy #$12		; a0 12
B3_0025:		dey				; 88 
B3_0026:		bne B3_0025 ; d0 fd

B3_0028:		lda wGameplayScrollXRoom			; a5 70
B3_002a:		and #$01		; 29 01
B3_002c:		ora #$b0		; 09 b0
B3_002e:		tay				; a8 
B3_002f:		ldx #$00		; a2 00
B3_0031:		lda PPUSTATUS.w		; ad 02 20
B3_0034:		lda #$29		; a9 29
B3_0036:		sta PPUADDR.w		; 8d 06 20
B3_0039:		stx PPUADDR.w		; 8e 06 20
B3_003c:		lda wGameplayScrollXWithinRoom			; a5 6f
B3_003e:		sta PPUSCROLL.w		; 8d 05 20
B3_0041:		lda #$00		; a9 00
B3_0043:		sta PPUSCROLL.w		; 8d 05 20
B3_0046:		sty $2000		; 8c 00 20
B3_0049:		lda #$a4		; a9 a4
B3_004b:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_004e:		lda wGameStateLoopCounter			; a5 1a
B3_0050:		and #$01		; 29 01
B3_0052:		bne B3_0057 ; d0 03

B3_0054:		jsr setClearedChrBank_0_to_c00		; 20 13 e3
B3_0057:		jmp irqFunc_end		; 4c 3a e1


irqFunc_16:
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
B3_0086:		lda wCurrScrollXRoom			; a5 57
B3_0088:		eor $75			; 45 75
B3_008a:		and #$01		; 29 01
B3_008c:		ora wPPUCtrl			; 05 ff
B3_008e:		sta PPUCTRL.w		; 8d 00 20
B3_0091:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_0094:		jmp irqFunc_end		; 4c 3a e1


func_03_0097:
B3_0097:		ldx #$03		; a2 03
B3_0099:		jsr func_1f_0001		; 20 01 e0

; build new ppu ctrl
B3_009c:		lda $75			; a5 75
B3_009e:		and #$01		; 29 01
B3_00a0:		sta $44			; 85 44
B3_00a2:		lda wGameplayScrollXRoom			; a5 70
B3_00a4:		and #$01		; 29 01
B3_00a6:		eor $44			; 45 44
B3_00a8:		ora #PPUCTRL_NMI_ON|PPUCTRL_SPR_16|PPUCTRL_BG_1000		; 09 b0
B3_00aa:		tax				; aa 

; horizontal scroll only
B3_00ab:		lda PPUSTATUS.w		; ad 02 20
B3_00ae:		lda wGameplayScrollXWithinRoom			; a5 6f
B3_00b0:		sta PPUSCROLL.w		; 8d 05 20
B3_00b3:		lda #$00		; a9 00
B3_00b5:		sta PPUSCROLL.w		; 8d 05 20

B3_00b8:		stx PPUCTRL.w		; 8e 00 20
B3_00bb:		rts				; 60 


irqFunc_01:
B3_00bc:		jsr func_03_0097		; 20 97 a0
B3_00bf:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_00c2:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_00c5:		lda $7d			; a5 7d
B3_00c7:		and #$f0		; 29 f0
B3_00c9:		cmp #$40		; c9 40
	beq +

	lda $b0			; a5 b0
	beq @end

	jsr chrSwitch_0_to_c00_1400		; 20 3c e3

@end:
	jmp irqFunc_end		; 4c 3a e1

+	jsr func_02_1f8d		; 20 8d 9f
	jmp @end


func_03_00dd:
B3_00dd:		ldy $0780		; ac 80 07
B3_00e0:		lda wGameplayScrollXWithinRoom			; a5 6f
B3_00e2:		clc				; 18 
B3_00e3:		adc $0783, y	; 79 83 07
B3_00e6:		sta $d5			; 85 d5
B3_00e8:		lda wGameplayScrollXRoom			; a5 70
B3_00ea:		adc #$00		; 69 00
B3_00ec:		sta $d6			; 85 d6
B3_00ee:		rts				; 60 


irqFunc_02:
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
B3_010e:		jsr func_03_00dd		; 20 dd a0
B3_0111:		lda #$04		; a9 04
B3_0113:		clc				; 18 
B3_0114:		adc $89			; 65 89
B3_0116:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_0118:		inc wIRQFuncIdx			; e6 6d
B3_011a:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_011d:		rol $161e		; 2e 1e 16
B3_0120:		asl $02ad, x	; 1e ad 02
B3_0123:		jsr $d5a5		; 20 a5 d5
B3_0126:		sta PPUSCROLL.w		; 8d 05 20
B3_0129:		lda #$00		; a9 00
B3_012b:		sta PPUSCROLL.w		; 8d 05 20
B3_012e:		rts				; 60 


irqFunc_03:
B3_012f:		ldx #$01		; a2 01
B3_0131:		jsr func_1f_0001		; 20 01 e0
B3_0134:		jsr $a121		; 20 21 a1
B3_0137:		inc wIRQFuncIdx			; e6 6d
B3_0139:		jmp $a144		; 4c 44 a1


irqFunc_04:
B3_013c:		ldx #$01		; a2 01
B3_013e:		jsr func_1f_0001		; 20 01 e0
B3_0141:		jsr $a121		; 20 21 a1
B3_0144:		lda #$00		; a9 00
B3_0146:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0149:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_014b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_014e:		dec $0780		; ce 80 07
B3_0151:		dec $0780		; ce 80 07
B3_0154:		beq B3_0163 ; f0 0d

B3_0156:		lda #$04		; a9 04
B3_0158:		clc				; 18 
B3_0159:		adc wBaseIRQScanlineCmpVal			; 65 43
B3_015b:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_015d:		jsr func_03_00dd		; 20 dd a0
B3_0160:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1

B3_0163:		lda #$2d		; a9 2d
B3_0165:		sta wIRQFuncIdx			; 85 6d
B3_0167:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_2d:
B3_016a:		jsr func_03_0097		; 20 97 a0
B3_016d:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_0170:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0173:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_0176:		jmp irqFunc_end		; 4c 3a e1


irqFunc_05:
irqFunc_0b:
; frame's 1st irq at below status bar
B3_0179:		lda $89			; a5 89
B3_017b:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52

B3_017e:		lda wGameplayScrollXWithinRoom			; a5 6f
B3_0180:		and #$07		; 29 07
B3_0182:		eor #$07		; 49 07
B3_0184:		clc				; 18 
B3_0185:		adc #$03		; 69 03
B3_0187:		adc $89			; 65 89
B3_0189:		sta wBaseIRQScanlineCmpVal			; 85 43

B3_018b:		inc wIRQFuncIdx			; e6 6d
B3_018d:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_06:
irqFunc_0c:
B3_0190:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_0192:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0195:		ldx #$0c		; a2 0c
B3_0197:		jsr func_1f_0001		; 20 01 e0
B3_019a:		jsr setClearedPatternTable		; 20 2d e3
B3_019d:		lda #NT_SINGLE_SCREEN_CIRAM_1		; a9 55
B3_019f:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_01a2:		lda wGameplayScrollXWithinRoom			; a5 6f
B3_01a4:		and #$07		; 29 07
B3_01a6:		clc				; 18 
B3_01a7:		adc #$01		; 69 01
B3_01a9:		adc wBaseIRQScanlineCmpVal			; 65 43
B3_01ab:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_01ad:		lda #$00		; a9 00
B3_01af:		asl wGameplayScrollXWithinRoom			; 06 6f
B3_01b1:		rol a			; 2a
B3_01b2:		asl wGameplayScrollXWithinRoom			; 06 6f
B3_01b4:		rol a			; 2a
B3_01b5:		clc				; 18 
B3_01b6:		adc #$28		; 69 28
B3_01b8:		sta wGameplayScrollXRoom			; 85 70
B3_01ba:		inc wIRQFuncIdx			; e6 6d
B3_01bc:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_07:
B3_01bf:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_01c1:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_01c4:		ldx #$02		; a2 02
B3_01c6:		jsr func_1f_0001		; 20 01 e0
B3_01c9:		lda PPUSTATUS.w		; ad 02 20
B3_01cc:		ldx wGameplayScrollXWithinRoom			; a6 6f
B3_01ce:		lda wGameplayScrollXRoom			; a5 70
B3_01d0:		sta PPUADDR.w		; 8d 06 20
B3_01d3:		stx PPUADDR.w		; 8e 06 20
B3_01d6:		lda #$00		; a9 00
B3_01d8:		sta PPUSCROLL.w		; 8d 05 20
B3_01db:		sta PPUSCROLL.w		; 8d 05 20
B3_01de:		lda #$b0		; a9 b0
B3_01e0:		sta PPUCTRL.w		; 8d 00 20
B3_01e3:		inc wIRQFuncIdx			; e6 6d
B3_01e5:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_08:
B3_01e8:		ldx #$01		; a2 01
B3_01ea:		jsr func_1f_0001		; 20 01 e0
B3_01ed:		lda wChrBankBG_0400			; a5 4b
B3_01ef:		ldy wChrBankBG_0800			; a4 4c
B3_01f1:		ldx wChrBankBG_0000			; a6 4a
B3_01f3:		sta CHR_BANK_0400_1400.w		; 8d 29 51
B3_01f6:		sty CHR_BANK_0800_1800.w		; 8c 2a 51
B3_01f9:		stx CHR_BANK_0000_1000.w		; 8e 28 51
B3_01fc:		lda wChrBankBG_0c00			; a5 4d
B3_01fe:		sta CHR_BANK_0c00_1c00.w		; 8d 2b 51
B3_0201:		sta CHR_BANK_1c00.w		; 8d 27 51
B3_0204:		stx CHR_BANK_1000.w		; 8e 24 51
B3_0207:		sty CHR_BANK_1800.w		; 8c 26 51
B3_020a:		jsr chrSwitch_800_c00_1400		; 20 42 e3
B3_020d:		lda $7d			; a5 7d
B3_020f:		and #$f0		; 29 f0
B3_0211:		cmp #$40		; c9 40
B3_0213:		beq B3_0218 ; f0 03

B3_0215:		jmp irqFunc_end		; 4c 3a e1

B3_0218:		jsr func_02_1f8d		; 20 8d 9f
B3_021b:		jmp B3_0215		; 4c 15 a2


irqFunc_0d:
B3_021e:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_0220:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0223:		ldx #$01		; a2 01
B3_0225:		jsr func_1f_0001		; 20 01 e0
B3_0228:		lda PPUSTATUS.w		; ad 02 20
B3_022b:		ldx wGameplayScrollXWithinRoom			; a6 6f
B3_022d:		lda wGameplayScrollXRoom			; a5 70
B3_022f:		sta PPUADDR.w		; 8d 06 20
B3_0232:		stx PPUADDR.w		; 8e 06 20
B3_0235:		lda #$00		; a9 00
B3_0237:		sta PPUSCROLL.w		; 8d 05 20
B3_023a:		sta PPUSCROLL.w		; 8d 05 20
B3_023d:		lda #$b0		; a9 b0
B3_023f:		sta PPUCTRL.w		; 8d 00 20
B3_0242:		lda $7c			; a5 7c
B3_0244:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_0246:		inc wIRQFuncIdx			; e6 6d
B3_0248:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_0e:
B3_024b:		ldx #$01		; a2 01
B3_024d:		jsr func_1f_0001		; 20 01 e0
B3_0250:		jsr chrSwitch_800_c00_1400		; 20 42 e3
B3_0253:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_0256:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_0258:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_025b:		jsr func_03_0307		; 20 07 a3
B3_025e:		lda $0619		; ad 19 06
B3_0261:		sec				; 38 
B3_0262:		sbc $0630		; ed30 06
B3_0265:		sta $7c			; 85 7c
B3_0267:		lda $0630		; ad 30 06
B3_026a:		eor #$01		; 49 01
B3_026c:		sta $0630		; 8d 30 06
B3_026f:		inc wIRQFuncIdx			; e6 6d
B3_0271:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_09:
B3_0274:		jsr func_03_0097		; 20 97 a0
B3_0277:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_027a:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_027d:		lda $89			; a5 89
B3_027f:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0282:		jsr func_03_0307		; 20 07 a3

B3_0285:		lda wBaseIRQFuncIdx			; a5 3f
B3_0287:		cmp #$09		; c9 09
B3_0289:		bne B3_0294 ; d0 09

B3_028b:		lda $0619		; ad 19 06
B3_028e:		sec				; 38 
B3_028f:		sbc $0630		; ed30 06
B3_0292:		sta $42			; 85 42

B3_0294:		lda $0630		; ad 30 06
B3_0297:		eor #$01		; 49 01
B3_0299:		sta $0630		; 8d 30 06
B3_029c:		inc wIRQFuncIdx			; e6 6d
B3_029e:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_0a:
irqFunc_0f:
B3_02a1:		ldy #$05		; a0 05
B3_02a3:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02a6:		jsr func_1f_0005		; 20 05 e0
B3_02a9:		jsr chrSwitch_0_400		; 20 52 e3
B3_02ac:		jsr func_1f_0005		; 20 05 e0
B3_02af:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02b2:		jsr func_1f_0005		; 20 05 e0
B3_02b5:		jsr chrSwitch_0_400		; 20 52 e3
B3_02b8:		jsr func_1f_0005		; 20 05 e0
B3_02bb:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02be:		jsr func_1f_0005		; 20 05 e0
B3_02c1:		jsr chrSwitch_0_400		; 20 52 e3
B3_02c4:		jsr func_1f_0005		; 20 05 e0
B3_02c7:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02ca:		jsr func_1f_0005		; 20 05 e0
B3_02cd:		jsr chrSwitch_0_400		; 20 52 e3
B3_02d0:		ldx #$10		; a2 10
B3_02d2:		dex				; ca 
B3_02d3:		bne B3_02d2 ; d0 fd

B3_02d5:		nop				; ea 
B3_02d6:		dey				; 88 
B3_02d7:		bne B3_02a3 ; d0 ca

B3_02d9:		jmp irqFunc_end		; 4c 3a e1


irqFunc_10:
B3_02dc:		jsr func_03_0097		; 20 97 a0
B3_02df:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_02e2:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_02e5:		jsr chrSwitch_0_400		; 20 52 e3
B3_02e8:		lda $89			; a5 89
B3_02ea:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_02ed:		inc wIRQFuncIdx			; e6 6d
B3_02ef:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_11:
B3_02f2:		jsr setClearedChrBank_0_400		; 20 22 e3
B3_02f5:		jmp irqFunc_end		; 4c 3a e1


irqFunc_12:
B3_02f8:		jsr func_03_0097		; 20 97 a0
B3_02fb:		jsr b2_setNametableVerticalMirroring		; 20 cb 9f
B3_02fe:		jsr chrSwitchMirrored_400_800		; 20 6d e3
B3_0301:		jsr chrSwitch_0_400		; 20 52 e3
B3_0304:		jmp irqFunc_end		; 4c 3a e1


func_03_0307:
B3_0307:		lda #$00		; a9 00
B3_0309:		sta wEntityState.w		; 8d 70 04
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

B3_0323:		sta wEntityBaseX.w		; 8d 38 04
B3_0326:		rts				; 60 

B3_0327:		lda #$80		; a9 80
B3_0329:		sta wEntityState.w		; 8d 70 04
B3_032c:		rts				; 60 

B3_032d:		lda $05d4		; ad d4 05
B3_0330:		clc				; 18 
B3_0331:		adc $0505		; 6d 05 05
B3_0334:		bcs B3_0327 ; b0 f1

B3_0336:		cmp #$f8		; c9 f8
B3_0338:		bcs B3_0327 ; b0 ed

B3_033a:		sta wEntityBaseX.w		; 8d 38 04
B3_033d:		rts				; 60 

B3_033e:		lda $05d4		; ad d4 05
B3_0341:		sta wEntityBaseX.w		; 8d 38 04
B3_0344:		rts				; 60 


irqFunc_13:
irqFunc_24:
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
B3_037c:		sta wChrBankSpr_1400			; 85 4e
B3_037e:		lda $7d			; a5 7d
B3_0380:		and #$0f		; 29 0f
B3_0382:		tay				; a8 
B3_0383:		lda $a393, y	; b9 93 a3
B3_0386:		clc				; 18 
B3_0387:		adc $89			; 65 89
B3_0389:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_038b:		inc wIRQFuncIdx			; e6 6d
B3_038d:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_0390:	.db $54
B3_0391:		eor $56, x		; 55 56
B3_0393:		bmi B3_03a5 ; 30 10

B3_0395:		;removed
	.db $30 $30

B3_0397:		;removed
	.db $30 $30

B3_0399:		;removed
	.db $30 $30


irqFunc_14:
irqFunc_25:
B3_039b:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_039d:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03a0:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_03a2:		clc				; 18 
B3_03a3:		adc #$40		; 69 40
B3_03a5:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_03a7:		lda $7d			; a5 7d
B3_03a9:		and #$0f		; 29 0f
B3_03ab:		cmp #$02		; c9 02
B3_03ad:		bcc B3_03c6 ; 90 17

B3_03af:		tay				; a8 
B3_03b0:		dey				; 88 
B3_03b1:		dey				; 88 
B3_03b2:		lda $a3d4, y	; b9 d4 a3
B3_03b5:		cmp wCurrScrollXRoom			; c5 57
B3_03b7:		beq B3_03cf ; f0 16

B3_03b9:		lda wGameStateLoopCounter			; a5 1a
B3_03bb:		and #$03		; 29 03
B3_03bd:		beq B3_03cf ; f0 10

B3_03bf:		bne B3_03cc ; d0 0b

irqFunc_27:
B3_03c1:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_03c3:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03c6:		lda wGameStateLoopCounter			; a5 1a
B3_03c8:		and #$01		; 29 01
B3_03ca:		beq B3_03cf ; f0 03

B3_03cc:		jsr setClearedChrBank_0_to_c00		; 20 13 e3
B3_03cf:		inc wIRQFuncIdx			; e6 6d
B3_03d1:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_03d4:	.db $03
B3_03d5:	.db $02
B3_03d6:		asl $02			; 06 02
B3_03d8:		ora ($01, x)	; 01 01


irqFunc_26:
B3_03da:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_03dc:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03df:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_03e2:		lda wBaseIRQScanlineCmpVal			; a5 43
B3_03e4:		clc				; 18 
B3_03e5:		adc #$30		; 69 30
B3_03e7:		sta wBaseIRQScanlineCmpVal			; 85 43
B3_03e9:		inc wIRQFuncIdx			; e6 6d
B3_03eb:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_15:
irqFunc_28:
B3_03ee:		jsr chrSwitch_0_to_c00_1400		; 20 3c e3
B3_03f1:		jmp irqFunc_end		; 4c 3a e1


irqFunc_1a:
B3_03f4:		lda $89			; a5 89
B3_03f6:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_03f9:		ldy $0782		; ac 82 07
B3_03fc:		sty $0789		; 8c 89 07
B3_03ff:		lda $a41a, y	; b9 1a a4
B3_0402:		sta wIRQFuncIdx			; 85 6d
B3_0404:		lda $0783		; ad 83 07
B3_0407:		clc				; 18 
B3_0408:		adc $89			; 65 89
B3_040a:		sta $078a		; 8d 8a 07
B3_040d:		lda $0784		; ad 84 07
B3_0410:		clc				; 18 
B3_0411:		adc $078a		; 6d 8a 07
B3_0414:		sta $078b		; 8d 8b 07
B3_0417:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_041a:	.db $1b
B3_041b:	.db $1b
B3_041c:	.db $1c


irqFunc_1b:
B3_041d:		lda $078a		; ad 8a 07
B3_0420:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0423:		jsr $a45e		; 20 5e a4
B3_0426:		ldy $0789		; ac 89 07
B3_0429:		lda $a431, y	; b9 31 a4
B3_042c:		sta wIRQFuncIdx			; 85 6d
B3_042e:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_0431:		ora $1d1c, x	; 1d 1c 1d


irqFunc_1c:
B3_0434:		ldx #$10		; a2 10
B3_0436:		dex				; ca 
B3_0437:		bpl B3_0436 ; 10 fd

B3_0439:		lda wPPUCtrl			; a5 ff
B3_043b:		eor #$01		; 49 01
B3_043d:		sta PPUCTRL.w		; 8d 00 20
B3_0440:		jsr $a473		; 20 73 a4
B3_0443:		lda $078b		; ad 8b 07
B3_0446:		ldy $0789		; ac 89 07
B3_0449:		cpy #$01		; c0 01
B3_044b:		beq B3_0450 ; f0 03

B3_044d:		lda $078a		; ad 8a 07
B3_0450:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_0453:		inc wIRQFuncIdx			; e6 6d
B3_0455:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_1d:
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


irqFunc_1e:
irqFunc_21:
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

B3_04c0:		inc wIRQFuncIdx			; e6 6d
B3_04c2:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


B3_04c5:		jmp irqFunc_end		; 4c 3a e1


irqFunc_1f:
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

B3_04e1:		inc wIRQFuncIdx			; e6 6d
B3_04e3:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_20:
B3_04e6:		lda $0792		; ad 92 07
B3_04e9:		clc				; 18 
B3_04ea:		adc #$02		; 69 02
B3_04ec:		ldx #$04		; a2 04
B3_04ee:		jsr $a527		; 20 27 a5
B3_04f1:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_04f4:		lda #$7f		; a9 7f
B3_04f6:		sta wChrBankBG_0000			; 85 4a
B3_04f8:		sta wChrBankBG_0400			; 85 4b
B3_04fa:		sta wChrBankBG_0800			; 85 4c
B3_04fc:		sta wChrBankBG_0c00			; 85 4d
B3_04fe:		jmp irqFunc_end		; 4c 3a e1


irqFunc_22:
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
B3_052d:		sta wChrBankBG_0000			; 85 4a
B3_052f:		lda $a551, y	; b9 51 a5
B3_0532:		sta wChrBankBG_0400			; 85 4b
B3_0534:		lda $a552, y	; b9 52 a5
B3_0537:		sta wChrBankBG_0800			; 85 4c
B3_0539:		lda $a553, y	; b9 53 a5
B3_053c:		sta wChrBankBG_0c00			; 85 4d
B3_053e:		rts				; 60 


B3_053f:		lda #$41		; a9 41
B3_0541:		sta wChrBankBG_0000			; 85 4a
B3_0543:		lda #$3e		; a9 3e
B3_0545:		sta wChrBankBG_0400			; 85 4b
B3_0547:		lda #$3f		; a9 3f
B3_0549:		sta wChrBankBG_0800			; 85 4c
B3_054b:		lda #$6f		; a9 6f
B3_054d:		sta wChrBankBG_0c00			; 85 4d
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
B3_0576:		.db $3d $6f


irqFunc_29:
	lda $89
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
B3_059b:		inc wIRQFuncIdx			; e6 6d
B3_059d:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_2a:
B3_05a0:		lda $078a		; ad 8a 07
B3_05a3:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_05a6:		lda #$55		; a9 55
B3_05a8:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_05ab:		ldx #$05		; a2 05
B3_05ad:		jsr func_1f_0001		; 20 01 e0
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
B3_05cd:		inc wIRQFuncIdx			; e6 6d
B3_05cf:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_2b:
B3_05d2:		lda $078b		; ad 8b 07
B3_05d5:		sta SCANLINE_CMP_VALUE.w		; 8d 03 52
B3_05d8:		ldx #$0c		; a2 0c
B3_05da:		jsr func_1f_0001		; 20 01 e0
B3_05dd:		jsr chrSwitchAllMirrored		; 20 5d e3
B3_05e0:		inc wIRQFuncIdx			; e6 6d
B3_05e2:		jmp irqFunc_resetLowerBank_vectorEnd		; 4c 3f e1


irqFunc_2c:
B3_05e5:		ldx #$14		; a2 14
B3_05e7:		jsr func_1f_0001		; 20 01 e0
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
