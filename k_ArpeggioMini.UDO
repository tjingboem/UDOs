/*Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO.

- 5 types of LFO waveforms

kOnArpeggio - on/off switch
koct - octave depth
kspeed - speed of LFO
itype - type of LFO
/*

kOnArpeggio, koct, kspeed, itype xin

kpitch = 1
if kOnArpeggio == 1 then                                                        ; switch Arpeggio on/off
        klfo  lfo koct, kspeed, itype                                           ; klfo  lfo <oct>, <spd>, i(<typeLFO>)  
        koc = int(klfo)                                                         ; produce only whole numbers                                                      
        kfactor = octave(koc)                                                   ; create octave number
        kpitch = kfactor * kpitch
       kpitch = abs(kpitch)
else
        kpitch = 1                                                              ; no change in frequency
endif

        xout kpitch
