
B9_11b4:		lda $c4			; a5 c4
B9_11b6:		ora $c5			; 05 c5
B9_11b8:		bne B9_11e4 ; d0 2a

B9_11ba:		lda $3b			; a5 3b
B9_11bc:		eor #$01		; 49 01
B9_11be:		tay				; a8 
B9_11bf:	.db $b9 $39 $00
B9_11c2:		bmi B9_11e4 ; 30 20

B9_11c4:		lda wPlayerStateDoubled.w		; ad 65 05
B9_11c7:		cmp #$2c		; c9 2c
B9_11c9:		beq B9_11e4 ; f0 19

B9_11cb:		cmp #$2e		; c9 2e
B9_11cd:		beq B9_11e4 ; f0 15

B9_11cf:		lda $68			; a5 68
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


B9_11e6:		lda $3f			; a5 3f
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

B9_1204:		ldy $3b			; a4 3b
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
B9_121b:		lda $3b			; a5 3b
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
B9_1244:		lda wEntityXFlipped.w		; ad a8 04
B9_1247:		beq B9_1250 ; f0 07

B9_1249:		lda wEntityAI_idx.w		; ad ef 05
B9_124c:		beq B9_1257 ; f0 09

B9_124e:		bne B9_125d ; d0 0d

B9_1250:		lda wEntityAI_idx.w		; ad ef 05
B9_1253:		bne B9_1257 ; d0 02

B9_1255:		beq B9_125d ; f0 06

B9_1257:		lda #$0a		; a9 0a
B9_1259:		sta wOamSpecIdx.w		; 8d 00 04
B9_125c:		rts				; 60 


B9_125d:		lda #$0c		; a9 0c
B9_125f:		sta wOamSpecIdx.w		; 8d 00 04
B9_1262:		rts				; 60 


B9_1263:		lda #$02		; a9 02
B9_1265:		sta wOamSpecIdx.w		; 8d 00 04
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


func_09_1325:
B9_1325:		lda wCurrRoomGroup		; a5 32
B9_1327:		asl a			; 0a
B9_1328:		tay				; a8 
B9_1329:		lda $b3ad, y	; b9 ad b3
B9_132c:		sta $08			; 85 08
B9_132e:		lda $b3ae, y	; b9 ae b3
B9_1331:		sta $09			; 85 09
B9_1333:		ldy $33			; a4 33
B9_1335:		lda ($08), y	; b1 08
B9_1337:		and #$0f		; 29 0f
B9_1339:		sta wCurrRoomIdx			; 85 34
B9_133b:		lda ($08), y	; b1 08
B9_133d:		lsr a			; 4a
B9_133e:		lsr a			; 4a
B9_133f:		lsr a			; 4a
B9_1340:		lsr a			; 4a
B9_1341:		sta $7f			; 85 7f
B9_1343:		lda #$00		; a9 00
B9_1345:		sta $7e			; 85 7e
B9_1347:		rts				; 60 


B9_1348:		lda wCurrRoomIdx			; a5 34
B9_134a:		pha				; 48 
B9_134b:		jsr func_09_1325		; 20 25 b3
B9_134e:		pla				; 68 
B9_134f:		sta wCurrRoomIdx			; 85 34
B9_1351:		jmp $b357		; 4c 57 b3


func_09_1354:
B9_1354:		jsr func_09_1325		; 20 25 b3
B9_1357:		jsr func_09_136b		; 20 6b b3
B9_135a:		lda wCurrPlayer.w		; ad 4e 05
B9_135d:		cmp #$02		; c9 02
B9_135f:		bne B9_136a ; d0 09

B9_1361:		lda wEntityBaseY.w		; ad 1c 04
B9_1364:		clc				; 18 
B9_1365:		adc #$04		; 69 04
B9_1367:		sta wEntityBaseY.w		; 8d 1c 04

B9_136a:		rts				; 60 


func_09_136b:
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
B9_139d:		sta $57			; 85 57
B9_139f:		ldy #$00		; a0 00
B9_13a1:		sty $56			; 84 56
B9_13a3:		lda wEntityBaseX.w		; ad 38 04
B9_13a6:		bpl B9_13a9 ; 10 01

