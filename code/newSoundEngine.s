
; Channels - SQ/2, TRI, NOISE, DPCM, MMC5 PULSE 1/2, CONDUCTOR
nse_initSound:
    jsr nse_silenceAllSoundChannels

    lda #$7f
    sta SQ1_SWEEP.w
    sta SQ2_SWEEP.w

	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w

    lda #SNDENA_MMC5_PULSE2|SNDENA_MMC5_PULSE1
    sta MMC5_STATUS.w

    ; todo: reset structs/other control bytes
    rts


nse_playSound:
    cmp #$66
    bne +

    ; set ticks to next frame to 1
    lda #$01
    sta wTicksToNextRow.w
    sta wSongJustPlayed.w

    ; init non-conductor vals
    ldx #NUM_NON_CONDUCTOR_CHANS-1
-   lda #$80
    sta wSndChannelPitchOffset.w, x
    lda #$ff
    sta wNoteInstrument.w, x
    sta wCurrInstrVolVal.w, x
    sta wCurrInstrArpVal.w, x
    sta wCurrInstrPitchVal.w, x
    sta wCurrInstrDutyVal.w, x
    dex
    bpl -

+   rts


nse_updateSound:
    ; if song just played, don't perform timer ticks
    lda wSongJustPlayed.w
    beq +
    lda #$00
    sta wSongJustPlayed.w
    beq @initFrame
+
    ; 0 is invalid, return
    lda wTicksToNextRow.w
    bne +
    rts

    ; dec ticks to next row
+   dec wTicksToNextRow.w
    lda wTicksToNextRow.w
    bne @afterTicksEqu0check

;------------------------------------------------
; New Phrase row
;------------------------------------------------
    ; when ticks == 0, go to next frame and groove val idx
    ; conductor can override groove val before ticks set
    inc wCurrFrameRow.w
    inc wGrooveValIdx.w

    ; also decrease all wait rows
    ldx #NUM_CHANS-1
-   lda wNSEInstrWaitRows.w, x
    beq +
    dec wNSEInstrWaitRows.w, x
+   dex
    bpl -

@afterTicksEqu0check
    ; check if row passed current phrase rows
    lda wCurrFrameRow.w
    cmp wCurrFrameNumRows.w
    bcc @afterNewFrameCheck

;------------------------------------------------
; New Frame
;------------------------------------------------
    ; get next phrase idx
    inc wCurrFrameIdx.w
    lda wCurrFrameIdx.w
    cmp numFramesAndLoopPoint.w
    bcc @initFrame

    ; loop if past end
    lda numFramesAndLoopPoint.w+1
    sta wCurrFrameIdx.w

@initFrame:
    ; if so, set row to 0
    lda #$00
    sta wCurrFrameRow.w

    ; get frame idx * 8 (num bytes per frame phrase data)
    lda wCurrFrameIdx.w
    sta wSoundBankTempVar1
    lda #$00
    sta wSoundBankTempVar2
.rept 3
    asl wSoundBankTempVar1
    rol wSoundBankTempVar2
.endr
    ; then add to framePhrases to get addr into phrases
    lda #<framePhrases
    clc
    adc wSoundBankTempVar1
    sta wSoundBankTempVar1
    lda #>framePhrases
    adc wSoundBankTempVar2
    sta wSoundBankTempVar2

    ; loop to do phrase init per instr
    ldy #NUM_CHANS-1
-
    ; set wait rows, and instr ended
    lda #$00
    sta wNSEInstrWaitRows.w, y
    sta wNSEInstrEnded.w, y

    ; set new instrument phrases
    lda (wSoundBankTempVar1), y
    sta wNSEInstrPhrase.w, y
    pha

    ; set new instrument addresses
    sty wGenericTempVar
    ; get addr from phraseAddrs + 2 instr idx
    tya
    asl a
    tay
    lda phraseAddrs.w, y
    sta wSoundBankTempAddr1
    lda phraseAddrs.w+1, y
    sta wSoundBankTempAddr1+1

    ; get phrase addr from phrase idx
    pla
    asl a
    tay
    lda (wSoundBankTempAddr1), y
    pha
    iny
    lda (wSoundBankTempAddr1), y
    ldy wGenericTempVar
    sta wNSEInstrDataAddr_hi.w, y
    pla
    sta wNSEInstrDataAddr_lo.w, y

    dey
    bpl -

    ; set default frame num rows
    lda #$40
    sta wCurrFrameNumRows.w

@afterNewFrameCheck:
    lda wTicksToNextRow.w
    jne @afterInstrRowInit

;------------------------------------------------
; New Row conductor
;------------------------------------------------
    ldx #NSE_CONDUCTOR
    jsr getCurrInstrDataAddr
    bcs @afterConductorRowInit

    ldy #$00
@nextConductorByte:
    ; process byte
    lda (wCurrInstrumentDataAddr), y
    bmi ++
    ; $00($40) - $7f - set length of curr phrase
    bne +
    lda #$40
+   sta wCurrFrameNumRows.w
    iny
    jmp @nextConductorByte

++  cmp #$90
    bcs +
    ; $8x - wait for x number of rows
    and #$0f
    clc
    adc #$01
    sta wNSEInstrWaitRows.w, x
    iny
    jmp @updateConductorAddr

+   cmp #$a0
    bcs +
    ; $9x - set groove
    and #$0f
    sta wGrooveIdx.w
    lda #$00
    sta wGrooveValIdx.w
    iny
    jmp @nextConductorByte
    
+
    ; $a0-$ff - ends phrase for conductor
    lda #$01
    sta wNSEInstrEnded.w, x

@updateConductorAddr:
    tya
    clc
    adc wCurrInstrumentDataAddr
    sta wNSEInstrDataAddr_lo.w, x
    bcc +
    inc wNSEInstrDataAddr_hi.w, x
+

@afterConductorRowInit:
;------------------------------------------------
; New DPCM row
;------------------------------------------------
    ldx #NSE_DPCM
    jsr getCurrInstrDataAddr
    bcs @afterDPCMRowInit

    ldy #$00
@nextDPCMRowByte:
    lda (wCurrInstrumentDataAddr), y
    cmp #$40
    bcs +
    ; todo: $00-$3f
    iny
    lda (wCurrInstrumentDataAddr), y
    and #$0f
    sta $4012
    asl a
    asl a
    sta wGenericTempVar

    lda (wCurrInstrumentDataAddr), y
    lsr
    lsr
    lsr
    lsr
    sta $4010
    iny
    lda (wCurrInstrumentDataAddr), y
    clc
    adc #$01
    sta wNSEInstrWaitRows.w, x

    lda #$1b
    sec
    sbc wGenericTempVar
    sta $4013
    jmp @updateDPCMAddr
+   cmp #$50
    bcs +
    ; $40-$4f - note continue, lb is num frames
    and #$0f
    clc
    adc #$01
    sta wNSEInstrWaitRows.w, x

+   cmp #$60
    bcs +
    ; todo: $50-$5f - release, excl. resetting $4011
    lda #$01
    sta wNoteReleased.w, x
    bne @updateDPCMAddr

+   cmp #$70
    bcs +
    ; todo: $60-$6f - cut/rest, incl. resetting $4011
    and #$0f
    sta wNSEInstrWaitRows.w, x
    lda #$00
    sta wNoteFreq_lo.w, x
    sta wNoteFreq_hi.w, x
    beq @updateDPCMAddr
