; k_Zwel - looks at the duration (p3) of the note and adds/subtracts amplitude in that note. Adds realism to an otherwise static note.


iOnSwell,kposition, ksw xin
 
if iOnSwell == 1 then                                                           ; switch Swell on/off
       irise  = p3 * i(kposition)                                               ; relative position 0 > position < 1 inside note
       ifall = p3 - irise
       kswell linseg 0, irise, i(ksw) , ifall, 0 
else
        kswell = 0                                                              ; if switch = OFF, no effect
endif

	xout kswell


	endop
