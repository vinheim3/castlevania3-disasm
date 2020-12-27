
entityScripts_6b:
	sc_incPhaseWhenAlarm0
	.db $a1 $00 $00 $00
	.db $a2 $00 $00 $00

entityScripts_6c:
	.db $0b $0e $46 $00
	.db $45 $0f $00 $00
	.db $46 $00 $00 $00

entityScripts_2c:
	.db $88 $3a $00 $00
	.db $77 $00 $00 $00
	.db $76 $00 $00 $00
	.db $78 $00 $00 $00

entityScripts_2d:
	.db $88 $42 $00 $00
	sc_stub3
	.db $79 $00 $00 $00

entityScripts_2e:
	.db $88 $42 $00 $00
	sc_stub3
	.db $79 $00 $00 $00

entityScripts_61:
	.db $7a $00 $00 $00

entityScripts_64:
	.db $8b $00 $00 $00
	.db $84 $00 $00 $00
	.db $85 $00 $00 $00
	.db $86 $00 $00 $00

entityScripts_6f:
	.db $a5 $00 $00 $00
	.db $84 $00 $00 $00
	.db $85 $00 $00 $00
	.db $86 $00 $00 $00

entityScripts_01:
	.db $07 $00 $80 $00
	.db $1c $00 $00 $00
	.db $1d $00 $01 $00

entityScripts_24:
	.db $5d $00 $00 $00
	.db $07 $00 $80 $00
	.db $1c $00 $00 $00
	.db $1d $01 $01 $00

entityScripts_70:
	.db $a6 $00 $a0 $00
	.db $1c $00 $00 $00
	.db $1d $00 $01 $00

entityScripts_02:
	.db $09 $00 $00 $00
	sc_facePlayer
	.db $0b $08 $06 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	.db $0b $08 $08 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $08 $00 $00 $00
	.db $07 $00 $80 $00
	.db $1c $00 $00 $00
	.db $1d $09 $01 $00
	sc_setStateNotMoving
	.db $0b $08 $08 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $0b $08 $06 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_07:
	.db $2d $00 $00 $00
	sc_moveToPlayerSetHorizSpeeds $0110
	.db $95 $00 $00 $00
	.db $9c $07 $00 $08
	.db $9d $00 $00 $00

entityScripts_6d:
	.db $2d $00 $00 $00
	sc_moveToPlayerSetHorizSpeeds $0110
	sc_animateGroupAndDefIdx $08 $27
	.db $a3 $00 $00 $00
	.db $a4 $00 $00 $00

entityScripts_1e:
	.db $6e $00 $00 $00
	.db $0b $08 $3e $00
	.db $9f $00 $00 $00
	.db $26 $08 $04 $00
	.db $23 $03 $04 $00
	.db $52 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $24
	sc_incPhaseWhenAlarm0
	.db $52 $00 $00 $00
	.db $08 $01 $00 $00
	sc_incPhaseWhenAlarm0
	sc_setPhase $01

entityScripts_12:
	.db $6e $00 $00 $00
	.db $0b $08 $3e $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	.db $26 $08 $04 $00
	.db $23 $03 $04 $00
	.db $26 $04 $08 $00
	.db $25 $28 $24 $00
	sc_setPhase $02

entityScripts_2f:
	.db $6e $00 $00 $00
	.db $0b $08 $40 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	.db $26 $08 $04 $00
	.db $23 $03 $04 $00
	.db $26 $04 $08 $00
	.db $25 $28 $24 $00
	sc_setPhase $02

entityScripts_69:
	.db $2d $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $0b $08 $4c $00
	.db $93 $00 $00 $00
	.db $94 $00 $00 $00
	.db $21 $00 $00 $00
	.db $0b $08 $4e $00
	.db $10 $00 $00 $00
	.db $0b $08 $4c $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $06

entityScripts_0e:
	sc_setStateNotMoving
	.db $91 $00 $00 $00
	.db $06 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $28
	sc_incPhaseWhenAlarm0
	.db $21 $00 $00 $00
	.db $0b $08 $4e $00
	.db $10 $00 $00 $00
	.db $0b $08 $4c $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $05

