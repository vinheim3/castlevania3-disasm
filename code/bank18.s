
.db $98

.include "code/soundCommon.s" namespace "b18_soundCommon"


b18_initSound:
; preserve X
B24_075e:		lda #$00		; a9 00
B24_0760:		stx $e2			; 86 e2
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
B24_0790:		sta $018f		; 8d 8f 01
B24_0793:		sta $018e		; 8d 8e 01
B24_0796:		sta $018d		; 8d 8d 01
B24_0799:		sta $06c8		; 8d c8 06

; restore X
B24_079c:		ldx $e2			; a6 e2

func_18_079e:
B24_079e:		lda #SNDENA_NOISE|SNDENA_SQ2|SNDENA_SQ1		; a9 0b
B24_07a0:		sta SND_CHN.w		; 8d 15 40
B24_07a3:		jsr b18_waitAFewCycles		; 20 23 8f

; if 2nd sq1 was 4b, dont set sweep and sq1 vol
B24_07a6:		lda $010a		; ad 0a 01
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

; sound < 4e
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

B24_0840:		cmp #$4e		; c9 4e
B24_0842:		bcc B24_080d ; 90 c9

B24_0844:		jsr b18_initSound		; 20 5e 87
B24_0847:		stx wSoundBankTempX			; 86 e4
B24_0849:		sty wSoundBankTempY			; 84 e5

B24_084b:		lda wSoundToPlay			; a5 ef
B24_084d:		asl a			; 0a
B24_084e:		tay				; a8 
; ef always > 0
B24_084f:		lda soundMetadataAddresses.w-2, y	; b9 2c 8f
B24_0852:		sta wSoundMetadataAddr			; 85 e8
B24_0854:		lda soundMetadataAddresses.w-1, y	; b9 2d 8f
B24_0857:		sta wSoundMetadataAddr+1			; 85 e9
B24_0859:		ldy #$00		; a0 00
B24_085b:		lda (wSoundMetadataAddr), y	; b1 e8
; 1st 2 bytes pointed to in eb (bank-related), then ea (counter-related?)
B24_085d:		sta wSoundDataBank			; 85 eb
B24_085f:		iny				; c8 
B24_0860:		lda (wSoundMetadataAddr), y	; b1 e8
B24_0862:		sta wSoundNumInstrumentsMinus1			; 85 ea

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
B24_0895:		sta w100.w, x	; 9d 00 01
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

B24_0902:		inc $06c8		; ee c8 06
B24_0905:		lda $0192		; ad 92 01
B24_0908:		cmp #$05		; c9 05
B24_090a:		bcc B24_0914 ; 90 08

B24_090c:		lda wDMCToPlay			; a5 ef
B24_090e:		cmp $0192		; cd 92 01
B24_0911:		bcs B24_0916 ; b0 03

B24_0913:		rts				; 60 

B24_0914:		lda wDMCToPlay			; a5 ef
B24_0916:		sta $0192		; 8d 92 01
B24_0919:		sty $e2			; 84 e2
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

B24_0945:		ldy $e2			; a4 e2
B24_0947:		lda wDMCToPlay			; a5 ef
B24_0949:		cmp #$03		; c9 03
B24_094b:		beq B24_094e ; f0 01

B24_094d:		rts				; 60 

B24_094e:		lda #$01		; a9 01
B24_0950:		jmp b18_playSound		; 4c 37 88


func_18_0953:
B24_0953:		sta $0167		; 8d 67 01
B24_0956:		cmp #$00		; c9 00
B24_0958:		beq B24_095d ; f0 03

B24_095a:		jmp func_18_079e		; 4c 9e 87

B24_095d:		lda $010a		; ad 0a 01
B24_0960:		beq B24_0963 ; f0 01

B24_0962:		rts				; 60 

B24_0963:		lda wInstrumentsSoundIdxes.w		; ad 07 01
B24_0966:		beq B24_096f ; f0 07

B24_0968:		ldx #$00		; a2 00
B24_096a:		ldy #$00		; a0 00
B24_096c:		jsr func_18_0986		; 20 86 89
B24_096f:		lda $0108		; ad 08 01
B24_0972:		beq B24_097b ; f0 07

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
B24_098b:		ora $0167		; 0d 67 01
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
B24_09de:		lda $018e		; ad 8e 01
B24_09e1:		beq B24_09fa ; f0 17

B24_09e3:		inc $018d		; ee 8d 01
B24_09e6:		lda $018d		; ad 8d 01
B24_09e9:		cmp $018e		; cd 8e 01
B24_09ec:		bne B24_09fa ; d0 0c

B24_09ee:		lda #$00		; a9 00
B24_09f0:		sta $018d		; 8d 8d 01
B24_09f3:		lda #$01		; a9 01
B24_09f5:		sta $018f		; 8d 8f 01
B24_09f8:		bne B24_09ff ; d0 05

B24_09fa:		lda #$00		; a9 00
B24_09fc:		sta $018f		; 8d 8f 01
B24_09ff:		lda $06c8		; ad c8 06
B24_0a02:		beq B24_0a1b ; f0 17

B24_0a04:		inc $06c8		; ee c8 06
B24_0a07:		lda $06c8		; ad c8 06
B24_0a0a:		cmp #$f0		; c9 f0
B24_0a0c:		bne B24_0a1b ; d0 0d

B24_0a0e:		lda #SNDENA_NOISE|SNDENA_TRI|SNDENA_SQ2|SNDENA_SQ1		; a9 0f
B24_0a10:		sta SND_CHN.w		; 8d 15 40
B24_0a13:		jsr b18_waitAFewCycles		; 20 23 8f
B24_0a16:		lda #$00		; a9 00
B24_0a18:		sta $06c8		; 8d c8 06
B24_0a1b:		lda $2b			; a5 2b
B24_0a1d:		cmp $0167		; cd 67 01
B24_0a20:		beq B24_0a25 ; f0 03

B24_0a22:		jsr func_18_0953		; 20 53 89
B24_0a25:		lda $0160		; ad 60 01
B24_0a28:		beq B24_0a2d ; f0 03

B24_0a2a:		jsr func_18_09b1		; 20 b1 89
B24_0a2d:		lda SND_CHN.w		; ad 15 40
B24_0a30:		and #SNDENA_DMC		; 29 10
B24_0a32:		bne B24_0a39 ; d0 05

B24_0a34:		lda #$00		; a9 00
B24_0a36:		sta $0192		; 8d 92 01
B24_0a39:		ldx #$00		; a2 00
B24_0a3b:		ldy #$00		; a0 00

; loop here updating each instrument
B24_0a3d:		stx wCurrInstrumentIdx			; 86 ee
B24_0a3f:		sty $018c		; 8c 8c 01
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
B24_0a5e:		lda $0167		; ad 67 01
B24_0a61:		beq B24_0a6b ; f0 08

B24_0a63:		lda wInstrumentsSoundIdxes.w, x	; bd 07 01
B24_0a66:		cmp #$4d		; c9 4d
B24_0a68:		beq B24_0a76 ; f0 0c

B24_0a6a:		rts				; 60 

B24_0a6b:		lda $06c9		; ad c9 06
B24_0a6e:		beq B24_0a76 ; f0 06

B24_0a70:		lda w115.w, x	; bd 15 01
B24_0a73:		lsr a			; 4a
B24_0a74:		bcc B24_0a56 ; 90 e0

B24_0a76:		cpx #$06		; e0 06
B24_0a78:		beq B24_0a9d ; f0 23

B24_0a7a:		lda w115.w, x	; bd 15 01
B24_0a7d:		lsr a			; 4a
B24_0a7e:		bcs B24_0a86 ; b0 06

B24_0a80:		lda $018f		; ad 8f 01
B24_0a83:		beq B24_0a86 ; f0 01

B24_0a85:		rts				; 60 

B24_0a86:		dec w100.w, x	; de 00 01
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
B24_0af6:		lda w100.w, x	; bd 00 01
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
B24_0b18:		jsr func_18_0cfa		; 20 fa 8c
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
B24_0b48:		sta $ec	; 85 ec
B24_0b4a:		lda wInstrumentFrequency_hi.w, x		; bd 86 01
B24_0b4d:		sta $ed	; 85 ed
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

B24_0c2e:		lda w100.w, x	; bd 00 01
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


func_18_0cfa:
B24_0cfa:		lda $06a3, x	; bd a3 06
B24_0cfd:		asl a			; 0a
B24_0cfe:		tay				; a8 
B24_0cff:		lda data_18_1e7b.w, y	; b9 7b 9e
B24_0d02:		sta $e2			; 85 e2
B24_0d04:		lda data_18_1e7b.w+1, y	; b9 7c 9e
B24_0d07:		sta $e3			; 85 e3
B24_0d09:		lda $06a6, x	; bd a6 06
B24_0d0c:		tay				; a8 
B24_0d0d:		lda ($e2), y	; b1 e2
B24_0d0f:		cmp #$fb		; c9 fb
B24_0d11:		bcs B24_0d84 ; b0 71

B24_0d13:		cmp #$10		; c9 10
B24_0d15:		bcc B24_0d1e ; 90 07

