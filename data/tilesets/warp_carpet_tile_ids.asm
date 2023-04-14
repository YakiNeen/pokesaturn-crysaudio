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
	warp_carpet_tiles $0B

.FacingUpWarpTiles:
	warp_carpet_tiles

.FacingLeftWarpTiles:
	warp_carpet_tiles

.FacingRightWarpTiles:
	warp_carpet_tiles
