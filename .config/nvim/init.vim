filetype plugin indent on

""""""""""""""""""""""""""""""""""
" FLAGS
""""""""""""""""""""""""""""""""""

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

""""""""""""""""""""""""""""""""""
" OPTIONS
""""""""""""""""""""""""""""""""""

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

" disable scrollbar
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set omnifunc=syntaxcomplete#Complete

" remove swap and backup files from working directory
set undodir=~/.vim/.undo
set backupdir=~/.vim/.backup
set directory=~/.vim/.swp
set undofile

filetype on
syntax on

""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
" Code completion
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}
Plug 'neovimhaskell/haskell-vim'
" Plug 'OmniSharp/omnisharp-vim'
Plug 'tikhomirov/vim-glsl'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'

Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'bronson/vim-trailing-whitespace'

" honestly, tpope is a god
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'

Plug 'kshenoy/vim-signature'
Plug 'tmhedberg/matchit'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdcommenter'

" latex and snippet stuff
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'

" 2-character f navigation
Plug 'justinmk/vim-sneak'

" web stuff
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'

" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'chrisbra/colorizer'
Plug 'pangloss/vim-javascript'

" Toggle header and source file
Plug 'ericcurtin/CurtineIncSw.vim'
Plug 'jiangmiao/auto-pairs'

" Seamless navigation between vim and tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Vim airline and other cosmetics
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'enricobacis/vim-airline-clock'
" Plug 'hugolgst/vimsence'
call plug#end()

""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""

" tab navigation
nmap th  :tabfirst<CR>
nmap tk  :tabnext<CR>
nmap tj  :tabprev<CR>
nmap tl  :tablast<CR>
nmap tt  :tabedit<Space>
nmap tn  :tabnext<Space>
" nnoremap tm  :tabm<Space>
nmap td  :tabclose<CR>

" split and window settings
map <C-w>l :set splitright<CR>:vnew<SPACE>
map <C-w>h :set nosplitright<CR>:vnew<SPACE>
map <C-w>k :set nosplitbelow<CR>:new<SPACE>
map <C-w>j :set splitbelow<CR>:new<SPACE>
map <C-w>q :wq<CR>
map <C-w>w :q!<CR>
map <C-w>e :bd<CR>

" buffer switching
" nmap <Tab> :buffer<Space><Tab>

nnoremap <space> za
map Y $yy

" autoindent and whitespace trimming
map <F4> mpgg=G'pmp:%s/\s\+$//e<CR>|''

" fuzzy finder and fuzzy history
nnoremap <C-p> :FZF<CR>
nnoremap <C-e>h :History<CR>

" other quality-of-life mappings
noremap <C-f> :wa<CR>
" noremap <C-c> :noh<CR>

" I like this behavior more
noremap ^ 0
noremap 0 ^

map <C-n> :NERDTreeToggle<CR>
map <F5> :call CurtineIncSw()<CR>
inoremap <Esc> <NOP>
inoremap <C-c> <NOP>

map <C-e>j :call GotoJump()
map <C-e>c q:

inoremap jk <Esc>

""""""""""""""""""""""""""""""""""
" YouCompleteMe
""""""""""""""""""""""""""""""""""

" YCM settings
" let g:ycm_autoclose_preview_window_after_insertion = 0
" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" let g:ycm_filepath_blacklist = {  }
" let g:ycm_filepath_completion_use_working_dir = 1
"
" nnoremap gdc :YcmCompleter GoToDeclaration<CR>
" nnoremap gdf :YcmCompleter GoToDefinition<CR>
" nnoremap gic :YcmCompleter GoToInclude<CR>

""""""""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""""""""
let g:indentLine_setConceal = 0

""""""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""""""

inoremap <silent><expr><C-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

""""""""""""""""""""""""""""""""""
" OmniSharp and UltiSnips as well as other snippet stuff
""""""""""""""""""""""""""""""""""
" let g:OmniSharp_server_stdio = 1
" let g:UltiSnipsExpandTrigger = '<C-e>n'
" let g:UltiSnipsListSnippets = '<C-e>m'

" user snippets
" let g:UltiSnipsSnippetsDir="~/.config/snippets"
" set runtimepath^=~/.config
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "user_snippets"]

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""
let g:airline_theme='dark_minimal'
" let g:airline#extensions#tabline#enabled = 1

""""""""""""""""""""""""""""""""""
" vimsence
""""""""""""""""""""""""""""""""""
"let g:vimsence_client_id='233599437635584000'
let g:vimsence_small_text='NeoVim'
let g:vimsence_small_image='neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

""""""""""""""""""""""""""""""""""
" tex
""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:tex_conceal = ''

""""""""""""""""""""""""""""""""""
" emmet
""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0

""""""""""""""""""""""""""""""""""
" functions
""""""""""""""""""""""""""""""""""
function! GotoJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction


""""""""""""""""""""""""""""""""""
" autocmds
""""""""""""""""""""""""""""""""""
autocmd FileType html,css EmmetInstall
autocmd BufNewFile,BufRead *.asm set filetype=nasm
autocmd BufNewFile,BufRead *.vert,*.frag set filetype=glsl
autocmd BufNewFile,BufRead *.cpp,*.c,*.hpp,*.h setlocal cindent cino=j1,(0,ws,Ws
autocmd FileType * set formatoptions-=cro

""""""""""""""""""""""""""""""""""
" macros
""""""""""""""""""""""""""""""""""
let @c='<C'

""""""""""""""""""""""""""""""""""
" color scheme
""""""""""""""""""""""""""""""""""
colorscheme delek
highlight Pmenu ctermbg=green
