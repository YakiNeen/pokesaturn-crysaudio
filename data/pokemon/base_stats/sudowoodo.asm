	db DEX_SUDOWOODO ; pokedex id

	db  70, 100, 115,  30,  50
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/185.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/185.pic", 0, 1 ; sprite dimensions
ENDC
	dw SudowoodoPicFront, SudowoodoPicBack

	db ROCK_THROW, MIMIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SELFDESTRUCT, SKULL_BASH,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(SudowoodoPicFront)
	assert BANK(SudowoodoPicFront) == BANK(SudowoodoPicBack)
