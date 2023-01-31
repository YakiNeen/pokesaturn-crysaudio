	db DEX_LEAFEON ; pokedex id

	db  130,  65,  60,  65, 110
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_4th_generation/470.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_4th_generation/470.pic", 0, 1 ; sprite dimensions
ENDC
	dw LeafeonPicFront, LeafeonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, RAZOR_LEAF ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE,        TOXIC,    BODY_SLAM,  TAKE_DOWN,   DOUBLE_EDGE,         \
	     HYPER_BEAM,  RAGE,      MEGA_DRAIN,     SOLARBEAM,        MIMIC,  \
	     DOUBLE_TEAM,      REFLECT,         BIDE,        SWIFT,         REST, \
	     SUBSTITUTE,   CUT
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
