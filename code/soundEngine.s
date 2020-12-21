
b18_initSound:
; preserve X
	lda #$00
	stx wGenericTempVar
	tax

; store 0 for instruments sq1, sq2, tri
-	sta wInstrumentsSoundIdxes.w, x
	inx
	cpx #$03
	bcc -

; 1up sound has priority for 2nd sq1, otherwise clear it
	lda wInstrumentsSoundIdxes.w, x
	cmp #SND_1UP
	beq +

	lda #$00
	sta wInstrumentsSoundIdxes.w, x

; store 0 for 2nd sq2, noise 1, noise 2, dmc
+	lda #$00
	inx
-	sta wInstrumentsSoundIdxes.w, x
	inx
	cpx #$07
	bcc -

; clear some base vars
B24_0782:		sta $0159		; 8d 59 01
B24_0785:		sta $0160		; 8d 60 01
B24_0788:		sta $0152		; 8d 52 01
	sta wSoundDataBank
B24_078d:		sta $06c9		; 8d c9 06
	sta wSoundShouldSkipDecreasingDelayBytes.w
	sta wSoundGlobalDelayFrames.w
	sta wSoundCounterForGlobalDelayFrames.w
	sta wTimeSpecialDMCSoundPlayed.w

; restore X
	ldx wGenericTempVar

initPauseSound:
	lda #SNDENA_NOISE|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w
	jsr b18_waitAFewCycles

; if playing 1up, dont disable sweep/vol, let it play
	lda wInstrumentsSoundIdxes.w+SQ1_2
	cmp #SND_1UP
	beq +

	lda #$7f
	sta SQ1_SWEEP.w
	jsr b18_waitAFewCycles

	lda #$30
	sta SQ1_VOL.w
	jsr b18_waitAFewCycles

+
; silence other channels
	lda #$30
	sta TRI_LINEAR.w
	jsr b18_waitAFewCycles
	sta SQ2_VOL.w
	jsr b18_waitAFewCycles
	sta NOISE_VOL.w
	jsr b18_waitAFewCycles

; disable sq2 sweep
	lda #$7f
	sta SQ2_SWEEP.w
	jsr b18_waitAFewCycles

	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w
	jsr b18_waitAFewCycles
	rts


b18_silenceAllSoundChannels:
	lda #SNDENA_NOISE|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w
	jsr b18_waitAFewCycles

	lda #$30
	sta TRI_LINEAR.w
	jsr b18_waitAFewCycles
	sta SQ1_VOL.w
	jsr b18_waitAFewCycles
	sta SQ2_VOL.w
	jsr b18_waitAFewCycles
	sta NOISE_VOL.w
	jsr b18_waitAFewCycles

	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w
	jsr b18_waitAFewCycles
	rts


initSoundIfPlayinNonPercussionSndAfterLifeLoss:
	lda wInstrumentsSoundIdxes.w
	cmp #MUS_LIFE_LOSS
	bne b18_playSound@afterCheckingIfWeCanInitSound

	lda wSoundToPlay
	cmp #SND_START
	bcc b18_playSound@afterCheckingIfWeCanInitSound

	rts


playSoundObjectDestroyCheck:
; dont play over thunder/holy water shatter
	lda wInstrumentsSoundIdxes.w, x
	cmp #SND_INTRO_SCENE_THUNDER
	beq b18_playSound@toToNextInstrument

	cmp #SND_HOLY_WATER_SHATTER
	beq b18_playSound@toToNextInstrument

	jmp b18_playSound@precedenceCheck


playSoundHolyWaterShatterCheck:
; takes precedence over enemy shattered/object destroyed sounds
	lda wInstrumentsSoundIdxes.w, x
	cmp #SND_ENEMY_SHATTERED
	beq b18_playSound@afterSpecialSoundCheckAndPrecedenceCheck

	cmp #SND_OBJECT_DESTROY
	beq b18_playSound@afterSpecialSoundCheckAndPrecedenceCheck

	jmp b18_playSound@precedenceCheck


b18_playSound:
	sta wSoundToPlay
	cmp #SND_DMC_START
	bcc +

	jmp b18_playDMCSound

+	cmp #SND_MUSIC_START
	bcc initSoundIfPlayinNonPercussionSndAfterLifeLoss

; init sound if music
	jsr b18_initSound

@afterCheckingIfWeCanInitSound:
	stx wSoundBankTempVar1
	sty wSoundBankTempVar2

	lda wSoundToPlay
	asl a
	tay

; sound idx always > 0
	lda soundMetadataAddresses.w-2, y
	sta wSoundMetadataAddr
	lda soundMetadataAddresses.w-1, y
	sta wSoundMetadataAddr+1
	ldy #$00
	lda (wSoundMetadataAddr), y

; 1st 2 bytes is bank, then num instruments-1
	sta wSoundDataBank
	iny
	lda (wSoundMetadataAddr), y
	sta wSoundNumInstrumentsMinus1

@nextInstrument:
; get current instrument idx into X
	iny
	lda (wSoundMetadataAddr), y
	tax

	lda wSoundToPlay
	cmp #SND_OBJECT_DESTROY
	beq playSoundObjectDestroyCheck

	cmp #SND_HOLY_WATER_SHATTER
	beq playSoundHolyWaterShatterCheck

; higher sound idx takes precedence on instrument(eg lower is small effects)
@precedenceCheck:
	lda wSoundToPlay
	cmp wInstrumentsSoundIdxes.w, x
	bcs @afterSpecialSoundCheckAndPrecedenceCheck

@toToNextInstrument:
	iny
	iny
	jmp B24_08ea@toNextInstrument

@afterSpecialSoundCheckAndPrecedenceCheck:
; save instrument data bytes addr
	iny
	lda (wSoundMetadataAddr), y
	sta wInstrumentData_lo.w, x
	sta wTempCurrInstrumentDataAddr
	iny
	lda (wSoundMetadataAddr), y
	sta wInstrumentData_hi.w, x
	sta wTempCurrInstrumentDataAddr+1

