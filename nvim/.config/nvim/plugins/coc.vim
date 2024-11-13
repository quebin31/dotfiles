" ====================================================================
" Coc nvim settings
" ====================================================================
let g:coc_global_extensions = [
\   'coc-json',
\   'coc-css',
\   'coc-svelte',
\   'coc-pyls',
\   'coc-deno',
\   'coc-docker',
\   'coc-sh',
\   'coc-snippets',
\   'coc-lightbulb',
\   'coc-sql',
\   'coc-toml',
\   'coc-yaml',
\]

" Use <tab> to trigger completion
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Navigate with tab and s-tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use enter to confirm complete
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Map keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Use K for show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Map for rename current word
nmap <silent>rn <Plug>(coc-rename)

" Map for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Map for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Map for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use :Format for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Map Coc-List
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

