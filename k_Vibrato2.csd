<CsoundSynthesizer>
<CsInstruments>

sr=48000
ksmps=128
nchnls=2
0dbfs=1

	opcode k_Vibrato2,k,iKKKiKK

iOnVibrato, kvibdelay, kdepth, kspeed, itype, kjitdepth, kjitfreq xin

if iOnVibrato == 1 then                                                         ; if switch = ON, add vibrato to sall voices
        kdp linseg 0, p3 * i(kvibdelay), i(kdepth)                              ; delay time before vibrato
        kvb  lfo kdp, kspeed, itype                                             ; LFO 0-5
        kjit randi kjitdepth, kjitfreq                                          ; create some jitter
        kvibrato = kvb + kjit                                                   ; add jitter and LFO
else
        kvibrato = 0                                                            ; if switch = OFF, there is no vibrato
endif
        xout kvibrato
	endop


	instr 1
kvib    k_Vibrato2  p4, .5, 10, 6, 1, p5, 10
printk2 kvib
asig    poscil 1 , 400 + kvib							; add vibrato
        outs asig, asig
	endin

</CsInstruments>
<CsScore>

i1	0	2	0	0	; no vibrato
i1	3	7	1	0	; vibrato with delay
i1	11	7	1	10	; vibrato with delay and jitter
e

</CsScore>
</CsoundSynthesizer>
