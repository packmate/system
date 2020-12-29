" Toggle auto-indentation of pasting with F2.
set pastetoggle=<F2>

" Use soft tabs (2 spaces).
set tabstop=2
set shiftwidth=2
set expandtab

" Show whitespace.
set list listchars=tab:»·,trail:·

" Sort within braces.
map <Leader>[ gsi{<cr>

" Sort current indentation level.
map <Leader>s gsii<cr>

" Transform single line statement into multiline.
map <Leader>} gS<cr>

" Transform multiline statement into single line.
map <Leader>{ gJ<cr>

" Re-indent inside block.
map <Leader>= =i{

" Don't fold Markdown.
let g:vim_markdown_folding_disabled=1
