RedsHouse1F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 1
	warp_event  3,  7, LAST_MAP, 1
	warp_event  9,  1, REDS_HOUSE_2F, 1

	def_bg_events
	bg_event  4,  1, 2 ; YuYuHakushoTVText

	def_object_events
	object_event  7,  3, SPRITE_POKEMANIAC_F, STAY, LEFT, 1

	def_warps_to REDS_HOUSE_1F
