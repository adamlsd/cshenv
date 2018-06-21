" ADAM C++ vim syntax after extensions

" This enables doxygen simultaneous with C++.
if version < 600
  so <sfile>:p:h/doxygen.vim
else
  runtime! syntax/doxygen.vim
endif

syn match cxxObjects           "\<[A-Z][A-Za-z0-9_]*[a-z][A-Za-z0-9_]*\>"
"syn match cxxMetaFunction      "\<[a-z][a-z0-9]*_[a-z0-9_]*[a-z0-9]\>"

syn keyword cppType noexcept decltype

" I dislike the exception highlighting for these control statements.
syn keyword cppStatement try throw catch

syn keyword cppStatement static_assert

syn keyword cxxConstants       nullptr

syn match cxxConstants  "\<\(C::[A-Za-z_]\|k[A-Z]\)[A-Z_a-z0-9]*\>"

syn keyword cxxExceptionNames  Exception Exceptions
syn match   cxxExceptionNames  "\<[A-Z][A-Za-z0-9_]*Exception\>"

syn keyword cxxErrorNames      Error Errors
syn match   cxxErrorNames      "\<[A-Z][A-Za-z0-9_]*Error\>"

syn match cxxCast              "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*\(<\)\@="


syn match cxxStlPrefix          "\<std\(::\)\@="


syn match cxxStlTypes          "\(\<std::\)\@<=\(\(i\|o\)\(f\|string\)\?stream\)\>"
syn match cxxStlTypes          "\(\<std::\)\@<=\(iostream\)\>"
syn match cxxStlTypes          "\(\<std::\)\@<=basic_string\(<\)\@="
syn match cxxStlTypes "\(std::\)\@<=\(vector\|array\|deque\|list\|pair\|\(priority_\)\?queue\|stack\|\(unordered_\)\?\(multi\)\?\(set\|map\)\)\(<\|;\| \)\@="

syn match cxxStlService "\(std::\)\@<=\(cout\|clog\|cerr\)\>"
syn match cxxStlConstant "\(std::\)\@<=\(endl\|flush\)\>"

syn match cxxStlKeywords "\(\<std::\)\@<=string\>"
syn match cxxStlKeywords "\(\<std::\)\@<=mutex\>"
" syn match cxxStlTypes "\(std::\)\@<=\(vector\|array\|deque\|list\|pair\|\(priority_\)\?queue\|stack\|\(unordered_\)\?\(multi\)\?\(set\|map\)\)\(<\|;\| \)\@="
syn match cxxStlKeywords "\(std::\)\@<=\(unique_ptr\)\(<\|;\| \|\>\)\@="
syn match cxxStlKeywords "\(std::\)\@<=\(shared_ptr\)\(<\|;\| \|\>\)\@="
syn match cxxStlKeywords "\(std::\)\@<=\(weak_ptr\)\(<\|;\| \|\>\)\@="
syn match cxxStlKeywords "\(std::\)\@<=nullptr_t\>"
syn match cxxStlKeywords "\(std::\)\@<=function\>"

syn match cxxStlFunctions "\(std::\)\@<=make_\(unique\|shared\)\(<\)\@="
syn match cxxStlFunctions "\(std::\)\@<=make_\(pair\|tuple\)\((\|<\)\@="

syn match cxxStlFunctions "\(std::\)\@<=addressof\((\)\@="
syn match cxxStlFunctions "\(std::\)\@<=tie\((\)\@="
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
syn match cxxStlFunctions "\(std::\)\@<=\(front_\|back_\)\?\(inserter\)\((\)\@="

syn match cxxStlTraits    "\(std::\)\@<=\(is_convertible\)\(<\)\@="
syn match cxxStlTraits    "\(std::\)\@<=\(is_\(default_\)\?constructible\)\(<\)\@="

syn match cxxStlFunctions "\<\(back_inserter\|begin\|end\)\((\)\@="

syn match cxxStlExceptionNames "\(std::\)\@<=exception\>"
syn match cxxStlExceptionNames "\(std::\)\@<=runtime_error\>"
syn match cxxStlExceptionNames "\(std::\)\@<=logic_error\>"
syn match cxxStlExceptionNames "\(std::\)\@<=bad_typeid\>"
syn match cxxStlExceptionNames "\(std::\)\@<=bad_cast\>"
syn match cxxStlExceptionNames "\(std::\)\@<=bad_alloc\>"
syn match cxxStlExceptionNames "\(std::\)\@<=bad_array_new_length\>"
syn match cxxStlExceptionNames "\(std::\)\@<=bad_exception\>"
syn match cxxStlExceptionNames "\(std::\)\@<=invalid_argument\>"
syn match cxxStlExceptionNames "\(std::\)\@<=domain_error\>"
syn match cxxStlExceptionNames "\(std::\)\@<=out_of_range\>"
syn match cxxStlExceptionNames "\(std::\)\@<=range_error\>"
syn match cxxStlExceptionNames "\(std::\)\@<=\(overflow\|underflow\)_error\>"

syn match cxxStlDangerousFunction "\(\.\)\@<=release()"


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
  HiLink cxxStlExceptionNames Exception
  HiLink cxxErrorNames     Error
  HiLink cxxDebug          Debug
  HiLink cxxConstants      Constant
  HiLink cxxNamedConstant  Constant
  HiLink cxxStlService       Service
  HiLink cxxStlConstant       Constant
  HiLink cxxStlTypes       Object
  HiLink cxxStlKeywords       cppType
  HiLink cxxStlFunctions       cppStatement
  HiLink cxxStlPrefix      Caller
  HiLink cxxStlTraits      MetaFunction
  HiLink cxxMetaFunction      MetaFunction

  HiLink cxxStlDangerousFunction Dangerous

  delcommand HiLink
endif
