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
        "rect": [
            134.0,
            159.0,
            980.0,
            620.0
        ],
        "description": "br.flapper.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "autosave": 0,
        "parameters": {
            "obj-gain": [
                "Out",
                "Out",
                0
            ],
            "inherited_shortname": 1
        },
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.flapper.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        15.0,
                        520.0,
                        33.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-intro",
                    "maxclass": "comment",
                    "text": "RNBO version of br.flapper.1.0 (same gen~ code). Drop a sample with clear hits (drums, voice) onto the playlist~, start it, raise the slider slowly. Mode Auto flaps on every hit above Threshold; Manual = the Trigger button only. Speed 1 = normal, above 1 flaps fast, 100+ = buzz, negative = flaps start backwards from now. Steal / Stack, envelope, Overlap, Spread, LP. Based on flapper~ (PeRColate, Trueman / DuBois).",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        55.0,
                        560.0,
                        61.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 4
                }
            },
            {
                "box": {
                    "id": "obj-drop",
                    "maxclass": "comment",
                    "text": "Drop sample into here",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        15.0,
                        150.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-pl",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "quality": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        40.0,
                        150.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        530.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "lastchannelcount": 0,
                    "patching_rect": [
                        30.0,
                        380.0,
                        48.0,
                        136.0
                    ],
                    "varname": "live.gain~",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "On",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Mode",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        154.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Threshold",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        178.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Steal",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        202.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Speed",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        226.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Length",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Attack",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        154.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Decay",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        178.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Sustain",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        202.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Release",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        226.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Overlap",
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Spread",
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        154.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "LP",
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        178.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr13",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "DryWet",
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        202.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-attr14",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "MixMode",
                    "parameter_enable": 0,
                    "patching_rect": [
                        650.0,
                        226.0,
                        180.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-trigger",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        860.0,
                        130.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-triggerc",
                    "maxclass": "comment",
                    "text": "Trigger",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        888.0,
                        132.0,
                        60.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-rnbo",
                    "maxclass": "newobj",
                    "numinlets": 18,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patching_rect": [
                        30.0,
                        330.0,
                        900.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "text": "rnbo~",
                    "varname": "rnbo~",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal)"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "On (Int) 1 = on; 0 = paused: fades out over 20 ms; then stops recording and flapping (no CPU). Turning on again starts with no flaps. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Trigger (Bang) start a flap now (works in both Modes)"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Mode (Int) 0 = Auto: a flap starts whenever the input gets loud; and on Trigger. 1 = Manual: only on Trigger. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Threshold (Signal/Float) 0.001 - 1. Auto mode: how loud the input must get to start a flap (rms). It must drop below a fifth of this before the next one. Default 0.05"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Steal (Int) 1 = a new flap releases the oldest one still playing. 0 = Stack: they pile up (6 at most; when all 6 play; new triggers are ignored; loud). Default 1"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Speed (Signal/Float) -500 - 500. 1 = normal. Above 1 a flap catches up with now and flaps fast (high = buzz); below 1 it just plays slower from the trigger point. Negative: a new flap starts at now and plays backwards; up to Length ms into the past; then flaps. The dial is curved (fine near 0); type into the number under it for an exact value. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Length (Signal/Float) 10 - 5000 ms. How long a flap is held before its Release starts. Default 1000"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "Attack (Signal/Float) 2 - 5000 ms. Fade-in of each flap. Default 20"
                            },
                            {
                                "type": "event",
                                "index": 11,
                                "tag": "in11",
                                "comment": "Decay (Signal/Float) 2 - 5000 ms. Fall from full level to Sustain after the Attack. Default 20"
                            },
                            {
                                "type": "event",
                                "index": 12,
                                "tag": "in12",
                                "comment": "Sustain (Signal/Float) 0 - 1. Level held until Length runs out. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 13,
                                "tag": "in13",
                                "comment": "Release (Signal/Float) 2 - 5000 ms. Fade-out at the end of a flap (from full level; quicker from lower). Default 20"
                            },
                            {
                                "type": "event",
                                "index": 14,
                                "tag": "in14",
                                "comment": "Overlap (Signal/Float) 1 - 500 ms. Crossfade at each turnaround (shorter when the flap window is tiny). Short = harder; glitchier turns. Default 20"
                            },
                            {
                                "type": "event",
                                "index": 15,
                                "tag": "in15",
                                "comment": "Spread (Signal/Float) 0 - 1. Random pan of each flap: 0 = plain stereo; 1 = anywhere from hard left to hard right. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 16,
                                "tag": "in16",
                                "comment": "LP (Signal/Float) 100 - 20000 Hz. Low-pass on the flaps you hear (the dry input is never filtered). 20000 = off. Default 20000"
                            },
                            {
                                "type": "event",
                                "index": 17,
                                "tag": "in17",
                                "comment": "Dry/Wet (Signal/Float) 0 - 1 while On; equal power. 1 = only the flaps. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 18,
                                "tag": "in18",
                                "comment": "Mix Mode (Int) what you hear while Off: 0 = Thru (the input passes); 1 = Aux (silence). Default 0"
                            }
                        ]
                    },
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": "Left Out (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": "Right Out (Signal)"
                            }
                        ]
                    },
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "981a9d62-9b10-45c3-b0ea-3d740cf2c457"
                    },
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            60.0,
                            100.0,
                            2900.0,
                            560.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "r-in1",
                                    "maxclass": "newobj",
                                    "text": "in~ 1 @comment \"Left In (Signal)\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "linecount": 2,
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_r-in1",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in2",
                                    "maxclass": "newobj",
                                    "text": "in~ 2 @comment \"Right In (Signal)\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "linecount": 2,
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_r-in2",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in3",
                                    "maxclass": "newobj",
                                    "text": "in 3 @comment \"On (Int) 1 = on; 0 = paused: fades out over 20 ms; then stops recording and flapping (no CPU). Turning on again starts with no flaps. Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_r-in3",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-On",
                                    "maxclass": "newobj",
                                    "text": "param On 1 @enum off on @order 1",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "On",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "On",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in4",
                                    "maxclass": "newobj",
                                    "text": "in 4 @comment \"Trigger (Bang) start a flap now (works in both Modes)\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_r-in4",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Trigger",
                                    "maxclass": "newobj",
                                    "text": "param Trigger 0 @enum off on @order 2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Trigger",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "Trigger",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-triggerchg",
                                    "maxclass": "newobj",
                                    "text": "change",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        200.0,
                                        60.0,
                                        22.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-triggert",
                                    "maxclass": "newobj",
                                    "text": "trigger b",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        200.0,
                                        70.0,
                                        22.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-triggerone",
                                    "maxclass": "message",
                                    "text": "1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700.0,
                                        230.0,
                                        30.0,
                                        22.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-triggeracc",
                                    "maxclass": "newobj",
                                    "text": "accum",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        260.0,
                                        60.0,
                                        22.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in5",
                                    "maxclass": "newobj",
                                    "text": "in 5 @comment \"Mode (Int) 0 = Auto: a flap starts whenever the input gets loud; and on Trigger. 1 = Manual: only on Trigger. Default 0\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_r-in5",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Mode",
                                    "maxclass": "newobj",
                                    "text": "param Mode 0 @enum Auto Manual @order 3",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Mode",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "Mode",
                                    "rnbo_extra_attributes": {
                                        "enum": "Auto Manual",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in6",
                                    "maxclass": "newobj",
                                    "text": "in 6 @comment \"Threshold (Signal/Float) 0.001 - 1. Auto mode: how loud the input must get to start a flap (rms). It must drop below a fifth of this before the next one. Default 0.05\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in_r-in6",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Threshold",
                                    "maxclass": "newobj",
                                    "text": "param Threshold 0.05 @min 0.001 @max 1.0 @exponent 3.0 @order 4",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Threshold",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "Threshold",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in7",
                                    "maxclass": "newobj",
                                    "text": "in 7 @comment \"Steal (Int) 1 = a new flap releases the oldest one still playing. 0 = Stack: they pile up (6 at most; when all 6 play; new triggers are ignored; loud). Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in_r-in7",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Steal",
                                    "maxclass": "newobj",
                                    "text": "param Steal 1 @enum Stack Steal @order 5",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Steal",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "Steal",
                                    "rnbo_extra_attributes": {
                                        "enum": "Stack Steal",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in8",
                                    "maxclass": "newobj",
                                    "text": "in 8 @comment \"Speed (Signal/Float) -500 - 500. 1 = normal. Above 1 a flap catches up with now and flaps fast (high = buzz); below 1 it just plays slower from the trigger point. Negative: a new flap starts at now and plays backwards; up to Length ms into the past; then flaps. The dial is curved (fine near 0); type into the number under it for an exact value. Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in_r-in8",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Speed",
                                    "maxclass": "newobj",
                                    "text": "param Speed 1 @min -500.0 @max 500.0 @order 6",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Speed",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "Speed",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in9",
                                    "maxclass": "newobj",
                                    "text": "in 9 @comment \"Length (Signal/Float) 10 - 5000 ms. How long a flap is held before its Release starts. Default 1000\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in_r-in9",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Length",
                                    "maxclass": "newobj",
                                    "text": "param Length 1000 @min 10.0 @max 5000.0 @exponent 3.0 @order 7",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Length",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "Length",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in10",
                                    "maxclass": "newobj",
                                    "text": "in 10 @comment \"Attack (Signal/Float) 2 - 5000 ms. Fade-in of each flap. Default 20\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "in_r-in10",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Attack",
                                    "maxclass": "newobj",
                                    "text": "param Attack 20 @min 2.0 @max 5000.0 @exponent 3.0 @order 8",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Attack",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "Attack",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in11",
                                    "maxclass": "newobj",
                                    "text": "in 11 @comment \"Decay (Signal/Float) 2 - 5000 ms. Fall from full level to Sustain after the Attack. Default 20\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2030.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "in_r-in11",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Decay",
                                    "maxclass": "newobj",
                                    "text": "param Decay 20 @min 2.0 @max 5000.0 @exponent 3.0 @order 9",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Decay",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "Decay",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in12",
                                    "maxclass": "newobj",
                                    "text": "in 12 @comment \"Sustain (Signal/Float) 0 - 1. Level held until Length runs out. Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2230.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "in_r-in12",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Sustain",
                                    "maxclass": "newobj",
                                    "text": "param Sustain 1 @min 0.0 @max 1.0 @order 10",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Sustain",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "Sustain",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in13",
                                    "maxclass": "newobj",
                                    "text": "in 13 @comment \"Release (Signal/Float) 2 - 5000 ms. Fade-out at the end of a flap (from full level; quicker from lower). Default 20\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "in_r-in13",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Release",
                                    "maxclass": "newobj",
                                    "text": "param Release 20 @min 2.0 @max 5000.0 @exponent 3.0 @order 11",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Release",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "Release",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in14",
                                    "maxclass": "newobj",
                                    "text": "in 14 @comment \"Overlap (Signal/Float) 1 - 500 ms. Crossfade at each turnaround (shorter when the flap window is tiny). Short = harder; glitchier turns. Default 20\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "in_r-in14",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Overlap",
                                    "maxclass": "newobj",
                                    "text": "param Overlap 20 @min 1.0 @max 500.0 @exponent 3.0 @order 12",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Overlap",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "Overlap",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in15",
                                    "maxclass": "newobj",
                                    "text": "in 15 @comment \"Spread (Signal/Float) 0 - 1. Random pan of each flap: 0 = plain stereo; 1 = anywhere from hard left to hard right. Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 13,
                                    "rnbo_uniqueid": "in_r-in15",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Spread",
                                    "maxclass": "newobj",
                                    "text": "param Spread 1 @min 0.0 @max 1.0 @order 13",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "Spread",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 13,
                                    "rnbo_uniqueid": "Spread",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in16",
                                    "maxclass": "newobj",
                                    "text": "in 16 @comment \"LP (Signal/Float) 100 - 20000 Hz. Low-pass on the flaps you hear (the dry input is never filtered). 20000 = off. Default 20000\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        3030.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 14,
                                    "rnbo_uniqueid": "in_r-in16",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-LP",
                                    "maxclass": "newobj",
                                    "text": "param LP 20000 @min 100.0 @max 20000.0 @exponent 4.0 @order 14",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        3030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "LP",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 14,
                                    "rnbo_uniqueid": "LP",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in17",
                                    "maxclass": "newobj",
                                    "text": "in 17 @comment \"Dry/Wet (Signal/Float) 0 - 1 while On; equal power. 1 = only the flaps. Default 1\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        3230.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 15,
                                    "rnbo_uniqueid": "in_r-in17",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-DryWet",
                                    "maxclass": "newobj",
                                    "text": "param DryWet 1 @min 0.0 @max 1.0 @order 15",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        3230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "DryWet",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 15,
                                    "rnbo_uniqueid": "DryWet",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in18",
                                    "maxclass": "newobj",
                                    "text": "in 18 @comment \"Mix Mode (Int) what you hear while Off: 0 = Thru (the input passes); 1 = Aux (silence). Default 0\"",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        3430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "linecount": 6,
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 16,
                                    "rnbo_uniqueid": "in_r-in18",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "p-MixMode",
                                    "maxclass": "newobj",
                                    "text": "param MixMode 0 @enum Thru Aux @order 16",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        3430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "linecount": 2,
                                    "varname": "MixMode",
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 16,
                                    "rnbo_uniqueid": "MixMode",
                                    "rnbo_extra_attributes": {
                                        "enum": "Thru Aux",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gen",
                                    "maxclass": "newobj",
                                    "numinlets": 18,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        330.0,
                                        3600.0,
                                        23.0
                                    ],
                                    "text": "gen~ @title br.flapper.1.0",
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.flapper.1.0",
                                    "varname": "br.flapper.1.0",
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 0,
                                                "revision": 0,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                100.0,
                                                100.0,
                                                1280.0,
                                                900.0
                                            ],
                                            "bglocked": 0,
                                            "openinpresentation": 0,
                                            "default_fontsize": 12.0,
                                            "default_fontface": 0,
                                            "default_fontname": "Arial",
                                            "gridonopen": 1,
                                            "gridsize": [
                                                15.0,
                                                15.0
                                            ],
                                            "gridsnaponopen": 1,
                                            "objectsnaponopen": 1,
                                            "statusbarvisible": 2,
                                            "toolbarvisible": 1,
                                            "lefttoolbarpinned": 0,
                                            "toptoolbarpinned": 0,
                                            "righttoolbarpinned": 0,
                                            "bottomtoolbarpinned": 0,
                                            "toolbars_unpinned_last_save": 0,
                                            "tallnewobj": 0,
                                            "boxanimatetime": 200,
                                            "enablehscroll": 1,
                                            "enablevscroll": 1,
                                            "devicewidth": 0.0,
                                            "description": "",
                                            "digest": "",
                                            "tags": "",
                                            "style": "",
                                            "subpatcher_template": "",
                                            "assistshowspatchername": 0,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-1",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            20.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 1 @comment audio L",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-2",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            270.0,
                                                            20.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 2 @comment audio R",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-3",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            520.0,
                                                            20.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 3 @comment on @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-4",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            770.0,
                                                            20.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 4 @comment trigger count (any change = trigger) @default 0",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-5",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1020.0,
                                                            20.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 5 @comment mode 0 auto 1 manual @default 0 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-6",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            50.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 6 @comment threshold (rms) @default 0.05 @min 0.001 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-7",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            270.0,
                                                            50.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 7 @comment steal 0/1 @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-8",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            520.0,
                                                            50.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 8 @comment speed (negative = start backwards) @default 1 @min -500 @max 500",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-9",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            770.0,
                                                            50.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 9 @comment length ms @default 1000 @min 10 @max 5000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-10",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1020.0,
                                                            50.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 10 @comment attack ms @default 20 @min 2 @max 5000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-11",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            80.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 11 @comment decay ms @default 20 @min 2 @max 5000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-12",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            270.0,
                                                            80.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 12 @comment sustain @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-13",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            520.0,
                                                            80.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 13 @comment release ms @default 20 @min 2 @max 5000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-14",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            770.0,
                                                            80.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 14 @comment overlap ms @default 20 @min 1 @max 500",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-15",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1020.0,
                                                            80.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 15 @comment spread @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-16",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            110.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 16 @comment lp hz (20000 = off) @default 20000 @min 100 @max 20000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-17",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            270.0,
                                                            110.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 17 @comment dry/wet @default 1 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-18",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            520.0,
                                                            110.0,
                                                            240.0,
                                                            22.0
                                                        ],
                                                        "text": "in 18 @comment mix mode 0 thru 1 aux @default 0 @min 0 @max 1",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "codebox",
                                                        "id": "obj-19",
                                                        "numinlets": 18,
                                                        "numoutlets": 2,
                                                        "outlettype": [
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            150.0,
                                                            1220.0,
                                                            680.0
                                                        ],
                                                        "parameter_enable": 0,
                                                        "code": "// br.flapper.1.0 -- stereo triggered delay-line flapper\n// Technique: flapper~ (+ findtrigger~) from PeRColate (Dan Trueman + R. Luke DuBois). Rebuilt from scratch in gen~.\n// The input is ALWAYS recorded into one ring (8 s at 192 kHz). A trigger starts a FLAP: it marks that moment\n// and plays forward toward \"now\" (the record point). Near \"now\" it turns around and plays back to the mark,\n// turns again, and keeps flapping between the two. \"Now\" keeps moving, so the flap's window grows while it lasts.\n// Speed 1 = normal. Above 1 it catches \"now\" at once and flaps fast in a short window (a buzz). Below 1 it never\n// catches \"now\": it just plays slowed down from the trigger point.\n// Negative Speed: a new flap starts at now and plays BACKWARDS into the past, up to Length ms back, then flaps\n// between that point and now. Slow negative speeds = plain reverse playback. The sign only matters when a flap\n// starts; how fast every flap moves is the size of Speed (0 counts as 0.01).\n// Each turn is a crossfade (Overlap ms) between the head and its mirror image going the other way.\n// The head never reads past the record point, so \"8 s ago\" is never heard right next to \"now\".\n// Up to 6 flaps at once. Each has its own envelope: Attack, Decay to Sustain, held until Length ms after the\n// trigger, then Release. Steal on: a new trigger releases the oldest flap still held. All 6 busy: trigger ignored.\n// Each flap gets a random pan, as wide as Spread: 0 = plain stereo, 1 = anywhere from hard left to hard right.\n// Stereo input: L and R are panned separately (dual constant-power panner), so nothing is lost.\n// Triggers: Mode Auto = when the input gets loud (rms above Threshold; it must drop below a fifth of it before the\n// next one) AND the Trigger inlet; Mode Manual = the Trigger inlet only.\n// LP is a low-pass on the flaps you hear (dry is never filtered), 12 dB/oct TPT state-variable filter (from\n// br.stutter's st.filter), cutoff glides in octaves over 30 ms. From 19990 Hz up it is skipped entirely.\n// On 0 = paused: fades out, then stops recording and flapping (no CPU). On again starts with no flaps.\n// Mix Mode: Thru = the input passes while Off, Aux = silent while Off.\n// in1 / in2 audio L / R, in3 on 0/1, in4 trigger (any change = trigger), in5 mode 0 Auto / 1 Manual,\n// in6 threshold 0.001..1, in7 steal 0/1, in8 speed -500..500, in9 length ms 10..5000, in10 attack ms 2..5000,\n// in11 decay ms 2..5000, in12 sustain 0..1, in13 release ms 2..5000, in14 overlap ms 1..500, in15 spread 0..1,\n// in16 lp Hz 100..20000 (20000 = off), in17 dry/wet 0..1, in18 mix mode 0 Thru / 1 Aux\n// out1 / out2 audio L / R\n\nData ring(1536004, 2);  // 8 s at 192 kHz, L / R\nData flaps(6, 16);      // one row per flap (NOT named vs: RNBO fails to compile that). Columns:\n// 0 stage (0 free, 1 attack, 2 decay, 3 sustain, 4 release)   1 envelope level   2 samples since the trigger\n// 3 order (0 = newest)   4 direction (1 = toward now, -1 = toward the mark)\n// 5 / 6 head age, whole samples / fraction (age = how long ago: 0 = the sample just recorded)\n// 7 mark age   8 crossfade samples left   9 crossfade length (0 = not turning)\n// 10 / 11 mirror head age, whole / fraction   12..15 pan gains: L in to L out, L to R, R to L, R to R\n// Ages stay below 2^24 and are split into whole + fraction, so float32 Data keeps them exact.\nHistory hrec(0);        // record point (index into ring)\nHistory hrecn(0);       // how many samples were recorded since On (a backwards flap never reaches further back)\nHistory hog(1);         // On fade 0..1\nHistory hpaused(0);\nHistory prevtrg(0);\nHistory hgate(0);       // onset detector: 1 = loud (waiting for it to drop)\nHistory hdcx(0);        // onset detector DC blocker\nHistory hdcy(0);\nHistory hms(0);         // onset detector mean square\nHistory sp_s(1);\nHistory sp2_s(1);\nHistory sus_s(1);\nHistory dw_s(1);\nHistory md_s(0);\nHistory lp_s(14.2877);  // LP cutoff, smoothed in octaves (log2 Hz; 14.2877 = 20000 Hz)\nHistory lpf_c(-1);      // cutoff the coefficients below were made for\nHistory lpg_c(0);\nHistory w1l(0);         // LP state L / R\nHistory w2l(0);\nHistory w1r(0);\nHistory w2r(0);\nHistory init(0);\n\nNR = 1536004;\nv = 0;\nAMAX = NR - 8;\nc10 = 1 - exp(-1 / max(1, mstosamps(10)));\nc20 = 1 - exp(-1 / max(1, mstosamps(20)));\nc30 = 1 - exp(-1 / max(1, mstosamps(30)));\nostep = 1 / max(1, mstosamps(20));\ncdc = exp(-twopi * 10 / samplerate);        // DC blocker, 10 Hz\ncms = 1 - exp(-1 / max(1, mstosamps(2.3))); // loudness follower (about findtrigger~'s 200-sample average)\nspanmax = floor(mstosamps(5000));           // a flap's window never gets longer than 5 s (the mark slides)\n\n// read every History into a local first; they are written back at the very end\nrec = hrec;\nrecn = hrecn;\nog = hog;\npz = hpaused;\npt = prevtrg;\nloud = hgate;\ndcx = hdcx;\ndcy = hdcy;\nmsq = hms;\nsp = sp_s;\nsp2 = sp2_s;\nsus = sus_s;\ndw = dw_s;\nmd = md_s;\nls = lp_s;\nfcl = lpf_c;\ngl = lpg_c;\nq1l = w1l;\nq2l = w2l;\nq1r = w1r;\nq2r = w2r;\n\non = in3 > 0.5;\nif (init < 0.5) {\n\t// first sample: start the smoothed values at their targets, ignore whatever count is waiting\n\tsp = clip(in8, -500, 500);\n\tsp2 = sp;\n\tsus = clip(in12, 0, 1);\n\tdw = clip(in17, 0, 1);\n\tmd = clip(in18, 0, 1);\n\tls = log2(clip(in16, 100, 20000));\n\tpt = in4;\n\tog = on;\n\tpz = 1 - on;\n}\n\nx1 = fixnan(in1);\nx2 = fixnan(in2);\n// Speed goes through two smoothers, so speed changes glide\nsp = sp + c20 * (clip(in8, -500, 500) - sp);\nsp2 = sp2 + c20 * (sp - sp2);\nspd = max(abs(sp2), 0.01);   // how fast every flap moves\nsus = sus + c20 * (clip(in12, 0, 1) - sus);\ndw = dw + c10 * (clip(in17, 0, 1) - dw);\nmd = md + c20 * (clip(in18, 0, 1) - md);\nls = ls + c30 * (log2(clip(in16, 100, 20000)) - ls);   // glide in octaves\n\n// envelope steps per sample and the other settings, read live\nainc = 1 / max(1, mstosamps(clip(in10, 2, 5000)));\ndinc = 1 / max(1, mstosamps(clip(in11, 2, 5000)));\nrinc = 1 / max(1, mstosamps(clip(in13, 2, 5000)));\nlens = max(1, mstosamps(clip(in9, 10, 5000)));\novs = max(1, floor(mstosamps(clip(in14, 1, 500))));\nthr = clip(in6, 0.001, 1);\nmanual = in5 > 0.5;\nsteal = in7 > 0.5;\nspread = clip(in15, 0, 1);\n\n// --- Trigger inlet: any change of the count ---\ntrig = 0;\nif (abs(in4 - pt) > 0.0001) {\n\ttrig = 1;\n}\npt = in4;\n\n// --- On / Off: fade over 20 ms; once silent, pause (nothing runs) ---\ndoreset = 0;\nif (on > 0.5) {\n\tif (pz > 0.5) {\n\t\tdoreset = 1;   // waking up: no flaps left over from before the pause\n\t\tpz = 0;\n\t}\n\tog = min(og + ostep, 1);\n} else {\n\tog = max(og - ostep, 0);\n\tif (og <= 0) {\n\t\tpz = 1;\n\t}\n}\n\nwetl = 0;\nwetr = 0;\n// everything used inside the blocks below starts at 0 (GenExpr wants variables set before an if block)\nmono = 0;\nrms = 0;\nbest = 0;\nbestord = 0;\nfreev = 0;\nst = 0;\nod = 0;\npan = 0;\nthl = 0;\nthr2 = 0;\nenvl = 0;\ncnt = 0;\ndir = 0;\nhage = 0;\nmage = 0;\nfrem = 0;\nflen = 0;\nbage = 0;\ngll = 0;\nglr = 0;\ngrl = 0;\ngrr = 0;\ndst = 0;\nfsz = 0;\nrpos = 0;\ni0 = 0;\ni1 = 0;\nfr0 = 0;\ny0 = 0;\ny1 = 0;\nhl = 0;\nhr = 0;\nbl = 0;\nbr = 0;\nxt = 0;\nwhole = 0;\nfc = 0;\na1 = 0;\na2 = 0;\na3 = 0;\nv1 = 0;\nv2 = 0;\nv3 = 0;\nbyp = 0;\nif (pz < 0.5) {\n\tif (doreset > 0.5) {\n\t\tfor (v = 0; v < 6; v += 1) {\n\t\t\tpoke(flaps, 0, v, 0);\n\t\t\tpoke(flaps, 0, v, 1);\n\t\t}\n\t\trecn = 0;   // what is in the ring from before the pause must never be heard\n\t}\n\n\t// record: always, so a flap can reach back to any trigger point\n\tpoke(ring, x1, rec, 0);\n\tpoke(ring, x2, rec, 1);\n\trecn = min(recn + 1, NR);\n\n\t// onset detector (findtrigger~ recipe): DC block, loudness, then a gate with two thresholds\n\tmono = 0.5 * (x1 + x2);\n\tdcy = mono - dcx + cdc * dcy;\n\tdcx = mono;\n\tmsq = msq + cms * (dcy * dcy - msq);\n\trms = sqrt(max(msq, 0));\n\tif (loud < 0.5) {\n\t\tif (rms > thr) {\n\t\t\tloud = 1;\n\t\t\tif (manual < 0.5) {\n\t\t\t\ttrig = 1;\n\t\t\t}\n\t\t}\n\t} else if (rms < thr * 0.2) {\n\t\tloud = 0;\n\t}\n\n\t// --- a new flap ---\n\tif (trig > 0.5) {\n\t\t// Steal: release the oldest flap that is still held\n\t\tif (steal > 0.5) {\n\t\t\tbest = -1;\n\t\t\tbestord = -1;\n\t\t\tfor (v = 0; v < 6; v += 1) {\n\t\t\t\tst = peek(flaps, v, 0);\n\t\t\t\tod = peek(flaps, v, 3);\n\t\t\t\tif (st > 0.5 && st < 3.5 && od > bestord) {\n\t\t\t\t\tbestord = od;\n\t\t\t\t\tbest = v;\n\t\t\t\t}\n\t\t\t}\n\t\t\tif (best > -0.5) {\n\t\t\t\tpoke(flaps, 4, best, 0);\n\t\t\t}\n\t\t}\n\t\t// every playing flap gets one place older; the first free row takes the new flap\n\t\tfreev = -1;\n\t\tfor (v = 0; v < 6; v += 1) {\n\t\t\tst = peek(flaps, v, 0);\n\t\t\tif (st > 0.5) {\n\t\t\t\tod = peek(flaps, v, 3);\n\t\t\t\tpoke(flaps, min(od + 1, 1000), v, 3);\n\t\t\t} else if (freev < -0.5) {\n\t\t\t\tfreev = v;\n\t\t\t}\n\t\t}\n\t\tif (freev > -0.5) {\n\t\t\t// random pan, as wide as Spread. L and R each get a constant-power position\n\t\t\tpan = spread * noise();\n\t\t\tthl = (clip(pan - 1, -1, 1) + 1) * pi * 0.25;\n\t\t\tthr2 = (clip(pan + 1, -1, 1) + 1) * pi * 0.25;\n\t\t\tpoke(flaps, 1, freev, 0);         // attack\n\t\t\tpoke(flaps, 0, freev, 1);         // envelope starts at 0\n\t\t\tpoke(flaps, 0, freev, 2);\n\t\t\tpoke(flaps, 0, freev, 3);         // newest\n\t\t\tpoke(flaps, 0, freev, 6);\n\t\t\tpoke(flaps, ovs + 1, freev, 5);   // start just behind now (one Overlap back, like the original)\n\t\t\tif (sp2 < 0) {\n\t\t\t\t// negative Speed: backwards first, the far end is Length ms in the past -- but only as far back as\n\t\t\t\t// two thirds of what was recorded since On, so neither head ever reads from before the recording\n\t\t\t\tpoke(flaps, -1, freev, 4);\n\t\t\t\tpoke(flaps, clip(floor(min(lens, spanmax)), ovs + 2, max(floor(recn * 0.66), ovs + 2)), freev, 7);\n\t\t\t} else {\n\t\t\t\t// toward now first; the mark is the trigger point\n\t\t\t\tpoke(flaps, 1, freev, 4);\n\t\t\t\tpoke(flaps, ovs + 1, freev, 7);\n\t\t\t}\n\t\t\tpoke(flaps, 0, freev, 8);\n\t\t\tpoke(flaps, 0, freev, 9);\n\t\t\tpoke(flaps, 0, freev, 10);\n\t\t\tpoke(flaps, 0, freev, 11);\n\t\t\tpoke(flaps, cos(thl), freev, 12);\n\t\t\tpoke(flaps, sin(thl), freev, 13);\n\t\t\tpoke(flaps, cos(thr2), freev, 14);\n\t\t\tpoke(flaps, sin(thr2), freev, 15);\n\t\t}\n\t}\n\n\t// --- play every flap ---\n\tfor (v = 0; v < 6; v += 1) {\n\t\tst = peek(flaps, v, 0);\n\t\tif (st > 0.5) {\n\t\t\tenvl = peek(flaps, v, 1);\n\t\t\tcnt = peek(flaps, v, 2);\n\t\t\tdir = peek(flaps, v, 4);\n\t\t\thage = peek(flaps, v, 5);\n\t\t\txt = peek(flaps, v, 6);\n\t\t\thage = hage + xt;\n\t\t\tmage = peek(flaps, v, 7);\n\t\t\tfrem = peek(flaps, v, 8);\n\t\t\tflen = peek(flaps, v, 9);\n\t\t\tbage = peek(flaps, v, 10);\n\t\t\txt = peek(flaps, v, 11);\n\t\t\tbage = bage + xt;\n\t\t\tgll = peek(flaps, v, 12);\n\t\t\tglr = peek(flaps, v, 13);\n\t\t\tgrl = peek(flaps, v, 14);\n\t\t\tgrr = peek(flaps, v, 15);\n\n\t\t\t// envelope: attack to 1, decay to Sustain, hold, release (all straight lines)\n\t\t\tif (st < 1.5) {\n\t\t\t\tenvl = envl + ainc;\n\t\t\t\tif (envl >= 1) {\n\t\t\t\t\tenvl = 1;\n\t\t\t\t\tst = 2;\n\t\t\t\t}\n\t\t\t} else if (st < 2.5) {\n\t\t\t\tenvl = envl - (1 - sus) * dinc;\n\t\t\t\tif (envl <= sus) {\n\t\t\t\t\tst = 3;\n\t\t\t\t}\n\t\t\t} else if (st < 3.5) {\n\t\t\t\tenvl = envl + c20 * (sus - envl);   // Sustain moves glide\n\t\t\t} else {\n\t\t\t\tenvl = envl - rinc;\n\t\t\t\tif (envl <= 0) {\n\t\t\t\t\tenvl = 0;\n\t\t\t\t\tst = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\t// Length runs out: release\n\t\t\tif (st > 0.5 && st < 3.5) {\n\t\t\t\tcnt = cnt + 1;\n\t\t\t\tif (cnt >= lens) {\n\t\t\t\t\tst = 4;\n\t\t\t\t}\n\t\t\t}\n\n\t\t\t// one sample was recorded since last time, so everything is one sample older; then the heads move\n\t\t\thage = hage + 1 - dir * spd;\n\t\t\tmage = min(mage + 1, spanmax);   // past 5 s the mark slides along behind now\n\t\t\tif (flen > 0.5) {\n\t\t\t\tbage = bage + 1 + dir * spd;  // the mirror head goes the other way\n\t\t\t\tif (frem < 0.5) {\n\t\t\t\t\t// turn finished: the mirror head becomes the head\n\t\t\t\t\thage = bage;\n\t\t\t\t\tdir = 0 - dir;\n\t\t\t\t\tflen = 0;\n\t\t\t\t}\n\t\t\t}\n\t\t\tif (flen < 0.5) {\n\t\t\t\t// how far to the end we are heading for (now, or the mark)\n\t\t\t\tdst = dir > 0 ? hage : mage - hage;\n\t\t\t\t// crossfade length: Overlap, but never more than fits in half the window at this speed\n\t\t\t\tfsz = floor(clip(min(ovs, mage / (2 * spd)), 1, ovs));\n\t\t\t\tif (dst <= fsz * spd) {\n\t\t\t\t\t// start a turn: the mirror head starts where the head would end up, going back\n\t\t\t\t\tfrem = fsz;\n\t\t\t\t\tflen = fsz;\n\t\t\t\t\tbage = dir > 0 ? max(hage - fsz * spd, 0) : hage + fsz * spd;\n\t\t\t\t}\n\t\t\t}\n\t\t\t// never read past now (age 0) or off the end of the ring\n\t\t\thage = clip(hage, 0, AMAX);\n\t\t\tbage = clip(bage, 0, AMAX);\n\n\t\t\t// read the head (linear interpolation)\n\t\t\trpos = rec - hage;\n\t\t\ti0 = floor(rpos);\n\t\t\tfr0 = rpos - i0;\n\t\t\ti0 = wrap(i0, 0, NR);\n\t\t\ti1 = wrap(i0 + 1, 0, NR);\n\t\t\ty0 = peek(ring, i0, 0);\n\t\t\ty1 = peek(ring, i1, 0);\n\t\t\thl = y0 + fr0 * (y1 - y0);\n\t\t\ty0 = peek(ring, i0, 1);\n\t\t\ty1 = peek(ring, i1, 1);\n\t\t\thr = y0 + fr0 * (y1 - y0);\n\t\t\tif (flen > 0.5) {\n\t\t\t\t// turning: S-shaped crossfade from the head to the mirror head. The two gains add up to 1: halfway\n\t\t\t\t// through, both heads read the same spot, so an equal-power fade would bump the level there\n\t\t\t\trpos = rec - bage;\n\t\t\t\ti0 = floor(rpos);\n\t\t\t\tfr0 = rpos - i0;\n\t\t\t\ti0 = wrap(i0, 0, NR);\n\t\t\t\ti1 = wrap(i0 + 1, 0, NR);\n\t\t\t\ty0 = peek(ring, i0, 0);\n\t\t\t\ty1 = peek(ring, i1, 0);\n\t\t\t\tbl = y0 + fr0 * (y1 - y0);\n\t\t\t\ty0 = peek(ring, i0, 1);\n\t\t\t\ty1 = peek(ring, i1, 1);\n\t\t\t\tbr = y0 + fr0 * (y1 - y0);\n\t\t\t\txt = 1 - frem / flen;\n\t\t\t\txt = xt * xt * (3 - 2 * xt);\n\t\t\t\thl = hl + xt * (bl - hl);\n\t\t\t\thr = hr + xt * (br - hr);\n\t\t\t\tfrem = frem - 1;\n\t\t\t}\n\t\t\twetl = wetl + envl * (hl * gll + hr * grl);\n\t\t\twetr = wetr + envl * (hl * glr + hr * grr);\n\n\t\t\t// write the row back (ages split into whole + fraction)\n\t\t\tpoke(flaps, st, v, 0);\n\t\t\tpoke(flaps, envl, v, 1);\n\t\t\tpoke(flaps, cnt, v, 2);\n\t\t\tpoke(flaps, dir, v, 4);\n\t\t\twhole = floor(hage);\n\t\t\tpoke(flaps, whole, v, 5);\n\t\t\tpoke(flaps, hage - whole, v, 6);\n\t\t\tpoke(flaps, mage, v, 7);\n\t\t\tpoke(flaps, frem, v, 8);\n\t\t\tpoke(flaps, flen, v, 9);\n\t\t\twhole = floor(bage);\n\t\t\tpoke(flaps, whole, v, 10);\n\t\t\tpoke(flaps, bage - whole, v, 11);\n\t\t}\n\t}\n\n\t// LP coefficients. tan() only when the cutoff moved\n\tfc = pow(2, ls);\n\tif (abs(fc - fcl) > 0.001) {\n\t\tgl = tan(pi * min(fc, samplerate * 0.45) / samplerate);\n\t\tfcl = fc;\n\t}\n\ta1 = 1 / (1 + gl * (gl + 1.41421356));\n\ta2 = gl * a1;\n\ta3 = gl * a2;\n\t// 16..20 kHz: S-shaped fade to unfiltered; from 19990 Hz up the filter is skipped entirely\n\tbyp = clip((fc - 16000) / 3990, 0, 1);\n\tbyp = byp * byp * (3 - 2 * byp);\n\t// LP on what you hear: TPT state-variable low-pass, Q 0.707\n\tv3 = wetl - q2l;\n\tv1 = a1 * q1l + a2 * v3;\n\tv2 = q2l + a2 * q1l + a3 * v3;\n\tq1l = 2 * v1 - q1l;\n\tq2l = 2 * v2 - q2l;\n\tif (byp < 1) {\n\t\twetl = v2 + byp * (wetl - v2);\n\t}\n\tv3 = wetr - q2r;\n\tv1 = a1 * q1r + a2 * v3;\n\tv2 = q2r + a2 * q1r + a3 * v3;\n\tq1r = 2 * v1 - q1r;\n\tq2r = 2 * v2 - q2r;\n\tif (byp < 1) {\n\t\twetr = v2 + byp * (wetr - v2);\n\t}\n\n\trec = rec + 1;\n\tif (rec >= NR) {\n\t\trec = 0;\n\t}\n}\n\n// --- output: equal-power Dry/Wet while On; while Off, Thru = input, Aux = silence ---\nou = og * og * (3 - 2 * og);\nhm = dw * halfpi;\ndg = (1 - md) * (1 - ou) + cos(hm) * ou;\nwg = sin(ou * halfpi) * sin(hm);\nout1 = x1 * dg + wetl * wg;\nout2 = x2 * dg + wetr * wg;\n\nhrec = rec;\nhrecn = recn;\nhog = og;\nhpaused = pz;\nprevtrg = pt;\nhgate = loud;\nhdcx = dcx;\nhdcy = dcy;\nhms = msq;\nsp_s = sp;\nsp2_s = sp2;\nsus_s = sus;\ndw_s = dw;\nmd_s = md;\nlp_s = ls;\nlpf_c = fcl;\nlpg_c = gl;\nw1l = q1l;\nw2l = q2l;\nw1r = q1r;\nw2r = q2r;\ninit = 1;\n",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-20",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "outlettype": [],
                                                        "patching_rect": [
                                                            20.0,
                                                            850.0,
                                                            150.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment audio L",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-21",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "outlettype": [],
                                                        "patching_rect": [
                                                            420.0,
                                                            850.0,
                                                            150.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment audio R",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-1",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-2",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            1
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-3",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            2
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-4",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            3
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            4
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-6",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            5
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-7",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            6
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-8",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            7
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-9",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            8
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-10",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            9
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-11",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            10
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-12",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            11
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-13",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            12
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-14",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            13
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-15",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            14
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-16",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            15
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-17",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            16
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-18",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-19",
                                                            17
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-19",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-19",
                                                            1
                                                        ],
                                                        "destination": [
                                                            "obj-21",
                                                            0
                                                        ]
                                                    }
                                                }
                                            ],
                                            "dependency_cache": [],
                                            "autosave": 0
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out1",
                                    "maxclass": "newobj",
                                    "text": "out~ 1 @comment \"Left Out (Signal)\"",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        30.0,
                                        390.0,
                                        220.0,
                                        38.0
                                    ],
                                    "linecount": 2,
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_r-out1",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out2",
                                    "maxclass": "newobj",
                                    "text": "out~ 2 @comment \"Right Out (Signal)\"",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        260.0,
                                        390.0,
                                        220.0,
                                        38.0
                                    ],
                                    "linecount": 2,
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_r-out2",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "id": "r-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        450.0,
                                        1100.0,
                                        64.0
                                    ],
                                    "linecount": 4,
                                    "text": "gen~ code MUST MATCH br.flapper.1.0 (open both: same gen~ patcher and codebox). The params have the same names, ranges, defaults as br.flapper.ui.1.0 (Speed is linear here: plugin hosts show -500..500 evenly; the curved dial lives only in the .ui); inlets 3 to 18 set them, so the external has the same 18 inlets as the abstraction (controls as numbers; inlet 4 = Trigger, a bang). Trigger as a plugin parameter: each 0 -> 1 fires one flap (set it back to 0 before the next). The gen~ sees a running count: any new number = one trigger.",
                                    "fontname": "Lato",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "r-in3",
                                        0
                                    ],
                                    "destination": [
                                        "p-On",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-On",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Trigger",
                                        0
                                    ],
                                    "destination": [
                                        "r-triggerchg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-triggerchg",
                                        1
                                    ],
                                    "destination": [
                                        "r-triggert",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in4",
                                        0
                                    ],
                                    "destination": [
                                        "r-triggert",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-triggert",
                                        0
                                    ],
                                    "destination": [
                                        "r-triggerone",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-triggerone",
                                        0
                                    ],
                                    "destination": [
                                        "r-triggeracc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-triggeracc",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in5",
                                        0
                                    ],
                                    "destination": [
                                        "p-Mode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Mode",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in6",
                                        0
                                    ],
                                    "destination": [
                                        "p-Threshold",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Threshold",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in7",
                                        0
                                    ],
                                    "destination": [
                                        "p-Steal",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Steal",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in8",
                                        0
                                    ],
                                    "destination": [
                                        "p-Speed",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Speed",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in9",
                                        0
                                    ],
                                    "destination": [
                                        "p-Length",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Length",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in10",
                                        0
                                    ],
                                    "destination": [
                                        "p-Attack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Attack",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in11",
                                        0
                                    ],
                                    "destination": [
                                        "p-Decay",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Decay",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in12",
                                        0
                                    ],
                                    "destination": [
                                        "p-Sustain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Sustain",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in13",
                                        0
                                    ],
                                    "destination": [
                                        "p-Release",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Release",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        12
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in14",
                                        0
                                    ],
                                    "destination": [
                                        "p-Overlap",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Overlap",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        13
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in15",
                                        0
                                    ],
                                    "destination": [
                                        "p-Spread",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Spread",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        14
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in16",
                                        0
                                    ],
                                    "destination": [
                                        "p-LP",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-LP",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        15
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in17",
                                        0
                                    ],
                                    "destination": [
                                        "p-DryWet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-DryWet",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        16
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in18",
                                        0
                                    ],
                                    "destination": [
                                        "p-MixMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-MixMode",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        17
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in1",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in2",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        0
                                    ],
                                    "destination": [
                                        "r-out1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        1
                                    ],
                                    "destination": [
                                        "r-out2",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            },
            {
                "box": {
                    "id": "obj-export",
                    "maxclass": "comment",
                    "text": "EXPORT NAME: br.flapper.1.0~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction and Max loads whichever it finds first.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        380.0,
                        340.0,
                        75.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr8",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr9",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr10",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr11",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr12",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr13",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr14",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-trigger",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        1
                    ],
                    "destination": [
                        "obj-rnbo",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        1
                    ],
                    "destination": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            }
        ]
    }
}