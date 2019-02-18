;to be used with Blue and the Blue Submixersystem:

;blueMixerOut "SubChannel1", asiglpL ,asiglpR
;blueMixerOut "SubChannel2", asighpL ,asighpR
;blueMixerOut "SubChannel3", asigbpL  ,asigbpR


<CsoundSynthesizer>
<CsInstruments>
sr=48000
ksmps=128
nchnls=2
0dbfs=1
	opcode ButtLP,a,akio

asig,kf,iN,icnt xin
if icnt >= iN goto cont
asig ButtLP asig,kf,iN,icnt+1
cont:
xout butterlp(asig,kf)

	endop
	opcode ButtHP,a,akio

asig,kf,iN,icnt xin
if icnt >= iN goto cont
asig ButtHP asig,kf,iN,icnt+1
cont:
xout butterhp(asig,kf)

	endop
	opcode ButtBP,a,akkio

asig,kf,kbw,iN,icnt xin
if icnt >= iN-1 goto cont
asig ButtBP asig,kf,kbw,iN,icnt+1
cont:
xout butterbp(asig,kf,kbw)


	endop
	opcode k_CrossX,aaaaaa,aakkiikk

ain1, ain2, kfreq_low, kfreq_high, ifilterchoice, ifilterdepth, kfiltergainlow, kfiltergainhigh	xin

    kfreq_mid   =   (kfreq_high - kfreq_low) * .5
    kfreq_width =   kfreq_mid -  kfreq_low  
;-------------------
    if (ifilterchoice == 0) then 
    asiglpL ButtLP ain1, kfreq_low, ifilterdepth
    asiglpL   *=  kfiltergainlow
    asiglpR ButtLP ain2, kfreq_low, ifilterdepth
    asiglpR   *=  kfiltergainlow
    asighpL ButtHP ain1, kfreq_high, ifilterdepth
    asighpL  *=  kfiltergainhigh * 2
    asighpR ButtHP ain2, kfreq_high, ifilterdepth
    asighpR   *=  kfiltergainhigh * 2
    asigbpL ButtBP ain1, kfreq_mid, kfreq_width,4
    asigbpR ButtBP ain2, kfreq_mid, kfreq_width,4
    endif
;-------------------
    if (ifilterchoice == 1) then 
    asiglpL ButtLP ain1, kfreq_low, ifilterdepth
    asiglpL   *=  kfiltergainlow
    asiglpR ButtLP ain2, kfreq_low, ifilterdepth
    asiglpR   *=  kfiltergainlow
    endif
;--------------------------------
    if (ifilterchoice == 2) then 
    asighpL ButtHP ain1, kfreq_high, ifilterdepth
    asighpL  *=  kfiltergainhigh
    asighpR ButtHP ain2, kfreq_high, ifilterdepth
    asighpR   *=  kfiltergainhigh
    endif
;--------------------
    if(ifilterchoice == 3) then 
    asigbpL ButtBP ain1, kfreq_mid, kfreq_width,4
    asigbpR ButtBP ain2, kfreq_mid, kfreq_width,4
    endif

	xout asiglpL, asiglpR , asighpL, asighpR, asigbpL, asigbpR 

	endop


	instr 1	;untitled                                                                                                                        
ain    vco2   1, 200

asiglpL, asiglpR, asighpL,  asighpR , asigbpL, asigbpR   k_CrossXtest3   ain, ain, 250, 5000, 0, 1, 1, .1

blueMixerOut "SubChannel1", asiglpL ,asiglpR
blueMixerOut "SubChannel2", asighpL ,asighpR
blueMixerOut "SubChannel3", asigbpL  ,asigbpR
</CsInstruments>
<CsScore>
i1	0.0	2	1
	
e
</CsScore>
</CsoundSynthesizer>
