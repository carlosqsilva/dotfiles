" PATHOGEN setup
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:airline_powerline_fonts = 1

" Nerd Comment config
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Basics
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set nobackup
set noswapfile

" Change the mapleader from \ to ,
let mapleader=","

" Replace : for ;
nnoremap ; :

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Set line numbers
set number
set relativenumber

" Show current position
set ruler

" Ignore case when searching
set ignorecase

" Try to be smart os search
set smartcase

" Highlight searchs results
set hlsearch

set t_Co=256

syntax enable
colorscheme solarized

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Show double quotes in .json files
set conceallevel=0

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set so=7
set wildmenu
set wildmode=longest:full,full
