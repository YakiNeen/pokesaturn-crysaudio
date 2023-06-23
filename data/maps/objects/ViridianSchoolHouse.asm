ViridianSchoolHouse_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 4
	warp_event  4,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_BRUNETTE_GIRL, STAY, UP, 1 ; person
	object_event  1,  2, SPRITE_COOLTRAINER_F, STAY, DOWN, 2 ; person

	def_warps_to VIRIDIAN_SCHOOL_HOUSE
