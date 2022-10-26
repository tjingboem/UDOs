/* checks if suffix (extension) of the input file is ATS or ats. It then assumes it is in fact a ATS file*/
/* possible code in the instrument:
Suf, iok     k_suffixATS     <ats_file>, 1
if (iok == 0) then
    else
          prints    "\ninstrument %d needs an ATS file!\n\n", <INSTR_ID>        ; not the suffix from the list
          goto nosound                                                          ; jump to label
endif
*/


	opcode k_suffixATS,Si,So

  ;returns the suffix of a filename or path, optional in lower case 
Spath, ilow xin
ipos      strrindex Spath, "."
Suf       strsub    Spath, ipos+1
 if ilow != 0 then
Suf       strlower  Suf 
 endif
iok    strcmp     "ats", Suf                                                   ; specify wanted file extensions
          xout      Suf, iok


	endop
