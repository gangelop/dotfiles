map <buffer> <F4> : call RunScript()<CR>
map <buffer> <F3> : call RunShellcheck()<CR>

func! RunScript()
    exec "w"
    exec "vsplit term://./%"
    exec "startinsert"
endfunc

func! RunShellcheck()
    exec "w"
    exec "vsplit term://shellcheck\\ %"
endfunc
