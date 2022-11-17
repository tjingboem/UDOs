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