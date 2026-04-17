return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        
        -- Find files including hidden ones and ignoring .gitignore
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files({ 
                no_ignore = true, 
                hidden = true 
            })
        end, { desc = 'Telescope find files (all)' })

        -- Live grep including hidden files
        vim.keymap.set('n', '<leader>fg', function()
            builtin.live_grep({
                -- This forces ripgrep to find hidden files and ignore .gitignore
                additional_args = function()
                    return { "--hidden", "--no-ignore" }
                end
            })
        end)

        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}