;k_ExpCurve - converts a linear line to exponential. Useful for example to mix 2 signals exponentially.

	opcode k_ExpCurve,k,kk


kfloat, ksteep	xin

kout	=   (exp(kfloat*ksteep)-1)/(exp(ksteep)-1)

	xout	kout

	endop
