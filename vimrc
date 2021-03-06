filetype off               " required for some reason

" reset to vim-defaults
if &compatible             " only if not set before:
    set nocompatible       " use vim-defaults instead of vi-defaults (easier, more user friendly)
endif

"-----------------------------------------------------------------------------------------------
" Plugins Section
"-----------------------------------------------------------------------------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'SirVer/ultisnips'
Bundle 'Raimondi/delimitMate'
Bundle 'honza/vim-snippets'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

let g:UltiSnipsExpandTrigger="<tab>"
"------------------------------------------------------------------------------------------------
" Basic Editor Settings
"------------------------------------------------------------------------------------------------
syntax on

set expandtab              " fill tab with spaces
set tabstop=4              " tab will add 4 spaces
set shiftwidth=4           " autoindents by 4 spaces
set number                 " numerate lines
set nowrap                 " dont wrap lines
set modeline               " enable modeline ?????

set laststatus=2           " always show statusline
set showcmd                " show command in status line
set noshowmode               " show mode in status bar
set incsearch              " highlite search results while type in search pattern

set bs=indent,eol,start    " allow backspacing over everything in insert mode
set smarttab               " make <tab> and <backspace> smarter
set ignorecase             " do case insensitive matching
set smartcase              " ignore case if search pattern is all lowercase, case-sensitive otherwise
set autoindent smartindent " enable indentations

set undolevels=100         " keep 100 undos
set updatecount=100        " write changes to swapfile every 100 chars

set background=dark        " dark background
set listchars=tab:»·,trail:·,eol:¬
set list
colorscheme jellybeans

