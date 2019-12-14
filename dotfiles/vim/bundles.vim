" Required by Vundle before bundles are defined.
filetype off

" Include and initialize Vundle.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Use Vundle to manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" -----------------------------------------------------
" Plugins

Plugin 'alvan/vim-closetag'
Plugin 'christoomey/vim-sort-motion'
Plugin 'danro/rename.vim'
Plugin 'easy-arrow/vim-svelte'
Plugin 'iloginow/vim-stylus'
Plugin 'jgdavey/tslime.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'

" Required by vim-sort-motion for indentation-level sorting.
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'

" -----------------------------------------------------

" Required by Vundle after bundles are defined.
call vundle#end()
filetype plugin indent on
