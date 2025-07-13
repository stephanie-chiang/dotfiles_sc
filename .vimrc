let &t_EI = "\1\e[2 q\2"
let &t_SI = "\e[1 q"

set encoding=utf8
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set list
set listchars=tab:»·,extends:>,trail:·
set ruler
set colorcolumn=88
set wildignorecase
set incsearch
set hls ic
set mouse=a
set hidden
set termguicolors

syntax on
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Remaps
let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <leader><CR> :so .<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-e> :copen<CR>

" Esc insert alternatives: <C-[>
imap jh <Esc>

" For highlightedyank
if !exists('##TextYankPost')
  nmap y <Plug>(highlightedyank)
  xmap y <Plug>(highlightedyank)
  omap y <Plug>(highlightedyank)
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'
call plug#end()

colorscheme nord
let g:nord_bold_vertical_line = 1 
