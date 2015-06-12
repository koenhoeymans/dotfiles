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
Plugin 'bling/vim-airline'

" the snippets
Plugin 'honza/vim-snippets'

Plugin 'vim-php/phpctags'
set tags=/media/koen/dev/vim/ctags.txt

let g:NERDTreeWinSize=30
let g:buffergator_viewport_split_policy="B"
let g:airline_powerline_fonts = 1

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

autocmd VimEnter * :source /media/koen/dev/vim/session.vim
autocmd VimEnter * :NERDTree /media/koen/dev/projects/

autocmd VimLeave * :NERDTreeClose
autocmd VimLeave * :mksession! /media/koen/dev/vim/session.vim

let mapleader=","
imap jk <esc>
nmap <leader>n :NERDTreeToggle<cr>
set laststatus=2 "always show statusline
set t_Co=256

