MACRO bookshelf_tile
	db \1, \2
	db_tx_pre \3
ENDM

BookshelfTileIDs:
	; tileset id, bookshelf tile id, text id
	bookshelf_tile HOUSE1,       $60, BookOrSculptureText
	bookshelf_tile HOUSE1,       $3C, TownMapText
	bookshelf_tile HOUSE2,       $60, BookOrSculptureText
	bookshelf_tile HOUSE2,       $3C, TownMapText
	bookshelf_tile HOUSE1,       $6C, StoveText
	bookshelf_tile HOUSE1,       $6A, FridgeText
	bookshelf_tile HOUSE1,       $6E, SinkText
	bookshelf_tile HOUSE2,       $6C, StoveText
	bookshelf_tile HOUSE2,       $6A, FridgeText
  	bookshelf_tile HOUSE2,       $6E, SinkText    	
	bookshelf_tile POKEMART,     $1C, PokemonStuffText
	bookshelf_tile POKEMART,     $26, PokemonStuffText
	bookshelf_tile POKEMART,     $27, PokemonStuffText
	bookshelf_tile POKEMART,     $2F, PokemonStuffText
	db -1 ; end
