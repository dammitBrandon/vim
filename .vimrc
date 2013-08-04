" *** NEW CONFIG ***
" call pathogen#infect()
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"
"" let Vundle manage Vundle
"" required for Vundle
Bundle 'gmarik/vundle'

"" My Bundles here:
"" original repos on github
"Bundle 'mileszs/ack.vim'
"Bundle 'juvenn/mustache.vim'
"Bundle 'hashrocket/slurper'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'tpope/vim-cucumber'
"Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
"Bundle 'ornicar/vim-mru'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-unimpaired'
Bundle 'thoughtbot/vim-rspec'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'http://github.com/mattn/zencoding-vim.git'
Bundle 'http://github.com/tpope/vim-fugitive.git'
Bundle 'https://github.com/tpope/vim-git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
"
autocmd vimenter * if !argc() | NERDTree | endif
nmap \nt :NERDTree<CR>
nmap \nc :NERDTreeClose<CR>
"" required for Vundle
filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
"set bs=2

" Always display the status line
set laststatus=2

" Display incomplete commands
set showcmd

" Up the undo and history
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" No tmp files!:
set nobackup
set noswapfile

" Color scheme
set t_Co=256
colorscheme molokai
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Numbers
set number
set numberwidth=5

" Syntax Highlighting
syntax on
set hlsearch

" Display extra whitespace
set list
set listchars=tab:>-,trail:.

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full

" Load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


" Leader + Custom Mappings
let mapleader = "\\"

map <C-H> <C-W>h
map <C-L> <C-W>l
" same for j & k
map <C-J> <C-W>j
map <C-K> <C-W>k

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

"Rspec.vim mappings
map <Leader>. :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"Rspec vim override
let g:rspec_command = '!bundle exec rspec --drb {spec}'
