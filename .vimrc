set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'othree/yajs.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'prettier/vim-prettier'
Plugin 'posva/vim-vue'
Plugin 'purescript-contrib/purescript-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'tarekbecker/vim-yaml-formatter'

call vundle#end()

filetype plugin indent on

syntax on
colorscheme slate

set backspace=2

set laststatus=2
set number
set expandtab
set ruler
set noerrorbells
" softtab 4
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent

set list
set listchars=tab:▸\ ,eol:¬

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

au BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell
au BufRead,BufNewFile *.slide set filetype=slide
autocmd FileType slide setlocal spell
" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml 
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

noremap <F4> :set hlsearch! hlsearch?<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|__pycache__\'

let g:rustfmt_autosave = 1

let tlist_objc_settings = 'objc;i:interface;c:class;m:method;p:property'

" Running before saving
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_config_files = ['.prettierrc', 'prettier.config.js']
autocmd FileType js,ts setlocal ts=2 sts=2 sw=2 expandtab

" because vue contains various format in one file
autocmd FileType vue syntax sync fromstart
