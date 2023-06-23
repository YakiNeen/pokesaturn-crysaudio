MACRO coll_tiles
	IF _NARG
		db \# ; all args
	ENDC
	db -1 ; end
ENDM

Overworld_Coll::
House1_Coll::
House2_Coll::
Cavern_Coll::
Forest_Coll::
PokeCenter_Coll::
PokeMart_Coll::
Dojo_Coll::
Gate_Coll::
Escola_Coll::
	coll_tiles $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F, $10, $11, $12, $13, $14, $15, $16, $17
