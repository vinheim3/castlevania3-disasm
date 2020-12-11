gameStateC_body:
B21_10ea:		lda wGameSubstate			; a5 19
B21_10ec:		jsr jumpTablePreserveY		; 20 6d e8
	.dw gameStateC_substate00
	.dw gameStateC_substate01
	.dw gameStateC_substate02
	.dw gameStateC_substate03
	.dw gameStateC_substate04
	.dw gameStateC_substate05
	.dw gameStateC_substate06
	.dw gameStateC_substate07
	.dw func_15_14d9_incsSubstate
	.dw gameStateC_substate09
	.dw gameStateC_substate0a
	.dw gameStateC_substate0b
	.dw gameStateC_substate0c
	.dw gameStateC_substate0d
	.dw gameStateC_substate0e
	.dw gameStateC_substate0f
	.dw gameStateC_substate10
	.dw gameStateC_substate11
	.dw gameStateC_substate12
	.dw gameStateC_substate13
	.dw gameStateC_substate14

gameStateC_substate00:
B21_1119:		jsr func_1f_07f7
B21_111c:		jsr setBank_c000_toRom1eh		; 20 da e2
B21_111f:		lda #$00		; a9 00
B21_1121:		sta $0418		; 8d 18 04
B21_1124:		sta $0419		; 8d 19 04
B21_1127:		sta $041a		; 8d 1a 04
B21_112a:		sta $041b		; 8d 1b 04
B21_112d:		lda #$01		; a9 01
B21_112f:		sta $0789		; 8d 89 07
B21_1132:		jmp func_15_14d9_incsSubstate		; 4c d9 b4


gameStateC_substate01:
B21_1135:		jsr func_15_15f3		; 20 f3 b5
B21_1138:		lda $b4			; a5 b4
B21_113a:		cmp #$ff		; c9 ff
B21_113c:		beq B21_1150 ; f0 12

B21_113e:		lda $1d			; a5 1d
B21_1140:		pha				; 48 
B21_1141:		lda #$62		; a9 62
B21_1143:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1146:		jsr func_1f_0716		; 20 16 e7
B21_1149:		pla				; 68 
B21_114a:		sta $15			; 85 15
B21_114c:		jsr func_1f_1baf		; 20 af fb
B21_114f:		rts				; 60 

B21_1150:		lda #$02		; a9 02
B21_1152:		sta $1c			; 85 1c
B21_1154:		jmp gameStateC_incSubstate		; 4c 1a b2


gameStateC_substate02:
B21_1157:		jsr func_15_15f3		; 20 f3 b5
B21_115a:		jsr func_1f_0666		; 20 66 e6
B21_115d:		jmp gameStateC_incSubstate		; 4c 1a b2


gameStateC_substate03:
B21_1160:		jsr func_15_15f3		; 20 f3 b5
B21_1163:		jsr func_1f_07f7		; 20 f7 e7
B21_1166:		jsr func_15_1452		; 20 52 b4
B21_1169:		jsr func_15_119b		; 20 9b b1
B21_116c:		lda #$38		; a9 38
B21_116e:		sta wChrBankSpr_0000			; 85 46
B21_1170:		lda #$39		; a9 39
B21_1172:		sta wChrBankSpr_0400			; 85 47
B21_1174:		lda #$3d		; a9 3d
B21_1176:		sta wChrBankSpr_0800			; 85 48
B21_1178:		lda #$3b		; a9 3b
B21_117a:		sta wChrBankSpr_0c00			; 85 49
B21_117c:		lda #$41		; a9 41
B21_117e:		sta wChrBankBG_0000			; 85 4a
B21_1180:		lda #$3a		; a9 3a
B21_1182:		sta wChrBankBG_0400			; 85 4b
B21_1184:		lda #$47		; a9 47
B21_1186:		sta wChrBankBG_0800			; 85 4c
B21_1188:		lda #$6f		; a9 6f
B21_118a:		sta wChrBankBG_0c00			; 85 4d
B21_118c:		inc wGameSubstate			; e6 19
B21_118e:		lda #$2a		; a9 2a
B21_1190:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1193:		jsr func_15_11a4		; 20 a4 b1
B21_1196:		lda #$04		; a9 04
B21_1198:		jmp displayStaticLayoutA		; 4c e9 ec


