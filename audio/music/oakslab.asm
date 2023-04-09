Music_OaksLab::
	channel_count 3
	channel 1, Music_OaksLab_Ch1
	channel 2, Music_OaksLab_Ch2
	channel 3, Music_OaksLab_Ch3

Music_OaksLab_Ch1::
	tempo 140
	volume 7, 7
	duty_cycle 3
	vibrato 16, 1, 2
	toggle_perfect_pitch
	note_type 12, 11, 3
	rest 1
	octave 3
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1

Music_OaksLab_Dois::
	sound_call Music_OaksLab_branch_canal1
	sound_call Music_OaksLab_branch_canal1
	note E_, 1
	rest 3
	note D_, 6
	note C#, 1
	note E_, 1
	note F#, 4
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	note G_, 4
	note B_, 2
	octave 4
	note C#, 2
	note D_, 1
	rest 3
	octave 3
	note B_, 8
	note A_, 4
	note F#, 6
	note A_, 1
	sound_call Music_OaksLab_branch_anal2
	octave 3
	note A_, 6
	note B_, 1
	sound_call Music_OaksLab_branch_anal2
	note G_, 4
	note E_, 4
	note D_, 4
	note C#, 4
	octave 3
	note B_, 1
	rest 3
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	octave 4
	note F#, 4
	note E_, 2
	note D_, 2
	octave 3
	note A_, 4
	note B_, 2
	octave 4
	note C#, 2
	note E_, 1
	rest 3
	note D_, 6
	note E_, 1
	note F#, 1
	note D_, 4
	note C#, 4
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note C#, 1
	rest 3
	octave 3
	note B_, 8
	note A_, 4
	octave 4
	note D_, 6
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note G_, 8
	note F#, 6
	note D_, 1
	note F#, 1
	note A_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note D_, 4
	note C#, 1
	rest 3
	octave 3
	note A_, 4
	note B_, 4
	octave 4
	note C#, 4
	sound_loop 0, Music_OaksLab_Dois

Music_OaksLab_Ch2::
	duty_cycle 3
	vibrato 10, 2, 5
	note_type 12, 12, 4
	octave 3
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1

Music_OaksLab_Principal::
	sound_call Music_OaksLab_branch_neee
	sound_call Music_OaksLab_branch_ueueue
	sound_call Music_OaksLab_branch_neee
	sound_call Music_OaksLab_branch_ueueue
	sound_call Music_OaksLab_branch_hahaha
	note A_, 2
	octave 5
	note D_, 12
	rest 8
	sound_call Music_OaksLab_branch_hahaha
	note A_, 2
	note G_, 12
	rest 8
	sound_call Music_OaksLab_branch_hahaha
	note A_, 2
	octave 5
	note D_, 12
	rest 8
	note E_, 2
	note D_, 1
	rest 1
	note E_, 2
	note D_, 2
	rest 2
	note F#, 2
	note D_, 12
	rest 8
	sound_loop 0, Music_OaksLab_Principal

Music_OaksLab_Ch3::
	note_type 12, 1, 1
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
	note A_, 1
	rest 1

Music_OaksLab_Baixo::
	sound_call Music_OaksLab_branch_AAA
	sound_call Music_OaksLab_branch_AAA
	sound_call Music_OaksLab_branch_AAB
	sound_call Music_OaksLab_branch_AAB
	sound_call Music_OaksLab_branch_AAA
	sound_call Music_OaksLab_branch_AAA
	sound_call Music_OaksLab_branch_AAB
	sound_call Music_OaksLab_branch_AAB
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	octave 3
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_tchau
	sound_call Music_OaksLab_branch_tchau
	sound_call Music_OaksLab_branch_tchau
	sound_call Music_OaksLab_branch_ooo
	sound_call Music_OaksLab_branch_eita
	sound_call Music_OaksLab_branch_eita
	sound_call Music_OaksLab_branch_eita
	sound_call Music_OaksLab_branch_ooo
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_oi
	sound_call Music_OaksLab_branch_dios
	sound_call Music_OaksLab_branch_dios
	sound_call Music_OaksLab_branch_vish
	sound_call Music_OaksLab_branch_vish
	note A_, 1
	rest 3
	octave 4
	note C#, 1
	rest 3
	octave 3
	note B_, 1
	rest 3
	note A_, 1
	rest 3
	sound_loop 0, Music_OaksLab_Baixo

Music_OaksLab_branch_AAA::
	octave 3
	note F#, 1
	rest 1
	octave 4
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_AAB::
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D_, 1
	rest 3
	note D_, 1
	rest 3
	note D_, 1
	rest 1
	octave 3
	note A_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_oi::
	octave 3
	note F#, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_tchau::
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_ret

Music_OaksLab_branch_dios::
	octave 3
	note G_, 1
	rest 1
	octave 4
	note D_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_vish::
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_eita::
	octave 3
	note E_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_ret

Music_OaksLab_branch_ooo::
	octave 3
	note G_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	sound_ret

Music_OaksLab_branch_neee::
	octave 4
	note D_, 2
	note A_, 1
	rest 1
	note A_, 2
	note E_, 2
	rest 2
	note A_, 2
	note F#, 8
	rest 2
	note A_, 1
	rest 1
	note F#, 2
	note G_, 2
	note A_, 2
	rest 2
	note D_, 2
	note A_, 1
	rest 1
	sound_ret

Music_OaksLab_branch_ueueue::
	octave 4
	note A_, 2
	note E_, 2
	rest 2
	note A_, 2
	note F#, 12
	rest 8
	sound_ret

Music_OaksLab_branch_hahaha::
	octave 4
	note A_, 2
	note G_, 1
	rest 1
	note A_, 2
	note F#, 2
	rest 2
	sound_ret

Music_OaksLab_branch_canal1::
	octave 3
	note A_, 4
	octave 4
	note C#, 2
	note D_, 2
	sound_ret

Music_OaksLab_branch_anal2::
	octave 4
	note C#, 1
	note D_, 8
	sound_ret
