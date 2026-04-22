-- Move between windows with Control + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Move between windows with Control + Arrow keys
vim.keymap.set('n', '<C-Left>',  '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-Down>',  '<C-w>j', { desc = 'Move to lower window' })
vim.keymap.set('n', '<C-Up>',    '<C-w>k', { desc = 'Move to upper window' })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { desc = 'Move to right window' })