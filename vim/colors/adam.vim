"hi PreProc ctermfg=green
hi clear normal
"set bg&

" remove all existing highlighting and set the defaults.
hi clear
" load the syntax highlighting defaults, if it's enabled.
set background=dark
if exists("syntax_on")
  syntax reset
endif

"colors ron

"let colors_name = "adam"
let g:colors_name="adam"

hi Normal		ctermfg=lightgrey	start=<esc>[0m stop=<esc>[0m
"hi NonText		ctermfg=yellow ctermbg=grey
"hi comment		ctermfg=green
hi constant		ctermfg=magenta term=none start=<esc>[95m stop=<esc>[0m
"hi constant		ctermfg=magenta	cterm=bold
"hi identifier	ctermfg=cyan	cterm=NONE
hi statement	ctermfg=yellow	cterm=NONE term=none start=<esc>[93m stop=<esc>[0m
hi preproc		ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m
hi type			ctermfg=green term=none start=<esc>[92m stop=<esc>[0m
"hi type			ctermfg=green	cterm=bold
"hi special		ctermfg=yellow
hi Special      ctermfg=Blue guifg=Blue term=none start=<esc>[94m stop=<esc>[0m
hi ErrorMsg		ctermfg=White	ctermbg=Red term=none start=<esc>[97;101m stop=<esc>[0m
hi WarningMsg	ctermfg=Black	ctermbg=Green
"hi Error		ctermbg=Red
" Highlight for TODO XXX FIXME, etc.
hi Todo			ctermfg=Black	ctermbg=yellow term=none start=<esc>[103;90m stop=<esc>[0m

hi Cursor		ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m
hi Directory	ctermfg=Blue term=none start=<esc>[94m stop=<esc>[0m

hi ModeMsg      ctermfg=white cterm=bold term=bold start=<esc>[97m stop=<esc>[0m

hi Literals     ctermfg=lightmagenta cterm=italic


" Directory thru netrw
hi netrwHelpCmd	ctermfg=Green
"hi netrwClassify	ctermfg=cyan
hi netrwHdr		ctermfg=brown
hi netrwSrc		ctermfg=green
hi netrwExe      ctermfg=Red  cterm=bold
hi netrwSymLink ctermfg=Cyan



hi TestCall ctermfg=78 cterm=italic

"hi Cursor		guibg=#60a060 guifg=#00ff00
" ctermfg=#00ff00
hi Search		ctermbg=brown ctermfg=white cterm=bold term=bold start=<esc>[48;5;130;97m stop=<esc>[0m
"hi IncSearch	cterm=NONE ctermbg=steelblue
hi LineNr		ctermfg=yellow term=none start=<esc>[93m stop=<esc>[0m
hi title		ctermbg=yellow ctermfg=darkgreen term=none start=<esc>[103;32m stop=<esc>[0m
hi ShowMarksHL ctermbg=yellow ctermfg=black  cterm=bold
hi CursorLine ctermbg=yellow ctermfg=black  cterm=bold
"hi StatusLineNC	cterm=NONE ctermfg=lightblue ctermbg=darkblue
"hi StatusLine	cterm=bold	ctermfg=cyan	ctermbg=blue
hi label		ctermfg=yellow term=none start=<esc>[93m stop=<esc>[0m
hi operator		ctermfg=yellow term=none start=<esc>[93m stop=<esc>[0m
hi clear Visual
hi Visual		cterm=reverse term=reverse
hi DiffChange   ctermfg=darkgreen term=none start=<esc>[32m stop=<esc>[0m
hi DiffFile		ctermfg=green term=none start=<esc>[92m stop=<esc>[0m
hi DiffSubname    ctermfg=cyan term=none start=<esc>[96m stop=<esc>[0m
hi DiffIndexLine    ctermfg=cyan term=none start=<esc>[96m stop=<esc>[0m
hi diffAdded		ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m
hi diffRemoved   ctermfg=red term=none start=<esc>[91m stop=<esc>[0m
hi DiffLine   ctermfg=yellow term=none start=<esc>[93m stop=<esc>[0m
"hi DiffLine   ctermfg=magenta
hi Folded		ctermbg=darkgrey
hi FoldColumn	ctermbg=darkgrey ctermfg=white
hi cIf0			ctermfg=gray term=none start=<esc>[38;2;100;100;100m stop=<esc>[0m
"hi diffOnly	ctermfg=red cterm=bold

" End of ron above.

"set t_Co=8
"hi StatusUnwrap ctermfg=236 ctermbg=none cterm=none
"hi StatusUnwrap ctermfg=brown ctermbg=none cterm=none
"hi StatusUnwrap ctermfg=236 ctermbg=none cterm=none
hi StatusUnwrap ctermfg=58 ctermbg=none cterm=none
hi MetaFunction ctermfg=darkcyan start=<esc>[36m stop=<esc>[0m
hi Comment ctermfg=darkgrey cterm=none term=NONE term=none start=<esc>[38;5;242m stop=<esc>[0m
hi Identifier ctermfg=cyan cterm=none term=none start=<esc>[96m stop=<esc>[0m
hi Object ctermfg=red term=none start=<esc>[91m stop=<esc>[0m


hi Throwable ctermfg=cyan term=underline

hi Condition    ctermfg=darkgreen cterm=italic
hi Notification ctermfg=yellow cterm=italic
hi Exception        ctermfg=brown cterm=italic
hi Critical     ctermfg=202 cterm=italic,underline
hi Violation    ctermbg=red ctermfg=white

hi Nothrow ctermfg=215  term=none start=<esc>[38;5;130m stop=<esc>[0m
hi Nothrow ctermfg=58  term=none start=<esc>[38;5;130m stop=<esc>[0m
hi Service ctermfg=green start=<esc>[32m stop=<esc>[0m
hi Caller ctermfg=cyan term=NONE start=<esc>[96m stop=<esc>[0m
hi Target ctermfg=green ctermbg=red
hi Sync ctermfg=green ctermbg=red
hi Debug ctermfg=darkgreen
hi Dangerous term=none start=<esc>[1;7;97;101;3;4;6m stop=<esc>[0m ctermfg=white ctermbg=red cterm=reverse,bold,underline,italic
"hi Dangerous ctermfg=red ctermbg=white cterm=bold,underline,italic start=<esc>[31;47;1;5m stop=<esc>[0m
"hi Type ctermfg=lightgreen




hi CommentSpecial ctermfg=Magenta guifg=Magenta term=none start=<esc>[35m stop=<esc>[0m
hi SpecialComment ctermfg=Magenta guifg=Magenta term=none start=<esc>[35m stop=<esc>[0m

" Seems to doc "@" in comments
hi doxygenSpecial ctermfg=Magenta guifg=Magenta term=none start=<esc>[35m stop=<esc>[0m


hi doxygenCommentSpecial ctermfg=Magenta guifg=Magenta term=none start=<esc>[35m stop=<esc>[0m
hi doxygenBriefSpecial ctermfg=Magenta guifg=Magenta term=none start=<esc>[35m stop=<esc>[0m

" Brief text
hi doxygenBrief ctermfg=cyan cterm=bold,underline term=none start=<esc>[36;1;4m stop=<esc>[0m

hi doxygenComment ctermfg=Blue guifg=Blue term=none start=<esc>[94m stop=<esc>[0m
"hi doxygenSpecialTypeOnelineDesc cterm=bold ctermfg=LightMagenta guifg=firebrick3 gui=bold
hi doxygenParam ctermfg=Magenta cterm=bold term=none start=<esc>[95m stop=<esc>[0m

hi doxygenParamName ctermfg=darkblue cterm=bold,underline term=none start=<esc>[34;1;4m stop=<esc>[0m

"@note, @return, etc            TODO: split these out, probably by forking doxygen.vim
hi doxygenOther ctermfg=darkyellow cterm=underline term=none start=<esc>[33;4m stop=<esc>[0m

"non-brief body
hi doxygenBody ctermfg=lightcyan term=none start=<esc>[96m stop=<esc>[0m


hi doxygenSpecialMultilineDesc ctermfg=cyan term=none start=<esc>[36m stop=<esc>[0m



hi NamedConstant ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m

"hi Example ctermfg=white
"hi DocNotes ctermfg=yellow
"hi Description ctermfg=yellow

" Vim status line colors
" hi User0 ctermfg=black ctermbg=white        cterm=bold
" hi User1 ctermfg=red ctermbg=white          cterm=bold
" hi User2 ctermfg=darkmagenta ctermbg=white  cterm=bold
" hi User3 ctermfg=blue ctermbg=white         cterm=bold
" hi User4 ctermfg=cyan ctermbg=white         cterm=bold
" hi User5 ctermfg=darkyellow ctermbg=white   cterm=bold
" hi User6 ctermfg=darkgreen ctermbg=white    cterm=bold
" hi User8 ctermfg=magenta ctermbg=black      cterm=bold
" hi User9 ctermfg=white ctermbg=black        cterm=bold

" This is from vimrc.colors -- I may reintegrate it back together.
"hi User0 ctermfg=green         ctermbg=green        term=bold
hi statusline ctermfg=white ctermbg=black cterm=reverse term=reverse start=<esc>[97;40m stop=<esc>[0m
hi statuslinenc ctermfg=grey ctermbg=grey cterm=reverse term=reverse start=<esc>[37;47m stop=<esc>[0m
hi User1 ctermfg=red           ctermbg=white        term=standout term=none start=<esc>[91;107m stop=<esc>[0m
hi User2 ctermfg=darkmagenta   ctermbg=white        term=standout term=none start=<esc>[35;107m stop=<esc>[0m
hi User3 ctermfg=blue          ctermbg=white        term=standout term=none start=<esc>[34;107m stop=<esc>[0m
hi User4 ctermfg=darkcyan          ctermbg=white        term=standout term=none start=<esc>[36;107m stop=<esc>[0m
hi User5 ctermfg=brown         ctermbg=white        term=standout term=none start=<esc>[33;107m stop=<esc>[0m
hi User6 ctermfg=darkgreen     ctermbg=white        term=standout term=none start=<esc>[32;107m stop=<esc>[0m
hi User8 ctermfg=magenta       ctermbg=black        term=bold term=none start=<esc>[95;40m stop=<esc>[0m
hi User9 ctermfg=white         ctermbg=black        term=bold term=none start=<esc>[97;40m stop=<esc>[0m

hi NonText ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m
hi EndOfBuffer ctermfg=blue term=none start=<esc>[94m stop=<esc>[0m
hi MoreMsg ctermfg=2 gui=bold guifg=SeaGreen term=none start=<esc>[92m stop=<esc>[0m
hi Question ctermfg=2 gui=bold guifg=SeaGreen term=none start=<esc>[92m stop=<esc>[0m

hi TabLine     term=underline cterm=underline ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey start=<esc>[48;5;242;38;5;15m stop=<esc>[0m
hi TabLineSel  term=bold      cterm=bold      gui=bold
hi TabLineFill term=reverse   cterm=reverse   gui=reverse

hi WildMenu ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow term=none start=<esc>[48;5;11;30m stop=<esc>[0m

" The vim colorscheme does everything, and some of the non-status-bar colors affect non-source bits.
" I may have to maintain everything in this combined form

" vim: sw=2
