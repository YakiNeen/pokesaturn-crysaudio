Music_Routes2::
	channel_count 4
	channel 1, Music_Routes2_Ch1
	channel 2, Music_Routes2_Ch2
	channel 3, Music_Routes2_Ch3
	channel 4, Music_Routes2_Ch4

Music_Routes2_Ch1::
	tempo 120
	volume 7, 7
	duty_cycle 2
	note_type 12, 12, 8

Music_Routes2_Dois::
	rest 16
	sound_loop 0, Music_Routes2_Dois


Music_Routes2_Ch2::
	duty_cycle 2
	note_type 12, 12, 8

Music_Routes2_Principal::
	rest 16
	sound_loop 0, Music_Routes2_Principal


Music_Routes2_Ch3::
	note_type 12, 1, 2

Music_Routes2_Baixo::
	rest 16
	sound_loop 0, Music_Routes2_Baixo


Music_Routes2_Ch4::
	toggle_noise 0
	drum_speed 12

Music_Routes2_Percussao::
	rest 16
	sound_loop 0, Music_Routes2_Percussao