func_15_119b:
B21_119b:		lda #$00		; a9 00
B21_119d:		sta $72			; 85 72
B21_119f:		sta wScrollY			; 85 fc
B21_11a1:		sta wScrollX			; 85 fd
B21_11a3:		rts				; 60 


func_15_11a4:
B21_11a4:		jsr func_15_11aa		; 20 aa b1
B21_11a7:		jmp displayStaticLayoutA		; 4c e9 ec


func_15_11aa:
B21_11aa:		ldy $3a			; a4 3a
B21_11ac:		cpy #$ff		; c0 ff
B21_11ae:		bne B21_11b2 ; d0 02

B21_11b0:		ldy #$00		; a0 00
B21_11b2:		sty $0782		; 8c 82 07
B21_11b5:		lda $b1b9, y	; b9 b9 b1
B21_11b8:		rts				; 60 


B21_11b9:	.db $2b
B21_11ba:	.db $2b
B21_11bb:		.db $2c $2d


gameStateC_substate04:
B21_11bd:		jsr func_15_15f3
B21_11c0:		ldx #$20
B21_11c2:		jsr func_1f_0c04
B21_11c5:		lda #$00
B21_11c7:		ldx #$03		; a2 03
B21_11c9:		jsr func_15_155f		; 20 5f b5
B21_11cc:		lda #$01		; a9 01
B21_11ce:		ldx #$02		; a2 02
B21_11d0:		jsr func_15_155f		; 20 5f b5
B21_11d3:		inc wGameSubstate			; e6 19
B21_11d5:		lda #$00		; a9 00
B21_11d7:		sta $0783		; 8d 83 07
B21_11da:		jsr func_15_154a		; 20 4a b5
B21_11dd:		lda #$44		; a9 44
B21_11df:		sta wNametableMapping			; 85 25
B21_11e1:		lda #$23		; a9 23
B21_11e3:		ldx #$70		; a2 70
B21_11e5:		jsr func_1f_05c1		; 20 c1 e5
B21_11e8:		ldy #$00		; a0 00
B21_11ea:		lda #$80		; a9 80
B21_11ec:		jmp setGenericTimerToYA		; 4c 8e e5


gameStateC_substate05:
B21_11ef:		jsr func_15_15f3		; 20 f3 b5
B21_11f2:		jsr decGenericTimer		; 20 79 e5
B21_11f5:		bne B21_121c ; d0 25

B21_11f7:		lda #$f0		; a9 f0
B21_11f9:		sta $078a		; 8d 8a 07
B21_11fc:		ldx #$03		; a2 03
B21_11fe:		lda #$00		; a9 00
B21_1200:		sta wEntityVertSpeed.w, x	; 9d 20 05
B21_1203:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B21_1206:		lda #$40		; a9 40
B21_1208:		sta wEntityVertSubSpeed.w, x	; 9d 37 05
B21_120b:		lda #$01		; a9 01
B21_120d:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B21_1210:		lda #$01		; a9 01
B21_1212:		sta $0784		; 8d 84 07
B21_1215:		lda #$07		; a9 07
B21_1217:		jsr playSound		; 20 5f e2

gameStateC_incSubstate:
B21_121a:		inc wGameSubstate			; e6 19

B21_121c:		rts				; 60 


gameStateC_substate06:
B21_121d:		jsr func_15_15f3		; 20 f3 b5
B21_1220:		dec $078a		; ce 8a 07
B21_1223:		beq B21_1257 ; f0 32

B21_1225:		ldx #$03		; a2 03
B21_1227:		clc				; 18 
B21_1228:		lda $04db, x	; bd db 04
B21_122b:		adc wEntityVertSubSpeed.w, x	; 7d 37 05
B21_122e:		sta $04db, x	; 9d db 04
B21_1231:		lda wEntityBaseY.w, x	; bd 1c 04
B21_1234:		adc wEntityVertSpeed.w, x	; 7d 20 05
B21_1237:		sta wEntityBaseY.w, x	; 9d 1c 04
B21_123a:		clc				; 18 
B21_123b:		lda wEntityBaseX.w, x	; bd 38 04
B21_123e:		adc wEntityHorizSpeed.w, x	; 7d f2 04
B21_1241:		sta wEntityBaseX.w, x	; 9d 38 04
B21_1244:		dec $0784		; ce 84 07
B21_1247:		bne B21_1256 ; d0 0d

