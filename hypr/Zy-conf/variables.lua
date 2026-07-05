
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
    kbCloseWindow = "SUPER + Q",
    kbMoveWinToWs = "SUPER + CTRL + SHIFT",
    kbMoveWinToWsGroup = "CTRL + SUPER + ALT",
    kbGoToWs = "SUPER",
    kbGoToWsGroup = "CTRL + SUPER",

    kbChangeActiveWinFocus = "SUPER",
    kbMoveWnInWs = "SUPER + SHIFT",

    -- startup appliations, order does matter
    startupExecs = {
        "/usr/lib/pam_kwallet_init",
        "gsettings set org.gnome.desktop.interface gtk-theme 'Breeze-Dark'",
        "gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'",
        "plasma-apply-colorscheme BreezeDark",
        "hyprpaper"

    },


    -- hyprland shortcuts 
    kbExitHyprland = "SUPER + M"
}
