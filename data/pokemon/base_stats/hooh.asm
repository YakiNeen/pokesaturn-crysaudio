	db DEX_HO_OH ; pokedex id

	db 106, 130,  90,  90, 130
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/250.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/250.pic", 0, 1 ; sprite dimensions
ENDC
	dw HoohPicFront, HoohPicBack

	db FLAMETHROWER, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm WHIRLWIND,    TOXIC,        DOUBLE_EDGE,  HYPER_BEAM,   RAGE,    \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,         \
	     REFLECT,      BIDE,         FIRE_BLAST,   SWIFT,        DREAM_EATER,      \
	     SKY_ATTACK,   REST,         THUNDER_WAVE, SUBSTITUTE,   FLY, \
	     STRENGTH,     FLASH
	; end

	db BANK(HoohPicFront)
	assert BANK(HoohPicFront) == BANK(HoohPicBack)