B9_13a8:		iny				; c8 
B9_13a9:		sty wEntityXFlipped.w		; 8c a8 04
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
B9_1414:		ldy $57, x		; b4 57
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
B9_1466:		lda $37, x		; b5 37
B9_1468:		lda $39, x		; b5 39
B9_146a:		lda $3b, x		; b5 3b
B9_146c:		lda $3d, x		; b5 3d
B9_146e:		lda $41, x		; b5 41
B9_1470:		lda $45, x		; b5 45
B9_1472:		lda $47, x		; b5 47
B9_1474:		lda $4b, x		; b5 4b
B9_1476:		lda $4d, x		; b5 4d
B9_1478:		lda $51, x		; b5 51
B9_147a:		lda $53, x		; b5 53
B9_147c:		lda $55, x		; b5 55
B9_147e:		lda $59, x		; b5 59
B9_1480:		lda $5f, x		; b5 5f
B9_1482:		lda $63, x		; b5 63
B9_1484:		lda $65, x		; b5 65
B9_1486:		lda $67, x		; b5 67
B9_1488:		lda $6b, x		; b5 6b
B9_148a:		lda $71, x		; b5 71
B9_148c:		lda $75, x		; b5 75
B9_148e:		lda $7b, x		; b5 7b
B9_1490:		lda $7f, x		; b5 7f
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
B9_172d:		ldx $6c			; a6 6c
B9_172f:		rts				; 60 


func_09_1730:
B9_1730:		lda $0470, x	; bd 70 04
B9_1733:		and #$01		; 29 01
B9_1735:		bne B9_173e ; d0 07

B9_1737:		lda $0470, x	; bd 70 04
B9_173a:		and #$08		; 29 08
B9_173c:		beq B9_1782 ; f0 44

B9_173e:		lda $0470, x	; bd 70 04
B9_1741:		ora #$80		; 09 80
B9_1743:		sta $0470, x	; 9d 70 04
B9_1746:		jsr $b8da		; 20 da b8
B9_1749:		beq B9_174f ; f0 04

B9_174b:		cpx #$0d		; e0 0d
B9_174d:		bcs B9_178a ; b0 3b

B9_174f:		lda $0470, x	; bd 70 04
B9_1752:		and #$01		; 29 01
B9_1754:		beq B9_178a ; f0 34

B9_1756:		lda $054e, x	; bd 4e 05
B9_1759:		cmp #$90		; c9 90
B9_175b:		bcs B9_176c ; b0 0f

B9_175d:		jsr $b7ad		; 20 ad b7
B9_1760:		bcc B9_178a ; 90 28

B9_1762:		lda $0470, x	; bd 70 04
B9_1765:		and #$04		; 29 04
B9_1767:		beq B9_176c ; f0 03

B9_1769:		jsr $b83e		; 20 3e b8
B9_176c:		lda $054e, x	; bd 4e 05
B9_176f:		cmp #$5d		; c9 5d
B9_1771:		beq B9_178b ; f0 18

B9_1773:		lda #$00		; a9 00
B9_1775:		sta $054e, x	; 9d 4e 05
B9_1778:		sta $0470, x	; 9d 70 04
B9_177b:		sta wOamSpecIdx.w, x	; 9d 00 04
B9_177e:		sta wEntityAI_idx.w, x	; 9d ef 05
B9_1781:		rts				; 60 


B9_1782:		lda $0470, x	; bd 70 04
B9_1785:		and #$7f		; 29 7f
B9_1787:		sta $0470, x	; 9d 70 04
B9_178a:		rts				; 60 


B9_178b:		lda $061d, x	; bd 1d 06
B9_178e:		tax				; aa 
B9_178f:		lda $0470, x	; bd 70 04
B9_1792:		and #$81		; 29 81
B9_1794:		beq B9_1799 ; f0 03

B9_1796:		jsr $b79b		; 20 9b b7
B9_1799:		ldx $6c			; a6 6c
B9_179b:		lda #$00		; a9 00
B9_179d:		sta $0657, x	; 9d 57 06
B9_17a0:		sta $0470, x	; 9d 70 04
B9_17a3:		sta wEntityPhase.w, x	; 9d c1 05
B9_17a6:		sta wOamSpecIdx.w, x	; 9d 00 04
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

B9_17cd:		lda $0470, x	; bd 70 04
B9_17d0:		and #$02		; 29 02
B9_17d2:		bne B9_17e7 ; d0 13

B9_17d4:		lda $0470, x	; bd 70 04
B9_17d7:		ora #$40		; 09 40
B9_17d9:		sta $0470, x	; 9d 70 04
B9_17dc:		jmp $b7e7		; 4c e7 b7


B9_17df:		lda $0470, x	; bd 70 04
B9_17e2:		and #$bf		; 29 bf
B9_17e4:		sta $0470, x	; 9d 70 04
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
B9_1854:		ldx $6c			; a6 6c
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

