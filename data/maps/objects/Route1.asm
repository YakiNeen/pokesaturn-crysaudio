Route1_Object:
	db $5b ; border block

	def_warp_events

	def_bg_events
	bg_event  9, 27, 3 ; Route1Text3

	def_object_events
	object_event  5, 24, SPRITE_BIRD_KEEPER_M, WALK, UP_DOWN, 1 ; person
	object_event 15, 13, SPRITE_BIRD_KEEPER_M, WALK, LEFT_RIGHT, 2 ; person

	def_warps_to ROUTE_1
