; Yoshi (US)/Mario & Yoshi (EU)/Yoshi no Tamago (JP) - 2P Set Over
Music_Dungeon2::
	channel_count 4
	channel 1, Music_Dungeon2_Ch1
	channel 2, Music_Dungeon2_Ch2
	channel 3, Music_Dungeon2_Ch3
	channel 4, Music_Dungeon2_Ch4

Music_Dungeon2_Ch1::
	tempo 128
	volume 7, 7
	toggle_perfect_pitch
	vibrato 12, 2, 4
	duty_cycle 2
	note_type 12, 11, 3

Music_Dungeon2_Dois::
	sound_call Music_Dungeon2_Branch7690
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call Music_Dungeon2_Branch7690
	note_type 12, 9, 3
	sound_call Music_Dungeon2_Branch76d5
	sound_call Music_Dungeon2_Branch7690
	note_type 12, 11, 3
	sound_call Music_Dungeon2_Branch76f4
	rest 2
	sound_loop 0, Music_Dungeon2_Dois


Music_Dungeon2_Ch2::
	duty_cycle 2
	vibrato 10, 2, 3

Music_Dungeon2_Principal::
	note_type 12, 12, 2
	sound_call Music_Dungeon2_Branch76d5
	note_type 12, 12, 1
	octave 2
	note F_, 4
	note C_, 4
	note D_, 4
	note E_, 4
	note G_, 4
	note C_, 4
	note D_, 4
	note C_, 4
	note E_, 4
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 4
	note C_, 4
	note D_, 4
	note E_, 4
	note_type 12, 12, 2
	sound_call Music_Dungeon2_Branch76d5
	sound_call Music_Dungeon2_Branch76d5
	sound_call Music_Dungeon2_Branch7702
	sound_call Music_Dungeon2_Branch76f4
	rest 2
	sound_loop 0, Music_Dungeon2_Principal


Music_Dungeon2_Ch3::
	note_type 12, 1, 0

Music_Dungeon2_Baixo::
	sound_call Music_Dungeon2_Branch7760
	octave 5
	note F_, 1
	rest 2
	note A_, 1
	octave 6
	note C_, 1
	rest 1
	note D_, 1
	rest 3
	note C_, 1
	rest 3
	octave 5
	note A_, 1
	rest 1
	note A#, 1
	rest 3
	octave 6
	note C_, 1
	rest 1
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	rest 1
	octave 4
	note A#, 1
	rest 1
	note G_, 1
	rest 3
	octave 5
	note E_, 1
	rest 2
	note G_, 1
	note A_, 1
	rest 1
	note A#, 1
	rest 3
	note A_, 1
	rest 3
	note G_, 1
	rest 1
	note A_, 1
	rest 3
	note F_, 1
	rest 11
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call Music_Dungeon2_Branch7760
	sound_loop 0, Music_Dungeon2_Baixo


Music_Dungeon2_Ch4::
	toggle_noise 0
	drum_speed 12

Music_Dungeon2_Percussao::
	sound_call Music_Dungeon2_Branch779b
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call Music_Dungeon2_Branch779b
	rest 16
	rest 16
	rest 16
	rest 16
	sound_call Music_Dungeon2_Branch77ca
	sound_call Music_Dungeon2_Branch77b6
	sound_loop 0, Music_Dungeon2_Percussao

Music_Dungeon2_Branch779b:
	drum_note 12, 4
	drum_note 2, 2
	drum_note 2, 2
	drum_note 12, 4
	drum_note 2, 4
	drum_note 12, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 12, 4
	drum_note 2, 4
	sound_loop 2, Music_Dungeon2_Branch779b
	sound_ret

Music_Dungeon2_Branch77b6:
	drum_note 8, 4
	rest 2
	rest 2
	drum_note 8, 4
	rest 4
	drum_note 8, 2
	rest 2
	rest 2
	rest 2
	drum_note 8, 4
	rest 4
	sound_loop 2, Music_Dungeon2_Branch77b6
	sound_ret

Music_Dungeon2_Branch77ca:
	rest 4
	drum_note 2, 2
	drum_note 2, 2
	rest 4
	drum_note 2, 4
	rest 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 2, 2
	rest 4
	drum_note 2, 4
	sound_loop 2, Music_Dungeon2_Branch77ca
	sound_ret

Music_Dungeon2_Branch7690:
	octave 4
	note C_, 3
	octave 3
	note A_, 1
	octave 4
	note C_, 2
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 4
	note G_, 12
	octave 3
	note A#, 3
	note G_, 1
	octave 4
	note C_, 2
	note E_, 4
	note D_, 4
	note E_, 2
	note F_, 4
	note C_, 12
	sound_ret

Music_Dungeon2_Branch76d5:
	octave 4
	note F_, 3
	note A_, 1
	octave 5
	note C_, 2
	note D_, 4
	note C_, 4
	octave 4
	note A_, 2
	note A#, 4
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G_, 4
	octave 4
	note E_, 3
	note G_, 1
	note A_, 2
	note A#, 4
	note A_, 4
	note G_, 2
	note A_, 4
	note F_, 12
	sound_ret

Music_Dungeon2_Branch76f4:
	rest 16
	rest 6
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G_, 2
	rest 16
	rest 16
	sound_ret

Music_Dungeon2_Branch7702:
	octave 4
	note F_, 3
	note A_, 1
	octave 5
	note C_, 2
	note D_, 4
	note C_, 4
	octave 4
	note A_, 2
	note A#, 4
	octave 5
	note C_, 2
	rest 10
	octave 4
	note E_, 3
	note G_, 1
	note A_, 2
	note A#, 4
	note A_, 4
	note G_, 2
	note A_, 4
	note F_, 12
	sound_ret

Music_Dungeon2_Branch7760:
	octave 4
	note F_, 1
	rest 3
	note C_, 1
	rest 3
	note D_, 1
	rest 3
	note E_, 1
	rest 3
	note G_, 1
	rest 3
	note C_, 1
	rest 3
	note D_, 1
	rest 3
	note C_, 1
	rest 3
	note E_, 1
	rest 3
	note C_, 1
	rest 3
	note D_, 1
	rest 3
	note E_, 1
	rest 3
	note F_, 1
	rest 3
	note C_, 1
	rest 3
	note D_, 1
	rest 3
	note E_, 1
	rest 3
	sound_ret
