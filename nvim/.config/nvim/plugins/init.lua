---@diagnostic disable-next-line: undefined-global
local vim = vim

require('autoclose').setup()
require('nvim-tree').setup()
require('toggleterm').setup {
    open_mapping = [[<F1>]]
}

vim.g.mapleader = ','
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<cr>', { silent = true, noremap = true})
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<cr>', { silent = true, noremap = true})
vim.keymap.set('n', '<leader>m', ':NvimTreeFocus<cr>', { silent = true, noremap = true})
