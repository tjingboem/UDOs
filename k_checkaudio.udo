/*
simple utility to check incoming audio signal by printing to screen at k-rate
*/

	opcode k_checkaudio,k,a

ain xin                   ; get audio in

kout    downsamp    ain   ; convert to k-rate signal
printk2 kout              ; so it can be printed

xout    kout

	endop
