.define PPUCTRL $2000
.define PPUCTRL_NMI_ON $80
.define PPUCTRL_COLOR_ON_EXT_PINS $40
.define PPUCTRL_SPR_16 $20
.define PPUCTRL_BG_1000 $10
.define PPUCTRL_SPR_1000 $08
.define PPUCTRL_PPUDATA_INC_DOWN $04
.define PPUCTRL_NT_BASE $03

.define PPUMASK $2001
.define PPUMASK_EMP_BLUE $80
.define PPUMASK_EMP_GREEN $40
.define PPUMASK_EMP_RED $20
.define PPUMASK_SHOW_SPR $10
.define PPUMASK_SHOW_BG $08
.define PPUMASK_SPR_LEFT_8PX $04
.define PPUMASK_BG_LEFT_8PX $02
.define PPUMASK_GREYSCALE $01

.define PPUSTATUS $2002
.define OAMADDR $2003
.define PPUSCROLL $2005
.define PPUADDR $2006
.define PPUDATA $2007
.define OAMDMA $4014

; for instances where any channel is referenced
.define SND_VOL $4000
.define SND_SWEEP $4001
.define SND_FREQ_LO $4002
.define SND_FREQ_HI $4003

.define SQ1_VOL $4000
.define SQ1_SWEEP $4001
.define SQ1_LO $4002
.define SQ1_HI $4003
.define SQ2_VOL $4004
.define SQ2_SWEEP $4005
.define SQ2_LO $4006
.define SQ2_HI $4007
.define TRI_LINEAR $4008
.define TRI_LO $400a
.define TRI_HI $400b
.define NOISE_VOL $400c
.define NOISE_LO $400e
.define NOISE_HI $400f
.define DMC_FREQ $4010
.define DMC_RAW $4011
.define DMC_START $4012
.define DMC_LEN $4013
.define SND_CHN $4015
.define SNDENA_DMC $10
.define SNDENA_NOISE $08
.define SNDENA_TRI $04
.define SNDENA_SQ2 $02
.define SNDENA_SQ1 $01
.define APU_FRAME_CTR $4017

.define JOY1 $4016
.define JOY2 $4017
.define PADF_A $80
.define PADF_B $40
.define PADF_SELECT $20
.define PADF_START $10
.define PADF_UP $08
.define PADF_DOWN $04
.define PADF_LEFT $02
.define PADF_RIGHT $01

.define NAMETABLE0 $2000
.define INTERNAL_PALETTES $3f00

; MMC5
.define PCM_MODE $5010

.define PRG_MODE $5100
.define PRG_MODE_16_8_8 $02

.define CHR_MODE $5101
.define EXTENDED_RAM_MODE $5104

; nametable bits - DDCCBBAA
; 00 - vram page 0
; 01 - vram page 1
; 10 - internal expansion ram (unused due to 5104 unset)
; 11 - fill mode data (unused due to 5106/5107 unset)
.define NAMETABLE_MAPPING $5105
.define NT_VERTICAL_MIRROR $44 ; %01000100
.define NT_SINGLE_SCREEN_CIRAM_1 $55 ; $01010101
.define NT_ALL_MODES $e4 ; %11100100

.define FILL_MODE_TILE $5106
.define FILL_MODE_COLOUR $5107
.define PRG_BANK_8000 $5115

.define PRG_BANK_c000 $5116
.define PRG_ROM_SWITCH $80

.define CHR_BANK_0000 $5120
.define CHR_BANK_0400 $5121
.define CHR_BANK_0800 $5122
.define CHR_BANK_0c00 $5123
.define CHR_BANK_1000 $5124
.define CHR_BANK_1400 $5125
.define CHR_BANK_1800 $5126
.define CHR_BANK_1c00 $5127
.define CHR_BANK_0000_1000 $5128
.define CHR_BANK_0400_1400 $5129
.define CHR_BANK_0800_1800 $512a
.define CHR_BANK_0c00_1c00 $512b
.define VERTICAL_SPLIT_MODE $5200
.define SCANLINE_CMP_VALUE $5203
.define SCANLINE_IRQ_STATUS $5204