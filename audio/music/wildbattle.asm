Music_WildBattle::
	channel_count 3
	channel 1, Music_WildBattle_Ch1
	channel 2, Music_WildBattle_Ch2
	channel 3, Music_WildBattle_Ch3

Music_WildBattle_Ch1::
	tempo 104
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	toggle_perfect_pitch
	note_type 12, 11, 3
	; intro
	octave 4
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	; intro parte 2
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	; eyes to eyes
	octave 3
	note D_, 4
	rest 2
	octave 2
	note A_, 4
	rest 2
	octave 3
	note D_, 2
	note C_, 4
	octave 2
	note G_, 4
	note A_, 4
	octave 3
	note D_, 4
	octave 2
	note A_, 2
	octave 3
	note D#, 4
	rest 2
	octave 2
	note A#, 4
	rest 2
	octave 3
	note D#, 2
	note C#, 4
	octave 2
	note G#, 4
	note A#, 8
	octave 3
	note C_, 2
	octave 4
	note D_, 4
	rest 2
	octave 3
	note A_, 4
	rest 2
	octave 4
	note D_, 2
	note C_, 4
	octave 3
	note G_, 4
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 2
	octave 4
	note D#, 4
	rest 2
	octave 3
	note A#, 4
	rest 2
	octave 4
	note D#, 2
	note C_, 4
	octave 3
	note G_, 4
	note D#, 2
	sound_call Music_WildBattle_fadeout

Music_WildBattle_Dois::
	octave 3
	note D_, 6
	octave 2
	note A_, 6
	octave 3
	note D_, 2
	note E_, 2
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	octave 2
	note A_, 8
	note A#, 8
	octave 3
	note C_, 8
	octave 2
	note A_, 4
	note A#, 2
	octave 3
	note C_, 2
	note D_, 6
	note F_, 6
	note D_, 2
	note F_, 2
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note C_, 8
	note D_, 8
	note E_, 6
	note C_, 6
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	sound_call Music_WildBattle_classic
	note G_, 4
	note E_, 2
	note C_, 4
	note D_, 2
	sound_call Music_WildBattle_classic
	rest 12
	sound_call Music_WildBattle_feijao
	note D_, 6
	note C_, 12
	octave 2
	note G_, 2
	octave 3
	note C_, 4
	note E_, 4
	note D_, 4
	note C_, 6
	octave 2
	note A#, 12
	note F_, 2
	note A#, 4
	octave 3
	note D_, 4
	note C_, 4
	octave 2
	note A#, 6
	note A_, 8
	note A#, 6
	octave 3
	note C_, 8
	rest 10
	sound_call Music_WildBattle_feijao
	note F_, 6
	note A_, 12
	note D_, 2
	note A_, 4
	note A#, 4
	note A_, 4
	note G_, 6
	note E_, 12
	note C_, 2
	note G_, 4
	note A#, 4
	note A_, 4
	note G_, 6
	note F#, 16
	rest 8
	sound_call Music_WildBattle_fadeout
	sound_loop 0, Music_WildBattle_Dois

Music_WildBattle_Ch2::
	duty_cycle 3
	vibrato 8, 2, 5
	note_type 12, 12, 3
	; intro
	octave 4
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	; intro parte 2
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	sound_call Music_WildBattle_intro1
	; eyes to eyes
	octave 3
	sound_call Music_WildBattle_intro2
	note C#, 4
	note D#, 8
	note E_, 2
	octave 4
	sound_call Music_WildBattle_intro2
	note C_, 4
	rest 2
	sound_call Music_WildBattle_fadeout

; intro4 alternativo:
;	pitch_slide 1, 5, D_
;	note E_, 4
;	pitch_slide 1, 4, D_
;	note E_, 4
;	note C_, 8
;	octave 3
;	note A_, 8

Music_WildBattle_Principal::
	octave 4
	sound_call Music_WildBattle_intro3
	sound_call Music_WildBattle_fadeout
	sound_call Music_WildBattle_intro4
	octave 4
	sound_call Music_WildBattle_fadeout
	sound_call Music_WildBattle_intro3
	sound_call Music_WildBattle_fadeout
	sound_call Music_WildBattle_intro4
	sound_call Music_WildBattle_rogerio
	sound_call Music_WildBattle_branch666
	note A_, 16
	rest 4 
	sound_call Music_WildBattle_rogerio
	sound_call Music_WildBattle_branch666
	note A_, 12
	sound_call Music_WildBattle_leao
	sound_call Music_WildBattle_limao
	sound_call Music_WildBattle_foda
	sound_call Music_WildBattle_caralho
	sound_call Music_WildBattle_foda
	sound_call Music_WildBattle_caralho
	sound_call Music_WildBattle_foda
	sound_call Music_WildBattle_caralho
	sound_call Music_WildBattle_leao
	sound_call Music_WildBattle_limao
	sound_call Music_WildBattle_foda
	sound_call Music_WildBattle_caralho2
	sound_call Music_WildBattle_foda
	sound_call Music_WildBattle_caralho2
	sound_call Music_WildBattle_foda
	note G_, 4
	note A_, 2
	note G_, 12
	note D_, 2
	note D_, 2
	note C_, 2
	sound_call Music_WildBattle_fadeout
	sound_loop 0, Music_WildBattle_Principal

