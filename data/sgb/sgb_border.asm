BorderPalettes:
IF DEF(_SATURN)
	INCBIN "gfx/sgb/saturn_border.tilemap"
ENDC
IF DEF(_MARS)
	INCBIN "gfx/sgb/mars_border.tilemap"
ENDC

	ds $100

IF DEF(_SATURN)
	RGB 30,29,29 ; PAL_SGB1
	RGB 25,22,25
	RGB 25,17,21
	RGB 24,14,12
ENDC
IF DEF(_MARS)
	RGB 30,29,29 ; PAL_SGB1
	RGB 10,17,26
	RGB 5,9,20
	RGB 16,20,27
ENDC

	ds $18

IF DEF(_SATURN)
	RGB 30,29,29 ; PAL_SGB2
	RGB 22,31,16
	RGB 27,20,6
	RGB 15,15,15
ENDC
IF DEF(_MARS)
	RGB 30,29,29 ; PAL_SGB2
	RGB 27,11,6
	RGB 5,9,20
	RGB 28,25,15
ENDC

	ds $18

IF DEF(_SATURN)
	RGB 30,29,29 ; PAL_SGB3
	RGB 31,31,17
	RGB 18,21,29
	RGB 15,15,15
ENDC
IF DEF(_MARS)
	RGB 30,29,29 ; PAL_SGB3
	RGB 12,15,11
	RGB 5,9,20
	RGB 14,22,17
ENDC

	ds $18

SGBBorderGraphics:
IF DEF(_SATURN)
	INCBIN "gfx/sgb/saturn_border.2bpp"
ENDC
IF DEF(_MARS)
	INCBIN "gfx/sgb/mars_border.2bpp"
ENDC
