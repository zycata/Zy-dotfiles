-- if true then return {} end 


return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup({
      ensure_installed = { 
        "lua", 
        "luadoc", 
        "luap",
        "vim",     -- Also highly recommended for init.lua users
        "vimdoc",  -- For help file highlighting
      },
      highlight = {
        enable = true,
      },
    })
  end
}

local function hey()
  return nil
end 
