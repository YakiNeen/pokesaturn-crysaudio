; copy text of fixed length NAME_LENGTH (like player name, rival name, mon names, ...)
CopyFixedLengthText:
	ld bc, NAME_LENGTH
	jp CopyData

SetDefaultNamesBeforeTitlescreen::
	ld hl, PlayerDefaultName
	ld de, wPlayerName
	call CopyFixedLengthText
	ld hl, RivalDefaultName
	ld de, wRivalName
	call CopyFixedLengthText
	xor a
	ldh [hWY], a
	ld [wLetterPrintingDelayFlags], a
	ld hl, wd732
	ld [hli], a
	ld [hli], a
	ld [hl], a

DisplayTitleScreen:
	call GBPalWhiteOut
	ld a, $1
	ldh [hAutoBGTransferEnabled], a
	xor a
	ldh [hTileAnimations], a
IF DEF(_SATURN)
	ld a, $90
	ldh [hSCX], a
ENDC
IF DEF(_MARS)
	ldh [hSCX], a
	ld a, $40
	ldh [hSCY], a
ENDC
	ld a, $90
	ldh [hWY], a
	call ClearScreen
	call DisableLCD
	call LoadFontTilePatterns
	ld hl, NintendoCopyrightLogoGraphics
	ld de, vTitleLogo2 tile 16
	ld bc, 14 tiles
	ld a, BANK(NintendoCopyrightLogoGraphics)
	call FarCopyData2
	ld hl, PokemonLogoGraphics
	ld de, vTitleLogo
	ld bc, $60 tiles
	ld a, BANK(PokemonLogoGraphics)
	call FarCopyData2          ; first chunk
	ld hl, PokemonLogoGraphics tile $60
	ld de, vTitleLogo2
	ld bc, $10 tiles
	ld a, BANK(PokemonLogoGraphics)
	call FarCopyData2          ; second chunk
	ld hl, Version_GFX
	ld de, vChars2 tile $60 + (10 tiles - (Version_GFXEnd - Version_GFX) * 2) / 2
	ld bc, Version_GFXEnd - Version_GFX
	ld a, BANK(Version_GFX)
	call FarCopyDataDouble
	call ClearBothBGMaps

; place tiles for pokemon logo (except for the last row)
	hlcoord 2, 1
	ld a, $80
	ld de, SCREEN_WIDTH
	ld c, 6
.pokemonLogoTileLoop
	ld b, $10
	push hl
.pokemonLogoTileRowLoop ; place tiles for one row
	ld [hli], a
	inc a
	dec b
	jr nz, .pokemonLogoTileRowLoop
	pop hl
	add hl, de
	dec c
	jr nz, .pokemonLogoTileLoop

; place tiles for the last row of the pokemon logo
	hlcoord 2, 7
	ld a, $31
	ld b, $10
.pokemonLogoLastTileRowLoop
	ld [hli], a
	inc a
	dec b
	jr nz, .pokemonLogoLastTileRowLoop

	call DrawPlayerCharacter

IF DEF(_MARS)
; put a pokeball in the player's hand
	ld hl, wShadowOAMSprite10
	ld a, $74
	ld [hl], a
ENDC

; place tiles for title screen copyright
	hlcoord 2, 17
	ld de, .tileScreenCopyrightTiles
	ld b, $10
.tileScreenCopyrightTilesLoop
	ld a, [de]
	ld [hli], a
	inc de
	dec b
	jr nz, .tileScreenCopyrightTilesLoop

	jr .next

.tileScreenCopyrightTiles
	db $41,$42,$43,$4E,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D, ; ©1995-1999 GAME FREAK inc.

.next

	call SaveScreenTilesToBuffer2
IF DEF(_SATURN)
	call PrintGameVersionOnTitleScreen
	call SaveScreenTilesToBuffer1
ENDC
	call LoadScreenTilesFromBuffer2
	call EnableLCD

IF DEF(_SATURN)
	ld a, CLEFABLE ; which Pokemon to show first on the title screen
ENDC
IF DEF(_MARS)
	ld a, GENGAR ; which Pokemon to show first on the title screen
ENDC
	ld [wTitleMonSpecies], a
	call LoadTitleMonSprite

	ld a, HIGH(vBGMap0 + $300)
	call TitleScreenCopyTileMapToVRAM
IF DEF(_MARS)
	call SaveScreenTilesToBuffer1
ENDC
	ld a, $40
	ldh [hWY], a
IF DEF(_MARS)
	call LoadScreenTilesFromBuffer2
ENDC
	ld a, HIGH(vBGMap0)
	call TitleScreenCopyTileMapToVRAM
	ld b, SET_PAL_TITLE_SCREEN
	call RunPaletteCommand
	call GBPalNormal
	ld a, %11100100
	ldh [rOBP0], a

IF DEF(_SATURN)
	ld a, SFX_INTRO_WHOOSH
	call PlaySound
