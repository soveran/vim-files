set et
set sw=4
set ts=4

call IMAP('""', "\"<++>\"", 'javascript')
call IMAP("''", "'<++>'", 'javascript')
call IMAP('()', "\(<++>\)", 'javascript')
call IMAP('[]', "\[<++>\]", 'javascript')
call IMAP('{}', "\{<++>\}", 'javascript')
call IMAP("log-", "console.log('<++>')", 'javascript')
