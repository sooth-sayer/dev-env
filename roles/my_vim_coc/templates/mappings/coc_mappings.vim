" Use `<leader>dp` and `<leader>dn` to navigate diagnostics
nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
autocmd FileType kt nmap <silent> <C-]> <Plug>(coc-definition)
autocmd FileType kotlin nmap <silent> <C-]> <Plug>(coc-definition)
autocmd FileType swift nmap <silent> <C-]> <Plug>(coc-definition)
autocmd FileType elixir nmap <silent> <C-]> <Plug>(coc-definition)
nmap <silent> <leader>td <Plug>(coc-type-definition)
nmap <silent> <leader>i <Plug>(coc-implementation)
nmap <silent> <leader>r <Plug>(coc-references)

" Applying codeAction to the selected region.
xmap <leader>ca <Plug>(coc-codeaction-selected)
nmap <leader>ca <Plug>(coc-codeaction-selected)

" Show diagnostics
nmap <silent> <leader>dl :CocDiagnostics<CR>

" Use <leader>D to show documentation in preview window.
nnoremap <silent> <leader>fd :call <SID>show_documentation('float')<CR>
nnoremap <silent> <leader>pd :call <SID>show_documentation('preview')<CR>
function! s:show_documentation(target)
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover', a:target)
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold *.kt silent call CocActionAsync('highlight')
autocmd CursorHold *.kotlin silent call CocActionAsync('highlight')
autocmd CursorHold *.swift silent call CocActionAsync('highlight')
autocmd CursorHold *.ex silent call CocActionAsync('highlight')
autocmd CursorHold *.exs silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" Fix floating window bg color
function! s:fix_coc_floating_bg_color()
  if g:colors_name == 'solarized'
    hi CocFloating ctermbg=0 cterm=none
  endif
endfunction
autocmd ColorScheme * call s:fix_coc_floating_bg_color()
