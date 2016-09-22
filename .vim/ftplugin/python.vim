map <buffer> <F3> : call RunPython2()<CR>
map <buffer> <F4> : call RunPython3()<CR>

func! RunPython2()
    exec "w"
    exec "vsplit term://python2\\ %"
    exec "startinsert"
endfunc

func! RunPython3()
    exec "w"
    exec "vsplit term://python3\\ %"
    exec "startinsert"
endfunc
