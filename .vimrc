"Setup vundle plugin manager"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"call optional vundle plugins below"
Plugin 'L9'
"Onedark font"
Bundle 'sonph/onehalf', {'rtp': 'vim/'}

"Python jedi autocomplete/SAS analyzer"
"Plugin 'davidhalter/jedi-vim'"

"Multiple langauge autocompleter"
"apt install build-essential cmake vim-nox python3-dev"
"apt install mono-complete golang nodejs default-jdk npm"
"cd ~/.vim/bundle/YouCompleteMe
"python3 install.py --all"
Plugin 'ycm-core/YouCompleteMe'

"git management tool"
Plugin 'tpope/vim-fugitive'

"Call end of vundle"
call vundle#end()
filetype plugin indent on

"vim-plug plugin manager"
call plug#begin(expand('~/.vim/plugged'))
"Nord font"
Plug 'arcticicestudio/nord-vim'
"Airline bottom status bar"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"file explorer"
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'

"file icons"
Plug 'ryanoasis/vim-devicons'
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
"Call nord first otherwise its airline theme doesn't get applied/isn't
"changeable"
colorscheme nord
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
set termguicolors
hi Normal guibg=NONE ctermbg=NONE

"Create function to change color scheme"
func! Nord()
    colorscheme nord
    execute 'AirlineTheme nord'
   "hi Normal guibg=NONE ctermbg=NONE"
endfu
com! Nord call Nord()

func! OneDark()
    colorscheme onehalfdark
    execute 'AirlineTheme onehalfdark'
    "hi Normal guibg=NONE ctermbg=NONE"
endfu
com! OneDark call OneDark()

func! Transparent()
    hi Normal guibg=NONE ctermbg=NONE
endfu
com! Transparent call Transparent()

"Create funciton to go into word processor mode. Using WP command"
func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu

com! WP call WordProcessorMode()
