" VUNDLE
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Syntax highlight/check
Plugin 'vim-syntastic/syntastic'
" PEP-8 compliance check
Plugin 'nvie/vim-flake8'
" File browsing
Plugin 'scrooloose/nerdtree'
" PEP-8 indent aid
Plugin 'Vimjas/vim-python-pep8-indent'
" Solarized theme
Plugin 'lifepillar/vim-solarized8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Set to auto read when a file is changed from the outside
set autoread

set nu

"Always show current position
set ruler

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch 

" Enable syntax highlighting
syntax on 

" Appearance
set background=dark
colorscheme solarized8_low

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8


" Turn backup off, since most stuff is in git etc anyways...
set nobackup
set nowb
set noswapfile

" Linebreak on 79 characters
set lbr
set textwidth=79


" Remove extra whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set ai "Auto indent
" set si "Smart indent
" set wrap "Wrap lines
" set shiftwidth=4
" set tabstop=4
" set softtabstop=4
" set expandtab

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Prettyfy pyhton
let python_highlight_all=1
syntax on
