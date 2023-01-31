	db DEX_OCTILLERY ; pokedex id

	db  75, 105,  75,  45,  90
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 164 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/224.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/224.pic", 0, 1 ; sprite dimensions
ENDC
	dw OctilleryPicFront, OctilleryPicBack

	db WATER_GUN, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      SELFDESTRUCT, SWIFT,        \
	     REST,         EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   SURF
	; end

	db BANK(OctilleryPicFront)
	assert BANK(OctilleryPicFront) == BANK(OctilleryPicBack)
