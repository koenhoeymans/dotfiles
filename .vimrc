set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" updated php syntax
Plugin 'StanAngeloff/php.vim'

" a filetree
Plugin 'scrooloose/nerdtree'
let g:NERDTreeWinSize=30
nmap <leader>n :NERDTreeToggle<cr>

" color scheme
Plugin 'NLKNguyen/papercolor-theme'

" vim snipmate and dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" the snippets
Plugin 'honza/vim-snippets'

" working with buffers
Plugin 'jeetsukumaran/vim-buffergator'
let g:buffergator_viewport_split_policy="B"
let g:buffergator_sort_regime="mru"
nmap <C-p> :BuffergatorMruCyclePrev<cr>

" intellisense
Plugin 'vim-php/phpctags'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'Valloric/YouCompleteMe'

" tagbar
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
nmap <leader>t :TagbarToggle<cr>

" nice statusline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

"syntax checking
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args='--extensions=php --standard=PSR2'

" commenting/uncommenting
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" colorscheme
colorscheme PaperColor

" line numbers
set number

" always show statusline
set laststatus=2

" hide buffer instead of needing to write first before opening another
set hidden

" prompt to save if there are changes
set confirm

" normal backspacing
set backspace=indent,eol,start

" keyword completion
set omnifunc=phpcomplete#CompletePHP
set completeopt+=preview

" 4 spaces for a tab
set tabstop=4

" size of an indent
set shiftwidth=4

" always use spaces
set expandtab

" syntax highlighting
syntax on

" terminal colors
set t_Co=256

" change mapleader from \ to ,
let mapleader=","

" easy escape
imap jk <esc>

" easy page up/down
nmap <c-j> <c-d>
nmap <c-k> <c-u>

" no swap/backup files between other files
set backupdir=/media/koen/dev/vim/backup,.
set directory=/media/koen/dev/vim/backup,.

" line limit indication
set colorcolumn=80


" ----
" tags
" ----

" set file where tags are stored
set tags=/media/koen/dev/vim/ctags.txt

let g:easytags_dynamic_files = 1
let g:easytags_languages = {
			\   'php': {
			\     'cmd': '/home/koen/.vim/bundle/phpctags/bin/phpctags',
			\       'args': [],
			\       'fileoutput_opt': '-f',
			\       'stdout_opt': '-f-',
			\       'recurse_flag': '-R'
			\   }
			\}
let g:easytags_events = ['BufWritePost']


" --------
" sessions
" --------

autocmd VimEnter * :source /media/koen/dev/vim/session.vim
autocmd VimEnter * :NERDTree /media/koen/dev/projects/

autocmd VimLeave * :NERDTreeClose
autocmd VimLeave * :mksession! /media/koen/dev/vim/session.vim
