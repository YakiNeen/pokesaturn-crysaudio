SilphCo4F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_3F, 2
	warp_event 26,  0, SILPH_CO_5F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 11,  7, SILPH_CO_10F, 4
	warp_event 17,  3, SILPH_CO_6F, 4
	warp_event  3, 15, SILPH_CO_10F, 5
	warp_event 17, 11, SILPH_CO_10F, 6

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_SATOSHI, STAY, NONE, 1 ; person
	object_event  9, 14, SPRITE_EVIL_GRUNT_M, STAY, RIGHT, 2, OPP_EVIL_GRUNT, 25
	object_event 14,  6, SPRITE_SCIENTIST_M, STAY, LEFT, 3, OPP_SCIENTIST, 6
	object_event 26, 10, SPRITE_EVIL_GRUNT_M, STAY, UP, 4, OPP_EVIL_GRUNT, 26
	object_event  3,  9, SPRITE_POKE_BALL, STAY, NONE, 5, FULL_HEAL
	object_event  4,  7, SPRITE_POKE_BALL, STAY, NONE, 6, MAX_REVIVE
	object_event  5,  8, SPRITE_POKE_BALL, STAY, NONE, 7, ESCAPE_ROPE

	def_warps_to SILPH_CO_4F
