GetQuantityOfItemInBag:
; In: b = item ID
; Out: b = how many of that item are in the bag
	call GetPredefRegisters
	ld hl, wBagItems - 1
	jr GetQuantityOfItem

GetQuantityOfItemInBox:
; In: b = item ID
; Out: b = how many of that item are in the PC
	call GetPredefRegisters
	ld hl, wNumBoxItems
	;fall through

GetQuantityOfItem:
	inc hl
	ld a, [hli]
	cp $ff
	jr z, .notFound
	cp b
	jr nz, GetQuantityOfItem
	ld a, [hl]
	ld b, a
	ret
.notFound
	ld b, 0
	ret

GetIndexOfItemInBag:
; In: b = item ID
; Out: b = index of item in bag (FF if not)
	call GetPredefRegisters
	ld hl, wBagItems - 1
	ld c, -1
.loop
	inc c
	inc hl
	ld a, [hli]
	cp $ff
	jr z, .notInBag
	cp b
	jr nz, .loop
	ld b, c
	ret
.notInBag
	ld b, a
	ret
