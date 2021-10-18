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
vim.opt.so              = 9999
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

-- disable scrollbar
-- vim.opt.guioptions      = vim.opt.guioptions - {"r", "R", "l", "L"}
vim.opt.omnifunc        = "syntaxcomplete#Complete"
vim.opt.completeopt     = {"longest", "menuone"}

-- remove swap and backup files from working directory
vim.opt.undodir         = "/home/bastian/.vim/.undo"
vim.opt.backupdir       = "/home/bastian/.vim/.backup"
vim.opt.directory       = "/home/bastian/.vim/.swp"

vim.g.indentLine_setConceal = 0

-- coc snippets
vim.g.coc_snippet_next  = "<C-j>"
vim.g.coc_snippet_prev  = "<C-k>"

-- airline
vim.g.airline_theme     = "dark_minimal"

-- discord rich presence
vim.g.vimsence_small_text              = "NeoVim"
vim.g.vimsence_small_image             = "neovim"
vim.g.vimsence_editing_details         = "Editing: {}"
vim.g.vimsence_editing_state           = "Working on: {}"
vim.g.vimsence_file_explorer_text      = "In NERDTree"
vim.g.vimsence_file_explorer_details   = "Looking for files"

-- vimtex
vim.g.tex_flavor           = "latex"
vim.g.vimtex_view_method   = "zathura"
vim.g.tex_conceal          = ""

-- emmet
vim.g.user_emmet_leader_key     = ","
vim.g.user_emmet_install_global = 0

vim.cmd("syntax on")
vim.cmd("colorscheme darkblue")
vim.cmd("filetype plugin indent on")
vim.cmd("highlight Pmenu ctermbg=blue")
