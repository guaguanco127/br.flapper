# Ableton Max for Live device: br.flapper.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.flapper.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.flapper](https://github.com/guaguanco127/br.flapper)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Credits](#Credits)  

## <a name="About"></a>About

A stereo triggered delay-line flapper for Max/MSP, built in gen~. It is always recording what you play. Each trigger starts a flap: it marks that moment, plays toward "now", turns around, plays back to the moment it marked, turns again, and keeps flapping between the two while its envelope lasts. "Now" keeps moving, so the window grows the longer a flap plays. Up to 6 flaps play at once, each one panned somewhere else in the stereo field.

**Triggers:** in Auto mode a flap starts whenever the input gets louder than Threshold (a drum hit, a sung or played note), and on every Trigger. In Manual mode only Trigger starts one. After a loud moment, the level must drop below a fifth of Threshold before the next flap can start, so one note gives one flap.

**Speed:** -500 to 500. 1 = normal. Above 1 a flap catches up with now at once and flaps fast in a short window: 10 is a flutter, 100 and up is a buzz made of your own sound. Below 1 it never catches up with now, so it plays slowed down from the moment it marked. **Negative Speed** starts each new flap at now and plays it BACKWARDS, up to Length ms into the past, then it flaps between that point and now: slow negative speeds are plain reverse, fast ones flutter backwards. The sign only matters when a flap starts; turning Speed changes how fast every flap moves, and it glides, so it never clicks. Read without anti-aliasing on purpose: fast speeds get gritty.

**Curved Speed dial:** fine near 0 and fast at the ends: 1 sits a fifth of the way up, 10 about halfway, 100 about four fifths, 500 at the end, the same on the negative side. Type into the number under the dial for an exact speed.

**Envelope:** every flap fades in over Attack, falls to Sustain over Decay, is held until Length ms after its trigger, then fades out over Release. Overlap is the crossfade at each turnaround: short turns are harder and glitchier, long ones smoother.

**Steal or Stack:** with Steal, a new flap releases the oldest one still playing. With Stack, flaps pile up, 6 at most (when all 6 play, new triggers are ignored). Stacked flaps get loud: up to six times the level of one. Keep the output low, or put a limiter after it.

**Spread:** the random pan of each flap. 0 = plain stereo; 1 = anywhere from hard left to hard right. A stereo input keeps both channels: each is panned on its own, nothing is lost.

**LP:** a low-pass (100 Hz to 20 kHz) on the flaps you hear. The dry input is never filtered. At 20000 it is completely off.

**Click-free:** turnarounds crossfade, Speed, Sustain, LP and Dry/Wet glide, On/Off fades over 20 ms, and a flap never reads past now, so audio from long ago is never heard right next to the newest audio.

**On/Off and Mix Mode:** Off fades out and then pauses: nothing is recorded or played, so it costs almost no CPU. On again starts with no flaps, and backwards flaps never reach audio from before the pause. Mix Mode sets what you hear while Off: Thru = the input passes, Aux = silence, for an aux send. Dry/Wet (equal power) blends while On.

**Any sample rate:** everything is set in ms and converted with the real sample rate; the recording holds 8 seconds at 192 kHz.

A stereo audio effect: sixteen controls, all Live parameters, so you can automate them or map them to a controller (Trigger is a good candidate for a button or pad). Two parameter banks: **Flap** = Speed, Length, Attack, Decay, Sustain, Release, Overlap, Spread; **Trigger + Mix** = On, Mode, Threshold, Steal, Trigger, LP, Dry/Wet, Mix Mode. There is no output gain: use Live's mixer. In Live's automation lane, Speed shows the dial position (-1 to 1); the number under the dial shows the real speed. Hover over a control to read what it does in Live's Info View.

**On:** 1 = on, 0 = paused (fades out over 20 ms, then nothing runs). Default 1.

**Trigger:** start a flap now (works in both modes).

**Mode:** Auto (0) = a flap starts when the input gets loud, and on Trigger; Manual (1) = only on Trigger. Default Auto.

**Threshold:** 0.001 to 1. How loud the input must get to start a flap in Auto mode. Default 0.05.

**Steal:** Steal (1) = a new flap releases the oldest one; Stack (0) = they pile up, 6 at most. Default Steal.

**Speed:** -500 to 500. 1 = normal, above 1 flaps fast, negative = each new flap starts backwards. Default 1.

**Length:** 10 to 5000 ms. How long a flap is held before its Release starts. Default 1000.

**Attack:** 2 to 5000 ms. Fade-in of each flap. Default 20.

**Decay:** 2 to 5000 ms. Fall from full level to Sustain after the Attack. Default 20.

**Sustain:** 0 to 1. Level held until Length runs out. Default 1.

**Release:** 2 to 5000 ms. Fade-out at the end of a flap. Default 20.

**Overlap:** 1 to 500 ms. Crossfade at each turnaround. Short = harder turns. Default 20.

**Spread:** 0 to 1. Random pan of each flap: 0 = plain stereo, 1 = anywhere from hard left to hard right. Default 1.

**LP:** 100 to 20000 Hz. Low-pass on the flaps. 20000 = off. Default 20000.

**Dry/Wet:** 0 to 1 while On, equal power. 1 = only the flaps. Default 1.

**Mix Mode:** what you hear while Off. Thru (0) = the input passes; Aux (1) = silence. Default Thru.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing.

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.flapper.1.0.amxd into that folder (the device is frozen: it is the only file you need)

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.

## <a name="Credits"></a>Credits

Based on flapper~ and findtrigger~ from PeRColate by Dan Trueman and R. Luke DuBois: flapping between the trigger point and now, a crossfade at each turn, one envelope and a random pan per flap, and the onset trigger. br.flapper is not a port: it was rebuilt from scratch in gen~ from how those objects work. Added by Brian Riordan: gen~ engine, stereo input with Spread, sample-rate-independent lengths, true speed (1 = normal), negative speed (backwards from now), level-steady turnarounds, Trigger inlet with Auto/Manual mode, LP, On/Off with Mix Mode, Dry/Wet, the UI, RNBO and Max for Live versions.
