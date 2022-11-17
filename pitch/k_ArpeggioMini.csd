<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o k_ArpeggioMini.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

/*Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO.
- 5 types of LFO waveforms
kOnArpeggio - on/off switch
koct - octave depth
kspeed - speed of LFO
itype - type of LFO
*/
	opcode k_ArpeggioMini,k,KKKi

kOnArpeggio, koct, kspeed, itype xin            ; switch ON/OFF, octave, speed, waveform
kpitch = 1
if kOnArpeggio == 1 then                        ; switch Arpeggio on/off
        klfo  lfo koct, kspeed, itype   
        koc = int(klfo)                         ; produce only whole numbers                                                      
        kfactor = octave(koc)                   ; create octave number
        kpitch = kfactor * kpitch
        kpitch = abs(kpitch)
else
        kpitch = 1                              ; no change in frequency
endif
        xout kpitch
    endop

instr 1

kpch    line    1, p3, 10      
karp    k_ArpeggioMini  1, kpch, 5, p4
asig    poscil .5 , 400 * karp							                ; add vibrato
        outs asig, asig
endin
</CsInstruments>
<CsScore>
i1	0	2	1   ; different waveforms	
i1	3	7	3	
i1	11	7	5	
e
</CsScore>
</CsoundSynthesizer>
