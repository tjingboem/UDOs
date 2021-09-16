<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o k_checkaudio.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode k_checkaudio,k,a
ain xin
kout    downsamp    ain
printk2 kout
xout    kout
	endop

instr 1
aout    oscil   1, 220
;aout    diskin  "/home/menno/fox.wav", 1
kout    k_checkaudio    aout
outs aout, aout
endin

</CsInstruments>
<CsScore>
i1	0	2.7	
e
</CsScore>
</CsoundSynthesizer>
