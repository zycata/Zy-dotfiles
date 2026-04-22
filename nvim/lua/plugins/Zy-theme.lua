
return {
  {
    dir = "~/.config/nvim/Zy-theme", -- Path to your local folder
    lazy = false,       
    priority = 1000,    -- Load before everything else
    config = function()
      vim.cmd([[colorscheme Zy-theme]])
    end,
  },
}