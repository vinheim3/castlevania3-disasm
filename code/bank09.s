
B9_11b4:		lda $c4			; a5 c4
B9_11b6:		ora $c5			; 05 c5
B9_11b8:		bne B9_11e4 ; d0 2a

B9_11ba:		lda wCurrCharacterIdx			; a5 3b
B9_11bc:		eor #$01		; 49 01
B9_11be:		tay				; a8 
B9_11bf:	.db $b9 $39 $00
B9_11c2:		bmi B9_11e4 ; 30 20

B9_11c4:		lda wPlayerStateDoubled.w		; ad 65 05
B9_11c7:		cmp #$2c		; c9 2c
B9_11c9:		beq B9_11e4 ; f0 19

B9_11cb:		cmp #$2e		; c9 2e
B9_11cd:		beq B9_11e4 ; f0 15

B9_11cf:		lda wCurrRoomMetadataByte			; a5 68
B9_11d1:		bmi B9_11e0 ; 30 0d

B9_11d3:		jsr $b1e6		; 20 e6 b1
B9_11d6:		lda #$0b		; a9 0b
B9_11d8:		sta wInGameSubstate			; 85 2a
B9_11da:		lda #$00		; a9 00
B9_11dc:		sta $6b			; 85 6b
B9_11de:		sec				; 38 
B9_11df:		rts				; 60 


B9_11e0:		lda #$0c		; a9 0c
B9_11e2:		bne B9_11d8 ; d0 f4

B9_11e4:		clc				; 18 
B9_11e5:		rts				; 60 


B9_11e6:		lda wBaseIRQFuncIdx			; a5 3f
B9_11e8:		sta $a6			; 85 a6
B9_11ea:		lda $41			; a5 41
B9_11ec:		sta $a7			; 85 a7
B9_11ee:		lda $42			; a5 42
B9_11f0:		sta $a8			; 85 a8
B9_11f2:		lda $40			; a5 40
B9_11f4:		sta $a9			; 85 a9
B9_11f6:		lda wInGameSubstate			; a5 2a
B9_11f8:		sta $aa			; 85 aa
B9_11fa:		rts				; 60 


B9_11fb:		jsr $b213		; 20 13 b2
B9_11fe:		lda $3a			; a5 3a
B9_1200:		cmp #$02		; c9 02
B9_1202:		bne B9_1210 ; d0 0c

B9_1204:		ldy wCurrCharacterIdx			; a4 3b
B9_1206:		lda $b211, y	; b9 11 b2
B9_1209:		clc				; 18 
B9_120a:		adc wEntityBaseY.w		; 6d 1c 04
B9_120d:		sta wEntityBaseY.w		; 8d 1c 04
B9_1210:		rts				; 60 


B9_1211:	.db $04
B9_1212:	.db $fc
B9_1213:		ldy $3a			; a4 3a
B9_1215:		dey				; 88 
B9_1216:		tya				; 98 
B9_1217:		asl a			; 0a
B9_1218:		asl a			; 0a
B9_1219:		sta $00			; 85 00
B9_121b:		lda wCurrCharacterIdx			; a5 3b
B9_121d:		asl a			; 0a
B9_121e:		clc				; 18 
B9_121f:		adc $00			; 65 00
B9_1221:		tay				; a8 
B9_1222:		lda $b269, y	; b9 69 b2
B9_1225:		sta $08			; 85 08
B9_1227:		lda $b26a, y	; b9 6a b2
B9_122a:		sta $09			; 85 09
B9_122c:		lda wPlayerStateDoubled.w		; ad 65 05
B9_122f:		lsr a			; 4a
B9_1230:		tay				; a8 
B9_1231:		lda ($08), y	; b1 08
B9_1233:		sta wPlayerStateDoubled.w		; 8d 65 05
B9_1236:		beq B9_1263 ; f0 2b

B9_1238:		cmp #$12		; c9 12
B9_123a:		bne B9_1268 ; d0 2c

B9_123c:		lda #$00		; a9 00
B9_123e:		sta $0413		; 8d 13 04
B9_1241:		sta $0630		; 8d 30 06
B9_1244:		lda wEntityFacingLeft.w		; ad a8 04
B9_1247:		beq B9_1250 ; f0 07

B9_1249:		lda wEntityAI_idx.w		; ad ef 05
B9_124c:		beq B9_1257 ; f0 09

B9_124e:		bne B9_125d ; d0 0d

B9_1250:		lda wEntityAI_idx.w		; ad ef 05
B9_1253:		bne B9_1257 ; d0 02

B9_1255:		beq B9_125d ; f0 06

B9_1257:		lda #$0a		; a9 0a
B9_1259:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B9_125c:		rts				; 60 


B9_125d:		lda #$0c		; a9 0c
B9_125f:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B9_1262:		rts				; 60 


B9_1263:		lda #$02		; a9 02
B9_1265:		sta wOamSpecIdxDoubled.w		; 8d 00 04
B9_1268:		rts				; 60 


B9_1269:		lda $b2, x		; b5 b2
B9_126b:	.db $cf
B9_126c:	.db $b2
B9_126d:		adc $b2, x		; 75 b2
B9_126f:	.db $8f
B9_1270:	.db $b2
B9_1271:		sbc #$b2		; e9 b2
B9_1273:	.db $03
B9_1274:	.db $b3
B9_1275:		.db $00				; 00
B9_1276:	.db $02
B9_1277:	.db $04
B9_1278:		.db $00				; 00
B9_1279:		.db $00				; 00
B9_127a:		asl a			; 0a
B9_127b:		.db $00				; 00
B9_127c:		asl $1210		; 0e 10 12
B9_127f:	.db $14
B9_1280:		asl $00, x		; 16 00
B9_1282:		.db $00				; 00
B9_1283:		.db $00				; 00
B9_1284:	.db $12
B9_1285:		.db $00				; 00
B9_1286:		.db $00				; 00
B9_1287:	.db $12
B9_1288:		rol $28			; 26 28
B9_128a:		rol a			; 2a
B9_128b:	.db $2c $2e $00
B9_128e:		.db $00				; 00
B9_128f:		.db $00				; 00
B9_1290:	.db $02
B9_1291:	.db $04
B9_1292:		.db $00				; 00
B9_1293:		.db $00				; 00
B9_1294:		asl a			; 0a
B9_1295:		.db $00				; 00
B9_1296:		asl $1210		; 0e 10 12
B9_1299:	.db $14
B9_129a:		asl $00, x		; 16 00
B9_129c:		.db $00				; 00
B9_129d:		.db $00				; 00
B9_129e:	.db $12
B9_129f:		.db $00				; 00
B9_12a0:		.db $00				; 00
B9_12a1:	.db $12
B9_12a2:		rol $28			; 26 28
B9_12a4:		rol a			; 2a
B9_12a5:	.db $2c $2e $00
B9_12a8:		.db $00				; 00
B9_12a9:		.db $00				; 00
B9_12aa:		.db $00				; 00
B9_12ab:		.db $00				; 00
B9_12ac:		.db $00				; 00
B9_12ad:		.db $00				; 00
B9_12ae:		.db $00				; 00
B9_12af:		.db $00				; 00
B9_12b0:		.db $00				; 00
B9_12b1:		.db $00				; 00
B9_12b2:		.db $00				; 00
B9_12b3:		.db $00				; 00
B9_12b4:		.db $00				; 00
B9_12b5:		.db $00				; 00
B9_12b6:	.db $02
B9_12b7:	.db $04
B9_12b8:		asl $08			; 06 08
B9_12ba:		asl a			; 0a
B9_12bb:	.db $0c
B9_12bc:		asl $1210		; 0e 10 12
B9_12bf:	.db $14
B9_12c0:		asl $00, x		; 16 00
B9_12c2:		.db $00				; 00
B9_12c3:		.db $00				; 00
B9_12c4:	.db $12
B9_12c5:		.db $00				; 00
B9_12c6:		.db $00				; 00
B9_12c7:	.db $12
B9_12c8:		rol $28			; 26 28
B9_12ca:		rol a			; 2a
B9_12cb:	.db $2c $2e $00
B9_12ce:		.db $00				; 00
B9_12cf:		.db $00				; 00
B9_12d0:	.db $02
B9_12d1:	.db $04
B9_12d2:		asl $08			; 06 08
B9_12d4:		asl a			; 0a
B9_12d5:	.db $0c
B9_12d6:		asl $1210		; 0e 10 12
B9_12d9:	.db $14
B9_12da:		asl $00, x		; 16 00
B9_12dc:		.db $00				; 00
B9_12dd:		.db $00				; 00
B9_12de:	.db $12
B9_12df:		.db $00				; 00
B9_12e0:		.db $00				; 00
B9_12e1:	.db $12
B9_12e2:		rol $28			; 26 28
B9_12e4:		rol a			; 2a
B9_12e5:	.db $2c $2e $00
B9_12e8:		.db $00				; 00
B9_12e9:		.db $00				; 00
B9_12ea:	.db $02
B9_12eb:	.db $04
B9_12ec:		asl $08			; 06 08
B9_12ee:		asl a			; 0a
B9_12ef:	.db $0c
B9_12f0:		asl $1210		; 0e 10 12
B9_12f3:	.db $14
B9_12f4:		asl $00, x		; 16 00
B9_12f6:		.db $00				; 00
B9_12f7:		.db $00				; 00
B9_12f8:	.db $12
B9_12f9:		.db $00				; 00
B9_12fa:		.db $00				; 00
B9_12fb:	.db $12
B9_12fc:		rol $28			; 26 28
B9_12fe:		rol a			; 2a
B9_12ff:	.db $2c $2e $00
B9_1302:		.db $00				; 00
B9_1303:		.db $00				; 00
B9_1304:	.db $02
B9_1305:	.db $04
B9_1306:		asl $08			; 06 08
B9_1308:		asl a			; 0a
B9_1309:	.db $0c
B9_130a:		asl $1210		; 0e 10 12
B9_130d:	.db $14
B9_130e:		asl $00, x		; 16 00
B9_1310:		.db $00				; 00
B9_1311:		.db $00				; 00
B9_1312:	.db $12
B9_1313:		.db $00				; 00
B9_1314:		.db $00				; 00
B9_1315:	.db $12
B9_1316:		rol $28			; 26 28
B9_1318:		rol a			; 2a
B9_1319:	.db $2c $2e $00
B9_131c:		.db $00				; 00
B9_131d:		.db $00				; 00
B9_131e:		.db $00				; 00
B9_131f:		.db $00				; 00
B9_1320:		.db $00				; 00
B9_1321:		.db $00				; 00
B9_1322:		.db $00				; 00
B9_1323:		.db $00				; 00
B9_1324:		.db $00				; 00


