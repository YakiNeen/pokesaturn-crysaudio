	db DEX_SUNFLORA ; pokedex id

	db  75,  75,  55,  30,  95
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/192.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/192.pic", 0, 1 ; sprite dimensions
ENDC
	dw SunfloraPicFront, SunfloraPicBack

	db POUND, ABSORB, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,    RAGE,       \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         REST,         SUBSTITUTE,   CUT,          FLASH
	; end

	db BANK(SunfloraPicFront)
	assert BANK(SunfloraPicFront) == BANK(SunfloraPicBack)
