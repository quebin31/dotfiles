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
            { '<C-f>',             ':call comfortable_motion#flick(200)<CR>' },
            { '<C-b>',             ':call comfortable_motion#flick(-200)<CR>' },
            { '<ScrollWheelDown>', ':call comfortable_motion#flick(50)<CR>' },
            { '<ScrollWheelUp>',   ':call comfortable_motion#flick(-50)<CR>' },
        }
    },
    {
        'luochen1990/rainbow',
        cond = is_nvim,
        init = function()
            vim.g.rainbow_active = 1
            vim.g.rainbow_conf = {
                separately = {
                    cmake = 0,
                }
            }
        end
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        cond = is_nvim,
        opts = {
            map_bs = true,
            map_cr = true,
        }
    },

    -- Utility plugins
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
        keys = {
            { '<leader>tt', ':ToggleTerm direction=float<cr>' }
        }
    },

    -- Colorschemes
    {
        'hzchirs/vim-material',
        cond = is_nvim,
        lazy = false,
        priority = 1000,
        config = function()
            vim.opt.termguicolors = true
            vim.opt.background = 'dark'
            vim.cmd('colorscheme vim-material')

            vim.api.nvim_set_hl(0, 'Normal', { bg = 'none', ctermbg = 'none' })
            vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none', ctermbg = 'none' })
            vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#1f1f1f' })
        end
    },

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
    only_nvim('nvim-tree/nvim-web-devicons'),
    {
        'nvim-tree/nvim-tree.lua',
        cond = is_nvim,
        config = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            { '<leader>n', ':NvimTreeToggle<cr>' },
            { '<leader>g', ':NvimTreeFindFile<cr>' },
            { '<leader>m', ':NvimTreeFocus<cr>' }
        }
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        cond = is_nvim,
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        keys = {
            { '<leader>ff', ':Telescope find_files<cr>' },
            { '<leader>fg', ':Telescope live_grep<cr>' },
            { '<leader>fb', ':Telescope buffers<cr>' },
            { '<leader>fh', ':Telescope help_tags<cr>' }
        }
    },
}
