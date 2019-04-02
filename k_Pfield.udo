ipfield, kvalue  xin                                                            ; choose pfield & value

if (p(ipfield) == -1) then                                                      ; -1 is the switch number
    kfield    =   kvalue                                                        ; if -1 then follow the values of the Automation Line
else                            
    kfield =  p(ipfield)                                                        ; if any other value than -1, take the value from the pfiled in the score
endif

   xout    kfield
