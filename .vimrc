"Setup vundle plugin manager"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"call optional vundle plugins below"
Plugin 'L9'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}

"Call end of vundle"
call vundle#end()
filetype plugin indent on

"vim-plug plugin manager"
call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
call plug#end()


"set tab/auto tab and max width of editor. As well as auto indent"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set autoindent

"Set numbers/show line numbers"
set number

"Set theme"
"colorscheme onehalfdark"
"let g:airline_theme='onehalfdark'"
colorscheme nord
set termguicolors

"Create function to change color scheme"
func! Nord()
    colorscheme nord
endfu
com! Nord call Nord()

func! OneDark()
    colorscheme onehalfdark
    let g:airline_theme='onehalfdark'
endfu
com! OneDark call OneDark()

"Create funciton to go into word processor mode. Using WP command"
func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu

com! WP call WordProcessorMode()