+
    ; $70-$ff
    lda #$01
    sta wNSEInstrEnded.w, x

@updateDPCMAddr:
    iny
    tya
    clc
    adc wCurrInstrumentDataAddr
    sta wNSEInstrDataAddr_lo.w, x
    bcc +
    inc wNSEInstrDataAddr_hi.w, x
+

@afterDPCMRowInit:
;------------------------------------------------
; New Note row
;------------------------------------------------
    ldx #NUM_NON_CONDUCTOR_CHANS-1
@nextInstrInit:
    stx wCurrInstrumentIdx
; only for squares, pulses, noise and tri
    cpx #NSE_DPCM
    jeq @toNextInstrInit

    jsr getCurrInstrDataAddr
    jcs @toNextInstrInit

    ldy #$00
@nextNoteByte:
    lda (wCurrInstrumentDataAddr), y
    cmp #$5e
    bcs @afterNoteInit_00to5d
    ; $00-$5d - note, 0 - A1, followed by byte for instrument
    ; for pulse/noise, follow with byte, hb - vol, lb - length in rows
    sty wGenericTempVar

    jsr applyNote

    ldy wGenericTempVar
    ; followed by byte for instrument
    iny
    lda (wCurrInstrumentDataAddr), y
    sta wNoteInstrument.w, x

    jsr applyInstrument

    ldy wGenericTempVar
    iny
    jmp @noteInitSetVolAndLen

@afterNoteInit_00to5d:
    bne @afterNoteInit_00to5e
    ; $5e - continue previous note, even rest, follow with vol/length byte

@noteInitSetVolAndLen:
    ; followed by vol/len byte for pulse/noise/tri
    ; tri ignores vol when updating hw
    ;cpx #NSE_TRI
    ;beq +
    iny
    lda (wCurrInstrumentDataAddr), y
    and #$0f
    clc
    adc #$01
    sta wNSEInstrWaitRows.w, x
    lda (wCurrInstrumentDataAddr), y
    lsr
    lsr
    lsr
    lsr
    and #$0f
    sta wNoteVolume.w, x

+   iny
    jmp @updateInstrInitAddr

@afterNoteInit_00to5e:
    cmp #$5f
    bne +
    ; $5f - note release, has vol/length byte
    lda #$01
    sta wNoteReleased.w, x
    bne @noteInitSetVolAndLen

+   cmp #$c0
    bcc +

    ; $c0-$ff
    lda #$01
    sta wNSEInstrEnded.w, x
    bne @toNextInstrInit

+   pha
    lsr
    lsr
    lsr
    lsr
	and #$0f
	sec
	sbc #$06
	asl a
	tax
	lda controlByteFuncs6xToBx.w, x
	sta wSoundBankJumpAddr
	lda controlByteFuncs6xToBx.w+1, x
	sta wSoundBankJumpAddr+1
	ldx wCurrInstrumentIdx
    pla
	jmp (wSoundBankJumpAddr)

@updateInstrInitAddr:
    tya
    clc
    adc wCurrInstrumentDataAddr
    sta wNSEInstrDataAddr_lo.w, x
    bcc +
    inc wNSEInstrDataAddr_hi.w, x
+
@toNextInstrInit:
    dex
    jpl @nextInstrInit

@afterInstrRowInit:
;------------------------------------------------
; New Note tick
;------------------------------------------------
    ; todo: handle sfx
    ldx #NUM_NON_CONDUCTOR_CHANS-1
@nextChanTick:
    ; eg song just loaded, skip if no instrument yet
    lda wNoteInstrument.w, x
    cmp #$ff
    jeq @toNextChanTick

    ; address to row containing vol/arp/etc indexes
    lda wInstrAddr_lo.w, x
    sta wSoundBankTempAddr1
    lda wInstrAddr_hi.w, x
    sta wSoundBankTempAddr1+1

    ; volume tick, check if has vol setup
    ldy #$00
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq @afterChanVolTick

    lda wInstrVolAddr_lo.w, x
    sta wSoundBankTempAddr2
    lda wInstrVolAddr_hi.w, x
    sta wSoundBankTempAddr2+1
    lda wInstrVolTick.w, x
    jsr getCurrMacroVal
    sta wCurrInstrVolVal.w, x
    tya
    sta wInstrVolTick.w, x

@afterChanVolTick:
    ; arp tick, check if has arp setup
    ldy #$01
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq @afterChanArpTick

    lda wInstrArpAddr_lo.w, x
    sta wSoundBankTempAddr2
    lda wInstrArpAddr_hi.w, x
    sta wSoundBankTempAddr2+1
    lda wInstrArpTick.w, x
    jsr getCurrMacroVal
    sta wCurrInstrArpVal.w, x
    tya
    sta wInstrArpTick.w, x

@afterChanArpTick:
    ; pitch tick, check if has pitch setup
    ldy #$02
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq @afterChanPitchTick

    lda wInstrPitchAddr_lo.w, x
    sta wSoundBankTempAddr2
    lda wInstrPitchAddr_hi.w, x
    sta wSoundBankTempAddr2+1
    lda wInstrPitchTick.w, x
    jsr getCurrMacroVal
    sta wCurrInstrPitchVal.w, x
    tya
    sta wInstrPitchTick.w, x

@afterChanPitchTick
    ; duty/noise tick, check if has duty/noise setup
    ldy #$04
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq @toNextChanTick

    lda wInstrDutyAddr_lo.w, x
    sta wSoundBankTempAddr2
    lda wInstrDutyAddr_hi.w, x
    sta wSoundBankTempAddr2+1
    lda wInstrDutyTick.w, x
    jsr getCurrMacroVal
    sta wCurrInstrDutyVal.w, x
    tya
    sta wInstrDutyTick.w, x

@toNextChanTick:
    dex
    jpl @nextChanTick

;------------------------------------------------
; Update hardware channels
;------------------------------------------------
    ldx #NUM_NON_CONDUCTOR_CHANS-1
@nextUpdateChn:
;------------------------------------------------
; Misc Sfx
;------------------------------------------------
    ; delayed vol change
    lda wDelayedVolChangeCounter.w, x
    beq +
    dec wDelayedVolChangeCounter.w, x
    bne +
    lda wDelayedVolChangeVol.w, x
    sta wNoteVolume.w, x
+
    ; arp change
    lda wCurrInstrArpVal.w, x
    cmp #$ff
    beq @noArpChange

    ; todo: we're assuming a fixed value
    cpx #NSE_TRI
    bne +
    sec
    sbc #$20
    jmp @applyArpNote
+
    cpx #NSE_NOISE
    bne +
    lda wNoteFreqIdx.w, x
    sec
    sbc wCurrInstrArpVal.w, x
    sta wNoteFreq_lo.w, x
    jmp @noArpChange
+
    cmp #$40
    beq @arpX
    cmp #$80
    bne @addFreqIdx
    ; arp Y
    lda wArpeggioXY.w, x
    and #$0f
    jmp @addFreqIdx

@arpX:
    lda wArpeggioXY.w, x
    lsr
    lsr
    lsr
    lsr

