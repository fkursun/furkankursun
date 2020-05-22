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
" open ctrl p file in new buffer
let g:ctrlp_switch_buffer = 0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ }

set number
set showcmd
set cursorline
set wildmenu
set showmatch
set hlsearch
set incsearch
nnoremap j gj
nnoremap k gk
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd BufWritePre *.js %s/\s\+$//e

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:EasyMotion_smartcase = 1

nnoremap <silent> <C-w>w :ZoomWin<CR>

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:prettier#config#print_width = '120'
let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'
let g:prettier#autoformat = 1
let g:closetag_xhtml_filenames = '*.js,*.jsx'
let g:closetag_xhtml_filetypes = 'js,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_filenames = '*.html,*.js'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.js': 'jsRegion',
    \ }



highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fix_on_save = 1
let g:ale_linters = {
\'javascript': ['flow', 'eslint','prettier'],
\}
let g:ale_fixers = {
\'javascript': ['prettier'],
\}

inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
