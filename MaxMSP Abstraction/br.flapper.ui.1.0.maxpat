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
        "openrect": [
            85.0,
            104.0,
            536.0,
            96.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 536.0,
        "description": "br.flapper.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "rect": [
            85.0,
            104.0,
            1965.0,
            720.0
        ],
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.flapper.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        15.0,
                        520.0,
                        33.0
                    ],
                    "linecount": 2,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-0",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left In (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-1",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right In (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-2",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "On (Int) 1 = on, 0 = paused: fades out over 20 ms, then stops recording and flapping (no CPU). Turning on again starts with no flaps. Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-3",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 4,
                    "comment": "Trigger (Bang) start a flap now (works in both Modes)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-4",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 5,
                    "comment": "Mode (Int) 0 = Auto: a flap starts whenever the input gets loud, and on Trigger. 1 = Manual: only on Trigger. Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-5",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 6,
                    "comment": "Threshold (Float) 0.001 - 1. Auto mode: how loud the input must get to start a flap (rms). It must drop below a fifth of this before the next one. Default 0.05",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-6",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 7,
                    "comment": "Steal (Int) 1 = a new flap releases the oldest one still playing. 0 = Stack: they pile up (6 at most; when all 6 play, new triggers are ignored; loud). Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-7",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 8,
                    "comment": "Speed (Float) -500 - 500. 1 = normal. Above 1 a flap catches up with now and flaps fast (high = buzz); below 1 it just plays slower from the trigger point. Negative: a new flap starts at now and plays backwards, up to Length ms into the past, then flaps. The dial is curved (fine near 0); type into the number under it for an exact value. Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-8",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 9,
                    "comment": "Length (Float) 10 - 5000 ms. How long a flap is held before its Release starts. Default 1000",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-9",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 10,
                    "comment": "Attack (Float) 2 - 5000 ms. Fade-in of each flap. Default 20",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-10",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 11,
                    "comment": "Decay (Float) 2 - 5000 ms. Fall from full level to Sustain after the Attack. Default 20",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-11",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 12,
                    "comment": "Sustain (Float) 0 - 1. Level held until Length runs out. Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-12",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        915.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 13,
                    "comment": "Release (Float) 2 - 5000 ms. Fade-out at the end of a flap (from full level; quicker from lower). Default 20",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-13",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        990.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 14,
                    "comment": "Overlap (Float) 1 - 500 ms. Crossfade at each turnaround (shorter when the flap window is tiny). Short = harder, glitchier turns. Default 20",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-14",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1065.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 15,
                    "comment": "Spread (Float) 0 - 1. Random pan of each flap: 0 = plain stereo, 1 = anywhere from hard left to hard right. Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-15",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1140.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 16,
                    "comment": "LP (Float) 100 - 20000 Hz. Low-pass on the flaps you hear (the dry input is never filtered). 20000 = off. Default 20000",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-16",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1215.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 17,
                    "comment": "Dry/Wet (Float) 0 - 1 while On, equal power. 1 = only the flaps. Default 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "in-17",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1290.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 18,
                    "comment": "Mix Mode (Int) what you hear while Off: 0 = Thru (the input passes), 1 = Aux (silence). Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "text": "br.flapper.1.0",
                    "numinlets": 18,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        380.0,
                        1305.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-on",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        56.0,
                        4.0,
                        30.0,
                        18.0
                    ],
                    "text": "Off",
                    "texton": "On",
                    "varname": "On",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On",
                            "parameter_type": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-on",
                    "maxclass": "newobj",
                    "text": "i 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-on-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-on-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        185.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-on-p",
                    "maxclass": "newobj",
                    "text": "prepend on",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        185.0,
                        348.0,
                        76.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-manual",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        90.0,
                        4.0,
                        52.0,
                        18.0
                    ],
                    "text": "Auto",
                    "texton": "Manual",
                    "varname": "Mode",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mode",
                            "parameter_type": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-manual",
                    "maxclass": "newobj",
                    "text": "i 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-manual-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-manual-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        335.0,
                        260.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-manual-p",
                    "maxclass": "newobj",
                    "text": "prepend manual",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        335.0,
                        288.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-threshold",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        52.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Threshold",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                0.05
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Threshold",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.001,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Threshold",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-threshold",
                    "maxclass": "newobj",
                    "text": "f 0.05",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-threshold-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-threshold-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        410.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-threshold-p",
                    "maxclass": "newobj",
                    "text": "prepend threshold",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        410.0,
                        348.0,
                        132.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-steal",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        146.0,
                        4.0,
                        44.0,
                        18.0
                    ],
                    "text": "Stack",
                    "texton": "Steal",
                    "varname": "Steal",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Steal",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Steal",
                            "parameter_type": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-steal",
                    "maxclass": "newobj",
                    "text": "i 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-steal-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-steal-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        485.0,
                        200.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-steal-p",
                    "maxclass": "newobj",
                    "text": "prepend steal",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        485.0,
                        228.0,
                        100.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-length",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        615.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        100.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Length",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                1000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Length",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 10.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Length",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-length",
                    "maxclass": "newobj",
                    "text": "f 1000.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-length-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-length-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        635.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-length-p",
                    "maxclass": "newobj",
                    "text": "prepend length",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        635.0,
                        348.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-attack",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        690.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        148.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Attack",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Attack",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 2.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-attack",
                    "maxclass": "newobj",
                    "text": "f 20.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-attack-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-attack-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        710.0,
                        200.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-attack-p",
                    "maxclass": "newobj",
                    "text": "prepend attack",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        710.0,
                        228.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-decay",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        765.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        196.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Decay",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Decay",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 2.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Decay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-decay",
                    "maxclass": "newobj",
                    "text": "f 20.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-decay-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-decay-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        785.0,
                        260.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-decay-p",
                    "maxclass": "newobj",
                    "text": "prepend decay",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        785.0,
                        288.0,
                        100.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-sustain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        840.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        244.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Sustain",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Sustain",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Sustain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-sustain",
                    "maxclass": "newobj",
                    "text": "f 1.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-sustain-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-sustain-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        860.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-sustain-p",
                    "maxclass": "newobj",
                    "text": "prepend sustain",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        860.0,
                        348.0,
                        116.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-release",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        915.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        292.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Release",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release",
                            "parameter_mmax": 5000.0,
                            "parameter_mmin": 2.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-release",
                    "maxclass": "newobj",
                    "text": "f 20.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        915.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-release-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        915.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-release-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        935.0,
                        200.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-release-p",
                    "maxclass": "newobj",
                    "text": "prepend release",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        935.0,
                        228.0,
                        116.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-overlap",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        990.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        340.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Overlap",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Overlap",
                            "parameter_mmax": 500.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Overlap",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-overlap",
                    "maxclass": "newobj",
                    "text": "f 20.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        990.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-overlap-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        990.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-overlap-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1010.0,
                        260.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-overlap-p",
                    "maxclass": "newobj",
                    "text": "prepend overlap",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1010.0,
                        288.0,
                        116.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-spread",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1065.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        388.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Spread",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Spread",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Spread",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-spread",
                    "maxclass": "newobj",
                    "text": "f 1.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1065.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-spread-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1065.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-spread-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1085.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-spread-p",
                    "maxclass": "newobj",
                    "text": "prepend spread",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1085.0,
                        348.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-lp",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1140.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        436.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "LP",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 4.0,
                            "parameter_initial": [
                                20000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "LP",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "LP",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-lp",
                    "maxclass": "newobj",
                    "text": "f 20000.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1140.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-lp-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1140.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-lp-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1160.0,
                        200.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-lp-p",
                    "maxclass": "newobj",
                    "text": "prepend lp",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1160.0,
                        228.0,
                        76.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-drywet",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1215.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        484.0,
                        26.0,
                        44.0,
                        52.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Dry/Wet",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Dry/Wet",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dry/Wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-drywet",
                    "maxclass": "newobj",
                    "text": "f 1.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1215.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-drywet-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1215.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-drywet-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1235.0,
                        260.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-drywet-p",
                    "maxclass": "newobj",
                    "text": "prepend drywet",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1235.0,
                        288.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-mode",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1290.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        488.0,
                        4.0,
                        40.0,
                        18.0
                    ],
                    "text": "Thru",
                    "texton": "Aux",
                    "varname": "Mix Mode",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix Mode",
                            "parameter_type": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-mode",
                    "maxclass": "newobj",
                    "text": "i 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1290.0,
                        120.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-mode-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1290.0,
                        150.0,
                        40.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-mode-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1310.0,
                        320.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-mode-p",
                    "maxclass": "newobj",
                    "text": "prepend mode",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1310.0,
                        348.0,
                        92.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-speed",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        60.0,
                        44.0,
                        41.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        4.0,
                        26.0,
                        44.0,
                        41.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Speed",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                0.2117290786085244
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Speed",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": -1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Speed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "shownumber": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-clip",
                    "maxclass": "newobj",
                    "text": "clip -500. 500.",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1405.0,
                        440.0,
                        95.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-inv",
                    "maxclass": "newobj",
                    "text": "expr log(1.+4.*abs($f1))/log(2001.)*(($f1>=0.)*2.-1.)",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1405.0,
                        470.0,
                        300.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-curve",
                    "maxclass": "newobj",
                    "text": "expr floor((0.25*(pow(2001.\\, abs($f1))-1.)*(($f1>=0.)*2.-1.))*1000.+0.5)/1000.",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1405.0,
                        500.0,
                        420.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "store-speed",
                    "maxclass": "newobj",
                    "text": "f 1.",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        150.0,
                        56.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-speed-t",
                    "maxclass": "newobj",
                    "text": "t f f f",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        178.0,
                        50.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-speed-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        560.0,
                        260.0,
                        66.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "st-speed-p",
                    "maxclass": "newobj",
                    "text": "prepend speed",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        560.0,
                        288.0,
                        108.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-set",
                    "maxclass": "newobj",
                    "text": "prepend set",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1405.0,
                        640.0,
                        80.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-num",
                    "maxclass": "live.numbox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1405,
                        670.0,
                        54.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        72.0,
                        48.0,
                        18.0
                    ],
                    "varname": "Speed Display",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Speed Display",
                            "parameter_mmax": 500.0,
                            "parameter_mmin": -500.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Speed",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1,
                            "parameter_invisible": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "speed-c1",
                    "maxclass": "comment",
                    "text": "Speed dial = a POSITION -1..1 (same curve as br.scrub's Rate). curve: speed = sign x 0.25 x (2001^|pos| - 1), rounded to 0.001: 1 sits at 21 % of a side, 10 at 49 %, 100 at 79 %, 500 at the end. inverse turns a typed speed (inlet or the number box) back into a position. The number box (Speed Display: hidden from automation, not stored) only displays a drag ([prepend set] never sends), so nothing loops.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        530.0,
                        420.0,
                        103.0
                    ],
                    "linecount": 7,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "ctl-trigger",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        60.0,
                        20.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        196.0,
                        3.0,
                        20.0,
                        20.0
                    ],
                    "varname": "Trigger",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_longname": "Trigger",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Trigger",
                            "parameter_type": 2
                        }
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "lbl-trigger",
                    "maxclass": "comment",
                    "text": "Trigger",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        262.0,
                        60.0,
                        50.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        218.0,
                        3.0,
                        50.0,
                        20.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-tc",
                    "maxclass": "comment",
                    "text": "Trigger is an action, not a setting: no store, not in State",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        240.0,
                        90.0,
                        70.0,
                        61.0
                    ],
                    "linecount": 4,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "text": "loadbang",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1405.0,
                        150.0,
                        72.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-dl",
                    "maxclass": "newobj",
                    "text": "deferlow",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1405.0,
                        175.0,
                        72.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-tbs",
                    "maxclass": "newobj",
                    "text": "t b b b b b b b b b b b b b b b",
                    "numinlets": 1,
                    "numoutlets": 15,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        1405.0,
                        200.0,
                        330.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "out-0",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        440.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left Out (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "out-1",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        105.0,
                        440.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right Out (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "out-state",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1290.0,
                        440.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "State (Message): on, manual, threshold, steal, speed, length, attack, decay, sustain, release, overlap, spread, lp, drywet, mode, sent the moment a control changes. Pick them out by name: [route on manual threshold steal speed length attack decay sustain release overlap spread lp drywet mode]",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-why",
                    "maxclass": "comment",
                    "text": "[br.flapper.1.0] is the real object: the gen~ lives inside it. This file only adds the panel, keeps each control's value in an [f]/[i] and re-sends them all at load (deferlow), and reports changes on the State outlet as <name> <value>.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        55.0,
                        520.0,
                        60.0
                    ],
                    "linecount": 4,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-tips",
                    "maxclass": "comment",
                    "text": "Dials: hold Shift while dragging for fine steps; double-click a dial to type a value (Speed: type into the number under it). Speed left of centre = negative: flaps start backwards.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        255.0,
                        460.0,
                        47.0
                    ],
                    "linecount": 3,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "lbl-title",
                    "maxclass": "comment",
                    "text": "flapper",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1405.0,
                        320.0,
                        70.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2.0,
                        3.0,
                        52.0,
                        20.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "annotation": "br.flapper.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "hint": "br.flapper.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1585.0,
                        320.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        536.0,
                        96.0
                    ],
                    "rounded": 7,
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "in-0",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-2",
                        0
                    ],
                    "destination": [
                        "ctl-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-on",
                        0
                    ],
                    "destination": [
                        "store-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-on",
                        0
                    ],
                    "destination": [
                        "st-on-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-t",
                        1
                    ],
                    "destination": [
                        "st-on-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-c",
                        0
                    ],
                    "destination": [
                        "st-on-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-4",
                        0
                    ],
                    "destination": [
                        "ctl-manual",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-manual",
                        0
                    ],
                    "destination": [
                        "store-manual",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-manual",
                        0
                    ],
                    "destination": [
                        "st-manual-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-manual-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-manual-t",
                        1
                    ],
                    "destination": [
                        "st-manual-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-manual-c",
                        0
                    ],
                    "destination": [
                        "st-manual-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-manual-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-5",
                        0
                    ],
                    "destination": [
                        "ctl-threshold",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-threshold",
                        0
                    ],
                    "destination": [
                        "store-threshold",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-threshold",
                        0
                    ],
                    "destination": [
                        "st-threshold-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-threshold-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-threshold-t",
                        1
                    ],
                    "destination": [
                        "st-threshold-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-threshold-c",
                        0
                    ],
                    "destination": [
                        "st-threshold-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-threshold-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-6",
                        0
                    ],
                    "destination": [
                        "ctl-steal",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-steal",
                        0
                    ],
                    "destination": [
                        "store-steal",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-steal",
                        0
                    ],
                    "destination": [
                        "st-steal-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-steal-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-steal-t",
                        1
                    ],
                    "destination": [
                        "st-steal-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-steal-c",
                        0
                    ],
                    "destination": [
                        "st-steal-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-steal-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-8",
                        0
                    ],
                    "destination": [
                        "ctl-length",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-length",
                        0
                    ],
                    "destination": [
                        "store-length",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-length",
                        0
                    ],
                    "destination": [
                        "st-length-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-length-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-length-t",
                        1
                    ],
                    "destination": [
                        "st-length-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-length-c",
                        0
                    ],
                    "destination": [
                        "st-length-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-length-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-9",
                        0
                    ],
                    "destination": [
                        "ctl-attack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-attack",
                        0
                    ],
                    "destination": [
                        "store-attack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-attack",
                        0
                    ],
                    "destination": [
                        "st-attack-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-attack-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-attack-t",
                        1
                    ],
                    "destination": [
                        "st-attack-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-attack-c",
                        0
                    ],
                    "destination": [
                        "st-attack-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-attack-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-10",
                        0
                    ],
                    "destination": [
                        "ctl-decay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-decay",
                        0
                    ],
                    "destination": [
                        "store-decay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-decay",
                        0
                    ],
                    "destination": [
                        "st-decay-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-decay-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-decay-t",
                        1
                    ],
                    "destination": [
                        "st-decay-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-decay-c",
                        0
                    ],
                    "destination": [
                        "st-decay-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-decay-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-11",
                        0
                    ],
                    "destination": [
                        "ctl-sustain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-sustain",
                        0
                    ],
                    "destination": [
                        "store-sustain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-sustain",
                        0
                    ],
                    "destination": [
                        "st-sustain-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sustain-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sustain-t",
                        1
                    ],
                    "destination": [
                        "st-sustain-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sustain-c",
                        0
                    ],
                    "destination": [
                        "st-sustain-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sustain-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-12",
                        0
                    ],
                    "destination": [
                        "ctl-release",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-release",
                        0
                    ],
                    "destination": [
                        "store-release",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-release",
                        0
                    ],
                    "destination": [
                        "st-release-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-release-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-release-t",
                        1
                    ],
                    "destination": [
                        "st-release-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-release-c",
                        0
                    ],
                    "destination": [
                        "st-release-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-release-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-13",
                        0
                    ],
                    "destination": [
                        "ctl-overlap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-overlap",
                        0
                    ],
                    "destination": [
                        "store-overlap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-overlap",
                        0
                    ],
                    "destination": [
                        "st-overlap-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-overlap-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-overlap-t",
                        1
                    ],
                    "destination": [
                        "st-overlap-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-overlap-c",
                        0
                    ],
                    "destination": [
                        "st-overlap-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-overlap-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-14",
                        0
                    ],
                    "destination": [
                        "ctl-spread",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-spread",
                        0
                    ],
                    "destination": [
                        "store-spread",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-spread",
                        0
                    ],
                    "destination": [
                        "st-spread-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-spread-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        14
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-spread-t",
                        1
                    ],
                    "destination": [
                        "st-spread-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-spread-c",
                        0
                    ],
                    "destination": [
                        "st-spread-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-spread-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-15",
                        0
                    ],
                    "destination": [
                        "ctl-lp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-lp",
                        0
                    ],
                    "destination": [
                        "store-lp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-lp",
                        0
                    ],
                    "destination": [
                        "st-lp-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-lp-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        15
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-lp-t",
                        1
                    ],
                    "destination": [
                        "st-lp-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-lp-c",
                        0
                    ],
                    "destination": [
                        "st-lp-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-lp-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-16",
                        0
                    ],
                    "destination": [
                        "ctl-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-drywet",
                        0
                    ],
                    "destination": [
                        "store-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-drywet",
                        0
                    ],
                    "destination": [
                        "st-drywet-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-drywet-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        16
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-drywet-t",
                        1
                    ],
                    "destination": [
                        "st-drywet-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-drywet-c",
                        0
                    ],
                    "destination": [
                        "st-drywet-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-drywet-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-17",
                        0
                    ],
                    "destination": [
                        "ctl-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-mode",
                        0
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-mode",
                        0
                    ],
                    "destination": [
                        "st-mode-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        17
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        1
                    ],
                    "destination": [
                        "st-mode-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-c",
                        0
                    ],
                    "destination": [
                        "st-mode-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-7",
                        0
                    ],
                    "destination": [
                        "speed-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "speed-num",
                        0
                    ],
                    "destination": [
                        "speed-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "speed-clip",
                        0
                    ],
                    "destination": [
                        "speed-inv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "speed-inv",
                        0
                    ],
                    "destination": [
                        "ctl-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-speed",
                        0
                    ],
                    "destination": [
                        "speed-curve",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "speed-curve",
                        0
                    ],
                    "destination": [
                        "store-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-speed",
                        0
                    ],
                    "destination": [
                        "st-speed-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-t",
                        1
                    ],
                    "destination": [
                        "st-speed-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-c",
                        0
                    ],
                    "destination": [
                        "st-speed-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-speed-t",
                        2
                    ],
                    "destination": [
                        "speed-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "speed-set",
                        0
                    ],
                    "destination": [
                        "speed-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-3",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-trigger",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lb",
                        0
                    ],
                    "destination": [
                        "obj-dl",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dl",
                        0
                    ],
                    "destination": [
                        "obj-tbs",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        0
                    ],
                    "destination": [
                        "store-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        1
                    ],
                    "destination": [
                        "store-manual",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        2
                    ],
                    "destination": [
                        "store-threshold",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        3
                    ],
                    "destination": [
                        "store-steal",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        4
                    ],
                    "destination": [
                        "store-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        5
                    ],
                    "destination": [
                        "store-length",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        6
                    ],
                    "destination": [
                        "store-attack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        7
                    ],
                    "destination": [
                        "store-decay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        8
                    ],
                    "destination": [
                        "store-sustain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        9
                    ],
                    "destination": [
                        "store-release",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        10
                    ],
                    "destination": [
                        "store-overlap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        11
                    ],
                    "destination": [
                        "store-spread",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        12
                    ],
                    "destination": [
                        "store-lp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        13
                    ],
                    "destination": [
                        "store-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        14
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "out-0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "out-1",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": []
    }
}