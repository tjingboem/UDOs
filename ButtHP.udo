	opcode ButtHP,a,akio

asig, kf, iN, icnt xin			; source, filter frequency, # of recursions, (loop counter)
if icnt >= iN goto cont
asig ButtHP asig, kf, iN, icnt+1
cont:
xout butterhp(asig,kf)			; audio out

	endop