B24_0d17:		lsr a			; 4a
B24_0d18:		lsr a			; 4a
B24_0d19:		lsr a			; 4a
B24_0d1a:		lsr a			; 4a
B24_0d1b:		sta $03de, x	; 9d de 03
B24_0d1e:		inc $06a6, x	; fe a6 06
B24_0d21:		lda ($e2), y	; b1 e2
B24_0d23:		and #$0f		; 29 0f
B24_0d25:		sta $e2			; 85 e2
B24_0d27:		cmp #$08		; c9 08
B24_0d29:		bcs B24_0d32 ; b0 07

B24_0d2b:		jsr func_18_0d40		; 20 40 8d
B24_0d2e:		jsr func_18_0d54		; 20 54 8d
B24_0d31:		rts				; 60 


B24_0d32:		lda #$10		; a9 10
B24_0d34:		sec				; 38 
B24_0d35:		sbc $e2			; e5 e2
B24_0d37:		sta $e2			; 85 e2
B24_0d39:		jsr func_18_0d40		; 20 40 8d
B24_0d3c:		jsr func_18_0d6a		; 20 6a 8d
B24_0d3f:		rts				; 60 


func_18_0d40:
B24_0d40:		lda $03e1, x	; bd e1 03
B24_0d43:		tax				; aa 
B24_0d44:		lda $e2			; a5 e2

B24_0d46:		dex				; ca 
B24_0d47:		beq B24_0d4f ; f0 06

B24_0d49:		clc				; 18 
B24_0d4a:		adc $e2			; 65 e2
B24_0d4c:		jmp B24_0d46		; 4c 46 8d

B24_0d4f:		ldx wCurrInstrumentIdx			; a6 ee
B24_0d51:		sta $e2			; 85 e2
B24_0d53:		rts				; 60 


func_18_0d54:
B24_0d54:		clc				; 18 
B24_0d55:		adc wInstrumentFrequency_lo.w, x	; 7d 83 01
B24_0d58:		sta $ec			; 85 ec
B24_0d5a:		bcc B24_0d64 ; 90 08

B24_0d5c:		lda wInstrumentFrequency_hi.w, x	; bd 86 01
B24_0d5f:		sta $ed			; 85 ed
B24_0d61:		inc $ed			; e6 ed
B24_0d63:		rts				; 60 


B24_0d64:		lda wInstrumentFrequency_hi.w, x	; bd 86 01
B24_0d67:		sta $ed			; 85 ed
B24_0d69:		rts				; 60 


func_18_0d6a:
B24_0d6a:		lda wInstrumentFrequency_lo.w, x	; bd 83 01
B24_0d6d:		sec				; 38 
B24_0d6e:		sbc $e2			; e5 e2
B24_0d70:		bcs B24_0d7c ; b0 0a

B24_0d72:		sta $ec			; 85 ec
B24_0d74:		lda wInstrumentFrequency_hi.w, x	; bd 86 01
B24_0d77:		sta $ed			; 85 ed
B24_0d79:		dec $ed			; c6 ed
B24_0d7b:		rts				; 60 


B24_0d7c:		sta $ec			; 85 ec
B24_0d7e:		lda wInstrumentFrequency_hi.w, x	; bd 86 01
B24_0d81:		sta $ed			; 85 ed
B24_0d83:		rts				; 60 


B24_0d84:		cmp #$fe		; c9 fe
B24_0d86:		beq B24_0d96 ; f0 0e

B24_0d88:		bcs B24_0dbb ; b0 31

B24_0d8a:		inc $06a6, x	; fe a6 06
B24_0d8d:		lda $06a6, x	; bd a6 06
B24_0d90:		sta $06a0, x	; 9d a0 06
B24_0d93:		jmp func_18_0cfa		; 4c fa 8c


B24_0d96:		iny				; c8 
B24_0d97:		inc $06a9, x	; fe a9 06
B24_0d9a:		lda ($e2), y	; b1 e2
B24_0d9c:		cmp $06a9, x	; dd a9 06
B24_0d9f:		bne B24_0db2 ; d0 11

B24_0da1:		lda #$00		; a9 00
B24_0da3:		sta $06a9, x	; 9d a9 06
B24_0da6:		sta $06a0, x	; 9d a0 06
B24_0da9:		inc $06a6, x	; fe a6 06
B24_0dac:		inc $06a6, x	; fe a6 06
B24_0daf:		jmp func_18_0cfa		; 4c fa 8c


B24_0db2:		lda $06a0, x	; bd a0 06
B24_0db5:		sta $06a6, x	; 9d a6 06
B24_0db8:		jmp func_18_0cfa		; 4c fa 8c


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
	.dw b18_soundCommon.func_18_050d
	.dw b18_soundCommon.func_18_050d
	.dw b18_soundCommon.func_18_050d
	.dw b18_soundCommon.func_18_050d
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
B24_0ec9:		sta w100.w, x	; 9d 00 01
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

soundMetadataAddresses:
	.dw soundData_01
	.dw soundData_02
	.dw soundData_03
	.dw soundData_04
	.dw soundData_05
	.dw soundData_06
	.dw soundData_07
	.dw soundData_08
	.dw soundData_09
	.dw soundData_0a
	.dw soundData_0b
	.dw soundData_0c
	.dw soundData_0d
	.dw soundData_0e
	.dw soundData_0f
	.dw soundData_10
	.dw soundData_11
	.dw soundData_12
	.dw soundData_13
	.dw soundData_14
	.dw soundData_15
	.dw soundData_16
	.dw soundData_17
	.dw soundData_18
	.dw soundData_19
	.dw soundData_1a
	.dw soundData_1b
	.dw soundData_1c
	.dw soundData_1d
	.dw soundData_1e
	.dw soundData_1f
	.dw soundData_20
	.dw soundData_21
	.dw soundData_22
	.dw soundData_23
	.dw soundData_24
	.dw soundData_25
	.dw soundData_26
	.dw soundData_27
	.dw soundData_28
	.dw soundData_29
	.dw soundData_2a
	.dw soundData_2b
	.dw soundData_2c
	.dw soundData_2d
	.dw soundData_2e
	.dw soundData_2f
	.dw soundData_30
	.dw soundData_31
	.dw soundData_32
	.dw soundData_33
	.dw soundData_34
	.dw soundData_35
	.dw soundData_36
	.dw soundData_37
	.dw soundData_38
	.dw soundData_39
	.dw soundData_3a
	.dw soundData_3b
	.dw soundData_3c
	.dw soundData_3d
	.dw soundData_3e
	.dw soundData_3f
	.dw soundData_40
	.dw soundData_41
	.dw soundData_42
	.dw soundData_43
	.dw soundData_44
	.dw soundData_45
	.dw soundData_46
	.dw soundData_47
	.dw soundData_48
	.dw soundData_49
	.dw soundData_4a
	.dw soundData_4b
	.dw soundData_4c
	.dw soundData_4d
	.dw soundData_4e
	.dw soundData_4f
	.dw soundData_50
	.dw soundData_51
	.dw soundData_52
	.dw soundData_53
	.dw soundData_54
	.dw soundData_55
	.dw soundData_56
	.dw soundData_57
	.dw soundData_58
	.dw soundData_59
	.dw soundData_5a
	.dw soundData_5b
	.dw soundData_5c
	.dw soundData_5d
	.dw soundData_5e
	.dw soundData_5f
	.dw soundData_60
	.dw soundData_61
	.dw soundData_62
	.dw soundData_63
	.dw soundData_64
	.dw soundData_65
	.dw soundData_66
	.dw soundData_67
	.dw soundData_68
	.dw soundData_69
	.dw soundData_6a
	.dw soundData_6b
	.dw soundData_6c
	.dw soundData_6d
	.dw soundData_6e
	.dw soundData_6f
	.dw soundData_70
	.dw soundData_71
	.dw soundData_72
	.dw soundData_73
	.dw soundData_74
	.dw soundData_75
	.dw soundData_76
	.dw soundData_77
	.dw soundData_78
	.dw soundData_79
	.dw soundData_7a
	.dw soundData_7b
	.dw soundData_7c

soundData_01:
	.db $98
	.db $00
	.db $06
	.dw sound01_instrument06

soundData_02:
	.db $98
	.db $00
	.db $06
	.dw sound02_instrument06

soundData_03:
	.db $98
	.db $00
	.db $06
	.dw sound03_instrument06

soundData_04:
	.db $98
	.db $00
	.db $06
	.dw sound04_instrument06

soundData_05:
	.db $98
	.db $00
	.db $06
	.dw sound05_instrument06

soundData_06:
	.db $98
	.db $01
	.db $03
	.dw sound06_instrument03
	.db $06
	.dw sound06_instrument06

soundData_07:
	.db $98
	.db $01
	.db $03
	.dw sound07_instrument03
	.db $06
	.dw sound07_instrument06

soundData_09:
	.db $98
	.db $01
	.db $03
	.dw sound09_instrument03
	.db $06
	.dw sound09_instrument06

soundData_0b:
	.db $98
	.db $01
	.db $03
	.dw sound0b_instrument03
	.db $06
	.dw sound0b_instrument06

