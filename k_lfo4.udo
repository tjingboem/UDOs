/* based upon the lfo3 UDO from Steven Yi. An extra jitter option is added, so now contains a total of 7 low frequency	modulation options:
1. sine
2. triangle
3. square bi-polar
4. square uni-polar
5. saw tooth up
6. saw tooth down
7. jitter with interpolation

Choosing between wave forms can be done at k-rate
*/
  
  
  opcode k_lfo4,k,kk

kcps, ktype xin

iSineTable	chnget	"lfo2_sine"

if (iSineTable == 0) then
	iSineTable	ftgen 	0, 0, 65536, 10, 1 ; sine wave
	chnset	iSineTable, "lfo2_sine"
endif

kout init 0

if (ktype == 0) then ;SINE
	kout 	oscil3 1, kcps, iSineTable

elseif (ktype == 1) then ;TRIANGLE
	aout	vco2 1, kcps, 12
	kout downsamp aout

elseif (ktype == 2) then ;SQUARE (BI-POLAR)
	aout	vco2 1, kcps, 10
	kout downsamp aout

elseif (ktype == 3) then ;SQUARE (UNI-POLAR)
	aout	vco2 1, kcps, 10
	kout downsamp aout
	kout = (kout + 1) / 2

elseif (ktype == 4) then ;SAW TOOTH (UP)
	aout	vco2 1, kcps, 0
	kout downsamp aout


elseif (ktype == 5) then ;SAW TOOTH (DOWN)
	aout	vco2 1, kcps, 0
	kout downsamp aout
	kout = kout * -1


elseif (ktype == 6) then ;jitter with interpolation
        kout jspline .5, kcps, 2 ;jitter

endif

xout kout

	endop
