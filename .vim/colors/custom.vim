" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "custom"

highlight Comment       ctermfg=DarkGray
highlight String        ctermfg=LightBlue
highlight LineNr        ctermfg=darkgrey
highlight VertSplit     ctermfg=grey
highlight StatusLine    ctermfg=grey
highlight StatusLineNC  ctermfg=darkgrey
highlight WildMenu      ctermfg=white ctermbg=black
