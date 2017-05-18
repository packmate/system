nnoremap <Leader>0 :call RunAllTests()<CR>
nnoremap <Leader>l :call RunCurrentLineInTest()<CR>
nnoremap <Leader>o :call RunCurrentTest()<CR>
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

function! s:GetFileNameFromSpecName()
  return substitute(expand('%:p'), ".spec.js", ".js", "")
endfunction

function! s:GetSpecNameFromFileName()
  return substitute(expand('%:p'), ".js", ".spec.js", "")
endfunction

function! SwitchSpecContext(splitter)
  if s:IsSpecFile()
    exec a:splitter . " " . s:GetFileNameFromSpecName()
  else
    exec a:splitter . " " . s:GetSpecNameFromFileName()
  endif
endfunction

" -----------------------------------------------------
" Testing Functions

function! RunAllTests()
  if s:IsFeature()
    call RunAllFeatures()
  else
    call RunAllUnitTests()
  endif
endfunction

function! RunCurrentTest()
  if s:IsFeature()
    call RunCurrentFeature()
  else
    call RunCurrentUnitTest()
  endif
endfunction

function! RunCurrentLineInTest()
  if s:IsFeature()
    call RunCurrentLineInFeature()
  else
    call RunCurrentLineInUnitTest()
  endif
endfunction

" -----------------------------------------------------
" Testing Functions

function! s:Mocha(files, options)
  call s:Tmux("node_modules/mocha/bin/mocha " . a:files . " --require ./alias --require test/world --compilers es6:babel-core/register " . a:options)
endfunction

function! s:Cucumber(files)
  call s:Tmux("./node_modules/cucumber/bin/cucumber.js " . a:files . " --require ./alias --require suite/world.js --require suite/**/*.ui.js --require suite/**/*.steps.js --fail-fast --compiler es6:babel-core/register")
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

function! s:FindClosestScenarioLine()
  let current_line_number = line('.')
  let matcher = 'Scenario'

  while current_line_number > 0
    let found = matchstr(getline(current_line_number), matcher)

    if !empty(found)
      return current_line_number
    endif

    let current_line_number -= 1
  endwhile
endfunction

function! RunAllUnitTests()
  write
  call s:Mocha("$(find . -name '*.spec.js' ! -path '*node_modules*')", '')
endfunction

function! RunAllFeatures()
  write
  call s:Cucumber("suite")
endfunction

function! RunCurrentUnitTest(...)
  let options = ''
  let unit_test_file_name = expand('%:p')

  if exists("a:1")
    let options = a:1
  endif

  write

  if !s:IsSpecFile()
    let unit_test_file_name = s:GetSpecNameFromFileName()
  endif

  call s:Mocha(unit_test_file_name, options)
endfunction

function! RunCurrentFeature()
  write
  call s:Cucumber(expand('%:p'))
endfunction

function! RunCurrentLineInUnitTest()
  write

  " Mocha cannot run specs by line numbers, but it can use regular expressions.
  call RunCurrentUnitTest('--grep "' . s:FindNameOfSpecForLine() . '"')
endfunction

function! RunCurrentLineInFeature()
  write
  call s:Cucumber(expand('%:p') . ':' . s:FindClosestScenarioLine())
endfunction

" -----------------------------------------------------
" Support Functions

function! s:IsSpecFile()
  return s:FileNameMatches('.spec.js')
endfunction

function! s:IsFeature()
  return s:FileNameMatches('\.feature')
endfunction

function! s:FileNameMatches(text)
  return expand('%') =~ a:text
endfunction
