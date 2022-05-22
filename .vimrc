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
" Syntax highlighting
Plugin 'sainnhe/gruvbox-material'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'sheerun/vim-polyglot'
Plugin 'frazrepo/vim-rainbow'
" Auto pop-up autocomplete
" Plugin 'vim-scripts/AutoComplPop'
Plugin 'davidhalter/jedi-vim'
" Tag-bar
Plugin 'majutsushi/tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set termguicolors
set background=dark
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
set matchtime=0
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
let g:jedi#show_call_signatures = "2"
let g:jedi#popup_on_dot = 0
let g:jedi#goto_definitions_command = "<C-K>"
let g:jedi#use_tabs_not_buffers = "1"
" Prettyfy python
let python_highlight_all=1
syntax on
let g:rainbow_active = 1
set termguicolors
" colorscheme gruvbox-material
colorscheme hybrid_reverse
"""""""" KEY BINDINGS 

" Enable folding with the spacebar
nnoremap <space> za

" Toggle NERDTree with Cntrl + n
map <C-n> :NERDTreeToggle<CR>

" Toggle tagbar with F8
nmap <F8> :TagbarToggle<CR>

" split navigations with Cntrl + h|j|k|l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Moving codeblocks around with  Shift + J|K
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Run python from vim with F5
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:vert ter python3 "%"<CR>
