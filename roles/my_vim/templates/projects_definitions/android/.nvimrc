" Run
nnoremap <leader><leader>run :!~/stuff/dev-env/android_utils/scripts/run.sh ./ "com.restream.viewrightplayer/com.restream.viewrightplayer.demo.MainActivity"<CR>

let g:neomake_gradle_maker = {
  \ 'exe': './gradlew',
  \ 'args': ['assembleDebug', '-q'],
  \ 'errorformat': '%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#',
  \ }

let g:neomake_enabled_makers = ['gradle']

let g:neomake_gradle_maker_remove_invalid_entries = 1

autocmd! BufWritePost *.java Neomake!
autocmd! BufWritePost *.xml Neomake!
