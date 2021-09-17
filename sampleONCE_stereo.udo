/*
keeps the same samples from loading and reloading, but re-uses the same sample tables. Intended for stereo sample use and mono use

code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), adapted for use with samples. Here implemented as UDO.
What does it do:
1. Check to see if the table we are depending on is defined. 
2. If it is already defined, use pre-existing table.
3. If it is not defined, create the table and use.

       iFile1 sampleONCE "sample"

 so: soundfile in and number of fgten table out
 This routine prohibits loading of samples more than once.
*/

	opcode sampleONCE_stereo,iii,S

Sfile   xin
itable	chnget	Sfile
ichn    filenchnls Sfile
if (itable == 0) then
    if (ichn == 2) then
    ;                                file   skip    format  channel    
        itable1   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      1
        itable2   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      2
    else
        itable1   ftgen 0, 0, 0, 1,  Sfile,  0,      0,      0
        itable2     =   itable1
    endif
endif
    chnset  itable, Sfile
    xout    ichn, itable1, itable2

	endop
