autocmd FileReadPost    * :set relativenumber
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd QuickFixCmdPost *grep* cwindow

" Autoclose autocompletion preview
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif

augroup quickfix
  autocmd!
  autocmd FileType qf setlocal wrap
augroup END

" autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java :call deoplete#enable()
autocmd FileType javascript,jsx setlocal foldmethod=syntax
autocmd FileType typescript,tsx setlocal foldmethod=syntax
autocmd FileType typescript,tsx,javascript,jsx :call deoplete#enable()

autocmd! BufWritePost *.js Neomake
autocmd! BufWritePost *.jsx Neomake
autocmd! BufWritePost *.tsx Neomake
autocmd! BufWritePost *.ts Neomake
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.swift setlocal noexpandtab tabstop=2 shiftwidth=2
autocmd! BufWritePost *.go Neomake

autocmd FileType ruby setlocal foldmethod=syntax
autocmd! BufWritePost *.rb Neomake
autocmd! BufWritePost *.rake Neomake

autocmd FileType c :call deoplete#enable()
autocmd FileType cpp :call deoplete#enable()
autocmd FileType hpp :call deoplete#enable()
autocmd FileType h :call deoplete#enable()

augroup autos
  au!
  au CursorHold * nested call SaveIfChanged()
augroup END
