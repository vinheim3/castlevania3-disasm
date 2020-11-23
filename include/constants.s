.include "constants/sounds.s"

.define CB_ASCII_ROUND_RECTANGLE $41
.define CB_STATUS_BAR_CHAR_FACES $42
.define CB_45 $45 ; used for 1st room tiles
.define CB_47 $47 ; used for 1st room tiles
.define CB_EMPTY $7f

; 1st byte in every bank is the prg rom val to switch to it
; Used for trampolines
.define CURR_LOWER_BANK $8000

.define GS_SOUND_MODE $0f