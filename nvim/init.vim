" Neovim specific settings
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " use system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set spelllang=en            " Set spellcheck language
set spellsuggest=best,9     " Show up to 9 spellcheck options

" Plugins
call plug#begin()
 Plug 'mhinz/vim-startify' " Homepage
 Plug 'lewis6991/impatient.nvim' " Caches lua to load faster next time
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
 Plug 'nvim-tree/nvim-web-devicons' " Icons
 Plug 'nvim-lua/plenary.nvim' " Telescope dependency
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' } " Fuzzy (fzf) Finder
 Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
 Plug 'romgrk/barbar.nvim' " Tabs
 Plug 'lukas-reineke/indent-blankline.nvim'
 Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " Completion Plugin
 Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'} " Snippets
call plug#end()

" Colorscheme
colorscheme tokyonight-night

" open new split panes to right and below
set splitright
set splitbelow

" Keybinds
nnoremap <Space>e <cmd>CHADopen<cr>
nnoremap <Space>f <cmd>Telescope find_files<cr>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" Load COQ on startup
autocmd VimEnter * COQnow -s 

" Require Lua Scripts
lua require('impatient')
