
data_17_10dc:
B23_10dc:		ora ($00, x)	; 01 00
B23_10de:		ora ($00, x)	; 01 00
B23_10e0:		.db $00				; 00
B23_10e1:		.db $00				; 00
B23_10e2:		.db $00				; 00
B23_10e3:		.db $00				; 00
B23_10e4:		ora ($0c, x)	; 01 0c
B23_10e6:		adc ($7c), y	; 71 7c
B23_10e8:		ora ($00, x)	; 01 00
B23_10ea:		ora ($00, x)	; 01 00
B23_10ec:		ora ($00, x)	; 01 00
B23_10ee:		ora ($0c, x)	; 01 0c
B23_10f0:		;removed
	.db $10 $10

B23_10f2:		ora ($fc, x)	; 01 fc
B23_10f4:		ora ($1c, x)	; 01 1c
B23_10f6:		ora ($0c, x)	; 01 0c
B23_10f8:		ora ($0c, x)	; 01 0c
B23_10fa:		ora ($0c, x)	; 01 0c
B23_10fc:		ora ($0c, x)	; 01 0c
B23_10fe:		ora ($00, x)	; 01 00
B23_1100:		jmp $b9d0		; 4c d0 b9


B23_1103:		jmp $b888		; 4c 88 b8


B23_1106:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B23_1109:		bne B23_110e ; d0 03

B23_110b:		jmp $b17c		; 4c 7c b1


B23_110e:		rts				; 60 


B23_110f:		lda $81			; a5 81
B23_1111:		cmp #$01		; c9 01
B23_1113:		beq B23_1132 ; f0 1d

B23_1115:		jsr $b84c		; 20 4c b8
B23_1118:		bcs B23_1132 ; b0 18

B23_111a:		lda $054e, x	; bd 4e 05
B23_111d:		cmp #$7d		; c9 7d
B23_111f:		beq B23_114f ; f0 2e

B23_1121:		cmp #$82		; c9 82
B23_1123:		beq B23_1135 ; f0 10

B23_1125:		sec				; 38 
B23_1126:		sbc #$79		; e9 79
B23_1128:		asl a			; 0a
B23_1129:		tay				; a8 
B23_112a:		lda $b0dd, y	; b9 dd b0
B23_112d:		sta $81			; 85 81
B23_112f:		jmp $b250		; 4c 50 b2


B23_1132:		jmp $b25f		; 4c 5f b2


B23_1135:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B23_1138:		bne B23_1143 ; d0 09

B23_113a:		lda $0657, x	; bd 57 06
B23_113d:		beq B23_114c ; f0 0d

B23_113f:		lda #$1c		; a9 1c
B23_1141:		bne B23_114a ; d0 07

B23_1143:		lda $0657, x	; bd 57 06
B23_1146:		beq B23_114c ; f0 04

B23_1148:		lda #$0c		; a9 0c
B23_114a:		sta $81			; 85 81
B23_114c:		jmp $b250		; 4c 50 b2


B23_114f:		lda $0657, x	; bd 57 06
B23_1152:		beq B23_114c ; f0 f8

B23_1154:		bne B23_1148 ; d0 f2

B23_1156:		lda $0657, x	; bd 57 06
B23_1159:		jmp $b1bf		; 4c bf b1


func_17_115c:
B23_115c:		cmp #$83		; c9 83
B23_115e:		bne B23_1163 ; d0 03

B23_1160:		jmp $b22e		; 4c 2e b2

B23_1163:		cmp #$85		; c9 85
B23_1165:		beq B23_11cf ; f0 68

B23_1167:		cmp #$7a		; c9 7a
B23_1169:		bne B23_116e ; d0 03

B23_116b:		jmp $b100		; 4c 00 b1

B23_116e:		cmp #$7f		; c9 7f
B23_1170:		bne B23_1175 ; d0 03

B23_1172:		jmp $b106		; 4c 06 b1

B23_1175:		cmp #$80		; c9 80
B23_1177:		bne B23_117c ; d0 03

B23_1179:		jmp $b103		; 4c 03 b1

B23_117c:		jsr $b64c		; 20 4c b6
B23_117f:		bcc B23_1184 ; 90 03

B23_1181:		jmp $b10f		; 4c 0f b1

B23_1184:		lda $054e, x	; bd 4e 05
B23_1187:		cmp #$7e		; c9 7e
B23_1189:		beq B23_119f ; f0 14

B23_118b:		cmp #$84		; c9 84
B23_118d:		beq B23_119f ; f0 10

B23_118f:		cmp #$86		; c9 86
B23_1191:		beq B23_119f ; f0 0c

B23_1193:		cmp #$87		; c9 87
B23_1195:		beq B23_119f ; f0 08

B23_1197:		cmp #$8a		; c9 8a
B23_1199:		beq B23_119f ; f0 04

B23_119b:		cmp #$88		; c9 88
B23_119d:		bne B23_11ab ; d0 0c

B23_119f:		ldy $af			; a4 af
B23_11a1:		beq B23_11ab ; f0 08

B23_11a3:		cpx $b8			; e4 b8
B23_11a5:		beq B23_1132 ; f0 8b

B23_11a7:		lda #$00		; a9 00
B23_11a9:		sta $af			; 85 af
B23_11ab:		cmp #$7d		; c9 7d
B23_11ad:		beq B23_1156 ; f0 a7

B23_11af:		cmp #$82		; c9 82
B23_11b1:		beq B23_1156 ; f0 a3

B23_11b3:		cmp #$83		; c9 83
B23_11b5:		beq B23_11c9 ; f0 12

B23_11b7:		sec				; 38 
B23_11b8:		sbc #$79		; e9 79
B23_11ba:		asl a			; 0a
B23_11bb:		tay				; a8 
B23_11bc:		lda data_17_10dc.w, y	; b9 dc b0
B23_11bf:		sta $81			; 85 81
B23_11c1:		lda #$10		; a9 10
B23_11c3:		sta $0669, x	; 9d 69 06
B23_11c6:		jmp $b250		; 4c 50 b2


B23_11c9:		lda $0657, x	; bd 57 06
B23_11cc:		jmp $b1bf		; 4c bf b1


B23_11cf:		lda #$00		; a9 00
B23_11d1:		sta $93			; 85 93
B23_11d3:		jmp $b8ee		; 4c ee b8


B23_11d6:		jsr $b663		; 20 63 b6
B23_11d9:		bcs B23_11e9 ; b0 0e

B23_11db:		jsr $b809		; 20 09 b8
B23_11de:		bcc B23_11e3 ; 90 03

B23_11e0:		jmp $b25f		; 4c 5f b2


B23_11e3:		lda #$01		; a9 01
B23_11e5:		sta $81			; 85 81
B23_11e7:		bne B23_1250 ; d0 67

B23_11e9:		lda $81			; a5 81
B23_11eb:		cmp #$01		; c9 01
B23_11ed:		beq B23_125f ; f0 70

B23_11ef:		jsr $b377		; 20 77 b3
B23_11f2:		bcs B23_125f ; b0 6b

B23_11f4:		lda #$02		; a9 02
B23_11f6:		sta $81			; 85 81
B23_11f8:		bne B23_1250 ; d0 56

B23_11fa:		rts				; 60 


func_17_11fb:
B23_11fb:		lda wEntityState.w, x	; bd 70 04
B23_11fe:		and #$11		; 29 11
B23_1200:		bne B23_11fa ; d0 f8

B23_1202:		lda wOamSpecIdxDoubled.w, x	; bd 00 04
B23_1205:		beq B23_11fa ; f0 f3

B23_1207:		lda $054e, x	; bd 4e 05
B23_120a:		cmp #$1c		; c9 1c
B23_120c:		beq B23_11fa ; f0 ec

B23_120e:		cmp #$93		; c9 93
B23_1210:		bcs B23_11fa ; b0 e8

B23_1212:		cmp #$90		; c9 90
B23_1214:		bcs B23_125f ; b0 49

B23_1216:		cmp #$68		; c9 68
B23_1218:		bcc B23_121e ; 90 04

B23_121a:		cmp #$71		; c9 71
B23_121c:		bcc B23_11fa ; 90 dc

B23_121e:		lda $81			; a5 81
B23_1220:		and #$f0		; 29 f0
B23_1222:		bne B23_125f ; d0 3b

B23_1224:		lda $054e, x	; bd 4e 05
B23_1227:		cmp #$79		; c9 79
B23_1229:		bcc B23_122e ; 90 03

B23_122b:		jmp func_17_115c		; 4c 5c b1

B23_122e:		lda wEntityState.w, x	; bd 70 04
B23_1231:		and #$02		; 29 02
B23_1233:		bne B23_11d6 ; d0 a1

B23_1235:		lda $80			; a5 80
B23_1237:		bne B23_125f ; d0 26

B23_1239:		jsr $b377		; 20 77 b3
B23_123c:		bcs B23_125f ; b0 21

B23_123e:		lda $0657, x	; bd 57 06
B23_1241:		sta $81			; 85 81
B23_1243:		lda $054e, x	; bd 4e 05
B23_1246:		cmp #$49		; c9 49
B23_1248:		bne B23_1250 ; d0 06

B23_124a:		jsr clearEntityHorizVertSpeeds		; 20 c8 fe
B23_124d:		jsr $b581		; 20 81 b5
B23_1250:		stx $91			; 86 91
B23_1252:		ldy #$00		; a0 00
B23_1254:		lda wEntityBaseX.w, x	; bd 38 04
B23_1257:		cmp wEntityBaseX.w		; cd 38 04
B23_125a:		bcs B23_125d ; b0 01

B23_125c:		iny				; c8 
B23_125d:		sty $90			; 84 90
B23_125f:		lda $054e, x	; bd 4e 05
B23_1262:		cmp #$16		; c9 16
B23_1264:		beq B23_11fa ; f0 94

B23_1266:		cmp #$47		; c9 47
B23_1268:		beq B23_11fa ; f0 90

B23_126a:		cmp #$71		; c9 71
B23_126c:		bcc B23_1272 ; 90 04

B23_126e:		cmp #$90		; c9 90
B23_1270:		bcc B23_11fa ; 90 88

B23_1272:		lda $068d, x	; bd 8d 06
B23_1275:		and #$01		; 29 01
B23_1277:		bne B23_12a0 ; d0 27

