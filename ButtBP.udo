/* UDO from Victor Lazzarini. A recursive bandpass filter
The number of recursions allows for a deeper filter
*/

	opcode ButtBP,a,akkio

asig, kf, kbw, iN, icnt xin
if icnt >= iN-1 goto cont
asig ButtBP asig, kf, kbw, iN, icnt+1
cont:
xout butterbp(asig, kf, kbw)

	endop
