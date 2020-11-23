
b18_initSound:
; preserve X
B24_075e:		lda #$00		; a9 00
B24_0760:		stx wGenericTempVar			; 86 e2
B24_0762:		tax				; aa 

; store 0 for instruments sq1, sq2, tri
B24_0763:		sta wInstrumentsSoundIdxes.w, x	; 9d 07 01
B24_0766:		inx				; e8 
B24_0767:		cpx #$03		; e0 03
B24_0769:		bcc B24_0763 ; 90 f8

; don't reset sound 4b for 2nd sq1
B24_076b:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_076e:		cmp #$4b		; c9 4b
B24_0770:		beq B24_0777 ; f0 05

B24_0772:		lda #$00		; a9 00
B24_0774:		sta wInstrumentsSoundIdxes.w, x	; 9d 07 01

; store 0 for 2nd sq2, noise 1, noise 2, dmc
B24_0777:		lda #$00		; a9 00
B24_0779:		inx				; e8 
B24_077a:		sta wInstrumentsSoundIdxes.w, x	; 9d 07 01
B24_077d:		inx				; e8 
B24_077e:		cpx #$07		; e0 07
B24_0780:		bcc B24_077a ; 90 f8

B24_0782:		sta $0159		; 8d 59 01
B24_0785:		sta $0160		; 8d 60 01
B24_0788:		sta $0152		; 8d 52 01
B24_078b:		sta wSoundDataBank			; 85 eb
B24_078d:		sta $06c9		; 8d c9 06
B24_0790:		sta wSoundShouldSkipDecreasingDelayBytes.w		; 8d 8f 01
B24_0793:		sta wSoundGlobalDelayFrames.w		; 8d 8e 01
B24_0796:		sta wSoundCounterForGlobalDelayFrames.w		; 8d 8d 01
B24_0799:		sta wTimeSpecialDMCSoundPlayed.w		; 8d c8 06

; restore X
B24_079c:		ldx wGenericTempVar			; a6 e2

initPauseSound:
B24_079e:		lda #SNDENA_NOISE|SNDENA_SQ2|SNDENA_SQ1		; a9 0b
B24_07a0:		sta SND_CHN.w		; 8d 15 40
B24_07a3:		jsr b18_waitAFewCycles		; 20 23 8f

; if 2nd sq1 was 4b, dont set sweep and sq1 vol
B24_07a6:		lda wInstrumentsSoundIdxes.w+SQ1_2		; ad 0a 01
B24_07a9:		cmp #$4b		; c9 4b
B24_07ab:		beq B24_07bd ; f0 10

B24_07ad:		lda #$7f		; a9 7f
B24_07af:		sta SQ1_SWEEP.w		; 8d 01 40
B24_07b2:		jsr b18_waitAFewCycles		; 20 23 8f

B24_07b5:		lda #$30		; a9 30
B24_07b7:		sta SQ1_VOL.w		; 8d 00 40
B24_07ba:		jsr b18_waitAFewCycles		; 20 23 8f

B24_07bd:		lda #$30		; a9 30
B24_07bf:		sta TRI_LINEAR.w		; 8d 08 40
B24_07c2:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07c5:		sta SQ2_VOL.w		; 8d 04 40
B24_07c8:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07cb:		sta NOISE_VOL.w		; 8d 0c 40
B24_07ce:		jsr b18_waitAFewCycles		; 20 23 8f

B24_07d1:		lda #$7f		; a9 7f
B24_07d3:		sta SQ2_SWEEP.w		; 8d 05 40
B24_07d6:		jsr b18_waitAFewCycles		; 20 23 8f

B24_07d9:		lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1		; a9 0f
B24_07db:		sta SND_CHN.w		; 8d 15 40
B24_07de:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07e1:		rts				; 60 


func_18_07e2:
B24_07e2:		lda #SNDENA_NOISE|SNDENA_SQ2|SNDENA_SQ1		; a9 0b
B24_07e4:		sta SND_CHN.w		; 8d 15 40
B24_07e7:		jsr b18_waitAFewCycles		; 20 23 8f

