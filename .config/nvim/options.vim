set hidden
set wildmenu
set showcmd
set nowrap
set nohlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set incsearch
set ruler
set confirm
set visualbell
set number
set relativenumber
set nobackup
set nowritebackup
set expandtab
set undofile

set foldmethod=indent
set foldlevel=99
set so=9999
set cmdheight=2
set laststatus=2
set conceallevel=0
set encoding=utf-8
set backspace=indent,eol,start
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set colorcolumn=81

" disable scrollbar
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" remove swap and backup files from working directory
set undodir=~/.vim/.undo
set backupdir=~/.vim/.backup
set directory=~/.vim/.swp

let g:indentLine_setConceal = 0

" coc snippets
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" airline
let g:airline_theme='dark_minimal'

" discord rich presence
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:tex_conceal = ''

" emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0

filetype on
syntax on
filetype plugin indent on
colorscheme darkblue
highlight Pmenu ctermbg=blue
