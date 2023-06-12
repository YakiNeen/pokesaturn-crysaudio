; monochrome palette color ids
	const_def
	const SHADE_WHITE ; %00
	const SHADE_LIGHT ; %01
	const SHADE_DARK  ; %10
	const SHADE_BLACK ; %11
DEF NUM_PAL_COLORS EQU const_value

DEF PAL_COLOR_SIZE EQU 2
DEF PALETTE_SIZE EQU NUM_PAL_COLORS * PAL_COLOR_SIZE

; pal/blk packets
; SetPalFunctions indexes (see engine/gfx/palettes.asm)
	const_def
	const SET_PAL_BATTLE_BLACK         ; $00
	const SET_PAL_BATTLE               ; $01
	const SET_PAL_TOWN_MAP             ; $02
	const SET_PAL_STATUS_SCREEN        ; $03
	const SET_PAL_POKEDEX              ; $04
	const SET_PAL_SLOTS                ; $05
	const SET_PAL_TITLE_SCREEN         ; $06
	const SET_PAL_GENERIC              ; $07
	const SET_PAL_OVERWORLD            ; $08
	const SET_PAL_PARTY_MENU           ; $09
	const SET_PAL_POKEMON_WHOLE_SCREEN ; $0A
	const SET_PAL_TRAINER_CARD         ; $0C

DEF SET_PAL_PARTY_MENU_HP_BARS EQU $fc
DEF SET_PAL_DEFAULT EQU $ff

; sgb palettes
; SuperPalettes indexes (see data/sgb/sgb_palettes.asm)
	const_def
	const PAL_ROUTE          ; $00
	const PAL_PALLET         ; $01
	const PAL_VIRIDIAN       ; $02
	const PAL_PEWTER         ; $03
	const PAL_CERULEAN       ; $04
	const PAL_LAVENDER       ; $05
	const PAL_VERMILION      ; $06
	const PAL_CELADON        ; $07
	const PAL_FUCHSIA        ; $08
	const PAL_CINNABAR       ; $09
	const PAL_INDIGO         ; $0A
	const PAL_SAFFRON        ; $0B
	const PAL_TOWNMAP        ; $0C
	const PAL_LOGO1          ; $0D
	const PAL_LOGO2          ; $0E
	const PAL_0F             ; $0F
	const PAL_MEWMON         ; $10
	const PAL_BLUEMON        ; $11
	const PAL_REDMON         ; $12
	const PAL_CYANMON        ; $13
	const PAL_PURPLEMON      ; $14
	const PAL_BROWNMON       ; $15
	const PAL_GREENMON       ; $16
	const PAL_PINKMON        ; $17
	const PAL_YELLOWMON      ; $18
	const PAL_GREYMON        ; $19
	const PAL_SLOTS1         ; $1A
	const PAL_SLOTS2         ; $1B
	const PAL_SLOTS3         ; $1C
	const PAL_SLOTS4         ; $1D
	const PAL_BLACK          ; $1E
	const PAL_GREENBAR       ; $1F
	const PAL_YELLOWBAR      ; $20
	const PAL_REDBAR         ; $21
	const PAL_BADGE          ; $22
	const PAL_CAVE           ; $23
	const PAL_SHINYMEWMON    ; $25
	const PAL_SHINYBLUEMON   ; $26
	const PAL_SHINYREDMON    ; $27
	const PAL_SHINYCYANMON   ; $28
	const PAL_SHINYPURPLEMON ; $29
	const PAL_SHINYBROWNMON  ; $2A
	const PAL_SHINYGREENMON  ; $2B
	const PAL_SHINYPINKMON   ; $2C
	const PAL_SHINYYELLOWMON ; $2D
	const PAL_SHINYGREYMON   ; $2E
DEF NUM_SGB_PALS EQU const_value
