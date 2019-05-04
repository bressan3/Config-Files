set nocompatible              " be iMproved, required
filetype plugin on            " required

" VIM Color Scheme "
colorscheme cobalt

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Vundle Plugins (DO NOT REMOVE!)
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'davidhalter/jedi-vim'
Plugin 'c.vim' "See: https://wolfgangmehner.github.io/vim-plugins/csupport for more info 
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

" Utilsnips stuff ---------------------------------------------

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" ------------------------------------------------------------

" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py" 
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

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

"CVim settings"
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Clang / Clang_complete settings
" path to directory where library can be found
let g:clang_library_path='/usr/local/opt/llvm/lib'

" Limit popup menu height
set pumheight=20

"--------------------------------------------------------------------------

"Custom button maps ------------------------------------------------------- >>

" Opens the omni suggestions (local functions, language tokens...) popup
imap <C-@> <c-x><c-o>
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
"Enable forward delete"
"inoremap <C-d> <Del>
"nnoremap <C-d> <Del>

"Change NERTree directory colors to red"
hi Directory guifg=#FF0000 ctermfg=red
