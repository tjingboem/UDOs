# UDOs & blueUDOs

Library of Csound UDO code & blueUDOs for Blue (https://blue.kunstmusik.com/).


    Filters:
    ButtLP.udo  -   UDO from Victor Lazzarini. A recursive lowpass filter. The number of recursions allows for a deeper filter.
    ButtHP.udo  -   UDO from Victor Lazzarini. A recursive highpass filter. The number of recursions allows for a deeper filter.
    ButtBP.udo  -   UDO from Victor Lazzarini. A recursive bandpass filter. The number of recursions allows for a deeper filter..
    
    Amplitude:
    adsr140.udo
    adsr140_calc_coef.udo
    k_Tremolo.udo - simple Tremolo based on lfo opcode. Can be switched ON/OFF.
    k_Tremolo_adsr140_MONO.udo
    k_Tremolo_adsr140_STEREO.udo
    k_Zwel.udo  -   looks at the duration of the note and adds/subtracts amplitude to that note. Adds realism to an otherwise static note by adding an amplitude accent.
    
    Pitch:
    k_lfo3.udo  -   based upon the lfo3 UDO from Steven Yi, slightly adapted. 
    k_lfo4.udo  -   based upon the lfo3 UDO from Steven Yi. An extra jitter option is added, so now contains a total of 7 low frequency	modulation options.
    k_Vibrato2.udo - adds vibrato (frequency modulation of the pitch) to the sound. Option for irregular vibrato.
    k_Arpeggio.udo - adds stepped oscilations to pitch of the sound (Commodore64 SID-like).
    k_ArpeggioMini.udo - Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO
    
    Samples:
    sampleONCE.udo - keeps the same samples from loading and reloading, but re-uses the same samples. For mono samples.
    sampleONCE_stereo.udo   -  keeps the same samples from loading and reloading, but re-uses the same samples. For stereo sample and mono samples. 
    k_SCORE_format_Sampler.udo  -   switch where P4 = frequency or Midi pitch. For sample based instruments. 
    k_SCORE_format.udo  -   switch for P4 = frequency or Midi for non-sample based instruments
    
    Utilities:
    k_checkaudio -  checking the audio output or another a-rate signal by converting it to k-rate
    k_Countstep -   counter at i rate. Makes particular output channel active
    k_suffixLORIS - checks if input file has the LORIS file extension mtx or not
    k_suffixATS -  checks if input file has the ATS file extension ats or not
    k_suffixSOUND - checks if input file has a few sound file extensions or not
    k_suffixSF2 - checks if input file has the SoundFont extension sf2 or not
    
    
    
    Blue specials:
    k_Pfield.udo -  especially designed for use in Blue. It lets you decide if you want to set a p-field value in the score or by the use of an Automation Line.
    k_CrossX.udo -  UDO for Blue. divides the incoming signal in 3 frequency portions, to be divided over 3 stereo SubChannels.Needs ButtXX.UDO's (see above).
    
    
    Bunch of UDOs i collected from somewhere and when i find out where in the future, i will surely give credit....:
    TapeEcho3
    TapeEcho4
    TapeEcho
    activedamp
    TapeRead
    diode_ladder
    StreamAnal
    OscBnk
    Tab_rand
    tab_reverse
    more to come...
    

   





   
