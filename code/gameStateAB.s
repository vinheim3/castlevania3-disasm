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
	.dw gameStateA_substateB
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
B3_0fa9:		jsr func_1f_0c04		; 20 04 ec
B3_0fac:		ldy #$00		; a0 00
B3_0fae:		jsr $b28d		; 20 8d b2
B3_0fb1:		jsr setBank_c000_toRom07h		; for dpcm
B3_0fb4:		jsr $b1c7		; 20 c7 b1
B3_0fb7:		jsr $b066		; 20 66 b0
B3_0fba:		lda #$03		; a9 03
B3_0fbc:		sta $1c			; 85 1c
B3_0fbe:		inc wGameSubstate			; e6 19
B3_0fc0:		rts				; 60 


B3_0fc1:		lda $1d			; a5 1d
B3_0fc3:		sta $15			; 85 15
B3_0fc5:		jsr $b598		; 20 98 b5
B3_0fc8:		jsr func_1f_1ba4		; 20 a4 fb
B3_0fcb:		lda $b4			; a5 b4
B3_0fcd:		cmp #$ff		; c9 ff
B3_0fcf:		bne B3_0fdf ; d0 0e

B3_0fd1:		lda #$00		; a9 00
B3_0fd3:		ldx $15			; a6 15
B3_0fd5:		sta wVramQueue.w, x	; 9d 00 03
B3_0fd8:		stx wVramQueueNextIdxToFill			; 86 1d
B3_0fda:		jsr $b675		; 20 75 b6
B3_0fdd:		inc wGameSubstate			; e6 19
B3_0fdf:		rts				; 60 


B3_0fe0:		jsr $b06e		; 20 6e b0
B3_0fe3:		lda wJoy1NewButtonsPressed			; a5 26
B3_0fe5:		and #$10		; 29 10
B3_0fe7:		bne B3_0fed ; d0 04

B3_0fe9:		lda $2d			; a5 2d
B3_0feb:		beq B3_1006 ; f0 19

B3_0fed:		ldy #$00		; a0 00
B3_0fef:		sty $2d			; 84 2d
B3_0ff1:		inc wGameSubstate			; e6 19
B3_0ff3:		rts				; 60 


B3_0ff4:		ldy $6b			; a4 6b
B3_0ff6:		bne B3_1007 ; d0 0f

B3_0ff8:		lda #$07		; a9 07
B3_0ffa:		sta $0160		; 8d 60 01
B3_0ffd:		jsr $b066		; 20 66 b0
B3_1000:		lda #$78		; a9 78
B3_1002:		sta wGenericStateTimer			; 85 30
B3_1004:		inc wGameSubstate			; e6 19
B3_1006:		rts				; 60 


B3_1007:		inc wGameSubstate			; e6 19
B3_1009:		jmp $b066		; 4c 66 b0


B3_100c:		lda #$02		; a9 02
B3_100e:		sta wGameSubstate			; 85 19
B3_1010:		rts				; 60 


B3_1011:		jsr $b17a		; 20 7a b1
B3_1014:		lda #$00		; a9 00
B3_1016:		sta $0401		; 8d 01 04
B3_1019:		lda $6b			; a5 6b
B3_101b:		bne B3_1047 ; d0 2a

B3_101d:		dec wGenericStateTimer			; c6 30
B3_101f:		beq B3_1050 ; f0 2f

B3_1021:		lda $b4			; a5 b4
B3_1023:		cmp #$ff		; c9 ff
B3_1025:		beq B3_105c ; f0 35

B3_1027:		lda wGenericStateTimer			; a5 30
B3_1029:		cmp #$30		; c9 30
B3_102b:		bcs B3_105c ; b0 2f

B3_102d:		lda $1d			; a5 1d
B3_102f:		sta $15			; 85 15
B3_1031:		jsr $b598		; 20 98 b5
B3_1034:		jsr func_1f_1baf		; 20 af fb
B3_1037:		lda $b4			; a5 b4
B3_1039:		cmp #$ff		; c9 ff
B3_103b:		bne B3_105c ; d0 1f

B3_103d:		lda #$00		; a9 00
B3_103f:		ldx $15			; a6 15
B3_1041:		sta wVramQueue.w, x	; 9d 00 03
B3_1044:		stx wVramQueueNextIdxToFill			; 86 1d
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
B3_105a:		sta wGameSubstate			; 85 19
B3_105c:		rts				; 60 


