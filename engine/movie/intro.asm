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
	farcall LoadCopyrightAndTextBoxTiles
	farcall PrismWarningFunction
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
	call LoadFontTilePatterns
	call EnableLCD
	call Delay3
	call GBPalNormal
	hlcoord 1, 1
	ld de, SpecialThanksText1
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, SpecialThanksText2
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, SpecialThanksText3
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, SpecialThanksText4
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, SpecialThanksText5
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, SpecialThanksText6
	call PlaceString
	call WaitForTextScrollButtonPress
	hlcoord 1, 1
	ld de, WarningText
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

SpecialThanksText1:
	db   "  SPECIAL THANKS   "
	next "     VORTIENE      "
	next "    DANNY-E 33     "
	next "     RANGI 42      "
	next "    JOJOBEAR13     "
	next "    LUNA/MATEO     "
	next "     HUDERLEM      "
	next "      SANQUI       "
	next "  M4-USED-ROLLOUT @" ; torto

SpecialThanksText2:
	db   "  SPECIAL THANKS   "
	next "    EINSTEIN95     "
	next "    PIA-CARROT     "
	next "     XILLICIS      "
	next "DAVID WHITE-VULPIN "
	next "    EROSUNICA      " ; torto
	next "    CHATOT4444     "
	next " PLAGUE VON KARMA  "
	next "   VIMES CARROT   @"

SpecialThanksText3:
	db   "  SPECIAL THANKS   "
	next "     MIRKO93S      "
	next "      ILO1DI       "
	next "     USERWEST      "
	next "   WHATEVER-MAN    "
	next "    MYLOGON341     "
	next "RAINBOWMETALPIGEON "
	next "    ARIAHIRO64     "
	next "   VEGANLIES2ME   @"

SpecialThanksText4:
	db   "  SPECIAL THANKS   "
	next "    RAWR51919      " ; torto
	next "   INFERNOGEAR     " ; torto
	next "     PGATTIC       " ; torto
	next "   SEASICKSORE     " ; torto
	next "     MATTCIT       " ; torto
	next "     ZETOGIT       " ; torto
	next "     FOTOMAC       " ; torto
	next "     RETROKOH     @" ; torto

SpecialThanksText5:
	db   "  SPECIAL THANKS   "
	next "     NARFNRA       " ; torto
	next "   GUERNOUILLE     " ; torto
	next "    SKEETENDO      " ; torto
	next "    IIMARCKUS      " ; torto
	next "P.R.E.T. Community "
	next "                   "
	next "                   "
	next "                  @"

SpecialThanksText6:
	db   "  SPECIAL THANKS   "
	next "   STEPPOBLAZER    "
	next "    KOOLBOYMAN     "
	next "   RAINBOW DEVS    "
	next "  IRONINVOKER 47   "
	next "   SILVA GUNNER    "
	next "                   "
	next "                   "
	next "                  @"

WarningText:
	db   "     WARNING!      "
	next "This game can be   "
	next "downloadable for   "
	next "free in internet.  "
	next "If you have paid   "
	next "for this game, you "
	next "were wronged.      "
	next "                   "
	next "PRESS A TO ADVANCE@"
