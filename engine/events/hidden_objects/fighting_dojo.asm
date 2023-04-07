PrintFightingDojoText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump FightingDojoText

FightingDojoText::
	text_far _FightingDojoText
	text_end
