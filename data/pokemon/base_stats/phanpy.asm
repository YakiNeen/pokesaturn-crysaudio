	db DEX_PHANPY ; pokedex id

	db  90,  60,  60,  40,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/231.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/231.pic", 0, 1 ; sprite dimensions
ENDC
	dw PhanpyPicFront, PhanpyPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  WATER_GUN,    \
	     COUNTER,      RAGE,         EARTHQUAKE,   FISSURE,      MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     SUBSTITUTE,   STRENGTH
	; end

	db BANK(PhanpyPicFront)
	assert BANK(PhanpyPicFront) == BANK(PhanpyPicBack)
