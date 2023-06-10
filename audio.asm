INCLUDE "audio/macros.asm"

SECTION "Sound Effect Headers 1", ROMX

INCLUDE "audio/headers/sfxheaders1.asm"


SECTION "Sound Effect Headers 2", ROMX

INCLUDE "audio/headers/sfxheaders2.asm"


SECTION "Sound Effect Headers 3", ROMX

INCLUDE "audio/headers/sfxheaders3.asm"


SECTION "Sound Effects 1", ROMX

INCLUDE "audio/sfx/start_menu_1.asm"
INCLUDE "audio/sfx/pokeflute.asm"
INCLUDE "audio/sfx/cut_1.asm"
INCLUDE "audio/sfx/go_inside_1.asm"
INCLUDE "audio/sfx/swap_1.asm"
INCLUDE "audio/sfx/tink_1.asm"
INCLUDE "audio/sfx/purchase_1.asm"
INCLUDE "audio/sfx/collision_1.asm"
INCLUDE "audio/sfx/go_outside_1.asm"
INCLUDE "audio/sfx/press_ab_1.asm"
INCLUDE "audio/sfx/save_1.asm"
INCLUDE "audio/sfx/heal_hp_1.asm"
INCLUDE "audio/sfx/poisoned_1.asm"
INCLUDE "audio/sfx/heal_ailment_1.asm"
INCLUDE "audio/sfx/trade_machine_1.asm"
INCLUDE "audio/sfx/turn_on_pc_1.asm"
INCLUDE "audio/sfx/turn_off_pc_1.asm"
INCLUDE "audio/sfx/enter_pc_1.asm"
INCLUDE "audio/sfx/shrink_1.asm"
INCLUDE "audio/sfx/switch_1.asm"
INCLUDE "audio/sfx/healing_machine_1.asm"
INCLUDE "audio/sfx/teleport_exit1_1.asm"
INCLUDE "audio/sfx/teleport_enter1_1.asm"
INCLUDE "audio/sfx/teleport_exit2_1.asm"
INCLUDE "audio/sfx/ledge_1.asm"
INCLUDE "audio/sfx/teleport_enter2_1.asm"
INCLUDE "audio/sfx/fly_1.asm"
INCLUDE "audio/sfx/denied_1.asm"
INCLUDE "audio/sfx/arrow_tiles_1.asm"
INCLUDE "audio/sfx/push_boulder_1.asm"
INCLUDE "audio/sfx/ss_anne_horn_1.asm"
INCLUDE "audio/sfx/withdraw_deposit_1.asm"
INCLUDE "audio/sfx/safari_zone_pa.asm"
INCLUDE "audio/sfx/get_item1_1.asm"
INCLUDE "audio/sfx/pokedex_rating_1.asm"
INCLUDE "audio/sfx/get_item2_1.asm"
INCLUDE "audio/sfx/get_key_item_1.asm"


SECTION "Sound Effects 2", ROMX

INCLUDE "audio/sfx/silph_scope.asm"
INCLUDE "audio/sfx/ball_toss.asm"
INCLUDE "audio/sfx/ball_poof.asm"
INCLUDE "audio/sfx/faint_thud.asm"
INCLUDE "audio/sfx/run.asm"
INCLUDE "audio/sfx/dex_page_added.asm"
INCLUDE "audio/sfx/peck.asm"
INCLUDE "audio/sfx/faint_fall.asm"
INCLUDE "audio/sfx/battle_09.asm"
INCLUDE "audio/sfx/pound.asm"
INCLUDE "audio/sfx/battle_0b.asm"
INCLUDE "audio/sfx/battle_0c.asm"
INCLUDE "audio/sfx/battle_0d.asm"
INCLUDE "audio/sfx/battle_0e.asm"
INCLUDE "audio/sfx/battle_0f.asm"
INCLUDE "audio/sfx/damage.asm"
INCLUDE "audio/sfx/not_very_effective.asm"
INCLUDE "audio/sfx/battle_12.asm"
INCLUDE "audio/sfx/battle_13.asm"
INCLUDE "audio/sfx/battle_14.asm"
INCLUDE "audio/sfx/vine_whip.asm"
INCLUDE "audio/sfx/battle_17.asm"
INCLUDE "audio/sfx/battle_18.asm"
INCLUDE "audio/sfx/battle_19.asm"
INCLUDE "audio/sfx/super_effective.asm"
INCLUDE "audio/sfx/battle_1b.asm"
INCLUDE "audio/sfx/battle_1c.asm"
INCLUDE "audio/sfx/doubleslap.asm"
INCLUDE "audio/sfx/battle_1e.asm"
INCLUDE "audio/sfx/horn_drill.asm"
INCLUDE "audio/sfx/battle_20.asm"
INCLUDE "audio/sfx/battle_21.asm"
INCLUDE "audio/sfx/battle_22.asm"
INCLUDE "audio/sfx/battle_23.asm"
INCLUDE "audio/sfx/battle_24.asm"
INCLUDE "audio/sfx/battle_25.asm"
INCLUDE "audio/sfx/battle_26.asm"
INCLUDE "audio/sfx/battle_27.asm"
INCLUDE "audio/sfx/battle_28.asm"
INCLUDE "audio/sfx/battle_29.asm"
INCLUDE "audio/sfx/battle_2a.asm"
INCLUDE "audio/sfx/battle_2b.asm"
INCLUDE "audio/sfx/battle_2c.asm"
INCLUDE "audio/sfx/psybeam.asm"
INCLUDE "audio/sfx/battle_2e.asm"
INCLUDE "audio/sfx/battle_2f.asm"
INCLUDE "audio/sfx/psychic_m.asm"
INCLUDE "audio/sfx/battle_31.asm"
INCLUDE "audio/sfx/battle_32.asm"
INCLUDE "audio/sfx/battle_33.asm"
INCLUDE "audio/sfx/battle_34.asm"
INCLUDE "audio/sfx/battle_35.asm"
INCLUDE "audio/sfx/battle_36.asm"
INCLUDE "audio/sfx/level_up.asm"
INCLUDE "audio/sfx/caught_mon.asm"
INCLUDE "audio/sfx/pokeflute_ch5_ch6.asm"
INCLUDE "audio/sfx/pokeflute_ch7.asm"


