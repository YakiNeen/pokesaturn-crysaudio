ViridianNicknameHouse_Object:
	db $0 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 7
	warp_event  3,  7, LAST_MAP, 7

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_WOMAN, STAY, NONE, 1 ; person
	object_event  4,  4, SPRITE_BUG_CATCHER_F, WALK, UP_DOWN, 2 ; person
	object_event  8,  5, SPRITE_SPEAROW, WALK, LEFT_RIGHT, 3 ; person
	object_event  6,  3, SPRITE_BOOK, STAY, NONE, 4 ; person

	def_warps_to VIRIDIAN_NICKNAME_HOUSE
