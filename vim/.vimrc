execute pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=2
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
if has("gui_running")
    set cursorline
endif
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set colorcolumn=80
if has("gui_win32")
	set guifont=Consolas:h10:cANSI
elseif has("gui_gtk2")
	set guifont=Monospace:h10
else
	set guifont=Menlo:h11.00
endif

set guioptions-=T

nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

inoremap jj <ESC>

" Select just pasted text. Based on
" https://stackoverflow.com/questions/4775088/vim-how-to-select-pasted-block
" http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp "`[".getregtype(v:register)[0]."`]"

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup
set noswapfile
