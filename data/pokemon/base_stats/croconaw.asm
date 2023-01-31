	db DEX_CROCONAW ; pokedex id

	db  65,  80,  80,  58,  61
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/159.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/159.pic", 0, 1 ; sprite dimensions
ENDC
	dw CroconawPicFront, CroconawPicBack

	db SCRATCH, LEER, RAGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   TOXIC,        WATER_GUN,    ICE_BEAM,    BLIZZARD, \
	     SUBMISSION,   RAGE,         DIG,          DOUBLE_TEAM, BIDE,     \
	     REST,         ROCK_SLIDE,   SUBSTITUTE,   CUT,         SURF
	; end

	db BANK(CroconawPicFront)
	assert BANK(CroconawPicFront) == BANK(CroconawPicBack)
