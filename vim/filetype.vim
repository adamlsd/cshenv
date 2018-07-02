" Cynlib
" .cc and .cpp files can be C++ or Cynlib.
au BufNewFile,BufRead *.cc
	\ if exists("cynlib_syntax_for_cc")|setf cynlib|else|set filetype=cpp.cplusplus|endif
au BufNewFile,BufRead *.cpp
	\ if exists("cynlib_syntax_for_cpp")|setf cynlib|else|set filetype=cpp.cplusplus|endif

" C++
au BufNewFile,BufRead *.cxx,*.c++,*.hh,*.hxx,*.hpp,*.ipp,*.moc,*.tcc,*.inl set filetype=cpp.cplusplus
if has("fname_case")
  au BufNewFile,BufRead *.C,*.H set filetype=cpp.cplusplus
endif

function! CheckForADAM()
  if match(getline(1, min([line("$"), 200])), '^@\(interface\|end\|class\)') > -1
    if exists("g:c_syntax_for_h")
      setf objc
    else
      setf objcpp
    endif
  elseif exists("g:c_syntax_for_h")
    setf c
  elseif exists("g:ch_syntax_for_h")
    setf ch
  else
    setf cpp.cplusplus
  endif
endfunction

" .h files can be C, Ch C++, ObjC or ObjC++.
" Set c_syntax_for_h if you want C, ch_syntax_for_h if you want Ch. ObjC is
" detected automatically.
au BufNewFile,BufRead *.h			setf cpp.cplusplus "call CheckForADAM()
au BufNewFile,BufRead		*.cxx,*.cpp,*.hpp,*.cc,*.h		setf cpp.cplusplus

