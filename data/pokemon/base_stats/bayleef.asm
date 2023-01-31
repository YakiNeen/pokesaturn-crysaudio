	db DEX_BAYLEEF ; pokedex id

	db  60,  62,  80,  60, 70
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/153.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/153.pic", 0, 1 ; sprite dimensions
ENDC
	dw BayleefPicFront, BayleefPicBack

	db TACKLE, GROWL, RAZOR_LEAF, REFLECT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  COUNTER, \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT, \
	     SUBSTITUTE,   CUT,          FLASH
	; end

	db BANK(BayleefPicFront)
	assert BANK(BayleefPicFront) == BANK(BayleefPicBack)
