CinnabarGym_Object:
	db $2e ; border block

	def_warp_events
	warp_event 16, 17, LAST_MAP, 2
	warp_event 17, 17, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_GYM_LEADER7, STAY, DOWN, 1, OPP_GYM_LEADER7, 1
	object_event 17,  2, SPRITE_SUPER_NERD3, STAY, DOWN, 2, OPP_SUPER_NERD, 6
	object_event 17,  8, SPRITE_BURGLAR, STAY, DOWN, 3, OPP_BURGLAR, 1
	object_event 11,  4, SPRITE_SUPER_NERD3, STAY, DOWN, 4, OPP_SUPER_NERD, 7
	object_event 11,  8, SPRITE_BURGLAR, STAY, DOWN, 5, OPP_BURGLAR, 2
	object_event 11, 14, SPRITE_SUPER_NERD3, STAY, DOWN, 6, OPP_SUPER_NERD, 8
	object_event  3, 14, SPRITE_BURGLAR, STAY, DOWN, 7, OPP_BURGLAR, 3
	object_event  3,  8, SPRITE_SUPER_NERD3, STAY, DOWN, 8, OPP_SUPER_NERD, 9
	object_event 16, 13, SPRITE_DANPEI, STAY, DOWN, 9 ; person

	def_warps_to CINNABAR_GYM
