MACRO tileset
	db BANK(\1_GFX)
	dw \1_Block, \1_GFX, \1_Coll
	db \2, \3, \4 ; counter tiles
	db \5         ; grass tile
	db \6         ; animations (TILEANIM_* value)
ENDM

; counter tiles são aqueles tiles que permitem que você interaja com SPRITES como em um balcão 

Tilesets:
	table_width 12, Tilesets
	; name, 3 counter tiles, grass tile, animations
	tileset Overworld,    -1, -1, -1, $0C, TILEANIM_WATER_FLOWER
	tileset House1,       -1, -1, -1,  -1, TILEANIM_WATER_FLOWER
	tileset House2,       -1, -1, -1,  -1, TILEANIM_WATER_FLOWER
	tileset Cavern,       -1, -1, -1, $0C, TILEANIM_WATER_FLOWER
	tileset Forest,       -1, -1, -1, $0C, TILEANIM_WATER_FLOWER
	tileset PokeCenter,  $2E,$3F, -1,  -1, TILEANIM_WATER_FLOWER
	tileset PokeMart,    $1A,$1E, -1,  -1, TILEANIM_WATER_FLOWER
	tileset Dojo,         -1, -1, -1,  -1, TILEANIM_WATER_FLOWER
	tileset Gate,        $6C,$6E, -1,  -1, TILEANIM_WATER_FLOWER
	tileset Escola,       -1, -1, -1,  -1, TILEANIM_WATER_FLOWER
	assert_table_length NUM_TILESETS
