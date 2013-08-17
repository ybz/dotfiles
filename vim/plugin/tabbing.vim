" tab navigation like firefox
nmap <Home> :tabprevious<cr>
nmap <End> :tabnext<cr>
map <Home> :tabprevious<cr>
map <End> :tabnext<cr>
imap <Home> <ESC>:tabprevious<cr>i
imap <End> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr> 

" Map <leader>e to open files in the same directory as the current file
map <leader>e :tabnew <C-R>=expand("%:h")<cr><cr>
