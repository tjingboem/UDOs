	opcode sampleONCE,i,S

Sfile xin

itable	chnget	Sfile
if (itable == 0) then
    itable   ftgen 0, 0, 0, 1, Sfile, 0, 0, 0
	chnset	itable, Sfile
endif

    xout    itable

	endop