respawnSetTimeLeft:
B9_1325:		lda wCurrRoomGroup		; a5 32
B9_1327:		asl a			; 0a
B9_1328:		tay				; a8 
B9_1329:		lda $b3ad, y	; b9 ad b3
B9_132c:		sta $08			; 85 08
B9_132e:		lda $b3ae, y	; b9 ae b3
B9_1331:		sta $09			; 85 09
B9_1333:		ldy wCurrRoomSection			; a4 33
B9_1335:		lda ($08), y	; b1 08
B9_1337:		and #$0f		; 29 0f
B9_1339:		sta wCurrRoomIdx			; 85 34
B9_133b:		lda ($08), y	; b1 08
B9_133d:		lsr a			; 4a
B9_133e:		lsr a			; 4a
B9_133f:		lsr a			; 4a
B9_1340:		lsr a			; 4a
B9_1341:		sta wCurrTimeLeft+1			; 85 7f
B9_1343:		lda #$00		; a9 00
B9_1345:		sta wCurrTimeLeft			; 85 7e
B9_1347:		rts				; 60 


B9_1348:		lda wCurrRoomIdx			; a5 34
B9_134a:		pha				; 48 
B9_134b:		jsr respawnSetTimeLeft		; 20 25 b3
B9_134e:		pla				; 68 
B9_134f:		sta wCurrRoomIdx			; 85 34
B9_1351:		jmp $b357		; 4c 57 b3


b9_respawnSetTimeLeftPlayerPosAndDir:
	jsr respawnSetTimeLeft
	jsr respawnSetPlayerPositionAndDirection

; if grant, add 4 to base Y
	lda wCurrPlayer.w
	cmp #PLAYER_GRANT
	bne +

	lda wEntityBaseY.w
	clc
	adc #$04
	sta wEntityBaseY.w

+	rts


respawnSetPlayerPositionAndDirection:
B9_136b:		lda wCurrRoomGroup		; a5 32
B9_136d:		asl a			; 0a
B9_136e:		tay				; a8 
B9_136f:		lda $b40b, y	; b9 0b b4
B9_1372:		sta $08			; 85 08
B9_1374:		lda $b40c, y	; b9 0c b4
B9_1377:		sta $09			; 85 09
B9_1379:		lda wCurrRoomSection			; a5 33
B9_137b:		asl a			; 0a
B9_137c:		tay				; a8 
B9_137d:		lda ($08), y	; b1 08
B9_137f:		sta $0a			; 85 0a
B9_1381:		iny				; c8 
B9_1382:		lda ($08), y	; b1 08
B9_1384:		sta $0b			; 85 0b
B9_1386:		lda wCurrRoomIdx			; a5 34
B9_1388:		asl a			; 0a
B9_1389:		tay				; a8 
B9_138a:		lda ($0a), y	; b1 0a
B9_138c:		and #$f0		; 29 f0
B9_138e:		sta wEntityBaseX.w		; 8d 38 04
B9_1391:		lda ($0a), y	; b1 0a
B9_1393:		asl a			; 0a
B9_1394:		asl a			; 0a
B9_1395:		asl a			; 0a
B9_1396:		asl a			; 0a
B9_1397:		sta wEntityBaseY.w		; 8d 1c 04
B9_139a:		iny				; c8 
B9_139b:		lda ($0a), y	; b1 0a
B9_139d:		sta wCurrScrollRoomScreen			; 85 57
B9_139f:		ldy #$00		; a0 00
B9_13a1:		sty wCurrScrollOffsetIntoRoomScreen			; 84 56

B9_13a3:		lda wEntityBaseX.w		; ad 38 04
B9_13a6:		bpl B9_13a9 ; 10 01

B9_13a8:		iny				; c8 
B9_13a9:		sty wEntityFacingLeft.w		; 8c a8 04
B9_13ac:		rts				; 60 


B9_13ad:	.db $cb
B9_13ae:	.db $b3
B9_13af:	.db $cf
B9_13b0:	.db $b3
B9_13b1:		cmp $b3, x		; d5 b3
B9_13b3:	.db $da
B9_13b4:	.db $b3
B9_13b5:	.db $df
B9_13b6:	.db $b3
B9_13b7:	.db $e2
B9_13b8:	.db $b3
B9_13b9:		inc $b3			; e6 b3
B9_13bb:		sbc #$b3		; e9 b3
B9_13bd:		beq B9_1372 ; f0 b3

B9_13bf:		sbc $b3, x		; f5 b3
B9_13c1:	.db $f7
B9_13c2:	.db $b3
B9_13c3:		inc $01b3, x	; fe b3 01
B9_13c6:		ldy $04, x		; b4 04
B9_13c8:		ldy $08, x		; b4 08
B9_13ca:		ldy $50, x		; b4 50
B9_13cc:		rti				; 40 


B9_13cd:		and ($20), y	; 31 20
B9_13cf:		rti				; 40 


B9_13d0:		bmi B9_13f2 ; 30 20

B9_13d2:	.db $42
B9_13d3:	.db $32
B9_13d4:	.db $22
B9_13d5:		bmi B9_13f7 ; 30 20

B9_13d7:		;removed
	.db $10 $32

B9_13d9:		and ($42, x)	; 21 42
B9_13db:		bmi B9_13fd ; 30 20

B9_13dd:		bmi B9_1401 ; 30 22

B9_13df:		rti				; 40 


B9_13e0:		bmi B9_1402 ; 30 20

B9_13e2:		bvc B9_1424 ; 50 40

B9_13e4:		and ($21), y	; 31 21
B9_13e6:		eor ($30, x)	; 41 30
B9_13e8:	.db $22
B9_13e9:		adc ($50, x)	; 61 50
B9_13eb:		;removed
	.db $50 $40

B9_13ed:		;removed
	.db $30 $20

B9_13ef:		jsr $3041		; 20 41 30
B9_13f2:		jsr $1020		; 20 20 10
B9_13f5:		;removed
	.db $30 $20

B9_13f7:		;removed
	.db $50 $40

B9_13f9:		;removed
	.db $30 $20

B9_13fb:		;removed
	.db $50 $40

B9_13fd:		;removed
	.db $30 $50

B9_13ff:		rti				; 40 


B9_1400:	.db $32
B9_1401:		rti				; 40 


B9_1402:		bmi B9_1424 ; 30 20

B9_1404:		bvc B9_1446 ; 50 40

B9_1406:		bmi B9_1428 ; 30 20

