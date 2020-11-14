.macro jsr_8000Func
    .if nargs == 1
        lda #PRG_ROM_SWITCH|:\1
        jsr setAndSaveLowerBank
        jsr \1
    .else
        lda #PRG_ROM_SWITCH|\1
        jsr setAndSaveLowerBank
        jsr \2
    .endif
.endm

.macro jsr_a000Func
    .if nargs == 1
        lda #PRG_ROM_SWITCH|:\1-1
        jsr setAndSaveLowerBank
        jsr \1
    .else
        lda #PRG_ROM_SWITCH|\1-1
        jsr setAndSaveLowerBank
        jsr \2
    .endif
.endm

.macro waitForVBlank
-   lda PPUSTATUS.w
    bpl -
.endm