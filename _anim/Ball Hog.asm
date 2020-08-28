; ---------------------------------------------------------------------------
; Animation script - doors (SBZ)
; ---------------------------------------------------------------------------
Ani_Hog:	dc.w @stand-Ani_Hog, @standslope-Ani_Hog, @standsloperev-Ani_Hog
		dc.w @walk-Ani_Hog, @walkslope-Ani_Hog, @walksloperev-Ani_Hog
		dc.w @firing-Ani_Hog, @ball-Ani_Hog
@stand:		dc.b $F, 0, afEnd
		even
@standslope:	dc.b $F, 0, afEnd
		even
@standsloperev:	dc.b $F, 0, afEnd
		even
@walk:		dc.b $F, 1, $2, afEnd
		even
@walkslope:	dc.b $F, 1, $2, afEnd
		even
@walksloperev:	dc.b $F, 1, $2, afEnd
		even
@firing:	dc.b $F, 3, afEnd
		even
@ball:		dc.b 1,	4, 5, afEnd
		even