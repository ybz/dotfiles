" map <leader>f to display of current function definition
" side effect: register k and mark k will be changed
nmap <leader>f :call CurrentFunc()<CR>

func! CurrentFunc()
  exec "normal mk"
  " c-type code have remarkable definitions from other OO code.
  let l:extension = expand("%:e")
  if l:extension == "c"
    exec "normal ][%b%b"
  else
    exec "?private\\|public\\|protected\\|procedure\\|function\\s\\+\.*("
  endif
  "TODO: maybe you need to open your closed fold at first
  exec "normal v$\"ky`k"
  exec "echo @k"
endfunc " CurrentFunc
