-- if true then return {} end
return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy", -- Only load when you actually start typing
    opts = {
      -- This helps with the transparency you wanted earlier
      win = {
        border = "none", -- or "none" if you want it totally seamless
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}