Music_Intro::
	channel_count 3
	channel 1, Music_Intro_Ch1
	channel 2, Music_Intro_Ch2
	channel 3, Music_Intro_Ch3

Music_Intro_Ch1::
	tempo 128
	volume 7, 7
	toggle_perfect_pitch
	duty_cycle 2
	vibrato 12, 2, 3
	note_type 12, 9, 3
	octave 3
	note A_, 2
	note A_, 1
	note A#, 1
	octave 4
	note C_, 6
	note C_, 2
	octave 3
	note A_, 2
	octave 4
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 8
	sound_ret


Music_Intro_Ch2::
	duty_cycle 2
	vibrato 10, 2, 4
	note_type 12, 10, 3
	octave 4
	note F_, 2
	note F_, 1
	note F_, 1
	note F_, 6
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 3
	octave 5
	note C_, 1
	note D_, 2
	note E_, 2
	note F_, 8
	sound_ret


Music_Intro_Ch3::
	note_type 12, 1, 0
	octave 3
	note F_, 2
	note F_, 1
	note E_, 1
	note F_, 6
	note C_, 2
	note D_, 2
	note E_, 2
	note F_, 3
	note G_, 1
	note A_, 2
	note G_, 2
	note F_, 4
	rest 4
	sound_ret