B21_1249:		lda #$02		; a9 02
B21_124b:		sta $0784		; 8d 84 07
B21_124e:		lda wEntityHorizSpeed.w, x	; bd f2 04
B21_1251:		eor #$fe		; 49 fe
B21_1253:		sta wEntityHorizSpeed.w, x	; 9d f2 04
B21_1256:		rts				; 60 

B21_1257:		lda #$00		; a9 00
B21_1259:		sta $0403		; 8d 03 04
B21_125c:		ldy $0782		; ac 82 07
B21_125f:		lda $b268, y	; b9 68 b2
B21_1262:		sta $0783		; 8d 83 07
B21_1265:		jmp gameStateC_incSubstate		; 4c 1a b2


B21_1268:		.db $00				; 00
B21_1269:	.db $03
B21_126a:		.db $10 $13


gameStateC_substate07:
B21_126c:		lda $0783		; ad 83 07
B21_126f:		jsr jumpTablePreserveY		; 20 6d e8
	.dw gameStateC_783_00
	.dw gameStateC_783_01
	.dw gameStateC_783_nextSubstate
	.dw gameStateC_783_03
	.dw gameStateC_animateAndnext_783_afterTimer
	.dw gameStateC_783_05
	.dw gameStateC_next_783_afterTimer
	.dw gameStateC_783_07
	.dw gameStateC_animateAndnext_783_afterTimer
	.dw gameStateC_783_09
	.dw gameStateC_next_783_afterTimer
	.dw gameStateC_783_0b
	.dw gameStateC_next_783_afterTimer
	.dw gameStateC_783_0d
	.dw gameStateC_next_783_afterTimer
	.dw gameStateC_783_nextSubstate
	.dw gameStateC_783_10
	.dw gameStateC_animateAndnext_783_afterTimer
	.dw gameStateC_783_nextSubstate
	.dw gameStateC_783_13
	.dw gameStateC_animateAndnext_783_afterTimer
	.dw gameStateC_783_nextSubstate

gameStateC_783_00:
B21_129e:		ldx #$00		; a2 00
B21_12a0:		ldy #$00		; a0 00
B21_12a2:		jsr func_15_1521		; 20 21 b5
B21_12a5:		lda #$80		; a9 80

gameStateC_inc783_setTimerA:
B21_12a7:		inc $0783		; ee 83 07
B21_12aa:		ldy #$00		; a0 00
B21_12ac:		jmp setGenericTimerToYA		; 4c 8e e5

gameStateC_783_01:
B21_12af:		ldx #$00		; a2 00
B21_12b1:		beq B21_12b5 ; f0 02

gameStateC_animateAndnext_783_afterTimer:
B21_12b3:		ldx #$01		; a2 01
B21_12b5:		jsr updateEntityXanimationFrame		; 20 75 ef

gameStateC_next_783_afterTimer:
B21_12b8:		jsr decGenericTimer		; 20 79 e5
B21_12bb:		bne B21_12c0 ; d0 03

B21_12bd:		inc $0783		; ee 83 07
B21_12c0:		rts				; 60 

gameStateC_783_03:
B21_12c1:		ldx #$01		; a2 01
B21_12c3:		ldy #$03		; a0 03
B21_12c5:		jsr func_15_1521		; 20 21 b5
B21_12c8:		lda #$18		; a9 18
B21_12ca:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_05:
B21_12cd:		lda #$40		; a9 40
B21_12cf:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_07:
B21_12d2:		ldx #$01		; a2 01
B21_12d4:		ldy #$04		; a0 04
B21_12d6:		jsr func_15_1521		; 20 21 b5
B21_12d9:		lda #$30		; a9 30
B21_12db:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_09:
B21_12de:		lda #$40		; a9 40
B21_12e0:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_0b:
B21_12e3:		lda #$00		; a9 00
B21_12e5:		sta wOamSpecIdx.w		; 8d 00 04
B21_12e8:		ldx #$01		; a2 01
B21_12ea:		lda #$3e		; a9 3e
B21_12ec:		jsr func_15_1518		; 20 18 b5
B21_12ef:		lda #$20		; a9 20
B21_12f1:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_0d:
B21_12f4:		ldx #$01		; a2 01
B21_12f6:		lda #$40		; a9 40
B21_12f8:		jsr func_15_1518		; 20 18 b5
B21_12fb:		lda #$80		; a9 80
B21_12fd:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_10:
B21_1300:		ldx #$01		; a2 01
B21_1302:		ldy #$01		; a0 01
B21_1304:		jsr func_15_1521		; 20 21 b5
B21_1307:		lda #$20		; a9 20
B21_1309:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_13:
B21_130c:		ldx #$01		; a2 01
B21_130e:		ldy #$02		; a0 02
B21_1310:		jsr func_15_1521		; 20 21 b5
B21_1313:		lda #$80		; a9 80
B21_1315:		jmp gameStateC_inc783_setTimerA		; 4c a7 b2

