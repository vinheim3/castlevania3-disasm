
gameState7_body:
B0_0a1c:		ldy wGameSubstate			; a4 19
B0_0a1e:		bne B0_0a35 ; d0 15

B0_0a20:		jsr func_1f_0819		; 20 19 e8
B0_0a23:		ldy #$00		; a0 00
B0_0a25:		sty wChrBankSpr_0000			; 84 46
B0_0a27:		iny				; c8 
B0_0a28:		sty wChrBankSpr_0400			; 84 47
B0_0a2a:		lda #$41		; a9 41
B0_0a2c:		sta wChrBankBG_0400			; 85 4b
B0_0a2e:		lda #$00		; a9 00
B0_0a30:		sta $6b			; 85 6b
B0_0a32:		inc wGameSubstate			; e6 19
B0_0a34:		rts				; 60 

@substate1plus:
B0_0a35:		dey				; 88 
B0_0a36:		bne B0_0a3d ; d0 05

B0_0a38:		inc wGameSubstate			; e6 19
B0_0a3a:		jmp func_1f_0bfd		; 4c fd eb

@substate2plus:
B0_0a3d:		dey				; 88 
B0_0a3e:		bne B0_0a62 ; d0 22

B0_0a40:		inc wGameSubstate			; e6 19
B0_0a42:		ldy #$00		; a0 00
B0_0a44:		lda wCurrRoomGroup			; a5 32
B0_0a46:		jsr func_00_0b1a		; 20 1a 8b
B0_0a49:		ldy #$02		; a0 02
B0_0a4b:		lda wCurrRoomSection			; a5 33
B0_0a4d:		jsr func_00_0b1a		; 20 1a 8b
B0_0a50:		ldy #$04		; a0 04
B0_0a52:		lda wCurrRoomIdx			; a5 34
B0_0a54:		jsr func_00_0b1a		; 20 1a 8b
B0_0a57:		ldy #$06		; a0 06
B0_0a59:		lda wCurrPlayer.w		; ad 4e 05
B0_0a5c:		jsr func_00_0b1a		; 20 1a 8b
B0_0a5f:		jmp $8b32		; 4c 32 8b

@substate3:
B0_0a62:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a64:		and #$10		; 29 10
B0_0a66:		bne B0_0ae0 ; d0 78

B0_0a68:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a6a:		and #$20		; 29 20
B0_0a6c:		beq B0_0a7c ; f0 0e

B0_0a6e:		ldy $6b			; a4 6b
B0_0a70:		iny				; c8 
B0_0a71:		cpy #$04		; c0 04
B0_0a73:		bne B0_0a77 ; d0 02

B0_0a75:		ldy #$00		; a0 00
B0_0a77:		sty $6b			; 84 6b
B0_0a79:		jmp $8a42		; 4c 42 8a

B0_0a7c:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a7e:		and #$80		; 29 80
B0_0a80:		beq B0_0aa8 ; f0 26

B0_0a82:		ldy $6b			; a4 6b
B0_0a84:		beq B0_0aa3 ; f0 1d

B0_0a86:		dey				; 88 
B0_0a87:		beq B0_0a9e ; f0 15

B0_0a89:		dey				; 88 
B0_0a8a:		beq B0_0a99 ; f0 0d

B0_0a8c:		ldy wCurrPlayer.w		; ac 4e 05
B0_0a8f:		iny				; c8 
B0_0a90:		tya				; 98 
B0_0a91:		and #$03		; 29 03
B0_0a93:		sta wCurrPlayer.w		; 8d 4e 05
B0_0a96:		jmp $8a42		; 4c 42 8a

B0_0a99:		inc wCurrRoomIdx			; e6 34
B0_0a9b:		jmp $8a42		; 4c 42 8a

B0_0a9e:		inc wCurrRoomSection			; e6 33
B0_0aa0:		jmp $8a42		; 4c 42 8a

B0_0aa3:		inc wCurrRoomGroup			; e6 32
B0_0aa5:		jmp $8a42		; 4c 42 8a

B0_0aa8:		lda wJoy1NewButtonsPressed			; a5 26
B0_0aaa:		and #$40		; 29 40
B0_0aac:		beq B0_0a42 ; f0 94

B0_0aae:		ldy $6b			; a4 6b
B0_0ab0:		beq B0_0ad7 ; f0 25

B0_0ab2:		dey				; 88 
B0_0ab3:		beq B0_0ace ; f0 19

