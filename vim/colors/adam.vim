"hi PreProc ctermfg=green
hi clear normal
"set bg&

" remove all existing highlighting and set the defaults.
"hi clear
" load the syntax highlighting defaults, if it's enabled.
"if exists("syntax_on")
  "syntax reset
"endif

"colors ron

"let colors_name = "adam"
let g:colors_name="adam"

" I stole ron's as a starting point as I think that it's my color scheme

" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2013 May 24

set background=dark
hi Normal		ctermfg=lightgrey	ctermbg=black
"hi NonText		ctermfg=yellow ctermbg=grey
hi comment		ctermfg=green
hi constant		ctermfg=magenta	cterm=bold
"hi identifier	ctermfg=cyan	cterm=NONE
hi statement	ctermfg=yellow	cterm=NONE
hi preproc		ctermfg=blue
hi type			ctermfg=green	cterm=bold
"hi special		ctermfg=yellow
hi ErrorMsg		ctermfg=White	ctermbg=Red
hi WarningMsg	ctermfg=Black	ctermbg=Green
hi Error		ctermbg=Red
hi Todo			ctermfg=Black	ctermbg=yellow
hi Cursor		ctermfg=blue
hi Directory	ctermfg=Blue


" Directory thru netrw
hi netrwHelpCmd	ctermfg=Green
"hi netrwClassify	ctermfg=cyan
hi netrwHdr		ctermfg=brown
hi netrwSrc		ctermfg=green
hi netrwExe      ctermfg=Red  cterm=bold
hi netrwSymLink		ctermfg=Cyan

"hi Cursor		guibg=#60a060 guifg=#00ff00
" ctermfg=#00ff00
hi Search		ctermbg=brown ctermfg=white cterm=bold 
"hi IncSearch	cterm=NONE ctermbg=steelblue
hi LineNr		ctermfg=yellow
hi title		ctermbg=yellow ctermfg=white
hi ShowMarksHL ctermbg=yellow ctermfg=black  cterm=bold
hi CursorLine ctermbg=yellow ctermfg=black  cterm=bold
"hi StatusLineNC	cterm=NONE ctermfg=lightblue ctermbg=darkblue
"hi StatusLine	cterm=bold	ctermfg=cyan	ctermbg=blue
hi label		ctermfg=yellow
hi operator		ctermfg=yellow
hi clear Visual
hi Visual		cterm=reverse term=reverse
hi DiffChange   ctermfg=darkgreen
"hi DiffText		ctermfg=
hi diffAdded		ctermfg=blue
hi diffRemoved   ctermfg=red
hi DiffLine   ctermfg=cyan
"hi DiffLine   ctermfg=magenta
hi Folded		ctermbg=darkgrey
hi FoldColumn	ctermbg=darkgrey ctermfg=white
hi cIf0			ctermfg=gray
"hi diffOnly	ctermfg=red cterm=bold

" End of ron above.

"set t_Co=8
hi Comment ctermfg=darkgrey cterm=bold
hi Identifier ctermfg=cyan
hi Object ctermfg=red
hi Exception ctermfg=brown
hi Error ctermbg=red ctermfg=white cterm=bold
hi Caller ctermfg=cyan
hi Target ctermfg=green ctermbg=red
hi Sync ctermfg=green ctermbg=red
hi Debug ctermfg=darkgreen
"hi Type ctermfg=lightgreen
hi CommentSpecial ctermfg=Magenta guifg=Magenta
hi SpecialComment ctermfg=Magenta guifg=Magenta
hi doxygenSpecial ctermfg=Magenta guifg=Magenta
hi doxygenCommentSpecial ctermfg=Magenta guifg=Magenta
hi doxygenBriefSpecial ctermfg=Magenta guifg=Magenta
hi doxygenBrief ctermfg=cyan
hi doxygenComment ctermfg=Blue guifg=Blue
"hi doxygenSpecialTypeOnelineDesc cterm=bold ctermfg=LightMagenta guifg=firebrick3 gui=bold
"hi doxygenParam ctermfg=cyan
"hi doxygenOther ctermfg=cyan
hi doxygenBody ctermfg=cyan
hi doxygenSpecialMultilineDesc ctermfg=cyan
hi NamedConstant ctermfg=blue

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
hi statusline ctermfg=white ctermbg=black
hi User1 ctermfg=red           ctermbg=white        term=standout
hi User2 ctermfg=darkmagenta   ctermbg=white        term=standout
hi User3 ctermfg=blue          ctermbg=white        term=standout
hi User4 ctermfg=cyan          ctermbg=white        term=standout
hi User5 ctermfg=brown         ctermbg=white        term=standout
hi User6 ctermfg=darkgreen     ctermbg=white        term=standout
hi User8 ctermfg=magenta       ctermbg=black        term=bold
hi User9 ctermfg=white         ctermbg=black        term=bold

" The vim colorscheme does everything, and some of the non-status-bar colors affect non-source bits.
" I may have to maintain everything in this combined form

" vim: sw=2
