MACRO pic_money
	dw \1
	bcd3 \2
ENDM

TrainerPicAndMoneyPointers::
	table_width 5, TrainerPicAndMoneyPointers
	; pic pointer, base reward money
	; money received after battle = base money × level of last enemy mon
	pic_money BeautyPic,       7000
	pic_money BikerPic,        2000
	pic_money BirdKeeperPic,   2500
	pic_money BlackBeltPic,    2500
	pic_money BugCatcherPic,   1000
	pic_money BurglarPic,      9000
	pic_money ChannelerPic,    3000
	pic_money CoolTrainerFPic, 3500
	pic_money CoolTrainerMPic, 3500
	pic_money CueBallPic,      2500
	pic_money EngineerPic,     5000
	pic_money FisherManPic,    3500
	pic_money GamblerPic,      7000
	pic_money GentlemanPic,    7000
	pic_money HikerPic,        3500
	pic_money JrTrainerFPic,   2000
	pic_money JrTrainerMPic,   2000
	pic_money JugglerPic,      3500
	pic_money LassPic,         1500
	pic_money PokeManiacPic,   5000
	pic_money PsychicPic,      1000
	pic_money RockerPic,       2500
	pic_money SailorPic,       3000
	pic_money ScientistPic,    5000
	pic_money SuperNerdPic,    2500
	pic_money SwimmerPic,       500
	pic_money TamerPic,        4000
	pic_money YoungsterPic,    1500
	pic_money EvilGruntPic,    3000
	pic_money EvilBossPic,     9900
	pic_money GymLeader1Pic,   9900
	pic_money GymLeader2Pic,   9900
	pic_money GymLeader3Pic,   9900
	pic_money GymLeader4Pic,   9900
	pic_money GymLeader5Pic,   9900
	pic_money GymLeader6Pic,   9900
	pic_money GymLeader7Pic,   9900
	pic_money GymLeader8Pic,   9900
	pic_money EliteFour1Pic,   9900
	pic_money EliteFour2Pic,   9900
	pic_money EliteFour3Pic,   9900
	pic_money EliteFour4Pic,   9900
	pic_money Rival1Pic,       3500
	pic_money Rival2Pic,       6500
	pic_money Rival3Pic,       9900
	pic_money SwimmerFPic,      500
	pic_money LittleGirlPic,    500
	pic_money OfficerPic,      3500
	pic_money DojoLeaderPic,   2500
	pic_money ProfessorPic,       0
	assert_table_length NUM_TRAINERS
