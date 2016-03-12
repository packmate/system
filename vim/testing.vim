nnoremap <Leader>0 :call RunAllTests()<CR>
nnoremap <Leader>l :call RunCurrentLineInTest()<CR>
nnoremap <Leader>o :call RunCurrentTest()<CR>
nnoremap <Leader>rr :call Rerun()<CR>
nnoremap <Leader>x :call SwitchSpecContext()<CR>
nnoremap <Leader>y :call SwitchToStyles()<CR>

" -----------------------------------------------
" Test Runner Functions

function! RunAllTests()
  write

  if s:isRuby() || s:isRubySpec()
    call s:Tmux("bundle exec rspec ./ --tag ~native --tag ~manual")
  elseif s:isCoffee() || s:isCoffeeSpec()
    call s:Tmux("mocha ../**/*.spec.coffee --compilers coffee:coffee-react/register --require unit-helper --reporter dot")
  endif
endfunction

function! RunCurrentTest()
  write

  if s:isCoffeeSpec()
    call s:Tmux("mocha " . expand('%:p') . " --compilers coffee:coffee-react/register --require unit-helper")
  elseif s:isCoffee()
    call s:Tmux("mocha ../" . s:getCoffeeSpecFromCoffeeFile() . " --compilers coffee:coffee-react/register --require unit-helper" )
  elseif s:isRubySpec()
    call s:Tmux("bundle exec rspec -fd " . expand('%:p'))
  elseif s:isRuby()
    call s:Tmux("bundle exec rspec -fd " . s:getRubySpecFromRubyFile())
  endif
endfunction

function! RunCurrentLineInTest()
  write

  if s:isRubySpec()
    call s:Tmux("bundle exec rspec -fd " . expand('%:p') . ':' . line('.'))
  elseif s:isCoffeeSpec()
    call s:Tmux("mocha " . expand('%:p') . " --compilers coffee:coffee-react/register --require unit-helper " . "--grep " . s:GetQuotedAbove())
  endif
endfunction

function! Rerun()
  call s:Tmux("!-2")
endfunction

" -----------------------------------------------
" Workflow Functions

" Open spec from file in vertical split, or vice-versa.
function! SwitchSpecContext()
  if s:isCoffeeSpec()
    exec ":sp " . s:getCoffeeFileFromCoffeeSpec()
  elseif s:isCoffee()
    exec ":sp " . s:getCoffeeSpecFromCoffeeFile()
  elseif s:isRubySpec()
    exec ":sp " . s:getRubyFileFromRubySpec()
  elseif s:isRuby()
    exec ":sp " . s:getRubySpecFromRubyFile()
  endif
endfunction

" Open stylesheet from file in horizontal split, or vice-versa.
function! SwitchToStyles()
  if s:isCoffeeSpec()
    exec ":vsp " . substitute(expand('%:r'), "spec", "styl", "")
  elseif s:isCoffee()
    exec ":vsp " . expand('%:r') . ".styl"
  endif
endfunction

" -----------------------------------------------
" Helper Functions

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

function! s:isCoffeeSpec()
  return expand('%') =~ 'spec.coffee'
endfunction

function! s:getCoffeeFileFromCoffeeSpec()
  return substitute(expand('%:r'), "spec", "coffee", "")
endfunction

function! s:isCoffee()
  return expand('%') =~ '.coffee'
endfunction

function! s:getCoffeeSpecFromCoffeeFile()
  return expand('%:r') . ".spec.coffee"
endfunction

function! s:isRubySpec()
  return expand('%') =~ '_spec.rb' || expand('%') =~ '.feature'
endfunction

function! s:getRubyFileFromRubySpec()
  return substitute(substitute(expand('%'), "spec/", "app/", ""), "_spec", "", "")
endfunction

function! s:isRuby()
  return expand('%') =~ '.rb'
endfunction

function! s:getRubySpecFromRubyFile()
  return substitute(substitute(expand('%'), "app/", "spec/", ""), ".rb", "_spec.rb", "")
endfunction