B23_1279:		lda $0630		; ad 30 06
B23_127c:		beq B23_12a0 ; f0 22

B23_127e:		lda $0413		; ad 13 04
B23_1281:		beq B23_12a0 ; f0 1d

B23_1283:		jsr $b42a		; 20 2a b4
B23_1286:		bcs B23_12a0 ; b0 18

B23_1288:		lda $068d, x	; bd 8d 06
B23_128b:		ora #$01		; 09 01
B23_128d:		sta $068d, x	; 9d 8d 06
B23_1290:		lda $0630		; ad 30 06
B23_1293:		jsr $b30b		; 20 0b b3
B23_1296:		lda #$00		; a9 00
B23_1298:		sta $9e			; 85 9e
B23_129a:		jsr $b601		; 20 01 b6
B23_129d:		jsr $b4c4		; 20 c4 b4
B23_12a0:		lda #$14		; a9 14
B23_12a2:		sta $9e			; 85 9e
B23_12a4:		ldy $9e			; a4 9e
B23_12a6:		lda $054e, y	; b9 4e 05
B23_12a9:		beq B23_12f5 ; f0 4a

B23_12ab:		jsr $b301		; 20 01 b3
B23_12ae:		and $b2fe, y	; 39 fe b2
B23_12b1:		bne B23_12f5 ; d0 42

B23_12b3:		jsr $b485		; 20 85 b4
B23_12b6:		bcs B23_12f5 ; b0 3d

B23_12b8:		jsr $b759		; 20 59 b7
B23_12bb:		jsr $b301		; 20 01 b3
B23_12be:		ora $b2fe, y	; 19 fe b2
B23_12c1:		sta $068d, x	; 9d 8d 06
B23_12c4:		ldy $9e			; a4 9e
B23_12c6:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, y	; b9 06 06
B23_12c9:		and #$f0		; 29 f0
B23_12cb:		jsr $b30b		; 20 0b b3
B23_12ce:		and #$f0		; 29 f0
B23_12d0:		sta $13			; 85 13
B23_12d2:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, y	; b9 06 06
B23_12d5:		and #$0f		; 29 0f
B23_12d7:		ora $13			; 05 13
B23_12d9:		sta $0669, x	; 9d 69 06
B23_12dc:		jsr $b33a		; 20 3a b3
B23_12df:		jsr $b31a		; 20 1a b3
B23_12e2:		lda $054e, y	; b9 4e 05
B23_12e5:		cmp #$06		; c9 06
B23_12e7:		bne B23_12ef ; d0 06

B23_12e9:		jsr $b6e6		; 20 e6 b6
B23_12ec:		jmp $b2f5		; 4c f5 b2

B23_12ef:		jsr $b5dd		; 20 dd b5
B23_12f2:		jsr $b4c4		; 20 c4 b4
B23_12f5:		inc $9e			; e6 9e
B23_12f7:		lda $9e			; a5 9e
B23_12f9:		cmp #$17		; c9 17
B23_12fb:		bcc B23_12a4 ; 90 a7

B23_12fd:		rts				; 60 


;
B23_12fe:	.db $02
B23_12ff:	.db $04
B23_1300:		php				; 08 
B23_1301:		sec				; 38 
B23_1302:		lda $9e			; a5 9e
B23_1304:		sbc #$14		; e9 14
B23_1306:		tay				; a8 
B23_1307:		lda $068d, x	; bd 8d 06
B23_130a:		rts				; 60 


B23_130b:		clc				; 18 
B23_130c:		adc $0669, x	; 7d 69 06
B23_130f:		bcc B23_1316 ; 90 05

B23_1311:		lda $0669, x	; bd 69 06
B23_1314:		ora #$f0		; 09 f0
B23_1316:		sta $0669, x	; 9d 69 06
B23_1319:		rts				; 60 


B23_131a:		and #$0f		; 29 0f
B23_131c:		cmp #$03		; c9 03
B23_131e:		bne B23_1339 ; d0 19

B23_1320:		lda $054e, y	; b9 4e 05
B23_1323:		cmp #$02		; c9 02
B23_1325:		bne B23_1339 ; d0 12

B23_1327:		lda $0669, y	; b9 69 06
B23_132a:		ora #$03		; 09 03
B23_132c:		sta $0669, y	; 99 69 06
B23_132f:		lda $0669, x	; bd 69 06
B23_1332:		and #$f0		; 29 f0
B23_1334:		ora #$03		; 09 03
B23_1336:		sta $0669, x	; 9d 69 06
B23_1339:		rts				; 60 


B23_133a:		lda $054e, x	; bd 4e 05
B23_133d:		cmp #$67		; c9 67
B23_133f:		beq B23_1358 ; f0 17

B23_1341:		cmp #$1b		; c9 1b
B23_1343:		bcc B23_1351 ; 90 0c

B23_1345:		cmp #$1f		; c9 1f
B23_1347:		bcs B23_1351 ; b0 08

B23_1349:		cmp #$1c		; c9 1c
B23_134b:		beq B23_1351 ; f0 04

B23_134d:		lda #$00		; a9 00
B23_134f:		beq B23_1354 ; f0 03

B23_1351:		lda $0657, x	; bd 57 06
B23_1354:		sta $061d, y	; 99 1d 06
B23_1357:		rts				; 60 


B23_1358:		lda wEntityFacingLeft.w, x	; bd a8 04
B23_135b:		bne B23_1367 ; d0 0a

B23_135d:		lda wEntityBaseX.w, x	; bd 38 04
B23_1360:		cmp wEntityBaseX.w, y	; d9 38 04
B23_1363:		bcc B23_1351 ; 90 ec

B23_1365:		bcs B23_136f ; b0 08

B23_1367:		lda wEntityBaseX.w, x	; bd 38 04
B23_136a:		cmp wEntityBaseX.w, y	; d9 38 04
B23_136d:		bcs B23_1351 ; b0 e2

B23_136f:		lda $0657, x	; bd 57 06
B23_1372:		and #$f0		; 29 f0
B23_1374:		jmp $b354		; 4c 54 b3


B23_1377:		ldy $82			; a4 82
B23_1379:		lda $bb43, y	; b9 43 bb
B23_137c:		sta $00			; 85 00
B23_137e:		lda $bb4c, y	; b9 4c bb
B23_1381:		sta $01			; 85 01
B23_1383:		ldy $054e, x	; bc 4e 05
B23_1386:		lda wEntityOamSpecGroupDoubled.w, x	; bd 8c 04
B23_1389:		cmp #$08		; c9 08
B23_138b:		bne B23_1394 ; d0 07

B23_138d:		lda wOamSpecIdxDoubled.w, x	; bd 00 04
B23_1390:		cmp #$ee		; c9 ee
B23_1392:		;removed
	.db $b0 $40

B23_1394:		lda $ba			; a5 ba
B23_1396:		beq B23_13a0 ; f0 08

B23_1398:		jsr $e611		; 20 11 e6
B23_139b:		bcc B23_13a0 ; 90 03

B23_139d:		jmp $b763		; 4c 63 b7


B23_13a0:		clc				; 18 
B23_13a1:		ldy $054e, x	; bc 4e 05
B23_13a4:		lda $bbc8, y	; b9 c8 bb
B23_13a7:		adc $00			; 65 00
B23_13a9:		sta $02			; 85 02
B23_13ab:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_13ae:		cmp $02			; c5 02
B23_13b0:		bcs B23_13d1 ; b0 1f

B23_13b2:		clc				; 18 
B23_13b3:		lda $bc60, y	; b9 60 bc
B23_13b6:		adc $01			; 65 01
B23_13b8:		sta $03			; 85 03
B23_13ba:		ldy #$00		; a0 00
B23_13bc:		lda $82			; a5 82
B23_13be:		cmp #$04		; c9 04
B23_13c0:		bcc B23_13c3 ; 90 01

B23_13c2:		iny				; c8 
B23_13c3:		clc				; 18 
B23_13c4:		lda $b3d2, y	; b9 d2 b3
B23_13c7:		adc wEntityBaseY.w		; 6d 1c 04
B23_13ca:		sta $11			; 85 11
B23_13cc:		jsr $80c1		; 20 c1 80
B23_13cf:		cmp $03			; c5 03
B23_13d1:		rts				; 60 


B23_13d2:		.db $00				; 00
B23_13d3:		ora $38			; 05 38
B23_13d5:		sbc #$ee		; e9 ee
B23_13d7:		pha				; 48 
B23_13d8:		clc				; 18 
B23_13d9:		adc wEntityFacingLeft.w, x	; 7d a8 04
B23_13dc:		sta $07			; 85 07
B23_13de:		pla				; 68 
B23_13df:		lsr a			; 4a
B23_13e0:		sta $06			; 85 06
B23_13e2:		tay				; a8 
B23_13e3:		clc				; 18 
B23_13e4:		lda $bb72, y	; b9 72 bb
B23_13e7:		adc $00			; 65 00
B23_13e9:		sta $02			; 85 02
B23_13eb:		ldy $07			; a4 07
B23_13ed:		lda $bb84, y	; b9 84 bb
B23_13f0:		clc				; 18 
B23_13f1:		adc wEntityBaseX.w, x	; 7d 38 04
B23_13f4:		sta $10			; 85 10
B23_13f6:		jsr $b745		; 20 45 b7
B23_13f9:		cmp $02			; c5 02
B23_13fb:		bcs B23_13d1 ; b0 d4

B23_13fd:		ldy $06			; a4 06
B23_13ff:		clc				; 18 
B23_1400:		lda $bb7b, y	; b9 7b bb
B23_1403:		adc $01			; 65 01
B23_1405:		sta $03			; 85 03
B23_1407:		ldy $07			; a4 07
B23_1409:		lda $bb96, y	; b9 96 bb
B23_140c:		clc				; 18 
B23_140d:		adc wEntityBaseY.w, x	; 7d 1c 04
B23_1410:		sta $10			; 85 10
B23_1412:		ldy #$00		; a0 00
B23_1414:		lda $82			; a5 82
B23_1416:		cmp #$04		; c9 04
B23_1418:		bcc B23_141b ; 90 01

