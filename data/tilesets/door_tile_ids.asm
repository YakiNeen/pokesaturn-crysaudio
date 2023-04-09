DoorTileIDPointers:
	dbw OVERWORLD,   .DoorTileIDs
	dbw HOUSE1,      .DoorTileIDs
	dbw HOUSE2,      .DoorTileIDs
	dbw CAVERN,      .DoorTileIDs
	dbw FOREST,      .DoorTileIDs
	dbw POKECENTER,  .DoorTileIDs
	dbw POKEMART,    .DoorTileIDs
	dbw PLAYER_1F,   .DoorTileIDs
	db -1 ; end

MACRO door_tiles
	IF _NARG
		db \# ; all args
	ENDC
	db 0 ; end
ENDM

.DoorTileIDs:
	door_tiles $0D, $0E, $0F
