set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vimproc
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'bling/vim-bufferline'
Plugin 'tomasr/molokai'
Plugin 'powerline/powerline'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'taglist.vim'
"Plugin 'taglist-plus'
Plugin 'ctrlp.vim'
Plugin 'Tagbar'
"Plugin 'Tabbar'
Plugin 'unite.vim'

call vundle#end()            " required
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

filetype plugin indent on    " required

" ######################### MISC BEGIN #####################################
syntax enable
syntax on
"set background=dark
colorscheme monokai
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

set nu
map <F2> :set nu!<CR>
set nowrap

set sw=4
set st=4
set softtabstop=4

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase         " Do case insensitive matching
set smartcase          " Do smart case matching
set incsearch           " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set hls
set mouse=v            " Enable mouse usage (all modes)

set laststatus=2

" ######################### MISC END #####################################

" ######################### NERDTREE BEGIN #####################################

" How can I open a NERDTree automatically when vim starts up?
"autocmd vimenter * NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"
map <F4> :NERDTreeToggle<CR>

" ######################### NERDTREE END #####################################

" ######################### TAGLIST BEGIN #####################################
" ######################### TAGLIST END #####################################

" ######################### TABBAR BEGIN #####################################
"let g:Tb_MaxSize = 2 
"let g:Tb_TabWrap = 1
" ######################### TABBAR END #####################################

" ######################### TAGBAR BEGIN #####################################
map <silent> <F3> :Tagbar<CR>
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1 
let g:tagbar_sort = 0 
let g:tagbar_compact = 1 
" ######################### TAGBAR END #####################################

" ######################### POWERLINE BEGIN ################################
"let g:Powerline_symbols = 'unicode'
" ######################### POWERLINE END ##################################

" ########################## AIRLINE BEGIN #################################
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme="luna"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
" ########################## AIRLINE END ###################################

let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'


let g:ycm_complete_in_comments_and_strings=1

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
