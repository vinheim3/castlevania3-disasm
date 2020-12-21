.macro sc_setStateNotMoving
    .db $01 $00 $00 $00
.endm

.macro sc_setPhase
    .db $04 \1 $00 $00
.endm

.macro sc_facePlayer
    .db $05 $00 $00 $00
.endm

.macro sc_animateGroupAndDefIdx
    .db $13 \1 \2 $00
.endm

.macro sc_stub
    .db $19 $00 $00 $00
.endm

.macro sc_moveToPlayerSetHorizSpeeds
    .db $1e \1>>8 \1&$ff $00
.endm

.macro sc_setAlarmOrStartYforSinusoidalMovement
    .db $1f \1 $00 $00
.endm

.macro sc_incPhaseWhenAlarm0
    .db $20 $00 $00 $00
.endm

.macro sc_end
    .db $27 $00 $00 $00
.endm

.macro sc_setStateMoving
    .db $2a $00 $00 $00
.endm

.macro sc_reverseHorizontally
    .db $2b $00 $00 $00
.endm

.macro sc_setStateNotIllusion
    .db $53 $00 $00 $00
.endm

.macro sc_setStateIllusion
    .db $54 $00 $00 $00
.endm

.macro sc_addOffsetsToXY
    .db $62 \1 \2 $00
.endm

.macro sc_playSound
    .db $6c \1 $00 $00
.endm

.macro sc_tryToFall
    .db $6d $00 $00 $00
.endm

.macro sc_stub2
    .db $72 $00 $00 $00
.endm

.macro sc_stub3
    .db $75 $00 $00 $00
.endm