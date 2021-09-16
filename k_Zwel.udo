/* 
looks at the duration of the note and adds/subtracts amplitude to that note. Adds realism to an otherwise static note by adding an amplitude accent.

- switch to activate
- where to position the amp accent
- amount of amplitude for accent

to be used with amplitude envelope generator like this: envelope + k_Zwell
Because of depenedency on the note duration (p3), do not use with envelope type of the r type or madsr. This is due to the fact that when p3 stops, k_Zwell stops but the release sets in, producing a click. 
In this case, use k_Zwell_m/*
*/

	opcode k_Zwel,K,KKK

kOnSwell,kposition, ksw xin                         ; switch ON/OFF, position in note, amplitude 
 
if kOnSwell == 1 then                               ; switch Swell on/off
       irise  = p3 * i(kposition)                   ; relative position 0 > position < 1 inside note
       ifall = p3 - irise
       kswell linseg 1, irise, i(ksw) , ifall, 1 
else
       kswell = 1                                  ; if switch = OFF, no effect
endif
	xout kswell

	endop
