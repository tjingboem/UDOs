<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o ButtBP.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode ButtBP,a,akkio

asig, kf, kbw, iN, icnt xin
if icnt >= iN-1 goto cont
asig ButtBP asig, kf, kbw, iN, icnt+1
cont:
xout butterbp(asig, kf, kbw)

	endop

instr 1

asig    vco2 .5, 200
ares    ButtBP asig, 1000, 200, p4 
outs    ares, ares

endin

</CsInstruments>
<CsScore>
;           recursions
i1 0     3      1
i1 4     3      2
i1 8     3      3
i1 12     3     4

e
</CsScore>
</CsoundSynthesizer>
