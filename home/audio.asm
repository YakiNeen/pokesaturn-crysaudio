PlayDefaultMusic::
	call WaitForSoundToFinish
	xor a
	ld c, a
	ld d, a
	ld [wLastMusicSoundID], a
	jr PlayDefaultMusicCommon

PlayDefaultMusicFadeOutCurrent::
; Fade out the current music and then play the default music.
	ld c, 10
	ld d, 0
	ld a, [wd72e]
	bit 5, a ; has a battle just ended?
	jr z, PlayDefaultMusicCommon
	xor a
	ld [wLastMusicSoundID], a
	ld c, 8
	ld d, c

PlayDefaultMusicCommon::
	ld a, [wWalkBikeSurfState]
	and a
	jr z, .walking
	cp $2
	jr z, .surfing
	call CheckForNoBikingMusicMap
	jr c, .next3
	ld a, MUSIC_RIDING_BIKE
	jr .next

.surfing
	ld a, MUSIC_SURF_THEME

.next
	ld b, a
	jr .next3

.walking
	ld a, [wMapMusicSoundID]
	ld b, a

.next3
	ld a, [wLastMusicSoundID]
	cp b ; is the default music already playing?
	ret z ; if so, do nothing

.next4
	ld a, c
	ld [wMusicFade], a
	ld a, b
	ld [wLastMusicSoundID], a
	ld [wMusicFadeID], a

; if no fade, play immediately
	ld a, [wMusicFade]
	and a
	jr nz, .next5
	ld a, b
	call PlayMusic
.next5

	ret

CheckForNoBikingMusicMap::
; maps without music change upon getting on bike
	ld a, [wCurMap]
	cp ROUTE_23
	jr z, .found
	cp VICTORY_ROAD_1F
	jr z, .found
	cp VICTORY_ROAD_2F
	jr z, .found
	cp VICTORY_ROAD_3F
	jr z, .found
	cp INDIGO_PLATEAU
	jr z, .found
	and a
	ret
.found
	scf
	ret

; plays music or SFX specified by a. If value is $ff, music is stopped
PlaySound::
	push de
	cp $ff
	jr nz, .notff
	xor a
	call PlayMusic
	pop de
	ret
.notff
	ld e, a
	xor a
	ld d, a
	call PlaySFX
	pop de
	ret

UpdateSound::

	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(_UpdateSound)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	call _UpdateSound

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ret

_LoadMusicByte::
; [wCurMusicByte] = [a:de]
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, [de]
	ld [wCurMusicByte], a
	ld a, BANK(LoadMusicByte)

	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ret

PlayMusic::
	ld e, a
	xor a
	ld d, a
; Play music de.

	push hl
	push de
	push bc
	push af

	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(_PlayMusic) ; aka BANK(_InitSound)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, e
	and a
	jr z, .nomusic

	call _PlayMusic
	jr .end

.nomusic
	call _InitSound

.end
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop af
	pop bc
	pop de
	pop hl
	ret

PlayCry::
; Play monster a's cry.

	push hl
	push de
	push bc
	push af

	ld [wd11e], a
	predef IndexToPokedex
	ld a, [wd11e]
	dec a
	ld e, a
	ld d, 0

	ldh a, [hLoadedROMBank]
	push af

	; Cries are stuck in one bank.
	ld a, BANK(PokemonCries)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld hl, PokemonCries
rept 6 ; sizeof(mon_cry)
	add hl, de
endr

	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

	ld a, [hli]
	ld [wCryPitch], a
	ld a, [hli]
	ld [wCryPitch + 1], a
	ld a, [hli]
	ld [wCryLength], a
	ld a, [hl]
	ld [wCryLength + 1], a

	ld a, BANK(_PlayCry)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	call _PlayCry

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	
	call WaitForSoundToFinish

	pop af
	pop bc
	pop de
	pop hl
	ret

PlayBattleSound::
	push hl
	push de
	push bc
	push af

	push af
	ld a, c
	ld [wCryPitch], a
	ld a, b
	ld [wCryPitch + 1], a
	ld a, e
	ld [wCryLength], a
	ld a, d
	ld [wCryLength + 1], a
	pop af

	ld e, a
	xor a
	ld d, a

	ldh a, [hLoadedROMBank]
	push af

	ld a, BANK(_PlayBattleSound)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, e
	ld [wCurSFX], a
	call _PlayBattleSound

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret

PlaySFX::
; Play sound effect de.
; Sound effects are ordered by priority (highest to lowest)

	push hl
	push de
	push bc
	push af

.play
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(_PlaySFX)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

	ld a, e
	ld [wCurSFX], a
	call _PlaySFX

	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a

.done
	pop af
	pop bc
	pop de
	pop hl
	ret

PlaySoundWaitForCurrent::
WaitPlaySFX::
	push af
	call WaitForSoundToFinish
	pop af
	jp PlaySound

; Wait for sound to finish playing
WaitForSoundToFinish::
WaitSFX::
	ld a, [wLowHealthAlarm]
	and a
	ret nz
	ld a, [wSFXDontWait]
	and a
	ret nz

; infinite loop until sfx is done playing

	push hl

.wait
	ld hl, wChannel5Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel6Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel7Flags1
	bit 0, [hl]
	jr nz, .wait
	ld hl, wChannel8Flags1
	bit 0, [hl]
	jr nz, .wait

	pop hl
	ret

WaitForSongToFinish::
.loop
	call IsSongPlaying
	jr c, .loop
	ret

IsSongPlaying::
; Return carry if any song channels are active.
	ld a, [wChannel1Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel2Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel3Flags1]
	bit 0, a
	jr nz, .playing
	ld a, [wChannel4Flags1]
	bit 0, a
	jr nz, .playing
	and a
	ret
.playing
	scf
	ret
