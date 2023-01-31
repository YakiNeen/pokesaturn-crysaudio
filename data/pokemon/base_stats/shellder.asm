	db DEX_SHELLDER ; pokedex id

	db  30,  65, 100,  40,  45
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

IF DEF(_SATURN)
	INCBIN "gfx/pokemon/front_saturn_1st_generation/090.pic", 0, 1 ; sprite dimensions
ENDC
IF DEF(_MARS)
	INCBIN "gfx/pokemon/front_mars_1st_generation/090.pic", 0, 1 ; sprite dimensions
ENDC
	dw ShellderPicFront, ShellderPicBack

	db TACKLE, WITHDRAW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     ICE_BEAM,     BLIZZARD,     RAGE,         TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, SWIFT,        \
	     REST,         EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   SURF
	; end

	db BANK(ShellderPicFront)
	assert BANK(ShellderPicFront) == BANK(ShellderPicBack)