B23_141a:		iny				; c8 
B23_141b:		clc				; 18 
B23_141c:		lda $b3d2, y	; b9 d2 b3
B23_141f:		adc wEntityBaseY.w		; 6d 1c 04
B23_1422:		sta $11			; 85 11
B23_1424:		jsr $b739		; 20 39 b7
B23_1427:		cmp $03			; c5 03
B23_1429:		rts				; 60 


B23_142a:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_142d:		cmp #$80		; c9 80
B23_142f:		bcs B23_1484 ; b0 53

B23_1431:		ldy $0561		; ac 61 05
B23_1434:		lda $bb55, y	; b9 55 bb
B23_1437:		sta $00			; 85 00
B23_1439:		lda $bb5a, y	; b9 5a bb
B23_143c:		sta $01			; 85 01
B23_143e:		clc				; 18 
B23_143f:		tya				; 98 
B23_1440:		asl a			; 0a
B23_1441:		adc wEntityFacingLeft.w		; 6d a8 04
B23_1444:		tay				; a8 
B23_1445:		clc				; 18 
B23_1446:		lda $bb5f, y	; b9 5f bb
B23_1449:		adc wEntityBaseX.w		; 6d 38 04
B23_144c:		sta $10			; 85 10
B23_144e:		clc				; 18 
B23_144f:		ldy $82			; a4 82
B23_1451:		lda $042f		; ad 2f 04
B23_1454:		adc $bb69, y	; 79 69 bb
B23_1457:		sta $11			; 85 11
B23_1459:		lda $ba			; a5 ba
B23_145b:		beq B23_1465 ; f0 08

B23_145d:		jsr $e611		; 20 11 e6
B23_1460:		bcc B23_1465 ; 90 03

B23_1462:		jmp $b78d		; 4c 8d b7


B23_1465:		ldy $054e, x	; bc 4e 05
B23_1468:		clc				; 18 
B23_1469:		lda $bbc8, y	; b9 c8 bb
B23_146c:		adc $00			; 65 00
B23_146e:		sta $02			; 85 02
B23_1470:		jsr $80cb		; 20 cb 80
B23_1473:		cmp $02			; c5 02
B23_1475:		bcs B23_1484 ; b0 0d

B23_1477:		clc				; 18 
B23_1478:		lda $bc60, y	; b9 60 bc
B23_147b:		adc $01			; 65 01
B23_147d:		sta $03			; 85 03
B23_147f:		jsr $80c1		; 20 c1 80
B23_1482:		cmp $03			; c5 03
B23_1484:		rts				; 60 


B23_1485:		ldy $9e			; a4 9e
B23_1487:		lda $054e, y	; b9 4e 05
B23_148a:		cmp #$05		; c9 05
B23_148c:		beq B23_14aa ; f0 1c

B23_148e:		tay				; a8 
B23_148f:		lda $bba8, y	; b9 a8 bb
B23_1492:		sta $00			; 85 00
B23_1494:		lda $bbb3, y	; b9 b3 bb
B23_1497:		sta $01			; 85 01
B23_1499:		ldx $9e			; a6 9e
B23_149b:		lda wEntityBaseX.w, x	; bd 38 04
B23_149e:		sta $10			; 85 10
B23_14a0:		lda wEntityBaseY.w, x	; bd 1c 04
B23_14a3:		sta $11			; 85 11
B23_14a5:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_14a7:		jmp $b459		; 4c 59 b4


B23_14aa:		ldy wEntityOamSpecIdxBaseOffset.w, x	; bc 93 05
B23_14ad:		lda $bbbe, y	; b9 be bb
B23_14b0:		sta $00			; 85 00
B23_14b2:		lda #$08		; a9 08
B23_14b4:		sta $01			; 85 01
B23_14b6:		jmp $b497		; 4c 97 b4


B23_14b9:		cmp #$90		; c9 90
B23_14bb:		bcc B23_151d ; 90 60

B23_14bd:		cmp #$93		; c9 93
B23_14bf:		bcs B23_151d ; b0 5c

B23_14c1:		jmp $a2e2		; 4c e2 a2


B23_14c4:		lda $054e, x	; bd 4e 05
B23_14c7:		cmp #$40		; c9 40
B23_14c9:		bcc B23_151d ; 90 52

B23_14cb:		cmp #$68		; c9 68
B23_14cd:		bcs B23_14b9 ; b0 ea

B23_14cf:		lda wEntityState.w, x	; bd 70 04
B23_14d2:		and #$02		; 29 02
B23_14d4:		bne B23_1529 ; d0 53

B23_14d6:		lda wEntityAI_idx.w, x	; bd ef 05
B23_14d9:		cmp #$2d		; c9 2d
B23_14db:		beq B23_151e ; f0 41

B23_14dd:		cmp #$2e		; c9 2e
B23_14df:		beq B23_151e ; f0 3d

B23_14e1:		lda $0669, x	; bd 69 06
B23_14e4:		sta $00			; 85 00
B23_14e6:		and #$f0		; 29 f0
B23_14e8:		beq B23_151d ; f0 33

B23_14ea:		lsr a			; 4a
B23_14eb:		lsr a			; 4a
B23_14ec:		lsr a			; 4a
B23_14ed:		lsr a			; 4a
B23_14ee:		sta $01			; 85 01
B23_14f0:		lda $0669, x	; bd 69 06
B23_14f3:		and #$0f		; 29 0f
B23_14f5:		sta $0669, x	; 9d 69 06
B23_14f8:		sec				; 38 
B23_14f9:		lda $067b, x	; bd 7b 06
B23_14fc:		sbc $01			; e5 01
B23_14fe:		sta $067b, x	; 9d 7b 06
B23_1501:		beq B23_153e ; f0 3b

B23_1503:		bmi B23_153e ; 30 39

B23_1505:		lda #$29		; a9 29
B23_1507:		jsr playSound		; 20 5f e2
B23_150a:		ldy #$00		; a0 00
B23_150c:		lda $054e, x	; bd 4e 05
B23_150f:		cmp #$64		; c9 64
B23_1511:		bne B23_1514 ; d0 01

B23_1513:		iny				; c8 
B23_1514:		lda wPlayerStateDoubled.w, x	; bd 65 05
B23_1517:		ora $b527, y	; 19 27 b5
B23_151a:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B23_151d:		rts				; 60 


B23_151e:		lda #$28		; a9 28
B23_1520:		jsr playSound		; 20 5f e2
B23_1523:		ldy #$00		; a0 00
B23_1525:		beq B23_1514 ; f0 ed

B23_1527:		bpl B23_153d ; 10 14

B23_1529:		jsr $e7cc		; 20 cc e7
B23_152c:		jmp $ff7a		; 4c 7a ff


B23_152f:		lda #$00		; a9 00
B23_1531:		sta wEntityPhase.w, x	; 9d c1 05
B23_1534:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B23_1537:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B23_153a:		sta $0657, x	; 9d 57 06
B23_153d:		rts				; 60 


B23_153e:		lda #$27		; a9 27
B23_1540:		ldy $054e, x	; bc 4e 05
B23_1543:		cpy #$4d		; c0 4d
B23_1545:		beq B23_1555 ; f0 0e

B23_1547:		cpy #$4e		; c0 4e
B23_1549:		beq B23_1555 ; f0 0a

B23_154b:		cpy #$5b		; c0 5b
B23_154d:		beq B23_1555 ; f0 06

B23_154f:		cpy #$57		; c0 57
B23_1551:		beq B23_1555 ; f0 02

B23_1553:		lda #$33		; a9 33
B23_1555:		jsr playSound		; 20 5f e2
B23_1558:		lda $054e, x	; bd 4e 05
B23_155b:		cmp #$5b		; c9 5b
B23_155d:		beq B23_1596 ; f0 37

B23_155f:		cmp #$57		; c9 57
B23_1561:		beq B23_15b7 ; f0 54

B23_1563:		cmp #$59		; c9 59
B23_1565:		beq B23_1581 ; f0 1a

B23_1567:		cmp #$5d		; c9 5d
B23_1569:		beq B23_15bc ; f0 51

B23_156b:		cmp #$48		; c9 48
B23_156d:		bcc B23_1581 ; 90 12

B23_156f:		jsr $e7cc		; 20 cc e7
B23_1572:		lda $9e			; a5 9e
B23_1574:		beq B23_157b ; f0 05

B23_1576:		jsr $e7dc		; 20 dc e7
B23_1579:		bcs B23_1593 ; b0 18

B23_157b:		lda wGameStateLoopCounter			; a5 1a
B23_157d:		and #$07		; 29 07
B23_157f:		beq B23_159c ; f0 1b

B23_1581:		jsr $e7c1		; 20 c1 e7
B23_1584:		lda #$00		; a9 00
B23_1586:		sta $0657, x	; 9d 57 06
B23_1589:		sta wEntityState.w, x	; 9d 70 04
B23_158c:		sta wEntityPhase.w, x	; 9d c1 05
B23_158f:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B23_1592:		rts				; 60 


B23_1593:		jmp func_17_00fc		; 4c fc a0


B23_1596:		lda #$05		; a9 05
B23_1598:		sta wEntityPhase.w, x	; 9d c1 05
B23_159b:		rts				; 60 


B23_159c:		inc $ce			; e6 ce
B23_159e:		lda $ce			; a5 ce
B23_15a0:		cmp #$05		; c9 05
B23_15a2:		bcs B23_15a7 ; b0 03

B23_15a4:		jmp $b5ce		; 4c ce b5


B23_15a7:		lda #$00		; a9 00
B23_15a9:		sta $ce			; 85 ce
B23_15ab:		jsr $e7ab		; 20 ab e7
B23_15ae:		lda $054e, x	; bd 4e 05
B23_15b1:		jsr $a30b		; 20 0b a3
B23_15b4:		jmp $b5d1		; 4c d1 b5


B23_15b7:		lda #$0f		; a9 0f
B23_15b9:		jmp $b598		; 4c 98 b5


B23_15bc:		lda $061d, x	; bd 1d 06
B23_15bf:		tax				; aa 
B23_15c0:		jsr $b584		; 20 84 b5
B23_15c3:		sta $054e, x	; 9d 4e 05
B23_15c6:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_15c9:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_15cb:		jmp $b56f		; 4c 6f b5


