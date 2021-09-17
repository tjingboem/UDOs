<CsoundSynthesizer>
<CsOptions>
-n ; no sound
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode k_SCORE_format_Sampler,ii,iii

iscore, ipitch, iamp  xin

if (iscore == 0) then
    ipitch  *=  .003822258            ; frequency mode
else
    ipitch = semitone(ipitch - 48)  ; midi mode

endif

xout ipitch, iamp

	endop

instr 1

ipitch, iamp k_SCORE_format_Sampler  p4, p5, 1
if p4 == 0 then
    prints  "\n261.625565 is seen as frequency --> %fx original pitch\n", ipitch
    prints  "amplitude stays untouched --> %f\n\n", iamp
    else
    prints  "\n48 is seen as midi note --> %f x original pitch\n", ipitch
    prints  "amplitude stays untouched --> %f\n\n", iamp
endif
aout   flooper iamp, ipitch, 1, .5, .05, 1
outs	aout, aout

endin
</CsInstruments>
<CsScore> 
f 1 0 0 1 "fox.wav" 0 0 0   ; load sample

;        switch  frequency
i 1 0 5     0    261.625565 ; frequency input
;        switch    pitch
i 1 7 7     1       48      ; midi note input
e
</CsScore>
</CsoundSynthesizer>
