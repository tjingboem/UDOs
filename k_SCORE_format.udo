; switch for P4 = frequency or Midi for non-sample based instruments


	opcode k_SCORE_format,ii,iii

iscore, ifreq, iamp  xin

if (iscore > 0) then
    ifreq   mtof    p4
endif

xout ifreq, iamp

	endop
