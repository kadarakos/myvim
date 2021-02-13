" VUNDLE
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
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
" Auto pop-up autocomplete
Plugin 'vim-scripts/AutoComplPop'
" Tag-bar
Plugin 'majutsushi/tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Set to auto read when a file is changed from the outside
set autoread
" Show line numbers
set nu
"Always show current position
set ruler
" Highlight search results
set hlsearch
" Show matching brackets
set showmatch 
" Enable syntax highlighting
syntax on 
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Allows using the mouse when feel like it
set mouse=a

" Turn backup off, since most stuff is in git etc anyways...
set nobackup
set nowb
set noswapfile

" Enable folding
set foldmethod=indent
set foldlevel=99

" Autocomplete setup settings
set completeopt=menuone,longest
set shortmess+=c

" Prettyfy pyhton
let python_highlight_all=1
syntax on

" Appearance
set background=dark
colorscheme solarized8_low

" KEY BINDINGS

" Enable folding with the spacebar
nnoremap <space> za

" Toggle NERDTree with Cntrl + n
map <C-n> :NERDTreeToggle<CR>

" Toggle tagbar with F8
nmap <F8> :TagbarToggle<CR>

" split navigations with Cntrl + H|J|K|L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Moving codeblocks around with  Shift + J|K
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
