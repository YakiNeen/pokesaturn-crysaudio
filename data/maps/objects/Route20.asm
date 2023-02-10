Route20_Object:
	db $43 ; border block

	def_warp_events
	warp_event 48,  5, SEAFOAM_ISLANDS_1F, 1
	warp_event 58,  9, SEAFOAM_ISLANDS_1F, 3

	def_bg_events
	bg_event 51,  7, 11 ; Route20Text11
	bg_event 57, 11, 12 ; Route20Text12

	def_object_events
	object_event 87,  8, SPRITE_SWIMMER_M, STAY, UP, 1, OPP_SWIMMER, 9
	object_event 68, 11, SPRITE_SWIMMER_F, STAY, UP, 2, OPP_SWIMMER_F, 4
	object_event 45, 10, SPRITE_SWIMMER_F, STAY, DOWN, 3, OPP_SWIMMER_F, 1
	object_event 55, 14, SPRITE_SWIMMER_F, STAY, RIGHT, 4, OPP_SWIMMER_F, 9
	object_event 38, 13, SPRITE_SWIMMER_M, STAY, DOWN, 5, OPP_SWIMMER, 10
	object_event 87, 13, SPRITE_SWIMMER_M, STAY, UP, 6, OPP_SWIMMER, 11
	object_event 34,  9, SPRITE_BIRD_KEEPER_M, STAY, UP, 7, OPP_BIRD_KEEPER, 11
	object_event 25,  7, SPRITE_SWIMMER_F, STAY, UP, 8, OPP_SWIMMER_F, 2
	object_event 24, 12, SPRITE_SWIMMER_F, STAY, DOWN, 9, OPP_SWIMMER_F, 8
	object_event 15,  8, SPRITE_SWIMMER_F, STAY, UP, 10, OPP_SWIMMER_F, 3

	def_warps_to ROUTE_20