B3_105d:		lda #$ff		; a9 ff
B3_105f:		sta $3a			; 85 3a
B3_1061:		lda #GS_INTRO_CUTSCENE		; a9 09
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
B3_1132:		lda wJoy1ButtonsPressed			; a5 28
B3_1134:		and #$0f		; 29 0f
B3_1136:		beq B3_1142 ; f0 0a

B3_1138:		ldy $07b0		; ac b0 07
B3_113b:		iny				; c8 
B3_113c:		cpy #$0e		; c0 0e
B3_113e:		bcc B3_1142 ; 90 02

B3_1140:		ldy #$00		; a0 00
B3_1142:		sty $07b0		; 8c b0 07
B3_1145:		lda wJoy1ButtonsPressed			; a5 28
B3_1147:		bcs B3_114b ; b0 02

B3_1149:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_1170:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_1173:		rts				; 60 


B3_1174:		lda #$00		; a9 00
B3_1176:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_1179:		rts				; 60 


B3_117a:		jsr $b190		; 20 90 b1
B3_117d:		ldy #$f8		; a0 f8
B3_117f:		inc wEntityTimeUntilNextAnimation.w, x	; fe 7c 05
B3_1182:		lda wEntityTimeUntilNextAnimation.w, x	; bd 7c 05
B3_1185:		and #$08		; 29 08
B3_1187:		bne B3_118b ; d0 02

B3_1189:		ldy #$fa		; a0 fa
B3_118b:		tya				; 98 
B3_118c:		sta wOamSpecIdx.w, x	; 9d 00 04
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
B3_11ae:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_11b1:		lda $01			; a5 01
B3_11b3:		sta wEntityBaseX.w, x	; 9d 38 04
B3_11b6:		lda $b1c3, y	; b9 c3 b1
B3_11b9:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_11bc:		lda $b1c5, y	; b9 c5 b1
B3_11bf:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_11c2:		rts				; 60 


B3_11c3:	.db $0c
B3_11c4:	.db $0c
B3_11c5:	.db $23
B3_11c6:		.db $00				; 00
B3_11c7:		ldx #$00		; a2 00
B3_11c9:		lda $b1d4, x	; bd d4 b1
B3_11cc:		sta wChrBanks, x		; 95 46
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
B3_11dc:		lda wJoy1NewButtonsPressed			; a5 26
B3_11de:		and #$c0		; 29 c0
B3_11e0:		beq B3_122e ; f0 4c

B3_11e2:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_12c0:		jsr func_1f_0bd5		; 20 d5 eb
B3_12c3:		jsr $b675		; 20 75 b6
B3_12c6:		jsr $b28b		; 20 8b b2
B3_12c9:		lda #$02		; a9 02
B3_12cb:		sta $1c			; 85 1c
B3_12cd:		jsr $b625		; 20 25 b6
B3_12d0:		jsr $b066		; 20 66 b0
B3_12d3:		inc wGameSubstate			; e6 19
B3_12d5:		jmp $b1c7		; 4c c7 b1


B3_12d8:		lda $b4			; a5 b4
B3_12da:		cmp #$ff		; c9 ff
B3_12dc:		beq B3_12f8 ; f0 1a

B3_12de:		lda $1d			; a5 1d
B3_12e0:		sta $15			; 85 15
B3_12e2:		jsr $b598		; 20 98 b5
B3_12e5:		jsr func_1f_1ba4		; 20 a4 fb
B3_12e8:		lda $b4			; a5 b4
B3_12ea:		cmp #$ff		; c9 ff
B3_12ec:		bne B3_1338 ; d0 4a

B3_12ee:		lda #$00		; a9 00
B3_12f0:		ldx $15			; a6 15
B3_12f2:		sta wVramQueue.w, x	; 9d 00 03
B3_12f5:		stx wVramQueueNextIdxToFill			; 86 1d
B3_12f7:		rts				; 60 


B3_12f8:		inc wGameSubstate			; e6 19
B3_12fa:		jsr $b48d		; 20 8d b4
B3_12fd:		jmp $b471		; 4c 71 b4


B3_1300:		jsr $b3db		; 20 db b3
B3_1303:		jsr $b50c		; 20 0c b5
B3_1306:		jsr $b3b9		; 20 b9 b3
B3_1309:		lda wJoy1NewButtonsPressed			; a5 26
B3_130b:		and #$30		; 29 30
B3_130d:		bne B3_1313 ; d0 04

B3_130f:		lda $2d			; a5 2d
B3_1311:		beq B3_1338 ; f0 25

