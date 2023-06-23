Route2Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  0, LAST_MAP, 5
	warp_event  5,  0, LAST_MAP, 6
	warp_event  4,  7, LAST_MAP, 7
	warp_event  5,  7, LAST_MAP, 8

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_SCIENTIST_F, STAY, LEFT, 1 ; person
	object_event  5,  4, SPRITE_YOUNGSTER1, WALK, LEFT_RIGHT, 2 ; person

	def_warps_to ROUTE_2_GATE
