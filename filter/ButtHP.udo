	opcode ButtHP,a,akio

asig,kf,iN,icnt xin                                                             ; audio in, frequency, number of filters, counter
if icnt >= iN goto cont
asig ButtHP asig,kf,iN,icnt+1
cont:
xout butterhp(asig,kf)

	endop