Music_WildBattle_Ch3::
	vibrato 0, 2, 0
	note_type 12, 1, 2
	; intro
	octave 3
	note D_, 2
	note D_, 2
	octave 4
	note D_, 1
	note C#, 1
	note C_, 1
	rest 1
	octave 3
	note D#, 2
	note D#, 2
	octave 4
	note D#, 1
	note D_, 1
	note C#, 1
	rest 1
	; intro parte 2
	octave 3
	note E_, 2
	note E_, 2
	octave 4
	note E_, 1
	note D#, 1
	note D_, 1
	rest 1
	octave 3
	note F_, 2
	note F_, 2
	octave 4
	note F_, 2
	octave 2
	pitch_slide 1, 4, D_
	note F_, 2
	; eyes to eyes
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note F_, 2
	note A_, 2
	octave 4
	note D_, 2
	note F_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	note C_, 2
	octave 3
	note B_, 2
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note F#, 2
	note A#, 2
	octave 4
	note D#, 2
	note F#, 2
	note F_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note C#, 2
	note D_, 2
	note F_, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	note C_, 2
	octave 3
	note B_, 2
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note F#, 2
	note A#, 2
	octave 4
	note D#, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note F#, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	rest 8
	
Music_WildBattle_Baixo::
	octave 3
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_repetitivo2
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_repetitivo2
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_repetitivo2
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_escasso
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_repetitivo2
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_escasso
	sound_call Music_WildBattle_repetitivo
	sound_call Music_WildBattle_repetitivo2
	note E_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note F#, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	rest 16
	sound_loop 0, Music_WildBattle_Baixo

Music_WildBattle_intro1::
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	sound_ret

Music_WildBattle_foda::
	note A_, 2
	note A_, 3
	rest 1
	note A_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	sound_ret

Music_WildBattle_limao::
	octave 5
	pitch_slide 1, 4, D_
	note D_, 4
	octave 4
	note A_, 10
	rest 2
	sound_ret

Music_WildBattle_leao::
	note B_, 1
	octave 5
	note C_, 1
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 2
	octave 5
	note C_, 2
	octave 4
	note A_, 2
	sound_ret

Music_WildBattle_branch666::
	octave 4
	note F_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note G_, 2
	sound_ret

Music_WildBattle_rogerio::
	octave 5
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 2
	octave 4
	note A_, 2
	octave 5
	note C_, 1
	rest 1
	note D_, 16
	rest 6
	sound_ret

Music_WildBattle_fadeout::
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	sound_ret

Music_WildBattle_intro2::
	note F_, 4
	rest 2
	note D_, 4
	rest 2
	note F_, 2
	note E_, 4
	note C_, 4
	note D_, 4
	note F_, 4
	rest 2
	note F#, 4
	rest 2
	note D#, 4
	rest 2
	note F#, 2
	note F_, 4
	sound_ret

Music_WildBattle_intro3::
	note E_, 4
	note C_, 12
	rest 8
	sound_ret

Music_WildBattle_intro4::
	note E_, 8
	note C_, 8
	octave 3
	note A_, 8
	sound_ret

Music_WildBattle_caralho::
	note G_, 4
	note G_, 2
	note D_, 10
	sound_ret

Music_WildBattle_caralho2::
	note G_, 4
	note G_, 12
	sound_ret

Music_WildBattle_classic::
	note E_, 1
	rest 1
	note E_, 2
	note E_, 1
	note F_, 3
	note F_, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 8
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A_, 4
	note G_, 2
	note F_, 4
	note G_, 2
	note A_, 4
	sound_ret

Music_WildBattle_feijao::
	note D_, 12
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	note F_, 4
	note E_, 4
	sound_ret

Music_WildBattle_repetitivo::
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	sound_ret

Music_WildBattle_repetitivo2::
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	sound_ret

Music_WildBattle_escasso::
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	rest 16
	sound_ret
