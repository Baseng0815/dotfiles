local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', function() builtin.find_files({ no_ignore = true }) end, {})
vim.keymap.set('n', '<C-d>b', builtin.buffers, {})
vim.keymap.set('n', '<C-d>r', builtin.registers, {})
vim.keymap.set('n', '<C-d>k', builtin.keymaps, {})
vim.keymap.set('n', '<C-d>q', builtin.quickfix, {})
vim.keymap.set('n', '<C-d>f', builtin.oldfiles, {})
vim.keymap.set('n', '<C-d>o', builtin.vim_options, {})
vim.keymap.set('n', '<C-d>p', builtin.planets, {})
vim.keymap.set('n', '<C-d>l', builtin.builtin, {})
vim.keymap.set('n', '<C-d>g', builtin.live_grep, {})
vim.keymap.set('n', '<C-d>c', builtin.command_history, {})

require("telescope").setup {
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
        }
    }
}

require("telescope").load_extension("ui-select")
