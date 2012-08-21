"VIMIDE vimrc basic settings
"--------start---------
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set guifont=Courier:h14
set linespace=4
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set noswapfile
set backspace=start,indent,eol
set numberwidth=4
set autoindent
set smartindent
set nobackup
set writebackup
set hlsearch 
set incsearch
set autoread
set nu
set go=
set ruler
set bg=dark

filetype plugin on
filetype indent on
syntax on

call pathogen#runtime_append_all_bundles()


" if has("gui_running")
map <C-t> :CommandT<cr>
map <C-b> :CommandTBuffer<cr>
map <C-r> :CommandTFlush<cr>


imap <C-t> <esc> <cr>

set wildignore+=.git,.svn,*.o,*.ob­j,tmp,*swp,*.log
let g:CommandTMaxFiles = 25000
" else
"     map <C-t> :NERDTreeToggle<cr>
"     imap <C-t> <esc>:NERDTreeToggle<cr>
" endif 

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

if has("gui_running")
    colorscheme desert 
endif

au! BufRead,BufNewFile *.js set syntax=jquery
au! BufRead,BufNewFile *.less set syntax=css
au! BufRead,BufNewFile *.tpl set syntax=html
au! BufRead,BufNewFile *.sah set syntax=javascript

au! BufRead,BufNewFile *.js set filetype=javascript
au! BufRead,BufNewFile *.less set filetype=css
au! BufRead,BufNewFile *.tpl set filetype=html
au! BufNewFile,BufRead *.t2t set ft=txt2tags
"au! BufRead,BufNewFile *.proto set filetype proto
au! BufRead,BufNewFile *.sah set filetype=javascript

autocmd! bufwritepost .vimrc source ~/.vimrc

"--------vim-javascript---------
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
