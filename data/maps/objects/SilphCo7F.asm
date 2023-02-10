SilphCo7F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16,  0, SILPH_CO_8F, 2
	warp_event 22,  0, SILPH_CO_6F, 1
	warp_event 18,  0, SILPH_CO_ELEVATOR, 1
	warp_event  5,  7, SILPH_CO_11F, 4
	warp_event  5,  3, SILPH_CO_3F, 9
	warp_event 21, 15, SILPH_CO_5F, 4

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_SATOSHI, STAY, NONE, 1 ; person
	object_event 13, 13, SPRITE_SATOSHI, STAY, UP, 2 ; person
	object_event  7, 10, SPRITE_SATOSHI, STAY, NONE, 3 ; person
	object_event 10,  8, SPRITE_WOMAN, STAY, NONE, 4 ; person
	object_event 13,  1, SPRITE_EVIL_GRUNT_M, STAY, DOWN, 5, OPP_EVIL_GRUNT, 31
	object_event  2, 13, SPRITE_SCIENTIST_M, STAY, DOWN, 6, OPP_SCIENTIST, 8
	object_event 20,  2, SPRITE_EVIL_GRUNT_M, STAY, LEFT, 7, OPP_EVIL_GRUNT, 32
	object_event 19, 14, SPRITE_EVIL_GRUNT_M, STAY, RIGHT, 8, OPP_EVIL_GRUNT, 33
	object_event  3,  7, SPRITE_AB, STAY, UP, 9 ; person
	object_event  1,  9, SPRITE_POKE_BALL, STAY, NONE, 10, CALCIUM
	object_event 24, 11, SPRITE_POKE_BALL, STAY, NONE, 11, TM_SWORDS_DANCE

	def_warps_to SILPH_CO_7F
