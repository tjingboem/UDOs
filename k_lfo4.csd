<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; Audio out   Audio in
-odac          ;;;RT audio out
; For Non-realtime ouput leave only the line below:
; -o k_lfo4.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

  opcode k_lfo4,k,kk

kcps, ktype xin

iSineTable	chnget	"lfo2_sine"

if (iSineTable == 0) then
	iSineTable	ftgen 	0, 0, 65536, 10, 1 ; sine wave
	chnset	iSineTable, "lfo2_sine"
endif

kout init 0

if (ktype == 0) then ;SINE
	kout 	oscil3 1, kcps, iSineTable

elseif (ktype == 1) then ;TRIANGLE
	aout	vco2 1, kcps, 12
	kout downsamp aout

elseif (ktype == 2) then ;SQUARE (BI-POLAR)
	aout	vco2 1, kcps, 10
	kout downsamp aout

elseif (ktype == 3) then ;SQUARE (UNI-POLAR)
	aout	vco2 1, kcps, 10
	kout downsamp aout
	kout = (kout + 1) / 2

elseif (ktype == 4) then ;SAW TOOTH (UP)
	aout	vco2 1, kcps, 0
	kout downsamp aout


elseif (ktype == 5) then ;SAW TOOTH (DOWN)
	aout	vco2 1, kcps, 0
	kout downsamp aout
	kout = kout * -1


elseif (ktype == 6) then ;jitter with interpolation
        kout jspline .5, kcps, 2 ;jitter

endif

xout kout

	endop

instr 1

klfo    k_lfo4 3, p4
;printk2 klfo
print p4
asig    poscil .5, 200 + (100 * klfo)
outs    asig, asig

endin

</CsInstruments>
<CsScore>
;              lfo
i1 0     3      0
i1 4     3      1
i1 8     3      2
i1 12    3      3
i1 16    3      4
i1 20    3      5
i1 24    6      6
e
</CsScore>
</CsoundSynthesizer>
