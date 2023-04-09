Music_Surfing::
	channel_count 4
	channel 1, Music_Surfing_Ch1
	channel 2, Music_Surfing_Ch2
	channel 3, Music_Surfing_Ch3
	channel 4, Music_Surfing_Ch4

Music_Surfing_Ch1::
	tempo 160
	volume 7, 7
	duty_cycle 3
	vibrato 12, 3, 4
	toggle_perfect_pitch
	note_type 12, 11, 5


Music_Surfing_branch_7fa30::
	note_type 12, 11, 2
	rest 16
	sound_loop 0, Music_Surfing_branch_7fa30


Music_Surfing_Ch2::
	duty_cycle 3
	vibrato 16, 2, 5
	note_type 12, 12, 6

Music_Surfing_branch_7faae::
	note_type 12, 12, 6
	;
	rest 16
	sound_loop 0, Music_Surfing_branch_7faae


Music_Surfing_Ch3::
	note_type 12, 1, 0
	rest 4

Music_Surfing_branch_7fb03::
	;
	octave 3
	note F#, 2
	rest 1
	note G#, 2
	rest 1
	note A#, 4
	rest 2
	note A#, 4
	;
	note F_, 2
	rest 1
	note C_, 2
	rest 1
	note F_, 4
	rest 2
	note F_, 4
	;
	note A#, 2
	rest 1
	note F_, 2
	rest 1
	note A#, 4
	rest 2
	note A#, 2
	rest 2
	;
	note A#, 2
	rest 1
	note F_, 2
	rest 1
	note A#, 4
	rest 2
	note A#, 2
	note G#, 2
	;
	note F#, 2
	rest 1
	note G#, 2
	rest 1
	note A#, 4
	rest 2
	note A#, 4
	;
	note F_, 2
	rest 1
	note C_, 2
	rest 1
	note F_, 4
	rest 2
	note F_, 2
	note G#, 2
	;
	note A#, 4
	rest 2
	note A#, 6
	rest 4
	;
	note G#, 4
	rest 2
	pitch_slide 2, 4, C#
	note B_, 4
	rest 2
	octave 4
	note C#, 4
	;
	sound_loop 0, Music_Surfing_branch_7fb03

Music_Surfing_Ch4::
	toggle_noise 0
	drum_speed 12
	drum_note 2, 2
	drum_note 2, 1
	drum_note 2, 1

Music_Surfing__branch_bubu::
	;
	drum_note 2, 2
	rest 2
	drum_note 2, 2
	rest 2
	drum_note 6, 2
	rest 2
	drum_note 2, 2
	rest 2
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_call Music_Surfing_ll
	;
	sound_loop 0, Music_Surfing__branch_bubu

Music_Surfing_ll::
	drum_note 6, 2
	rest 2
	drum_note 2, 2
	rest 2
	drum_note 6, 2
	rest 2
	drum_note 2, 2
	rest 2
	sound_ret
