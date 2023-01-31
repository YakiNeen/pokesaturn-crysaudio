	db DEX_QUILAVA ; pokedex id

	db  58,  64,  58,  80,  73
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/156.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/156.pic", 0, 1 ; sprite dimensions
ENDC
	dw QuilavaPicFront, QuilavaPicBack

	db TACKLE, LEER, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  BODY_SLAM,    TAKE_DOWN,    \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   \
	     SWIFT,        REST,         SUBSTITUTE,   CUT
	; end

	db BANK(QuilavaPicFront)
	assert BANK(QuilavaPicFront) == BANK(QuilavaPicBack)
