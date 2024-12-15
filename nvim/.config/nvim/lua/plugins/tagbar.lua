-- ====================================================================
--  Tagbar settings
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- Set Tagbar to compact mode
vim.g.tagbar_compact = 1

-- Map <leader>b to toggle Tagbar
vim.keymap.set('n', '<leader>b', ':TagbarToggle<CR>', { noremap = true, silent = true })

-- Configure Tagbar for Rust language
vim.g.tagbar_type_rust = {
    ctagstype = 'rust',
    kinds = {
        'T:types,type definitions',
        'f:functions,function definitions',
        'g:enum,enumeration names',
        's:structure names',
        'm:modules,module names',
        'c:consts,static constants',
        't:traits',
        'i:impls,trait implementations'
    }
}