B24_07ea:		lda #$30		; a9 30
B24_07ec:		sta TRI_LINEAR.w		; 8d 08 40
B24_07ef:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07f2:		sta SQ1_VOL.w		; 8d 00 40
B24_07f5:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07f8:		sta SQ2_VOL.w		; 8d 04 40
B24_07fb:		jsr b18_waitAFewCycles		; 20 23 8f
B24_07fe:		sta NOISE_VOL.w		; 8d 0c 40
B24_0801:		jsr b18_waitAFewCycles		; 20 23 8f

B24_0804:		lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1		; a9 0f
B24_0806:		sta SND_CHN.w		; 8d 15 40
B24_0809:		jsr b18_waitAFewCycles		; 20 23 8f
B24_080c:		rts				; 60 


; sound < 4e, return if sq1 sound is $4e and sound to play is percussion
B24_080d:		lda wInstrumentsSoundIdxes.w		; ad 07 01
B24_0810:		cmp #$4e		; c9 4e
B24_0812:		bne B24_0847 ; d0 33

B24_0814:		lda wSoundToPlay			; a5 ef
B24_0816:		cmp #$06		; c9 06
B24_0818:		bcc B24_0847 ; 90 2d

B24_081a:		rts				; 60 


B24_081b:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_081e:		cmp #$2d		; c9 2d
B24_0820:		beq B24_0879 ; f0 57

B24_0822:		cmp #$16		; c9 16
B24_0824:		beq B24_0879 ; f0 53

B24_0826:		jmp func_18_0872		; 4c 72 88


B24_0829:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_082c:		cmp #$27		; c9 27
B24_082e:		beq B24_087e ; f0 4e

B24_0830:		cmp #$33		; c9 33
B24_0832:		beq B24_087e ; f0 4a

B24_0834:		jmp func_18_0872		; 4c 72 88


b18_playSound:
B24_0837:		sta wSoundToPlay			; 85 ef
B24_0839:		cmp #SND_DMC_START		; c9 6d
B24_083b:		bcc B24_0840 ; 90 03

B24_083d:		jmp b18_playDMCSound		; 4c f9 88

@notDMCsound:
B24_0840:		cmp #$4e		; c9 4e
B24_0842:		bcc B24_080d ; 90 c9

; init sound if music
	jsr b18_initSound

B24_0847:
	stx wSoundBankTempX
	sty wSoundBankTempY

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
B24_0864:		iny				; c8 
B24_0865:		lda (wSoundMetadataAddr), y	; b1 e8
B24_0867:		tax				; aa 

B24_0868:		lda wSoundToPlay			; a5 ef
B24_086a:		cmp #$33		; c9 33
B24_086c:		beq B24_081b ; f0 ad

B24_086e:		cmp #$16		; c9 16
B24_0870:		beq B24_0829 ; f0 b7

; higher sound idx takes precedence on instrument(eg lower is small effects)
func_18_0872:
B24_0872:		lda wSoundToPlay			; a5 ef
B24_0874:		cmp wInstrumentsSoundIdxes.w, x	; dd 07 01
B24_0877:		bcs B24_087e ; b0 05

B24_0879:		iny				; c8 
B24_087a:		iny				; c8 
B24_087b:		jmp B24_08ed		; @toNextInstrument

; save instrument metadata
B24_087e:		iny				; c8 
B24_087f:		lda (wSoundMetadataAddr), y	; b1 e8
B24_0881:		sta wInstrumentData_lo.w, x	; 9d 23 01
B24_0884:		sta wTempCurrInstrumentDataAddr			; 85 e6
B24_0886:		iny				; c8 
B24_0887:		lda (wSoundMetadataAddr), y	; b1 e8
B24_0889:		sta wInstrumentData_hi.w, x	; 9d 2a 01
B24_088c:		sta wTempCurrInstrumentDataAddr+1			; 85 e7

; code for all instruments
B24_088e:		lda #$00		; a9 00
B24_0890:		sta wSoundCtrsForLastLoop.w, x	; 9d 1c 01
B24_0893:		lda #$01		; a9 01
B24_0895:		sta wInstrumentsFramesUntilNextByteProcessed.w, x	; 9d 00 01
B24_0898:		cpx #$05		; e0 05
B24_089a:		beq B24_08c8 ; f0 2c