gameStateC_783_nextSubstate:
B21_1318:		inc wGameSubstate			; e6 19
B21_131a:		rts				; 60 


gameStateC_substate0a:
B21_131b:		ldy $0782		; ac 82 07
B21_131e:		lda $b374, y	; b9 74 b3
B21_1321:		sta $0790		; 8d 90 07
B21_1324:		lda #$28		; a9 28
B21_1326:		sta $0791		; 8d 91 07
B21_1329:		lda #$68		; a9 68
B21_132b:		jsr playSound		; 20 5f e2
B21_132e:		jsr func_1f_0bfd		; 20 fd eb
B21_1331:		jsr func_1f_0666		; 20 66 e6
B21_1334:		lda #$50		; a9 50
B21_1336:		sta wNametableMapping			; 85 25
B21_1338:		ldy $0782		; ac 82 07
B21_133b:		lda $b5a5, y	; b9 a5 b5
B21_133e:		sta $0785		; 8d 85 07
B21_1341:		tay				; a8 
B21_1342:		lda data_15_15a9.w, y	; b9 a9 b5
B21_1345:		jsr func_15_15ee		; 20 ee b5
B21_1348:		inc $0785		; ee 85 07
B21_134b:		jsr func_15_119b		; 20 9b b1
B21_134e:		lda #$41		; a9 41
B21_1350:		sta wChrBankBG_0000			; 85 4a
B21_1352:		lda #$41		; a9 41
B21_1354:		sta wChrBankBG_0400			; 85 4b
B21_1356:		lda #$36		; a9 36
B21_1358:		sta wChrBankBG_0800			; 85 4c
B21_135a:		lda #$6f		; a9 6f
B21_135c:		sta wChrBankBG_0c00			; 85 4d
B21_135e:		lda #$00		; a9 00
B21_1360:		sta $0788		; 8d 88 07
B21_1363:		jsr gameStateC_incSubstate		; 20 1a b2

func_15_1366:
B21_1366:		ldy $0782		; ac 82 07
B21_1369:		lda $b370, y	; b9 70 b3
B21_136c:		sta $078a		; 8d 8a 07
B21_136f:		rts				; 60 


B21_1370:		;removed
	.db $d0 $c0

B21_1372:		cpy #$c0		; c0 c0
B21_1374:		eor $2d4d		; 4d 4d 2d
B21_1377:		.db $ad


gameStateC_substate0b:
	dec $078a
B21_137b:		bne B21_1390 ; d0 13

B21_137d:		jsr func_15_1366		; 20 66 b3
B21_1380:		ldy $0785		; ac 85 07
B21_1383:		lda data_15_15a9.w, y	; b9 a9 b5
B21_1386:		cmp #$ff		; c9 ff
B21_1388:		beq B21_13b6 ; f0 2c

B21_138a:		jsr func_15_15ee		; 20 ee b5
B21_138d:		inc $0785		; ee 85 07

func_1f_1390:
B21_1390:		ldy $0782		; ac 82 07
B21_1393:		inc $0788		; ee 88 07
B21_1396:		lda $0788		; ad 88 07
B21_1399:		cmp $b3d1, y	; d9 d1 b3
B21_139c:		bne B21_13b5 ; d0 17

B21_139e:		lda #$00		; a9 00
B21_13a0:		sta $0788		; 8d 88 07
B21_13a3:		inc $fc			; e6 fc
B21_13a5:		lda $fc			; a5 fc
B21_13a7:		cmp #$f0		; c9 f0
B21_13a9:		bne B21_13b5 ; d0 0a

