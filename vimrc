set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set cursorline

call plug#begin("~/.vim/plugged")

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()



let g:gruvbox_cvontrast_dark = "hard"
let mapleader=" "
let NERDTreeQuitOnOpen=1
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
