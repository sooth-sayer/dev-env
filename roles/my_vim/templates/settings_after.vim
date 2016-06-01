" Terminal colors
set t_Co=256
" Toggle relative line numbering by default
set relativenumber
" Toggle number for hybrid mode
set number
" Toggle wrap lines
set wrap
" NERDTree options
let NERDTreeWinSize = 30
" AirLine
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_blacklist = { 'ruby': 1 }

let g:syntastic_always_populate_loc_list = 1

" Disable autosave
" let g:auto_save = 1
" let g:auto_save_in_insert_mode = 0

" Color scheme
" colorscheme Tomorrow-Night-Bright
set background=dark
colorscheme solarized

" Syntax highlighting
syntax on

set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set hlsearch
set laststatus=2
set backspace=2

" Vim-go
let g:go_fmt_autosave = 0
