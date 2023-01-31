	db DEX_CHIKORITA ; pokedex id

	db  45,  49,  65,  45,  50
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/152.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/152.pic", 0, 1 ; sprite dimensions
ENDC
	dw ChikoritaPicFront, ChikoritaPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  COUNTER, \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT, \
	     SUBSTITUTE,   CUT,          FLASH
	; end

	db BANK(ChikoritaPicFront)
	assert BANK(ChikoritaPicFront) == BANK(ChikoritaPicBack)
