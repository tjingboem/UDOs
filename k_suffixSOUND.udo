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
iok2    strcmp     "aiff", Suf
iok3    strcmp     "au", Suf
iok4    strcmp     "raw", Suf
iok5    strcmp     "aif", Suf
iok6    strcmp     "paf", Suf
iok7    strcmp     "svx", Suf
iok8    strcmp     "nist", Suf
iok9    strcmp     "voc", Suf
iok10    strcmp     "ircam", Suf
iok11    strcmp     "w64", Suf
iok12    strcmp     "mat4", Suf
iok13    strcmp     "mat5", Suf
iok14    strcmp     "pvf", Suf
iok15    strcmp     "xi", Suf
iok16    strcmp     "htk", Suf
iok17    strcmp     "sds", Suf
iok18    strcmp     "avr", Suf
iok19    strcmp     "wavex", Suf
iok20    strcmp     "sd2", Suf
iok21    strcmp     "flac", Suf
iok22    strcmp     "caf", Suf
iok23    strcmp     "wve", Suf
iok24    strcmp     "ogg", Suf
iok25    strcmp     "mp3", Suf
iok26    strcmp     "mpc2k", Suf
iok27    strcmp     "rf64", Suf

if (iok1 == 0) || (iok2 == 0) || (iok3 == 0) ||(iok4 == 0) || (iok5 == 0) ||(iok6 == 0) \
   || (iok7 == 0) || (iok8 == 0) ||(iok9 == 0) || (iok10 == 0) ||(iok11 == 0) \
   || (iok12 == 0) || (iok13 == 0) ||(iok14 == 0) || (iok15 == 0) ||(iok16 == 0) \
   || (iok17 == 0) || (iok18 == 0) ||(iok19 == 0) || (iok20 == 0) ||(iok21 == 0) \
   || (iok22 == 0) || (iok23 == 0) ||(iok24 == 0) || (iok25 == 0) ||(iok26 == 0) \
   || (iok27 == 0) then
    iok = 0                                                                     ; check OK
else
    iok = 1                                                                     ; not OK
endif
          xout      Suf, iok


	endop
