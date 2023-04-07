if exists("b:current_syntax")
    finish
endif

let b:current_syntax="checklist"


let s:cpo_save = &cpo
set cpo&vim

syn region ckSuccess start="^ [+] " end="\(\(^$\)\|\(^ [+*-@]\)\)\@="
syn region ckFailure start="^ [-] " end="\(\(^$\)\|\(^ [+*-@]\)\)\@="
syn region ckComment start="^ [@] " end="\(\(^$\)\|\(^ [+*-@]\)\)\@="
syn region ckEvent   start="\(^ [*] \)" end="\(\(^$\)\|\(^ [+*-@]\)\)\@="

syn region ckTitle start="\(Checklist:\)\@<=" end="\(^$\)\@="

syn region ckDate start="^202" end="[0-9][:]$"

syn keyword ckSummary Positive Negative Conclusion

hi def link ckNegative Error
hi def link ckComment Comment
hi def link ckDate Constant
hi def link ckEvent Delimiter
hi def link ckSummary Function
hi def link ckSuccess Type
hi def link ckFailure Object
hi def link ckTitle Keyword
