PokemonTower7F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_bg_events

	def_object_events
	object_event  9, 11, SPRITE_EVIL_GRUNT_M, STAY, RIGHT, 1, OPP_EVIL_GRUNT, 19
	object_event 12,  9, SPRITE_EVIL_GRUNT_M, STAY, LEFT, 2, OPP_EVIL_GRUNT, 20
	object_event  9,  7, SPRITE_EVIL_GRUNT_M, STAY, RIGHT, 3, OPP_EVIL_GRUNT, 21
	object_event 10,  3, SPRITE_SPECIAL7, STAY, DOWN, 4 ; person

	def_warps_to POKEMON_TOWER_7F
