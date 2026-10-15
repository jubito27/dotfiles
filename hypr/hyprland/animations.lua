hl.config({ animations = { enabled = true } })

hl.curve("specialWorkSwitch", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("emphasizedAccel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("emphasizedDecel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 5, bezier = "emphasizedDecel" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "emphasizedAccel" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, bezier = "standard" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, bezier = "standard" })

hl.animation({
    leaf    = "specialWorkspace",
    enabled = true,
    speed   = 4,
    bezier  = "specialWorkSwitch",
    style   = "slidefadevert 15%"
})

animations = {
    enabled = true,
    bezier = {
        "spring, 0.4, 0.9, 0.15, 1.15", -- Creates a slight elastic bounce
        "smoothOut, 0.36, 0, 0.66, -0.56"
    },
    animation = {
        "windows, 1, 5, spring, popin 85%",
        "windowsOut, 1, 4, smoothOut, popin 80%",
        "workspaces, 1, 6, spring, slide",
        "fade, 1, 4, default"
    }
}
