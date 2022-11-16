<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o sampleONCE.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2


	opcode sampleONCE,i,S

Sfile xin
itable	chnget	Sfile
if (itable == 0) then
    itable   ftgen 0, 0, 0, 1, Sfile, 0, 0, 0	; deffered length
	chnset	itable, Sfile
endif
    xout    itable
endop

instr 1

iSample sampleONCE "fox.wav"
prints  "\n- check to see if the table we are depending on is defined"
prints  "\n- if it is already defined, use pre-existing table"
prints  "\n- if it is not defined, create the table and use"
prints  "\n--> stored sample gets assigned number %d\n\n", iSample
aout   flooper 1, 1, 1, .5, .05, iSample
      outs	aout, aout

endin
</CsInstruments>
<CsScore> 

i 1 0 10
e
</CsScore>
</CsoundSynthesizer>
