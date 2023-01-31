	db DEX_LEDYBA ; pokedex id

	db  40,  20,  30,  55,  60
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_2nd_generation/165.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_2nd_generation/165.pic", 0, 1 ; sprite dimensions
ENDC
	dw LedybaPicFront, LedybaPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,          SWIFT,     SKULL_BASH,     REST,         SUBSTITUTE,   \
	     CUT
	; end

	db BANK(LedybaPicFront)
	assert BANK(LedybaPicFront) == BANK(LedybaPicBack)
