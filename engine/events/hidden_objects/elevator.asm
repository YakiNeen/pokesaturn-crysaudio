ElevatorText::
	text_far _ElevatorText
	text_end

SinkText::
	text_far _SinkText
	text_end

FridgeText::
	text_far _FridgeText
	text_end

StoveText::
	text_far _StoveText
	text_end

YuYuHakushoTVText::
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