entityScripts_05:
	.db $07 $01 $40 $00
	.db $11 $04 $00 $00
	.db $12 $00 $00 $00

entityScripts_66:
	.db $2d $00 $00 $00
	sc_moveToPlayerSetHorizSpeeds $0140
	sc_animateGroupAndDefIdx $08 $24
	.db $11 $04 $00 $00
	.db $12 $00 $00 $00

entityScripts_06:
	.db $0b $08 $1e $00
	.db $4d $60 $20 $00
	.db $07 $01 $40 $00
	.db $6f $00 $20 $00
	.db $70 $0a $00 $00
	.db $11 $04 $00 $00
	.db $12 $00 $00 $00

entityScripts_6e:
	.db $2d $00 $00 $00
	sc_moveToPlayerSetHorizSpeeds $0140
	sc_animateGroupAndDefIdx $14 $06
	.db $11 $04 $00 $00
	.db $12 $00 $00 $00

entityScripts_63:
	.db $2d $00 $00 $00
	sc_setStateIllusion
	.db $0b $12 $02 $00
	.db $7e $00 $00 $00
	.db $7d $40 $00 $00
	.db $0b $12 $04 $00
	sc_setAlarmOrStartYforSinusoidalMovement $03
	sc_incPhaseWhenAlarm0
	.db $0b $12 $06 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	.db $0b $12 $08 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $83 $00 $00 $00
	sc_setStateMoving
	sc_setAlarmOrStartYforSinusoidalMovement $06
	sc_incPhaseWhenAlarm0
	sc_setStateNotMoving
	sc_setAlarmOrStartYforSinusoidalMovement $04
	sc_incPhaseWhenAlarm0
	sc_setStateMoving
	.db $0b $12 $0a $00
	.db $7f $00 $00 $00
	.db $80 $00 $00 $00
	.db $81 $00 $00 $00
	sc_setStateNotMoving
	sc_facePlayer
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	.db $0b $12 $0a $00
	sc_setStateMoving
	.db $7f $00 $00 $00
	.db $80 $00 $00 $00
	.db $82 $00 $00 $00

entityScripts_65:
	.db $2d $00 $00 $00
	sc_moveToPlayerSetHorizSpeeds $0210
	sc_animateGroupAndDefIdx $12 $08
	.db $0c $40 $00 $00
	.db $92 $00 $00 $00
	sc_incPhaseWhenAlarm0
	.db $0b $12 $76 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	sc_setStateMoving
	sc_animateGroupAndDefIdx $12 $09
	sc_setEntityAIIdxTo0

entityScripts_11:
	.db $28 $00 $00 $00
	.db $29 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $0a
	sc_incPhaseWhenAlarm0
	.db $8f $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $2c $00 $00 $00

entityScripts_2b:
	sc_animateGroupAndDefIdx $12 $05
	sc_moveToPlayerSetHorizSpeeds $0060
	.db $6b $00 $00 $00
	sc_tryToFall
	sc_setPhase $01

entityScripts_71:
	sc_animateGroupAndDefIdx $14 $09
	sc_moveToPlayerSetHorizSpeeds $0090
	.db $6b $00 $00 $00
	sc_tryToFall
	sc_setPhase $00
	.db $0b $14 $64 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $0b $08 $fe $00
	sc_setAlarmOrStartYforSinusoidalMovement $16
	sc_incPhaseWhenAlarm0
	.db $0b $14 $64 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $00

entityScripts_68:
	sc_animateGroupAndDefIdx $08 $25
	sc_setStateIllusion
	.db $8e $00 $00 $00
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	sc_setStateMoving
	sc_animateGroupAndDefIdx $08 $23
	sc_setAlarmOrStartYforSinusoidalMovement $16
	sc_incPhaseWhenAlarm0
	sc_animateGroupAndDefIdx $08 $02
	.db $57 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	sc_setPhase $0a

entityScripts_08:
	sc_animateGroupAndDefIdx $08 $23
	sc_setStateMoving
	sc_setAlarmOrStartYforSinusoidalMovement $16
	sc_incPhaseWhenAlarm0
	sc_animateGroupAndDefIdx $08 $02
	.db $57 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	sc_setPhase $05

