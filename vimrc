set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

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

set encoding=utf8
set termencoding=utf8

imap jj <esc>
let maplocalleader=','
let mapleader=','

syntax on
syntax enable
filetype on
filetype indent on
filetype plugin on
set nocompatible
set t_Co=256
set autoindent
set nosmartindent						" auto/smart indent
set noerrorbells
set visualbell t_vb=
set undolevels=500
set backspace=indent,eol,start
set ttyfast

map <LocalLeader>l :set invnumber<CR>
set smarttab
set tabstop=2
set cursorline						" show underline
set showmatch							" show matching bracket
set nofoldenable
set matchpairs+=<:>

" Disable highlight when <leader><cr> is pressed
map <silent> <LocalLeader><cr> :noh<cr>

" Use the arrows to something usefull
map <right> :bnext!<cr>
map <left> :bprevious!<cr>
map <down> :buffers<cr>
map <C-D> :bd<cr>

" making searching better in vim
set incsearch								" incremental search
set ignorecase 							" search ignore case
set smartcase								" ignore case when seraching lowercase
set hlsearch								" highlight the search
set diffopt=filler,iwhite		" ignore all whitespace and sync

" dont want backup or swap files
set nobackup
set nowritebackup
set noswapfile

" q: sucks
nmap q: :q
" If I forgot to sudo vim a file, do that with :w!!
cmap w!! w !sudo tee %

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
noremap <C-n> :tabnext<CR>
set guicursor=a:block-blinkoff1

" Use 2 spaces in puppet, ruby and xml files
autocmd FileType puppet,xml,ruby set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Open and close the NERDTree
map <LocalLeader>t :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
let NERDTreeWinSize=20

" CtrlP - fuzzy search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" status line
set laststatus=2
