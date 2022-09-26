" Remap
let mapleader = " "

" Remaps
" Start fzf with Ctrl-p
nnoremap <silent> <C-p> :Telescope find_files<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" Nerd tree settings
let NERDTreeShowHidden=1

" Exit to file mode
nnoremap <leader>pv <cmd>Ex<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>

" Undotree
nnoremap <F5> :UndotreeToggle<CR>
