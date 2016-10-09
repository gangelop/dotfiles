map <buffer> <F4> : call RunScript()<CR>

func! RunScript()
    exec "w"
    exec "vsplit term://./%"
    exec "startinsert"
endfunc
