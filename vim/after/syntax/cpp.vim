
if version < 600
  "so <sfile>:p:h/c.vim
  "so <sfile>:p:h/cpp.vim
  so <sfile>:p:h/doxygen.vim
else
  "runtime! syntax/c.vim
  "runtime! syntax/cpp.vim
  runtime! syntax/doxygen.vim
  "unlet b:current_syntax
endif

syn match cxxObjects           "\<[A-Z][A-Za-z0-9_]*[a-z][A-Za-z0-9_]*\>"
syn match cxxMetaFunction      "\<[a-z][a-z0-9]*_[a-z0-9_]*[a-z0-9]\>"


syn keyword cxxExceptionNames  Exception Exceptions
syn match   cxxExceptionNames  "\<[A-Z][A-Za-z0-9_]*Exception\>"

syn keyword cxxErrorNames      Error Errors
syn match   cxxErrorNames      "\<[A-Z][A-Za-z0-9_]*Error\>"

syn match cxxCast              "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match cxxCast              "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"


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

  delcommand HiLink
endif
