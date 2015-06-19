set nocompatible
filetype off
set backspace=indent,eol,start
syntax on

set number
set hidden
set confirm

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/nerdtree'

" vim snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'jeetsukumaran/vim-buffergator'

" the snippets
Plugin 'honza/vim-snippets'

" intellisense
Plugin 'vim-php/phpctags'
Plugin 'shawncplus/phpcomplete.vim'

let g:NERDTreeWinSize=30
let g:buffergator_viewport_split_policy="B"

Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
let g:easytags_languages = {
			\   'php': {
			\     'cmd': '/home/koen/.vim/bundle/phpctags/bin/phpctags',
			\       'args': [],
			\       'fileoutput_opt': '-f',
			\       'stdout_opt': '-f-',
			\       'recurse_flag': '-R'
			\   }
			\}
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

autocmd VimEnter * :source /media/koen/dev/vim/session.vim
autocmd VimEnter * :NERDTree /media/koen/dev/projects/

autocmd VimLeave * :NERDTreeClose
autocmd VimLeave * :mksession! /media/koen/dev/vim/session.vim

let mapleader=","
nmap <leader>t :TagbarToggle<cr>
imap jk <esc>
nmap <leader>n :NERDTreeToggle<cr>
set laststatus=2 "always show statusline
set t_Co=256
