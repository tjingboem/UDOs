*/use to put a amplitude accent inside the note

- switch to activate
- where to position the amp accent
- amount of amplitude for accent

to be used with amplitude envelope generator like this: envelope * k_Zwell_m
Because of depenedency on the note duration (p3), use it with envelope type of the r type or madsr. Ohterwise it is okay to use k_Zwell/*

	opcode k_Zwel*,K,KKK

kOnSwell,kposition, ksw xin
 
if kOnSwell == 1 then                                                           ; switch Swell on/off
       irise  = p3 * i(kposition)                                               ; relative position 0 > position < 1 inside note
       ifall = p3 - irise
       kswell linseg 1, irise, i(ksw) , ifall, 1 
else
        kswell = 1                                                              ; if switch = OFF, no effect
endif

	xout kswell


	endop
