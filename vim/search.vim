set hlsearch  " Highlight search results.
set incsearch " Search as you type (incremental searching).

" Clear the search buffer when hitting return.
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
