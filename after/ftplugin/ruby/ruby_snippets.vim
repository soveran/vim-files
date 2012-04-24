set et
set sw=2
set ts=2
set fo+=t

" Ruby
call IMAP('##', '#{<++>}', 'ruby')
call IMAP('def--', "def <++>\n<++>\nend", 'ruby')
call IMAP('do--', "do |<++>|\n<++>\nend", 'ruby')
call IMAP('{--', "{ |<++>| <++> }", 'ruby')
call IMAP('deb--', "require \"ruby-debug\"; debugger", 'ruby')
call IMAP('""', "\"<++>\"", 'ruby')
call IMAP("''", "'<++>'", 'ruby')
call IMAP('()', "\(<++>\)", 'ruby')
call IMAP('[]', "\[<++>\]", 'ruby')
call IMAP('{}', "\{<++>\}", 'ruby')

" RDoc
call IMAP('nodoc--', '#:nodoc:', 'ruby')

" Erb
call IMAP('h1--', '<h1><++></h1>', 'eruby')
call IMAP('h2--', '<h2><++></h2>', 'eruby')
call IMAP('h3--', '<h3><++></h3>', 'eruby')
call IMAP('div--', '<div><++></div>', 'eruby')

call IMAP('%%', '<% <++> %>', 'ruby')
call IMAP('%$', '<%= <++> %>', 'ruby')
call IMAP('%#', '<%# <++> %>', 'ruby')

" Quick samples
call IMAP('array--', "[1, 2, 3, 4, 5]", 'ruby')
call IMAP('hash--', '{ "a" => 1, "b" => 2, "c" => 3 }', 'ruby')

" Tests
call IMAP('test--', "test do\n<++>\nend", 'ruby')
