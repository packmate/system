map <Leader>x :call SwitchSpecContext()<CR>
map <Leader>j :call SwitchToTemplate()<CR>
map <Leader>y :call SwitchToStyles()<CR>

" Open spec from file in vertical split, or vice-versa.
function! SwitchSpecContext()
  if expand('%:r') =~ 'spec'
    exec ":sp " . substitute(expand('%:r'), "spec", "coffee", "")
  else
    exec ":sp " . expand('%:r') . ".spec.coffee"
  endif
endfunction

" Open template from file in vertical split, or vice-versa.
function! SwitchToTemplate()
  if expand('%:r') =~ 'spec'
    exec ":sp " . substitute(expand('%:r'), "spec", "jade", "")
  else
    exec ":sp " . expand('%:r') . ".jade"
  endif
endfunction

" Open stylesheet from file in horizontal split, or vice-versa.
function! SwitchToStyles()
  if expand('%:r') =~ 'spec'
    exec ":vsp " . substitute(expand('%:r'), "spec", "styl", "")
  else
    exec ":vsp " . expand('%:r') . ".styl"
  endif
endfunction
