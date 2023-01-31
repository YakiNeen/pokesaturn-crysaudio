	db DEX_HOUNDOUR ; pokedex id

	db  45,  60,  30,  65,  65
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/228.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/228.pic", 0, 1 ; sprite dimensions
ENDC
	dw HoundourPicFront, HoundourPicBack

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  COUNTER,      RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SWIFT,        \
	     REST,         SUBSTITUTE
	; end

	db BANK(HoundourPicFront)
	assert BANK(HoundourPicFront) == BANK(HoundourPicBack)
