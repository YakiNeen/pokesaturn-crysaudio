VermilionTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

VermilionTradeHouse_TextPointers:
	dw VermilionHouse3Text1

VermilionHouse3Text1:
	text_asm
	ld hl, Trader4Name
	call SetCustomName
	ld a, TRADE_FOR_DUX
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

Trader4Name:
	db "ELYSSA@"