soundData_25:
	.db $98
	.db $00
	.db $06
	.dw sound25_instrument06

soundData_20:
	.db $98
	.db $00
	.db $06
	.dw sound20_instrument06

soundData_1c:
	.db $98
	.db $00
	.db $03
	.dw sound1c_instrument03

soundData_0c:
	.db $98
	.db $01
	.db $03
	.dw sound0c_instrument03
	.db $06
	.dw sound0c_instrument06

soundData_34:
	.db $98
	.db $00
	.db $06
	.dw sound34_instrument06

soundData_13:
	.db $98
	.db $00
	.db $06
	.dw sound13_instrument06

soundData_14:
	.db $98
	.db $00
	.db $06
	.dw sound14_instrument06

soundData_15:
	.db $98
	.db $00
	.db $06
	.dw sound15_instrument06

soundData_16:
	.db $98
	.db $01
	.db $03
	.dw sound16_instrument03
	.db $06
	.dw sound16_instrument06

soundData_17:
	.db $98
	.db $00
	.db $03
	.dw sound17_instrument03

soundData_2c:
	.db $98
	.db $00
	.db $03
	.dw sound2c_instrument03

soundData_18:
	.db $98
	.db $00
	.db $03
	.dw sound18_instrument03

soundData_1b:
	.db $98
	.db $00
	.db $03
	.dw sound1b_instrument03

soundData_22:
	.db $98
	.db $00
	.db $06
	.dw sound22_instrument06

soundData_23:
	.db $98
	.db $00
	.db $06
	.dw sound23_instrument06

soundData_0a:
	.db $98
	.db $00
	.db $03
	.dw sound0a_instrument03

soundData_29:
	.db $98
	.db $01
	.db $03
	.dw sound29_instrument03
	.db $06
	.dw sound29_instrument06

soundData_33:
	.db $98
	.db $01
	.db $03
	.dw sound33_instrument03
	.db $06
	.dw sound33_instrument06

soundData_27:
	.db $98
	.db $01
	.db $03
	.dw sound27_instrument03
	.db $06
	.dw sound27_instrument06

soundData_2b:
	.db $98
	.db $01
	.db $03
	.dw sound2b_instrument03
	.db $06
	.dw sound2b_instrument06

soundData_28:
	.db $98
	.db $01
	.db $03
	.dw sound28_instrument03
	.db $06
	.dw sound28_instrument06

soundData_2a:
	.db $98
	.db $01
	.db $03
	.dw sound2a_instrument03
	.db $06
	.dw sound2a_instrument06

soundData_2d:
	.db $98
	.db $00
	.db $06
	.dw sound2d_instrument06

soundData_2e:
	.db $98
	.db $00
	.db $06
	.dw sound2e_instrument06

soundData_49:
	.db $98
	.db $00
	.db $03
	.dw sound49_instrument03

soundData_2f:
	.db $98
	.db $01
	.db $03
	.dw sound2f_instrument03
	.db $06
	.dw sound2f_instrument06

soundData_30:
	.db $98
	.db $00
	.db $06
	.dw sound30_instrument06

soundData_31:
	.db $98
	.db $00
	.db $06
	.dw sound31_instrument06

soundData_24:
	.db $98
	.db $01
	.db $03
	.dw sound24_instrument03
	.db $06
	.dw sound24_instrument06

soundData_3c:
	.db $98
	.db $00
	.db $03
	.dw sound3c_instrument03

soundData_1d:
	.db $98
	.db $00
	.db $06
	.dw sound1d_instrument06

soundData_21:
	.db $98
	.db $01
	.db $03
	.dw sound21_instrument03
	.db $06
	.dw sound21_instrument06

soundData_1e:
	.db $98
	.db $01
	.db $03
	.dw sound1e_instrument03
	.db $06
	.dw sound1e_instrument06

soundData_1f:
	.db $98
	.db $00
	.db $06
	.dw sound1f_instrument06

soundData_35:
	.db $98
	.db $01
	.db $03
	.dw sound35_instrument03
	.db $06
	.dw sound35_instrument06

soundData_12:
	.db $98
	.db $01
	.db $03
	.dw sound12_instrument03
	.db $06
	.dw sound12_instrument06

soundData_36:
	.db $98
	.db $00
	.db $03
	.dw sound36_instrument03

soundData_37:
	.db $98
	.db $01
	.db $03
	.dw sound37_instrument03
	.db $06
	.dw sound37_instrument06

soundData_38:
	.db $98
	.db $01
	.db $03
	.dw sound38_instrument03
	.db $06
	.dw sound38_instrument06

soundData_08:
	.db $98
	.db $00
	.db $03
	.dw sound08_instrument03

soundData_32:
	.db $98
	.db $00
	.db $06
	.dw sound32_instrument06

soundData_39:
	.db $98
	.db $01
	.db $03
	.dw sound39_instrument03
	.db $06
	.dw sound39_instrument06

soundData_0f:
	.db $98
	.db $01
	.db $03
	.dw sound0f_instrument03
	.db $06
	.dw sound0f_instrument06

soundData_3a:
	.db $98
	.db $01
	.db $03
	.dw sound3a_instrument03
	.db $06
	.dw sound3a_instrument06

soundData_11:
	.db $98
	.db $01
	.db $03
	.dw sound11_instrument03
	.db $06
	.dw sound11_instrument06

soundData_3b:
	.db $98
	.db $01
	.db $03
	.dw sound3b_instrument03
	.db $06
	.dw sound3b_instrument06

soundData_26:
	.db $98
	.db $00
	.db $06
	.dw sound26_instrument06

soundData_0d:
	.db $98
	.db $00
	.db $03
	.dw sound0d_instrument03

soundData_0e:
	.db $98
	.db $00
	.db $06
	.dw sound0e_instrument06

soundData_3d:
	.db $98
	.db $01
	.db $03
	.dw sound3d_instrument03
	.db $06
	.dw sound3d_instrument06

soundData_43:
	.db $98
	.db $01
	.db $03
	.dw sound43_instrument03
	.db $06
	.dw sound43_instrument06

soundData_46:
	.db $98
	.db $00
	.db $03
	.dw sound46_instrument03

soundData_3e:
	.db $98
	.db $01
	.db $03
	.dw sound3e_instrument03
	.db $06
	.dw sound3e_instrument06

soundData_1a:
	.db $98
	.db $00
	.db $03
	.dw sound1a_instrument03

soundData_19:
	.db $98
	.db $00
	.db $03
	.dw sound19_instrument03

soundData_3f:
	.db $98
	.db $01
	.db $03
	.dw sound3f_instrument03
	.db $06
	.dw sound3f_instrument06

soundData_40:
	.db $98
	.db $00
	.db $03
	.dw sound40_instrument03

soundData_10:
	.db $98
	.db $01
	.db $03
	.dw sound10_instrument03
	.db $06
	.dw sound10_instrument06

soundData_41:
	.db $98
	.db $00
	.db $03
	.dw sound41_instrument03

soundData_42:
	.db $98
	.db $00
	.db $06
	.dw sound42_instrument06

soundData_48:
	.db $98
	.db $01
	.db $03
	.dw sound48_instrument03
	.db $06
	.dw sound48_instrument06

soundData_44:
	.db $98
	.db $01
	.db $03
	.dw sound44_instrument03
	.db $06
	.dw sound44_instrument06

soundData_45:
	.db $98
	.db $00
	.db $03
	.dw sound45_instrument03

soundData_47:
	.db $98
	.db $01
	.db $03
	.dw sound47_instrument03
	.db $06
	.dw sound47_instrument06

soundData_4a:
	.db $98
	.db $00
	.db $03
	.dw sound4a_instrument03

soundData_4b:
	.db $98
	.db $01
	.db $03
	.dw sound4b_instrument03
	.db $06
	.dw sound4b_instrument06

soundData_4c:
	.db $98
	.db $00
	.db $03
	.dw sound4c_instrument03

soundData_4d:
	.db $98
	.db $00
	.db $03
	.dw sound4d_instrument03

soundData_4e:
	.db $8a
	.db $03
	.db $00
	.dw sound4e_instrument00
	.db $01
	.dw sound4e_instrument01
	.db $02
	.dw sound4e_instrument02
	.db $05
	.dw sound4e_instrument05

soundData_4f:
	.db $8a
	.db $03
	.db $00
	.dw sound4f_instrument00
	.db $01
	.dw sound4f_instrument01
	.db $02
	.dw sound4f_instrument02
	.db $05
	.dw sound4f_instrument05

soundData_50:
	.db $8a
	.db $03
	.db $00
	.dw sound50_instrument00
	.db $01
	.dw sound50_instrument01
	.db $02
	.dw sound50_instrument02
	.db $05
	.dw sound50_instrument05

soundData_51:
	.db $8a
	.db $03
	.db $00
	.dw sound51_instrument00
	.db $01
	.dw sound51_instrument01
	.db $02
	.dw sound51_instrument02
	.db $05
	.dw sound51_instrument05

soundData_52:
	.db $8a
	.db $03
	.db $00
	.dw sound52_instrument00
	.db $01
	.dw sound52_instrument01
	.db $02
	.dw sound52_instrument02
	.db $05
	.dw sound52_instrument05

