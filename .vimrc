let mapleader = ","

syntax on
set incsearch
set showcmd
set ruler
set binary
set hlsearch
set nocompatible              " be iMproved, required
set nowritebackup
set tabstop=4
set shiftwidth=4
set expandtab

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'Align'
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'airblade/vim-gitgutter'
Bundle 'gmarik/Vundle.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'

Bundle 'tpope/vim-fugitive'
nnoremap <leader>gg :Gstatus<cr>
nnoremap <leader>gm :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>


Bundle 'kien/ctrlp.vim'
set wildignore+=*node_modules/*

Bundle 'scrooloose/nerdtree'
map <F2> <c-w><c-w>
map <tab> <c-w>l
map <S-tab> <c-w>h
map <F3> :NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>

Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1 

Bundle 'localvimrc'
let g:local_vimrc = '.vi'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Nerd Tree
map <F5> :set spell spelllang=en_us<CR>

" Customizations
colorscheme luk3
inoremap <? <?php<space><space>?><Esc>2hi
inoremap <leader>f function(){<cr>}<esc>k$hh

" Copy to clipboard
map <C-c> "*y