; init vars for all instruments
	lda #$00
	sta wSoundCtrsForLastLoop.w, x
	lda #$01
	sta wInstrumentsFramesUntilNextByteProcessed.w, x
	cpx #INSTR_NOISE_1
B24_089a:		beq B24_08c8 ; f0 2c

; all instruments except noise 1 (percussion controller)
; use full length counter load
	lda #LENGTH_COUNTER_LOAD
	sta wInstrumentLastFreq_hi.w, x
	cpx #INSTR_NOISE_2
B24_08a3:		beq B24_08c8 ; f0 23

; all instruments except actual noise channel
B24_08a5:		lda #$00		; a9 00
B24_08a7:		sta w16e.w, x	; 9d 6e 01
B24_08aa:		sta w169.w, x	; 9d 69 01
	sta wInstrumentFrequencyAdjust.w, x

	cpx #INSTR_SQ1_2
B24_08b2:		beq B24_08c8 ; f0 14
	cpx #INSTR_SQ2_2
B24_08b6:		beq B24_08c8 ; f0 10

; all instruments except actual noise, sq1/2 #2 (sound effects)
B24_08b8:		sta $0180, x	; 9d 80 01
B24_08bb:		sta $03d8, x	; 9d d8 03
B24_08be:		lda #$01		; a9 01
B24_08c0:		sta wCurrEnvelopeByteTimeUntilNext.w, x	; 9d de 03
B24_08c3:		lda #$80		; a9 80
B24_08c5:		sta $06ac, x	; 9d ac 06

; store bank containing instrument's data bytes
B24_08c8:		lda wSoundDataBank			; a5 eb
	sta wInstrumentDataBanks.w, x

; check 1st instrument data byte
	sty wSoundBankTempInstMetadataOffset			; 84 e2
	ldy #$00		; a0 00
	jsr getCurrInstrument1stDataByte		; 20 b5 e1

; y remains 1 if above is < $10
; or current instrument is not the sq1/2 #2
B24_08d4:		iny				; c8 
B24_08d5:		cmp #$10		; c9 10
B24_08d7:		bcc B24_08e2 ; 90 09

B24_08d9:		cpx #INSTR_SQ1_2		; e0 03
B24_08db:		beq B24_08e2 ; f0 05
B24_08dd:		cpx #INSTR_SQ2_2		; e0 04
B24_08df:		beq B24_08e2 ; f0 01

B24_08e1:		dey				; 88 

B24_08e2:		tya				; 98 
B24_08e3:		sta w115.w, x	; 9d 15 01
	ldy wSoundBankTempInstMetadataOffset

; store sound to play so we can check logic for sound
; playing over each other
	lda wSoundToPlay
B24_08ea:	sta wInstrumentsSoundIdxes.w, x

@toNextInstrument:
	dec wSoundNumInstrumentsMinus1
	bmi +

	jmp b18_playSound@nextInstrument

; restore vars
+	ldx wSoundBankTempVar1
	ldy wSoundBankTempVar2
	rts


; A is sound idx > $6d
b18_playDMCSound:
	sec
	sbc #SND_DMC_START
	sta wDMCToPlay
	cmp #SND_SPECIAL_DMC_START-SND_DMC_START
	bcc +

; dmc sound idx >= 7a (screams)
	inc wTimeSpecialDMCSoundPlayed.w

; jump (always play) if percussion
+	lda wCurrentlyPlayingDMCSoundIdx.w
	cmp #SND_START-1
	bcc +

; special effect, higher vals take precedence
	lda wDMCToPlay
	cmp wCurrentlyPlayingDMCSoundIdx.w
	bcs ++

	rts

+	lda wDMCToPlay
++	sta wCurrentlyPlayingDMCSoundIdx.w

; preserve Y
	sty wGenericTempVar

; write to DMC regs
	lda wDMCToPlay
	asl a
	asl a
	tay
	lda dpcmSpecData.w+1, y
	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w

	lda dpcmSpecData.w, y
	sta DMC_FREQ.w
	lda dpcmSpecData.w+1, y
	sta DMC_RAW.w
	lda dpcmSpecData.w+2, y
	sta DMC_START.w
	lda dpcmSpecData.w+3, y
	sta DMC_LEN.w

	lda #SNDENA_DMC|SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w

; restore Y
	ldy wGenericTempVar

; always follow a open high hat with a high snare hit
	lda wDMCToPlay
	cmp #SND_OPEN_HI_HAT
	beq +

	rts

+	lda #SND_HIGH_SNARE
	jmp b18_playSound


; A is wIsPaused
processPauseOrUnpause:
	sta wPauseSoundPlayed.w
	cmp #$00
	beq +

	jmp initPauseSound

; pause sound not yet played, continue if 2nd sq1 is free
+	lda wInstrumentsSoundIdxes.w+INSTR_SQ1_2
	beq +

	rts

+
;
	lda wInstrumentsSoundIdxes.w+INSTR_SQ1_1
B24_0966:		beq B24_096f ; f0 07

B24_0968:		ldx #INSTR_SQ1_1		; a2 00
B24_096a:		ldy #<SQ1_VOL		; a0 00
B24_096c:		jsr func_18_0986		; 20 86 89

B24_096f:		lda wInstrumentsSoundIdxes.w+INSTR_SQ2_1
B24_0972:		beq B24_097b ; @done

B24_0974:		ldx #INSTR_SQ2_1		; a2 01
B24_0976:		ldy #<SQ2_VOL		; a0 04
B24_0978:		jsr func_18_0986		; 20 86 89
@done:
B24_097b:		rts				; 60 


; silence channel
B24_097c:		lda #$30		; a9 30
B24_097e:		sta SND_VOL.w, x	; 9d 00 40
B24_0981:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0984:		bne B24_099d ; d0 17

func_18_0986:
B24_0986:		lda w115.w, x	; bd 15 01
B24_0989:		and #$41		; 29 41
B24_098b:		ora wPauseSoundPlayed.w		; 0d 67 01
B24_098e:		ora $06c9		; 0d c9 06
B24_0991:		bne B24_097c ; d0 e9

