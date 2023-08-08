local function map(mode, key, action, expr)
    vim.api.nvim_set_keymap(mode, key, action, {
        noremap = true,
        silent = false,
        expr = expr
    })
end

local function recmap(mode, key, action, expr)
    vim.api.nvim_set_keymap(mode, key, action, {
        noremap = false,
        silent = false,
        expr = expr
    })
end

vim.g.mapleader = " "

-- tab navigation
map("n", "th", ":tabfirst<CR>", false)
map("n", "tk", ":tabnext<CR>", false)
map("n", "tj", ":tabprev<CR>", false)
map("n", "tl", ":tablast<CR>", false)
map("n", "tt", ":tabedit<CR>", false)
map("n", "tn", ":tabnext<CR>", false)
map("n", "td", ":tabclose<CR>", false)

-- split and window settings
map("", "<C-w>l", ":set splitright<CR>:vnew<SPACE>", false)
map("", "<C-w>h", ":set nosplitright<CR>:vnew<SPACE>", false)
map("", "<C-w>k", ":set nosplitbelow<CR>:new<SPACE>", false)
map("", "<C-w>j", ":set splitbelow<CR>:new<SPACE>", false)
map("", "<C-w>q", ":wq<CR>", false)
map("", "<C-w>w", ":q!<CR>", false)
map("", "<C-w>e", ":bd<CR>", false)

-- fold
map("n", "<leader><Space>", "za", false)
map("", "Y", "$yy", false)

-- autoindent and whitespace trimming
map("", "<F4>", [[mpgg=G'pmp:%s/\s\+$//e<CR>|]], false)

-- save all (this is superior to C-s)
map("", "<C-f>", ":wa<CR>", false)

-- I like this behavior more
map("", "^", "0", false)
map("", "0", "^", false)

-- file explorer
map("", "<C-n>", ":NERDTreeToggle<CR>", false)

-- switch C/C++ header/source
map("", "<F5>", ":FSHere<CR>", false)

-- jump list
map("", "<C-e>j", ":call GotoJump()<CR>", false)

-- command history
map("", "<C-e>c", "q:", false)

map("i", "jk", "<Esc>", false)
map("i", "<Esc>", "<NOP>", false)
map("i", "<C-c>", "<NOP>", false)

-- coc language server stuff
recmap("i", "<C-space>", "coc#refresh", false)
recmap("n", "gd", "<Plug>(coc-definition)", false)
recmap("n", "gy", "<Plug>(coc-type-definition)", false)
recmap("n", "gi", "<Plug>(coc-implementation)", false)
recmap("n", "gr", "<Plug>(coc-references)", false)
recmap("n", "gn", "<Plug>(coc-rename)", false)

-- Use tab for trigger completion
function _G.check_back_space()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    return (col == 0 or vim.api.nvim_get_current_line():sub(col, col):match('%s')) and true
end

map("i", "<TAB>", [[pumvisible() ? "\<C-n>" : v:lua.check_back_space() ? "\<TAB>" : coc#refresh]], true)

map("i", "<TAB>", [[pumvisible() ? "\<C-n>" : "\<TAB>"]], true)
map("i", "<S-TAB>", [[pumvisible() ? "\<C-p>" : "\<TAB>"]], true)
map("", "L", ":call CocAction('doHover')<CR>")

-- expand and jump to next snippet placeholder
recmap("i", "<C-l>", "<Plug>(coc-snippets-expand)", false)

-- telescope (this replaces fzf)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.command_history, {})