; all instruments except noise 1
B24_089c:		lda #$f8		; a9 f8
B24_089e:		sta wInstrumentLastFreq_hi.w, x	; 9d 4d 01
B24_08a1:		cpx #$06		; e0 06
B24_08a3:		beq B24_08c8 ; f0 23

; all instruments except noise
B24_08a5:		lda #$00		; a9 00
B24_08a7:		sta w16e.w, x	; 9d 6e 01
B24_08aa:		sta w169.w, x	; 9d 69 01
B24_08ad:		sta wInstrumentFrequencyAdjust.w, x	; 9d 73 01

B24_08b0:		cpx #$03		; e0 03
B24_08b2:		beq B24_08c8 ; f0 14
B24_08b4:		cpx #$04		; e0 04
B24_08b6:		beq B24_08c8 ; f0 10

; all instruments except noise, sq1/2 #2
B24_08b8:		sta $0180, x	; 9d 80 01
B24_08bb:		sta $03d8, x	; 9d d8 03
B24_08be:		lda #$01		; a9 01
B24_08c0:		sta $03de, x	; 9d de 03
B24_08c3:		lda #$80		; a9 80
B24_08c5:		sta $06ac, x	; 9d ac 06

B24_08c8:		lda wSoundDataBank			; a5 eb
B24_08ca:		sta wInstrumentDataBanks.w, x	; 9d 95 01

B24_08cd:		sty wSoundBankTempInstMetadataOffset			; 84 e2
B24_08cf:		ldy #$00		; a0 00
B24_08d1:		jsr getCurrInstrument1stDataByte		; 20 b5 e1

; y remains 1 if 1st instrument metadata byte is < $10
; or current instrument is not the sq1/2 #2
B24_08d4:		iny				; c8 
B24_08d5:		cmp #$10		; c9 10
B24_08d7:		bcc B24_08e2 ; 90 09

B24_08d9:		cpx #$03		; e0 03
B24_08db:		beq B24_08e2 ; f0 05

B24_08dd:		cpx #$04		; e0 04
B24_08df:		beq B24_08e2 ; f0 01

B24_08e1:		dey				; 88 

B24_08e2:		tya				; 98 
B24_08e3:		sta w115.w, x	; 9d 15 01
B24_08e6:		ldy wSoundBankTempInstMetadataOffset			; a4 e2

B24_08e8:		lda wSoundToPlay			; a5 ef
B24_08ea:		sta wInstrumentsSoundIdxes.w, x	; 9d 07 01

@toNextInstrument:
B24_08ed:		dec wSoundNumInstrumentsMinus1			; c6 ea
B24_08ef:		bmi B24_08f4 ; 30 03

B24_08f1:		jmp B24_0864		; @nextInstrument

B24_08f4:		ldx wSoundBankTempX			; a6 e4
B24_08f6:		ldy wSoundBankTempY			; a4 e5
B24_08f8:		rts				; 60 


; A is sound idx > $6d
b18_playDMCSound:
B24_08f9:		sec				; 38 
B24_08fa:		sbc #SND_DMC_START		; e9 6d
B24_08fc:		sta wDMCToPlay			; 85 ef
B24_08fe:		cmp #$0d		; c9 0d
B24_0900:		bcc B24_0905 ; 90 03

; dmc sound idx >= 7a
B24_0902:		inc wTimeSpecialDMCSoundPlayed.w		; ee c8 06

; jump (always play) if percussion
B24_0905:		lda wCurrentlyPlayingDMCSoundIdx.w		; ad 92 01
B24_0908:		cmp #$05		; c9 05
B24_090a:		bcc B24_0914 ; 90 08

; special effect, higher vals take precedence
B24_090c:		lda wDMCToPlay			; a5 ef
B24_090e:		cmp wCurrentlyPlayingDMCSoundIdx.w		; cd 92 01
B24_0911:		bcs B24_0916 ; b0 03

B24_0913:		rts				; 60 

B24_0914:		lda wDMCToPlay			; a5 ef
B24_0916:		sta wCurrentlyPlayingDMCSoundIdx.w		; 8d 92 01

; preserve Y
B24_0919:		sty wGenericTempVar			; 84 e2