B21_13ab:		lda #$00		; a9 00
B21_13ad:		sta wScrollY			; 85 fc
B21_13af:		lda $ff			; a5 ff
B21_13b1:		eor #$02		; 49 02
B21_13b3:		sta $ff			; 85 ff
B21_13b5:		rts				; 60 

B21_13b6:		ldy $0782		; ac 82 07
B21_13b9:		lda $b3c9, y	; b9 c9 b3
B21_13bc:		sta $00			; 85 00
B21_13be:		lda $b3cd, y	; b9 cd b3
B21_13c1:		ldy $00			; a4 00
B21_13c3:		jsr setGenericTimerToYA		; 20 8e e5
B21_13c6:		jmp gameStateC_incSubstate		; 4c 1a b2


B21_13c9:		ora ($02, x)	; 01 02
B21_13cb:	.db $02
B21_13cc:		ora ($60, x)	; 01 60
B21_13ce:		.db $00				; 00
B21_13cf:		rti				; 40 


B21_13d0:		bcc B21_13d8 ; 90 06

B21_13d2:		asl $06			; 06 06
B21_13d4:		.db $05


gameStateC_substate0c:
B21_13d5:		jsr func_1f_1390

B21_13d8:		jsr decGenericTimer		; 20 79 e5
B21_13db:		bne B21_13e8 ; d0 0b

B21_13dd:		inc wGameSubstate			; e6 19
B21_13df:		ldy $0782		; ac 82 07
B21_13e2:		lda $b3e9, y	; b9 e9 b3
B21_13e5:		sta $078a		; 8d 8a 07
B21_13e8:		rts				; 60 


B21_13e9:		ora ($01, x)	; 01 01
B21_13eb:		ora ($50, x)	; 01 50


gameStateC_substate0d:
B21_13ed:		dec $078a		; ce 8a 07
B21_13f0:		bne B21_13e8 ; d0 f6

B21_13f2:		jmp func_15_14d9_incsSubstate		; 4c d9 b4


gameStateC_substate0e:
B21_13f5:		lda $b4			; a5 b4
B21_13f7:		cmp #$ff		; c9 ff
B21_13f9:		beq B21_1417 ; f0 1c

B21_13fb:		lda $1d			; a5 1d
B21_13fd:		pha				; 48 
B21_13fe:		lda #$5e		; a9 5e
B21_1400:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1403:		jsr func_15_11aa		; 20 aa b1
B21_1406:		clc				; 18 
B21_1407:		adc #$04		; 69 04
B21_1409:		jsr displayStaticLayoutA		; 20 e9 ec
B21_140c:		lda #$04		; a9 04
B21_140e:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1411:		pla				; 68 
B21_1412:		sta $15			; 85 15
B21_1414:		jmp func_1f_1baf		; 4c af fb

B21_1417:		ldx #$00		; a2 00
B21_1419:		lda #$00		; a9 00
B21_141b:		sta wOamSpecIdx.w, x	; 9d 00 04
B21_141e:		inx				; e8 
B21_141f:		cpx #$04		; e0 04
B21_1421:		bcc B21_1419 ; 90 f6

B21_1423:		ldy #$00		; a0 00
B21_1425:		lda #$40		; a9 40
B21_1427:		jsr setGenericTimerToYA		; 20 8e e5
B21_142a:		jmp gameStateC_incSubstate		; 4c 1a b2


gameStateC_substate0f:
B21_142d:		jsr decGenericTimer		; 20 79 e5
B21_1430:		beq B21_1433 ; f0 01

B21_1432:		rts				; 60 

B21_1433:		jsr func_15_119b		; 20 9b b1
B21_1436:		lda #$41		; a9 41
B21_1438:		sta wChrBankBG_0000			; 85 4a
B21_143a:		ldy #$70		; a0 70
B21_143c:		sty $4b			; 84 4b
B21_143e:		iny				; c8 
B21_143f:		sty $4c			; 84 4c
B21_1441:		iny				; c8 
B21_1442:		sty $4d			; 84 4d
B21_1444:		lda #$b2		; a9 b2
B21_1446:		sta $ff			; 85 ff
B21_1448:		ldx #$22		; a2 22
B21_144a:		lda #$84		; a9 84
B21_144c:		jsr func_1f_0bd5		; 20 d5 eb
B21_144f:		jmp gameStateC_incSubstate		; 4c 1a b2


