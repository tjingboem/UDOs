; code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), but now implemented as UDO:
;
;       iFile1 sampleONCE "sample"
;
; so: soundfile in and number of fgten table out
; This routine prohibits loading of samples more than once.
; 




	opcode sampleONCE,i,S

Sfile xin
itable	chnget	Sfile
if (itable == 0) then
    itable   ftgen 0, 0, 0, 1, Sfile, 0, 0, 0
	chnset	itable, Sfile
endif
    xout    itable
endop
