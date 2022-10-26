set clipboard+=unnamedplus

" Disable swap files
set noswapfile

" Save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" Number of undo saved
set undolevels=10000
set undoreload=10000

" Set line number
set number

" Use 4 spaces instead of tab ()
" Copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

packadd vimball

call plug#begin('~/.neovim/plugins')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-tree/nvim-web-devicons' 
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()










