if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

  au! FileType css,html,ruby setlocal ai ts=2 sw=2 sts=2 et

  " dc
  au! BufNewFile,BufRead *.dc setf dc

  " Go files
  au! BufNewFile,BufRead *.go setf go

  " JSON
  au! BufNewFile,BufRead *.json setf javascript

  " Markdown files
  au! BufNewFile,BufRead *.markdown,*.md setf markdown

  " Mote files
  au! BufNewFile,BufRead *.mote setf mote

  " Prolog
  au! BufNewFile,BufRead *.pro setf prolog

  " Rack
  au! BufNewFile,BufRead *.ru setf ruby

  " RC files
  au! BufNewFile,BufRead *.rc,.rcrc* setf conf

  " Ruby
  au! BufNewFile,BufRead *.rb setf ruby

  " Taskpaper files
  au! BufNewFile,BufRead *.taskpaper,*.t,todo setf taskpaper
augroup END
