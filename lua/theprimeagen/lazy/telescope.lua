return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', 'gr', builtin.lsp_references)
        -- Add this to your telescope config file (usually in lua/config/telescope.lua or init.lua)
        vim.keymap.set('n', '<leader>/', function()
            require('telescope.builtin').live_grep({
                search_dirs = { vim.fn.expand('%:p') }
            })
        end, { desc = 'Live grep current file' })
        require("theprimeagen.telescope.multigrep").setup()
    end
}
