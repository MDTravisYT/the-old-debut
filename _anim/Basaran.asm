; ---------------------------------------------------------------------------
; Animation script - Basaran enemy
; ---------------------------------------------------------------------------
Ani_Bas:	dc.w @still-Ani_Bas
		dc.w @fall-Ani_Bas
		dc.w @fly-Ani_Bas
@still:		dc.b $F, 0, afEnd
		even
@fall:		dc.b $F, 2, afEnd
		even
@fly:		dc.b 3,	3, 4, 3, 2, afEnd
		even