	db DEX_TOTODILE ; pokedex id

	db  50,  65,  64,  43,  46
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/158.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/158.pic", 0, 1 ; sprite dimensions
ENDC
	dw TotodilePicFront, TotodilePicBack

	db SCRATCH, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   TOXIC,        WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   RAGE,         DIG,          DOUBLE_TEAM,  BIDE,         \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(TotodilePicFront)
	assert BANK(TotodilePicFront) == BANK(TotodilePicBack)
