" Color
colorscheme gruvbox

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

syntax on
filetype plugin indent on

" Light line status bar
set laststatus=2
