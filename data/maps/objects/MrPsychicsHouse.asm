MrPsychicsHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 8
	warp_event  3,  7, LAST_MAP, 8

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_PSYCHIC_M, WALK, UP_DOWN, 1 ; person

	def_warps_to MR_PSYCHICS_HOUSE