soundData_53:
	.db $8a
	.db $03
	.db $00
	.dw sound53_instrument00
	.db $01
	.dw sound53_instrument01
	.db $02
	.dw sound53_instrument02
	.db $05
	.dw sound53_instrument05

soundData_54:
	.db $8a
	.db $03
	.db $00
	.dw sound54_instrument00
	.db $01
	.dw sound54_instrument01
	.db $02
	.dw sound54_instrument02
	.db $05
	.dw sound54_instrument05

soundData_55:
	.db $8a
	.db $03
	.db $00
	.dw sound55_instrument00
	.db $01
	.dw sound55_instrument01
	.db $02
	.dw sound55_instrument02
	.db $05
	.dw sound55_instrument05

soundData_56:
	.db $8a
	.db $03
	.db $00
	.dw sound56_instrument00
	.db $01
	.dw sound56_instrument01
	.db $02
	.dw sound56_instrument02
	.db $05
	.dw sound56_instrument05

soundData_57:
	.db $8a
	.db $03
	.db $00
	.dw sound57_instrument00
	.db $01
	.dw sound57_instrument01
	.db $02
	.dw sound57_instrument02
	.db $05
	.dw sound57_instrument05

soundData_58:
	.db $88
	.db $03
	.db $00
	.dw sound58_instrument00
	.db $01
	.dw sound58_instrument01
	.db $02
	.dw sound58_instrument02
	.db $05
	.dw sound58_instrument05

soundData_59:
	.db $8a
	.db $03
	.db $00
	.dw sound59_instrument00
	.db $01
	.dw sound59_instrument01
	.db $02
	.dw sound59_instrument02
	.db $05
	.dw sound59_instrument05

soundData_5a:
	.db $8a
	.db $03
	.db $00
	.dw sound5a_instrument00
	.db $01
	.dw sound5a_instrument01
	.db $02
	.dw sound5a_instrument02
	.db $05
	.dw sound5a_instrument05

soundData_5b:
	.db $88
	.db $03
	.db $00
	.dw sound5b_instrument00
	.db $01
	.dw sound5b_instrument01
	.db $02
	.dw sound5b_instrument02
	.db $05
	.dw sound5b_instrument05

soundData_5c:
	.db $88
	.db $03
	.db $00
	.dw sound5c_instrument00
	.db $01
	.dw sound5c_instrument01
	.db $02
	.dw sound5c_instrument02
	.db $05
	.dw sound5c_instrument05

soundData_5d:
	.db $88
	.db $03
	.db $00
	.dw sound5d_instrument00
	.db $01
	.dw sound5d_instrument01
	.db $02
	.dw sound5d_instrument02
	.db $05
	.dw sound5d_instrument05

soundData_5e:
	.db $88
	.db $03
	.db $00
	.dw sound5e_instrument00
	.db $01
	.dw sound5e_instrument01
	.db $02
	.dw sound5e_instrument02
	.db $05
	.dw sound5e_instrument05

soundData_5f:
	.db $88
	.db $03
	.db $00
	.dw sound5f_instrument00
	.db $01
	.dw sound5f_instrument01
	.db $02
	.dw sound5f_instrument02
	.db $05
	.dw sound5f_instrument05

soundData_60:
	.db $88
	.db $03
	.db $00
	.dw sound60_instrument00
	.db $01
	.dw sound60_instrument01
	.db $02
	.dw sound60_instrument02
	.db $05
	.dw sound60_instrument05

soundData_61:
	.db $88
	.db $03
	.db $00
	.dw sound61_instrument00
	.db $01
	.dw sound61_instrument01
	.db $02
	.dw sound61_instrument02
	.db $05
	.dw sound61_instrument05

soundData_62:
	.db $88
	.db $03
	.db $00
	.dw sound62_instrument00
	.db $01
	.dw sound62_instrument01
	.db $02
	.dw sound62_instrument02
	.db $05
	.dw sound62_instrument05

soundData_63:
	.db $88
	.db $03
	.db $00
	.dw sound63_instrument00
	.db $01
	.dw sound63_instrument01
	.db $02
	.dw sound63_instrument02
	.db $05
	.dw sound63_instrument05

soundData_64:
	.db $88
	.db $03
	.db $00
	.dw sound64_instrument00
	.db $01
	.dw sound64_instrument01
	.db $02
	.dw sound64_instrument02
	.db $05
	.dw sound64_instrument05

soundData_65:
	.db $88
	.db $03
	.db $00
	.dw sound65_instrument00
	.db $01
	.dw sound65_instrument01
	.db $02
	.dw sound65_instrument02
	.db $05
	.dw sound65_instrument05

soundData_66:
	.db $88
	.db $03
	.db $00
	.dw sound66_instrument00
	.db $01
	.dw sound66_instrument01
	.db $02
	.dw sound66_instrument02
	.db $05
	.dw sound66_instrument05

soundData_67:
	.db $8a
	.db $03
	.db $00
	.dw sound67_instrument00
	.db $01
	.dw sound67_instrument01
	.db $02
	.dw sound67_instrument02
	.db $05
	.dw sound67_instrument05

soundData_68:
	.db $88
	.db $03
	.db $00
	.dw sound68_instrument00
	.db $01
	.dw sound68_instrument01
	.db $02
	.dw sound68_instrument02
	.db $05
	.dw sound68_instrument05

soundData_69:
	.db $8a
	.db $03
	.db $00
	.dw sound69_instrument00
	.db $01
	.dw sound69_instrument01
	.db $02
	.dw sound69_instrument02
	.db $05
	.dw sound69_instrument05

soundData_6a:
	.db $88
	.db $03
	.db $00
	.dw sound6a_instrument00
	.db $01
	.dw sound6a_instrument01
	.db $02
	.dw sound6a_instrument02
	.db $05
	.dw sound6a_instrument05

soundData_6b:
	.db $88
	.db $03
	.db $00
	.dw sound6b_instrument00
	.db $01
	.dw sound6b_instrument01
	.db $02
	.dw sound6b_instrument02
	.db $05
	.dw sound6b_instrument05

soundData_6c:
	.db $88
	.db $03
	.db $00
	.dw sound6c_instrument00
	.db $01
	.dw sound6c_instrument01
	.db $02
	.dw sound6c_instrument02
	.db $05
	.dw sound6c_instrument05

soundData_6d:
	.db $00
	.db $07
	.dw dpcmSpecData_6d

soundData_6e:
	.db $00
	.db $07
	.dw dpcmSpecData_6e

soundData_6f:
	.db $00
	.db $07
	.dw dpcmSpecData_6f

soundData_70:
	.db $00
	.db $07
	.dw dpcmSpecData_70

soundData_71:
	.db $00
	.db $07
	.dw dpcmSpecData_71

soundData_73:
	.db $00
	.db $07
	.dw dpcmSpecData_73

soundData_74:
	.db $00
	.db $07
	.dw dpcmSpecData_74

soundData_75:
	.db $00
	.db $07
	.dw dpcmSpecData_75

soundData_76:
	.db $00
	.db $07
	.dw dpcmSpecData_76

soundData_77:
	.db $00
	.db $07
	.dw dpcmSpecData_77

soundData_72:
	.db $00
	.db $07
	.dw dpcmSpecData_72

soundData_78:
	.db $00
	.db $07
	.dw dpcmSpecData_78

soundData_79:
	.db $00
	.db $07
	.dw dpcmSpecData_79

soundData_7a:
	.db $00
	.db $07
	.dw dpcmSpecData_7a

soundData_7b:
	.db $00
	.db $07
	.dw dpcmSpecData_7b

soundData_7c:
	.db $00
	.db $07
	.dw dpcmSpecData_7c


sound01_instrument06:
	.db $01 $5d $49 $39 $19 $ff

sound02_instrument06:
	.db $01 $65 $24 $21 $11 $ff

sound03_instrument06:
	.db $01 $a2 $a1 $71 $61 $61 $50 $51
	.db $50 $51 $50 $41 $ff

sound04_instrument06:
	.db $01 $b6 $96 $76 $54 $36 $ff

sound05_instrument06:
	.db $01 $ee $86 $34 $33 $24 $13 $12
	.db $12 $ff

sound06_instrument03:
sound06_instrument06:
	.db $ff

sound0a_instrument03:
	.db $03 $70 $81 $82 $00 $22 $00 $03
	.db $b0 $81 $80 $e0 $03 $b0 $8a $40
	.db $f0 $21 $d4 $12 $1a $ff

sound07_instrument03:
	.db $02 $b0 $82 $fb $53 $00 $51 $00
	.db $52 $00 $54 $00 $53 $00 $51 $00
	.db $52 $00 $54 $00 $fe $0e $33 $00
	.db $31 $00 $32 $00 $34 $00 $33 $00
	.db $31 $00 $32 $00 $34 $00 $23 $00
	.db $21 $00 $22 $00 $24 $00 $23 $00
	.db $21 $00 $22 $00 $24 $00 $13 $00
	.db $11 $00 $12 $00 $14 $00 $13 $00
	.db $11 $00 $12 $00 $14 $00 $13 $00
	.db $11 $00 $12 $00 $14 $00 $13 $00
	.db $11 $00 $12 $00 $14 $00 $ff

