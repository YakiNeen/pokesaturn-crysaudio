; overworld sprites
; SpriteSheetPointerTable indexes (see data/sprites/sprites.asm)
	const_def

	const SPRITE_NONE                    ; $00

	const SPRITE_AA                      ; $01
	const SPRITE_AB                      ; $02

	const SPRITE_BA                      ; $03

	const SPRITE_AA_BIKE                 ; $04
	const SPRITE_AB_BIKE                 ; $05

	const SPRITE_BARMAN1                 ; $06
	const SPRITE_BARMAN2                 ; $07
	const SPRITE_BRUNETTE_GIRL           ; $08
	const SPRITE_CAPTAIN                 ; $09
	const SPRITE_COOK                    ; $0A
	const SPRITE_DANPEI                  ; $0B
	const SPRITE_FAT_MAN                 ; $0C
	const SPRITE_FISHING_GURU            ; $0D
	const SPRITE_GAME_BOY_F              ; $0E
	const SPRITE_GAME_BOY_M              ; $0F
	const SPRITE_GRAMPS                  ; $10
	const SPRITE_GRANDMA                 ; $11
	const SPRITE_MAN                     ; $12
	const SPRITE_MIDDLE_AGED_MAN         ; $13
	const SPRITE_MIDDLE_AGED_WOMAN       ; $14

	const SPRITE_NURSE                   ; $15
	const SPRITE_OFFICER                 ; $16

	const SPRITE_SATOSHI                 ; $17
	const SPRITE_SPECIAL1                ; $18
	const SPRITE_SPECIAL2                ; $19
	const SPRITE_SPECIAL4                ; $1A
	const SPRITE_SPECIAL7                ; $1B

	const SPRITE_SUPER_NERD1             ; $1C
	const SPRITE_SUPER_NERD2             ; $1D
	const SPRITE_WOMAN                   ; $1E
	const SPRITE_YOUNGSTER2              ; $1F

	const SPRITE_ZONE_WORKER             ; $20

	const SPRITE_BEAUTY                  ; $21
	const SPRITE_BIKER                   ; $22
	const SPRITE_BIRD_KEEPER_F           ; $23
	const SPRITE_BIRD_KEEPER_M           ; $24
	const SPRITE_BLACKBELT_F             ; $25
	const SPRITE_BLACKBELT_M             ; $26
	const SPRITE_BUG_CATCHER_F           ; $27
	const SPRITE_BUG_CATCHER_M           ; $28
	const SPRITE_BURGLAR                 ; $29
	const SPRITE_CHANNELER               ; $2A
	const SPRITE_COOLTRAINER_F           ; $2B
	const SPRITE_COOLTRAINER_M           ; $2C
	const SPRITE_CUE_BALL                ; $2D
	const SPRITE_DELINQUENT              ; $2E
	const SPRITE_ENGINEER                ; $2F
	const SPRITE_FISHER                  ; $30
	const SPRITE_GAMBLER                 ; $31
	const SPRITE_GENTLEMAN               ; $32
	const SPRITE_HIKER                   ; $33
	const SPRITE_JR_TRAINER_F            ; $34
	const SPRITE_JR_TRAINER_M            ; $35
	const SPRITE_JUGGLER                 ; $36
	const SPRITE_KIMONO_GIRL             ; $37
	const SPRITE_LASS                    ; $38
	const SPRITE_LITTLE_BOY              ; $39
	const SPRITE_LITTLE_GIRL             ; $3A
	const SPRITE_POKEMANIAC_F            ; $3B
	const SPRITE_POKEMANIAC_M            ; $3C
	const SPRITE_PSYCHIC_F               ; $3D
	const SPRITE_PSYCHIC_M               ; $3E
	const SPRITE_ROCKER                  ; $3F
	const SPRITE_SAILOR                  ; $40
	const SPRITE_SCIENTIST_F             ; $41
	const SPRITE_SCIENTIST_M             ; $42
	const SPRITE_SUPER_NERD3             ; $43
	const SPRITE_SWIMMER_F               ; $44
	const SPRITE_SWIMMER_M               ; $45
	const SPRITE_TAMER                   ; $46
	const SPRITE_YOUNGSTER1              ; $47
	
	const SPRITE_VERMELHO                ; $48
	const SPRITE_AZUL                    ; $49
	const SPRITE_VERDE                   ; $4A

	const SPRITE_EVIL_GRUNT_F            ; $4B
	const SPRITE_EVIL_GRUNT_M            ; $4C
	const SPRITE_EVIL_BOSS               ; $4D

	const SPRITE_DOJO_LEADER             ; $4E

	const SPRITE_GYM_LEADER1             ; $4F
	const SPRITE_GYM_LEADER2             ; $50
	const SPRITE_GYM_LEADER3             ; $51
	const SPRITE_GYM_LEADER4             ; $52
	const SPRITE_GYM_LEADER5             ; $53
	const SPRITE_GYM_LEADER6             ; $54
	const SPRITE_GYM_LEADER7             ; $55
	const SPRITE_GYM_LEADER8             ; $56

	const SPRITE_ELITE_FOUR1             ; $57
	const SPRITE_ELITE_FOUR2             ; $58
	const SPRITE_ELITE_FOUR3             ; $59
	const SPRITE_ELITE_FOUR4             ; $5A

	const SPRITE_ARTICUNO                ; $5B
	const SPRITE_BIRD                    ; $5C
	const SPRITE_CHANSEY                 ; $5D
	const SPRITE_CLEFAIRY                ; $5E
	const SPRITE_CUBONE                  ; $5F
	const SPRITE_DODUO                   ; $60
	const SPRITE_FEAROW                  ; $61
	const SPRITE_HOOH                    ; $62
	const SPRITE_JIGGLYPUFF              ; $63
	const SPRITE_KANGASKHAN              ; $64
	const SPRITE_LAPRAS                  ; $65
	const SPRITE_MACHOKE                 ; $66
	const SPRITE_MACHOP                  ; $67
	const SPRITE_MEOWTH                  ; $68
	const SPRITE_MEWTWO                  ; $69
	const SPRITE_MOLTRES                 ; $6A
	const SPRITE_NIDORAN_F               ; $6B
	const SPRITE_NIDORAN_M               ; $6C
	const SPRITE_NIDORINO                ; $6D
	const SPRITE_PIDGEOT                 ; $6E
	const SPRITE_PIDGEY                  ; $6F
	const SPRITE_PIKACHU                 ; $70
	const SPRITE_POLIWRATH               ; $71
	const SPRITE_PSYDUCK                 ; $72
	const SPRITE_RHYDON                  ; $73
	const SPRITE_SEEL                    ; $74
	const SPRITE_SPEAROW                 ; $75
	const SPRITE_VOLTORB                 ; $76
	const SPRITE_WIGGLYTUFF              ; $77
	const SPRITE_ZAPDOS                  ; $78

DEF FIRST_STILL_SPRITE EQU const_value

	const SPRITE_BOOK                    ; $79

	const SPRITE_BOULDER                 ; $7A

	const SPRITE_FOSSIL1                 ; $7B

	const SPRITE_POKE_BALL               ; $7C
	const SPRITE_POKEDEX                 ; $7D

	const SPRITE_RECEPTIONIST            ; $7E

	const SPRITE_SLOWPOKE                ; $7F
	const SPRITE_SNORLAX                 ; $80

DEF NUM_SPRITES EQU const_value - 1
