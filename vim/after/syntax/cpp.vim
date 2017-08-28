" ADAM C++ vim syntax after extensions

if version < 600
  so <sfile>:p:h/doxygen.vim
else
  runtime! syntax/doxygen.vim
endif

syn match cxxObjects           "\<[A-Z][A-Za-z0-9_]*[a-z][A-Za-z0-9_]*\>"
syn match cxxMetaFunction      "\<[a-z][a-z0-9]*_[a-z0-9_]*[a-z0-9]\>"

syn keyword cppType noexcept decltype
syn keyword cppStatement static_assert

syn keyword cxxConstants       nullptr

syn match cxxConstants  "\<C::[A-Za-z_][A-Z_a-z0-9]*\>"
syn match cxxConstants  "\<k[A-Z][A-Za-z_][A-Z_a-z0-9]*\>"

syn keyword cxxExceptionNames  Exception Exceptions
syn match   cxxExceptionNames  "\<[A-Z][A-Za-z0-9_]*Exception\>"

syn keyword cxxErrorNames      Error Errors
syn match   cxxErrorNames      "\<[A-Z][A-Za-z0-9_]*Error\>"

syn match cxxCast              "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*\(<\)\@="


syn match cxxStlTypes          "\(\<std::\)\@<=\(string\|\(io\?\|o\)stream\)\>"
syn match cxxStlTypes          "\(\<std::\)\@<=vector\(<\)\@="
syn match cxxStlTypes "\(std::\)\@<=\(vector\|array\|deque\|list\|queue\|stack\|\(\|\(multi\|unordered\)_\)\(set\|map\)\)\(<\)\@="
syn match cxxStlPrefix          "\<std\(::\)\@="



" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cxx_syntax_inits")
  if version < 508
    let did_cxx_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cxxObjects        Object

  HiLink cxxCast           cxxStatement

  HiLink cxxStatement      Statement

  HiLink cxxExceptionNames Exception
  HiLink cxxErrorNames     Error
  HiLink cxxDebug          Debug
  HiLink cxxConstants      Constant
  HiLink cxxNamedConstant  Constant
  HiLink cxxStlTypes       Object
  HiLink cxxStlPrefix      Caller

  delcommand HiLink
endif
