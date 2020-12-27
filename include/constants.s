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
.define CB_GATE_TORCHES_WHIPUPGRADE_HEARTS_BRICKWALLS $40
.define CB_ASCII_ROUND_RECTANGLE $41
.define CB_STATUS_BAR_CHAR_FACES $42
.define CB_SCORE_ITEMS_PROJECTILES_CANDLES $43
.define CB_45 $45 ; used for 1st room tiles
.define CB_47 $47 ; used for 1st room tiles
.define CB_TITLE_SCREEN_1 $70
.define CB_TITLE_SCREEN_2 $71
.define CB_TITLE_SCREEN_3 $72
.define CB_EMPTY $7f

; 1st byte in every bank is the prg rom val to switch to it
; Used for trampolines
.define CURR_LOWER_BANK $8000

.define GS_INTRO $00
.define GS_STUB $01
.define GS_PRE_NAME_PW_INPUT $02
.define GS_PRE_IN_GAME $03
.define GS_IN_GAME $04
.define GS_DIED $05
.define GS_GAME_OVER $06
.define GS_DEBUG_MODE $07
.define GS_BETWEEN_LEVELS $08
.define GS_INTRO_CUTSCENE $09
.define GS_NAME_PW_INPUT $0a
.define GS_SHOW_PASSWORD $0b
.define GS_ENDING_CUTSCENE $0c
.define GS_CREDITS $0d
.define GS_AFTER_PW_ENTER $0e
.define GS_SOUND_MODE $0f

.define NUM_ENTITIES $1c
.define NUM_SPAWNERS 6

; static layouts
.define SL_TITLE_SCREEN_OPENING_TEXT $00
.define SL_INTERNAL_PALETTE_DUMMY_WRITE $04
.define SL_TITLE_SCREEN_INTERNAL_PALETTES $05
.define SL_BASE_ROOM_INTERNAL_PALETTES $09
.define SL_TREVOR_INTERNAL_PALETTES $0a
.define SL_SYPHA_INTERNAL_PALETTES $0b
.define SL_GRANT_INTERNAL_PALETTES $0c
.define SL_ALUCARD_INTERNAL_PALETTES $0d
.define SL_TITLE_SCREEN_PASSWORD_TEXT $26

; room groups
.define RG_SUNKEN_CITY $08
.define RG_MAIN_HALL $0c
.define RG_CASTLE_KEEP $0e

; entity state
.define ES_INVISIBLE $80
.define ES_MOVING $40
.define ES_UNANIMATED $20
.define ES_ILLUSION $10
.define ES_FROZEN $02
.define ES_DESTROYED $01 ; wrong?

; collision
.define COLL_EMPTY 0
.define COLL_MUD 1
.define COLL_CEILING_SPIKE 5
.define COLL_SOLID 6
.define COLL_FLOOR_SPIKE 7

; large layouts
.define LL_TITLE_SCREEN $02