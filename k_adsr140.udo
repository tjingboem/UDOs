	opcode k_adsr140,a,kkkkk

kon, katt, kdec, ksus, krel xin ; on, attack, decay, sustain, release 

if (kon == 1) then                                                
        atrig init 1
        agte = linseg:a(1, p3 - i(krel), 1, .001, 0, i(krel), 0)
        aadsr adsr140 agte, atrig, katt, kdec, ksus, krel                       ; envelope 
else                                                                            ; no envelope at all
    aadsr    =   1
endif

xout    aadsr    

	endop