B24_0993:		lda $0154, x	; bd 54 01
B24_0996:		stx $e3			; 86 e3
B24_0998:		jsr func_18_0b94		; 20 94 8b

B24_099b:		ldx $e3			; a6 e3

; play note with lowest length ctr
B24_099d:		lda wInstrumentLastFreq_lo.w, x	; bd 78 01
B24_09a0:		sta SND_FREQ_LO.w, y	; 99 02 40
B24_09a3:		jsr b18_waitAFewCycles		; 20 23 8f

B24_09a6:		lda wInstrumentLastFreq_hi.w, x	; bd 4d 01
B24_09a9:		ora #$08		; 09 08
B24_09ab:		sta SND_FREQ_HI.w, y	; 99 03 40
B24_09ae:		jmp b18_waitAFewCycles		; 4c 23 8f


; played during update if 160 non-zero
func_18_09b1:
B24_09b1:		cmp #$01		; c9 01
B24_09b3:		bne B24_09b8 ; d0 03

B24_09b5:		jmp b18_initSound		; 4c 5e 87

B24_09b8:		cmp #$02		; c9 02
B24_09ba:		bne B24_09c8 ; d0 0c

B24_09bc:		lda $0159		; ad 59 01
B24_09bf:		cmp #$07		; c9 07
B24_09c1:		bne B24_09c8 ; d0 05

B24_09c3:		lda #$00		; a9 00
B24_09c5:		sta $010c		; 8d 0c 01
B24_09c8:		inc $0159		; ee 59 01
B24_09cb:		lda #$20		; a9 20
B24_09cd:		cmp $0159		; cd 59 01
B24_09d0:		bne B24_09dd ; d0 0b

B24_09d2:		lda #$00		; a9 00
B24_09d4:		sta $0159		; 8d 59 01
B24_09d7:		inc $0152		; ee 52 01
B24_09da:		dec $0160		; ce 60 01
B24_09dd:		rts				; 60 


b18_updateSound:
; if global delay frames set..
	lda wSoundGlobalDelayFrames.w
	beq @setDontSkipDecreasingDelay

; count until that many frames passed..
	inc wSoundCounterForGlobalDelayFrames.w
	lda wSoundCounterForGlobalDelayFrames.w
	cmp wSoundGlobalDelayFrames.w
	bne @setDontSkipDecreasingDelay

; then clear ctr, skip decreasing more delay bytes
	lda #$00
	sta wSoundCounterForGlobalDelayFrames.w
	lda #$01
	sta wSoundShouldSkipDecreasingDelayBytes.w
	bne +

@setDontSkipDecreasingDelay:
	lda #$00
	sta wSoundShouldSkipDecreasingDelayBytes.w

; once special DMC sound has been played for $f0 frames...
+	lda wTimeSpecialDMCSoundPlayed.w
	beq @afterSpecialDMCSound

	inc wTimeSpecialDMCSoundPlayed.w
	lda wTimeSpecialDMCSoundPlayed.w
	cmp #$f0
	bne @afterSpecialDMCSound

; disable DMC channel
	lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1
	sta SND_CHN.w
	jsr b18_waitAFewCycles
	lda #$00
	sta wTimeSpecialDMCSoundPlayed.w

@afterSpecialDMCSound:
; process pause if needed
	lda wIsPaused
	cmp wPauseSoundPlayed.w
	beq +

	jsr processPauseOrUnpause
+
;
	lda $0160		; ad 60 01
	beq +

	jsr func_18_09b1		; 20 b1 89

; set if dmc channel enabled
+	lda SND_CHN.w
	and #SNDENA_DMC
	bne +

	lda #$00
	sta wCurrentlyPlayingDMCSoundIdx.w
+
; loop updating each instrument
	ldx #$00
	ldy #$00

-	stx wCurrInstrumentIdx
	sty wCurrInstrumentHwRegOffset.w

; 0 is not a valid sound
	lda wInstrumentsSoundIdxes.w, x
	beq +

	jsr updateInstrument

+	inx
	cpx #INSTR_DPCM
	beq @done

	lda @sndChannelHwRegBases.w, x
	tay
	jmp -

@done:
	rts

@sndChannelHwRegBases:
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <TRI_LINEAR
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <NOISE_VOL
	.db <NOISE_VOL


updateInstrument:
; ignore non-pause sounds if pause sound played
B24_0a5e:		lda wPauseSoundPlayed.w		; ad 67 01
B24_0a61:		beq B24_0a6b ; @pauseNotPlayed

B24_0a63:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0a66:		cmp #SND_PAUSE		; c9 4d
B24_0a68:		beq B24_0a76 ; f0 0c

B24_0a6a:		rts				; 60 

@pauseNotPlayed:
B24_0a6b:		lda $06c9		; ad c9 06
B24_0a6e:		beq B24_0a76 ; f0 06

; if 6c9 set, and 115+ bit 0 clear, we're done
B24_0a70:		lda w115.w, x	; bd 15 01
B24_0a73:		lsr a			; 4a
B24_0a74:		bcc b18_updateSound@done

B24_0a76:		cpx #INSTR_NOISE_2		; e0 06
B24_0a78:		beq B24_0a9d ; f0 23

; if 115+ bit 0 clear, and we should
; skip decreasing delay, we're done
B24_0a7a:		lda w115.w, x	; bd 15 01
B24_0a7d:		lsr a			; 4a
B24_0a7e:		bcs B24_0a86 ; b0 06

B24_0a80:		lda wSoundShouldSkipDecreasingDelayBytes.w		; ad 8f 01
B24_0a83:		beq B24_0a86 ; f0 01

B24_0a85:		rts				; 60 

B24_0a86:		dec wInstrumentsFramesUntilNextByteProcessed.w, x	; de 00 01
B24_0a89:		bne B24_0ad0 ; d0 45

B24_0a8b:		ldy #$00		; a0 00

