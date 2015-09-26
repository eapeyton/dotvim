" Formatting "
set fileformats=unix
set tabstop=4
set shiftwidth=4
set expandtab
set number
set autoindent
set autowrite

" Plugins "
syntax on
filetype on
filetype plugin on

" Colorscheme "
colorscheme koehler

" Commands "
command! Pause mks! pause.vim | mks! ~/.vim/pause.vim | wa | qa
cabbrev pause Pause
cabbrev p Pause

" Pathogen "
execute pathogen#infect()
