"python PEP-8 friendly indentation: http://henry.precheur.org/vim/python"
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nomodeline
set smarttab
set expandtab

syntax on
set hlsearch
set number
set wildmenu

colorscheme custom

" Only works on version >= 7.3
" see http://vim.wikia.com/wiki/Encryption for details
set cryptmethod=blowfish

" Toggles NERDTree with 'ctrl+t'
map <C-t> : NERDTreeToggle<CR>

" Press Ctrl+H to toggle search highlighting
map <C-h> : set hlsearch!<CR>

"http://vim.wikia.com/wiki/Map_function_keys_to_compile_and_run_your_code"
map <F4> : call CompileRunC()<CR>
map <F5> : call RunPerl()<CR>
map <F6> : call RunPython2()<CR>
map <F7> : call RunPython3()<CR>

func! CompileRunC()
    exec "w"
    exec "!gcc -Wall -ansi % -o %<.out && ./%<.out" 
endfunc

func! CompileRunCPlusPlus()
    exec "w"
    exec "!g++ -Wall -ansi % -o %<.out && ./%<.out"
endfunc

func! RunPython2()
    exec "w"
    exec "!python2 %" 
endfunc

func! RunPython3()
    exec "w"
    exec "!python %" 
endfunc

func! RunPerl()
    exec "w"
    exec "!perl %" 
endfunc

" SKELETONS
" When I open a new file, vim detects the file extention and
" automatically fills in a basic structure for that particular file type.
" For example, if I do `vim /tmp/foobar.sh`, vim will automatically include
" something like:
" #!/bin/sh

:autocmd BufNewFile *.html  0r ~/.vim/skeleton/skeleton.html
:autocmd BufNewFile *.sh    0r ~/.vim/skeleton/skeleton.sh
:autocmd BufNewFile *.zsh    0r ~/.vim/skeleton/skeleton.zsh
:autocmd BufNewFile *.c     0r ~/.vim/skeleton/skeleton.c
:autocmd BufNewFile *.pl     0r ~/.vim/skeleton/skeleton.pl
