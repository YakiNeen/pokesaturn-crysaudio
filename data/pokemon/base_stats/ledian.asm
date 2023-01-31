	db DEX_LEDIAN ; pokedex id

	db  55,  35,  50,  85,  85
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 90 ; catch rate
	db 134 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/166.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/166.pic", 0, 1 ; sprite dimensions
ENDC
	dw LedianPicFront, LedianPicBack

	db TACKLE, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,          SWIFT,     SKULL_BASH,     REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(LedianPicFront)
	assert BANK(LedianPicFront) == BANK(LedianPicBack)
