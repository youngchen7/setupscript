set t_Co=256
set number ai
set nocompatible              " be iMproved, required
set laststatus=2              " Make airline permanently visible
set encoding=utf8
set enc=utf8
let g:airline_powerline_fonts=1 " Enable powerline fonts
let g:airline#extensions#tabline#enabled=1 "enable smart tab line
let g:airline_theme='murmur'
filetype off                  " required

" Tabbing settings
set sw=4
set et
set ts=4
set ai

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic settings for c++14
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:syntastic_cpp_check_header = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" fugitive (git integration)
Plugin 'tpope/vim-fugitive'

" python virtualenv
Plugin 'jmcantrell/vim-virtualenv'

" Syntastic
Plugin 'scrooloose/syntastic'

" Airline plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tmuxline
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

" Tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