B23_15ce:		jsr $a278		; 20 78 a2
B23_15d1:		lda $054e, x	; bd 4e 05
B23_15d4:		sec				; 38 
B23_15d5:		sbc #$60		; e9 60
B23_15d7:		sta wEntityAI_idx.w, x	; 9d ef 05
B23_15da:		jmp $b584		; 4c 84 b5


B23_15dd:		jsr $b637		; 20 37 b6
B23_15e0:		bne B23_1634 ; d0 52

B23_15e2:		lda #$04		; a9 04
B23_15e4:		sta $00			; 85 00
B23_15e6:		ldy $9e			; a4 9e
B23_15e8:		lda wEntityHorizSpeed.w, y	; b9 f2 04
B23_15eb:		bpl B23_15f1 ; 10 04

B23_15ed:		lda #$fc		; a9 fc
B23_15ef:		sta $00			; 85 00
B23_15f1:		clc				; 18 
B23_15f2:		lda $00			; a5 00
B23_15f4:		adc wEntityBaseX.w, y	; 79 38 04
B23_15f7:		sta $00			; 85 00
B23_15f9:		lda wEntityBaseY.w, y	; b9 1c 04
B23_15fc:		sta $01			; 85 01
B23_15fe:		jmp $b613		; 4c 13 b6


B23_1601:		jsr $b637		; 20 37 b6
B23_1604:		bne B23_1634 ; d0 2e

B23_1606:		clc				; 18 
B23_1607:		lda $042f		; ad 2f 04
B23_160a:		adc #$01		; 69 01
B23_160c:		sta $01			; 85 01
B23_160e:		lda wEntityBaseX.w, x	; bd 38 04
B23_1611:		sta $00			; 85 00
B23_1613:		ldx #$17		; a2 17
B23_1615:		lda #$20		; a9 20
B23_1617:		sta wEntityState.w, x	; 9d 70 04
B23_161a:		lda #$12		; a9 12
B23_161c:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B23_161f:		lda #$0e		; a9 0e
B23_1621:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B23_1624:		lda $00			; a5 00
B23_1626:		sta wEntityBaseX.w, x	; 9d 38 04
B23_1629:		lda $01			; a5 01
B23_162b:		sta wEntityBaseY.w, x	; 9d 1c 04
B23_162e:		lda #$08		; a9 08
B23_1630:		sta $8c			; 85 8c
B23_1632:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_1634:		rts				; 60 


B23_1635:		sec				; 38 
B23_1636:		rts				; 60 


B23_1637:		lda $054e, x	; bd 4e 05
B23_163a:		cmp #$1b		; c9 1b
B23_163c:		beq B23_1649 ; f0 0b

B23_163e:		cmp #$1c		; c9 1c
B23_1640:		beq B23_1649 ; f0 07

B23_1642:		ldy #$17		; a0 17
B23_1644:		lda wOamSpecIdxDoubled.w, y	; b9 00 04
B23_1647:		beq B23_164b ; f0 02

B23_1649:		lda #$01		; a9 01
B23_164b:		rts				; 60 


B23_164c:		ldy $054e, x	; bc 4e 05
B23_164f:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_1652:		sta $0e			; 85 0e
B23_1654:		lda $bbc8, y	; b9 c8 bb
B23_1657:		ldy $82			; a4 82
B23_1659:		clc				; 18 
B23_165a:		adc $bb43, y	; 79 43 bb
B23_165d:		cmp $0e			; c5 0e
B23_165f:		bcc B23_1635 ; 90 d4

B23_1661:		bcs B23_166e ; b0 0b

B23_1663:		ldy $054e, x	; bc 4e 05
B23_1666:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_1669:		cmp $bbc8, y	; d9 c8 bb
B23_166c:		bcs B23_168a ; b0 1c

B23_166e:		ldy $82			; a4 82
B23_1670:		lda $b68b, y	; b9 8b b6
B23_1673:		clc				; 18 
B23_1674:		adc wEntityBaseY.w		; 6d 1c 04
B23_1677:		sta $10			; 85 10
B23_1679:		ldy $054e, x	; bc 4e 05
B23_167c:		sec				; 38 
B23_167d:		lda wEntityBaseY.w, x	; bd 1c 04
B23_1680:		sbc $bc60, y	; f9 60 bc
B23_1683:		sta $11			; 85 11
B23_1685:		jsr $b739		; 20 39 b7
B23_1688:		cmp #$0c		; c9 0c
B23_168a:		rts				; 60 


B23_168b:		;removed
	.db $10 $10

B23_168d:	.db $0c
B23_168e:		;removed
	.db $10 $10

B23_1690:		bpl B23_169e ; 10 0c

B23_1692:		bpl B23_1698 ; 10 04

B23_1694:		sec				; 38 
B23_1695:		lda wOamSpecIdxDoubled.w, x	; bd 00 04
B23_1698:		sbc #$08		; e9 08
B23_169a:		lsr a			; 4a
B23_169b:		tay				; a8 
B23_169c:		sta $16			; 85 16
B23_169e:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_16a1:		cmp $b6c8, y	; d9 c8 b6
B23_16a4:		bcs B23_16c7 ; b0 21

B23_16a6:		sta $17			; 85 17
B23_16a8:		clc				; 18 
B23_16a9:		ldy $82			; a4 82
B23_16ab:		lda $b6da, y	; b9 da b6
B23_16ae:		adc wEntityBaseY.w		; 6d 1c 04
B23_16b1:		sta $10			; 85 10
B23_16b3:		sec				; 38 
B23_16b4:		ldy $054e, x	; bc 4e 05
B23_16b7:		lda wEntityBaseY.w, x	; bd 1c 04
B23_16ba:		sbc $bc60, y	; f9 60 bc
B23_16bd:		sta $11			; 85 11
B23_16bf:		jsr $b739		; 20 39 b7
B23_16c2:		ldy $16			; a4 16
B23_16c4:		cmp $b6d1, y	; d9 d1 b6
B23_16c7:		rts				; 60 


B23_16c8:		asl a			; 0a
B23_16c9:		asl a			; 0a
B23_16ca:		asl a			; 0a
B23_16cb:		asl a			; 0a
B23_16cc:		asl a			; 0a
B23_16cd:		asl a			; 0a
B23_16ce:		asl a			; 0a
B23_16cf:		asl a			; 0a
B23_16d0:		asl a			; 0a
B23_16d1:	.db $04
B23_16d2:	.db $04
B23_16d3:	.db $04
B23_16d4:	.db $04
B23_16d5:	.db $04
B23_16d6:	.db $04
B23_16d7:	.db $04
B23_16d8:	.db $04
B23_16d9:	.db $04
B23_16da:		;removed
	.db $10 $10

B23_16dc:		php				; 08 
B23_16dd:		;removed
	.db $10 $08

B23_16df:		php				; 08 
B23_16e0:		php				; 08 
B23_16e1:		php				; 08 
B23_16e2:		php				; 08 
B23_16e3:		php				; 08 
B23_16e4:		php				; 08 
B23_16e5:		php				; 08 
B23_16e6:		lda $054e, x	; bd 4e 05
B23_16e9:		cmp #$40		; c9 40
B23_16eb:		bcc B23_1710 ; 90 23

B23_16ed:		cmp #$68		; c9 68
B23_16ef:		bcs B23_1710 ; b0 1f

B23_16f1:		cmp #$59		; c9 59
B23_16f3:		beq B23_1711 ; f0 1c

B23_16f5:		cmp #$5d		; c9 5d
B23_16f7:		beq B23_1725 ; f0 2c

B23_16f9:		lda wEntityState.w, x	; bd 70 04
B23_16fc:		and #$02		; 29 02
B23_16fe:		bne B23_1710 ; d0 10

B23_1700:		lda wEntityState.w, x	; bd 70 04
B23_1703:		ora #$02		; 09 02
B23_1705:		sta wEntityState.w, x	; 9d 70 04
B23_1708:		lda wPlayerStateDoubled.w, x	; bd 65 05
B23_170b:		and #$3f		; 29 3f
B23_170d:		sta wPlayerStateDoubled.w, x	; 9d 65 05
B23_1710:		rts				; 60 


B23_1711:		ldx #$01		; a2 01
B23_1713:		lda wEntityState.w, x	; bd 70 04
B23_1716:		and #$02		; 29 02
B23_1718:		bne B23_171d ; d0 03

B23_171a:		jsr $b700		; 20 00 b7
B23_171d:		inx				; e8 
B23_171e:		cpx #$09		; e0 09
B23_1720:		bcc B23_1713 ; 90 f1

B23_1722:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_1724:		rts				; 60 


B23_1725:		lda wEntityState.w, x	; bd 70 04
B23_1728:		and #$02		; 29 02
B23_172a:		bne B23_1710 ; d0 e4

B23_172c:		jsr $b700		; 20 00 b7
B23_172f:		lda $061d, x	; bd 1d 06
B23_1732:		tax				; aa 
B23_1733:		jsr $b700		; 20 00 b7
B23_1736:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_1738:		rts				; 60 


B23_1739:		sec				; 38 
B23_173a:		lda $11			; a5 11
B23_173c:		sbc $10			; e5 10
B23_173e:		bcs B23_1744 ; b0 04

B23_1740:		eor #$ff		; 49 ff
B23_1742:		adc #$01		; 69 01
B23_1744:		rts				; 60 


B23_1745:		sec				; 38 
B23_1746:		lda $10			; a5 10
B23_1748:		sbc wEntityBaseX.w		; ed38 04
B23_174b:		bcs B23_1744 ; b0 f7

B23_174d:		bcc B23_1740 ; 90 f1

B23_174f:		sec				; 38 
B23_1750:		lda $10			; a5 10
B23_1752:		sbc wEntityBaseY.w		; ed1c 04
B23_1755:		bcs B23_1744 ; b0 ed

B23_1757:		bcc B23_1740 ; 90 e7

B23_1759:		lda wCurrPlayer.w		; ad 4e 05
B23_175c:		and #$01		; 29 01
B23_175e:		bne B23_1762 ; d0 02

B23_1760:		inc $9c			; e6 9c
B23_1762:		rts				; 60 


B23_1763:		sec				; 38 
B23_1764:		lda wEntityBaseX.w, x	; bd 38 04
B23_1767:		sbc $0c			; e5 0c
B23_1769:		jsr $80b6		; 20 b6 80
B23_176c:		cmp $02			; c5 02
B23_176e:		bcs B23_17a5 ; b0 35

