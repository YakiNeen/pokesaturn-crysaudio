; FORMAT: tileset number, tile 1, tile 2
; terminated by -1
; these entries indicate that the player may not cross between tile 1 and tile 2
; it's mainly used to simulate differences in elevation

TilePairCollisionsLand::

	db OVERWORLD, $05, $09
	db OVERWORLD, $06, $09
	db OVERWORLD, $07, $09
	db OVERWORLD, $08, $09
	db OVERWORLD, $0A, $09
	db OVERWORLD, $0B, $09
	db OVERWORLD, $0C, $09
	db OVERWORLD, $10, $09
	db OVERWORLD, $15, $09

	db OVERWORLD, $09, $05
	db OVERWORLD, $09, $06
	db OVERWORLD, $09, $07
	db OVERWORLD, $09, $08
	db OVERWORLD, $09, $0A
	db OVERWORLD, $09, $0B
	db OVERWORLD, $09, $0C
	db OVERWORLD, $09, $10
	db OVERWORLD, $09, $15

	db CAVERN,    $06, $09
	db CAVERN,    $08, $09
	db CAVERN,    $0B, $09
	db CAVERN,    $0F, $09
	db CAVERN,    $10, $09
	db CAVERN,    $11, $09
	db CAVERN,    $14, $09

	db CAVERN,    $06, $05
	db CAVERN,    $08, $05
	db CAVERN,    $0B, $05
	db CAVERN,    $0F, $05
	db CAVERN,    $10, $05
	db CAVERN,    $11, $05
	db CAVERN,    $14, $05

	db CAVERN,    $09, $05

	db CAVERN,    $09, $06
	db CAVERN,    $09, $08
	db CAVERN,    $09, $0B
	db CAVERN,    $09, $0F
	db CAVERN,    $09, $10
	db CAVERN,    $09, $11
	db CAVERN,    $09, $14

	db CAVERN,    $05, $09

	db CAVERN,    $05, $06
	db CAVERN,    $05, $08
	db CAVERN,    $05, $0B
	db CAVERN,    $05, $0F
	db CAVERN,    $05, $10
	db CAVERN,    $05, $11
	db CAVERN,    $05, $14

	db -1 ; end

TilePairCollisionsWater::

	db OVERWORLD, $04, $09
	db OVERWORLD, $47, $09
	db OVERWORLD, $65, $09
	db OVERWORLD, $76, $09

	db OVERWORLD, $09, $04
	db OVERWORLD, $09, $47
	db OVERWORLD, $09, $65
	db OVERWORLD, $09, $76

	db CAVERN,    $04, $09

	db -1 ; end
