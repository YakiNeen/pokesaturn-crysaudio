DEF OPP_ID_OFFSET EQU 200

MACRO trainer_const
	const \1
	DEF OPP_\1 EQU OPP_ID_OFFSET + \1
ENDM

; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerNamePointers (see data/trainers/name_pointers.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
; - TrainerClassDVs (see data/trainers/trainer_dvs.asm)
	const_def
	trainer_const NOBODY         ; $00
	trainer_const BEAUTY         ; $01
	trainer_const BIKER          ; $02
	trainer_const BIRD_KEEPER    ; $03
	trainer_const BLACKBELT      ; $04
	trainer_const BUG_CATCHER    ; $05
	trainer_const BURGLAR        ; $06
	trainer_const CHANNELER      ; $07
	trainer_const COOLTRAINER_F  ; $08
	trainer_const COOLTRAINER_M  ; $09
	trainer_const CUE_BALL       ; $0A
	trainer_const ENGINEER       ; $0B
	trainer_const FISHERMAN      ; $0C
	trainer_const GAMBLER        ; $0D
	trainer_const GENTLEMAN      ; $0E
	trainer_const HIKER          ; $0F
	trainer_const JR_TRAINER_F   ; $10
	trainer_const JR_TRAINER_M   ; $11
	trainer_const JUGGLER        ; $12
	trainer_const LASS           ; $13
	trainer_const POKEMANIAC     ; $14
	trainer_const PSYCHIC_TR     ; $15
	trainer_const ROCKER         ; $16
	trainer_const SAILOR         ; $17
	trainer_const SCIENTIST      ; $18
	trainer_const SUPER_NERD     ; $19
	trainer_const SWIMMER        ; $1A
	trainer_const TAMER          ; $1B
	trainer_const YOUNGSTER      ; $1C
	trainer_const EVIL_GRUNT     ; $1D
	trainer_const EVIL_BOSS      ; $1E
	trainer_const GYM_LEADER1    ; $1F
	trainer_const GYM_LEADER2    ; $20
	trainer_const GYM_LEADER3    ; $21
	trainer_const GYM_LEADER4    ; $22
	trainer_const GYM_LEADER5    ; $23
	trainer_const GYM_LEADER6    ; $24
	trainer_const GYM_LEADER7    ; $25
	trainer_const GYM_LEADER8    ; $26
	trainer_const ELITE_FOUR1    ; $27
	trainer_const ELITE_FOUR2    ; $28
	trainer_const ELITE_FOUR3    ; $29
	trainer_const ELITE_FOUR4    ; $2A
	trainer_const RIVAL1         ; $2B
	trainer_const RIVAL2         ; $2C
	trainer_const RIVAL3         ; $2D
	trainer_const SWIMMER_F      ; $2E
	trainer_const LITTLE_GIRL    ; $2F
	trainer_const OFFICER        ; $30
	trainer_const DOJO_LEADER    ; $31
	trainer_const PROFESSOR      ; $32
DEF NUM_TRAINERS EQU const_value - 1