; write to DMC regs
B24_091b:		lda wDMCToPlay			; a5 ef
B24_091d:		asl a			; 0a
B24_091e:		asl a			; 0a
B24_091f:		tay				; a8 
B24_0920:		lda dpcmSpecData.w+1, y	; b9 51 a1
B24_0923:		lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1		; a9 0f
B24_0925:		sta SND_CHN.w		; 8d 15 40

B24_0928:		lda dpcmSpecData.w, y	; b9 50 a1
B24_092b:		sta DMC_FREQ.w		; 8d 10 40
B24_092e:		lda dpcmSpecData.w+1, y	; b9 51 a1
B24_0931:		sta DMC_RAW.w		; 8d 11 40
B24_0934:		lda dpcmSpecData.w+2, y	; b9 52 a1
B24_0937:		sta DMC_START.w		; 8d 12 40
B24_093a:		lda dpcmSpecData.w+3, y	; b9 53 a1
B24_093d:		sta DMC_LEN.w		; 8d 13 40

B24_0940:		lda #SNDENA_DMC|SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1		; a9 1f
B24_0942:		sta SND_CHN.w		; 8d 15 40

; restore Y
B24_0945:		ldy wGenericTempVar			; a4 e2

; always follow a low tom with a high snare hit
B24_0947:		lda wDMCToPlay			; a5 ef
B24_0949:		cmp #$03		; c9 03
B24_094b:		beq B24_094e ; f0 01

B24_094d:		rts				; 60 

B24_094e:		lda #$01		; a9 01
B24_0950:		jmp b18_playSound		; 4c 37 88


; A is wIsPaused
processPauseOrUnpause:
B24_0953:		sta wPauseSoundPlayed.w		; 8d 67 01
B24_0956:		cmp #$00		; c9 00
B24_0958:		beq B24_095d ; f0 03

B24_095a:		jmp initPauseSound		; 4c 9e 87

; unpaused
B24_095d:		lda wInstrumentsSoundIdxes.w+INSTR_SQ1_2		; ad 0a 01
B24_0960:		beq B24_0963 ; f0 01

B24_0962:		rts				; 60 

B24_0963:		lda wInstrumentsSoundIdxes.w		; ad 07 01
B24_0966:		beq B24_096f ; f0 07

B24_0968:		ldx #$00		; a2 00
B24_096a:		ldy #$00		; a0 00
B24_096c:		jsr func_18_0986		; 20 86 89
B24_096f:		lda wInstrumentsSoundIdxes.w+INSTR_SQ2_1		; ad 08 01
B24_0972:		beq B24_097b ; @done

B24_0974:		ldx #$01		; a2 01
B24_0976:		ldy #$04		; a0 04
B24_0978:		jsr func_18_0986		; 20 86 89
B24_097b:		rts				; 60 


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
B24_099d:		lda wInstrumentLastFreq_lo.w, x	; bd 78 01
B24_09a0:		sta SND_FREQ_LO.w, y	; 99 02 40
B24_09a3:		jsr b18_waitAFewCycles		; 20 23 8f

B24_09a6:		lda wInstrumentLastFreq_hi.w, x	; bd 4d 01
B24_09a9:		ora #$08		; 09 08
B24_09ab:		sta SND_FREQ_HI.w, y	; 99 03 40
B24_09ae:		jmp b18_waitAFewCycles		; 4c 23 8f


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
B24_09de:		lda wSoundGlobalDelayFrames.w		; ad 8e 01
B24_09e1:		beq B24_09fa ; f0 17

; count until that many frames passed..
B24_09e3:		inc wSoundCounterForGlobalDelayFrames.w		; ee 8d 01
B24_09e6:		lda wSoundCounterForGlobalDelayFrames.w		; ad 8d 01
B24_09e9:		cmp wSoundGlobalDelayFrames.w		; cd 8e 01
B24_09ec:		bne B24_09fa ; d0 0c

; 18d == 18e, clear it, set 18f to 1
B24_09ee:		lda #$00		; a9 00
B24_09f0:		sta wSoundCounterForGlobalDelayFrames.w		; 8d 8d 01
B24_09f3:		lda #$01		; a9 01
B24_09f5:		sta wSoundShouldSkipDecreasingDelayBytes.w		; 8d 8f 01
B24_09f8:		bne B24_09ff ; d0 05

