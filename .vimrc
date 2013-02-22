call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
set si
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set hlsearch
set formatoptions+=r
set dictionary+=/usr/share/dict/words
"set backspace=indent,eol,start

inoremap %{ {%  %}<esc>2hi
inoremap %% {{  }}<esc>2hi
inoremap <% <%=  %><esc>2hi
inoremap { {<CR>}<Esc>ko

inoremap <buffer> <md<space> <div class="media"><cr><tab><div class="img"><cr></div><cr><div class="bd"><cr></div><esc>o<esc>O</div><esc>jdd4ko<tab>
inoremap <? <?php<space><space>?><Esc>2hi

inoremap <buffer> pm<space> get_post_meta( $post->ID, '', true );<Esc>9hi
inoremap <buffer> wpnav<space> wp_nav_menu( array(<cr><tab>'theme_location' => 'header',<cr>'container' => '',<cr>'menu_class' => 'menu'<cr>)<cr>);
inoremap <buffer> gtpt<space> get_the_post_thumbnail( $post->ID, '' );<Esc>3hi
inoremap <buffer> gpl<space> get_permalink( $post->ID );<Esc>3hi
inoremap <buffer> af<space> echo apply_filters( 'the_content', $post->post_content )<esc>a
inoremap <buffer> gp<space> $posts = get_posts( array( <cr><tab>'posts_per_page' => -1,<cr>'post_type' => '',<cr>)<cr>);<esc>kO'' => ''<esc>6hi
inoremap <buffer> qp<space> query_posts( array( <cr><tab>'posts_per_page' => -1,<cr>'post_type' => '',<cr>'orderby' => 'menu_order',<cr>'' => ''<cr>)<cr>);<cr><cr>get_template_part('loop', '');<cr><cr>wp_reset_query();<esc>8kla


au BufNewFile,BufRead *.less set filetype=less
filetype plugin on
au BufNewFile,BufReadPre *.py filetype plugin indent on
au BufNewFile,BufReadPre *.rb filetype plugin indent on
"
map <F2> <c-w><c-w>
map <F3> :NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>
map <F5> :set spell spelllang=en_us<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>v :source $MYVIMRC<cr>
nnoremap <leader>s :shell<cr>
let g:closetag_html_style=1
source ~/.vim/bundle/closetag/scripts/closetag.vim

autocmd BufReadPost * :DetectIndent
let g:detectindent_preferred_expandtab = 1

let g:AutoPairsCenterLine = 0
"set foldmethod=indent
""set foldnestmax=10
""set nofoldenable
""set foldlevel=1