; cache curr instrument data addr
B24_0a8d:		lda wInstrumentData_lo.w, x	; bd 23 01
B24_0a90:		sta wCurrInstrumentDataAddr			; 85 e0
B24_0a92:		lda wInstrumentData_hi.w, x	; bd 2a 01
B24_0a95:		sta wCurrInstrumentDataAddr+1			; 85 e1

B24_0a97:		lda w115.w, x	; bd 15 01
B24_0a9a:		jmp func_18_0dc1		; 4c c1 8d

; instrument 6 (noise 2) when 6c9 set
; skip delay logic for non-percussion
B24_0a9d:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0aa0:		cmp #SND_START		; c9 06
B24_0aa2:		bcc B24_0a80 ; 90 dc

B24_0aa4:		bcs B24_0a86 ; b0 e0

;
B24_0aa6:		inc $0193		; ee 93 01
B24_0aa9:		and #$40		; 29 40
B24_0aab:		bne B24_0ace ; d0 21

B24_0aad:		lda $0193		; ad 93 01
B24_0ab0:		and #$0f		; 29 0f
B24_0ab2:		bne B24_0ace ; d0 1a

B24_0ab4:		lda $015b, x	; bd 5b 01
B24_0ab7:		beq B24_0ace ; f0 15

B24_0ab9:		cmp #$80		; c9 80
B24_0abb:		bcs B24_0ace ; b0 11

B24_0abd:		lda $0194		; ad 94 01
B24_0ac0:		sec				; 38 
B24_0ac1:		sbc #$40		; e9 40
B24_0ac3:		bcc B24_0ace ; 90 09

B24_0ac5:		sta $0194		; 8d 94 01
B24_0ac8:		sta TRI_LINEAR.w		; 8d 08 40
B24_0acb:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0ace:		rts				; 60 

B24_0acf:		rts				; 60 

; jumped here if still not yet time to process next byte
B24_0ad0:		lda w115.w, x	; bd 15 01
B24_0ad3:		cpx #$02		; e0 02
B24_0ad5:		beq B24_0aa6 ; f0 cf

B24_0ad7:		bcs B24_0acf ; b0 f6

B24_0ad9:		lda w115.w, x	; bd 15 01
B24_0adc:		and #$41		; 29 41
B24_0ade:		bne B24_0acf ; d0 ef

B24_0ae0:		lda $06ac, x	; bd ac 06
B24_0ae3:		bmi B24_0b09 ; 30 24

B24_0ae5:		lda w10e.w, x	; bd 0e 01
B24_0ae8:		sta $e2			; 85 e2
B24_0aea:		lda $06ac, x	; bd ac 06
B24_0aed:		and #$10		; 29 10
B24_0aef:		beq B24_0af6 ; f0 05

B24_0af1:		lda $e2			; a5 e2
B24_0af3:		asl a			; 0a
B24_0af4:		sta $e2			; 85 e2
B24_0af6:		lda wInstrumentsFramesUntilNextByteProcessed.w, x	; bd 00 01
B24_0af9:		sec				; 38 
B24_0afa:		sbc $e2			; e5 e2
B24_0afc:		beq B24_0b45

B24_0afe:		bcs B24_0af9 ; b0 f9

func_18_0b00:
B24_0b00:		lda w115.w, x	; bd 15 01
B24_0b03:		and #$06		; 29 06
B24_0b05:		cmp #$06		; c9 06
B24_0b07:		beq B24_0b1e ; f0 15

B24_0b09:		lda w16e.w, x	; bd 6e 01
B24_0b0c:		and #$10		; 29 10
B24_0b0e:		beq B24_0b1e ; f0 0e

B24_0b10:		dec wCurrEnvelopeByteTimeUntilNext.w, x	; de de 03
B24_0b13:		bne B24_0b1e ; d0 09

B24_0b15:		inc wCurrEnvelopeByteTimeUntilNext.w, x	; fe de 03
B24_0b18:		jsr b18_processNextEnvelopeByte		; 20 fa 8c
B24_0b1b:		jsr b18_soundCommon.func_18_01cd		; 20 cd 81
B24_0b1e:		dec $03c0, x	; de c0 03
B24_0b21:		bne B24_0b3c ; d0 19

B24_0b23:		inc $03c0, x	; fe c0 03
B24_0b26:		jsr func_18_0c25		; 20 25 8c
B24_0b29:		lda w115.w, x	; bd 15 01
B24_0b2c:		and #$06		; 29 06
B24_0b2e:		tay				; a8 
B24_0b2f:		lda data_18_0b3d.w, y	; b9 3d 8b
B24_0b32:		sta wSoundBankJumpAddr			; 85 e2
B24_0b34:		lda data_18_0b3d.w+1, y	; b9 3e 8b
B24_0b37:		sta wSoundBankJumpAddr+1			; 85 e3
B24_0b39:		jmp (wSoundBankJumpAddr)

B24_0b3c:		rts				; 60 

data_18_0b3d:
	.dw func_18_0b55
	.dw func_18_0c0a
	.dw func_18_0c1e
	.dw func_18_0c77

B24_0b45:		lda wInstrumentFrequency_lo.w, x		; bd 83 01
B24_0b48:		sta wSoundFrequency	; 85 ec
B24_0b4a:		lda wInstrumentFrequency_hi.w, x		; bd 86 01
B24_0b4d:		sta wSoundFrequency+1	; 85 ed
B24_0b4f:		jsr b18_soundCommon.func_18_0229		; 20 29 82
B24_0b52:		jmp func_18_0b00		; 4c 00 8b


func_18_0b55:
B24_0b55:		lda w189.w, x	; bd 89 01
B24_0b58:		asl a			; 0a
B24_0b59:		tay				; a8 
B24_0b5a:		lda data_18_1e25.w, y	; b9 25 9e
B24_0b5d:		sta $e2			; 85 e2
B24_0b5f:		lda data_18_1e25.w+1, y	; b9 26 9e
B24_0b62:		sta $e3			; 85 e3

