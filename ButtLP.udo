	opcode ButtLP,a,akio

asig,kf,iN,icnt xin
if icnt >= iN goto cont
asig ButtLP asig,kf,iN,icnt+1
cont:
xout butterlp(asig,kf)

	endop