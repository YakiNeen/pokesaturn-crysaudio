; Pokémon Prototype Title Screen - https://github.com/dannye/pokered-prototype.
; Pokémon TV Theme 1 (Outside Japan) "Gotta Catch 'em All!". https://www.youtube.com/watch?v=ZhwIUI2IrgI
Music_TitleScreen::
	channel_count 4
	channel 1, Music_TitleScreen_Ch1
	channel 2, Music_TitleScreen_Ch2
	channel 3, Music_TitleScreen_Ch3
	channel 4, Music_TitleScreen_Ch4

Music_TitleScreen_Ch1::
	tempo 130
	volume 7, 7
	duty_cycle 0
	note_type 6, 15, 7
	toggle_perfect_pitch
	octave 4
	note E_, 1
	note F_, 1
	note_type 12, 15, 7
	note G_, 15
	note_type 12, 1, 5
	octave 3
	note A_, 2
	note A_, 2
	note_type 12, 3, 5
	note A_, 2
	note A_, 2
	note_type 12, 5, 5
	note A_, 2
	note A_, 2
	note_type 12, 7, 5
	note A_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	octave 3

Music_TitleScreen_Dois::
	note A_, 2
	sound_call Music_TitleScreen_Ch0_sub_2
	sound_call Music_TitleScreen_Ch0_sub_0
	note A#, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note_type 12, 15, 7
	octave 1
	note F_, 2
	note D_, 2
	note G_, 6
	sound_call Music_TitleScreen_Ch0_sub_0
	note A#, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note_type 12, 15, 7
	octave 1
	note F_, 4
	note C_, 4
	note D#, 2
	note D#, 6
	sound_call Music_TitleScreen_Ch0_sub_0
	note_type 12, 15, 7
	octave 1
	note A#, 6
	sound_call Music_TitleScreen_Ch0_sub_0
	note_type 12, 15, 7
	octave 1
	note A#, 6
	note C_, 6
	note D_, 6
	note_type 12, 7, 5
	sound_call Music_TitleScreen_Ch0_sub_2
	note_type 12, 12, 7
	octave 3
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 4
	note G_, 2
	note F_, 4
	note D_, 2
	octave 2
	note A_, 4
	note_type 12, 15, 7
	octave 1
	note F_, 2
	note D_, 2
	note G_, 2
	note_type 12, 12, 7
	octave 3
	note G_, 2
	note G_, 6
	note F_, 4
	note D_, 2
	note F_, 8
	note_type 12, 15, 7
	octave 1
	note F_, 4
	note C_, 4
	note D#, 2
	note D#, 2
	note_type 12, 12, 7
	octave 2
	note D_, 2
	note G_, 2
	note G_, 2
	note G_, 6
	note F_, 2
	note D_, 4
	octave 3
	note_type 12, 13, 7
	note D_, 2
	note D_, 4
	note_type 12, 8, 7
	octave 3
	note A#, 2
	note A#, 2
	note A#, 2
	note_type 12, 15, 7
	octave 1
	note A#, 4
	note_type 12, 8, 7
	octave 3
	note A#, 2
	note_type 12, 15, 7
	octave 1
	note C_, 4
	note_type 12, 8, 7
	octave 4
	note C_, 2
	note_type 12, 15, 7
	octave 1
	note D_, 4
	note_type 12, 8, 7
	octave 3
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	sound_call Music_TitleScreen_Ch0_sub_1
	note_type 12, 6, 7
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	octave 2
	note A_, 2
	octave 3
	note F_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	note_type 12, 8, 7
	sound_call Music_TitleScreen_Ch0_sub_3
	note A_, 4
	octave 2
	note D_, 2
	note F_, 2
	note G_, 6
	octave 3
	note_type 12, 6, 7
	note G_, 2
	note A_, 2
	note D_, 2
	note G_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	note C_, 2
	note F_, 2
	note_type 12, 8, 7
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 4
	note D_, 2
	note C_, 4
	octave 2
	note A#, 2
	octave 3
	note D_, 8
	rest 6
	sound_call Music_TitleScreen_Ch0_sub_1
	note_type 12, 8, 7
	rest 12
	note G_, 2
	sound_call Music_TitleScreen_Ch0_sub_3
	note A_, 8
	rest 2
	note D#, 16
	note F_, 16
	note_type 12, 15, 7
	octave 2
	note A#, 6
	note A#, 6
	note A_, 8
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note G_, 6
	octave 3
	note_type 12, 12, 7
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note A#, 2
	note F_, 2
	note G_, 2
	note_type 12, 1, 5
	note A#, 2
	note A#, 2
	note_type 12, 3, 5
	note A#, 2
	note A#, 2
	note_type 12, 5, 5
	note A#, 2
	note A#, 2
	note_type 12, 7, 5
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	sound_loop 0, Music_TitleScreen_Dois

