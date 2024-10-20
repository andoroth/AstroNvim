lua require("andorman")

set wildmode=longest:list,full
set wildmenu

set nu
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent
set ignorecase
set smartcase

set noswapfile
set nobackup
set undofile

set hlsearch
set incsearch

set termguicolors

set scrolloff=8
set signcolumn=yes

set updatetime=50
set colorcolumn=100

" autosave on focus loss, auto read from disk on focus return
set autoread
:au FocusLost * silent! wa
