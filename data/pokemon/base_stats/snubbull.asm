	db DEX_SNUBBULL ; pokedex id

	db  60,  80,  50,  30,  40
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 63 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/209.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/209.pic", 0, 1 ; sprite dimensions
ENDC
	dw SnubbullPicFront, SnubbullPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	; db TACKLE, SCARY_FACE, NO_MOVE, NO_MOVE
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    FIRE_BLAST,   \
	     SKULL_BASH,   REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   \
	     SUBSTITUTE,   STRENGTH,     FLASH
	; end

	db BANK(SnubbullPicFront)
	assert BANK(SnubbullPicFront) == BANK(SnubbullPicBack)
