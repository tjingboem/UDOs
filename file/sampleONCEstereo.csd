<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o sampleONCE_stereo.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

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

instr 1

ichn, iSampleLEFT, iSampleRIGHT  sampleONCE_stereo  "stereoJungle.wav"
prints  "\n- check to see if the table we are depending on is defined"
prints  "\n- if it is already defined, use pre-existing table"
prints  "\n- if it is not defined, create the table and use"
prints  "\nin this case, sample has %d channels, so:", ichn
prints  "\n---> stored sample left channel  = number %d", iSampleLEFT
prints  "\n---> stored sample right channel = number %d\n\n", iSampleRIGHT
aoutL   flooper 1, 1, 1,  1, .05, iSampleLEFT
aoutR   flooper 1, 1, 1, .6, .05, iSampleRIGHT
outs	aoutL, aoutR

endin
</CsInstruments>
<CsScore> 

i 1 0 10
e
</CsScore>
</CsoundSynthesizer>
