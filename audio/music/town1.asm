; Earthbound Beginnings (US)/ Mother (JP) - Bein' Friends
Music_Cidades1::
	channel_count 4
	channel 1, Music_Cidades1_Ch1
	channel 2, Music_Cidades1_Ch2
	channel 3, Music_Cidades1_Ch3
	channel 4, Music_Cidades1_Ch4

Music_Cidades1_Ch1::
	tempo 148
	volume 7, 7
	vibrato 8, 3, 2
	toggle_perfect_pitch

Music_Cidades1_Dois::
	duty_cycle 3
	note_type 12, 11, 6
	octave 4
	note C_, 2
	note C_, 4
	note D_, 2
	rest 2
	note D_, 6
	octave 3
	note A#, 2
	note A#, 4
	octave 4
	note C_, 2
	rest 2
	note C_, 6
	octave 3
	sound_call Music_Cidades1_branch_fodinha
	note G_, 2
	note G_, 4
	note A_, 4
	octave 2
	note D_, 2
	octave 1
	note A#, 2
	note G_, 2
	note_type 12, 9, 1
	duty_cycle 2
	sound_call Music_Cidades1_branch_part22
	sound_call Music_Cidades1_branch_part22
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part24
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part23
	sound_call Music_Cidades1_branch_part24
	note_type 12, 9, 1
	duty_cycle 2
	octave 3
	note F_, 1
	rest 3
	note D_, 1
	rest 3
	note E_, 1
	rest 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 3
	note C_, 1
	rest 3
	octave 2
	note A_, 1
	rest 7
	octave 3
	note F_, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note E_, 1
	rest 3
	octave 2
	note G_, 1
	rest 1
	note F#, 1
	rest 1
	note A_, 1
	rest 15
	sound_loop 0, Music_Cidades1_Dois


Music_Cidades1_Ch2::
	duty_cycle 3

Music_Cidades1_Principal::
	note_type 12, 12, 6
	octave 4
	sound_call Music_Cidades1_branch_fodinha
	note G_, 2
	note G_, 4
	note A_, 2
	rest 2
	note A_, 6
	note F_, 2
	note F_, 4
	note G_, 2
	rest 2
	note G_, 6
	note E_, 2
	note E_, 4
	note F_, 8
	rest 2
	sound_call Music_Cidades1_branch_part2
	sound_call Music_Cidades1_branch_part2
	sound_call Music_Cidades1_branch_part3
	octave 3
	sound_call Music_Cidades1_branch_part3
	note_type 12, 12, 6
	duty_cycle 3
	octave 4
	note D_, 4
	octave 3
	note F_, 4
	note G_, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 4
	note F_, 4
	note C_, 8
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 4
	note F_, 2
	note E_, 2
	note F_, 12
	rest 4
	sound_loop 0, Music_Cidades1_Principal


Music_Cidades1_Ch3::
	vibrato 24, 2, 8
	note_type 12, 1, 2

Music_Cidades1_Baixo::
	sound_call Music_Cidades1_branch_jooo
	sound_call Music_Cidades1_branch_jooo
	sound_call Music_Cidades1_branch_jooo
	rest 4
	note D_, 2
	rest 4
	octave 2
	note D_, 2
	octave 1
	note A#, 2
	note G_, 2
	sound_call Music_Cidades1_branch_333
	sound_call Music_Cidades1_branch_333
	sound_call Music_Cidades1_branch_334
	sound_call Music_Cidades1_branch_334
	sound_call Music_Cidades1_branch_334
	sound_call Music_Cidades1_branch_335
	sound_call Music_Cidades1_branch_335
	sound_call Music_Cidades1_branch_335
	sound_call Music_Cidades1_branch_335
	sound_call Music_Cidades1_branch_336
	octave 2
	note E_, 2
	note G_, 2
	note F_, 2
	rest 4
	note F_, 2
	note F_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	sound_call Music_Cidades1_branch_336
	octave 2
	note G_, 2
	note F#, 2
	note F_, 2
	rest 14
	sound_loop 0, Music_Cidades1_Baixo


