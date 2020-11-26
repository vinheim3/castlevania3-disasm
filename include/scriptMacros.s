.macro sc_setPhase
    .db $04 \1 $00 $00
.endm

.macro sc_stub
    .db $19 $00 $00 $00
.endm

.macro sc_end
    .db $27 $00 $00 $00
.endm

.macro sc_playSound
    .db $6c \1 $00 $00
.endm

.macro sc_stub2
    .db $72 $00 $00 $00
.endm

.macro sc_stub3
    .db $75 $00 $00 $00
.endm