B3_1313:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_132d:		sta wGameSubstate			; 85 19
B3_132f:		lda #$23		; a9 23
B3_1331:		jsr displayStaticLayoutA		; 20 e9 ec
B3_1334:		lda #$78		; a9 78
B3_1336:		sta wGenericStateTimer			; 85 30
B3_1338:		rts				; 60 


B3_1339:		lda #$78		; a9 78
B3_133b:		sta wGenericStateTimer			; 85 30
B3_133d:		lda #$07		; a9 07
B3_133f:		sta $0160		; 8d 60 01
B3_1342:		lda #$0a		; a9 0a
B3_1344:		sta wGameSubstate			; 85 19
B3_1346:		jmp $b066		; 4c 66 b0


B3_1349:		jsr $b066		; 20 66 b0
B3_134c:		lda #$0b		; a9 0b
B3_134e:		sta wGameSubstate			; 85 19
B3_1350:		rts				; 60 


B3_1351:		lda #$22		; a9 22
B3_1353:		jsr func_03_13ab		; 20 ab b3
B3_1356:		dec wGenericStateTimer			; c6 30
B3_1358:		bne B3_1350 ; d0 f6

B3_135a:		jsr $b066		; 20 66 b0
B3_135d:		lda #$0c		; a9 0c
B3_135f:		sta wGameSubstate			; 85 19
B3_1361:		lda #$00		; a9 00
B3_1363:		sta $1d			; 85 1d
B3_1365:		jmp $b682		; 4c 82 b6


B3_1368:		lda $b4			; a5 b4
B3_136a:		cmp #$ff		; c9 ff
B3_136c:		beq B3_1378 ; f0 0a

B3_136e:		lda $1d			; a5 1d
B3_1370:		sta $15			; 85 15
B3_1372:		jsr $b598		; 20 98 b5
B3_1375:		jsr func_1f_1baf		; 20 af fb
B3_1378:		dec wGenericStateTimer			; c6 30
B3_137a:		bne B3_1350 ; d0 d4

B3_137c:		lda #GS_0e		; a9 0e
B3_137e:		jmp setNewGameState		; 4c 74 e5


B3_1381:		lda $1d			; a5 1d
B3_1383:		sta $15			; 85 15
B3_1385:		jsr $b598		; 20 98 b5
B3_1388:		jsr func_1f_1baf		; 20 af fb
B3_138b:		lda $b4			; a5 b4
B3_138d:		cmp #$ff		; c9 ff
B3_138f:		bne B3_13aa ; d0 19

B3_1391:		lda #$06		; a9 06
B3_1393:		sta wGameSubstate			; 85 19
B3_1395:		rts				; 60 


gameStateA_substateB:
B3_1396:		lda $1d			; a5 1d
B3_1398:		sta $15			; 85 15
B3_139a:		jsr $b598		; 20 98 b5
B3_139d:		jsr func_1f_1baf		; 20 af fb
B3_13a0:		lda $b4			; a5 b4
B3_13a2:		cmp #$ff		; c9 ff
B3_13a4:		bne B3_13aa ; d0 04

B3_13a6:		lda #$01		; a9 01
B3_13a8:		sta wGameSubstate			; 85 19
B3_13aa:		rts				; 60 


func_03_13ab:
B3_13ab:		sta $00			; 85 00
B3_13ad:		lda wGenericStateTimer			; a5 30
B3_13af:		and #$10		; 29 10
B3_13b1:		asl a			; 0a
B3_13b2:		asl a			; 0a
B3_13b3:		asl a			; 0a
B3_13b4:		ora $00			; 05 00
B3_13b6:		jmp displayStaticLayoutA		; 4c e9 ec


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
B3_13e1:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_1405:		sta wEntityBaseX.w, x	; 9d 38 04
B3_1408:		lda #$50		; a9 50
B3_140a:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_140d:		inx				; e8 
B3_140e:		iny				; c8 
B3_140f:		cpx #$05		; e0 05
B3_1411:		bcc B3_13ff ; 90 ec

B3_1413:		rts				; 60 


B3_1414:		lda $b427, y	; b9 27 b4
B3_1417:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_141a:		lda $b42b, y	; b9 2b b4
B3_141d:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_1420:		lda $b42f, y	; b9 2f b4
B3_1423:		sta wEntityPaletteOverride.w, x	; 9d 54 04
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
B3_151d:		sta wEntityBaseY.w, x	; 9d 1c 04
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
B3_152f:		sta wEntityBaseX.w, x	; 9d 38 04
B3_1532:		rts				; 60 


