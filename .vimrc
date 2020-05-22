set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tomasiser/vim-code-dark'

Plug 'scrooloose/nerdtree.git'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plug 'elzr/vim-json'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim.git'
Plug 'peitalin/vim-jsx-typescript'
Plug 'alvan/vim-closetag'



call plug#end()
filetype plugin indent on    " required
filetype indent on
syntax enable

colorscheme codedark
map <F6> :TagbarToggle <CR>

map <F5> :NERDTreeToggle <CR>
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()

map <c-p> :CtrlP <CR>
let g:ctrlp_custom_ignore = 'coverage\|dist\|dist-*\|node_modules\|DS_Store\|git'
