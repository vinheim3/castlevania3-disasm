
gameState7_debugMode_body:
	ldy wGameSubstate
B0_0a1e:		bne B0_0a35 ; @substate1plus

B0_0a20:		jsr func_1f_0819		; 20 19 e8

	ldy #CB_TREVOR_1
	sty wChrBankSpr_0000
; CB_TREVOR_2
	iny
	sty wChrBankSpr_0400
	lda #CB_ASCII_ROUND_RECTANGLE
	sta wChrBankBG_0400

	lda #$00
	sta wMenuOptionIdxSelected
	inc wGameSubstate
	rts

@substate1plus:
; clear nametables
B0_0a35:		dey				; 88 
	bne @substate2plus

	inc wGameSubstate
	jmp fillFirst3NametablesWith0

@substate2plus:
	dey
	bne B0_0a62 ; @substate3

	inc wGameSubstate

; display 4 nums
@display4numsAndUpdateCursorDetails:
B0_0a42:	ldy #$00
	lda wCurrRoomGroup
	jsr vramQueueNumAPositionBasedOnY

	ldy #$02
	lda wCurrRoomSection
	jsr vramQueueNumAPositionBasedOnY

	ldy #$04
	lda wCurrRoomIdx
	jsr vramQueueNumAPositionBasedOnY

	ldy #$06
	lda wCurrPlayer.w
	jsr vramQueueNumAPositionBasedOnY

	jmp setDebugModeScreenMenuCursorEntityDetails

@substate3:
B0_0a62:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a64:		and #$10		; 29 10
B0_0a66:		bne B0_0ae0 ; d0 78

B0_0a68:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a6a:		and #$20		; 29 20
B0_0a6c:		beq B0_0a7c ; f0 0e

B0_0a6e:		ldy wMenuOptionIdxSelected			; a4 6b
B0_0a70:		iny				; c8 
B0_0a71:		cpy #$04		; c0 04
B0_0a73:		bne B0_0a77 ; d0 02

B0_0a75:		ldy #$00		; a0 00
B0_0a77:		sty wMenuOptionIdxSelected			; 84 6b
B0_0a79:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0a7c:		lda wJoy1NewButtonsPressed			; a5 26
B0_0a7e:		and #$80		; 29 80
B0_0a80:		beq B0_0aa8 ; f0 26

B0_0a82:		ldy wMenuOptionIdxSelected			; a4 6b
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
B0_0a96:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0a99:		inc wCurrRoomIdx			; e6 34
B0_0a9b:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0a9e:		inc wCurrRoomSection			; e6 33
B0_0aa0:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0aa3:		inc wCurrRoomGroup			; e6 32
B0_0aa5:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0aa8:		lda wJoy1NewButtonsPressed			; a5 26
B0_0aaa:		and #$40		; 29 40
B0_0aac:		beq B0_0a42 ; @display4numsAndUpdateCursorDetails

B0_0aae:		ldy wMenuOptionIdxSelected			; a4 6b
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
B0_0ac2:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0ac5:		lda wCurrRoomIdx			; a5 34
B0_0ac7:		beq B0_0acb ; f0 02

B0_0ac9:		dec wCurrRoomIdx			; c6 34
B0_0acb:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0ace:		lda wCurrRoomSection			; a5 33
B0_0ad0:		beq B0_0ad4 ; f0 02

B0_0ad2:		dec wCurrRoomSection			; c6 33
B0_0ad4:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

B0_0ad7:		lda wCurrRoomGroup			; a5 32
B0_0ad9:		beq B0_0add ; f0 02

B0_0adb:		dec wCurrRoomGroup			; c6 32
B0_0add:		jmp B0_0a42		; @display4numsAndUpdateCursorDetails

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


menuCursorXorYoffsets:
	.dw titleScreenXoffsets
	.dw gameOverScreenYoffsets
	.dw debugModeScreenYoffsets

debugModeScreenYoffsets:
	.db $60 $70 $80 $90
	
titleScreenXoffsets:
	.db $30 $88

gameOverScreenYoffsets:
	.db $a4 $bc


debugModeNumberPositions:
	.dw $2190
	.dw $21d0
	.dw $2210
	.dw $2250


vramQueueNumAPositionBasedOnY:
	sta wCurrNumToVramQueue
	lda debugModeNumberPositions.w, y
	sta wVramQueueDest
	lda debugModeNumberPositions.w+1, y
	sta wVramQueueDest+1
	jsr vramQueueControlByte1AndNumsDigitTiles

setGameOverScreenMenuCursorEntityDetails:
	lda #$58
	sta wEntityBaseX.w
	ldy #$02
	bne +

setDebugModeScreenMenuCursorEntityDetails:
	lda #$70
	sta wEntityBaseX.w
	ldy #$04

+	lda menuCursorXorYoffsets.w, y
	sta wMenuCursorXorYoffsetsAddr
	lda menuCursorXorYoffsets.w+1, y
	sta wMenuCursorXorYoffsetsAddr+1

	ldy wMenuOptionIdxSelected
	lda (wMenuCursorXorYoffsetsAddr), y
	sta wEntityBaseY.w

setMenuCursorOamSpecGroupAndIdx:
	lda #$00
	sta wEntityOamSpecGroupDoubled.w
	lda #$40
	sta wOamSpecIdxDoubled.w
	rts


setTitleScreenMenuCursorEntityDetails:
; static Y
	lda #$cb
	sta wEntityBaseY.w

; X based on option selected
	ldy #$00
	lda menuCursorXorYoffsets.w, y
	sta wMenuCursorXorYoffsetsAddr
	lda menuCursorXorYoffsets.w+1, y
	sta wMenuCursorXorYoffsetsAddr+1

	ldy wMenuOptionIdxSelected
	lda (wMenuCursorXorYoffsetsAddr), y
	sta wEntityBaseX.w

	jmp setMenuCursorOamSpecGroupAndIdx
