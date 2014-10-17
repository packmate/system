set hlsearch    " Highlight search results.
set ignorecase  " Don't worry about case when searching.
set incsearch   " Search as you type (incremental searching).

" Clear the search buffer when hitting return.
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
