PewterMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 5
	warp_event  4,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_BARMAN1, STAY, RIGHT, 1 ; person
	object_event  3,  3, SPRITE_YOUNGSTER2, WALK, UP_DOWN, 2 ; person
	object_event  5,  5, SPRITE_SUPER_NERD1, STAY, NONE, 3 ; person

	def_warps_to PEWTER_MART
