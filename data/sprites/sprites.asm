MACRO overworld_sprite
	dw \1
	db \2 tiles
	db BANK(\1)
ENDM

SpriteSheetPointerTable:
	table_width 4, SpriteSheetPointerTable
	; graphics, tile count
	overworld_sprite AaSprite, 12               ; SPRITE_AA
	overworld_sprite AbSprite, 12               ; SPRITE_AB

	overworld_sprite BaSprite, 12               ; SPRITE_BA

	overworld_sprite AaBikeSprite, 12           ; SPRITE_AA_BIKE
	overworld_sprite AbBikeSprite, 12           ; SPRITE_AB_BIKE

	overworld_sprite Barman1Sprite, 12          ; SPRITE_BARMAN1
	overworld_sprite Barman2Sprite, 12          ; SPRITE_BARMAN2
	overworld_sprite BrunetteGirlSprite, 12     ; SPRITE_BRUNETTE_GIRL
	overworld_sprite CaptainSprite, 12          ; SPRITE_CAPTAIN
	overworld_sprite CookSprite, 12             ; SPRITE_COOK
	overworld_sprite DanpeiSprite, 12           ; SPRITE_DANPEI
	overworld_sprite FatManSprite, 12           ; SPRITE_FAT_MAN
	overworld_sprite FishingGuruSprite, 12      ; SPRITE_FISHING_GURU
	overworld_sprite GameBoyFSprite, 12         ; SPRITE_GAME_BOY_F
	overworld_sprite GameBoyMSprite, 12         ; SPRITE_GAME_BOY_M
	overworld_sprite GrampsSprite, 12           ; SPRITE_GRAMPS
	overworld_sprite GrandmaSprite, 12          ; SPRITE_GRANDMA
	overworld_sprite ManSprite, 12              ; SPRITE_MAN
	overworld_sprite MiddleAgedManSprite, 12    ; SPRITE_MIDDLE_AGED_MAN
	overworld_sprite MiddleAgedWomanSprite, 12  ; SPRITE_MIDDLE_AGED_WOMAN

	overworld_sprite NurseSprite, 12            ; SPRITE_NURSE
	overworld_sprite OfficerSprite, 12          ; SPRITE_OFFICER

	overworld_sprite SatoshiSprite, 12          ; SPRITE_SATOSHI
	overworld_sprite Special1Sprite, 12         ; SPRITE_SPECIAL1
	overworld_sprite Special2Sprite, 12         ; SPRITE_SPECIAL2
	overworld_sprite Special4Sprite, 12         ; SPRITE_SPECIAL4
	overworld_sprite Special7Sprite, 12         ; SPRITE_SPECIAL7

	overworld_sprite SuperNerd1Sprite, 12       ; SPRITE_SUPER_NERD1
	overworld_sprite SuperNerd2Sprite, 12       ; SPRITE_SUPER_NERD2
	overworld_sprite WomanSprite, 12            ; SPRITE_WOMAN
	overworld_sprite Youngster2Sprite, 12       ; SPRITE_YOUNGSTER2

	overworld_sprite ZoneWorkerSprite, 12       ; SPRITE_ZONE_WORKER

	overworld_sprite BeautySprite, 12           ; SPRITE_BEAUTY
	overworld_sprite BikerSprite, 12            ; SPRITE_BIKER
	overworld_sprite BirdKeeperFSprite, 12      ; SPRITE_BIRD_KEEPER_F
	overworld_sprite BirdKeeperMSprite, 12      ; SPRITE_BIRD_KEEPER_M
	overworld_sprite BlackBeltFSprite, 12       ; SPRITE_BLACKBELT_F
	overworld_sprite BlackBeltMSprite, 12       ; SPRITE_BLACKBELT_M
	overworld_sprite BugCatcherFSprite, 12      ; SPRITE_BUG_CATCHER_F
	overworld_sprite BugCatcherMSprite, 12      ; SPRITE_BUG_CATCHER_M
	overworld_sprite BurglarSprite, 12          ; SPRITE_BURGLAR
	overworld_sprite ChannelerSprite, 12        ; SPRITE_CHANNELER
	overworld_sprite CoolTrainerFSprite, 12     ; SPRITE_COOLTRAINER_F
	overworld_sprite CoolTrainerMSprite, 12     ; SPRITE_COOLTRAINER_M
	overworld_sprite CueBallSprite, 12          ; SPRITE_CUE_BALL
	overworld_sprite DelinquentSprite, 12       ; SPRITE_DELINQUENT
	overworld_sprite EngineerSprite, 12         ; SPRITE_ENGINEER
	overworld_sprite FisherSprite, 12           ; SPRITE_FISHER
	overworld_sprite GamblerSprite, 12          ; SPRITE_GAMBLER
	overworld_sprite GentlemanSprite, 12        ; SPRITE_GENTLEMAN
	overworld_sprite HikerSprite, 12            ; SPRITE_HIKER
	overworld_sprite JrTrainerFSprite, 12       ; SPRITE_JR_TRAINER_F
	overworld_sprite JrTrainerMSprite, 12       ; SPRITE_JR_TRAINER_M
	overworld_sprite JugglerSprite, 12          ; SPRITE_JUGGLER
	overworld_sprite KimonoGirlSprite, 12       ; SPRITE_KIMONO_GIRL
	overworld_sprite LassSprite, 12             ; SPRITE_LASS
	overworld_sprite LittleBoySprite, 12        ; SPRITE_LITTLE_BOY
	overworld_sprite LittleGirlSprite, 12       ; SPRITE_LITTLE_GIRL
	overworld_sprite PokeManiacFSprite, 12      ; SPRITE_POKEMANIAC_F
	overworld_sprite PokeManiacMSprite, 12      ; SPRITE_POKEMANIAC_M
	overworld_sprite PsychicFSprite, 12         ; SPRITE_PSYCHIC_F
	overworld_sprite PsychicMSprite, 12         ; SPRITE_PSYCHIC_M
	overworld_sprite RockerSprite, 12           ; SPRITE_ROCKER
	overworld_sprite SailorSprite, 12           ; SPRITE_SAILOR
	overworld_sprite ScientistFSprite, 12       ; SPRITE_SCIENTIST_F
	overworld_sprite ScientistMSprite, 12       ; SPRITE_SCIENTIST_M
	overworld_sprite SuperNerd3Sprite, 12       ; SPRITE_SUPER_NERD3
	overworld_sprite SwimmerFSprite, 12         ; SPRITE_SWIMMER_F
	overworld_sprite SwimmerMSprite, 12         ; SPRITE_SWIMMER_M
	overworld_sprite TamerSprite, 12            ; SPRITE_TAMER
	overworld_sprite Youngster1Sprite, 12       ; SPRITE_YOUNGSTER1

	overworld_sprite VermelhoSprite, 12         ; SPRITE_VERMELHO
	overworld_sprite AzulSprite, 12             ; SPRITE_AZUL
	overworld_sprite VerdeSprite, 12            ; SPRITE_VERDE

	overworld_sprite EvilGruntFSprite, 12       ; SPRITE_EVIL_GRUNT_F
	overworld_sprite EvilGruntMSprite, 12       ; SPRITE_EVIL_GRUNT_M
	overworld_sprite EvilBossSprite, 12         ; SPRITE_EVIL_BOSS

	overworld_sprite DojoLeaderSprite, 12       ; SPRITE_DOJO_LEADER

	overworld_sprite GymLeader1Sprite, 12       ; SPRITE_GYM_LEADER1
	overworld_sprite GymLeader2Sprite, 12       ; SPRITE_GYM_LEADER2
	overworld_sprite GymLeader3Sprite, 12       ; SPRITE_GYM_LEADER3
	overworld_sprite GymLeader4Sprite, 12       ; SPRITE_GYM_LEADER4
	overworld_sprite GymLeader5Sprite, 12       ; SPRITE_GYM_LEADER5
	overworld_sprite GymLeader6Sprite, 12       ; SPRITE_GYM_LEADER6
	overworld_sprite GymLeader7Sprite, 12       ; SPRITE_GYM_LEADER7
	overworld_sprite GymLeader8Sprite, 12       ; SPRITE_GYM_LEADER8

	overworld_sprite EliteFour1Sprite, 12       ; SPRITE_ELITE_FOUR1
	overworld_sprite EliteFour2Sprite, 12       ; SPRITE_ELITE_FOUR2
	overworld_sprite EliteFour3Sprite, 12       ; SPRITE_ELITE_FOUR3
	overworld_sprite EliteFour4Sprite, 12       ; SPRITE_ELITE_FOUR4

	overworld_sprite ArticunoSprite, 12         ; SPRITE_ARTICUNO
	overworld_sprite BirdSprite, 12             ; SPRITE_BIRD
	overworld_sprite ChanseySprite, 12          ; SPRITE_CHANSEY
	overworld_sprite ClefairySprite, 12         ; SPRITE_CLEFAIRY
	overworld_sprite CuboneSprite, 12           ; SPRITE_CUBONE
	overworld_sprite DoduoSprite, 12            ; SPRITE_DODUO
	overworld_sprite FearowSprite, 12           ; SPRITE_FEAROW
	overworld_sprite HoohSprite, 12             ; SPRITE_HOOH
	overworld_sprite JigglypuffSprite, 12       ; SPRITE_JIGGLYPUFF
	overworld_sprite KangaskhanSprite, 12       ; SPRITE_KANGASKHAN
	overworld_sprite LaprasSprite, 12           ; SPRITE_LAPRAS
	overworld_sprite MachokeSprite, 12          ; SPRITE_MACHOKE
	overworld_sprite MachopSprite, 12           ; SPRITE_MACHOP
	overworld_sprite MeowthSprite, 12           ; SPRITE_MEOWTH
	overworld_sprite MewtwoSprite, 12           ; SPRITE_MEWTWO
	overworld_sprite MoltresSprite, 12          ; SPRITE_MOLTRES
	overworld_sprite NidoranFSprite, 12         ; SPRITE_NIDORAN_F
	overworld_sprite NidoranMSprite, 12         ; SPRITE_NIDORAN_M
	overworld_sprite NidorinoSprite, 12         ; SPRITE_NIDORINO
	overworld_sprite PidgeotSprite, 12          ; SPRITE_PIDGEOT
	overworld_sprite PidgeySprite, 12           ; SPRITE_PIDGET
	overworld_sprite PikachuSprite, 12          ; SPRITE_PIKACHU
	overworld_sprite PoliwrathSprite, 12        ; SPRITE_POLIWRATH
	overworld_sprite PsyduckSprite, 12          ; SPRITE_PSYDUCK
	overworld_sprite RhydonSprite, 12           ; SPRITE_RHYDON
	overworld_sprite SeelSprite, 12             ; SPRITE_SEEL
	overworld_sprite SpearowSprite, 12          ; SPRITE_SPEAROW
	overworld_sprite VoltorbSprite, 12          ; SPRITE_VOLTORB
	overworld_sprite WigglytuffSprite, 12       ; SPRITE_WIGGLYTUFF
	overworld_sprite ZapdosSprite, 12           ; SPRITE_ZAPDOS

; FIRST_STILL_SPRITE

	overworld_sprite BookSprite, 4              ; SPRITE_BOOK

	overworld_sprite BoulderSprite, 4           ; SPRITE_BOULDER

	overworld_sprite Fossil1Sprite, 4           ; SPRITE_FOSSIL1

	overworld_sprite PokeBallSprite, 4          ; SPRITE_POKE_BALL
	overworld_sprite PokedexSprite, 4           ; SPRITE_POKEDEX

	overworld_sprite ReceptionistSprite, 4      ; SPRITE_RECEPTIONIST

	overworld_sprite SlowpokeSprite, 4          ; SPRITE_SLOWPOKE
	overworld_sprite SnorlaxSprite, 4           ; SPRITE_SNORLAX

	assert_table_length NUM_SPRITES