B9_18f6:		lda $0470, x	; bd 70 04
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
B9_1906:		lda $0470, x	; bd 70 04
B9_1909:		and #$fe		; 29 fe
B9_190b:		sta $01			; 85 01
B9_190d:		ldy #$00		; a0 00
B9_190f:		lda $6e			; a5 6e
B9_1911:		bpl B9_1914 ; 10 01

B9_1913:		dey				; 88 
B9_1914:		sty $00			; 84 00
B9_1916:		lda $68			; a5 68
B9_1918:		bmi B9_1932 ; 30 18

B9_191a:		sec				; 38 
B9_191b:		lda wEntityBaseX.w, x	; bd 38 04
B9_191e:		sbc $6e			; e5 6e
B9_1920:		sta wEntityBaseX.w, x	; 9d 38 04
B9_1923:		lda $0470, x	; bd 70 04
B9_1926:		and #$01		; 29 01
B9_1928:		sbc $00			; e5 00
B9_192a:		and #$01		; 29 01
B9_192c:		ora $01			; 05 01
B9_192e:		sta $0470, x	; 9d 70 04
B9_1931:		rts				; 60 

B9_1932:		and #$01		; 29 01
B9_1934:		bne B9_1965 ; d0 2f

B9_1936:		clc				; 18 
B9_1937:		lda wEntityBaseY.w, x	; bd 1c 04
B9_193a:		adc $6e			; 65 6e
B9_193c:		sta wEntityBaseY.w, x	; 9d 1c 04
B9_193f:		lda $0470, x	; bd 70 04
B9_1942:		and #$01		; 29 01
B9_1944:		adc $00			; 65 00
B9_1946:		and #$01		; 29 01
B9_1948:		ora $01			; 05 01
B9_194a:		sta $0470, x	; 9d 70 04
B9_194d:		and #$01		; 29 01
B9_194f:		beq B9_1983 ; f0 32

B9_1951:		lda $054e, x	; bd 4e 05
B9_1954:		cmp #$90		; c9 90
B9_1956:		bcs B9_195c ; b0 04

B9_1958:		cmp #$78		; c9 78
B9_195a:		bcs B9_1964 ; b0 08

B9_195c:		lda #$00		; a9 00
B9_195e:		sta $054e, x	; 9d 4e 05
B9_1961:		sta wOamSpecIdx.w, x	; 9d 00 04
B9_1964:		rts				; 60 

B9_1965:		clc				; 18 
B9_1966:		lda wEntityBaseY.w, x	; bd 1c 04
B9_1969:		adc $6e			; 65 6e
B9_196b:		sta wEntityBaseY.w, x	; 9d 1c 04
B9_196e:		lda $0470, x	; bd 70 04
B9_1971:		and #$01		; 29 01
B9_1973:		adc $00			; 65 00
B9_1975:		and #$01		; 29 01
B9_1977:		ora $01			; 05 01
B9_1979:		sta $0470, x	; 9d 70 04
B9_197c:		lda wEntityBaseY.w, x	; bd 1c 04
B9_197f:		cmp #$30		; c9 30
B9_1981:		bcc B9_1951 ; 90 ce

B9_1983:		lda $6e			; a5 6e
B9_1985:		beq B9_19ab ; f0 24

B9_1987:		lda $054e, x	; bd 4e 05
B9_198a:		cmp #$4b		; c9 4b
B9_198c:		bne B9_19ab ; d0 1d

B9_198e:		ldy #$00		; a0 00
B9_1990:		lda $68			; a5 68
B9_1992:		and #$01		; 29 01
B9_1994:		beq B9_1998 ; f0 02

B9_1996:		ldy #$ff		; a0 ff
B9_1998:		sty $04			; 84 04
B9_199a:		clc				; 18 
B9_199b:		lda $0606, x	; bd 06 06
B9_199e:		adc $6e			; 65 6e
B9_19a0:		sta $0606, x	; 9d 06 06
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
B9_1a06:		lda wEntityXFlipped.w, x	; bd a8 04
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


B9_1a28:		ldy $0606, x	; bc 06 06
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
B9_1ac5:		sta wOamSpecIdx.w, x	; 9d 00 04
B9_1ac8:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B9_1acb:		sta wEntityPhase.w, x	; 9d c1 05
B9_1ace:		lda #$30		; a9 30
B9_1ad0:		sta $0470, x	; 9d 70 04
B9_1ad3:		rts				; 60 