func_18_0b64:
B24_0b64:		lda $03c3, x	; bd c3 03
B24_0b67:		tay				; a8 
B24_0b68:		lda ($e2), y	; b1 e2
B24_0b6a:		cmp #$fb		; c9 fb
B24_0b6c:		bcc B24_0b71 ; 90 03

B24_0b6e:		jmp func_18_0bd3		; 4c d3 8b

B24_0b71:		cmp #$10		; c9 10
B24_0b73:		bcc B24_0b7c ; 90 07

B24_0b75:		lsr a			; 4a
B24_0b76:		lsr a			; 4a
B24_0b77:		lsr a			; 4a
B24_0b78:		lsr a			; 4a
B24_0b79:		sta $03c0, x	; 9d c0 03
B24_0b7c:		inc $03c3, x	; fe c3 03
B24_0b7f:		lda ($e2), y	; b1 e2
B24_0b81:		and #$0f		; 29 0f
B24_0b83:		beq B24_0b91 ; f0 0c

B24_0b85:		sec				; 38 
B24_0b86:		sbc $06b2, x	; fd b2 06
B24_0b89:		bcc B24_0b8f ; 90 04

B24_0b8b:		beq B24_0b8f ; f0 02

B24_0b8d:		bne B24_0b91 ; d0 02

B24_0b8f:		lda #$01		; a9 01

func_18_0b91:
B24_0b91:		sta $0154, x	; 9d 54 01

func_18_0b94:
B24_0b94:		ora $0154, x	; 1d 54 01
B24_0b97:		beq B24_0ba9 ; f0 10

B24_0b99:		sec				; 38 
B24_0b9a:		sbc w169.w, x	; fd 69 01
B24_0b9d:		bcc B24_0bc5 ; 90 26

B24_0b9f:		beq B24_0bc5 ; f0 24

B24_0ba1:		sec				; 38 
B24_0ba2:		sbc $0152		; ed52 01
B24_0ba5:		bcc B24_0bc5 ; 90 1e

B24_0ba7:		beq B24_0bc5 ; f0 1c

B24_0ba9:		sta $e2			; 85 e2
B24_0bab:		lda w16e.w, x	; bd 6e 01
B24_0bae:		and #$20		; 29 20
B24_0bb0:		bne B24_0bc9 ; d0 17

B24_0bb2:		lda $e2			; a5 e2
B24_0bb4:		ora $0162, x	; 1d 62 01

B24_0bb7:		jsr b18_soundCommon.secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_0bba:		bcs B24_0bc2 ; b0 06

B24_0bbc:		sta SND_VOL.w, x	; 9d 00 40
B24_0bbf:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0bc2:		ldx wCurrInstrumentIdx			; a6 ee
B24_0bc4:		rts				; 60 

B24_0bc5:		lda #$01		; a9 01
B24_0bc7:		bne B24_0ba9 ; d0 e0

B24_0bc9:		lda $03d8, x	; bd d8 03
B24_0bcc:		and #$f0		; 29 f0
B24_0bce:		ora $e2			; 05 e2
B24_0bd0:		jmp B24_0bb7		; 4c b7 8b


func_18_0bd3:
B24_0bd3:		cmp #$fe		; c9 fe
B24_0bd5:		beq B24_0be5 ; f0 0e

B24_0bd7:		bcs B24_0c58 ; b0 7f

B24_0bd9:		inc $03c3, x	; fe c3 03
B24_0bdc:		lda $03c3, x	; bd c3 03
B24_0bdf:		sta $03c9, x	; 9d c9 03
B24_0be2:		jmp func_18_0b64		; 4c 64 8b


B24_0be5:		iny				; c8 
B24_0be6:		inc $03c6, x	; fe c6 03
B24_0be9:		lda ($e2), y	; b1 e2
B24_0beb:		cmp $03c6, x	; dd c6 03
B24_0bee:		bne B24_0c01 ; d0 11

B24_0bf0:		lda #$00		; a9 00
B24_0bf2:		sta $03c6, x	; 9d c6 03
B24_0bf5:		sta $03c9, x	; 9d c9 03
B24_0bf8:		inc $03c3, x	; fe c3 03
B24_0bfb:		inc $03c3, x	; fe c3 03
B24_0bfe:		jmp func_18_0b64		; 4c 64 8b


B24_0c01:		lda $03c9, x	; bd c9 03
B24_0c04:		sta $03c3, x	; 9d c3 03
B24_0c07:		jmp func_18_0b64		; 4c 64 8b


func_18_0c0a:
B24_0c0a:		dec $03c3, x	; de c3 03
B24_0c0d:		bmi B24_0c58 ; 30 49

B24_0c0f:		dec $0154, x	; de 54 01
B24_0c12:		bmi B24_0c1a ; 30 06

B24_0c14:		lda $0154, x	; bd 54 01
B24_0c17:		jmp func_18_0b91		; 4c 91 8b


B24_0c1a:		inc $0154, x	; fe 54 01
B24_0c1d:		rts				; 60 


func_18_0c1e:
B24_0c1e:		lda w115.w, x	; bd 15 01
B24_0c21:		and #$02		; 29 02
B24_0c23:		bne B24_0c77 ; d0 52

func_18_0c25:
B24_0c25:		lda w115.w, x	; bd 15 01
B24_0c28:		and #$06		; 29 06
B24_0c2a:		cmp #$06		; c9 06
B24_0c2c:		beq B24_0c6a ; f0 3c

B24_0c2e:		lda wInstrumentsFramesUntilNextByteProcessed.w, x	; bd 00 01
B24_0c31:		cmp w3cc.w, x	; dd cc 03
B24_0c34:		bcs B24_0c6a ; b0 34

B24_0c36:		lda w115.w, x	; bd 15 01
B24_0c39:		ora #$06		; 09 06
B24_0c3b:		sta w115.w, x	; 9d 15 01
B24_0c3e:		lda $03d8, x	; bd d8 03
B24_0c41:		and #$0c		; 29 0c
B24_0c43:		bne B24_0c6b ; d0 26

