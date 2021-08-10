autocmd FileType swift nnoremap <leader><leader>build :!swift build<CR>
autocmd FileType swift nnoremap <leader><leader>run :!swift run<CR>
autocmd FileType swift nnoremap <leader><leader>test :!swift test<CR>
autocmd FileType swift nmap <silent> <C-]> <Plug>(coc-definition)
