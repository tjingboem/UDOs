/*checks whether input file is a real sound file. 
This is a possible text in the code of the instrument itself

Suf, iok     k_suffixSOUND     <soundfile>, 1

if (iok == 0)  then
else
          prints    "\ninstrument %d needs an audiofile!\n\n", <INSTR_ID>       ; not the suffix from the list
          goto nosound                                                          ; jump to label
endif
*/

	opcode k_suffixSOUND,Si,So

  ;returns the suffix of a filename or path, optional in lower case 
Spath, ilow xin
ipos      strrindex Spath, "."
Suf       strsub    Spath, ipos+1
 if ilow != 0 then
Suf       strlower  Suf 
 endif

iok1    strcmp     "wav", Suf                                                   ; specify wanted file extensions
iok2    strcmp     "flac", Suf
iok3    strcmp     "ogg", Suf
iok4    strcmp     "mp3", Suf
iok5    strcmp     "aif", Suf
iok6    strcmp     "aiff", Suf

if (iok1 == 0) || (iok2 == 0) || (iok3 == 0) ||(iok4 == 0) || (iok5 == 0) ||(iok6 == 0) then
    iok = 0                                                                     ; check OK
else
    iok = 1                                                                     ; not OK
endif
          xout      Suf, iok


	endop
