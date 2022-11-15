<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac  ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o k_CountStep.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100 
ksmps = 32 
0dbfs  = 1 
nchnls = 2

	opcode k_CountStep,iiiiiiii,i

ipfieldvalue xin

    iout[] init 8
    iCnt = 0
    while iCnt < 8 do
        iout[iCnt] = (ipfieldvalue == iCnt+1 ? 1 : 0)
        iCnt += 1
    od
iout1, iout2, iout3, iout4, iout5, iout6, iout7, iout8 = iout[0], iout[1], iout[2], iout[3], iout[4], iout[5], iout[6], iout[7]

xout iout1, iout2, iout3, iout4, iout5, iout6, iout7, iout8

	endop

instr 1
aout    oscil   1, 220
iout1, iout2, iout3, iout4, iout5, iout6, iout7, iout8    k_CountStep p4
prints  "\nis iout3 active? %d\n", iout3
outs aout, aout
endin

</CsInstruments>
<CsScore>
i1	0	1   1
i1	3	1   3

e
</CsScore>
</CsoundSynthesizer>
