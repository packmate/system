" Save easily.
map <Leader>w :w<cr>
map <Leader>a :wa<cr>

" Begin surrounding current word using surround.vim.
" (follow with [, {, etc.)}])
map <Leader>{ ysiw

" Surround from current cursor. Useful when wrapping
" existing methods, i.e. `echo('hi')` to `console.log(echo('hi'))`
map <Leader>0 lys$)
