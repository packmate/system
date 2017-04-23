" -----------------------------------------------------
" Basic Options

set nocompatible
let mapleader = " "

" Quickly update with new configuration.
map <Leader>` :source ~/.vimrc<cr>

" -----------------------------------------------------
" Foundations

source $HOME/.vim/bundles.vim
source $HOME/.vim/options.vim

" -----------------------------------------------------
" Customizations

source $HOME/.vim/colors.vim
source $HOME/.vim/completion.vim
source $HOME/.vim/navigation.vim
source $HOME/.vim/search.vim
source $HOME/.vim/spacing.vim
source $HOME/.vim/testing.vim
