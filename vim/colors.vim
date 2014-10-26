" Set color scheme.
if $TERM_PROGRAM =~ "iTerm"
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme jellybeans
endif

" Highlight current line.
set cursorline
hi CursorLine ctermbg=233 cterm=bold
hi LineNr ctermfg=238
hi CursorLineNr ctermfg=245

" Colored indent guides.
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesEven ctermbg=233
hi IndentGuidesOdd ctermbg=234

" Colorize!
syntax on