@addFreqIdx:
    clc
    adc wNoteFreqIdx.w, x

@applyArpNote:
    jsr getNoteFreq
    lda wSoundBankTempAddr1
    sta wNoteFreq_lo.w, x
    lda wSoundBankTempAddr1+1
    sta wNoteFreq_hi.w, x

@noArpChange:
;------------------------------------------------
; Final hw channel vals
;------------------------------------------------
    lda wNoteInstrument.w, x
    cmp #$ff
    jeq @toNextUpdateChn

    txa
    asl a
    tay
    lda hwChanOffsets.w, y
    sta wSoundBankTempAddr1.w
    lda hwChanOffsets.w+1, y
    sta wSoundBankTempAddr1.w+1

    ; if channel or instr vol 0, mute
    ldy #$00
    lda wNoteVolume.w, x
    and wCurrInstrVolVal.w, x
    bne @volSet

    ; tri mute
    cpx #NSE_TRI
    bne +
    lda #$80
    bne @updateVol
+
    lda #$10
    bne @updateVol

@volSet:
    ; tri vol set
    cpx #NSE_TRI
    bne +
    lda #$ff
    jmp @updateVol
+
    ; todo: incorrect, use table in comments
    ; otherwise, vol = chan vol - ($0f-instr vol)
    lda wNoteVolume.w, x
    clc
    adc wCurrInstrVolVal.w, x
    sec
    sbc #$0f
    bcs +
    lda #$01
+   bne +
    lda #$01
+   ora #$10
    sta wGenericTempVar

    ; noise has no duty in vol reg
    cpx #NSE_NOISE
    beq @updateVol

    ; or with duty
    lda wCurrInstrDutyVal.w, x
    cmp #$ff
    beq +
    clc
    ror
    ror
    ror
    jmp ++
+   lda #$00
++  ora wGenericTempVar

@updateVol:
    sta (wSoundBankTempAddr1), y

    ; noise freq is duty and val in lo
    cpx #NSE_NOISE
    bne @notNoiseFreq

    lda wCurrInstrDutyVal.w, x
    cmp #$ff
    beq +
    lda #$80
    bne ++
+   lda #$00
++  ora wNoteFreq_lo.w, x

    ldy #$02
    sta (wSoundBankTempAddr1), y
    iny
    lda #$08
    sta (wSoundBankTempAddr1), y
    bne @toNextUpdateChn

@notNoiseFreq:
    ; channel freq offset is +$80 - val
    ldy #$02
    lda wNoteFreq_lo.w, x
    clc
    adc #$80
    sta wSoundBankTempAddr2
    lda wNoteFreq_hi.w, x
    adc #$00
    sta wSoundBankTempAddr2+1

    lda wSoundBankTempAddr2
    sec
    sbc wSndChannelPitchOffset.w, x
    sta wSoundBankTempAddr2

    lda wSoundBankTempAddr2+1
    sbc #$00
    sta wSoundBankTempAddr2+1

    ; apply duty
    pha
    lda wCurrInstrDutyVal.w, x
    cmp #$ff
    beq +
    pla
    lda wSoundBankTempAddr2
    sec
    sbc wCurrInstrDutyVal.w, x
    sta wSoundBankTempAddr2

    lda wSoundBankTempAddr2+1
    sbc #$00
    sta wSoundBankTempAddr2+1
    jmp ++

+   pla
++  lda wSoundBankTempAddr2
    sta (wSoundBankTempAddr1), y

    cpx #NSE_TRI
    bne +

    iny
    lda wSoundBankTempAddr2+1
    ora #$08
    sta (wSoundBankTempAddr1), y
    jmp @toNextUpdateChn

+
    ; when doing freq hi, avoid pulse generator reset
    ; by only writing when different
    iny
    lda wSoundBankTempAddr2+1
    ora #$08
    cmp wNoteLastFreq_hi.w, x
    beq @toNextUpdateChn
    sta (wSoundBankTempAddr1), y
    sta wNoteLastFreq_hi.w, x

@toNextUpdateChn:
    dex
    jpl @nextUpdateChn

;------------------------------------------------
; New groove tick timer
;------------------------------------------------
    ; check if tick timer went to next groove amount
    lda wTicksToNextRow.w
    bne @done
    ; if so, set ticks. get addr from grooves
    lda wGrooveIdx.w
    asl a
    tax
    lda grooves.w, x
    sta wSoundBankTempVar1.w
    lda grooves.w+1, x
    sta wSoundBankTempVar2.w
    ldy wGrooveValIdx.w
    lda (wSoundBankTempVar1), y
    bne +
    sta wGrooveValIdx.w
    ldy #$00
    lda (wSoundBankTempVar1), y
+   sta wTicksToNextRow.w
@done
    rts


hwChanOffsets:
    .dw $4000
    .dw $4004
    .dw $4008
    .dw $400c
    .dw $400c ; dpcm
    .dw $5000
    .dw $5004


nse_silenceAllSoundChannels:
    lda #$30
    sta SQ1_VOL.w
    sta SQ2_VOL.w
    sta TRI_LINEAR.w
    sta NOISE_VOL.w
    sta MMC5_PULSE1_VOL.w
    sta MMC5_PULSE2_VOL.w
    rts


; instr offset at X
; sec if we shouldn't populate addr
getCurrInstrDataAddr:
    lda wNSEInstrEnded.w, x
    bne @sec

    lda wNSEInstrWaitRows.w, x
    bne @sec

    lda wNSEInstrDataAddr_lo.w, x
    sta wCurrInstrumentDataAddr
    lda wNSEInstrDataAddr_hi.w, x
    sta wCurrInstrumentDataAddr+1
    clc
    rts

@sec:
    sec
    rts


controlByteFuncs6xToBx:
    .dw @ctrlByte6x
    .dw @ctrlByte7x
    .dw @ctrlByte8x
    .dw @ctrlByte9x
    .dw @ctrlByteAx
    .dw @ctrlByteBx

@ctrlByte6x:
    ; note cut/rest - low nybble is length of rest
    and #$0f
    clc
    adc #$01
    sta wNSEInstrWaitRows.w, x

    lda #$00
    sta wNoteVolume.w, x

    jmp @toUpdateInstrAddress

@ctrlByte7x:
    ; get from echo buffer, 70 is last note, 71 is 2nd last note, etc
    ; followed by vol/len for pulse/noise
    sty wGenericTempVar2

    ; buffer - |=====>==========|, > being curr idx (spot to fill)
    ; $70 -    |====o>==========|, ie buffer idx-(0+1)
    ; $71 -    |===o=>==========|, ie buffer idx-(1+1)
    ; $75 -    |=====>=========o|, ie buffer idx-(5+1) => wrap -1 to $0f
    and #$0f
    clc
    adc #$01
    sta wGenericTempVar
    lda wEchoBufferIdx.w, x
    sec
    sbc wGenericTempVar
    bcs +
    clc
    adc #$10
+   sta wGenericTempVar

    ; get $10 byte buffer for instr idx
    lda wCurrInstrumentIdx
    asl a
    asl a
    asl a
    asl a
    adc #<wEchoBuffer
    sta wSoundBankTempAddr1
    lda #$00
    adc #>wEchoBuffer
    sta wSoundBankTempAddr1+1

    ldy wGenericTempVar
    lda (wSoundBankTempAddr1), y

    jsr applyNote

    ; apply instrument, then note, vol
    ldy wGenericTempVar2
    iny
    lda (wCurrInstrumentDataAddr), y
    sta wNoteInstrument.w, x

    jsr applyInstrument

    ldy wGenericTempVar2
    iny
    jmp @toVolLenByte

