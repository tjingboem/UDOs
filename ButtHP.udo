	opcode ButtHP,a,akio

asig,kf,iN,icnt xin
if icnt >= iN goto cont
asig ButtHP asig,kf,iN,icnt+1
cont:
xout butterhp(asig,kf)

	endop