RedsHouse2F_Object:
	db $0 ; border block

	def_warp_events
	warp_event  9,  1, REDS_HOUSE_1F, 3

	def_bg_events 
	bg_event  3,  5, 1 ; BedroomVideoGameText

	def_object_events

	def_warps_to REDS_HOUSE_2F