sound07_instrument06:
	.db $01 $bc $2d $3d $4c $5e $6e $7f
	.db $8e $9b $9f $9d $9c $bf $bf $be
	.db $bf $fb $bc $bd $bd $5c $be $be
	.db $bf $be $fe $10 $fb $8b $8f $8d
	.db $8c $5f $3d $be $5d $fe $08 $3f
	.db $bf $02 $4f $bf $8d $bf $af $8e
	.db $3f $7e $4f $3d $af $2e $5d $4f
	.db $6e $3f $8e $5f $7e $03 $6d $3e
	.db $7f $3e $7e $2d $5f $2e $4f $2f
	.db $3e $2e $3f $1e $2e $2f $1e $2e
	.db $1e $1f $1f $ff

sound09_instrument03:
	.db $ff

sound09_instrument06:
	.db $02 $8d $01 $00 $00 $02 $8a $33
	.db $ff

sound0b_instrument03:
	.db $01 $30 $88 $30 $f0 $00 $00 $01
	.db $f0 $88 $20 $0a $10 $0b $ff

sound0b_instrument06:
	.db $01 $ae $00 $00 $01 $aa $93 $ff
	.db $ff $01 $41 $73 $b5 $e7 $02 $48
	.db $f6 $34 $f2 $ff

sound1c_instrument03:
	.db $07 $b0 $9b $b0 $55 $81 $00 $70
	.db $88 $51 $00 $31 $22 $21 $44 $11
	.db $66 $ff

sound0c_instrument03:
	.db $04 $70 $8a $00 $01 $70 $8a $d3
	.db $cc $83 $55 $b3 $cc $63 $55 $93
	.db $cc $33 $55 $03 $b0 $82 $d1 $66
	.db $d1 $99 $c1 $66 $b1 $99 $a1 $66
	.db $91 $99 $81 $66 $71 $99 $51 $66
	.db $31 $99 $21 $66 $21 $99 $11 $66
	.db $11 $99 $ff

sound0c_instrument06:
	.db $04 $00 $01 $00 $01 $bd $03 $8f
	.db $78 $6f $02 $48 $6f $48 $2f $28
	.db $1f $18 $1f $18 $1f $18 $1f $ff

sound34_instrument06:
	.db $01 $d9 $02 $be $af $04 $ca $c8
	.db $01 $00 $06 $86 $01 $00 $05 $64
	.db $01 $00 $04 $33 $01 $00 $03 $12
	.db $01 $00 $02 $11 $ff

sound33_instrument03:
	.db $ff

sound33_instrument06:
	.db $05 $bd $01 $ba $bd $bc $bb $ba
	.db $b9 $b8 $b7 $c6 $c5 $a4 $a3 $a2
	.db $a1 $ff

sound4b_instrument03:
	.db $05 $b0 $88 $b0 $64 $b0 $4b $b0
	.db $3c $b0 $4b $b0 $3c $b0 $64 $b0
	.db $25 $00 $40 $25 $00 $10 $25 $ff

sound4b_instrument06:
	.db $ff

sound13_instrument06:
	.db $01 $41 $73 $b5 $d7 $02 $38 $c6
	.db $24 $c2 $ff

sound14_instrument06:
	.db $01 $00 $40 $81 $92 $d6 $8b $5b
	.db $3c $ff

sound15_instrument06:
	.db $01 $11 $33 $65 $97 $02 $18 $a6
	.db $14 $a1 $00 $00 $ff

sound16_instrument03:
	.db $03 $b0 $88 $c0 $15 $c0 $10 $c0
	.db $2a $c0 $20 $02 $b0 $88 $00 $03
	.db $b0 $88 $b0 $10 $b0 $0a $b0 $25
	.db $b0 $1a $00 $90 $15 $90 $10 $ff

sound16_instrument06:
	.db $03 $c4 $c4 $c4 $00 $c4 $bd $bf
	.db $be $bf $bd $8f $8e $8f $be $be
	.db $bf $ae $af $ad $9f $9e $8d $ff

sound17_instrument03:
	.db $03 $b0 $89 $10 $60 $20 $60 $30
	.db $60 $30 $60 $40 $60 $40 $60 $50
	.db $60 $60 $60 $70 $60 $80 $60 $90
	.db $60 $a0 $60 $b0 $60 $c0 $60 $80
	.db $60 $60 $60 $50 $60 $40 $60 $30
	.db $60 $20 $60 $10 $60 $ff

sound4a_instrument03:
	.db $02 $b0 $8b $fb $e0 $35 $ea $83
	.db $f0 $7f $ea $8b $e0 $35 $ea $83
	.db $b0 $7f $ea $8b $90 $35 $ea $83
	.db $70 $7f $ea $8b $50 $35 $ea $83
	.db $30 $7f $08 $b0 $8b $10 $35 $fe
	.db $02 $ff

sound2c_instrument03:
	.db $02 $b0 $9a $11 $c0 $31 $80 $51
	.db $40 $71 $00 $90 $c0 $b0 $80 $07
	.db $b0 $9a $c0 $e0 $a0 $e0 $80 $e0
	.db $60 $e0 $40 $e0 $30 $e0 $20 $e0
	.db $10 $e0 $ff

sound18_instrument03:
	.db $04 $30 $8b $c0 $98 $b0 $43 $a0
	.db $ad $90 $ee $80 $bc $70 $54 $60
	.db $b4 $50 $a7 $40 $3f $30 $67 $30
	.db $aa $20 $99 $20 $6f $10 $93 $10
	.db $77 $ff

sound1b_instrument03:
	.db $0b $b0 $92 $b0 $50 $07 $b0 $8b
	.db $a0 $80 $80 $80 $40 $80 $20 $80
	.db $10 $80 $ff

sound27_instrument03:
	.db $01 $30 $88 $30 $10 $30 $20 $30
	.db $10 $00 $02 $b0 $88 $30 $1f $20
	.db $1a $00 $20 $1f $00 $10 $1d $00
	.db $10 $1d $ff

sound27_instrument06:
	.db $05 $bd $01 $ba $bd $bc $cb $ca
	.db $c9 $c8 $c7 $b6 $b5 $c4 $c3 $c2
	.db $c1 $ff

sound2b_instrument03:
	.db $01 $22 $9d $22 $10 $10 $30 $20
	.db $50 $40 $70 $a6 $11 $00 $ff

sound2b_instrument06:
	.db $03 $bf $bf $ae $bf $b1 $b2 $b3
	.db $ff

sound28_instrument03:
	.db $01 $70 $88 $ed $1a $60 $40 $60
	.db $80 $01 $70 $88 $90 $31 $50 $30
	.db $80 $30 $40 $30 $70 $30 $30 $30
	.db $50 $30 $20 $30 $30 $30 $10 $30
	.db $ff

sound28_instrument06:
	.db $01 $ce $c8 $02 $b8 $95 $34 $ff

sound2d_instrument06:
	.db $01 $cf $0a $cd $03 $fb $b9 $bf
	.db $fe $04 $0a $cd $01 $cf $03 $ca
	.db $cf $0a $cd $01 $cf $05 $cd $cd
	.db $ce $cd $ce $cd $ce $cd $9e $8d
	.db $7e $6d $5e $4d $3e $2d $1e $1d
	.db $ff

sound2e_instrument06:
	.db $01 $cf $05 $cd $03 $fb $b9 $bf
	.db $fe $02 $02 $e9 $0c $be $bd $9d
	.db $9e $7d $5d $4d $3d $2d $2d $1d
	.db $ff

sound49_instrument03:
	.db $01 $b0 $88 $fb $60 $19 $80 $32
	.db $a0 $32 $a0 $32 $a0 $32 $20 $32
	.db $00 $fe $04 $fb $06 $b0 $88 $00
	.db $00 $30 $32 $e8 $02 $fe $03 $ff

sound2f_instrument03:
	.db $03 $b0 $88 $11 $53 $20 $fe $30
	.db $e2 $40 $be $05 $b0 $88 $60 $a9
	.db $60 $e2 $61 $53 $40 $a9 $40 $e2
	.db $41 $53 $30 $a9 $30 $e2 $31 $53
	.db $20 $a9 $20 $e2 $21 $53 $10 $a9
	.db $10 $e2 $11 $53 $ff

sound2f_instrument06:
	.db $05 $00 $01 $bd $04 $bd $05 $9f
	.db $06 $8d $6f $5d $4f $3d $2f $1d
	.db $1f $ff

sound22_instrument06:
	.db $03 $da $01 $00 $02 $00 $c8 $b5
	.db $94 $85 $74 $62 $41 $32 $22 $07
	.db $00 $09 $61 $ff

sound23_instrument06:
	.db $03 $da $06 $00 $04 $42 $c2 $c8
	.db $b5 $74 $65 $54 $04 $c2 $62 $52
	.db $32 $11 $ff

sound30_instrument06:
	.db $03 $ca $02 $00 $bd $04 $bf $b8
	.db $b9 $a5 $a9 $88 $86 $68 $69 $48
	.db $35 $23 $1e $ff

