	db DEX_SENTRET ; pokedex id

	db  35,  46,  34,  20,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 73 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/161.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/161.pic", 0, 1 ; sprite dimensions
ENDC
	dw SentretPicFront, SentretPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  ICE_BEAM,     SOLARBEAM,    \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     REST,         SUBSTITUTE,   CUT,          SURF
	; end

	db BANK(SentretPicFront)
	assert BANK(SentretPicFront) == BANK(SentretPicBack)
