autocmd BufNewFile,BufRead *.html,*.css EmmetInstall
autocmd BufNewFile,BufRead *.tsv set noexpandtab
autocmd BufNewFile,BufRead *.cpp,*.c,*.cu,*.hpp,*.h setlocal cindent cino=j1,(0,ws,Ws formatoptions-=cro cinoptions+=l1
autocmd BufNewFile,BufRead *.c,*.h,*.cu setlocal shiftwidth=8

autocmd BufNewFile,BufRead *.cu set filetype=c
autocmd BufNewFile,BufRead *.vert,*.frag set filetype=glsl
