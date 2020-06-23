" ====================================================================
"  Editor options
" ====================================================================

" ====================================================================
" Colorschemes
" ====================================================================
set termguicolors
set background=dark
colorscheme vim-material

hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi CursorLineNr guibg=none ctermbg=none
hi EndOfBuffer guifg=#1f1f1f 

" ====================================================================
"  Options
" ====================================================================
set updatetime=0               " Faster shit
set laststatus=2               " Display status line always
set noswapfile                 " Don't create swap files
set autoread                   " Read files that changes externally
set number                     " Enable numberlines
set relativenumber             " Enable relative numbers
set nolinebreak                " Don't break lines at word
set nowrap                     " Don't wrap lines
set showmatch                  " Highligth matching brace
set visualbell                 " No beeping
set hlsearch                   " Highligth all search results
set smartcase                  " Enable smartcase search
set ignorecase                 " Always case insensitive
set incsearch                  " Searches for string incrementally
set autoindent                 " Autoident lines
set cindent                    " C-Like ident 
set tabstop=4                  " 4 columns per tab
set shiftwidth=4               " Number of autoident spaces [> and < (un)ident 4 spaces]
set softtabstop=4              " Tab inserts 4 spaces
set smartindent                " Smart indent
set smarttab                   " Smart tabs
set expandtab                  " Use spaces when using tabs
set ruler                      " Show row and column ruler information
set undolevels=1000            " Number of undos
set backspace=indent,eol,start " Backspace for dummys
set pastetoggle=<F12>          " Paste toogle (sane indentation on pastes)
set fillchars=vert:\│          " Change character '|' to '│' used in vsplit
set textwidth=90               " Max textwidth
set foldmethod=syntax          " Enable folding
set foldlevelstart=99          " ... but don't close them automatically
set signcolumn=yes             " Always show signcolumn
set clipboard=unnamedplus      " Use system clipboard for everything
"set linebreak                  " Break lines at word
"set wrap                       " Wrap lines

" ====================================================================
" Keybindings
" ====================================================================

" <F1> not now please
nmap <F1> <nop>

" Moving accross splits
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <leader>l <C-W><C-P> 

" Esc on term
tnoremap <Esc> <C-\><C-N>

" Fold bindings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Open split on another buffer
nnoremap <leader>m :tabe %<CR>

" ====================================================================
"  Tex flavor
" ====================================================================
let g:tex_flavor = 'latex'

" ====================================================================
"  Netrw
" ====================================================================
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" ====================================================================
" Terminal wo numer lines
" ====================================================================
augroup TerminalStuff
    au!
    autocmd TermOpen * setlocal nonumber norelativenumber 
augroup END
