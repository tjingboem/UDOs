/*
keeps the same samples from loading and reloading, but re-uses the same sample tables.

code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), adapted for use with samples. Here implemented as UDO.
What does it do:
1. Check to see if the table we are depending on is defined. 
2. If it is already defined, use pre-existing table.
3. If it is not defined, create the table and use.

       iFile1 sampleONCE "sample"

 so: soundfile in and number of fgten table out
 This routine prohibits loading of samples more than once.
*/


	opcode sampleONCE,i,S

Sfile xin
itable	chnget	Sfile
if (itable == 0) then
    itable   ftgen 0, 0, 0, 1, Sfile, 0, 0, 0	; deffered length
	chnset	itable, Sfile
endif
    xout    itable
endop
