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