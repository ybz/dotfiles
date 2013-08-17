" color scheme
color desert

" set a mapleader for alternative keyboard realestate
let mapleader = ","

"" formatting
" shift/indentation width
set shiftwidth=4
" always use spaces, tabs are 4 spaces
set tabstop=4 expandtab
" fold based on indentation
set foldmethod=indent
set foldlevelstart=99
" don't auto continue comments
autocmd FileType * setlocal formatoptions-=ro

" hide dotfiles and *.pyc in netrw
set wildignore=*.o,*~,*.pyc,*.swp
let g:netrw_list_hide='^\.[^\.],\.pyc$'

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" remove trailing whitespace from Python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" set filetype to rest for *.ht files
au BufRead,BufNewFile *.ht set filetype=rst

" map vimsh to ,s
nmap <leader>s :source ~/.vim/opt/vimsh/vimsh.vim<CR>

" mappings of the global source-tagging system
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-\> :GtagsCursor<CR>

" bash-like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>

" When pressing <leader>cd switch to the directory of the open buffer
map <silent> <leader>cd :cd %:p:h<CR>

" Pressing <leader>ss will toggle and untoggle spell checking
map <silent> <leader>ss :setlocal spell!<CR>

" clear the search buffer when hitting return
nnoremap <leader>/ :nohlsearch<CR>/<BS>

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w
" Always show tab bar
set showtabline=2

" map <leader>y to xclip based clipboard copy
map <silent> <leader>y :<C-u>silent '<,'>w !xclip -selection clipboard<CR>

" map <leader>+/<leader>- to increase/decrease command height
map <leader>+ :set cmdheight=2<cr>
map <leader>- :set cmdheight=1<cr>

" map <leader>P to disabling pyflakes (hack)
map <leader>P :let g:pyflakes_disabled=1<cr>:PyflakesUpdate<cr>

" function to toggle QuickFix
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction
" use <leader>q to toggle the quickfix window
nnoremap <leader>q :QFix<CR>
