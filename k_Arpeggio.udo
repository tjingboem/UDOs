;# k_Arpeggio - adds stepped oscilations to pitch of the sound.


kOnArpeggio, koct, kspeed, itype, kOnDirt, kmaxrandom xin
kpitch = 1
if kOnArpeggio == 1 then                                                        ;switch Arpeggio on/off
        klfo  lfo koct, kspeed, itype                                           ; klfo  lfo <oct>, <spd>, i(<typeLFO>)  
        koc = int(klfo)                                                         ; produce only whole numbers                                                               
        kres random -(kmaxrandom), kmaxrandom                                               ; kres random 1, <random>                                                    
        kfactor = octave(koc)                                                   ; create octave number

    if kOnDirt == 1 then
        kpitch = kfactor * kpitch + kres                                              ; add dirt
    else
        kpitch = kfactor * kpitch
    endif

        kpitch = abs(kpitch)
else
        kpitch = 1                                                             ; no change in frequency
endif

        xout kpitch