B9_1ad4:		.db $00				; 00
B9_1ad5:	.db $20 $40 $00
B9_1ad8:		asl $3d			; 06 3d
B9_1ada:		sta ($54, x)	; 81 54
B9_1adc:	.db $07
B9_1add:		.db $00				; 00
B9_1ade:		sty $47			; 84 47
B9_1ae0:	.db $6b
B9_1ae1:		pla				; 68 
B9_1ae2:	.db $6d $09 $00
B9_1ae5:	.db $0b
B9_1ae6:	.db $3d $84 $00
B9_1ae9:		.db $00				; 00
B9_1aea:	.db $47
B9_1aeb:	.db $67
B9_1aec:	.db $04
B9_1aed:		.db $00				; 00
B9_1aee:		stx $4342		; 8e 42 43
B9_1af1:	.db $44
B9_1af2:		eor $60			; 45 60
B9_1af4:		.db $00				; 00
B9_1af5:	.db $47
B9_1af6:	.db $89
B9_1af7:	.db $44
B9_1af8:	.db $6d $00 $00
B9_1afb:		.db $00				; 00
B9_1afc:		lda $06, x		; b5 06
B9_1afe:		and $5496, x	; 3d 96 54
B9_1b01:		.db $00				; 00
B9_1b02:	.db $64
B9_1b03:	.db $63
B9_1b04:		.db $00				; 00
B9_1b05:		.db $00				; 00
B9_1b06:	.db $67
B9_1b07:		pla				; 68 
B9_1b08:		tay				; a8 
B9_1b09:	.db $ab
B9_1b0a:		.db $00				; 00
B9_1b0b:		tay				; a8 
B9_1b0c:	.db $52
B9_1b0d:	.db $53
B9_1b0e:	.db $53
B9_1b0f:		eor $56, x		; 55 56
B9_1b11:		rts				; 60 


B9_1b12:		ror a			; 6a
B9_1b13:	.db $6b
B9_1b14:		ror a			; 6a
B9_1b15:		rol a			; 2a
B9_1b16:	.db $04
B9_1b17:		.db $00				; 00
B9_1b18:	.db $04
B9_1b19:	.db $3d $04 $00
B9_1b1c:	.db $9e
B9_1b1d:		and $6054, x	; 3d 54 60
B9_1b20:	.db $47
B9_1b21:		ror a			; 6a
B9_1b22:	.db $af
B9_1b23:		tax				; aa 
B9_1b24:		tay				; a8 
B9_1b25:		rol $61			; 26 61
B9_1b27:	.db $62
B9_1b28:		.db $00				; 00
B9_1b29:		.db $00				; 00
B9_1b2a:		adc $66			; 65 66
B9_1b2c:		and $6a68, x	; 3d 68 6a
B9_1b2f:		pla				; 68 
B9_1b30:	.db $6c $60 $00
B9_1b33:		.db $00				; 00
B9_1b34:		.db $00				; 00
B9_1b35:		lda $3d, x		; b5 3d
B9_1b37:		and $633d, x	; 3d 3d 63
B9_1b3a:	.db $64
B9_1b3b:	.db $04
B9_1b3c:		.db $00				; 00
B9_1b3d:		dey				; 88 
B9_1b3e:		and $6b68, x	; 3d 68 6b
B9_1b41:		adc $abaa		; 6d aa ab
B9_1b44:		tay				; a8 
B9_1b45:		adc ($04), y	; 71 04
B9_1b47:		.db $00				; 00
B9_1b48:		dey				; 88 
B9_1b49:		ror $3d, x		; 76 3d
B9_1b4b:		and $3d2a, x	; 3d 2a 3d
B9_1b4e:	.db $6b
B9_1b4f:		pla				; 68 
B9_1b50:	.db $6d $06 $00
B9_1b53:	.db $82
B9_1b54:		and $0470, x	; 3d 70 04
B9_1b57:		.db $00				; 00
B9_1b58:		dey				; 88 
B9_1b59:	.db $42
B9_1b5a:	.db $43
B9_1b5b:	.db $44
B9_1b5c:		eor $ab			; 45 ab
B9_1b5e:	.db $77
B9_1b5f:	.db $ab
B9_1b60:		pha				; 48 
B9_1b61:	.db $04
B9_1b62:		.db $00				; 00
B9_1b63:	.db $d4
B9_1b64:		eor #$3d		; 49 3d
B9_1b66:		jmp ($428a)		; 6c 8a 42


B9_1b69:	.db $43
B9_1b6a:	.db $44
B9_1b6b:		eor $00			; 45 00
B9_1b6d:		.db $00				; 00
B9_1b6e:	.db $63
B9_1b6f:	.db $64
B9_1b70:	.db $63
B9_1b71:	.db $64
B9_1b72:	.db $3d $70 $00
B9_1b75:		.db $00				; 00
B9_1b76:		.db $00				; 00
B9_1b77:		tay				; a8 
B9_1b78:	.db $52
B9_1b79:	.db $53
B9_1b7a:	.db $53
B9_1b7b:		eor $56, x		; 55 56
B9_1b7d:		rts				; 60 


