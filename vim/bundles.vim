" Required by Vundle before bundles are defined.
filetype off

" Include and initialize Vundle.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Use Vundle to manage Vundle.
Bundle 'gmarik/vundle'

" -----------------------------------------------------
" Bundles

Bundle 'alvan/vim-closetag'
Bundle 'christoomey/vim-sort-motion'
Bundle 'danro/rename.vim'
Bundle 'easy-arrow/vim-stylus'
Bundle 'easy-arrow/vim-svelte'
Bundle 'jgdavey/tslime.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'mxw/vim-jsx.git'
Bundle 'nanotech/jellybeans.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'

" Required by vim-sort-motion for indentation-level sorting.
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-indent'

" -----------------------------------------------------

" Required by Vundle after bundles are defined.
filetype plugin indent on
