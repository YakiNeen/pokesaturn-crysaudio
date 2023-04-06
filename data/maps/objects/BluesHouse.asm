BluesHouse_Object:
	db $0 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_LASS, STAY, RIGHT, 1
	object_event  8,  4, SPRITE_LASS, WALK, UP_DOWN, 2, 0
	object_event  5,  3, SPRITE_BOOK, STAY, NONE, 3, 0

	def_warps_to BLUES_HOUSE