B9_1b7e:		and $0171, x	; 3d 71 01
B9_1b81:	.db $02
B9_1b82:	.db $03
B9_1b83:		.db $00				; 00
B9_1b84:		adc #$3d		; 69 3d
B9_1b86:		.db $00				; 00
B9_1b87:		tay				; a8 
B9_1b88:	.db $52
B9_1b89:	.db $53
B9_1b8a:	.db $53
B9_1b8b:		eor $56, x		; 55 56
B9_1b8d:		rts				; 60 


B9_1b8e:		and $3d70, x	; 3d 70 3d
B9_1b91:		bvs B9_1bd0 ; 70 3d

B9_1b93:		bvs B9_1b95 ; 70 00

B9_1b95:		.db $00				; 00
B9_1b96:		rol $61			; 26 61
B9_1b98:	.db $62
B9_1b99:		.db $00				; 00
B9_1b9a:		.db $00				; 00
B9_1b9b:		adc $66			; 65 66
B9_1b9d:		and $103d, x	; 3d 3d 10
B9_1ba0:		ora ($12), y	; 11 12
B9_1ba2:	.db $13
B9_1ba3:	.db $14
B9_1ba4:		ora $3d, x		; 15 3d
B9_1ba6:		rol $61			; 26 61
B9_1ba8:	.db $62
B9_1ba9:		.db $00				; 00
B9_1baa:		.db $00				; 00
B9_1bab:		adc $66			; 65 66
B9_1bad:		and $70b5, x	; 3d b5 70
B9_1bb0:		and $b570, x	; 3d 70 b5
B9_1bb3:		bvs B9_1bb5 ; 70 00

B9_1bb5:		.db $00				; 00
B9_1bb6:		tay				; a8 
B9_1bb7:		adc ($04), y	; 71 04
B9_1bb9:		.db $00				; 00
B9_1bba:		sty $3d76		; 8c 76 3d
B9_1bbd:		and $2120, x	; 3d 20 21
B9_1bc0:	.db $22
B9_1bc1:	.db $23
B9_1bc2:		bit $25			; 24 25
B9_1bc4:		and $71a8, x	; 3d a8 71
B9_1bc7:	.db $04
B9_1bc8:		.db $00				; 00
B9_1bc9:	.db $83
B9_1bca:		ror $3d, x		; 76 3d
B9_1bcc:		rts				; 60 


B9_1bcd:		asl $00			; 06 00
B9_1bcf:	.db $83
B9_1bd0:		rol $aa			; 26 aa
B9_1bd2:		pha				; 48 
B9_1bd3:	.db $04
B9_1bd4:		.db $00				; 00
B9_1bd5:		sty $3d49		; 8c 49 3d
B9_1bd8:		and $3130, x	; 3d 30 31
B9_1bdb:	.db $32
B9_1bdc:	.db $33
B9_1bdd:	.db $34
B9_1bde:		and $3d, x		; 35 3d
B9_1be0:		tax				; aa 
B9_1be1:		pha				; 48 
B9_1be2:	.db $04
B9_1be3:		.db $00				; 00
B9_1be4:		sty $49			; 84 49
B9_1be6:		and $6d6c, x	; 3d 6c 6d
B9_1be9:		asl $00			; 06 00
B9_1beb:	.db $82
B9_1bec:		lda #$58		; a9 58
B9_1bee:	.db $04
B9_1bef:		.db $00				; 00
B9_1bf0:		sty $6759		; 8c 59 67
B9_1bf3:		and $0706, x	; 3d 06 07
B9_1bf6:		php				; 08 
B9_1bf7:		ora #$0a		; 09 0a
B9_1bf9:	.db $0b
B9_1bfa:		and $58a9, x	; 3d a9 58
B9_1bfd:	.db $04
B9_1bfe:		.db $00				; 00
B9_1bff:		sta $59			; 85 59
B9_1c01:	.db $67
B9_1c02:	.db $6b
B9_1c03:		txa				; 8a 
B9_1c04:		rts				; 60 