@ctrlByte8x:
    ; delayed volume change, lb - new volume, following byte - no. of ticks
    and #$0f
    sta wDelayedVolChangeVol.w, x

    iny
    lda (wCurrInstrumentDataAddr), y
    sta wDelayedVolChangeCounter.w, x

    jmp @toNextByte

@ctrlByte9x:
    ; pitch offset, followed by byte that determines offset, centered $80
    iny
    lda (wCurrInstrumentDataAddr), y
    sta wSndChannelPitchOffset.w, x

    jmp @toNextByte

@ctrlByteAx:
    ; arp scheme set, followed by byte whose nybbles are xy
    iny
    lda (wCurrInstrumentDataAddr), y
    sta wArpeggioXY.w, x

    jmp @toNextByte

@ctrlByteBx:
    ; todo: b0-b7 - hw sweep up, b8-bf - hw sweep down

@toVolLenByte:
    jmp nse_updateSound@noteInitSetVolAndLen

@toUpdateInstrAddress:
    iny
    jmp nse_updateSound@updateInstrInitAddr

@toNextByte:
    iny
    jmp nse_updateSound@nextNoteByte


; A is note index from 0 (A-1) to $5d
; X is curr channel
applyNote:
    pha
    ; get $10 byte buffer for instr idx
    lda wCurrInstrumentIdx
    asl a
    asl a
    asl a
    asl a
    adc #<wEchoBuffer
    sta wSoundBankTempAddr1
    lda #$00
    adc #>wEchoBuffer
    sta wSoundBankTempAddr1+1

    ; get offset based on buffer idx
    ldy wEchoBufferIdx.w, x
    pla

    ; push again as we are updating curr buffer offset
    pha
    sta (wSoundBankTempAddr1), y
    sta wNoteFreqIdx.w, x
    iny
    tya
    and #$0f
    sta wEchoBufferIdx.w, x
    pla

    ; noise's freq just in lo
    cpx #NSE_NOISE
    bne @notNoise
    sta wGenericTempVar2
    lda #$0f
    sec
    sbc wGenericTempVar2
    sta wNoteFreq_lo.w, x
    sta wNoteFreqIdx.w, x
    rts

@notNoise:
    jsr getNoteFreq

    ; apply note
    lda wSoundBankTempAddr1
    sta wNoteFreq_lo.w, x
    lda wSoundBankTempAddr1+1
    sta wNoteFreq_hi.w, x
    rts


; A is note
getNoteFreq:
    ; get num div 12 (how many octaves up)
    ldy #$00
    sec
-   sbc #$0c
    bcc +
    iny
    bcs -
+   adc #$0c

    ; Y is now dividend, A is remainder
    sty wSoundBankTempVar1
    asl a
    tay
    lda frequencyData.w, y
    sta wSoundBankTempAddr1
    lda frequencyData.w+1, y
    sta wSoundBankTempAddr1+1

    ; octaves up
    ldy wSoundBankTempVar1
    beq +
-   clc
    ror wSoundBankTempAddr1+1
    ror wSoundBankTempAddr1
    dey
    bne -
+   rts


applyInstrument:
    lda #$ff
    sta wNoteLastFreq_hi.w, x

    lda wNoteInstrument.w, x
    asl a
    asl a
    clc
    adc wNoteInstrument.w, x
    adc #<instrumentData
    sta wSoundBankTempAddr1
    sta wInstrAddr_lo.w, x
    lda #>instrumentData
    adc #$00
    sta wSoundBankTempAddr1+1
    sta wInstrAddr_hi.w, x

    ; vol - arp - pitch - ? - duty noise
    ldy #$00
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq +
    asl a
    tay
    lda instrumentVolData.w, y
    sta wInstrVolAddr_lo.w, x
    lda instrumentVolData.w+1, y
    sta wInstrVolAddr_hi.w, x
+

    ldy #$01
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq +
    asl a
    tay
    lda instrumentArpData.w, y
    sta wInstrArpAddr_lo.w, x
    lda instrumentArpData.w+1, y
    sta wInstrArpAddr_hi.w, x
+

    ldy #$02
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq +
    asl a
    tay
    lda instrumentPitch.w, y
    sta wInstrPitchAddr_lo.w, x
    lda instrumentPitch.w+1, y
    sta wInstrPitchAddr_hi.w, x
+

    ldy #$04
    lda (wSoundBankTempAddr1), y
    cmp #$ff
    beq +
    asl a
    tay
    lda instrumentDutyNoise.w, y
    sta wInstrDutyAddr_lo.w, x
    lda instrumentDutyNoise.w+1, y
    sta wInstrDutyAddr_hi.w, x
+

    lda #$00
    sta wInstrVolTick.w, x
    sta wInstrArpTick.w, x
    sta wInstrPitchTick.w, x
    sta wInstrDutyTick.w, x
    sta wNoteReleased.w, x

    lda #$ff
    sta wCurrInstrVolVal.w, x
    sta wCurrInstrArpVal.w, x
    sta wCurrInstrPitchVal.w, x
    sta wCurrInstrDutyVal.w, x

    rts


; A - curr macro tick
; wSoundBankTempAddr2 - metadata and val start
getCurrMacroVal:
    sta wGenericTempVar

    ; store loop, release, len
    ldy #$00
    lda (wSoundBankTempAddr2), y
    sta $00
    iny
    lda (wSoundBankTempAddr2), y
    cmp #$ff
    beq +
    clc
    adc #$01
+   sta $01
    iny
    lda (wSoundBankTempAddr2), y
    sta $02

    lda wNoteReleased.w, x
    cmp #$01
    beq @justReleased

    lda wGenericTempVar
@useLastByte:
    ; get actual macro val, offset from metadata bytes
    clc
    adc #$03
    tay
    lda (wSoundBankTempAddr2), y
    sta wGenericTempVar2

    ; update curr tick
    ldy wGenericTempVar
    iny
    ; if at, or passed release...
    cpy $01
    bcc +
    ; skip if no release point
    lda $01
    cmp #$ff
    beq +
    ; skip if note released
    lda wNoteReleased.w, x
    bne +
    ; go back to loop point
    ldy $00
    jmp @done

+
    ; if at, or passed end...
    cpy $02
    bcc @done
    ; if no loop point, hang onto last val
    lda $00
    cmp #$ff
    beq + 
    ; go back to loop point
    ldy $00
    jmp @done
+   dey
@done:
    ; Y - new tick, A - curr macro val
    sty wGenericTempVar
    lda wGenericTempVar2
    rts

@justReleased:
    lda #$02
    sta wNoteReleased.w, x

    ; get release idx to set to loop if not ff
    lda $01
    cmp #$ff
    bne +
    lda wGenericTempVar
    jmp @useLastByte
+   sta wGenericTempVar
    jmp @useLastByte

; Data

; todo: get from export
grooves:
    .dw @groove0
    .dw @groove1
    .dw @groove2
    .dw @groove3
    .dw @groove4
    .dw @groove5
    .dw @groove6
