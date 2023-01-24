TextBoxFunctionTable:
	; text box ID, function address
	dbw MONEY_BOX,           DisplayMoneyBox
	dbw BUY_SELL_QUIT_MENU,  DoBuySellQuitMenu
	dbw FIELD_MOVE_MON_MENU, DisplayFieldMoveMonMenu
	db -1 ; end

TextBoxCoordTable:
	; text box ID, upper-left X, upper-left Y, lower-right X, lower-right Y
	db MESSAGE_BOX,       0, 12, 19, 17
	db LIST_MENU_BOX,     4,  2, 19, 12
	db MON_SPRITE_POPUP,  6,  4, 14, 13
	db -1 ; end

MACRO text_box_text
	db \1 ; text box ID
	db \2, \3, \4, \5 ; text box coordinates
	dw \6 ; text pointer
	db \7, \8 ; text coordinates
ENDM

TextBoxTextAndCoordTable:
	; text box ID, upper-left X, upper-left Y, lower-right X, lower-right Y, text pointer, text X, text Y
	text_box_text USE_INFO_TOSS_MENU_TEMPLATE,       13, 10, 19, 16, UseInfoTossText,         15, 11
	text_box_text BATTLE_MENU_TEMPLATE,               8, 12, 19, 17, BattleMenuText,          10, 14
	text_box_text SAFARI_BATTLE_MENU_TEMPLATE,        0, 12, 19, 17, SafariZoneBattleMenuText, 2, 14
	text_box_text SWITCH_STATS_CANCEL_MENU_TEMPLATE, 11, 11, 19, 17, SwitchStatsCancelText,   13, 12
	text_box_text BUY_SELL_QUIT_MENU_TEMPLATE,        0,  0, 10,  6, BuySellQuitText,          2,  1
	text_box_text MONEY_BOX_TEMPLATE,                11,  0, 19,  2, MoneyText,               13,  0

UseInfoTossText:
	db   "USE"
	next "INFO"
	next "TOSS@"

BattleMenuText:
	db   "FIGHT <PK><MN>"
	next "ITEM  RUN@"

SafariZoneBattleMenuText:
	db   "BALL×       BAIT"
	next "THROW ROCK  RUN@"

SwitchStatsCancelText:
	db   "SWITCH"
	next "STATS"
	next "CANCEL@"

BuySellQuitText:
	db   "BUY"
	next "SELL"
	next "QUIT@"

MoneyText:
	db "MONEY@"
