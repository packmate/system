" Use fuzzy file finder.
map <Leader>f :CtrlPClearCache<cr>:CtrlP getcwd()<cr>

" Configure fuzzy file finding.
let g:ctrlp_max_depth = 500
let g:ctrlp_max_files = 0
let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = { 'dir': '.git$\|node_modules$\|public$\|build$' }
