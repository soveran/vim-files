" Open scratch file for Ruby (F1)
map <F1> :e /tmp/sample.rb<CR>:tabm 0<CR>
imap <F1> <ESC>:e /tmp/sample.rb<CR>:tabm 0<CR>

" Open scratch file
map <F2> :e /tmp/scratch<CR>:tabm 0<CR>
imap <F2> <ESC>:e /tmp/scratch<CR>:tabm 0<CR>

" Use C-C as ESC in insert mode.
inoremap <C-C> <ESC>

" Open tasks
map <F3> :tabnew $HOME/.taskpaper<CR>:tabm 0<CR>

" Toggle spell
map <F4> <ESC>:set spell!<CR>
imap <F4> <ESC>:set spell!<CR>

" Format selection with par
vnoremap <F8> :!par 70 -s0<CR>
vnoremap + :!par 70 -s0<CR>
vnoremap _ :!par 66 -s0<CR>

" Toggle search highlight
map <F10> :set hlsearch!<CR>
imap <F10> <ESC>:set hlsearch!<CR>a

" Handle trailing whitespaces and tabs.
map <F11> <ESC>:%s/\s*$//g<CR>:%s/\t/  /<CR>

" Start and stop the webserver
map <Leader>start <ESC>:!thin start -R config.ru -d<CR>
map <Leader>stop  <ESC>:!thin stop<CR>

" Add magic comment for encoding
nmap <Leader>enc :set paste<CR>ggi# encoding: UTF-8<CR><CR><ESC>:set nopaste<CR>

" Open file under the cursor in new tab
map gf :tabe! <cfile><CR>
map gF :w! /tmp/spec.results<CR><C-W>gF<CR>

" Go to mark at the colum where the mark was set
map ' `

" Mimic command line editing
map <C-K> <ESC>:!
map <C-U> <ESC>d0
imap <C-A> <ESC>0i
imap <C-E> <ESC>$a

" Move between tabs
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>

" Deactivate middle click
map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>

" Deactivate Ex-mode
map Q <Nop>

" Deactivate recording
map q <Nop>

" Deactivate keyword lookup
map K <Nop>

" After a repeat operation, go back to the first character of the previously changed or yanked text
nmap . .`[

" Movement mappings
nmap j gj
nmap k gk
nmap gm g$

" Break the undo chain on every Space
imap <Space> <Space><C-g>u

" Insert a blank line above the current line
imap <C-K> <ESC>O

" Move left and right in insert mode
imap <C-L> <ESC>la
imap <C-H> <ESC>ha

" Open file in new tab
nmap <C-O> :tabe 

nmap <silent> <C-w>. <C-w>_

" Add estimations from taskpaper @estimation context
vmap <silent> <Leader>add :write !awk 'BEGIN { total = 0 }; /@estimate/ { total += $NF }; END { print "Total", total }'<CR>
