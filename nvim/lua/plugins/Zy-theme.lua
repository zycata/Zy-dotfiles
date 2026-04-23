-- if true then return {} end 
return {
  {
    -- dir = "~/.config/nvim/Zy-theme", -- Path to your local folder
    dir = vim.fn.stdpath "config" .. "/" .. "Zy-theme/",
    lazy = false,       
    priority = 1000,    -- Load before everything else
    config = function()
      vim.cmd([[colorscheme Zy-theme]])
    end,
  },
}