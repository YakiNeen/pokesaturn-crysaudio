RedsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse1F_TextPointers:
	dw RedsHouse1FMomText
	dw YuYuHakushoTVText

RedsHouse1FMomText:
	text_asm
	ld a, [wd72e]
	bit 3, a ; received a Pokémon from Oak?
	jr nz, .heal
	ld hl, MomWakeUpText
	call PrintText
	jr .done
.heal
	call MomHealPokemon
.done
	jp TextScriptEnd

MomWakeUpText:
	text_far _MomWakeUpText
	text_end

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
	call PlayMusic

	call WaitForSongToFinish

	ld a, [wMapMusicSoundID]
	call PlayMusic
	call GBFadeInFromWhite
	ld hl, MomHealText2
	jp PrintText

MomHealText1:
	text_far _MomHealText1
	text_end
MomHealText2:
	text_far _MomHealText2
	text_end

YuYuHakushoTVText:
	text_asm
	ld hl, WantToListenText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no
	ld hl, wd730
	set 6, [hl]
	ld hl, YuYuHakushoText
	call PrintText
	ld c, 0 ; BANK(Music_Surfing)
	ld a, MUSIC_SURFING
	call PlayMusic
	ld hl, wd730
	res 6, [hl]
	jr .done
.no
	ld hl, NoWantListenText
	call PrintText
.done
	jp TextScriptEnd

WantToListenText:
	text_far _WantToListenText
	text_end

NoWantListenText:
	text_far _NoWantListenText
	text_end

YuYuHakushoText:
	text_far _YuYuHakushoText
	text_end
