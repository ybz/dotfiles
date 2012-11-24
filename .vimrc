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
    set gfn=Monospace\ 9
    winpos 20 40
endif


if has("gui_running")
    set cursorline
    hi CursorLine guibg=#222835
    hi Normal guibg=#191919
endif
