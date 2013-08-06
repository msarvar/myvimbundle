call pathogen#infect()
call pathogen#helptags()

syntax on

set nocompatible
set number
set ruler

" Set encoding
set encoding=utf-8

"Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

"searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,*.rbc,*.class,.svn,vendor/gems/*

"status bar
set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256

let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$' ]

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
color desert

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Haskell vim setup
let g:haddock_browser = ""

set showcmd

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
