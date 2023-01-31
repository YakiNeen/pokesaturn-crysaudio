	db DEX_ARIADOS ; pokedex id

	db  70,  90,  70,  40,  60
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/168.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/168.pic", 0, 1 ; sprite dimensions
ENDC
	dw AriadosPicFront, AriadosPicBack

	db POISON_STING, STRING_SHOT, CONSTRICT, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM, \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,    \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE, \
	     CUT
	; end

	db BANK(AriadosPicFront)
	assert BANK(AriadosPicFront) == BANK(AriadosPicBack)
