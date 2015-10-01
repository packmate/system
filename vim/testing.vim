" https://github.com/gabebw/vim-spec-runner

" Use tslime.vim:
let g:spec_runner_dispatcher = 'call Send_to_Tmux("clear\nbundle exec {command}\n")'

" Run the current spec file.
map <Leader>o <Plug>RunCurrentSpecFile

" Run the current spec file.
map <Leader>o <Plug>RunCurrentSpecFile

" Run the current line in a spec.
map <Leader>l <Plug>RunFocusedSpec

" Run the most recent spec.
map <Leader>rr <Plug>RunMostRecentSpec

" Run all specs.
map <Leader>0 :call Send_to_Tmux("clear\nbundle exec rspec features\n")<CR>

" Close current command in tmux.
nnoremap <Leader>c :call Send_to_Tmux("^C")<CR>

" Open spec from file in vertical split, or vice-versa.

function SwitchSpecContext()
  if expand('%:r') =~ 'spec'
    exec ":sp " . substitute(expand('%:r'), "spec", "coffee", "")
  else
    exec ":sp " . expand('%:r') . ".spec.coffee"
  endif
endfunction

map <Leader>x :call SwitchSpecContext()<CR>
