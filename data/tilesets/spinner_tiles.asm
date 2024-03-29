MACRO spinner
; \1: source
; \2: offset (BANK() chokes on literals)
; \3: dest
	dw \1 tile \2
	db 1
	db BANK(\1)
	dw vTileset tile \3
ENDM

FacilitySpinnerArrows:
	spinner SpinnerArrowAnimTiles, 0,   $20
	spinner SpinnerArrowAnimTiles, 1,   $21
	spinner SpinnerArrowAnimTiles, 2,   $30
	spinner SpinnerArrowAnimTiles, 3,   $31
	spinner House1_GFX,            $20, $20
	spinner House1_GFX,            $21, $21
	spinner House1_GFX,            $30, $30
	spinner House1_GFX,            $31, $31

GymSpinnerArrows:
	spinner SpinnerArrowAnimTiles, 1,   $3c
	spinner SpinnerArrowAnimTiles, 3,   $3d
	spinner SpinnerArrowAnimTiles, 0,   $4c
	spinner SpinnerArrowAnimTiles, 2,   $4d
	spinner House2_GFX,            $3c, $3c
	spinner House2_GFX,            $3d, $3d
	spinner House2_GFX,            $4c, $4c
	spinner House2_GFX,            $4d, $4d
