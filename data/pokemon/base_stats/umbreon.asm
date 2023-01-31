	db DEX_UMBREON ; pokedex id

	db  95,  65, 110,  65,  95
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/197.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/197.pic", 0, 1 ; sprite dimensions
ENDC
	dw UmbreonPicFront, UmbreonPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MIMIC,        DOUBLE_TEAM,   REFLECT,     BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(UmbreonPicFront)
	assert BANK(UmbreonPicFront) == BANK(UmbreonPicBack)
