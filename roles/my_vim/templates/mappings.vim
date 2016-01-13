" Leader
let mapleader=","

" Trim white spaces
nnoremap <silent> <Leader><Leader>tw :call TrimWhiteSpace()<CR>

" Toggle line numbering (Relative/Absolute)
nnoremap <silent> <Leader><Leader>lt :call NumberToggle()<cr>

" Close quickfix window
nnoremap <leader>c :ccl<CR>

" Browsing toggle
nmap <leader>z :MBEToggle<CR>
nmap <leader>q :NERDTreeToggle<CR>

" Tabs
nnoremap <ESC>1 :tabn 1<CR>
nnoremap <ESC>2 :tabn 2<CR>
nnoremap <ESC>3 :tabn 3<CR>
nnoremap <ESC>4 :tabn 4<CR>
nnoremap <ESC>5 :tabn 5<CR>
nnoremap <ESC>6 :tabn 6<CR>
nnoremap <ESC>7 :tabn 7<CR>
nnoremap <ESC>8 :tabn 8<CR>

nnoremap <leader><leader>> :lnext<CR>
nnoremap <leader><leader>< :lprev<CR>

" Windows selecting
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Ycm completer goto definition
func! SetYcmCompleterGoTo()
  if !exists("g:YcmCompleterGoToIsSet")
    let g:YcmCompleterGoToIsSet = 1
    nnoremap <leader>dd :YcmCompleter GoTo<CR>
  endif
endfunction

" Java eclim
func! SetJavaEclimMapping()
  if !exists("g:JavaEclimMappingIsSet")
    let g:JavaEclimMappingIsSet = 1
    autocmd FileType java nnoremap <buffer> <leader>dd :JavaSearchContext<CR>
  endif
endfunction

" Tern
func! SetTernMapping()
  if !exists("g:TernMappingIsSet")
    let g:TernMappingIsSet = 1
    nnoremap <leader>td :TernDef<CR>
    nnoremap <leader>tdoc :TernDoc<CR>
    nnoremap <leader>tt :TernType<CR>
    nnoremap <leader>tr :TernRefs<CR>
    nnoremap <leader>trn :TernRename<CR>
  endif
endfunction

" lldb
func! SetLLDBMapping()
  if !exists("g:LLDBMappingIsSet")
    let g:LLDBMappingIsSet = 1
    " Mac OS hack for M-s
    let g:lldb_map_Lstep = "ß"
    nnoremap <leader>ds :Lstep<CR>
    let g:lldb_map_Lbreakpoint = "<leader>db"
    " Mac OS hack for M-c
    let g:lldb_map_Lcontinue = "ç"
    nnoremap <leader>dc :Lcontinue<CR>
    " Mac OS hack for M-n
    let g:lldb_map_Lnext = "˜"
    nnoremap <leader>dn :Lnext<CR>
    let g:lldb_map_Lstart = "<leader><leader>dst"

    nnoremap <leader><leader>dsl :Lshow locals<CR>
    nnoremap <leader><leader>dsb :Lshow backtrace<CR>

    nnoremap <leader><leader>dhl :Lhide locals<CR>
    nnoremap <leader><leader>dhb :Lhide backtrace<CR>
    nnoremap <leader><leader>dhbr :Lhide breakpoints<CR>
    nnoremap <leader><leader>dht :Lhide threads<CR>
    nnoremap <leader><leader>dhd :Lhide disassembly<CR>
    nnoremap <leader><leader>dhr :Lhide registers<CR>
  endif
endfunction

