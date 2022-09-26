call plug#begin()
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'preservim/nerdtree'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mbbill/undotree'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()


" Fuzzy completion for functions, variables etc, but not for files and dirs
"set wildoptions+=fuzzy

" Light line status bar
set laststatus=2
