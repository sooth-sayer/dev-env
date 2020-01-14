" Terminal colors
set t_Co=256

" Toggle relative line numbering by default
set relativenumber

" Toggle number for hybrid mode
set number

" Toggle wrap lines
" set nowrap
set showbreak=…

" NERDTree options
let NERDTreeWinSize = 30
" AirLine
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='murmur'

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

set autowrite

" Foldings
set foldlevelstart=99

" Mouse
set mouse=nv


" Fix file saving
:set backupcopy=yes

let g:buffergator_sort_regime = 'mru'
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 10

" Use gitignore for ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
