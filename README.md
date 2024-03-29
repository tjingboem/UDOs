# UDOs & blueUDOs

Library of Csound UDO code (https://csound.com/) & blueUDOs for Blue (https://blue.kunstmusik.com/).

    
    amplitude:
    k_Tremolo - simple Tremolo based on lfo opcode. Can be switched ON/OFF.
    k_Tremolo.csd - simple example
    k_Tremolo_adsr140_MONO - tremolo based on adsr140.udo
    k_Tremolo_adsr140_STEREO - tremolo based on adsr140.udo
    k_Zwel  -   looks at the duration of the note and adds/subtracts amplitude to that note. Adds realism to an otherwise static note by adding an amplitude accent.
    k_Zwel_m  -   looks at the duration of the note and adds/subtracts amplitude to that note. Adds realism to an otherwise static note by adding an amplitude accent
    k_Zwel.csd - simple example
        
    file:
    k_suffixLORIS - checks if input file has the LORIS file extension mtx or not
    k_suffixATS -  checks if input file has the ATS file extension ats or not
    k_suffixSOUND - checks if input file has a few sound file extensions or not
    k_suffixSF2 - checks if input file has the SoundFont extension sf2 or not
    sampleONCE - keeps the same samples from loading and reloading, but re-uses the same samples. For mono samples.
    sampleONCE.csd - simple example
    sampleONCE_stereo   -  keeps the same samples from loading and reloading, but re-uses the same samples. For stereo sample and mono samples.
    sampleONCE_stereo.csd - simple example
    
    filter:
    ButtLP  -   UDO from Victor Lazzarini. A recursive lowpass filter. The number of recursions allows for a deeper filter.
    ButtLP.csd - simple example
    ButtHP  -   UDO from Victor Lazzarini. A recursive highpass filter. The number of recursions allows for a deeper filter.
    ButtHP.csd - simple example
    ButtBP  -   UDO from Victor Lazzarini. A recursive bandpass filter. The number of recursions allows for a deeper filter.
    ButtBP.csd - simple example
        
    modulation:
    k_lfo3  -   based upon the lfo3 UDO from Steven Yi, slightly adapted. 
    k_lfo4  -   based upon the lfo3 UDO from Steven Yi. An extra jitter option is added, so now contains a total of 7 low frequency	modulation 
    k_lfo4.csd - simple example
    k_lfo5  -   based upon the lfo3 UDO from Steven Yi. An extra jitter option is added, so now contains a total of 7 low frequency	modulation 

    
    Pitch:
    k_Vibrato2 - adds vibrato (frequency modulation of the pitch) to the sound. Option for irregular vibrato.
    k_Vibrato2.csd - simple example
    k_Arpeggio - adds stepped oscilations to pitch of the sound (Commodore64 SID-like).
    k_Arpeggio.csd - simple example
    k_ArpeggioMini - Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO
    k_ArpeggioMini.csd - simple example
    k_Vibrato_noJitter - adds vibrato (frequency modulation of the pitch) to the sound.
    
    various:
    Pfield.blue - simple example
    k_Pfield -
    adsr140
    adsr140_calc_coef
    k_adsr140 - 
    declick
    k_checkaudio -  checking the audio output or another a-rate signal by converting it to k-rate
    k_checkaudio.csd - simple example
    k_Countstep -   counter at i rate. Makes particular output channel active
    k_Countstep.csd - simple example
    k_SCORE_format_Sampler  -   switch where P4 = frequency or Midi pitch. For sample based instruments. 
    k_SCORE_format_Sampler.csd - simple example
    k_SCORE_format  -   switch for P4 = frequency or Midi for non-sample based instruments
    k_SCORE_format.csd - simple example

    

   





   
