	db DEX_MARILL ; pokedex id

	db  70,  20,  50,  40,  35
	;   hp  atk  def  spd  spc

	db WATER, FAIRY ; type
	db 190 ; catch rate
	db 58 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/183.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/183.pic", 0, 1 ; sprite dimensions
ENDC
	dw MarillPicFront, MarillPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF
	; end

	db BANK(MarillPicFront)
	assert BANK(MarillPicFront) == BANK(MarillPicBack)
