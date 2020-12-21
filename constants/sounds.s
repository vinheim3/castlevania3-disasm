; envelope bytes
; fb-fd denotes loop-to point
; fe denotes we should loop
; ff denotes end
; for data bytes, high nybble is the frames to use the byte
; low nybble is a 4-bit signed value to adjust the curr frequency

.define SOUND_ENGINE_BANK $98
.define SND_DMC_START $6d
.define SND_SPECIAL_DMC_START $7a
.define SND_MUSIC_START $4e
.define SND_START $06

.define SQ1_2 $03
.define SQ2_2 $04

.define INSTR_SQ1_1 $00
.define INSTR_SQ2_1 $01
.define INSTR_TRI $02
.define INSTR_SQ1_2 $03
.define INSTR_SQ2_2 $04
.define INSTR_NOISE_1 $05
.define INSTR_NOISE_2 $06
.define INSTR_DPCM $07

.define LAST_SOUND_MODE_SONG_IDX $19

.define SND_HIGH_SNARE $01
.define SND_OPEN_HI_HAT $03
.define SND_MUTE $06
.define SND_HOLY_WATER_SHATTER $16
.define SND_ENEMY_SHATTERED $27
.define SND_INTRO_SCENE_THUNDER $2d
.define SND_OBJECT_DESTROY $33
.define SND_RUMBLE $3a
.define SND_1UP $4b
.define SND_PAUSE $4d
.define MUS_LIFE_LOSS $4e
.define MUS_BEGINNING $4f
.define MUS_MAD_FOREST $50
.define MUS_STREAM $51
.define MUS_DEAD_BEAT $52
.define MUS_CLOCKWORK $53
.define MUS_AQUARIUS $54
.define MUS_RISING $55
.define MUS_ANXIETY $56
.define MUS_NIGHTMARE $57
.define MUS_DEMON_SEED $58
.define MUS_DEJAVU $5b
.define MUS_RIDDLE $5c
.define MUS_OVERTURE $5e
.define MUS_BOSS_FIGHT $5f
.define MUS_BIG_BATTLE $60
.define MUS_EPITAPH $62
.define MUS_BLK_CLEAR $63
.define MUS_ALL_CLEAR $64
.define MUS_GAME_OVER $65
.define MUS_PRELUDE $66
.define MUS_PRAYER $67
.define MUS_EVERGREEN $68
.define MUS_FLASH_BACK $69
.define MUS_PRESSURE $6a
.define MUS_ENCOUNTER $6b
.define MUS_DESTINY $6c
.define SND_ATTACK_OR_MAIN_MENU_SELECT $72