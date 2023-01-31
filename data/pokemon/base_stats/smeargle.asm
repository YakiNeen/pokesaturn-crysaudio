	db DEX_SMEARGLE ; pokedex id

	db  55,  20,  35,  75,  33
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 106 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/235.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/235.pic", 0, 1 ; sprite dimensions
ENDC
	dw SmearglePicFront, SmearglePicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm 
	; end

	db BANK(SmearglePicFront)
	assert BANK(SmearglePicFront) == BANK(SmearglePicBack)
