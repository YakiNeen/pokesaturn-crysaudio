	db DEX_CROBAT ; pokedex id

	db  85,  90,  80,  130, 75
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 204 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/169.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/169.pic", 0, 1 ; sprite dimensions
ENDC
	dw CrobatPicFront, CrobatPicBack

	db LEECH_LIFE, SCREECH, BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE, \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM, \
	     BIDE,         SWIFT,        REST,         CUT,          FLY
	; end

	db BANK(CrobatPicFront)
	assert BANK(CrobatPicFront) == BANK(CrobatPicBack)
