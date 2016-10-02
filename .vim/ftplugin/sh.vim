map <buffer> <F4> : call RunBash()<CR>
map <buffer> <F3> : call RunShellcheck()<CR>

func! RunBash()
    exec "w"
    exec "vsplit term://bash\\ %"
    exec "startinsert"
endfunc

func! RunShellcheck()
    exec "w"
    exec "vsplit term://shellcheck\\ %"
endfunc