B24_09fa:		lda #$00		; a9 00
B24_09fc:		sta wSoundShouldSkipDecreasingDelayBytes.w		; 8d 8f 01

; once special DMC sound has been played for $f0 frames...
B24_09ff:		lda wTimeSpecialDMCSoundPlayed.w		; ad c8 06
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
B24_0a1b:		lda wIsPaused			; a5 2b
B24_0a1d:		cmp wPauseSoundPlayed.w		; cd 67 01
B24_0a20:		beq B24_0a25 ; f0 03

B24_0a22:		jsr processPauseOrUnpause		; 20 53 89
B24_0a25:		lda $0160		; ad 60 01
B24_0a28:		beq B24_0a2d ; f0 03

B24_0a2a:		jsr func_18_09b1		; 20 b1 89
B24_0a2d:		lda SND_CHN.w		; ad 15 40
B24_0a30:		and #SNDENA_DMC		; 29 10
B24_0a32:		bne B24_0a39 ; d0 05

B24_0a34:		lda #$00		; a9 00
B24_0a36:		sta wCurrentlyPlayingDMCSoundIdx.w		; 8d 92 01
B24_0a39:		ldx #$00		; a2 00
B24_0a3b:		ldy #$00		; a0 00

; loop here updating each instrument
B24_0a3d:		stx wCurrInstrumentIdx			; 86 ee
B24_0a3f:		sty wCurrInstrumentHwRegOffset.w		; 8c 8c 01
B24_0a42:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0a45:		beq B24_0a4a ; f0 03

B24_0a47:		jsr updateInstrument		; 20 5e 8a

B24_0a4a:		inx				; e8 
B24_0a4b:		cpx #$07		; e0 07 - dmc??
B24_0a4d:		beq B24_0a56 ; @done

B24_0a4f:		lda data_18_0a57.w, x	; bd 57 8a
B24_0a52:		tay				; a8 
B24_0a53:		jmp B24_0a3d		; 4c 3d 8a

B24_0a56:		rts				; 60 

; channel each instrument? uses
data_18_0a57:
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <TRI_LINEAR
	.db <SQ1_VOL
	.db <SQ2_VOL
	.db <NOISE_VOL
	.db <NOISE_VOL


updateInstrument:
; ignore non-4d sounds if pause sound played
B24_0a5e:		lda wPauseSoundPlayed.w		; ad 67 01
B24_0a61:		beq B24_0a6b ; f0 08

B24_0a63:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0a66:		cmp #$4d		; c9 4d
B24_0a68:		beq B24_0a76 ; f0 0c

B24_0a6a:		rts				; 60 

; not pause sound played
B24_0a6b:		lda $06c9		; ad c9 06
B24_0a6e:		beq B24_0a76 ; f0 06

B24_0a70:		lda w115.w, x	; bd 15 01
B24_0a73:		lsr a			; 4a
B24_0a74:		bcc B24_0a56 ; prev done

B24_0a76:		cpx #$06		; e0 06
B24_0a78:		beq B24_0a9d ; f0 23

B24_0a7a:		lda w115.w, x	; bd 15 01
B24_0a7d:		lsr a			; 4a
B24_0a7e:		bcs B24_0a86 ; b0 06

B24_0a80:		lda wSoundShouldSkipDecreasingDelayBytes.w		; ad 8f 01
B24_0a83:		beq B24_0a86 ; f0 01

B24_0a85:		rts				; 60 

B24_0a86:		dec wInstrumentsFramesUntilNextByteProcessed.w, x	; de 00 01
B24_0a89:		bne B24_0ad0 ; d0 45

B24_0a8b:		ldy #$00		; a0 00
B24_0a8d:		lda wInstrumentData_lo.w, x	; bd 23 01
B24_0a90:		sta wCurrInstrumentDataAddr			; 85 e0
B24_0a92:		lda wInstrumentData_hi.w, x	; bd 2a 01
B24_0a95:		sta wCurrInstrumentDataAddr+1			; 85 e1

B24_0a97:		lda w115.w, x	; bd 15 01
B24_0a9a:		jmp func_18_0dc1		; 4c c1 8d

