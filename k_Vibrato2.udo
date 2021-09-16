/*
adds vibrato (frequency modulation of the pitch) to the sound. Option for irregular vibrato.
*/

  opcode k_Vibrato2,k,iKKKiKK
  
iOnVibrato, kvibdelay, kdepth, kspeed, itype, kjitdepth, kjitfreq xin   ; switch ON/OFF, delay, depth, speed, waveform, jitterdepth, jitterfrequency 
if iOnVibrato == 1 then                                                 ; if switch = ON, add vibrato to sall voices
        kdp linseg 0, p3 * i(kvibdelay), i(kdepth)                      ; delay time before vibrato
        kvb  lfo kdp, kspeed, itype                                     ; LFO 0-5
        kjit randi kjitdepth, kjitfreq                                  ; create some jitter
        kvibrato = kvb + kjit                                           ; add jitter and LFO
else
        kvibrato = 0                                                    ; if switch = OFF, there is no vibrato
endif
        xout kvibrato
	
  endop
