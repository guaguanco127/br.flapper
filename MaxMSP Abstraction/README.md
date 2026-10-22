# Max/MSP Abstractions:  
## br.flapper.1.0

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.flapper.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.flapper](https://github.com/guaguanco127/br.flapper)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
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

**Two files:** br.flapper.1.0 is the plain object: the Float control inlets take signals as well as numbers, so an LFO can sweep Speed (or LP, or Spread). br.flapper.ui.1.0 adds the panel for a [bpatcher], plus a State outlet.

### Controls

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

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.flapper.1.0.maxpat and br.flapper.ui.1.0.maxpat into the same folder as the Max patch you are using (the .ui file uses the plain object).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.flapper.ui.1.0.maxpat. Size the bpatcher to 536 x 96 to show all of the controls.

4. For the plain object, create an object with its name (br.flapper.1.0, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order on both files. On the .ui file, sending a value to an inlet moves its on-screen control too, so the display always matches the sound (Speed takes the real speed, not the dial position). On the plain object, the Float inlets also take signals. Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal |  |  |
| 2 | Right In | Signal |  |  |
| 3 | On | Int | 0 / 1 | 1 |
| 4 | Trigger | Bang |  |  |
| 5 | Mode | Int | 0 Auto / 1 Manual | 0 |
| 6 | Threshold | Float | 0.001 - 1 | 0.05 |
| 7 | Steal | Int | 0 Stack / 1 Steal | 1 |
| 8 | Speed | Float | -500 - 500 (negative = start backwards) | 1 |
| 9 | Length | Float | 10 - 5000 ms | 1000 |
| 10 | Attack | Float | 2 - 5000 ms | 20 |
| 11 | Decay | Float | 2 - 5000 ms | 20 |
| 12 | Sustain | Float | 0 - 1 | 1 |
| 13 | Release | Float | 2 - 5000 ms | 20 |
| 14 | Overlap | Float | 1 - 500 ms | 20 |
| 15 | Spread | Float | 0 - 1 | 1 |
| 16 | LP | Float | 100 - 20000 Hz (20000 off) | 20000 |
| 17 | Dry/Wet | Float | 0 - 1 (1 only the flaps) | 1 |
| 18 | Mix Mode | Int | 0 Thru / 1 Aux | 0 |

| Outlet | Plain object | .ui file | Type |
|---|---|---|---|
| 1 | Left Out | Left Out | Signal |
| 2 | Right Out | Right Out | Signal |
| 3 |  | State: the settings as named messages, see [State outlet](#State) | Message |

**Ideas:**
- Echo flap: Speed 2, Length 1000, Steal: every hit flaps back and forth once or twice.
- Flutter: Speed 20 on drums or voice.
- Buzz pile-up: Speed 100, Stack, Length 2000: each hit adds a tone made of itself.
- Swell: Speed 4, Attack 2300, Sustain 0.1, Length 2500.
- Reverse grab: Speed -1: every note plays backwards from where you are, reaching back up to Length ms.
- Rhythm: Manual mode and a [metro] into Trigger, Stack, short Length.
- Tame the buzz: bring LP down to 2000 - 4000 at high speeds.

## <a name="State"></a>State outlet

The State outlet of the .ui file (outlet 3) sends the current settings as named messages the moment they change, for example `speed -20.`, `steal 0`, `lp 2000.`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route on manual threshold steal speed length attack decay sustain release overlap spread lp drywet mode], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out. Trigger is an action, not a setting, so it is not in State.

| Message | Type | Range |
|---|---|---|
| on | Int | 0 / 1 |
| manual | Int | 0 Auto / 1 Manual |
| threshold | Float | 0.001 to 1 |
| steal | Int | 0 Stack / 1 Steal |
| speed | Float | -500 to 500 |
| length | Float | 10 to 5000 ms |
| attack | Float | 2 to 5000 ms |
| decay | Float | 2 to 5000 ms |
| sustain | Float | 0 to 1 |
| release | Float | 2 to 5000 ms |
| overlap | Float | 1 to 500 ms |
| spread | Float | 0 to 1 |
| lp | Float | 100 to 20000 Hz |
| drywet | Float | 0 to 1 |
| mode | Int | 0 Thru / 1 Aux |

Each message carries the same value its inlet takes (speed is the real speed), so a State message can go straight back into an inlet. "manual" is the trigger Mode and "mode" is Mix Mode, the same name every br.* abstraction uses for it. The plain object has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.flapper.example.1.0.maxpat (keep it in the same folder as both abstraction files). Pick a source in the menu: drum loop, Anton (both ship with Max), a drone, or your mic. It starts Off. Both outputs start muted at -70 dB: turn on the audio, then raise one slider slowly. The drum loop and Anton trigger flaps on their own in Auto mode; the drone is one held chord, so press Trigger for it.

- **A, the version with dials:** click a recipe (it sets Steal, Speed, Length, Attack, Decay, Sustain and Release through A's inlets): echo flap, flutter, tiny grains, pile-up buzz, high whine, swell, slow swell, reverse grab, reverse flutter, and back to the defaults.
- **B, the plain object:** Manual mode, a [metro] triggers a flap every 500 ms at Speed 8, stacked, 400 ms long.
- **p "State outlet":** move A's controls and watch each value come out by name through [route].

## <a name="Credits"></a>Credits

Based on flapper~ and findtrigger~ from PeRColate by Dan Trueman and R. Luke DuBois: flapping between the trigger point and now, a crossfade at each turn, one envelope and a random pan per flap, and the onset trigger. br.flapper is not a port: it was rebuilt from scratch in gen~ from how those objects work. Added by Brian Riordan: gen~ engine, stereo input with Spread, sample-rate-independent lengths, true speed (1 = normal), negative speed (backwards from now), level-steady turnarounds, Trigger inlet with Auto/Manual mode, LP, On/Off with Mix Mode, Dry/Wet, the UI, RNBO and Max for Live versions.
