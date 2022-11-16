<CsoundSynthesizer>
<CsOptions>
-n ; no sound
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

; switch for P4 = frequency or Midi for non-sample based instruments

	opcode k_SCORE_format,ii,iii

iscore, ifreq, iamp  xin

if (iscore > 0) then
    ifreq   mtof    ifreq      ; convert p4 to midi note
endif

xout ifreq, iamp

	endop

instr 1

ifreq, iamp k_SCORE_format  p4, 60, 1
if p4 == 0 then
    prints  "\n60 is seen as frequency --> %fHz\n", ifreq
    prints  "amplitude stays untouched --> %f\n\n", iamp
    else
    prints  "\n60 is seen as midi note --> %fHz\n", ifreq
    prints  "amplitude stays untouched --> %f\n\n", iamp
endif

endin
</CsInstruments>
<CsScore> 

i 1 0 1 0   ; switch to 'pure frequency'
i 1 2 1 1   ; switch to midi note
e
</CsScore>
</CsoundSynthesizer>
