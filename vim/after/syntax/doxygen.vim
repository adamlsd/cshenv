syn keyword doxygenParam contained tparam nextgroup=doxygenParamName,doxygenParamDirection skipwhite



" Permit Ticked parameters

if exists("b:current_syntax")
  unlet b:current_syntax
endif

syn match blueCommentStar "^[	 ]*\*[	 ]*" contained containedin=doxygenBriefLine,doxygenFixedWidth,@doxyNestedCxx

" Make all C++ code in a doxygen block look kinda like natural C++
"syn match doxygenSpecialMultilineDesc "`"

syn cluster doxyNestedCXX contains=@cxxInDoxygen,blueCommentStar
syn cluster doxyNeedsFixedWidth contains=doxygenBody,doxygenSpecialMultilineDesc,doxygenBriefLine,doxygenBrief

syn region doxygenFixedWidth containedin=@doxyNeedsFixedWidth matchgroup=Comment start=+@code+ skip=+^\n+ keepend end=+@endcode+ contains=@doxyNestedCXX

syn region doxygenFixedWidth containedin=@doxyNeedsFixedWidth matchgroup=Comment start=+\~\~\~+ skip=+^\n+ end=+\~\~\~+ contains=@doxyNestedCXX

syn region doxygenFixedWidth containedin=@doxyNeedsFixedWidth matchgroup=Comment start=+`+ end=+`+ keepend contains=@doxyNestedCXX

"syn match doxygenFixedWidth +`.\+`+ contained


"syn keyword doxygenOther contained : nextgroup=doxygenSpecialMultilineDesc skipwhite

"syn match doxygenMagic

" +\(\<[npcbea]\>\|\<em\>\|\<ref\|\<link\>\>\|\<f\$\|[$\\&<>#]\)\@!+ nextgroup=doxygenParam,doxygenRetval,doxygenBriefWord,doxygenBold,doxygenBOther,doxygenOther,doxygenOtherTODO,doxygenOtherWARN,doxygenOtherBUG,doxygenPage,doxygenGroupDefine,doxygenCodeRegion,doxygenVerbatimRegion,doxygenDotRegion

hi link doxygenFixedWidth None
hi link blueCommentStar doxygenSpecialContinueComment
