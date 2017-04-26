nnoremap <Leader>0 :call RunAllUnitTests()<CR>
nnoremap <Leader>l :call RunCurrentLineInUnitTest()<CR>
nnoremap <Leader>o :call RunCurrentUnitTest()<CR>
nnoremap <Leader>rr :call Rerun()<CR>
nnoremap <Leader>x :call SwitchSpecContext(':vsp')<CR>
nnoremap <Leader>z :call SwitchSpecContext(':sp')<CR>

" -----------------------------------------------------
" Basic Tmux Functions

" Send a command to Tmux.
function! s:Tmux(command)
  call Send_to_Tmux("clear\n")
  call Send_to_Tmux(a:command . "\n")
endfunction

" Re-run most recent terminal command.
function! Rerun()
  call s:Tmux("!-2")
endfunction

" -----------------------------------------------------
" Spec File Switching Functions

function! s:FileNameMatches(text)
  return expand('%') =~ a:text
endfunction

function! SwitchSpecContext(splitter)
  if s:FileNameMatches('.spec.js')
    exec a:splitter . " " . substitute(expand('%:r'), "spec", "js", "")
  elseif s:FileNameMatches('.js')
    exec a:splitter . " " . expand('%:r') . ".spec.js"
  endif
endfunction

" -----------------------------------------------------
" Unit Testing Functions

function! s:Mocha(files, options)
  call s:Tmux("node_modules/mocha/bin/mocha " . a:files . " --require test/world --compilers es6:babel-core/register " . a:options)
endfunction

function! s:FindNameOfSpecForLine()
  let current_line_number = line('.')

  while current_line_number > 0
    " For a line: it('does something', () => {}), will match 'does something'.
    let matcher = '\v(it|describe|context)\(' . "'" . '\zs([^' . "'" . ']*)'
    let found = matchstr(getline(current_line_number), matcher)

    if !empty(found)
      return found
    endif

    let current_line_number -= 1
  endwhile

  return ''
endfunction

function! RunAllUnitTests()
  write
  call s:Mocha("**/*.spec.js")
endfunction

function! RunCurrentUnitTest(...)
  let options = ''

  if exists("a:1")
    let options = a:1
  endif

  write
  call s:Mocha(expand('%:p'), options)
endfunction

function! RunCurrentLineInUnitTest()
  write

  " Mocha cannot run specs by line numbers, but it can use regular expressions.
  call RunCurrentUnitTest('--grep "' . s:FindNameOfSpecForLine() . '"')
endfunction
