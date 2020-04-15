set nocompatible              " be iMproved, required
set exrc
filetype off                  " required

call plug#begin('~/.vim/plugged')
source ~/.vim/custom/plugins.vim
call plug#end()

" Put your non-Plugin stuff after this line
source ~/.vim/custom/settings_before.vim
source ~/.vim/custom/functions.vim
source ~/.vim/custom/autocmds.vim
source ~/.vim/custom/mappings.vim
source ~/.vim/custom/settings_after.vim
source ~/.vim/custom/file_types.vim
