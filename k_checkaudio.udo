;simple utility to check incoming audio signal by printing to screen at k-rate
;kout  k_checkaudio    ain

ain xin

kout    downsamp    ain
printk2 kout

xout    kout
