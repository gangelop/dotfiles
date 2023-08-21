-- "packer" {{{
-- installation: https://github.com/wbthomason/packer.nvim#quickstart
require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ctrlpvim/ctrlp.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'majutsushi/tagbar'
    use 'neovim/nvim-lspconfig'
    use 'jparise/vim-graphql'
    --use {
    --    'nvim-treesitter/nvim-treesitter',
    --    -- see: https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
    --    run = function()
    --        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    --        ts_update()
    --    end,
    --}

    --Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    --Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    --Plug 'nvie/vim-flake8'
    --Plug 'rust-lang/rust.vim'
    --Plug 'cespare/vim-toml'
    --Plug 'Glench/Vim-Jinja2-Syntax'
    --Plug 'jparise/vim-graphql'
    --Plug 'edkolev/tmuxline.vim'

    -- colorschemes
    use 'AlessandroYorba/Alduin'
    use 'AlessandroYorba/Sierra'
    use 'AlessandroYorba/Arcadia'
    use 'AlessandroYorba/Breve'
    use 'nanotech/jellybeans.vim'
    use 'whatyouhide/vim-gotham'
    use 'marcopaganini/termschool-vim-theme'
    use 'iCyMind/NeoSolarized'
    use 'alessandroyorba/despacio'
    use 'sherifkandeel/vim-colors' -- name: vimbrains
end)

--}}}
-- "general settings" {{{
vim.cmd.colorscheme("sierra")
vim.o.background = "dark"

vim.o.pumblend = 5

vim.g.airline_powerline_fonts=1

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
-- "keymaps" {{{
vim.keymap.set('n', '<leader>b', ': TagbarToggle<cr>')
vim.keymap.set('n', '<leader>s', ': set spell ! <cr>')
vim.keymap.set('n', '<leader>r', ': set relativenumber ! <cr>')

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

-- nvim-lspconfig
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.references)

-- }}}
-- "skeletons" {{{
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.html",
    command = "0r ~/.config/nvim/skeleton/skeleton.html| normal Gdd| 10G0",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.sh",
    command = "0r ~/.config/nvim/skeleton/skeleton.sh| normal G",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.zsh",
    command = "0r ~/.config/nvim/skeleton/skeleton.zsh| normal G",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.c",
    command = "0r ~/.config/nvim/skeleton/skeleton.c| normal Gddkk",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.pl",
    command = "0r ~/.config/nvim/skeleton/skeleton.pl| normal G",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.py",
    command = "0r ~/.config/nvim/skeleton/skeleton.py| normal G",
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.go",
    command = "0r ~/.config/nvim/skeleton/skeleton.go| normal Gdd6G$bb",
})

-- }}}
-- "LSP" {{{
local lspconfig = require('lspconfig')

-- pacman package: gopls
lspconfig.gopls.setup {}

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    command = "lua vim.lsp.buf.format()"
})

-- TODO: also run on TextChanged with undojoin maybe? Haven't solved it yet.
-- TODO: BufWritePre doesn't work correctly because vim.lsp.buf.code_action() is asynchronous.
-- TODO: see also https://github.com/neovim/neovim/issues/24168
vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePre" }, {
    pattern = "*.go",
    command = "lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })"
})

-- pacman package: lua-language-server
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- pacman package: python-lsp-server, python-pyflakes (for errors)
lspconfig.pylsp.setup {}

-- pacman package: typescript-language-server
lspconfig.tsserver.setup {}

-- }}}
-- vim:fdm=marker
