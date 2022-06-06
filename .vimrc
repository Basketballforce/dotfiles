"Setup vundle plugin manager"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"call optional vundle plugins below"
Plugin 'L9'
"Onedark them"
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
"code-dark theme"
Plugin 'tomasiser/vim-code-dark'

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

"git management tool2"
Plugin 'airblade/vim-gitgutter'

"Call end of vundle"
call vundle#end()
filetype plugin indent on

"vim-plug plugin manager"
call plug#begin(expand('~/.vim/plugged'))
"Nord theme"
Plug 'arcticicestudio/nord-vim'

"Ayu theme"
Plug 'ayu-theme/ayu-vim'

"OneDarkAtom theme"
Plug 'joshdick/onedark.vim'

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

"Turn off bell"
set belloff=all

"Set theme"
"Call nord first otherwise its airline theme doesn't get applied/isn't
"changeable"
colorscheme nord
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
set termguicolors
hi Normal guibg=NONE ctermbg=NONE

"Run NERDTree at start"
autocmd VimEnter * NERDTree

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


func! CodeDark()
    colorscheme codedark
    execute 'AirlineTheme codedark'
    "hi Normal guibg=NONE ctermbg=NONE"
endfu
com! CodeDark call CodeDark()


func! Ayu()
    let ayucolor="dark"
    colorscheme ayu
    "hi Normal guibg=NONE ctermbg=NONE"
endfu
com! Ayu call Ayu()

func! AtomDark()
    let ayucolor="dark"
    colorscheme onedark
    execute 'AirlineTheme onedark'
    "hi Normal guibg=NONE ctermbg=NONE"
endfu
com! AtomDark call AtomDark()



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