B9_1408:	.db $32
B9_1409:		jsr $2930		; 20 30 29
B9_140c:		ldy $31, x		; b4 31
B9_140e:		ldy $3d, x		; b4 3d
B9_1410:		ldy $47, x		; b4 47
B9_1412:		ldy $51, x		; b4 51
B9_1414:		ldy wCurrScrollRoomScreen, x		; b4 57
B9_1416:		ldy $5f, x		; b4 5f
B9_1418:		ldy $65, x		; b4 65
B9_141a:		ldy $73, x		; b4 73
B9_141c:		ldy $7d, x		; b4 7d
B9_141e:		ldy $81, x		; b4 81
B9_1420:		ldy $8f, x		; b4 8f
B9_1422:		ldy $95, x		; b4 95
B9_1424:		ldy $9b, x		; b4 9b
B9_1426:		ldy $a3, x		; b4 a3
B9_1428:		ldy $a9, x		; b4 a9
B9_142a:		ldy $ab, x		; b4 ab
B9_142c:		ldy $b3, x		; b4 b3
B9_142e:		ldy $b7, x		; b4 b7
B9_1430:		ldy $b9, x		; b4 b9
B9_1432:		ldy $bf, x		; b4 bf
B9_1434:		ldy $c5, x		; b4 c5
B9_1436:		ldy $cb, x		; b4 cb
B9_1438:		ldy $d1, x		; b4 d1
B9_143a:		ldy $d7, x		; b4 d7
B9_143c:		ldy $dd, x		; b4 dd
B9_143e:		ldy $e1, x		; b4 e1
B9_1440:		ldy $e3, x		; b4 e3
B9_1442:		ldy $e7, x		; b4 e7
B9_1444:		ldy $ed, x		; b4 ed
B9_1446:		ldy $f1, x		; b4 f1
B9_1448:		ldy $f7, x		; b4 f7
B9_144a:		ldy $fb, x		; b4 fb
B9_144c:		ldy $ff, x		; b4 ff
B9_144e:		ldy $03, x		; b4 03
B9_1450:		lda $09, x		; b5 09
B9_1452:		lda $0f, x		; b5 0f
B9_1454:		lda $15, x		; b5 15
B9_1456:		lda $1b, x		; b5 1b
B9_1458:		lda $1d, x		; b5 1d
B9_145a:		lda $1f, x		; b5 1f
B9_145c:		lda $23, x		; b5 23
B9_145e:		lda $27, x		; b5 27
B9_1460:		lda $2b, x		; b5 2b
B9_1462:		lda $2d, x		; b5 2d
B9_1464:		lda $33, x		; b5 33
B9_1466:		lda wCurrScore+1, x		; b5 37
B9_1468:		lda wUsableChars, x		; b5 39
B9_146a:		lda wCurrCharacterIdx, x		; b5 3b
B9_146c:		lda wBossHealth, x		; b5 3d
B9_146e:		lda $41, x		; b5 41
B9_1470:		lda $45, x		; b5 45
B9_1472:		lda $47, x		; b5 47
B9_1474:		lda $4b, x		; b5 4b
B9_1476:		lda wChrBankBG_0c00, x		; b5 4d
B9_1478:		lda wRoomMetaTilesAddr+1, x		; b5 51
B9_147a:		lda $53, x		; b5 53
B9_147c:		lda $55, x		; b5 55
B9_147e:		lda $59, x		; b5 59
B9_1480:		lda $5f, x		; b5 5f
B9_1482:		lda $63, x		; b5 63
B9_1484:		lda $65, x		; b5 65
B9_1486:		lda $67, x		; b5 67
B9_1488:		lda $6b, x		; b5 6b
B9_148a:		lda wCurrRoomNumScreens, x		; b5 71
B9_148c:		lda $75, x		; b5 75
B9_148e:		lda $7b, x		; b5 7b
B9_1490:		lda wCurrTimeLeft+1, x		; b5 7f
B9_1492:		lda $83, x		; b5 83
B9_1494:		lda $89, x		; b5 89
B9_1496:		lda $8d, x		; b5 8d
B9_1498:		lda $91, x		; b5 91
B9_149a:		lda $93, x		; b5 93
B9_149c:		lda $99, x		; b5 99
B9_149e:		lda $9f, x		; b5 9f
B9_14a0:		lda $a5, x		; b5 a5
B9_14a2:		lda $a9, x		; b5 a9
B9_14a4:		lda $af, x		; b5 af
B9_14a6:		lda $b3, x		; b5 b3
B9_14a8:		lda $2c, x		; b5 2c
B9_14aa:		.db $00				; 00
B9_14ab:	.db $2b
B9_14ac:		.db $00				; 00
B9_14ad:	.db $3a
B9_14ae:		.db $00				; 00
B9_14af:	.db $5a
B9_14b0:		.db $00				; 00
B9_14b1:	.db $4b
B9_14b2:		.db $00				; 00
B9_14b3:		dey				; 88 
B9_14b4:		.db $00				; 00
B9_14b5:		and $3b00, y	; 39 00 3b
B9_14b8:		.db $00				; 00
B9_14b9:	.db $3a
B9_14ba:		.db $00				; 00
B9_14bb:	.db $7a
B9_14bc:		ora ($8b, x)	; 01 8b
B9_14be:		.db $00				; 00
B9_14bf:	.db $4b
B9_14c0:		.db $00				; 00
B9_14c1:		and #$00		; 29 00
B9_14c3:		sta $2900, y	; 99 00 29
B9_14c6:		.db $00				; 00
B9_14c7:		dec $00			; c6 00
B9_14c9:		cmp #$01		; c9 01
B9_14cb:	.db $54
B9_14cc:		.db $00				; 00
B9_14cd:		bit $00			; 24 00
B9_14cf:		and #$01		; 29 01
B9_14d1:	.db $4b
B9_14d2:		.db $00				; 00
B9_14d3:		and #$00		; 29 00
B9_14d5:		sta $3a00, y	; 99 00 3a
B9_14d8:		.db $00				; 00
B9_14d9:	.db $7a
B9_14da:		ora ($e7, x)	; 01 e7
B9_14dc:		ora ($2b, x)	; 01 2b
B9_14de:		.db $00				; 00
B9_14df:		rol a			; 2a
B9_14e0:	.db $02
B9_14e1:	.db $4b
B9_14e2:		.db $00				; 00
B9_14e3:	.db $2b
B9_14e4:		.db $00				; 00
B9_14e5:		txa				; 8a 
B9_14e6:		.db $00				; 00
B9_14e7:		sbc $00			; e5 00
B9_14e9:		sta $00			; 85 00
B9_14eb:	.db $2b
B9_14ec:		.db $00				; 00
B9_14ed:		eor #$00		; 49 00
B9_14ef:		sbc #$03		; e9 03
B9_14f1:		eor $00			; 45 00
B9_14f3:		eor $00			; 45 00
B9_14f5:	.db $87
B9_14f6:		.db $00				; 00
B9_14f7:		and #$00		; 29 00
B9_14f9:	.db $7b
B9_14fa:		.db $00				; 00
B9_14fb:	.db $e7
B9_14fc:	.db $03
B9_14fd:	.db $c7
B9_14fe:		.db $00				; 00
B9_14ff:	.db $2b
B9_1500:		.db $00				; 00
B9_1501:	.db $7b
B9_1502:		.db $00				; 00
B9_1503:		pha				; 48 
B9_1504:		.db $00				; 00
B9_1505:		lsr $00			; 46 00
B9_1507:		and #$00		; 29 00
B9_1509:		and $8a00, y	; 39 00 8a
B9_150c:		.db $00				; 00
B9_150d:	.db $8b
B9_150e:		.db $00				; 00
B9_150f:		plp				; 28 
B9_1510:		.db $00				; 00
B9_1511:		rol a			; 2a
B9_1512:		.db $00				; 00
B9_1513:	.db $8b
B9_1514:		ora ($e7, x)	; 01 e7
B9_1516:		.db $00				; 00
B9_1517:		dex				; ca 
B9_1518:		.db $00				; 00
B9_1519:		lsr a			; 4a
B9_151a:		.db $00				; 00
B9_151b:	.db $3b
B9_151c:		.db $00				; 00
B9_151d:	.db $27
B9_151e:		.db $00				; 00
B9_151f:	.db $27
B9_1520:		.db $00				; 00
B9_1521:	.db $27
B9_1522:		.db $00				; 00
B9_1523:	.db $27
B9_1524:		.db $00				; 00
B9_1525:	.db $47
B9_1526:		.db $00				; 00
B9_1527:		and #$00		; 29 00
B9_1529:		and #$00		; 29 00
B9_152b:		and #$00		; 29 00
B9_152d:		and #$00		; 29 00
B9_152f:	.db $47
B9_1530:		.db $00				; 00
B9_1531:		and #$00		; 29 00
B9_1533:		lsr $00			; 46 00
B9_1535:		and #$00		; 29 00
B9_1537:		rol $00			; 26 00
B9_1539:		rol $00			; 26 00
B9_153b:		and $00			; 25 00
B9_153d:		and $00			; 25 00
B9_153f:	.db $3b
B9_1540:		.db $00				; 00
B9_1541:	.db $2b
B9_1542:		.db $00				; 00
B9_1543:	.db $8b
B9_1544:		ora ($e9, x)	; 01 e9
B9_1546:	.db $04
B9_1547:	.db $e7
B9_1548:		ora ($e7, x)	; 01 e7
B9_154a:	.db $04
B9_154b:		sbc #$04		; e9 04
B9_154d:		sbc #$03		; e9 03
B9_154f:	.db $5a
B9_1550:		.db $00				; 00
B9_1551:	.db $2b
B9_1552:		.db $00				; 00
B9_1553:	.db $89
B9_1554:	.db $04
B9_1555:		sbc #$02		; e9 02
B9_1557:	.db $9b
B9_1558:	.db $02
B9_1559:		cmp $3a01, y	; d9 01 3a
B9_155c:		.db $00				; 00
B9_155d:	.db $8b
B9_155e:		.db $00				; 00
B9_155f:	.db $3b
B9_1560:		.db $00				; 00
B9_1561:	.db $4b
B9_1562:		.db $00				; 00
B9_1563:	.db $e7
B9_1564:		ora ($f7, x)	; 01 f7
B9_1566:		.db $00				; 00
B9_1567:	.db $e7
B9_1568:	.db $02
B9_1569:		sta $00			; 85 00
B9_156b:		txa				; 8a 
B9_156c:		.db $00				; 00
B9_156d:	.db $9b
B9_156e:		.db $00				; 00
B9_156f:	.db $8b
B9_1570:		ora ($e7, x)	; 01 e7
B9_1572:	.db $02
B9_1573:		sbc #$02		; e9 02
B9_1575:		sbc #$00		; e9 00
B9_1577:		sbc #$00		; e9 00
B9_1579:	.db $8b
B9_157a:		.db $00				; 00
B9_157b:	.db $27
B9_157c:		.db $00				; 00
B9_157d:	.db $47
B9_157e:		.db $00				; 00
B9_157f:	.db $27
B9_1580:		.db $00				; 00
B9_1581:	.db $89
B9_1582:		.db $00				; 00
B9_1583:		dey				; 88 
B9_1584:		.db $00				; 00
B9_1585:	.db $44
B9_1586:		.db $00				; 00
B9_1587:	.db $27
B9_1588:		.db $00				; 00
B9_1589:		bit $4a00		; 2c 00 4a
B9_158c:		.db $00				; 00
B9_158d:		rol a			; 2a
B9_158e:		.db $00				; 00
B9_158f:		jmp ($8c00)		; 6c 00 8c


