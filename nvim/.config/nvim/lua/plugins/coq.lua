---@diagnostic disable-next-line: undefined-global
local vim = vim

local utils = require('.utils')

-- Aliased functions from utils file
local is_nvim = utils.is_nvim

return {
    'neovim/nvim-lspconfig',
    enabled = false,
    lazy = false,
    cond = is_nvim,
    dependencies = {
        {
            'ms-jpq/coq_nvim',
            branch = 'coq',
        },

        {
            'ms-jpq/coq.artifacts',
            branch = 'artifacts'
        },
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = true,
        }
    end,
    config = function()
        -- Your LSP settings here
    end,
}
