	db DEX_BELLOSSOM ; pokedex id

	db  75,  80,  85,  50, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/182.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/182.pic", 0, 1 ; sprite dimensions
ENDC
	dw BellossomPicFront, BellossomPicBack

	db ABSORB, STUN_SPORE, SLEEP_POWDER, PETAL_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(BellossomPicFront)
	assert BANK(BellossomPicFront) == BANK(BellossomPicBack)
