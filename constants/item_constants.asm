; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemPrices (see data/items/prices.asm)
; - TechnicalMachinePrices (see data/items/tm_prices.asm)
; - KeyItemFlags (see data/items/key_items.asm)
; - ItemUsePtrTable (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM       ; $00
	const MASTER_BALL   ; $01
	const ULTRA_BALL    ; $02
	const GREAT_BALL    ; $03
	const POKE_BALL     ; $04
	const TOWN_MAP      ; $05
	const BICYCLE       ; $06
	const SURFBOARD     ; $07 buggy?
	const SAFARI_BALL   ; $08
	const POKEDEX       ; $09
	const MOON_STONE    ; $0A
	const ANTIDOTE      ; $0B
	const BURN_HEAL     ; $0C
	const ICE_HEAL      ; $0D
	const AWAKENING     ; $0E
	const PARLYZ_HEAL   ; $0F
	const FULL_RESTORE  ; $10
	const MAX_POTION    ; $11
	const HYPER_POTION  ; $12
	const SUPER_POTION  ; $13
	const POTION        ; $14
	const BOULDERBADGE  ; $15
	const CASCADEBADGE  ; $16
DEF SAFARI_BAIT EQU $15 ; overload
DEF SAFARI_ROCK EQU $16 ; overload
	const THUNDERBADGE  ; $17
	const RAINBOWBADGE  ; $18
	const SOULBADGE     ; $19
	const MARSHBADGE    ; $1A
	const VOLCANOBADGE  ; $1B
	const EARTHBADGE    ; $1C
	const ESCAPE_ROPE   ; $1D
	const REPEL         ; $1E
	const OLD_AMBER     ; $1F
	const FIRE_STONE    ; $20
	const THUNDER_STONE ; $21
	const WATER_STONE   ; $22
	const HP_UP         ; $23
	const PROTEIN       ; $24
	const IRON          ; $25
	const CARBOS        ; $26
	const CALCIUM       ; $27
	const RARE_CANDY    ; $28
	const DOME_FOSSIL   ; $29
	const HELIX_FOSSIL  ; $2A
	const SECRET_KEY    ; $2B
	const UNUSED_ITEM   ; $2C "?????"
	const BIKE_VOUCHER  ; $2D
	const X_ACCURACY    ; $2E
	const LEAF_STONE    ; $2F
	const CARD_KEY      ; $30
	const NUGGET        ; $31
	const HEART_STONE   ; $32
	const POKE_DOLL     ; $33
	const FULL_HEAL     ; $34
	const REVIVE        ; $35
	const MAX_REVIVE    ; $36
	const GUARD_SPEC    ; $37
	const SUPER_REPEL   ; $38
	const MAX_REPEL     ; $39
	const DIRE_HIT      ; $3A
	const COIN          ; $3B
	const FRESH_WATER   ; $3C
	const SODA_POP      ; $3D
	const LEMONADE      ; $3E
	const S_S_TICKET    ; $3F
	const GOLD_TEETH    ; $40
	const X_ATTACK      ; $41
	const X_DEFEND      ; $42
	const X_SPEED       ; $43
	const X_SPECIAL     ; $44
	const COIN_CASE     ; $45
	const OAKS_PARCEL   ; $46
	const ITEMFINDER    ; $47
	const SILPH_SCOPE   ; $48
	const POKE_FLUTE    ; $49
	const LIFT_KEY      ; $4A
	const EXP_ALL       ; $4B
	const OLD_ROD       ; $4C
	const GOOD_ROD      ; $4D
	const SUPER_ROD     ; $4E
	const PP_UP         ; $4F
	const ETHER         ; $50
	const MAX_ETHER     ; $51
	const ELIXER        ; $52
	const MAX_ELIXER    ; $53
DEF NUM_ITEMS EQU const_value - 1

; elevator floors use item IDs
	const FLOOR_B2F     ; $54
	const FLOOR_B1F     ; $55
	const FLOOR_1F      ; $56
	const FLOOR_2F      ; $57
	const FLOOR_3F      ; $58
	const FLOOR_4F      ; $59
	const FLOOR_5F      ; $5A
	const FLOOR_6F      ; $5B
	const FLOOR_7F      ; $5C
	const FLOOR_8F      ; $5D
	const FLOOR_9F      ; $5E
	const FLOOR_10F     ; $5F
	const FLOOR_11F     ; $60
	const FLOOR_B4F     ; $61
DEF NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
DEF NUM_TMS EQU 50

DEF __tmhm_value__ = NUM_TMS + 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; $C4 HM1
	add_hm FLY          ; $C5 HM2
	add_hm SURF         ; $C6 HM3
	add_hm STRENGTH     ; $C7 HM4
	add_hm FLASH        ; $C8 HM5
DEF NUM_HMS EQU const_value - HM01

DEF __tmhm_value__ = 1

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF TM01 EQU const_value
	add_tm MEGA_PUNCH   ; $C9 TM1
	add_tm RAZOR_WIND   ; $CA TM2
	add_tm SWORDS_DANCE ; $CB TM3
	add_tm WHIRLWIND    ; $CC TM4
	add_tm MEGA_KICK    ; $CD TM5
	add_tm TOXIC        ; $CE TM6
	add_tm HORN_DRILL   ; $CF TM7
	add_tm BODY_SLAM    ; $D0 TM8
	add_tm TAKE_DOWN    ; $D1 TM9
	add_tm DOUBLE_EDGE  ; $D2 TM10
	add_tm BUBBLEBEAM   ; $D3 TM11
	add_tm WATER_GUN    ; $D4 TM12
	add_tm ICE_BEAM     ; $D5 TM13
	add_tm BLIZZARD     ; $D6 TM14
	add_tm HYPER_BEAM   ; $D7 TM15
	add_tm PAY_DAY      ; $D8 TM16
	add_tm SUBMISSION   ; $D9 TM17
	add_tm COUNTER      ; $DA TM18
	add_tm SEISMIC_TOSS ; $DB TM19
	add_tm RAGE         ; $DC TM20
	add_tm MEGA_DRAIN   ; $DD TM21
	add_tm SOLARBEAM    ; $DE TM22
	add_tm DRAGON_RAGE  ; $DF TM23
	add_tm THUNDERBOLT  ; $E0 TM24
	add_tm THUNDER      ; $E1 TM25
	add_tm EARTHQUAKE   ; $E2 TM26
	add_tm FISSURE      ; $E3 TM27
	add_tm DIG          ; $E4 TM28
	add_tm PSYCHIC_M    ; $E5 TM29
	add_tm TELEPORT     ; $E6 TM30
	add_tm MIMIC        ; $E7 TM31
	add_tm DOUBLE_TEAM  ; $E8 TM32
	add_tm REFLECT      ; $E9 TM33
	add_tm BIDE         ; $EA TM34
	add_tm METRONOME    ; $EB TM35
	add_tm SELFDESTRUCT ; $EC TM36
	add_tm EGG_BOMB     ; $ED TM37
	add_tm FIRE_BLAST   ; $EE TM38
	add_tm SWIFT        ; $EF TM39
	add_tm SKULL_BASH   ; $F0 TM40
	add_tm SOFTBOILED   ; $F1 TM41
	add_tm DREAM_EATER  ; $F2 TM42
	add_tm SKY_ATTACK   ; $F3 TM43
	add_tm REST         ; $F4 TM44
	add_tm THUNDER_WAVE ; $F5 TM45
	add_tm PSYWAVE      ; $F6 TM46
	add_tm EXPLOSION    ; $F7 TM47
	add_tm ROCK_SLIDE   ; $F8 TM48
	add_tm TRI_ATTACK   ; $F9 TM49
	add_tm SUBSTITUTE   ; $FA TM50
ASSERT NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
DEF __tmhm_value__ = NUM_TM_HM + 1
DEF UNUSED_TMNUM EQU __tmhm_value__