B9_1592:		.db $00				; 00
B9_1593:	.db $2b
B9_1594:		.db $00				; 00
B9_1595:	.db $ab
B9_1596:		.db $00				; 00
B9_1597:		dey				; 88 
B9_1598:		.db $00				; 00
B9_1599:	.db $eb
B9_159a:		ora ($d8, x)	; 01 d8
B9_159c:		.db $00				; 00
B9_159d:	.db $2b
B9_159e:		.db $00				; 00
B9_159f:	.db $2b
B9_15a0:		.db $00				; 00
B9_15a1:		rol a			; 2a
B9_15a2:		.db $00				; 00
B9_15a3:		ror a			; 6a
B9_15a4:		.db $00				; 00
B9_15a5:		nop				; ea 
B9_15a6:	.db $02
B9_15a7:	.db $eb
B9_15a8:	.db $02
B9_15a9:		inx				; e8 
B9_15aa:		ora ($24, x)	; 01 24
B9_15ac:		.db $00				; 00
B9_15ad:	.db $e7
B9_15ae:		ora ($e8, x)	; 01 e8
B9_15b0:		ora ($ac, x)	; 01 ac
B9_15b2:	.db $02
B9_15b3:	.db $e7
B9_15b4:		ora ($88, x)	; 01 88
B9_15b6:		ora ($a5, x)	; 01 a5
B9_15b8:	.db $1f
B9_15b9:		and #$03		; 29 03
B9_15bb:		sta $09			; 85 09
B9_15bd:		lda wCurrRoomGroup		; a5 32
B9_15bf:		asl a			; 0a
B9_15c0:		asl a			; 0a
B9_15c1:		clc				; 18 
B9_15c2:		adc $09			; 65 09
B9_15c4:		tay				; a8 
B9_15c5:		lda $b5cc, y	; b9 cc b5
B9_15c8:		sta $054e, x	; 9d 4e 05
B9_15cb:		rts				; 60 


B9_15cc:		sta $93, x		; 95 93
B9_15ce:	.db $93
B9_15cf:	.db $97
B9_15d0:	.db $93
B9_15d1:		sta $97, x		; 95 97
B9_15d3:		sta $93, x		; 95 93
B9_15d5:	.db $97
B9_15d6:	.db $93
B9_15d7:		sta $93, x		; 95 93
B9_15d9:		sta $93, x		; 95 93
B9_15db:		sta $93, x		; 95 93
B9_15dd:		sta $97, x		; 95 97
B9_15df:		sta $95, x		; 95 95
B9_15e1:		sta $97, x		; 95 97
B9_15e3:		sta $95, x		; 95 95
B9_15e5:		sta $97, x		; 95 97
B9_15e7:		sta $97, x		; 95 97
B9_15e9:		sta $93, x		; 95 93
B9_15eb:		sta $97, x		; 95 97
B9_15ed:		sta $93, x		; 95 93
B9_15ef:	.db $93
B9_15f0:	.db $97
B9_15f1:		sta $93, x		; 95 93
B9_15f3:	.db $93
B9_15f4:		sty $96, x		; 94 96
B9_15f6:	.db $93
B9_15f7:		sty $97, x		; 94 97
B9_15f9:	.db $97
B9_15fa:	.db $93
B9_15fb:		sta $97, x		; 95 97
B9_15fd:		sty $96, x		; 94 96
B9_15ff:	.db $93
B9_1600:	.db $97
B9_1601:	.db $97
B9_1602:	.db $93
B9_1603:		sta $93, x		; 95 93
B9_1605:		stx $95, y		; 96 95
B9_1607:	.db $97
B9_1608:	.db $97
B9_1609:	.db $93
B9_160a:		sta $96, x		; 95 96


func_09_160c:
B9_160c:		ldy wEntityAI_idx.w, x	; bc ef 05
B9_160f:		lda wEntityPhase.w, x	; bd c1 05
B9_1612:		cmp data_09_1616.w, y	; d9 16 b6
B9_1615:		rts				; 60 

data_09_1616:
B9_1616:	.db $ff
B9_1617:		ora ($03, x)	; 01 03
B9_1619:		ora ($01, x)	; 01 01
B9_161b:		ora ($01, x)	; 01 01
B9_161d:	.db $03
B9_161e:	.db $02
B9_161f:		ora ($01, x)	; 01 01
B9_1621:		ora ($01, x)	; 01 01
B9_1623:		ora ($03, x)	; 01 03
B9_1625:		ora ($01, x)	; 01 01
B9_1627:		ora ($02, x)	; 01 02
B9_1629:		ora ($00, x)	; 01 00
B9_162b:		.db $00				; 00
B9_162c:		ora ($02, x)	; 01 02
B9_162e:	.db $ff
B9_162f:	.db $ff
B9_1630:	.db $ff
B9_1631:	.db $ff
B9_1632:		ora ($00, x)	; 01 00
B9_1634:	.db $02
B9_1635:	.db $ff
B9_1636:	.db $ff
B9_1637:	.db $02
B9_1638:		ora ($02, x)	; 01 02
B9_163a:	.db $02
B9_163b:	.db $03
B9_163c:		ora ($02, x)	; 01 02
B9_163e:		ora ($02, x)	; 01 02
B9_1640:	.db $ff
B9_1641:		ora ($01, x)	; 01 01
B9_1643:		ora ($01, x)	; 01 01
B9_1645:	.db $02
B9_1646:	.db $ff
B9_1647:	.db $ff
B9_1648:	.db $ff
B9_1649:	.db $ff
B9_164a:	.db $ff
B9_164b:	.db $ff
B9_164c:	.db $ff
B9_164d:	.db $ff
B9_164e:	.db $ff
B9_164f:	.db $ff
B9_1650:	.db $ff
B9_1651:	.db $ff
B9_1652:	.db $ff
B9_1653:	.db $ff
B9_1654:	.db $ff
B9_1655:	.db $ff
B9_1656:	.db $ff
B9_1657:	.db $ff
B9_1658:	.db $ff
B9_1659:	.db $ff
B9_165a:	.db $ff
B9_165b:	.db $ff
B9_165c:	.db $ff
B9_165d:	.db $ff
B9_165e:	.db $ff
B9_165f:	.db $ff
B9_1660:	.db $ff
B9_1661:	.db $ff
B9_1662:	.db $ff
B9_1663:	.db $ff
B9_1664:	.db $ff
B9_1665:	.db $ff
B9_1666:	.db $ff
B9_1667:	.db $ff
B9_1668:	.db $ff
B9_1669:	.db $ff
B9_166a:	.db $ff
B9_166b:	.db $ff
B9_166c:	.db $ff
B9_166d:	.db $ff
B9_166e:		ora ($01, x)	; 01 01
B9_1670:		ora ($01, x)	; 01 01
B9_1672:		ora ($02, x)	; 01 02
B9_1674:		ora ($01, x)	; 01 01
B9_1676:	.db $ff
B9_1677:	.db $ff
B9_1678:		ora ($03, x)	; 01 03
B9_167a:		ora ($03, x)	; 01 03
B9_167c:	.db $03
B9_167d:	.db $ff
B9_167e:	.db $02
B9_167f:	.db $04
B9_1680:		ora ($ff, x)	; 01 ff
B9_1682:	.db $ff
B9_1683:	.db $03
B9_1684:	.db $03
B9_1685:		ora ($01, x)	; 01 01
B9_1687:	.db $ff
B9_1688:	.db $ff
B9_1689:	.db $ff
B9_168a:	.db $ff
B9_168b:	.db $ff
B9_168c:	.db $ff
B9_168d:	.db $ff
B9_168e:		sec				; 38 
B9_168f:		lda $054e, x	; bd 4e 05
B9_1692:		sbc #$40		; e9 40
B9_1694:		tay				; a8 
B9_1695:		lda $b6a1, y	; b9 a1 b6
B9_1698:		sta wEntityAI_idx.w, x	; 9d ef 05
B9_169b:		lda #$68		; a9 68
B9_169d:		sta $054e, x	; 9d 4e 05
B9_16a0:		rts				; 60 


