IndigoPlateauLobby_Object:
	db $0 ; border block

	def_warp_events
	warp_event  7, 11, LAST_MAP, 1
	warp_event  8, 11, LAST_MAP, 2
	warp_event  8,  0, LORELEIS_ROOM, 1

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_NURSE, STAY, DOWN, 1 ; person
	object_event  4,  9, SPRITE_DANPEI, STAY, RIGHT, 2 ; person
	object_event  5,  1, SPRITE_COOLTRAINER_F, STAY, DOWN, 3 ; person
	object_event  0,  5, SPRITE_BARMAN1, STAY, RIGHT, 4 ; person
	object_event 13,  6, SPRITE_RECEPTIONIST, STAY, DOWN, 5 ; person

	def_warps_to INDIGO_PLATEAU_LOBBY