B24_0c45:		jmp func_18_0c48		; 4c 48 8c


func_18_0c48:
B24_0c48:		lda $03d8, x	; bd d8 03
B24_0c4b:		and #$02		; 29 02
B24_0c4d:		beq B24_0c57 ; f0 08

B24_0c4f:		lda w16e.w, x	; bd 6e 01
B24_0c52:		ora #$20		; 09 20
B24_0c54:		sta w16e.w, x	; 9d 6e 01
B24_0c57:		rts				; 60 


B24_0c58:		lda w115.w, x	; bd 15 01
B24_0c5b:		ora #$04		; 09 04
B24_0c5d:		and #$fd		; 29 fd
B24_0c5f:		sta w115.w, x	; 9d 15 01
B24_0c62:		lda $03c3, x	; bd c3 03
B24_0c65:		ora #$80		; 09 80
B24_0c67:		sta $03c3, x	; 9d c3 03
B24_0c6a:		rts				; 60 


B24_0c6b:		lsr a			; 4a
B24_0c6c:		lsr a			; 4a
B24_0c6d:		sta $e2			; 85 e2
B24_0c6f:		jsr func_18_0c48		; 20 48 8c
B24_0c72:		lda $e2			; a5 e2
B24_0c74:		jmp func_18_0b91		; 4c 91 8b


func_18_0c77:
B24_0c77:		lda $06ac, x	; bd ac 06
B24_0c7a:		bmi B24_0ca6 ; 30 2a

B24_0c7c:		sty $e2			; 84 e2
B24_0c7e:		lda $06ac, x	; bd ac 06
B24_0c81:		and #$0f		; 29 0f
B24_0c83:		sta $e4			; 85 e4
B24_0c85:		lda $06af, x	; bd af 06
B24_0c88:		sec				; 38 
B24_0c89:		sbc #$01		; e9 01
B24_0c8b:		and #$03		; 29 03
B24_0c8d:		sec				; 38 
B24_0c8e:		sbc $e4			; e5 e4
B24_0c90:		and #$03		; 29 03
B24_0c92:		cpx #$00		; e0 00
B24_0c94:		beq B24_0c98 ; f0 02

B24_0c96:		ora #$04		; 09 04
B24_0c98:		tay				; a8 
B24_0c99:		lda $06b5, y	; b9 b5 06
B24_0c9c:		sta $ec			; 85 ec
B24_0c9e:		lda $06bf, y	; b9 bf 06
B24_0ca1:		sta $ed			; 85 ed
B24_0ca3:		jsr b18_soundCommon.func_18_01e7		; 20 e7 81
B24_0ca6:		lda $03d8, x	; bd d8 03
B24_0ca9:		and #$0c		; 29 0c
B24_0cab:		bne B24_0c6a ; d0 bd

B24_0cad:		lda w189.w, x	; bd 89 01
B24_0cb0:		bmi B24_0cd7 ; 30 25

B24_0cb2:		lda $03c3, x	; bd c3 03
B24_0cb5:		bmi B24_0cd7 ; 30 20

B24_0cb7:		dec $03d5, x	; de d5 03
B24_0cba:		beq B24_0cbf ; f0 03

B24_0cbc:		jmp func_18_0b55		; 4c 55 8b


B24_0cbf:		inc $06b2, x	; fe b2 06
B24_0cc2:		lda $06b2, x	; bd b2 06
B24_0cc5:		cmp #$10		; c9 10
B24_0cc7:		bcc B24_0cce ; 90 05

B24_0cc9:		lda #$0f		; a9 0f
B24_0ccb:		sta $06b2, x	; 9d b2 06
B24_0cce:		lda $03d2, x	; bd d2 03
B24_0cd1:		sta $03d5, x	; 9d d5 03
B24_0cd4:		jmp func_18_0b55		; 4c 55 8b


B24_0cd7:		dec $03d5, x	; de d5 03
B24_0cda:		bne B24_0c6a ; d0 8e

B24_0cdc:		lda $03d2, x	; bd d2 03
B24_0cdf:		sta $03d5, x	; 9d d5 03
B24_0ce2:		dec $0154, x	; de 54 01
B24_0ce5:		bmi B24_0cf6 ; 30 0f

B24_0ce7:		lda #$01		; a9 01
B24_0ce9:		cmp $0154, x	; dd 54 01
B24_0cec:		beq B24_0cf0 ; f0 02

B24_0cee:		bcs B24_0cf6 ; b0 06

B24_0cf0:		lda $0154, x	; bd 54 01
B24_0cf3:		jmp func_18_0b94		; 4c 94 8b


B24_0cf6:		inc $0154, x	; fe 54 01
B24_0cf9:		rts				; 60 


b18_processNextEnvelopeByte:
	lda wInstrumentsCurrEnvelopeInUse.w, x
	asl a
	tay
	lda envelopeData2.w, y
	sta wEnvelopeAddr
	lda envelopeData2.w+1, y
	sta wEnvelopeAddr+1

; check if control byte
	lda wInstrumentsEnvelopeIdx.w, x
	tay
	lda (wEnvelopeAddr), y
	cmp #$fb
	bcs envelopControlByte

; if there's a high nybble, it is time used for the envelope data byte
	cmp #$10
	bcc +

	lsr a
	lsr a
	lsr a
	lsr a
	sta wCurrEnvelopeByteTimeUntilNext.w, x

; get next envelope byte
+	inc wInstrumentsEnvelopeIdx.w, x
	lda (wEnvelopeAddr), y

; envelope val low byte acts like a signed 4-bit num
	and #$0f
	sta wFreqAdjustFromEnvelope
	cmp #$08
	bcs @minusAdjust

	jsr envelopeValMutliplier
	jsr currSoundFreqPlusEqualAdjust
	rts

@minusAdjust:
	lda #$10
	sec
	sbc wFreqAdjustFromEnvelope
	sta wFreqAdjustFromEnvelope
	jsr envelopeValMutliplier
	jsr currSoundFreqMinusEqualAdjust
	rts


