set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme nord 
set number
set guifont=Source\ Code\ Pro:h14
bottom
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()
