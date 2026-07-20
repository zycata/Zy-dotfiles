
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
        "gsettings set org.gnome.desktop.interface color-scheme prefer-dark",
        "gsettings set org.gnome.desktop.interface gtk-theme breeze-dark",
        "gsettings set org.gnome.desktop.interface gtk-theme Breeze-Dark",
        "hyprpaper",
        "waybar" -- temporary stuff yk yk 

    },
--[[ 
exec = gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"   # for GTK4 apps

#for gtk3 apps you need to install adw-gtk3 theme (in arch linux sudo pacman -S adw-gtk-theme)
exec = gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3" 
]]
    -- screenshotting
    kbFullScreenShot = "SUPER + PRINT",
    kbPartialScreenShot = "PRINT",
    screenShotSaveDirectory = "~/Pictures/Screenshots/",


    -- hyprland shortcuts 
    kbExitHyprland = "SUPER + M"
}
