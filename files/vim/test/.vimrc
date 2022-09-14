" Color
colorscheme molokai

" Spaces & Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
" Delay for file updated (default is 4000, 4s)
set updatetime=100

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on


" Start nerdtree
"autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


" Fuzzy finder
set rtp+=/usr/local/opt/fzf
map <C-p> :FZF<CR>

" Light line status bar
set laststatus=2

" Ale 
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
