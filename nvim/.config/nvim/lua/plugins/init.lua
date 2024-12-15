---@diagnostic disable-next-line: undefined-global
local vim = vim

require('autoclose').setup()
require('nvim-tree').setup()
require('toggleterm').setup {
    open_mapping = '<F1>'
}

local map_opts = { silent = true, noremap = true }
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<cr>', map_opts)
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<cr>', map_opts)
vim.keymap.set('n', '<leader>m', ':NvimTreeFocus<cr>', map_opts)