entityScripts_13:
	sc_animateGroupAndDefIdx $08 $26
	sc_moveToPlayerSetHorizSpeeds $0060
	sc_setAlarmOrStartYforSinusoidalMovement $c0
	.db $2f $00 $00 $00
	sc_tryToFall
	sc_setPhase $01

entityScripts_09:
	.db $07 $00 $90 $00
	.db $35 $00 $00 $00
	.db $34 $00 $00 $00
	.db $33 $0b $00 $00
	sc_clearSpeeds
	sc_animateGroupAndDefIdx $08 $17
	sc_setAlarmOrStartYforSinusoidalMovement $0f
	sc_incPhaseWhenAlarm0
	.db $0d $04 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $30
	sc_setPhase $00
	.db $1d $04 $06 $00

entityScripts_17:
	.db $30 $03 $00 $00
	.db $07 $00 $80 $00
	sc_setAlarmOrStartYforSinusoidalMovement $60
	.db $2f $00 $00 $00
	sc_setPhase $01
	sc_setStateIllusion
	sc_setStateNotMoving
	sc_animateGroupAndDefIdx $08 $22
	sc_setAlarmOrStartYforSinusoidalMovement $38
	sc_incPhaseWhenAlarm0
	.db $2d $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $50
	sc_incPhaseWhenAlarm0
	.db $0b $08 $9e $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0b $08 $9c $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	sc_setPhase $01

entityScripts_21:
	.db $30 $03 $00 $00
	.db $07 $00 $80 $00
	.db $35 $00 $00 $00
	.db $3b $00 $00 $00
	sc_tryToFall
	sc_setPhase $00
	.db $36 $48 $00 $00
	sc_clearSpeeds
	.db $0b $08 $ac $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $0b $08 $ee $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $00
	sc_setStateIllusion
	sc_clearSpeeds
	sc_animateGroupAndDefIdx $08 $22
	sc_setAlarmOrStartYforSinusoidalMovement $38
	sc_incPhaseWhenAlarm0
	.db $2d $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $50
	sc_incPhaseWhenAlarm0
	.db $0b $08 $9e $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0b $08 $9c $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	sc_setPhase $01

entityScripts_0a:
	.db $07 $00 $90 $00
	.db $35 $00 $00 $00
	.db $34 $00 $00 $00
	.db $33 $12 $00 $00
	.db $36 $40 $00 $00
	sc_clearSpeeds
	.db $0b $08 $ac $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $0b $08 $ee $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $00
	.db $1d $04 $06 $00

entityScripts_0b:
	.db $07 $01 $14 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	.db $2d $00 $00 $00
	.db $0b $08 $5c $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $0b $08 $5e $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $0b $08 $5c $00
	sc_setAlarmOrStartYforSinusoidalMovement $04
	sc_incPhaseWhenAlarm0
	.db $0d $02 $00 $00
	sc_setPhase $00

entityScripts_0c:
	.db $07 $00 $60 $00
	.db $58 $04 $ff $ff
	.db $59 $00 $00 $00
	.db $57 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	sc_setPhase $00

entityScripts_22:
	sc_animateGroupAndDefIdx $08 $20
	.db $4d $20 $20 $00

entityScripts_23:
	sc_animateGroupAndDefIdx $08 $21
	sc_setAlarmOrStartYforSinusoidalMovement $2e
	sc_incPhaseWhenAlarm0
	.db $02 $00 $00 $00
	sc_end

entityScripts_20:
	sc_animateGroupAndDefIdx $08 $1e
	sc_setAlarmOrStartYforSinusoidalMovement $2e
	sc_incPhaseWhenAlarm0
	.db $02 $00 $00 $00
	sc_end

entityScripts_0d:
	.db $07 $01 $10 $00
	.db $73 $00 $00 $00
	.db $74 $00 $00 $00

entityScripts_03:
entityScripts_04:
	.db $8d $00 $00 $00
	.db $4d $78 $80 $00
	.db $8c $00 $00 $00
	.db $47 $00 $00 $00
	.db $48 $00 $00 $00
	.db $49 $00 $00 $00

