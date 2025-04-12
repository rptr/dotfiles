""" i've saved these in case i want them again

" " Plugin 'Konfekt/FastFold'
"
" " Racket
" Plugin 'wlangstroth/vim-racket'
" Plugin 'MicahElliott/vrod'
"
" " Vim
" Plugin 'tikhomirov/vim-glsl'
" Plugin 'farmergreg/vim-lastplace'
" Plugin 'embear/vim-localvimrc'
" Plugin 'derekwyatt/vim-fswitch'
" Plugin ''
" Plugin 'valloric/MatchTagAlways'
" Plugin 'vim-syntastic/syntastic'
" " Python
" Plugin 'https://github.com/python-mode/python-mode'

" " Godot
" " Plugin 'habamax/vim-godot'

execute pathogen#infect()
syntax on
filetype plugin indent on

highlight ColorColumn ctermbg=11

set nocompatible
set backspace=indent,eol,start
set showcmd
set number
set cursorline
set lazyredraw
set showmatch
set colorcolumn=80

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

set t_Co=256

""" Garden specific
set background=light
colorscheme doghouse

""" TODO one of these days, make autumnleaf as nice in term as it is in
""" WARN 
""' INFO 
""" NOTE 
""" gvim
""" AutumnLeaf specific
" colorscheme autumnleaf
" hi LineNr ctermfg=66
" hi Comment ctermbg=194 ctermfg=22
" hi Identifier ctermfg=22

""" Messy specific
" colorscheme messy2

" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE
" nice ones:
" fahrenheit, 1989, smyck, nordisk, wombat, hotpot, iceberg, reliable

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
let NERDTreeShowHidden=1

" syntastic
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['html', 'htmldjango'], }
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_htmldjango_checkers = ['tidy']
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_htmldjango_tidy_exec = 'tidy'

let g:localvimrc_ask = 0

" visible whitespace (activate with :set list)
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=12 softtabstop=0 tabstop=12 softtabstop=12

" ensure normal tabs in assembly files
" and set to NASM syntax highlighting
autocmd FileType asm set noexpandtab shiftwidth=12 softtabstop=0 syntax=nasm tabstop=12 softtabstop=12

" allow g <C-a> on letters
set nrformats+=alpha