B9_1c05:	.db $04
B9_1c06:		.db $00				; 00
B9_1c07:	.db $83
B9_1c08:		rol $3d			; 26 3d
B9_1c0a:		adc ($04), y	; 71 04
B9_1c0c:		.db $00				; 00
B9_1c0d:		sty $5969		; 8c 69 59
B9_1c10:		and $1716, x	; 3d 16 17
B9_1c13:		clc				; 18 
B9_1c14:		ora $1b1a, y	; 19 1a 1b
B9_1c17:		and $713d, x	; 3d 3d 71
B9_1c1a:	.db $04
B9_1c1b:		.db $00				; 00
B9_1c1c:		sty $5969		; 8c 69 59
B9_1c1f:		pla				; 68 
B9_1c20:		ror a			; 6a
B9_1c21:	.db $6c $6d $00
B9_1c24:		.db $00				; 00
B9_1c25:		.db $00				; 00
B9_1c26:	.db $47
B9_1c27:		and $0458, x	; 3d 58 04
B9_1c2a:		.db $00				; 00
B9_1c2b:		sty $3d49		; 8c 49 3d
B9_1c2e:		and $2771, x	; 3d 71 27
B9_1c31:		plp				; 28 
B9_1c32:		and #$00		; 29 00
B9_1c34:		eor #$3d		; 49 3d
B9_1c36:		and $0458, x	; 3d 58 04
B9_1c39:		.db $00				; 00
B9_1c3a:		inc $3d49, x	; fe 49 3d
B9_1c3d:		adc $6b68		; 6d 68 6b
B9_1c40:		txa				; 8a 
B9_1c41:		.db $00				; 00
B9_1c42:		.db $00				; 00
B9_1c43:	.db $64
B9_1c44:	.db $77
B9_1c45:		tax				; aa 
B9_1c46:		rol $af, x		; 36 af
B9_1c48:		lda #$af		; a9 af
B9_1c4a:		tay				; a8 
B9_1c4b:		adc $6c59, y	; 79 59 6c
B9_1c4e:		rol $37, x		; 36 37
B9_1c50:		sec				; 38 
B9_1c51:		and $7937, y	; 39 37 79
B9_1c54:		and $36aa, x	; 3d aa 36
B9_1c57:	.db $af
B9_1c58:		lda #$af		; a9 af
B9_1c5a:		lda #$79		; a9 79
B9_1c5c:		eor $6b69, y	; 59 69 6b
B9_1c5f:		pla				; 68 
B9_1c60:		ror a			; 6a
B9_1c61:	.db $ab
B9_1c62:		adc $6c2a		; 6d 2a 6c
B9_1c65:		lda #$6c		; a9 6c
B9_1c67:		jmp ($ab3d)		; 6c 3d ab


B9_1c6a:		jmp ($3d6c)		; 6c 6c 3d


B9_1c6d:		rol a			; 2a
B9_1c6e:		and $1c3d, x	; 3d 3d 1c
B9_1c71:		ora $787a, x	; 1d 7a 78
B9_1c74:		and $6dab, x	; 3d ab 6d
B9_1c77:		rol a			; 2a
B9_1c78:	.db $77
B9_1c79:	.db $ab
B9_1c7a:		and $893d, x	; 3d 3d 89
B9_1c7d:		rol a			; 2a
B9_1c7e:		jmp ($686c)		; 6c 6c 68


B9_1c81:	.db $67
B9_1c82:	.db $6b
B9_1c83:		ror a			; 6a
B9_1c84:	.db $6b
B9_1c85:	.db $6c $00 $00
B9_1c88:		.db $00				; 00
B9_1c89:		jmp ($6d77)		; 6c 77 6d


B9_1c8c:	.db $67
B9_1c8d:		jmp ($2d2c)		; 6c 2c 2d


