/*
UDO from Victor Lazzarini. A recursive lowpass filter
The number of recursions allows for a deeper filter
*/

	opcode ButtLP,a,akio

asig, kf, iN, icnt xin			; source, filter frequency, # of recursions, (loop counter)
if icnt >= iN goto cont
asig ButtLP asig, kf, iN,icnt+1
cont:
xout butterlp(asig,kf)			; audio out

	endop