entityScripts_0f:
	.db $0b $08 $62 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	.db $0f $00 $00 $00
	.db $0b $08 $64 $00
	.db $44 $17 $00 $00
	.db $0b $08 $62 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $3c $01 $0a $00
	.db $0b $08 $66 $00
	.db $3e $00 $00 $00
	.db $3d $17 $00 $00
	.db $0b $08 $38 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $0b $08 $3a $00
	.db $40 $00 $00 $00
	.db $41 $00 $00 $00
	.db $3c $0d $14 $00
	.db $43 $01 $80 $00
	.db $3f $00 $00 $00
	sc_setPhase $00
	sc_setAlarmOrStartYforSinusoidalMovement $40
	sc_incPhaseWhenAlarm0
	.db $42 $01 $80 $00
	.db $0b $08 $3c $00
	.db $3f $00 $00 $00
	sc_setPhase $00

entityScripts_10:
	.db $07 $00 $80 $00
	.db $35 $00 $00 $00
	.db $3b $00 $00 $00
	sc_tryToFall
	sc_setPhase $00
	.db $0b $08 $b4 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $3a $08 $b6 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $3a $08 $f0 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $3a $08 $b4 $02
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_setPhase $00

entityScripts_1c:
	.db $07 $00 $60 $00
	.db $35 $00 $00 $00
	.db $3b $00 $00 $00
	sc_tryToFall
	sc_setPhase $00
	.db $3a $08 $f2 $00
	sc_setAlarmOrStartYforSinusoidalMovement $04
	sc_incPhaseWhenAlarm0
	.db $3a $08 $f8 $00
	sc_setAlarmOrStartYforSinusoidalMovement $04
	sc_incPhaseWhenAlarm0
	.db $0b $08 $f4 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $3a $08 $f2 $02
	sc_setAlarmOrStartYforSinusoidalMovement $04
	sc_incPhaseWhenAlarm0
	sc_setPhase $00

entityScripts_6a:
	.db $98 $00 $00 $00
	.db $68 $18 $2a $00
	.db $99 $00 $00 $00
	.db $0b $08 $48 $00
	sc_setAlarmOrStartYforSinusoidalMovement $06
	sc_incPhaseWhenAlarm0
	.db $07 $00 $70 $00
	sc_setAlarmOrStartYforSinusoidalMovement $90
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $98 $01 $00 $00
	sc_setStateMoving
	.db $99 $01 $00 $00
	sc_playSound $23
	sc_end

entityScripts_14:
	.db $09 $00 $00 $00
	sc_facePlayer
	.db $0b $08 $46 $00
	sc_setStateMoving
	sc_playSound $22
	.db $63 $f9 $2c $00
	.db $64 $00 $00 $00
	.db $0b $08 $48 $00
	sc_setAlarmOrStartYforSinusoidalMovement $06
	sc_incPhaseWhenAlarm0
	.db $07 $00 $70 $00
	sc_setAlarmOrStartYforSinusoidalMovement $90
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $07 $00 $70 $00
	sc_setAlarmOrStartYforSinusoidalMovement $90
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $63 $ff $20 $00
	sc_setStateMoving
	.db $64 $01 $00 $00
	sc_playSound $23
	sc_end
	.db $9e $00 $00 $00
	sc_end

entityScripts_27:
	.db $65 $00 $00 $00
	sc_animateGroupAndDefIdx $12 $02
	sc_moveToPlayerSetHorizSpeeds $0120
	.db $58 $05 $00 $60
	.db $60 $00 $00 $00
	sc_setStateNotMoving
	sc_facePlayer
	sc_addOffsetsToXY $00 $f8
	.db $2d $00 $00 $00
	.db $0b $08 $42 $00
	sc_playSound $22
	.db $68 $18 $62 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	sc_addOffsetsToXY $00 $08
	sc_setPhase $01
	.db $61 $01 $0a $00

