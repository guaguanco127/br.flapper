{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 104.0, 1612.0, 820.0 ],
        "description": "_br.flapper.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 15.0, 520.0, 33.0 ],
                    "text": "_br.flapper.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 300.0, 20.0 ],
                    "text": "br.flapper"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 45.0, 492.0, 60.0 ],
                    "text": "A flapper always records what you play. Each trigger starts a flap: it plays from that moment toward now, turns around, plays back to the trigger point, and keeps flapping between the two while its envelope lasts. Now keeps moving, so the window grows while a flap plays."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 118.0, 600.0, 60.0 ],
                    "text": "Two files, same DSP inside:\nbr.flapper.1.0 = core, no UI (in: L, R, On, Trigger, Mode, Threshold, Steal, Speed, Length, Attack, Decay, Sustain, Release, Overlap, Spread, LP, Dry/Wet, Mix Mode; out: L, R)\nbr.flapper.ui.1.0 = the same core with a panel and a State outlet"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 191.0, 600.0, 47.0 ],
                    "text": "Triggers: Mode Auto = whenever the input gets louder than Threshold (drum hits, sung or played notes), plus the Trigger button; Manual = Trigger only. Steal: a new flap releases the oldest one; Stack: up to 6 pile up (loud)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 250.0, 498.0, 87.0 ],
                    "text": "Speed 1 = normal. Above 1 a flap catches up with now and flaps fast (10 = flutter, 100+ = a buzz made of your input). Below 1 it just plays slower from the trigger point. Negative Speed: each new flap starts at now and plays backwards, up to Length ms into the past, then flaps (slow negative = plain reverse). Each flap has its own envelope: Attack, Decay to Sustain, held for Length, then Release. Overlap = crossfade at each turn. Spread = random pan."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 351.0, 490.0, 47.0 ],
                    "text": "A: the UI. Click a recipe (Steal Speed Length Attack Decay Sustain Release). B: the core alone in Manual mode: a metro triggers a flap every 500 ms, Speed 8, Stack, 400 ms flaps."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 410.0, 534.0, 60.0 ],
                    "text": "State outlet: A's last outlet sends on, manual, threshold, steal, speed, length, attack, decay, sustain, release, overlap, spread, lp, drywet and mode as named messages when a control changes (Trigger is an action, so it is not in State). Open p \"State outlet\" to see them routed by name."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 483.0, 600.0, 33.0 ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise ONE slider. Stacked flaps get loud."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 528.0, 600.0, 33.0 ],
                    "text": "Based on flapper~ and findtrigger~ from PeRColate by Dan Trueman and R. Luke DuBois (flapping between the trigger point and now, one envelope and random pan per flap, onset trigger), rebuilt from scratch in gen~."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 573.0, 300.0, 20.0 ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menu",
                    "items": [ "Off", ",", "drum loop", ",", "Anton", ",", "drone (synth)", ",", "mic (adc~ 1)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 660.0, 75.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menuc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 815.0, 75.0, 200.0, 20.0 ],
                    "text": "source: Off until you pick one"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 900.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 drone (synth), 4 mic (adc~ 1)",
                                    "id": "s-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "int", "int", "int" ],
                                    "patching_rect": [ 15.0, 50.0, 85.0, 22.0 ],
                                    "text": "t i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 400.0, 15.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 400.0, 45.0, 40.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 80.0, 260.0, 20.0 ],
                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 110.0, 180.0, 22.0 ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 110.0, 160.0, 22.0 ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 210.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 80.0, 440.0, 20.0 ],
                                    "text": "drone: a held chord, so the shifted partials and the climbing echoes are easy to hear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 140.0, 60.0, 22.0 ],
                                    "text": "saw~ 110"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 470.0, 140.0, 72.0, 22.0 ],
                                    "text": "saw~ 110.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 555.0, 140.0, 72.0, 22.0 ],
                                    "text": "saw~ 164.8"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 175.0, 52.0, 22.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sumc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.0, 175.0, 400.0, 20.0 ],
                                    "text": "three saws sum into one inlet; 0.25 keeps the chord near 0.75 peak"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 700.0, 140.0, 50.0, 22.0 ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 210.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 210.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 210.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 400.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 400.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 700.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 700.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 700.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 700.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 380.0, 50.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 210.0, 380.0, 50.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 380.0, 560.0, 33.0 ],
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes. All four are mono, sent to both sides"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal)",
                                    "id": "s-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 430.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Right Source (Signal)",
                                    "id": "s-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 430.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s-g4", 0 ],
                                    "source": [ "s-adc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f1", 0 ],
                                    "source": [ "s-eq1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f2", 0 ],
                                    "source": [ "s-eq2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f3", 0 ],
                                    "source": [ "s-eq3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f4", 0 ],
                                    "source": [ "s-eq4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l1", 0 ],
                                    "source": [ "s-f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l2", 0 ],
                                    "source": [ "s-f2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l3", 0 ],
                                    "source": [ "s-f3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l4", 0 ],
                                    "source": [ "s-f4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-t", 0 ],
                                    "source": [ "s-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 1 ],
                                    "source": [ "s-l1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 1 ],
                                    "source": [ "s-l2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 1 ],
                                    "source": [ "s-l3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4", 1 ],
                                    "source": [ "s-l4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-lbt", 0 ],
                                    "source": [ "s-lb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m1", 0 ],
                                    "source": [ "s-lbt", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m2", 0 ],
                                    "source": [ "s-lbt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p1", 0 ],
                                    "source": [ "s-m1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p2", 0 ],
                                    "source": [ "s-m2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o1", 0 ],
                                    "source": [ "s-outL", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o2", 0 ],
                                    "source": [ "s-outR", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 0 ],
                                    "source": [ "s-p1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 0 ],
                                    "source": [ "s-p2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 0 ],
                                    "source": [ "s-sum", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq1", 0 ],
                                    "source": [ "s-t", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq2", 0 ],
                                    "source": [ "s-t", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq3", 0 ],
                                    "source": [ "s-t", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq4", 0 ],
                                    "source": [ "s-t", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 660.0, 105.0, 120.0, 22.0 ],
                    "text": "p source"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 145.0, 460.0, 20.0 ],
                    "text": "recipes for A (click one): Steal Speed Length Attack Decay Sustain Release"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 171.0, 170.0, 20.0 ],
                    "text": "echo flap (Flapp-26 preset 1)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 170.0, 150.0, 22.0 ],
                    "text": "1 2 1000 20 20 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 196.0, 170.0, 20.0 ],
                    "text": "flutter (preset 2)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 195.0, 150.0, 22.0 ],
                    "text": "1 20 1000 20 20 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 221.0, 170.0, 20.0 ],
                    "text": "tiny grains (preset 13)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 220.0, 150.0, 22.0 ],
                    "text": "0 2 50 20 2 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 246.0, 170.0, 20.0 ],
                    "text": "pile-up buzz (preset 5)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 245.0, 150.0, 22.0 ],
                    "text": "0 100 2000 20 2 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 271.0, 173.0, 20.0 ],
                    "text": "high whine (preset 6, max 500)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 270.0, 150.0, 22.0 ],
                    "text": "0 500 2000 20 2 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 296.0, 170.0, 20.0 ],
                    "text": "swell (preset 10)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 295.0, 150.0, 22.0 ],
                    "text": "1 4 2500 2300 20 0.1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 321.0, 170.0, 20.0 ],
                    "text": "slow swell (preset 11)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 320.0, 150.0, 22.0 ],
                    "text": "1 1 2500 2300 20 0.1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 346.0, 170.0, 20.0 ],
                    "text": "reverse grab (negative)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 345.0, 150.0, 22.0 ],
                    "text": "1 -1 1000 20 20 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 371.0, 170.0, 20.0 ],
                    "text": "reverse flutter (negative)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 370.0, 150.0, 22.0 ],
                    "text": "1 -20 1000 20 20 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 836.0, 396.0, 170.0, 20.0 ],
                    "text": "back to the defaults"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.0, 395.0, 150.0, 22.0 ],
                    "text": "1 1 1000 20 20 1 20"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [ "int", "float", "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 660.0, 430.0, 240.0, 22.0 ],
                    "text": "unpack 0 0. 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpackc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 905.0, 430.0, 130.0, 20.0 ],
                    "text": "-> A inlets 7 to 13"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1200.0, 465.0, 140.0, 20.0 ],
                    "text": "A: br.flapper.ui.1.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.flapper.ui.1.0.maxpat",
                    "numinlets": 18,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 660.0, 465.0, 536.0, 96.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 560.0, 260.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A",
                                    "id": "st-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-a",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 100.0, 58.0, 20.0 ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-c",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 600.0, 61.0 ],
                                    "text": "br.flapper.ui.1.0 sends its state out of its LAST outlet as named messages, the moment a control changes: on, manual, threshold, steal, speed, length, attack, decay, sustain, release, overlap, spread, lp, drywet, mode. Route them by name, not by position. (Trigger is an action, not a setting, so it is not in State.)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-route",
                                    "maxclass": "newobj",
                                    "numinlets": 16,
                                    "numoutlets": 16,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 30.0, 135.0, 960.0, 22.0 ],
                                    "text": "route on manual threshold steal speed length attack decay sustain release overlap spread lp drywet mode"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 195.0, 64.0, 20.0 ],
                                    "text": "on"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n1",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 94.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 94.0, 195.0, 64.0, 20.0 ],
                                    "text": "manual"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 158.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 158.0, 195.0, 64.0, 20.0 ],
                                    "text": "threshold"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n3",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 222.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 222.0, 195.0, 64.0, 20.0 ],
                                    "text": "steal"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 286.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 286.0, 195.0, 64.0, 20.0 ],
                                    "text": "speed"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 350.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 350.0, 195.0, 64.0, 20.0 ],
                                    "text": "length"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n6",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 414.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 414.0, 195.0, 64.0, 20.0 ],
                                    "text": "attack"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 478.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 478.0, 195.0, 64.0, 20.0 ],
                                    "text": "decay"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 542.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 542.0, 195.0, 64.0, 20.0 ],
                                    "text": "sustain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n9",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 606.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l9",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 195.0, 64.0, 20.0 ],
                                    "text": "release"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n10",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 670.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 670.0, 195.0, 64.0, 20.0 ],
                                    "text": "overlap"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n11",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 734.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 734.0, 195.0, 64.0, 20.0 ],
                                    "text": "spread"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n12",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 798.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 798.0, 195.0, 64.0, 20.0 ],
                                    "text": "lp"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "st-n13",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 862.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 862.0, 195.0, 64.0, 20.0 ],
                                    "text": "drywet"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-n14",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 926.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 926.0, 195.0, 64.0, 20.0 ],
                                    "text": "mode"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "st-route", 0 ],
                                    "source": [ "st-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n0", 0 ],
                                    "source": [ "st-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n1", 0 ],
                                    "source": [ "st-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n10", 0 ],
                                    "source": [ "st-route", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n11", 0 ],
                                    "source": [ "st-route", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n12", 0 ],
                                    "source": [ "st-route", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n13", 0 ],
                                    "source": [ "st-route", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n14", 0 ],
                                    "source": [ "st-route", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n2", 0 ],
                                    "source": [ "st-route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n3", 0 ],
                                    "source": [ "st-route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n4", 0 ],
                                    "source": [ "st-route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n5", 0 ],
                                    "source": [ "st-route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n6", 0 ],
                                    "source": [ "st-route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n7", 0 ],
                                    "source": [ "st-route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n8", 0 ],
                                    "source": [ "st-route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n9", 0 ],
                                    "source": [ "st-route", 9 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1200.0, 495.0, 110.0, 22.0 ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1350.0, 145.0, 560.0, 20.0 ],
                    "text": "B: the core alone. Manual mode, a metro triggers a flap every 500 ms; Speed 8, Stack, 400 ms flaps"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1350.0, 175.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bdl",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1350.0, 200.0, 60.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 1350.0, 225.0, 90.0, 22.0 ],
                    "text": "t b b b b b"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1350.0, 255.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1390.0, 255.0, 30.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1430.0, 255.0, 30.0, 22.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1470.0, 255.0, 36.0, 22.0 ],
                    "text": "400"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1520.0, 255.0, 30.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bvc",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1560.0, 255.0, 330.0, 33.0 ],
                    "text": "after load (once gen~ is ready): Manual 1, Steal 0 (Stack), Speed 8, Length 400, then start the metro"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bm",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1520.0, 290.0, 70.0, 22.0 ],
                    "text": "metro 500"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 18,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1350.0, 400.0, 560.0, 22.0 ],
                    "text": "br.flapper.1.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1915.0, 400.0, 40.0, 20.0 ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 660.0, 575.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1350.0, 575.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 720.0, 575.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dactogc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 748.0, 577.0, 80.0, 20.0 ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 660.0, 735.0, 60.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gaina", 1 ],
                    "source": [ "obj-a", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gaina", 0 ],
                    "source": [ "obj-a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-state", 0 ],
                    "source": [ "obj-a", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 1 ],
                    "source": [ "obj-b", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 0 ],
                    "source": [ "obj-b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bt", 0 ],
                    "source": [ "obj-bdl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bdl", 0 ],
                    "source": [ "obj-blb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 3 ],
                    "source": [ "obj-bm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv0", 0 ],
                    "source": [ "obj-bt", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv1", 0 ],
                    "source": [ "obj-bt", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv2", 0 ],
                    "source": [ "obj-bt", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv3", 0 ],
                    "source": [ "obj-bt", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv4", 0 ],
                    "source": [ "obj-bt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 4 ],
                    "source": [ "obj-bv0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 6 ],
                    "source": [ "obj-bv1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 7 ],
                    "source": [ "obj-bv2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 8 ],
                    "source": [ "obj-bv3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bm", 0 ],
                    "source": [ "obj-bv4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-dactog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gaina", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gaina", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gainb", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gainb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-source", 0 ],
                    "source": [ "obj-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 1 ],
                    "order": 1,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 0 ],
                    "order": 1,
                    "source": [ "obj-source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 1 ],
                    "order": 0,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 0 ],
                    "order": 0,
                    "source": [ "obj-source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 12 ],
                    "source": [ "obj-unpack", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 11 ],
                    "source": [ "obj-unpack", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 10 ],
                    "source": [ "obj-unpack", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 9 ],
                    "source": [ "obj-unpack", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 8 ],
                    "source": [ "obj-unpack", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 7 ],
                    "source": [ "obj-unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 6 ],
                    "source": [ "obj-unpack", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-a::ctl-attack": [ "Attack", "Attack", 0 ],
            "obj-a::ctl-decay": [ "Decay", "Decay", 0 ],
            "obj-a::ctl-drywet": [ "Dry/Wet", "Dry/Wet", 0 ],
            "obj-a::ctl-length": [ "Length", "Length", 0 ],
            "obj-a::ctl-lp": [ "LP", "LP", 0 ],
            "obj-a::ctl-manual": [ "Mode", "Mode", 0 ],
            "obj-a::ctl-mode": [ "Mix Mode", "Mix Mode", 0 ],
            "obj-a::ctl-on": [ "On", "On", 0 ],
            "obj-a::ctl-overlap": [ "Overlap", "Overlap", 0 ],
            "obj-a::ctl-release": [ "Release", "Release", 0 ],
            "obj-a::ctl-speed": [ "Speed", "Speed", 0 ],
            "obj-a::ctl-spread": [ "Spread", "Spread", 0 ],
            "obj-a::ctl-steal": [ "Steal", "Steal", 0 ],
            "obj-a::ctl-sustain": [ "Sustain", "Sustain", 0 ],
            "obj-a::ctl-threshold": [ "Threshold", "Threshold", 0 ],
            "obj-a::ctl-trigger": [ "Trigger", "Trigger", 0 ],
            "obj-a::speed-num": [ "Speed Display", "Speed", 0 ],
            "obj-gaina": [ "A out", "A", 0 ],
            "obj-gainb": [ "B out", "B", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}