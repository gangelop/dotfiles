map <buffer> <F4> : call RunBash()<CR>

func! RunBash()
    exec "w"
    exec "vsplit term://bash\\ %"
    exec "startinsert"
endfunc
