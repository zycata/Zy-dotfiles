return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- We grab the header we just defined in AstroUI
    local header = require("astroui").config.header
    if opts.dashboard then
      opts.dashboard.preset = opts.dashboard.preset or {}
      -- snacks expects a single string or a table of strings
      opts.dashboard.preset.header = table.concat(header, "\n")
    end
    return opts
  end,
}
