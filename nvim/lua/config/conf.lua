vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.guicursor = "i:hor20" -- make it use _ instead of | when inserting

vim.opt.shiftwidth = 4 -- size of ident
vim.opt.tabstop = 4 -- Number of spaces a tab is
vim.opt.expandtab = false -- tabs 

vim.opt.linebreak = true -- line berak at whole words and not characters

vim.wo.number = true -- show line numbers

-- This ensures transparency persists when switching colorschemes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
})

-- :highlight Normal ctermbg=None guibg=None <- command that was used


