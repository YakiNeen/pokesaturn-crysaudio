CeruleanGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 4
	warp_event  5, 13, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GYM_LEADER2, STAY, DOWN, 1, OPP_GYM_LEADER2, 1
	object_event  2,  3, SPRITE_JR_TRAINER_F, STAY, RIGHT, 2, OPP_JR_TRAINER_F, 1
	object_event  8,  7, SPRITE_SWIMMER_M, STAY, LEFT, 3, OPP_SWIMMER, 1
	object_event  7, 10, SPRITE_DANPEI, STAY, DOWN, 4 ; person

	def_warps_to CERULEAN_GYM