.scrollInLogoLoop
	call DelayFrame
	ld a, [hSCX]
	add 4
	ldh [hSCX], a
	jr nz, .scrollInLogoLoop
	ld a, $90
	ldh [hWY], a
	ld c, $14
	call DelayFrames
	call PrintGameVersionOnTitleScreen
	call Delay3
	ld a, HIGH(vBGMap1)
	call TitleScreenCopyTileMapToVRAM
	call LoadScreenTilesFromBuffer1
	call Delay3
	ld a, MUSIC_TITLE_SCREEN
	call PlayMusic
ENDC
IF DEF(_MARS)
; make pokemon logo bounce up and down
	ld bc, hSCY ; background scroll Y
	ld hl, .TitleScreenPokemonLogoYScrolls
.bouncePokemonLogoLoop
	ld a, [hli]
	and a
	jr z, .finishedBouncingPokemonLogo
	ld d, a
	cp -3
	jr nz, .skipPlayingSound
	ld a, SFX_INTRO_CRASH
	call PlaySound
.skipPlayingSound
	ld a, [hli]
	ld e, a
	call .ScrollTitleScreenPokemonLogo
	jr .bouncePokemonLogoLoop

.TitleScreenPokemonLogoYScrolls:
; Controls the bouncing effect of the Pokemon logo on the title screen
	db -4,16  ; y scroll amount, number of times to scroll
	db 3,4
	db -3,4
	db 2,2
	db -2,2
	db 1,2
	db -1,2
	db 0      ; terminate list with 0

.ScrollTitleScreenPokemonLogo:
; Scrolls the Pokemon logo on the title screen to create the bouncing effect
; Scrolls d pixels e times
	call DelayFrame
	ld a, [bc] ; background scroll Y
	add d
	ld [bc], a
	dec e
	jr nz, .ScrollTitleScreenPokemonLogo
	ret

.finishedBouncingPokemonLogo
	call LoadScreenTilesFromBuffer1
	ld c, 36
	call DelayFrames
	ld a, SFX_INTRO_WHOOSH
	call PlaySound

; scroll game version in from the right
	call PrintGameVersionOnTitleScreen
	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	ld d, 144
.scrollTitleScreenGameVersionLoop
	ld h, d
	ld l, 64
	call ScrollTitleScreenGameVersion
	ld h, 0
	ld l, 80
	call ScrollTitleScreenGameVersion
	ld a, d
	add 4
	ld d, a
	and a
	jr nz, .scrollTitleScreenGameVersionLoop

	ld a, HIGH(vBGMap1)
	call TitleScreenCopyTileMapToVRAM
	call LoadScreenTilesFromBuffer2
	call PrintGameVersionOnTitleScreen
	call Delay3
	call WaitForSoundToFinish
	ld a, MUSIC_TITLE_SCREEN
	call PlayMusic
	xor a
	ld [wUnusedCC5B], a
ENDC

; Keep scrolling in new mons indefinitely until the user performs input.
.awaitUserInterruptionLoop
IF DEF(_SATURN)
	ld c, 255
ENDC
IF DEF(_MARS)
	ld c, 200
ENDC
	call CheckForUserInterruption
	jr c, .finishedWaiting
	call TitleScreenScrollInMon
IF DEF(_MARS)
	ld c, 1
	call CheckForUserInterruption
	jr c, .finishedWaiting
	farcall TitleScreenAnimateBallIfStarterOut
ENDC
	call TitleScreenPickNewMon
	jr .awaitUserInterruptionLoop

.finishedWaiting
	ld a, [wTitleMonSpecies]
	call PlayCry
	call WaitForSoundToFinish
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	xor a
	ldh [hWY], a
IF DEF(_SATURN)
	ld a, 1
ENDC
IF DEF(_MARS)
	inc a
ENDC
	ldh [hAutoBGTransferEnabled], a
	call ClearScreen
	ld a, HIGH(vBGMap0)
	call TitleScreenCopyTileMapToVRAM
	ld a, HIGH(vBGMap1)
	call TitleScreenCopyTileMapToVRAM
	call Delay3
	call LoadGBPal
	ldh a, [hJoyHeld]
	ld b, a
	and D_UP | SELECT | B_BUTTON
	cp D_UP | SELECT | B_BUTTON
	jp z, .doClearSaveDialogue
IF DEF(_DEBUG)
	ld a, b
	bit BIT_SELECT, a
	jp nz, DebugMenu
ENDC
	jp MainMenu

.doClearSaveDialogue
	farjp DoClearSaveDialogue

TitleScreenPickNewMon:
	ld a, HIGH(vBGMap0)
	call TitleScreenCopyTileMapToVRAM

.loop
; Keep looping until a mon different from the current one is picked.
	call Random
	and $f
	ld c, a
	ld b, 0
	ld hl, TitleMons
	add hl, bc
	ld a, [hl]
	ld hl, wTitleMonSpecies

; Can't be the same as before.
	cp [hl]
	jr z, .loop

	ld [hl], a
	call LoadTitleMonSprite

	ld a, $90
	ldh [hWY], a
IF DEF(_SATURN)
	ld d, $A0
	ld c, $C
	jp TitleScroll
ENDC
IF DEF(_MARS)
	ld d, 1 ; scroll out
	farcall TitleScroll
	ret