envelopeValMutliplier:
	lda wInstrumentEnvelopeMultiplier.w, x
	tax
	lda wFreqAdjustFromEnvelope

-	dex
	beq @setFinalFreqAdjust

	clc
	adc wFreqAdjustFromEnvelope
	jmp -

@setFinalFreqAdjust:
	ldx wCurrInstrumentIdx
	sta wFreqAdjustFromEnvelope
	rts


currSoundFreqPlusEqualAdjust:
	clc
	adc wInstrumentFrequency_lo.w, x
	sta wSoundFrequency
	bcc +

	lda wInstrumentFrequency_hi.w, x
	sta wSoundFrequency+1
	inc wSoundFrequency+1
	rts

+	lda wInstrumentFrequency_hi.w, x
	sta wSoundFrequency+1
	rts


currSoundFreqMinusEqualAdjust:
	lda wInstrumentFrequency_lo.w, x
	sec
	sbc wFreqAdjustFromEnvelope
	bcs +

	sta wSoundFrequency
	lda wInstrumentFrequency_hi.w, x
	sta wSoundFrequency+1
	dec wSoundFrequency+1
	rts

+	sta wSoundFrequency
	lda wInstrumentFrequency_hi.w, x
	sta wSoundFrequency+1
	rts


; >= $fb
envelopControlByte:
	cmp #$fe
	beq envelopControlByte_fe

	bcs envelopControlByte_ff

; fb to fd, set loop to idx
	inc wInstrumentsEnvelopeIdx.w, x
	lda wInstrumentsEnvelopeIdx.w, x
	sta wInstrumentEnvelopeLoopToIdx.w, x
	jmp b18_processNextEnvelopeByte


; loop to above, next byte is number of times to loop
envelopControlByte_fe:
	iny
	inc wInstrumentsCurrEnvelopeLoops.w, x
	lda (wEnvelopeAddr), y
	cmp wInstrumentsCurrEnvelopeLoops.w, x
	bne +

; if we've looped param times, skip past the param
	lda #$00
	sta wInstrumentsCurrEnvelopeLoops.w, x
	sta wInstrumentEnvelopeLoopToIdx.w, x
	inc wInstrumentsEnvelopeIdx.w, x
	inc wInstrumentsEnvelopeIdx.w, x
	jmp b18_processNextEnvelopeByte

+
; else loop back
	lda wInstrumentEnvelopeLoopToIdx.w, x
	sta wInstrumentsEnvelopeIdx.w, x
	jmp b18_processNextEnvelopeByte


; end
envelopControlByte_ff:
	lda #$ff
	sta wCurrEnvelopeByteTimeUntilNext.w, x
	rts


; A is w115+
func_18_0dc1:
B24_0dc1:		lsr a			; 4a
	bcc +
B24_0dc4:		jmp b18_processNextSoundByteMain		; 4c de 8d
+	jmp processNextSoundByteAltAtInstrumentsDataBank		; 4c c5 e1


controlByteFuncsE6toEF:
	.dw controlByteE6
	.dw controlByteE7
	.dw controlByteE8
	.dw controlByteE9
	.dw controlByteEA
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw controlByteEF


b18_processNextSoundByteMain:
B24_0dde:		lda (wCurrInstrumentDataAddr), y		; b1 e0
B24_0de0:		cmp #$e6		; c9 e6
B24_0de2:		bcs B24_0de7 ; b0 03

B24_0de4:		jmp func_18_0e49		; 4c 49 8e

B24_0de7:		cmp #$f0		; c9 f0
B24_0de9:		bcc B24_0df8 ; @controlByteE6toEF

; instrument data byte >= $f0
B24_0deb:		and #$0f		; 29 0f
B24_0ded:		cmp #$0b		; c9 0b
B24_0def:		bcc B24_0df4 ; @controlByteF0toFA

; instrument data byte >= $fb
B24_0df1:		jmp b18_soundCommon.controlSoundByte_fx		; 4c a3 85

@controlByteF0toFA:
B24_0df4:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0df6:		bne func_18_0e49 ; d0 51

@controlByteE6toEF:
B24_0df8:		cpx #INSTR_NOISE_2		; e0 06
B24_0dfa:		beq func_18_0e49 ; f0 4d

; e6 to ef indexed into below table
	lda (wCurrInstrumentDataAddr), y
	and #$0f
	sec
	sbc #$06
	asl a
	tax
	lda controlByteFuncsE6toEF.w, x
	sta wSoundBankJumpAddr
	lda controlByteFuncsE6toEF.w+1, x
	sta wSoundBankJumpAddr+1
	ldx wCurrInstrumentIdx
	jmp (wSoundBankJumpAddr)


controlByteE6:
B24_0e14:		iny				; c8 
B24_0e15:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e17:		sta w10e.w, x	; 9d 0e 01

func_18_0e1a:
B24_0e1a:		iny				; c8 
B24_0e1b:		jmp b18_processNextSoundByteMain		; 4c de 8d


controlByteE7:
B24_0e1e:		lda w115.w, x	; bd 15 01
B24_0e21:		ora #$02		; 09 02
B24_0e23:		sta w115.w, x	; 9d 15 01
B24_0e26:		bne B24_0e1a ; d0 f2


controlByteE8:
B24_0e28:		iny				; c8 
B24_0e29:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e2b:		sta w169.w, x	; 9d 69 01
B24_0e2e:		jmp func_18_0e1a		; 4c 1a 8e


controlByteE9:
B24_0e31:		iny				; c8 
B24_0e32:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e34:		sta $0162, x	; 9d 62 01
B24_0e37:		bne B24_0e1a ; d0 e1

controlByteEA:
B24_0e39:		iny				; c8 
B24_0e3a:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e3c:		jmp func_18_0e8e		; 4c 8e 8e


