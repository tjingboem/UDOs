/*
; switch where P4 = frequency or Midi pitch
; intended for working with sample-based instruments
*/


	opcode k_SCORE_format_Sampler,ii,iii

iscore, ipitch, iamp  xin

if (iscore == 0) then                                                           ; frequency mode
    ipitch  *=  .0038222
else
    ipitch = semitone(ipitch - 48)

endif

xout ipitch, iamp

	endop
