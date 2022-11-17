	opcode sampleONCEstereo,ii,S

Sfile xin

itableL	chnget	Sfile
itableR	chnget	Sfile
if (itableL == 0) then
    itableL   ftgen 0, 0, 0, 1, Sfile, 0, 0, 1
    itableR   ftgen 0, 0, 0, 1, Sfile, 0, 0, 2
	chnset	itableL, Sfile
	chnset	itableR, Sfile
endif

    xout    itableL, itableR

	endop