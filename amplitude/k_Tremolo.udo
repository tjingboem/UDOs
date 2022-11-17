	opcode k_Tremolo,k,KKKi


kOnTremolo, kdepth, kspeed, itype xin           ; switch ON, depth, speed, wave form 

setksmps 1                                      ; to avoid clicks (together with port)

if kOnTremolo == 1 then                         ; if switch = ON, apply tremolo
        ktrem  lfo kdepth, kspeed, itype        ; LFO 0-5
        kport port ktrem, 0.007                 ; filter sharp edges of square
        ktremolo = (1 + kport) *.5              ; add tremoloes
else
        ktremolo = 1                            ; if switch = OFF, there is no tremolo
endif

	xout ktremolo



	endop