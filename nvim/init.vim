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
set relativenumber

" Use 4 spaces instead of tab ()
" Copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

packadd vimball

source $XDG_CONFIG_HOME/nvim/vim-plug/plugins.vim
source $XDG_CONFIG_HOME/nvim/plug-config/coc.vim
set t_Co=256
syntax on



set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu




