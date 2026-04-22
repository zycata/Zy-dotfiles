

return {
  "rebelot/heirline.nvim",
  event = "UiEnter",
  dependencies = { "folke/snacks.nvim" },
  config = function()
    local conditions = require("heirline.conditions")
    local utils = require("heirline.utils")

    -- --- 1. SPECIAL WINDOWS (Snacks Explorer) ---
    local SpecialStatusline = {
      condition = function()
        return conditions.buffer_matches({
          filetype = { "snacks_explorer", "snacks_layout_box", "nlink" },
        })
      end,
      -- Simple clean bar for the explorer
      {
        provider = "   Explorer ",
        hl = { fg = "purple", bg = "black", bold = true },
      },
      { provider = "%=" }, -- Spacer
    }

    -- --- 2. REGULAR COMPONENTS ---
    local ViMode = {
      init = function(self) self.mode = vim.fn.mode(1) end,
      static = {
        mode_colors = {
          n = "red", i = "green", v = "cyan", V = "cyan",
          ["\22"] = "cyan", c = "orange", s = "purple",
          S = "purple", ["\19"] = "purple", R = "orange",
          r = "orange", ["!"] = "red", t = "red",
        },
      },
      provider = function(self) return "  " .. self.mode:upper() .. " " end,
      hl = function(self)
        return { fg = "black", bg = self.mode_colors[self.mode:sub(1,1)], bold = true }
      end,
      update = { "ModeChanged" },
    }

    local FileNameBlock = {
      provider = function()
        local filename = vim.fn.expand("%:t")
        if filename == "" then return " [No Name] " end
        return " " .. filename .. " "
      end,
      hl = { fg = "white" },
    }

    -- --- 3. ASSEMBLY ---
    local StatusLine = {
      -- Heirline picks the first component whose 'condition' is met
      fallthrough = false, 
      
      SpecialStatusline, -- Check if it's Snacks Explorer first
      {                  -- Otherwise, show the default statusline
        ViMode,
        FileNameBlock,
        { provider = "%=" },
        { provider = " %l:%c ", hl = { fg = "gray" } },
      }
    }

    require("heirline").setup({
      statusline = StatusLine,
      -- This ensures Heirline doesn't try to draw on tiny floating windows 
      -- or specific Snacks popups unless you want it to.
      opts = {
        disable_winbar_cb = function(args)
          return conditions.buffer_matches({
            buftype = { "terminal", "prompt", "nofile" },
            filetype = { "snacks_picker_input" },
          }, args.buf)
        end,
      },
    })
  end,
}
