" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" I'm lazy, if someone knows how to do proper syncing, they can fix this
" Rc script should be small anyway..
syn sync fromstart


" Based on the sections of rc(1)

"Top levels
"""""""""""
" Ignore valid start/ends for now
" List = top level
syn cluster rcList contains=@rcSimple,@rcArgument,@rcRedirect,@rcCompound

"Command Lines
""""""""""""""
syn cluster rcSimple   contains=rcTermin,rcContinue,rcComment

syn match   rcTermin    "[;&]"
syn match   rcContinue "\\$"
syn match   rcComment  "#.*"


"Arguments and Variables
""""""""""""""""""""""""
" Arguments should be proceeded by additional arguments, not commands, etc
syn cluster rcArgument   contains=@rcBuiltins,@rcArgument2
syn cluster rcArgument2  contains=rcWord,@rcSimple,rcNumber,rcPattern,rcQuoted,rcSubQuote,rcParens,rcVar,rcSubst,rcSub,rcJoin

syn match   rcWord       "[^#;&|^$=`'{}()<>\[\] \t\r]"               skipwhite nextgroup=@rcArgument2


syn match   rcNumber     "\<\d\+\>"                         skipwhite nextgroup=@rcArgument2

syn match   rcPattern    "[*?]"                             skipwhite nextgroup=@rcArgument2
syn region  rcPattern    matchgroup=rcOperator   start="\[" skip="\\\]" end="\]" skipwhite nextgroup=@rcArgument2 keepend contains=rcPatternBdy,
syn match   rcPatternBdy ".*"                               contained contains=rcPatternKey
syn match   rcPatternKey "\[\@<=\~\|[^\[]\zs-\ze[^\]]"      contained " ? and - in [?..] [a-c]

syn region  rcQuoted     matchgroup=rcQuoted     start="'"  skip="''" end="'"       skipwhite nextgroup=@rcArgument2 contains=rcQuote
syn match   rcQuote      "''"                               contained

syn region  rcParens     matchgroup=rcOperator   start="(" end=")" skipwhite nextgroup=@rcArgument2 contains=@rcArgument

syn match   rcVar        "\$[^ \t(]\w*"                      skipwhite nextgroup=rcVarList,@rcArgument2 contains=rcVarSpecial
syn match   rcVar        "\$[#"^]\S\w*\ze[^(]"               skipwhite nextgroup=@rcArgument2 contains=rcVarOper,rcVarSPecial
syn region  rcVarList    matchgroup=rcIdentifier start="(" end=")" skipwhite nextgroup=@rcArgument2 contains=@rcArgument contained
syn match   rcVarOper    +[#"^]+                             contained
syn match   rcVarSpecial "\v\$?<(home|ifs|path|pid|prompt|status|contained)>" contained
" Todo: Make error for $"foo(

syn region  rcSubst      matchgroup=rcInclude    start="[`<>]{" end="}" skipwhite nextgroup=@rcArgument2 contains=@rcList
syn region  rcSubst      matchgroup=rcInclude    start="`(" end=")" skipwhite nextgroup=@rcArgument2 contains=@rcArgument
syn match   rcSub        "`\<\S\+\>"
syn match   rcJoin       "\^"                               skipwhite nextgroup=@rcArgument2 contains=rcError
syn match   rcError      "\v(^|\^)\s*\^|\^\ze\s*($|#|;|\^)" skipwhite nextgroup=@rcArgument2
" Todo: Error on ^$


"I/O Redirection
""""""""""""""""
syn cluster rcRedirect  contains=rcRedir,rcHereDoc

syn match   rcRedir     "[<>]\v(\[\d+\=?\d*])?\ze([^{]|$)"  skipwhite nextgroup=@rcArgument contains=rcNumber
syn match   rcRedir     ">>"                                skipwhite nextgroup=@rcArgument

syn region  rcHereDoc   matchgroup=rcOperator    start="<<\z([^<> ]\+\)"   end="^\z1$" contains=rcVar
syn region  rcHereDoc   matchgroup=rcOperator    start="<<'\z(.*\)'" end="^\z1$"
" Todo: what's with ^'s in here docs?
" Todo: <<'>' >output or <<' 'EOF >output still doesn't get highlighted
" correct, but I guess peopel are unlikely to write such scripts.

"Compound Commands
""""""""""""""""""
" Todo: What to do when only one command is accepted, e.g. while() <command>
syn cluster rcCompound   contains=rcPipe,rcLogical,rcInverted,rcSubShell,rcIf,rcIfNot,rcElse,rcFor,rcWhile,rcSwitch,rcBrace,rcFunction,rcAssign


syn region  rcBrace      matchgroup=rcOperator    start="{"         end="}"    contains=@rcList

syn match   rcFunction   "\v<fn\s+\w+>"                                        contains=rcNote skipwhite nextgroup=rcFnBody
syn region  rcFnBody     matchgroup=rcFunction    start="{"         end="}"    contained contains=@rcList

"Built-in Commands
""""""""""""""""""
" Todo: only at the beginning of the command
syn keyword rcBuiltinKeyword skipwhite nextgroup=extend fn int long project real type var rename return select string summary

"Errors
"""""""
syn match rcError "[\]})]"
" syn match rcError "\$(.\{-})\|\${.\{-}}\|\d\+>\(&\d\+\)\?\|`[^{]\{-}`\s{.*,.*}"

" Highlighting
hi def link rcTermin         Operator
hi def link rcContinue       Operator
hi def link rcComment        Comment
"Arguments and Variables
hi def link rcNumber         Number
hi def link rcPattern        PreProc
hi def link rcQuoted         String
hi def link rcQuote          Delimiter
hi def link rcVar            Identifier
hi def link rcVarOper        SpecialChar
hi def link rcVarSpecial     Keyword
hi def link rcJoin           Special
"I/O Redirection
hi def link rcRedir          Operator
hi def link rcHereDoc        String
"Compound Commands
hi def link rcPipe           Operator
hi def link rcLogical        Operator
hi def link rcIfNot          Conditional
hi def link rcElse           Conditional
hi def link rcNote           Keyword
hi def link rcAssign         Identifier
hi def link rcPrefixes       Macro
"Built-in Commands
hi def link rcBuiltinKeyword Keyword
hi def link rcBuiltinMatch   Keyword
hi def link coreutils        Keyword
hi def link p9putils         Keyword

" Ends of regions
hi def link rcIdentifier     Identifier
hi def link rcPreProc        PreProc
hi def link rcInclude        Include
hi def link rcSub            Include
hi def link rcKeyword        Keyword
hi def link rcOperator       Operator
hi def link rcRepeat         Repeat
hi def link rcConditional    Conditional
hi def link rcFunction       Function

" Specials inside regions
hi def link rcForIn          Keyword
hi def link rcSwitchCase     Label
hi def link rcPatternKey     SpecialChar

" Errors
hi def link rcError          Error

let b:current_syntax = "bandicoot"
