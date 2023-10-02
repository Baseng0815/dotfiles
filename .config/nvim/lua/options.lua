vim.opt.hidden          = true
vim.opt.wildmenu        = true
vim.opt.showcmd         = true
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.autoindent      = true
vim.opt.incsearch       = true
vim.opt.ruler           = true
vim.opt.confirm         = true
vim.opt.visualbell      = true
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.expandtab       = true
vim.opt.undofile        = true
vim.opt.ttimeout        = true
-- I'd like this to be turned on, but it creates lag in .tex files
vim.opt.cursorline      = false
vim.opt.cursorcolumn    = false
vim.opt.langremap       = false
vim.opt.backup          = false
vim.opt.writebackup     = false
vim.opt.timeout         = false
vim.opt.wrap            = false
vim.opt.hlsearch        = false
vim.opt.startofline     = false

vim.opt.foldmethod      = "indent"
vim.opt.foldlevel       = 99
-- vim.opt.so              = 9999
vim.opt.cinoptions      = {'(0'}
vim.opt.cmdheight       = 2
vim.opt.laststatus      = 2
vim.opt.conceallevel    = 0
vim.opt.encoding        = "utf-8"
vim.opt.backspace       = {"indent", "eol", "start"}
vim.opt.cmdheight       = 2
vim.opt.updatetime      = 300
vim.opt.shortmess       = vim.opt.shortmess + "c"
vim.opt.signcolumn      = "yes"
vim.opt.ttimeoutlen     = 200
vim.opt.pastetoggle     = "<F11>"
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.colorcolumn     = "81"

vim.opt.completeopt     = {"menu", "menuone", "noselect"}

-- remove swap and backup files from working directory
vim.opt.undodir         = "/home/bastian/.vim/.undo"
vim.opt.backupdir       = "/home/bastian/.vim/.backup"
vim.opt.directory       = "/home/bastian/.vim/.swp"

vim.g.indentLine_setConceal = 0
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.c", "*.h" },
    callback = function(args)
        vim.opt.shiftwidth = 8
    end
})

vim.cmd("syntax on")
vim.cmd("colorscheme gruvbox")
vim.cmd("filetype plugin indent on")
vim.cmd("hi Normal ctermbg=NONE guibg=NONE")
vim.cmd("set scrolloff=9999")