Music_TitleScreen_Ch0_sub_3::
	note G_, 2
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 4
	octave 3
	note A#, 4
	sound_ret

Music_TitleScreen_Ch0_sub_2::
	octave 3
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note_type 12, 15, 7
	octave 1
	note D_, 2
	note F_, 2
	note G_, 6
	sound_ret

Music_TitleScreen_Ch0_sub_1::
	note_type 12, 15, 7
	octave 2
	note D_, 2
	note F_, 2
	note G_, 6
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note G_, 4
	note F_, 6
	octave 3
	sound_ret

Music_TitleScreen_Ch0_sub_0::
	note_type 12, 7, 5
	octave 3
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	sound_ret


Music_TitleScreen_Ch2::
	duty_cycle 3
	note_type 6, 7, 0
	octave 4
	note E_, 1
	note F_, 1
	note_type 12, 7, 8
	note G_, 15
	note_type 12, 15, 0
	note G_, 16
	note_type 12, 15, 7
	note G_, 16

Music_TitleScreen_Principal::
	rest 10
	note_type 12, 7, 5
	octave 3
	duty_cycle 0
	note A_, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note_type 12, 15, 7
	octave 4
	duty_cycle 3
	octave 4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 4
	rest 2
	note D_, 2
	note C_, 4
	octave 3
	note A#, 2
	note F_, 4
	note_type 12, 7, 5
	duty_cycle 0
	note A_, 2
	note A_, 2
	note_type 12, 15, 7
	duty_cycle 3
	note A#, 2
	octave 4
	note D_, 4
	note D_, 4
	note C_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 6
	rest 4
	note_type 12, 7, 5
	duty_cycle 0
	octave 3
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note_type 12, 15, 7
	duty_cycle 3
	note A#, 2
	octave 4
	note D#, 4
	note D#, 4
	note F_, 2
	note D_, 4
	note C_, 4
	sound_call Music_TitleScreen_Ch1_sub_0
	note D_, 10
	rest 4
	note_type 12, 7, 5
	duty_cycle 0
	octave 3
	note A_, 2
	note A_, 2
	note A_, 2
	note A#, 2
	note A#, 2
	note_type 12, 15, 7
	duty_cycle 3
	octave 4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 4
	note D_, 2
	note C_, 4
	octave 3
	note A#, 2
	note F_, 6
	rest 4
	octave 4
	note D_, 2
	note D_, 6
	note C_, 4
	octave 3
	note A#, 2
	octave 4
	note C_, 8
	rest 12
	octave 3
	note A#, 2
	octave 4
	note D#, 2
	note D#, 2
	note D#, 6
	note F_, 2
	note D_, 4
	note C_, 2
	sound_call Music_TitleScreen_Ch1_sub_0
	note D_, 12
	sound_call Music_TitleScreen_Ch1_sub_1
	note G_, 2
	note F_, 2
	note D_, 4
	note_type 12, 15, 5
	note C_, 6
	rest 10
	note_type 12, 15, 7
	octave 4
	note D_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	note A_, 4
	note G_, 4
	note A_, 2
	note G_, 2
	octave 3
	note D_, 2
	note F_, 2
	note G_, 6
	octave 4
	note G_, 10
	note G_, 2
	note F_, 2
	note D_, 4
	note C_, 6
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D_, 4
	note D_, 2
	note C_, 4
	octave 3
	note A#, 2
	octave 4
	note C_, 1
	note D_, 11
	sound_call Music_TitleScreen_Ch1_sub_1
	note G_, 2
	note F_, 2
	note G_, 4
	note G_, 4
	note A_, 1
	note G_, 1
	note F_, 4
	rest 6
	note D#, 2
	note G_, 2
	note A_, 2
	note A#, 2
	note A_, 4
	note G_, 4
	note F_, 8
	rest 2
	note D#, 2
	note A#, 4
	note A#, 4
	note D#, 4
	note F_, 4
	note A#, 4
	note A#, 8
	rest 2
	note A#, 6
	note A#, 6
	note A#, 1
	note A_, 7
	octave 3
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note G_, 6
	octave 4
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note A#, 2
	note F_, 2
	note G_, 14
	rest 16
	rest 16
	sound_loop 0, Music_TitleScreen_Principal

