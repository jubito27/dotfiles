local vars = require("variables")
local fn   = require("utils.functions")

-- Hyprland gesture physics & swipe configurations
hl.config({
    gestures = {
        workspace_swipe_distance                 = 500,
        workspace_swipe_cancel_ratio             = 0.2,
        workspace_swipe_min_speed_to_force       = 15,
        workspace_swipe_direction_lock           = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new               = true,
    },
})

-- =============================================================================
-- Workspace Swipes (3 & 4 Fingers Horizontal)
-- =============================================================================

-- 3 fingers horizontal swipe = switch workspace
hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

-- 4 fingers DOWN = Open/Close Glass Virtual Keyboard
-- 4 fingers DOWN = Open/Close Glass Virtual Keyboard
-- 4 fingers DOWN = Toggle Cyberpunk HUD Glass Keyboard

-- 4 fingers DOWN = Full Desktop Cyberpunk Keyboard
hl.gesture({
    fingers   = 4,
    direction = "down",
    action    = function()
        local cmd = "pkill wvkbd-deskintl || pkill wvkbd || wvkbd-deskintl -L 340 " ..
                    "--bg 0a0e14bb --fg 111c24dd --text 00ffccff " ..
                    "--fg-sp 00e5b833 --text-sp 00ffffff " ..
                    "--press 00ffccaa --press-sp 00ffffff &" ..
                    "--text-press 00fff0ff " ..
                    "--text-press-sp 00fff0ff " ..
                    "--fn 'DejaVu Sans Mono Bold 12' " ..
                    "-R 2 &"
        hl.exec_cmd(cmd)
    end,
})
-- 4 fingers horizontal swipe = switch workspace
hl.gesture({
    fingers   = 4,
    direction = "horizontal",
    action    = "workspace",
})

-- =============================================================================
-- App Controls (3 Fingers Vertical)
-- =============================================================================

-- 3 fingers UP = Close window under cursor / active window
hl.gesture({
    fingers   = 3,
    direction = "up",
    action    = function()
        if hl.dsp and hl.dsp.window and hl.dsp.window.close then
            hl.dispatch(hl.dsp.window.close())
        else
            hl.exec_cmd("hyprctl dispatch killactive")
        end
    end,
})

-- 3 fingers DOWN = Smart Minimize / Restore toggle
hl.gesture({
    fingers   = 3,
    direction = "down",
    action    = function()
        local active = hl.get_active_window()
        
        if hl.get_workspace("special:minimized") then
            hl.dispatch(hl.dsp.window.move({
                workspace = hl.get_active_workspace(),
                window    = "tag:minimized",
            }))
            hl.dispatch(hl.dsp.window.clear_tags({
                window = "tag:minimized",
            }))
        elseif active then
            hl.dispatch(hl.dsp.window.tag({
                tag    = "minimized",
                window = active,
            }))
            hl.dispatch(hl.dsp.window.move({
                workspace = "special:minimized",
                follow    = false,
            }))
        end
    end,
})

-- =============================================================================
-- Caelestia Sidebar (4 Fingers UP)
-- =============================================================================

hl.gesture({
    fingers   = 4,
    direction = "up",
    action    = function()
        hl.exec_cmd("caelestia shell drawers toggle sidebar")
    end,
})
