	db DEX_CYNDAQUIL ; pokedex id

	db  39,  52,  43,  65,  55
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/155.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/155.pic", 0, 1 ; sprite dimensions
ENDC
	dw CyndaquilPicFront, CyndaquilPicBack

	db TACKLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  BODY_SLAM,    TAKE_DOWN,  \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST, \
	     SWIFT,        REST,         SUBSTITUTE,   CUT
	; end

	db BANK(CyndaquilPicFront)
	assert BANK(CyndaquilPicFront) == BANK(CyndaquilPicBack)
