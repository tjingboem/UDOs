/* checks to see if input file is indeed a real SoundFont

code in instrument:

Suf, iok     k_suffixSF2     <SoundFont>, 1

if (iok == 0) then
    else
          prints    "\ninstrument %d needs a SoundFont!\n\n", <INSTR_ID>        ; not the suffix from the list
          goto nosound                                                          ; jump to label
endif
*/


	opcode k_suffixSF2,Si,So

  ;returns the suffix of a filename or path, optional in lower case 
Spath, ilow xin
ipos      strrindex Spath, "."
Suf       strsub    Spath, ipos+1
 if ilow != 0 then
Suf       strlower  Suf 
 endif
iok    strcmp     "sf2", Suf                                                   ; specify wanted file extensions
          xout      Suf, iok


	endop