sound31_instrument06:
	.db $02 $da $04 $00 $03 $44 $c9 $b7
	.db $75 $6e $58 $35 $23 $1f $ff

sound24_instrument03:
	.db $01 $b0 $88 $b2 $70 $53 $00 $62
	.db $00 $73 $00 $81 $80 $00 $62 $a0
	.db $81 $c0 $72 $1a $82 $40 $72 $6a
	.db $62 $d0 $55 $00 $46 $60 $42 $00
	.db $33 $00 $00 $42 $40 $22 $64 $32
	.db $d0 $25 $00 $26 $00 $12 $00 $13
	.db $00 $ff

sound24_instrument06:
	.db $01 $00 $a6 $bd $be $bc $ff

sound3c_instrument03:
	.db $01 $b0 $88 $d0 $7f $01 $30 $88
	.db $d0 $7f $00 $00 $00 $00 $01 $b0
	.db $88 $20 $7f $ff

sound1d_instrument06:
	.db $01 $be $bd $bc $02 $77 $78 $89
	.db $9a $9b $9c $9d $03 $be $be $ae
	.db $9e $8e $7e $6e $5e $4e $4e $3e
	.db $3e $2e $1e $0e $ff

sound21_instrument03:
sound1e_instrument03:
	.db $ff

sound21_instrument06:
sound1e_instrument06:
sound35_instrument06:
	.db $01 $8f $8d $8f $8a $89 $88 $87
	.db $86 $85 $84 $00 $4d $4c $4b $4a
	.db $49 $48 $47 $46 $45 $44 $00 $2d
	.db $2c $2b $2a $29 $28 $27 $26 $25
	.db $24 $00 $1d $1c $1b $1a $19 $18
	.db $17 $16 $14 $ff

sound1f_instrument06:
	.db $03 $97 $00 $98 $5f $41 $3a $25
	.db $18 $1b $ff

sound12_instrument03:
	.db $0f $b0 $83 $d2 $00 $42 $00 $12
	.db $00 $ff

sound12_instrument06:
	.db $01 $00 $7c $03 $bf $79 $02 $bf
	.db $99 $9f $79 $7f $59 $5f $39 $2f
	.db $19 $1f $ff $ff

sound36_instrument03:
	.db $01 $b0 $88 $00 $00 $00 $00 $00
	.db $fb $32 $a7 $30 $10 $52 $5d $50
	.db $20 $61 $fd $60 $20 $71 $c5 $70
	.db $10 $81 $7d $80 $20 $91 $40 $90
	.db $10 $91 $0d $90 $20 $90 $e2 $00
	.db $e8 $04 $fe $02 $ff

sound11_instrument03:
	.db $0f $b0 $83 $f2 $00 $52 $00 $12
	.db $00 $ff

sound11_instrument06:
	.db $01 $00 $9c $03 $df $99 $02 $df
	.db $b9 $bf $99 $9f $79 $7f $59 $3f
	.db $29 $1f $ff

sound29_instrument03:
	.db $01 $22 $9d $12 $10 $10 $30 $20
	.db $50 $40 $70 $ff

sound29_instrument06:
	.db $03 $bf $bf $ae $bf $b1 $b2 $b3
	.db $ff

sound2a_instrument03:
	.db $02 $b0 $82 $c2 $70 $03 $b0 $82
	.db $00 $03 $b0 $82 $13 $b0 $c1 $ab
	.db $c1 $53 $c1 $ab $c1 $53 $b1 $ab
	.db $a1 $53 $91 $ab $81 $53 $71 $ab
	.db $61 $53 $51 $ab $41 $53 $31 $ab
	.db $31 $53 $21 $ab $21 $53 $11 $ab
	.db $11 $53 $ff

sound2a_instrument06:
	.db $01 $bc $03 $9f $00 $89 $7f $02
	.db $69 $8f $49 $3f $39 $2f $29 $2f
	.db $19 $1f $19 $1f $ff

sound37_instrument03:
sound39_instrument03:
	.db $02 $b0 $82 $d2 $70 $03 $b0 $82
	.db $00 $03 $b0 $82 $13 $b0 $d1 $ab
	.db $d1 $53 $d1 $ab $d1 $53 $c1 $ab
	.db $b1 $53 $a1 $ab $91 $53 $81 $ab
	.db $71 $53 $61 $ab $41 $53 $41 $ab
	.db $31 $53 $31 $ab $21 $53 $21 $ab
	.db $11 $53 $ff

sound37_instrument06:
sound39_instrument06:
	.db $01 $cc $03 $af $00 $99 $8f $02
	.db $79 $9f $59 $4f $39 $3f $29 $2f
	.db $19 $1f $19 $1f $ff

sound38_instrument03:
	.db $ff

sound38_instrument06:
	.db $01 $d9 $ce $bf $4e $cc $bb $aa
	.db $8a $00 $7a $00 $7a $7a $7a $6a
	.db $5a $4a $3b $2a $02 $39 $39 $29
	.db $19 $19 $ff

sound08_instrument03:
	.db $01 $b0 $8b $21 $00 $00 $05 $b0
	.db $8a $00 $51 $1d $00 $11 $53 $e6
	.db $20 $00 $fe $ff $fb $99

sound32_instrument06:
	.db $01 $fb $36 $87 $25 $66 $12 $44
	.db $fe $02 $33 $ff

sound25_instrument06:
	.db $01 $98 $66 $0e $97 $ff

sound20_instrument06:
	.db $01 $58 $46 $0e $57 $ff

sound0f_instrument03:
	.db $06 $b0 $8c $24 $90 $43 $f0 $63
	.db $70 $93 $00 $63 $00 $43 $00 $23
	.db $00 $13 $00 $ff

sound0f_instrument06:
	.db $ff

sound3a_instrument03:
	.db $04 $70 $82 $52 $00 $54 $00 $55
	.db $00 $53 $00 $ff

sound3a_instrument06:
	.db $01 $8c $8d $8d $3c $8e $8e $8f
	.db $8e $5b $5f $5d $5c $8f $8f $8e
	.db $8f $ff

sound3b_instrument03:
	.db $04 $70 $82 $62 $00 $64 $00 $65
	.db $00 $63 $00 $ff

sound3b_instrument06:
	.db $01 $8c $8d $8d $3c $8e $8e $8f
	.db $8e $5b $5f $5d $5c $8f $8f $8e
	.db $8f $ff

sound26_instrument06:
	.db $01 $fb $25 $c8 $1f $43 $00 $fe
	.db $04 $12 $b6 $1f $34 $00 $11 $75
	.db $1f $23 $00 $11 $54 $1f $23 $00
	.db $11 $34 $1f $23 $00 $11 $24 $1f
	.db $13 $00 $11 $24 $1f $13 $00 $ff

sound0d_instrument03:
	.db $02 $b0 $9b $63 $00 $00 $00 $04
	.db $b0 $8a $61 $94 $31 $ec $12 $36
	.db $ff

sound0e_instrument06:
	.db $02 $76 $2d $42 $2f $01 $9a $8e
	.db $7f $2e $7c $6b $5a $4a $3a $2a
	.db $1a $1a $1a $02 $26 $1d $22 $1f
	.db $01 $3a $4e $2f $1e $4c $2b $5a
	.db $3a $2a $1a $1a $1a $ff

sound3d_instrument03:
	.db $02 $b0 $82 $c3 $00 $c1 $00 $c2
	.db $00 $c4 $00 $c3 $00 $c1 $00 $c2
	.db $00 $c4 $00 $ff

sound3d_instrument06:
	.db $02 $ca $cb $0c $ca $ff

sound46_instrument03:
	.db $03 $30 $89 $10 $60 $30 $60 $40
	.db $60 $50 $60 $60 $60 $70 $60 $80
	.db $60 $90 $60 $a0 $60 $b0 $60 $c0
	.db $60 $d0 $60 $e0 $60 $e0 $60 $b0
	.db $60 $90 $60 $70 $60 $50 $60 $30
	.db $60 $20 $60 $10 $60 $0c $30 $8d
	.db $31 $60 $41 $50 $51 $40 $61 $30
	.db $71 $20 $81 $10 $91 $00 $a0 $f0
	.db $b0 $e0 $c0 $d0 $d0 $c0 $e0 $b0
	.db $f0 $a0 $03 $30 $89 $10 $60 $30
	.db $60 $40 $60 $50 $60 $60 $60 $70
	.db $60 $80 $60 $90 $60 $a0 $60 $b0
	.db $60 $c0 $60 $d0 $60 $e0 $60 $e0
	.db $60 $b0 $60 $90 $60 $70 $60 $50
	.db $60 $30 $60 $20 $60 $10 $60 $ff

sound40_instrument03:
	.db $01 $70 $f8 $b1 $1d $b1 $93 $fb
	.db $11 $1d $11 $93 $fe $02 $00 $00
	.db $fb $b1 $1d $b1 $93 $fe $0c $ff

sound10_instrument03:
	.db $01 $30 $81 $e8 $02 $f0 $34 $70
	.db $34 $00 $00 $d0 $30 $00 $00 $b0
	.db $40 $00 $00 $90 $28 $00 $80 $3b
	.db $00 $90 $18 $00 $70 $40 $00 $80
	.db $70 $00 $70 $50 $ff

