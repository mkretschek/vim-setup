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


" Set initial window size
" from: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size
if has("gui_running")
  " Set columns to 999 if you want gvim to start maximized.
  " 84 columns gives a 80 characters per line (+4 for the line-numbers)
  set lines=999 columns=84
else
  " This is a console Vim.
  if exists ("+lines")
    set lines=50
  endif
  if exists ("+columns")
    set columns=100
  endif
endif


" Shows mode
set showmode

" Highlights current line
set cursorline

set background=dark
colorscheme codeschool
set guifont=Droid\ Sans\ Mono:h10

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

" Yank to and paste from system's clipboard
set clipboard=unnamed


" Backup directory
""""""""""""""""""
" Set swap and temp directories to keep our working directories clean.
" Using two backslashes at the end, makes the filenames be built using
" the whole file path, replacing slashes with a % sign, assuring they
" are unique.
"
" This script should create the specified directory in user's home dir.
"
" @see http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory

let HOME_DIR   = expand("~")
let VIM_DIR    = HOME_DIR."/.vim"
let BACKUP_DIR = VIM_DIR."/backup"

" Create a dir for vim's temp files if it does not exists
if filewritable(HOME_DIR) && !filewritable(VIM_DIR)
  silent execute '!mkdir "'.VIM_DIR.'"'
endif

if filewritable(VIM_DIR) && !filewritable(BACKUP_DIR)
  silent execute '!mkdir "'.BACKUP_DIR.'"'
endif

let &backupdir=BACKUP_DIR."//"
let &directory=BACKUP_DIR."//"

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
