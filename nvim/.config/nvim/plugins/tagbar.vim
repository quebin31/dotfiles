" ====================================================================
"  Tagbar settings
" ====================================================================
"let g:tagbar_left = 0
"let g:tagbar_vertical = 16
let g:tagbar_compact = 1

map <leader>b :TagbarToggle<CR>

let g:tagbar_type_rust = {
   \ 'ctagstype' : 'rust',
   \ 'kinds' : [
       \'T:types,type definitions',
       \'f:functions,function definitions',
       \'g:enum,enumeration names',
       \'s:structure names',
       \'m:modules,module names',
       \'c:consts,static constants',
       \'t:traits',
       \'i:impls,trait implementations',
   \]
  \}
