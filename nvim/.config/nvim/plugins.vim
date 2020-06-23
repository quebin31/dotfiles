" ====================================================================
" Plugin options
" ====================================================================

" ====================================================================
"  Heavy settings
" ====================================================================
source ~/.config/nvim/plugins/defx.vim
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

" ====================================================================
" Comfortable
" ====================================================================
"nnoremap <silent> <A-j> :call comfortable_motion#flick(30)<CR>
"nnoremap <silent> <A-k> :call comfortable_motion#flick(-30)<CR>

nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(50)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-50)<CR>

" ====================================================================
" Python
" ====================================================================
let g:python_highlight_all = 1

" ====================================================================
"  C/C++ Enhaced 
" ====================================================================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let c_no_curly_error = 1

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
