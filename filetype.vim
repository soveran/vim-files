if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

  " Bash aliases and functions
  au! BufNewFile,BufRead *.bash* setf sh

  " Bandicoot
  au! BufNewFile,BufRead *.b setf bandicoot

  " dc
  au! BufNewFile,BufRead *.dc setf dc

  " Factor files
  au! BufNewFile,BufRead *.factor setf factor

  " Go files
  au! BufNewFile,BufRead *.go setf go

  " Haml xHTML Abstraction Markup Language
  au! BufNewFile,BufRead *.haml setf haml

  " HTML with Ruby - eRuby
  au! BufNewFile,BufRead *.erb,*.rhtml setf eruby

  " Io programming language
  au! BufNewFile,BufRead *.io setf io

  " JSON
  au! BufNewFile,BufRead *.json setf javascript

  " Markdown files
  au! BufNewFile,BufRead *.markdown,*.md setf markdown

  " Mote files
  au! BufNewFile,BufRead *.mote setf mote

  " Mouse files
  au! BufNewFile,BufRead *.mo setf mouse

  " Prolog
  au! BufNewFile,BufRead *.pro setf prolog

  " Pure
  au! BufNewFile,BufRead *.pure setf pure

  " Rack
  au! BufNewFile,BufRead *.ru setf ruby

  " Raven
  au! BufNewFile,BufRead *.rv setf raven

  " RC files
  au! BufNewFile,BufRead *.rc,.rcrc,.rc_profile setf rc

  " Ruby files
  au! BufNewFile,BufRead *.thor,Thorfile,Rakefile,Vagrantfile setf ruby

  " Rust files
  au! BufNewFile,BufRead *.rs setf rust

  " Sass files
  au! BufNewFile,BufRead *.sass setf sass

  " Shiny files
  au! BufNewFile,BufRead *.s setf shiny

  " Taskpaper files
  au! BufNewFile,BufRead *.taskpaper,*.t,todo setf taskpaper

  " AsciiDoc
  au! BufNewFile,BufRead *.txt setf asciidoc

	" States
  au! BufNewFile,BufRead *.st setf states
augroup END
