let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1, 'h': 1, 'hpp': 1 }
let g:ycm_server_log_level = 'debug'

let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
let g:flow#autoclose = 1

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_ruby_enabled_makers = ['rubocop']

" Vim-go
let g:go_fmt_autosave = 0

if has("cscope")
  set cscopetag
  set csto = 0

  if filereadable("cscope.out")
    cs add cscope.out
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
endif
