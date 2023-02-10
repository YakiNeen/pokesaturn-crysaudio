MACRO move_choices
	IF _NARG
		db \# ; all args
	ENDC
	db 0 ; end
	DEF list_index += 1
ENDM

; move choice modification methods that are applied for each trainer class
TrainerClassMoveChoiceModifications:
	list_start TrainerClassMoveChoiceModifications
	move_choices 1, 3    ; BEAUTY
	move_choices 1       ; BIKER
	move_choices 1       ; BIRD_KEEPER
	move_choices 1       ; BLACKBELT
	move_choices 1       ; BUG_CATCHER
	move_choices 1, 3    ; BURGLAR
	move_choices 1       ; CHANNELER
	move_choices 1, 3    ; COOLTRAINER_F
	move_choices 1, 3    ; COOLTRAINER_M
	move_choices         ; CUE_BALL
	move_choices 1       ; ENGINEER
	move_choices 1, 3    ; FISHERMAN
	move_choices 1       ; GAMBLER
	move_choices 1, 2    ; GENTLEMAN
	move_choices 1       ; HIKER
	move_choices 1       ; JR_TRAINER_F
	move_choices 1       ; JR_TRAINER_M
	move_choices 1       ; JUGGLER
	move_choices 1       ; LASS
	move_choices 1, 2, 3 ; POKEMANIAC
	move_choices 1, 2    ; PSYCHIC_TR
	move_choices 1, 3    ; ROCKER
	move_choices 1, 3    ; SAILOR
	move_choices 1, 2    ; SCIENTIST
	move_choices 1, 2    ; SUPER_NERD
	move_choices 1, 3    ; SWIMMER
	move_choices 1       ; TAMER
	move_choices         ; YOUNGSTER
	move_choices 1       ; EVIL_GRUNT
	move_choices 1, 3    ; EVIL_BOSS
	move_choices 1       ; GYM_LEADER1
	move_choices 1, 3    ; GYM_LEADER2
	move_choices 1, 3    ; GYM_LEADER3
	move_choices 1, 3    ; GYM_LEADER4
	move_choices 1, 3    ; GYM_LEADER5
	move_choices 1, 3    ; GYM_LEADER6
	move_choices 1, 3    ; GYM_LEADER7
	move_choices 1, 3    ; GYM_LEADER8
	move_choices 1, 2, 3 ; ELITE_FOUR1
	move_choices 1       ; ELITE_FOUR2
	move_choices 1       ; ELITE_FOUR3
	move_choices 1, 3    ; ELITE_FOUR4
	move_choices 1       ; RIVAL1
	move_choices 1, 3    ; RIVAL2
	move_choices 1, 3    ; RIVAL3
	move_choices 1, 3    ; SWIMMER_F
	move_choices 1, 2, 3 ; LITTLE_GIRL
	move_choices 1, 2, 3 ; OFFICER
	move_choices 1, 2, 3 ; DOJO_LEADER
	move_choices         ; PROFESSOR
	assert_list_length NUM_TRAINERS