func_15_1452:
B21_1452:		lda #$b0		; a9 b0
B21_1454:		sta $ff			; 85 ff
B21_1456:		rts				; 60 


gameStateC_substate10:
B21_1457:		ldx #$24		; a2 24
B21_1459:		jsr func_1f_0c04		; 20 04 ec
B21_145c:		ldy #$00		; a0 00
B21_145e:		lda #$78		; a9 78
B21_1460:		jsr setGenericTimerToYA		; 20 8e e5
B21_1463:		jmp func_15_14d9_incsSubstate		; 4c d9 b4


gameStateC_substate11:
B21_1466:		jsr decGenericTimer		; 20 79 e5
B21_1469:		bne B21_1475 ; d0 0a

B21_146b:		ldy #$01		; a0 01
B21_146d:		lda #$00		; a9 00
B21_146f:		jsr setGenericTimerToYA		; 20 8e e5
B21_1472:		inc wGameSubstate			; e6 19
B21_1474:		rts				; 60 

B21_1475:		lda $b4			; a5 b4
B21_1477:		cmp #$ff		; c9 ff
B21_1479:		beq B21_1474 ; f0 f9

B21_147b:		lda $1d			; a5 1d
B21_147d:		pha				; 48 
B21_147e:		jsr $b491		; 20 91 b4
B21_1481:		pla				; 68 
B21_1482:		sta $15			; 85 15
B21_1484:		jsr func_1f_1ba4		; 20 a4 fb
B21_1487:		lda $b4			; a5 b4
B21_1489:		cmp #$ff		; c9 ff
B21_148b:		bne B21_1474 ; d0 e7

B21_148d:		lda $15			; a5 15
B21_148f:		sta $1d			; 85 1d
B21_1491:		lda #$5e		; a9 5e
B21_1493:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1496:		jsr func_15_11aa		; 20 aa b1
B21_1499:		clc				; 18 
B21_149a:		adc #$04		; 69 04
B21_149c:		jsr displayStaticLayoutA		; 20 e9 ec
B21_149f:		lda #$04		; a9 04
B21_14a1:		jmp displayStaticLayoutA		; 4c e9 ec


gameStateC_substate12:
B21_14a4:		jsr decGenericTimer		; 20 79 e5
B21_14a7:		bne B21_14d8 ; d0 2f

B21_14a9:		jmp func_15_14d9_incsSubstate		; 4c d9 b4


gameStateC_substate13:
B21_14ac:		lda $b4			; a5 b4
B21_14ae:		cmp #$ff		; c9 ff
B21_14b0:		beq B21_1472 ; f0 c0

B21_14b2:		lda $1d			; a5 1d
B21_14b4:		pha				; 48 
B21_14b5:		lda #$5e		; a9 5e
B21_14b7:		jsr displayStaticLayoutA		; 20 e9 ec
B21_14ba:		lda #$0a		; a9 0a
B21_14bc:		jsr displayStaticLayoutA		; 20 e9 ec
B21_14bf:		lda #$04		; a9 04
B21_14c1:		jsr displayStaticLayoutA		; 20 e9 ec
B21_14c4:		pla				; 68 
B21_14c5:		sta $15			; 85 15
B21_14c7:		jmp func_1f_1baf		; 4c af fb


gameStateC_substate14:
B21_14ca:		lda $0789		; ad 89 07
B21_14cd:		sta $0781		; 8d 81 07
B21_14d0:		lda #GS_0d		; a9 0d
B21_14d2:		sta wGameState			; 85 18
B21_14d4:		lda #$00		; a9 00
B21_14d6:		sta wGameSubstate			; 85 19
B21_14d8:		rts				; 60 


func_15_14d9_incsSubstate:
B21_14d9:		ldy #$00		; a0 00
B21_14db:		sty $b4			; 84 b4
B21_14dd:		iny				; c8 
B21_14de:		sty $b5			; 84 b5

B21_14e0:		jmp gameStateC_incSubstate		; 4c 1a b2


gameStateC_substate09:
B21_14e3:		lda $b4			; a5 b4
B21_14e5:		cmp #$ff		; c9 ff
B21_14e7:		beq B21_1507 ; f0 1e

