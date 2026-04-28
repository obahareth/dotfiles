set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number
set guifont=Pragmata\ Pro\ Mono:h14

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'nordtheme/vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

" Initialize plugin system
call plug#end()

colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
