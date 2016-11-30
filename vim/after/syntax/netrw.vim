" I extend the netrw scripts from vim to process source files in nice colors.

if exists("g:netrw_special_syntax") && netrw_special_syntax
 syn match netrwSrc		"\(\S\+ \)*\S\+\.\%(c\|cpp\|cxx\|cc\)\>"			contains=netrwTreeBar,@NoSpell
endif