SECTION "Sound Effects 3", ROMX

INCLUDE "audio/sfx/intro_crash.asm"
INCLUDE "audio/sfx/intro_whoosh.asm"
INCLUDE "audio/sfx/slots_stop_wheel.asm"
INCLUDE "audio/sfx/slots_reward.asm"
INCLUDE "audio/sfx/slots_new_spin.asm"
INCLUDE "audio/sfx/get_badge.asm"
INCLUDE "audio/sfx/get_tm.asm"
INCLUDE "audio/sfx/intro.asm"


SECTION "Music Routines", ROMX

INCLUDE "audio/play_battle_music.asm"
INCLUDE "audio/pokedex_rating_sfx.asm"


SECTION "Audio Engine", ROMX

INCLUDE "audio/engine.asm"
INCLUDE "audio/nothing.asm"
INCLUDE "audio/music_pointers.asm"
INCLUDE "audio/cry_pointers.asm"
INCLUDE "audio/sfx_pointers.asm"


SECTION "Songs 1", ROMX

INCLUDE "audio/music/0title_screen.asm"

INCLUDE "audio/music/meet_prof.asm"
INCLUDE "audio/music/follow_me.asm"

INCLUDE "audio/music/safari_zone.asm"

INCLUDE "audio/music/mon_centro.asm"
INCLUDE "audio/music/mon_loja.asm"

INCLUDE "audio/music/dungeon0.asm"
INCLUDE "audio/music/dungeon1.asm"
INCLUDE "audio/music/dungeon2.asm"
INCLUDE "audio/music/dungeon3.asm"
INCLUDE "audio/music/dungeon4.asm"
INCLUDE "audio/music/dungeon5.asm"
INCLUDE "audio/music/dungeon6.asm"

INCLUDE "audio/music/routes0.asm"
INCLUDE "audio/music/routes1.asm"
INCLUDE "audio/music/routes2.asm"
INCLUDE "audio/music/routes3.asm"
INCLUDE "audio/music/routes4.asm"
INCLUDE "audio/music/routes5.asm"

INCLUDE "audio/music/town0.asm"
INCLUDE "audio/music/town1.asm"
INCLUDE "audio/music/town2.asm"
INCLUDE "audio/music/town3.asm"
INCLUDE "audio/music/town4.asm"
INCLUDE "audio/music/town5.asm"
INCLUDE "audio/music/town6.asm"
INCLUDE "audio/music/town7.asm"
INCLUDE "audio/music/town8.asm"
INCLUDE "audio/music/town9.asm"


SECTION "Songs 2", ROMX

INCLUDE "audio/music/battle_0wild_mon.asm"
INCLUDE "audio/music/battle_1trainer.asm"
INCLUDE "audio/music/battle_2gym_leader.asm"
INCLUDE "audio/music/battle_3elite_four.asm"
INCLUDE "audio/music/battle_4champion.asm"

INCLUDE "audio/music/defeated_0wild_mon.asm"
INCLUDE "audio/music/defeated_1trainer.asm"
INCLUDE "audio/music/defeated_2gym_leader.asm"

INCLUDE "audio/music/rivals_theme.asm"

INCLUDE "audio/music/meet_male_trainer.asm"
INCLUDE "audio/music/meet_female_trainer.asm"
INCLUDE "audio/music/meet_evil_trainer.asm"


SECTION "Songs 3", ROMX

INCLUDE "audio/music/riding_bike.asm"
INCLUDE "audio/music/surf_theme.asm"

INCLUDE "audio/music/game_corner.asm"
INCLUDE "audio/music/profs_lab.asm"

INCLUDE "audio/music/gym_theme.asm"
INCLUDE "audio/music/hall_of_fame.asm"

INCLUDE "audio/music/staff_roll.asm"

INCLUDE "audio/music/jigglypuffs_song.asm"
INCLUDE "audio/music/pkmnhealed_1.asm"
INCLUDE "audio/music/pkmnhealed_2.asm"


SECTION "Cries", ROMX

INCLUDE "audio/cry_headers.asm"
INCLUDE "audio/cries.asm"
