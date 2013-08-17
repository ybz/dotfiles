" highlight syntax
syntax on

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax {c,vim,python} syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" dark background
set background=dark

" highlight matching braces for 5/10 second after typing
set showmatch
set mat=5 " 

" incremental search, highlight search
set incsearch
set hlsearch
