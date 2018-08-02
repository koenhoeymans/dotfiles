call plug#begin('~/.local/share/nvim/plugged')

" intellisense
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh', }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" file management
Plug 'scrooloose/nerdtree'

" Created session with `:Obsession /media/koen/dev/files/vim/`
" Opening nvim with `nvim -S /media/koen/dev/files/vim/Session.vim` resumes the session.
Plug 'tpope/vim-obsession'

" buffers
Plug 'jeetsukumaran/vim-buffergator'

Plug 'itchyny/lightline.vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme gruvbox
filetype plugin on
set number
set colorcolumn=80

let mapleader = ','
inoremap jj <esc>

let g:LanguageClient_serverCommands = {
    \'php': ['php', '/home/koen/.local/share/nvim/plugged/LanguageServer-php-neovim/vendor/bin/php-language-server.php']
    \}
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_signatureHelp()<CR>
let g:deoplete#enable_at_startup = 1

" NERDTree
" """"""""
autocmd VimEnter * NERDTree /media/koen/dev/projects/
nnoremap <leader>n :NERDTreeToggle<CR>
" close nvim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" buffers
" """""""
set hidden
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_sort_regime = "mru"
