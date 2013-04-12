" Basic settings
syntax on
filetype on
filetype indent on
filetype plugin on

" Path
set path=.,,**

" Add trailing eol
set eol

" Color
set background=dark
color resistor

" Change default mapleader to a comma
let mapleader = ","
let maplocalleader = ","

" Folds
set fillchars="vert:YXXY,fold:-"

" Set spellcheck to English
set spelllang=en_us

" Tabs management
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set textwidth=0
set showtabline=2
set laststatus=2

" Window management
set splitbelow splitright
set equalalways
set winminheight=0
set winminwidth=0

" Cursor line
set nocursorline

" Temp files
set nobackup
set nowritebackup
set noswapfile

" Set encodings to UTF8
set encoding=utf-8
set fileencoding=utf-8

" Autocomplete settings.
set complete=.,w,b,u

" Change file expansion to mimic shell behavior
set wildmenu
set wildmode=list:longest

" Case insensitive, incremental search, manual folds, etc.
set iminsert=0
set gdefault
set smartcase
set foldmethod=manual
set foldcolumn=1
set nonumber
set incsearch
set nohlsearch
set ruler
set textwidth=66
set formatoptions+=t
set showmatch
set matchtime=1

" Show command in status bar
set showcmd

" Hide status line when in insert mode.
au InsertEnter * hi StatusLine ctermfg=Black ctermbg=Black
au InsertLeave * hi StatusLine ctermfg=Gray ctermbg=Black

" Allow movement past the last character of the line.
set virtualedit=block,onemore

" Other files.
source ~/.vim/config/mappings.vim
source ~/.vim/config/commenter.vim
source ~/.vim/config/execute-file.vim
source ~/.vim/config/execute-test.vim
source ~/.vim/config/tab-autocomplete.vim
source ~/.vim/config/imap-snippets.vim
source ~/.vim/config/preview-results.vim
