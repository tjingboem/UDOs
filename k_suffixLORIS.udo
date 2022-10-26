/* checks to see if input file is indeed a real LORIS file

code in instrument:
;------------------------------check file---------------------------------------

Suf, iok     k_suffixLORIS     "<LORISfile>", 1

if (iok == 0) then

    else
          prints    "\ninstrument %d needs a LORIS file!\n\n", <INSTR_ID>        ; not the suffix from the list
          goto nosound                                                          ; jump to label
endif
*/


	opcode k_suffixLORIS,Si,So

  ;returns the suffix of a filename or path, optional in lower case 
Spath, ilow xin
ipos      strrindex Spath, "."
Suf       strsub    Spath, ipos+1
 if ilow != 0 then
Suf       strlower  Suf 
 endif
iok    strcmp     "mtx", Suf                                                   ; specify wanted file extensions
          xout      Suf, iok


	endop