B21_14e9:		lda $1d			; a5 1d
B21_14eb:		pha				; 48 
B21_14ec:		lda #$2a		; a9 2a
B21_14ee:		jsr displayStaticLayoutA		; 20 e9 ec
B21_14f1:		lda $1d			; a5 1d
B21_14f3:		sta $0787		; 8d 87 07
B21_14f6:		jsr func_15_11a4		; 20 a4 b1
B21_14f9:		pla				; 68 
B21_14fa:		sta $15			; 85 15
B21_14fc:		jsr func_1f_1baf		; 20 af fb
B21_14ff:		lda $0787		; ad 87 07
B21_1502:		sta $1d			; 85 1d
B21_1504:		jmp func_15_11a4		; 4c a4 b1

B21_1507:		lda #$2e		; a9 2e
B21_1509:		jsr displayStaticLayoutA		; 20 e9 ec
B21_150c:		jsr func_15_11aa		; 20 aa b1
B21_150f:		clc				; 18 
B21_1510:		adc #$04		; 69 04
B21_1512:		jsr displayStaticLayoutA		; 20 e9 ec
B21_1515:		jmp B21_14e0		; 4c e0 b4


func_15_1518:
B21_1518:		sta wOamSpecIdx.w, x	; 9d 00 04
B21_151b:		lda #$14		; a9 14
B21_151d:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B21_1520:		rts				; 60 


func_15_1521:
B21_1521:		lda #$14		; a9 14
B21_1523:		jsr func_1f_0f5c		; 20 5c ef
B21_1526:		jmp updateEntityXanimationFrame		; 4c 75 ef


B21_1529:		lda $0470, x	; bd 70 04
B21_152c:		ora #$20		; 09 20
B21_152e:		sta $0470, x	; 9d 70 04
B21_1531:		rts				; 60 


B21_1532:		lda $0470, x	; bd 70 04
B21_1535:		and #$df		; 29 df
B21_1537:		sta $0470, x	; 9d 70 04
B21_153a:		rts				; 60 


B21_153b:		lda wOamSpecIdx.w, x	; bd 00 04
B21_153e:		beq B21_153a ; f0 fa

B21_1540:		lda $0470, x	; bd 70 04
B21_1543:		and #$20		; 29 20
B21_1545:		bne B21_1531 ; d0 ea

B21_1547:		jmp updateEntityXanimationFrame		; 4c 75 ef


func_15_154a:
B21_154a:		lda $0782		; ad 82 07
B21_154d:		asl a			; 0a
B21_154e:		tay				; a8 
B21_154f:		pha				; 48 
B21_1550:		jsr $b556		; 20 56 b5
B21_1553:		pla				; 68 
B21_1554:		tay				; a8 
B21_1555:		iny				; c8 
B21_1556:		lda $b595, y	; b9 95 b5
B21_1559:		pha				; 48 
B21_155a:		lda $b59d, y	; b9 9d b5
B21_155d:		tax				; aa 
B21_155e:		pla				; 68 

func_15_155f:
B21_155f:		tay				; a8 
B21_1560:		lda $b57d, y	; b9 7d b5
B21_1563:		sta wOamSpecIdx.w, x	; 9d 00 04
B21_1566:		lda $b585, y	; b9 85 b5
B21_1569:		sta wEntityBaseX.w, x	; 9d 38 04
B21_156c:		lda $b58d, y	; b9 8d b5
B21_156f:		sta wEntityBaseY.w, x	; 9d 1c 04
B21_1572:		lda #$01		; a9 01
B21_1574:		sta wEntityFacingLeft.w, x	; 9d a8 04
B21_1577:		lda #$14		; a9 14
B21_1579:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B21_157c:		rts				; 60 


B21_157d:		asl $18, x		; 16 18
B21_157f:	.db $1c
B21_1580:	.db $1a
B21_1581:	.db $1a
B21_1582:		rol $2822		; 2e 22 28
B21_1585:		clv				; b8 
B21_1586:		bmi B21_15c8 ; 30 40

B21_1588:		bmi B21_15b2 ; 30 28

B21_158a:		rti				; 40 


B21_158b:		rti				; 40 


B21_158c:		rti				; 40 


B21_158d:		rts				; 60 


