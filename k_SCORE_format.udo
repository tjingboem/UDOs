/*
meant as a switch for P4 = frequency or Midi for non-sample based instruments
*/

	opcode k_SCORE_format,ii,iii

iscore, ifreq, iamp  xin

if (iscore > 0) then
    ifreq   mtof    ifreq      ; convert p4 to midi note
endif

xout ifreq, iamp

	endop
