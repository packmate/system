" Set color scheme.
set background=dark
colorscheme jellybeans
let g:jellybeans_background_color_256=234

" Highlight current line.
set cursorline

" Override color scheme with default line color.
autocmd colorscheme * hi CursorLine ctermbg=237

" Colored indent guides.
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1

autocmd colorscheme * hi IndentGuidesEven ctermbg=237
autocmd colorscheme * hi IndentGuidesOdd ctermbg=236

" Don't require .jsx extension for JSX highlighting.
let g:jsx_ext_required = 0

" Custom filetypes.
au BufNewFile,BufRead *.sv set filetype=svelte

" Colorize!
syntax on
