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

" Use C-C as ESC in insert mode.
inoremap <C-C> <ESC>

inoremap <C-A> <HOME>
inoremap <C-E> <END>

nmap <C-A> g0
nmap <C-E> g$

" Move between tabs
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>

" Movement mappings
nmap j gj
nmap k gk

" Open file in new tab
nmap <C-O> :tabe 

set t_Co=256

" Syntax highlight
" syn keyword	Todo	contained TODO FIXME

" syn match 	TrailingWhitespace /\s\+\%#\@<!$/
" syn match	Comment	"^#.*" contains=Todo
" syn match	Comment	"\s#.*"ms=s+1 contains=Todo
" syn region	String	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
" syn region	String	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

" Colors
hi TrailingWhitespace    ctermfg=Red         ctermbg=Red
hi Comment               ctermfg=DarkGray    ctermbg=Black
hi Todo                  ctermfg=Yellow      ctermbg=Black
hi String                ctermfg=DarkGreen   ctermbg=Black

hi TabLine               ctermfg=Black       ctermbg=Gray     cterm=bold
hi TabLineFill           ctermfg=Black       ctermbg=White    cterm=bold
hi TabLineSel            ctermfg=White       ctermbg=Red      cterm=NONE
hi Title                 ctermfg=White       ctermbg=NONE

" Match trailing whitespaces except when typing at the end of a line.
source ~/.vim/commenter.vim
