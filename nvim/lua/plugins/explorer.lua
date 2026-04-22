-- if true then return {} end
-- lazy.nvim
---@type LazySpec
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
          
        }
      }
    }
  },
  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    { "<leader>fe", function() Snacks.explorer.reveal() end, desc = "File Explorer Reveal"},

    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find files" },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = "Snack Grep Search"},
    { "<leader>," , function() Snacks.picker.buffers() end, desc = "Buffers"},
  }
}
