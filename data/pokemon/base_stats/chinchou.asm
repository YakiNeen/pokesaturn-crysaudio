	db DEX_CHINCHOU ; pokedex id

	db  75,  38,  38,  67,  56
	;   hp  atk  def  spd  spc

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/170.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/170.pic", 0, 1 ; sprite dimensions
ENDC
	dw ChinchouPicFront, ChinchouPicBack

	db BUBBLE, THUNDER_WAVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN, \
	     ICE_BEAM,     BLIZZARD,     THUNDERBOLT,  THUNDER,      MIMIC,     \
	     DOUBLE_TEAM,  REST,         THUNDER_WAVE, SUBSTITUTE,   SURF,      \
	     FLASH
	; end

	db BANK(ChinchouPicFront)
	assert BANK(ChinchouPicFront) == BANK(ChinchouPicBack)
