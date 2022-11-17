	opcode ButtLP,a,akio

asig,kf,iN,icnt xin                                                             ; audio in, frequency, number of filters, counter
if icnt >= iN goto cont
asig ButtLP asig,kf,iN,icnt+1
cont:
xout butterlp(asig,kf)

	endop