ENDC

TitleScreenScrollInMon:
	ld d, 0 ; scroll in
IF DEF(_SATURN)
	ld c, $14
	call TitleScroll
ENDC
IF DEF(_MARS)
	farcall TitleScroll
ENDC
	xor a
	ldh [hWY], a
	ret

IF DEF(_SATURN)
TitleScroll:
	ld h, d
	ld l, $48
	call .Scroll
	ld h, 0
	ld l, $88
	call .Scroll
	ld a, d
	add 8
	ld d, a
	dec c
	jr nz, TitleScroll
	ret

.Scroll
ENDC
IF DEF(_MARS)
ScrollTitleScreenGameVersion:
ENDC
.wait
	ldh a, [rLY]
	cp l
	jr nz, .wait

	ld a, h
	ldh [rSCX], a

.wait2
	ldh a, [rLY]
	cp h
	jr z, .wait2
	ret

DrawPlayerCharacter:
	ld hl, PlayerCharacterTitleGraphics
	ld de, vSprites
	ld bc, PlayerCharacterTitleGraphicsEnd - PlayerCharacterTitleGraphics
	ld a, BANK(PlayerCharacterTitleGraphics)
	call FarCopyData2
	call ClearSprites
	xor a
	ld [wPlayerCharacterOAMTile], a
	ld hl, wShadowOAM
IF DEF(_SATURN)
	lb de, $60, $30
ENDC
IF DEF(_MARS)
	lb de, $60, $5a
ENDC
	ld b, 7
.loop
	push de
	ld c, 5
.innerLoop
	ld a, d
	ld [hli], a ; Y
	ld a, e
	ld [hli], a ; X
	add 8
	ld e, a
	ld a, [wPlayerCharacterOAMTile]
	ld [hli], a ; tile
	inc a
	ld [wPlayerCharacterOAMTile], a
	inc hl
	dec c
	jr nz, .innerLoop
	pop de
	ld a, 8
	add d
	ld d, a
	dec b
	jr nz, .loop
	ret

ClearBothBGMaps:
	ld hl, vBGMap0
	ld bc, $400 * 2
	ld a, " "
	jp FillMemory

LoadTitleMonSprite:
	ld [wcf91], a
	ld [wd0b5], a
IF DEF(_SATURN)
	hlcoord 9, 10
ENDC
IF DEF(_MARS)
	hlcoord 5, 10
ENDC
	call GetMonHeader
	jp LoadFrontSpriteByMonIndex

TitleScreenCopyTileMapToVRAM:
	ldh [hAutoBGTransferDest + 1], a
	jp Delay3

LoadCopyrightAndTextBoxTiles:
	xor a
	ldh [hWY], a
	call ClearScreen
	call LoadTextBoxTilePatterns

LoadCopyrightTiles:
	ld de, NintendoCopyrightLogoGraphics
	ld hl, vChars2 tile $60
	lb bc, BANK(NintendoCopyrightLogoGraphics), (NintendoCopyrightLogoGraphicsEnd - NintendoCopyrightLogoGraphics) / $10
	call CopyVideoData
	hlcoord 2, 2
	ld de, CopyrightTextString
	jp PlaceString

PrismWarningFunction:
	ld de, PrismWarningGraphics
	ld hl, vFont
	lb bc, BANK(PrismWarningGraphics), (PrismWarningGraphicsEnd - PrismWarningGraphics) / $10
	call CopyVideoData
	hlcoord 1, 12
	ld de, AlgumaCoisa
	jp PlaceString

CopyrightTextString:
	db   $7F,$AE,$AF,$C0,$79,$7A,$7B,$7F,$C1,$C2,$C3,$C4,$C5,$C6
	next $60,$61,$62,$6D,$79,$7A,$7B,$7F,$7C,$6E,$6F,$70,$71,$72             ; ©1995-2023 Nintendo
	next $60,$61,$62,$6D,$79,$7A,$7B,$7F,$73,$74,$75,$76,$77,$78,$6B,$6C     ; ©1995-2023 Creatures inc.
	next $60,$61,$62,$6D,$79,$7A,$7B,$7F,$64,$65,$66,$67,$68,$69,$6A,$6B,$6C ; ©1995-2023 GAME FREAK inc.
	db   "@"

AlgumaCoisa:
	db   $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F,$A0,$A1,$7F
	db   $7F,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F,$B0,$B1
	next $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
	db   $7F,$7F,$7F,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$BF,$7F,$7F
	db   $7F,$7F,$7F,$7F,$7F,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB,$AC,$AD
	db   "@"

INCLUDE "data/pokemon/title_mons.asm"

; prints version text (red, blue)
PrintGameVersionOnTitleScreen:
	hlcoord 5, 8
	ld de, VersionOnTitleScreenText
	jp PlaceString

; these point to special tiles specifically loaded for that purpose and are not usual text
VersionOnTitleScreenText:
	db $60,$61,$62,$63,$64,$65,$66,$67,$68,$69,"@"

PlayerDefaultName:  db "YAKI@"
RivalDefaultName:   db "NEEN@"
