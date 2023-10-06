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

map("i", "jk", "<Esc>", false)
map("i", "<Esc>", "<NOP>", false)
map("i", "<C-c>", "<NOP>", false)
