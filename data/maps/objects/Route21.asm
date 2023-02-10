Route21_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events

	def_object_events
	object_event  4, 24, SPRITE_FISHER, STAY, LEFT, 1, OPP_FISHERMAN, 7
	object_event  6, 25, SPRITE_FISHER, STAY, DOWN, 2, OPP_FISHERMAN, 9
	object_event 10, 31, SPRITE_SWIMMER_M, STAY, UP, 3, OPP_SWIMMER, 12
	object_event 12, 30, SPRITE_SWIMMER_M, STAY, RIGHT, 4, OPP_CUE_BALL, 9
	object_event 16, 63, SPRITE_SWIMMER_M, STAY, DOWN, 5, OPP_SWIMMER, 13
	object_event  5, 71, SPRITE_SWIMMER_M, STAY, RIGHT, 6, OPP_SWIMMER, 14
	object_event 15, 71, SPRITE_SWIMMER_M, STAY, LEFT, 7, OPP_SWIMMER, 15
	object_event 14, 56, SPRITE_FISHER, STAY, LEFT, 8, OPP_FISHERMAN, 8
	object_event 17, 57, SPRITE_FISHER, STAY, RIGHT, 9, OPP_FISHERMAN, 10

	def_warps_to ROUTE_21
