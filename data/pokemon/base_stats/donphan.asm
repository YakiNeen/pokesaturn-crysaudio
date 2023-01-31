	db DEX_DONPHAN ; pokedex id

	db  90,  120, 120, 50, 60
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/232.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/232.pic", 0, 1 ; sprite dimensions
ENDC
	dw DonphanPicFront, DonphanPicBack

	db HORN_ATTACK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  WATER_GUN,  \
	     COUNTER,      RAGE,         EARTHQUAKE,   FISSURE,      MIMIC,      \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE, \
	     SUBSTITUTE,   STRENGTH
	; end

	db BANK(DonphanPicFront)
	assert BANK(DonphanPicFront) == BANK(DonphanPicBack)
