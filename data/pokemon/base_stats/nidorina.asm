	db DEX_NIDORINA ; pokedex id

	db  70,  62,  67,  56,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/030.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/030.pic", 0, 1 ; sprite dimensions
ENDC
	dw NidorinaPicFront, NidorinaPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(NidorinaPicFront)
	assert BANK(NidorinaPicFront) == BANK(NidorinaPicBack)
