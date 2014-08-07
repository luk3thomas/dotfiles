call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
set t_ti= t_te=
set si
set ruler
set hlsearch
set formatoptions+=r
set binary
set dictionary+=/usr/share/dict/words
set encoding=utf-8 
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
"set backspace=indent,eol,start
hi MatchParen cterm=bold ctermbg=none ctermfg=red
hi Directory term=bold ctermfg=12 gui=bold guifg=Blue
colorscheme luk3
"colorscheme busierbee
"colorscheme vividchalk
"colorscheme railscast

"inoremap %{ {%  %}<esc>2hi " Django
inoremap %% {{  }}<esc>2hi
inoremap <% <%=  %><esc>2hi
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
inoremap {}     {}

inoremap <? <?php<space><space>?><Esc>2hi

inoremap <leader>f function(){<cr>}<esc>k$hh
inoremap <leader>qp query_posts( array( <cr><tab>'posts_per_page' => -1,<cr>'post_type' => '',<cr>'orderby' => 'menu_order',<cr>'' => ''<cr>)<cr>);<cr><cr>get_template_part('loop', '');<cr><cr>wp_reset_query();<esc>8kla


au BufNewFile,BufRead *.less set filetype=less
filetype plugin on
au BufNewFile,BufReadPre *.py filetype plugin indent on
au BufNewFile,BufReadPre *.rb filetype plugin indent on
au BufNewFile,BufReadPre *.ru set filetype=ruby
au BufNewFile,BufReadPre Gemfile set filetype=ruby
au BufNewFile,BufReadPre Guardfile set filetype=ruby
"
map <F2> <c-w><c-w>
map <tab> <c-w>l
map <S-tab> <c-w>h
map <F3> :NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>
map <F5> :set spell spelllang=en_us<CR>
map <C-c> "*y
map <leader>[ [c
map <leader>] ]c
nnoremap <leader>gg :Gstatus<cr>
nnoremap <leader>gm :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
let g:closetag_html_style=1
source ~/.vim/bundle/closetag/scripts/closetag.vim

let g:AutoPairsCenterLine = 0
let g:local_vimrc = '.vi'
let g:PreserveNoEOL = 1
"set foldmethod=indent
""set foldnestmax=10
""set nofoldenable
""set foldlevel=1
set expandtab
set wildignore+=*node_modules/*

" Vim airline
set laststatus=2
let g:airline_powerline_fonts = 1 
set t_Co=256

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8