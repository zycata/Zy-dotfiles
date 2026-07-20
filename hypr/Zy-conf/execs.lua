local vars = require("Zy-conf.variables")


hl.on("hyprland.start", function()
    -- hl.exec_cmd("hyprpaper")
    for _, cmd in ipairs(vars.startupExecs) do
        hl.exec_cmd(cmd)
    end
end)