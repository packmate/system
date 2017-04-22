" Use Vundle.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Use Vundle to manage Vundle.
Bundle 'gmarik/vundle'

" Bundles:
Bundle 'christoomey/vim-sort-motion'
Bundle 'danro/rename.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'jgdavey/tslime.vim'
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
Bundle 'wavded/vim-stylus'

" Required by Vundle.
filetype plugin indent on
