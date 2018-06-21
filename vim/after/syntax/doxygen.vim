syn keyword doxygenParam contained tparam nextgroup=doxygenParamName,doxygenParamDirection skipwhite

syn region doxygenBody contained start=+\(/\*[*!]\)\@<!<\|[^<]\|$+ matchgroup=doxygenEndComment end=+\*/+re=e-2,me=e-2 contains=doxygenContinueCommentWhite,doxygenTODO,doxygenSpecial,doxygenOtherTags,doxygenSmallSpecial,doxygenHyperLink,doxygenHashLink,@doxygenHtmlGroup,@Spell,doxygenFixedWidth

syn region doxygenBriefLine contained start=+\<\k+ skip=+^\s*\(\*/\@!\s*\)\=\(\<\|[@\\]\<\([npcbea]\>\|em\>\|ref\|link\>\>\|f\$\|[$\\&<>#]\)\|[^ \t\\@*]\)+ end=+^+ contains=doxygenFixedWidth skipwhite keepend matchgroup=xxx

" Permit Ticked parameters
syn match doxygenParamName contained +`[A-Za-z0-9_:]\+`+ nextgroup=doxygenSpecialMultilineDesc,doxygenSpecialSingleLineDesc

" Too Recursive
" syn al @cxxInDoxygen syntax/cpp.vim

" Make all C++ code in a doxygen block look kinda like natural C++
"syn match doxygenSpecialMultilineDesc "`"

syn match doxygenCommentPreprocHighlight " \+\* " contained

syn region doxygenFixedWidth matchgroup=Comment start=+`+ skip=+ * + end=+`+ contained contains=cxxObjects,cxxMetaFunction,cxxConstants,cppStatement,cxxExceptionNames,cxxErrorNames,cxxCast,cxxStlPrefix,cxxStlTypes,cxxStlService,cxxStlKeywords,cxxStlFunctions,cxxStlTraits,cxxStlExceptionNames,cxxStlDangerousFunction,cppAccess,cppModifier,cppType,cppExceptions,cppOperator,cppCast,cppStorageClass,cppStructure,cppBoolean,cppConstant,cppModifier,cppRawString,cppNumber,cppRawStringDelimiter,cStatement,cLabel,cRepeat,cTodo,cBadContinuation,cSpecial,cFormat,cString,cCppString,cCppSkip,cStringGroup,cCharacter,cSpecialCharacter,cBlock,cParenGroup,cParen,cCppParen,cBadBlock,cNumber,cNumbers,cNumbersCom,cOctal,cOctalZero,cFloat,cOctalError,cCommentSkip,cCommentL,cCommentString,cComment2String,cComment,cOperator,cStatement,cStructure,cStorageClass,cConstant,cBitField,cUserCont,cPreProcGroup,doxygenCommentPreprocHighlight,cDefine,cNamedConstant

"syn region doxygenFixedWidth start=+`+ skip=+ * + end=+`+ contained contains=@cxx,@cpp

syn region doxygenFixedWidth start=+\~\~\~+ skip=+ * + end=+\~\~\~+ contained contains=cxxObjects,cxxMetaFunction,cxxConstants,cppStatement,cxxExceptionNames,cxxErrorNames,cxxCast,cxxStlPrefix,cxxStlTypes,cxxStlService,cxxStlKeywords,cxxStlFunctions,cxxStlTraits,cxxStlExceptionNames,cxxStlDangerousFunction,cppAccess,cppModifier,cppType,cppExceptions,cppOperator,cppCast,cppStorageClass,cppStructure,cppBoolean,cppConstant,cppModifier,cppRawString,cppNumber,cppRawStringDelimiter,cStatement,cLabel,cRepeat,cTodo,cBadContinuation,cSpecial,cFormat,cString,cCppString,cCppSkip,cStringGroup,cCharacter,cSpecialCharacter,cBlock,cParenGroup,cParen,cCppParen,cBadBlock,cNumber,cNumbers,cNumbersCom,cOctal,cOctalZero,cFloat,cOctalError,cCommentSkip,cCommentL,cCommentString,cComment2String,cComment,cOperator,cStatement,cStructure,cStorageClass,cConstant,cBitField,cUserCont,cPreProc,cPreProcGroup,doxygenCommentPreprocHighlight,cDefine,cNamedConstant

"syn region doxygenFixedWidth start=+\~\~\~+ skip=+ * + end=+\~\~\~+ contained contains=@cxx,@cpp

"syn match doxygenFixedWidth +`.\+`+ contained

syn region doxygenSpecialMultilineDesc  start=+.\++ skip=+^\s*\(\*/\@!\s*\)\=\(\<\|[@\\]\<\([npcbea]\>\|em\>\|ref\|link\>\>\|f\$\|[$\\&<>#]\)\|[^ \t\\@*]\)+ end=+^+ contained contains=doxygenSpecialContinueCommentWhite,doxygenSmallSpecial,doxygenHyperLink,doxygenHashLink,doxygenFixedWidth,@doxygenHtmlGroup,@Spell  skipwhite keepend
syn region doxygenSpecialSingleLineDesc  start=+.\++ skip=+^\s*\(\*/\@!\s*\)\=\(\<\|[@\\]\<\([npcbea]\>\|em\>\|ref\|link\>\>\|f\$\|[$\\&<>#]\)\|[^ \t\\@*]\)+ end=+^+ contained contains=doxygenOtherTags,doxygenSpecialContinueCommentWhite,doxygenSmallSpecial,doxygenHyperLink,doxygenFixedWidth,doxygenHashLink,@doxygenHtmlGroup,doxygenTODO,@Spell  skipwhite keepend

"syn keyword doxygenOther contained : nextgroup=doxygenSpecialMultilineDesc skipwhite

"syn match doxygenMagic

" +\(\<[npcbea]\>\|\<em\>\|\<ref\|\<link\>\>\|\<f\$\|[$\\&<>#]\)\@!+ nextgroup=doxygenParam,doxygenRetval,doxygenBriefWord,doxygenBold,doxygenBOther,doxygenOther,doxygenOtherTODO,doxygenOtherWARN,doxygenOtherBUG,doxygenPage,doxygenGroupDefine,doxygenCodeRegion,doxygenVerbatimRegion,doxygenDotRegion

hi link doxygenFixedWidth None
hi link doxygenOtherTags doxygenOther
hi link doxygenSpecialSingleLineDesc doxygenSpecialMultilineDesc
hi link doxygenCommentPreprocHighlight PreProc
