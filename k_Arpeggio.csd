<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o k_Arpeggio.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2
;# k_Arpeggio - adds stepped oscilations to pitch of the sound.


	opcode k_Arpeggio,k,KKKiKK

kOnArpeggio, koct, kspeed, itype, kOnDirt, kmaxrandom xin   ; switch ON/OFF, # of octaves, speed, waveform, random, max random
kpitch = 1

if kOnArpeggio == 1 then                                    
        klfo  lfo koct, kspeed, itype                       ; klfo  lfo <oct>, <spd>, i(<typeLFO>)  
        koc = int(klfo)                                     ; produce only whole numbers                                                               
        kres random -(kmaxrandom), kmaxrandom               ; kres random 1, <random>                                                    
        kfactor = octave(koc)                               ; create octave number

    if kOnDirt == 1 then
        kpitch = kfactor * kpitch + kres                    ; add dirt
    else
        kpitch = kfactor * kpitch
    endif

        kpitch = abs(kpitch)
else
        kpitch = 1                                          ; no change in frequency
endif
        xout kpitch
    endop

instr 1

karp    k_Arpeggio   p4, 3, 4, 4, 1, p5					; out	k_Arpeggio	switch (0 - 1), octaves, speed, LFO type, dirtswitch (0 - 1), amount of dirt
asig    vco2 .5, 200 * karp
outs    asig, asig

endin

</CsInstruments>
<CsScore>
i1	0	1	0   0   ; switch Arpeggio off
i1	2	2	1	0   ; on
i1  5   2   1  .2   ; on with dirt

e
</CsScore>
</CsoundSynthesizer>
