TrainerAIPointers:
	table_width 3, TrainerAIPointers
	; one entry per trainer class
	; first byte, number of times (per Pokémon) it can occur
	; next two bytes, pointer to AI subroutine for trainer class
	; subroutines are defined in engine/battle/trainer_ai.asm
	dbw 3, GenericAI      ; BEAUTY
	dbw 3, GenericAI      ; BIKER
	dbw 3, GenericAI      ; BIRD_KEEPER
	dbw 2, BlackbeltAI    ; BLACKBELT
	dbw 3, GenericAI      ; BUG_CATCHER
	dbw 3, GenericAI      ; BURGLAR
	dbw 3, GenericAI      ; CHANNELER
	dbw 1, CooltrainerFAI ; COOLTRAINER_F
	dbw 2, CooltrainerMAI ; COOLTRAINER_M
	dbw 3, GenericAI      ; CUE_BALL 
	dbw 3, GenericAI      ; ENGINEER
	dbw 3, GenericAI      ; FISHERMAN
	dbw 3, GenericAI      ; GAMBLER
	dbw 3, GenericAI      ; GENTLEMAN
	dbw 3, GenericAI      ; HIKER
	dbw 3, GenericAI      ; JR_TRAINER_F
	dbw 3, GenericAI      ; JR_TRAINER_M
	dbw 3, JugglerAI      ; JUGGLER
	dbw 3, GenericAI      ; LASS
	dbw 3, GenericAI      ; POKEMANIAC
	dbw 3, GenericAI      ; PSYCHIC_TR
	dbw 3, GenericAI      ; ROCKER
	dbw 3, GenericAI      ; SAILOR
	dbw 3, GenericAI      ; SCIENTIST
	dbw 3, GenericAI      ; SUPER_NERD
	dbw 3, GenericAI      ; SWIMMER
	dbw 3, GenericAI      ; TAMER
	dbw 3, GenericAI      ; YOUNGSTER
	dbw 3, GenericAI      ; EVIL_GRUNT
	dbw 1, GiovanniAI     ; EVIL_BOSS
	dbw 5, BrockAI        ; GYM_LEADER1
	dbw 1, MistyAI        ; GYM_LEADER2
	dbw 1, LtSurgeAI      ; GYM_LEADER3
	dbw 1, ErikaAI        ; GYM_LEADER4
	dbw 2, KogaAI         ; GYM_LEADER5
	dbw 1, SabrinaAI      ; GYM_LEADER6
	dbw 2, BlaineAI       ; GYM_LEADER7
	dbw 1, GiovanniAI     ; GYM_LEADER8
	dbw 2, LoreleiAI      ; ELITE_FOUR1
	dbw 2, BrunoAI        ; ELITE_FOUR2
	dbw 2, AgathaAI       ; ELITE_FOUR3
	dbw 1, LanceAI        ; ELITE_FOUR4
	dbw 3, GenericAI      ; RIVAL1
	dbw 1, Rival2AI       ; RIVAL2
	dbw 1, Rival3AI       ; RIVAL3
	dbw 3, GenericAI      ; SWIMMER_F
	dbw 3, GenericAI      ; LITTLE_GIRL
	dbw 3, GenericAI      ; OFFICER
	dbw 3, GenericAI      ; DOJO_LEADER
	dbw 3, GenericAI      ; PROFESSOR
	assert_table_length NUM_TRAINERS
