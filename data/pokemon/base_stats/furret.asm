	db DEX_FURRET ; pokedex id

	db  85,  76,  64,  90,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/162.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/162.pic", 0, 1 ; sprite dimensions
ENDC
	dw FurretPicFront, FurretPicBack

	db TACKLE, DEFENSE_CURL, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  ICE_BEAM,     HYPER_BEAM, \
	     SOLARBEAM,    DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,       \
	     SWIFT,        REST,         SUBSTITUTE,   CUT,          SURF,       \
	     STRENGTH
	; end

	db BANK(FurretPicFront)
	assert BANK(FurretPicFront) == BANK(FurretPicBack)