; instrument 6 (noise 2)
B24_0a9d:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0aa0:		cmp #$06		; c9 06
B24_0aa2:		bcc B24_0a80 ; 90 dc

B24_0aa4:		bcs B24_0a86 ; b0 e0


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

B24_0b10:		dec $03de, x	; de de 03
B24_0b13:		bne B24_0b1e ; d0 09

B24_0b15:		inc $03de, x	; fe de 03
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
B24_0cfa:		lda wInstrumentsCurrEnvelopeInUse.w, x	; bd a3 06
B24_0cfd:		asl a			; 0a
B24_0cfe:		tay				; a8 
B24_0cff:		lda envelopeData2.w, y	; b9 7b 9e
B24_0d02:		sta wEnvelopeAddr			; 85 e2
B24_0d04:		lda envelopeData2.w+1, y	; b9 7c 9e
B24_0d07:		sta wEnvelopeAddr+1			; 85 e3

; check if control byte
B24_0d09:		lda wInstrumentsEnvelopeIdx.w, x	; bd a6 06
B24_0d0c:		tay				; a8 
B24_0d0d:		lda (wEnvelopeAddr), y	; b1 e2
B24_0d0f:		cmp #$fb		; c9 fb
B24_0d11:		bcs envelopControlByte ; b0 71

B24_0d13:		cmp #$10		; c9 10
B24_0d15:		bcc B24_0d1e ; 90 07

; if there's a high byte, store it in 3de,x
B24_0d17:		lsr a			; 4a
B24_0d18:		lsr a			; 4a
B24_0d19:		lsr a			; 4a
B24_0d1a:		lsr a			; 4a
B24_0d1b:		sta $03de, x	; 9d de 03

; get next envelope byte
B24_0d1e:		inc wInstrumentsEnvelopeIdx.w, x	; fe a6 06
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
B24_0d84:		cmp #$fe		; c9 fe
B24_0d86:		beq envelopControlByte_fe ; f0 0e

B24_0d88:		bcs envelopControlByte_ff ; b0 31

; fb to fd, set loop to idx
B24_0d8a:		inc wInstrumentsEnvelopeIdx.w, x	; fe a6 06
B24_0d8d:		lda wInstrumentsEnvelopeIdx.w, x	; bd a6 06
B24_0d90:		sta wInstrumentEnvelopeLoopToIdx.w, x	; 9d a0 06
B24_0d93:		jmp b18_processNextEnvelopeByte		; 4c fa 8c


; loop to above
envelopControlByte_fe:
B24_0d96:		iny				; c8 
B24_0d97:		inc $06a9, x	; fe a9 06
B24_0d9a:		lda (wEnvelopeAddr), y	; b1 e2
B24_0d9c:		cmp $06a9, x	; dd a9 06
B24_0d9f:		bne B24_0db2 ; d0 11

B24_0da1:		lda #$00		; a9 00
B24_0da3:		sta $06a9, x	; 9d a9 06
B24_0da6:		sta wInstrumentEnvelopeLoopToIdx.w, x	; 9d a0 06
B24_0da9:		inc wInstrumentsEnvelopeIdx.w, x	; fe a6 06
B24_0dac:		inc wInstrumentsEnvelopeIdx.w, x	; fe a6 06
B24_0daf:		jmp b18_processNextEnvelopeByte		; 4c fa 8c

B24_0db2:		lda wInstrumentEnvelopeLoopToIdx.w, x	; bd a0 06
B24_0db5:		sta wInstrumentsEnvelopeIdx.w, x	; 9d a6 06
B24_0db8:		jmp b18_processNextEnvelopeByte		; 4c fa 8c


; end
envelopControlByte_ff:
B24_0dbb:		lda #$ff		; a9 ff
B24_0dbd:		sta $03de, x	; 9d de 03
B24_0dc0:		rts				; 60 


func_18_0dc1:
B24_0dc1:		lsr a			; 4a
B24_0dc2:		bcc B24_0dc7 ; 90 03

B24_0dc4:		jmp func_18_0dde		; 4c de 8d

B24_0dc7:		jmp processNextSoundByteAtInstrumentsDataBank		; 4c c5 e1


