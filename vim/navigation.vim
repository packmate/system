" Enable deletion of previous characters in line.
set bs=2

" Window traversal.
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Tab traversal.
nmap fr :tabnew<cr>
nmap fg :tabn<cr>
nmap fd :tabp<cr>

" Fuzzy file search.
map <Leader>f :CtrlPClearCache<cr>:CtrlP<cr>

" Fuzzy file refinement.
let g:ctrlp_custom_ignore = { 'dir': 'node_modules$\|build$\|platforms$\|plugins$\|www$\|bower_components$\|\.bundle$' }
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 500

" Save easily.
map <Leader>w :w<cr>
map <Leader>a :wa<cr>

" NERDTree for directory traversal.
map <Leader>t :NERDTreeToggle<cr>

" Show hidden files.
let NERDTreeShowHidden=1

" Close out if the last buffer is a NERDTree.
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
