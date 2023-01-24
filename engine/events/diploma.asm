DEF CIRCLE_TILE_ID EQU $70

DisplayDiploma::
	call SaveScreenTilesToBuffer2
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	xor a
	ld [wUpdateSpritesEnabled], a
	ld hl, wd730
	set 6, [hl]
	call DisableLCD
	ld hl, CircleTile
	ld de, vChars2 tile CIRCLE_TILE_ID
	ld bc, $10
	ld a, BANK(CircleTile)
	call FarCopyData2
	hlcoord 0, 0
	lb bc, 16, 18
	predef Diploma_TextBoxBorder

	ld hl, DiplomaTextPointersAndCoords
	ld c, $5
.placeTextLoop
	push bc
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call PlaceString
	pop hl
	inc hl
	pop bc
	dec c
	jr nz, .placeTextLoop
	hlcoord 10, 4
	ld de, wPlayerName
	call PlaceString
	farcall DrawPlayerCharacter

; Move the player 76 pixels (Saturn)/33 pixels (Mars) right and set the priority bit so he appears
; behind the background layer.
	ld hl, wShadowOAMSprite00XCoord
	lb bc, $80, $28
.adjustPlayerGfxLoop
	ld a, [hl] ; X
IF DEF(_SATURN)
	add 76
ENDC
IF DEF(_MARS)
	add 33
ENDC
	ld [hli], a
	inc hl
	ld a, b
	ld [hli], a ; attributes
	inc hl
	dec c
	jr nz, .adjustPlayerGfxLoop

	call EnableLCD
	call LoadDiplomaTiles
	ld b, SET_PAL_GENERIC
	call RunPaletteCommand
	call Delay3
	call GBPalNormal
	ld a, $90
	ldh [rOBP0], a
	call WaitForTextScrollButtonPress
	ld hl, wd730
	res 6, [hl]
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call Delay3
	jp GBPalNormal

LoadDiplomaTiles:
	ld de, DiplomaGraphics
	ld hl, vChars2 tile $76
	lb bc, BANK(DiplomaGraphics), (DiplomaGraphicsEnd - DiplomaGraphics) / $10
	jp CopyVideoData

DiplomaGraphics: INCBIN "gfx/trainer_card/diploma.2bpp"
DiplomaGraphicsEnd:

MACRO diploma_text
	dw \3
	dwcoord \1, \2
ENDM

DiplomaTextPointersAndCoords:
	; x, y, text
	diploma_text  5,  2, DiplomaText
	diploma_text  3,  4, DiplomaPlayer
	diploma_text 15,  4, DiplomaEmptyText
	diploma_text  2,  6, DiplomaCongrats
	diploma_text  9, 16, DiplomaGameFreak

DiplomaText:
	db CIRCLE_TILE_ID, "Diploma", CIRCLE_TILE_ID, "@"

DiplomaPlayer:
	db "Player@"

DiplomaEmptyText:
	db "@"

DiplomaCongrats:
	db   "Congrats! This"
	next "diploma certifies"
	next "that you have"
	next "completed your"
	next "#DEX.@"

DiplomaGameFreak:
	db "GAME FREAK@"