B21_158e:		bcs B21_1520 ; b0 90

B21_1590:		;removed
	.db $90 $90

B21_1592:		;removed
	.db $90 $90

B21_1594:		bcc B21_1598 ; 90 02

B21_1596:	.db $02
B21_1597:	.db $03
B21_1598:		ora $04			; 05 04
B21_159a:		asl $04			; 06 04
B21_159c:	.db $07
B21_159d:		.db $00				; 00
B21_159e:		.db $00				; 00
B21_159f:		.db $00				; 00
B21_15a0:		ora ($00, x)	; 01 00
B21_15a2:		ora ($00, x)	; 01 00
B21_15a4:		ora ($00, x)	; 01 00
B21_15a6:		ora ($22), y	; 11 22
B21_15a8:	.db $33


data_15_15a9:
B21_15a9:		and $3b3a, y	; 39 3a 3b
B21_15ac:		rol $403f, x	; 3e 3f 40
B21_15af:		eor ($42, x)	; 41 42
B21_15b1:	.db $3c
B21_15b2:		and $5454, x	; 3d 54 54
B21_15b5:	.db $54
B21_15b6:	.db $54
B21_15b7:	.db $54
B21_15b8:	.db $54
B21_15b9:	.db $ff
B21_15ba:		and $3b3a, y	; 39 3a 3b
B21_15bd:	.db $43
B21_15be:	.db $44
B21_15bf:		eor $46			; 45 46
B21_15c1:		eor $3d3c		; 4d 3c 3d
B21_15c4:	.db $54
B21_15c5:	.db $54
B21_15c6:	.db $54
B21_15c7:	.db $54
B21_15c8:	.db $54
B21_15c9:	.db $54
B21_15ca:	.db $ff
B21_15cb:		and $3b3a, y	; 39 3a 3b
B21_15ce:	.db $4f
B21_15cf:		.db $50 $51

B21_15d1:	.db $52
B21_15d2:	.db $53
B21_15d3:	.db $3c
B21_15d4:		and $5454, x	; 3d 54 54
B21_15d7:	.db $54
B21_15d8:	.db $54
B21_15d9:	.db $54
B21_15da:	.db $54
B21_15db:	.db $ff
B21_15dc:		and $3b3a, y	; 39 3a 3b
B21_15df:		eor $56, x		; 55 56
B21_15e1:	.db $57
B21_15e2:		cli				; 58 
B21_15e3:		eor $605a, y	; 59 5a 60
B21_15e6:		adc ($54, x)	; 61 54
B21_15e8:	.db $54
B21_15e9:	.db $54
B21_15ea:	.db $54
B21_15eb:	.db $54
B21_15ec:	.db $54
B21_15ed:	.db $ff


func_15_15ee:
B21_15ee:		ldx #$94		; a2 94
B21_15f0:		jmp func_1f_0cf6		; 4c f6 ec


func_15_15f3:
B21_15f3:		lda wJoy1ButtonsPressed			; a5 28
B21_15f5:		and #PADF_SELECT		; 29 20
B21_15f7:		bne B21_15fe ; d0 05

B21_15f9:		lda #$00		; a9 00
B21_15fb:		sta $0789		; 8d 89 07

B21_15fe:		rts				; 60 




func_15_15ff:
B21_15ff:		sta $00			; 85 00
B21_1601:		asl a			; 0a
B21_1602:		clc				; 18 
B21_1603:		adc $00			; 65 00
B21_1605:		tay				; a8 
B21_1606:		lda data_15_1616.w, y	; b9 16 b6
B21_1609:		sta $16			; 85 16
B21_160b:		lda data_15_1616.w+1, y	; b9 17 b6
B21_160e:		sta $17			; 85 17
B21_1610:		lda data_15_1616.w+2, y	; b9 18 b6
B21_1613:		jmp func_1f_1bba		; 4c ba fb

data_15_1616:
	.table word byte
	.row func_00_052c $80
	.row func_00_0001 $80
	.row getCurrRoomsChrBanks $80
	.row getCurrRoomMetatileTilesPalettesAndMetadataByte $00
	.row func_1e_10f8 $00
	.row func_1e_0db8 $00
	.row func_00_10cd $80
	.row func_1f_1ba4 $80
	.row func_1f_1baf $80
