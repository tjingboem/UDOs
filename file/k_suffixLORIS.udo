	opcode k_suffixLORIS,Si,So


Spath, ilow xin
ipos      strrindex Spath, "."
Suf       strsub    Spath, ipos+1
 if ilow != 0 then
Suf       strlower  Suf 
 endif
iok    strcmp     "mtx", Suf                                                   ; specify wanted file extensions
          xout      Suf, iok


	endop