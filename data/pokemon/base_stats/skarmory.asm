	db DEX_SKARMORY ; pokedex id

	db  65,  80, 140,  75,  55
	;   hp  atk  def  spd  spc

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/227.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/227.pic", 0, 1 ; sprite dimensions
ENDC
	dw SkarmoryPicFront, SkarmoryPicBack

	db LEER, PECK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db BANK(SkarmoryPicFront)
	assert BANK(SkarmoryPicFront) == BANK(SkarmoryPicBack)
