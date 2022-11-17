	opcode k_lfo5,k,kk

kcps, ktype xin

iSineTable	chnget	"lfo4_cosine"

if (iSineTable == 0) then
	iSineTable	ftgen 	0, 0, 65536, 11, 1                              ; cosine wave
	chnset	iSineTable, "lfo4_cosine"
endif

kout init 0

if (ktype == 0) then                                                            ;SINE
	kout 	oscil3 1, kcps, iSineTable

elseif (ktype == 1) then                                                        ;TRIANGLE
	aout	vco2 1, kcps, 12
	kout downsamp aout

elseif (ktype == 2) then                                                        ;SQUARE (BI-POLAR)
	aout	vco2 1, kcps, 10
	kdwn downsamp aout
        kout  port kdwn, 0.005                                                  ;declick

elseif (ktype == 3) then                                                        ;SQUARE (UNI-POLAR)
	aout	vco2 1, kcps, 10
	kout downsamp aout
	kout = (kout + 1) / 2

elseif (ktype == 4) then                                                        ;SAW TOOTH (UP)
	aout	vco2 1, kcps, 0
	kdwn2 downsamp aout
        kout  port kdwn2, 0.0001                                                ;declick

elseif (ktype == 5) then                                                        ;SAW TOOTH (DOWN)
	aout	vco2 1, kcps, 0
	kdwn3 downsamp aout
	kdwn3 *=  -1
        kout  port kdwn3, 0.0001                                                ;declick

elseif (ktype == 6) then                                                        ;RANDOM
        kout jspline 1, kcps*1, kcps*2

endif

xout kout

	endop