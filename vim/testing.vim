nnoremap <Leader>0 :call RunAllTests()<CR>
nnoremap <Leader>l :call RunCurrentLineInTest()<CR>
nnoremap <Leader>o :call RunCurrentTest()<CR>
nnoremap <Leader>rr :call Rerun()<CR>

" -----------------------------------------------
" Test Runner Functions

function! RunAllTests()
  write

  if s:isRspec()
    call s:Tmux("bundle exec rspec ./ --tag ~native --tag ~manual")
  elseif s:isMocha()
    call s:Tmux("mocha ./app/**/*.spec.coffee --compilers coffee:coffee-react/register --require tests/unit-helper")
  endif
endfunction

function! RunCurrentTest()
  write

  if s:isRspec()
    call s:Tmux("bundle exec rspec " . expand('%:p'))
  elseif s:isMocha()
    call s:Tmux("mocha " . expand('%:p') . " --compilers coffee:coffee-react/register --require tests/unit-helper")
  endif
endfunction

function! RunCurrentLineInTest()
  write

  if s:isRspec()
    call s:Tmux("bundle exec rspec " . expand('%:p') . ':' . line('.'))
  elseif s:isMocha()
    call s:Tmux("mocha " . expand('%:p') . " --compilers coffee:coffee-react/register --require tests/unit-helper " . "--grep " . s:GetQuotedAbove())
  endif
endfunction

function! Rerun()
  call s:Tmux("!-2")
endfunction

" -----------------------------------------------
" Helper Functions

function! s:isMocha()
  return match(expand("%"), "spec.coffee$") != -1
endfunction

function! s:isRspec()
  return match(expand("%"), "_spec.rb$") != -1 || match(expand("%"), ".feature$") != -1
endfunction

function! s:GetQuotedAbove()
  let lnum = line('.')

  while lnum > 0
    let quoted = matchstr(getline(lnum), "'[^']*'")
    if ! empty(quoted)
      return quoted
    endif
    let lnum -= 1
  endwhile

  return ''
endfunction

function! s:Tmux(command_string)
  call Send_to_Tmux("clear\n")
  call Send_to_Tmux(a:command_string . "\n")
endfunction
