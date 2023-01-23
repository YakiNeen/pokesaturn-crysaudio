; display "[player] VS [enemy]" text box with pokeballs representing their parties next to the names
DisplayLinkBattleVersusTextBox:
	call LoadTextBoxTilePatterns
	ld de, VS_Tiles
	ld hl, vChars1 tile $42
	lb bc, BANK(VS_Tiles), (VS_TilesEnd - VS_Tiles) / $8
	call CopyVideoDataDouble
	hlcoord 3, 4
	ld b, 7
	ld c, 12
	call TextBoxBorder
	hlcoord 4, 5
	ld de, wPlayerName
	call PlaceString
	hlcoord 4, 10
	ld de, wLinkEnemyTrainerName
	call PlaceString
; place bold "VS" tiles between the names
	hlcoord 9, 8
	ld a, $c2
	ld [hli], a
	ld [hl], $c3
	xor a
	ld [wUpdateSpritesEnabled], a
	callfar SetupPlayerAndEnemyPokeballs
	ld c, 150
	jp DelayFrames

VS_Tiles:
	INCBIN "gfx/font/VS.1bpp"
VS_TilesEnd:
