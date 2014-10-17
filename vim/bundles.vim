" Use Vundle.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Use Vundle to manage Vundle.
Bundle 'gmarik/vundle'

" Bundles:
Bundle 'danro/rename.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'jgdavey/tslime.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nanotech/jellybeans.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-endwise'
Bundle 'wavded/vim-stylus'

" Required by Vundle.
filetype plugin indent on
