au! FileType c          let b:comment = '//'
au! FileType go         let b:comment = '//'
au! FileType haml       let b:comment = '-# '
au! FileType lua        let b:comment = '-- '
au! FileType make       let b:comment = '#'
au! FileType rc         let b:comment = '#'
au! FileType ruby       let b:comment = '#'
au! FileType rust       let b:comment = '//'
au! FileType sass       let b:comment = '//'
au! FileType scheme     let b:comment = ';'
au! FileType javascript let b:comment = '//'
au! FileType vim        let b:comment = '"'
au! FileType prolog     let b:comment = '%'
au! FileType dc         let b:comment = '#'
au! FileType sh         let b:comment = '#'
au! FileType bandicoot  let b:comment = '#'

function! CommentAndUncomment() range
  if !exists("b:comment")
    echo "Don't know how to comment for file type '" . &filetype . "' (variable b:comment not set)"
    return
  end

  let s:line = getline(a:firstline)
  let s:comment = substitute(b:comment, '\/', '\\\/', 'g')

  if match(s:line, '^\s*' . s:comment . ' ') != -1
    " Uncomment
    execute a:firstline . ',' . a:lastline . 's/^\(\s*\)' . s:comment . ' /\1'
  else
    " Comment
    let spaces = matchlist(s:line, '^\(\s*\)')

    if len(spaces) > 1
      execute a:firstline . ',' . a:lastline . 's/^' . spaces[1] . '/' . spaces[1] . s:comment . ' '
    end
  end
endfunction

map # :call CommentAndUncomment()<CR>
