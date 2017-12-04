; k_Zwel - looks at the duration (p3) of the note and adds/subtracts amplitude in that note. Adds realism to an otherwise static note.
use to put a amplitude accent inside the note
*/
- switch to activate
- where to position the amp accent
- amount of amplitude for accent

to be used with amplitude envelope generator like this: envelope + k_Zwell
Because of depenedency on the note duration (p3), do not use with envelope type of the r type or madsr. This is due to the fact that when p3 stops, k_Zwell stops but the release sets in, producing a click. 
In this case, use k_Zwell_m/*

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
