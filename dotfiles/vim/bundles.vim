" Required by Vundle before bundles are defined.
filetype off

" Include and initialize Vundle.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Use Vundle to manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" -----------------------------------------------------
" Plugins

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'alvan/vim-closetag'
Plugin 'christoomey/vim-sort-motion'
Plugin 'danro/rename.vim'
Plugin 'jgdavey/tslime.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'leafOfTree/vim-svelte-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'wavded/vim-stylus'

" Required by vim-sort-motion for indentation-level sorting.
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'

" -----------------------------------------------------

" Required by Vundle after bundles are defined.
call vundle#end()
filetype plugin indent on