B9_16a1:		clc				; 18 
B9_16a2:		clc				; 18 
B9_16a3:		clc				; 18 
B9_16a4:		clc				; 18 
B9_16a5:		clc				; 18 
B9_16a6:		clc				; 18 
B9_16a7:		clc				; 18 
B9_16a8:		clc				; 18 
B9_16a9:		clc				; 18 
B9_16aa:		clc				; 18 
B9_16ab:		clc				; 18 
B9_16ac:		clc				; 18 
B9_16ad:		clc				; 18 
B9_16ae:		clc				; 18 
B9_16af:	.db $1a
B9_16b0:		clc				; 18 
B9_16b1:		jsr $1818		; 20 18 18
B9_16b4:		clc				; 18 
B9_16b5:		clc				; 18 
B9_16b6:		clc				; 18 
B9_16b7:		clc				; 18 
B9_16b8:		clc				; 18 
B9_16b9:		clc				; 18 
B9_16ba:		adc ($19, x)	; 61 19
B9_16bc:	.db $1a
B9_16bd:		clc				; 18 
B9_16be:		clc				; 18 
B9_16bf:	.db $23
B9_16c0:		clc				; 18 
B9_16c1:		clc				; 18 
B9_16c2:		clc				; 18 
B9_16c3:		clc				; 18 
B9_16c4:		clc				; 18 
B9_16c5:		clc				; 18 
B9_16c6:		clc				; 18 
B9_16c7:		clc				; 18 
B9_16c8:		clc				; 18 
B9_16c9:		clc				; 18 
B9_16ca:		clc				; 18 
B9_16cb:		clc				; 18 
B9_16cc:		clc				; 18 
B9_16cd:		clc				; 18 
B9_16ce:		clc				; 18 
B9_16cf:		clc				; 18 
B9_16d0:		clc				; 18 
B9_16d1:		.db $00				; 00
B9_16d2:		ora ($01, x)	; 01 01
B9_16d4:		.db $00				; 00
B9_16d5:	.db $03
B9_16d6:		ora ($02, x)	; 01 02
B9_16d8:	.db $02
B9_16d9:		ora ($01, x)	; 01 01
B9_16db:	.db $02
B9_16dc:	.db $02
B9_16dd:	.db $03
B9_16de:		ora $04			; 05 04
B9_16e0:		ora ($00, x)	; 01 00
B9_16e2:	.db $07
B9_16e3:		.db $00				; 00
B9_16e4:	.db $04
B9_16e5:	.db $03
B9_16e6:	.db $02
B9_16e7:		ora ($03, x)	; 01 03
B9_16e9:		.db $00				; 00
B9_16ea:	.db $02
B9_16eb:	.db $02
B9_16ec:	.db $04
B9_16ed:		ora ($02, x)	; 01 02
B9_16ef:		.db $00				; 00
B9_16f0:		.db $00				; 00
B9_16f1:		bvc B9_16f3 ; 50 00

B9_16f3:		.db $00				; 00
B9_16f4:		bvc B9_16f6 ; 50 00

B9_16f6:		.db $00				; 00
B9_16f7:		.db $00				; 00
B9_16f8:		.db $00				; 00
B9_16f9:		.db $00				; 00
B9_16fa:		.db $00				; 00
B9_16fb:		.db $00				; 00
B9_16fc:		.db $00				; 00
B9_16fd:		.db $00				; 00
B9_16fe:		.db $00				; 00
B9_16ff:		.db $00				; 00
B9_1700:		.db $00				; 00
B9_1701:		bvc B9_1703 ; 50 00

B9_1703:		bvc B9_1705 ; 50 00

B9_1705:		.db $00				; 00
B9_1706:		.db $00				; 00
B9_1707:		.db $00				; 00
B9_1708:		.db $00				; 00
B9_1709:		bvc B9_170b ; 50 00

B9_170b:		.db $00				; 00
B9_170c:		.db $00				; 00
B9_170d:		.db $00				; 00
B9_170e:		.db $00				; 00
B9_170f:		.db $00				; 00
B9_1710:		.db $00				; 00
B9_1711:		lda $054e, x	; bd 4e 05
B9_1714:		cmp #$48		; c9 48
B9_1716:		bcc B9_172f ; 90 17

B9_1718:		sec				; 38 
B9_1719:		sbc #$48		; e9 48
B9_171b:		tay				; a8 
B9_171c:		lda $b6d1, y	; b9 d1 b6
B9_171f:		sta $02			; 85 02
B9_1721:		lda $b6f1, y	; b9 f1 b6
B9_1724:		sta $01			; 85 01
B9_1726:		lda #$00		; a9 00
B9_1728:		sta $03			; 85 03
B9_172a:		jsr $e777		; 20 77 e7
B9_172d:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B9_172f:		rts				; 60 


func_09_1730:
B9_1730:		lda wEntityState.w, x	; bd 70 04
B9_1733:		and #$01		; 29 01
B9_1735:		bne B9_173e ; d0 07

B9_1737:		lda wEntityState.w, x	; bd 70 04
B9_173a:		and #$08		; 29 08
B9_173c:		beq B9_1782 ; f0 44

B9_173e:		lda wEntityState.w, x	; bd 70 04
B9_1741:		ora #$80		; 09 80
B9_1743:		sta wEntityState.w, x	; 9d 70 04
B9_1746:		jsr $b8da		; 20 da b8
B9_1749:		beq B9_174f ; f0 04

B9_174b:		cpx #$0d		; e0 0d
B9_174d:		bcs B9_178a ; b0 3b

B9_174f:		lda wEntityState.w, x	; bd 70 04
B9_1752:		and #$01		; 29 01
B9_1754:		beq B9_178a ; f0 34

B9_1756:		lda $054e, x	; bd 4e 05
B9_1759:		cmp #$90		; c9 90
B9_175b:		bcs B9_176c ; b0 0f

B9_175d:		jsr $b7ad		; 20 ad b7
B9_1760:		bcc B9_178a ; 90 28

B9_1762:		lda wEntityState.w, x	; bd 70 04
B9_1765:		and #$04		; 29 04
B9_1767:		beq B9_176c ; f0 03

B9_1769:		jsr $b83e		; 20 3e b8
B9_176c:		lda $054e, x	; bd 4e 05
B9_176f:		cmp #$5d		; c9 5d
B9_1771:		beq B9_178b ; f0 18

B9_1773:		lda #$00		; a9 00
B9_1775:		sta $054e, x	; 9d 4e 05
B9_1778:		sta wEntityState.w, x	; 9d 70 04
B9_177b:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B9_177e:		sta wEntityAI_idx.w, x	; 9d ef 05
B9_1781:		rts				; 60 


B9_1782:		lda wEntityState.w, x	; bd 70 04
B9_1785:		and #$7f		; 29 7f
B9_1787:		sta wEntityState.w, x	; 9d 70 04
B9_178a:		rts				; 60 


B9_178b:		lda $061d, x	; bd 1d 06
B9_178e:		tax				; aa 
B9_178f:		lda wEntityState.w, x	; bd 70 04
B9_1792:		and #$81		; 29 81
B9_1794:		beq B9_1799 ; f0 03

B9_1796:		jsr $b79b		; 20 9b b7
B9_1799:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B9_179b:		lda #$00		; a9 00
B9_179d:		sta $0657, x	; 9d 57 06
B9_17a0:		sta wEntityState.w, x	; 9d 70 04
B9_17a3:		sta wEntityPhase.w, x	; 9d c1 05
B9_17a6:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B9_17a9:		sta $054e, x	; 9d 4e 05
B9_17ac:		rts				; 60 


B9_17ad:		cmp #$40		; c9 40
B9_17af:		bcc B9_17f8 ; 90 47

B9_17b1:		cmp #$77		; c9 77
B9_17b3:		bcs B9_17f8 ; b0 43

B9_17b5:		sec				; 38 
B9_17b6:		sbc #$40		; e9 40
B9_17b8:		tay				; a8 
B9_17b9:		lda $b806, y	; b9 06 b8
B9_17bc:		beq B9_1804 ; f0 46

B9_17be:		cmp #$02		; c9 02
B9_17c0:		beq B9_17e7 ; f0 25

B9_17c2:		lda wEntityBaseX.w, x	; bd 38 04
B9_17c5:		cmp #$e0		; c9 e0
B9_17c7:		bcs B9_17cd ; b0 04

B9_17c9:		cmp #$20		; c9 20
B9_17cb:		bcs B9_17df ; b0 12

B9_17cd:		lda wEntityState.w, x	; bd 70 04
B9_17d0:		and #$02		; 29 02
B9_17d2:		bne B9_17e7 ; d0 13

B9_17d4:		lda wEntityState.w, x	; bd 70 04
B9_17d7:		ora #$40		; 09 40
B9_17d9:		sta wEntityState.w, x	; 9d 70 04
B9_17dc:		jmp $b7e7		; 4c e7 b7


