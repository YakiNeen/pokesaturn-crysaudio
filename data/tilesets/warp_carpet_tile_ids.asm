WarpTileListPointers:
	dw .FacingDownWarpTiles
	dw .FacingUpWarpTiles
	dw .FacingLeftWarpTiles
	dw .FacingRightWarpTiles

MACRO warp_carpet_tiles
	IF _NARG
		db \# ; all args
	ENDC
	db -1 ; end
ENDM

.FacingDownWarpTiles:
	warp_carpet_tiles $01, $03, $09, $3B, $56

.FacingUpWarpTiles:
	warp_carpet_tiles $03

.FacingLeftWarpTiles:
	warp_carpet_tiles $03, $2E, $43

.FacingRightWarpTiles:
	warp_carpet_tiles $03, $1D, $2D