sound10_instrument06:
	.db $ff

sound41_instrument03:
	.db $08 $b0 $8b $ed $40 $75 $90 $34
	.db $90 $b5 $40 $34 $40 $c4 $d0 $23
	.db $d0 $d4 $50 $43 $50 $d4 $00 $43
	.db $00 $d3 $b0 $42 $b0 $d3 $70 $42
	.db $70 $d3 $20 $42 $20 $0f $b0 $82
	.db $e6 $10 $90 $c0 $50 $c0 $30 $c0
	.db $20 $c0 $10 $c0 $ff

sound42_instrument06:
	.db $01 $ce $cd $cc $02 $87 $88 $99
	.db $aa $ab $ac $ad $03 $ce $be $ae
	.db $9e $7e $5e $fb $6e $fe $30 $06
	.db $4e $3e $2e $1e $ff

sound43_instrument03:
	.db $01 $70 $82 $b2 $22 $20 $09 $d0
	.db $77 $10 $09 $10 $66 $20 $11 $e6
	.db $10 $00 $ff

sound43_instrument06:
	.db $01 $cd $cc $bb $aa $8a $7a $7a
	.db $7a $7a $6a $5a $4a $3b $3a $fb
	.db $39 $fe $07 $29 $1a $19 $09 $18
	.db $ff

sound48_instrument03:
	.db $06 $b0 $88 $fb $20 $a9 $20 $2a
	.db $70 $a9 $70 $2a $80 $a9 $80 $2a
	.db $50 $a9 $50 $2a $40 $a9 $40 $2a
	.db $30 $a9 $30 $2a $20 $a9 $20 $2a
	.db $10 $a9 $10 $2a $fe $02 $10 $a9
	.db $10 $2a $10 $a9 $10 $2a $50 $a9
	.db $50 $2a $30 $a9 $30 $2a $20 $a9
	.db $20 $2a $10 $a9 $10 $2a $10 $a9
	.db $10 $2a $ff

sound48_instrument06:
	.db $06 $fb $3f $40 $af $b0 $cf $d0
	.db $af $90 $8f $70 $6f $50 $4f $30
	.db $2f $20 $fe $02 $2f $20 $3f $30
	.db $6f $50 $5f $40 $3f $20 $2f $20
	.db $2f $20 $ff

sound3e_instrument03:
	.db $ff

sound3e_instrument06:
	.db $01 $cf $0a $cd $03 $fb $c9 $cf
	.db $fe $04 $02 $c9 $0c $be $bd $9d
	.db $9e $7d $6d $5d $4d $3d $2d $1d
	.db $ff

sound1a_instrument03:
	.db $05 $b0 $88 $b0 $33 $70 $20 $e7
	.db $50 $30 $00 $01 $b0 $88 $00 $05
	.db $b0 $88 $20 $20 $e7 $10 $00 $04
	.db $b0 $88 $00 $02 $b0 $88 $10 $20
	.db $e7 $00 $00 $00 $00 $ff

sound19_instrument03:
	.db $01 $70 $88 $90 $ec $90 $46 $90
	.db $8e $90 $46 $90 $8e $90 $46 $90
	.db $50 $90 $f0 $90 $e0 $90 $d0 $90
	.db $c0 $90 $b0 $90 $a0 $90 $90 $90
	.db $80 $90 $66 $90 $44 $90 $22 $ff

sound3f_instrument03:
	.db $ff

sound3f_instrument06:
	.db $01 $cf $0a $cd $03 $fb $c9 $cf
	.db $fe $04 $0a $cd $01 $cf $03 $ca
	.db $cf $0a $cd $01 $cf $05 $cd $cd
	.db $ce $cd $ce $cd $ce $cd $8e $7d
	.db $6e $5d $4e $3d $2e $1d $1e $1d
	.db $ff

sound35_instrument03:
	.db $05 $30 $81 $00 $01 $30 $81 $00
	.db $d1 $00 $00 $00 $00 $d0 $20 $00
	.db $00 $00 $d0 $f0 $00 $00 $00 $d0
	.db $1f $00 $00 $00 $d0 $e0 $00 $00
	.db $00 $d0 $1e $00 $00 $00 $d0 $d0
	.db $00 $00 $00 $d0 $1c $ff

sound44_instrument03:
	.db $05 $b0 $f8 $00 $ed $09 $e6 $01
	.db $70 $28 $e6 $02 $50 $27 $e6 $03
	.db $40 $27 $fb $30 $27 $fe $04 $00
	.db $10 $27 $ff

sound44_instrument06:
	.db $01 $00 $00 $00 $00 $00 $87 $02
	.db $fb $a2 $59 $fe $04 $00 $22 $19
	.db $ff

sound45_instrument03:
	.db $06 $30 $88 $00 $b0 $64 $b0 $54
	.db $b0 $47 $b0 $3c $b0 $32 $b0 $2a
	.db $b0 $23 $b0 $1e $10 $32 $10 $2a
	.db $10 $23 $10 $1e $ff

sound47_instrument03:
	.db $03 $70 $81 $a0 $40 $05 $70 $8d
	.db $d1 $d0 $80 $d0 $55 $c0 $04 $f0
	.db $81 $a1 $fe $06 $d0 $81 $90 $3a
	.db $60 $3b $40 $3a $30 $3b $20 $3a
	.db $10 $3b $10 $3a $ff

sound47_instrument06:
	.db $05 $10 $dd $01 $10 $da $10 $dd
	.db $10 $dc $10 $db $10 $da $d9 $d8
	.db $d7 $d6 $d5 $d4 $d3 $d2 $d1 $ff

sound4c_instrument03:
	.db $06 $30 $88 $83 $fa $82 $a7 $81
	.db $fc $81 $c5 $81 $93 $81 $53 $80
	.db $fe $80 $e2 $80 $c9 $80 $a9 $80
	.db $7f $80 $71 $80 $64 $80 $54 $80
	.db $3f $80 $38 $80 $32 $80 $2a $80
	.db $1f $80 $1f $40 $32 $40 $2a $40
	.db $1f $40 $1f $20 $32 $20 $2a $20
	.db $1f $20 $1f $10 $32 $10 $2a $10
	.db $1f $10 $1f $ff

sound4d_instrument03:
	.db $05 $b0 $88 $b0 $d5 $b0 $8e $b0
	.db $a9 $02 $b0 $88 $c0 $6a $b0 $6a
	.db $a0 $6a $90 $6a $80 $6a $60 $6a
	.db $40 $6a $20 $6a $ff


data_18_1e25:
	.dw $9ebb
	.dw $9ebd
	.dw $9ec8
	.dw $9ed9
	.dw $9edd
	.dw $9ee2
	.dw $9ee9
	.dw $9ef0
	.dw $9f05
	.dw $9f0e
	.dw $9f15
	.dw $9f20
	.dw $9f30
	.dw $9f3e
	.dw $9f47
	.dw $9f4f
	.dw $9f57
	.dw $9f5d
	.dw $9f63
	.dw $9f69
	.dw $9f6e
	.dw $9f7f
	.dw $9f83
	.dw $9f89
	.dw $9f8d
	.dw $9f93
	.dw $9f98
	.dw $9f9d
	.dw $9fa3
	.dw $9fa8
	.dw $9fad
	.dw $9fb4
	.dw $9fba
	.dw $9fc3
	.dw $9fc7
	.dw $9fcb
	.dw $9fcf
	.dw $9fd5
	.dw $9fdc
	.dw $9fe5
	.dw $9ff9
	.dw $9ffd
	.dw $a004

data_18_1e7b:
	.dw $a015
	.dw $a024
	.dw $a02f
	.dw $a036
	.dw $a045
	.dw $a050
	.dw $a057
	.dw $a062
	.dw $a06d
	.dw $a074
	.dw $a07b
	.dw $a080
	.dw $a088
	.dw $a094
	.dw $a0a0
	.dw $a0a8
	.dw $a0b3
	.dw $a0bb
	.dw $a0c8
	.dw $a0d3
	.dw $a0da
	.dw $a0e6
	.dw $a0f1
	.dw $a0f9
	.dw $a105
	.dw $a110
	.dw $a11b
	.dw $a128
	.dw $a134
	.dw $a140
	.dw $a147
	.dw $a14f


B24_1ebb:		.db $11
B24_1ebc:	.db $ff
B24_1ebd:		ora $1718, x	; 1d 18 17
B24_1ec0:		asl $15, x		; 16 15
B24_1ec2:	.db $14
B24_1ec3:	.db $13
B24_1ec4:	.db $12
B24_1ec5:		ora ($10), y	; 11 10
B24_1ec7:	.db $ff
B24_1ec8:		clc				; 18 
B24_1ec9:		asl $15, x		; 16 15
B24_1ecb:	.db $14
B24_1ecc:	.db $13
B24_1ecd:	.db $12
B24_1ece:		bpl B24_1ee5 ; 10 15

