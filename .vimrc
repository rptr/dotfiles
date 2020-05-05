set nocompatible
filetype off
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'scrooloose/nerdtree'

" LISP / Clojure shit
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'

Plugin 'wlangstroth/vim-racket'
Plugin 'MicahElliott/vrod'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'flazz/vim-colorschemes'

Plugin 'valloric/MatchTagAlways'
" Plugin 'octol/vim-cpp-enhanced-highlight'

" Bundle 'quark-zju/vim-cpp-auto-include'

Plugin 'tikhomirov/vim-glsl'
Plugin 'farmergreg/vim-lastplace'
Plugin 'embear/vim-localvimrc'

Plugin 'vim-syntastic/syntastic'

Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'

Plugin 'ycm-core/YouCompleteMe'
" Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

" execute pathogen#infect()

syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set colorcolumn=80
highlight ColorColumn ctermbg=11

set showcmd
set number
set cursorline
set lazyredraw
set showmatch

set incsearch
set hlsearch

set ruler

set autochdir

map <F2> :mksession! ~/.vim_session
map <F3> :source ~/.vim_session

" colorscheme jellybeans
" colorscheme industry
" colorscheme morning
" colorscheme tango-morning
" colorscheme eclipse
" colorscheme evening
" colorscheme proton

" cd /home/rpj/a/uni/cuhk/os
" cd ~/a/projs

" gvim
" remove menu(?)
:set guioptions-=m
" remove toolbar
:set guioptions-=T
" remove scrollbar
:set guioptions-=L
:set guioptions-=r

:set guifont=Monospace\ 9

" needed for stupid redraw issues
:au FocusGained * :redraw!

" : command completion
set wildmode=longest,list,full
set wildmenu

" FSwitch
nmap <silent> <Leader>of :FSHere<cr>

" squirrel
au BufNewFile,BufRead *.nut setf squirrel

" angelscript
" syntax
au BufRead,BufNewFile *.as set syntax=cpp "angelscript
au BufRead,BufNewFile *.angelscript set syntax=cpp "angelscript

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" syntastic
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['html', 'htmldjango'], }
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_htmldjango_checkers = ['tidy']
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_htmldjango_tidy_exec = 'tidy'

let g:localvimrc_ask = 0

" visible whitespace (activate with :set list)
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
