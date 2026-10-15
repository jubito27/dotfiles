 local vars = require("variables")


hl.config({

    decoration = {

        rounding = vars.windowRounding or 16,


        active_opacity = 0.80,

        inactive_opacity = 0.40,

        fullscreen_opacity = 0.95,


        shadow = {

            enabled = true,

            range = 25,

            render_power = 3,

            color = "0x31000000",

            color_inactive = "0x1a000000"

        },


        blur = {

            enabled = true,

            size = 10,

            passes = 4,

            new_optimizations = true,

            ignore_opacity = true,

            xray = false,

            vibrancy = 0.25,

            vibrancy_darkness = 0.1,

            contrast = 1.05,

            brightness = 1.0,

            popups = true,

        }

    },


    general = {

        gaps_in = 8,

        gaps_out = 14,

        border_size = 2,

        ["col.active_border"] = "0x99a8e6ff",

        ["col.inactive_border"] = "0x335f6fff"

    }

})


-- Layer rules for Caelestia blur using raw Hyprland keyword dispatch

hl.dispatch(hl.dsp.exec_cmd("hyprctl keyword layerrule 'blur, caelestia:*'"))

hl.dispatch(hl.dsp.exec_cmd("hyprctl keyword layerrule 'ignorezero, caelestia:*'"))

hl.dispatch(hl.dsp.exec_cmd("hyprctl keyword layerrule 'blur, gtk-layer-shell'"))


