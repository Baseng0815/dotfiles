" tab navigation
nmap <silent> th  :tabfirst<CR>
nmap <silent> tk  :tabnext<CR>
nmap <silent> tj  :tabprev<CR>
nmap <silent> tl  :tablast<CR>
nmap <silent> tt  :tabedit<Space>
nmap <silent> tn  :tabnext<Space>
nmap <silent> td  :tabclose<CR>

" split and window settings
map <C-w>l :set splitright<CR>:vnew<SPACE>
map <C-w>h :set nosplitright<CR>:vnew<SPACE>
map <C-w>k :set nosplitbelow<CR>:new<SPACE>
map <C-w>j :set splitbelow<CR>:new<SPACE>
map <C-w>q :wq<CR>
map <C-w>w :q!<CR>
map <C-w>e :bd<CR>

" fold
nnoremap <silent> <space> za
map <silent> Y $yy

" autoindent and whitespace trimming
map <silent> <F4> mpgg=G'pmp:%s/\s\+$//e<CR>|''

" fuzzy finder and fuzzy history
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> H :History<CR>

" save all (this is superior to C-s)
noremap <C-f> :wa<CR>

" I like this behavior more
noremap <silent> ^ 0
noremap <silent> 0 ^

" file explorer
noremap <silent> <C-n> :NERDTreeToggle<CR>

" switch C/C++ header/source
noremap <silent> <F5> :call CurtineIncSw()<CR>

" jump list
noremap <silent> <C-e>j :call GotoJump()<CR>

" command history
map <silent> <C-e>c q:

inoremap <silent> jk <Esc>
inoremap <silent> <Esc> <NOP>
inoremap <silent> <C-c> <NOP>

" coc language server stuff
inoremap <silent><expr><C-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)

" Use tab for trigger completion
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
map <silent> L :call CocAction('doHover')<CR>

" expand and jump to next snippet placeholder
imap <C-j> <Plug>(coc-snippets-expand-jump)
