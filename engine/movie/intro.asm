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
	INCBIN "gfx/splash/presents.tilemap"
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
