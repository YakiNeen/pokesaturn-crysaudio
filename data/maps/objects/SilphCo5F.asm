SilphCo5F_Object:
	db $2e ; border block

	def_warp_events
	warp_event 24,  0, SILPH_CO_6F, 2
	warp_event 26,  0, SILPH_CO_4F, 2
	warp_event 20,  0, SILPH_CO_ELEVATOR, 1
	warp_event 27,  3, SILPH_CO_7F, 6
	warp_event  9, 15, SILPH_CO_9F, 5
	warp_event 11,  5, SILPH_CO_3F, 5
	warp_event  3, 15, SILPH_CO_3F, 6

	def_bg_events

	def_object_events
	object_event 13,  9, SPRITE_SATOSHI, STAY, NONE, 1 ; person
	object_event  8, 16, SPRITE_EVIL_GRUNT_M, STAY, RIGHT, 2, OPP_EVIL_GRUNT, 27
	object_event  8,  3, SPRITE_SCIENTIST_M, STAY, RIGHT, 3, OPP_SCIENTIST, 7
	object_event 18, 10, SPRITE_JUGGLER, STAY, UP, 4, OPP_JUGGLER, 1
	object_event 28,  4, SPRITE_EVIL_GRUNT_M, STAY, UP, 5, OPP_EVIL_GRUNT, 28
	object_event  2, 13, SPRITE_POKE_BALL, STAY, NONE, 6, TM_TAKE_DOWN
	object_event  4,  6, SPRITE_POKE_BALL, STAY, NONE, 7, PROTEIN
	object_event 21, 16, SPRITE_POKE_BALL, STAY, NONE, 8, CARD_KEY
	object_event 22, 12, SPRITE_BOOK, STAY, NONE, 9 ; person
	object_event 25, 10, SPRITE_BOOK, STAY, NONE, 10 ; person
	object_event 24,  6, SPRITE_BOOK, STAY, NONE, 11 ; person

	def_warps_to SILPH_CO_5F
