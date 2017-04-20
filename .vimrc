" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
" Nerd tree settings
ino <F5> <ESC>:NERDTree<CR>
no <F5> :NERDTree<CR>
vno <F5> <ESC>:NERDTree<CR>

let g:molokai_original = 1
let g:rehash256 = 1
" Color Scheme
color molokai

"YCM 
let g:ycm_min_num_of_chars_for_completion = 2



" Disable arrows mapping

no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" leader is defaulted to \
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

inoremap jk <ESC>
" Fix Typo
" in insert mode
iabbr ture true
iabbr flase false


set smartindent
set autoindent

set nu
set wrap
set showmatch
set textwidth=0
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a

syntax on

set t_Co=256
filetype indent on
filetype plugin on

set modeline
set ls=2
set hlsearch
