	db DEX_FERALIGATR ; pokedex id

	db  85, 105, 100, 78,  81
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/160.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/160.pic", 0, 1 ; sprite dimensions
ENDC
	dw FeraligatrPicFront, FeraligatrPicBack

	db SCRATCH, LEER, RAGE, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   TOXIC,        WATER_GUN,    ICE_BEAM,     BLIZZARD,    \
	     HYPER_BEAM,   SUBMISSION,   RAGE,         DIG,          DOUBLE_TEAM, \
	     BIDE,         REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,         \
	     SURF,         STRENGTH
	; end

	db BANK(FeraligatrPicFront)
	assert BANK(FeraligatrPicFront) == BANK(FeraligatrPicBack)
