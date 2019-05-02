set nocompatible              " be iMproved, required
filetype off                  " required

" VIM Color Scheme "
colorscheme cobalt

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'

"Vundle Plugins (DO NOT REMOVE!)
Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"Plugin 'klen/python-mode'
"Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'davidhalter/jedi-vim'

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

set nocompatible
syntax on
set tabstop=4
set backspace=indent,eol,start
set number
let g:ycm_global_ycm_extra_conf = '/Users/Lucas/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"Pathogen VIM"
execute pathogen#infect()

" Search and replace word under cursor using F4
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" Disable anoying sounds
set noerrorbells visualbell t_vb=
if has('autocmd')
		  autocmd GUIEnter * set visualbell t_vb=
endif

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces    

"Custom button maps ------------------------------------------------------- >>

"Change tabs
nnoremap <C-u> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>
"Toggle NERDTree with the current opened file selected
silent! map <C-o> :NERDTreeFind<CR>
"Toggle NERDTree
silent! map <C-p> :NERDTreeToggle<CR>
"CHANGE SPLITS: CTRL-W-W"
"Navigate through splits (up, down, left right)"
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"Change NERTree directory colors to red"
hi Directory guifg=#FF0000 ctermfg=red
