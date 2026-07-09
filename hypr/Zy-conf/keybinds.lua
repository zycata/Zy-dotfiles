
local vars = require("Zy-conf.variables")
local keyDirections = { "up", "down", "left", "right" }

for _, v in pairs(vars.appKeyBinds) do
    hl.bind(v.kb, hl.dsp.exec_cmd(v.action))
end
-- temporary, until maybe I make my own quickshell launcher
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"))

-- moving to workspace keybinds
for i = 1, 10 do
    local key = tostring(i % 10) 
    hl.bind(vars.kbGoToWs .. " + " .. key, hl.dsp.focus( { workspace = i} ))
    hl.bind(vars.kbMoveWinToWs .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Moving windows one workspace to the left or right
hl.bind(vars.kbGoToWsGroup .. " + right", hl.dsp.focus({ workspace = "+1" }))
hl.bind(vars.kbGoToWsGroup .. " + left", hl.dsp.focus({ workspace = "-1" }))
hl.bind(vars.kbMoveWinToWs .. " + right", hl.dsp.window.move({ workspace = "+1"}))
hl.bind(vars.kbMoveWinToWs .. " + left", hl.dsp.window.move({ workspace = "-1"}))

-- Directional keybinds for swapping windows and moving windows in the same workspace
for _, dir in pairs(keyDirections) do
    hl.bind(vars.kbMoveWnInWs .. " + " .. dir, hl.dsp.window.swap({ direction = dir }))
    hl.bind(vars.kbChangeActiveWinFocus .. " + " .. dir, hl.dsp.focus({ direction = dir }))
end

-- toggle split, fullscreen and closing windows
hl.bind(vars.kbToggleSplit, hl.dsp.layout("togglesplit"))
hl.bind(vars.kbToggleFullScreen, hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(vars.kbCloseWindow, hl.dsp.window.close())

-- media controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Requires playerctl
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"),       { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"))

-- screenshotting
hl.bind(vars.kbFullScreenShot, hl.dsp.exec_cmd("hypershot -m output -o " .. vars.screenShotSaveDirectory)) 
hl.bind(vars.kbPartialScreenShot, hl.dsp.exec_cmd("hyprshot -m region -o " .. vars.screenShotSaveDirectory))



-- Exit hyprland, kept for funs
hl.bind(vars.kbExitHyprland, hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))