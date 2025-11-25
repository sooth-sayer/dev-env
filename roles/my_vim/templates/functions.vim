" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

" Relative line numbering toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

function! g:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

function! g:SaveIfChanged()
  if &modified
    write
  endif
endfunction

function! g:SyncThemeWithEnv(light_theme, dark_theme, airline_light_theme, airline_dark_theme)
  if executable('iterm_theme') == 0
    return
  endif

  let res = trim(system('iterm_theme'))

  if res ==# 'dark'
    set background=dark
    execute 'colorscheme ' . a:dark_theme
    let g:airline_theme=a:airline_dark_theme
  else
    set background=light
    execute 'colorscheme ' . a:light_theme
    let g:airline_theme=a:airline_light_theme
  endif
endfunction