B23_1770:		ldy #$00		; a0 00
B23_1772:		lda $82			; a5 82
B23_1774:		cmp #$04		; c9 04
B23_1776:		bcc B23_1779 ; 90 01

B23_1778:		iny				; c8 
B23_1779:		lda $b3d2, y	; b9 d2 b3
B23_177c:		adc wEntityBaseY.w		; 6d 1c 04
B23_177f:		sta $11			; 85 11
B23_1781:		sec				; 38 
B23_1782:		lda wEntityBaseY.w, x	; bd 1c 04
B23_1785:		sbc $0d			; e5 0d
B23_1787:		jsr $80c4		; 20 c4 80
B23_178a:		cmp $03			; c5 03
B23_178c:		rts				; 60 


B23_178d:		sec				; 38 
B23_178e:		lda wEntityBaseX.w, x	; bd 38 04
B23_1791:		sbc $0c			; e5 0c
B23_1793:		jsr $80ce		; 20 ce 80
B23_1796:		cmp $02			; c5 02
B23_1798:		bcs B23_17a5 ; b0 0b

B23_179a:		sec				; 38 
B23_179b:		lda wEntityBaseY.w, x	; bd 1c 04
B23_179e:		sbc $0d			; e5 0d
B23_17a0:		jsr $80c4		; 20 c4 80
B23_17a3:		cmp $03			; c5 03
B23_17a5:		rts				; 60 


getCollisionTileValUsingOffsetPresets:
B23_17a6:		tya				; 98 
B23_17a7:		asl a			; 0a
B23_17a8:		ldy wEntityFacingLeft.w, x	; bc a8 04
	beq +

B23_17ad:		clc				; 18 
B23_17ae:		adc #$01		; 69 01
+	tay				; a8 
B23_17b1:		lda data_17_17bd.w, y	; b9 bd b7
B23_17b4:		pha				; 48 
B23_17b5:		lda data_17_17e3.w, y	; b9 e3 b7
B23_17b8:		tay				; a8 
B23_17b9:		pla				; 68 
B23_17ba:		jmp func_1f_1c1e		; 4c 1e fc

; into A
data_17_17bd:
	.db $08 $f8
	.db $f8 $08
	.db $08 $f8
	.db $08 $f8
	.db $04 $fc
	.db $08 $f8 ; 05
	.db $04 $fc
	.db $10 $f0
	.db $08 $f8
	.db $0c $f4
	.db $fc $04
	.db $ec $14
	.db $08 $f7
	.db $00 $00 ; 0d
	.db $00 $00
	.db $10 $f0
	.db $18 $e8
	.db $04 $fc
	.db $08 $f8

; into Y
data_17_17e3:
	.db $08 $08
	.db $10 $10
	.db $fc $fc
	.db $08 $08
	.db $f8 $f8
	.db $10 $10 ; 05
	.db $10 $10
	.db $00 $00
	.db $10 $10
	.db $f8 $f8
	.db $10 $10
	.db $10 $10
	.db $f4 $f4
	.db $10 $10 ; 0d
	.db $08 $08
	.db $fc $fc
	.db $00 $00
	.db $08 $08
	.db $00 $00


B23_1809:		ldy #$00		; a0 00
B23_180b:		lda $b81c, y	; b9 1c b8
B23_180e:		bmi B23_1818 ; 30 08

B23_1810:		cmp wPlayerStateDoubled.w		; cd 65 05
B23_1813:		beq B23_181a ; f0 05

B23_1815:		iny				; c8 
B23_1816:		bne B23_180b ; d0 f3

B23_1818:		clc				; 18 
B23_1819:		rts				; 60 


B23_181a:		sec				; 38 
B23_181b:		rts				; 60 


B23_181c:		asl $1210		; 0e 10 12
B23_181f:	.db $14
B23_1820:		asl $ff24, x	; 1e 24 ff
B23_1823:		sta $00			; 85 00
B23_1825:		stx $04			; 86 04
B23_1827:		sty $05			; 84 05
B23_1829:		lda #$00		; a9 00
B23_182b:		sta $01			; 85 01
B23_182d:		sta $02			; 85 02
B23_182f:		ldy #$08		; a0 08
B23_1831:		lsr $00			; 46 00
B23_1833:		bcc B23_1842 ; 90 0d

B23_1835:		clc				; 18 
B23_1836:		lda $04			; a5 04
B23_1838:		adc $01			; 65 01
B23_183a:		sta $01			; 85 01
B23_183c:		lda $05			; a5 05
B23_183e:		adc $02			; 65 02
B23_1840:		sta $02			; 85 02
B23_1842:		ror $02			; 66 02
B23_1844:		ror $01			; 66 01
B23_1846:		ror $00			; 66 00
B23_1848:		dey				; 88 
B23_1849:		bne B23_1833 ; d0 e8

B23_184b:		rts				; 60 


B23_184c:		ldy $82			; a4 82
B23_184e:		lda $bb43, y	; b9 43 bb
B23_1851:		sta $00			; 85 00
B23_1853:		ldy $054e, x	; bc 4e 05
B23_1856:		clc				; 18 
B23_1857:		lda $bbc8, y	; b9 c8 bb
B23_185a:		adc $00			; 65 00
B23_185c:		sta $02			; 85 02
B23_185e:		jsr getDistanceBetweenPlayerAndEntityX		; 20 b3 80
B23_1861:		cmp $02			; c5 02
B23_1863:		bcs B23_1887 ; b0 22

B23_1865:		ldy $82			; a4 82
B23_1867:		lda wEntityBaseY.w		; ad 1c 04
B23_186a:		sec				; 38 
B23_186b:		sbc $b9bb, y	; f9 bb b9
B23_186e:		sta $03			; 85 03
B23_1870:		ldy $054e, x	; bc 4e 05
B23_1873:		clc				; 18 
B23_1874:		lda $bc60, y	; b9 60 bc
B23_1877:		adc #$03		; 69 03
B23_1879:		sta $02			; 85 02
B23_187b:		sec				; 38 
B23_187c:		lda $03			; a5 03
B23_187e:		sbc wEntityBaseY.w, x	; fd 1c 04
B23_1881:		bcs B23_1885 ; b0 02

B23_1883:		eor #$ff		; 49 ff
B23_1885:		cmp $02			; c5 02
B23_1887:		rts				; 60 


B23_1888:		ldy $82			; a4 82
B23_188a:		lda $b9b2, y	; b9 b2 b9
B23_188d:		clc				; 18 
B23_188e:		adc wEntityBaseY.w		; 6d 1c 04
B23_1891:		sta $00			; 85 00
B23_1893:		ldy #$00		; a0 00
B23_1895:		lda wEntityBaseX.w		; ad 38 04
B23_1898:		sec				; 38 
B23_1899:		sbc wEntityBaseX.w, x	; fd 38 04
B23_189c:		bcs B23_18a4 ; b0 06

B23_189e:		iny				; c8 
B23_189f:		eor #$ff		; 49 ff
B23_18a1:		clc				; 18 
B23_18a2:		adc #$01		; 69 01
B23_18a4:		cmp #$08		; c9 08
B23_18a6:		bcs B23_18dd ; b0 35

B23_18a8:		sty $01			; 84 01
B23_18aa:		ldy #$00		; a0 00
B23_18ac:		lda $00			; a5 00
B23_18ae:		sec				; 38 
B23_18af:		sbc wEntityBaseY.w, x	; fd 1c 04
B23_18b2:		bcs B23_18ba ; b0 06

B23_18b4:		iny				; c8 
B23_18b5:		eor #$ff		; 49 ff
B23_18b7:		clc				; 18 
B23_18b8:		adc #$01		; 69 01
B23_18ba:		cmp #$08		; c9 08
B23_18bc:		bcs B23_18dd ; b0 1f

B23_18be:		sty $02			; 84 02
B23_18c0:		stx $94			; 86 94
B23_18c2:		lda wPlayerStateDoubled.w, x	; bd 65 05
B23_18c5:		bmi B23_18de ; 30 17

B23_18c7:		cmp #$20		; c9 20
B23_18c9:		bcs B23_18d1 ; b0 06

B23_18cb:		lda $01			; a5 01
B23_18cd:		beq B23_18d9 ; f0 0a

B23_18cf:		bne B23_18d5 ; d0 04

B23_18d1:		lda $02			; a5 02
B23_18d3:		beq B23_18d9 ; f0 04

B23_18d5:		lda #$01		; a9 01
B23_18d7:		bne B23_18db ; d0 02

B23_18d9:		lda #$02		; a9 02
B23_18db:		sta $93			; 85 93
B23_18dd:		rts				; 60 


B23_18de:		cmp #$e0		; c9 e0
B23_18e0:		bcc B23_18e8 ; 90 06

B23_18e2:		lda $01			; a5 01
B23_18e4:		bne B23_18d9 ; d0 f3

B23_18e6:		beq B23_18d5 ; f0 ed

B23_18e8:		lda $02			; a5 02
B23_18ea:		beq B23_18d9 ; f0 ed

B23_18ec:		bne B23_18d5 ; d0 e7

B23_18ee:		lda $af			; a5 af
B23_18f0:		beq B23_18f6 ; f0 04

B23_18f2:		cpx $d2			; e4 d2
B23_18f4:		beq B23_18dd ; f0 e7

B23_18f6:		lda $81			; a5 81
B23_18f8:		cmp #$06		; c9 06
B23_18fa:		beq B23_18dd ; f0 e1

B23_18fc:		ldy $82			; a4 82
B23_18fe:		lda $b9b2, y	; b9 b2 b9
B23_1901:		clc				; 18 
B23_1902:		adc wEntityBaseY.w		; 6d 1c 04
B23_1905:		sta $00			; 85 00
B23_1907:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B23_190a:		beq B23_195a ; f0 4e

B23_190c:		ldy #$00		; a0 00
B23_190e:		lda wEntityBaseX.w		; ad 38 04
B23_1911:		sec				; 38 
B23_1912:		sbc wEntityBaseX.w, x	; fd 38 04
B23_1915:		bcs B23_191e ; b0 07

