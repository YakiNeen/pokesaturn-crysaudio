	db DEX_QWILFISH ; pokedex id

	db  65,  95,  75,  85,  55
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 45 ; catch rate
	db 100 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/211.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/211.pic", 0, 1 ; sprite dimensions
ENDC
	dw QwilfishPicFront, QwilfishPicBack

	db TACKLE, POISON_STING, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MEGA_DRAIN,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(QwilfishPicFront)
	assert BANK(QwilfishPicFront) == BANK(QwilfishPicBack)
