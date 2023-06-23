HandleLedges::
	ld a, [wd736]
	bit 6, a ; already jumping down ledge
	ret nz
	ld a, [wCurMapTileset]
	and a ; OVERWORLD
	ret nz
	predef GetTileAndCoordsInFrontOfPlayer
	ld a, [wSpritePlayerStateData1FacingDirection]
	ld b, a
	lda_coord 8, 9
	ld c, a
	ld a, [wTileInFrontOfPlayer]
	ld d, a
	ld hl, LedgeTiles
.loop
	ld a, [hli]
	cp $ff
	ret z
	cp b
	jr nz, .nextLedgeTile1
	ld a, [hli]
	cp c
	jr nz, .nextLedgeTile2
	ld a, [hli]
	cp d
	jr nz, .nextLedgeTile3
	ld a, [hl]
	ld e, a
	jr .foundMatch
.nextLedgeTile1
	inc hl
.nextLedgeTile2
	inc hl
.nextLedgeTile3
	inc hl
	jr .loop
.foundMatch
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_DOWN
	lda_coord  8, 13
	jr z, .checkCollision
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_LEFT
	lda_coord  4,  9
	jr z, .checkCollision
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_RIGHT
	lda_coord 12,  9
	jr z, .checkCollision
.noCollisionTile
	ldh a, [hJoyHeld]
	and e
	ret z
	push de
	xor a
	ld [hSpriteIndexOrTextID], a
	ld d, $20 ; talking range in pixels (double normal range)
	call IsSpriteInFrontOfPlayer2
	ld a, [hSpriteIndexOrTextID]
	and a ; was there a sprite collision?
	pop de
	ret nz
	ld a, $ff
	ld [wJoyIgnore], a
	ld hl, wd736
	set 6, [hl] ; jumping down ledge
	call StartSimulatingJoypadStates
	ld a, e
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesEnd + 1], a
	ld a, $2
	ld [wSimulatedJoypadStatesIndex], a
	call LoadHoppingShadowOAM
	ld a, SFX_LEDGE
	call PlaySound
	ret
.checkCollision
	cp $05
	jr z, .noCollisionTile
	cp $06
	jr z, .noCollisionTile
	cp $07
	jr z, .noCollisionTile
	cp $08
	jr z, .noCollisionTile
	cp $0A
	jr z, .noCollisionTile
	cp $0B
	jr z, .noCollisionTile
	cp $0C
	jr z, .noCollisionTile
	cp $10
	jr z, .noCollisionTile
	cp $15
	jr z, .noCollisionTile
	ret

INCLUDE "data/tilesets/ledge_tiles.asm"

LoadHoppingShadowOAM:
	ld hl, vChars1 tile $7f
	ld de, LedgeHoppingShadow
	lb bc, BANK(LedgeHoppingShadow), (LedgeHoppingShadowEnd - LedgeHoppingShadow) / $8
	call CopyVideoDataDouble
	ld a, $9
	lb bc, $54, $48 ; b, c = y, x coordinates of shadow
	ld de, LedgeHoppingShadowOAM
	call WriteOAMBlock
	ret

LedgeHoppingShadow:
	INCBIN "gfx/overworld/shadow.1bpp"
LedgeHoppingShadowEnd:

LedgeHoppingShadowOAM:
	dbsprite  2, -1,  0,  7, $ff, OAM_HFLIP
	dbsprite  8, -1,  0,  7, $ff, OAM_HFLIP | OAM_VFLIP
