UndoDivision4ExpAll:
	ld hl, wEnemyMonBaseStats
	ld b, $7
.exp_stat_loop
	ld a, [wUnusedD155]	
	ld c, a
	xor a
.exp_adder_loop
	add [hl]
	dec c
	jr nz, .exp_adder_loop
	ld [hl], a
	inc hl
	dec b
	jr nz, .exp_stat_loop
	ret

SetExpAllFlags:
	ld a, $1
	ld [wBoostExpByExpAll], a
	ld a, [wPartyCount]
	ld c, a
	ld b, 0
	ld hl, wPartyMon1HP
.gainExpFlagsLoop	
	ld a, [hli]
	or [hl] ; is mon's HP 0?
	jp z, .setnextexpflag
	scf
.setnextexpflag 
	jp .do_rotations	
.nextmonforexpall
	dec c
	jr z, .return
	ld a, [wPartyCount]
	sub c
	push bc
	ld bc, wPartyMon2HP - wPartyMon1HP
	ld hl, wPartyMon1HP
	call AddNTimes
	pop bc
	jr .gainExpFlagsLoop
.return
	ld a, b
	ld [wPartyGainExpFlags], a
	ret
.do_rotations
	push af
	ld a, $08
	ld hl, wPartyCount 
	sub [hl]
	add c
	ld h, a
	pop af
	ld a, h
	push bc
	ld c, a
	ld a, $00
.loop
	rr a
	dec c
	jr nz, .loop
	pop bc
	or b
	ld b, a
	jp .nextmonforexpall

CheckAISentOut::
	ld a, [wWhichPokemon]	
	cp $05
	jr z, .party5
	cp $04
	jr z, .party4
	cp $03
	jr z, .party3
	cp $02
	jr z, .party2
	cp $01
	jr z, .party1
	jr .party0
.party5
	ld a, [wFontLoaded]
	bit 6, a
	jr .partyret
.party4
	ld a, [wFontLoaded]
	bit 5, a
	jr .partyret
.party3
	ld a, [wFontLoaded]
	bit 4, a
	jr .partyret
.party2
	ld a, [wFontLoaded]
	bit 3, a
	jr .partyret
.party1
	ld a, [wFontLoaded]
	bit 2, a
	jr .partyret
.party0
	ld a, [wFontLoaded]
	bit 1, a
.partyret
	ret

ChooseMovePPTrack:
	ld a, [wUnusedCF8D]
	ld h, a
	ld a, [wUnusedCF8D + 1]
	ld l, a	
	ld a, e
	ld b, a
	call IsTrainerBattlePPCheck
	ld a, b
	dec a
	ld [wEnemyMoveListIndex], a
	ld a, [wEnemyDisabledMove]
	swap a
	and $f
	cp b
	jp z, .flagset
	ld a, [hl]
	and a
	jp z, .flagset
	push hl
	ld hl, wEnemyMonPP
	push bc
	ld c, b
	ld b, 0
	dec bc
	add hl, bc
	pop bc
	ld a, [hl]
	and a
	jr z, .PPexhausted
.PPremaining
	dec a
	ld [hl], a
	ld a, 1
	ld e, a
	push bc
	call TransformPPtasks
	pop bc
	pop hl
	jp .back
.PPexhausted
	pop hl
.flagset
	xor a
	ld e, a
	ld a,  b
	cp 4
	jr z, .move4
	cp 3
	jr z, .move3
	cp 2
	jr z, .move2
.move1
	set 0, d
	jr .back
.move2
	set 1, d
	jr .back
.move3
	set 2, d
	jr .back
.move4
	set 3, d
.back
	ld a, h
	ld [wUnusedCF8D], a
	ld a, l
	ld [wUnusedCF8D + 1], a
	ret

IsTrainerBattlePPCheck:
	ld a, [wIsInBattle]
	cp 2
	ret nz
	push de
	push hl
	push bc
.loop1
	dec b
	jr z, .doneloop1
	dec hl
	jr .loop1
.doneloop1
	ld c, NUM_MOVES
	ld de, wEnemyMonPP
.loop2
	ld a, [de]
	ld b, a
	ld a, [hl]	
	and b
	jr nz, .done	
	inc hl
	inc de
	dec c
	jr nz, .loop2
.done
	pop bc
	pop hl
	pop de
	ret nz
	ld hl, wEnemyMonMoves
	push bc
	ld c, b
	ld b, 0
	dec bc
	add hl, bc
	pop bc
	ret

TransformPPtasks:
	ld a, [wIsInBattle]
	cp 2
	ret z
	ld c, b
	ld b, 0
	dec bc
	ld hl, wEnemyMonMoves
	add hl, bc
	ld a, [hl]
	cp TRANSFORM
	ret nz
	ld hl, wEnemyMonPP
	add hl, bc
	ld a, [hl]
	push af
	ld hl, wEnemyMon1PP
	add hl, bc
	ld a, [wEnemyMonPartyPos]
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	pop af
	ld [hl], a
	ret

AdvancedLoadPP::
	ld a, [wIsInBattle]
	cp 1
	jr z, .doRegular
	call CheckAISentOut
	jr z, .doRegular
	ld a, [wWhichPokemon]
	ld hl, wEnemyMon1PP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld de, wEnemyMonPP
	ld bc, $0004
	call CopyData
	ret
.doRegular
	ld hl, wEnemyMonMoves
	ld de, wEnemyMonPP - 1
	predef LoadMovePPs
	ret
