	opcode k_checkaudio,k,a

ain xin                                                                         ; audio? in

kout    downsamp    ain
printk2 kout                                                                    ; print at k rate

xout    kout


	endop