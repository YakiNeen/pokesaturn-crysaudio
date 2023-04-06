MACRO bookshelf_tile
	db \1, \2
	db_tx_pre \3
ENDM

BookshelfTileIDs:
	; tileset id, bookshelf tile id, text id
	bookshelf_tile HOUSE1,       $60, BookOrSculptureText
	bookshelf_tile HOUSE1,       $3C, TownMapText
	bookshelf_tile POKEMART,     $1C, PokemonStuffText
	bookshelf_tile POKEMART,     $26, PokemonStuffText
	bookshelf_tile POKEMART,     $27, PokemonStuffText
	bookshelf_tile POKEMART,     $2F, PokemonStuffText
	db -1 ; end
