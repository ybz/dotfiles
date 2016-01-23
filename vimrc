colorscheme desert

:map <F1> <Esc>
:imap <F1> <Esc>

set nu
set ruler
set tabstop=4
set expandtab
set shiftwidth=4
set cindent
set hlsearch
set incsearch
set scrolloff=2
set dir=/tmp

filetype plugin indent on   " needed for the pyflakes plugin
let g:ragtag_global_maps = 1 " needed for the ragtag plugin shortcuts

autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
