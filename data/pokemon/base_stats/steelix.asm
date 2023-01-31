	db DEX_STEELIX ; pokedex id

	db  75,  85, 200,  30,  60
	;   hp  atk  def  spd  spc

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/208.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/208.pic", 0, 1 ; sprite dimensions
ENDC
	dw SteelixPicFront, SteelixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,    \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SELFDESTRUCT, SKULL_BASH,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(SteelixPicFront)
	assert BANK(SteelixPicFront) == BANK(SteelixPicBack)
