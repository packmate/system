" Toggle auto-indentation of pasting with F2.
set pastetoggle=<F2>

" Use soft tabs (2 spaces).
set tabstop=2
set shiftwidth=2
set expandtab

" Show whitespace.
set list listchars=tab:»·,trail:·

" Line up first equals signs.
map <Leader>= :Tabularize /^[^=]*\zs=<cr>

" Line up first colons.
map <Leader>: :Tabularize /^[^:]*\zs:<cr>

" Sort current indentation level.
map <Leader>s gsii<cr>