entityScripts_29:
	.db $65 $00 $00 $00
	sc_animateGroupAndDefIdx $12 $02
	sc_moveToPlayerSetHorizSpeeds $0180
	.db $90 $06 $00 $60
	.db $67 $00 $00 $00
	.db $03 $00 $00 $00
	sc_setStateNotMoving
	sc_facePlayer
	.db $0b $08 $46 $00
	sc_setStateMoving
	sc_playSound $22
	.db $63 $fa $24 $00
	.db $68 $18 $2a $00
	.db $64 $03 $2a $00
	.db $0b $08 $48 $00
	sc_setAlarmOrStartYforSinusoidalMovement $06
	sc_incPhaseWhenAlarm0
	.db $07 $00 $70 $00
	sc_setAlarmOrStartYforSinusoidalMovement $90
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $07 $00 $70 $00
	sc_setAlarmOrStartYforSinusoidalMovement $90
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	.db $0b $08 $4a $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $0d $03 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $63 $ff $20 $00
	sc_setStateMoving
	.db $64 $02 $b0 $00
	sc_playSound $23
	sc_end

entityScripts_28:
	sc_animateGroupAndDefIdx $12 $03
	sc_moveToPlayerSetHorizSpeeds $0080
	sc_setAlarmOrStartYforSinusoidalMovement $40
	.db $66 $00 $00 $00

entityScripts_25:
	.db $5f $00 $00 $00
	sc_playSound $0f
	.db $0b $12 $20 $00
	sc_setAlarmOrStartYforSinusoidalMovement $12
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	.db $0b $12 $22 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $08 $01 $00 $00
	sc_animateGroupAndDefIdx $12 $00
	sc_moveToPlayerSetHorizSpeeds $0060
	.db $5e $00 $00 $00
	.db $0b $12 $22 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	.db $0b $12 $20 $00
	sc_setAlarmOrStartYforSinusoidalMovement $08
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_26:
	.db $a7 $05 $00 $00
	.db $89 $a8 $00 $00
	sc_facePlayer
	sc_playSound $22
	.db $5b $01 $00 $00
	.db $68 $00 $67 $00
	sc_setStateMoving
	.db $0b $12 $12 $00
	.db $5c $00 $00 $00
	.db $68 $00 $67 $00
	sc_setAlarmOrStartYforSinusoidalMovement $06
	sc_incPhaseWhenAlarm0
	.db $0b $12 $10 $00
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	sc_facePlayer
	.db $5b $00 $00 $00
	.db $68 $00 $67 $00
	sc_setStateMoving
	.db $0b $12 $12 $00
	.db $5c $00 $00 $00
	.db $68 $00 $67 $00
	sc_setPhase $0a
	.db $0b $12 $60 $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	.db $0b $12 $62 $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	.db $0b $08 $fa $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	.db $0b $08 $fc $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	.db $0b $08 $fa $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	.db $0b $12 $62 $00
	sc_setAlarmOrStartYforSinusoidalMovement $02
	sc_incPhaseWhenAlarm0
	sc_setPhase $0a
	.db $68 $00 $67 $00
	.db $8a $00 $00 $00
	.db $a8 $c0 $00 $00

entityScripts_1d:
	.db $96 $00 $00 $00
	.db $50 $00 $00 $00
	sc_setStateNotIllusion
	.db $51 $00 $00 $00
	sc_setStateNotMoving
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $9a $06 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	.db $50 $01 $00 $00
	.db $51 $00 $00 $00
	.db $22 $08 $00 $00
	sc_facePlayer
	.db $08 $00 $00 $00
	sc_incPhaseWhenAlarm0
	sc_setPhase $00

entityScripts_16:
	sc_animateGroupAndDefIdx $08 $14
	sc_setStateIllusion
	sc_setAlarmOrStartYforSinusoidalMovement $3a
	sc_incPhaseWhenAlarm0
	sc_setStateNotIllusion
	sc_setAlarmOrStartYforSinusoidalMovement $20
	.db $07 $00 $70 $00
	.db $2f $00 $00 $00
	sc_facePlayer
	.db $2d $00 $00 $00
	sc_clearSpeeds
	.db $0d $05 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $18
	sc_incPhaseWhenAlarm0
	.db $08 $03 $00 $00
	sc_setPhase $06

entityScripts_30:
	sc_animateGroupAndDefIdx $0e $00
	.db $55 $01 $00 $00
	.db $a0 $00 $00 $00

entityScripts_31:
	sc_animateGroupAndDefIdx $0e $02
	.db $55 $01 $00 $00
	sc_setEntityAIIdxTo0 $80

