	opcode k_Zwel,k,iii

iOnSwell,iposition, isw xin

if iOnSwell == 1 then                                                        ;switch Swell on/off
        irise  = p3 * iposition                                                       ;iposition = 0<p9<1
        ifall = p3 - irise
        kswell linseg 0, irise, isw , ifall, 0                                  ; isw = amount of swell
endif
	xout kswell


	endop