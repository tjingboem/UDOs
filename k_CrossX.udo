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