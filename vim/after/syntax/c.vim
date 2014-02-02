" ADAM C vim syntax after extensions

syn match cNamedConstant  "\<[A-Z_][A-Z_0-9]*\>"
syn match cDebug          "\<DEBUG[_0-9A-Z]*\>"
syn keyword cDebug        SKIP DOIT

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cNamedConstant  NamedConstant
  HiLink cDebug          Debug

  delcommand HiLink
endif

