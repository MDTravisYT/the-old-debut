; ---------------------------------------------------------------------------
; Subroutine allowing Sonic to jump
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Sonic_Jump:
		move.b	(v_jpadpress2).w,d0
		andi.b	#btnABC,d0	; is A, B or C pressed?
		beq.w	locret_1348F	; if not, branch
		moveq	#0,d0
		move.b	obAngle(a0),d0
		addi.b	#$80,d0
		bsr.w	sub_14D48
		cmpi.w	#6,d1
		blt.w	locret_1348F
		move.w	#$680,d2
		btst	#6,obStatus(a0)
		beq.s	loc_1341C
		move.w	#$380,d2

loc_1341C:
		moveq	#0,d0
		move.b	obAngle(a0),d0
		subi.b	#$40,d0
		jsr	(CalcSine).l
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,obVelX(a0)	; make Sonic jump
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,obVelY(a0)	; make Sonic jump
		bset	#1,obStatus(a0)
		bclr	#5,obStatus(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)
		sfx	sfx_Jump,0,0,0	; play jumping sound
		move.b	#$13,obHeight(a0)
		move.b	#9,obWidth(a0)
		btst	#2,obStatus(a0)
		bne.s	loc_13490
;		move.b	#$E,obHeight(a0)
;		move.b	#7,obWidth(a0)
Result_Check:
        tst.b   ($FFFFF5C0).w ; Has the victory animation flag been set?
        beq.s   NormalJump ; If not, branch
        move.b  #$13,$1C(a0) ; Play the victory animation
        bra.s   cont ; Continue
NormalJump:
        move.b  #$1F,$1C(a0)    ; use "jumping"    animation
cont:
		
locret_1348F:
		rts	
; ===========================================================================

loc_13490:
		bset	#4,obStatus(a0)
		rts	
;Doublejumpup:
;		move.b	(v_jpadpress2).w,d0
;		andi.b	#btnABC,d0	; is A, B or C pressed?
;        move.b  #$20,$1C(a0)    ; use "jumping"    animation
;		sfx	sfx_Skid,0,0,0	; play jumping sound
;		rts
; End of function Sonic_Jump