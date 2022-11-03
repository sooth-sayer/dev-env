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
nmap <leader>q :NvimTreeToggle<CR>
nmap <leader>nf :NvimTreeFind<CR>

nnoremap <leader><leader>> :lnext<CR>
nnoremap <leader><leader>< :lprev<CR>
nnoremap <leader><leader>>> :cnext<CR>
nnoremap <leader><leader><< :cprev<CR>
nnoremap <leader><leader>1 :cfirst<CR>

" Windows selecting
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Put paste
nmap <leader>p :pu<CR>

func! FineSearchReg()
  let reg = getreg('/')
  return substitute(reg, '^\\<\(.*\)\\>$', '\1', '' )
endfunction

nmap <leader><leader>A/ :execute "Ack!" fnameescape(FineSearchReg())<CR>
nmap <leader><leader>Aw :execute "Ack!" "<C-R>=expand("<cword>")<CR>"<CR>
nmap <leader><leader>tc :tabclose<CR>
nmap <leader><leader>tn :tabnew<CR>
nmap <leader><leader>tmr :Tabmerge $ right<CR>
nmap <leader><C-t> mA:tabnew<CR>'A

nmap <leader><C-f> :Files<CR>
nmap <leader><C-b> :Lines<CR>
nmap <leader><C-p> :Ag<CR>

nmap <leader><leader>w :w<CR>
nmap <leader><leader>e :e!<CR>
let g:camelcasemotion_key = '<leader>'
