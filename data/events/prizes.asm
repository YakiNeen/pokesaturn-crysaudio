PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
IF DEF(_SATURN)
	db NIDORINA
ENDC
IF DEF(_MARS)
	db NIDORINO
ENDC
	db "@"

PrizeMenuMon1Cost:
IF DEF(_SATURN)
	bcd2 180
	bcd2 500
ENDC
IF DEF(_MARS)
	bcd2 120
	bcd2 750
ENDC
	bcd2 1200
	db "@"

PrizeMenuMon2Entries:
IF DEF(_SATURN)
	db DRATINI
	db SCYTHER
ENDC
IF DEF(_MARS)
	db PINSIR
	db DRATINI
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
IF DEF(_SATURN)
	bcd2 2800
	bcd2 5500
	bcd2 9999
ENDC
IF DEF(_MARS)
	bcd2 2500
	bcd2 4600
	bcd2 6500
ENDC
	db "@"

PrizeMenuTMsEntries:
	db TM_DRAGON_RAGE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMsCost:
	bcd2 3300
	bcd2 5500
	bcd2 7700
	db "@"