Music_Cidades1_Ch4::
	toggle_noise 0
	drum_speed 12

Music_Cidades1_Percussao::
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	rest 4
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc1
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	sound_call Music_Cidades1_branch_perc2
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 2, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 2, 1
	drum_note 2, 2
	drum_note 6, 1
	drum_note 2, 2
	rest 2
	sound_loop 0, Music_Cidades1_Percussao


Music_Cidades1_branch_jooo::
	octave 3
	rest 4
	note D_, 2
	rest 6
	note D_, 2
	rest 2
	sound_ret

Music_Cidades1_branch_fodinha::
	note A_, 2
	note A_, 4
	note A#, 2
	rest 2
	note A#, 6
	sound_ret

Music_Cidades1_branch_perc1::
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	sound_ret

Music_Cidades1_branch_perc2::
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 2, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 6, 2
	drum_note 6, 1
	drum_note 6, 1
	drum_note 2, 2
	drum_note 6, 1
	drum_note 6, 1
	sound_ret

Music_Cidades1_branch_part2::
	octave 3
	note A_, 2
	note F_, 2
	note A_, 2
	note A#, 2
	rest 2
	note A#, 6
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note A#, 2
	note A_, 8
	rest 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	rest 2
	note G_, 2
	rest 2
	note A#, 2
	note A_, 2
	note E_, 2
	note G_, 2
	note F_, 2
	rest 8
	sound_ret

Music_Cidades1_branch_part3::
	note_type 12, 11, 6
	duty_cycle 3
	rest 4
	note F_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note C_, 2
	note C_, 2
	note F_, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note D_, 2
	note E_, 1
	note D_, 1
	note C_, 12
	note_type 12, 11, 2
	duty_cycle 2
	octave 5
	note D_, 2
	note C_, 2
	note C_, 2
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	rest 2
	note C_, 2
	rest 2
	sound_ret

Music_Cidades1_branch_part22::
	rest 2
	octave 4
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note D_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note E_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note F_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note D_, 1
	rest 1
	octave 3
	note F_, 1
	rest 1
	octave 4
	note C_, 1
	rest 3
	note D_, 1
	rest 1
	octave 3
	note G_, 1
	rest 5
	octave 4
	note E_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note C#, 1
	rest 3
	note F_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

Music_Cidades1_branch_part23::
	note_type 12, 9, 2
	duty_cycle 3
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	octave 3
	note A_, 2
	note A#, 2
	octave 4
	note F_, 2
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	sound_ret

Music_Cidades1_branch_part24::
	note_type 12, 11, 2
	duty_cycle 2
	octave 4
	note F_, 2
	note E_, 2
	note E_, 2
	note C_, 2
	note F_, 2
	rest 2
	note F_, 2
	rest 2
	sound_ret

Music_Cidades1_branch_333::
	octave 2
	note F_, 2
	rest 1
	note F_, 1
	note A_, 2
	note F_, 2
	note A#, 2
	rest 1
	note A#, 1
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	rest 1
	note C_, 1
	note E_, 2
	note C_, 2
	octave 2
	note F_, 2
	rest 1
	note F_, 1
	note A_, 2
	note F_, 2
	note A#, 2
	rest 1
	note A#, 1
	octave 3
	note F_, 2
	octave 2
	note F_, 2
	note G_, 2
	rest 1
	note G_, 1
	octave 3
	note D_, 2
	octave 2
	note D_, 2
	note A_, 2
	rest 1
	note A_, 1
	note E_, 2
	note A_, 2
	octave 3
	note D_, 2
	rest 1
	note D_, 1
	octave 2
	note A_, 2
	octave 3
	note D_, 2
	sound_ret

Music_Cidades1_branch_334::
	octave 2
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 1
	note F_, 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	note G_, 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	note A#, 1
	sound_ret

Music_Cidades1_branch_335::
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note A_, 1
	note A_, 1
	sound_ret

Music_Cidades1_branch_336::
	note A#, 2
	rest 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	rest 2
	sound_ret
