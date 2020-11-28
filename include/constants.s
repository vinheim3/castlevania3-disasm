.include "constants/sounds.s"
.include "constants/playerStates.s"

.define CB_ASCII_ROUND_RECTANGLE $41
.define CB_STATUS_BAR_CHAR_FACES $42
.define CB_45 $45 ; used for 1st room tiles
.define CB_47 $47 ; used for 1st room tiles
.define CB_EMPTY $7f

; 1st byte in every bank is the prg rom val to switch to it
; Used for trampolines
.define CURR_LOWER_BANK $8000

.define GS_INTRO $00
.define GS_STUB $01
.define GS_02 $02
.define GS_PRE_IN_GAME $03
.define GS_IN_GAME $04
.define GS_05 $05
.define GS_06 $06
; 07
.define GS_08 $08 ; branching paths
.define GS_INTRO_CUTSCENE $09
.define GS_NAME_PW_INPUT $0a
.define GS_0b $0b
.define GS_0c $0c
.define GS_0d $0d
.define GS_0e $0e
.define GS_SOUND_MODE $0f

.define NUM_ENTITIES $1c