B9_17df:		lda wEntityState.w, x	; bd 70 04
B9_17e2:		and #$bf		; 29 bf
B9_17e4:		sta wEntityState.w, x	; 9d 70 04
B9_17e7:		lda $054e, x	; bd 4e 05
B9_17ea:		cmp #$59		; c9 59
B9_17ec:		beq B9_17fa ; f0 0c

B9_17ee:		lda wEntityBaseX.w, x	; bd 38 04
B9_17f1:		cmp #$d0		; c9 d0
B9_17f3:		bcs B9_17f8 ; b0 03

B9_17f5:		cmp #$31		; c9 31
B9_17f7:		rts				; 60 


B9_17f8:		clc				; 18 
B9_17f9:		rts				; 60 


B9_17fa:		lda wEntityBaseX.w, x	; bd 38 04
B9_17fd:		cmp #$c0		; c9 c0
B9_17ff:		bcs B9_17f8 ; b0 f7

B9_1801:		cmp #$41		; c9 41
B9_1803:		rts				; 60 


B9_1804:		sec				; 38 
B9_1805:		rts				; 60 


B9_1806:		.db $00				; 00
B9_1807:		.db $00				; 00
B9_1808:		.db $00				; 00
B9_1809:		.db $00				; 00
B9_180a:		.db $00				; 00
B9_180b:		.db $00				; 00
B9_180c:		.db $00				; 00
B9_180d:		.db $00				; 00
B9_180e:		.db $00				; 00
B9_180f:	.db $02
B9_1810:	.db $02
B9_1811:		.db $00				; 00
B9_1812:	.db $02
B9_1813:		ora ($01, x)	; 01 01
B9_1815:	.db $02
B9_1816:	.db $02
B9_1817:		.db $00				; 00
B9_1818:	.db $02
B9_1819:	.db $02
B9_181a:		ora ($01, x)	; 01 01
B9_181c:		ora ($01, x)	; 01 01
B9_181e:	.db $02
B9_181f:	.db $02
B9_1820:		ora ($01, x)	; 01 01
B9_1822:		ora ($02, x)	; 01 02
B9_1824:	.db $02
B9_1825:	.db $02
B9_1826:	.db $02
B9_1827:	.db $02
B9_1828:		ora ($01, x)	; 01 01
B9_182a:		ora ($02, x)	; 01 02
B9_182c:	.db $02
B9_182d:	.db $02
B9_182e:	.db $02
B9_182f:	.db $02
B9_1830:	.db $02
B9_1831:	.db $02
B9_1832:	.db $02
B9_1833:	.db $02
B9_1834:	.db $02
B9_1835:	.db $02
B9_1836:	.db $02
B9_1837:	.db $02
B9_1838:	.db $02
B9_1839:	.db $02
B9_183a:	.db $02
B9_183b:	.db $02
B9_183c:	.db $02
B9_183d:	.db $02
B9_183e:		lda $0645, x	; bd 45 06
B9_1841:		tax				; aa 
B9_1842:		lda #$03		; a9 03
B9_1844:		ldy $07c2, x	; bc c2 07
B9_1847:		cpy #$18		; c0 18
B9_1849:		beq B9_1851 ; f0 06

B9_184b:		cpy #$4b		; c0 4b
B9_184d:		beq B9_1851 ; f0 02

B9_184f:		lda #$02		; a9 02
B9_1851:		sta $07c8, x	; 9d c8 07
B9_1854:		ldx wCurrEntityIdxBeingProcessed			; a6 6c
B9_1856:		rts				; 60 


func_09_1857:
B9_1857:		lda $054e, x	; bd 4e 05
B9_185a:		cmp #$40		; c9 40
B9_185c:		bcc B9_186c ; 90 0e

B9_185e:		cmp #$76		; c9 76
B9_1860:		bcs B9_186c ; b0 0a

B9_1862:		lda wEntityBaseY.w, x	; bd 1c 04
B9_1865:		cmp #$f8		; c9 f8
B9_1867:		bcc B9_186c ; 90 03

B9_1869:		jmp $b76c		; 4c 6c b7


B9_186c:		rts				; 60 


B9_186d:		lda $054e, x	; bd 4e 05
B9_1870:		lsr a			; 4a
B9_1871:		bcc B9_187a ; 90 07

B9_1873:		tay				; a8 
B9_1874:		lda $b889, y	; b9 89 b8
B9_1877:		and #$0f		; 29 0f
B9_1879:		rts				; 60 


B9_187a:		tay				; a8 
B9_187b:		lda $b889, y	; b9 89 b8
B9_187e:		lsr a			; 4a
B9_187f:		lsr a			; 4a
B9_1880:		lsr a			; 4a
B9_1881:		lsr a			; 4a
B9_1882:		rts				; 60 


B9_1883:	.db $02
B9_1884:	.db $04
B9_1885:		asl $08			; 06 08
B9_1887:		bpl B9_18a1 ; 10 18

B9_1889:		eor $34			; 45 34
B9_188b:	.db $44
B9_188c:	.db $44
B9_188d:		bit $44			; 24 44
B9_188f:	.db $44
B9_1890:	.db $44
B9_1891:	.db $44
B9_1892:	.db $44
B9_1893:	.db $44
B9_1894:	.db $44
B9_1895:	.db $44
B9_1896:	.db $44
B9_1897:	.db $44
B9_1898:	.db $44
B9_1899:	.db $44
B9_189a:	.db $04
B9_189b:	.db $44
B9_189c:	.db $44
B9_189d:	.db $44
B9_189e:	.db $44
B9_189f:	.db $44
B9_18a0:	.db $44
B9_18a1:	.db $44
B9_18a2:	.db $44
B9_18a3:	.db $44
B9_18a4:	.db $44
B9_18a5:	.db $44
B9_18a6:	.db $44
B9_18a7:	.db $44
B9_18a8:	.db $44
B9_18a9:		ora ($12), y	; 11 12
B9_18ab:	.db $04
B9_18ac:	.db $44
B9_18ad:	.db $42
B9_18ae:	.db $13
B9_18af:	.db $34
B9_18b0:	.db $43
B9_18b1:	.db $44
B9_18b2:	.db $32
B9_18b3:	.db $44
B9_18b4:	.db $44
B9_18b5:	.db $43
B9_18b6:	.db $44
B9_18b7:	.db $43
B9_18b8:	.db $34
B9_18b9:	.db $43
B9_18ba:	.db $44
B9_18bb:	.db $34
B9_18bc:	.db $44
B9_18bd:	.db $44
B9_18be:	.db $44
B9_18bf:	.db $44
B9_18c0:	.db $44
B9_18c1:	.db $44
B9_18c2:	.db $44
B9_18c3:	.db $44
B9_18c4:	.db $44
B9_18c5:	.db $42
B9_18c6:	.db $34
B9_18c7:		eor ($43, x)	; 41 43
B9_18c9:	.db $44
B9_18ca:	.db $34
B9_18cb:	.db $44
B9_18cc:	.db $33
B9_18cd:	.db $34
B9_18ce:	.db $34
B9_18cf:	.db $44
B9_18d0:	.db $44
B9_18d1:		;removed
	.db $10 $10

B9_18d3:	.db $0c
B9_18d4:		bpl B9_18e6 ; 10 10

B9_18d6:		bpl B9_18e4 ; 10 0c

B9_18d8:		bpl B9_18de ; 10 04

B9_18da:		lda wCurrRoomGroup		; a5 32
B9_18dc:		cmp #$0e		; c9 0e
B9_18de:		bne B9_18ea ; d0 0a

B9_18e0:		lda wCurrRoomSection			; a5 33
B9_18e2:		cmp #$01		; c9 01
B9_18e4:		bne B9_18ea ; d0 04

B9_18e6:		lda wCurrRoomIdx			; a5 34
B9_18e8:		cmp #$01		; c9 01
B9_18ea:		rts				; 60 


B9_18eb:		ldx #$01		; a2 01
B9_18ed:		lda $054e, x	; bd 4e 05
B9_18f0:		beq B9_18fd ; f0 0b

B9_18f2:		cmp #$6c		; c9 6c
B9_18f4:		beq B9_1904 ; f0 0e

B9_18f6:		lda wEntityState.w, x	; bd 70 04
B9_18f9:		and #$02		; 29 02
B9_18fb:		bne B9_1904 ; d0 07

B9_18fd:		inx				; e8 
B9_18fe:		cpx #$0d		; e0 0d
B9_1900:		bcc B9_18ed ; 90 eb

B9_1902:		clc				; 18 
B9_1903:		rts				; 60 


B9_1904:		sec				; 38 
B9_1905:		rts				; 60 


func_09_1906:
B9_1906:		lda wEntityState.w, x	; bd 70 04
B9_1909:		and #$fe		; 29 fe
B9_190b:		sta $01			; 85 01
B9_190d:		ldy #$00		; a0 00
B9_190f:		lda $6e			; a5 6e
B9_1911:		bpl B9_1914 ; 10 01

B9_1913:		dey				; 88 
B9_1914:		sty $00			; 84 00
B9_1916:		lda wCurrRoomMetadataByte			; a5 68
B9_1918:		bmi B9_1932 ; 30 18

