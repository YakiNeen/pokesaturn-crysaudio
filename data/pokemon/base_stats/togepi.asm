	db DEX_TOGEPI ; pokedex id

	db  35,  20,  65,  20,  52
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 74 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/175.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/175.pic", 0, 1 ; sprite dimensions
ENDC
	dw TogepiPicFront, TogepiPicBack

	db GROWL, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  SOLARBEAM,    \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  METRONOME,    FIRE_BLAST,   \
	     SWIFT,        DREAM_EATER,  REST,         THUNDER_WAVE, TRI_ATTACK,   \
	     FLASH
	; end

	db BANK(TogepiPicFront)
	assert BANK(TogepiPicFront) == BANK(TogepiPicBack)
