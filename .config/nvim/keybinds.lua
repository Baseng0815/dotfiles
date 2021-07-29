local function map(mode, key, action, silent, expr)
    vim.api.nvim_set_keymap(mode, key, action, {
        noremap = true,
        silent = silent or true,
        expr = expr or false
    })
end

local function recmap(mode, key, action, silent, expr)
    vim.api.nvim_set_keymap(mode, key, action, {
        noremap = false,
        silent = silent or true,
        expr = expr or false
    })
end

-- tab navigation
map("n", "th", ":tabfirst<CR>")
map("n", "tk", ":tabnext<CR>")
map("n", "tj", ":tabprev<CR>")
map("n", "tl", ":tablast<CR>")
map("n", "tt", ":tabedit<CR>")
map("n", "tn", ":tabnext<CR>")
map("n", "td", ":tabclose<CR>")

-- split and window settings
map("", "<C-w>l", ":set splitright<CR>:vnew<SPACE>")
map("", "<C-w>h", ":set nosplitright<CR>:vnew<SPACE>")
map("", "<C-w>k", ":set nosplitbelow<CR>:new<SPACE>")
map("", "<C-w>j", ":set splitbelow<CR>:new<SPACE>")
map("", "<C-w>q", ":wq<CR>", false)
map("", "<C-w>w", ":q!<CR>", false)
map("", "<C-w>e", ":bd<CR>", false)

-- fold
map("n", "<Space>", "za", false)
map("", "Y", "$yy", false)

-- autoindent and whitespace trimming
map("", "<F4>", [[mpgg=G'pmp:%s/\s\+$//e<CR>|'']])

-- fuzzy finder and fuzzy history
map("n", "<C-p>", ":FZF<CR>")
map("n", "H", ":History<CR>")

-- save all (this is superior to C-s)
map("", "<C-f>", ":wa<CR>", false)

-- I like this behavior more
map("", "^", "0")
map("", "0", "^")

-- file explorer
map("", "<C-n>", ":NERDTreeToggle<CR>")

-- switch C/C++ header/source
map("", "<F5>", ":call CurtineIncSw()<CR>")

-- jump list
map("", "<C-e>j", ":call GotoJump()<CR>")

-- command history
map("", "<C-e>c", "q:")

map("i", "jk", "<Esc>")
map("i", "<Esc>", "<NOP>")
map("i", "<C-c>", "<NOP>")

-- coc language server stuff
recmap("i", "<C-space>", "coc#refresh", true, true)
recmap("n", "gd", "<Plug>(coc-definition)")
recmap("n", "gy", "<Plug>(coc-type-definition)")
recmap("n", "gi", "<Plug>(coc-implementation)")
recmap("n", "gr", "<Plug>(coc-references)")
recmap("n", "gn", "<Plug>(coc-rename)")

-- Use tab for trigger completion
function _G.check_back_space()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    return (col == 0 or vim.api.nvim_get_current_line():sub(col, col):match('%s')) and true
end

map("i", "<TAB>", [[pumvisible() ? "\<C-n>" : v:lua.check_back_space() ? "\<TAB>" : coc#refresh]], true, true)

map("i", "<TAB>", [[pumvisible() ? "\<C-n>" : "\<TAB>"]], true, true)
map("i", "<S-TAB>", [[pumvisible() ? "\<C-p>" : "\<TAB>"]], true, true)
map("", "L", ":call CocAction('doHover')<CR>")

-- expand and jump to next snippet placeholder
recmap("i", "<C-j>", "<Plug>(coc-snippets-expand-jump)")
