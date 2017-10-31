nnoremap <Leader>rr :call Rerun()<CR>

function! s:Tmux(command)
  call Send_to_Tmux("clear\n")
  call Send_to_Tmux(a:command . "\n")
endfunction

" Re-run most recent terminal command.
function! Rerun()
  call s:Tmux("!-2")
endfunction
