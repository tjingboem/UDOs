/*
counter at i rate
/*


	opcode k_CountStep,iiiiiiii,i

ipfieldvalue xin

    iout[] init 8
    iCnt = 0
    while iCnt < 8 do
        iout[iCnt] = (ipfieldvalue == iCnt+1 ? 1 : 0)
        iCnt += 1
    od
iout1, iout2, iout3, iout4, iout5, iout6, iout7, iout8 = iout[0], iout[1], iout[2], iout[3], iout[4], iout[5], iout[6], iout[7]

xout iout1, iout2, iout3, iout4, iout5, iout6, iout7, iout8

	endop
