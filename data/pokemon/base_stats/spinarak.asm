	db DEX_SPINARAK ; pokedex id

	db  40,  60,  40,  30,  40
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 255 ; catch rate
	db 54 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/167.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/167.pic", 0, 1 ; sprite dimensions
ENDC
	dw SpinarakPicFront, SpinarakPicBack

	db POISON_STING, STRING_SHOT, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm 
	; end

	db BANK(SpinarakPicFront)
	assert BANK(SpinarakPicFront) == BANK(SpinarakPicBack)