@groove0:
    .db $09 $00
@groove1:
    .db $09 $08 $00
@groove2:
    .db $08 $00
@groove3:
    .db $08 $07 $00
@groove4:
    .db $07 $00
@groove5:
    .db $07 $06 $00
@groove6:
    .db $06 $00

; todo: loop point is DPCM's Bxx
numFramesAndLoopPoint:
    .db $08 $06

; last col (conductor) is same as dpcm
framePhrases:
    .db $00 $00 $00 $00 $00 $00 $00 $00
    .db $01 $01 $01 $01 $01 $01 $01 $01
    .db $02 $02 $02 $00 $02 $01 $01 $02
    .db $02 $03 $03 $01 $02 $01 $01 $02
    .db $02 $04 $02 $00 $02 $01 $01 $02
    .db $02 $05 $05 $05 $05 $01 $01 $05
    .db $06 $06 $06 $06 $06 $06 $06 $06
    .db $07 $07 $07 $07 $07 $06 $06 $07

phraseAddrs:
    .dw @instrSQ1
    .dw @instrSQ2
    .dw @instrTRI
    .dw @instrNOISE
    .dw @instrDPCM
    .dw @instrPULSE1
    .dw @instrPULSE2
    .dw @instrConductor

@instrSQ1:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $ff
@@phrase1:
    .db $ff
@@phrase2:
    .db $90 $81
    .db $a0 $47
    .db $0b $06 $7f ; G#2
    .db $5e $7f
    .db $0d $06 $7f ; A#2
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $ff
@@phrase6:
    .db $90 $80 $a0 $00
    .db $03 $07 $c1 ; C2
    .db $03 $07 $c1 ; C2
    .db $5f $c3
    .db $03 $07 $c1 ; C2
    .db $5f $c1
    .db $6f $63
    .db $03 $07 $c1 ; C2
    .db $03 $07 $c1 ; C2
    .db $5f $c3
    .db $03 $07 $c1 ; C2
    .db $5f $c1
    .db $67
    .db $20 $08 $77 ; F4
    .db $23 $08 $91 ; G#4
    .db $5f $91
    .db $ff
@@phrase7:
    .db $90 $80 $a0 $00
    .db $03 $07 $c1 ; C2
    .db $03 $07 $c1 ; C2
    .db $6f $c3
    .db $03 $07 $c1 ; C2
    .db $5f $c1
    .db $6f $63
    .db $03 $07 $c1 ; C2
    .db $03 $07 $c1 ; C2
    .db $5f $c3
    .db $03 $07 $c1 ; C2
    .db $5f $c1
    .db $60
    .db $ff

@instrSQ2:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $ff
@@phrase1:
    .db $ff
@@phrase2:
    .db $62
    .db $90 $7f
    .db $a0 $47
    .db $0b $06 $2f ; G#2
    .db $5e $2f
    .db $0d $06 $2f ; A#2
    .db $ff
@@phrase3:
    .db $5e $22
    .db $a0 $47
    .db $0b $06 $2f ; G#2
    .db $5e $2f
    .db $a0 $49
    .db $0d $06 $2f ; A#2
    .db $5e $2a
    .db $a0 $00
    .db $90 $80
    .db $1b $02 $80 ; C4
    .db $1d $02 $90 ; D4
    .db $ff
@@phrase4:
    .db $1e $02 $a7 ; D#4
    .db $5f $ad
    .db $1e $09 $a1 ; D#4
    .db $20 $05 $a3 ; F4
    .db $5f $a1
    .db $1e $02 $a0 ; D#4
    .db $20 $03 $a0 ; F4
    .db $22 $02 $a7 ; G4
    .db $5f $a9
    .db $22 $09 $a1 ; G4
    .db $25 $04 $a3 ; A#4
    .db $23 $03 $a3 ; G#4
    .db $22 $02 $a0 ; G4
    .db $ff
@@phrase5:
    .db $22 $02 $31 ; G4
    .db $23 $04 $a5 ; G#4
    .db $5f $af
    .db $5f $a1
    .db $23 $09 $a3 ; G#4
    .db $25 $02 $a0 ; A#4
    .db $23 $03 $a0 ; G#4
    .db $22 $03 $a7 ; G4
    .db $5f $a0
    .db $ff
@@phrase6:
    .db $90 $81 $a0 $00
    .db $00 $07 $c1 ; A1
    .db $00 $07 $c1 ; A1
    .db $5f $c3
    .db $00 $07 $c1 ; A1
    .db $5f $c1
    .db $6f $63
    .db $00 $07 $c1 ; A1
    .db $00 $07 $c1 ; A1
    .db $5f $c3
    .db $00 $07 $c1 ; A1
    .db $5f $c1
    .db $63
    .db $22 $08 $67 ; G4
    .db $25 $08 $85 ; A#4
    .db $5f $91
    .db $ff
@@phrase7:
    .db $90 $81 $a0 $00
    .db $00 $07 $c1 ; A1
    .db $00 $07 $c1 ; A1
    .db $6f $c3
    .db $00 $07 $c1 ; A1
    .db $5f $c1
    .db $6f $63
    .db $00 $07 $c1 ; A1
    .db $00 $07 $c1 ; A1
    .db $5f $c3
    .db $00 $07 $c1 ; A1
    .db $5f $c1
    .db $60
    .db $ff

@instrTRI:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $60
    .db $ff
@@phrase1:
    .db $6f
    .db $67
    .db $0f $0c $13 ; C3
    .db $90 $80 $5e $10
    .db $90 $7f $5e $10
    .db $90 $7e $5e $10
    .db $90 $7b $5e $10
    .db $ff
@@phrase2:
    .db $0b $0c $17 ; G#2
    .db $5f $1f
    .db $5e $17
    .db $0a $0c $17 ; G2
    .db $5f $15
    .db $0d $0c $10 ; A#2
    .db $0f $0c $10 ; C3
    .db $11 $0c $17 ; D3
    .db $5f $16
    .db $80 $05
    .db $5e $10
    .db $ff
@@phrase3:
    .db $90 $70
    .db $12 $0c $10 ; D#3
    .db $90 $78
    .db $5e $10
    .db $90 $80
    .db $5e $15
    .db $5f $1f
    .db $5e $17
    .db $90 $70
    .db $14 $0c $10 ; F3
    .db $90 $78
    .db $5e $10
    .db $90 $80
    .db $5e $15
    .db $5f $15
    .db $13 $0c $10 ; E3
    .db $12 $0c $10 ; D#3
    .db $11 $0c $17 ; D3
    .db $5f $16
    .db $80 $05
    .db $5e $10
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $90 $70
    .db $12 $0c $10 ; D#3
    .db $90 $78
    .db $5e $10
    .db $90 $80
    .db $5e $15
    .db $5f $1f
    .db $5e $16
    .db $80 $05
    .db $5e $10
    .db $90 $70
    .db $14 $0c $10 ; F3
    .db $90 $78
    .db $5e $10
    .db $90 $80
    .db $5e $15
    .db $5f $15
    .db $14 $0c $10 ; F3
    .db $15 $0c $10 ; F#3
    .db $16 $0c $17 ; G3
    .db $5f $13
    .db $16 $0d $10 ; G3
    .db $ff
