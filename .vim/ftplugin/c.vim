map <buffer> <F4> : call CompileRunC()<CR>

func! CompileRunC()
    exec "w"
    exec "!gcc -g -Wall % -o %<"
    exec "vsplit term://./%<"
endfunc
