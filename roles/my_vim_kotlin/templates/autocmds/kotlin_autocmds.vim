augroup DisableSupertabForKotlin
  autocmd!
  autocmd FileType kotlin let b:SuperTabDisabled = 1
  autocmd FileType kotlin call deoplete#disable()
augroup END
