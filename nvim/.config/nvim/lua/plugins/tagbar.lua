---@diagnostic disable-next-line: undefined-global
local vim = vim

local utils = require('.utils')

-- Aliased functions from utils file
local is_nvim = utils.is_nvim

return {
    {
        'majutsushi/tagbar',
        cond = is_nvim,
        keys = {
            { '<leader>b', ':TagbarToggle<cr>' }
        },
        init = function()
            -- Set Tagbar to compact mode
            vim.g.tagbar_compact = 1

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
        end
    }
}
