call plug#begin('~/.local/share/nvim/plugged')

" language help
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh', }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'morhetz/gruvbox'

" file management
Plug 'scrooloose/nerdtree'

" Created session with `:Obsession /media/koen/dev/files/vim/`
" Opening nvim with `nvim -S /media/koen/dev/files/vim/Session.vim` resumes the session.
Plug 'tpope/vim-obsession'

" buffers
Plug 'jeetsukumaran/vim-buffergator'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme gruvbox
filetype plugin on
set number
set colorcolumn=80
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set signcolumn=yes

let mapleader = ','
inoremap jj <esc>

" intellisense
" """"""""""""
let g:LanguageClient_serverCommands = {
    \'php': ['php', '/home/koen/.local/share/nvim/plugged/LanguageServer-php-neovim/vendor/bin/php-language-server.php']
    \}
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_signatureHelp()<CR>
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
set noshowmode
let g:neosnippet#enable_completed_snippet = 1
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>"
    \ : (<SID>is_whitespace() ? "\<Tab>" : deoplete#mappings#manual_complete())
inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <CR> (pumvisible() ? "\<c-y>" : "\<CR>")
imap <C-k>     <Plug>(neosnippet_expand_or_jump)

" NERDTree
" """"""""
autocmd VimEnter * NERDTree /media/koen/storage/Dropbox/dev/projects/
nnoremap <leader>n :NERDTreeToggle<CR>
" close nvim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

" buffers
" """""""
set hidden
let g:buffergator_viewport_split_policy = "T"
let g:buffergator_sort_regime = "mru"
