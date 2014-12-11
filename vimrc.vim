set nocompatible
set autoindent
set eol
set showtabline=2
set laststatus=2
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set showcmd
set backspace=indent,eol,start
set ruler
set path=.,,**
set showmatch
set matchtime=1
let loaded_matchparen=1

" Window management
set splitbelow splitright
set equalalways
set winminheight=0
set winminwidth=0

" Autocomplete settings.
set complete=.,w,b,u

" Change file expansion to mimic shell behavior
set wildmenu
set wildmode=list:longest

" Activate filetype and syntax
filetype on
syntax enable

" Deactivate Ex-mode
map Q <Nop>

" Deactivate recording
map q <Nop>

" Deactivate keyword lookup
map K <Nop>

" Deactivate marks in other files
map ` <Nop>

" Use C-C as ESC in insert mode
inoremap <C-C> <ESC>

" Move between tabs
map H :tabp<CR>
map L :tabn<CR>

" Movement mappings
nmap j gj
nmap k gk

" Open file in new tab
nmap <C-O> :tabe 

" Colors
color soon

" Function to comment code
source ~/.vim/commenter.vim
