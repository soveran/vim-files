set t_Co=256
" highlight Normal ctermfg=White ctermbg=Black
" highlight Character             ctermfg=Red         ctermbg=Blue
" highlight Boolean               ctermfg=Red         ctermbg=Blue
highlight ExtraWhitespace       ctermfg=Red         ctermbg=Red
highlight Error                 ctermfg=Red         ctermbg=Black
highlight Number                ctermfg=White       ctermbg=Black
highlight LineNr                ctermfg=DarkGray    ctermbg=Black
highlight Folded                ctermfg=DarkGray    ctermbg=Black
highlight Keyword               ctermfg=202         ctermbg=Black
highlight Define                ctermfg=202         ctermbg=Black
highlight Comment               ctermfg=DarkGray    ctermbg=Black
highlight Type                  ctermfg=White       ctermbg=Black
highlight Identifier            ctermfg=White       ctermbg=Black
highlight Constant              ctermfg=228         ctermbg=Black
highlight Function              ctermfg=DarkRed     ctermbg=Black
highlight Include               ctermfg=DarkRed     ctermbg=Black
highlight Statement             ctermfg=DarkRed     ctermbg=Black
highlight String                ctermfg=DarkGreen   ctermbg=Black
highlight Search                                    ctermbg=White
highlight Todo                  ctermfg=Yellow      ctermbg=Black
highlight Title                 ctermfg=White       ctermbg=NONE
highlight ModeMsg               ctermfg=White       ctermbg=DarkGreen
highlight NonText               ctermfg=DarkGray    ctermbg=Black
highlight Visual                ctermfg=Gray        ctermbg=DarkRed
highlight TabLine               ctermfg=Black       ctermbg=Gray        cterm=bold
highlight TabLineFill           ctermfg=Black       ctermbg=DarkGray    cterm=bold
highlight TabLineSel            ctermfg=Black       ctermbg=Red         cterm=NONE
highlight StatusLine            ctermfg=DarkGray    ctermbg=White
highlight StatusLineNC          ctermfg=DarkGray    ctermbg=Black
highlight CursorLine                                ctermbg=NONE        cterm=NONE
highlight MatchParen            ctermfg=Black       ctermbg=White
highlight PreProc               ctermfg=DarkYellow  ctermbg=Black
highlight Special               ctermfg=DarkYellow  ctermbg=Black
highlight Delimiter             ctermfg=Gray        ctermbg=Black
highlight VertSplit             ctermfg=DarkGray    ctermbg=DarkGray
highlight FoldColumn            ctermfg=NONE        ctermbg=NONE


" Ruby specific.
highlight rubySymbol            ctermfg=66
highlight rubyClassVariable     ctermfg=66
highlight rubyStringDelimiter   ctermfg=DarkGreen
highlight rubyInstanceVariable  ctermfg=66
highlight rubyInterpolation     ctermfg=White
highlight rubyPseudoVariable    ctermfg=66

" Match trailing whitespaces except when typing at the end of a line.
match ExtraWhitespace /\s\+\%#\@<!$/
