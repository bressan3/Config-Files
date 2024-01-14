set nocompatible 
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Vundle Plugins (DO NOT REMOVE!)
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set nocompatible
syntax on

set backspace=indent,eol,start
set number
set mouse=a
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces    
set autoindent
set smartindent
set cindent 

"Custom button mapings ------------------------------------------------------ 

"Change tabs
nnoremap <C-u> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>
"Toggle NERDTree with the current opened file selected
silent! map <C-o> :NERDTreeFind<CR>
"Toggle NERDTree
silent! map <C-p> :NERDTreeToggle<CR>

" Open a new vertical split
nnoremap <C-\> :vsp<CR>
" Open a new horizontal split
nnoremap <C-_> :sp<CR>
