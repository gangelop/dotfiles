set nowrap
set cursorline
setlocal noexpandtab
setlocal shiftwidth=20
setlocal softtabstop=20
setlocal tabstop=20

"" experimental
func! TsvSplit()
    set nosplitbelow
    exec "1sp"
    normal! gg
    set scrollopt=hor,jump
    set scrollbind
endfunc
