# Max/MSP RNBO Patch for External or VST Creation: br.flapper.rnbo.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.flapper.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.flapper](https://github.com/guaguanco127/br.flapper)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)  
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A stereo triggered delay-line flapper: it always records, and each trigger (a loud onset in Auto mode, or the Trigger) starts a flap that plays from that moment toward now, turns around, and flaps between the two while its envelope lasts. Up to 6 flaps, each randomly panned. Speed -500 to 500: above 1 flaps fast (a buzz), negative starts each flap backwards from now. Click-free, works at any sample rate.

Inside [rnbo~], the sixteen params (On, Trigger, Mode, Threshold, Steal, Speed, Length, Attack, Decay, Sustain, Release, Overlap, Spread, LP, DryWet, MixMode) are the plugin parameters, with the same ranges as the Max version; Speed is linear here (the curved dial only exists in the Max .ui and the Max for Live device). Inlets 3 to 18 set the same controls (inlet 4 takes a bang for Trigger), so the external has the same eighteen inlets as the abstraction. The gen~ code inside is the same as br.flapper.1.0.

**On:** off / on. Default on.  
**Trigger:** each change from off to on starts one flap; set it back to off before the next.  
**Mode:** Auto / Manual. Default Auto.  
**Threshold:** 0.001 to 1. Default 0.05.  
**Steal:** Stack / Steal. Default Steal.  
**Speed:** -500 to 500. Default 1.  
**Length:** 10 to 5000 ms. Default 1000.  
**Attack / Decay / Release:** 2 to 5000 ms. Default 20.  
**Sustain:** 0 to 1. Default 1.  
**Overlap:** 1 to 500 ms. Default 20.  
**Spread:** 0 to 1. Default 1.  
**LP:** 100 to 20000 Hz, 20000 = off. Default 20000.  
**DryWet:** 0 to 1, 1 = only the flaps. Default 1.  
**MixMode:** Thru / Aux, what you hear while Off: the input, or silence. Default Thru.  

Outlets: Left and Right. There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="VST"></a>What is a VST or AU Audio Plugin?

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.flapper.rnbo.1.0.maxpat. Drop a sample with clear hits (drums, voice) onto the [playlist~] and start it to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.flapper.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.flapper.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.flapper.1.0~ in any patch. It has the same inlets as the abstraction, except that the controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer**

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.flapper.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The parameters show up in your DAW for automation.

## <a name="Credits"></a>Credits

Based on flapper~ and findtrigger~ from PeRColate by Dan Trueman and R. Luke DuBois: flapping between the trigger point and now, a crossfade at each turn, one envelope and a random pan per flap, and the onset trigger. br.flapper is not a port: it was rebuilt from scratch in gen~ from how those objects work. Added by Brian Riordan: gen~ engine, stereo input with Spread, sample-rate-independent lengths, true speed (1 = normal), negative speed (backwards from now), level-steady turnarounds, Trigger inlet with Auto/Manual mode, LP, On/Off with Mix Mode, Dry/Wet, the UI, RNBO and Max for Live versions.
