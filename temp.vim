all plug#begin()
Plug 'catppuccin/vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'sheerun/vim-polyglot'
call plug#end()
colorscheme catppuccin_mocha
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeMouseMode=3