controlByteEF:
B24_0e3f:		lda w115.w, x	; bd 15 01
B24_0e42:		and #$f9		; 29 f9
B24_0e44:		sta w115.w, x	; 9d 15 01
B24_0e47:		beq B24_0e1a ; f0 d1

; jumped here for all bytes, except e6 to ef for noise channel
func_18_0e49:
B24_0e49:		and #$f0		; 29 f0
B24_0e4b:		cmp #$00		; c9 00
B24_0e4d:		bne B24_0ebb ; d0 6c

; high nybble is 0
B24_0e4f:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e51:		and #$0f		; 29 0f
B24_0e53:		bne B24_0e58 ; d0 03

B24_0e55:		jmp B24_0ebb		; 4c bb 8e

B24_0e58:		sta w10e.w, x	; 9d 0e 01
B24_0e5b:		lda w115.w, x	; bd 15 01
B24_0e5e:		and #$f9		; 29 f9
B24_0e60:		sta w115.w, x	; 9d 15 01
B24_0e63:		iny				; c8 
B24_0e64:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e66:		cpx #$06		; e0 06
B24_0e68:		bne B24_0e72 ; d0 08

B24_0e6a:		lda #$30		; a9 30
B24_0e6c:		sta $0162, x	; 9d 62 01
B24_0e6f:		jmp B24_0eb3		; 4c b3 8e

B24_0e72:		sta $0162, x	; 9d 62 01
B24_0e75:		iny				; c8 
B24_0e76:		cpx #$00		; e0 00
B24_0e78:		bcs B24_0e7e ; b0 04

B24_0e7a:		iny				; c8 
B24_0e7b:		jmp b18_processNextSoundByteMain		; 4c de 8d

B24_0e7e:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e80:		cmp #$88		; c9 88
B24_0e82:		beq B24_0ea6 ; f0 22

B24_0e84:		lda w115.w, x	; bd 15 01
B24_0e87:		ora #$80		; 09 80
B24_0e89:		sta w115.w, x	; 9d 15 01
B24_0e8c:		lda (wCurrInstrumentDataAddr), y	; b1 e0

func_18_0e8e:
B24_0e8e:		cpx #$03		; e0 03
B24_0e90:		bne B24_0e95 ; d0 03

B24_0e92:		sta $0190		; 8d 90 01
B24_0e95:		jsr b18_soundCommon.secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_0e98:		bcs B24_0ea0 ; b0 06

B24_0e9a:		sta SND_SWEEP.w, x	; 9d 01 40
B24_0e9d:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0ea0:		ldx wCurrInstrumentIdx			; a6 ee
B24_0ea2:		iny				; c8 
B24_0ea3:		jmp b18_processNextSoundByteMain		; 4c de 8d

B24_0ea6:		lda w115.w, x	; bd 15 01
B24_0ea9:		and #$7f		; 29 7f
B24_0eab:		sta w115.w, x	; 9d 15 01
B24_0eae:		lda #$7f		; a9 7f
B24_0eb0:		jmp B24_0e8e		; 4c 8e 8e

B24_0eb3:		cmp #$00		; c9 00
B24_0eb5:		bne B24_0ea3 ; d0 ec

B24_0eb7:		iny				; c8 
B24_0eb8:		jmp b18_processNextSoundByteMain		; 4c de 8d

B24_0ebb:		cpx #$06		; e0 06
B24_0ebd:		bne B24_0ec6 ; d0 07

B24_0ebf:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0ec1:		cmp #$10		; c9 10
B24_0ec3:		bne B24_0ec6 ; d0 01

B24_0ec5:		iny				; c8 
B24_0ec6:		lda w10e.w, x	; bd 0e 01
B24_0ec9:		sta wInstrumentsFramesUntilNextByteProcessed.w, x	; 9d 00 01
B24_0ecc:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0ece:		lsr a			; 4a
B24_0ecf:		lsr a			; 4a
B24_0ed0:		lsr a			; 4a
B24_0ed1:		lsr a			; 4a
B24_0ed2:		sta $015b, x	; 9d 5b 01
B24_0ed5:		cpx #$06		; e0 06
B24_0ed7:		beq B24_0eed ; f0 14

B24_0ed9:		lda $0162, x	; bd 62 01
B24_0edc:		and #$10		; 29 10
B24_0ede:		beq B24_0f1d ; f0 3d

B24_0ee0:		lda $015b, x	; bd 5b 01
B24_0ee3:		sec				; 38 
B24_0ee4:		sbc w169.w, x	; fd 69 01
B24_0ee7:		beq B24_0eeb ; f0 02

B24_0ee9:		bcs B24_0eed ; b0 02

B24_0eeb:		lda #$01		; a9 01
B24_0eed:		ora $0162, x	; 1d 62 01

B24_0ef0:		jsr b18_soundCommon.secIf2ndSquareInUseElseRetHwRegOffset		; 20 13 83
B24_0ef3:		bcs B24_0efb ; b0 06

B24_0ef5:		sta SND_VOL.w, x	; 9d 00 40
B24_0ef8:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0efb:		ldx wCurrInstrumentIdx			; a6 ee
B24_0efd:		lda w115.w, x	; bd 15 01
B24_0f00:		and #$02		; 29 02
B24_0f02:		bne B24_0f1a ; d0 16

B24_0f04:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0f06:		and #$0f		; 29 0f
B24_0f08:		cpx #$06		; e0 06
B24_0f0a:		beq B24_0f15 ; f0 09

B24_0f0c:		sta $ed			; 85 ed
B24_0f0e:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0f10:		beq B24_0f15 ; f0 03

B24_0f12:		iny				; c8 
B24_0f13:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0f15:		sta $ec			; 85 ec
B24_0f17:		jsr b18_soundCommon.func_18_01cd		; 20 cd 81
B24_0f1a:		jmp b18_soundCommon.updateCurrInstrumentDataAddr_setAndSaveBank18h		; 4c d6 86

B24_0f1d:		lda $0162, x	; bd 62 01
B24_0f20:		jmp B24_0ef0		; 4c f0 8e


b18_waitAFewCycles:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rts
