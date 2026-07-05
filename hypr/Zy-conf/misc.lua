local vars = require("Zy-conf.variables")


hl.config({
    misc = {
        disable_splash_rendering = true,
        force_default_wallpaper = 0
    }
})


-- thank you some guy on reddit for making this work
hl.env("QT_QPA_PLATFORMTHEME", "kde")

hl.env("QT_QPA_PLATFORM", "wayland")

hl.env("XDG_MENU_PREFIX", "plasma-")
