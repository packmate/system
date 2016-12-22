" Set color scheme.
set background=dark
colorscheme jellybeans
let g:jellybeans_background_color_256=234

" Highlight current line.
set cursorline

" Override color scheme with default line color.
autocmd colorscheme * hi CursorLine ctermbg=235

" Colored indent guides.
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1
autocmd colorscheme * hi IndentGuidesEven ctermbg=236
autocmd colorscheme * hi IndentGuidesOdd ctermbg=235

" Highlight JS object keys.
hi def link jsObjectKey Label

" Know about EJS files.
au BufNewFile,BufRead *.ejs set filetype=html

" Don't require .jsx extension for JSX highlighting.
let g:jsx_ext_required = 0

" Colorize!
syntax on
