---@diagnostic disable-next-line: undefined-global
local vim = vim

local utils = require('.utils')

-- Aliased functions from utils file
local is_nvim = utils.is_nvim

return {
    {
        'vim-airline/vim-airline',
        cond = is_nvim,
        dependencies = {
            'vim-airline/vim-airline-themes'
        },
        init = function()
            -- Set global variables for airline configurations
            vim.g.airline_powerline_fonts = 0
            vim.g.airline_theme = 'base16'
            vim.g.airline_exclude_preview = 1

            -- Configure tabline extensions for airline
            vim.g['airline#extensions#tabline#enabled'] = 1
            vim.g['airline#extensions#tabline#show_buffers'] = 0
            vim.g['airline#extensions#tabline#show_splits'] = 0
            vim.g['airline#extensions#tabline#show_tabs'] = 1
            vim.g['airline#extensions#tabline#show_tab_nr'] = 0
            vim.g['airline#extensions#tabline#show_tab_type'] = 0
            vim.g['airline#extensions#tabline#show_close_button'] = 0

            -- Disable whitespace extension for airline
            vim.g['airline#extensions#whitespace#enabled'] = 0

            -- coc integration for error and warning sections in airline
            vim.g.airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
            vim.g.airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
        end
    }
}
