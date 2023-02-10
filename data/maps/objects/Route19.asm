Route19_Object:
	db $43 ; border block

	def_warp_events

	def_bg_events
	bg_event 11,  9, 11 ; Route19Text11

	def_object_events
	object_event  8,  7, SPRITE_COOLTRAINER_M, STAY, LEFT, 1, OPP_SWIMMER, 2
	object_event 13,  7, SPRITE_COOLTRAINER_M,STAY, LEFT, 2, OPP_SWIMMER, 3
	object_event 13, 25, SPRITE_SWIMMER_M, STAY, LEFT, 3, OPP_SWIMMER, 4
	object_event  4, 27, SPRITE_SWIMMER_M, STAY, RIGHT, 4, OPP_SWIMMER, 5
	object_event 16, 31, SPRITE_SWIMMER_M, STAY, UP, 5, OPP_SWIMMER, 6
	object_event  9, 11, SPRITE_SWIMMER_M, STAY, DOWN, 6, OPP_SWIMMER, 7
	object_event  8, 43, SPRITE_SWIMMER_F, STAY, LEFT, 7, OPP_SWIMMER_F, 5
	object_event 11, 43, SPRITE_SWIMMER_F, STAY, RIGHT, 8, OPP_SWIMMER_F, 6
	object_event  9, 42, SPRITE_SWIMMER_M, STAY, UP, 9, OPP_SWIMMER, 8
	object_event 10, 44, SPRITE_SWIMMER_F, STAY, DOWN, 10, OPP_SWIMMER_F, 7

	def_warps_to ROUTE_19
