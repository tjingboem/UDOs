<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o k_Tremolo.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>
sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2
	opcode k_Tremolo_k,k,KKKi
kOnTremolo, kdepth, kspeed, itype xin           ; switch ON, depth, speed, wave form 
setksmps 1                                      ; to avoid clicks (together with port)
if kOnTremolo == 1 then                         ; if switch = ON, apply tremolo
        ktrem  lfo kdepth, kspeed, itype        ; LFO 0-5
        kport port ktrem, 0.007                 ; filter sharp edges of square
        ktremolo = (1 + kport) *.5              ; add tremoloes
else
        ktremolo = 1                            ; if switch = OFF, there is no tremolo
endif
	xout ktremolo
	endop
instr 1
asig    vco2 .5, 200
kres    k_Tremolo 1, p4, 3, 0
outs    asig * kres, asig * kres
endin
</CsInstruments>
<CsScore>
;             depth
i1 0     3      .1
i1 4     3      .5
i1 8     3      1
e
</CsScore>
</CsoundSynthesizer>
