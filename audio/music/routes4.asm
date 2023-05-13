; Junichi Masuda - Field6 (Red/Green Beta). https://www.youtube.com/watch?v=wY1Z7nwBCps
Music_Routes4::
	channel_count 4
	channel 1, Music_Routes4_Ch1
	channel 2, Music_Routes4_Ch2
	channel 3, Music_Routes4_Ch3
	channel 4, Music_Routes4_Ch4

Music_Routes4_Ch1::
	tempo 128
	volume 7, 7
	duty_cycle 3
	vibrato 6, 3, 4
	toggle_perfect_pitch

Music_Routes4_Dois::
	note_type 12, 11, 3
	octave 3
	note C_, 6
	note G_, 6
	note E_, 4
	sound_loop 0, Music_Routes4_Dois


Music_Routes4_Ch2::
	duty_cycle 1
	vibrato 8, 2, 5

Music_Routes4_Principal::
	note_type 12, 12, 7
	octave 4
	note C_, 6
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note E_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 6
	note_type 12, 10, 0
	note F_, 10
	note_type 12, 9, 0
	note F_, 8
	note_type 12, 8, 7
	note F_, 8
	note_type 12, 12, 7
	octave 4
	note C_, 6
	octave 3
	note G_, 1
	octave 4
	note C_, 1
	note E_, 10
	octave 3
	note G_, 2
	octave 4
	note C_, 2
	note G_, 2
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 2
	note D_, 8
	note_type 12, 10, 0
	note F_, 8
	note_type 12, 9, 0
	note F_, 8
	note_type 12, 8, 7
	note F_, 6
	note_type 12, 12, 7
	note C_, 1
	note D_, 1
	note E_, 2
	note D_, 2
	note E_, 2
	note C_, 8
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note D_, 2
	octave 3
	note G_, 4
	octave 4
	note G_, 8
	note F_, 1
	note E_, 1
	note_type 8, 13, 3
	note F_, 4
	note E_, 4
	note_type 8, 12, 4
	note C_, 4
	note_type 8, 10, 0
	note C_, 12
	note_type 12, 10, 7
	note C_, 16
	sound_loop 0, Music_Routes4_Principal


Music_Routes4_Ch3::
	note_type 12, 1, 1

Music_Routes4_Baixo::
	sound_call Music_Routes4_Baixo_oqki
	sound_call Music_Routes4_Baixo_oqki
	sound_call Music_Routes4_Baixo_okaso
	sound_call Music_Routes4_Baixo_okaso
	sound_loop 0, Music_Routes4_Baixo

Music_Routes4_Baixo_oqki::
	octave 4
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	sound_ret

Music_Routes4_Baixo_okaso::
	octave 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	sound_ret


Music_Routes4_Ch4::
	toggle_noise 1
	drum_speed 6

Music_Routes4_Percussao::
	sound_call Music_Routes4_Percussao_branc2
	sound_call Music_Routes4_Percussao_branc1
	sound_call Music_Routes4_Percussao_branc2
	sound_call Music_Routes4_Percussao_branc3
	sound_call Music_Routes4_Percussao_branc1
	sound_call Music_Routes4_Percussao_branc2
	sound_call Music_Routes4_Percussao_branc2
	sound_call Music_Routes4_Percussao_branc3
	sound_loop 0, Music_Routes4_Percussao

Music_Routes4_Percussao_branc1::
	drum_note 10, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 12, 2
	drum_note 11, 2
	sound_ret

Music_Routes4_Percussao_branc2::
	drum_note 10, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 12, 4
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_ret

Music_Routes4_Percussao_branc3::
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 11, 4
	drum_note 10, 4
	drum_note 10, 4
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 12, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	drum_note 11, 1
	sound_ret
