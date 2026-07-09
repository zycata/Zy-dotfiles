
-- Apps
local browser = "firefox"
local terminal = "kitty"
local editor = "code"
local fileManager = "dolphin"

return {

    -- App keybinds
    appKeyBinds = {
        kbBrowser = { kb = "SUPER + W", action = browser},
        kbTerminal = { kb = "SUPER + T", action = terminal},
        kbEditor = { kb = "SUPER + C", action = editor},
        kbFileExplorer = { kb = "SUPER + E", action = fileManager}
    },


    -- Window keybinds 
    kbMoveWinToWs = "SUPER + CTRL + SHIFT",
    kbMoveWinToWsGroup = "CTRL + SUPER + ALT",
    kbGoToWs = "SUPER",
    kbGoToWsGroup = "CTRL + SUPER",
    kbChangeActiveWinFocus = "SUPER",
    kbMoveWnInWs = "SUPER + SHIFT",
    kbToggleSplit = "SUPER + V",
    kbCloseWindow = "SUPER + Q",
    kbToggleFullScreen = "SUPER + F",
    -- startup appliations, order does matter
    startupExecs = {
        "/usr/lib/pam_kwallet_init",
        "hyprpaper",
        "waybar" -- temporary stuff yk yk 

    },

    -- screenshotting
    kbFullScreenShot = "SUPER + PRINT",
    kbPartialScreenShot = "PRINT",
    screenShotSaveDirectory = "~/Pictures/Screenshots/",


    -- hyprland shortcuts 
    kbExitHyprland = "SUPER + M"
}
