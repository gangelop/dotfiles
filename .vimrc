"--------------"
" " vim-plug " "
"--------------"
" For installation:
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'edkolev/tmuxline.vim'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" colorschemes
Plug 'AlessandroYorba/Alduin'
Plug 'AlessandroYorba/Sierra'
Plug 'nanotech/jellybeans.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'marcopaganini/termschool-vim-theme', { 'frozen': 1 }
call plug#end()
"--------------"

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
let g:airline_powerline_fonts=1
let g:airline_theme='zenburn'

let g:alduin_Shout_Aura_Whisper = 1
colorscheme termschool
"--------------------"

"----------------------"
" " general settings " "
"----------------------"
filetype plugin on
filetype indent on
" indentation stuff     "
" python pep-8-firendly "
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set showcmd

syntax on
set number
set modeline
set splitright
set splitbelow
set mouse=""
set laststatus=2
set ignorecase
set smartcase
set clipboard+=unnamedplus
"----------------------"

"------------------"
" " key bindings " "
"------------------"
" Toggles NERDTree
map <leader>t : NERDTreeToggle<CR>

" Toggles TagBar
map <leader>b : TagbarToggle<CR>

" C-h doesn't work in nvim and some terminals
" WORKAROUND: https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
" navigate tabs with Ctrl+<h,l>
map <C-h> : tabprevious<CR>
map <C-l> : tabnext<CR>

" navigate windows with Alt+<h,j,k,l>
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l

" move windows
map <S-M-h> <C-w><S-h>
map <S-M-j> <C-w><S-j>
map <S-M-k> <C-w><S-k>
map <S-M-l> <C-w><S-l>

" Toggle relativenumber
map <leader>r : set relativenumber!<CR>
"------------------"

"---------------"
" " functions " "
"---------------"
" writes the file and uploads it to hastebin.com
" copies the url to clipboard
command! HasteUpload call HasteUpload()
func! HasteUpload()
    exec "w"
    if has('nvim')
        exec ":terminal haste % | tee >(xsel -ib)"
    else
        exec "!haste % | tee >(xsel -ib)"
    endif
endfunc
"---------------"

"---------------"
" " skeletons " "
"---------------"
au BufNewFile *.html  0r ~/.vim/skeleton/skeleton.html
au BufNewFile *.sh    0r ~/.vim/skeleton/skeleton.sh
au BufNewFile *.zsh    0r ~/.vim/skeleton/skeleton.zsh
au BufNewFile *.c     0r ~/.vim/skeleton/skeleton.c
au BufNewFile *.pl     0r ~/.vim/skeleton/skeleton.pl
au BufNewFile *.py     0r ~/.vim/skeleton/skeleton.py
"---------------"
