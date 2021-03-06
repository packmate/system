" Enable deletion of previous characters in line.
set bs=2

" Default splitting behavior.
set splitright
set splitbelow

" Window traversal.
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Tab traversal.
nmap fr :tabnew<cr>
nmap fe :-1tabnew<cr>
nmap fg :tabn<cr>
nmap fd :tabp<cr>

" Use NERDTree for filesystem navigation.
map <Leader>t :NERDTreeToggle<cr>

" Show hidden files.
let NERDTreeShowHidden=1

" Ignore some files in filesystem navigation.
let NERDTreeIgnore=[ '\.git$', '\.vercel$', 'build$', 'node_modules$', 'package-lock\.json$' ]

" Close NERDTree if it is the only open window.
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
