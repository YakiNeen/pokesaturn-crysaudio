Music_RBYPalletTown::
	channel_count 3
	channel 1, Music_RBYPalletTown_Ch1
	channel 2, Music_RBYPalletTown_Ch2
	channel 3, Music_RBYPalletTown_Ch3

Music_RBYPalletTown_Ch1::
	tempo 120
	volume 7, 7
	duty_cycle 2
	note_type 12, 8, 5

Music_RBYPalletTown_Dois::
	sound_call Music_RBYPalletTown_Dois_Robert
	rest 4
	octave 4
	note_type 12, 12, 3
	note C_, 8
	rest 4	
	note D_, 8
	note_type 12, 8, 5
	rest 8
	sound_call Music_RBYPalletTown_Dois_Robert
	duty_cycle 1
	note_type 12, 5, 3
	octave 3
	note F_, 2
	octave 4
	note C_, 2
	note F_, 2
	note G#, 2
	note C_, 2
	note G#, 2
	octave 5
	note C_, 2
	note F_, 2
	duty_cycle 2
	note_type 12, 8, 5
	octave 4
	note C_, 8
	octave 3
	note A#, 8
	sound_call Music_RBYPalletTown_Dois_Robert
	rest 4
	octave 3
	note_type 12, 9, 5
	note G#, 12
	note G_, 8
	note F#, 8
	duty_cycle 1
	octave 4
	note F_, 2
	note_type 12, 5, 3
	octave 5
	note C_, 2
	note F_, 2
	note G#, 2
	note C_, 2
	note F_, 2
	note G#, 2
	octave 6
	note C_, 2
	note_type 12, 3, 3
	note C_, 2
	note_type 12, 1, 3
	note C_, 2
	duty_cycle 2
	note_type 12, 8, 5
	octave 4
	note C_, 4
	octave 3
	note A#, 8
	octave 2
	note A#, 8
	octave 3
	note D#, 8
	rest 16
	sound_loop 0, Music_RBYPalletTown_Dois

Music_RBYPalletTown_Ch2::
	duty_cycle 2

Music_RBYPalletTown_Principal::
	octave 4
	sound_call Music_RBYPalletTown_Principal_ppp
	rest 4
	octave 5
	note C_, 4
	note D_, 6
	note D#, 2
	octave 4
	note A#, 4
	note G_, 4
	note D_, 4
	note D#, 2
	note F_, 2
	sound_call Music_RBYPalletTown_Principal_ppp
	octave 5
	note C_, 4
	octave 4
	note A#, 4
	note A#, 4
	note G#, 4
	note G_, 8
	note F_, 8
	sound_call Music_RBYPalletTown_Principal_ppp
	rest 4
	octave 5
	note C_, 4
	note D_, 6
	note D#, 2
	note G_, 4
	note F_, 4
	note D#, 6
	note D_, 2
	note C_, 10
	rest 2
	note D_, 2
	note D#, 2
	octave 4
	note A#, 4
	note G#, 4
	note G_, 6
	note F_, 2
	note_type 12, 5, 8
	note D#, 16
	octave 3
	note_type 12, 8, 5
	note D_, 8
	note C_, 4
	note D#, 4
	sound_loop 0, Music_RBYPalletTown_Principal

Music_RBYPalletTown_Ch3::
	vibrato 24, 2, 8
	note_type 12, 1, 2

Music_RBYPalletTown_Baixo::
	sound_call Music_RBYPalletTown_Baixo_lala
	note G#, 4
	rest 16
	rest 12
	sound_call Music_RBYPalletTown_Baixo_lala
	note F_, 8
	note G_, 8
	octave 3
	note C_, 8
	octave 2
	note A#, 8
	sound_call Music_RBYPalletTown_Baixo_lala
	note G#, 4
	octave 3
	note G#, 12
	note G_, 8
	note F#, 8
	note F_, 10
	rest 6
	note C_, 8
	octave 2
	note A#, 8
	octave 3
	note D#, 4
	rest 12
	rest 8
	octave 2
	note A#, 4
	octave 3
	note D#, 4
	sound_loop 0, Music_RBYPalletTown_Baixo

Music_RBYPalletTown_Dois_Robert::
	octave 3
	note A#, 8
	note D_, 8
	octave 2
	note A#, 8
	note G#, 8
	sound_ret

Music_RBYPalletTown_Principal_ppp::
	note_type 12, 8, -7
	note D#, 12
	note_type 12, 12, 5
	note G_, 2
	note F_, 2
	note G#, 8
	note G_, 8
	sound_ret

Music_RBYPalletTown_Baixo_lala::
	octave 3
	note D#, 8
	octave 2
	note A#, 8
	note D#, 8
	note A#, 8
	sound_ret
