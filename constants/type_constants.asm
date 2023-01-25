; TypeNames indexes (see data/types/names.asm)
	const_def

DEF PHYSICAL EQU const_value
	const NORMAL       ; $00
	const FIGHTING     ; $01
	const FLYING       ; $02
	const POISON       ; $03
	const GROUND       ; $04
	const ROCK         ; $05
	const DARK         ; $06
	const NOTYPE       ; $07
	const BUG          ; $08
	const GHOST        ; $09

DEF UNUSED_TYPES EQU const_value
	const_next 20
DEF UNUSED_TYPES_END EQU const_value

DEF SPECIAL EQU const_value
	const FIRE         ; $15
	const WATER        ; $16
	const GRASS        ; $17
	const ELECTRIC     ; $18
	const PSYCHIC_TYPE ; $19
	const ICE          ; $1A
	const DRAGON       ; $1B
	const STEEL        ; $1C
	const FAIRY        ; $1D

DEF NUM_TYPES EQU const_value
