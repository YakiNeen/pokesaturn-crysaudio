	db DEX_POLIWHIRL ; pokedex id

	db  65,  65,  65,  90,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 120 ; catch rate
	db 131 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/061.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/061.pic", 0, 1 ; sprite dimensions
ENDC
	dw PoliwhirlPicFront, PoliwhirlPicBack

	db BUBBLE, HYPNOSIS, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      SUBSTITUTE,   \
	     SURF,         STRENGTH
	; end

	db BANK(PoliwhirlPicFront)
	assert BANK(PoliwhirlPicFront) == BANK(PoliwhirlPicBack)
