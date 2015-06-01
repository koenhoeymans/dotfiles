set nocompatible
filetype off
set backspace=indent,eol,start
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'StanAngeloff/php.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
