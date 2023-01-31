	db DEX_DITTO ; pokedex id

	db  48,  48,  48,  48,  48
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 35 ; catch rate
	db 61 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/132.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/132.pic", 0, 1 ; sprite dimensions
ENDC
	dw DittoPicFront, DittoPicBack

	db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(DittoPicFront)
	assert BANK(DittoPicFront) == BANK(DittoPicBack)
