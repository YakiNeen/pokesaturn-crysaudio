	db DEX_KAKUNA ; pokedex id

	db  45,  25,  50,  35,  25
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/014.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/014.pic", 0, 1 ; sprite dimensions
ENDC
	dw KakunaPicFront, KakunaPicBack

	db HARDEN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(KakunaPicFront)
	assert BANK(KakunaPicFront) == BANK(KakunaPicBack)
