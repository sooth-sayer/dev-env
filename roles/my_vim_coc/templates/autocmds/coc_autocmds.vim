" Fix floating window bg color
function! s:fix_coc_floating_bg_color()
  if g:colors_name == 'solarized'
    hi CocFloating ctermbg=0 cterm=none
  endif
endfunction

augroup CocAutocmds
  autocmd!

  " Highlight the symbol and its references when holding the cursor.
  for ft in g:coc_filetypes
    execute 'autocmd FileType ' . ft . ' autocmd CursorHold <buffer> silent call CocActionAsync("highlight")'
  endfor

  autocmd ColorScheme * call s:fix_coc_floating_bg_color()
augroup END
