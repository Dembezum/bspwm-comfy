"************************************************

" | |  / (_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__  
" |___/_/_/ /_/ /_/_/   \___/  

"************************************************

set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"************************************************

call vundle#begin()

Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'git://git.wincent.com/command-t.git'

call vundle#end() 
"************************************************

filetype plugin indent on

"************************************************

set t_Co=16
set tabstop=4
set history=200
set softtabstop=4
set nrformats-=octal
set backspace=indent,eol,start
set clipboard=unnamedplus
set display=truncate
set fileformat=unix
set ttimeoutlen=100
set shiftwidth=4
set textwidth=79
set scrolloff=5
set smartindent
set autoindent
set incsearch
set expandtab
set wildmenu
set ttimeout
set showcmd
set nohls
set ruler

"************************************************
map Q gq
sunmap Q
map <F2> :set cc=79<cr>
map <F3> :set cc=-79<cr>
inoremap ii <Esc>  
inoremap < <> <Left><Left>
inoremap <C-U> <C-G>u<C-U>
nmap <C-g> :NERDTreeToggle<CR>
map <C-B> :w <cr> :! clear; time bash %<cr>
map <C-N> :w <cr> :! clear; time python %<cr>
map <C-M> :w <cr> :! clear; time gcc % && ./a.out <CR>
autocmd FileType python map <buffer> <F4> :call flake8#Flake8()<CR>

"************************************************

let NERDTreeWinSize = 20
let NERDTreeShowBookmarks = 1
let g:python_highlight_all = 1
let g:python_highlight_operators = 1
let g:python_highlight_str_format = 0
let g:python_highlight_file_headers_as_comments = 1
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"************************************************

hi Function ctermfg=6
hi Pmenu ctermbg=gray guibg=gray
hi pythonBuiltinFunc ctermfg=14
hi Comment ctermfg=7
hi pythonString ctermfg=10
hi LineNr ctermfg=grey

"************************************************