B9_191a:		sec				; 38 
B9_191b:		lda wEntityBaseX.w, x	; bd 38 04
B9_191e:		sbc $6e			; e5 6e
B9_1920:		sta wEntityBaseX.w, x	; 9d 38 04
B9_1923:		lda wEntityState.w, x	; bd 70 04
B9_1926:		and #$01		; 29 01
B9_1928:		sbc $00			; e5 00
B9_192a:		and #$01		; 29 01
B9_192c:		ora $01			; 05 01
B9_192e:		sta wEntityState.w, x	; 9d 70 04
B9_1931:		rts				; 60 

B9_1932:		and #$01		; 29 01
B9_1934:		bne B9_1965 ; d0 2f

B9_1936:		clc				; 18 
B9_1937:		lda wEntityBaseY.w, x	; bd 1c 04
B9_193a:		adc $6e			; 65 6e
B9_193c:		sta wEntityBaseY.w, x	; 9d 1c 04
B9_193f:		lda wEntityState.w, x	; bd 70 04
B9_1942:		and #$01		; 29 01
B9_1944:		adc $00			; 65 00
B9_1946:		and #$01		; 29 01
B9_1948:		ora $01			; 05 01
B9_194a:		sta wEntityState.w, x	; 9d 70 04
B9_194d:		and #$01		; 29 01
B9_194f:		beq B9_1983 ; f0 32

B9_1951:		lda $054e, x	; bd 4e 05
B9_1954:		cmp #$90		; c9 90
B9_1956:		bcs B9_195c ; b0 04

B9_1958:		cmp #$78		; c9 78
B9_195a:		bcs B9_1964 ; b0 08

B9_195c:		lda #$00		; a9 00
B9_195e:		sta $054e, x	; 9d 4e 05
B9_1961:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B9_1964:		rts				; 60 

B9_1965:		clc				; 18 
B9_1966:		lda wEntityBaseY.w, x	; bd 1c 04
B9_1969:		adc $6e			; 65 6e
B9_196b:		sta wEntityBaseY.w, x	; 9d 1c 04
B9_196e:		lda wEntityState.w, x	; bd 70 04
B9_1971:		and #$01		; 29 01
B9_1973:		adc $00			; 65 00
B9_1975:		and #$01		; 29 01
B9_1977:		ora $01			; 05 01
B9_1979:		sta wEntityState.w, x	; 9d 70 04
B9_197c:		lda wEntityBaseY.w, x	; bd 1c 04
B9_197f:		cmp #$30		; c9 30
B9_1981:		bcc B9_1951 ; 90 ce

B9_1983:		lda $6e			; a5 6e
B9_1985:		beq B9_19ab ; f0 24

B9_1987:		lda $054e, x	; bd 4e 05
B9_198a:		cmp #$4b		; c9 4b
B9_198c:		bne B9_19ab ; d0 1d

B9_198e:		ldy #$00		; a0 00
B9_1990:		lda wCurrRoomMetadataByte			; a5 68
B9_1992:		and #$01		; 29 01
B9_1994:		beq B9_1998 ; f0 02

B9_1996:		ldy #$ff		; a0 ff
B9_1998:		sty $04			; 84 04
B9_199a:		clc				; 18 
B9_199b:		lda wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bd 06 06
B9_199e:		adc $6e			; 65 6e
B9_19a0:		sta wEntityAlarmOrStartYforSinusoidalMovement.w, x	; 9d 06 06
B9_19a3:		lda $061d, x	; bd 1d 06
B9_19a6:		adc $04			; 65 04
B9_19a8:		sta $061d, x	; 9d 1d 06
B9_19ab:		rts				; 60 


func_09_19ac:
B9_19ac:		lda $ba			; a5 ba
B9_19ae:		cmp #$ff		; c9 ff
B9_19b0:		beq B9_1a28 ; f0 76

B9_19b2:		lda $054e, x	; bd 4e 05
B9_19b5:		sta $09			; 85 09
B9_19b7:		lda $ba			; a5 ba
B9_19b9:		sta $08			; 85 08
B9_19bb:		ldy #$00		; a0 00
B9_19bd:		lsr $08			; 46 08
B9_19bf:		bcc B9_19c8 ; 90 07

B9_19c1:		lda $ba3e, y	; b9 3e ba
B9_19c4:		cmp $09			; c5 09
B9_19c6:		beq B9_19d1 ; f0 09

B9_19c8:		beq B9_1a26 ; f0 5c

B9_19ca:		iny				; c8 
B9_19cb:		cpy #$08		; c0 08
B9_19cd:		bne B9_19bd ; d0 ee

B9_19cf:		beq B9_1a26 ; f0 55

B9_19d1:		tya				; 98 
B9_19d2:		asl a			; 0a
B9_19d3:		tay				; a8 
B9_19d4:		lda $ba59, y	; b9 59 ba
B9_19d7:		sta $08			; 85 08
B9_19d9:		lda $ba5a, y	; b9 5a ba
B9_19dc:		sta $09			; 85 09
B9_19de:		lda $bc			; a5 bc
B9_19e0:		asl a			; 0a
B9_19e1:		tay				; a8 
B9_19e2:		lda ($08), y	; b1 08
B9_19e4:		sta $0a			; 85 0a
B9_19e6:		iny				; c8 
B9_19e7:		lda ($08), y	; b1 08
B9_19e9:		sta $0b			; 85 0b
B9_19eb:		lda #$00		; a9 00
B9_19ed:		sta $0c			; 85 0c
B9_19ef:		sta $0d			; 85 0d
B9_19f1:		ldy $bb			; a4 bb
B9_19f3:		beq B9_1a16 ; f0 21

B9_19f5:		dey				; 88 
B9_19f6:		lda $ba46, y	; b9 46 ba
B9_19f9:		cmp $054e, x	; dd 4e 05
B9_19fc:		bne B9_1a16 ; d0 18

B9_19fe:		tya				; 98 
B9_19ff:		asl a			; 0a
B9_1a00:		tay				; a8 
B9_1a01:		lda $ba4d, y	; b9 4d ba
B9_1a04:		sta $0c			; 85 0c
B9_1a06:		lda wEntityFacingLeft.w, x	; bd a8 04
B9_1a09:		bne B9_1a11 ; d0 06

B9_1a0b:		lda $0c			; a5 0c
B9_1a0d:		eor #$ff		; 49 ff
B9_1a0f:		sta $0c			; 85 0c
B9_1a11:		lda $ba4e, y	; b9 4e ba
B9_1a14:		sta $0d			; 85 0d
B9_1a16:		clc				; 18 
B9_1a17:		lda $0a			; a5 0a
B9_1a19:		adc $00			; 65 00
B9_1a1b:		sta $02			; 85 02
B9_1a1d:		clc				; 18 
B9_1a1e:		lda $0b			; a5 0b
B9_1a20:		adc $01			; 65 01
B9_1a22:		sta $03			; 85 03
B9_1a24:		sec				; 38 
B9_1a25:		rts				; 60 


B9_1a26:		clc				; 18 
B9_1a27:		rts				; 60 


B9_1a28:		ldy wEntityAlarmOrStartYforSinusoidalMovement.w, x	; bc 06 06
B9_1a2b:		lda $ba8e, y	; b9 8e ba
B9_1a2e:		sta $0a			; 85 0a
B9_1a30:		lda $ba92, y	; b9 92 ba
B9_1a33:		sta $0b			; 85 0b
B9_1a35:		lda #$00		; a9 00
B9_1a37:		sta $0c			; 85 0c
B9_1a39:		sta $0d			; 85 0d
B9_1a3b:		jmp $ba16		; 4c 16 ba


B9_1a3e:		ora $0c29		; 0d 29 0c
B9_1a41:		php				; 08 
B9_1a42:		.db $00				; 00
B9_1a43:		.db $00				; 00
B9_1a44:	.db $0f
B9_1a45:		.db $00				; 00
B9_1a46:	.db $0f
B9_1a47:	.db $0f
B9_1a48:	.db $0f
B9_1a49:	.db $0f
B9_1a4a:	.db $0c
B9_1a4b:		php				; 08 
B9_1a4c:		.db $00				; 00
B9_1a4d:	.db $1c
B9_1a4e:		.db $00				; 00
B9_1a4f:	.db $1c
B9_1a50:		.db $00				; 00
B9_1a51:		bit $00			; 24 00
B9_1a53:	.db $14
B9_1a54:		.db $00				; 00
B9_1a55:		.db $00				; 00
B9_1a56:		bpl B9_1a58 ; 10 00

B9_1a58:		php				; 08 
B9_1a59:		adc #$ba		; 69 ba
B9_1a5b:		adc $71ba		; 6d ba 71
B9_1a5e:		tsx				; ba 
B9_1a5f:	.db $73
B9_1a60:		tsx				; ba 
B9_1a61:		adc $ba, x		; 75 ba
B9_1a63:		sei				; 78 
B9_1a64:		tsx				; ba 
B9_1a65:		stx $ba			; 86 ba
B9_1a67:		sty $08ba		; 8c ba 08
B9_1a6a:		bpl B9_1a74 ; 10 08