B3_1533:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_1550:		lda wJoy1NewButtonsPressed			; a5 26
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
B3_1589:		lda wEntityBaseX.w		; ad 38 04
B3_158c:		sta wEntityBaseX.w, x	; 9d 38 04
B3_158f:		lda wEntityBaseY.w		; ad 1c 04
B3_1592:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_1595:		jmp $b414		; 4c 14 b4


B3_1598:		lda #$1e		; a9 1e
B3_159a:		jsr displayStaticLayoutA		; 20 e9 ec
B3_159d:		lda #$04		; a9 04
B3_159f:		jmp displayStaticLayoutA		; 4c e9 ec


gameStateB_body:
B3_15a2:		lda wGameSubstate			; a5 19
B3_15a4:		jsr jumpTablePreserveY		; 20 6d e8
	.dw $b5ad
	.dw $b5e4
	.dw gameStateB_substate2

B3_15ad:		lda #$44
B3_15af:		sta wNametableMapping			; 85 25
B3_15b1:		sta NAMETABLE_MAPPING.w		; 8d 05 51
B3_15b4:		jsr func_1f_0bfd		; 20 fd eb
B3_15b7:		lda #$98		; a9 98
B3_15b9:		ldx #$1a		; a2 1a
B3_15bb:		jsr func_1f_0bd5		; 20 d5 eb
B3_15be:		jsr setBank_c000_toRom07h		; 20 d6 e2
B3_15c1:		lda #$62		; a9 62
B3_15c3:		jsr playSound		; 20 5f e2
B3_15c6:		inc wGameSubstate			; e6 19
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
B3_15f1:		jsr func_1f_1ba4		; 20 a4 fb
B3_15f4:		lda $b4			; a5 b4
B3_15f6:		cmp #$ff		; c9 ff
B3_15f8:		bne B3_160f ; d0 15

B3_15fa:		lda #$00		; a9 00
B3_15fc:		ldx $15			; a6 15
B3_15fe:		stx wVramQueueNextIdxToFill			; 86 1d
B3_1600:		sta wVramQueue.w, x	; 9d 00 03
B3_1603:		rts				; 60 


B3_1604:		lda wJoy1NewButtonsPressed			; a5 26
B3_1606:		and #$10		; 29 10
B3_1608:		beq B3_160f ; f0 05

B3_160a:		jsr $b066		; 20 66 b0
B3_160d:		inc wGameSubstate			; e6 19
B3_160f:		rts				; 60 


gameStateB_substate2:
B3_1610:		lda $b4			; a5 b4
B3_1612:		cmp #$ff		; c9 ff
B3_1614:		beq B3_1620 ; f0 0a

B3_1616:		lda $1d			; a5 1d
B3_1618:		sta $15			; 85 15
B3_161a:		jsr $b598		; 20 98 b5
B3_161d:		jmp func_1f_1baf		; 4c af fb

B3_1620:		lda #GS_INTRO		; a9 00
B3_1622:		jmp setNewGameState		; 4c 74 e5


B3_1625:		ldx #$00		; a2 00
B3_1627:		lda #$00		; a9 00
B3_1629:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_162c:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_162f:		sta wEntityBaseX.w, x	; 9d 38 04
B3_1632:		sta wEntityPaletteOverride.w, x	; 9d 54 04
B3_1635:		sta $0470, x	; 9d 70 04
B3_1638:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_163b:		sta wEntityFacingLeft.w, x	; 9d a8 04
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
B3_1951:		sta wOamSpecIdx.w, x	; 9d 00 04
B3_1954:		lda $b97e, y	; b9 7e b9
B3_1957:		sta wEntityOamSpecGroupDoubled.w, x	; 9d 8c 04
B3_195a:		ldy $00			; a4 00
B3_195c:		lda $07a0, y	; b9 a0 07
B3_195f:		and #$3c		; 29 3c
B3_1961:		lsr a			; 4a
B3_1962:		tay				; a8 
B3_1963:		lda $b986, y	; b9 86 b9
B3_1966:		sta wEntityBaseY.w, x	; 9d 1c 04
B3_1969:		lda $b987, y	; b9 87 b9
B3_196c:		sta wEntityBaseX.w, x	; 9d 38 04
B3_196f:		lda #$00		; a9 00
B3_1971:		sta wEntityPaletteOverride.w, x	; 9d 54 04
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