B23_1917:		ldy #$80		; a0 80
B23_1919:		eor #$ff		; 49 ff
B23_191b:		clc				; 18 
B23_191c:		adc #$01		; 69 01
B23_191e:		sec				; 38 
B23_191f:		sbc #$05		; e9 05
B23_1921:		bcs B23_1925 ; b0 02

B23_1923:		lda #$00		; a9 00
B23_1925:		cmp #$40		; c9 40
B23_1927:		bcs B23_18dd ; b0 b4

B23_1929:		sta $90			; 85 90
B23_192b:		tya				; 98 
B23_192c:		ora $90			; 05 90
B23_192e:		sta $90			; 85 90
B23_1930:		and #$7f		; 29 7f
B23_1932:		tay				; a8 
B23_1933:		lda wEntityBaseY.w, x	; bd 1c 04
B23_1936:		sec				; 38 
B23_1937:		sbc $ba7e, y	; f9 7e ba
B23_193a:		sec				; 38 
B23_193b:		sbc $00			; e5 00
B23_193d:		bcs B23_1945 ; b0 06

B23_193f:		cmp #$fb		; c9 fb
B23_1941:		bcc B23_19ab ; 90 68

B23_1943:		bcs B23_194d ; b0 08

B23_1945:		cpy #$3a		; c0 3a
B23_1947:		bcs B23_1954 ; b0 0b

B23_1949:		cmp #$04		; c9 04
B23_194b:		bcs B23_19ab ; b0 5e

B23_194d:		sta $91			; 85 91
B23_194f:		lda #$01		; a9 01
B23_1951:		jmp $b99f		; 4c 9f b9


B23_1954:		cmp #$10		; c9 10
B23_1956:		bcs B23_19ab ; b0 53

B23_1958:		bcc B23_194d ; 90 f3

B23_195a:		ldy #$00		; a0 00
B23_195c:		lda wEntityBaseX.w		; ad 38 04
B23_195f:		sec				; 38 
B23_1960:		sbc wEntityBaseX.w, x	; fd 38 04
B23_1963:		bcs B23_196c ; b0 07

B23_1965:		ldy #$80		; a0 80
B23_1967:		eor #$ff		; 49 ff
B23_1969:		clc				; 18 
B23_196a:		adc #$01		; 69 01
B23_196c:		sec				; 38 
B23_196d:		sbc #$05		; e9 05
B23_196f:		bcs B23_1973 ; b0 02

B23_1971:		lda #$00		; a9 00
B23_1973:		cmp #$20		; c9 20
B23_1975:		bcs B23_19ab ; b0 34

B23_1977:		sta $90			; 85 90
B23_1979:		tya				; 98 
B23_197a:		ora $90			; 05 90
B23_197c:		sta $90			; 85 90
B23_197e:		and #$7f		; 29 7f
B23_1980:		tay				; a8 
B23_1981:		lda wEntityBaseY.w, x	; bd 1c 04
B23_1984:		sec				; 38 
B23_1985:		sbc $babf, y	; f9 bf ba
B23_1988:		sec				; 38 
B23_1989:		sbc $00			; e5 00
B23_198b:		bcs B23_1993 ; b0 06

B23_198d:		cmp #$fb		; c9 fb
B23_198f:		bcc B23_19ab ; 90 1a

B23_1991:		bcs B23_199b ; b0 08

B23_1993:		cpy #$1f		; c0 1f
B23_1995:		bcs B23_19ac ; b0 15

B23_1997:		cmp #$04		; c9 04
B23_1999:		bcs B23_19ab ; b0 10

B23_199b:		sta $91			; 85 91
B23_199d:		lda #$00		; a9 00
B23_199f:		sta $95			; 85 95
B23_19a1:		stx $d4			; 86 d4
B23_19a3:		lda #$06		; a9 06
B23_19a5:		sta $81			; 85 81
B23_19a7:		lda #$00		; a9 00
B23_19a9:		sta $af			; 85 af
B23_19ab:		rts				; 60 


B23_19ac:		cmp #$10		; c9 10
B23_19ae:		bcs B23_19ab ; b0 fb

B23_19b0:		bcc B23_199b ; 90 e9

B23_19b2:		bpl B23_19c4 ; 10 10

B23_19b4:	.db $0c
B23_19b5:		bpl B23_19c7 ; 10 10

B23_19b7:		bpl B23_19c5 ; 10 0c

B23_19b9:		bpl B23_19c3 ; 10 08

B23_19bb:		php				; 08 
B23_19bc:		php				; 08 
B23_19bd:	.db $04
B23_19be:		php				; 08 
B23_19bf:	.db $02
B23_19c0:	.db $02
B23_19c1:		.db $00				; 00
B23_19c2:	.db $02
B23_19c3:	.db $04
B23_19c4:		iny				; c8 
B23_19c5:		sty $0f			; 84 0f
B23_19c7:		lda wPlayerStateDoubled.w, x	; bd 65 05
B23_19ca:		sec				; 38 
B23_19cb:		sbc #$40		; e9 40
B23_19cd:		jmp $b9e7		; 4c e7 b9


B23_19d0:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B23_19d3:		beq B23_19d6 ; f0 01

B23_19d5:		rts				; 60 


B23_19d6:		ldy #$00		; a0 00
B23_19d8:		lda wPlayerStateDoubled.w, x	; bd 65 05
B23_19db:		cmp #$40		; c9 40
B23_19dd:		bcs B23_19c4 ; b0 e5

B23_19df:		sty $0f			; 84 0f
B23_19e1:		lda #$40		; a9 40
B23_19e3:		sec				; 38 
B23_19e4:		sbc wPlayerStateDoubled.w, x	; fd 65 05
B23_19e7:		sta $07			; 85 07
B23_19e9:		tay				; a8 
B23_19ea:		lda wEntityBaseX.w, x	; bd 38 04
B23_19ed:		sec				; 38 
B23_19ee:		sbc $bae0, y	; f9 e0 ba
B23_19f1:		sta $09			; 85 09
B23_19f3:		ldx #$00		; a2 00
B23_19f5:		lda $09			; a5 09
B23_19f7:		sec				; 38 
B23_19f8:		sbc wEntityBaseX.w		; ed38 04
B23_19fb:		bcs B23_1a03 ; b0 06

B23_19fd:		inx				; e8 
B23_19fe:		eor #$ff		; 49 ff
B23_1a00:		clc				; 18 
B23_1a01:		adc #$01		; 69 01
B23_1a03:		cmp $bb22, y	; d9 22 bb
B23_1a06:		bcs B23_19d5 ; b0 cd

B23_1a08:		sta $0a			; 85 0a
B23_1a0a:		stx $0b			; 86 0b
B23_1a0c:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_1a0e:		lda wEntityBaseY.w, x	; bd 1c 04
B23_1a11:		ldx $0f			; a6 0f
B23_1a13:		beq B23_1a1b ; f0 06

B23_1a15:		sec				; 38 
B23_1a16:		sbc $bb01, y	; f9 01 bb
B23_1a19:		bne B23_1a1f ; d0 04

B23_1a1b:		clc				; 18 
B23_1a1c:		adc $bb01, y	; 79 01 bb
B23_1a1f:		sec				; 38 
B23_1a20:		sbc #$10		; e9 10
B23_1a22:		sta $0c			; 85 0c
B23_1a24:		ldy $07			; a4 07
B23_1a26:		lda $fdc2, y	; b9 c2 fd
B23_1a29:		tax				; aa 
B23_1a2a:		ldy #$00		; a0 00
B23_1a2c:		lda $0a			; a5 0a
B23_1a2e:		jsr $b823		; 20 23 b8
B23_1a31:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B23_1a33:		lda $0f			; a5 0f
B23_1a35:		beq B23_1a3d ; f0 06

B23_1a37:		lda $0b			; a5 0b
B23_1a39:		beq B23_1a41 ; f0 06

B23_1a3b:		bne B23_1a48 ; d0 0b

B23_1a3d:		lda $0b			; a5 0b
B23_1a3f:		beq B23_1a48 ; f0 07

B23_1a41:		lda $0c			; a5 0c
B23_1a43:		sec				; 38 
B23_1a44:		sbc $01			; e5 01
B23_1a46:		bne B23_1a4d ; d0 05

B23_1a48:		lda $0c			; a5 0c
B23_1a4a:		clc				; 18 
B23_1a4b:		adc $01			; 65 01
B23_1a4d:		sta $0c			; 85 0c
B23_1a4f:		sec				; 38 
B23_1a50:		sbc wEntityBaseY.w		; ed1c 04
B23_1a53:		bcs B23_1a5b ; b0 06

B23_1a55:		cmp #$f8		; c9 f8
B23_1a57:		bcc B23_1a7d ; 90 24

B23_1a59:		bcs B23_1a5f ; b0 04

B23_1a5b:		cmp #$08		; c9 08
B23_1a5d:		bcs B23_1a7d ; b0 1e

B23_1a5f:		sta $91			; 85 91
B23_1a61:		lda $07			; a5 07
B23_1a63:		ldy wPlayerStateDoubled.w, x	; bc 65 05
B23_1a66:		cpy #$40		; c0 40
B23_1a68:		bcc B23_1a6c ; 90 02

B23_1a6a:		ora #$80		; 09 80
B23_1a6c:		sta $90			; 85 90
B23_1a6e:		lda #$01		; a9 01
B23_1a70:		ldy $0b			; a4 0b
B23_1a72:		bne B23_1a76 ; d0 02

B23_1a74:		lda #$08		; a9 08
B23_1a76:		sta $0645, x	; 9d 45 06
B23_1a79:		lda #$05		; a9 05
B23_1a7b:		sta $81			; 85 81
B23_1a7d:		rts				; 60 


B23_1a7e:		rti				; 40 


B23_1a7f:		rti				; 40 


B23_1a80:		rti				; 40 


B23_1a81:		rti				; 40 


B23_1a82:		rti				; 40 


B23_1a83:		rti				; 40 


B23_1a84:		rti				; 40 


B23_1a85:		rti				; 40 


