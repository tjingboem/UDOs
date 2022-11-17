	opcode k_Vibrato_noJitter,k,kkkk

kOnVibrato, kdepth, kspeed, kwave xin

if kOnVibrato == 1 then                                                         ; if switch = ON, add vibrato to sall voices

    if(changed2(kwave)==1) then                                                 ; check if LFO type has changed
        reinit	VIBRATOreinit
    endif

    VIBRATOreinit:
    itype   =   i(kwave)
    kvibrato  lfo kdepth, kspeed, itype                                         ; LFO 0-5
    rireturn

else
        kvibrato = 0                                                            ; if switch = OFF, there is no vibrato
endif

        xout kvibrato


	endop