FuchsiaMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 1
	warp_event  4,  7, LAST_MAP, 1

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_BARMAN1, STAY, RIGHT, 1 ; person
	object_event  4,  2, SPRITE_MIDDLE_AGED_MAN, STAY, NONE, 2 ; person
	object_event  6,  5, SPRITE_LASS, WALK, UP_DOWN, 3 ; person

	def_warps_to FUCHSIA_MART
