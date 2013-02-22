colorscheme desert

set nu
set ruler
set tabstop=4
set expandtab
set shiftwidth=4
set cindent
set hlsearch
set incsearch

filetype plugin indent on   " needed for the pyflakes plugin
let g:ragtag_global_maps = 1 " needed for the ragtag plugin shortcuts

if has("gui_running")
    set gfn=Monospace\ 10
    winpos 20 40
    set lines=53
    set columns=120
    nmap <C-V> "+gP
    imap <C-V> <ESC><C-V>i
endif


if has("gui_running")
    set cursorline
    hi CursorLine guibg=#222835
    hi Normal guibg=#191919
endif
