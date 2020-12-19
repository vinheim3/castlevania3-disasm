.include "constants/sounds.s"
.include "constants/playerStates.s"

; chr banks
.define CB_TREVOR_1 $00
.define CB_TREVOR_2 $01
.define CB_GRANT_1 $02
.define CB_GRANT_2 $03
.define CB_SYPHA_1 $04
.define CB_SYPHA_2 $05
.define CB_ALUCARD_1 $06
.define CB_ALUCARD_2 $07
.define CB_ZOMBIE_CROW_GHOST_SPRITE $08
.define CB_BAT_SWORDKNIGHT_AXEKNIGHT $09
.define CB_SPINNING_PLATFORM_PENDULUM $12
.define CB_GRANT_BOSS_FIGHT_1 $1a
.define CB_GRANT_BOSS_FIGHT_2 $1b
; 40 - start of bg chr banks
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
.define GS_DEBUG_MODE $07
.define GS_08 $08 ; branching paths
.define GS_INTRO_CUTSCENE $09
.define GS_NAME_PW_INPUT $0a
.define GS_0b $0b
.define GS_0c $0c
.define GS_0d $0d
.define GS_0e $0e
.define GS_SOUND_MODE $0f

.define NUM_ENTITIES $1c

; static layouts
.define SL_INTERNAL_PALETTE_DUMMY_WRITE $04
.define SL_BASE_ROOM_INTERNAL_PALETTES $09
.define SL_TREVOR_INTERNAL_PALETTES $0a
.define SL_SYPHA_INTERNAL_PALETTES $0b
.define SL_GRANT_INTERNAL_PALETTES $0c
.define SL_ALUCARD_INTERNAL_PALETTES $0d

; room groups
.define RG_SUNKEN_CITY $08
.define RG_MAIN_HALL $0c

; entity state
.define ES_INVISIBLE $80
.define ES_MOVING $40
.define ES_UNANIMATED $20
.define ES_ILLUSION $10