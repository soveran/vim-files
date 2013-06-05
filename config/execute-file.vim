" Execute actions on the current file based on the file name (F5)
function! ExecuteFile()
  let file = expand("%")

  if stridx(file, "/tmp/sample.rb") != -1
    execute "!ruby %"
  elseif stridx(file, "_test.rb") != -1
    execute "!cutest %"
  elseif stridx(file, ".rb") != -1
    execute "!ruby -c %"
  endif
endfunction

nmap <F5> :call ExecuteFile()<CR>
imap <F5> <ESC>:w!<CR>:call ExecuteFile()<CR>
