---@diagnostic disable-next-line: undefined-global
local vim = vim

local utils = require('.utils')

-- Aliased functions from utils file
local is_nvim = utils.is_nvim
local only_nvim = utils.only_nvim

return {
    -- Editor utilities
    'godlygeek/tabular',
    'google/vim-searchindex',
    'scrooloose/nerdcommenter',
    {
        'airblade/vim-rooter',
        cond = is_nvim,
        init = function()
            vim.g.rooter_silent_chdir = 1
            vim.g.rooter_resolve_links = 1
        end
    },
    {
        'yuttie/comfortable-motion.vim',
        cond = is_nvim,
        keys = {
            { '<C-f>', ':call comfortable_motion#flick(200)<CR>' },
            { '<C-b>', ':call comfortable_motion#flick(-200)<CR>' },
            { '<ScrollWheelDown>', ':call comfortable_motion#flick(50)<CR>' },
            { '<ScrollWheelUp>', ':call comfortable_motion#flick(-50)<CR>' },
        }
    },
    {
        'luochen1990/rainbow',
        cond = is_nvim,
        init = function ()
            vim.g.rainbow_active = 1
            vim.g.rainbow_conf = {
                separately = {
                    cmake = 0,
                }
            }
        end
    },
    {
        'm4xshen/autoclose.nvim',
        cond = is_nvim,
        config = true,
    },

    -- Utility plugins
    'tpope/vim-eunuch',
    'lambdalisue/suda.vim',
    {
        '907th/vim-auto-save',
        cond = is_nvim,
        init = function()
            vim.g.auto_save = 1
            vim.g.auto_save_silent = 1
            vim.g.auto_save_events = { "InsertLeave", "TextChanged" }
        end
    },
    {
        'akinsho/toggleterm.nvim',
        cond = is_nvim,
        version = '*',
        config = true,
    },

    -- Colorschemes
    only_nvim('hzchirs/vim-material'),

    -- Language support
    only_nvim('sheerun/vim-polyglot'),
    only_nvim('jvirtanen/vim-octave'),
    only_nvim('plasticboy/vim-markdown'),

    -- Git utilities
    only_nvim('tpope/vim-fugitive'),
    only_nvim('airblade/vim-gitgutter'),
    only_nvim('sodapopcan/vim-twiggy'),

    -- Sugarized UI
    only_nvim('ryanoasis/vim-devicons'),
    {
        'mhinz/vim-startify',
        cond = is_nvim,
        lazy = false,
        init = function()
            vim.g.startify_fortune_use_unicode = 1
        end,
        keys = {
            { '<leader>s', ':Startify<cr>' }
        }
    },

    -- Neovim Tree
    {
        'nvim-tree/nvim-tree.lua',
        cond = is_nvim,
        config = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            { '<leader>n', ':NvimTreeToggle<cr>' },
            { '<leader>f', ':NvimTreeFindFile<cr>' },
            { '<leader>m', ':NvimTreeFocus<cr>' }
        }
    },
}
