" Vim syntax file
" Language: Yank Pipeline Language
" Maintainer: ADAM David Alan Martin <adam@recursive.engineer>
"
" Used for Yank language, from PYP-E
" Add an autocommand to vimrc for when the `ynk` file
" type is found.

if exists("b:current_syntax")
    finish
endif

syn include @luaInYank syntax/lua.vim

let b:current_syntax="yank"


let s:cpo_save = &cpo
set cpo&vim

syn match ynkPipe "|"
syn match ynkNamedPipeline "^.\{-\}\(<-\)\@="
syn match ynkVariableAssignment "^.\{-\}\(\(:=\)\|\(?=\)\)\@="

syn match ynkPipeDef '<-'
syn match ynkCondDef '?='
syn match ynkVarDef ':='

syn match ynkCommand "\.add-module-path"
syn match ynkCommand "\.load"
syn match ynkCommand "\.add-include-path"
syn match ynkCommand "\.include"
syn match ynkCommand "\.set-queue-size"
syn match ynkCommand "\.set-delimiter"

" TODO: Deal with nested strings...  `[ [one] [two] ]` is a string of strings.  Need escape char too...
syn region ynkString start="\[" end="\]"
syn region ynkComment start="#" end="$"

syn region ynkEmbeddedLua matchgroup=ynkComment start="^ *# Begin:Lua$" end="^ *# End:Lua$" contains=@luaInYank
syn region ynkCommentInLua start="#" end="$" containedin=@luaInYank
syn clear luaParenError

syn match ynkLuaIllegalComment containedin=@luaInYank "--.*$"
syn match ynkLegalComment containedin=ynkEmbeddedLua "--.*$"


syn match ynkVariableExpand "%.\{-}%"
syn match ynkVariableExpand "%.\{-}%" contained containedin=@luaInYank
syn match ynkExpandTee "@[a-zA-Z0-9][a-zA-Z0-9]*"
syn match ynkExpandTap "+[a-zA-Z0-9][a-zA-Z0-9]*"
syn match ynkExpandWye "&[a-zA-Z0-9][a-zA-Z0-9]*"
syn match ynkExpandMerge "/[a-zA-Z0-9][a-zA-Z0-9]*"
syn match ynkExpandInline "=[a-zA-Z0-9][a-zA-Z0-9]*"
syn match ynkExpandSuperscalar "\*[a-zA-Z0-9][a-zA-Z0-9]*"

hi def link ynkPipe Operator
hi def link ynkVariableExpand PreProc
hi def link ynkCommand Type
hi def link ynkComment Comment
hi def link ynkPipeDef Object
hi def link ynkCondDef Operator
hi def link ynkVarDef Delimiter
hi def link ynkExpandTee Type
hi def link ynkExpandWye Object
hi def link ynkExpandInline Keyword
hi def link ynkLuaIllegalComment Dangerous
hi def link ynkCommentInLua Comment
hi def link luaComment Dangerous
hi def link ynkNamedPipeline Function
hi def link ynkVariableAssignment Identifier
hi def link ynkString String

