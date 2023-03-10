	db DEX_PIDGEOTTO ; pokedex id

	db  63,  60,  55,  71,  50
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/017.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/017.pic", 0, 1 ; sprite dimensions
ENDC
	dw PidgeottoPicFront, PidgeottoPicBack

	db GUST, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY
	; end

	db BANK(PidgeottoPicFront)
	assert BANK(PidgeottoPicFront) == BANK(PidgeottoPicBack)
