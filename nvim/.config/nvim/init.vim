" ====================================================================
" Author: Kevin DC
" Email: quebin31@gmail.com
" Email: lans9831@gmail.com
" ====================================================================

" ====================================================================
" Get defaults that most users want.
" ====================================================================
source /usr/share/vim/vim90/defaults.vim 

" ====================================================================
"  Change mapleader
" ====================================================================
let g:mapleader = ","

" ====================================================================
"  Plugins
" ====================================================================
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

" Editor utilities
Plug 'godlygeek/tabular'
Plug 'google/vim-searchindex'
Plug 'scrooloose/nerdcommenter'

" Utility plugins
Plug 'tpope/vim-eunuch'
Plug 'lambdalisue/suda.vim'

" Settings only for Neovim
if !exists('g:vscode')
    " Editor utilities
    Plug 'luochen1990/rainbow'
    Plug 'airblade/vim-rooter'
    Plug 'yuttie/comfortable-motion.vim'

    " Lenguage support
    Plug 'sheerun/vim-polyglot'
    Plug 'jvirtanen/vim-octave'
    Plug 'plasticboy/vim-markdown'

    " Git utilities
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'sodapopcan/vim-twiggy'

    " Utility plugins
    Plug '907th/vim-auto-save'
    Plug 'donRaphaco/neotex', { 'for': 'tex' }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

    " Colorschemes
    Plug 'hzchirs/vim-material'

    " Sugarized UI
    Plug 'majutsushi/tagbar'
    Plug 'vim-airline/vim-airline'
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kristijanhusak/defx-icons'
    Plug 'ryanoasis/vim-devicons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

    " Conqueror of Completion
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
endif

call plug#end()

filetype plugin indent on
syntax enable

" ====================================================================
" Full coloring background, fix in some terminals
" ====================================================================
set t_ut=" "
set encoding=utf8

" ====================================================================
"  Editor options
" ====================================================================
source ~/.config/nvim/editor.vim

" ====================================================================
"  Plugin options
" ====================================================================
if !exists('g:vscode')
    source ~/.config/nvim/plugins.vim
endif

" ====================================================================
"  Functions
" ====================================================================
if !exists('g:vscode')
    source ~/.config/nvim/functions.vim
endif

" ====================================================================
"  Map functions
" ====================================================================
if !exists('g:vscode')
    nnoremap <F4> :call SpellCheck()<CR>
    nnoremap <F5> :call NumberToggle()<CR>
    nnoremap <F6> :call CursorLineToggle()<CR>
endif

