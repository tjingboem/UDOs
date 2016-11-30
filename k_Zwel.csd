
<CsoundSynthesizer>
<CsInstruments>

sr=48000
ksmps=128
nchnls=2
0dbfs=1

	opcode k_Zwel,k,iii

iOnSwell,iposition, isw xin

if iOnSwell == 1 then                                              ; switch Swell on/off
        irise  = p3 * iposition                                    ; iposition = 0<p3<1
        ifall = p3 - irise
        kswell linseg 0, irise, isw , ifall, 0                     ; isw = amount of swell
endif
;print iOnSwell
	xout kswell


	endop

	instr 1

kswell  k_Zwel  p4, .5, .5             ; out    k_Zwel  switch, p3_position, amount
kamp    =   .5 + kswell
asig    poscil kamp , 400
printk2 kamp
        outs asig, asig
	endin

</CsInstruments>
<CsScore>

i1	0	1	0		; no swell
i1	2	1	1		; with swell
e

</CsScore>
</CsoundSynthesizer>
