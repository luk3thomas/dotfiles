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
Bundle 'paredit.vim'
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
Bundle 'digitaltoad/vim-jade'
Bundle 'vim-ruby/vim-ruby'
Bundle 'lambdatoast/elm.vim'
Bundle 'php.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'bufexplorer.zip'
Bundle 'SuperTab'
Bundle 'SearchComplete'
Bundle 'edkolev/tmuxline.vim'
Bundle 'colorizer'
Bundle 'elixir-lang/vim-elixir'
Bundle 'raichoo/purescript-vim'
Bundle 'vim-scripts/VimClojure'
Bundle 'leafgarland/typescript-vim'

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
let NERDTreeIgnore = ['\.pyc$']

Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1 

Bundle 'localvimrc'
let g:local_vimrc = '.vi'

Bundle 'dermusikman/sonicpi.vim'

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

" easymotion
Bundle 'easymotion/vim-easymotion'
nmap ; <Plug>(easymotion-s)

" transpose words like emacs
Bundle 'transpose-words'
:nmap <Leader>t <Plug>Transposewords
:imap <Leader>t <Plug>Transposewords

" Colors
colorscheme luk3
hi MatchParen cterm=bold ctermbg=none ctermfg=red
hi Directory term=bold ctermfg=12 gui=bold guifg=Blue
set term=xterm-256color
set termencoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

" You can use Ctrl-O to remap Ctrl-h/j/k/l to move the cursor while in insert
" mode without using the arrow keys:
:imap <C-h> <C-o>h
:imap <C-j> <C-o>j
:imap <C-k> <C-o>k
:imap <C-b> <C-o>b
:imap <C-w> <C-o>w

" Move text up and down, kind of hacky and only works on OSX
nnoremap ∆ :m .+1<CR>
nnoremap ˚ :m .-2<CR>
inoremap ∆ <Esc>:m .+1<CR>i
inoremap ˚ <Esc>:m .-2<CR>i
vnoremap ∆ :m '>+1<CR>gv
vnoremap ˚ :m '<-2<CR>gv

" Disable beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
