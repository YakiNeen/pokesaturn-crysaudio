	db DEX_HOUNDOOM ; pokedex id

	db  75,  90,  50,  95,  95
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/229.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/229.pic", 0, 1 ; sprite dimensions
ENDC
	dw HoundoomPicFront, HoundoomPicBack

	db LEER, EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  COUNTER,      RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SWIFT,        \
	     REST,         SUBSTITUTE
	; end

	db BANK(HoundoomPicFront)
	assert BANK(HoundoomPicFront) == BANK(HoundoomPicBack)
