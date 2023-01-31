	db DEX_REMORAID ; pokedex id

	db  35,  65,  35,  65,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 78 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/223.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/223.pic", 0, 1 ; sprite dimensions
ENDC
	dw RemoraidPicFront, RemoraidPicBack

	db WATER_GUN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     RAGE,         TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, SWIFT,        \
	     REST,         EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   SURF
	; end

	db BANK(RemoraidPicFront)
	assert BANK(RemoraidPicFront) == BANK(RemoraidPicBack)
