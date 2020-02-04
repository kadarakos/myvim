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
colorscheme afterglow

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8


" Turn backup off, since most stuff is in git etc anyways...
set nobackup
set nowb
set noswapfile

" Linebreak on 79 characters
set lbr
set textwidth=79

" PEP-8
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Auto pair parens
inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap " ""<ESC>ha
