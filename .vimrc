let mapleader = ","

syntax on
set incsearch
set showcmd
set ruler
set binary
set hlsearch
set nocompatible              " be iMproved, required
set nobackup
set nowritebackup
set tabstop=4
set shiftwidth=4
set expandtab
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu

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
Bundle 'yegappan/grep'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-haml'
Bundle 'vim-ruby/vim-ruby'
Bundle 'php.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'bufexplorer.zip'
Bundle 'SuperTab'
Bundle 'SearchComplete'
Bundle 'edkolev/tmuxline.vim'
Bundle 'colorizer'

Bundle 'elzr/vim-json'

Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_next_key='<C-k>'
let g:multi_cursor_prev_key='<C-l>'
let g:multi_cursor_skip_key='<C-i>'

Bundle 'YankRing.vim'
nnoremap <leader>y :YRShow<cr>
inoremap <leader>y <esc>:YRShow<cr>
let g:yankring_history_dir = "/tmp/"

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


" Customizations
inoremap <? <?php<space><space>?><Esc>2hi
inoremap <leader>f function(){<cr>}<esc>k$hh
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
map <F5> :set spell spelllang=en_us<CR>
" Copy to clipboard
map <C-c> "*y


" Colors
colorscheme luk3
hi MatchParen cterm=bold ctermbg=none ctermfg=red
hi Directory term=bold ctermfg=12 gui=bold guifg=Blue
set term=xterm-256color
set termencoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
