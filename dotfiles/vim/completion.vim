" Enable HTML Tag completion.
let g:closetag_filenames = '*.html, *.js'
let g:closetag_xhtml_filenames = '*.html, *.js'

" Tab completion options:
" - On first tab, show a list of possibilities.
" - On second tab, autocomplete as much as possible.
" - On third tab, complete the next full match.
set wildmode=list:longest,list:full

" Where to look for auto-completion possibilities.
" - . = The current buffer.
" - w = Buffers in other windows.
set complete=.,w

" Indent if we're at the beginning of a line. Otherwise,
" do autocompletion.
function! TabOrAutocomplete()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <tab> <c-r>=TabOrAutocomplete()<cr>
