if exists("b:current_syntax")
  unlet b:current_syntax
endif

syn include @cxxInDoxygen syntax/cpp.vim

unlet b:current_syntax

" This enables Basic C++ support, with my extensions.
let c_no_bracket_error=1
let c_no_curly_error=1
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
endif

if exists("b:current_syntax")
  unlet b:current_syntax
endif

" This enables doxygen simultaneous with C++.
if version < 600
  so <sfile>:p:h/doxygen.vim
else
  runtime! syntax/doxygen.vim
endif


let b:current_syntax = "cplusplus"
syn sync clear
syn sync fromstart
