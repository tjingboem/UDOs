<CsoundSynthesizer>
<CsInstruments>
sr=48000
ksmps=128
nchnls=2
0dbfs=1

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
i1	0.0	2	1
	
e
</CsScore>
</CsoundSynthesizer>
