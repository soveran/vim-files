set et
set sw=2
set ts=2
set fo+=t

" Ruby
call IMAP('##', '#{<++>}', 'ruby')
call IMAP('""', "\"<++>\"", 'ruby')
call IMAP("''", "'<++>'", 'ruby')
call IMAP('()', "\(<++>\)", 'ruby')
call IMAP('[]', "\[<++>\]", 'ruby')
call IMAP('{}', "\{<++>\}", 'ruby')
