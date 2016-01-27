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
