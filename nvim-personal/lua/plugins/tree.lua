return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
        relativenumber = true, -- Great for jumping around with vim motions
      },
      renderer = {
        group_empty = true,
        icons = {
          show = {
            file = true,
            folder = true,
            -- folder_arrow = true,
            -- git = true,
          },
        },
      },
	  
    })

    -- Keymap to toggle the tree
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
    -- Focus the tree
    vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>', { desc = 'Focus File Explorer' })
  end,
}