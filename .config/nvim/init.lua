-- "packer" {{{
-- install+update from AUR: nvim-packer-git
require("packer").startup(function(use)
    use 'ctrlpvim/ctrlp.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'majutsushi/tagbar'
    --Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    --Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    --Plug 'vim-scripts/Cleanroom'
    --Plug 'nvie/vim-flake8'
    --"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
    --Plug 'rust-lang/rust.vim'
    --Plug 'cespare/vim-toml'
    --Plug 'Glench/Vim-Jinja2-Syntax'
    --Plug 'jparise/vim-graphql'
    --Plug 'edkolev/tmuxline.vim'

    use "AlessandroYorba/Sierra"
    use "AlessandroYorba/Alduin"
end)
--}}}
-- "general settings" {{{
vim.cmd.colorscheme("sierra")

vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.showcmd = true

vim.o.modeline = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.mouse = "a"
vim.o.laststatus = 2
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.o.inccommand = "split"
vim.o.updatetime = 100

vim.o.number = true
-- }}}
-- "key bindings" {{{
vim.keymap.set('n', '<leader>b', ': TagbarToggle<cr>')
vim.keymap.set('n', '<leader>s', ': set spell ! <cr>')

vim.keymap.set('n', '<C-h>', ': tabprevious<cr>')
vim.keymap.set('n', '<C-l>', ': tabnext<cr>')

-- navigate windows with Alt+<h,j,k,l>
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-l>', '<C-w>l')

-- move windows
vim.keymap.set('n', '<S-M-h>', '<C-w><S-h>')
vim.keymap.set('n', '<S-M-j>', '<C-w><S-j>')
vim.keymap.set('n', '<S-M-k>', '<C-w><S-k>')
vim.keymap.set('n', '<S-M-l>', '<C-w><S-l>')

-- Toggle relativenumber
vim.keymap.set('n', '<leader>r', ': set relativenumber!<cr>')
-- }}}
-- vim:fdm=marker
