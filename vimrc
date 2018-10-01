set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme jellybeans
set number
set guifont=Source\ Code\ Pro:h14

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Initialize plugin system
call plug#end()