B23_1a86:	.db $3f
B23_1a87:	.db $3f
B23_1a88:	.db $3f
B23_1a89:	.db $3f
B23_1a8a:	.db $3f
B23_1a8b:	.db $3f
B23_1a8c:		rol $3e3e, x	; 3e 3e 3e
B23_1a8f:		rol $3d3d, x	; 3e 3d 3d
B23_1a92:		and $3c3c, x	; 3d 3c 3c
B23_1a95:	.db $3c
B23_1a96:	.db $3b
B23_1a97:	.db $3b
B23_1a98:	.db $3a
B23_1a99:	.db $3a
B23_1a9a:	.db $3a
B23_1a9b:		and $3839, y	; 39 39 38
B23_1a9e:	.db $37
B23_1a9f:	.db $37
B23_1aa0:		rol $36, x		; 36 36
B23_1aa2:		and $34, x		; 35 34
B23_1aa4:	.db $33
B23_1aa5:	.db $33
B23_1aa6:	.db $32
B23_1aa7:		and ($30), y	; 31 30
B23_1aa9:	.db $2f
B23_1aaa:		rol $2c2e		; 2e 2e 2c
B23_1aad:	.db $2b
B23_1aae:		rol a			; 2a
B23_1aaf:		and #$28		; 29 28
B23_1ab1:	.db $27
B23_1ab2:		and $24			; 25 24
B23_1ab4:	.db $22
B23_1ab5:		and ($1f, x)	; 21 1f
B23_1ab7:		ora $191b, x	; 1d 1b 19
B23_1aba:		asl $13, x		; 16 13
B23_1abc:		bpl B23_1ac9 ; 10 0b

B23_1abe:		.db $00				; 00
B23_1abf:		jsr $2020		; 20 20 20
B23_1ac2:		jsr $2020		; 20 20 20
B23_1ac5:	.db $1f
B23_1ac6:	.db $1f
B23_1ac7:	.db $1f
B23_1ac8:	.db $1f
B23_1ac9:		asl $1e1e, x	; 1e 1e 1e
B23_1acc:		ora $1c1d, x	; 1d 1d 1c
B23_1acf:	.db $1c
B23_1ad0:	.db $1b
B23_1ad1:	.db $1a
B23_1ad2:	.db $1a
B23_1ad3:		ora $1718, y	; 19 18 17
B23_1ad6:		asl $15, x		; 16 15
B23_1ad8:	.db $14
B23_1ad9:	.db $13
B23_1ada:		ora ($0f), y	; 11 0f
B23_1adc:		asl $080b		; 0e 0b 08
B23_1adf:		.db $00				; 00
B23_1ae0:		php				; 08 
B23_1ae1:		php				; 08 
B23_1ae2:		php				; 08 
B23_1ae3:		php				; 08 
B23_1ae4:		php				; 08 
B23_1ae5:		php				; 08 
B23_1ae6:		php				; 08 
B23_1ae7:		php				; 08 
B23_1ae8:		php				; 08 
B23_1ae9:		php				; 08 
B23_1aea:		php				; 08 
B23_1aeb:		php				; 08 
B23_1aec:		php				; 08 
B23_1aed:		php				; 08 
B23_1aee:		php				; 08 
B23_1aef:	.db $07
B23_1af0:	.db $07
B23_1af1:	.db $07
B23_1af2:	.db $07
B23_1af3:	.db $07
B23_1af4:	.db $07
B23_1af5:	.db $07
B23_1af6:	.db $07
B23_1af7:	.db $07
B23_1af8:	.db $07
B23_1af9:	.db $07
B23_1afa:		asl $06			; 06 06
B23_1afc:		asl $06			; 06 06
B23_1afe:		asl $06			; 06 06
B23_1b00:		asl $00			; 06 00
B23_1b02:		.db $00				; 00
B23_1b03:		.db $00				; 00
B23_1b04:		ora ($01, x)	; 01 01
B23_1b06:		ora ($01, x)	; 01 01
B23_1b08:		ora ($02, x)	; 01 02
B23_1b0a:	.db $02
B23_1b0b:	.db $02
B23_1b0c:	.db $02
B23_1b0d:	.db $02
B23_1b0e:	.db $03
B23_1b0f:	.db $03
B23_1b10:	.db $03
B23_1b11:	.db $03
B23_1b12:	.db $03
B23_1b13:	.db $03
B23_1b14:	.db $04
B23_1b15:	.db $04
B23_1b16:	.db $04
B23_1b17:	.db $04
B23_1b18:	.db $04
B23_1b19:	.db $04
B23_1b1a:		ora $05			; 05 05
B23_1b1c:		ora $05			; 05 05
B23_1b1e:		ora $05			; 05 05
B23_1b20:		asl $06			; 06 06
B23_1b22:	.db $3c
B23_1b23:	.db $3c
B23_1b24:	.db $3c
B23_1b25:	.db $3c
B23_1b26:	.db $3c
B23_1b27:	.db $3c
B23_1b28:	.db $3b
B23_1b29:	.db $3b
B23_1b2a:	.db $3b
B23_1b2b:	.db $3b
B23_1b2c:	.db $3a
B23_1b2d:	.db $3a
B23_1b2e:		and $3839, y	; 39 39 38
B23_1b31:		sec				; 38 
B23_1b32:	.db $37
B23_1b33:	.db $37
B23_1b34:		rol $36, x		; 36 36
B23_1b36:		and $34, x		; 35 34
B23_1b38:	.db $33
B23_1b39:	.db $33
B23_1b3a:	.db $32
B23_1b3b:		and ($30), y	; 31 30
B23_1b3d:	.db $2f
B23_1b3e:		rol $2c2d		; 2e 2d 2c
B23_1b41:	.db $2b
B23_1b42:		rol a			; 2a
B23_1b43:		asl $06			; 06 06
B23_1b45:		asl $06			; 06 06
B23_1b47:		asl $06			; 06 06
B23_1b49:		asl $06			; 06 06
B23_1b4b:		asl $0c			; 06 0c
B23_1b4d:	.db $0c
B23_1b4e:		asl a			; 0a
B23_1b4f:	.db $0c
B23_1b50:		php				; 08 
B23_1b51:		php				; 08 
B23_1b52:		asl $08			; 06 08
B23_1b54:		ora $14			; 05 14
B23_1b56:	.db $14
B23_1b57:		asl $0e0e, x	; 1e 0e 0e
B23_1b5a:	.db $03
B23_1b5b:	.db $03
B23_1b5c:	.db $03
B23_1b5d:		php				; 08 
B23_1b5e:	.db $03
B23_1b5f:	.db $14
B23_1b60:		cpx $ec14		; ec 14 ec
B23_1b63:	.db $1c
B23_1b64:		cpx $10			; e4 10
B23_1b66:		beq B23_1b74 ; f0 0c

B23_1b68:	.db $f4
B23_1b69:		inc $fcfc, x	; fe fc fc
B23_1b6c:		.db $00				; 00
B23_1b6d:		inc $fcfc, x	; fe fc fc
B23_1b70:		.db $00				; 00
B23_1b71:		.db $00				; 00
B23_1b72:	.db $1a
B23_1b73:	.db $0c
B23_1b74:	.db $0c
B23_1b75:		;removed
	.db $10 $10

B23_1b77:	.db $12
B23_1b78:	.db $12
B23_1b79:		asl $12, x		; 16 12
B23_1b7b:	.db $03
B23_1b7c:		ora $03			; 05 03
B23_1b7e:	.db $03
B23_1b7f:	.db $03
B23_1b80:	.db $03
B23_1b81:	.db $03
B23_1b82:	.db $03
B23_1b83:	.db $03
B23_1b84:		clc				; 18 
B23_1b85:		inx				; e8 
B23_1b86:		bpl B23_1b78 ; 10 f0

B23_1b88:	.db $0c
B23_1b89:	.db $f4
B23_1b8a:		bpl B23_1b7c ; 10 f0

B23_1b8c:	.db $14
B23_1b8d:		cpx $ec14		; ec 14 ec
B23_1b90:		php				; 08 
B23_1b91:		sed				; f8 
B23_1b92:	.db $0c
B23_1b93:	.db $f4
B23_1b94:	.db $0c
B23_1b95:	.db $f4
B23_1b96:		.db $00				; 00
B23_1b97:		.db $00				; 00
B23_1b98:		.db $00				; 00
B23_1b99:		.db $00				; 00
B23_1b9a:	.db $fc
B23_1b9b:	.db $fc
B23_1b9c:	.db $fc
B23_1b9d:	.db $fc
B23_1b9e:	.db $fc
B23_1b9f:	.db $fc
B23_1ba0:	.db $fc
B23_1ba1:	.db $fc
B23_1ba2:		.db $00				; 00
B23_1ba3:		.db $00				; 00
B23_1ba4:		.db $00				; 00
B23_1ba5:		.db $00				; 00
B23_1ba6:	.db $fc
B23_1ba7:	.db $fc
B23_1ba8:		.db $00				; 00
B23_1ba9:		asl $07			; 06 07
B23_1bab:		asl $0c			; 06 0c
B23_1bad:	.db $1c
B23_1bae:		asl $06			; 06 06
B23_1bb0:		asl $06			; 06 06
B23_1bb2:	.db $03
B23_1bb3:		.db $00				; 00
B23_1bb4:		asl $07			; 06 07
B23_1bb6:	.db $03
B23_1bb7:	.db $0c
B23_1bb8:	.db $04
B23_1bb9:		asl $06			; 06 06
B23_1bbb:	.db $03
B23_1bbc:		asl $04			; 06 04
B23_1bbe:		.db $00				; 00
B23_1bbf:	.db $04
B23_1bc0:	.db $0f
B23_1bc1:	.db $0f
B23_1bc2:		asl $16, x		; 16 16
B23_1bc4:	.db $12
B23_1bc5:	.db $12
B23_1bc6:		asl a			; 0a
B23_1bc7:		asl a			; 0a
B23_1bc8:		php				; 08 
B23_1bc9:		php				; 08 
B23_1bca:		asl a			; 0a
B23_1bcb:		php				; 08 
B23_1bcc:		php				; 08 
B23_1bcd:		bpl B23_1bd7 ; 10 08

B23_1bcf:		ora $180c		; 0d 0c 18
B23_1bd2:		bpl B23_1bda ; 10 06

