ViridianPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  6, 15, LAST_MAP, 1
	warp_event  7, 15, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  6,  8, SPRITE_NURSE, STAY, DOWN, 1 ; person
	object_event 10, 13, SPRITE_GENTLEMAN, WALK, UP_DOWN, 2 ; person
	object_event  8, 10, SPRITE_COOLTRAINER_M, STAY, NONE, 3 ; person
	object_event 11,  2, SPRITE_RECEPTIONIST, STAY, DOWN, 4 ; person

	def_warps_to VIRIDIAN_POKECENTER
