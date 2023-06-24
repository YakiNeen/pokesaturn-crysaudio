; try to initiate a wild pokemon encounter
; returns success in Z
TryDoWildEncounter:
	ld a, [wPartyCount]
	and a
	jp z, .CantEncounter
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, [wd736]
	and a
	ret nz
	callfar IsPlayerStandingOnDoorTileOrWarpTile
	jr nc, .notStandingOnDoorOrWarpTile
.CantEncounter
	xor a
	ld [wNextEncounterSpecies], a
	inc a
	and a
	ret
.notStandingOnDoorOrWarpTile
	callfar IsPlayerJustOutsideMap
	jr z, .CantEncounter
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .next
	dec a
	jp z, .lastRepelStep
	ld [wRepelRemainingSteps], a
.next
; determine if wild pokemon can appear in the half-block we're standing in
; is the bottom right tile (8,9) of the half-block we're standing in a grass/water tile?
	hlcoord 8, 9
	ld c, [hl]
	ld a, [wGrassTile]
	cp c
	ld a, [wGrassRate]
	jr z, .CanEncounter
	ld a, $04 ; in all tilesets with a water tile, this is its id
	cp c
	ld a, [wWaterRate]
	jr z, .CanEncounter
	ld a, $76
	cp c
	ld a, [wWaterRate]
	jr z, .CanEncounter
	ld a, $47
	cp c
	ld a, [wWaterRate]
	jr z, .CanEncounter
	ld a, $65
	cp c
	ld a, [wWaterRate]
	jr z, .CanEncounter
; even if not in grass/water, standing anywhere we can encounter pokemon
; so long as the map is "indoor" and has wild pokemon defined.
; ...as long as it's not Viridian Forest or Safari Zone.
	ld a, [wCurMap]
	cp FIRST_INDOOR_MAP ; is this an indoor map?
	jr c, .CantEncounter2
	ld a, [wCurMapTileset]
	cp FOREST ; Viridian Forest/Safari Zone
	jr z, .CantEncounter2
	ld a, [wGrassRate]
.CanEncounter
	ld b, a
	ld a, [wNextEncounterSpecies]
	and a
	jr nz, .WillEncounterIfNotRepelled
; compare encounter chance with a random number to determine if there will be an encounter
	ldh a, [hRandomAdd]
	cp b
	jr nc, .CantEncounter2
	ldh a, [hRandomSub]
	ld b, a
	ld hl, WildMonEncounterSlotChances
.determineEncounterSlot
	ld a, [hli]
	cp b
	jr nc, .gotEncounterSlot
	inc hl
	jr .determineEncounterSlot
.gotEncounterSlot
; determine which wild pokemon (grass or water) can appear in the half-block we're standing in
	ld c, [hl]
	ld hl, wGrassMons
	lda_coord 8, 9
	cp $04 ; is the bottom left tile (8,9) of the half-block we're standing in a water tile?
	jr z, .water
	cp $76
	jr z, .water
	cp $47
	jr z, .water
	cp $65
	jr nz, .gotWildEncounterType
.water
	ld hl, wWaterMons
.gotWildEncounterType
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld [wNextEncounterLevel], a
	ld a, [hl]
	ld [wNextEncounterSpecies], a
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .willEncounterNext
	ld a, [wPartyMon1Level]
	ld b, a
	ld a, [wNextEncounterLevel]
	cp b
	jr c, .CantEncounter2 ; repel prevents encounters if the leading party mon's level is higher than the wild mon
	jr .willEncounterNext
.lastRepelStep
	ld [wRepelRemainingSteps], a
	ld a, TEXT_REPEL_WORE_OFF
	ldh [hSpriteIndexOrTextID], a
	call EnableAutoTextBoxDrawing
	call DisplayTextID
.CantEncounter2
	xor a
	ld [wNextEncounterSpecies], a
.willEncounterNext
	ld a, $1
	and a
	ret
.WillEncounterIfNotRepelled
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .willEncounter
	ld a, [wPartyMon1Level]
	ld b, a
	ld a, [wNextEncounterLevel]
	cp b
	jr c, .CantEncounter2 ; repel prevents encounters if the leading party mon's level is higher than the wild mon
.willEncounter
	ld a, [wNextEncounterLevel]
	ld [wCurEnemyLVL], a
	ld a, [wNextEncounterSpecies]
	ld [wcf91], a
	ld [wEnemyMonSpecies2], a
	xor a
	ld [wIsTrainerBattle], a
	ret

INCLUDE "data/wild/probabilities.asm"
