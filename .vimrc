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
set number
set wildmenu

colorscheme custom

" Toggles NERDTree with 'ctrl+t'
map <C-t> : NERDTreeToggle<CR>

"http://vim.wikia.com/wiki/Map_function_keys_to_compile_and_run_your_code"

map <F4> : call CompileRunC()<CR>
map <F5> : call CompileRunCPlusPlus()<CR>
map <F6> : call WriteRunPython2()<CR>
map <F7> : call WriteRunPython3()<CR>

func! CompileRunC()
    exec "w"
    exec "!gcc -Wall -ansi % -o %<.out && ./%<.out" 
endfunc

func! CompileRunCPlusPlus()
    exec "w"
    exec "!g++ -Wall -ansi % -o %<.out && ./%<.out"
endfunc

func! WriteRunPython2()
    exec "w"
    exec "!python2 %" 
endfunc

func! WriteRunPython3()
    exec "w"
    exec "!python %" 
endfunc


"Skeleton/Templates for new files"
:autocmd BufNewFile *.html  0r ~/.vim/skeleton/skeleton.html
:autocmd BufNewFile *.sh    0r ~/.vim/skeleton/skeleton.sh
:autocmd BufNewFile *.zsh    0r ~/.vim/skeleton/skeleton.zsh
:autocmd BufNewFile *.c     0r ~/.vim/skeleton/skeleton.c