entityScripts_32:
	.db $4e $00 $00 $00
	.db $55 $01 $00 $00
	sc_setEntityAIIdxTo0 $80

entityScripts_58:
	.db $0b $0e $14 $00
	.db $0e $00 $00 $00

entityScripts_59:
	sc_animateGroupAndDefIdx $0e $03
	sc_setAlarmOrStartYforSinusoidalMovement $38
	sc_incPhaseWhenAlarm0
	sc_reverseHorizontally
	sc_setEntityAIIdxTo0 $80

entityScripts_5a:
	.db $0b $08 $60 $00
	.db $2e $00 $00 $00

entityScripts_5b:
	sc_animateGroupAndDefIdx $08 $16
	.db $32 $1a $00 $00

entityScripts_5c:
	sc_animateGroupAndDefIdx $08 $18
	.db $11 $03 $00 $00
	.db $12 $00 $00 $00

entityScripts_5d:
	sc_animateGroupAndDefIdx $08 $1d
	.db $56 $01 $00 $00
	.db $0e $00 $00 $00

entityScripts_18:
entityScripts_72:
	sc_animateGroupAndDefIdx $0e $04
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	sc_end
	sc_setPhase $00

entityScripts_19:
	sc_animateGroupAndDefIdx $08 $19
	sc_setAlarmOrStartYforSinusoidalMovement $10
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_1a:
	sc_animateGroupAndDefIdx $08 $1a
	sc_playSound $27
	sc_setAlarmOrStartYforSinusoidalMovement $20
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_1b:
	.db $30 $00 $00 $00
	.db $0b $0e $46 $00
	.db $45 $30 $00 $00
	.db $46 $00 $00 $00

entityScripts_2a:
	.db $0b $0e $1a $00
	.db $45 $20 $00 $00
	.db $46 $00 $00 $00

entityScripts_67:
	.db $30 $02 $00 $00

entityScripts_62:
	.db $0b $0e $1a $00
	.db $45 $10 $00 $00
	.db $46 $00 $00 $00

entityScripts_5e:
	sc_animateGroupAndDefIdx $08 $1f
	sc_setAlarmOrStartYforSinusoidalMovement $28
	sc_incPhaseWhenAlarm0
	.db $5a $08 $00 $00

entityScripts_5f:
	sc_animateGroupAndDefIdx $12 $04
	sc_setAlarmOrStartYforSinusoidalMovement $ff
	sc_incPhaseWhenAlarm0
	.db $0b $12 $32 $00
	sc_setAlarmOrStartYforSinusoidalMovement $0a
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_4e:
	.db $4f $00 $00 $00
	sc_setVertSpeedStartMoving $0040
	.db $69 $00 $01 $00
	.db $6a $00 $00 $00
	.db $38 $00 $00 $00
	sc_end

entityScripts_33:
entityScripts_34:
entityScripts_35:
entityScripts_36:
entityScripts_37:
entityScripts_38:
entityScripts_39:
entityScripts_3a:
entityScripts_3b:
entityScripts_3c:
entityScripts_3d:
entityScripts_3e:
entityScripts_3f:
entityScripts_40:
entityScripts_41:
entityScripts_42:
entityScripts_4c:
entityScripts_4d:
entityScripts_4f:
entityScripts_50:
	.db $4f $00 $00 $00
	sc_setVertSpeedStartMoving $0100
	.db $37 $00 $00 $00
	.db $38 $00 $00 $00
	sc_end

entityScripts_43:
entityScripts_44:
entityScripts_45:
entityScripts_46:
entityScripts_47:
entityScripts_48:
entityScripts_49:
entityScripts_4a:
entityScripts_4b:
	.db $4f $00 $00 $00
	sc_setVertSpeedStartMoving $0100
	.db $37 $00 $00 $00
	.db $38 $00 $00 $00
	.db $87 $00 $00 $00
	sc_setAlarmOrStartYforSinusoidalMovement $38
	sc_incPhaseWhenAlarm0
	sc_end

entityScripts_51:
entityScripts_52:
entityScripts_53:
	sc_setEntityAIIdxTo0

entityScripts_57:
	.db $9b $00 $00 $00
