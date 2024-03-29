call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'itchyny/lightline.vim'
Plug 'chrisbra/Recover.vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set notermguicolors
set background=dark
colorscheme gruvbox 
filetype plugin on
set number
set colorcolumn=80
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set signcolumn=yes

let mapleader = ','
inoremap jj <esc>
set ignorecase

" NERDTree
" """"""""
autocmd VimEnter * NERDTree ~/dev/projects/
nnoremap <leader>n :NERDTreeToggle<CR>
" close nvim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" status bar
" """"""""""

let g:lightline = { 'colorscheme': 'powerline' }

" buffers
" """""""
set hidden
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_sort_regime = "mru"

" copy/paste
" """"""""""
vmap <C-c> "*y
imap <C-v> <C-r><C-p>*

" saving folds
" """"""""""""
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