B0_0ab5:		dey				; 88 
B0_0ab6:		beq B0_0ac5 ; f0 0d

B0_0ab8:		ldy wCurrPlayer.w		; ac 4e 05
B0_0abb:		dey				; 88 
B0_0abc:		tya				; 98 
B0_0abd:		and #$03		; 29 03
B0_0abf:		sta wCurrPlayer.w		; 8d 4e 05
B0_0ac2:		jmp $8a42		; 4c 42 8a

B0_0ac5:		lda wCurrRoomIdx			; a5 34
B0_0ac7:		beq B0_0acb ; f0 02

B0_0ac9:		dec wCurrRoomIdx			; c6 34
B0_0acb:		jmp $8a42		; 4c 42 8a

B0_0ace:		lda wCurrRoomSection			; a5 33
B0_0ad0:		beq B0_0ad4 ; f0 02

B0_0ad2:		dec wCurrRoomSection			; c6 33
B0_0ad4:		jmp $8a42		; 4c 42 8a

B0_0ad7:		lda wCurrRoomGroup			; a5 32
B0_0ad9:		beq B0_0add ; f0 02

B0_0adb:		dec wCurrRoomGroup			; c6 32
B0_0add:		jmp $8a42		; 4c 42 8a

B0_0ae0:		jsr func_1f_0819		; 20 19 e8
B0_0ae3:		jsr $e684		; 20 84 e6
B0_0ae6:		lda #$00		; a9 00
B0_0ae8:		sta $39			; 85 39
B0_0aea:		lda wCurrPlayer.w		; ad 4e 05
B0_0aed:		bne B0_0af5 ; d0 06

B0_0aef:		ldy #$00		; a0 00
B0_0af1:		lda #$ff		; a9 ff
B0_0af3:		bne B0_0af7 ; d0 02

B0_0af5:		ldy #$01		; a0 01
B0_0af7:		sty $3b			; 84 3b
B0_0af9:		sta $3a			; 85 3a
B0_0afb:		lda #GS_IN_GAME		; a9 04
B0_0afd:		sta wGameState			; 85 18
B0_0aff:		lda #$00		; a9 00
B0_0b01:		sta wInGameSubstate			; 85 2a
B0_0b03:		rts				; 60 


B0_0b04:		asl $108b		; 0e 8b 10
B0_0b07:	.db $8b
B0_0b08:		asl a			; 0a
B0_0b09:	.db $8b
B0_0b0a:		rts				; 60 


B0_0b0b:		;removed
	.db $70 $80

B0_0b0d:		;removed
	.db $90 $30

B0_0b0f:		dey				; 88 
B0_0b10:		ldy $bc			; a4 bc
B0_0b12:		;removed
	.db $90 $21

B0_0b14:		bne B0_0b37 ; d0 21

B0_0b16:		;removed
	.db $10 $22

B0_0b18:		bvc B0_0b3c ; 50 22


func_00_0b1a:
B0_0b1a:		sta $08			; 85 08
B0_0b1c:		lda $8b12, y	; b9 12 8b
B0_0b1f:		sta wVramQueueDest			; 85 61
B0_0b21:		lda $8b13, y	; b9 13 8b
B0_0b24:		sta wVramQueueDest+1			; 85 62
B0_0b26:		jsr $e8fc		; 20 fc e8

func_00_0b29:
B0_0b29:		lda #$58		; a9 58
B0_0b2b:		sta wEntityBaseX.w		; 8d 38 04
B0_0b2e:		ldy #$02		; a0 02
B0_0b30:		bne B0_0b39 ; d0 07

B0_0b32:		lda #$70		; a9 70
B0_0b34:		sta wEntityBaseX.w		; 8d 38 04
B0_0b37:		ldy #$04		; a0 04
B0_0b39:		lda $8b04, y	; b9 04 8b
B0_0b3c:		sta $08			; 85 08
B0_0b3e:		lda $8b05, y	; b9 05 8b
B0_0b41:		sta $09			; 85 09
B0_0b43:		ldy $6b			; a4 6b
B0_0b45:		lda ($08), y	; b1 08
B0_0b47:		sta wEntityBaseY.w		; 8d 1c 04
B0_0b4a:		lda #$00		; a9 00
B0_0b4c:		sta wEntityOamSpecGroupDoubled.w		; 8d 8c 04
B0_0b4f:		lda #$40		; a9 40
B0_0b51:		sta wOamSpecIdx.w		; 8d 00 04
B0_0b54:		rts				; 60 
