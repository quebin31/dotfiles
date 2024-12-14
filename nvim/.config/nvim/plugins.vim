" ====================================================================
" Plugin options
" ====================================================================

" ====================================================================
"  Heavy settings
" ====================================================================
source ~/.config/nvim/plugins/init.lua
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/tagbar.vim

" ====================================================================
"  Magit
" ====================================================================
let g:magit_auto_foldopen = 0

" ====================================================================
" Autosave vim
" ====================================================================
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" ====================================================================
" Rainbow parentheses
" ====================================================================
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'separately': {
\       'cmake': 0,
\   }
\}

nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(50)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-50)<CR>

" ====================================================================
" Rooter
" ====================================================================
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1

" ====================================================================
"  Startify
" ====================================================================
let g:startify_fortune_use_unicode = 1
nnoremap <leader>s :Startify<CR>
