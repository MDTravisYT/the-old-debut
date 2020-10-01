; ---------------------------------------------------------------------------
; Animation script - Basaran enemy
; ---------------------------------------------------------------------------
Ani_Bas:	dc.w @still-Ani_Bas
		dc.w @fall-Ani_Bas
		dc.w @fly-Ani_Bas
@still:		dc.b $F, 0, afEnd
		even
@fall:		dc.b $F, 1, afEnd
		even
@fly:		dc.b 3,	1, 2, 6, 5, 7, 8, 6, 5, afEnd ; 2 frames in, go down. if down all the way go up.
		even