B9_1a6c:		php				; 08 
B9_1a6d:	.db $04
B9_1a6e:		php				; 08 
B9_1a6f:	.db $04
B9_1a70:		asl $12			; 06 12
B9_1a72:		bit $08			; 24 08
B9_1a74:		php				; 08 
B9_1a75:		.db $00				; 00
B9_1a76:		.db $00				; 00
B9_1a77:		.db $00				; 00
B9_1a78:		php				; 08 
B9_1a79:		php				; 08 
B9_1a7a:		php				; 08 
B9_1a7b:		php				; 08 
B9_1a7c:		php				; 08 
B9_1a7d:		php				; 08 
B9_1a7e:		php				; 08 
B9_1a7f:		php				; 08 
B9_1a80:		php				; 08 
B9_1a81:		php				; 08 
B9_1a82:		php				; 08 
B9_1a83:		php				; 08 
B9_1a84:		php				; 08 
B9_1a85:		php				; 08 
B9_1a86:	.db $0c
B9_1a87:	.db $04
B9_1a88:	.db $0c
B9_1a89:		asl $14			; 06 14
B9_1a8b:		asl $08			; 06 08
B9_1a8d:	.db $04
B9_1a8e:		clc				; 18 
B9_1a8f:		;removed
	.db $10 $08

B9_1a91:		asl $10			; 06 10
B9_1a93:		;removed
	.db $10 $08

B9_1a95:		asl $a9			; 06 a9
B9_1a97:		.db $00				; 00
B9_1a98:		sta $067b, x	; 9d 7b 06
B9_1a9b:		jsr $e6b5		; 20 b5 e6
B9_1a9e:		txa				; 8a 
B9_1a9f:		pha				; 48 
B9_1aa0:		lda #$65		; a9 65
B9_1aa2:		jsr $babb		; 20 bb ba
B9_1aa5:		ldx #$01		; a2 01
B9_1aa7:		lda $054e, x	; bd 4e 05
B9_1aaa:		cmp #$04		; c9 04
B9_1aac:		bne B9_1ab1 ; d0 03

B9_1aae:		jsr $bab9		; 20 b9 ba
B9_1ab1:		inx				; e8 
B9_1ab2:		cpx #$0d		; e0 0d
B9_1ab4:		bcc B9_1aa7 ; 90 f1

B9_1ab6:		pla				; 68 
B9_1ab7:		tax				; aa 
B9_1ab8:		rts				; 60 


B9_1ab9:		lda #$18		; a9 18
B9_1abb:		sta wEntityAI_idx.w, x	; 9d ef 05
B9_1abe:		lda #$68		; a9 68
B9_1ac0:		sta $054e, x	; 9d 4e 05
B9_1ac3:		lda #$00		; a9 00
B9_1ac5:		sta wOamSpecIdxDoubled.w, x	; 9d 00 04
B9_1ac8:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B9_1acb:		sta wEntityPhase.w, x	; 9d c1 05
B9_1ace:		lda #$30		; a9 30
B9_1ad0:		sta wEntityState.w, x	; 9d 70 04
B9_1ad3:		rts				; 60 


largeLayout16:
	.dw $2000
	.db $40 $00
	.db $06 $3d
	.db $81 $54
	.db $07 $00
	.db $84 $47 $6b $68 $6d
	.db $09 $00
	.db $0b $3d
	.db $84 $00 $00 $47 $67
	.db $04 $00
	.db $8e $42 $43 $44 $45 $60 $00 $47 $89 $44 $6d $00 $00 $00 $b5
	.db $06 $3d
	.db $96 $54 $00 $64 $63 $00 $00 $67 $68 $a8 $ab $00 $a8 $52 $53 $53 $55 $56 $60 $6a $6b $6a $2a
	.db $04 $00
	.db $04 $3d
	.db $04 $00
	.db $9e $3d $54 $60 $47 $6a $af $aa $a8 $26 $61 $62 $00 $00 $65 $66 $3d $68 $6a $68 $6c $60 $00 $00 $00 $b5 $3d $3d $3d $63 $64
	.db $04 $00
	.db $88 $3d $68 $6b $6d $aa $ab $a8 $71
	.db $04 $00
	.db $88 $76 $3d $3d $2a $3d $6b $68 $6d
	.db $06 $00
	.db $82 $3d $70
	.db $04 $00
	.db $88 $42 $43 $44 $45 $ab $77 $ab $48
	.db $04 $00
	.db $d4 $49 $3d $6c $8a $42 $43 $44 $45 $00 $00 $63 $64 $63 $64 $3d $70 $00 $00 $00 $a8 $52 $53 $53 $55 $56 $60 $3d $71 $01 $02 $03 $00 $69 $3d $00 $a8 $52 $53 $53 $55 $56 $60 $3d $70 $3d $70 $3d $70 $00 $00 $26 $61 $62 $00 $00 $65 $66 $3d $3d $10 $11 $12 $13 $14 $15 $3d $26 $61 $62 $00 $00 $65 $66 $3d $b5 $70 $3d $70 $b5 $70 $00 $00 $a8 $71
	.db $04 $00
	.db $8c $76 $3d $3d $20 $21 $22 $23 $24 $25 $3d $a8 $71
	.db $04 $00
	.db $83 $76 $3d $60
	.db $06 $00
	.db $83 $26 $aa $48
	.db $04 $00
	.db $8c $49 $3d $3d $30 $31 $32 $33 $34 $35 $3d $aa $48
	.db $04 $00
	.db $84 $49 $3d $6c $6d
	.db $06 $00
	.db $82 $a9 $58
	.db $04 $00
	.db $8c $59 $67 $3d $06 $07 $08 $09 $0a $0b $3d $a9 $58
	.db $04 $00
	.db $85 $59 $67 $6b $8a $60
	.db $04 $00
	.db $83 $26 $3d $71
	.db $04 $00
	.db $8c $69 $59 $3d $16 $17 $18 $19 $1a $1b $3d $3d $71
	.db $04 $00
	.db $8c $69 $59 $68 $6a $6c $6d $00 $00 $00 $47 $3d $58
	.db $04 $00
	.db $8c $49 $3d $3d $71 $27 $28 $29 $00 $49 $3d $3d $58
	.db $04 $00
	.db $fe $49 $3d $6d $68 $6b $8a $00 $00 $64 $77 $aa $36 $af $a9 $af $a8 $79 $59 $6c $36 $37 $38 $39 $37 $79 $3d $aa $36 $af $a9 $af $a9 $79 $59 $69 $6b $68 $6a $ab $6d $2a $6c $a9 $6c $6c $3d $ab $6c $6c $3d $2a $3d $3d $1c $1d $7a $78 $3d $ab $6d $2a $77 $ab $3d $3d $89 $2a $6c $6c $68 $67 $6b $6a $6b $6c $00 $00 $00 $6c $77 $6d $67 $6c $2c $2d $2e $2e $2f $b5 $89 $67 $6b $6a $6b $8a $78 $3d $3d $6c $2a $77 $2a $75 $a9 $a9 $a8 $af $a8 $af $a8 $a8 $a9 $75 $75 $73 $74 $73 $74 $75 $73 $73 $74 $75 $75 $73 $74
	.db $92 $75 $73 $a9 $aa $af $a8 $af $a8 $b1 $72 $72 $af $aa $aa $aa $72 $af $b1
	.db $09 $72
	.db $81 $b1
	.db $05 $72
	.db $8f $b1 $72 $b1 $af $aa $aa $af $67 $77 $3d $3d $ab $af $ab $89
	.db $05 $3d
	.db $83 $78 $77 $77
	.db $04 $3d
	.db $84 $77 $77 $7a $78
	.db $04 $3d
	.db $fe $77 $a9 $ab $78 $68 $6b $8a $6c $89 $91 $92 $3d $3d $91 $92 $77 $7a $7a $77 $7a $77 $78 $89 $3d $3d $91 $92 $3d $3d $91 $92 $77 $89 $91 $92 $77 $4e $4b $4e $4f $3d $00 $00 $3d $3d $00 $00 $59 $0c $0e $0e $0f $0e $0e $0f $0d $3d $00 $00 $3d $3d $00 $00 $67 $4a $4e $4b $4b $5b $8d $5e $5f $3d $8e $8e $3d $3d $8e $8e $7a $8c $1e $78 $78 $77 $7a $1f $00 $77 $8e $8e $3d $3d $8e $8e $77 $5a $6f $5b $5e $4b $4b $4e $4b $4e $4f $aa $a9 $af $aa $77 $8c $3b $3c $3b $3c $3b $3c $3b $3c $6c $78 $a9 $6c $4a $4e
	.db $c6 $4b $4e $4b $4b $4e $4e $5b $5e $6f $5e $5e $5f $ab $78 $77 $ab $6c $3c $3c $3b $3c $3c $3c $3b $3c $3c $3b $b5 $6c $00 $5a $6f $5b $6f $5b $5e $8d $5b $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f $7e $7f
	.db $60 $00
	.db $82 $ff $ff
	.db $04 $5f
	.db $84 $df $ff $ff $57
	.db $04 $55
	.db $8f $5d $ff $7f $55 $55 $aa $aa $55 $55 $5f $55 $55 $55 $9a $6a
	.db $06 $55
	.db $82 $59 $56
	.db $06 $55
	.db $8b $a5 $a5 $55 $55 $55 $05 $05 $09 $0a $0a $06
	.db $0a $05
	.db $ff
