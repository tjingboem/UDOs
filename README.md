# UDOs

Library of Csound UDO code and examples Csound csds.


    Filters:
    ButtLP.udo  -   UDO from Victor Lazzarini. A recursive lowpass filter. The number of recursions allows for a deeper filter.
    ButtHP.udo  -   UDO from Victor Lazzarini. A recursive highpass filter. The number of recursions allows for a deeper filter.
    ButtBP.udo  -   UDO from Victor Lazzarini. A recursive bandpass filter. The number of recursions allows for a deeper filter..
    
    Amplitude:
    k_Tremolo.udo - simple Tremolo based on lfo opcode. Can be switched ON/OFF.
    k_Zwel.udo  -   looks at the duration of the note and adds/subtracts amplitude to that note. Adds realism to an otherwise static note by adding an amplitude accent.
    
    Pitch:
    k_lfo4.udo  -   based upon the lfo3 UDO from Steven Yi. An extra jitter option is added, so now contains a total of 7 low frequency	modulation options.
    k_Vibrato2.udo - adds vibrato (frequency modulation of the pitch) to the sound. Option for irregular vibrato sequences per pattern.
    k_Arpeggio.udo - adds stepped oscilations to pitch of the sound (Commodore64 SID-like).
    k_ArpeggioMini.udo - Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO
    
    Samples:
    sampleONCE.udo - code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), but now implemented as UDO  
    
    Utilities:
    k_checkaudio -  checking the audio output or another a-rate signal by converting it to k-rate
    
    Blue specials:
    k_Pfield.udo -  especially designed for use in Blue. It lets you decide if you want to set a p-field value in the score or by the use of an Automation Line.
    k_CrossX.udo -  UDO for Blue. divides the incoming signal in 3 frequency portions, to be divided over 3 stereo SubChannels.Needs ButtXX.UDO's (see above).

   





   
