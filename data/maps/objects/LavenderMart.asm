LavenderMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_BARMAN1, STAY, RIGHT, 1 ; person
	object_event  3,  4, SPRITE_MAN, STAY, NONE, 2 ; person
	object_event  7,  2, SPRITE_COOLTRAINER_M, STAY, NONE, 3 ; person

	def_warps_to LAVENDER_MART