B9_1c90:		rol $2f2e		; 2e 2e 2f
B9_1c93:		lda $89, x		; b5 89
B9_1c95:	.db $67
B9_1c96:	.db $6b
B9_1c97:		ror a			; 6a
B9_1c98:	.db $6b
B9_1c99:		txa				; 8a 
B9_1c9a:		sei				; 78 
B9_1c9b:		and $6c3d, x	; 3d 3d 6c
B9_1c9e:		rol a			; 2a
B9_1c9f:	.db $77
B9_1ca0:		rol a			; 2a
B9_1ca1:		adc $a9, x		; 75 a9
B9_1ca3:		lda #$a8		; a9 a8
B9_1ca5:	.db $af
B9_1ca6:		tay				; a8 
B9_1ca7:	.db $af
B9_1ca8:		tay				; a8 
B9_1ca9:		tay				; a8 
B9_1caa:		lda #$75		; a9 75
B9_1cac:		adc $73, x		; 75 73
B9_1cae:	.db $74
B9_1caf:	.db $73
B9_1cb0:	.db $74
B9_1cb1:		adc $73, x		; 75 73
B9_1cb3:	.db $73
B9_1cb4:	.db $74
B9_1cb5:		adc $75, x		; 75 75
B9_1cb7:	.db $73
B9_1cb8:	.db $74
B9_1cb9:	.db $92
B9_1cba:		adc $73, x		; 75 73
B9_1cbc:		lda #$aa		; a9 aa
B9_1cbe:	.db $af
B9_1cbf:		tay				; a8 
B9_1cc0:	.db $af
B9_1cc1:		tay				; a8 
B9_1cc2:		lda ($72), y	; b1 72
B9_1cc4:	.db $72
B9_1cc5:	.db $af
B9_1cc6:		tax				; aa 
B9_1cc7:		tax				; aa 
B9_1cc8:		tax				; aa 
B9_1cc9:	.db $72
B9_1cca:	.db $af
B9_1ccb:		lda ($09), y	; b1 09
B9_1ccd:	.db $72
B9_1cce:		sta ($b1, x)	; 81 b1
B9_1cd0:		ora $72			; 05 72
B9_1cd2:	.db $8f
B9_1cd3:		lda ($72), y	; b1 72
B9_1cd5:		lda ($af), y	; b1 af
B9_1cd7:		tax				; aa 
B9_1cd8:		tax				; aa 
B9_1cd9:	.db $af
B9_1cda:	.db $67
B9_1cdb:	.db $77
B9_1cdc:		and $ab3d, x	; 3d 3d ab
B9_1cdf:	.db $af
B9_1ce0:	.db $ab
B9_1ce1:	.db $89
B9_1ce2:		ora $3d			; 05 3d
B9_1ce4:	.db $83
B9_1ce5:		sei				; 78 
B9_1ce6:	.db $77
B9_1ce7:	.db $77
B9_1ce8:	.db $04
B9_1ce9:		and $7784, x	; 3d 84 77
B9_1cec:	.db $77
B9_1ced:	.db $7a
B9_1cee:		sei				; 78 
B9_1cef:	.db $04
B9_1cf0:		and $77fe, x	; 3d fe 77
B9_1cf3:		lda #$ab		; a9 ab
B9_1cf5:		sei				; 78 
B9_1cf6:		pla				; 68 
B9_1cf7:	.db $6b
B9_1cf8:		txa				; 8a 
B9_1cf9:		jmp ($9189)		; 6c 89 91


B9_1cfc:	.db $92
B9_1cfd:		and $913d, x	; 3d 3d 91
B9_1d00:	.db $92
B9_1d01:	.db $77
B9_1d02:	.db $7a
B9_1d03:	.db $7a
B9_1d04:	.db $77
B9_1d05:	.db $7a
B9_1d06:	.db $77
B9_1d07:		sei				; 78 
B9_1d08:	.db $89
B9_1d09:		and $913d, x	; 3d 3d 91
B9_1d0c:	.db $92
B9_1d0d:		and $913d, x	; 3d 3d 91
B9_1d10:	.db $92
B9_1d11:	.db $77
B9_1d12:	.db $89
B9_1d13:		sta ($92), y	; 91 92
B9_1d15:	.db $77
B9_1d16:		lsr $4e4b		; 4e 4b 4e
B9_1d19:	.db $4f
B9_1d1a:	.db $3d $00 $00
B9_1d1d:	.db $3d $3d $00
B9_1d20:		.db $00				; 00
B9_1d21:		eor $0e0c, y	; 59 0c 0e
B9_1d24:		asl $0e0f		; 0e 0f 0e
B9_1d27:		asl $0d0f		; 0e 0f 0d
B9_1d2a:	.db $3d $00 $00
B9_1d2d:	.db $3d $3d $00
B9_1d30:		.db $00				; 00
B9_1d31:	.db $67
B9_1d32:		lsr a			; 4a
B9_1d33:		lsr $4b4b		; 4e 4b 4b
B9_1d36:	.db $5b
B9_1d37:		sta $5f5e		; 8d 5e 5f
B9_1d3a:		and $8e8e, x	; 3d 8e 8e
B9_1d3d:		and $8e3d, x	; 3d 3d 8e
B9_1d40:		stx $8c7a		; 8e 7a 8c
B9_1d43:		asl $7878, x	; 1e 78 78
B9_1d46:	.db $77
B9_1d47:	.db $7a
B9_1d48:	.db $1f
B9_1d49:		.db $00				; 00
B9_1d4a:	.db $77
B9_1d4b:		stx $3d8e		; 8e 8e 3d
B9_1d4e:		and $8e8e, x	; 3d 8e 8e
B9_1d51:	.db $77
B9_1d52:	.db $5a
B9_1d53:	.db $6f
B9_1d54:	.db $5b
B9_1d55:		lsr $4b4b, x	; 5e 4b 4b
B9_1d58:		lsr $4e4b		; 4e 4b 4e
B9_1d5b:	.db $4f
B9_1d5c:		tax				; aa 
B9_1d5d:		lda #$af		; a9 af
B9_1d5f:		tax				; aa 
B9_1d60:	.db $77
B9_1d61:		sty $3c3b		; 8c 3b 3c
B9_1d64:	.db $3b
B9_1d65:	.db $3c
B9_1d66:	.db $3b
B9_1d67:	.db $3c
B9_1d68:	.db $3b
B9_1d69:	.db $3c
B9_1d6a:		jmp ($a978)		; 6c 78 a9


