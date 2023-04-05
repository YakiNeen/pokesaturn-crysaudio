_PhysicalSpecialSplit:: ; Determines if a move is Physical or Special
	ld a, [wTempMoveID]
	ld c, a
	ld b, $00
	ld hl, .MovesTable
	add hl, bc
	ld a, [hl]
	ld [wTempMoveID], a
	ret

	
.MovesTable
	db OTHER_M      ; NOTHING      EQU $00
	db PHYSICAL_ATQ ; POUND        EQU $01
	db PHYSICAL_ATQ ; KARATE_CHOP  EQU $02
	db PHYSICAL_ATQ ; DOUBLESLAP   EQU $03
	db PHYSICAL_ATQ ; COMET_PUNCH  EQU $04
	db PHYSICAL_ATQ ; MEGA_PUNCH   EQU $05
	db PHYSICAL_ATQ ; PAY_DAY      EQU $06
	db PHYSICAL_ATQ ; FIRE_PUNCH   EQU $07
	db PHYSICAL_ATQ ; ICE_PUNCH    EQU $08
	db PHYSICAL_ATQ ; THUNDERPUNCH EQU $09
	db PHYSICAL_ATQ ; SCRATCH      EQU $0A
	db PHYSICAL_ATQ ; VICEGRIP     EQU $0B
	db PHYSICAL_ATQ ; GUILLOTINE   EQU $0C
	db SPECIAL_ATQ  ; RAZOR_WIND   EQU $0D
	db OTHER_M      ; SWORDS_DANCE EQU $0E
	db PHYSICAL_ATQ ; CUT          EQU $0F
	db SPECIAL_ATQ  ; GUST         EQU $10
	db PHYSICAL_ATQ ; WING_ATTACK  EQU $11
	db OTHER_M      ; WHIRLWIND    EQU $12
	db PHYSICAL_ATQ ; FLY          EQU $13
	db PHYSICAL_ATQ ; BIND         EQU $14
	db PHYSICAL_ATQ ; SLAM         EQU $15
	db PHYSICAL_ATQ ; VINE_WHIP    EQU $16
	db PHYSICAL_ATQ ; STOMP        EQU $17
	db PHYSICAL_ATQ ; DOUBLE_KICK  EQU $18
	db PHYSICAL_ATQ ; MEGA_KICK    EQU $19
	db PHYSICAL_ATQ ; JUMP_KICK    EQU $1A
	db PHYSICAL_ATQ ; ROLLING_KICK EQU $1B
	db OTHER_M      ; SAND_ATTACK  EQU $1C
	db PHYSICAL_ATQ ; HEADBUTT     EQU $1D
	db PHYSICAL_ATQ ; HORN_ATTACK  EQU $1E
	db PHYSICAL_ATQ ; FURY_ATTACK  EQU $1F
	db PHYSICAL_ATQ ; HORN_DRILL   EQU $20
	db PHYSICAL_ATQ ; TACKLE       EQU $21
	db PHYSICAL_ATQ ; BODY_SLAM    EQU $22
	db PHYSICAL_ATQ ; WRAP         EQU $23
	db PHYSICAL_ATQ ; TAKE_DOWN    EQU $24
	db PHYSICAL_ATQ ; THRASH       EQU $25
	db PHYSICAL_ATQ ; DOUBLE_EDGE  EQU $26
	db OTHER_M      ; TAIL_WHIP    EQU $27
	db PHYSICAL_ATQ ; POISON_STING EQU $28
	db PHYSICAL_ATQ ; TWINEEDLE    EQU $29
	db PHYSICAL_ATQ ; PIN_MISSILE  EQU $2A
	db OTHER_M      ; LEER         EQU $2B
	db PHYSICAL_ATQ ; BITE         EQU $2C
	db OTHER_M      ; GROWL        EQU $2D
	db OTHER_M      ; ROAR         EQU $2E
	db OTHER_M      ; SING         EQU $2F
	db OTHER_M      ; SUPERSONIC   EQU $30
	db SPECIAL_ATQ  ; SONICBOOM    EQU $31
	db OTHER_M      ; DISABLE      EQU $32
	db SPECIAL_ATQ  ; ACID         EQU $33
	db SPECIAL_ATQ  ; EMBER        EQU $34
	db SPECIAL_ATQ  ; FLAMETHROWER EQU $35
	db OTHER_M      ; MIST         EQU $36
	db SPECIAL_ATQ  ; WATER_GUN    EQU $37
	db SPECIAL_ATQ  ; HYDRO_PUMP   EQU $38
	db SPECIAL_ATQ  ; SURF         EQU $39
	db SPECIAL_ATQ  ; ICE_BEAM     EQU $3A
	db SPECIAL_ATQ  ; BLIZZARD     EQU $3B
	db SPECIAL_ATQ  ; PSYBEAM      EQU $3C
	db SPECIAL_ATQ  ; BUBBLEBEAM   EQU $3D
	db SPECIAL_ATQ  ; AURORA_BEAM  EQU $3E
	db SPECIAL_ATQ  ; HYPER_BEAM   EQU $3F
	db PHYSICAL_ATQ ; PECK         EQU $40
	db PHYSICAL_ATQ ; DRILL_PECK   EQU $41
	db PHYSICAL_ATQ ; SUBMISSION   EQU $42
	db PHYSICAL_ATQ ; LOW_KICK     EQU $43
	db PHYSICAL_ATQ ; COUNTER      EQU $44
	db PHYSICAL_ATQ ; SEISMIC_TOSS EQU $45
	db PHYSICAL_ATQ ; STRENGTH     EQU $46
	db SPECIAL_ATQ  ; ABSORB       EQU $47
	db SPECIAL_ATQ  ; MEGA_DRAIN   EQU $48
	db OTHER_M      ; LEECH_SEED   EQU $49
	db OTHER_M      ; GROWTH       EQU $4A
	db PHYSICAL_ATQ ; RAZOR_LEAF   EQU $4B
	db SPECIAL_ATQ  ; SOLARBEAM    EQU $4C
	db OTHER_M      ; POISONPOWDER EQU $4D
	db OTHER_M      ; STUN_SPORE   EQU $4E
	db OTHER_M      ; SLEEP_POWDER EQU $4F
	db SPECIAL_ATQ  ; PETAL_DANCE  EQU $50
	db OTHER_M      ; STRING_SHOT  EQU $51
	db SPECIAL_ATQ  ; DRAGON_RAGE  EQU $52
	db SPECIAL_ATQ  ; FIRE_SPIN    EQU $53
	db SPECIAL_ATQ  ; THUNDERSHOCK EQU $54
	db SPECIAL_ATQ  ; THUNDERBOLT  EQU $55
	db OTHER_M      ; THUNDER_WAVE EQU $56
	db SPECIAL_ATQ  ; THUNDER      EQU $57
	db PHYSICAL_ATQ ; ROCK_THROW   EQU $58
	db PHYSICAL_ATQ ; EARTHQUAKE   EQU $59
	db PHYSICAL_ATQ ; FISSURE      EQU $5A
	db PHYSICAL_ATQ ; DIG          EQU $5B
	db OTHER_M      ; TOXIC        EQU $5C
	db SPECIAL_ATQ  ; CONFUSION    EQU $5D
	db SPECIAL_ATQ  ; PSYCHIC_M    EQU $5E
	db OTHER_M      ; HYPNOSIS     EQU $5F
	db OTHER_M      ; MEDITATE     EQU $60
	db OTHER_M      ; AGILITY      EQU $61
	db PHYSICAL_ATQ ; QUICK_ATTACK EQU $62
	db PHYSICAL_ATQ ; RAGE         EQU $63
	db OTHER_M      ; TELEPORT     EQU $64
	db SPECIAL_ATQ  ; NIGHT_SHADE  EQU $65
	db OTHER_M      ; MIMIC        EQU $66
	db OTHER_M      ; SCREECH      EQU $67
	db OTHER_M      ; DOUBLE_TEAM  EQU $68
	db OTHER_M      ; RECOVER      EQU $69
	db OTHER_M      ; HARDEN       EQU $6A
	db OTHER_M      ; MINIMIZE     EQU $6B
	db OTHER_M      ; SMOKESCREEN  EQU $6C
	db OTHER_M      ; CONFUSE_RAY  EQU $6D
	db OTHER_M      ; WITHDRAW     EQU $6E
	db OTHER_M      ; DEFENSE_CURL EQU $6F
	db OTHER_M      ; BARRIER      EQU $70
	db OTHER_M      ; LIGHT_SCREEN EQU $71
	db OTHER_M      ; HAZE         EQU $72
	db OTHER_M      ; REFLECT      EQU $73
	db OTHER_M      ; FOCUS_ENERGY EQU $74
	db PHYSICAL_ATQ ; BIDE         EQU $75
	db OTHER_M      ; METRONOME    EQU $76
	db OTHER_M      ; MIRROR_MOVE  EQU $77
	db PHYSICAL_ATQ ; SELFDESTRUCT EQU $78
	db PHYSICAL_ATQ ; EGG_BOMB     EQU $79
	db PHYSICAL_ATQ ; LICK         EQU $7A
	db SPECIAL_ATQ  ; SMOG         EQU $7B
	db SPECIAL_ATQ  ; SLUDGE       EQU $7C
	db PHYSICAL_ATQ ; BONE_CLUB    EQU $7D
	db SPECIAL_ATQ  ; FIRE_BLAST   EQU $7E
	db PHYSICAL_ATQ ; WATERFALL    EQU $7F
	db PHYSICAL_ATQ ; CLAMP        EQU $80
	db SPECIAL_ATQ  ; SWIFT        EQU $81
	db PHYSICAL_ATQ ; SKULL_BASH   EQU $82
	db PHYSICAL_ATQ ; SPIKE_CANNON EQU $83
	db PHYSICAL_ATQ ; CONSTRICT    EQU $84
	db OTHER_M      ; AMNESIA      EQU $85
	db OTHER_M      ; KINESIS      EQU $86
	db OTHER_M      ; SOFTBOILED   EQU $87
	db PHYSICAL_ATQ ; HI_JUMP_KICK EQU $88
	db OTHER_M      ; GLARE        EQU $89
	db SPECIAL_ATQ  ; DREAM_EATER  EQU $8A
	db OTHER_M      ; POISON_GAS   EQU $8B
	db PHYSICAL_ATQ ; BARRAGE      EQU $8C
	db PHYSICAL_ATQ ; LEECH_LIFE   EQU $8D
	db OTHER_M      ; LOVELY_KISS  EQU $8E
	db PHYSICAL_ATQ ; SKY_ATTACK   EQU $8F
	db OTHER_M      ; TRANSFORM    EQU $90
	db SPECIAL_ATQ  ; BUBBLE       EQU $91
	db PHYSICAL_ATQ ; DIZZY_PUNCH  EQU $92
	db OTHER_M      ; SPORE        EQU $93
	db OTHER_M      ; FLASH        EQU $94
	db SPECIAL_ATQ  ; PSYWAVE      EQU $95
	db OTHER_M      ; SPLASH       EQU $96
	db OTHER_M      ; ACID_ARMOR   EQU $97
	db PHYSICAL_ATQ ; CRABHAMMER   EQU $98
	db PHYSICAL_ATQ ; EXPLOSION    EQU $99
	db PHYSICAL_ATQ ; FURY_SWIPES  EQU $9A
	db PHYSICAL_ATQ ; BONEMERANG   EQU $9B
	db OTHER_M      ; REST         EQU $9C
	db PHYSICAL_ATQ ; ROCK_SLIDE   EQU $9D
	db PHYSICAL_ATQ ; HYPER_FANG   EQU $9E
	db OTHER_M      ; SHARPEN      EQU $9F
	db OTHER_M      ; CONVERSION   EQU $A0
	db SPECIAL_ATQ  ; TRI_ATTACK   EQU $A1
	db PHYSICAL_ATQ ; SUPER_FANG   EQU $A2
	db PHYSICAL_ATQ ; SLASH        EQU $A3
	db OTHER_M      ; SUBSTITUTE   EQU $A4
	db OTHER_M      ; STRUGGLE     EQU $A5