@@phrase6:
    .db $03 $0b $11 ; C2
    .db $03 $0b $12 ; C2
    .db $62
    .db $03 $0b $13 ; C2
    .db $6f $63
    .db $03 $0b $11 ; C2
    .db $03 $0b $12 ; C2
    .db $62
    .db $03 $0b $13 ; C2
    .db $60
    .db $ff
@@phrase7:
    .db $03 $0b $11 ; C2
    .db $03 $0b $12 ; C2
    .db $62
    .db $03 $0b $13 ; C2
    .db $63
    .db $80 $0a
    .db $05 $0f $11 ; D2
    .db $80 $0a
    .db $03 $0f $11 ; C2
    .db $09 $0f $11 ; F#2
    .db $0a $0f $11 ; G2
    .db $80 $0a
    .db $05 $0f $11 ; D2
    .db $80 $0a
    .db $03 $0f $11 ; C2
    .db $80 $0a
    .db $09 $0f $11 ; F#2
    .db $80 $0a
    .db $0a $0f $11 ; G2
    .db $03 $0b $11 ; C2
    .db $03 $0b $12 ; C2
    .db $62
    .db $03 $0b $13 ; C2
    .db $6f
    .db $0a $0f $10 ; G2
    .db $08 $0f $10 ; F2
    .db $06 $0f $10 ; D#2
    .db $05 $0f $10 ; D2
    .db $ff

@instrNOISE:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $01 $0f $16
    .db $01 $0f $20
    .db $01 $0f $17
    .db $01 $0f $21
    .db $01 $0f $16
    .db $01 $0f $20
    .db $01 $0f $16
    .db $01 $0f $22
    .db $01 $0f $17
    .db $01 $0f $23
    .db $01 $0f $17
    .db $01 $0f $22
    .db $01 $0f $10
    .db $ff
@@phrase1:
    .db $5e $10
    .db $01 $0f $23
    .db $01 $0f $16
    .db $01 $0f $22
    .db $01 $0f $15
    .db $01 $0f $22
    .db $01 $0f $18
    .db $01 $0f $26
    .db $01 $0f $14
    .db $01 $0f $20
    .db $01 $0f $18
    .db $01 $0f $21
    .db $01 $0f $10
    .db $ff
@@phrase2:
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $5e $10
    .db $01 $0f $23
    .db $01 $0f $16
    .db $01 $0f $22
    .db $01 $0f $15
    .db $01 $0f $22
    .db $01 $0f $18
    .db $01 $0f $26
    .db $01 $0f $14
    .db $01 $0f $20
    .db $01 $0f $18
    .db $01 $0f $20
    .db $01 $0f $30
    .db $01 $0f $40
    .db $01 $0f $50
    .db $01 $0f $60
    .db $01 $0f $70
    .db $02 $0f $80
    .db $03 $0f $90
    .db $04 $0f $b0
    .db $ff
@@phrase6:
    .db $04 $0e $c1
    .db $04 $0e $a5
    .db $04 $0e $c9
    .db $6d
    .db $04 $0e $c1
    .db $04 $0e $a5
    .db $04 $0e $c9
    .db $60
    .db $ff
@@phrase7:
    .db $04 $0e $c1
    .db $04 $0e $a5
    .db $04 $0e $c9
    .db $6d
    .db $04 $0e $c1
    .db $04 $0e $a5
    .db $04 $0e $c9
    .db $60
    .db $ff

@instrDPCM:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $ff
@@phrase1:
    .db $ff
@@phrase2:
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $ff
@@phrase6:
    .db $00 $f0 $01
    .db $00 $f1 $05
    .db $00 $f0 $07
    .db $4f
    .db $00 $f0 $01
    .db $00 $f1 $05
    .db $00 $f0 $00
    .db $ff
@@phrase7:
    .db $00 $f0 $01
    .db $00 $f1 $05
    .db $00 $f0 $07
    .db $4f
    .db $00 $f0 $01
    .db $00 $f1 $05
    .db $00 $f0 $03
    .db $00 $e0 $01
    .db $00 $e0 $01
    .db $00 $00 $01
    .db $00 $f1 $03
    .db $00 $f1 $01
    .db $00 $f0 $00
    .db $ff

@instrPULSE1:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
@@phrase0:
    .db $90 $82

    .db $03 $01 $51 ; C2

    .db $05 $01 $50 ; D2
    .db $70 $01 $20
    .db $06 $01 $50 ; D#2
    .db $71 $01 $20
    .db $0a $01 $50 ; G2
    .db $71 $01 $20
    .db $0b $01 $50 ; G#2
    .db $71 $01 $20
    .db $0f $01 $50 ; C3
    .db $71 $01 $20
    .db $11 $01 $50 ; D3
    .db $71 $01 $20
    .db $12 $01 $50 ; D#3
    .db $71 $01 $20

    .db $03 $01 $61 ; C2

    .db $05 $01 $60 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $03 $01 $71 ; C2

    .db $05 $01 $70 ; D2
    .db $70 $01 $20
    .db $06 $01 $70 ; D#2
    .db $71 $01 $20
    .db $0a $01 $70 ; G2
    .db $71 $01 $20
    .db $0b $01 $70 ; G#2
    .db $71 $01 $20
    .db $0f $01 $70 ; C3
    .db $71 $01 $20
    .db $11 $01 $70 ; D3
    .db $71 $01 $20
    .db $12 $01 $70 ; D#3
    .db $71 $01 $20

    .db $03 $01 $81 ; C2

    .db $05 $01 $80 ; D2
    .db $70 $01 $30
    .db $06 $01 $80 ; D#2
    .db $71 $01 $30
    .db $0a $01 $80 ; G2
    .db $71 $01 $30
    .db $0b $01 $80 ; G#2
    .db $71 $01 $30
    .db $0f $01 $80 ; C3
    .db $71 $01 $30
    .db $11 $01 $80 ; D3
    .db $71 $01 $30
    .db $12 $01 $80 ; D#3
    .db $71 $01 $30

    .db $ff
@@phrase1:
    .db $03 $01 $81 ; C2

    .db $05 $01 $80 ; D2
    .db $70 $01 $30
    .db $06 $01 $80 ; D#2
    .db $71 $01 $30
    .db $0a $01 $80 ; G2
    .db $71 $01 $30
    .db $0b $01 $80 ; G#2
    .db $71 $01 $30
    .db $0f $01 $80 ; C3
    .db $71 $01 $30
    .db $11 $01 $80 ; D3
    .db $71 $01 $30
    .db $12 $01 $80 ; D#3
    .db $71 $01 $30

    .db $03 $01 $81 ; C2

    .db $05 $01 $80 ; D2
    .db $70 $01 $30
    .db $06 $01 $80 ; D#2
    .db $71 $01 $30
    .db $0a $01 $80 ; G2
    .db $71 $01 $30
    .db $0b $01 $80 ; G#2
    .db $71 $01 $30
    .db $0f $01 $80 ; C3
    .db $71 $01 $30
    .db $11 $01 $80 ; D3
    .db $71 $01 $30
    .db $12 $01 $80 ; D#3
    .db $71 $01 $30

    .db $03 $01 $81 ; C2

    .db $05 $01 $80 ; D2
    .db $70 $01 $30
    .db $06 $01 $80 ; D#2
    .db $71 $01 $30
    .db $0a $01 $80 ; G2
    .db $71 $01 $30
    .db $0b $01 $80 ; G#2
    .db $71 $01 $30
    .db $0f $01 $80 ; C3
    .db $71 $01 $30
    .db $11 $01 $80 ; D3
    .db $71 $01 $30
    .db $12 $01 $80 ; D#3
    .db $71 $01 $30

    .db $03 $01 $81 ; C2

    .db $05 $01 $80 ; D2
    .db $70 $01 $30
    .db $06 $01 $80 ; D#2
    .db $71 $01 $30
    .db $0a $01 $80 ; G2
    .db $71 $01 $30
    .db $0b $01 $80 ; G#2
    .db $71 $01 $30
    .db $0f $01 $80 ; C3
    .db $71 $01 $30
    .db $11 $01 $80 ; D3
    .db $71 $01 $30
    .db $12 $01 $80 ; D#3
    .db $71 $01 $30

    .db $ff
