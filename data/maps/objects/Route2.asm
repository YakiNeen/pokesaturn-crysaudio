Route2_Object:
	db $5b ; border block

	def_warp_events
	warp_event 12,  9, DIGLETTS_CAVE_ROUTE_2, 1
	warp_event  4, 11, VIRIDIAN_FOREST_NORTH_GATE, 1
	warp_event  5, 11, VIRIDIAN_FOREST_NORTH_GATE, 2
	warp_event 15, 19, ROUTE_2_TRADE_HOUSE, 1
	warp_event 16, 35, ROUTE_2_GATE, 1
	warp_event 17, 35, ROUTE_2_GATE, 2
	warp_event 16, 39, ROUTE_2_GATE, 3
	warp_event 17, 39, ROUTE_2_GATE, 4
	warp_event  4, 43, VIRIDIAN_FOREST_SOUTH_GATE, 3
	warp_event  5, 43, VIRIDIAN_FOREST_SOUTH_GATE, 4

	def_bg_events
	bg_event  5, 65, 3 ; Route2Text3
	bg_event 17, 11, 4 ; Route2Text4

	def_object_events
	object_event 13, 54, SPRITE_POKE_BALL, STAY, NONE, 1, MOON_STONE
	object_event 13, 45, SPRITE_POKE_BALL, STAY, NONE, 2, HP_UP

	def_warps_to ROUTE_2
