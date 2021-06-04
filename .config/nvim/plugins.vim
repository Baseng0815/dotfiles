call plug#begin('~/.vim/plugged')
" Code completion
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}
Plug 'tikhomirov/vim-glsl'

" TODO find out why there are two fzf
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

" random stuff that I will probably never use
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'chrisbra/colorizer'
" Plug 'pangloss/vim-javascript'
Plug 'wlangstroth/vim-racket'

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
Plug 'hugolgst/vimsence'
call plug#end()
