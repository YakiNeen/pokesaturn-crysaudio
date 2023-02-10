PewterGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 3
	warp_event  5, 13, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_GYM_LEADER1, STAY, DOWN, 1, OPP_GYM_LEADER1, 1
	object_event  3,  6, SPRITE_JR_TRAINER_M, STAY, RIGHT, 2, OPP_JR_TRAINER_M, 1
	object_event  7, 10, SPRITE_DANPEI, STAY, DOWN, 3 ; person

	def_warps_to PEWTER_GYM
