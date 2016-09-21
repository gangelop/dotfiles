"------------------------"
" " just vundle things " "
"------------------------"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'AlessandroYorba/Alduin'
Plugin 'AlessandroYorba/Sierra'
Plugin 'nanotech/jellybeans.vim'
Plugin 'mhinz/vim-startify'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin on
filetype indent on
"-------------------------

"--------------------"
" " plugin options " "
"--------------------"
if has('nvim')
let g:ascii = [
      \ '                        __',
      \ '    ___  ___ ___.--.--.|__|.--------.',
      \ '   / _ \/ -_) _ |  |  ||  ||        |',
      \ '  /_//_/\__/\___/\___/ |__||__|__|__|',
      \ ''
      \]
else
let g:ascii = [
      \ '          __',
      \ '  .--.--.|__|.--------.',
      \ '  |  |  ||  ||        |',
      \ '   \___/ |__||__|__|__|',
      \ ''
      \]
endif

let g:startify_custom_header = g:ascii

let g:ctrlp_show_hidden = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_theme='zenburn'

let g:alduin_Shout_Aura_Whisper = 1
colorscheme alduin

"---------------------------------------"
" " python PEP-8 friendly indentation " "
" http://henry.precheur.org/vim/python  "
"---------------------------------------"
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set showcmd
"---------------------------------------"

syntax on
set number
set modeline
set splitright
set splitbelow
set mouse=""

"------------------"
" " key bindings " "
"------------------"

" Toggles NERDTree with Ctrl+t
map <leader>t : NERDTreeToggle<CR>

" Press Ctrl+<h,l> to navigate tabs
map <C-h> : tabprevious<CR>
map <C-l> : tabnext<CR>

" C-h doesn't work in nvim for some reason. :(
" Using Alt key bindings as well.
map <M-h> : tabprevious<CR>
map <M-l> : tabnext<CR>

" Toggle relativenumber
map <leader>r : set relativenumber!<CR>

"http://vim.wikia.com/wiki/Map_function_keys_to_compile_and_run_your_code"
map <F4> : call CompileRunC()<CR>
map <F6> : call RunPython2()<CR>
map <F7> : call RunPython3()<CR>

func! CompileRunC()
    exec "w"
    exec "silent !gcc -g -Wall % -o %<"
    exec "vsplit term://./%<"
endfunc

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
"------------------"

" writes the file and uploads it to hastebin.com
" copies the url to clipboard
func! HasteUpload()
    exec "w"
    exec "!haste % | tee >(xsel -ib)"
endfunc

"---------------"
" " skeletons " "
"---------------"
" When I open a new file, vim detects the file extention and
" automatically fills in a basic structure for that particular file type.
" For example, if I do `vim /tmp/foobar.sh`, vim will automatically include
" something like:
" #!/bin/sh

au BufNewFile *.html  0r ~/.vim/skeleton/skeleton.html
au BufNewFile *.sh    0r ~/.vim/skeleton/skeleton.sh
au BufNewFile *.zsh    0r ~/.vim/skeleton/skeleton.zsh
au BufNewFile *.c     0r ~/.vim/skeleton/skeleton.c
au BufNewFile *.pl     0r ~/.vim/skeleton/skeleton.pl
au BufNewFile *.py     0r ~/.vim/skeleton/skeleton.py
"---------------"

" http://stackoverflow.com/questions/12767024/changing-filetype-based-on-file-extention-in-vim
" for /proc/mounts files
augroup filetypedetect
    au BufNewFile,BufNewFile,BufRead mounts   :set ft=fstab
augroup END
