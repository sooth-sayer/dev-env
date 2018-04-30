" js
let g:jsx_ext_required = 0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:flow#autoclose = 1
let g:javascript_plugin_flow = 1

" ruby
let g:neomake_ruby_enabled_makers = ['rubocop']

" Vim-go
let g:go_fmt_autosave = 0

" Stm C/C++
function! StmEnv()
  if has("cscope")
    set cscopetag
    set csto=0

    if filereadable("cscope.out")
      cs add cscope.out
    elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
    endif

    function! g:CscopeGenerate(extensions)
      let find_args = "-name *.".a:extensions[0]
      for ext in a:extensions[1:]
        let find_args = find_args." -or -name *.".ext
      endfor
      execute "!find `pwd` ".find_args." > cscope.files"
      execute "!cscope -b"
      cs reset
    endfunction

    nmap <leader><leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>cg :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>cc :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>ct :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>ce :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>cf :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <leader><leader>ci :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <leader><leader>cd :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <leader><leader>cr :silent call CscopeGenerate(g:cscope_extensions)<CR>
  endif
  if executable("uctags")
    nmap <leader><leader>tr :silent !uctags -R "`pwd`"<CR>
  endif
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_filetype_blacklist = { 'c': 1, 'cpp': 1, 'h': 1, 'hpp': 1 }
  let g:ycm_server_log_level = 'debug'
endfunction