B23_1bd4:	.db $0c
B23_1bd5:		php				; 08 
B23_1bd6:		php				; 08 
B23_1bd7:		php				; 08 
B23_1bd8:		php				; 08 
B23_1bd9:		php				; 08 
B23_1bda:		php				; 08 
B23_1bdb:		php				; 08 
B23_1bdc:		php				; 08 
B23_1bdd:		php				; 08 
B23_1bde:		php				; 08 
B23_1bdf:		php				; 08 
B23_1be0:		php				; 08 
B23_1be1:		php				; 08 
B23_1be2:		php				; 08 
B23_1be3:		bpl B23_1bed ; 10 08

B23_1be5:		php				; 08 
B23_1be6:		php				; 08 
B23_1be7:	.db $0c
B23_1be8:		php				; 08 
B23_1be9:		php				; 08 
B23_1bea:		bpl B23_1bf2 ; 10 06

B23_1bec:		php				; 08 
B23_1bed:		php				; 08 
B23_1bee:		php				; 08 
B23_1bef:		php				; 08 
B23_1bf0:		php				; 08 
B23_1bf1:		php				; 08 
B23_1bf2:		bpl B23_1bfc ; 10 08

B23_1bf4:	.db $03
B23_1bf5:		ora $08			; 05 08
B23_1bf7:		php				; 08 
B23_1bf8:		php				; 08 
B23_1bf9:		php				; 08 
B23_1bfa:		php				; 08 
B23_1bfb:		php				; 08 
B23_1bfc:		php				; 08 
B23_1bfd:		php				; 08 
B23_1bfe:		php				; 08 
B23_1bff:		php				; 08 
B23_1c00:		php				; 08 
B23_1c01:		php				; 08 
B23_1c02:		php				; 08 
B23_1c03:		php				; 08 
B23_1c04:		php				; 08 
B23_1c05:		php				; 08 
B23_1c06:		php				; 08 
B23_1c07:		php				; 08 
B23_1c08:	.db $03
B23_1c09:	.db $04
B23_1c0a:	.db $02
B23_1c0b:		asl $04			; 06 04
B23_1c0d:	.db $04
B23_1c0e:	.db $03
B23_1c0f:		php				; 08 
B23_1c10:		php				; 08 
B23_1c11:		php				; 08 
B23_1c12:		php				; 08 
B23_1c13:		ora $08			; 05 08
B23_1c15:		php				; 08 
B23_1c16:		php				; 08 
B23_1c17:		php				; 08 
B23_1c18:		asl $08			; 06 08
B23_1c1a:	.db $0c
B23_1c1b:		asl $08			; 06 08
B23_1c1d:		php				; 08 
B23_1c1e:		php				; 08 
B23_1c1f:		php				; 08 
B23_1c20:		php				; 08 
B23_1c21:		php				; 08 
B23_1c22:		php				; 08 
B23_1c23:		php				; 08 
B23_1c24:		php				; 08 
B23_1c25:		php				; 08 
B23_1c26:		asl $08			; 06 08
B23_1c28:		php				; 08 
B23_1c29:		php				; 08 
B23_1c2a:		php				; 08 
B23_1c2b:		php				; 08 
B23_1c2c:		asl $08			; 06 08
B23_1c2e:		php				; 08 
B23_1c2f:	.db $0c
B23_1c30:		php				; 08 
B23_1c31:		php				; 08 
B23_1c32:		php				; 08 
B23_1c33:		php				; 08 
B23_1c34:		php				; 08 
B23_1c35:		php				; 08 
B23_1c36:		php				; 08 
B23_1c37:		php				; 08 
B23_1c38:		php				; 08 
B23_1c39:		bmi B23_1c4b ; 30 10

B23_1c3b:		jsr $1080		; 20 80 10
B23_1c3e:		jsr $0808		; 20 08 08
B23_1c41:		php				; 08 
B23_1c42:		php				; 08 
B23_1c43:		php				; 08 
B23_1c44:		php				; 08 
B23_1c45:		ora ($0c), y	; 11 0c
B23_1c47:		bpl B23_1c51 ; 10 08

B23_1c49:		php				; 08 
B23_1c4a:	.db $0c
B23_1c4b:		php				; 08 
B23_1c4c:		asl $1008		; 0e 08 10
B23_1c4f:		;removed
	.db $10 $10

B23_1c51:		php				; 08 
B23_1c52:		bpl B23_1c5c ; 10 08

B23_1c54:		php				; 08 
B23_1c55:		php				; 08 
B23_1c56:		php				; 08 
B23_1c57:		php				; 08 
B23_1c58:	.db $04
B23_1c59:		asl $04			; 06 04
B23_1c5b:	.db $02
B23_1c5c:	.db $02
B23_1c5d:	.db $02
B23_1c5e:	.db $02
B23_1c5f:	.db $02
B23_1c60:		asl $1010		; 0e 10 10
B23_1c63:		bpl B23_1c75 ; 10 10

B23_1c65:		bpl B23_1c6f ; 10 08

B23_1c67:		jsr $180c		; 20 0c 18
B23_1c6a:		bpl B23_1c78 ; 10 0c

B23_1c6c:	.db $14
B23_1c6d:		php				; 08 
B23_1c6e:	.db $14
B23_1c6f:		asl $080e		; 0e 0e 08
B23_1c72:		asl $040e		; 0e 0e 04
B23_1c75:		asl $0e0e		; 0e 0e 0e
B23_1c78:		asl $0e0e		; 0e 0e 0e
B23_1c7b:		ora #$0e		; 09 0e
B23_1c7d:		asl a			; 0a
B23_1c7e:	.db $14
B23_1c7f:		asl $0406		; 0e 06 04
B23_1c82:	.db $02
B23_1c83:		asl $08			; 06 08
B23_1c85:		asl $0402		; 0e 02 04
B23_1c88:		asl $080e		; 0e 0e 08
B23_1c8b:		php				; 08 
B23_1c8c:	.db $03
B23_1c8d:		ora $0e			; 05 0e
B23_1c8f:		asl $0808		; 0e 08 08
B23_1c92:		php				; 08 
B23_1c93:		php				; 08 
B23_1c94:		php				; 08 
B23_1c95:		php				; 08 
B23_1c96:		php				; 08 
B23_1c97:		php				; 08 
B23_1c98:		php				; 08 
B23_1c99:		php				; 08 
B23_1c9a:		php				; 08 
B23_1c9b:		php				; 08 
B23_1c9c:		php				; 08 
B23_1c9d:		php				; 08 
B23_1c9e:		php				; 08 
B23_1c9f:		php				; 08 
B23_1ca0:	.db $04
B23_1ca1:		php				; 08 
B23_1ca2:	.db $04
B23_1ca3:		asl $02			; 06 02
B23_1ca5:		asl $06			; 06 06
B23_1ca7:		asl $0e0e		; 0e 0e 0e
B23_1caa:		asl $05			; 06 05
B23_1cac:		php				; 08 
B23_1cad:		asl $0e0e		; 0e 0e 0e
B23_1cb0:		asl $080e		; 0e 0e 08
B23_1cb3:	.db $04
B23_1cb4:		asl $0e0e		; 0e 0e 0e
B23_1cb7:		asl $060e		; 0e 0e 06
B23_1cba:		asl $0e0e		; 0e 0e 0e
B23_1cbd:		asl $0e06		; 0e 06 0e
B23_1cc0:		asl $0e0e		; 0e 0e 0e
B23_1cc3:		asl $0e06		; 0e 06 0e
B23_1cc6:		asl $0e0e		; 0e 0e 0e
B23_1cc9:		asl $0e0e		; 0e 0e 0e
B23_1ccc:		asl $0e0e		; 0e 0e 0e
B23_1ccf:		asl $200e		; 0e 0e 20
B23_1cd2:		plp				; 28 
B23_1cd3:		bpl B23_1ce5 ; 10 10

B23_1cd5:		;removed
	.db $10 $28

B23_1cd7:		asl $050e		; 0e 0e 05
B23_1cda:		ora $0e			; 05 0e
B23_1cdc:		asl $0804		; 0e 04 08
B23_1cdf:		php				; 08 
B23_1ce0:		asl $040e		; 0e 0e 04
B23_1ce3:	.db $04
B23_1ce4:		php				; 08 
B23_1ce5:		asl $0808		; 0e 08 08
B23_1ce8:		php				; 08 
B23_1ce9:		asl $0e08		; 0e 08 0e
B23_1cec:		asl $0e0e		; 0e 0e 0e
B23_1cef:		asl $0c07		; 0e 07 0c
B23_1cf2:	.db $07
B23_1cf3:	.db $04
B23_1cf4:	.db $04
B23_1cf5:	.db $04
B23_1cf6:	.db $04
B23_1cf7:	.db $04


-	rts

execEntityXNextPhaseFunc:
B23_1cf9:		lda $ab			; a5 ab
	beq +

; ab non-0
B23_1cfd:		jsr func_1f_07b6		; 20 b6 e7
	bcs -

+	lda wEntityAI_idx.w, x	; bd ef 05
	beq -

B23_1d07:		cmp #$27		; c9 27
	bne +

; ai idx == 27
B23_1d0b:		jsr func_16_0131		; 20 31 81
	beq -

+
; get script addr for entity
	asl a			; 0a
	tay
	lda entityScriptsAddresses.w, y
	sta wCurrEntityScriptAddr
	lda entityScriptsAddresses.w+1, y
	sta wCurrEntityScriptAddr+1

; get 4 bytes (opcode + params) for current phase
	lda wEntityPhase.w, x
	asl a
	asl a
	clc
	adc wCurrEntityScriptAddr
	sta wPhaseFuncDataAddr
	lda wPhaseFuncDataAddr+1
	adc #$00
	sta wPhaseFuncDataAddr+1

; get script func for opcode
	ldy #$00
	lda (wPhaseFuncDataAddr), y
	asl a
	bcs +

	tay
	lda entityPhaseFuncsAddresses.w, y
	sta wCurrEntityPhaseFuncAddr
	lda entityPhaseFuncsAddresses.w+1, y
	sta wCurrEntityPhaseFuncAddr+1
	jmp (wCurrEntityPhaseFuncAddr)

+	tay
	lda entityPhaseFuncsAddresses2.w, y
	sta wCurrEntityPhaseFuncAddr
	lda entityPhaseFuncsAddresses2.w+1, y
	sta wCurrEntityPhaseFuncAddr+1
	jmp (wCurrEntityPhaseFuncAddr)