Music_TitleScreen_Ch1_sub_0::
	octave 3
	note A#, 4
	rest 4
	note A#, 2
	octave 4
	note D_, 4
	note D_, 2
	note C_, 4
	octave 3
	note A#, 2
	octave 4
	sound_ret

Music_TitleScreen_Ch1_sub_1::
	octave 3
	rest 2
	note D_, 2
	note F_, 2
	note G_, 6
	note D_, 2
	note D_, 2
	note F_, 2
	note_type 12, 12, 7
	note G_, 4
	octave 4
	note_type 12, 15, 7
	sound_ret


Music_TitleScreen_Ch3::
	note_type 12, 1, 2
	octave 4
	sound_call Music_TitleScreen_Ch2_sub_0

Music_TitleScreen_Baixo::
	sound_call Music_TitleScreen_Ch2_sub_0
	sound_call Music_TitleScreen_Ch2_sub_0
	sound_call Music_TitleScreen_Ch2_sub_0
	sound_call Music_TitleScreen_Ch2_sub_0
	note F_, 2
	note F_, 2
	note F_, 2
	sound_call Music_TitleScreen_Ch2_sub_2
	sound_call Music_TitleScreen_Ch2_sub_0
	sound_call Music_TitleScreen_Ch2_sub_0
	sound_call Music_TitleScreen_Ch2_sub_0
	note F_, 2
	note F_, 2
	note F_, 2
	sound_call Music_TitleScreen_Ch2_sub_2
	sound_call Music_TitleScreen_Ch2_sub_1
	note D_, 4
	octave 3
	note A#, 2
	octave 4
	note D_, 4
	note D_, 2
	octave 3
	note A#, 4
	octave 4
	sound_call Music_TitleScreen_Ch2_sub_1
	note F_, 4
	note C_, 2
	note F_, 4
	note F_, 2
	note C_, 4
	sound_call Music_TitleScreen_Ch2_sub_1
	note C_, 4
	octave 3
	note A_, 2
	octave 4
	note C_, 4
	note C_, 2
	octave 3
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A#, 2
	octave 4
	note C_, 4
	note C_, 2
	note D_, 14
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note D#, 2
	sound_call Music_TitleScreen_Ch2_sub_3
	note C_, 4
	octave 3
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note A_, 2
	octave 4
	note C_, 4
	sound_call Music_TitleScreen_Ch2_sub_3
	octave 3
	note A_, 4
	octave 4
	note C_, 2
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	octave 4
	note D#, 2
	octave 3
	note A#, 4
	note A#, 2
	octave 4
	note D#, 4
	octave 3
	note A_, 4
	octave 4
	note D_, 2
	octave 3
	note A_, 4
	note A_, 2
	octave 4
	note D_, 4
	note D_, 4
	note D_, 2
	note C_, 4
	note C_, 2
	note D_, 6
	rest 2
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 2
	note D_, 2
	note G_, 6
	note D_, 2
	note D_, 2
	note F_, 2
	note G_, 4
	note A#, 2
	note F_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	sound_loop 0, Music_TitleScreen_Baixo

Music_TitleScreen_Ch2_sub_0::
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	sound_ret

Music_TitleScreen_Ch2_sub_1::
	note D#, 4
	octave 3
	note A#, 2
	octave 4
	note D#, 4
	note D#, 2
	octave 3
	note A#, 4
	octave 4
	sound_ret

Music_TitleScreen_Ch2_sub_2::
	note G_, 2
	note G_, 2
	note G_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	sound_ret

Music_TitleScreen_Ch2_sub_3::
	note D#, 4
	octave 3
	note A#, 2
	octave 4
	note D#, 4
	octave 3
	note A#, 2
	octave 4
	note D#, 4
	sound_ret


Music_TitleScreen_Ch4::
	toggle_noise 0
	drum_speed 12
	drum_note 5, 2
	rest 14
	drum_note 2, 16
	rest 4
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 4

Music_TitleScreen_Percussao::
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 2, 2
	drum_note 4, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 2, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 4, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 4, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 6, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 2, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 4, 2
	rest 10
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 2
	drum_note 6, 2
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 6
	drum_note 2, 4
	rest 14
	drum_note 2, 2
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 6, 4
	drum_note 2, 4
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 4
	drum_note 6, 2
	drum_note 2, 4
	rest 4
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 6, 2
	drum_note 2, 6
	drum_note 2, 6
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 16
	rest 16
	rest 16
	rest 2
	sound_loop 0, Music_TitleScreen_Percussao
