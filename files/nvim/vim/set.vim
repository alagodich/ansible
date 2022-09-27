" Color
colorscheme tokyonight

" Spaces & Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces used for each step of (auto)indent
set expandtab       " tabs are spaces
set smartindent     " clever auto indenting
set nowrap          " keep long lines

" UI config
set number              " show line numbers
set relativenumber      " relative line numbers
set nu                  " show line current number normally (usually default)
set hidden              " don't unload a buffer when no longer shown in a window
set noerrorbells        " no sound
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set smartcase           " override 'ignorecase' when pattern has upper case characters
set scrolloff=8         " number of screen lines to show around the cursor
set signcolumn=yes      " one more column on the left for git or lint stuff
set spell               " spell check
set spelllang=en_us

" History
set noswapfile
set nobackup
set nowritebackup        " for coc plugin, some servers can have issues with backup
set undodir=~/.config/nvim/undodir
set undofile

" Search
set nohlsearch          " do not highlight search
set incsearch           " incremental search highlight

set updatetime=50
set backspace=indent,eol,start

syntax on
filetype plugin indent on

" Change cursor to line in insert mode
" Ps = 0 - blinking block
" Ps = 1 - blinking block (default)
" Ps = 2 - steady block
" Ps = 3 - blinking underline
" Ps = 4 - steady underline
" Ps = 5 - blinking bar
" Ps = 6 - steady bar
" SI - insert mode
" EI - normal mode
" SR - replace mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