data_18_0dca:
	.dw func_18_0e14
	.dw func_18_0e1e
	.dw func_18_0e28
	.dw func_18_0e31
	.dw func_18_0e39
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw b18_soundCommon.controlSoundByte_ed_ef
	.dw func_18_0e3f


func_18_0dde:
B24_0dde:		lda (wCurrInstrumentDataAddr), y		; b1 e0
B24_0de0:		cmp #$e6		; c9 e6
B24_0de2:		bcs B24_0de7 ; b0 03

B24_0de4:		jmp func_18_0e49		; 4c 49 8e

B24_0de7:		cmp #$f0		; c9 f0
B24_0de9:		bcc B24_0df8 ; 90 0d

B24_0deb:		and #$0f		; 29 0f
B24_0ded:		cmp #$0b		; c9 0b
B24_0def:		bcc B24_0df4 ; 90 03

B24_0df1:		jmp b18_soundCommon.controlSoundByte_fx		; 4c a3 85

B24_0df4:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0df6:		bne B24_0e49 ; d0 51

B24_0df8:		cpx #$06		; e0 06
B24_0dfa:		beq B24_0e49 ; f0 4d

B24_0dfc:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0dfe:		and #$0f		; 29 0f
B24_0e00:		sec				; 38 
B24_0e01:		sbc #$06		; e9 06
B24_0e03:		asl a			; 0a
B24_0e04:		tax				; aa 
B24_0e05:		lda data_18_0dca.w, x	; bd ca 8d
B24_0e08:		sta wSoundBankJumpAddr			; 85 e2
B24_0e0a:		lda data_18_0dca.w+1, x	; bd cb 8d
B24_0e0d:		sta wSoundBankJumpAddr+1			; 85 e3
B24_0e0f:		ldx wCurrInstrumentIdx			; a6 ee
B24_0e11:		jmp (wSoundBankJumpAddr)


func_18_0e14:
B24_0e14:		iny				; c8 
B24_0e15:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e17:		sta w10e.w, x	; 9d 0e 01

func_18_0e1a:
B24_0e1a:		iny				; c8 
B24_0e1b:		jmp func_18_0dde		; 4c de 8d


func_18_0e1e:
B24_0e1e:		lda w115.w, x	; bd 15 01
B24_0e21:		ora #$02		; 09 02
B24_0e23:		sta w115.w, x	; 9d 15 01
B24_0e26:		bne B24_0e1a ; d0 f2

func_18_0e28:
B24_0e28:		iny				; c8 
B24_0e29:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e2b:		sta w169.w, x	; 9d 69 01
B24_0e2e:		jmp func_18_0e1a		; 4c 1a 8e


func_18_0e31:
B24_0e31:		iny				; c8 
B24_0e32:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e34:		sta $0162, x	; 9d 62 01
B24_0e37:		bne B24_0e1a ; d0 e1

func_18_0e39:
B24_0e39:		iny				; c8 
B24_0e3a:		lda (wCurrInstrumentDataAddr), y	; b1 e0
B24_0e3c:		jmp func_18_0e8e		; 4c 8e 8e


func_18_0e3f:
B24_0e3f:		lda w115.w, x	; bd 15 01
B24_0e42:		and #$f9		; 29 f9
B24_0e44:		sta w115.w, x	; 9d 15 01
B24_0e47:		beq B24_0e1a ; f0 d1

func_18_0e49:
B24_0e49:		and #$f0		; 29 f0
B24_0e4b:		cmp #$00		; c9 00
B24_0e4d:		bne B24_0ebb ; d0 6c

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
B24_0e7b:		jmp func_18_0dde		; 4c de 8d

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
B24_0ea3:		jmp func_18_0dde		; 4c de 8d

B24_0ea6:		lda w115.w, x	; bd 15 01
B24_0ea9:		and #$7f		; 29 7f
B24_0eab:		sta w115.w, x	; 9d 15 01
B24_0eae:		lda #$7f		; a9 7f
B24_0eb0:		jmp B24_0e8e		; 4c 8e 8e

B24_0eb3:		cmp #$00		; c9 00
B24_0eb5:		bne B24_0ea3 ; d0 ec

B24_0eb7:		iny				; c8 
B24_0eb8:		jmp func_18_0dde		; 4c de 8d

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