B9_1d6d:		jmp ($4e4a)		; 6c 4a 4e


B9_1d70:		dec $4b			; c6 4b
B9_1d72:		lsr $4b4b		; 4e 4b 4b
B9_1d75:		lsr $5b4e		; 4e 4e 5b
B9_1d78:		lsr $5e6f, x	; 5e 6f 5e
B9_1d7b:		lsr $ab5f, x	; 5e 5f ab
B9_1d7e:		sei				; 78 
B9_1d7f:	.db $77
B9_1d80:	.db $ab
B9_1d81:		jmp ($3c3c)		; 6c 3c 3c


B9_1d84:	.db $3b
B9_1d85:	.db $3c
B9_1d86:	.db $3c
B9_1d87:	.db $3c
B9_1d88:	.db $3b
B9_1d89:	.db $3c
B9_1d8a:	.db $3c
B9_1d8b:	.db $3b
B9_1d8c:		lda $6c, x		; b5 6c
B9_1d8e:		.db $00				; 00
B9_1d8f:	.db $5a
B9_1d90:	.db $6f
B9_1d91:	.db $5b
B9_1d92:	.db $6f
B9_1d93:	.db $5b
B9_1d94:		lsr $5b8d, x	; 5e 8d 5b
B9_1d97:		ror $7e7f, x	; 7e 7f 7e
B9_1d9a:	.db $7f
B9_1d9b:		ror $7e7f, x	; 7e 7f 7e
B9_1d9e:	.db $7f
B9_1d9f:		ror $7e7f, x	; 7e 7f 7e
B9_1da2:	.db $7f
B9_1da3:		ror $7e7f, x	; 7e 7f 7e
B9_1da6:	.db $7f
B9_1da7:		ror $7e7f, x	; 7e 7f 7e
B9_1daa:	.db $7f
B9_1dab:		ror $7e7f, x	; 7e 7f 7e
B9_1dae:	.db $7f
B9_1daf:		ror $7e7f, x	; 7e 7f 7e
B9_1db2:	.db $7f
B9_1db3:		ror $7e7f, x	; 7e 7f 7e
B9_1db6:	.db $7f
B9_1db7:		rts				; 60 


B9_1db8:		.db $00				; 00
B9_1db9:	.db $82
B9_1dba:	.db $ff
B9_1dbb:	.db $ff
B9_1dbc:	.db $04
B9_1dbd:	.db $5f
B9_1dbe:		sty $df			; 84 df
B9_1dc0:	.db $ff
B9_1dc1:	.db $ff
B9_1dc2:	.db $57
B9_1dc3:	.db $04
B9_1dc4:		eor $8f, x		; 55 8f
B9_1dc6:		eor $7fff, x	; 5d ff 7f
B9_1dc9:		eor $55, x		; 55 55
B9_1dcb:		tax				; aa 
B9_1dcc:		tax				; aa 
B9_1dcd:		eor $55, x		; 55 55
B9_1dcf:	.db $5f
B9_1dd0:		eor $55, x		; 55 55
B9_1dd2:		eor $9a, x		; 55 9a
B9_1dd4:		ror a			; 6a
B9_1dd5:		asl $55			; 06 55
B9_1dd7:	.db $82
B9_1dd8:		eor $0656, y	; 59 56 06
B9_1ddb:		eor $8b, x		; 55 8b
B9_1ddd:		lda $a5			; a5 a5
B9_1ddf:		eor $55, x		; 55 55
B9_1de1:		eor $05, x		; 55 05
B9_1de3:		ora $09			; 05 09
B9_1de5:		asl a			; 0a
B9_1de6:		asl a			; 0a
B9_1de7:		asl $0a			; 06 0a
B9_1de9:		.db $05