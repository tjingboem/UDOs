
<CsoundSynthesizer>
<CsInstruments>

sr=48000
ksmps=128
nchnls=2
0dbfs=1

	opcode k_ExpCurve,k,kk

kfloat, ksteep	xin

kout	=   (exp(kfloat*ksteep)-1)/(exp(ksteep)-1)

	xout	kout

	endop

	instr 1
kfloat linseg  0, p3, 1
ksteep init    p4												 ; use different curves for mixing
kmix   k_ExpCurve  kfloat, ksteep                                ; make exp from lin to better mix

asig1   poscil 1 , 100
asig2   poscil 1 , 400
asig 	ntrpol	 asig1, asig2, kmix							     ; mix 2 signals asig1 & asig2
        outs asig, asig
	endin


</CsInstruments>
<CsScore>

i1	0.0	2	1
i1	4.0	2	10		
e

</CsScore>
</CsoundSynthesizer>
