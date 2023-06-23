WarpTileIDPointers:
	table_width 2, WarpTileIDPointers
	dw .WarpTileIDs ; OVERWORLD
	dw .WarpTileIDs ; HOUSE1
	dw .WarpTileIDs ; HOUSE2
	dw .WarpTileIDs ; CAVERN
	dw .WarpTileIDs ; FOREST
	dw .WarpTileIDs ; POKECENTER
	dw .WarpTileIDs ; POKEMART
	dw .WarpTileIDs ; DOJO
	dw .WarpTileIDs ; GATE
	dw .WarpTileIDs ; ESCOLA
	assert_table_length NUM_TILESETS

MACRO warp_tiles
	IF _NARG
		db \# ; all args
	ENDC
	db -1 ; end
ENDM

.WarpTileIDs:
	warp_tiles $0E, $0F, $10, $11, $12 
