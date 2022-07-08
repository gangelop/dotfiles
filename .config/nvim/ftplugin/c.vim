"---------------------------"
" Linux kernel coding style "
"---------------------------"
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

map <buffer> <F4> : call CompileRunC()<CR>

func! CompileRunC()
    exec "w"
    exec "!gcc -g -Wall % -o %<"
    exec "vsplit term://./%<"
endfunc
