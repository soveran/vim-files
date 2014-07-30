" Match trailing whitespaces except when typing at the end of a line.
syn match 	TrailingWhitespace /\s\+\%#\@<!$/
hi TrailingWhitespace    ctermfg=Red         ctermbg=Red
