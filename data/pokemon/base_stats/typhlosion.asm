	db DEX_TYPHLOSION ; pokedex id

	db  78,  84,  78, 109,  92
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 209 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/157.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/157.pic", 0, 1 ; sprite dimensions
ENDC
	dw TyphlosionPicFront, TyphlosionPicBack

	db TACKLE, LEER, SAND_ATTACK, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SWIFT,        REST,         \
	     SUBSTITUTE,   CUT
	; end

	db BANK(TyphlosionPicFront)
	assert BANK(TyphlosionPicFront) == BANK(TyphlosionPicBack)
