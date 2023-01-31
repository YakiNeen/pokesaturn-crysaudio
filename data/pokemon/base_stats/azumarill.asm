	db DEX_AZUMARILL ; pokedex id

	db  100, 50, 80, 50, 65
	;   hp  atk  def  spd  spc

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/184.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/184.pic", 0, 1 ; sprite dimensions
ENDC
	dw AzumarillPicFront, AzumarillPicBack

	db TACKLE, DEFENSE_CURL, TAIL_WHIP, WATER_GUN ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM, \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,       \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH, \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(AzumarillPicFront)
	assert BANK(AzumarillPicFront) == BANK(AzumarillPicBack)
