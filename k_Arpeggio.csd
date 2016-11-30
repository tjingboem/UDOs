
<CsoundSynthesizer>
<CsInstruments>

sr=48000
ksmps=128
nchnls=2
0dbfs=1

	opcode k_Arpeggio,k,KKKiKK

kOnArpeggio, koct, kspeed, itype, kOnDirt, kmaxrandom xin
;setksmps 1
kpitch = 1
if kOnArpeggio == 1 then                                ;switch Arpeggio on/off
        klfo  lfo koct, kspeed, itype                   ; klfo  lfo <oct>, <spd>, i(<typeLFO>)  
        koc = int(klfo)                                 ; produce only whole numbers                                                               
        kres random -(kmaxrandom), kmaxrandom           ; kres random 1, <random>                                                    
        kfactor = octave(koc)                           ; create octave number

    if kOnDirt == 1 then
        kpitch = kfactor * kpitch + kres                ; add dirt
    else
        kpitch = kfactor * kpitch
    endif

        kpitch = abs(kpitch)
else
        kpitch = 1                                      ; no change in frequency
endif

        xout kpitch

	endop


	instr 1	;untitled
karp    k_Arpeggio   p4, 3, 4, 4, 1, p5					; out	k_Arpeggio	switch (0 - 1), octaves, speed, LFO type, dirtswitch (0 - 1), amount of dirt

asig    poscil 1 , 400 * karp
        outs asig, asig
	endin

</CsInstruments>
<CsScore>

i1	0	1	0   0
i1	2	1	1	0
i1  4   1   1  .2
e

</CsScore>
</CsoundSynthesizer>
