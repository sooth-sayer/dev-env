" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

" Relative line numbering toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc