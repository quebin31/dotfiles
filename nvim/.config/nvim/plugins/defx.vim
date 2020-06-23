" ====================================================================
" Defx configs
" ====================================================================
"
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
    nnoremap <silent><buffer><expr> c defx#do_action('copy')
    nnoremap <silent><buffer><expr> m defx#do_action('move')
    nnoremap <silent><buffer><expr> p defx#do_action('paste')
    nnoremap <silent><buffer><expr> s defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> i defx#do_action('open', 'split')
    nnoremap <silent><buffer><expr> e defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> t defx#do_action('open', 'tabnew')
    nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N defx#do_action('new_file')
    nnoremap <silent><buffer><expr> d defx#do_action('remove')
    nnoremap <silent><buffer><expr> r defx#do_action('rename')
    nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q defx#do_action('quit')
    nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
    nnoremap <silent><buffer><expr> <Left> defx#do_action('cd', ['..'])
endfunction

autocmd FileType defx call s:defx_my_settings()

map <silent> <Leader>n :Defx -toggle -split=vertical -columns=icons:filename:type<CR>
map <silent> - :Defx -columns=icons:filename:type<CR>

