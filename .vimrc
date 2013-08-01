" Just to be safe, as this is needed by some stuff, such as saltstack's
" sls highlighting.
" @see http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on


" Enables gherkin syntax highlighting for *.feature files
" @see http://rapaul.com/2010/06/21/gherkin-highlighting-for-vim/
au Bufread,BufNewFile *.feature set filetype=gherkin
au! Syntax gherkin source ~/.vim/cucumber.vim


" Formats statusline
" @see :help statusline
set statusline=%n\ %<%f\ %m%r%=\(%c\,%l\)\ %y%h
set laststatus=2    " statusline always visible


set fileencodings=utf-8
set fileencoding=utf-8
set fileformats=unix,dos
set fileformat=unix


" Shows mode
set showmode

" Highlights current line
set cursorline

set background=dark

" Keeps indentation
set autoindent

" Sets backspace behavior
set backspace=indent,eol,start

" Shows line numbers
set nu

" Highlights search results
set hlsearch

" Number of actions to remember
set history=100

" Shows position
set ruler

" Highlight matching brackets
set showmatch

" Allows unsaved files to be kept in hidden buffers
set hidden

" Do NOT automatically wrap long lines
set nowrap

" Indentation options (not exactly sure what every option does)
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2


" Key mappings
""""""""""""""
" Not sure what every command does.
let mapleader = ','

" Makes a semicolon work as the colon key, making it easier to get to the
" command line.
nnoremap ; :

" Ctrl + h: shows next tab
map <C-H> :tabnext<CR>

" Ctrl + l: shows prev tab
map <C-L> :tabprevious<CR>

" Ctrl + j: shows next buffer
map <C-J> :bnext<CR>

" Ctrl + k: shows prev buffer
map <C-K> :bprevious<CR>


" Custom commands
"""""""""""""""""
" @see http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting

" Clears search results
command C let @/=""

" Clears trailing spaces and search results
command CTS %s/\s\+\n/\r/ | C
