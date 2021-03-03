" ADAM C++ vim syntax after extensions

syn match cxxObjects           "\<[A-Z][A-Za-z0-9_]*[a-z][A-Za-z0-9_]*\>"
"syn match cxxMetaFunction      "\<[a-z][a-z0-9]*_[a-z0-9_]*[a-z0-9]\>"

syn keyword cppType noexcept decltype

" I dislike the exception highlighting for these control statements.
syn keyword cppStatement try throw catch

"syn keyword cppStatement static_assert

syn keyword cxxConstants       nullptr

syn match cxxConstants  "\<\(C::[A-Za-z_]\|k[A-Z]\)[A-Z_a-z0-9]*\>"

syn keyword cxxExceptionNames  Exception Exceptions
syn match   cxxExceptionNames  "\<[A-Z][A-Za-z0-9_]*Exception\>"

syn keyword cxxErrorNames      Error Errors
syn match   cxxErrorNames      "\<[A-Z][A-Za-z0-9_]*Error\>"

syn match cxxCast              "\<\(const\|static\|dynamic\|reinterpret\)_cast\s*\(<\)\@="


syn cluster cxxLibraryBits contains=cxxStlKeywords,cxxStlFunctions,cxxStlService,cxxStlTypes,cxxStlConstant,cxxStlExceptionNames
syn cluster cxxIgnoreCGroupingErrors contains=NONE
syn cluster cParenGroup add=@cxxIgnoreCGroupingErrors
syn cluster cxxIgnoreCGroupingErrors add=@cxxLibraryBits
"syn cluster cxxLibrary contains=cxxStlLibrary,cxxBoostLibrary
"syn region cxxStlLibrary start="\<std\(::\)\@<=" end="\( \|<\|(\)"
"syn region cxxBoostLibrary start="\<boost\(::\)\@<=" end="\( \|<\|(\)"
"syn region cxxStlLibrary start="\<std\(::\)\@<=" end="\( \|<\|(\|;\)\@="
syn region cxxStlLibrary matchgroup=cxxLibPrefix start="\<\(std\)\z(::\)\@=" matchgroup=NONE skip="\z1" end="\>" transparent
syn region cxxBoostLibrary matchgroup=cxxLibPrefix start="\<\(boost\)\z(::\)\@=" matchgroup=NONE skip="\z1" end="\>" transparent
"syn match "::" containedin=@cxxLibrary contained
"end="::\(.*\)\@>\>"

" Broken?
"syn region cxxStlLibrary start="\(\<std\)\(::\)" end="\( \|;\|(\|<\|$\)\@="
"syn region cxxBoostLibrary start="\(\<\(bp_\)\?boost\)\(::\)\@=" end="\( \|;\|(\|<\|$\)\@="



syn keyword cxxStlKeywords containedin=cxxStlLibrary,cxxBoostLibrary string_view mutex thread contained
syn keyword cxxStlKeywords containedin=cxxStlLibrary string contained

syn keyword cxxStlKeywords containedin=cxxStlLibrary,cxxBoostLibrary function contained

syn keyword cxxStlTypes containedin=cxxStlLibrary iostream istream ostream fstream ifstream ofstream contained
syn keyword cxxStlTypes containedin=cxxStlLibrary stringstream istringstream ostringstream contained
syn keyword cxxStlTypes containedin=cxxStlLibrary iostream basic_string vector deque list pair queue priority_queue stack map multimap set multiset contained

syn keyword cxxStlTypes containedin=cxxStlLibrary,cxxBoostLibrary array contained
syn keyword cxxStlTypes containedin=cxxStlLibrary,cxxBoostLibrary unordered_map unordered_multimap contained
syn keyword cxxStlTypes containedin=cxxStlLibrary,cxxBoostLibrary unordered_set unordered_multiset contained


syn keyword cxxStlService containedin=cxxStlLibrary cout clog cerr contained
syn keyword cxxStlConstant containedin=cxxStlLibrary endl flush contained

" Smart pointers
syn keyword cxxStlFunctions containedin=cxxStlLibrary,cxxBoostLibrary make_shared make_tuple contained
syn keyword cxxStlKeywords containedin=cxxBoostLibrary scoped_ptr contained
syn keyword cxxStlKeywords containedin=cxxStlLibrary,cxxBoostLibrary shared_ptr weak_ptr contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary make_unique contained
syn keyword cxxStlKeywords containedin=cxxStlLibrary unique_ptr nullptr_t contained

" Algorithms
syn keyword cxxStlFunctions containedin=cxxStlLibrary make_pair tie addressof contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary copy copy_n copy_if copy_backward replace_copy_if replace_copy contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary find find_if find_first_of find_end contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary count count_if search search_n contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary transform mismatch equal accumulate move contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary generate generate_n fill fill_n contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary unique reverse rotate contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary unique_copy reverse_copy rotate_copy contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary sort stable_sort partition stable_partition contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary partial_sort partial_sort_copy contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary merge inplace_merge contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary set_union set_intersection contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary set_difference set_symmetric_difference contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary make_heap is_heap sort_heap push_heap pop_heap contained
syn keyword cxxStlFunctions containedin=cxxStlLibrary min max min_element max_element contained

syn keyword cxxStlFunctions containedin=cxxStlLibrary getline contained


" Metafunctions/Traits
syn keyword cxxStlTraits containedin=cxxStlLibrary is_convertible contained
syn keyword cxxStlTraits containedin=cxxStlLibrary is_constructible is_default_constructible contained

" Free floating STL functions
syn keyword cxxStlFreeFunctions back_inserter front_inserter inserter begin end


" Exceptions
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary exception contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary runtime_error contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary logic_error contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary bad_typeid contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary bad_cast contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary bad_alloc contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary bad_array_new_length contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary bad_exception contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary invalid_argument contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary domain_error contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary out_of_range contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary range_error contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary overflow_error contained
syn keyword cxxStlExceptionNames containedin=cxxStlLibrary underflow_error contained

" Some common boost-only bits I use
syn keyword cxxStlKeywords contained containedin=cxxBoostLibrary lexical_cast

" Highlight dangerous things
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

  "HiLink cxxStlLibrary cxxLibPrefix
  "HiLink cxxBoostLibrary cxxLibPrefix

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
  HiLink cxxStlFreeFunctions       cppStatement

  HiLink cxxLibPrefix      Caller

  HiLink cxxStlTraits      MetaFunction
  HiLink cxxMetaFunction      MetaFunction

  HiLink cxxStlDangerousFunction Dangerous

  delcommand HiLink
endif
