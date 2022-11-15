<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o ButtLP.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode ButtLP,a,akio

asig, kf, iN, icnt xin			; source, filter frequency, # of recursions, (loop counter)
if icnt >= iN goto cont
asig ButtLP asig, kf, iN,icnt+1
cont:
xout butterlp(asig,kf)			; audio out

	endop

instr 1

asig    vco2 .5, 200
ares    ButtLP asig, 1000, p4 
outs    ares, ares

endin

</CsInstruments>
<CsScore>
;           recursions
i1 0     3      1
i1 4     3      2
i1 8     3      3
i1 12    3      4

e
</CsScore>
</CsoundSynthesizer>
