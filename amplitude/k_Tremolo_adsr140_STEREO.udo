	opcode k_Tremolo_adsr140_STEREO,aa,kaakkkkkk

kon, ain1, ain2, katt, kdec, ksus, krel, kspeed, kmix xin        ; tremolo ON, in1, in2, attack, decay, sustain, release, speed, mix effect 

if (kon == 1) then                                                
    if (kspeed > 0) then
        agate = lfo(1, kspeed)
        aretrig init 1
        aadsr adsr140 agate, aretrig, katt, kdec, ksus, krel    ; retriggering envelope 1
        aadsr *= 1.2
    else
        aretrig init 1
        agate = linseg:a(1, p3 - i(krel), 1, .001, 0, i(krel), 0)
        aadsr adsr140 agate, aretrig, katt, kdec, ksus, krel    ; envelope 2
    endif
else                                                                            ; no tremolo at all
    aadsr    =   1
endif

aresL  =  ain1 * aadsr                                                          ; impose tremolo on incoming audio
aresR  =  ain2 * aadsr 
aoutL    ntrpol  ain1, aresL, kmix                                              ; mix incoming audio with treated audio
aoutR    ntrpol  ain2, aresR, kmix

xout    aoutL, aoutR

	endop