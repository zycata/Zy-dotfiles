local vars = require("Zy-conf.variables")



hl.config({
    input = {
        touchpad = {
            natural_scroll = true,
            disable_while_typing = true, 
            scroll_factor = 1.0,

        }
    }
})

-- device name can be found with `hyprctl devices`
hl.device({
    name = "compx-2.4g-wireless-receiver",
    sensitivity = -1
})

hl.device({
    name = "compx-2.4g-dual-mode-mouse",
    sensitivity = -1
})