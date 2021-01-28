; keeps the same samples from loading and reloading, but re-uses the same samples
; intended for stereo sample use and mono use


	opcode sampleONCE_stereo,iii,S

Sfile   xin
itable	chnget	Sfile
ichn    filenchnls Sfile
if (itable == 0) then
    if (ichn == 2) then
    ;                                file   skip    format  channel    
        itable1   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      1
        itable2   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      2
    else
        itable1   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      0
        itable2     =   itable1
    endif
endif
    chnset  itable, Sfile
    xout    ichn, itable1, itable2

	endop