B24_1ed0:	.db $14
B24_1ed1:	.db $13
B24_1ed2:	.db $12
B24_1ed3:		and ($10, x)	; 21 10
B24_1ed5:	.db $14
B24_1ed6:	.db $13
B24_1ed7:	.db $12
B24_1ed8:	.db $ff
B24_1ed9:	.db $14
B24_1eda:		ora $16, x		; 15 16
B24_1edc:	.db $ff
B24_1edd:		ora ($12), y	; 11 12
B24_1edf:	.db $13
B24_1ee0:	.db $14
B24_1ee1:	.db $ff
B24_1ee2:		and ($32, x)	; 21 32
B24_1ee4:	.db $43
B24_1ee5:	.db $54
B24_1ee6:		adc $76			; 65 76
B24_1ee8:	.db $ff
B24_1ee9:		ora $1718, x	; 1d 18 17
B24_1eec:		asl $15, x		; 16 15
B24_1eee:	.db $14
B24_1eef:	.db $ff
B24_1ef0:	.db $17
B24_1ef1:		asl $15, x		; 16 15
B24_1ef3:	.db $14
B24_1ef4:	.db $13
B24_1ef5:	.db $12
B24_1ef6:		ora ($11), y	; 11 11
B24_1ef8:		bpl B24_1f10 ; 10 16

B24_1efa:	.db $14
B24_1efb:	.db $13
B24_1efc:	.db $12
B24_1efd:		ora ($21), y	; 11 21
B24_1eff:		bpl B24_1f15 ; 10 14

B24_1f01:	.db $13
B24_1f02:		and ($31, x)	; 21 31
B24_1f04:	.db $ff
B24_1f05:		rol a			; 2a
B24_1f06:		asl $29, x		; 16 29
B24_1f08:		asl $18, x		; 16 18
B24_1f0a:	.db $17
B24_1f0b:		asl $15, x		; 16 15
B24_1f0d:	.db $ff
B24_1f0e:		clc				; 18 
B24_1f0f:	.db $37
B24_1f10:		asl $15, x		; 16 15
B24_1f12:	.db $14
B24_1f13:	.db $13
B24_1f14:	.db $ff
B24_1f15:	.db $37
B24_1f16:		lsr $45, x		; 56 45
B24_1f18:	.db $44
B24_1f19:	.db $43
B24_1f1a:	.db $72
B24_1f1b:		ora ($e2), y	; 11 e2
B24_1f1d:	.db $e3
B24_1f1e:		cpx $ff			; e4 ff
B24_1f20:	.db $17
B24_1f21:		asl $15, x		; 16 15
B24_1f23:	.db $f4
B24_1f24:	.db $f3
B24_1f25:	.db $f3
B24_1f26:	.db $f2
B24_1f27:	.db $f2
B24_1f28:	.db $f2
B24_1f29:		ldx #$b3		; a2 b3
B24_1f2b:		ldy $b5, x		; b4 b5
B24_1f2d:		ldx $17, y		; b6 17
B24_1f2f:	.db $ff
B24_1f30:	.db $17
B24_1f31:		asl $15, x		; 16 15
B24_1f33:		cpx $e3			; e4 e3
B24_1f35:	.db $e3
B24_1f36:	.db $e2
B24_1f37:	.db $e2
B24_1f38:	.db $e3
B24_1f39:		cpx $e5			; e4 e5
B24_1f3b:		inc $17			; e6 17
B24_1f3d:	.db $ff
B24_1f3e:		clc				; 18 
B24_1f3f:	.db $47
B24_1f40:		inc $f5, x		; f6 f5
B24_1f42:		cpx $d3			; e4 d3
B24_1f44:	.db $82
B24_1f45:		adc ($ff), y	; 71 ff
B24_1f47:		asl $37, x		; 16 37
B24_1f49:		and $44, x		; 35 44
B24_1f4b:	.db $43
B24_1f4c:	.db $62
B24_1f4d:		adc ($ff), y	; 71 ff
B24_1f4f:		asl $17, x		; 16 17
B24_1f51:		plp				; 28 
B24_1f52:		rol $25			; 26 25
B24_1f54:	.db $14
B24_1f55:	.db $13
B24_1f56:	.db $ff
B24_1f57:		clc				; 18 
B24_1f58:	.db $47
B24_1f59:		lsr $44, x		; 56 44
B24_1f5b:	.db $43
B24_1f5c:	.db $ff
B24_1f5d:		sec				; 38 
B24_1f5e:		rol $34, x		; 36 34
B24_1f60:	.db $23
B24_1f61:		and ($ff, x)	; 21 ff
B24_1f63:		clc				; 18 
B24_1f64:	.db $37
B24_1f65:		rol $15			; 26 15
B24_1f67:	.db $14
B24_1f68:	.db $ff
B24_1f69:		plp				; 28 
B24_1f6a:	.db $37
B24_1f6b:		and $23			; 25 23
B24_1f6d:	.db $ff
B24_1f6e:		clc				; 18 
B24_1f6f:	.db $37
B24_1f70:		ror $65			; 66 65
B24_1f72:	.db $64
B24_1f73:	.db $63
B24_1f74:	.db $52
B24_1f75:	.db $63
B24_1f76:	.db $64
B24_1f77:		adc $76, x		; 75 76
B24_1f79:		adc $74, x		; 75 74
B24_1f7b:	.db $73
B24_1f7c:	.db $72
B24_1f7d:	.db $72
B24_1f7e:	.db $ff
B24_1f7f:	.db $27
B24_1f80:		ora $12, x		; 15 12
B24_1f82:	.db $ff
B24_1f83:		clc				; 18 
B24_1f84:		rol $34			; 26 34
B24_1f86:	.db $23
B24_1f87:		and ($ff, x)	; 21 ff
B24_1f89:	.db $27
B24_1f8a:		and $14			; 25 14
B24_1f8c:	.db $ff
B24_1f8d:		asl $25, x		; 16 25
B24_1f8f:	.db $14
B24_1f90:	.db $13
B24_1f91:	.db $12
B24_1f92:	.db $ff
B24_1f93:		clc				; 18 
B24_1f94:		asl $25, x		; 16 25
B24_1f96:	.db $13
B24_1f97:	.db $ff
B24_1f98:		sec				; 38 
B24_1f99:	.db $27
B24_1f9a:		and $24			; 25 24
B24_1f9c:	.db $ff
B24_1f9d:		asl $27, x		; 16 27
B24_1f9f:		plp				; 28 
B24_1fa0:		asl $14, x		; 16 14
B24_1fa2:	.db $ff
B24_1fa3:		sec				; 38 
B24_1fa4:		rol $34			; 26 34
B24_1fa6:	.db $23
B24_1fa7:	.db $ff
B24_1fa8:		and #$25		; 29 25
B24_1faa:		bit $33			; 24 33
B24_1fac:	.db $ff
B24_1fad:		sec				; 38 
B24_1fae:		asl $14, x		; 16 14
B24_1fb0:	.db $13
B24_1fb1:	.db $12
B24_1fb2:		ora ($ff), y	; 11 ff
B24_1fb4:		asl $37, x		; 16 37
B24_1fb6:		and $33, x		; 35 33
B24_1fb8:	.db $22
B24_1fb9:	.db $ff
B24_1fba:		clc				; 18 
B24_1fbb:	.db $47
B24_1fbc:		inc $f5, x		; f6 f5
B24_1fbe:		cpx $d3			; e4 d3
B24_1fc0:	.db $82
B24_1fc1:		adc ($ff), y	; 71 ff
B24_1fc3:		and $2528, y	; 39 28 25
B24_1fc6:	.db $ff
B24_1fc7:		clc				; 18 
B24_1fc8:		and $24			; 25 24
B24_1fca:	.db $ff
B24_1fcb:	.db $14
B24_1fcc:		and $36			; 25 36
B24_1fce:	.db $ff
B24_1fcf:		eor #$48		; 49 48
B24_1fd1:	.db $47
B24_1fd2:		rol $25, x		; 36 25
B24_1fd4:	.db $ff
B24_1fd5:	.db $14
B24_1fd6:		ora $2528, y	; 19 28 25
B24_1fd9:		rol $14			; 26 14
B24_1fdb:	.db $ff
B24_1fdc:	.db $23
B24_1fdd:		ora $3728, y	; 19 28 37
B24_1fe0:		and $34, x		; 35 34
B24_1fe2:	.db $23
B24_1fe3:	.db $22
B24_1fe4:	.db $ff
B24_1fe5:		bit $75			; 24 75
B24_1fe7:		stx $77			; 86 77
B24_1fe9:		tya				; 98 
B24_1fea:		and #$98		; 29 98
B24_1fec:		tya				; 98 
B24_1fed:	.db $97
B24_1fee:	.db $27
B24_1fef:		stx $76			; 86 76
B24_1ff1:		sta $75			; 85 75
B24_1ff3:	.db $44
B24_1ff4:		sty $33			; 84 33
B24_1ff6:	.db $32
B24_1ff7:		and ($ff, x)	; 21 ff
B24_1ff9:		bit $25			; 24 25
B24_1ffb:		rol $ff, x		; 36 ff
B24_1ffd:		asl $18, x		; 16 18
		.db $17
