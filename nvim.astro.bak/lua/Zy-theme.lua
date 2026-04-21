local M = {}

function M.setup()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  vim.opt.guicursor = "i:hor20" -- make it use _ instead of | when inserting

  vim.opt.shiftwidth = 4 -- size of ident
  vim.opt.tabstop = 4 -- Number of spaces a tab is
  vim.opt.expandtab = false -- tabs:

  vim.opt.linebreak = true -- line berak at whole words and not characters

  -- vim.wo.number = true -- show line numbers

  -- This ensures transparency persists when switching colorschemes
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function() M.apply_transparency() end,
  })
end
-- :highlight Normal ctermbg=None guibg=None <- command that was used

function M.apply_transparency()
  -- Common groups for the main UI
  local groups = {
    "Normal",
    "NormalFloat",
    "NormalNC", -- Normal text in non-current windows
    "NvimTreeNormal", -- Specifically for Nvim-Tree
    "NvimTreeNormalNC",
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptNormal",
    "TelescopeResultsNormal",
    "TelescopePreviewNormal",
    "LazyNormal", -- For the :Lazy menu
    "EndOfBuffer", -- The '~' at the end of files
    "NeoTreeNormal",
    "NeoTreeNormalNC", -- Background when the tree isn't the active window
    "NeoTreeFloatNormal", -- If you use neo-tree in floating mode
    "NeoTreeFloatBorder", -- The border around the floating window
    "NeoTreeWinSeparator", -- The vertical line between the tree and your code
    "NeoTreeEndOfBuffer",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
  end
end

return M