@@phrase2:
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $ff
@@phrase6:
    .db $90 $80

    .db $03 $0a $81 ; C2

    .db $05 $0a $80 ; D2
    .db $70 $0a $30
    .db $06 $0a $80 ; D#2
    .db $71 $0a $30
    .db $0a $0a $80 ; G2
    .db $71 $0a $30
    .db $0b $0a $80 ; G#2
    .db $71 $0a $30
    .db $0f $0a $80 ; C3
    .db $71 $0a $30
    .db $11 $0a $80 ; D3
    .db $71 $0a $30
    .db $12 $0a $80 ; D#3
    .db $71 $0a $30

    .db $03 $0a $81 ; C2

    .db $05 $0a $80 ; D2
    .db $70 $0a $30
    .db $06 $0a $80 ; D#2
    .db $71 $0a $30
    .db $0a $0a $80 ; G2
    .db $71 $0a $30
    .db $0b $0a $80 ; G#2
    .db $71 $0a $30
    .db $0f $0a $80 ; C3
    .db $71 $0a $30
    .db $11 $0a $80 ; D3
    .db $71 $0a $30
    .db $12 $0a $80 ; D#3
    .db $71 $0a $30

    .db $03 $0a $81 ; C2

    .db $05 $0a $80 ; D2
    .db $70 $0a $30
    .db $06 $0a $80 ; D#2
    .db $71 $0a $30
    .db $0a $0a $80 ; G2
    .db $71 $0a $30
    .db $0b $0a $80 ; G#2
    .db $71 $0a $30
    .db $0f $0a $80 ; C3
    .db $71 $0a $30
    .db $11 $0a $80 ; D3
    .db $71 $0a $30
    .db $12 $0a $80 ; D#3
    .db $71 $0a $30

    .db $03 $0a $81 ; C2

    .db $05 $0a $80 ; D2
    .db $70 $0a $30
    .db $06 $0a $80 ; D#2
    .db $71 $0a $30
    .db $0a $0a $80 ; G2
    .db $71 $0a $30
    .db $0b $0a $80 ; G#2
    .db $71 $0a $30
    .db $0f $0a $80 ; C3
    .db $71 $0a $30
    .db $11 $0a $80 ; D3
    .db $71 $0a $30
    .db $12 $0a $80 ; D#3
    .db $71 $0a $30

    .db $ff

@instrPULSE2:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
@@phrase0:
    .db $90 $7e

    .db $03 $01 $21 ; C2

    .db $05 $01 $20 ; D2
    .db $70 $01 $10
    .db $06 $01 $20 ; D#2
    .db $71 $01 $10
    .db $0a $01 $20 ; G2
    .db $71 $01 $10
    .db $0b $01 $20 ; G#2
    .db $71 $01 $10
    .db $0f $01 $20 ; C3
    .db $71 $01 $10
    .db $11 $01 $20 ; D3
    .db $71 $01 $10
    .db $12 $01 $20 ; D#3
    .db $71 $01 $10

    .db $03 $01 $31 ; C2

    .db $05 $01 $30 ; D2
    .db $70 $01 $10
    .db $06 $01 $30 ; D#2
    .db $71 $01 $10
    .db $0a $01 $30 ; G2
    .db $71 $01 $10
    .db $0b $01 $40 ; G#2
    .db $71 $01 $10
    .db $0f $01 $40 ; C3
    .db $71 $01 $10
    .db $11 $01 $40 ; D3
    .db $71 $01 $10
    .db $12 $01 $40 ; D#3
    .db $71 $01 $10

    .db $03 $01 $51 ; C2

    .db $05 $01 $30 ; D2
    .db $70 $01 $20
    .db $06 $01 $50 ; D#2
    .db $71 $01 $20
    .db $0a $01 $50 ; G2
    .db $71 $01 $20
    .db $0b $01 $50 ; G#2
    .db $71 $01 $20
    .db $0f $01 $50 ; C3
    .db $71 $01 $20
    .db $11 $01 $50 ; D3
    .db $71 $01 $20
    .db $12 $01 $50 ; D#3
    .db $71 $01 $20

    .db $03 $01 $61 ; C2

    .db $05 $01 $30 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $ff
@@phrase1:
    .db $03 $01 $61 ; C2

    .db $05 $01 $60 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $03 $01 $61 ; C2

    .db $05 $01 $60 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $03 $01 $61 ; C2

    .db $05 $01 $60 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $03 $01 $61 ; C2

    .db $05 $01 $60 ; D2
    .db $70 $01 $20
    .db $06 $01 $60 ; D#2
    .db $71 $01 $20
    .db $0a $01 $60 ; G2
    .db $71 $01 $20
    .db $0b $01 $60 ; G#2
    .db $71 $01 $20
    .db $0f $01 $60 ; C3
    .db $71 $01 $20
    .db $11 $01 $60 ; D3
    .db $71 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20

    .db $ff
@@phrase2:
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $ff
@@phrase6:
    .db $0f $01 $61 ; C3

    .db $11 $01 $60 ; D3
    .db $70 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20
    .db $16 $01 $60 ; G3
    .db $71 $01 $20
    .db $17 $01 $60 ; G#3
    .db $71 $01 $20
    .db $1b $01 $60 ; C4
    .db $71 $01 $20
    .db $1d $01 $60 ; D4
    .db $71 $01 $20
    .db $1e $01 $60 ; D#4
    .db $71 $01 $20

    .db $0f $01 $61 ; C3

    .db $11 $01 $60 ; D3
    .db $70 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20
    .db $16 $01 $60 ; G3
    .db $71 $01 $20
    .db $17 $01 $60 ; G#3
    .db $71 $01 $20
    .db $1b $01 $60 ; C4
    .db $71 $01 $20
    .db $1d $01 $60 ; D4
    .db $71 $01 $20
    .db $1e $01 $60 ; D#4
    .db $71 $01 $20

    .db $0f $01 $61 ; C3

    .db $11 $01 $60 ; D3
    .db $70 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20
    .db $16 $01 $60 ; G3
    .db $71 $01 $20
    .db $17 $01 $60 ; G#3
    .db $71 $01 $20
    .db $1b $01 $60 ; C4
    .db $71 $01 $20
    .db $1d $01 $60 ; D4
    .db $71 $01 $20
    .db $1e $01 $60 ; D#4
    .db $71 $01 $20

    .db $0f $01 $61 ; C3

    .db $11 $01 $60 ; D3
    .db $70 $01 $20
    .db $12 $01 $60 ; D#3
    .db $71 $01 $20
    .db $16 $01 $60 ; G3
    .db $71 $01 $20
    .db $17 $01 $60 ; G#3
    .db $71 $01 $20
    .db $1b $01 $60 ; C4
    .db $71 $01 $20
    .db $1d $01 $60 ; D4
    .db $71 $01 $20
    .db $1e $01 $60 ; D#4
    .db $71 $01 $20

    .db $ff

