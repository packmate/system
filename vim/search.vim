" Highlight search results.
set hlsearch

" Search as you type (incremental searching).
set incsearch

" Clear the search buffer when hitting return.
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction

call MapCR()
