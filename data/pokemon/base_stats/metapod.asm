	db DEX_METAPOD ; pokedex id

	db  50,  20,  55,  30,  25
	;   hp  atk  def  spd  spc

	db BUG, BUG ; type
	db 120 ; catch rate
	db 72 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/011.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/011.pic", 0, 1 ; sprite dimensions
ENDC
	dw MetapodPicFront, MetapodPicBack

	db HARDEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(MetapodPicFront)
	assert BANK(MetapodPicFront) == BANK(MetapodPicBack)
