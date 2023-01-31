	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/084.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/084.pic", 0, 1 ; sprite dimensions
ENDC
	dw DoduoPicFront, DoduoPicBack

	db PECK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm WHIRLWIND,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   SKY_ATTACK,   REST,         TRI_ATTACK,   SUBSTITUTE,   \
	     FLY
	; end

	db BANK(DoduoPicFront)
	assert BANK(DoduoPicFront) == BANK(DoduoPicBack)
