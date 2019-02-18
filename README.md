# UDOs

Library of Csound UDO code and example Csound csd.

by Menno Knevel

Files

    k_Pfield.udo -  especially designed for use in Blue. It lets you decide if you want to set a p-field value in the score or by the use of an Automation Line.
    k_ExpCurve.udo - converts a linear line to a exponential one. Useful for example to mix 2 signals exponentially.
    k_LogCurve.udo - converts a linear line to a logarithmic one. Useful for example to mix 2 signals logarithmically.
    k_Zwel.udo - looks at the duration (p3) of the note and adds/subtracts amplitude in that note while it is playing. Adds realism to an otherwise static note.
    k_Vibrato2.udo - adds vibrato (frequency modulation of the pitch) to the sound. Option for irregular vibrato.equences per pattern
    k_Tremolo.udo - adds tremolo (amplitude modulation of the amplitude) to the sound.
    k_Arpeggio.udo - adds stepped oscilations to pitch of the sound (Commodore64 SID-like).
    k_ArpeggioMini.udo - Arpeggio moves the frequency several times octave-wise, in the rythm of the LFO
    sampleONCE.udo - ; code from Steven Yi (http://csoundjournal.com/2006winter/encapsulatedInstruments.html), but now implemented as UDO
    k_checkaudio - checking the audio output or another a-rate signal by converting it to k-rate
    k_CrossX.udo - UDO for Blue. divides the incoming signal in 3 frequency portions, to be divided over 3 stereo SubChannels.Needs ButtXX.UDO's
