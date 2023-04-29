PlayIntro:
	xor a
	ldh [hJoyHeld], a
	inc a
	ldh [hAutoBGTransferEnabled], a
	call PlayPresentsScreen
	call GBFadeOutToWhite
	xor a
	ldh [hSCX], a
	ldh [hAutoBGTransferEnabled], a
	call ClearSprites
	call DelayFrame
	ret

PlayPresentsScreen:
	ld b, SET_PAL_GAME_FREAK_INTRO
	call RunPaletteCommand
	call LoadFontTilePatterns
	farcall LoadCopyrightAndTextBoxTiles
	ldpal a, SHADE_BLACK, SHADE_DARK, SHADE_LIGHT, SHADE_WHITE
	ldh [rBGP], a
	ld c, 180
	call DelayFrames
	call GBFadeOutToWhite
	call ClearScreen
	ld a, SLOWPOKE
	ld [wWholeScreenPaletteMonSpecies],a
	ld b, SET_PAL_POKEMON_WHOLE_SCREEN
	call RunPaletteCommand
	call LoadPresentsScreen
	ld a, %11100100
	ldh [rBGP], a
	ld a, MUSIC_INTRO
	call PlayMusic
	ld c, 200
	call DelayFrames
	call ClearSprites
	jp Delay3

LoadPresentsScreen::
	xor a
	ldh [hWY], a
	call ClearScreen
	call DisableLCD
	farcall CheckForPlayerNameInSRAM
	jr c, .skipWarningScreen
	call EnableLCD
	call Delay3
	call GBPalNormal
	hlcoord 1, 1
	ld de, WarningText1
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, WarningText2
	call PlaceString
	call WaitForTextScrollButtonPress
	call ClearScreen
	call DisableLCD
.skipWarningScreen
	ld hl, PresentsGraphics1
	ld de, vChars2
	ld bc, PresentsGraphics1End - PresentsGraphics1
	call CopyData
	ld hl, PresentsGraphics2
	ld de, vFont
	ld bc, PresentsGraphics2End - PresentsGraphics2
	call CopyData
	ld hl, PresentsTilemap
	ld de, wTileMap
	ld bc, PresentsTilemapEnd - PresentsTilemap
	call CopyData
	call EnableLCD
	call Delay3
	call GBPalNormal
	ret

PresentsGraphics1: INCBIN "gfx/splash/presents1.2bpp"
PresentsGraphics1End:
PresentsGraphics2: INCBIN "gfx/splash/presents2.2bpp"
PresentsGraphics2End:

PresentsTilemap:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2d,$2e,$2f
	db $30,$31,$32,$33,$34,$35,$36,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4a,$00,$00,$00,$00,$00
	db $00,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5a,$5b,$5c,$5d,$5e,$5f
	db $60,$61,$62,$00,$00,$65,$66,$67,$68,$69,$6a,$6b,$6c,$6d,$6e,$6f
	db $70,$71,$72,$73,$74,$75,$76,$00,$00,$79,$7a,$7b,$7c,$7d,$7e,$7f
	db $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$00,$00,$00,$8d,$8e,$8f
	db $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
PresentsTilemapEnd:

WarningText1:
	db   "     WARNING!"
	next "This is a HACK-ROM"
	next "not licensed by or"
	next "affiliated with"
	next "GAME FREAK and/or"
	next "NINTENDO. Please"
	next "support original"
	next "products and the"
	next "POKéMON franchise.@"

WarningText2:
	db   "     WARNING!"
	next "This game can be  "
	next "downloadable for  "
	next "free in internet. "
	next "If you have paid  "
	next "for this game, you"
	next "were wronged.     "
	next "                  "
	next "PRESS A TO ADVANCE@"
