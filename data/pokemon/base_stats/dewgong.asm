	db DEX_DEWGONG ; pokedex id

	db  90,  70,  80,  70,  95
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/087.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/087.pic", 0, 1 ; sprite dimensions
ENDC
	dw DewgongPicFront, DewgongPicBack

	db HEADBUTT, GROWL, AURORA_BEAM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PAY_DAY,      RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(DewgongPicFront)
	assert BANK(DewgongPicFront) == BANK(DewgongPicBack)