@instrConductor:
    .dw @@phrase0
    .dw @@phrase1
    .dw @@phrase2
    .dw @@phrase3
    .dw @@phrase4
    .dw @@phrase5
    .dw @@phrase6
    .dw @@phrase7
@@phrase0:
    .db $90 $8f $87 $91 $87 $92 $87 $93
    .db $87 $94 $8b $95 $ff
@@phrase1:
    .db $20 $96 $ff
@@phrase2:
    .db $ff
@@phrase3:
    .db $ff
@@phrase4:
    .db $ff
@@phrase5:
    .db $8f $8f $8f $95 $83 $94 $83 $93 $83 $92 $ff
@@phrase6:
    .db $96 $ff
@@phrase7:
    .db $ff

; vol - arp - pitch - n/a - duty/noise
; todo: python script to convert out of ranges to $ff
instrumentData:
    .db $ff $ff $ff $ff $ff ; 00
    .db $00 $ff $07 $ff $00 ; 01
    .db $02 $ff $02 $ff $03 ; 02
    .db $02 $ff $02 $ff $02 ; 03
    .db $02 $ff $09 $ff $03 ; 04
    .db $02 $ff $09 $ff $02 ; 05
    .db $01 $00 $07 $ff $01 ; 06
    .db $05 $03 $ff $ff $05 ; 07
    .db $06 $ff $06 $ff $06 ; 08
    .db $07 $ff $03 $ff $07 ; 09
    .db $00 $ff $01 $ff $00 ; 0a
    .db $ff $02 $ff $ff $ff ; 0b
    .db $ff $ff $04 $ff $ff ; 0c
    .db $ff $ff $05 $ff $ff ; 0d
    .db $03 $01 $ff $ff $ff ; 0e
    .db $08 $ff $ff $ff $04 ; 0f


; loop - release - length - vals
instrumentVolData:
    .dw @vol0
    .dw @vol1
    .dw @vol2
    .dw @vol3
    .dw @vol4
    .dw @vol5
    .dw @vol6
    .dw @vol7
    .dw @vol8

@vol0:
    .db $12 $12 $14, $0f $0e $0d $0c $0b $0a $0a $09 $09 $08 $07 $06 $06 $05 $04 $04 $03 $02 $01 $01
@vol1:
    .db $ff $ff $20, $01 $01 $01 $02 $02 $02 $02 $02 $02 $02 $03 $03 $03 $03 $03 $04 $04 $04 $05 $05 $06 $06 $07 $07 $08 $09 $0a $0b $0c $0d $0e $0f
@vol2:
    .db $02 $02 $04, $0f $0e $0e $0e
@vol3:
    .db $21 $21 $22, $0f $0e $0d $0c $0b $0a $0a $09 $09 $08 $08 $07 $07 $07 $06 $06 $05 $05 $05 $04 $04 $04 $03 $03 $03 $03 $03 $02 $02 $02 $02 $02 $02 $01
@vol4:
@vol5:
    .db $04 $05 $11, $0f $0d $0c $0a $0a $0a $08 $07 $05 $04 $02 $01 $01 $06 $03 $02 $01
@vol6:
    .db $08 $ff $0e, $03 $04 $05 $07 $08 $0b $0c $0d $0f $0c $08 $09 $0d $e
@vol7:
    .db $ff $ff $01, $0e
@vol8:
    .db $00 $01 $04, $0f $0f $00 $00


instrumentArpData:
    .dw @arp0
    .dw @arp1
    .dw @arp2
    .dw @arp3

@arp0:
    .db $00 $ff $08, $00 $00 $40 $40 $80 $80 $0c $0c
@arp1:
    .db $02 $ff $04, $00 $02 $03 $04
@arp2:
    .db $ff $ff $03, $2d $28 $21
@arp3:
    .db $ff $ff $02, $f4 $00


instrumentPitch:
    .dw @pitch0
    .dw @pitch1
    .dw @pitch2
    .dw @pitch3
    .dw @pitch4
    .dw @pitch5
    .dw @pitch6
    .dw @pitch7
    .dw @pitch8
    .dw @pitch9

@pitch0:
@pitch1:
    .db $00 $ff $10, $02 $01 $01 $00 $00 $ff $ff $fe $fe $ff $ff $00 $00 $01 $01 $02
@pitch2:
    .db $01 $00 $0b, $00 $02 $01 $01 $fe $fe $ff $fe $ff $02 $02
@pitch3:
    .db $00 $ff $01, $14
@pitch4:
    .db $01 $01 $0d, $00 $fd $fe $ff $01 $02 $03 $03 $02 $01 $ff $fe $fd
@pitch5:
    .db $00 $ff $01, $10
@pitch6:
    .db $01 $00 $0b, $00 $fe $fe $01 $01 $02 $02 $02 $ff $ff $fe
@pitch7:
    .db $00 $00 $01, $00
@pitch8:
@pitch9:
    .db $10 $ff $19, $0a $ff $00 $ff $00 $ff $00 $ff $00 $ff $ff $ff $ff $00 $00 $02 $01 $01 $fe $fe $ff $fe $ff $02 $02


instrumentDutyNoise:
    .dw @dt0
    .dw @dt1
    .dw @dt2
    .dw @dt3
    .dw @dt4
    .dw @dt5
    .dw @dt6
    .dw @dt7

@dt0:
    .db $04 $04 $08, $01 $00 $00 $00 $00 $00 $00 $00
@dt1:
    .db $00 $ff $0c, $00 $00 $00 $01 $01 $01 $02 $02 $02 $01 $01 $01
@dt2:
    .db $04 $04 $08, $00 $01 $01 $01 $01 $01 $01 $01
@dt3:
    .db $04 $04 $08, $01 $02 $02 $02 $02 $02 $02 $02
@dt4:
    .db $00 $ff $08, $01 $01 $01 $01 $00 $00 $00 $00
@dt5:
    .db $ff $ff $02, $01 $00
@dt6:
    .db $00 $ff $10, $02 $02 $02 $02 $01 $01 $01 $01 $00 $00 $00 $00 $01 $01 $01 $01
@dt7:
    .db $00 $ff $04, $02 $02 $02 $02


frequencyData:
	.dw $03ed ; A1
	.dw $03b5 ; A#1
	.dw $0380 ; B1
	.dw $034d ; C2
	.dw $031e ; C#2
	.dw $02f1 ; D2
	.dw $02c7 ; D#2
	.dw $029f ; E2
	.dw $0279 ; F2
	.dw $0255 ; F#2
	.dw $0234 ; G2
	.dw $0214 ; G#2
