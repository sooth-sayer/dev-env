function! s:SetupCocMapping(ft) abort
  if index(g:coc_filetypes, a:ft) < 0
    return
  endif

  " Use `<leader>dp` and `<leader>dn` to navigate diagnostics
  nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> <leader>td <Plug>(coc-type-definition)
  nmap <silent> <leader>i <Plug>(coc-implementation)
  nmap <silent> <leader>r <Plug>(coc-references)

  " Applying codeAction to the selected region.
  xmap <leader>ca <Plug>(coc-codeaction-selected)
  nmap <leader>ca <Plug>(coc-codeaction-selected)

  " Show diagnostics
  nmap <silent> <leader>dl :CocDiagnostics<CR>

  " Copy diagnostic text to selected register
  nnoremap <silent> <expr> <leader>cdy <SID>CocCopyFloatOp()

  " Use <leader>D to show documentation in preview window.
  nnoremap <silent> <leader>fd :call <SID>show_documentation('float')<CR>
  nnoremap <silent> <leader>pd :call <SID>show_documentation('preview')<CR>

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

  nmap <silent> <C-]> <Plug>(coc-definition)
  nnoremap <silent> <buffer> <C-]> <Plug>(coc-definition)
  inoremap <silent><expr> <c-n> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()
  inoremap <expr><c-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
  inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <silent><expr> <leader><TAB> coc#pum#visible() ? coc#pum#cancel() : "\<C-h>"
endfunction

" Show documentation in preview window
function! s:show_documentation(target)
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover', a:target)
  endif
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:CopyCurrentDiagnosticText(reg) abort
  echo 'Copying diagnostic text to register: ' . a:reg
  let l:wins = coc#float#get_float_win_list()
  if empty(l:wins) | let @+ = '' | return | endif
  let l:b = winbufnr(l:wins[-1])
  let l:text = join(getbufline(l:b, 1, '$'), "\n")

  call setreg(a:reg, l:text, 'V')
endfunction

function! s:CocCopyFloatOp() abort
  let l:reg = empty(v:register) ? '"' : v:register

  return ':call ' . expand('<SID>') . 'CopyCurrentDiagnosticText' . '(' . string(l:reg) . ')' . "\<CR>"
endfunction

augroup CocMapping
  autocmd!
  autocmd FileType * call s:SetupCocMapping(expand('<amatch>'))
augroup END
