return
{
    'lewis6991/gitsigns.nvim',
    config = function()
        local gitsigns = require('gitsigns')

        gitsigns.setup({
            current_line_blame = true, -- Enable blame by default
            current_line_blame_opts = {
                delay = 200,           -- 200ms delay before blame appears
                virt_text_pos = 'eol', -- Show at end of line
                virt_text_priority = 100,
            },
            current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        })
        -- Add this command to easily toggle the blame view
        vim.api.nvim_create_user_command('GitBlameToggle', function()
            vim.cmd('Gitsigns toggle_current_line_blame')
        end, {})

        -- Optional: Add a keybinding to toggle blame
        vim.keymap.set('n', '<leader>gb', ':GitBlameToggle<CR>', { silent = true })
    end,
}
