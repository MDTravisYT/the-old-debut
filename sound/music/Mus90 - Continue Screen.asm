; -------------------------------------------------------
; File created using XM4SMPS v4.1-beta (Qt 3.2.1 Win32)
; Created on Thu Aug 6 2020, 12:02:32
; -------------------------------------------------------

MusContinueScreen_Header:
	smpsHeaderVoice	MusContinueScreen_Voices
	smpsHeaderChan	4,2
	smpsHeaderTempo	$2, $2
	smpsHeaderDAC	MusContinueScreen_DAC
	smpsHeaderFM	MusContinueScreen_FM1,	$0, $10
	smpsHeaderFM	MusContinueScreen_FM2,	$0, $10
	smpsHeaderFM	MusContinueScreen_FM3,	$0, $10
	smpsHeaderPSG	MusContinueScreen_PSG1,	$dc, $4, $0
	smpsHeaderPSG	MusContinueScreen_PSG2,	$dc, $4, $0

MusContinueScreen_FM1:
	smpsCall	MusContinueScreen_FM1_p0
	smpsStop

MusContinueScreen_FM2:
	smpsCall	MusContinueScreen_FM2_p0
	smpsStop

MusContinueScreen_FM3:
	smpsCall	MusContinueScreen_FM3_p0
	smpsStop

MusContinueScreen_PSG1:
	smpsCall	MusContinueScreen_PSG1_p0
	smpsStop

MusContinueScreen_PSG2:
	smpsCall	MusContinueScreen_PSG2_p0
	smpsStop

MusContinueScreen_DAC:
	smpsCall	MusContinueScreen_DAC_p0
	smpsStop


; Pattern data for FM1
MusContinueScreen_FM1_p0:
	smpsFMvoice	$0
	dc.b		$be,$5
	dc.b		$80,$3
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$9d,$5
	dc.b		$80,$3
	dc.b		$a2,$6
	dc.b		$80,$2
	dc.b		$9d,$6
	dc.b		$80,$2
	dc.b		$a0,$5
	dc.b		$bf,$3
	dc.b		$c6,$18
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM2
MusContinueScreen_FM2_p0:
	smpsFMvoice	$0
	dc.b		$ba,$5
	dc.b		$bc,$1
	dc.b		$80,$2
	dc.b		$c1,$8
	dc.b		$be,$4
	dc.b		$ca,$1
	dc.b		$ba,$3
	dc.b		$c1,$8
	dc.b		$c6
	dc.b		$c4,$2
	dc.b		$c3,$4
	dc.b		$80,$2
	dc.b		$9b,$6
	dc.b		$80,$2
	dc.b		$a0,$10
	dc.b		$80,$1
	smpsReturn

; Pattern data for FM3
MusContinueScreen_FM3_p0:
	dc.b		$e7,$8
	smpsFMvoice	$0
	dc.b		$be
	dc.b		$ba
	dc.b		$be
	dc.b		$c1
	dc.b		$bf
	dc.b		$c1,$19
	smpsReturn

; Pattern data for PSG1
MusContinueScreen_PSG1_p0:
	dc.b		$e7,$8
	smpsPSGvoice	$0
	dc.b		$cd,$2
	dc.b		$cb
	dc.b		$ca,$4
	dc.b		$cd,$2
	dc.b		$cb,$4
	dc.b		$c8,$2
	dc.b		$cd
	dc.b		$cb
	dc.b		$ca,$4
	dc.b		$cd,$2
	dc.b		$cb
	dc.b		$ca,$4
	dc.b		$cd,$2
	dc.b		$cb
	dc.b		$ca,$4
	dc.b		$ce,$2
	dc.b		$cc
	dc.b		$cb,$4
	dc.b		$ce,$2
	dc.b		$cc
	dc.b		$cb
	dc.b		$c9
	dc.b		$cf
	dc.b		$cd
	dc.b		$cc
	dc.b		$ca,$3
	smpsReturn

; Pattern data for PSG2
MusContinueScreen_PSG2_p0:
	dc.b		$e7,$5
	smpsPSGvoice	$0
	dc.b		$bf,$3
	dc.b		$80,$6
	dc.b		$c8,$2
	dc.b		$80,$5
	dc.b		$be,$3
	dc.b		$80,$6
	dc.b		$c8,$2
	dc.b		$80,$6
	dc.b		$c8,$2
	dc.b		$80,$6
	dc.b		$c8,$2
	dc.b		$80,$6
	dc.b		$c8,$2
	dc.b		$80,$11
	smpsReturn

; Pattern data for DAC
MusContinueScreen_DAC_p0:
	dc.b		$81,$8
	dc.b		$81
	dc.b		$82,$2
	dc.b		$82
	dc.b		$82
	dc.b		$82
	dc.b		$82,$4
	dc.b		$82
	dc.b		$81,$8
	dc.b		$9
	dc.b		$88,$4
	dc.b		$89
	dc.b		$88
	dc.b		$89
	dc.b		$88
	dc.b		$89
	smpsReturn

MusContinueScreen_Voices:
	dc.b	$3a,$1,$7,$1,$1,$8e,$8e,$8d,$53,$e,$e,$e,$3,$0,$0,$0
	dc.b	$0,$1f,$ff,$1f,$f,$18,$28,$27,$80	; Voice 0 (Voice 2 ripped from Mus90 - Continue Screen.bin)
	even
