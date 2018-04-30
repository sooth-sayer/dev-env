let g:neomake_stm_maker = { 'exe': 'make' }

autocmd! BufWritePost *.cpp Neomake! stm
autocmd! BufWritePost *.hpp Neomake! stm
autocmd! BufWritePost *.c Neomake! stm
autocmd! BufWritePost *.h Neomake! stm
