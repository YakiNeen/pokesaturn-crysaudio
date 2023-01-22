DebugMenu:
	call ClearScreen

	call LoadFontTilePatterns
	call LoadTextBoxTilePatterns
	call ClearSprites
	call RunDefaultPaletteCommand

	hlcoord 5, 6
	ld b, 3
	ld c, 9
	call TextBoxBorder

	hlcoord 7, 7
	ld de, DebugMenuOptions
	call PlaceString

	ld a, 1 ; fast speed
	ld [wOptions], a

	ld a, A_BUTTON | B_BUTTON | START
	ld [wMenuWatchedKeys], a
	xor a
	ld [wMenuJoypadPollCount], a
	inc a
	ld [wMaxMenuItem], a
	ld a, 7
	ld [wTopMenuItemY], a
	dec a
	ld [wTopMenuItemX], a
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld [wMenuWatchMovingOutOfBounds], a

	call HandleMenuInput
	bit BIT_B_BUTTON, a
	jp nz, DisplayTitleScreen

	ld a, [wCurrentMenuItem]
	and a ; FIGHT?
	jp z, TestBattle

	; DEBUG
	ld hl, wd732
	set 1, [hl]
	jp StartNewGameDebug

DebugMenuOptions:
	db   "FIGHT"
	next "DEBUG@"

TestBattle:
.loop
	call GBPalNormal

	; Don't mess around
	; with obedience.
	ld a, 1 << BIT_EARTHBADGE
	ld [wObtainedBadges], a

	; Reset the party.
	ld hl, wPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

	farcall SetDebugTeam
	farcall ClefableMoves
	farcall ArticunoMoves
	farcall JolteonMoves

	ld a, 20
	ld [wCurEnemyLVL], a
	ld a, MR_MIME
	ld [wCurOpponent], a

	predef InitOpponent

	; When the battle ends,
	; do it all again.
	ld a, 1
	ld [wUpdateSpritesEnabled], a
	ldh [hAutoBGTransferEnabled], a
	jr .loop
