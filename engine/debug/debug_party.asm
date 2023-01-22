SetDebugTeam:
	ld de, DebugTeam
.loop
	ld a, [de]
	cp -1
	ret z
	ld [wcf91], a
	inc de
	ld a, [de]
	ld [wCurEnemyLVL], a
	inc de
	call AddPartyMon
	jr .loop

DebugTeam:
	db CLEFABLE, 90
	db ARTICUNO, 57
	db JOLTEON, 56
	db -1 ; end

DebugStart:
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a

	; Fly anywhere.
	dec a ; $ff
	ld [wTownVisitedFlag], a
	ld [wTownVisitedFlag + 1], a

	; Get all badges except Earth Badge.
	ld a, ~(1 << BIT_EARTHBADGE)
	ld [wObtainedBadges], a

	; Get ¥999999.
	ld a, $99
	ld hl, wPlayerMoney
	ld [hli], a
	ld [hli], a
	ld [hl], a

	call SetDebugTeam
	call ClefableMoves
	call ArticunoMoves
	call JolteonMoves

	; Get some debug items.
	ld hl, wNumBagItems
	ld de, DebugItemsList
.items_loop
	ld a, [de]
	cp -1
	jr z, .items_end
	ld [wcf91], a
	inc de
	ld a, [de]
	inc de
	ld [wItemQuantity], a
	call AddItemToInventory
	jr .items_loop
.items_end

	; Complete the Pokédex.
	ld hl, wPokedexOwned
	call DebugSetPokedexEntries
	ld hl, wPokedexSeen
	call DebugSetPokedexEntries
	SetEvent EVENT_GOT_POKEDEX

	; Rival chose Squirtle,
	; Player chose Charmander.
	ld hl, wRivalStarter
	ld a, STARTER2
	ld [hli], a
	inc hl ; hl = wPlayerStarter
	ld a, STARTER1
	ld [hl], a

	ld de, CheatSetEvents
.set_events_loop
	ld a, [de]
	and a
	jr z, .set_events_done
	ld b, a
	inc de
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	ld a, [hl]
	or b
	ld [hl], a
	inc de
	jr .set_events_loop
.set_events_done

	ld hl, CheatHideShowObjects
	ld de, wMissableObjectFlags
	ld bc, CheatHideShowObjects.End - CheatHideShowObjects
	call CopyData

	ld a, $5
	ld [wPalletTownCurScript], a
	ld a, $11
	ld [wOaksLabCurScript], a
	ld a, $2
	ld [wViridianMartCurScript], a
	ret

DebugSetPokedexEntries:
	ld b, wPokedexOwnedEnd - wPokedexOwned - 1
	ld a, %11111111
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ld [hl], %01111111
	ret

DebugItemsList:
	db BICYCLE, 1
	db FULL_RESTORE, 99
	db FULL_HEAL, 99
	db ESCAPE_ROPE, 99
	db RARE_CANDY, 99
	db MASTER_BALL, 99
	db TOWN_MAP, 1
	db SECRET_KEY, 1
	db CARD_KEY, 1
	db S_S_TICKET, 1
	db LIFT_KEY, 1
	db -1 ; end

ClefableMoves::
	; Clefable gets four HM moves.
	ld hl, wPartyMon1Moves
	ld a, BITE
	ld [hli], a
	ld a, FOCUS_ENERGY
	ld [hli], a
	ld a, SURF
	ld [hli], a
	ld a, STRENGTH
	ld [hl], a
	ld hl, wPartyMon1PP
	ld a, 25
	ld [hli], a
	ld a, 30
	ld [hli], a
	ld a, 15
	ld [hli], a
	ld [hl], a
	ret

ArticunoMoves::
	; Articuno gets Fly.
	ld hl, wPartyMon2Moves
	ld a, FLY
	ld [hl], a
	ld hl, wPartyMon2PP
	ld a, 15
	ld [hl], a
	ret

JolteonMoves::
	; Jolteon gets Thunderbolt.
	ld hl, wPartyMon3Moves + 3
	ld a, THUNDERBOLT
	ld [hl], a
	ld hl, wPartyMon3PP + 3
	ld a, 15
	ld [hl], a
	ret

CheatSetEvents:
MACRO cheat_event
	db 1 << ((\1) % 8)
	dw wEventFlags + ((\1) / 8)
ENDM
	cheat_event EVENT_FOLLOWED_OAK_INTO_LAB
	cheat_event EVENT_FOLLOWED_OAK_INTO_LAB_2
	cheat_event EVENT_OAK_ASKED_TO_CHOOSE_MON
	cheat_event EVENT_GOT_STARTER
	cheat_event EVENT_BATTLED_RIVAL_IN_OAKS_LAB
	cheat_event EVENT_GOT_POKEDEX
	cheat_event EVENT_OAK_APPEARED_IN_PALLET
	cheat_event EVENT_OAK_GOT_PARCEL
	cheat_event EVENT_GOT_OAKS_PARCEL
	db 0 ; end

CheatHideShowObjects:
; hide HS_OAKS_LAB_OAK_2
; show HS_OAKS_LAB_OAK_1
; hide HS_OAKS_LAB_RIVAL
; hide HS_STARTER_BALL_1
; hide HS_STARTER_BALL_2
; hide HS_POKEDEX_1
; hide HS_POKEDEX_2
; hide HS_LYING_OLD_MAN
; show HS_OLD_MAN
	db $a3, $00, $7e, $01, $08, $9d, $03
.End
