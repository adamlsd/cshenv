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
syn match cxxStlTypes "\(std::\)\@<=\(vector\|array\|deque\|list\|queue\|stack\|\(unordered_\)\?\(multi\)\?\(set\|map\)\)\(<\)\@="
syn match cxxStlPrefix          "\<std\(::\)\@="

syn match cxxStlKeywords "\(std::\)\@<=\(unique\|shared\|weak\)_ptr\(<\)\@="
syn match cxxStlKeywords "\(std::\)\@<=nullptr_t\>"
syn match cxxStlKeywords "\(std::\)\@<=make_\(unique\|shared\)\(<\)\@="
syn match cxxStlFunctions "\(std::\)\@<=copy\(_\(n\|backward\|if\)\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=find\(_\(if\|first_of\|end\)\?\)\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=count\(_if\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(transform\|mismatch\|equal\|accumulate\|move\)\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=search\(_n\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=fill\(_n\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=generate\(_n\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=replace\(_copy\)\?\(_if\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(unique\|reverse\|rotate\)\(_copy\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(stable_\)\?\(partition\|sort\)\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=partial_sort\(_copy\)\?\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(inplace_\)\?merge\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(inplace_\)\?merge\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=set_\(union\|intersection\|\(symmetric_\)\?difference\)\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(push\|pop\|make\|is\|sort\)_heap\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=\(min\|max\)\(_element\)\?\((\)\@="


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
  HiLink cxxStlKeywords       cppType
  HiLink cxxStlFunctions       cppStatement
  HiLink cxxStlPrefix      Caller

  delcommand HiLink
endif
