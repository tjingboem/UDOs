; code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), but now implemented as UDO:
;       iFile1 sampleONCE "sample"
; so: soundfile in and number of fgten out




	opcode sampleONCE,i,S

Sfile xin
itable	chnget	Sfile
if (itable == 0) then
    iSample   ftgen 0, 0, 0, 1, Sfile, 0, 0, 0
	chnset	itable, Sfile
endif
    xout    iSample

	endop
