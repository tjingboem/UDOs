<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o k_Zwel.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode k_Zwel,K,KKK

kOnSwell,kposition, ksw xin                         ; switch ON/OFF, position in note, amplitude 
 
if kOnSwell == 1 then                               ; switch Swell on/off
       irise  = p3 * i(kposition)                   ; relative position 0 > position < 1 inside note
       ifall = p3 - irise
       kswell linseg 1, irise, i(ksw) , ifall, 1 
else
        kswell = 1                                  ; if switch = OFF, no effect
endif
	xout kswell

	endop

instr 1

asig    vco2 .5, 200
kres    k_Zwel 1, .5, p4
printk2 kres
outs    asig * kres, asig * kres

endin

</CsInstruments>
<CsScore>
;             swell
i1 0     3      .1  ; create dip
i1 4     3      .5
i1 8     3       1  ; no change
i1 12     3     1.5 ; create top
e
</CsScore>
</CsoundSynthesizer>
